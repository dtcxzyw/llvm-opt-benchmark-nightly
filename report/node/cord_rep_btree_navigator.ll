Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cord_rep_btree_navigator?download=true
inline.NumInlined: 54
inline.NumDeleted: 27
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [21 x i8] c"index != node->end()\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/strings/internal/cord_rep_btree_navigator.cc\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal21CordRepBtreeNavigator4SkipEm = private unnamed_addr constant [89 x i8] c"CordRepBtreeNavigator::Position absl::cord_internal::CordRepBtreeNavigator::Skip(size_t)\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"edge_offset < edge->length\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal21CordRepBtreeNavigator4ReadEmm = private unnamed_addr constant [76 x i8] c"ReadResult absl::cord_internal::CordRepBtreeNavigator::Read(size_t, size_t)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"index >= begin()\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/strings/internal/cord_rep_btree.h\00", align 1
@__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm = private unnamed_addr constant [63 x i8] c"CordRep *absl::cord_internal::CordRepBtree::Edge(size_t) const\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"index < end()\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"IsBtree()\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv = private unnamed_addr constant [52 x i8] c"CordRepBtree *absl::cord_internal::CordRep::btree()\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"n <= rep->length\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal12_GLOBAL__N_19SubstringEPNS0_7CordRepEmm = private unnamed_addr constant [90 x i8] c"CordRep *absl::cord_internal::(anonymous namespace)::Substring(CordRep *, size_t, size_t)\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"offset < rep->length\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"offset <= rep->length - n\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"IsDataEdge(rep)\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"rep->IsExternal() || rep->IsFlat()\00", align 1
@.str.15 = private unnamed_addr constant [75 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/strings/internal/cord_internal.h\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"refcount > 0 || refcount & kImmortalFlag\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv = private unnamed_addr constant [74 x i8] c"bool absl::cord_internal::RefcountAndFlags::DecrementExpectHighRefcount()\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZN4absl13cord_internal21CordRepBtreeNavigator4SkipEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4               ; 3 uses
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.g = load i8, ptr %i.f, align 1
  %.not.i = icmp ult i8 %i.b, %i.g
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 616, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp ult i8 %i.b, %i.i
  br i1 %i.j, label %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 617, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #7
  unreachable

_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.c
  %.0109 = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.m = load i64, ptr %.0109, align 8            ; 2 uses
  %.not110 = icmp ult i64 %1, %i.m
  br i1 %.not110, label %._crit_edge125, label %.lr.ph115

.lr.ph115:                                        ; preds = %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit
  %i.n = load i32, ptr %0, align 8                ; 2 uses
  br label %bb.e

.preheader:                                       ; preds = %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit55
  %i.o = icmp sgt i32 %.141.lcssa, 0
  br i1 %i.o, label %.lr.ph124.preheader, label %._crit_edge125

.lr.ph124.preheader:                              ; preds = %.preheader
  %i.p = zext nneg i32 %.141.lcssa to i64
  br label %.lr.ph124

bb.e:                                             ; preds = %.lr.ph115, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit55
  %i.q = phi i64 [ %i.m, %.lr.ph115 ], [ %i.ap, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit55 ]
  %.035114 = phi ptr [ %i.e, %.lr.ph115 ], [ %.136.lcssa, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit55 ] ; 2 uses
  %.037113 = phi i64 [ %i.c, %.lr.ph115 ], [ %.lcssa86, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit55 ]
  %.040112 = phi i32 [ 0, %.lr.ph115 ], [ %.141.lcssa, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit55 ] ; 4 uses
  %.043111 = phi i64 [ %1, %.lr.ph115 ], [ %i.r, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit55 ]
  %i.r = sub nuw i64 %.043111, %i.q               ; 6 uses
  %i.s = add nuw nsw i64 %.037113, 1              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.035114, i64 15
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i64                      ; 2 uses
  %i.w = icmp eq i64 %i.s, %i.v
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %smax = tail call i32 @llvm.smax.i32(i32 %.040112, i32 %i.n)
  %wide.trip.count = sext i32 %smax to i64
  %exitcond.not199.not = icmp slt i32 %.040112, %i.n
  br i1 %exitcond.not199.not, label %.lr.ph201, label %.loopexit60

.lr.ph201:                                        ; preds = %.lr.ph.preheader
  %i.x = sext i32 %.040112 to i64
  br label %bb.f

.lr.ph:                                           ; preds = %bb.f
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit60, label %bb.f, !llvm.loop !6

bb.f:                                             ; preds = %.lr.ph201, %.lr.ph
  %indvars.iv200 = phi i64 [ %i.x, %.lr.ph201 ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv200, 1 ; 5 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 15
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = icmp eq i64 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !6

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.ai = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.141.lcssa = phi i32 [ %.040112, %bb.e ], [ %i.ai, %._crit_edge.loopexit ] ; 3 uses
  %.136.lcssa = phi ptr [ %.035114, %bb.e ], [ %i.z, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa86 = phi i64 [ %i.s, %bb.e ], [ %i.ad, %._crit_edge.loopexit ] ; 6 uses
  %.lcssa = phi i64 [ %i.v, %bb.e ], [ %i.ag, %._crit_edge.loopexit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.136.lcssa, i64 14
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i64
  %.not.i54 = icmp ult i64 %.lcssa86, %i.al
  br i1 %.not.i54, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 616, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #7
  unreachable

bb.h:                                             ; preds = %._crit_edge
  %i.am = icmp ult i64 %.lcssa86, %.lcssa
  br i1 %i.am, label %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit55, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 617, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #7
  unreachable

_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit55: ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.136.lcssa, i64 16
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.lcssa86
  %.0 = load ptr, ptr %i.ao, align 8              ; 3 uses
  %i.ap = load i64, ptr %.0, align 8              ; 2 uses
  %.not = icmp ult i64 %i.r, %i.ap
  br i1 %.not, label %.preheader, label %bb.e, !llvm.loop !7

.loopexit:                                        ; preds = %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit59, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit57
  %.245.lcssa = phi i64 [ %.144120, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit57 ], [ %i.bh, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit59 ] ; 2 uses
  %.3.lcssa = phi i64 [ %i.bd, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit57 ], [ %i.bg, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit59 ] ; 2 uses
  %.2.lcssa = phi ptr [ %.2204, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit57 ], [ %.2, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit59 ] ; 2 uses
  %i.aq = icmp sgt i64 %indvars.iv152, 1
  br i1 %i.aq, label %.lr.ph124, label %._crit_edge125, !llvm.loop !8

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.loopexit
  %indvars.iv152 = phi i64 [ %i.p, %.lr.ph124.preheader ], [ %indvars.iv.next153, %.loopexit ] ; 3 uses
  %.1123 = phi ptr [ %.0, %.lr.ph124.preheader ], [ %.2.lcssa, %.loopexit ] ; 5 uses
  %.239122 = phi i64 [ %.lcssa86, %.lr.ph124.preheader ], [ %.3.lcssa, %.loopexit ]
  %.144120 = phi i64 [ %i.r, %.lr.ph124.preheader ], [ %.245.lcssa, %.loopexit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.1123, i64 12
  %i.as = load i8, ptr %i.ar, align 4
  %i.at = icmp eq i8 %i.as, 3
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph124
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #7
  unreachable

bb.k:                                             ; preds = %.lr.ph124
  %i.au = trunc i64 %.239122 to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv152
  store i8 %i.au, ptr %i.av, align 1
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, -1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next153
  store ptr %.1123, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.1123, i64 14
  %i.ay = load i8, ptr %i.ax, align 2             ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1123, i64 15
  %i.ba = load i8, ptr %i.az, align 1             ; 2 uses
  %i.bb = zext i8 %i.ba to i64
  %i.bc = icmp ult i8 %i.ay, %i.ba
  br i1 %i.bc, label %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit57, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 617, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #7
  unreachable

_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit57: ; preds = %bb.k
  %i.bd = zext i8 %i.ay to i64                    ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.1123, i64 16 ; 2 uses
  %.2.in203 = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bd
  %.2204 = load ptr, ptr %.2.in203, align 8       ; 2 uses
  %i.bf = load i64, ptr %.2204, align 8           ; 2 uses
  %.not51205 = icmp ult i64 %.144120, %i.bf
  br i1 %.not51205, label %.loopexit, label %.lr.ph208

.lr.ph208:                                        ; preds = %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit57, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit59
  %2 = phi i64 [ %i.bi, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit59 ], [ %i.bf, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit57 ]
  %.3207 = phi i64 [ %i.bg, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit59 ], [ %i.bd, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit57 ]
  %.245206 = phi i64 [ %i.bh, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit59 ], [ %.144120, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit57 ]
  %i.bg = add nuw nsw i64 %.3207, 1               ; 4 uses
  %.not52 = icmp eq i64 %i.bg, %i.bb
  br i1 %.not52, label %bb.m, label %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit59

bb.m:                                             ; preds = %.lr.ph208
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 100, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal21CordRepBtreeNavigator4SkipEm) #7
  unreachable

_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit59: ; preds = %.lr.ph208
  %i.bh = sub nuw i64 %.245206, %2                ; 3 uses
  %.2.in = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bg
  %.2 = load ptr, ptr %.2.in, align 8             ; 2 uses
  %i.bi = load i64, ptr %.2, align 8              ; 2 uses
  %.not51 = icmp ult i64 %i.bh, %i.bi
  br i1 %.not51, label %.loopexit, label %.lr.ph208

._crit_edge125:                                   ; preds = %.loopexit, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit, %.preheader
  %.144.lcssa = phi i64 [ %i.r, %.preheader ], [ %1, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit ], [ %.245.lcssa, %.loopexit ]
  %.239.lcssa = phi i64 [ %.lcssa86, %.preheader ], [ %i.c, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit ], [ %.3.lcssa, %.loopexit ]
  %.1.lcssa = phi ptr [ %.0, %.preheader ], [ %.0109, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit ], [ %.2.lcssa, %.loopexit ]
  %i.bj = trunc i64 %.239.lcssa to i8
  store i8 %i.bj, ptr %i.a, align 4
  br label %.loopexit60

.loopexit60:                                      ; preds = %.lr.ph.preheader, %.lr.ph, %._crit_edge125
  %.sroa.0.0 = phi ptr [ %.1.lcssa, %._crit_edge125 ], [ null, %.lr.ph ], [ null, %.lr.ph.preheader ]
  %.sroa.3.0 = phi i64 [ %.144.lcssa, %._crit_edge125 ], [ %i.r, %.lr.ph ], [ %i.r, %.lr.ph.preheader ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZN4absl13cord_internal21CordRepBtreeNavigator4ReadEmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i64 %2, %1                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %i.c = load i8, ptr %i.b, align 4               ; 3 uses
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.h = load i8, ptr %i.g, align 1
  %.not.i = icmp ult i8 %i.c, %i.h
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 616, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp ult i8 %i.c, %i.j
  br i1 %i.k, label %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 617, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #7
  unreachable

_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.d
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = icmp ult i64 %1, %i.o
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 114, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal21CordRepBtreeNavigator4ReadEmm) #7
  unreachable

bb.f:                                             ; preds = %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit
  %i.q = icmp ult i64 %i.a, %i.o
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = tail call fastcc noundef ptr @_ZN4absl13cord_internal12_GLOBAL__N_19SubstringEPNS0_7CordRepEmm(ptr noundef nonnull %i.n, i64 noundef %1, i64 noundef %2)
  br label %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.s = sub nuw i64 %i.o, %1
  %i.t = tail call fastcc noundef ptr @_ZN4absl13cord_internal12_GLOBAL__N_19SubstringEPNS0_7CordRepEmm(ptr noundef nonnull %i.n, i64 noundef %1, i64 noundef %i.s) ; 4 uses
  %i.u = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #8 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 2, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.x = load i8, ptr %i.w, align 4
  %i.y = icmp eq i8 %i.x, 3
  br i1 %i.y, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i, label %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit

_ZN4absl13cord_internal7CordRep5btreeEv.exit.i:   ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 13
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = add i8 %i.aa, 1
  br label %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit

_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit: ; preds = %bb.h, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i
  %i.ac = phi i8 [ %i.ab, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i ], [ 0, %bb.h ]
  %i.ad = load i64, ptr %i.t, align 8
  store i64 %i.ad, ptr %i.u, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i8 3, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 13
  store i8 %i.ac, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  store i8 0, ptr %i.ag, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 15
  store i8 1, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.t, ptr %i.ai, align 8
  %.pre = load i64, ptr %i.n, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit
  %i.aj = phi i64 [ %.pre, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit ], [ %i.en, %bb.r ]
  %.0105 = phi i32 [ 0, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit ], [ %.1106.lcssa, %bb.r ] ; 3 uses
  %.0101 = phi i64 [ %i.a, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit ], [ %i.ak, %bb.r ]
  %.096 = phi i64 [ %i.d, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit ], [ %.lcssa166, %bb.r ]
  %.094 = phi ptr [ %i.f, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit ], [ %.195.lcssa, %bb.r ] ; 2 uses
  %.085 = phi ptr [ %i.u, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit ], [ %.186.lcssa, %bb.r ] ; 10 uses
  %.0 = phi i64 [ 1, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit ], [ %.3, %bb.r ] ; 4 uses
  %.fr222 = freeze i64 %i.aj
  %i.ak = sub i64 %.0101, %.fr222                 ; 9 uses
  %i.al = add nuw nsw i64 %.096, 1                ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.094, i64 15
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %i.ap = icmp eq i64 %i.al, %i.ao
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %.not124 = icmp eq i64 %i.ak, 0
  %i.aq = sext i32 %.0105 to i64                  ; 3 uses
  br i1 %.not124, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ar = trunc nuw i64 %i.al to i8
  %i.as = getelementptr inbounds i8, ptr %i.b, i64 %i.aq
  store i8 %i.ar, ptr %i.as, align 1
  %indvars.iv.next.peel = add nsw i64 %i.aq, 1    ; 4 uses
  %i.at = load i32, ptr %0, align 8
  %.not123.peel = icmp slt i32 %.0105, %i.at
  %i.au = trunc i64 %.0 to i8
  %i.av = getelementptr inbounds nuw i8, ptr %.085, i64 15
  store i8 %i.au, ptr %i.av, align 1
  br i1 %.not123.peel, label %bb.j, label %.split.us.thread309

bb.j:                                             ; preds = %.lr.ph.split.preheader
  %i.aw = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #8 ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 2, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.085, i64 12
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = icmp eq i8 %i.az, 3
  br i1 %i.ba, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i126.peel, label %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit127.peel

_ZN4absl13cord_internal7CordRep5btreeEv.exit.i126.peel: ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.085, i64 13
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = add i8 %i.bc, 1
  br label %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit127.peel

_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit127.peel: ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i126.peel, %bb.j
  %i.be = phi i8 [ %i.bd, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i126.peel ], [ 0, %bb.j ]
  %i.bf = load i64, ptr %.085, align 8
  store i64 %i.bf, ptr %i.aw, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i8 3, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 13
  store i8 %i.be, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  store i8 0, ptr %i.bi, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 15
  store i8 1, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %.085, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next.peel
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.peel
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i64
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 15
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i64                    ; 2 uses
  %i.bu = icmp eq i64 %i.bq, %i.bt
  br i1 %i.bu, label %.lr.ph.split, label %._crit_edge.loopexit224

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.k
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %bb.k ], [ %i.aq, %.lr.ph ] ; 3 uses
  %i.bv = phi i64 [ %i.ch, %bb.k ], [ %i.al, %.lr.ph ]
  %i.bw = trunc nuw i64 %i.bv to i8
  %i.bx = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv273
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = load i32, ptr %0, align 8
  %i.bz = sext i32 %i.by to i64
  %.not123.us = icmp slt i64 %indvars.iv273, %i.bz
  br i1 %.not123.us, label %bb.k, label %.split.us.thread

.split.us.thread:                                 ; preds = %.lr.ph.split.us
  %i.ca = trunc i64 %.0 to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %.085, i64 15
  store i8 %i.ca, ptr %i.cb, align 1
  br label %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit

bb.k:                                             ; preds = %.lr.ph.split.us
  %indvars.iv.next274 = add nsw i64 %indvars.iv273, 1 ; 4 uses
end_hunk_0
