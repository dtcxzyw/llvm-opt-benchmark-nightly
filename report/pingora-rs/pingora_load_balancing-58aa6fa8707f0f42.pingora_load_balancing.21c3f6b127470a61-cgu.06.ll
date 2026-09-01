Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_load_balancing-58aa6fa8707f0f42.pingora_load_balancing.21c3f6b127470a61-cgu.06?download=true
inline.NumInlined: 146
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-1.5.0/src/header/map.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\FA\05\00\00=\00\00\00" }>, align 8
@2 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.1/src/runtime/scheduler/mod.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"n\00\00\00\00\00\00\00\9E\00\00\00-\00\00\00" }>, align 8
@4 = private unnamed_addr constant [127 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.1/src/runtime/scheduler/multi_thread/handle.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"~\00\00\00\00\00\00\00A\00\00\00\09\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00:\07\00\00\22\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00D\07\00\00\16\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00I\07\00\00\16\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00I\07\00\00&\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00L\07\00\00\19\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00Q\07\00\00\16\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00Q\07\00\00&\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00T\07\00\00\19\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00Z\07\00\00\19\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00[\07\00\00\19\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\83\07\00\00&\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\83\07\00\00;\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\88\07\00\00\1D\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\90\07\00\00&\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\90\07\00\00;\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\95\07\00\00\1D\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00M\06\00\00\09\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00b\06\00\00\22\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00c\06\00\00\22\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00p\06\00\00\19\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\1A\07\00\00!\00\00\00" }>, align 8
@27 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.1/src/util/linked_list.rs\00", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"i\00\00\00\00\00\00\00}\00\00\00\09\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRReNtB6_5Debug3fmtCs2TJrahNLnPN_22pingora_load_balancing }>, align 8
@30 = private unnamed_addr constant [6 x i8] c"Static", align 1
@31 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtB6_5Debug3fmtCs2TJrahNLnPN_22pingora_load_balancing }>, align 8
@32 = private unnamed_addr constant [5 x i8] c"Owned", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\22\09\00\00&\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00*\09\00\003\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB6_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE6removeRNtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 9 uses
  %.sroa.05 = alloca [56 x i8], align 8           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.05, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !10, !noalias !11, !noundef !14 ; 14 uses
  %i.e = icmp ult i64 %i.d, 96076792050570582
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull readonly align 8 %2) #17, !noalias !11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = load i16, ptr %i.h, align 8, !alias.scope !10, !noalias !11, !noundef !14 ; 5 uses
  %i.j = and i16 %i.i, %i.g
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !10, !noalias !11, !noundef !14 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !10, !noalias !11, !nonnull !14 ; 5 uses
  %i.p = zext i16 %i.i to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !10, !noalias !11, !nonnull !14 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.not = icmp eq i64 %i.m, 0
  br label %.outer382

.outer382:                                        ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.ag, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.ah, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.u = icmp ult i64 %.sroa.0.0.i.i.ph, %i.m     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.u, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.u, i64 %.sroa.0.0.i.i.ph, i64 0 ; 4 uses
  br i1 %brmerge, label %.loopexit394, label %infloop

.loopexit394:                                     ; preds = %.outer382
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.0.i.i.ph.mux ; 4 uses
  %i.w = load i16, ptr %i.v, align 2, !noalias !15, !noundef !14 ; 3 uses
  %.not.i.i = icmp eq i16 %i.w, -1
  br i1 %.not.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.loopexit394
  %i.x = zext i16 %i.w to i64                     ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.z = load i16, ptr %i.y, align 2, !noalias !15, !noundef !14 ; 2 uses
  %i.aa = and i16 %i.z, %i.i
  %i.ab = zext i16 %i.aa to i64
  %i.ac = sub i64 %.sroa.0.0.i.i.ph.mux, %i.ab
  %i.ad = and i64 %i.ac, %i.p
  %i.ae = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ad
  br i1 %i.ae, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = icmp eq i16 %i.z, %i.g
  br i1 %i.af, label %bb.e, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.ag = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.ah = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer382

bb.e:                                             ; preds = %bb.d
  %i.ai = icmp samesign ugt i64 %i.d, %i.x
  br i1 %i.ai, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw [96 x i8], ptr %i.r, i64 %i.x ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !15, !noundef !14
  %i.am = icmp ne ptr %i.al, null                 ; 2 uses
  %i.an = load ptr, ptr %2, align 8, !noalias !15, !noundef !14
  %i.ao = icmp eq ptr %i.an, null                 ; 3 uses
  %not..i.i.i.i = xor i1 %i.ao, true
  %i.ap = xor i1 %i.am, %i.ao
  br i1 %i.ap, label %bb.g, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.am, label %bb.h, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !15, !noundef !14 ; 2 uses
  %i.as = load i64, ptr %i.t, align 8, !noalias !15, !noundef !14
  %i.at = icmp eq i64 %i.ar, %i.as
  br i1 %i.at, label %.split.i.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.au = load ptr, ptr %i.s, align 8, !noalias !15, !noundef !14
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !15, !noundef !14
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.aw, ptr %i.au, i64 %i.ar), !noalias !15
  %i.ax = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ax, label %_RINvXs2_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.ao)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.az = load i8, ptr %i.ay, align 8, !range !16, !noalias !15, !noundef !14
  %i.ba = load i8, ptr %i.s, align 8, !range !16, !noalias !15, !noundef !14
  %i.bb = icmp eq i8 %i.az, %i.ba
  br i1 %i.bb, label %_RINvXs2_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18, !noalias !15
  unreachable

.loopexit:                                        ; preds = %.loopexit394, %bb.c, %bb.a
  store ptr null, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.bm, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE12remove_foundCs2TJrahNLnPN_22pingora_load_balancing.exit, %.loopexit
  ret void

_RINvXs2_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %.split.i.i, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.bd = load i64, ptr %i.aj, align 8, !range !17, !noundef !14
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.j, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i

bb.j:                                             ; preds = %_RINvXs2_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !14 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !21, !noalias !24, !nonnull !14, !noundef !14 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.promoted.i = load i64, ptr %i.bj, align 8, !alias.scope !21, !noalias !24 ; 3 uses
  %i.bk = icmp ult i64 %i.bg, %.promoted.i
  br i1 %i.bk, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.aw
  %.sroa.0.078.i = phi i64 [ %.sroa.10.0.i.i, %bb.aw ], [ %i.bg, %bb.j ] ; 7 uses
  %i.bl = phi i64 [ %i.bz, %bb.aw ], [ %.promoted.i, %bb.j ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.bm = getelementptr inbounds nuw [64 x i8], ptr %i.bi, i64 %.sroa.0.078.i ; 10 uses
  %i.bn = load i64, ptr %i.bm, align 8, !range !17, !noalias !27, !noundef !14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !27, !noundef !14 ; 14 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !range !17, !noalias !27, !noundef !14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !27, !noundef !14 ; 12 uses
  %i.bu = trunc nuw i64 %i.bn to i1
  %i.bv = trunc nuw i64 %i.br to i1               ; 2 uses
  br i1 %i.bu, label %bb.k, label %bb.l

._crit_edge.i:                                    ; preds = %bb.aw, %bb.j
  %.sroa.0.0.lcssa.i = phi i64 [ %i.bg, %bb.j ], [ %.sroa.10.0.i.i, %bb.aw ]
  %.lcssa.i = phi i64 [ %.promoted.i, %bb.j ], [ %i.bz, %bb.aw ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18, !noalias !27
  unreachable

bb.k:                                             ; preds = %.lr.ph.i
  br i1 %i.bv, label %bb.w, label %bb.x

bb.l:                                             ; preds = %.lr.ph.i
  %i.bw = icmp ult i64 %i.bp, %i.d                ; 2 uses
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.bw, label %bb.q, label %bb.r

bb.n:                                             ; preds = %bb.l
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw [96 x i8], ptr %i.r, i64 %i.bp
  store i64 0, ptr %i.bx, align 8, !noalias !27
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i.i

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #18, !noalias !27
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %bb.ag, %bb.ac, %bb.u, %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.by = icmp ult i64 %i.bl, 144115188075855872
  tail call void @llvm.assume(i1 %i.by)
  %.sroa.8.0.copyload78.i.i = load i64, ptr %i.bq, align 8, !noalias !31 ; 2 uses
  %.sroa.10.0.copyload80.i.i = load i64, ptr %i.bs, align 8, !noalias !31 ; 2 uses
  %.sroa.12.0..sroa_idx81.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %.sroa.12.0.copyload82.i.i = load ptr, ptr %.sroa.12.0..sroa_idx81.i.i, align 8, !noalias !31 ; 6 uses
  %.sroa.13.0..sroa_idx83.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %.sroa.13.0.copyload84.i.i = load ptr, ptr %.sroa.13.0..sroa_idx83.i.i, align 8, !noalias !31 ; 3 uses
  %.sroa.14.0..sroa_idx85.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %.sroa.14.0.copyload86.i.i = load i64, ptr %.sroa.14.0..sroa_idx85.i.i, align 8, !noalias !31 ; 3 uses
  %.sroa.15.0..sroa_idx87.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %.sroa.15.0.copyload88.i.i = load ptr, ptr %.sroa.15.0..sroa_idx87.i.i, align 8, !noalias !31 ; 3 uses
  %i.bz = add nsw i64 %i.bl, -1                   ; 11 uses
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.bi, i64 %i.bz
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull align 8 dereferenceable(64) %i.ca, i64 64, i1 false), !noalias !32
  store i64 %i.bz, ptr %i.bj, align 8, !alias.scope !34, !noalias !35
  %.not71.i.i = icmp eq i64 %.sroa.0.078.i, %i.bz
  br i1 %.not71.i.i, label %_RINvNtNtCs84JG9zk80ZV_4http6header3map18remove_extra_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit.i, label %bb.ai

bb.q:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw [96 x i8], ptr %i.r, i64 %i.bp ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !range !17, !noalias !27, !noundef !14
  %i.cd = trunc nuw i64 %i.cc to i1
  br i1 %i.cd, label %bb.s, label %bb.t, !prof !36

bb.r:                                             ; preds = %bb.m
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #18, !noalias !27
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.bt, ptr %i.ce, align 8, !noalias !27
  %i.cf = icmp ult i64 %i.bt, %i.bl
  br i1 %i.cf, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.q
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18, !noalias !27
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw [64 x i8], ptr %i.bi, i64 %i.bt ; 2 uses
  store i64 0, ptr %i.cg, align 8, !noalias !27
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %i.bp, ptr %i.ch, align 8, !noalias !27
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i.i

bb.v:                                             ; preds = %bb.s
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bt, i64 noundef %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #18, !noalias !27
  unreachable

bb.w:                                             ; preds = %bb.k
  %i.ci = icmp ult i64 %i.bp, %i.bl
  br i1 %i.ci, label %bb.ae, label %bb.af

bb.x:                                             ; preds = %bb.k
  %i.cj = icmp ult i64 %i.bt, %i.d
  br i1 %i.cj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw [96 x i8], ptr %i.r, i64 %i.bt ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !range !17, !noalias !27, !noundef !14
  %i.cm = trunc nuw i64 %i.cl to i1
  br i1 %i.cm, label %bb.aa, label %bb.ab, !prof !36

bb.z:                                             ; preds = %bb.x
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bt, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #18, !noalias !27
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 %i.bp, ptr %i.cn, align 8, !noalias !27
  %i.co = icmp ult i64 %i.bp, %i.bl
  br i1 %i.co, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.y
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #18, !noalias !27
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cp = getelementptr inbounds nuw [64 x i8], ptr %i.bi, i64 %i.bp ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 0, ptr %i.cq, align 8, !noalias !27
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i64 %i.bt, ptr %i.cr, align 8, !noalias !27
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i.i

bb.ad:                                            ; preds = %bb.aa
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #18, !noalias !27
  unreachable

bb.ae:                                            ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw [64 x i8], ptr %i.bi, i64 %i.bp ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i64 1, ptr %i.ct, align 8, !noalias !27
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store i64 %i.bt, ptr %i.cu, align 8, !noalias !27
  %i.cv = icmp ult i64 %i.bt, %i.bl
  br i1 %i.cv, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.w
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #18, !noalias !27
  unreachable

bb.ag:                                            ; preds = %bb.ae
end_hunk_0
begin_hunk_1_@_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB6_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE6removeRNtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.aj, i64 96, i1 false), !noalias !74
  %i.el = add nsw i64 %i.d, -1                    ; 5 uses
  %i.em = getelementptr inbounds nuw [96 x i8], ptr %i.r, i64 %i.el
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr noundef nonnull align 8 dereferenceable(96) %i.em, i64 96, i1 false), !noalias !75
  store i64 %i.el, ptr %i.c, align 8, !alias.scope !77, !noalias !78
  %i.en = icmp samesign ugt i64 %i.el, %i.x
  br i1 %i.en, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.ep = load i16, ptr %i.eo, align 8, !noalias !69, !noundef !14 ; 2 uses
  %i.eq = and i16 %i.ep, %i.i
  %i.er = zext i16 %i.eq to i64
  br label %bb.az

bb.ay:                                            ; preds = %bb.bg, %bb.bd, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.es = icmp eq i64 %i.el, 0
  br i1 %i.es, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE12remove_foundCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.bh

bb.az:                                            ; preds = %.backedge, %bb.ax
  %.sroa.01.0.i = phi i64 [ %i.er, %bb.ax ], [ %.sroa.01.0.i.be, %.backedge ] ; 4 uses
  %i.et = icmp ult i64 %.sroa.01.0.i, %i.m
  br i1 %i.et, label %bb.ba, label %.backedge

bb.ba:                                            ; preds = %bb.az
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.0.i
  %i.ev = load i16, ptr %i.eu, align 2, !noalias !69, !noundef !14 ; 2 uses
  %.not.i = icmp eq i16 %i.ev, -1
  %i.ew = zext i16 %i.ev to i64
  %.not35.i = icmp samesign ugt i64 %i.el, %i.ew
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not35.i
  br i1 %or.cond.i, label %bb.bc, label %bb.bd

bb.bb:                                            ; preds = %.invoke.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(96) %i.a) #21
          to label %common.resume unwind label %bb.bl, !noalias !69

bb.bc:                                            ; preds = %bb.ba
  %i.ey = add nuw i64 %.sroa.01.0.i, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.bc, %bb.az
  %.sroa.01.0.i.be = phi i64 [ %i.ey, %bb.bc ], [ 0, %bb.az ]
  br label %bb.az

bb.bd:                                            ; preds = %bb.ba
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.0.i ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  store i16 %i.w, ptr %i.ez, align 2, !noalias !69
  store i16 %i.ep, ptr %i.fa, align 2, !noalias !69
  %i.fb = load i64, ptr %i.aj, align 8, !range !17, !noalias !69, !noundef !14
  %i.fc = trunc nuw i64 %i.fb to i1
  br i1 %i.fc, label %bb.be, label %bb.ay

bb.be:                                            ; preds = %bb.bd
  %i.fd = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !69, !noundef !14 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !69, !noundef !14 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !66, !noalias !79, !noundef !14 ; 4 uses
  %i.fj = icmp ult i64 %i.fe, %i.fi
  br i1 %i.fj, label %bb.bf, label %.invoke.i

bb.bf:                                            ; preds = %bb.be
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !66, !noalias !79, !nonnull !14, !noundef !14 ; 2 uses
  %i.fm = getelementptr inbounds nuw [64 x i8], ptr %i.fl, i64 %i.fe ; 2 uses
  store i64 0, ptr %i.fm, align 8, !noalias !69
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %i.x, ptr %i.fn, align 8, !noalias !69
  %i.fo = icmp ult i64 %i.fg, %i.fi
  br i1 %i.fo, label %bb.bg, label %.invoke.i

bb.bg:                                            ; preds = %bb.bf
  %i.fp = getelementptr inbounds nuw [64 x i8], ptr %i.fl, i64 %i.fg ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store i64 0, ptr %i.fq, align 8, !noalias !69
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store i64 %i.x, ptr %i.fr, align 8, !noalias !69
  br label %bb.ay

bb.bh:                                            ; preds = %bb.ay
  %.not399 = icmp eq i64 %i.m, 0
  br label %.outer

.outer:                                           ; preds = %bb.bk, %bb.bh
  %.sroa.018.0.i.ph = phi i64 [ %.sroa.08.0.i.ph.mux, %bb.bk ], [ %.sroa.0.0.i.i.ph.mux, %bb.bh ] ; 4 uses
  %.sroa.08.0.i.ph = add i64 %.sroa.018.0.i.ph, 1 ; 2 uses
  %i.fs = icmp ult i64 %.sroa.08.0.i.ph, %i.m     ; 2 uses
  %.not399.not = xor i1 %.not399, true
  %brmerge470 = or i1 %i.fs, %.not399.not
  %.sroa.08.0.i.ph.mux = select i1 %i.fs, i64 %.sroa.08.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge470, label %.loopexit398, label %infloop469

.loopexit398:                                     ; preds = %.outer
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.08.0.i.ph.mux ; 3 uses
  %i.fu = load i16, ptr %i.ft, align 2, !noalias !69, !noundef !14 ; 2 uses
  %.not36.i = icmp eq i16 %i.fu, -1
  br i1 %.not36.i, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE12remove_foundCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.bi

bb.bi:                                            ; preds = %.loopexit398
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 2 ; 2 uses
  %i.fw = load i16, ptr %i.fv, align 2, !noalias !69, !noundef !14 ; 2 uses
  %i.fx = and i16 %i.fw, %i.i
  %i.fy = zext i16 %i.fx to i64
  %i.fz = sub i64 %.sroa.08.0.i.ph.mux, %i.fy
  %i.ga = and i64 %i.fz, %i.p
  %.not37.i = icmp eq i64 %i.ga, 0
  br i1 %.not37.i, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE12remove_foundCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gb = icmp ult i64 %.sroa.018.0.i.ph, %i.m
  br i1 %i.gb, label %bb.bk, label %.invoke.i

.invoke.i:                                        ; preds = %bb.bj, %bb.bf, %bb.be
  %i.gc = phi i64 [ %i.fg, %bb.bf ], [ %i.fe, %bb.be ], [ %.sroa.018.0.i.ph, %bb.bj ]
  %i.gd = phi i64 [ %i.fi, %bb.bf ], [ %i.fi, %bb.be ], [ %i.m, %bb.bj ]
  %i.ge = phi ptr [ @24, %bb.bf ], [ @23, %bb.be ], [ @25, %bb.bj ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gc, i64 noundef %i.gd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ge) #19
          to label %.cont.i unwind label %bb.bb, !noalias !69

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bk:                                            ; preds = %bb.bj
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.018.0.i.ph ; 2 uses
  store i16 %i.fu, ptr %i.gf, align 2, !noalias !69
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  store i16 %i.fw, ptr %i.gg, align 2, !noalias !69
  store i16 -1, ptr %i.ft, align 2, !noalias !69
  store i16 0, ptr %i.fv, align 2, !noalias !69
  br label %.outer

bb.bl:                                            ; preds = %bb.bb
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !69
  unreachable

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE12remove_foundCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %.loopexit398, %bb.bi, %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.46.0.copyload = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !noalias !66 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !66
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.67.0.copyload = load i64, ptr %.sroa.67.0..sroa_idx, align 8, !noalias !66
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.gi = icmp eq ptr %.sroa.46.0.copyload, null
  br i1 %i.gi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.bm

bb.bm:                                            ; preds = %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE12remove_foundCs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.46.0.copyload, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !80, !nonnull !14, !noundef !14
  tail call void %i.gk(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.67.0.copyload), !noalias !80, !inline_history !93
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit

infloop:                                          ; preds = %.outer382, %infloop
  br label %infloop

infloop469:                                       ; preds = %.outer, %infloop469
  br label %infloop469
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap12contains_keyNtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !94, !noalias !97, !noundef !14 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %._RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit_crit_edge, label %bb.b

._RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !99
  br label %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1) #17, !noalias !97 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !94, !noalias !97, !noundef !14 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !94, !noalias !97, !noundef !14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !94, !noalias !97, !nonnull !14
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !94, !noalias !97, !nonnull !14
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %1, align 8                ; 5 uses
  %i.t = icmp eq ptr %i.s, null                   ; 4 uses
  %not..i.i.i = xor i1 %i.t, true
  %i.u = load i8, ptr %i.q, align 8, !range !16
  %i.v = load i64, ptr %i.r, align 8              ; 3 uses
  %i.w = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i, %bb.b
  %.sroa.05.0.i.ph = phi i64 [ %i.aj, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.ak, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.ph, %i.k       ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.x, %.not.not
  %.sroa.0.0.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !104, !noundef !14 ; 2 uses
  %.not.i = icmp eq i16 %i.z, -1
  br i1 %.not.i, label %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !104, !noundef !14 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.ph, %i.ag
  br i1 %i.ah, label %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e
  br i1 %i.ai, label %bb.e, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %.split.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.ph, 1
  %i.ak = add i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !104, !noundef !14
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !104, !noundef !14
  %i.at = icmp eq i64 %i.as, %i.v
  br i1 %i.at, label %.split.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

.split.i:                                         ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !noalias !104, !noundef !14
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.w, i64 %i.v), !noalias !104
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ay = load i8, ptr %i.ax, align 8, !range !16, !noalias !104, !noundef !14
  %i.az = icmp eq i8 %i.ay, %i.u
  br i1 %i.az, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit1, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18
          to label %.noexc2 unwind label %bb.j

.noexc2:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !123, !noundef !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !123, !nonnull !14, !noundef !14
  invoke void %i.be(ptr noundef %i.bc, ptr noundef %i.w, i64 noundef %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.m, !inline_history !124

_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %.split.i, %.loopexit, %bb.c, %._RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit_crit_edge
  %2 = phi ptr [ %.pre, %._RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit_crit_edge ], [ %i.s, %bb.c ], [ %i.s, %.loopexit ], [ %i.s, %.split.i ] ; 2 uses
  %3 = phi i1 [ false, %._RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit_crit_edge ], [ true, %.split.i ], [ false, %.loopexit ], [ false, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.bf = icmp eq ptr %2, null
  br i1 %i.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit1, label %bb.l

bb.l:                                             ; preds = %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !139, !noundef !14
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !139, !nonnull !14, !noundef !14
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !139, !noundef !14
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !139, !noundef !14
  tail call void %i.bj(ptr noundef %i.bh, ptr noundef %i.bl, i64 noundef %i.bn), !noalias !139, !inline_history !93
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit1: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.l
  %i.bo = phi i1 [ %3, %bb.l ], [ %3, %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit ], [ true, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i ]
  ret i1 %i.bo

bb.m:                                             ; preds = %bb.k
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.ba

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !146, !noalias !147, !noundef !14 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %._RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit_crit_edge, label %bb.b

._RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !149
  br label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1) #17, !noalias !147 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !146, !noalias !147, !noundef !14 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !146, !noalias !147, !noundef !14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !146, !noalias !147, !nonnull !14
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !146, !noalias !147, !nonnull !14
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %1, align 8                ; 5 uses
  %i.t = icmp eq ptr %i.s, null                   ; 4 uses
  %not..i.i.i.i = xor i1 %i.t, true
  %i.u = load i8, ptr %i.q, align 8, !range !16
  %i.v = load i64, ptr %i.r, align 8              ; 3 uses
  %i.w = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.aj, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.ak, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.i.ph, %i.k     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.x, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !154, !noundef !14 ; 2 uses
  %.not.i.i = icmp eq i16 %i.z, -1
  br i1 %.not.i.i, label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !154, !noundef !14 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ag
  br i1 %i.ah, label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e
  br i1 %i.ai, label %bb.e, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.ak = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !154, !noundef !14
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !154, !noundef !14
  %i.at = icmp eq i64 %i.as, %i.v
  br i1 %i.at, label %.split.i.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !noalias !154, !noundef !14
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.w, i64 %i.v), !noalias !154
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ay = load i8, ptr %i.ax, align 8, !range !16, !noalias !154, !noundef !14
  %i.az = icmp eq i8 %i.ay, %i.u
  br i1 %i.az, label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  br label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !173, !noundef !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !173, !nonnull !14, !noundef !14
  invoke void %i.bf(ptr noundef %i.bd, ptr noundef %i.w, i64 noundef %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.m, !inline_history !124

_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.c, %.loopexit, %._RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit_crit_edge, %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.bg = phi ptr [ %i.s, %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit.i ], [ %.pre, %._RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit_crit_edge ], [ %i.s, %.loopexit ], [ %i.s, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.ba, %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit.i ], [ null, %._RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit_crit_edge ], [ null, %.loopexit ], [ null, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit2, label %bb.l

bb.l:                                             ; preds = %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !188, !noundef !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !188, !nonnull !14, !noundef !14
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !188, !noundef !14
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !188, !noundef !14
  tail call void %i.bl(ptr noundef %i.bj, ptr noundef %i.bn, i64 noundef %i.bp), !noalias !188, !inline_history !93
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit2: ; preds = %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.l
  ret ptr %.sroa.0.0.i

bb.m:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.bb

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap6removeRNtNtB8_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 9 uses
  %.sroa.04 = alloca [64 x i8], align 8           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.04, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !195, !noalias !196, !noundef !14 ; 4 uses
  %i.e = icmp ult i64 %i.d, 88686269585142076
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull readonly align 8 %2) #17, !noalias !196 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.i = load i16, ptr %i.h, align 8, !alias.scope !195, !noalias !196, !noundef !14 ; 3 uses
  %i.j = and i16 %i.i, %i.g
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !195, !noalias !196, !noundef !14 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !195, !noalias !196, !nonnull !14
  %i.p = zext i16 %i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !195, !noalias !196, !nonnull !14
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.not = icmp eq i64 %i.m, 0
  br label %.outer57

.outer57:                                         ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.ag, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.ah, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.u = icmp ult i64 %.sroa.0.0.i.i.ph, %i.m     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.u, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.u, i64 %.sroa.0.0.i.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit66, label %infloop

.loopexit66:                                      ; preds = %.outer57
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !noalias !199, !noundef !14 ; 3 uses
  %.not.i.i = icmp eq i16 %i.w, -1
  br i1 %.not.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.loopexit66
  %i.x = zext i16 %i.w to i64                     ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.z = load i16, ptr %i.y, align 2, !noalias !199, !noundef !14 ; 2 uses
  %i.aa = and i16 %i.z, %i.i
  %i.ab = zext i16 %i.aa to i64
  %i.ac = sub i64 %.sroa.0.0.i.i.ph.mux, %i.ab
  %i.ad = and i64 %i.ac, %i.p
  %i.ae = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ad
  br i1 %i.ae, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = icmp eq i16 %i.z, %i.g
  br i1 %i.af, label %bb.e, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.ag = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.ah = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer57

bb.e:                                             ; preds = %bb.d
  %i.ai = icmp samesign ugt i64 %i.d, %i.x
  br i1 %i.ai, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw [104 x i8], ptr %i.r, i64 %i.x ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !199, !noundef !14
  %i.am = icmp ne ptr %i.al, null                 ; 2 uses
  %i.an = load ptr, ptr %2, align 8, !noalias !199, !noundef !14
  %i.ao = icmp eq ptr %i.an, null                 ; 3 uses
  %not..i.i.i.i = xor i1 %i.ao, true
  %i.ap = xor i1 %i.am, %i.ao
  br i1 %i.ap, label %bb.g, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.am, label %bb.h, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !199, !noundef !14 ; 2 uses
  %i.as = load i64, ptr %i.t, align 8, !noalias !199, !noundef !14
  %i.at = icmp eq i64 %i.ar, %i.as
  br i1 %i.at, label %.split.i.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.au = load ptr, ptr %i.s, align 8, !noalias !199, !noundef !14
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !199, !noundef !14
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.aw, ptr %i.au, i64 %i.ar), !noalias !199
  %i.ax = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ax, label %_RINvXs2_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.ao)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.az = load i8, ptr %i.ay, align 8, !range !16, !noalias !199, !noundef !14
  %i.ba = load i8, ptr %i.s, align 8, !range !16, !noalias !199, !noundef !14
  %i.bb = icmp eq i8 %i.az, %i.ba
  br i1 %i.bb, label %_RINvXs2_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18, !noalias !199
  unreachable

.loopexit:                                        ; preds = %.loopexit66, %bb.c, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.bc, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.ae, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap12remove_foundCs2TJrahNLnPN_22pingora_load_balancing.exit, %.loopexit
  ret void

_RINvXs2_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %.split.i.i, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i
  %i.bd = load i64, ptr %i.aj, align 8, !range !17, !noundef !14
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvXs2_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !14
  tail call void @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.bg)
  %.pre = load i64, ptr %i.l, align 8, !alias.scope !200, !noalias !203
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RINvXs2_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.bh = phi i64 [ %.pre, %bb.j ], [ %i.m, %_RINvXs2_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.bi = icmp ult i64 %.sroa.0.0.i.i.ph.mux, %i.bh
  br i1 %i.bi, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %i.n, align 8, !alias.scope !200, !noalias !203, !nonnull !14, !noundef !14 ; 5 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  store i16 -1, ptr %i.bk, align 2, !noalias !205
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i16 0, ptr %i.bl, align 2, !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !205
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.bm = load i64, ptr %i.c, align 8, !alias.scope !209, !noalias !210, !noundef !14 ; 4 uses
  %i.bn = icmp ult i64 %i.bm, 88686269585142076
  tail call void @llvm.assume(i1 %i.bn)
  %.not.i.i2 = icmp samesign ugt i64 %i.bm, %i.x
  br i1 %.not.i.i2, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBJ_5value11HeaderValueEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i, label %bb.m, !prof !36

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE11swap_remove13assert_failed(i64 noundef %i.x, i64 noundef %i.bm) #18, !noalias !212
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBJ_5value11HeaderValueEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.l
  %i.bo = load ptr, ptr %i.q, align 8, !alias.scope !209, !noalias !210, !nonnull !14, !noundef !14 ; 2 uses
  %i.bp = getelementptr inbounds nuw [104 x i8], ptr %i.bo, i64 %i.x ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.bp, i64 104, i1 false), !noalias !213
  %i.bq = add nsw i64 %i.bm, -1                   ; 5 uses
  %i.br = getelementptr inbounds nuw [104 x i8], ptr %i.bo, i64 %i.bq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bp, ptr noundef nonnull align 8 dereferenceable(104) %i.br, i64 104, i1 false), !noalias !212
  store i64 %i.bq, ptr %i.c, align 8, !alias.scope !209, !noalias !210
  %i.bs = icmp samesign ugt i64 %i.bq, %i.x
  br i1 %i.bs, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i.i.ph.mux, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #18, !noalias !205
  unreachable

bb.o:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBJ_5value11HeaderValueEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.bt = load i16, ptr %i.h, align 8, !alias.scope !200, !noalias !203, !noundef !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.bv = load i16, ptr %i.bu, align 8, !noalias !205, !noundef !14 ; 2 uses
  %i.bw = and i16 %i.bv, %i.bt
  %i.bx = zext i16 %i.bw to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.x, %bb.u, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBJ_5value11HeaderValueEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.by = icmp eq i64 %i.bq, 0
  br i1 %i.by, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap12remove_foundCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.y

bb.q:                                             ; preds = %.backedge, %bb.o
  %.sroa.01.0.i = phi i64 [ %i.bx, %bb.o ], [ %.sroa.01.0.i.be, %.backedge ] ; 4 uses
  %i.bz = icmp ult i64 %.sroa.01.0.i, %i.bh
  br i1 %i.bz, label %bb.r, label %.backedge

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.sroa.01.0.i
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !205, !noundef !14 ; 2 uses
  %.not.i = icmp eq i16 %i.cb, -1
  %i.cc = zext i16 %i.cb to i64
  %.not35.i = icmp samesign ugt i64 %i.bq, %i.cc
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not35.i
  br i1 %or.cond.i, label %bb.t, label %bb.u

bb.s:                                             ; preds = %.invoke.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBG_5value11HeaderValueEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #21
          to label %bb.ad unwind label %bb.ac, !noalias !205

bb.t:                                             ; preds = %bb.r
  %i.ce = add nuw i64 %.sroa.01.0.i, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.t, %bb.q
  %.sroa.01.0.i.be = phi i64 [ %i.ce, %bb.t ], [ 0, %bb.q ]
  br label %bb.q

bb.u:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.sroa.01.0.i ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store i16 %i.w, ptr %i.cf, align 2, !noalias !205
  store i16 %i.bv, ptr %i.cg, align 2, !noalias !205
  %i.ch = load i64, ptr %i.bp, align 8, !range !17, !noalias !205, !noundef !14
  %i.ci = trunc nuw i64 %i.ch to i1
  br i1 %i.ci, label %bb.v, label %bb.p

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !205, !noundef !14 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !205, !noundef !14 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !200, !noalias !203, !noundef !14 ; 4 uses
  %i.cp = icmp ult i64 %i.ck, %i.co
  br i1 %i.cp, label %bb.w, label %.invoke.i

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !200, !noalias !203, !nonnull !14, !noundef !14 ; 2 uses
  %i.cs = getelementptr inbounds nuw [72 x i8], ptr %i.cr, i64 %i.ck ; 2 uses
  store i64 0, ptr %i.cs, align 8, !noalias !205
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %i.x, ptr %i.ct, align 8, !noalias !205
  %i.cu = icmp ult i64 %i.cm, %i.co
  br i1 %i.cu, label %bb.x, label %.invoke.i

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw [72 x i8], ptr %i.cr, i64 %i.cm ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 0, ptr %i.cw, align 8, !noalias !205
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i64 %i.x, ptr %i.cx, align 8, !noalias !205
  br label %bb.p

bb.y:                                             ; preds = %bb.p
  %i.cy = load i16, ptr %i.h, align 8, !alias.scope !200, !noalias !203 ; 2 uses
  %i.cz = zext i16 %i.cy to i64
  br label %.outer

.outer:                                           ; preds = %bb.ab, %bb.y
  %.sroa.018.0.i.ph = phi i64 [ %.sroa.08.0.i.lcssa, %bb.ab ], [ %.sroa.0.0.i.i.ph.mux, %bb.y ] ; 4 uses
  %.sroa.08.0.i.ph = add i64 %.sroa.018.0.i.ph, 1 ; 2 uses
  %i.da = icmp ult i64 %.sroa.08.0.i.ph, %i.bh
  %.sroa.08.0.i.lcssa = select i1 %i.da, i64 %.sroa.08.0.i.ph, i64 0 ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.sroa.08.0.i.lcssa ; 3 uses
  %i.dc = load i16, ptr %i.db, align 2, !noalias !205, !noundef !14 ; 2 uses
  %.not36.i = icmp eq i16 %i.dc, -1
  br i1 %.not36.i, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap12remove_foundCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.z

bb.z:                                             ; preds = %.outer
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 2 ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2, !noalias !205, !noundef !14 ; 2 uses
  %i.df = and i16 %i.de, %i.cy
  %i.dg = zext i16 %i.df to i64
  %i.dh = sub i64 %.sroa.08.0.i.lcssa, %i.dg
  %i.di = and i64 %i.dh, %i.cz
  %.not37.i = icmp eq i64 %i.di, 0
  br i1 %.not37.i, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap12remove_foundCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = icmp ult i64 %.sroa.018.0.i.ph, %i.bh
  br i1 %i.dj, label %bb.ab, label %.invoke.i

.invoke.i:                                        ; preds = %bb.aa, %bb.w, %bb.v
  %i.dk = phi i64 [ %i.cm, %bb.w ], [ %i.ck, %bb.v ], [ %.sroa.018.0.i.ph, %bb.aa ]
  %i.dl = phi i64 [ %i.co, %bb.w ], [ %i.co, %bb.v ], [ %i.bh, %bb.aa ]
  %i.dm = phi ptr [ @24, %bb.w ], [ @23, %bb.v ], [ @25, %bb.aa ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dk, i64 noundef %i.dl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm) #19
          to label %.cont.i unwind label %bb.s, !noalias !205

.cont.i:                                          ; preds = %.invoke.i
  unreachable
end_hunk_1
