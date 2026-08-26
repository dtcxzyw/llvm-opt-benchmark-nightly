Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_utils-4552b8f23364b7cd.typst_utils.4c29e00eb546305a-cgu.0?download=true
inline.NumInlined: 302
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3geteEBU_:bb.a

_RINvYNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneReECs6xpQEr8gLsQ_11typst_utils.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i, %bb.e, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i, %bb.f
  %.sroa.06.1.i.i.i.i.i.i = phi i64 [ %i.az, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i ], [ %i.bf, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i ], [ %i.bt, %bb.f ], [ 1376283091369227076, %bb.e ], [ %i.au, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %i.aw, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i ], [ %i.bd, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i ], [ %i.bo, %bb.f ], [ 2611923443488327891, %bb.e ], [ %i.as, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit72.i.i.i.i.i.i ]
  %i.bu = zext i64 %.sroa.0.1.i.i.i.i.i.i to i128
  %i.bv = zext i64 %.sroa.06.1.i.i.i.i.i.i to i128
  %i.bw = mul nuw i128 %i.bu, %i.bv               ; 2 uses
  %i.bx = lshr i128 %i.bw, 64
  %i.by = xor i128 %i.bx, %i.bw
  %i.bz = trunc i128 %i.by to i64
  %i.ca = xor i64 %2, %i.bz
  %i.cb = mul i64 %i.ca, 1452335207727870361
  %i.cc = add i64 %i.cb, 4919460506697669435      ; 2 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.ce = lshr i64 %i.cd, 57
  %i.cf = trunc nuw nsw i64 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !29, !noalias !30, !noundef !5 ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !alias.scope !29, !noalias !30, !nonnull !5, !noundef !5 ; 2 uses
  %i.cj = insertelement <16 x i8> poison, i8 %i.cf, i64 0
  %i.ck = shufflevector <16 x i8> %i.cj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_RINvYNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneReECs6xpQEr8gLsQ_11typst_utils.exit
  %.sroa.9.0.i.i = phi i64 [ 0, %_RINvYNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneReECs6xpQEr8gLsQ_11typst_utils.exit ], [ %i.dd, %bb.h ]
  %.pn.i = phi i64 [ %i.cd, %_RINvYNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneReECs6xpQEr8gLsQ_11typst_utils.exit ], [ %i.de, %bb.h ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.ch         ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i25.i = load <16 x i8>, ptr %i.cl, align 1, !noalias !32 ; 2 uses
  %i.cm = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i, %i.ck
  %i.cn = bitcast <16 x i1> %i.cm to i16          ; 2 uses
  %.not.i.not31.i = icmp eq i16 %i.cn, 0
  br i1 %.not.i.not31.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i
  %.sroa.06.0.i32.i = phi i16 [ %i.dc, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i ], [ %i.cn, %bb.g ] ; 3 uses
  %i.co = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i, i1 true)
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = add i64 %.sroa.01.0.i.i, %i.cp
  %i.cr = and i64 %i.cq, %i.ch
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds [24 x i8], ptr %i.ci, i64 %i.cs ; 3 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -16
  %.val4.i.i = load i64, ptr %i.cu, align 8, !noalias !35, !noundef !5
  %i.cv = icmp eq i64 %2, %.val4.i.i
  br i1 %i.cv, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i, !prof !38

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i: ; preds = %.lr.ph.i
  %i.cw = getelementptr inbounds i8, ptr %i.ct, i64 -24
  %.val3.i.i = load ptr, ptr %i.cw, align 8, !noalias !35, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %.val3.i.i, i64 %2), !alias.scope !39, !noalias !43
  %i.cx = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cx, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtB8_3map14equivalent_keyeBQ_BS_E0EBW_.exit, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i, !prof !44

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !45, !noalias !48, !noundef !5 ; 6 uses
  %i.c = add i64 %i.b, %1                         ; 3 uses
  %i.d = icmp ult i64 %i.c, %i.b
  br i1 %i.d, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !45, !noalias !48, !noundef !5 ; 14 uses
  %i.g = icmp ult i64 %i.f, 8
  %i.h = add i64 %i.f, 1                          ; 6 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = mul nuw i64 %i.i, 7
  %.sroa.03.0.i = select i1 %i.g, i64 %i.f, i64 %i.j ; 3 uses
  %i.k = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.c, %i.k
  br i1 %.not.i, label %bb.d, label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.l = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !50 ; 2 uses
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
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, !prof !51

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !52
  %i.ai = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !52 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !52
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit.thread

bb.k:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.al = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.af), !noalias !52
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.am = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !57
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit.thread

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ao = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.ap = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.aq = mul nuw nsw i64 %i.ap, 7
  %.sroa.07.0.i.i = select i1 %i.an, i64 %i.ao, i64 %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ar, i8 -1, i64 %i.ae, i1 false), !noalias !57
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = icmp eq i64 %i.b, 0
  br i1 %i.at, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit.._crit_edge49_crit_edge, label %.preheader.lr.ph

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit.._crit_edge49_crit_edge: ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !58, !noalias !61
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge49

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs6xpQEr8gLsQ_11typst_utils.exit
  %i.au = load ptr, ptr %0, align 8, !alias.scope !63, !noalias !66, !nonnull !5, !noundef !5 ; 5 uses
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
  store i64 %i.as, ptr %0, align 8, !alias.scope !58, !noalias !61
  store i64 %i.ao, ptr %i.e, align 8, !alias.scope !68, !noalias !70
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bb, ptr %i.bc, align 8, !alias.scope !72, !noalias !74
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
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !76
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
  %.val.i = load ptr, ptr %i.by, align 8, !alias.scope !81, !noalias !84, !nonnull !5, !noundef !5 ; 11 uses
  %i.bz = getelementptr i8, ptr %i.bx, i64 -16
  %.val2.i = load i64, ptr %i.bz, align 8, !alias.scope !81, !noalias !84, !noundef !5 ; 11 uses
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
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cg, align 1, !alias.scope !89, !noalias !98
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ch, align 1, !alias.scope !89, !noalias !98
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
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.cs, align 1, !alias.scope !89, !noalias !98
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.ct, align 1, !alias.scope !89, !noalias !98
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
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.dd, align 1, !alias.scope !89, !noalias !98
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.de, align 1, !alias.scope !89, !noalias !98
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
  %.sroa.038.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.do, align 1, !alias.scope !89, !noalias !98
  %i.dp = xor i64 %.sroa.038.0.copyload.i.i.i.i.i.i.i.i.i, %.sroa.06.097.i.i.i.i.i.i.i.i.i.lcssa
  %i.dq = getelementptr i8, ptr %i.dn, i64 -8
  %.sroa.040.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dq, align 1, !alias.scope !89, !noalias !98
  %i.dr = xor i64 %.sroa.040.0.copyload.i.i.i.i.i.i.i.i.i, %.lcssa96
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ds = icmp samesign ugt i64 %.val2.i, 3
  br i1 %i.ds, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i, label %bb.p

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %.sroa.028.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.val.i, align 1, !alias.scope !89, !noalias !98
  %i.dt = xor i64 %.sroa.028.0.copyload.i.i.i.i.i.i.i.i.i, 2611923443488327891
  %i.du = getelementptr i8, ptr %.val.i, i64 %.val2.i
  %i.dv = getelementptr i8, ptr %i.du, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dv, align 1, !alias.scope !89, !noalias !98
  %i.dw = xor i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i.i.i, 1376283091369227076
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %.not63.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val2.i, 0
  br i1 %.not63.i.i.i.i.i.i.i.i.i, label %bb.r, label %bb.q

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.dx = getelementptr i8, ptr %.val.i, i64 %.val2.i
  %i.dy = getelementptr i8, ptr %i.dx, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.dy, align 1, !alias.scope !89, !noalias !98
  %.sroa.032.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %.val.i, align 1, !alias.scope !89, !noalias !98
  %i.dz = zext i32 %.sroa.032.0.copyload.i.i.i.i.i.i.i.i.i to i64
  %i.ea = xor i64 %i.dz, 2611923443488327891
  %i.eb = zext i32 %.sroa.033.0.copyload.i.i.i.i.i.i.i.i.i to i64
  %i.ec = xor i64 %i.eb, 1376283091369227076
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ed = load i8, ptr %.val.i, align 1, !alias.scope !89, !noalias !98, !noundef !5
  %i.ee = lshr i64 %.val2.i, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !89, !noalias !98, !noundef !5
  %i.eh = getelementptr i8, ptr %.val.i, i64 %.val2.i
  %i.ei = getelementptr i8, ptr %i.eh, i64 -1
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !89, !noalias !98, !noundef !5
  %i.ek = zext i8 %i.ed to i64
  %i.el = xor i64 %i.ek, 2611923443488327891
  %i.em = zext i8 %i.ej to i64
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BS_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EBW_:bb.a
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
  %.sroa.038.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.iv, align 1, !alias.scope !124, !noalias !133
  %i.iw = xor i64 %.sroa.038.0.copyload.i.i.i.i.i.i.i.i.i.i, %.sroa.06.097.i.i.i.i.i.i.i.i.i.i.lcssa
  %i.ix = getelementptr i8, ptr %i.iu, i64 -8
  %.sroa.040.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ix, align 1, !alias.scope !124, !noalias !133
  %i.iy = xor i64 %.sroa.040.0.copyload.i.i.i.i.i.i.i.i.i.i, %.lcssa98
  br label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.iz = icmp samesign ugt i64 %.val2.i.i14, 3
  br i1 %i.iz, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i.i, label %bb.z

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %.sroa.028.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val.i.i13, align 1, !alias.scope !124, !noalias !133
  %i.ja = xor i64 %.sroa.028.0.copyload.i.i.i.i.i.i.i.i.i.i, 2611923443488327891
  %i.jb = getelementptr i8, ptr %.val.i.i13, i64 %.val2.i.i14
  %i.jc = getelementptr i8, ptr %i.jb, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jc, align 1, !alias.scope !124, !noalias !133
  %i.jd = xor i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i.i.i.i, 1376283091369227076
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.not63.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val2.i.i14, 0
  br i1 %.not63.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.y
  %i.je = getelementptr i8, ptr %.val.i.i13, i64 %.val2.i.i14
  %i.jf = getelementptr i8, ptr %i.je, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.jf, align 1, !alias.scope !124, !noalias !133
  %.sroa.032.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.val.i.i13, align 1, !alias.scope !124, !noalias !133
  %i.jg = zext i32 %.sroa.032.0.copyload.i.i.i.i.i.i.i.i.i.i to i64
  %i.jh = xor i64 %i.jg, 2611923443488327891
  %i.ji = zext i32 %.sroa.033.0.copyload.i.i.i.i.i.i.i.i.i.i to i64
  %i.jj = xor i64 %i.ji, 1376283091369227076
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.jk = load i8, ptr %.val.i.i13, align 1, !alias.scope !124, !noalias !133, !noundef !5
  %i.jl = lshr i64 %.val2.i.i14, 1
  %i.jm = getelementptr inbounds nuw i8, ptr %.val.i.i13, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !alias.scope !124, !noalias !133, !noundef !5
  %i.jo = getelementptr i8, ptr %.val.i.i13, i64 %.val2.i.i14
  %i.jp = getelementptr i8, ptr %i.jo, i64 -1
  %i.jq = load i8, ptr %i.jp, align 1, !alias.scope !124, !noalias !133, !noundef !5
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
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ki, align 1, !noalias !143
  %i.kj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.kk = bitcast <16 x i1> %i.kj to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.kk, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !111

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %bb.ab
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.ab ], [ %.sroa.0.0.i.i15, %.lr.ph.i16.i ]
  %.lcssa.i.i = phi i16 [ %i.kk, %bb.ab ], [ %i.lb, %.lr.ph.i16.i ]
  %i.kl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.km = zext nneg i16 %i.kl to i64
  %i.kn = add i64 %.sroa.0.0.lcssa.i.i, %i.km
  %i.ko = and i64 %i.kn, %i.f                     ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !noalias !113, !noundef !5
  %i.kr = icmp sgt i8 %i.kq, -1
  br i1 %i.kr, label %bb.ac, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !4

bb.ac:                                            ; preds = %._crit_edge.i15.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val13.i, align 16, !noalias !113
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
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.kz, align 1, !noalias !143
  %i.la = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.lb = bitcast <16 x i1> %i.la to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.lb, 0
  br i1 %.not.i.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !112

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.ac, %._crit_edge.i15.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.kv, %bb.ac ], [ %i.ko, %._crit_edge.i15.i ] ; 4 uses
  %i.lc = sub i64 %.sroa.0.08.i, %.sroa.0.07.i.i
  %i.ld = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.le = xor i64 %i.ld, %i.lc
  %.unshifted.i = and i64 %i.le, %i.f
  %i.lf = icmp ult i64 %.unshifted.i, 16
  br i1 %i.lf, label %bb.ae, label %bb.ad, !prof !146

bb.ad:                                            ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %.neg11.i = mul i64 %.sroa.0.0.i5.i.i, -24
  %i.lg = getelementptr i8, ptr %.val13.i, i64 %.neg11.i ; 3 uses
  %i.lh = getelementptr i8, ptr %i.lg, i64 -24    ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.lj = load i8, ptr %i.li, align 1, !noalias !113, !noundef !5
  %i.lk = lshr i64 %i.kh, 57
  %i.ll = trunc nuw nsw i64 %i.lk to i8           ; 2 uses
  %i.lm = add i64 %.sroa.0.0.i5.i.i, -16
  %i.ln = and i64 %i.lm, %i.f
  store i8 %i.ll, ptr %i.li, align 1, !noalias !113
  %i.lo = getelementptr i8, ptr %.val13.i, i64 %i.ln
  %i.lp = getelementptr i8, ptr %i.lo, i64 16
  store i8 %i.ll, ptr %i.lp, align 1, !noalias !113
  %i.lq = icmp eq i8 %i.lj, -1
  br i1 %i.lq, label %bb.af, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ha, align 1, !alias.scope !147, !noalias !152
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.lh, align 1, !alias.scope !150, !noalias !153
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.ha, align 1, !alias.scope !147, !noalias !152
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.lh, align 1, !alias.scope !150, !noalias !153
  %i.lr = getelementptr i8, ptr %i.lg, i64 -16    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %.sroa.0.0.copyload.i.i.i.1.i = load i64, ptr %i.hf, align 1, !alias.scope !154, !noalias !158
  %.sroa.02.0.copyload.i.i.i.1.i = load i64, ptr %i.lr, align 1, !alias.scope !156, !noalias !159
  store i64 %.sroa.02.0.copyload.i.i.i.1.i, ptr %i.hf, align 1, !alias.scope !154, !noalias !158
  store i64 %.sroa.0.0.copyload.i.i.i.1.i, ptr %i.lr, align 1, !alias.scope !156, !noalias !159
  %i.ls = getelementptr i8, ptr %i.lg, i64 -8     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %.sroa.0.0.copyload.i.i.i.2.i = load i64, ptr %i.hg, align 1, !alias.scope !160, !noalias !164
  %.sroa.02.0.copyload.i.i.i.2.i = load i64, ptr %i.ls, align 1, !alias.scope !162, !noalias !165
  store i64 %.sroa.02.0.copyload.i.i.i.2.i, ptr %i.hg, align 1, !alias.scope !160, !noalias !164
  store i64 %.sroa.0.0.copyload.i.i.i.2.i, ptr %i.ls, align 1, !alias.scope !162, !noalias !165
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i

bb.ae:                                            ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.lt = lshr i64 %i.kh, 57
  %i.lu = trunc nuw nsw i64 %i.lt to i8           ; 2 uses
  %i.lv = add i64 %.sroa.0.08.i, -16
  %i.lw = and i64 %i.lv, %i.f
  store i8 %i.lu, ptr %i.gy, align 1, !noalias !113
  %i.lx = getelementptr i8, ptr %.val13.i, i64 %i.lw
  %i.ly = getelementptr i8, ptr %i.lx, i64 16
  store i8 %i.lu, ptr %i.ly, align 1, !noalias !113
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.lz = add i64 %.sroa.0.08.i, -16
  %i.ma = and i64 %i.lz, %i.f
  store i8 -1, ptr %i.gy, align 1, !noalias !113
  %i.mb = getelementptr i8, ptr %.val13.i, i64 %i.ma
  %i.mc = getelementptr i8, ptr %i.mb, i64 16
  store i8 -1, ptr %i.mc, align 1, !noalias !113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.lh, ptr noundef nonnull align 1 dereferenceable(24) %i.ha, i64 24, i1 false), !noalias !113
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.v
  %exitcond.not.i = icmp eq i64 %.sroa.0.08.i, %i.f
  br i1 %exitcond.not.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %bb.v

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.ag, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread20.i
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.me = sub i64 %.sroa.03.0.i, %i.b
  store i64 %i.me, ptr %i.md, align 8, !alias.scope !113
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
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !166, !noundef !5 ; 2 uses
  %i.b = atomicrmw sub ptr %.val, i32 1 release, align 4
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, -1073741825
  %or.cond.i.i = icmp eq i32 %i.d, -2147483648
  br i1 %or.cond.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit, !prof !167

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val, i32 noundef %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEEB20_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !168, !noundef !5 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !169, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !146

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
  br i1 %or.cond.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1H_.exit, label %bb.e, !prof !170

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
  br i1 %i.e, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !prof !146

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
  br i1 %or.cond.not.i, label %_RNvXsi_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1e_.exit, label %bb.e, !prof !170

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
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !168, !noundef !5 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !168, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !169, !noundef !5
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtB6_6poison6rwlock6RwLockNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEE5force0B1t_.exit, !prof !4

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #36
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtB6_6poison6rwlock6RwLockNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEE5force0B1t_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a), !inline_history !171
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
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !168, !noundef !5 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !168, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !169, !noundef !5
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockNtNtCs6xpQEr8gLsQ_11typst_utils8version_12TypstVersionE5force0BY_.exit, !prof !4

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #36
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockNtNtCs6xpQEr8gLsQ_11typst_utils8version_12TypstVersionE5force0BY_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a), !inline_history !172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #36
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef double @_RNCNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB4_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmts_0B6_(ptr nofree readonly captures(none) %.0.val, i32 noundef range(i32 0, 4) %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = load i64, ptr %.0.val, align 8, !noundef !5
end_hunk_1
begin_hunk_2_@_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr7resolve:bb.a
.lr.ph.8.i:                                       ; preds = %.lr.ph.7.i
  %i.av = and i64 %i.at, 31
  %i.aw = getelementptr inbounds nuw i8, ptr @108, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !337, !noundef !5 ; 4 uses
  %i.ay = lshr i64 %i.f, 45                       ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.9.i

.lr.ph.9.i:                                       ; preds = %.lr.ph.8.i
  %i.ba = and i64 %i.ay, 31
  %i.bb = getelementptr inbounds nuw i8, ptr @108, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !337, !noundef !5 ; 3 uses
  %i.bd = lshr i64 %i.f, 50                       ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.10.i

.lr.ph.10.i:                                      ; preds = %.lr.ph.9.i
  %i.bf = and i64 %i.bd, 31
  %i.bg = getelementptr inbounds nuw i8, ptr @108, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !337, !noundef !5 ; 2 uses
  %i.bi = lshr i64 %i.f, 55                       ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.11.i

.lr.ph.11.i:                                      ; preds = %.lr.ph.10.i
  %i.bk = and i64 %i.bi, 31
  %i.bl = getelementptr inbounds nuw i8, ptr @108, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !337, !noundef !5
  %i.bn = icmp samesign ult i64 %i.f, 1152921504606846976
  br i1 %i.bn, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.12.i

.lr.ph.12.i:                                      ; preds = %.lr.ph.11.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 12, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #36, !noalias !337
  unreachable

_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit: ; preds = %bb.c, %.lr.ph.preheader.i, %.lr.ph.1.i, %.lr.ph.2.i, %.lr.ph.3.i, %.lr.ph.4.i, %.lr.ph.5.i, %.lr.ph.6.i, %.lr.ph.7.i, %.lr.ph.8.i, %.lr.ph.9.i, %.lr.ph.10.i, %.lr.ph.11.i
  %.sroa.0.0.i = phi i8 [ 0, %bb.c ], [ %i.j, %.lr.ph.11.i ], [ %i.j, %.lr.ph.10.i ], [ %i.j, %.lr.ph.9.i ], [ %i.j, %.lr.ph.8.i ], [ %i.j, %.lr.ph.7.i ], [ %i.j, %.lr.ph.6.i ], [ %i.j, %.lr.ph.5.i ], [ %i.j, %.lr.ph.4.i ], [ %i.j, %.lr.ph.3.i ], [ %i.j, %.lr.ph.2.i ], [ %i.j, %.lr.ph.1.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.sroa.3.0.i = phi i8 [ 0, %bb.c ], [ %i.o, %.lr.ph.11.i ], [ %i.o, %.lr.ph.10.i ], [ %i.o, %.lr.ph.9.i ], [ %i.o, %.lr.ph.8.i ], [ %i.o, %.lr.ph.7.i ], [ %i.o, %.lr.ph.6.i ], [ %i.o, %.lr.ph.5.i ], [ %i.o, %.lr.ph.4.i ], [ %i.o, %.lr.ph.3.i ], [ %i.o, %.lr.ph.2.i ], [ %i.o, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.4.0.i = phi i8 [ 0, %bb.c ], [ %i.t, %.lr.ph.11.i ], [ %i.t, %.lr.ph.10.i ], [ %i.t, %.lr.ph.9.i ], [ %i.t, %.lr.ph.8.i ], [ %i.t, %.lr.ph.7.i ], [ %i.t, %.lr.ph.6.i ], [ %i.t, %.lr.ph.5.i ], [ %i.t, %.lr.ph.4.i ], [ %i.t, %.lr.ph.3.i ], [ %i.t, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.513.0.i = phi i8 [ 0, %bb.c ], [ %i.y, %.lr.ph.11.i ], [ %i.y, %.lr.ph.10.i ], [ %i.y, %.lr.ph.9.i ], [ %i.y, %.lr.ph.8.i ], [ %i.y, %.lr.ph.7.i ], [ %i.y, %.lr.ph.6.i ], [ %i.y, %.lr.ph.5.i ], [ %i.y, %.lr.ph.4.i ], [ %i.y, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.6.0.i = phi i8 [ 0, %bb.c ], [ %i.ad, %.lr.ph.11.i ], [ %i.ad, %.lr.ph.10.i ], [ %i.ad, %.lr.ph.9.i ], [ %i.ad, %.lr.ph.8.i ], [ %i.ad, %.lr.ph.7.i ], [ %i.ad, %.lr.ph.6.i ], [ %i.ad, %.lr.ph.5.i ], [ %i.ad, %.lr.ph.4.i ], [ 0, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.7.0.i = phi i8 [ 0, %bb.c ], [ %i.ai, %.lr.ph.11.i ], [ %i.ai, %.lr.ph.10.i ], [ %i.ai, %.lr.ph.9.i ], [ %i.ai, %.lr.ph.8.i ], [ %i.ai, %.lr.ph.7.i ], [ %i.ai, %.lr.ph.6.i ], [ %i.ai, %.lr.ph.5.i ], [ 0, %.lr.ph.4.i ], [ 0, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.8.0.i = phi i8 [ 0, %bb.c ], [ %i.an, %.lr.ph.11.i ], [ %i.an, %.lr.ph.10.i ], [ %i.an, %.lr.ph.9.i ], [ %i.an, %.lr.ph.8.i ], [ %i.an, %.lr.ph.7.i ], [ %i.an, %.lr.ph.6.i ], [ 0, %.lr.ph.5.i ], [ 0, %.lr.ph.4.i ], [ 0, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.9.0.i = phi i8 [ 0, %bb.c ], [ %i.as, %.lr.ph.11.i ], [ %i.as, %.lr.ph.10.i ], [ %i.as, %.lr.ph.9.i ], [ %i.as, %.lr.ph.8.i ], [ %i.as, %.lr.ph.7.i ], [ 0, %.lr.ph.6.i ], [ 0, %.lr.ph.5.i ], [ 0, %.lr.ph.4.i ], [ 0, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.10.0.i = phi i8 [ 0, %bb.c ], [ %i.ax, %.lr.ph.11.i ], [ %i.ax, %.lr.ph.10.i ], [ %i.ax, %.lr.ph.9.i ], [ %i.ax, %.lr.ph.8.i ], [ 0, %.lr.ph.7.i ], [ 0, %.lr.ph.6.i ], [ 0, %.lr.ph.5.i ], [ 0, %.lr.ph.4.i ], [ 0, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.11.0.i = phi i8 [ 0, %bb.c ], [ %i.bc, %.lr.ph.11.i ], [ %i.bc, %.lr.ph.10.i ], [ %i.bc, %.lr.ph.9.i ], [ 0, %.lr.ph.8.i ], [ 0, %.lr.ph.7.i ], [ 0, %.lr.ph.6.i ], [ 0, %.lr.ph.5.i ], [ 0, %.lr.ph.4.i ], [ 0, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.12.0.i = phi i8 [ 0, %bb.c ], [ %i.bh, %.lr.ph.11.i ], [ %i.bh, %.lr.ph.10.i ], [ 0, %.lr.ph.9.i ], [ 0, %.lr.ph.8.i ], [ 0, %.lr.ph.7.i ], [ 0, %.lr.ph.6.i ], [ 0, %.lr.ph.5.i ], [ 0, %.lr.ph.4.i ], [ 0, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.13.0.i = phi i8 [ 0, %bb.c ], [ %i.bm, %.lr.ph.11.i ], [ 0, %.lr.ph.10.i ], [ 0, %.lr.ph.9.i ], [ 0, %.lr.ph.8.i ], [ 0, %.lr.ph.7.i ], [ 0, %.lr.ph.6.i ], [ 0, %.lr.ph.5.i ], [ 0, %.lr.ph.4.i ], [ 0, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.03.0.lcssa.i = phi i8 [ 0, %bb.c ], [ 12, %.lr.ph.11.i ], [ 11, %.lr.ph.10.i ], [ 10, %.lr.ph.9.i ], [ 9, %.lr.ph.8.i ], [ 8, %.lr.ph.7.i ], [ 7, %.lr.ph.6.i ], [ 6, %.lr.ph.5.i ], [ 5, %.lr.ph.4.i ], [ 4, %.lr.ph.3.i ], [ 3, %.lr.ph.2.i ], [ 2, %.lr.ph.1.i ], [ 1, %.lr.ph.preheader.i ]
  store i8 0, ptr %0, align 8, !alias.scope !337
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.03.0.lcssa.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !337
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !alias.scope !337
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %.sroa.3.0.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !337
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %.sroa.4.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !337
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %.sroa.513.0.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !337
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %.sroa.6.0.i, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i, align 2, !alias.scope !337
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %.sroa.7.0.i, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !337
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.8.0.i, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !337
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.9.0.i, ptr %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !337
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sroa.10.0.i, ptr %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx.i, align 2, !alias.scope !337
  %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %.sroa.11.0.i, ptr %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !337
  %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.12.0.i, ptr %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !337
  %.sroa.5.sroa.14.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %.sroa.13.0.i, ptr %.sroa.5.sroa.14.0..sroa.5.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !337
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.bo = add nsw i64 %1, -66                     ; 3 uses
  %i.bp = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 72) acquire, align 8
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEE5force0EB2c_.exit, label %bb.e, !prof !146

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 72), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEE5force0EB2c_.exit

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEE5force0EB2c_.exit: ; preds = %bb.d, %bb.e
  %i.br = load atomic i32, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER monotonic, align 8 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.br, 1073741822
  br i1 %or.cond3.i, label %bb.f, label %bb.g, !prof !227

bb.f:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEE5force0EB2c_.exit
  %i.bs = add nuw nsw i32 %i.br, 1
  %i.bt = cmpxchg weak ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i32 %i.br, i32 %i.bs acquire monotonic, align 4
  %i.bu = extractvalue { i32, i1 } %i.bt, 1
  br i1 %i.bu, label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, label %bb.g, !prof !146

bb.g:                                             ; preds = %bb.f, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEE5force0EB2c_.exit
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER)
  br label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit

_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit: ; preds = %bb.f, %bb.g
  %i.bv = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 8) monotonic, align 8, !noalias !340
  %.not.i.not = icmp eq i8 %i.bv, 0
  br i1 %.not.i.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEINtBM_11PoisonErrorBH_EE6unwrapB1M_.exit, label %bb.h, !prof !146

bb.h:                                             ; preds = %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !343
  store ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 16), ptr %i.c, align 8, !noalias !343
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, ptr %i.bw, align 8, !noalias !343
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32
          to label %bb.k unwind label %bb.i, !noalias !347

bb.i:                                             ; preds = %bb.h
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %.val.i = load ptr, ptr %i.bw, align 8, !alias.scope !348, !noalias !347, !nonnull !5, !align !166, !noundef !5 ; 2 uses
  %i.by = atomicrmw sub ptr %.val.i, i32 1 release, align 4, !noalias !351
  %i.bz = add i32 %i.by, -1                       ; 2 uses
  %i.ca = and i32 %i.bz, -1073741825
  %or.cond.i.i.i = icmp eq i32 %i.ca, -2147483648
  br i1 %or.cond.i.i.i, label %bb.j, label %common.resume, !prof !167

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val.i, i32 noundef %i.bz)
          to label %common.resume unwind label %bb.l

bb.k:                                             ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !347
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.q, %bb.j, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.bx, %bb.i ], [ %i.cr, %bb.q ], [ %i.cr, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEINtBM_11PoisonErrorBH_EE6unwrapB1M_.exit: ; preds = %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  %i.cc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 32), align 8, !noundef !5 ; 2 uses
  %i.cd = icmp ult i64 %i.bo, %i.cc
  br i1 %i.cd, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.b
  %i.ce = getelementptr [16 x i8], ptr @90, i64 %1 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -16
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !5, !noundef !5
  %i.ch = getelementptr i8, ptr %i.ce, i64 -8
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !5
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit

bb.n:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEINtBM_11PoisonErrorBH_EE6unwrapB1M_.exit
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 24), align 8, !nonnull !5, !noundef !5
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.bo ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !5 ; 2 uses
  %i.co = atomicrmw sub ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i32 1 release, align 4
  %i.cp = add i32 %i.co, -1                       ; 2 uses
  %i.cq = and i32 %i.cp, -1073741825
  %or.cond.i.i = icmp eq i32 %i.cq, -2147483648
  br i1 %or.cond.i.i, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit, !prof !167

bb.o:                                             ; preds = %bb.n
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i32 noundef %i.cp)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit

bb.p:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEINtBM_11PoisonErrorBH_EE6unwrapB1M_.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #32
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = atomicrmw sub ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i32 1 release, align 4
  %i.ct = add i32 %i.cs, -1                       ; 2 uses
  %i.cu = and i32 %i.ct, -1073741825
  %or.cond.i.i11 = icmp eq i32 %i.cu, -2147483648
  br i1 %or.cond.i.i11, label %bb.r, label %common.resume, !prof !167

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i32 noundef %i.ct)
          to label %common.resume unwind label %bb.t

bb.s:                                             ; preds = %bb.p
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit: ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.3.0 = phi i64 [ %i.ci, %bb.m ], [ %i.cn, %bb.n ], [ %i.cn, %bb.o ]
  %.sroa.01.0 = phi ptr [ %i.cg, %bb.m ], [ %i.cl, %bb.n ], [ %i.cl, %bb.o ]
  store i8 1, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 0) i64 @_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr8constant(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.a = icmp ult i64 %1, 13                      ; 2 uses
  br i1 %i.a, label %.preheader.split.i.i, label %.loopexit.i

.preheader.split.i.i:                             ; preds = %bb.a
  %.not11.i.i = icmp eq i64 %1, 0
  br i1 %.not11.i.i, label %bb.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.split.i.i, %bb.b
  %.sroa.0.013.i.i = phi i64 [ %i.k, %bb.b ], [ 0, %.preheader.split.i.i ]
  %.sroa.03.012.i.i = phi i64 [ %i.b, %bb.b ], [ %1, %.preheader.split.i.i ]
  %i.b = add nsw i64 %.sroa.03.012.i.i, -1        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !358, !noalias !359, !noundef !5
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @110, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !noalias !362, !noundef !5 ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = shl i64 %.sroa.0.013.i.i, 5
  %i.j = zext i8 %i.g to i64
  %i.k = or i64 %i.i, %i.j                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6encode.exit.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  br label %bb.c

bb.c:                                             ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i, %.loopexit.i
  %.sroa.01.014.i.i = phi i64 [ 0, %.loopexit.i ], [ %.sroa.01.1.i.i, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i ] ; 3 uses
  %.sroa.03.013.i.i = phi i64 [ 65, %.loopexit.i ], [ %.sroa.03.1.i.i, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i ] ; 2 uses
  %i.l = add i64 %.sroa.03.013.i.i, %.sroa.01.014.i.i ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 6 uses
  %i.n = icmp ult i64 %i.l, 130
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [16 x i8], ptr @90, i64 %i.m ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !366, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !366, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.r) ; 2 uses
  %.not.i.i.i = icmp eq i64 %..i.i.i, 0
  br i1 %.not.i.i.i, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.02.021.i.i.i = phi i64 [ %i.x, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.021.i.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !372, !noalias !373, !noundef !5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.02.021.i.i.i
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !370, !noalias !374, !noundef !5 ; 2 uses
  %i.w = icmp eq i8 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.x = add nuw i64 %.sroa.02.021.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.x, %..i.i.i
  br i1 %exitcond.not.i.i.i, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.y = icmp ult i8 %i.t, %i.v
  br i1 %i.y, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6.i.i

_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i = tail call i8 @llvm.ucmp.i8.i64(i64 %1, i64 %i.r)
  switch i8 %.sroa.0.0.i.i.i, label %default.unreachable.i.i [
    i8 -1, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i
    i8 0, label %bb.h
    i8 1, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6.i.i
  ]

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef 65, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #36, !noalias !366
  unreachable

default.unreachable.i.i:                          ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i
  unreachable

_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6.i.i: ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i, %bb.f
  %i.z = add nuw nsw i64 %i.m, 1
  br label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i

_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i: ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6.i.i, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i, %bb.f
  %.sroa.03.1.i.i = phi i64 [ %.sroa.03.013.i.i, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6.i.i ], [ %i.m, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i ], [ %i.m, %bb.f ] ; 2 uses
  %.sroa.01.1.i.i = phi i64 [ %i.z, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6.i.i ], [ %.sroa.01.014.i.i, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i ], [ %.sroa.01.014.i.i, %bb.f ] ; 2 uses
  %i.aa = icmp ult i64 %.sroa.01.1.i.i, %.sroa.03.1.i.i
  br i1 %i.aa, label %bb.c, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr12try_constant.exit

_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6encode.exit.loopexit.i: ; preds = %bb.b
  %i.ab = or i64 %i.k, -9223372036854775808
  br label %bb.i

bb.h:                                             ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i
  %i.ac = add nuw nsw i64 %i.m, 1
  br label %bb.i

_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr12try_constant.exit: ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i
  tail call void @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern(i1 noundef zeroext %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #32
  unreachable

bb.i:                                             ; preds = %bb.h, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6encode.exit.loopexit.i, %.preheader.split.i.i
  %.sroa.61.0.ph = phi i64 [ %i.ab, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6encode.exit.loopexit.i ], [ -9223372036854775808, %.preheader.split.i.i ], [ %i.ac, %bb.h ]
  ret i64 %.sroa.61.0.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i64 @_RNvMNtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB2_6BitSet3new() unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  ret i64 ptrtoint (ptr @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER to i64)
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB2_6BitSet6insert(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 6                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %.not = icmp ult i64 %i.a, %i.c
  br i1 %.not, label %_RNvMs4_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE6resizeCs6xpQEr8gLsQ_11typst_utils.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.d = add nuw nsw i64 %i.a, 1
  %i.e = sub nuw nsw i64 %i.d, %i.c               ; 3 uses
  tail call fastcc void @_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE7reserveCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.e)
  %i.f = icmp samesign ugt i64 %i.e, 1
  br i1 %i.f, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !378 ; 2 uses
  %.pre11.i = load i64, ptr %.pre.i, align 8, !noalias !378
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit.i, %.lr.ph.preheader.i
  %i.g = phi i64 [ %i.q, %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit.i ], [ %.pre11.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.h = phi ptr [ %i.m, %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.01.010.i = phi i64 [ %i.i, %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit.i ], [ 1, %.lr.ph.preheader.i ]
  %i.i = add nuw i64 %.sroa.01.010.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !378, !noundef !5
  %i.l = icmp eq i64 %i.g, %i.k
  br i1 %i.l, label %bb.c, label %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  tail call fastcc void @_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE7reserveCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 1)
  %.val.pre.i.i = load ptr, ptr %0, align 8, !alias.scope !378 ; 2 uses
  %.pre.i.i = load i64, ptr %.val.pre.i.i, align 8, !noalias !378
  br label %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit.i

_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.m = phi ptr [ %i.h, %.lr.ph.i ], [ %.val.pre.i.i, %bb.c ] ; 3 uses
  %i.n = phi i64 [ %i.g, %.lr.ph.i ], [ %.pre.i.i, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  store i64 0, ptr %i.p, align 8, !noalias !378
  %i.q = add i64 %i.n, 1                          ; 2 uses
  store i64 %i.q, ptr %i.m, align 8, !noalias !378
  %exitcond.not.i = icmp eq i64 %i.i, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.r = load ptr, ptr %0, align 8, !alias.scope !385, !nonnull !5, !noundef !5 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !noalias !385, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !385, !noundef !5
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.d, label %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit9.i

bb.d:                                             ; preds = %._crit_edge.i
  tail call fastcc void @_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE7reserveCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 1)
  %.val.pre.i7.i = load ptr, ptr %0, align 8, !alias.scope !385 ; 2 uses
  %.pre.i8.i = load i64, ptr %.val.pre.i7.i, align 8, !noalias !385
end_hunk_2
begin_hunk_3_@_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern:bb.a
  br i1 %i.cn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs6xpQEr8gLsQ_11typst_utils.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 14, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #36
  unreachable

bb.d:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs6xpQEr8gLsQ_11typst_utils.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !5, !noundef !5
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !5
  store ptr %i.cp, ptr %i.c, align 8, !captures !336
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.cr, ptr %i.cs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs6xpQEr8gLsQ_11typst_utils, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @100, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtCs6xpQEr8gLsQ_11typst_utils5round20round_with_precision(double noundef %0, i16 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store double %0, ptr %i.c, align 8
  %i.d = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %or.cond9 = fcmp ueq double %i.d, +inf
  br i1 %or.cond9, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i16 %1, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = fcmp oge double %i.d, f0x4340000000000000
  %i.g = icmp samesign ugt i16 %1, 14
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.j, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i16 %1, -308
  br i1 %i.h, label %bb.f, label %.thread10

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i16 %1, 0
  br i1 %.not, label %.thread10, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = tail call double @llvm.copysign.f64(double 0.000000e+00, double %0)
  br label %bb.j

.thread10:                                        ; preds = %bb.d, %bb.e
  %i.j = sitofp i16 %1 to double
  %i.k = fneg double %i.j
  %i.l = tail call noundef double @_RNvNtNtCsaQuoagdqERF_4libm4math5exp105exp10(double noundef %i.k) ; 2 uses
  %i.m = fdiv double %0, %i.l
  %i.n = tail call double @llvm.round.f64(double %i.m)
  %i.o = fmul double %i.l, %i.n
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = uitofp nneg i16 %1 to double
  %i.q = tail call noundef double @_RNvNtNtCsaQuoagdqERF_4libm4math5exp105exp10(double noundef %i.p) ; 3 uses
  store double %i.q, ptr %i.b, align 8
  %i.r = fmul double %i.q, %0                     ; 2 uses
  %i.s = tail call double @llvm.fabs.f64(double %i.r)
  %i.t = fcmp ueq double %i.s, +inf
  br i1 %i.t, label %bb.h, label %bb.i, !prof !4

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.u, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @102, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #36
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = tail call double @llvm.round.f64(double %i.r)
  %i.w = fdiv double %i.v, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.c, %.thread10, %bb.i, %bb.f
  %.sroa.0.0 = phi double [ %i.o, %.thread10 ], [ %i.i, %bb.f ], [ %i.w, %bb.i ], [ %0, %bb.c ], [ %0, %bb.a ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtCs6xpQEr8gLsQ_11typst_utils5round24round_int_with_precision(i64 noundef %0, i16 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i16 %1, -1
  br i1 %i.a, label %_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_pow.exit.thread27, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub i16 0, %1
  %i.c = sext i16 %i.b to i32
  %i.d = add nsw i32 %i.c, -1                     ; 11 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.thread32, label %.preheader49.preheader.i

.preheader49.preheader.i:                         ; preds = %bb.b
  %i.f = and i32 %i.d, 1
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %.preheader49.1.i, label %bb.c

bb.c:                                             ; preds = %.preheader49.preheader.i
  %i.g = icmp eq i32 %i.d, 1
  br i1 %i.g, label %.thread32, label %.preheader49.1.i

.preheader49.1.i:                                 ; preds = %bb.c, %.preheader49.preheader.i
  %.sroa.034.1.i = phi i64 [ 10, %bb.c ], [ 1, %.preheader49.preheader.i ] ; 2 uses
  %i.h = and i32 %i.d, 2
  %.not.1.i = icmp eq i32 %i.h, 0
  br i1 %.not.1.i, label %.preheader49.2.i, label %bb.d

bb.d:                                             ; preds = %.preheader49.1.i
  %i.i = mul nuw nsw i64 %.sroa.034.1.i, 100      ; 2 uses
  %.mask.i = and i32 %i.d, -2
  %i.j = icmp eq i32 %.mask.i, 2
  br i1 %i.j, label %.thread32, label %.preheader49.2.i

.preheader49.2.i:                                 ; preds = %bb.d, %.preheader49.1.i
  %.sroa.034.1.1.i = phi i64 [ %i.i, %bb.d ], [ %.sroa.034.1.i, %.preheader49.1.i ] ; 2 uses
  %i.k = and i32 %i.d, 4
  %.not.2.i = icmp eq i32 %i.k, 0
  br i1 %.not.2.i, label %.preheader49.3.i, label %bb.e

bb.e:                                             ; preds = %.preheader49.2.i
  %i.l = mul nuw nsw i64 %.sroa.034.1.1.i, 10000  ; 2 uses
  %.mask59.i = and i32 %i.d, -4
  %i.m = icmp eq i32 %.mask59.i, 4
  br i1 %i.m, label %.thread32, label %.preheader49.3.i

.preheader49.3.i:                                 ; preds = %bb.e, %.preheader49.2.i
  %.sroa.034.1.2.i = phi i64 [ %i.l, %bb.e ], [ %.sroa.034.1.1.i, %.preheader49.2.i ] ; 2 uses
  %i.n = and i32 %i.d, 8
  %.not.3.i = icmp eq i32 %i.n, 0
  br i1 %.not.3.i, label %.preheader49.4.i, label %bb.f

bb.f:                                             ; preds = %.preheader49.3.i
  %i.o = mul nuw nsw i64 %.sroa.034.1.2.i, 100000000 ; 2 uses
  %.mask60.i = and i32 %i.d, -8
  %i.p = icmp eq i32 %.mask60.i, 8
  br i1 %i.p, label %.thread32, label %.preheader49.4.i

.preheader49.4.i:                                 ; preds = %bb.f, %.preheader49.3.i
  %.sroa.034.1.3.i = phi i64 [ %i.o, %bb.f ], [ %.sroa.034.1.2.i, %.preheader49.3.i ]
  %i.q = and i32 %i.d, 16
  %.not.4.i = icmp eq i32 %i.q, 0
  br i1 %.not.4.i, label %_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_pow.exit.thread27, label %bb.g

bb.g:                                             ; preds = %.preheader49.4.i
  %i.r = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.034.1.3.i, i64 10000000000000000) ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  %i.t = extractvalue { i64, i1 } %i.r, 0
  %.mask61.i = and i32 %i.d, -16
  %i.u = icmp ne i32 %.mask61.i, 16
  %or.cond.not = or i1 %i.u, %i.s
  br i1 %or.cond.not, label %_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_pow.exit.thread27, label %.thread32, !prof !51

.thread32:                                        ; preds = %bb.g, %bb.d, %bb.e, %bb.f, %bb.c, %bb.b
  %.sroa.14.0.i253134 = phi i64 [ 1, %bb.b ], [ %i.t, %bb.g ], [ %i.i, %bb.d ], [ %i.l, %bb.e ], [ %i.o, %bb.f ], [ 10, %bb.c ] ; 2 uses
  %i.v = sdiv i64 %0, %.sroa.14.0.i253134         ; 5 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_pow.exit.thread27, label %bb.h

bb.h:                                             ; preds = %.thread32
  %i.x = srem i64 %i.v, 10                        ; 6 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = icmp samesign ugt i64 %i.x, 4
  br i1 %i.z, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp samesign ult i64 %i.x, -4
  br i1 %i.aa, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = sub i64 %i.v, %i.x
  br label %bb.n

bb.l:                                             ; preds = %bb.i, %bb.m
  %.sroa.012.0 = phi i64 [ %i.ah, %bb.m ], [ %i.x, %bb.i ]
  %i.ac = tail call i64 @llvm.scmp.i64.i64(i64 %i.v, i64 0)
  %i.ad = sub nuw nsw i64 10, %.sroa.012.0
  %i.ae = mul nsw i64 %i.ac, %i.ad
  %i.af = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.v, i64 %i.ae) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  br i1 %i.ag, label %_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_pow.exit.thread27, label %bb.o, !prof !4

bb.m:                                             ; preds = %bb.j
  %i.ah = sub nsw i64 0, %i.x
  br label %bb.l

bb.n:                                             ; preds = %bb.o, %bb.k
  %.sroa.013.0 = phi i64 [ %i.al, %bb.o ], [ %i.ab, %bb.k ]
  %i.ai = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.013.0, i64 %.sroa.14.0.i253134) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  %i.ak = extractvalue { i64, i1 } %i.ai, 0
  %not. = xor i1 %i.aj, true
  %spec.select22 = zext i1 %not. to i64
  br label %_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_pow.exit.thread27

bb.o:                                             ; preds = %bb.l
  %i.al = extractvalue { i64, i1 } %i.af, 0
  br label %bb.n

_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_pow.exit.thread27: ; preds = %.preheader49.4.i, %bb.g, %bb.n, %bb.l, %.thread32, %bb.a
  %.sroa.7.0 = phi i64 [ %0, %bb.a ], [ 0, %bb.g ], [ 0, %.thread32 ], [ undef, %bb.l ], [ %i.ak, %bb.n ], [ 0, %.preheader49.4.i ]
  %.sroa.0.0 = phi i64 [ 1, %bb.a ], [ 1, %bb.g ], [ 1, %.thread32 ], [ 0, %bb.l ], [ %spec.select22, %bb.n ], [ 1, %.preheader49.4.i ]
  %i.am = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.an = insertvalue { i64, i64 } %i.am, i64 %.sroa.7.0, 1
  ret { i64, i64 } %i.an
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvNtCs6xpQEr8gLsQ_11typst_utils8version_14display_commit(ptr noalias nofree noundef readonly captures(address, read_provenance) %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 8) ; 4 uses
  %.not.i = icmp ugt i64 %1, 8
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !440, !noundef !5
  %i.c = icmp sgt i8 %i.b, -65
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.34.0 = phi i64 [ 14, %bb.a ], [ %..i, %bb.c ], [ %..i, %bb.b ]
  %.sroa.03.0 = phi ptr [ @105, %bb.a ], [ %0, %bb.c ], [ %0, %bb.b ]
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.03.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.34.0, 1
  ret { ptr, i64 } %i.e

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef 0, i64 noundef %..i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs6xpQEr8gLsQ_11typst_utils8version_7version(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs6xpQEr8gLsQ_11typst_utils8version_7version5VALUE, i64 48) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs6xpQEr8gLsQ_11typst_utils8version_12TypstVersionE5force0EB1H_.exit, label %bb.b, !prof !146

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvNtCs6xpQEr8gLsQ_11typst_utils8version_7version5VALUE, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs6xpQEr8gLsQ_11typst_utils8version_7version5VALUE, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs6xpQEr8gLsQ_11typst_utils8version_12TypstVersionE5force0EB1H_.exit

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs6xpQEr8gLsQ_11typst_utils8version_12TypstVersionE5force0EB1H_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) @_RNvNvNtCs6xpQEr8gLsQ_11typst_utils8version_7version5VALUE, i64 48, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions3get(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread
  %.sroa.01.014 = phi i64 [ 0, %bb.a ], [ %.sroa.01.1, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread ] ; 3 uses
  %.sroa.03.013 = phi i64 [ 65, %bb.a ], [ %.sroa.03.1, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread ] ; 2 uses
  %i.a = add i64 %.sroa.01.014, %.sroa.03.013     ; 2 uses
  %i.b = lshr i64 %i.a, 1                         ; 6 uses
  %i.c = icmp ult i64 %i.a, 130
  br i1 %i.c, label %bb.d, label %bb.g

bb.c:                                             ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread
  %.sroa.0.0 = phi i64 [ 0, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread ], [ 1, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit ]
  %i.d = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.b, 1
  ret { i64, i64 } %i.e

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [16 x i8], ptr @90, i64 %i.b ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %..i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.i) ; 2 uses
  %.not.i = icmp eq i64 %..i, 0
  br i1 %.not.i, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.02.021.i = phi i64 [ %i.o, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.021.i
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !443, !noalias !446, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.021.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !446, !noalias !443, !noundef !5 ; 2 uses
  %i.n = icmp eq i8 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.o = add nuw i64 %.sroa.02.021.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %..i
  br i1 %exitcond.not.i, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.p = icmp ult i8 %i.k, %i.m
  br i1 %i.p, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6

_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = tail call i8 @llvm.ucmp.i8.i64(i64 %1, i64 %i.i)
  switch i8 %.sroa.0.0.i, label %default.unreachable [
    i8 -1, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread
    i8 0, label %bb.c
    i8 1, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6
  ]

bb.g:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef 65, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #36
  unreachable

default.unreachable:                              ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit
  unreachable

_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6: ; preds = %bb.f, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit
  %i.q = add nuw nsw i64 %i.b, 1
  br label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread

_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread: ; preds = %bb.f, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6
  %.sroa.03.1 = phi i64 [ %.sroa.03.013, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6 ], [ %i.b, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit ], [ %i.b, %bb.f ] ; 2 uses
  %.sroa.01.1 = phi i64 [ %i.q, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6 ], [ %.sroa.01.014, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit ], [ %.sroa.01.014, %bb.f ] ; 2 uses
  %i.r = icmp ult i64 %.sroa.01.1, %.sroa.03.1
  br i1 %i.r, label %bb.b, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB2_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = load i64, ptr %0, align 8, !noundef !5   ; 11 uses
  %i.y = udiv i64 %i.x, 60
  %i.z = urem i64 %i.x, 60                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 %i.z, ptr %i.w, align 8
  %i.aa = udiv i64 %i.x, 3600
  %i.ab = urem i64 %i.y, 60                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = udiv i64 %i.x, 86400
  %i.ad = urem i64 %i.aa, 24                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 %i.ac, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 %i.ad, ptr %i.t, align 8
  %i.ae = icmp ugt i64 %i.x, 86399                ; 2 uses
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.01.0 = phi i8 [ 0, %bb.a ], [ 1, %bb.c ] ; 2 uses
  %i.af = icmp ne i64 %i.ad, 0                    ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.u, ptr %i.s, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.ag = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !align !168, !noundef !5
  %i.aj = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai, ptr noundef nonnull @111, ptr noundef nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br i1 %i.aj, label %bb.am, label %bb.b

bb.d:                                             ; preds = %bb.f, %bb.b
  %.sroa.01.1 = phi i8 [ %.sroa.01.0, %bb.b ], [ 1, %bb.f ] ; 2 uses
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.ak = trunc nuw i8 %.sroa.01.0 to i1
  br i1 %i.ak, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.t, ptr %i.r, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx, align 8
  %i.al = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !5, !align !168, !noundef !5
  %i.ao = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.an, ptr noundef nonnull @112, ptr noundef nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br i1 %i.ao, label %bb.am, label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.ap = call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32)
  br i1 %i.ap, label %bb.am, label %bb.f

bb.h:                                             ; preds = %bb.j, %bb.d
  %.sroa.01.2 = phi i8 [ %.sroa.01.1, %bb.d ], [ 1, %bb.j ] ; 3 uses
  %brmerge = or i1 %i.ae, %i.af
  br i1 %brmerge, label %bb.am, label %bb.l

bb.i:                                             ; preds = %bb.d
  %i.aq = trunc nuw i8 %.sroa.01.1 to i1
end_hunk_3
