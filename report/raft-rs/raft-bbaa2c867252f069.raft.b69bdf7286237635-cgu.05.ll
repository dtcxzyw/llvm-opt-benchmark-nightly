Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft-bbaa2c867252f069.raft.b69bdf7286237635-cgu.05?download=true
inline.NumInlined: 84
inline.NumDeleted: 49
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [23 x i8] c"src/quorum/majority.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\16\00\00\00\00\00\00\00\\\00\00\00\1F\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\16\00\00\00\00\00\00\00b\00\00\00\1C\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\16\00\00\00\00\00\00\00Q\00\00\00\11\00\00\00" }>, align 8
@4 = private unnamed_addr constant [4 x i8] c"case", align 1
@5 = private unnamed_addr constant [46 x i8] c"+updating progress state in unhandled state \C0\00", align 1
@6 = private unnamed_addr constant [24 x i8] c"src/tracker/progress.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"\17\00\00\00\00\00\00\00\EC\00\00\00(\00\00\00" }>, align 8
@_RNvNvCsfG1pxJcRFT5_4raft14default_logger18LOGGER_INITIALIZED = internal global <{ [32 x i8], [4 x i8], [4 x i8] }> <{ [32 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@8 = private unnamed_addr constant [1 x i8] c" ", align 1
@9 = private unnamed_addr constant [6 x i8] c"\01(\C0\01)\00", align 1
@10 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEENtB6_5Debug3fmtCsfG1pxJcRFT5_4raft }>, align 8
@11 = private unnamed_addr constant [13 x i8] c"Configuration", align 1
@12 = private unnamed_addr constant [6 x i8] c"voters", align 1
@13 = private unnamed_addr constant [5 x i8] c"Probe", align 1
@14 = private unnamed_addr constant [9 x i8] c"Replicate", align 1
@15 = private unnamed_addr constant [8 x i8] c"Snapshot", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfG1pxJcRFT5_4raft, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCsfG1pxJcRFT5_4raft }>, align 8
@switch.table._RNvXs_NtNtCsfG1pxJcRFT5_4raft7tracker5stateNtB4_13ProgressStateNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\05\09\08", align 8
@switch.table._RNvXs_NtNtCsfG1pxJcRFT5_4raft7tracker5stateNtB4_13ProgressStateNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.14 = private unnamed_addr constant [3 x ptr] [ptr @13, ptr @14, ptr @15], align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvMs_NtNtCsfG1pxJcRFT5_4raft6quorum8majorityNtB5_13Configuration11vote_resultNCNvMs0_NtB9_7trackerNtB1n_15ProgressTracker10has_quorum0EB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE4iterCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not15 = icmp eq ptr %i.g, null
  br i1 %.not15, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !24, !noundef !4
  %i.j = icmp eq i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !nonnull !4   ; 2 uses
  br i1 %i.j, label %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit.us, label %.lr.ph.split

_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit.us: ; preds = %.lr.ph, %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit.us
  %.sroa.04.016.us = phi i64 [ %.sroa.04.1.us, %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit.us ], [ 0, %.lr.ph ]
  %.sroa.04.1.us = add i64 %.sroa.04.016.us, 1    ; 2 uses
  %i.o = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.p = extractvalue { ptr, ptr } %i.o, 0
  %.not.us = icmp eq ptr %i.p, null
  br i1 %.not.us, label %._crit_edge.thread, label %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit
  %i.q = phi ptr [ %i.as, %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit ], [ %i.g, %.lr.ph ]
  %.sroa.01.017 = phi i64 [ %.sroa.01.1, %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit ], [ 0, %.lr.ph ]
  %.sroa.04.016 = phi i64 [ %.sroa.04.1, %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit ], [ 0, %.lr.ph ]
  %i.r = load i64, ptr %i.q, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.r, ptr %i.a, align 8
  %i.s = call noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.lr.ph.split ], [ %i.an, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.s, %.lr.ph.split ], [ %i.ao, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.m  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.x, align 1, !noalias !25 ; 2 uses
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.w
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.am, %bb.d ], [ %i.z, %bb.c ] ; 3 uses
  %i.aa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.01.0.i.i.i.i, %i.ab
  %i.ad = and i64 %i.ac, %i.m
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ah = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag), !noalias !26
  br i1 %i.ah, label %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit, label %bb.d, !prof !5

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.ai = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.aj = bitcast <16 x i1> %i.ai to i16
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit, !prof !6

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.al = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.am = and i16 %i.al, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.an = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.ao = add i64 %.sroa.01.0.i.i.i.i, %i.an
  br label %bb.c

_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit: ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i.i
  %.not13 = phi i1 [ false, %.lr.ph.i.i.i ], [ true, %._crit_edge.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = zext i1 %.not13 to i64
  %.sroa.04.1 = add i64 %.sroa.04.016, %i.ap      ; 2 uses
  %not..not13 = xor i1 %.not13, true
  %i.aq = zext i1 %not..not13 to i64
  %.sroa.01.1 = add i64 %.sroa.01.017, %i.aq      ; 3 uses
  %i.ar = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.as = extractvalue { ptr, ptr } %i.ar, 0      ; 2 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge.thread:                               ; preds = %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit.us, %bb.b
  %.sroa.04.0.lcssa.ph = phi i64 [ 0, %bb.b ], [ %.sroa.04.1.us, %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.at = lshr i64 %i.d, 1
  %2 = add nuw i64 %i.at, 1
  br label %bb.f

._crit_edge:                                      ; preds = %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.au = lshr i64 %i.d, 1
  %3 = add nuw i64 %i.au, 1                       ; 2 uses
  %.not11 = icmp ult i64 %.sroa.01.1, %3
  br i1 %.not11, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.av = phi i64 [ %2, %._crit_edge.thread ], [ %3, %._crit_edge ]
  %.sroa.01.0.lcssa31 = phi i64 [ 0, %._crit_edge.thread ], [ %.sroa.01.1, %._crit_edge ]
  %.sroa.04.0.lcssa30 = phi i64 [ %.sroa.04.0.lcssa.ph, %._crit_edge.thread ], [ %.sroa.04.1, %._crit_edge ]
  %i.aw = add i64 %.sroa.01.0.lcssa31, %.sroa.04.0.lcssa30
  %.not12 = icmp ult i64 %i.aw, %i.av
  %. = zext i1 %.not12 to i8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f, %bb.a
  %.sroa.0.0 = phi i8 [ 2, %._crit_edge ], [ %., %bb.f ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvMs_NtNtCsfG1pxJcRFT5_4raft6quorum8majorityNtB5_13Configuration11vote_resultNCNvMs0_NtB9_7trackerNtB1n_15ProgressTracker11vote_result0EB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE4iterCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not16 = icmp eq ptr %i.g, null
  br i1 %.not16, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !38, !noundef !4
  %i.j = icmp eq i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !nonnull !4   ; 2 uses
  br i1 %i.j, label %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit.thread.us, label %.lr.ph.split

_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit.thread.us: ; preds = %.lr.ph, %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit.thread.us
  %.sroa.04.017.us = phi i64 [ %i.o, %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit.thread.us ], [ 0, %.lr.ph ]
  %i.o = add i64 %.sroa.04.017.us, 1              ; 2 uses
  %i.p = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.q = extractvalue { ptr, ptr } %i.p, 0
  %.not.us = icmp eq ptr %i.q, null
  br i1 %.not.us, label %._crit_edge.thread, label %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit.thread.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %i.r = phi ptr [ %i.az, %bb.h ], [ %i.g, %.lr.ph ]
  %.sroa.01.018 = phi i64 [ %.sroa.01.1, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.04.017 = phi i64 [ %.sroa.04.1, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.s, ptr %i.a, align 8
  %i.t = call noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.lr.ph.split ], [ %i.ao, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.t, %.lr.ph.split ], [ %i.ap, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.m  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.y, align 1, !noalias !39 ; 2 uses
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.x
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.an, %bb.d ], [ %i.aa, %bb.c ] ; 3 uses
  %i.ab = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.01.0.i.i.i.i, %i.ac
  %i.ae = and i64 %i.ad, %i.m
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16
  %i.ai = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah), !noalias !40
  br i1 %i.ai, label %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit, label %bb.d, !prof !5

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %bb.e, label %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit.thread.loopexit, !prof !6

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.am = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.an = and i16 %i.am, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ao = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.ap = add i64 %.sroa.01.0.i.i.i.i, %i.ao
  br label %bb.c

_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit.thread.loopexit: ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = add i64 %.sroa.04.017, 1
  br label %bb.h

_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit: ; preds = %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.as = load i8, ptr %i.ar, align 1, !range !7, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.at = zext nneg i8 %i.as to i64
  %spec.select = add i64 %.sroa.01.018, %i.at
  br label %bb.h

._crit_edge.thread:                               ; preds = %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit.thread.us, %bb.b
  %.sroa.04.0.lcssa.ph = phi i64 [ 0, %bb.b ], [ %i.o, %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit.thread.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.au = lshr i64 %i.d, 1
  %2 = add nuw i64 %i.au, 1
  br label %bb.f

._crit_edge:                                      ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.av = lshr i64 %i.d, 1
  %3 = add nuw i64 %i.av, 1                       ; 2 uses
  %.not11 = icmp ult i64 %.sroa.01.1, %3
  br i1 %.not11, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.aw = phi i64 [ %2, %._crit_edge.thread ], [ %3, %._crit_edge ]
  %.sroa.01.0.lcssa33 = phi i64 [ 0, %._crit_edge.thread ], [ %.sroa.01.1, %._crit_edge ]
  %.sroa.04.0.lcssa32 = phi i64 [ %.sroa.04.0.lcssa.ph, %._crit_edge.thread ], [ %.sroa.04.1, %._crit_edge ]
  %i.ax = add i64 %.sroa.01.0.lcssa33, %.sroa.04.0.lcssa32
  %.not12 = icmp ult i64 %i.ax, %i.aw
  %. = zext i1 %.not12 to i8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f, %bb.a
  %.sroa.0.0 = phi i8 [ 2, %._crit_edge ], [ %., %bb.f ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0

bb.h:                                             ; preds = %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit, %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit.thread.loopexit
  %.sroa.04.1 = phi i64 [ %i.aq, %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit.thread.loopexit ], [ %.sroa.04.017, %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit ] ; 2 uses
  %.sroa.01.1 = phi i64 [ %.sroa.01.018, %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit.thread.loopexit ], [ %spec.select, %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit ] ; 3 uses
  %i.ay = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.az = extractvalue { ptr, ptr } %i.ay, 0      ; 2 uses
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvMs_NtNtCsfG1pxJcRFT5_4raft6quorum8majorityNtB5_13Configuration11vote_resultRNCNvMs0_NtB9_7trackerNtB1o_15ProgressTracker10has_quorum0EB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE4iterCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = lshr i64 %i.d, 1
  %2 = add nuw i64 %i.h, 1
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %i.i = phi ptr [ %i.q, %bb.f ], [ %i.g, %bb.b ]
  %.sroa.01.016 = phi i64 [ %.sroa.01.1, %bb.f ], [ 0, %bb.b ] ; 3 uses
  %.sroa.04.015 = phi i64 [ %.sroa.04.1, %bb.f ], [ 0, %bb.b ] ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  %i.k = call noundef i8 @_RNvXNtNtNtCskKLDkoKarTP_4core3ops8function5implsRNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtBT_15ProgressTracker10has_quorum0INtB4_2FnTyEE4callBV_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef %i.j)
  switch i8 %i.k, label %bb.g [
    i8 2, label %bb.e
    i8 0, label %bb.f
  ]

._crit_edge:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = lshr i64 %i.d, 1
  %3 = add nuw i64 %i.l, 1                        ; 2 uses
  %.not11 = icmp ult i64 %.sroa.01.1, %3
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.m = phi i64 [ %2, %._crit_edge.thread ], [ %3, %._crit_edge ]
  %.sroa.01.0.lcssa25 = phi i64 [ 0, %._crit_edge.thread ], [ %.sroa.01.1, %._crit_edge ]
  %.sroa.04.0.lcssa24 = phi i64 [ 0, %._crit_edge.thread ], [ %.sroa.04.1, %._crit_edge ]
  %i.n = add i64 %.sroa.01.0.lcssa25, %.sroa.04.0.lcssa24
  %.not12 = icmp ult i64 %i.n, %i.m
  %. = zext i1 %.not12 to i8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c, %bb.a
  %.sroa.0.0 = phi i8 [ 2, %._crit_edge ], [ %., %bb.c ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0

bb.e:                                             ; preds = %.lr.ph
  %i.o = add i64 %.sroa.04.015, 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.g, %bb.e
  %.sroa.04.1 = phi i64 [ %.sroa.04.015, %bb.g ], [ %.sroa.04.015, %.lr.ph ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.01.1 = phi i64 [ %i.r, %bb.g ], [ %.sroa.01.016, %.lr.ph ], [ %.sroa.01.016, %bb.e ] ; 3 uses
  %i.p = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.r = add i64 %.sroa.01.016, 1
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvMs_NtNtCsfG1pxJcRFT5_4raft6quorum8majorityNtB5_13Configuration11vote_resultRNCNvMs0_NtB9_7trackerNtB1o_15ProgressTracker11vote_result0EB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE4iterCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = lshr i64 %i.d, 1
  %2 = add nuw i64 %i.h, 1
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %i.i = phi ptr [ %i.q, %bb.f ], [ %i.g, %bb.b ]
  %.sroa.01.016 = phi i64 [ %.sroa.01.1, %bb.f ], [ 0, %bb.b ] ; 3 uses
  %.sroa.04.015 = phi i64 [ %.sroa.04.1, %bb.f ], [ 0, %bb.b ] ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  %i.k = call noundef i8 @_RNvXNtNtNtCskKLDkoKarTP_4core3ops8function5implsRNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtBT_15ProgressTracker11vote_result0INtB4_2FnTyEE4callBV_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef %i.j)
  switch i8 %i.k, label %bb.g [
    i8 2, label %bb.e
    i8 0, label %bb.f
  ]

._crit_edge:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = lshr i64 %i.d, 1
  %3 = add nuw i64 %i.l, 1                        ; 2 uses
  %.not11 = icmp ult i64 %.sroa.01.1, %3
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.m = phi i64 [ %2, %._crit_edge.thread ], [ %3, %._crit_edge ]
  %.sroa.01.0.lcssa25 = phi i64 [ 0, %._crit_edge.thread ], [ %.sroa.01.1, %._crit_edge ]
  %.sroa.04.0.lcssa24 = phi i64 [ 0, %._crit_edge.thread ], [ %.sroa.04.1, %._crit_edge ]
  %i.n = add i64 %.sroa.01.0.lcssa25, %.sroa.04.0.lcssa24
  %.not12 = icmp ult i64 %i.n, %i.m
  %. = zext i1 %.not12 to i8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c, %bb.a
  %.sroa.0.0 = phi i8 [ 2, %._crit_edge ], [ %., %bb.c ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0

bb.e:                                             ; preds = %.lr.ph
  %i.o = add i64 %.sroa.04.015, 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.g, %bb.e
  %.sroa.04.1 = phi i64 [ %.sroa.04.015, %bb.g ], [ %.sroa.04.015, %.lr.ph ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.01.1 = phi i64 [ %i.r, %bb.g ], [ %.sroa.01.016, %.lr.ph ], [ %.sroa.01.016, %bb.e ] ; 3 uses
  %i.p = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.r = add i64 %.sroa.01.016, 1
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i1 } @_RINvMs_NtNtCsfG1pxJcRFT5_4raft6quorum8majorityNtB5_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB9_7tracker8progress8ProgressINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEEB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i1 noundef zeroext %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.01 = alloca [40 x i8], align 8           ; 2 uses
  %i.j = alloca [24 x i8], align 8                ; 14 uses
  %i.k = alloca [112 x i8], align 8               ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 5 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.o = icmp ult i64 %i.m, 8                     ; 4 uses
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.m, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.p = load i64, ptr %i.d, align 8, !range !8, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !9, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g, !prof !6

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE4iterCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %.sroa.01, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01, i64 40, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.u = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
  %i.v = extractvalue { ptr, ptr } %i.u, 0        ; 2 uses
  %.not.i85 = icmp eq ptr %i.v, null
  br i1 %.not.i85, label %.noexc49._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.w

bb.e:                                             ; preds = %bb.z, %bb.r, %bb.s
  %lpad.thr_comm.split-lp74 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.o, label %common.resume, label %bb.an

bb.f:                                             ; preds = %bb.c
  %i.y = load i64, ptr %i.t, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.y) #17
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  %i.aa = icmp ule i64 %i.m, %i.s
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.s, ptr %i.g, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE4iterCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread63:                                        ; preds = %bb.n
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.i

bb.i:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE8push_mutBJ_.exit, %bb.h
  %i.af = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.ag = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4
  invoke void @_RNvXs_NtCsfG1pxJcRFT5_4raft7trackerINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtB4_8progress8ProgressINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEENtNtB6_6quorum12AckedIndexer11acked_index(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef %i.ah)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.ai = load i64, ptr %i.j, align 8, !range !10, !noundef !4
  %.not43 = icmp eq i64 %i.ai, -1
  br i1 %.not43, label %bb.n, label %bb.m, !prof !6

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #17
          to label %bb.o unwind label %.thread63

bb.o:                                             ; preds = %bb.z, %bb.n
  unreachable

bb.p:                                             ; preds = %.noexc49._crit_edge, %bb.m
  %.sroa.9.0 = phi i64 [ %i.m, %.noexc49._crit_edge ], [ %i.am, %bb.m ] ; 7 uses
  %.sroa.07.0 = phi ptr [ %i.k, %.noexc49._crit_edge ], [ %i.ak, %bb.m ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50
  store ptr %i.a, ptr %i.b, align 8, !noalias !51
  %i.an = icmp samesign ult i64 %.sroa.9.0, 2
  br i1 %i.an, label %bb.x, label %bb.q, !prof !5

bb.q:                                             ; preds = %bb.p
  %i.ao = icmp samesign ult i64 %.sroa.9.0, 21
  br i1 %i.ao, label %bb.s, label %bb.r, !prof !5

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_7sort_byNCINvMs_NtB11_8majorityNtB2r_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB13_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0INtNtB1H_3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull align 8 %.sroa.07.0, i64 noundef range(i64 0, 576460752303423488) %.sroa.9.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #18
          to label %.thread61 unwind label %bb.e

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_7sort_byNCINvMs_NtB1o_8majorityNtB2P_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1q_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1q_(ptr noalias nofree noundef nonnull align 8 %.sroa.07.0, i64 noundef range(i64 0, 576460752303423488) %.sroa.9.0, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.thread61 unwind label %bb.e

bb.t:                                             ; preds = %bb.k
  %i.ap = load i64, ptr %i.e, align 8, !range !8, !noundef !4
  %i.aq = trunc nuw i64 %i.ap to i1               ; 2 uses
  %i.ar = load i64, ptr %i.ad, align 8
  %i.as = load i64, ptr %i.ae, align 8
  %.sroa.522.0 = select i1 %i.aq, i64 %i.as, i64 0
  %.sroa.021.0 = select i1 %i.aq, i64 %i.ar, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.at = load i64, ptr %i.ac, align 8, !alias.scope !52, !noundef !4 ; 3 uses
  %i.au = load i64, ptr %i.g, align 8, !range !53, !alias.scope !52, !noundef !4
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %bb.u, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE8push_mutBJ_.exit

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #18
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE8push_mutBJ_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE8push_mutBJ_.exit: ; preds = %bb.u, %bb.t
  %i.aw = load ptr, ptr %i.ab, align 8, !alias.scope !52, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.at ; 2 uses
  store i64 %.sroa.021.0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.sroa.522.0, ptr %i.ay, align 8
  %i.az = add i64 %i.at, 1
  store i64 %i.az, ptr %i.ac, align 8, !alias.scope !52
  br label %bb.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.k, %bb.i, %bb.g
  %lpad.loopexit.split-lp134 = landingpad { ptr, i32 }
          cleanup
end_hunk_0
