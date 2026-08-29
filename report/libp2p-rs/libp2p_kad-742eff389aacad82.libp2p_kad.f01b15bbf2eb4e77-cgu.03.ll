Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_kad-742eff389aacad82.libp2p_kad.f01b15bbf2eb4e77-cgu.03?download=true
inline.NumInlined: 166
inline.NumDeleted: 104
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtCsbli3iz7XG76_9multiaddr9MultiaddrNtB6_5Debug3fmtCskC4O4hr3vz7_10libp2p_kad }>, align 8
@1 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCskC4O4hr3vz7_10libp2p_kad5proto6dht_pb7message4PeerNtB6_5Debug3fmtBE_ }>, align 8
@2 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCskC4O4hr3vz7_10libp2p_kad }>, align 8
@_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@3 = private unnamed_addr constant [96 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/collections/btree/navigate.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"_\00\00\00\00\00\00\000\02\00\00/\00\00\00" }>, align 8
@5 = private unnamed_addr constant [4 x i8] c"s.a.", align 1
@6 = private unnamed_addr constant [27 x i8] c"protocols/kad/src/query.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"\1A\00\00\00\00\00\00\00\E2\00\00\00<\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"\1A\00\00\00\00\00\00\00\D7\00\00\009\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"\1A\00\00\00\00\00\00\00\DC\00\00\00<\00\00\00" }>, align 8
@10 = private unnamed_addr constant [41 x i8] c"protocols/kad/src/query/peers/closest.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"(\00\00\00\00\00\00\00d\01\00\00'\00\00\00" }>, align 8
@12 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCskC4O4hr3vz7_10libp2p_kad, align 8
@13 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@14 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @13, [24 x i8] zeroinitializer }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"_\00\00\00\00\00\00\00\AD\00\00\00$\00\00\00" }>, align 8
@16 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtNtBa_5slice4iter4IterB14_EECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCskC4O4hr3vz7_10libp2p_kad5proto6dht_pb7message4PeerINtNtNtBa_5slice4iter4IterB14_EEB1c_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !4
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !4
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEBb_(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 14 uses
  %.sroa.3 = alloca [8 x i8], align 8             ; 6 uses
  %.sroa.7 = alloca [8 x i8], align 8             ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [112 x i8], align 8               ; 4 uses
  %i.h = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq i64 %i.h, 2
  br i1 %i.j, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_EBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryB1d_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = load ptr, ptr %i.f, align 8, !noundef !6
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  store ptr %i.q, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load <2 x i64>, ptr %i.p, align 8
  store <2 x i64> %i.s, ptr %i.r, align 8
  %i.t = call { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1K_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB1K_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  %i.u = extractvalue { ptr, ptr } %i.t, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.w = load i32, ptr %i.v, align 8, !range !7, !noundef !6 ; 3 uses
  %i.x = icmp ne i32 %i.w, 1000000001
  call void @llvm.assume(i1 %i.x)
  %i.y = add nsw i32 %i.w, -1000000000
  %i.z = icmp samesign ugt i32 %i.w, 999999999
  %narrow = select i1 %i.z, i32 %i.y, i32 1
  switch i32 %narrow, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.f
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.b, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.sink.split

default.unreachable56:                            ; preds = %.critedge
  unreachable

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ac = add i64 %i.ab, -1
  store i64 %i.ac, ptr %i.aa, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.ad = call { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutB1I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.ae = extractvalue { ptr, ptr } %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store i32 1000000004, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !8, !noundef !6 ; 2 uses
  %i.aj = add i64 %i.ai, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ak = load ptr, ptr %i.l, align 8, !noundef !6 ; 3 uses
  %.not = icmp ne ptr %i.ak, null                 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8
  %.sroa.05.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.05.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.am, i64 undef ; 2 uses
  %.sroa.56.0 = select i1 %.not, i64 %i.ao, i64 0
  store i64 %.sroa.05.sroa.0.0, ptr %i.d, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ak, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.05.sroa.0.0, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr null, ptr %.sroa.05.sroa.7.0..sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.ak, ptr %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  store i64 0, ptr %i.ap, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !9)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.aq = call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2e_5query5peers7closest4PeerENtB4_13SpecAdvanceBy15spec_advance_byB2e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef range(i64 0, -1) %i.aj), !noalias !9
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthB13_.exit.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthB28_.exit

_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthB13_.exit.i: ; preds = %bb.h
  %i.ar = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d), !noalias !9 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthB28_.exit, label %bb.i

bb.i:                                             ; preds = %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthB13_.exit.i
  %i.at = extractvalue { ptr, ptr } %i.ar, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.au = load i64, ptr %i.ap, align 8, !alias.scope !12, !noalias !9, !noundef !6
  %i.av = add i64 %i.au, %i.ai
  store i64 %i.av, ptr %i.ap, align 8, !alias.scope !12, !noalias !9
  store ptr %i.as, ptr %.sroa.3, align 8, !alias.scope !9, !noalias !12
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthB28_.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthB28_.exit: ; preds = %bb.h, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthB13_.exit.i, %bb.i
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.7, %bb.i ], [ %.sroa.3, %bb.h ], [ %.sroa.3, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthB13_.exit.i ]
  %.sink.i = phi ptr [ %i.at, %bb.i ], [ null, %bb.h ], [ null, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthB13_.exit.i ]
  store ptr %.sink.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !9, !noalias !12
  %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. = load ptr, ptr %.sroa.3, align 8
  %.not44 = icmp eq ptr %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  br i1 %.not44, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthB28_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20
  %i.aw = load ptr, ptr %i.l, align 8, !alias.scope !22, !noalias !23, !noundef !6 ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i51, label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Bd_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load i64, ptr %i.al, align 8, !alias.scope !22, !noalias !23, !noundef !6 ; 2 uses
  %i.ay = load i64, ptr %i.an, align 8, !alias.scope !22, !noalias !23, !noundef !6
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !20
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.aw, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !20
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ax, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !20
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !20
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.aw, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !20
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.ax, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !20
  br label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Bd_.exit.i

_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Bd_.exit.i: ; preds = %bb.k, %bb.j
  %.sink19.i.i = phi i64 [ 1, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.sink.i.i = phi i64 [ %i.ay, %bb.k ], [ 0, %bb.j ]
  store i64 %.sink19.i.i, ptr %i.a, align 8, !noalias !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink19.i.i, ptr %i.az, align 8, !noalias !20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink.i.i, ptr %i.ba, align 8, !noalias !20
  %i.bb = call { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20
  br label %.critedge

.critedge:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthB28_.exit, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Bd_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bc = load i64, ptr %i.an, align 8, !noundef !6
  %i.bd = load i64, ptr %i.ah, align 8, !range !8, !noundef !6
  %i.be = icmp uge i64 %i.bc, %i.bd               ; 2 uses
  %i.bf = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  switch i64 %i.bf, label %default.unreachable56 [
    i64 0, label %bb.l
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

bb.l:                                             ; preds = %.critedge
  %i.bg = load i64, ptr %i.i, align 8
  %i.bh = add i64 %i.bg, 1
  %.sroa.011.0 = select i1 %i.be, i64 %i.bh, i64 0 ; 2 uses
  %i.bi = load i64, ptr %i.ag, align 8, !range !8, !noundef !6
  %.not46 = icmp uge i64 %.sroa.011.0, %i.bi
  %spec.select49 = zext i1 %.not46 to i64
  br label %bb.n

bb.m:                                             ; preds = %.critedge
  %.47 = zext i1 %i.be to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.critedge, %bb.m
  %.sroa.8.0 = phi i64 [ %.sroa.011.0, %bb.l ], [ undef, %.critedge ], [ 0, %bb.m ]
  %.sroa.010.0 = phi i64 [ %spec.select49, %bb.l ], [ %i.bf, %.critedge ], [ %.47, %bb.m ]
  store i64 %.sroa.010.0, ptr %0, align 8
  store i64 %.sroa.8.0, ptr %i.i, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.d
  %.sroa.0.1.ph = phi i1 [ true, %bb.n ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.1 = phi i1 [ false, %bb.a ], [ %.sroa.0.1.ph, %.sink.split ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskC4O4hr3vz7_10libp2p_kad.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskC4O4hr3vz7_10libp2p_kad.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !33, !noundef !6
  %i.d = load ptr, ptr %i.a, align 8, !alias.scope !33, !nonnull !6, !align !34, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !33, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !33, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !33, !noundef !6
  invoke void %i.f(ptr noundef %i.c, ptr noundef %i.h, i64 noundef %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit unwind label %bb.b, !inline_history !35

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #18
          to label %common.resume unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit: ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record6RecordEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !45, !noundef !6
end_hunk_0
