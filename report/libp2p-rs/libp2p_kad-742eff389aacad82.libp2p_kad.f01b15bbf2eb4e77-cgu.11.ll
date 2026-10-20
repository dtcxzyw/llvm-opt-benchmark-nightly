Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_kad-742eff389aacad82.libp2p_kad.f01b15bbf2eb4e77-cgu.11?download=true
inline.NumInlined: 86
inline.NumDeleted: 59
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [90 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hex-0.4.3/src/lib.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"Y\00\00\00\00\00\00\00C\01\00\00\15\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"Y\00\00\00\00\00\00\00C\01\00\005\00\00\00" }>, align 8
@3 = private unnamed_addr constant [92 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/collections/btree/node.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"[\00\00\00\00\00\00\00\F0\00\00\00M\00\00\00" }>, align 8
@5 = private unnamed_addr constant [53 x i8] c"assertion failed: edge.height == self.node.height - 1", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"[\00\00\00\00\00\00\00\03\04\00\00\09\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"[\00\00\00\00\00\00\00\13\05\00\00$\00\00\00" }>, align 8
@8 = private unnamed_addr constant [40 x i8] c"assertion failed: src.len() == dst.len()", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"[\00\00\00\00\00\00\00T\07\00\00\05\00\00\00" }>, align 8
@10 = private unnamed_addr constant [97 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/collections/btree/map/entry.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"`\00\00\00\00\00\00\00\D1\01\00\00.\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"[\00\00\00\00\00\00\00\D0\04\00\00#\00\00\00" }>, align 8
@13 = private unnamed_addr constant [32 x i8] c"assertion failed: idx < CAPACITY", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"[\00\00\00\00\00\00\00\9E\02\00\00\09\00\00\00" }>, align 8
@15 = private unnamed_addr constant [48 x i8] c"assertion failed: edge.height == self.height - 1", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"[\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"[\00\00\00\00\00\00\00\BA\02\00\00\09\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCszXe8DT0m9L_3hex15decode_to_sliceRShECskC4O4hr3vz7_10libp2p_kad(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull writeonly captures(address) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %2, 1
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr exact i64 %2, 1
  %.not = icmp eq i64 %i.c, %4
  br i1 %.not, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.e = icmp samesign eq i64 %4, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.f = lshr exact i64 %2, 1
  %i.g = lshr exact i64 %2, 1
  br label %.lr.ph

bb.e:                                             ; preds = %bb.b
  store i32 2, ptr %0, align 8
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %.sroa.056.092 = phi ptr [ %i.h, %bb.v ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.sroa.857.091 = phi i64 [ %i.i, %bb.v ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.056.092, i64 1 ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.857.091, 1
  %i.j = shl nuw nsw i64 %.sroa.857.091, 1        ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.857.091, %i.f
  br i1 %exitcond.not, label %bb.l, label %bb.g

._crit_edge:                                      ; preds = %bb.v, %bb.d
  store i32 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %bb.u, %bb.c, %bb.e, %._crit_edge
  ret void

bb.g:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noundef !4  ; 6 uses
  %i.m = add i8 %i.l, -65
  %or.cond.i = icmp ult i8 %i.m, 6
  br i1 %or.cond.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = add i8 %i.l, -97
  %or.cond1.i = icmp ult i8 %i.n, 6
  br i1 %or.cond1.i, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.o = add nsw i8 %i.l, -55
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.p = add i8 %i.l, -48                         ; 2 uses
  %or.cond2.i = icmp ult i8 %i.p, 10
  br i1 %or.cond2.i, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.q = add nsw i8 %i.l, -87
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #17
  unreachable

bb.m:                                             ; preds = %bb.j
  store i32 0, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.l, ptr %.sroa.431.0..sroa_idx, align 4
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i24 0, ptr %.sroa.532.0..sroa_idx, align 1
  %.sroa.532.sroa.4.0..sroa.532.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %.sroa.532.sroa.4.0..sroa.532.0..sroa_idx.sroa_idx, align 8
  br label %bb.f

bb.n:                                             ; preds = %bb.i, %bb.k, %bb.j
  %.sroa.9.sroa.0.0.ph = phi i8 [ %i.p, %bb.j ], [ %i.q, %bb.k ], [ %i.o, %bb.i ]
  %i.r = shl nuw i8 %.sroa.9.sroa.0.0.ph, 4
  %i.s = or disjoint i64 %i.j, 1                  ; 3 uses
  %exitcond106.not = icmp eq i64 %.sroa.857.091, %i.g
  br i1 %exitcond106.not, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noundef !4  ; 6 uses
  %i.v = add i8 %i.u, -65
  %or.cond.i50 = icmp ult i8 %i.v, 6
  br i1 %or.cond.i50, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = add i8 %i.u, -97
  %or.cond1.i51 = icmp ult i8 %i.w, 6
  br i1 %or.cond1.i51, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.x = add nsw i8 %i.u, -55
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.y = add i8 %i.u, -48                         ; 2 uses
  %or.cond2.i52 = icmp ult i8 %i.y, 10
  br i1 %or.cond2.i52, label %bb.v, label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.z = add nsw i8 %i.u, -87
  br label %bb.v

bb.t:                                             ; preds = %bb.n
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #17
  unreachable

bb.u:                                             ; preds = %bb.r
  store i32 0, ptr %0, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.u, ptr %.sroa.440.0..sroa_idx, align 4
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i24 0, ptr %.sroa.541.0..sroa_idx, align 1
  %.sroa.541.sroa.4.0..sroa.541.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %.sroa.541.sroa.4.0..sroa.541.0..sroa_idx.sroa_idx, align 8
  br label %bb.f

bb.v:                                             ; preds = %bb.q, %bb.s, %bb.r
  %.sroa.9.sroa.063.0.ph = phi i8 [ %i.y, %bb.r ], [ %i.z, %bb.s ], [ %i.x, %bb.q ]
  %i.aa = or i8 %.sroa.9.sroa.063.0.ph, %i.r
  store i8 %i.aa, ptr %.sroa.056.092, align 1
  %i.ab = icmp eq ptr %i.h, %i.d
  br i1 %i.ab, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1y_5query5peers7closest4PeerNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1y_() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1v_5query5peers7closest4PeerEE13new_uninit_inB1v_() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1760
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1770
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4d_11VacantEntryB1D_B2u_E12insert_entry0EB1J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(128) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.089 = alloca [120 x i8], align 8         ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.086 = alloca [152 x i8], align 8         ; 5 uses
  %.sroa.11.i.sroa.0 = alloca [152 x i8], align 8 ; 5 uses
  %.sroa.083 = alloca [120 x i8], align 8         ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.080 = alloca [152 x i8], align 8         ; 6 uses
  %.sroa.11.sroa.0 = alloca [152 x i8], align 8   ; 9 uses
  %.sroa.1154 = alloca [152 x i8], align 8        ; 5 uses
  %.sroa.1134 = alloca [152 x i8], align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.080)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !109, !nonnull !4, !noundef !4 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1770 ; 4 uses
  %i.e = load i16, ptr %i.d, align 2, !noalias !110, !noundef !4 ; 3 uses
  %i.f = icmp ult i16 %i.e, 11
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !109, !noundef !4 ; 6 uses
  %i.i = icmp ult i64 %i.h, 5
  br i1 %i.i, label %bb.h, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.j = zext nneg i16 %i.e to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1408 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !112, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %i.n, %i.j
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.m ; 3 uses
  br i1 %.not.i.i, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceEB1a_.exit.i.i, label %bb.d

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceEB1a_.exit.i.i: ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !alias.scope !114, !noalias !115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  br label %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.n
  %i.q = sub nsw i64 %i.j, %i.m                   ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o, i64 %i.r, i1 false), !alias.scope !117, !noalias !118
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !alias.scope !114, !noalias !115
  %i.s = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %i.m
  %i.t = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %i.n
  %i.u = shl nuw nsw i64 %i.q, 7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !alias.scope !119, !noalias !118
  br label %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit.thread

_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit.thread: ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceEB1a_.exit.i.i, %bb.d
  %6 = add nuw nsw i16 %i.e, 1
  %i.v = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(128) %3, i64 128, i1 false), !alias.scope !120, !noalias !121
  store i16 %6, ptr %i.d, align 2, !noalias !118
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !112, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080)
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.f [
    i64 5, label %bb.h
    i64 6, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = add i64 %i.h, -7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.b ], [ false, %bb.e ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.g ], [ %i.y, %bb.f ], [ %i.h, %bb.b ], [ %i.h, %bb.e ] ; 9 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.g ], [ 6, %bb.f ], [ 4, %bb.b ], [ %i.h, %bb.e ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !109, !noundef !4 ; 3 uses
  %i.ab = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1v_5query5peers7closest4PeerEE13new_uninit_inB1v_(), !noalias !122 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1760
  store ptr null, ptr %i.ac, align 8, !noalias !122
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1770 ; 2 uses
  store i16 0, ptr %i.ad, align 2, !noalias !122
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.ae = load i16, ptr %i.d, align 2, !noalias !124, !noundef !4
  %i.af = zext i16 %i.ae to i64
  %i.ag = xor i64 %.sroa.013.0.i, -1
  %i.ah = add nsw i64 %i.af, %i.ag                ; 5 uses
  %i.ai = trunc i64 %i.ah to i16
  store i16 %i.ai, ptr %i.ad, align 2, !alias.scope !123, !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 1408 ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.083)
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %.sroa.013.0.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.083, ptr noundef nonnull align 8 dereferenceable(120) %i.al, i64 120, i1 false), !noalias !124
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %.sroa.484.0.copyload = load i32, ptr %.sroa.484.0..sroa_idx, align 8, !noalias !124 ; 3 uses
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 124
  %.sroa.585.0.copyload = load i32, ptr %.sroa.585.0..sroa_idx, align 4, !noalias !124 ; 2 uses
  %i.am = icmp ult i64 %i.ah, 12
  br i1 %i.am, label %_RINvMsV_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1J_.exit.i, label %bb.i, !prof !125

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ah, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #17
          to label %.noexc.i.i unwind label %bb.j, !noalias !122

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

common.resume:                                    ; preds = %bb.al, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.j ], [ %i.gm, %bb.al ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 1776, i64 noundef 8) #18, !noalias !122
  br label %common.resume

_RINvMsV_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1J_.exit.i: ; preds = %bb.h
  %i.ao = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 1408
  %i.ar = shl nuw nsw i64 %i.ah, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr nonnull readonly align 8 %i.ap, i64 %i.ar, i1 false), !alias.scope !126, !noalias !127
  %i.as = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %i.ao
  %i.at = shl nuw nsw i64 %i.ah, 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1776) %i.ab, ptr nonnull readonly align 8 %i.as, i64 %i.at, i1 false), !alias.scope !128, !noalias !127
  %i.au = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.au, ptr %i.d, align 2, !noalias !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.080, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !110
  %.sroa.080.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.080, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.080.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.083, i64 120, i1 false), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.083)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.aa ; 3 uses
  %spec.select37.i = select i1 %.sroa.09.0.i, ptr %i.ab, ptr %i.c ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %spec.select37.i, i64 1770 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !noalias !129, !noundef !4 ; 2 uses
  %i.ax = zext i16 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %spec.select37.i, i64 1408 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %.not.i14.not.i = icmp ult i64 %.sroa.510.0.i, %i.ax
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i14.not.i, label %bb.k, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceEB1a_.exit.i15.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceEB1a_.exit.i15.i: ; preds = %_RINvMsV_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1J_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !alias.scope !131, !noalias !132
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  br label %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit

bb.k:                                             ; preds = %_RINvMsV_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1J_.exit.i
  %i.ba = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.ba
  %i.bc = sub nuw nsw i64 %i.ax, %.sroa.510.0.i   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull align 8 %i.az, i64 %i.bd, i1 false), !alias.scope !134, !noalias !129
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !alias.scope !131, !noalias !132
  %i.be = getelementptr inbounds nuw [128 x i8], ptr %spec.select37.i, i64 %.sroa.510.0.i
  %i.bf = getelementptr inbounds nuw [128 x i8], ptr %spec.select37.i, i64 %i.ba
  %i.bg = shl nuw nsw i64 %i.bc, 7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bf, ptr nonnull align 8 %i.be, i64 %i.bg, i1 false), !alias.scope !135, !noalias !129
  br label %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit

_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit: ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceEB1a_.exit.i15.i, %bb.k
  %7 = add i16 %i.aw, 1
  %i.bh = getelementptr inbounds nuw [128 x i8], ptr %spec.select37.i, i64 %.sroa.510.0.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(128) %3, i64 128, i1 false), !alias.scope !136, !noalias !137
  store i16 %7, ptr %i.av, align 2, !noalias !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.1134, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.080, i64 152, i1 false), !noalias !138
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080)
  %.not = icmp eq i32 %.sroa.484.0.copyload, -1
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.11.sroa.0, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.1134, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1134)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 1760
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !139, !noundef !4 ; 2 uses
  %.not.i177 = icmp eq ptr %i.bj, null
  br i1 %.not.i177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %.sroa.11.sroa.0.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.sroa.0, i64 32 ; 4 uses
  %.sroa.086.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.086, i64 32
  %i.bk = icmp eq i64 %i.aa, 0
  br label %bb.w

bb.m:                                             ; preds = %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit.thread, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit
  %.sink.i105 = phi i64 [ %i.m, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit.thread ], [ %.sroa.510.0.i, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit ]
  %.sink44.i104 = phi i64 [ %i.x, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit.thread ], [ %spec.select.i, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit ]
  %.sink45.i103 = phi ptr [ %i.c, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit.thread ], [ %spec.select37.i, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit ]
  store ptr %.sink45.i103, ptr %0, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink44.i104, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i105, ptr %i.bm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1134)
  br label %bb.as

._crit_edge:                                      ; preds = %bb.ar, %bb.l
  %.sroa.11.sroa.9.0.lcssa = phi i32 [ %.sroa.585.0.copyload, %bb.l ], [ %.sroa.591.0.copyload, %bb.ar ]
  %.sroa.11.sroa.8.0.lcssa = phi i32 [ %.sroa.484.0.copyload, %bb.l ], [ %.sroa.490.0.copyload, %bb.ar ]
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.l ], [ %i.cq, %bb.ar ]
  %.sroa.7.0.lcssa = phi ptr [ %i.ab, %bb.l ], [ %i.fl, %bb.ar ] ; 3 uses
  %.val = load ptr, ptr %4, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.bn = load ptr, ptr %.val, align 8, !noalias !140, !noundef !4 ; 4 uses
  %.not.i28 = icmp eq ptr %i.bn, null
  br i1 %.not.i28, label %bb.v, label %bb.n, !prof !141

bb.n:                                             ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !142, !noalias !140, !noundef !4 ; 2 uses
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1A_5query5peers7closest4PeerEE13new_uninit_inB1A_()
          to label %.noexc.i.i29 unwind label %bb.r, !noalias !143 ; 9 uses

.noexc.i.i29:                                     ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1760
  store ptr null, ptr %i.br, align 8, !noalias !143
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1770 ; 3 uses
  store i16 0, ptr %i.bs, align 2, !noalias !143
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 1776 ; 2 uses
  store ptr %i.bn, ptr %i.bt, align 8, !noalias !143
  %i.bu = add i64 %i.bp, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1J_.exit.i, !prof !141

bb.o:                                             ; preds = %.noexc.i.i29
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19
          to label %bb.p unwind label %bb.q, !noalias !143

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef 1872, i64 noundef 8) #18, !noalias !143
  br label %.body.i.i

bb.r:                                             ; preds = %bb.n
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.r, %bb.q
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1J_.exit.i: ; preds = %.noexc.i.i29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 1760
  store ptr %i.bq, ptr %i.bx, align 8, !noalias !144
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 1768
  store i16 0, ptr %i.by, align 8, !noalias !145
  store ptr %i.bq, ptr %.val, align 8, !alias.scope !142, !noalias !140
  store i64 %i.bu, ptr %i.bo, align 8, !alias.scope !142, !noalias !140
  %i.bz = icmp eq i64 %.sroa.9.0.lcssa, %i.bp
  br i1 %i.bz, label %bb.t, label %bb.s, !prof !5

bb.s:                                             ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1J_.exit.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #17, !noalias !146
  unreachable

bb.t:                                             ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1J_.exit.i
  %i.ca = load i16, ptr %i.bs, align 2, !noalias !146, !noundef !4 ; 3 uses
  %i.cb = icmp ult i16 %i.ca, 11
  br i1 %i.cb, label %_RNCNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1r_5query5peers7closest4PeerE12insert_entry0B1r_.exit, label %bb.u, !prof !5

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #17, !noalias !146
  unreachable

bb.v:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #17, !noalias !140
  unreachable

_RNCNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1r_5query5peers7closest4PeerE12insert_entry0B1r_.exit: ; preds = %bb.t
  %i.cc = zext nneg i16 %i.ca to i64              ; 3 uses
  %i.cd = add nuw nsw i16 %i.ca, 1
  store i16 %i.cd, ptr %i.bs, align 2, !noalias !146
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 1408
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.sroa.0, i64 32, i1 false)
  %i.cg = getelementptr inbounds nuw [128 x i8], ptr %i.bq, i64 %i.cc ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.11.sroa.0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cg, ptr noundef nonnull align 8 dereferenceable(120) %i.ch, i64 120, i1 false)
  %.sroa.860.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 120
  store i32 %.sroa.11.sroa.8.0.lcssa, ptr %.sroa.860.sroa.5.32..sroa_idx, align 8
  %.sroa.860.sroa.6.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 124
  store i32 %.sroa.11.sroa.9.0.lcssa, ptr %.sroa.860.sroa.6.32..sroa_idx, align 4
  %i.ci = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.ci
  store ptr %.sroa.7.0.lcssa, ptr %i.cj, align 8, !noalias !146
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa, i64 1760
  store ptr %i.bq, ptr %i.ck, align 8, !noalias !146
  %i.cl = trunc nuw nsw i64 %i.ci to i16
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa, i64 1768
  store i16 %i.cl, ptr %i.cm, align 8, !noalias !146
  store ptr %spec.select37.i, ptr %0, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.co, align 8
  br label %bb.as

bb.w:                                             ; preds = %.lr.ph, %bb.ar
  %i.cp = phi ptr [ %i.bj, %.lr.ph ], [ %i.ke, %bb.ar ] ; 25 uses
  %.sroa.0.0183 = phi ptr [ %i.c, %.lr.ph ], [ %i.cp, %bb.ar ]
  %.sroa.6.0182 = phi i64 [ %i.aa, %.lr.ph ], [ %i.cq, %bb.ar ]
  %.sroa.7.0181 = phi ptr [ %i.ab, %.lr.ph ], [ %i.fl, %bb.ar ] ; 2 uses
  %.sroa.9.0180 = phi i1 [ %i.bk, %.lr.ph ], [ true, %bb.ar ]
  %.sroa.11.sroa.8.0179 = phi i32 [ %.sroa.484.0.copyload, %.lr.ph ], [ %.sroa.490.0.copyload, %bb.ar ] ; 4 uses
  %.sroa.11.sroa.9.0178 = phi i32 [ %.sroa.585.0.copyload, %.lr.ph ], [ %.sroa.591.0.copyload, %bb.ar ] ; 4 uses
  %i.cq = add i64 %.sroa.6.0182, 1                ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0183, i64 1768
  %i.cs = load i16, ptr %i.cr, align 8, !noalias !139 ; 4 uses
  %i.ct = zext i16 %i.cs to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1154)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.sroa.0)
  br i1 %.sroa.9.0180, label %bb.y, label %bb.x, !prof !5

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17, !noalias !147
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 1770 ; 4 uses
  %i.cv = load i16, ptr %i.cu, align 2, !noalias !147, !noundef !4 ; 5 uses
  %i.cw = icmp ult i16 %i.cv, 11
  br i1 %i.cw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = icmp ult i16 %i.cs, 5
  br i1 %i.cx, label %bb.af, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.cy = zext nneg i16 %i.cv to i64              ; 5 uses
  %i.cz = add nuw nsw i16 %i.cv, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 1408 ; 2 uses
  %i.db = add nuw nsw i64 %i.ct, 1                ; 7 uses
  %.not.i.i32.not = icmp ult i16 %i.cs, %i.cv
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %i.ct ; 3 uses
  br i1 %.not.i.i32.not, label %bb.ab, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closest4PeerEB1c_.exit.i.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closest4PeerEB1c_.exit.i.i: ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.sroa.0, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.dd = getelementptr inbounds nuw [128 x i8], ptr %i.cp, i64 %i.ct ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dd, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.11.sroa.0.32..sroa_idx, i64 120, i1 false)
  %.sroa.667.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.dd, i64 120
  store i32 %.sroa.11.sroa.8.0179, ptr %.sroa.667.0..sroa_idx70, align 8, !alias.scope !149, !noalias !150
  %.sroa.772.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.dd, i64 124
  store i32 %.sroa.11.sroa.9.0178, ptr %.sroa.772.0..sroa_idx75, align 4, !alias.scope !149, !noalias !150
  br label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2a_5query5peers7closest4PeerEEEB2a_.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %i.db
  %i.df = sub nuw nsw i64 %i.cy, %i.ct            ; 2 uses
  %i.dg = shl nuw nsw i64 %i.df, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.de, ptr nonnull align 8 %i.dc, i64 %i.dg, i1 false), !alias.scope !151, !noalias !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.sroa.0, i64 32, i1 false)
  %i.dh = getelementptr inbounds nuw [128 x i8], ptr %i.cp, i64 %i.ct
  %i.di = getelementptr inbounds nuw [128 x i8], ptr %i.cp, i64 %i.db
  %i.dj = shl nuw nsw i64 %i.df, 7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr nonnull align 8 %i.dh, i64 %i.dj, i1 false), !alias.scope !153, !noalias !152
  %i.dk = getelementptr inbounds nuw [128 x i8], ptr %i.cp, i64 %i.ct ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dk, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.11.sroa.0.32..sroa_idx, i64 120, i1 false)
  %.sroa.667.0..sroa_idx70288 = getelementptr inbounds nuw i8, ptr %i.dk, i64 120
  store i32 %.sroa.11.sroa.8.0179, ptr %.sroa.667.0..sroa_idx70288, align 8, !alias.scope !149, !noalias !150
  %.sroa.772.0..sroa_idx75289 = getelementptr inbounds nuw i8, ptr %i.dk, i64 124
  store i32 %.sroa.11.sroa.9.0178, ptr %.sroa.772.0..sroa_idx75289, align 4, !alias.scope !149, !noalias !150
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cp, i64 1776 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.db
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.ct
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = sub nuw nsw i64 %i.cy, %i.ct
  %i.dq = shl nuw nsw i64 %i.dp, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.do, ptr nonnull align 8 %i.dm, i64 %i.dq, i1 false), !alias.scope !154, !noalias !152
  br label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2a_5query5peers7closest4PeerEEEB2a_.exit.i.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2a_5query5peers7closest4PeerEEEB2a_.exit.i.i: ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closest4PeerEB1c_.exit.i.i, %bb.ab
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cp, i64 1776
  %i.ds = add nuw nsw i64 %i.cy, 2                ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.db
  store ptr %.sroa.7.0181, ptr %i.dt, align 8, !alias.scope !154, !noalias !152
  store i16 %i.cz, ptr %i.cu, align 2, !noalias !152
  %i.du = icmp samesign ult i64 %i.db, %i.ds
  br i1 %i.du, label %.lr.ph.i.i.i.preheader, label %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit.thread

.lr.ph.i.i.i.preheader:                           ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2a_5query5peers7closest4PeerEEEB2a_.exit.i.i
  %i.dv = add nuw nsw i64 %i.cy, 1
  %i.dw = sub nsw i64 %i.dv, %i.ct
  %i.dx = sub nsw i64 %i.cy, %i.ct
  %xtraiter530 = and i64 %i.dw, 3                 ; 2 uses
  %lcmp.mod531.not = icmp eq i64 %xtraiter530, 0
  br i1 %lcmp.mod531.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cp, i64 1776
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i.i.prol ], [ %i.db, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter532 = phi i64 [ %prol.iter532.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.dz = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.ea = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.sroa.0.06.i.i.i.prol
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !152, !nonnull !4, !noundef !4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1760
  store ptr %i.cp, ptr %i.ed, align 8, !noalias !152
  %i.ee = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 1768
  store i16 %i.ee, ptr %i.ef, align 8, !noalias !152
  %prol.iter532.next = add i64 %prol.iter532, 1   ; 2 uses
  %prol.iter532.cmp.not = icmp eq i64 %prol.iter532.next, %xtraiter530
  br i1 %prol.iter532.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !76

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.db, %.lr.ph.i.i.i.preheader ], [ %i.dz, %.lr.ph.i.i.i.prol ]
  %i.eg = icmp ult i64 %i.dx, 3
  br i1 %i.eg, label %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit.thread, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cp, i64 1776
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cp, i64 1776
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cp, i64 1776
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cp, i64 1776
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.fd, %.lr.ph.i.i.i ] ; 7 uses
  %i.el = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.sroa.0.06.i.i.i
  %i.en = load ptr, ptr %i.em, align 8, !noalias !152, !nonnull !4, !noundef !4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1760
  store ptr %i.cp, ptr %i.eo, align 8, !noalias !152
  %i.ep = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 1768
  store i16 %i.ep, ptr %i.eq, align 8, !noalias !152
  %i.er = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.el
  %i.et = load ptr, ptr %i.es, align 8, !noalias !152, !nonnull !4, !noundef !4 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1760
  store ptr %i.cp, ptr %i.eu, align 8, !noalias !152
  %i.ev = trunc nuw nsw i64 %i.el to i16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 1768
  store i16 %i.ev, ptr %i.ew, align 8, !noalias !152
  %i.ex = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.er
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !152, !nonnull !4, !noundef !4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1760
  store ptr %i.cp, ptr %i.fa, align 8, !noalias !152
  %i.fb = trunc nuw nsw i64 %i.er to i16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 1768
  store i16 %i.fb, ptr %i.fc, align 8, !noalias !152
  %i.fd = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fe = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ex
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !152, !nonnull !4, !noundef !4 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1760
  store ptr %i.cp, ptr %i.fh, align 8, !noalias !152
  %i.fi = trunc nuw nsw i64 %i.ex to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 1768
  store i16 %i.fi, ptr %i.fj, align 8, !noalias !152
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.fd, %i.ds
  br i1 %exitcond.not.i.i.i.3, label %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1J_.exit.thread, label %.lr.ph.i.i.i

bb.ac:                                            ; preds = %bb.z
  switch i16 %i.cs, label %bb.ad [
    i16 5, label %bb.af
    i16 6, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.fk = add nsw i64 %i.ct, -7
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.z
  %.sroa.06.0.i = phi i64 [ 5, %bb.ae ], [ 6, %bb.ad ], [ 4, %bb.z ], [ 5, %bb.ac ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ae ], [ %i.fk, %bb.ad ], [ %i.ct, %bb.z ], [ 5, %bb.ac ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ae ], [ true, %bb.ad ], [ false, %bb.z ], [ false, %bb.ac ]
  %i.fl = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1A_5query5peers7closest4PeerEE13new_uninit_inB1A_(), !noalias !155 ; 14 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1760
  store ptr null, ptr %i.fm, align 8, !noalias !155
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 1770 ; 3 uses
  store i16 0, ptr %i.fn, align 2, !noalias !155
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.fo = load i16, ptr %i.cu, align 2, !noalias !157, !noundef !4
  %i.fp = zext i16 %i.fo to i64
  %i.fq = xor i64 %.sroa.06.0.i, -1
  %i.fr = add nsw i64 %i.fp, %i.fq                ; 5 uses
  %i.fs = trunc i64 %i.fr to i16
  store i16 %i.fs, ptr %i.fn, align 2, !alias.scope !156, !noalias !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cp, i64 1408 ; 2 uses
  %i.fu = getelementptr inbounds nuw [32 x i8], ptr %i.ft, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.fu, i64 32, i1 false), !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.089)
  %i.fv = getelementptr inbounds nuw [128 x i8], ptr %i.cp, i64 %.sroa.06.0.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.089, ptr noundef nonnull align 8 dereferenceable(120) %i.fv, i64 120, i1 false), !noalias !157
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 120
  %.sroa.490.0.copyload = load i32, ptr %.sroa.490.0..sroa_idx, align 8, !noalias !157 ; 3 uses
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 124
  %.sroa.591.0.copyload = load i32, ptr %.sroa.591.0..sroa_idx, align 4, !noalias !157 ; 2 uses
  %i.fw = icmp ult i64 %i.fr, 12
  br i1 %i.fw, label %bb.ah, label %bb.ag, !prof !125

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fr, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #17
          to label %.noexc.i.i30 unwind label %bb.al, !noalias !155

.noexc.i.i30:                                     ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.fx = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %i.ft, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fl, i64 1408
  %i.ga = shl nuw nsw i64 %i.fr, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fz, ptr nonnull readonly align 8 %i.fy, i64 %i.ga, i1 false), !alias.scope !158, !noalias !159
  %i.gb = getelementptr inbounds nuw [128 x i8], ptr %i.cp, i64 %i.fx
  %i.gc = shl nuw nsw i64 %i.fr, 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1776) %i.fl, ptr nonnull readonly align 8 %i.gb, i64 %i.gc, i1 false), !alias.scope !160, !noalias !159
  %i.gd = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gd, ptr %i.cu, align 2, !noalias !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.086, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.086.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.089, i64 120, i1 false), !noalias !161
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.089)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ge = load i16, ptr %i.fn, align 2, !noalias !155, !noundef !4 ; 3 uses
  %i.gf = zext i16 %i.ge to i64
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 5 uses
  %i.gh = icmp ult i16 %i.ge, 12
  br i1 %i.gh, label %bb.ai, label %bb.ak, !prof !125

bb.ai:                                            ; preds = %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fl, i64 1776 ; 6 uses
end_hunk_0
