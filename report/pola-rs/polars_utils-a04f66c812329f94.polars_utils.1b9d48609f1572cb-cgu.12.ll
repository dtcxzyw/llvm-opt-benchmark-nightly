Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_utils-a04f66c812329f94.polars_utils.1b9d48609f1572cb-cgu.12?download=true
inline.NumInlined: 208
inline.NumDeleted: 127
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [33 x i8] c"crates/polars-utils/src/cache.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00\CF\00\00\00&\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00\DE\00\00\00&\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00\C6\00\00\00$\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXse_NtCs7tGzs63DEEy_9hashbrown5tableINtB5_11AbsentEntryNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtBY_ }>, align 8
@5 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00X\00\00\00!\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00m\00\00\00&\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00w\00\00\00=\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00y\00\00\007\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00|\00\00\00\0E\00\00\00" }>, align 8
@_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE = external local_unnamed_addr global { { { [6 x i64] } }, { { { i8 } } }, [7 x i8] }
@_RNvNtCs2mZqlW55729_12polars_utils3mem9PAGE_SIZE = local_unnamed_addr global <{ ptr, [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNtCs2mZqlW55729_12polars_utils3mem9PAGE_SIZE0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceB8_, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@11 = private unnamed_addr constant [11 x i8] c"AbsentEntry", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB6_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB1D_5error5ErrorNCNvMNtB8_11regex_cacheNtB35_10RegexCache7compile0EB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(96) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !114 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [168 x i8], align 8               ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [56 x i8], align 8                ; 9 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !747 ; 3 uses
  %i.m = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !748 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !749 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !750 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !750, !alias.scope !594, !noundef !57
  %i.q = icmp eq i64 %i.p, 0, !dbg !751
  br i1 %i.q, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE7reserveNCINvMs1_BR_INtBR_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB2Q_5error5ErrorNCNvMNtBT_11regex_cacheNtB4i_10RegexCache7compile0Es_0EBT_.exit.i, !dbg !752, !prof !595

bb.b:                                             ; preds = %bb.a
  %i.r = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BR_INtBR_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB2Y_5error5ErrorNCNvMNtBT_11regex_cacheNtB4q_10RegexCache7compile0Es_0EBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, i1 noundef zeroext true), !dbg !753, !noalias !598 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE7reserveNCINvMs1_BR_INtBR_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB2Q_5error5ErrorNCNvMNtBT_11regex_cacheNtB4i_10RegexCache7compile0Es_0EBT_.exit.i, !dbg !754

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE7reserveNCINvMs1_BR_INtBR_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB2Q_5error5ErrorNCNvMNtBT_11regex_cacheNtB4i_10RegexCache7compile0Es_0EBT_.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.n, align 8, !dbg !755, !alias.scope !599, !nonnull !57, !noundef !57 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !755 ; 3 uses
  %.val7.i = load i64, ptr %i.s, align 8, !dbg !755, !alias.scope !599, !noundef !57 ; 3 uses
  %i.t = lshr i64 %i.m, 57, !dbg !756
  %i.u = trunc nuw nsw i64 %i.t to i8, !dbg !757  ; 3 uses
  %i.v = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !758

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE7reserveNCINvMs1_BR_INtBR_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB2Q_5error5ErrorNCNvMNtBT_11regex_cacheNtB4i_10RegexCache7compile0Es_0EBT_.exit.i
  %.pn.i.i = phi i64 [ %i.m, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE7reserveNCINvMs1_BR_INtBR_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB2Q_5error5ErrorNCNvMNtBT_11regex_cacheNtB4i_10RegexCache7compile0Es_0EBT_.exit.i ], [ %i.bb, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE7reserveNCINvMs1_BR_INtBR_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB2Q_5error5ErrorNCNvMNtBT_11regex_cacheNtB4i_10RegexCache7compile0Es_0EBT_.exit.i ], [ %.sroa.4.125.i.i, %bb.e ], !dbg !759
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE7reserveNCINvMs1_BR_INtBR_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB2Q_5error5ErrorNCNvMNtBT_11regex_cacheNtB4i_10RegexCache7compile0Es_0EBT_.exit.i ], [ %.sroa.01.127.i.i, %bb.e ], !dbg !759
  %i.x = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE7reserveNCINvMs1_BR_INtBR_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB2Q_5error5ErrorNCNvMNtBT_11regex_cacheNtB4i_10RegexCache7compile0Es_0EBT_.exit.i ], [ %i.ba, %bb.e ]
  %.sroa.0.021.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !760 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.021.i.i, !dbg !761
  %.sroa.0.0.copyload.i32.i.i = load <16 x i8>, ptr %i.y, align 1, !dbg !762, !noalias !605 ; 3 uses
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i, %i.w, !dbg !763
  %i.aa = bitcast <16 x i1> %i.z to i16, !dbg !764 ; 2 uses
  %.not33.i.i = icmp eq i16 %i.aa, 0, !dbg !765
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !766

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE25find_or_find_insert_indexNCINvMs1_BT_INtBT_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB3b_5error5ErrorNCNvMNtBV_11regex_cacheNtB4D_10RegexCache7compile0E0NCB24_s_0E0BV_.exit.thread.i.i
  %.sroa.05.034.i.i = phi i16 [ %i.aq, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE25find_or_find_insert_indexNCINvMs1_BT_INtBT_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB3b_5error5ErrorNCNvMNtBV_11regex_cacheNtB4D_10RegexCache7compile0E0NCB24_s_0E0BV_.exit.thread.i.i ], [ %i.aa, %bb.c ] ; 3 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.034.i.i, i1 true), !dbg !767
  %i.ac = zext nneg i16 %i.ab to i64, !dbg !768
  %i.ad = add i64 %.sroa.0.021.i.i, %i.ac, !dbg !769
  %i.ae = and i64 %i.ad, %.val7.i, !dbg !769
  %i.af = load ptr, ptr %i.n, align 8, !dbg !770, !alias.scope !599, !noalias !623, !nonnull !57, !noundef !57
  %i.ag = sub nsw i64 0, %i.ae, !dbg !771         ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ag, !dbg !772 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8, !dbg !773
  %.val3.i.i.i = load i32, ptr %i.ai, align 4, !dbg !774, !range !627, !noalias !628, !noundef !57
  %i.aj = getelementptr i8, ptr %i.ah, i64 -4, !dbg !774
  %.val4.i.i.i = load i32, ptr %i.aj, align 4, !dbg !774, !noalias !628, !noundef !57
  %i.ak = tail call noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexBN_E5indexBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i32 noundef %.val3.i.i.i, i32 noundef %.val4.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3), !dbg !775, !noalias !628 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16, !dbg !776
  %.val1.i.i.i.i = load i64, ptr %i.al, align 8, !dbg !776, !noalias !628, !noundef !57
  %i.am = icmp eq i64 %.val1.i.i.i.i, %3, !dbg !777
  br i1 %i.am, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE25find_or_find_insert_indexNCINvMs1_BT_INtBT_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB3b_5error5ErrorNCNvMNtBV_11regex_cacheNtB4D_10RegexCache7compile0E0NCB24_s_0E0BV_.exit.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE25find_or_find_insert_indexNCINvMs1_BT_INtBT_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB3b_5error5ErrorNCNvMNtBV_11regex_cacheNtB4D_10RegexCache7compile0E0NCB24_s_0E0BV_.exit.thread.i.i, !dbg !777, !prof !641

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE25find_or_find_insert_indexNCINvMs1_BT_INtBT_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB3b_5error5ErrorNCNvMNtBV_11regex_cacheNtB4D_10RegexCache7compile0E0NCB24_s_0E0BV_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.an = getelementptr i8, ptr %i.ak, i64 8, !dbg !776
  %.val.i.i.i.i = load ptr, ptr %i.an, align 8, !dbg !776, !noalias !628, !nonnull !57, !noundef !57
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i, ptr nonnull readonly %2, i64 %3), !dbg !778, !alias.scope !642, !noalias !628
  %i.ao = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !778
  br i1 %i.ao, label %bb.aa, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE25find_or_find_insert_indexNCINvMs1_BT_INtBT_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB3b_5error5ErrorNCNvMNtBV_11regex_cacheNtB4D_10RegexCache7compile0E0NCB24_s_0E0BV_.exit.thread.i.i, !dbg !779, !prof !644

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE25find_or_find_insert_indexNCINvMs1_BT_INtBT_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB3b_5error5ErrorNCNvMNtBV_11regex_cacheNtB4D_10RegexCache7compile0E0NCB24_s_0E0BV_.exit.thread.i.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !780
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !781, !prof !595

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE25find_or_find_insert_indexNCINvMs1_BT_INtBT_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB3b_5error5ErrorNCNvMNtBV_11regex_cacheNtB4D_10RegexCache7compile0E0NCB24_s_0E0BV_.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE25find_or_find_insert_indexNCINvMs1_BT_INtBT_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB3b_5error5ErrorNCNvMNtBV_11regex_cacheNtB4D_10RegexCache7compile0E0NCB24_s_0E0BV_.exit.i.i, %.lr.ph.i.i
  %i.ap = add i16 %.sroa.05.034.i.i, -1, !dbg !782
  %i.aq = and i16 %i.ap, %.sroa.05.034.i.i, !dbg !783 ; 2 uses
  %.not.i.i = icmp eq i16 %i.aq, 0, !dbg !765
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !766

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ar = icmp slt <16 x i8> %.sroa.0.0.copyload.i32.i.i, zeroinitializer, !dbg !784
  %i.as = bitcast <16 x i1> %i.ar to i16, !dbg !784 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.as, 0, !dbg !785
  br i1 %.not.i.i.i, label %bb.e, label %.thread29.i.i, !dbg !786, !prof !595

.thread29.i.i:                                    ; preds = %bb.d
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true), !dbg !787
  %i.au = zext nneg i16 %i.at to i64, !dbg !788
  %i.av = add i64 %.sroa.0.021.i.i, %i.au, !dbg !789
  %i.aw = and i64 %i.av, %.val7.i, !dbg !789
  br label %.thread.i.i, !dbg !790

.thread.i.i:                                      ; preds = %.thread29.i.i, %._crit_edge.i.i
  %.sroa.4.126.i.i = phi i64 [ %i.aw, %.thread29.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ax = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i, splat (i8 -1), !dbg !791
  %i.ay = bitcast <16 x i1> %i.ax to i16, !dbg !792
  %i.az = icmp eq i16 %i.ay, 0, !dbg !793
  br i1 %i.az, label %bb.e, label %bb.f, !dbg !793, !prof !595

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.127.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.125.i.i = phi i64 [ %.sroa.4.126.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ba = add i64 %i.x, 16, !dbg !794             ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.021.i.i, !dbg !795
  br label %bb.c, !dbg !758

bb.f:                                             ; preds = %.thread.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.126.i.i, !dbg !796
  %i.bd = load i8, ptr %i.bc, align 1, !dbg !797, !noalias !650, !noundef !57
  %i.be = icmp sgt i8 %i.bd, -1, !dbg !798
  br i1 %i.be, label %bb.g, label %bb.h, !dbg !798, !prof !595

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !799, !noalias !650
  %i.bf = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !800
  %i.bg = bitcast <16 x i1> %i.bf to i16, !dbg !800 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.bg, 0, !dbg !801
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true), !dbg !802
  %i.bi = zext nneg i16 %i.bh to i64, !dbg !802
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !803
  br label %bb.h, !dbg !804

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.bi, %bb.g ], [ %.sroa.4.126.i.i, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !666
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !666
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651), !dbg !666
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652), !dbg !666
  %.promoted.i = load i64, ptr %4, align 8, !alias.scope !652
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %.promoted13.i = load i64, ptr %i.bj, align 8, !alias.scope !652
  br label %bb.i, !dbg !805

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexNtNtB18_5error5ErrorEECs2mZqlW55729_12polars_utils.exit.i, %bb.h
  %i.bm = phi i64 [ %i.by, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexNtNtB18_5error5ErrorEECs2mZqlW55729_12polars_utils.exit.i ], [ %.promoted13.i, %bb.h ] ; 2 uses
  %i.bn = phi i64 [ %i.bx, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexNtNtB18_5error5ErrorEECs2mZqlW55729_12polars_utils.exit.i ], [ %.promoted.i, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !806, !noalias !657
  call void @_RNvMNtNtCshIrAnp6Nu95_5regex8builders6stringNtB2_12RegexBuilder3new(ptr noalias noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !807, !noalias !658
  %i.bo = trunc nuw i64 %i.bn to i1, !dbg !808    ; 2 uses
  br i1 %i.bo, label %bb.j, label %bb.k, !dbg !808

bb.j:                                             ; preds = %bb.i
  %i.bp = invoke noundef nonnull align 8 ptr @_RNvMNtNtCshIrAnp6Nu95_5regex8builders6stringNtB2_12RegexBuilder10size_limit(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.g, i64 noundef %i.bm)
          to label %bb.k unwind label %bb.l, !dbg !809, !noalias !658 ; 0 uses

bb.k:                                             ; preds = %bb.j, %bb.i
  invoke void @_RNvMNtNtCshIrAnp6Nu95_5regex8builders6stringNtB2_12RegexBuilder5build(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.g)
          to label %bb.m unwind label %bb.l, !dbg !810, !noalias !652

.body.i:                                          ; preds = %bb.w, %bb.o, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.bw, %bb.o ], [ %i.bq, %bb.l ], [ %i.cd, %bb.w ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCshIrAnp6Nu95_5regex8builders6string12RegexBuilderECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(168) %i.g) #17
          to label %common.resume unwind label %bb.z, !dbg !811, !noalias !658

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2mZqlW55729_12polars_utils.exit.i.i.i, %bb.t, %bb.k, %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.m:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.j, align 8, !dbg !812, !noundef !57 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null, !dbg !812
  %i.bt = load i64, ptr %i.bk, align 8, !range !75, !alias.scope !651
  %i.bu = icmp eq i64 %i.bt, -9223372036854775808
  %or.cond.i = select i1 %i.bs, i1 %i.bu, i1 false, !dbg !813
  br i1 %or.cond.i, label %bb.n, label %_RNCNvMNtCs2mZqlW55729_12polars_utils11regex_cacheNtB4_10RegexCache7compile0B6_.exit, !dbg !813

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !814, !noalias !657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !dbg !814, !noalias !659
  %i.bv = invoke { i64, i64 } @_RNvNtCs2mZqlW55729_12polars_utils11regex_cache14get_size_limit()
          to label %bb.p unwind label %bb.o, !dbg !815, !noalias !658 ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexNtNtB18_5error5ErrorEECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(32) %i.f) #17
          to label %.body.i unwind label %bb.z, !dbg !816, !noalias !658

bb.p:                                             ; preds = %bb.n
  %i.bx = extractvalue { i64, i64 } %i.bv, 0, !dbg !815 ; 3 uses
  %i.by = extractvalue { i64, i64 } %i.bv, 1, !dbg !815 ; 3 uses
  %i.bz = trunc nuw i64 %i.bx to i1, !dbg !817
  br i1 %i.bz, label %bb.q, label %bb.r, !dbg !817

bb.q:                                             ; preds = %bb.p
  %i.ca = icmp eq i64 %i.by, %i.bm
  %or.cond11.not.i = select i1 %i.bo, i1 %i.ca, i1 false, !dbg !817
  br i1 %or.cond11.not.i, label %bb.y, label %bb.s, !dbg !817

bb.r:                                             ; preds = %bb.p
  %5 = icmp eq i64 %i.bn, 0, !dbg !817
  br i1 %5, label %bb.y, label %bb.s, !dbg !818

bb.s:                                             ; preds = %bb.r, %bb.q
  store i64 %i.bx, ptr %4, align 8, !dbg !819, !alias.scope !652
  store i64 %i.by, ptr %i.bj, align 8, !dbg !819, !alias.scope !652
  %i.cb = load ptr, ptr %i.f, align 8, !dbg !820, !alias.scope !661, !noalias !657, !noundef !57
  %.not.i.i25 = icmp eq ptr %i.cb, null, !dbg !820
  br i1 %.not.i.i25, label %bb.u, label %bb.t, !dbg !820

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexNtNtB18_5error5ErrorEECs2mZqlW55729_12polars_utils.exit.i unwind label %bb.l, !dbg !820, !noalias !658

bb.u:                                             ; preds = %bb.s
  %i.cc = load i64, ptr %i.bl, align 8, !dbg !821, !range !75, !alias.scope !662, !noalias !657, !noundef !57
  %.not.i.i.i26 = icmp eq i64 %i.cc, -9223372036854775808, !dbg !821
  br i1 %.not.i.i.i26, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexNtNtB18_5error5ErrorEECs2mZqlW55729_12polars_utils.exit.i, label %bb.v, !dbg !821

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2mZqlW55729_12polars_utils.exit.i.i.i unwind label %bb.w, !dbg !822, !noalias !658

bb.w:                                             ; preds = %bb.v
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body.i unwind label %bb.x, !dbg !823, !noalias !658

bb.x:                                             ; preds = %bb.w
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !822, !noalias !658
  unreachable, !dbg !822

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2mZqlW55729_12polars_utils.exit.i.i.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexNtNtB18_5error5ErrorEECs2mZqlW55729_12polars_utils.exit.i unwind label %bb.l, !dbg !824, !noalias !658

bb.y:                                             ; preds = %bb.r, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !825, !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !816, !noalias !657
  %.pr = load ptr, ptr %i.j, align 8, !dbg !826
  br label %_RNCNvMNtCs2mZqlW55729_12polars_utils11regex_cacheNtB4_10RegexCache7compile0B6_.exit, !dbg !827

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexNtNtB18_5error5ErrorEECs2mZqlW55729_12polars_utils.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2mZqlW55729_12polars_utils.exit.i.i.i, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !816, !noalias !657
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCshIrAnp6Nu95_5regex8builders6string12RegexBuilderECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(168) %i.g), !dbg !811, !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !811, !noalias !657
  br label %bb.i, !dbg !828

bb.z:                                             ; preds = %bb.o, %.body.i
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !829, !noalias !658
  unreachable, !dbg !829

common.resume:                                    ; preds = %bb.an, %.body.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2mZqlW55729_12polars_utils.exit.i, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %.pn.i, %.body.i ], [ %i.hu, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2mZqlW55729_12polars_utils.exit.i ], [ %i.ei, %bb.an ]
  resume { ptr, i32 } %common.resume.op, !dbg !830

_RNCNvMNtCs2mZqlW55729_12polars_utils11regex_cacheNtB4_10RegexCache7compile0B6_.exit: ; preds = %bb.m, %bb.y
  %i.cg = phi ptr [ %.pr, %bb.y ], [ %i.br, %bb.m ], !dbg !826 ; 2 uses
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCshIrAnp6Nu95_5regex8builders6string12RegexBuilderECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(168) %i.g), !dbg !811, !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !811, !noalias !657
  %i.ch = icmp eq ptr %i.cg, null, !dbg !826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !dbg !831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !832
  br i1 %i.ch, label %bb.aj, label %bb.ak, !dbg !833

bb.aa:                                            ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE25find_or_find_insert_indexNCINvMs1_BT_INtBT_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB3b_5error5ErrorNCNvMNtBV_11regex_cacheNtB4D_10RegexCache7compile0E0NCB24_s_0E0BV_.exit.i.i
  %i.ci = load ptr, ptr %i.n, align 8, !dbg !834, !alias.scope !599, !nonnull !57, !noundef !57
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.ag, !dbg !835 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -8, !dbg !836
  %i.cl = load i32, ptr %i.ck, align 4, !dbg !837, !range !627, !noundef !57 ; 7 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cj, i64 -4, !dbg !837
  %i.cn = load i32, ptr %i.cm, align 4, !dbg !837, !noundef !57 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 68, !dbg !684 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !dbg !684, !noundef !57
  %i.cq = icmp eq i32 %i.cn, %i.cp, !dbg !684
  br i1 %i.cq, label %bb.ab, label %bb.ac, !dbg !684

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !684
  %i.cs = load i32, ptr %i.cr, align 8, !dbg !838, !range !627, !noundef !57
  %.not = icmp eq i32 %i.cl, %i.cs, !dbg !839
  br i1 %.not, label %bb.ah, label %bb.ac, !dbg !679

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.ct = tail call noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexBN_E5indexBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, i32 noundef range(i32 1, 0) %i.cl, i32 noundef %i.cn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !dbg !840 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 56, !dbg !841
  %i.cv = load i32, ptr %i.cu, align 8, !dbg !841, !range !627, !noundef !57 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 60, !dbg !841
  %i.cx = load i32, ptr %i.cw, align 4, !dbg !841, !noundef !57 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 64, !dbg !841
  %i.cz = load i32, ptr %i.cy, align 8, !dbg !841, !range !627, !noundef !57 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 68, !dbg !841
  %i.db = load i32, ptr %i.da, align 4, !dbg !841, !noundef !57 ; 2 uses
  %i.dc = tail call noundef align 8 ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEE7get_mutBR_(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %i.cv, i32 noundef %i.cx), !dbg !842 ; 2 uses
  %.not.i = icmp eq ptr %i.dc, null, !dbg !843
  %..i = select i1 %.not.i, ptr %1, ptr %i.dc, !dbg !844 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %..i, i64 64, !dbg !845
  store i32 %i.cz, ptr %i.dd, align 8, !dbg !845
  %i.de = getelementptr inbounds nuw i8, ptr %..i, i64 68, !dbg !845
  store i32 %i.db, ptr %i.de, align 4, !dbg !845
  %i.df = tail call noundef align 8 ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEE7get_mutBR_(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %i.cz, i32 noundef %i.db), !dbg !846 ; 3 uses
  %.not4.i = icmp eq ptr %i.df, null, !dbg !847
  br i1 %.not4.i, label %bb.ae, label %bb.ad, !dbg !848

bb.ad:                                            ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 56, !dbg !849
  store i32 %i.cv, ptr %i.dg, align 8, !dbg !849
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 60, !dbg !849
  store i32 %i.cx, ptr %i.dh, align 4, !dbg !849
  br label %_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE15lru_list_unlinkB7_.exit, !dbg !850

bb.ae:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !851
  store i32 %i.cv, ptr %i.di, align 8, !dbg !851, !alias.scope !687
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 76, !dbg !851
  store i32 %i.cx, ptr %i.dj, align 4, !dbg !851, !alias.scope !687
  br label %_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE15lru_list_unlinkB7_.exit, !dbg !850

_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE15lru_list_unlinkB7_.exit: ; preds = %bb.ad, %bb.ae
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !852 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !dbg !852, !range !627, !alias.scope !688, !noundef !57 ; 2 uses
  %i.dm = load i32, ptr %i.co, align 4, !dbg !852, !alias.scope !688, !noundef !57 ; 2 uses
  store i32 %i.cl, ptr %i.dk, align 8, !dbg !853, !alias.scope !688
  store i32 %i.cn, ptr %i.co, align 4, !dbg !853, !alias.scope !688
  %i.dn = tail call noundef align 8 ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEE7get_mutBR_(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %i.dl, i32 noundef %i.dm), !dbg !854 ; 3 uses
  %.not.i27 = icmp eq ptr %i.dn, null, !dbg !855
  br i1 %.not.i27, label %bb.ag, label %bb.af, !dbg !856

bb.af:                                            ; preds = %_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE15lru_list_unlinkB7_.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56, !dbg !857
  store i32 %i.cl, ptr %i.do, align 8, !dbg !857
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 60, !dbg !857
  store i32 %i.cn, ptr %i.dp, align 4, !dbg !857
  br label %_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE19lru_list_insert_mruB7_.exit, !dbg !858

bb.ag:                                            ; preds = %_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE15lru_list_unlinkB7_.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !859
  store i32 %i.cl, ptr %i.dq, align 8, !dbg !859, !alias.scope !688
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 76, !dbg !859
  store i32 %i.cn, ptr %i.dr, align 4, !dbg !859, !alias.scope !688
  br label %_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE19lru_list_insert_mruB7_.exit, !dbg !858

_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE19lru_list_insert_mruB7_.exit: ; preds = %bb.af, %bb.ag
  %i.ds = tail call noundef nonnull align 8 ptr @_RNvXs7_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEEINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutBN_E9index_mutBR_(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i32 noundef range(i32 1, 0) %i.cl, i32 noundef %i.cn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7), !dbg !860 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56, !dbg !861
  store i32 1, ptr %i.dt, align 8, !dbg !861
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 60, !dbg !861
  store i32 -1, ptr %i.du, align 4, !dbg !861
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 64, !dbg !862
  store i32 %i.dl, ptr %i.dv, align 8, !dbg !862
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 68, !dbg !862
  store i32 %i.dm, ptr %i.dw, align 4, !dbg !862
  br label %bb.ah, !dbg !863

bb.ah:                                            ; preds = %_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE19lru_list_insert_mruB7_.exit, %bb.ab
  %i.dx = tail call noundef nonnull align 8 ptr @_RNvXs7_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEEINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutBN_E9index_mutBR_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.cl, i32 noundef %i.cn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !dbg !864
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24, !dbg !865
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !866
  store ptr %i.dy, ptr %i.dz, align 8, !dbg !866
  store i64 -9223372036854775807, ptr %0, align 8, !dbg !866
  br label %bb.ai, !dbg !867

bb.ai:                                            ; preds = %bb.bl, %bb.aj, %bb.ah
  ret void, !dbg !868

bb.aj:                                            ; preds = %_RNCNvMNtCs2mZqlW55729_12polars_utils11regex_cacheNtB4_10RegexCache7compile0B6_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false), !dbg !832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !869
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !870
  br label %bb.ai, !dbg !867

bb.ak:                                            ; preds = %_RNCNvMNtCs2mZqlW55729_12polars_utils11regex_cacheNtB4_10RegexCache7compile0B6_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !871
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false), !dbg !666
  store ptr %i.cg, ptr %i.k, align 8, !dbg !871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !872, !noalias !689
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, -9223372036854775808) %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.an, !dbg !872

.noexc:                                           ; preds = %bb.ak
  %i.ea = load i64, ptr %i.e, align 8, !dbg !872, !range !701, !noalias !689, !noundef !57
  %i.eb = trunc nuw i64 %i.ea to i1, !dbg !873
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !874
  %i.ed = load i64, ptr %i.ec, align 8, !dbg !874, !range !75, !noalias !689, !noundef !57 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !874 ; 2 uses
  br i1 %i.eb, label %bb.al, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2mZqlW55729_12polars_utils.exit.i.i, !dbg !873, !prof !595

bb.al:                                            ; preds = %.noexc
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !875, !noalias !689
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ed, i64 %i.ef) #19
          to label %.noexc29 unwind label %bb.an, !dbg !876

.noexc29:                                         ; preds = %bb.al
  unreachable, !dbg !876

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2mZqlW55729_12polars_utils.exit.i.i: ; preds = %.noexc
  %i.eg = load ptr, ptr %i.ee, align 8, !dbg !877, !noalias !689, !nonnull !57, !noundef !57 ; 2 uses
end_hunk_0
