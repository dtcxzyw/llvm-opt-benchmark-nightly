Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_load_balancing-58aa6fa8707f0f42.pingora_load_balancing.21c3f6b127470a61-cgu.06?download=true
inline.NumInlined: 146
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
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
  %i.cw = getelementptr inbounds nuw [64 x i8], ptr %i.bi, i64 %i.bt ; 2 uses
  store i64 1, ptr %i.cw, align 8, !noalias !27
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.bp, ptr %i.cx, align 8, !noalias !27
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i.i

bb.ah:                                            ; preds = %bb.ae
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bt, i64 noundef %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #18, !noalias !27
  unreachable

bb.ai:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i.i
  %i.cy = load i64, ptr %i.bq, align 8, !range !17, !noalias !27, !noundef !14
  %i.cz = load i64, ptr %i.bs, align 8, !noalias !27, !noundef !14 ; 6 uses
  %i.da = load i64, ptr %i.bm, align 8, !range !17, !noalias !27, !noundef !14
  %i.db = load i64, ptr %i.bo, align 8, !noalias !27, !noundef !14 ; 6 uses
  %i.dc = trunc nuw i64 %i.da to i1
  br i1 %i.dc, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %.invoke.i.i, %.invoke114.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload82.i.i) ]
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload82.i.i, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !noalias !37, !nonnull !14, !noundef !14
  invoke void %i.df(ptr noundef %.sroa.15.0.copyload88.i.i, ptr noundef %.sroa.13.0.copyload84.i.i, i64 noundef %.sroa.14.0.copyload86.i.i)
          to label %common.resume unwind label %bb.av, !noalias !27, !inline_history !46

bb.ak:                                            ; preds = %bb.ai
  %i.dg = icmp ult i64 %i.db, %i.bz
  br i1 %i.dg, label %bb.ap, label %.invoke.i.i

bb.al:                                            ; preds = %bb.ai
  %i.dh = icmp ult i64 %i.db, %i.d
  br i1 %i.dh, label %bb.am, label %.invoke.i.i

bb.am:                                            ; preds = %bb.al
  %i.di = getelementptr inbounds nuw [96 x i8], ptr %i.r, i64 %i.db ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !range !17, !noalias !27, !noundef !14
  %i.dk = trunc nuw i64 %i.dj to i1
  br i1 %i.dk, label %bb.an, label %.invoke114.i.i, !prof !36

bb.an:                                            ; preds = %bb.am
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %.sroa.0.078.i, ptr %i.dl, align 8, !noalias !27
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %bb.an
  %i.dm = trunc nuw i64 %i.cy to i1
  br i1 %i.dm, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.ak
  %i.dn = getelementptr inbounds nuw [64 x i8], ptr %i.bi, i64 %i.db ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i64 1, ptr %i.do, align 8, !noalias !27
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i64 %.sroa.0.078.i, ptr %i.dp, align 8, !noalias !27
  br label %bb.ao

bb.aq:                                            ; preds = %bb.ao
  %i.dq = icmp ult i64 %i.cz, %i.bz
  br i1 %i.dq, label %bb.au, label %.invoke.i.i

bb.ar:                                            ; preds = %bb.ao
  %i.dr = icmp ult i64 %i.cz, %i.d
  br i1 %i.dr, label %bb.as, label %.invoke.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ds = getelementptr inbounds nuw [96 x i8], ptr %i.r, i64 %i.cz ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !range !17, !noalias !27, !noundef !14
  %i.du = trunc nuw i64 %i.dt to i1
  br i1 %i.du, label %bb.at, label %.invoke114.i.i, !prof !36

bb.at:                                            ; preds = %bb.as
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i64 %.sroa.0.078.i, ptr %i.dv, align 8, !noalias !27
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map18remove_extra_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit.i

.invoke114.i.i:                                   ; preds = %bb.as, %bb.am
  %i.dw = phi ptr [ @17, %bb.am ], [ @20, %bb.as ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dw) #19
          to label %.cont115.i.i unwind label %bb.aj, !noalias !27

.cont115.i.i:                                     ; preds = %.invoke114.i.i
  unreachable

bb.au:                                            ; preds = %bb.aq
  %i.dx = getelementptr inbounds nuw [64 x i8], ptr %i.bi, i64 %i.cz ; 2 uses
  store i64 1, ptr %i.dx, align 8, !noalias !27
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %.sroa.0.078.i, ptr %i.dy, align 8, !noalias !27
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map18remove_extra_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit.i

.invoke.i.i:                                      ; preds = %bb.ar, %bb.aq, %bb.al, %bb.ak
  %i.dz = phi i64 [ %i.cz, %bb.ar ], [ %i.db, %bb.ak ], [ %i.db, %bb.al ], [ %i.cz, %bb.aq ]
  %i.ea = phi i64 [ %i.d, %bb.ar ], [ %i.bz, %bb.ak ], [ %i.d, %bb.al ], [ %i.bz, %bb.aq ]
  %i.eb = phi ptr [ @19, %bb.ar ], [ @18, %bb.ak ], [ @16, %bb.al ], [ @21, %bb.aq ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %i.ea, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eb) #19
          to label %.cont.i.i unwind label %bb.aj, !noalias !27

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.av:                                            ; preds = %bb.aj
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !27
  unreachable

common.resume:                                    ; preds = %bb.bb, %bb.aj
  %common.resume.op = phi { ptr, i32 } [ %i.dd, %bb.aj ], [ %i.ev, %bb.bb ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtCs84JG9zk80ZV_4http6header3map18remove_extra_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.au, %bb.at, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i.i
  %.not.i.i2 = icmp ne i64 %.sroa.8.0.copyload78.i.i, 0
  %3 = icmp eq i64 %.sroa.10.0.copyload80.i.i, %i.bz ; 2 uses
  %or.cond73.i.i = select i1 %.not.i.i2, i1 %3, i1 false
  %i.ed = trunc nuw i64 %.sroa.8.0.copyload78.i.i to i1
  %4 = select i1 %or.cond73.i.i, i1 true, i1 %i.ed
  br i1 %4, label %bb.aw, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23remove_all_extra_valuesCs2TJrahNLnPN_22pingora_load_balancing.exit

bb.aw:                                            ; preds = %_RINvNtNtCs84JG9zk80ZV_4http6header3map18remove_extra_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %.sroa.10.0.i.i = select i1 %3, i64 %.sroa.0.078.i, i64 %.sroa.10.0.copyload80.i.i ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload82.i.i) ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload82.i.i, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !47, !nonnull !14, !noundef !14
  tail call void %i.ef(ptr noundef %.sroa.15.0.copyload88.i.i, ptr noundef %.sroa.13.0.copyload84.i.i, i64 noundef %.sroa.14.0.copyload86.i.i), !noalias !47, !inline_history !56
  %i.eg = icmp ult i64 %.sroa.10.0.i.i, %i.bz
  br i1 %i.eg, label %.lr.ph.i, label %._crit_edge.i

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23remove_all_extra_valuesCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RINvNtNtCs84JG9zk80ZV_4http6header3map18remove_extra_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload82.i.i) ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload82.i.i, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !57, !nonnull !14, !noundef !14
  tail call void %i.ei(ptr noundef %.sroa.15.0.copyload88.i.i, ptr noundef %.sroa.13.0.copyload84.i.i, i64 noundef %.sroa.14.0.copyload86.i.i), !noalias !57, !inline_history !56
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %_RINvXs2_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23remove_all_extra_valuesCs2TJrahNLnPN_22pingora_load_balancing.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  store i16 -1, ptr %i.v, align 2, !noalias !69
  store i16 0, ptr %i.bc, align 2, !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.aj, i64 96, i1 false), !noalias !74
  %i.ej = add nsw i64 %i.d, -1                    ; 5 uses
  %i.ek = getelementptr inbounds nuw [96 x i8], ptr %i.r, i64 %i.ej
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr noundef nonnull align 8 dereferenceable(96) %i.ek, i64 96, i1 false), !noalias !75
  store i64 %i.ej, ptr %i.c, align 8, !alias.scope !77, !noalias !78
  %i.el = icmp samesign ugt i64 %i.ej, %i.x
  br i1 %i.el, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.en = load i16, ptr %i.em, align 8, !noalias !69, !noundef !14 ; 2 uses
  %i.eo = and i16 %i.en, %i.i
  %i.ep = zext i16 %i.eo to i64
  br label %bb.az

bb.ay:                                            ; preds = %bb.bg, %bb.bd, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.eq = icmp eq i64 %i.ej, 0
  br i1 %i.eq, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE12remove_foundCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.bh

bb.az:                                            ; preds = %.backedge, %bb.ax
  %.sroa.01.0.i = phi i64 [ %i.ep, %bb.ax ], [ %.sroa.01.0.i.be, %.backedge ] ; 4 uses
  %i.er = icmp ult i64 %.sroa.01.0.i, %i.m
  br i1 %i.er, label %bb.ba, label %.backedge

bb.ba:                                            ; preds = %bb.az
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.0.i
  %i.et = load i16, ptr %i.es, align 2, !noalias !69, !noundef !14 ; 2 uses
  %.not.i = icmp eq i16 %i.et, -1
  %i.eu = zext i16 %i.et to i64
  %.not35.i = icmp samesign ugt i64 %i.ej, %i.eu
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not35.i
  br i1 %or.cond.i, label %bb.bc, label %bb.bd

bb.bb:                                            ; preds = %.invoke.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(96) %i.a) #21
          to label %common.resume unwind label %bb.bl, !noalias !69

bb.bc:                                            ; preds = %bb.ba
  %i.ew = add nuw i64 %.sroa.01.0.i, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.bc, %bb.az
  %.sroa.01.0.i.be = phi i64 [ %i.ew, %bb.bc ], [ 0, %bb.az ]
  br label %bb.az

bb.bd:                                            ; preds = %bb.ba
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.0.i ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  store i16 %i.w, ptr %i.ex, align 2, !noalias !69
  store i16 %i.en, ptr %i.ey, align 2, !noalias !69
  %i.ez = load i64, ptr %i.aj, align 8, !range !17, !noalias !69, !noundef !14
  %i.fa = trunc nuw i64 %i.ez to i1
  br i1 %i.fa, label %bb.be, label %bb.ay

bb.be:                                            ; preds = %bb.bd
  %i.fb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !69, !noundef !14 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !69, !noundef !14 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !66, !noalias !79, !noundef !14 ; 4 uses
  %i.fh = icmp ult i64 %i.fc, %i.fg
  br i1 %i.fh, label %bb.bf, label %.invoke.i

bb.bf:                                            ; preds = %bb.be
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !66, !noalias !79, !nonnull !14, !noundef !14 ; 2 uses
  %i.fk = getelementptr inbounds nuw [64 x i8], ptr %i.fj, i64 %i.fc ; 2 uses
  store i64 0, ptr %i.fk, align 8, !noalias !69
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i64 %i.x, ptr %i.fl, align 8, !noalias !69
  %i.fm = icmp ult i64 %i.fe, %i.fg
  br i1 %i.fm, label %bb.bg, label %.invoke.i

bb.bg:                                            ; preds = %bb.bf
  %i.fn = getelementptr inbounds nuw [64 x i8], ptr %i.fj, i64 %i.fe ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i64 0, ptr %i.fo, align 8, !noalias !69
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store i64 %i.x, ptr %i.fp, align 8, !noalias !69
  br label %bb.ay

bb.bh:                                            ; preds = %bb.ay
  %.not399 = icmp eq i64 %i.m, 0
  br label %.outer

.outer:                                           ; preds = %bb.bk, %bb.bh
  %.sroa.018.0.i.ph = phi i64 [ %.sroa.08.0.i.ph.mux, %bb.bk ], [ %.sroa.0.0.i.i.ph.mux, %bb.bh ] ; 4 uses
  %.sroa.08.0.i.ph = add i64 %.sroa.018.0.i.ph, 1 ; 2 uses
  %i.fq = icmp ult i64 %.sroa.08.0.i.ph, %i.m     ; 2 uses
  %.not399.not = xor i1 %.not399, true
  %brmerge470 = or i1 %i.fq, %.not399.not
  %.sroa.08.0.i.ph.mux = select i1 %i.fq, i64 %.sroa.08.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge470, label %.loopexit398, label %infloop469

.loopexit398:                                     ; preds = %.outer
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.08.0.i.ph.mux ; 3 uses
  %i.fs = load i16, ptr %i.fr, align 2, !noalias !69, !noundef !14 ; 2 uses
  %.not36.i = icmp eq i16 %i.fs, -1
  br i1 %.not36.i, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE12remove_foundCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.bi

bb.bi:                                            ; preds = %.loopexit398
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 2 ; 2 uses
  %i.fu = load i16, ptr %i.ft, align 2, !noalias !69, !noundef !14 ; 2 uses
  %i.fv = and i16 %i.fu, %i.i
  %i.fw = zext i16 %i.fv to i64
  %i.fx = sub i64 %.sroa.08.0.i.ph.mux, %i.fw
  %i.fy = and i64 %i.fx, %i.p
  %.not37.i = icmp eq i64 %i.fy, 0
  br i1 %.not37.i, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE12remove_foundCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fz = icmp ult i64 %.sroa.018.0.i.ph, %i.m
  br i1 %i.fz, label %bb.bk, label %.invoke.i

.invoke.i:                                        ; preds = %bb.bj, %bb.bf, %bb.be
  %i.ga = phi i64 [ %i.fe, %bb.bf ], [ %i.fc, %bb.be ], [ %.sroa.018.0.i.ph, %bb.bj ]
  %i.gb = phi i64 [ %i.fg, %bb.bf ], [ %i.fg, %bb.be ], [ %i.m, %bb.bj ]
  %i.gc = phi ptr [ @24, %bb.bf ], [ @23, %bb.be ], [ @25, %bb.bj ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ga, i64 noundef %i.gb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gc) #19
          to label %.cont.i unwind label %bb.bb, !noalias !69

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bk:                                            ; preds = %bb.bj
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.018.0.i.ph ; 2 uses
  store i16 %i.fs, ptr %i.gd, align 2, !noalias !69
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  store i16 %i.fu, ptr %i.ge, align 2, !noalias !69
  store i16 -1, ptr %i.fr, align 2, !noalias !69
  store i16 0, ptr %i.ft, align 2, !noalias !69
  br label %.outer

bb.bl:                                            ; preds = %bb.bb
  %i.gf = landingpad { ptr, i32 }
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
  %i.gg = icmp eq ptr %.sroa.46.0.copyload, null
  br i1 %i.gg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.bm

bb.bm:                                            ; preds = %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE12remove_foundCs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.46.0.copyload, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !80, !nonnull !14, !noundef !14
  tail call void %i.gi(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.67.0.copyload), !noalias !80, !inline_history !93
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
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs2TJrahNLnPN_22pingora_load_balancing:bb.a
  %.sroa.01.018.ph = phi ptr [ %i.ay, %.lr.ph.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph

bb.r:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.bk = shl nuw nsw i64 %i.l, 1
  %i.bl = tail call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap8try_growCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %i.bk) #17
  br i1 %i.bl, label %bb.z, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCs2TJrahNLnPN_22pingora_load_balancing.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %.sroa.01.018 = phi ptr [ %i.bm, %.lr.ph ], [ %.sroa.01.018.ph, %.lr.ph.preheader37 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.01.018, i64 4 ; 2 uses
  store i16 -1, ptr %.sroa.01.018, align 2
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.018, i64 2
  store i16 0, ptr %i.bn, align 2
  %i.bo = icmp eq ptr %i.bm, %i.ba
  br i1 %i.bo, label %._crit_edge, label %.lr.ph, !llvm.loop !373

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !374, !nonnull !14, !noundef !14 ; 2 uses
  %i.br = load i64, ptr %i.f, align 8, !alias.scope !374, !noundef !14 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.br, 104
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i
  %i.bt = icmp eq i64 %i.br, 0
  br i1 %i.bt, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCs2TJrahNLnPN_22pingora_load_balancing.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bv = load i16, ptr %i.bu, align 8, !alias.scope !374 ; 3 uses
  %i.bw = load ptr, ptr %i.ax, align 8, !alias.scope !374, !nonnull !14 ; 3 uses
  %i.bx = load i64, ptr %i.k, align 8, !alias.scope !374 ; 4 uses
  %i.by = zext i16 %i.bv to i64
  %.not43 = icmp eq i64 %i.bx, 0
  %.not44 = icmp eq i64 %i.bx, 0
  br label %bb.s

bb.s:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.036.i = phi ptr [ %i.bq, %.lr.ph.i ], [ %i.bz, %.backedge.i ] ; 3 uses
  %.sroa.7.035.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ca, %.backedge.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 104 ; 2 uses
  %i.ca = add nuw nsw i64 %.sroa.7.035.i, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 64
  %i.cc = tail call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull align 8 %i.cb) #17 ; 4 uses
  %i.cd = and i16 %i.cc, %i.bv
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 96
  store i16 %i.cc, ptr %i.cf, align 8, !noalias !374
  br label %.outer33

.outer33:                                         ; preds = %bb.v, %bb.s
  %.sroa.014.0.i.ph = phi i64 [ %i.cv, %bb.v ], [ 0, %bb.s ] ; 2 uses
  %.sroa.04.0.i.ph = phi i64 [ %i.cw, %bb.v ], [ %i.ce, %bb.s ] ; 2 uses
  %i.cg = icmp ult i64 %.sroa.04.0.i.ph, %i.bx    ; 2 uses
  %.not43.not = xor i1 %.not43, true
  %brmerge = or i1 %i.cg, %.not43.not
  %.sroa.04.0.i.ph.mux = select i1 %i.cg, i64 %.sroa.04.0.i.ph, i64 0 ; 5 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer33
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.sroa.04.0.i.ph.mux ; 3 uses
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !374, !noundef !14
  %.not23.i = icmp eq i16 %i.ci, -1
  br i1 %.not23.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.ck = load i16, ptr %i.cj, align 2, !noalias !374, !noundef !14
  %i.cl = and i16 %i.ck, %i.bv
  %i.cm = zext i16 %i.cl to i64
  %i.cn = sub i64 %.sroa.04.0.i.ph.mux, %i.cm
  %i.co = and i64 %i.cn, %i.by
  %i.cp = icmp samesign ult i64 %i.co, %.sroa.014.0.i.ph
  br i1 %i.cp, label %bb.w, label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.cq = trunc i64 %.sroa.7.035.i to i16
  store i16 %i.cq, ptr %i.ch, align 2, !noalias !374
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.y, %bb.u
  %i.cr = phi i64 [ %.sroa.04.0.i.ph.mux, %bb.u ], [ %.sroa.04.2.i.ph.mux, %bb.y ]
  %.sink.i = phi i16 [ %i.cc, %bb.u ], [ %.sroa.619.0.i.ph, %bb.y ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i16 %.sink.i, ptr %i.ct, align 2, !noalias !374
  %i.cu = icmp eq ptr %i.bz, %i.bs
  br i1 %i.cu, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.s

bb.v:                                             ; preds = %bb.t
  %i.cv = add nuw nsw i64 %.sroa.014.0.i.ph, 1
  %i.cw = add nuw i64 %.sroa.04.0.i.ph.mux, 1
  br label %.outer33

bb.w:                                             ; preds = %bb.t
  %i.cx = trunc i64 %.sroa.7.035.i to i16
  br label %.outer

.outer:                                           ; preds = %bb.x, %bb.w
  %.sroa.04.2.i.ph = phi i64 [ %i.de, %bb.x ], [ %.sroa.04.0.i.ph.mux, %bb.w ] ; 2 uses
  %.sroa.017.0.i.ph = phi i16 [ %i.da, %bb.x ], [ %i.cx, %bb.w ] ; 2 uses
  %.sroa.619.0.i.ph = phi i16 [ %i.dd, %bb.x ], [ %i.cc, %bb.w ] ; 2 uses
  %i.cy = icmp ult i64 %.sroa.04.2.i.ph, %i.bx    ; 2 uses
  %.not44.not = xor i1 %.not44, true
  %brmerge49 = or i1 %i.cy, %.not44.not
  %.sroa.04.2.i.ph.mux = select i1 %i.cy, i64 %.sroa.04.2.i.ph, i64 0 ; 3 uses
  br i1 %brmerge49, label %.loopexit42, label %infloop48

.loopexit42:                                      ; preds = %.outer
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.sroa.04.2.i.ph.mux ; 4 uses
  %i.da = load i16, ptr %i.cz, align 2, !noalias !374, !noundef !14 ; 2 uses
  %i.db = icmp eq i16 %i.da, -1
  br i1 %i.db, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit42
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 2 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !noalias !374, !noundef !14
  store i16 %.sroa.017.0.i.ph, ptr %i.cz, align 2, !noalias !374
  store i16 %.sroa.619.0.i.ph, ptr %i.dc, align 2, !noalias !374
  %i.de = add nuw i64 %.sroa.04.2.i.ph.mux, 1
  br label %.outer

bb.y:                                             ; preds = %.loopexit42
  store i16 %.sroa.017.0.i.ph, ptr %i.cz, align 2, !noalias !374
  br label %.backedge.i

bb.z:                                             ; preds = %bb.r, %bb.j, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCs2TJrahNLnPN_22pingora_load_balancing.exit
  %.sroa.0.0 = phi i1 [ true, %bb.j ], [ false, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCs2TJrahNLnPN_22pingora_load_balancing.exit ], [ true, %bb.r ]
  ret i1 %.sroa.0.0

infloop:                                          ; preds = %.outer33, %infloop
  br label %infloop

infloop48:                                        ; preds = %.outer, %infloop48
  br label %infloop48
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !377, !noalias !380, !nonnull !14, !noundef !14 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.promoted = load i64, ptr %i.g, align 8, !alias.scope !377, !noalias !380 ; 3 uses
  %i.h = icmp ult i64 %1, %.promoted
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.an
  %.sroa.0.078 = phi i64 [ %.sroa.10.0.i, %bb.an ], [ %1, %bb.a ] ; 7 uses
  %i.i = phi i64 [ %i.w, %bb.an ], [ %.promoted, %bb.a ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %.sroa.0.078 ; 10 uses
  %i.k = load i64, ptr %i.j, align 8, !range !17, !noalias !382, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !382, !noundef !14 ; 14 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !range !17, !noalias !382, !noundef !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !382, !noundef !14 ; 12 uses
  %i.r = trunc nuw i64 %i.k to i1
  %i.s = trunc nuw i64 %i.o to i1                 ; 2 uses
  br i1 %i.r, label %bb.b, label %bb.c

._crit_edge:                                      ; preds = %bb.an, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.10.0.i, %bb.an ]
  %.lcssa = phi i64 [ %.promoted, %bb.a ], [ %i.w, %bb.an ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa, i64 noundef %.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18, !noalias !382
  unreachable

bb.b:                                             ; preds = %.lr.ph
  br i1 %i.s, label %bb.n, label %bb.o

bb.c:                                             ; preds = %.lr.ph
  %i.t = icmp ult i64 %i.m, %i.d                  ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.t, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.c
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %i.m
  store i64 0, ptr %i.u, align 8, !noalias !382
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #18, !noalias !382
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.x, %bb.t, %bb.l, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.v = icmp ult i64 %i.i, 128102389400760776
  tail call void @llvm.assume(i1 %i.v)
  %.sroa.8.0.copyload78.i = load i64, ptr %i.n, align 8, !noalias !386 ; 2 uses
  %.sroa.10.0.copyload80.i = load i64, ptr %i.p, align 8, !noalias !386 ; 2 uses
  %.sroa.12.0..sroa_idx81.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.12.0.copyload82.i = load ptr, ptr %.sroa.12.0..sroa_idx81.i, align 8, !noalias !386 ; 6 uses
  %.sroa.13.0..sroa_idx83.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.13.0.copyload84.i = load ptr, ptr %.sroa.13.0..sroa_idx83.i, align 8, !noalias !386 ; 3 uses
  %.sroa.14.0..sroa_idx85.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.14.0.copyload86.i = load i64, ptr %.sroa.14.0..sroa_idx85.i, align 8, !noalias !386 ; 3 uses
  %.sroa.15.0..sroa_idx87.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.15.0.copyload88.i = load ptr, ptr %.sroa.15.0..sroa_idx87.i, align 8, !noalias !386 ; 3 uses
  %i.w = add nsw i64 %i.i, -1                     ; 11 uses
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.x, i64 72, i1 false), !noalias !387
  store i64 %i.w, ptr %i.g, align 8, !alias.scope !389, !noalias !390
  %.not71.i = icmp eq i64 %.sroa.0.078, %i.w
  br i1 %.not71.i, label %_RINvNtNtCs84JG9zk80ZV_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.z

bb.h:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %i.m ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !17, !noalias !382, !noundef !14
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !36

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #18, !noalias !382
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.q, ptr %i.ab, align 8, !noalias !382
  %i.ac = icmp ult i64 %i.q, %i.i
  br i1 %i.ac, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18, !noalias !382
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %i.q ; 2 uses
  store i64 0, ptr %i.ad, align 8, !noalias !382
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.m, ptr %i.ae, align 8, !noalias !382
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #18, !noalias !382
  unreachable

bb.n:                                             ; preds = %bb.b
  %i.af = icmp ult i64 %i.m, %i.i
  br i1 %i.af, label %bb.v, label %bb.w

bb.o:                                             ; preds = %bb.b
  %i.ag = icmp ult i64 %i.q, %i.d
  br i1 %i.ag, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !17, !noalias !382, !noundef !14
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.r, label %bb.s, !prof !36

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #18, !noalias !382
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.m, ptr %i.ak, align 8, !noalias !382
  %i.al = icmp ult i64 %i.m, %i.i
  br i1 %i.al, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.p
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #18, !noalias !382
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %i.m ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 0, ptr %i.an, align 8, !noalias !382
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %i.q, ptr %i.ao, align 8, !noalias !382
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #18, !noalias !382
  unreachable

bb.v:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %i.m ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 1, ptr %i.aq, align 8, !noalias !382
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 %i.q, ptr %i.ar, align 8, !noalias !382
  %i.as = icmp ult i64 %i.q, %i.i
  br i1 %i.as, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.n
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #18, !noalias !382
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.at = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %i.q ; 2 uses
  store i64 1, ptr %i.at, align 8, !noalias !382
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.m, ptr %i.au, align 8, !noalias !382
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i

bb.y:                                             ; preds = %bb.v
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #18, !noalias !382
  unreachable

bb.z:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.av = load i64, ptr %i.n, align 8, !range !17, !noalias !382, !noundef !14
  %i.aw = load i64, ptr %i.p, align 8, !noalias !382, !noundef !14 ; 6 uses
  %i.ax = load i64, ptr %i.j, align 8, !range !17, !noalias !382, !noundef !14
  %i.ay = load i64, ptr %i.l, align 8, !noalias !382, !noundef !14 ; 6 uses
  %i.az = trunc nuw i64 %i.ax to i1
  br i1 %i.az, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %.invoke.i, %.invoke116.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload82.i) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload82.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !391, !nonnull !14, !noundef !14
  invoke void %i.bc(ptr noundef %.sroa.15.0.copyload88.i, ptr noundef %.sroa.13.0.copyload84.i, i64 noundef %.sroa.14.0.copyload86.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.am, !noalias !382, !inline_history !400

bb.ab:                                            ; preds = %bb.z
  %i.bd = icmp ult i64 %i.ay, %i.w
  br i1 %i.bd, label %bb.ag, label %.invoke.i

bb.ac:                                            ; preds = %bb.z
  %i.be = icmp ult i64 %i.ay, %i.d
  br i1 %i.be, label %bb.ad, label %.invoke.i

bb.ad:                                            ; preds = %bb.ac
  %i.bf = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %i.ay ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !range !17, !noalias !382, !noundef !14
  %i.bh = trunc nuw i64 %i.bg to i1
  br i1 %i.bh, label %bb.ae, label %.invoke116.i, !prof !36

bb.ae:                                            ; preds = %bb.ad
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %.sroa.0.078, ptr %i.bi, align 8, !noalias !382
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.bj = trunc nuw i64 %i.av to i1
  br i1 %i.bj, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ab
  %i.bk = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %i.ay ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 1, ptr %i.bl, align 8, !noalias !382
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i64 %.sroa.0.078, ptr %i.bm, align 8, !noalias !382
  br label %bb.af

bb.ah:                                            ; preds = %bb.af
  %i.bn = icmp ult i64 %i.aw, %i.w
  br i1 %i.bn, label %bb.al, label %.invoke.i

bb.ai:                                            ; preds = %bb.af
  %i.bo = icmp ult i64 %i.aw, %i.d
  br i1 %i.bo, label %bb.aj, label %.invoke.i

bb.aj:                                            ; preds = %bb.ai
  %i.bp = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %i.aw ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !range !17, !noalias !382, !noundef !14
  %i.br = trunc nuw i64 %i.bq to i1
  br i1 %i.br, label %bb.ak, label %.invoke116.i, !prof !36

bb.ak:                                            ; preds = %bb.aj
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 %.sroa.0.078, ptr %i.bs, align 8, !noalias !382
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit

.invoke116.i:                                     ; preds = %bb.aj, %bb.ad
  %i.bt = phi ptr [ @17, %bb.ad ], [ @20, %bb.aj ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt) #19
          to label %.cont117.i unwind label %bb.aa, !noalias !382

.cont117.i:                                       ; preds = %.invoke116.i
  unreachable

bb.al:                                            ; preds = %bb.ah
  %i.bu = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %i.aw ; 2 uses
  store i64 1, ptr %i.bu, align 8, !noalias !382
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %.sroa.0.078, ptr %i.bv, align 8, !noalias !382
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit

.invoke.i:                                        ; preds = %bb.ai, %bb.ah, %bb.ac, %bb.ab
  %i.bw = phi i64 [ %i.aw, %bb.ai ], [ %i.ay, %bb.ab ], [ %i.ay, %bb.ac ], [ %i.aw, %bb.ah ]
  %i.bx = phi i64 [ %i.d, %bb.ai ], [ %i.w, %bb.ab ], [ %i.d, %bb.ac ], [ %i.w, %bb.ah ]
  %i.by = phi ptr [ @19, %bb.ai ], [ @18, %bb.ab ], [ @16, %bb.ac ], [ @21, %bb.ah ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by) #19
          to label %.cont.i unwind label %bb.aa, !noalias !382

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.aa
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !382
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.aa
  resume { ptr, i32 } %i.ba

_RINvNtNtCs84JG9zk80ZV_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCs2TJrahNLnPN_22pingora_load_balancing.exit.i, %bb.ak, %bb.al
  %.not.i = icmp ne i64 %.sroa.8.0.copyload78.i, 0
  %2 = icmp eq i64 %.sroa.10.0.copyload80.i, %i.w ; 2 uses
  %or.cond73.i = select i1 %.not.i, i1 %2, i1 false
  %i.ca = trunc nuw i64 %.sroa.8.0.copyload78.i to i1
  %3 = select i1 %or.cond73.i, i1 true, i1 %i.ca
  br i1 %3, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_RINvNtNtCs84JG9zk80ZV_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit
  %.sroa.10.0.i = select i1 %2, i64 %.sroa.0.078, i64 %.sroa.10.0.copyload80.i ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload82.i) ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload82.i, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !401, !nonnull !14, !noundef !14
  tail call void %i.cc(ptr noundef %.sroa.15.0.copyload88.i, ptr noundef %.sroa.13.0.copyload84.i, i64 noundef %.sroa.14.0.copyload86.i), !noalias !401, !inline_history !410
  %i.cd = icmp ult i64 %.sroa.10.0.i, %i.w
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

bb.ao:                                            ; preds = %_RINvNtNtCs84JG9zk80ZV_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs2TJrahNLnPN_22pingora_load_balancing.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload82.i) ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload82.i, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !411, !nonnull !14, !noundef !14
  tail call void %i.cf(ptr noundef %.sroa.15.0.copyload88.i, ptr noundef %.sroa.13.0.copyload84.i, i64 noundef %.sroa.14.0.copyload86.i), !noalias !411, !inline_history !410
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap8try_growCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ugt i64 %1, 32768                   ; 2 uses
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECs2TJrahNLnPN_22pingora_load_balancing.exit34, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !14 ; 7 uses
  %.idx = shl nuw nsw i64 %i.h, 2                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.j = icmp eq i64 %i.h, 0                      ; 3 uses
  br i1 %i.j, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs84JG9zk80ZV_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs2TJrahNLnPN_22pingora_load_balancing.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i16, ptr %i.k, align 8              ; 2 uses
  %i.m = zext i16 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0.050 = phi ptr [ %i.f, %.lr.ph ], [ %i.n, %bb.h ] ; 3 uses
  %.sroa.7.049 = phi i64 [ 0, %.lr.ph ], [ %i.o, %bb.h ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 4 ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.7.049, 1
  %i.p = load i16, ptr %.sroa.0.050, align 2, !noundef !14
  %.not24 = icmp eq i16 %i.p, -1
  br i1 %.not24, label %bb.h, label %bb.g

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs84JG9zk80ZV_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs2TJrahNLnPN_22pingora_load_balancing.exit.thread: ; preds = %bb.g, %bb.h, %bb.b
  %.sroa.02.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.h ], [ %.sroa.7.049, %bb.g ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !420
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4), !noalias !420
  %i.q = load i64, ptr %i.a, align 8, !range !17, !noalias !420, !noundef !14
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !348, !noalias !420, !noundef !14 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.d, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2TJrahNLnPN_22pingora_load_balancing.exit.i, !prof !349

bb.d:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs84JG9zk80ZV_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs2TJrahNLnPN_22pingora_load_balancing.exit.thread
  %i.v = load i64, ptr %i.u, align 8, !noalias !420
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #19, !noalias !420
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs84JG9zk80ZV_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs2TJrahNLnPN_22pingora_load_balancing.exit.thread
  %i.w = load ptr, ptr %i.u, align 8, !noalias !420, !nonnull !14, !noundef !14
  %i.x = icmp ule i64 %1, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !420
  store i64 %i.t, ptr %i.b, align 8, !noalias !420
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.y, align 8, !noalias !420
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.z, align 8, !noalias !420
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE11extend_withCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %1, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.e, !noalias !420

bb.e:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #21
          to label %common.resume unwind label %bb.f, !noalias !420

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !420
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.q, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.bg, %bb.q ], [ %i.bg, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !420
  %i.ac = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE16into_boxed_sliceCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c) ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 5 uses
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1      ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.ad, ptr %i.e, align 8
  store i64 %i.ae, ptr %i.g, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = trunc nuw i64 %1 to i16
  %i.ah = add i16 %i.ag, -1                       ; 3 uses
  store i16 %i.ah, ptr %i.af, align 8
  %i.ai = icmp ugt i64 %.sroa.02.0, %i.h
  br i1 %i.ai, label %bb.j, label %bb.i, !prof !349

bb.g:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !noundef !14
  %i.al = and i16 %i.l, %i.ak
  %i.am = zext i16 %i.al to i64
  %i.an = sub nsw i64 %.sroa.7.049, %i.am
  %i.ao = and i64 %i.an, %i.m
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs84JG9zk80ZV_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs2TJrahNLnPN_22pingora_load_balancing.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.aq = icmp eq ptr %i.n, %i.i
  br i1 %i.aq, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs84JG9zk80ZV_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs2TJrahNLnPN_22pingora_load_balancing.exit.thread, label %bb.c

bb.i:                                             ; preds = %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit
  %.idx57 = shl nuw nsw i64 %.sroa.02.0, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx57 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  %i.at = icmp samesign eq i64 %.sroa.02.0, %i.h
  br i1 %i.at, label %.preheader, label %.lr.ph54

bb.j:                                             ; preds = %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.02.0, i64 noundef %i.h, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %bb.y unwind label %bb.p

.preheader:                                       ; preds = %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.i
  %i.au = icmp eq i64 %.sroa.02.0, 0
  br i1 %i.au, label %._crit_edge, label %.lr.ph56

.lr.ph54:                                         ; preds = %bb.i, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCs2TJrahNLnPN_22pingora_load_balancing.exit
  %.sroa.013.053 = phi ptr [ %i.bh, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCs2TJrahNLnPN_22pingora_load_balancing.exit ], [ %i.ar, %bb.i ] ; 3 uses
  %i.av = load i16, ptr %.sroa.013.053, align 2, !noundef !14 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.053, i64 2
  %i.ax = load i16, ptr %i.aw, align 2, !noundef !14 ; 2 uses
  %.not.i = icmp eq i16 %i.av, -1
  br i1 %.not.i, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph54
  %i.ay = and i16 %i.ax, %i.ah
  %i.az = zext i16 %i.ay to i64
  br label %bb.l

bb.l:                                             ; preds = %.backedge65, %bb.k
  %.sroa.01.0.i = phi i64 [ %i.az, %bb.k ], [ %.sroa.01.0.i.be, %.backedge65 ] ; 4 uses
  %i.ba = icmp ult i64 %.sroa.01.0.i, %i.ae
  br i1 %i.ba, label %bb.m, label %.backedge65

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i
  %i.bc = load i16, ptr %i.bb, align 2, !noalias !423, !noundef !14
  %.not7.i = icmp eq i16 %i.bc, -1
  br i1 %.not7.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = add nuw i64 %.sroa.01.0.i, 1
  br label %.backedge65

.backedge65:                                      ; preds = %bb.n, %bb.l
  %.sroa.01.0.i.be = phi i64 [ %i.bd, %bb.n ], [ 0, %bb.l ]
  br label %bb.l

bb.o:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i ; 2 uses
  store i16 %i.av, ptr %i.be, align 2, !noalias !423
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i16 %i.ax, ptr %i.bf, align 2, !noalias !423
  br label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCs2TJrahNLnPN_22pingora_load_balancing.exit

bb.p:                                             ; preds = %._crit_edge, %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.j, label %common.resume, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, -9223372036854775808) %.idx, i64 noundef 2) #22
  br label %common.resume

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.o, %.lr.ph54
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.053, i64 4 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.as
  br i1 %i.bi, label %.preheader, label %.lr.ph54

.lr.ph56:                                         ; preds = %.preheader, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCs2TJrahNLnPN_22pingora_load_balancing.exit33
  %.sroa.016.055 = phi ptr [ %i.cb, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCs2TJrahNLnPN_22pingora_load_balancing.exit33 ], [ %i.f, %.preheader ] ; 3 uses
  %i.bj = load i16, ptr %.sroa.016.055, align 2, !noundef !14 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.016.055, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !noundef !14 ; 2 uses
end_hunk_1
