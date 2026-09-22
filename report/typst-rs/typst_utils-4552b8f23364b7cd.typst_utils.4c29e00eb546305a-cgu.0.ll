Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_utils-4552b8f23364b7cd.typst_utils.4c29e00eb546305a-cgu.0?download=true
inline.NumInlined: 302
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3geteEBU_:bb.a

.lr.ph.i:                                         ; preds = %bb.g, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i
  %.sroa.06.0.i32.i = phi i16 [ %i.dc, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i ], [ %i.cn, %bb.g ] ; 3 uses
  %i.co = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i, i1 true)
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = add i64 %.sroa.01.0.i.i, %i.cp
  %i.cr = and i64 %i.cq, %i.ch
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds [24 x i8], ptr %i.ci, i64 %i.cs ; 3 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -16
  %.val4.i.i = load i64, ptr %i.cu, align 8, !noalias !54, !noundef !5
  %i.cv = icmp eq i64 %2, %.val4.i.i
  br i1 %i.cv, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i, !prof !6

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i: ; preds = %.lr.ph.i
  %i.cw = getelementptr inbounds i8, ptr %i.ct, i64 -24
  %.val3.i.i = load ptr, ptr %i.cw, align 8, !noalias !54, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %.val3.i.i, i64 %2), !alias.scope !55, !noalias !56
  %i.cx = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cx, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtB8_3map14equivalent_keyeBQ_BS_E0EBW_.exit, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i, !prof !7

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i, %bb.g
  %i.cy = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i, splat (i8 -1)
  %i.cz = bitcast <16 x i1> %i.cy to i16
  %i.da = icmp eq i16 %i.cz, 0
  br i1 %i.da, label %bb.h, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtB8_3map14equivalent_keyeBQ_BS_E0EBW_.exit, !prof !4

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i: ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i, %.lr.ph.i
  %i.db = add i16 %.sroa.06.0.i32.i, -1
  %i.dc = and i16 %i.db, %.sroa.06.0.i32.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.dc, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.dd = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.de = add i64 %.sroa.01.0.i.i, %i.dd
  br label %bb.g

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtB8_3map14equivalent_keyeBQ_BS_E0EBW_.exit: ; preds = %._crit_edge.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i
  %i.df = phi ptr [ %i.ct, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i ], [ null, %._crit_edge.i ] ; 2 uses
  %.not = icmp eq ptr %i.df, null
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -8
  %.sroa.0.0 = select i1 %.not, ptr null, ptr %i.dg
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtB8_3map14equivalent_keyeBQ_BS_E0EBW_.exit
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtB8_3map14equivalent_keyeBQ_BS_E0EBW_.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BS_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EBW_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree nonnull readonly captures(none) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !137, !noalias !138, !noundef !5 ; 6 uses
  %i.c = add i64 %i.b, %1                         ; 3 uses
  %i.d = icmp ult i64 %i.c, %i.b
  br i1 %i.d, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !137, !noalias !138, !noundef !5 ; 14 uses
  %i.g = icmp ult i64 %i.f, 8
  %i.h = add i64 %i.f, 1                          ; 6 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = mul nuw i64 %i.i, 7
  %.sroa.03.0.i = select i1 %i.g, i64 %i.f, i64 %i.j ; 3 uses
  %i.k = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.c, %i.k
  br i1 %.not.i, label %bb.d, label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.l = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !139 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit

bb.d:                                             ; preds = %bb.b
  %i.o = add nuw i64 %.sroa.03.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %i.c) ; 5 uses
  %i.p = icmp ult i64 %..i, 15
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.q, label %bb.l, label %bb.f, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.r = shl nuw i64 %..i, 3
  %i.s = udiv i64 %i.r, 7
  %i.t = add nsw i64 %i.s, -1
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.v = lshr i64 -1, %i.u
  %i.w = add nuw nsw i64 %i.v, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.x = icmp samesign ult i64 %..i, 4
  %i.y = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.y, 8
  %.sroa.03.0.i.i = select i1 %i.x, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.w, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.z = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 24) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.i, !prof !4

bb.i:                                             ; preds = %bb.h
  %i.ab = extractvalue { i64, i1 } %i.z, 0
  %i.ac = add nuw i64 %i.ab, 8
  %i.ad = and i64 %i.ac, -16                      ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.af = add i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
  %i.ah = icmp ugt i64 %i.af, 9223372036854775792
  %or.cond.i.i = or i1 %i.ag, %i.ah
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, !prof !8

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !140
  %i.ai = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !140 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !140
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit.thread

bb.k:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.al = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.af), !noalias !140
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.am = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !141
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit.thread

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ao = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.ap = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.aq = mul nuw nsw i64 %i.ap, 7
  %.sroa.07.0.i.i = select i1 %i.an, i64 %i.ao, i64 %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ar, i8 -1, i64 %i.ae, i1 false), !noalias !141
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = icmp eq i64 %i.b, 0
  br i1 %i.at, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit.._crit_edge49_crit_edge, label %.preheader.lr.ph

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit.._crit_edge49_crit_edge: ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !142, !noalias !143
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge49

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit
  %i.au = load ptr, ptr %0, align 8, !alias.scope !144, !noalias !145, !nonnull !5, !noundef !5 ; 5 uses
  %.val332 = load <16 x i8>, ptr %i.au, align 16
  %i.av = icmp sgt <16 x i8> %.val332, splat (i8 -1)
  %i.aw = bitcast <16 x i1> %i.av to i16
  br label %.preheader

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.am, %bb.l ], [ %i.ak, %bb.j ], [ %i.al, %bb.k ] ; 2 uses
  %.sroa.12.030 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.031 = extractvalue { i64, i64 } %.pn.i.pn, 0
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.016.048 = phi ptr [ %i.au, %.preheader.lr.ph ], [ %.sroa.016.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.047 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.046 = phi i64 [ %i.b, %.preheader.lr.ph ], [ %i.bv, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.045 = phi i16 [ %i.aw, %.preheader.lr.ph ], [ %i.bt, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i140 = icmp eq i16 %.sroa.13.045, 0
  br i1 %.not.i140, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.016.142 = phi ptr [ %i.ax, %.noexc2 ], [ %.sroa.016.048, %.preheader ] ; 2 uses
  %.sroa.5.141 = phi i64 [ %i.ba, %.noexc2 ], [ %.sroa.5.047, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.142) ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.016.142, i64 16 ; 3 uses
  %.val33 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val33, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %i.ba = add i64 %.sroa.5.141, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.az, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge49:                                    ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit.._crit_edge49_crit_edge
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit.._crit_edge49_crit_edge ], [ %i.au, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %i.bb = sub i64 %.sroa.07.0.i.i, %i.b
  store i64 %i.as, ptr %0, align 8, !alias.scope !142, !noalias !143
  store i64 %i.ao, ptr %i.e, align 8, !alias.scope !146, !noalias !147
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bb, ptr %i.bc, align 8, !alias.scope !148, !noalias !149
  %i.bd = icmp eq i64 %i.f, 0
  br i1 %i.bd, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge49
  %i.be = mul i64 %i.f, 24                        ; 2 uses
  %i.bf = add i64 %i.be, 24
  %i.bg = add i64 %i.be, 39                       ; 2 uses
  %i.bh = icmp uge i64 %i.bg, %i.bf
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = and i64 %i.bg, -16                      ; 3 uses
  %i.bj = add i64 %i.f, 17
  %i.bk = add i64 %i.bj, %i.bi                    ; 4 uses
  %i.bl = icmp uge i64 %i.bk, %i.bi
  %i.bm = icmp ult i64 %i.bk, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bl)
  tail call void @llvm.assume(i1 %i.bm)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ]
  %i.bn = icmp eq i64 %i.bk, 0
  br i1 %i.bn, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bo = sub nsw i64 0, %i.bi
  %i.bp = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.bo
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !150
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.045, %.preheader ], [ %i.az, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.047, %.preheader ], [ %i.ba, %.noexc2 ] ; 2 uses
  %.sroa.016.1.lcssa = phi ptr [ %.sroa.016.048, %.preheader ], [ %i.ax, %.noexc2 ]
  %i.bq = add i16 %.sroa.13.1.lcssa, -1
  %i.br = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = and i16 %i.bq, %.sroa.13.1.lcssa
  %i.bu = add i64 %.sroa.5.1.lcssa, %i.bs         ; 2 uses
  %i.bv = add i64 %.sroa.9.046, -1                ; 2 uses
  %i.bw = sub nsw i64 0, %i.bu
  %i.bx = getelementptr inbounds [24 x i8], ptr %i.au, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -24
  %.val.i = load ptr, ptr %i.by, align 8, !alias.scope !151, !noalias !152, !nonnull !5, !noundef !5 ; 11 uses
  %i.bz = getelementptr i8, ptr %i.bx, i64 -16
  %.val2.i = load i64, ptr %i.bz, align 8, !alias.scope !151, !noalias !152, !noundef !5 ; 11 uses
  %i.ca = icmp samesign ult i64 %.val2.i, 17
  br i1 %i.ca, label %bb.n, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge
  %i.cb = add i64 %.val2.i, -17                   ; 2 uses
  %i.cc = lshr i64 %i.cb, 4                       ; 2 uses
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %i.ce = icmp eq i64 %i.cc, 0
  br i1 %i.ce, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.new

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.new: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i
  %unroll_iter116 = and i64 %i.cd, 2305843009213693950
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %._crit_edge
  %i.cf = icmp samesign ugt i64 %.val2.i, 7
  br i1 %i.cf, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i, label %bb.o

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.new
  %.sroa.0.098.i.i.i.i.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.new ], [ %i.cp, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i ]
  %.sroa.06.097.i.i.i.i.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.new ], [ %i.db, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i ]
  %.sroa.018.096.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.new ], [ %i.cq, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %niter117 = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.new ], [ %niter117.next.1, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.018.096.i.i.i.i.i.i.i.i.i ; 2 uses
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cg, align 1, !alias.scope !153, !noalias !154
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ch, align 1, !alias.scope !153, !noalias !154
  %i.ci = xor i64 %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i, %.sroa.0.098.i.i.i.i.i.i.i.i.i
  %i.cj = xor i64 %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i, -6626703657320631856
  %i.ck = zext i64 %i.ci to i128
  %i.cl = zext i64 %i.cj to i128
  %i.cm = mul nuw i128 %i.cl, %i.ck               ; 2 uses
  %i.cn = lshr i128 %i.cm, 64
  %i.co = xor i128 %i.cn, %i.cm
  %i.cp = trunc i128 %i.co to i64                 ; 3 uses
  %i.cq = add nuw nsw i64 %.sroa.018.096.i.i.i.i.i.i.i.i.i, 32 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.018.096.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.cs, align 1, !alias.scope !153, !noalias !154
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.ct, align 1, !alias.scope !153, !noalias !154
  %i.cu = xor i64 %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.1, %.sroa.06.097.i.i.i.i.i.i.i.i.i
  %i.cv = xor i64 %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.1, -6626703657320631856
  %i.cw = zext i64 %i.cu to i128
  %i.cx = zext i64 %i.cv to i128
  %i.cy = mul nuw i128 %i.cx, %i.cw               ; 2 uses
  %i.cz = lshr i128 %i.cy, 64
  %i.da = xor i128 %i.cz, %i.cy
  %i.db = trunc i128 %i.da to i64                 ; 3 uses
  %niter117.next.1 = add i64 %niter117, 2         ; 2 uses
  %niter117.ncmp.1.not = icmp eq i64 %niter117.next.1, %unroll_iter116
  br i1 %niter117.ncmp.1.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.unr-lcssa, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i
  %i.dc = and i64 %i.cb, 16
  %lcmp.mod112.not.not = icmp eq i64 %i.dc, 0
  br i1 %lcmp.mod112.not.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i
  %.sroa.0.098.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i ], [ %i.cp, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.06.097.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i ], [ %i.db, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.018.096.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i ], [ %i.cq, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod115 = trunc i64 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %i.dd = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.018.096.i.i.i.i.i.i.i.i.i.epil.init ; 2 uses
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.dd, align 1, !alias.scope !153, !noalias !154
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.de, align 1, !alias.scope !153, !noalias !154
  %i.df = xor i64 %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.epil, %.sroa.0.098.i.i.i.i.i.i.i.i.i.epil.init
  %i.dg = xor i64 %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.epil, -6626703657320631856
  %i.dh = zext i64 %i.df to i128
  %i.di = zext i64 %i.dg to i128
  %i.dj = mul nuw i128 %i.di, %i.dh               ; 2 uses
  %i.dk = lshr i128 %i.dj, 64
  %i.dl = xor i128 %i.dk, %i.dj
  %i.dm = trunc i128 %i.dl to i64
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.epil.preheader
  %.sroa.06.097.i.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %i.cp, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.unr-lcssa ], [ %.sroa.06.097.i.i.i.i.i.i.i.i.i.epil.init, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %.lcssa96 = phi i64 [ %i.db, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.dm, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.dn = getelementptr i8, ptr %.val.i, i64 %.val2.i ; 2 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 -16
  %.sroa.038.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.do, align 1, !alias.scope !153, !noalias !154
  %i.dp = xor i64 %.sroa.038.0.copyload.i.i.i.i.i.i.i.i.i, %.sroa.06.097.i.i.i.i.i.i.i.i.i.lcssa
  %i.dq = getelementptr i8, ptr %i.dn, i64 -8
  %.sroa.040.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dq, align 1, !alias.scope !153, !noalias !154
  %i.dr = xor i64 %.sroa.040.0.copyload.i.i.i.i.i.i.i.i.i, %.lcssa96
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ds = icmp samesign ugt i64 %.val2.i, 3
  br i1 %i.ds, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i, label %bb.p

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %.sroa.028.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.val.i, align 1, !alias.scope !153, !noalias !154
  %i.dt = xor i64 %.sroa.028.0.copyload.i.i.i.i.i.i.i.i.i, 2611923443488327891
  %i.du = getelementptr i8, ptr %.val.i, i64 %.val2.i
  %i.dv = getelementptr i8, ptr %i.du, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dv, align 1, !alias.scope !153, !noalias !154
  %i.dw = xor i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i.i.i, 1376283091369227076
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %.not63.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val2.i, 0
  br i1 %.not63.i.i.i.i.i.i.i.i.i, label %bb.r, label %bb.q

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.dx = getelementptr i8, ptr %.val.i, i64 %.val2.i
  %i.dy = getelementptr i8, ptr %i.dx, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.dy, align 1, !alias.scope !153, !noalias !154
  %.sroa.032.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %.val.i, align 1, !alias.scope !153, !noalias !154
  %i.dz = zext i32 %.sroa.032.0.copyload.i.i.i.i.i.i.i.i.i to i64
  %i.ea = xor i64 %i.dz, 2611923443488327891
  %i.eb = zext i32 %.sroa.033.0.copyload.i.i.i.i.i.i.i.i.i to i64
  %i.ec = xor i64 %i.eb, 1376283091369227076
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ed = load i8, ptr %.val.i, align 1, !alias.scope !153, !noalias !154, !noundef !5
  %i.ee = lshr i64 %.val2.i, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !153, !noalias !154, !noundef !5
  %i.eh = getelementptr i8, ptr %.val.i, i64 %.val2.i
  %i.ei = getelementptr i8, ptr %i.eh, i64 -1
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !153, !noalias !154, !noundef !5
  %i.ek = zext i8 %i.ed to i64
  %i.el = xor i64 %i.ek, 2611923443488327891
  %i.em = zext i8 %i.ej to i64
  %i.en = shl nuw nsw i64 %i.em, 8
  %i.eo = zext i8 %i.eg to i64
  %i.ep = or disjoint i64 %i.en, %i.eo
  %i.eq = xor i64 %i.ep, 1376283091369227076
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i
  %.sroa.06.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dw, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i ], [ %i.ec, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i ], [ %i.eq, %bb.q ], [ 1376283091369227076, %bb.p ], [ %i.dr, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dt, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i ], [ %i.ea, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i ], [ %i.el, %bb.q ], [ 2611923443488327891, %bb.p ], [ %i.dp, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i ]
  %i.er = zext i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i to i128
  %i.es = zext i64 %.sroa.06.1.i.i.i.i.i.i.i.i.i to i128
  %i.et = mul nuw i128 %i.er, %i.es               ; 2 uses
  %i.eu = lshr i128 %i.et, 64
  %i.ev = xor i128 %i.eu, %i.et
  %i.ew = trunc i128 %i.ev to i64
  %i.ex = xor i64 %.val2.i, %i.ew
  %i.ey = mul i64 %i.ex, 1452335207727870361
  %i.ez = add i64 %i.ey, 4919460506697669435      ; 2 uses
  %i.fa = tail call noundef i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 26) ; 2 uses
  %.sroa.0.07.i = and i64 %i.fa, %i.ao            ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.fb, align 1, !noalias !155
  %i.fc = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.fd = bitcast <16 x i1> %i.fc to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.fd, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !156

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.r
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.r ], [ %.sroa.0.0.i8, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.fd, %bb.r ], [ %i.fu, %.lr.ph.i ]
  %i.fe = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ff = zext nneg i16 %i.fe to i64
  %i.fg = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.ff
  %i.fh = and i64 %i.fg, %i.ao                    ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !noundef !5
  %i.fk = icmp sgt i8 %i.fj, -1
  br i1 %i.fk, label %bb.s, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.s:                                             ; preds = %._crit_edge.i
  %.val2.i.i7 = load <16 x i8>, ptr %i.ar, align 16
  %i.fl = icmp slt <16 x i8> %.val2.i.i7, zeroinitializer
  %i.fm = bitcast <16 x i1> %i.fl to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.fm, 0
  %i.fn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fm, i1 true)
  %i.fo = zext nneg i16 %i.fn to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i8, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.r ]
  %i.fp = phi i64 [ %i.fq, %.lr.ph.i ], [ 0, %bb.r ]
  %i.fq = add i64 %i.fp, 16                       ; 2 uses
  %i.fr = add i64 %i.fq, %.sroa.0.010.i
  %.sroa.0.0.i8 = and i64 %i.fr, %i.ao            ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i8
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.fs, align 1, !noalias !155
  %i.ft = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.fu = bitcast <16 x i1> %i.ft to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.fu, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !157

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.s, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.fo, %bb.s ], [ %i.fh, %._crit_edge.i ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i5.i
  %i.fw = lshr i64 %i.fa, 57
  %i.fx = trunc nuw nsw i64 %i.fw to i8           ; 2 uses
  %i.fy = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.fz = and i64 %i.fy, %i.ao
  store i8 %i.fx, ptr %i.fv, align 1
  %i.ga = getelementptr i8, ptr %i.ar, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  store i8 %i.fx, ptr %i.gb, align 1
  %.neg.i.i = mul i64 %i.bu, -24
  %i.gc = getelementptr i8, ptr %i.au, i64 %.neg.i.i
  %i.gd = getelementptr i8, ptr %i.gc, i64 -24
  %.neg62.i.i = mul i64 %.sroa.0.0.i5.i, -24
  %i.ge = getelementptr i8, ptr %i.ar, i64 %.neg62.i.i
  %i.gf = getelementptr i8, ptr %i.ge, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gf, ptr noundef nonnull align 1 dereferenceable(24) %i.gd, i64 24, i1 false)
  %i.gg = icmp eq i64 %i.bv, 0
  br i1 %i.gg, label %._crit_edge49, label %.preheader

bb.t:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !158 ; 19 uses
  %.not6.i.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread20.i, label %.lr.ph.i.i

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread20.i: ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

.lr.ph.i.i:                                       ; preds = %bb.t
  %i.gh = lshr i64 %i.h, 4
  %i.gi = and i64 %i.h, 15
  %.not10.i.i.i.i = icmp ne i64 %i.gi, 0
  %i.gj = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.gh, %i.gj ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.gk = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.gk, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.u

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.gs, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod103 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.gl = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.gl, align 16, !noalias !158
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.gm = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.gn = or <2 x i64> %i.gm, splat (i64 -9187201950435737472)
  store <2 x i64> %i.gn, ptr %i.gl, align 16, !noalias !158
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %..i10 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 16)
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %i.go = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %..i10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.go, ptr nonnull align 1 %.val13.i, i64 %.27.i, i1 false), !noalias !158
  br label %bb.v

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.gs, %bb.u ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.u ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.gp, align 16, !noalias !158
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.gq = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.gr = or <2 x i64> %i.gq, splat (i64 -9187201950435737472)
  store <2 x i64> %i.gr, ptr %i.gp, align 16, !noalias !158
  %i.gs = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.gu, align 16, !noalias !158
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.gv = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.gw = or <2 x i64> %i.gv, splat (i64 -9187201950435737472)
  store <2 x i64> %i.gw, ptr %i.gu, align 16, !noalias !158
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.u

bb.v:                                             ; preds = %bb.ag, %._crit_edge.i.i
  %.sroa.0.08.i = phi i64 [ 0, %._crit_edge.i.i ], [ %i.gx, %bb.ag ] ; 7 uses
  %i.gx = add nuw i64 %.sroa.0.08.i, 1            ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i ; 3 uses
  %i.gz = load i8, ptr %i.gy, align 1, !noalias !158, !noundef !5
  %.not.i11 = icmp eq i8 %i.gz, -128
  br i1 %.not.i11, label %bb.w, label %bb.ag

bb.w:                                             ; preds = %bb.v
  %.neg.i = mul i64 %i.gx, -24
  %i.ha = getelementptr inbounds i8, ptr %.val13.i, i64 %.neg.i ; 5 uses
  %i.hb = sub nsw i64 0, %.sroa.0.08.i
  %i.hc = getelementptr inbounds [24 x i8], ptr %.val13.i, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -24
  %i.he = getelementptr i8, ptr %i.hc, i64 -16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %.preheader.preheader.i, %bb.w
  %.val.i.i13 = load ptr, ptr %i.hd, align 8, !alias.scope !159, !noalias !160, !nonnull !5, !noundef !5 ; 11 uses
  %.val2.i.i14 = load i64, ptr %i.he, align 8, !alias.scope !159, !noalias !160, !noundef !5 ; 11 uses
  %i.hh = icmp samesign ult i64 %.val2.i.i14, 17
  br i1 %i.hh, label %bb.x, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.hi = add i64 %.val2.i.i14, -17               ; 2 uses
  %i.hj = lshr i64 %i.hi, 4                       ; 2 uses
  %i.hk = add nuw nsw i64 %i.hj, 1                ; 2 uses
  %i.hl = icmp eq i64 %i.hj, 0
  br i1 %i.hl, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.i.new

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.i.new: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.i
  %unroll_iter109 = and i64 %i.hk, 2305843009213693950
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.hm = icmp samesign ugt i64 %.val2.i.i14, 7
  br i1 %i.hm, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i.i, label %bb.y

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.i.new
  %.sroa.0.098.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.i.new ], [ %i.hw, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.06.097.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.i.new ], [ %i.ii, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.018.096.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.i.new ], [ %i.hx, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %niter110 = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.i.new ], [ %niter110.next.1, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.i ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.val.i.i13, i64 %.sroa.018.096.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hn, align 1, !alias.scope !161, !noalias !162
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ho, align 1, !alias.scope !161, !noalias !162
  %i.hp = xor i64 %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i, %.sroa.0.098.i.i.i.i.i.i.i.i.i.i
  %i.hq = xor i64 %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.i, -6626703657320631856
  %i.hr = zext i64 %i.hp to i128
  %i.hs = zext i64 %i.hq to i128
  %i.ht = mul nuw i128 %i.hs, %i.hr               ; 2 uses
  %i.hu = lshr i128 %i.ht, 64
  %i.hv = xor i128 %i.hu, %i.ht
  %i.hw = trunc i128 %i.hv to i64                 ; 3 uses
  %i.hx = add nuw nsw i64 %.sroa.018.096.i.i.i.i.i.i.i.i.i.i, 32 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.val.i.i13, i64 %.sroa.018.096.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.hz, align 1, !alias.scope !161, !noalias !162
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.ia, align 1, !alias.scope !161, !noalias !162
  %i.ib = xor i64 %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i.1, %.sroa.06.097.i.i.i.i.i.i.i.i.i.i
  %i.ic = xor i64 %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.i.1, -6626703657320631856
  %i.id = zext i64 %i.ib to i128
  %i.ie = zext i64 %i.ic to i128
  %i.if = mul nuw i128 %i.ie, %i.id               ; 2 uses
  %i.ig = lshr i128 %i.if, 64
  %i.ih = xor i128 %i.ig, %i.if
  %i.ii = trunc i128 %i.ih to i64                 ; 3 uses
  %niter110.next.1 = add i64 %niter110, 2         ; 2 uses
  %niter110.ncmp.1.not = icmp eq i64 %niter110.next.1, %unroll_iter109
  br i1 %niter110.ncmp.1.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.i.unr-lcssa, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.i
  %i.ij = and i64 %i.hi, 16
  %lcmp.mod105.not.not = icmp eq i64 %i.ij, 0
  br i1 %lcmp.mod105.not.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.098.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.hw, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.06.097.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.ii, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.018.096.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.hx, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod108 = trunc i64 %i.hk to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.ik = getelementptr inbounds nuw i8, ptr %.val.i.i13, i64 %.sroa.018.096.i.i.i.i.i.i.i.i.i.i.epil.init ; 2 uses
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.ik, align 1, !alias.scope !161, !noalias !162
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.il, align 1, !alias.scope !161, !noalias !162
  %i.im = xor i64 %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i.epil, %.sroa.0.098.i.i.i.i.i.i.i.i.i.i.epil.init
  %i.in = xor i64 %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.i.epil, -6626703657320631856
  %i.io = zext i64 %i.im to i128
  %i.ip = zext i64 %i.in to i128
  %i.iq = mul nuw i128 %i.ip, %i.io               ; 2 uses
  %i.ir = lshr i128 %i.iq, 64
  %i.is = xor i128 %i.ir, %i.iq
  %i.it = trunc i128 %i.is to i64
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.sroa.06.097.i.i.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %i.hw, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.i.unr-lcssa ], [ %.sroa.06.097.i.i.i.i.i.i.i.i.i.i.epil.init, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %.lcssa98 = phi i64 [ %i.ii, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.it, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit70.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.iu = getelementptr i8, ptr %.val.i.i13, i64 %.val2.i.i14 ; 2 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 -16
  %.sroa.038.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.iv, align 1, !alias.scope !161, !noalias !162
  %i.iw = xor i64 %.sroa.038.0.copyload.i.i.i.i.i.i.i.i.i.i, %.sroa.06.097.i.i.i.i.i.i.i.i.i.i.lcssa
  %i.ix = getelementptr i8, ptr %i.iu, i64 -8
  %.sroa.040.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ix, align 1, !alias.scope !161, !noalias !162
  %i.iy = xor i64 %.sroa.040.0.copyload.i.i.i.i.i.i.i.i.i.i, %.lcssa98
  br label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.iz = icmp samesign ugt i64 %.val2.i.i14, 3
  br i1 %i.iz, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i.i, label %bb.z

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %.sroa.028.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val.i.i13, align 1, !alias.scope !161, !noalias !162
  %i.ja = xor i64 %.sroa.028.0.copyload.i.i.i.i.i.i.i.i.i.i, 2611923443488327891
  %i.jb = getelementptr i8, ptr %.val.i.i13, i64 %.val2.i.i14
  %i.jc = getelementptr i8, ptr %i.jb, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jc, align 1, !alias.scope !161, !noalias !162
  %i.jd = xor i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i.i.i.i, 1376283091369227076
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.not63.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val2.i.i14, 0
  br i1 %.not63.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.y
  %i.je = getelementptr i8, ptr %.val.i.i13, i64 %.val2.i.i14
  %i.jf = getelementptr i8, ptr %i.je, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.jf, align 1, !alias.scope !161, !noalias !162
  %.sroa.032.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.val.i.i13, align 1, !alias.scope !161, !noalias !162
  %i.jg = zext i32 %.sroa.032.0.copyload.i.i.i.i.i.i.i.i.i.i to i64
  %i.jh = xor i64 %i.jg, 2611923443488327891
  %i.ji = zext i32 %.sroa.033.0.copyload.i.i.i.i.i.i.i.i.i.i to i64
  %i.jj = xor i64 %i.ji, 1376283091369227076
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.jk = load i8, ptr %.val.i.i13, align 1, !alias.scope !161, !noalias !162, !noundef !5
  %i.jl = lshr i64 %.val2.i.i14, 1
  %i.jm = getelementptr inbounds nuw i8, ptr %.val.i.i13, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !alias.scope !161, !noalias !162, !noundef !5
  %i.jo = getelementptr i8, ptr %.val.i.i13, i64 %.val2.i.i14
  %i.jp = getelementptr i8, ptr %i.jo, i64 -1
  %i.jq = load i8, ptr %i.jp, align 1, !alias.scope !161, !noalias !162, !noundef !5
  %i.jr = zext i8 %i.jk to i64
  %i.js = xor i64 %i.jr, 2611923443488327891
  %i.jt = zext i8 %i.jq to i64
  %i.ju = shl nuw nsw i64 %i.jt, 8
  %i.jv = zext i8 %i.jn to i64
  %i.jw = or disjoint i64 %i.ju, %i.jv
  %i.jx = xor i64 %i.jw, 1376283091369227076
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i.i, %bb.z, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.i
  %.sroa.06.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jd, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.jj, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.jx, %bb.aa ], [ 1376283091369227076, %bb.z ], [ %i.iy, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ja, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.jh, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.js, %bb.aa ], [ 2611923443488327891, %bb.z ], [ %i.iw, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i.i.i.i.i ]
  %i.jy = zext i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i to i128
  %i.jz = zext i64 %.sroa.06.1.i.i.i.i.i.i.i.i.i.i to i128
  %i.ka = mul nuw i128 %i.jy, %i.jz               ; 2 uses
  %i.kb = lshr i128 %i.ka, 64
  %i.kc = xor i128 %i.kb, %i.ka
  %i.kd = trunc i128 %i.kc to i64
  %i.ke = xor i64 %.val2.i.i14, %i.kd
  %i.kf = mul i64 %i.ke, 1452335207727870361
  %i.kg = add i64 %i.kf, 4919460506697669435      ; 2 uses
  %i.kh = tail call noundef i64 @llvm.fshl.i64(i64 %i.kg, i64 %i.kg, i64 26) ; 3 uses
  %.sroa.0.07.i.i = and i64 %i.kh, %i.f           ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ki, align 1, !noalias !163
  %i.kj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.kk = bitcast <16 x i1> %i.kj to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.kk, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !156

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %bb.ab
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.ab ], [ %.sroa.0.0.i.i15, %.lr.ph.i16.i ]
  %.lcssa.i.i = phi i16 [ %i.kk, %bb.ab ], [ %i.lb, %.lr.ph.i16.i ]
  %i.kl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.km = zext nneg i16 %i.kl to i64
  %i.kn = add i64 %.sroa.0.0.lcssa.i.i, %i.km
  %i.ko = and i64 %i.kn, %i.f                     ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !noalias !158, !noundef !5
  %i.kr = icmp sgt i8 %i.kq, -1
  br i1 %i.kr, label %bb.ac, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !4

bb.ac:                                            ; preds = %._crit_edge.i15.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val13.i, align 16, !noalias !158
  %i.ks = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.kt = bitcast <16 x i1> %i.ks to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.kt, 0
  %i.ku = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.kt, i1 true)
  %i.kv = zext nneg i16 %i.ku to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i16.i:                                     ; preds = %bb.ab, %.lr.ph.i16.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i15, %.lr.ph.i16.i ], [ %.sroa.0.07.i.i, %bb.ab ]
  %i.kw = phi i64 [ %i.kx, %.lr.ph.i16.i ], [ 0, %bb.ab ]
  %i.kx = add i64 %i.kw, 16                       ; 2 uses
  %i.ky = add i64 %i.kx, %.sroa.0.010.i.i
  %.sroa.0.0.i.i15 = and i64 %i.ky, %i.f          ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.0.i.i15
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.kz, align 1, !noalias !163
  %i.la = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.lb = bitcast <16 x i1> %i.la to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.lb, 0
  br i1 %.not.i.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !157

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.ac, %._crit_edge.i15.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.kv, %bb.ac ], [ %i.ko, %._crit_edge.i15.i ] ; 4 uses
  %i.lc = sub i64 %.sroa.0.08.i, %.sroa.0.07.i.i
  %i.ld = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.le = xor i64 %i.ld, %i.lc
  %.unshifted.i = and i64 %i.le, %i.f
  %i.lf = icmp ult i64 %.unshifted.i, 16
  br i1 %i.lf, label %bb.ae, label %bb.ad, !prof !9

bb.ad:                                            ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %.neg11.i = mul i64 %.sroa.0.0.i5.i.i, -24
  %i.lg = getelementptr i8, ptr %.val13.i, i64 %.neg11.i ; 3 uses
  %i.lh = getelementptr i8, ptr %i.lg, i64 -24    ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.lj = load i8, ptr %i.li, align 1, !noalias !158, !noundef !5
  %i.lk = lshr i64 %i.kh, 57
  %i.ll = trunc nuw nsw i64 %i.lk to i8           ; 2 uses
  %i.lm = add i64 %.sroa.0.0.i5.i.i, -16
  %i.ln = and i64 %i.lm, %i.f
  store i8 %i.ll, ptr %i.li, align 1, !noalias !158
  %i.lo = getelementptr i8, ptr %.val13.i, i64 %i.ln
  %i.lp = getelementptr i8, ptr %i.lo, i64 16
  store i8 %i.ll, ptr %i.lp, align 1, !noalias !158
  %i.lq = icmp eq i8 %i.lj, -1
  br i1 %i.lq, label %bb.af, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ha, align 1, !alias.scope !164, !noalias !166
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.lh, align 1, !alias.scope !165, !noalias !167
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.ha, align 1, !alias.scope !164, !noalias !166
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.lh, align 1, !alias.scope !165, !noalias !167
  %i.lr = getelementptr i8, ptr %i.lg, i64 -16    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %.sroa.0.0.copyload.i.i.i.1.i = load i64, ptr %i.hf, align 1, !alias.scope !168, !noalias !170
  %.sroa.02.0.copyload.i.i.i.1.i = load i64, ptr %i.lr, align 1, !alias.scope !169, !noalias !171
  store i64 %.sroa.02.0.copyload.i.i.i.1.i, ptr %i.hf, align 1, !alias.scope !168, !noalias !170
  store i64 %.sroa.0.0.copyload.i.i.i.1.i, ptr %i.lr, align 1, !alias.scope !169, !noalias !171
  %i.ls = getelementptr i8, ptr %i.lg, i64 -8     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %.sroa.0.0.copyload.i.i.i.2.i = load i64, ptr %i.hg, align 1, !alias.scope !172, !noalias !174
  %.sroa.02.0.copyload.i.i.i.2.i = load i64, ptr %i.ls, align 1, !alias.scope !173, !noalias !175
  store i64 %.sroa.02.0.copyload.i.i.i.2.i, ptr %i.hg, align 1, !alias.scope !172, !noalias !174
  store i64 %.sroa.0.0.copyload.i.i.i.2.i, ptr %i.ls, align 1, !alias.scope !173, !noalias !175
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i

bb.ae:                                            ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.lt = lshr i64 %i.kh, 57
  %i.lu = trunc nuw nsw i64 %i.lt to i8           ; 2 uses
  %i.lv = add i64 %.sroa.0.08.i, -16
  %i.lw = and i64 %i.lv, %i.f
  store i8 %i.lu, ptr %i.gy, align 1, !noalias !158
  %i.lx = getelementptr i8, ptr %.val13.i, i64 %i.lw
  %i.ly = getelementptr i8, ptr %i.lx, i64 16
  store i8 %i.lu, ptr %i.ly, align 1, !noalias !158
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.lz = add i64 %.sroa.0.08.i, -16
  %i.ma = and i64 %i.lz, %i.f
  store i8 -1, ptr %i.gy, align 1, !noalias !158
  %i.mb = getelementptr i8, ptr %.val13.i, i64 %i.ma
  %i.mc = getelementptr i8, ptr %i.mb, i64 16
  store i8 -1, ptr %i.mc, align 1, !noalias !158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.lh, ptr noundef nonnull align 1 dereferenceable(24) %i.ha, i64 24, i1 false), !noalias !158
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.v
  %exitcond.not.i = icmp eq i64 %.sroa.0.08.i, %i.f
  br i1 %exitcond.not.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %bb.v

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.ag, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread20.i
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.me = sub nuw i64 %.sroa.03.0.i, %i.b
  store i64 %i.me, ptr %i.md, align 8, !alias.scope !158
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit: ; preds = %bb.m, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %._crit_edge49, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit.thread, %bb.c, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ %i.n, %bb.c ], [ undef, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.12.030, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit.thread ], [ undef, %._crit_edge49 ], [ undef, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ undef, %bb.m ]
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.c ], [ -1, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.7.031, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit.thread ], [ -1, %._crit_edge49 ], [ -1, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ -1, %bb.m ]
  %i.mf = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.mg = insertvalue { i64, i64 } %i.mf, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.mg
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEEB1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.b = atomicrmw sub ptr %.val, i32 1 release, align 4
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, -1073741825
  %or.cond.i.i = icmp eq i32 %i.d, -2147483648
  br i1 %or.cond.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val, i32 noundef %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEEB20_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !12, !noundef !5 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !13, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #34
  br i1 %i.g, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 8
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw sub ptr %.val, i32 1073741823 release, align 4
  %i.i = add i32 %i.h, -1073741823                ; 2 uses
  %or.cond.not.i.i = icmp ult i32 %i.i, 1073741824
  br i1 %or.cond.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1H_.exit, label %bb.e, !prof !14

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val, i32 noundef %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1H_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1H_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1H_(ptr %.0.val, i8 %.8.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #34
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw sub ptr %.0.val, i32 1073741823 release, align 4
  %i.h = add i32 %i.g, -1073741823                ; 2 uses
  %or.cond.not.i = icmp ult i32 %i.h, 1073741824
  br i1 %or.cond.not.i, label %_RNvXsi_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1e_.exit, label %bb.e, !prof !14

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.0.val, i32 noundef %i.h)
  br label %_RNvXsi_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1e_.exit

_RNvXsi_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1e_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8SJOCDJuMgL_6semver7VersionECs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_NtCs8SJOCDJuMgL_6semver10identifierNtB5_10IdentifierNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8SJOCDJuMgL_6semver10PrereleaseECs6xpQEr8gLsQ_11typst_utils.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs0_NtCs8SJOCDJuMgL_6semver10identifierNtB5_10IdentifierNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8SJOCDJuMgL_6semver13BuildMetadataECs6xpQEr8gLsQ_11typst_utils.exit unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8SJOCDJuMgL_6semver10PrereleaseECs6xpQEr8gLsQ_11typst_utils.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs0_NtCs8SJOCDJuMgL_6semver10identifierNtB5_10IdentifierNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8SJOCDJuMgL_6semver13BuildMetadataECs6xpQEr8gLsQ_11typst_utils.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtNtBa_6poison6rwlock6RwLockNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEE5force0E0B2e_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !12, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !13, !noundef !5
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtB6_6poison6rwlock6RwLockNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEE5force0B1t_.exit, !prof !4

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #36
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtB6_6poison6rwlock6RwLockNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEE5force0B1t_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a), !inline_history !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #36
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtCs6xpQEr8gLsQ_11typst_utils8version_12TypstVersionE5force0E0B1J_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !12, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !13, !noundef !5
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockNtNtCs6xpQEr8gLsQ_11typst_utils8version_12TypstVersionE5force0BY_.exit, !prof !4

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #36
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockNtNtCs6xpQEr8gLsQ_11typst_utils8version_12TypstVersionE5force0BY_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a), !inline_history !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #36
  unreachable
}

end_hunk_0
begin_hunk_1_@_RNvMs1_NtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB5_11SmallBitSet8contains:bb.a
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = lshr i64 %i.m, %1
  %i.o = trunc i64 %i.n to i1
  br label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB2_6BitSet8contains.exit

_RNvMNtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB2_6BitSet8contains.exit: ; preds = %bb.c, %bb.b, %bb.d
  %.sroa.0.0 = phi i1 [ %i.o, %bb.d ], [ %i.k, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE7reserveCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 -288230376151711742, 288230376151711745) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 6 uses
  %i.e = add i64 %i.b, %1                         ; 4 uses
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %i.e, %i.d
  br i1 %.not, label %bb.d, label %bb.t

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp slt i64 %i.d, 0
  br i1 %i.h, label %bb.f, label %.thread17, !prof !4

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %.not.i = icmp eq ptr %i.a, @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER
  br i1 %.not.i, label %.thread25, label %bb.l

.thread17:                                        ; preds = %bb.e
  %i.i = shl nuw i64 %i.d, 1
  %..i19 = tail call noundef i64 @llvm.umax.i64(i64 %i.i, i64 %i.e) ; 2 uses
  %.not.i20 = icmp eq ptr %i.a, @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER
  br i1 %.not.i20, label %bb.g, label %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i

.thread:                                          ; preds = %bb.d
  %..i4 = tail call noundef i64 @llvm.umax.i64(i64 %i.e, i64 4) ; 2 uses
  %.not.i5 = icmp eq ptr %i.a, @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER
  br i1 %.not.i5, label %bb.g, label %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.thread

bb.g:                                             ; preds = %.thread17, %.thread
  %..i8 = phi i64 [ %..i4, %.thread ], [ %..i19, %.thread17 ] ; 4 uses
  %i.j = icmp slt i64 %..i8, 0
  br i1 %i.j, label %.thread25, label %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i

.thread25:                                        ; preds = %bb.f, %bb.g
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i: ; preds = %bb.g
  %i.k = icmp samesign ugt i64 %..i8, 1152921504606846975
  br i1 %i.k, label %bb.i, label %bb.h, !prof !4

bb.h:                                             ; preds = %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i
  %i.l = shl nuw nsw i64 %..i8, 3
  %i.m = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.l, i64 16) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %bb.j, label %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit.i.i, !prof !4

bb.i:                                             ; preds = %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit.i.i: ; preds = %bb.h
  %i.o = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !392
  %i.p = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #33, !noalias !392 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %_RINvCsieRLDaoupkO_8thin_vec20header_with_capacityjECs6xpQEr8gLsQ_11typst_utils.exit.i, !prof !4

bb.k:                                             ; preds = %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.o) #32, !noalias !392
  unreachable

_RINvCsieRLDaoupkO_8thin_vec20header_with_capacityjECs6xpQEr8gLsQ_11typst_utils.exit.i: ; preds = %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit.i.i
  store i64 0, ptr %i.p, align 8, !noalias !392
  br label %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE10reallocateCs6xpQEr8gLsQ_11typst_utils.exit

bb.l:                                             ; preds = %bb.f
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i: ; preds = %.thread17
  %i.r = icmp samesign ugt i64 %i.d, 1152921504606846975
  br i1 %i.r, label %bb.m, label %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.thread, !prof !393

_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.thread: ; preds = %.thread, %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i
  %..i61113 = phi i64 [ %..i19, %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i ], [ %..i4, %.thread ] ; 5 uses
  %i.s = shl nuw nsw i64 %i.d, 3
  %i.t = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.s, i64 16) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %bb.n, label %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit.i, !prof !4

bb.m:                                             ; preds = %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

bb.n:                                             ; preds = %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.thread
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit.i: ; preds = %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.thread
  %i.v = extractvalue { i64, i1 } %i.t, 0
  %i.w = icmp slt i64 %..i61113, 0
  br i1 %i.w, label %bb.o, label %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i1.i

bb.o:                                             ; preds = %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit.i
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i1.i: ; preds = %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit.i
  %i.x = icmp samesign ugt i64 %..i61113, 1152921504606846975
  br i1 %i.x, label %bb.q, label %bb.p, !prof !4

bb.p:                                             ; preds = %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i1.i
  %i.y = shl nuw nsw i64 %..i61113, 3
  %i.z = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.y, i64 16) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %bb.r, label %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit2.i, !prof !4

bb.q:                                             ; preds = %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i1.i
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

bb.r:                                             ; preds = %bb.p
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit2.i: ; preds = %bb.p
  %i.ab = extractvalue { i64, i1 } %i.z, 0
  %i.ac = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.ab) #33, !noalias !392 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.s, label %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE10reallocateCs6xpQEr8gLsQ_11typst_utils.exit, !prof !4

bb.s:                                             ; preds = %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit2.i
  %i.ae = tail call fastcc noundef i64 @_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils(i64 noundef %..i61113), !noalias !392
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ae) #32, !noalias !392
  unreachable

_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE10reallocateCs6xpQEr8gLsQ_11typst_utils.exit: ; preds = %_RINvCsieRLDaoupkO_8thin_vec20header_with_capacityjECs6xpQEr8gLsQ_11typst_utils.exit.i, %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit2.i
  %..i7 = phi i64 [ %..i8, %_RINvCsieRLDaoupkO_8thin_vec20header_with_capacityjECs6xpQEr8gLsQ_11typst_utils.exit.i ], [ %..i61113, %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit2.i ]
  %.sink7.i = phi ptr [ %i.p, %_RINvCsieRLDaoupkO_8thin_vec20header_with_capacityjECs6xpQEr8gLsQ_11typst_utils.exit.i ], [ %i.ac, %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit2.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sink7.i, i64 8
  store i64 %..i7, ptr %i.af, align 8, !noalias !392
  store ptr %.sink7.i, ptr %0, align 8, !alias.scope !392
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE10reallocateCs6xpQEr8gLsQ_11typst_utils.exit
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !5
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6xpQEr8gLsQ_11typst_utils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = shl i64 %1, 4                            ; 7 uses
  %i.b = icmp ult i64 %1, 1152921504606846976
  %i.c = icmp ult i64 %i.a, 9223372036854775801
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.f, !prof !394

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %2 = shl nuw i64 %.0.val, 4                     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = icmp uge i64 %i.a, %2
  tail call void @llvm.assume(i1 %i.e)
  %i.f = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %2, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #33
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.a, 0
  br i1 %i.g, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
  %i.h = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #33
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.f, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.h, %bb.d ] ; 2 uses
  %i.i = icmp eq ptr %.pn8, null
  br i1 %i.i, label %bb.e, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.j, align 8
  br label %bb.f

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.l, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = add nuw i64 %1, 1
  %i.c = load i64, ptr %0, align 8, !range !17, !noundef !5 ; 2 uses
  %i.d = shl nuw i64 %i.c, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.d)
  %..i14 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.e, align 8
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13, i64 noundef %..i14)
  %i.f = load i64, ptr %i.a, align 8, !range !19, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c, %bb.d
  %.sroa.5.0 = phi i64 [ undef, %bb.d ], [ %i.m, %bb.c ]
  %.sroa.0.0 = phi i64 [ -1, %bb.d ], [ %i.k, %bb.c ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.j

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !range !395, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.e, align 8
  %i.o = icmp sgt i64 %..i14, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14, ptr %0, align 8
  br label %bb.b
}

; Function Attrs: noreturn nonlazybind uwtable
define void @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern(i1 noundef zeroext %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #9 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [520 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 512 ; 20 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %i.d, i8 0, i64 520, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.f = phi i64 [ %i.l, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.0.07.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr @94, i64 %.sroa.0.07.i
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !424, !noalias !423, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  store i8 %i.h, ptr %i.i, align 1, !alias.scope !423, !noalias !424
  %i.j = add nuw nsw i64 %.sroa.0.07.i, 1
  %i.k = load i64, ptr %i.e, align 8, !alias.scope !423, !noalias !424, !noundef !5
  %i.l = add i64 %i.k, 1                          ; 5 uses
  store i64 %i.l, ptr %i.e, align 8, !alias.scope !423, !noalias !424
  %i.m = icmp samesign ult i64 %.sroa.0.07.i, 37
  %i.n = icmp ult i64 %i.l, 512                   ; 2 uses
  %or.cond.i = and i1 %i.m, %i.n
  br i1 %or.cond.i, label %.lr.ph.i, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit

_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.o = icmp ne i64 %2, 0
  %or.cond6.i = and i1 %i.o, %i.n
  br i1 %or.cond6.i, label %.lr.ph.i6, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit9

.lr.ph.i6:                                        ; preds = %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit, %.lr.ph.i6
  %i.p = phi i64 [ %i.v, %.lr.ph.i6 ], [ %i.l, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit ]
  %.sroa.0.07.i7 = phi i64 [ %i.t, %.lr.ph.i6 ], [ 0, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.07.i7
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !426, !noalias !425, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.p
  store i8 %i.r, ptr %i.s, align 1, !alias.scope !425, !noalias !426
  %i.t = add nuw i64 %.sroa.0.07.i7, 1            ; 2 uses
  %i.u = load i64, ptr %i.e, align 8, !alias.scope !425, !noalias !426, !noundef !5
  %i.v = add i64 %i.u, 1                          ; 4 uses
  store i64 %i.v, ptr %i.e, align 8, !alias.scope !425, !noalias !426
  %i.w = icmp ult i64 %i.t, %2
  %i.x = icmp ult i64 %i.v, 512
  %or.cond.i8 = and i1 %i.w, %i.x
  br i1 %or.cond.i8, label %.lr.ph.i6, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit9

_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit9: ; preds = %.lr.ph.i6, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit
  %i.y = phi i64 [ %i.l, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit ], [ %i.v, %.lr.ph.i6 ] ; 3 uses
  %i.z = icmp ult i64 %i.y, 512
  br i1 %i.z, label %.lr.ph.i11, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit14

.lr.ph.i11:                                       ; preds = %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.y
  store i8 34, ptr %i.aa, align 1, !alias.scope !427, !noalias !428
  %i.ab = load i64, ptr %i.e, align 8, !alias.scope !427, !noalias !428, !noundef !5
  %i.ac = add i64 %i.ab, 1                        ; 4 uses
  store i64 %i.ac, ptr %i.e, align 8, !alias.scope !427, !noalias !428
  %i.ad = icmp ult i64 %i.ac, 512
  br i1 %i.ad, label %.lr.ph.i11.1, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit14

.lr.ph.i11.1:                                     ; preds = %.lr.ph.i11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ac
  store i8 46, ptr %i.ae, align 1, !alias.scope !427, !noalias !428
  %i.af = load i64, ptr %i.e, align 8, !alias.scope !427, !noalias !428, !noundef !5
  %i.ag = add i64 %i.af, 1                        ; 4 uses
  store i64 %i.ag, ptr %i.e, align 8, !alias.scope !427, !noalias !428
  %i.ah = icmp ult i64 %i.ag, 512
  br i1 %i.ah, label %.lr.ph.i11.2, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit14

.lr.ph.i11.2:                                     ; preds = %.lr.ph.i11.1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ag
  store i8 32, ptr %i.ai, align 1, !alias.scope !427, !noalias !428
  %i.aj = load i64, ptr %i.e, align 8, !alias.scope !427, !noalias !428, !noundef !5
  %i.ak = add i64 %i.aj, 1                        ; 2 uses
  store i64 %i.ak, ptr %i.e, align 8, !alias.scope !427, !noalias !428
  br label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit14

_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit14: ; preds = %.lr.ph.i11, %.lr.ph.i11.1, %.lr.ph.i11.2, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit9
  %i.al = phi i64 [ %i.y, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit9 ], [ %i.ac, %.lr.ph.i11 ], [ %i.ag, %.lr.ph.i11.1 ], [ %i.ak, %.lr.ph.i11.2 ] ; 5 uses
  %i.am = icmp ult i64 %i.al, 512                 ; 2 uses
  br i1 %0, label %.split5, label %.split

.split5:                                          ; preds = %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  br i1 %i.am, label %.lr.ph.i16, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit39

.lr.ph.i16:                                       ; preds = %.split5, %.lr.ph.i16
  %i.an = phi i64 [ %i.at, %.lr.ph.i16 ], [ %i.al, %.split5 ]
  %.sroa.0.07.i17 = phi i64 [ %i.ar, %.lr.ph.i16 ], [ 0, %.split5 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr @96, i64 %.sroa.0.07.i17
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !430, !noalias !429, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.an
  store i8 %i.ap, ptr %i.aq, align 1, !alias.scope !429, !noalias !430
  %i.ar = add nuw nsw i64 %.sroa.0.07.i17, 1
  %i.as = load i64, ptr %i.e, align 8, !alias.scope !429, !noalias !430, !noundef !5
  %i.at = add i64 %i.as, 1                        ; 4 uses
  store i64 %i.at, ptr %i.e, align 8, !alias.scope !429, !noalias !430
  %i.au = icmp samesign ult i64 %.sroa.0.07.i17, 55
  %i.av = icmp ult i64 %i.at, 512
  %or.cond.i18 = and i1 %i.au, %i.av
  br i1 %or.cond.i18, label %.lr.ph.i16, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit19

.split:                                           ; preds = %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  br i1 %i.am, label %.lr.ph.i21, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit39

.lr.ph.i21:                                       ; preds = %.split, %.lr.ph.i21
  %i.aw = phi i64 [ %i.bc, %.lr.ph.i21 ], [ %i.al, %.split ]
  %.sroa.0.07.i22 = phi i64 [ %i.ba, %.lr.ph.i21 ], [ 0, %.split ] ; 3 uses
end_hunk_1
