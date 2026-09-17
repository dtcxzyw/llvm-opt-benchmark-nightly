Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_stream-b9d5fcc0457ff55a.tokio_stream.281c49a37b84ab93-cgu.0?download=true
inline.NumInlined: 81
inline.NumDeleted: 49
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local local_unnamed_addr global { { { [2 x i64] } }, i8, [7 x i8] }
@_RNvNCNKNvNvNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand12thread_rng_n10THREAD_RNG0s_023___RUST_STD_INTERNAL_VAL = internal thread_local global <{ [8 x i8], [1 x i8], [3 x i8] }> <{ [8 x i8] undef, [1 x i8] zeroinitializer, [3 x i8] undef }>, align 4
@_RNvNtNtNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand4loom4rand7COUNTER = internal global [4 x i8] c"\01\00\00\00", align 4
@0 = private unnamed_addr constant [20 x i8] c"deadline has elapsed", align 1

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand8FastRandzE16get_or_init_slowNvNvNvB1g_12thread_rng_n10THREAD_RNG27___rust_std_internal_init_fnEB1k_(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) %0, ptr noalias nofree noundef align 4 captures(address_is_null) dereferenceable_or_null(12) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !range !4, !noundef !5
  %trunc = trunc nuw i8 %i.b to i1
  br i1 %trunc, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.04.0.copyload = load i32, ptr %1, align 4
  %.sroa.5.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa.0.0.1.sroa_idx, align 4
  %.sroa.6.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa.0.0.1.sroa_idx, align 4
  store i32 0, ptr %1, align 4
  %i.c = trunc i32 %.sroa.04.0.copyload to i1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !4, !noalias !17, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %._RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs3rvrQdG6Evv_12tokio_stream.exit_crit_edge.i.i.i.i.i, label %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3rvrQdG6Evv_12tokio_stream.exit.i.i.i.i.i, !prof !6

._RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs3rvrQdG6Evv_12tokio_stream.exit_crit_edge.i.i.i.i.i: ; preds = %bb.d
  %.pre.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !18
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !18
  br label %_RNvYNvNvNvNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand12thread_rng_n10THREAD_RNG27___rust_std_internal_init_fnINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBc_.exit

_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3rvrQdG6Evv_12tokio_stream.exit.i.i.i.i.i: ; preds = %bb.d
  %i.h = tail call { i64, i64 } @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys6random5linux19hashmap_random_keys(), !noalias !19 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !19
  store i8 1, ptr %i.e, align 8, !noalias !19
  br label %_RNvYNvNvNvNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand12thread_rng_n10THREAD_RNG27___rust_std_internal_init_fnINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBc_.exit

_RNvYNvNvNvNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand12thread_rng_n10THREAD_RNG27___rust_std_internal_init_fnINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBc_.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs3rvrQdG6Evv_12tokio_stream.exit_crit_edge.i.i.i.i.i, %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3rvrQdG6Evv_12tokio_stream.exit.i.i.i.i.i
  %.pre-phi3.i.i.i = phi i64 [ %.pre1.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs3rvrQdG6Evv_12tokio_stream.exit_crit_edge.i.i.i.i.i ], [ %i.j, %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3rvrQdG6Evv_12tokio_stream.exit.i.i.i.i.i ] ; 2 uses
  %i.l = phi i64 [ %.pre.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs3rvrQdG6Evv_12tokio_stream.exit_crit_edge.i.i.i.i.i ], [ %i.i, %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3rvrQdG6Evv_12tokio_stream.exit.i.i.i.i.i ] ; 3 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.d, align 8, !noalias !18
  %i.n = atomicrmw add ptr @_RNvNtNtNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand4loom4rand7COUNTER, i32 1 monotonic, align 4
  %i.o = xor i64 %i.l, 8317987319222330741
  %i.p = xor i64 %.pre-phi3.i.i.i, 7237128888997146477 ; 3 uses
  %i.q = xor i64 %i.l, 7816392313619706465
  %.pre.i.i.i.i.i.i = zext i32 %i.n to i64
  %i.r = or disjoint i64 %.pre.i.i.i.i.i.i, 288230376151711744 ; 2 uses
  %i.s = xor i64 %.pre-phi3.i.i.i, %i.r
  %i.t = xor i64 %i.s, 8387220255154660723        ; 3 uses
  %i.u = add i64 %i.o, %i.p                       ; 3 uses
  %i.v = add i64 %i.t, %i.q                       ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 13)
  %i.x = xor i64 %i.u, %i.w                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 16)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = add i64 %i.v, %i.x                      ; 3 uses
  %i.ac = add i64 %i.z, %i.aa                     ; 2 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 17)
  %i.ae = xor i64 %i.ab, %i.ad                    ; 3 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 21)
  %i.ag = xor i64 %i.af, %i.ac                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 32)
  %i.ai = xor i64 %i.ac, %i.r
  %i.aj = xor i64 %i.ah, 255
  %i.ak = add i64 %i.ai, %i.ae                    ; 3 uses
  %i.al = add i64 %i.ag, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 13)
  %i.an = xor i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 16)
  %i.ap = xor i64 %i.ao, %i.al                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ar = add i64 %i.an, %i.al                    ; 3 uses
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 17)
  %i.au = xor i64 %i.ar, %i.at                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 21)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 13)
  %i.bb = xor i64 %i.ba, %i.ay                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 16)
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az                    ; 3 uses
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 17)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 21)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 32)
  %i.bm = add i64 %i.bi, %i.bg
  %i.bn = add i64 %i.bk, %i.bl                    ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 13)
  %i.bp = xor i64 %i.bo, %i.bm                    ; 3 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 16)
  %i.br = xor i64 %i.bq, %i.bn                    ; 2 uses
  %i.bs = add i64 %i.bp, %i.bn                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 17)
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 21)
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 32)
  %i.bw = xor i64 %i.bu, %i.bt
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = xor i64 %i.bx, %i.bs                    ; 2 uses
  %i.bz = lshr i64 %i.by, 32
  %i.ca = trunc nuw i64 %i.bz to i32
  %i.cb = trunc i64 %i.by to i32
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.cb, i32 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_RNvYNvNvNvNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand12thread_rng_n10THREAD_RNG27___rust_std_internal_init_fnINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBc_.exit
  %.sroa.3.0 = phi i32 [ %spec.store.select.i.i, %_RNvYNvNvNvNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand12thread_rng_n10THREAD_RNG27___rust_std_internal_init_fnINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBc_.exit ], [ %.sroa.6.0.copyload, %bb.c ]
  %.sroa.03.0 = phi i32 [ %i.ca, %_RNvYNvNvNvNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand12thread_rng_n10THREAD_RNG27___rust_std_internal_init_fnINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBc_.exit ], [ %.sroa.5.0.copyload, %bb.c ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.03.0, ptr %0, align 4
  store i32 %.sroa.3.0, ptr %i.cc, align 4
  store i8 1, ptr %i.a, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand12thread_rng_n(i32 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand12thread_rng_n10THREAD_RNG0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 4, !range !4, !noalias !26, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand8FastRandE4withNCNvBW_12thread_rng_n0mEB10_.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand8FastRandzE16get_or_init_slowNvNvNvB1g_12thread_rng_n10THREAD_RNG27___rust_std_internal_init_fnEB1k_(ptr noundef nonnull align 4 %i.a, ptr noalias nofree noundef align 4 dereferenceable_or_null(12) null) ; 0 uses
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand8FastRandE4withNCNvBW_12thread_rng_n0mEB10_.exit

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand8FastRandE4withNCNvBW_12thread_rng_n0mEB10_.exit: ; preds = %bb.a, %bb.b
  %i.f = load i32, ptr %i.a, align 4, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !noundef !5 ; 4 uses
  %i.i = shl i32 %i.f, 17
  %i.j = xor i32 %i.i, %i.f                       ; 2 uses
  %i.k = lshr i32 %i.j, 7
  %i.l = lshr i32 %i.h, 16
  %i.m = xor i32 %i.l, %i.k
  %i.n = xor i32 %i.m, %i.h
  %i.o = xor i32 %i.n, %i.j                       ; 2 uses
  store i32 %i.h, ptr %i.a, align 4
  store i32 %i.o, ptr %i.g, align 4
  %i.p = add i32 %i.o, %i.h
  %1 = zext i32 %i.p to i64
  %2 = zext i32 %0 to i64
  %3 = mul nuw i64 %1, %2
  %4 = lshr i64 %3, 32
  %5 = trunc nuw i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs3rvrQdG6Evv_12tokio_stream10stream_ext7timeoutNtB5_7ElapsedNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 20, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvXs_NtNtCs3rvrQdG6Evv_12tokio_stream8wrappers8intervalNtB4_14IntervalStreamNtNtCsL3r0M5SDye_12futures_core6stream6Stream9poll_next(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i32 } @_RNvMs0_NtNtCslghKHtsL3a4_5tokio4time8intervalNtB5_8Interval9poll_tick(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.b = extractvalue { i64, i32 } %i.a, 1        ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  %i.d = extractvalue { i64, i32 } %i.a, 0
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.b, i32 -2)
  %spec.select5 = select i1 %i.c, i64 undef, i64 %i.d
  %i.e = insertvalue { i64, i32 } poison, i64 %spec.select5, 0
  %i.f = insertvalue { i64, i32 } %i.e, i32 %spec.select, 1
  ret { i64, i32 } %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #4

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys6random5linux19hashmap_random_keys() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMs0_NtNtCslghKHtsL3a4_5tokio4time8intervalNtB5_8Interval9poll_tick(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = distinct !{!7, !"_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECs3rvrQdG6Evv_12tokio_stream"}
!8 = distinct !{!8, !7, !"_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECs3rvrQdG6Evv_12tokio_stream: argument 0"}
!9 = distinct !{!9, !"_RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs3rvrQdG6Evv_12tokio_stream"}
!10 = distinct !{!10, !9, !"_RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs3rvrQdG6Evv_12tokio_stream: argument 0"}
!11 = distinct !{!11, !"_RNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs3rvrQdG6Evv_12tokio_stream"}
!12 = distinct !{!12, !11, !"_RNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs3rvrQdG6Evv_12tokio_stream: argument 0"}
!13 = distinct !{!13, !"_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3rvrQdG6Evv_12tokio_stream"}
!14 = distinct !{!14, !13, !"_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3rvrQdG6Evv_12tokio_stream: argument 0"}
!15 = distinct !{!15, !"_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3rvrQdG6Evv_12tokio_stream"}
!16 = distinct !{!16, !15, !"_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3rvrQdG6Evv_12tokio_stream: argument 0"}
!17 = !{!14, !12, !10, !8}
!18 = !{!8}
!19 = !{!16, !8}
!20 = distinct !{!20, !"_RNvYNCNKNvNvNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand12thread_rng_n10THREAD_RNG0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1y_6option6OptionQIB2d_NtBa_8FastRandEEEE9call_onceBe_"}
!21 = distinct !{!21, !20, !"_RNvYNCNKNvNvNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand12thread_rng_n10THREAD_RNG0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1y_6option6OptionQIB2d_NtBa_8FastRandEEEE9call_onceBe_: argument 0"}
!22 = distinct !{!22, !"_RNCNKNvNvNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand12thread_rng_n10THREAD_RNG0s_0Bb_"}
!23 = distinct !{!23, !22, !"_RNCNKNvNvNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand12thread_rng_n10THREAD_RNG0s_0Bb_: argument 0"}
!24 = distinct !{!24, !"_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand8FastRandzE11get_or_initNvNvNvB1g_12thread_rng_n10THREAD_RNG27___rust_std_internal_init_fnEB1k_"}
!25 = distinct !{!25, !24, !"_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCs3rvrQdG6Evv_12tokio_stream10stream_map4rand8FastRandzE11get_or_initNvNvNvB1g_12thread_rng_n10THREAD_RNG27___rust_std_internal_init_fnEB1k_: argument 0"}
!26 = !{!25, !23, !21}
end_hunk_0
