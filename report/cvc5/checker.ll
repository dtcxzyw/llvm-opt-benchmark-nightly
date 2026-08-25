Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/checker?download=true
inline.NumInlined: 604
inline.NumDeleted: 238
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@__gxx_personality_v0

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Checker13delete_clauseEPNS_13CheckerClauseE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(352) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %.not = icmp eq i32 %i.b, 0
  %. = select i1 %.not, i64 96, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %. ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !71
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !71
  tail call void @_ZdaPv(ptr noundef nonnull %1) #24
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL7Checker15enlarge_clausesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  %i.c = shl i64 %i.b, 1
  %spec.select = select i1 %.not, i64 1, i64 %i.c
  %spec.select.fr = freeze i64 %spec.select       ; 6 uses
  %i.d = icmp ugt i64 %spec.select.fr, 2305843009213693951
  %i.e = shl i64 %spec.select.fr, 3               ; 2 uses
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.e, i1 false)
  %i.h = load i64, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %.not29 = icmp eq i64 %i.h, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !73 ; 4 uses
  br i1 %.not29, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.a
  %i.i = icmp ult i64 %spec.select.fr, 4294967296
  %i.j = add i64 %spec.select.fr, -1              ; 2 uses
  br i1 %i.i, label %.lr.ph27.split.us, label %.lr.ph27.split

.lr.ph27.split.us:                                ; preds = %.lr.ph27, %._crit_edge.split.us.us
  %.01925.us = phi i64 [ %i.m, %._crit_edge.split.us.us ], [ 0, %.lr.ph27 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.01925.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52   ; 2 uses
  %.not2223.us = icmp eq ptr %i.l, null
  br i1 %.not2223.us, label %._crit_edge.split.us.us, label %.lr.ph.i.preheader.us.us

._crit_edge.split.us.us:                          ; preds = %_ZN7CaDiCaL7Checker11reduce_hashEmm.exit.loopexit.us.us, %.lr.ph27.split.us
  %i.m = add nuw i64 %.01925.us, 1                ; 2 uses
  %exitcond31.not = icmp eq i64 %i.m, %i.h
  br i1 %exitcond31.not, label %._crit_edge28, label %.lr.ph27.split.us, !llvm.loop !74

.lr.ph.i.preheader.us.us:                         ; preds = %.lr.ph27.split.us, %_ZN7CaDiCaL7Checker11reduce_hashEmm.exit.loopexit.us.us
  %.024.us.us = phi ptr [ %i.n, %_ZN7CaDiCaL7Checker11reduce_hashEmm.exit.loopexit.us.us ], [ %i.l, %.lr.ph27.split.us ] ; 4 uses
  %i.n = load ptr, ptr %.024.us.us, align 8, !tbaa !16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.024.us.us, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !41
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us, %.lr.ph.i.preheader.us.us
  %i.q = phi i64 [ %i.u, %.lr.ph.i.us.us ], [ 32, %.lr.ph.i.preheader.us.us ]
  %.014.i.us.us = phi i64 [ %i.s, %.lr.ph.i.us.us ], [ %i.p, %.lr.ph.i.preheader.us.us ] ; 2 uses
  %.01013.i.us.us = phi i32 [ %i.t, %.lr.ph.i.us.us ], [ 32, %.lr.ph.i.preheader.us.us ]
  %i.r = lshr i64 %.014.i.us.us, %i.q
  %i.s = xor i64 %i.r, %.014.i.us.us              ; 2 uses
  %i.t = lshr i32 %.01013.i.us.us, 1              ; 2 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %.highbits.i.us.us = lshr i64 %spec.select.fr, %i.u
  %i.v = icmp eq i64 %.highbits.i.us.us, 0
  br i1 %i.v, label %.lr.ph.i.us.us, label %_ZN7CaDiCaL7Checker11reduce_hashEmm.exit.loopexit.us.us, !llvm.loop !75

_ZN7CaDiCaL7Checker11reduce_hashEmm.exit.loopexit.us.us: ; preds = %.lr.ph.i.us.us
  %i.w = and i64 %i.s, %i.j
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !52
  store ptr %i.y, ptr %.024.us.us, align 8, !tbaa !16
  store ptr %.024.us.us, ptr %i.x, align 8, !tbaa !52
  %.not22.us.us = icmp eq ptr %i.n, null
  br i1 %.not22.us.us, label %._crit_edge.split.us.us, label %.lr.ph.i.preheader.us.us, !llvm.loop !76

._crit_edge28:                                    ; preds = %._crit_edge.split.us.us, %bb.a
  %i.z = icmp eq ptr %.pre, null
  br i1 %i.z, label %bb.b, label %._crit_edge28.thread

.lr.ph27.split:                                   ; preds = %.lr.ph27, %._crit_edge.split
  %.01925 = phi i64 [ %i.ac, %._crit_edge.split ], [ 0, %.lr.ph27 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.01925
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52 ; 2 uses
  %.not2223 = icmp eq ptr %i.ab, null
  br i1 %.not2223, label %._crit_edge.split, label %_ZN7CaDiCaL7Checker11reduce_hashEmm.exit

._crit_edge.split:                                ; preds = %_ZN7CaDiCaL7Checker11reduce_hashEmm.exit, %.lr.ph27.split
  %i.ac = add nuw i64 %.01925, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.h
  br i1 %exitcond.not, label %._crit_edge28.thread, label %.lr.ph27.split, !llvm.loop !74

_ZN7CaDiCaL7Checker11reduce_hashEmm.exit:         ; preds = %.lr.ph27.split, %_ZN7CaDiCaL7Checker11reduce_hashEmm.exit
  %.024 = phi ptr [ %i.ad, %_ZN7CaDiCaL7Checker11reduce_hashEmm.exit ], [ %i.ab, %.lr.ph27.split ] ; 4 uses
  %i.ad = load ptr, ptr %.024, align 8, !tbaa !16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.024, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.ag = and i64 %i.af, %i.j
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52
  store ptr %i.ai, ptr %.024, align 8, !tbaa !16
  store ptr %.024, ptr %i.ah, align 8, !tbaa !52
  %.not22 = icmp eq ptr %i.ad, null
  br i1 %.not22, label %._crit_edge.split, label %_ZN7CaDiCaL7Checker11reduce_hashEmm.exit, !llvm.loop !76

._crit_edge28.thread:                             ; preds = %._crit_edge.split, %._crit_edge28
  tail call void @_ZdaPv(ptr noundef nonnull %.pre) #24
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge28.thread, %._crit_edge28
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.g, ptr %i.aj, align 8, !tbaa !73
  store i64 %spec.select.fr, ptr %i.a, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN7CaDiCaL7Checker11reduce_hashEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp ult i64 %1, 4294967296
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi i64 [ %i.f, %.lr.ph ], [ 32, %bb.a ]
  %.014 = phi i64 [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.01013 = phi i32 [ %i.e, %.lr.ph ], [ 32, %bb.a ]
  %i.c = lshr i64 %.014, %i.b
  %i.d = xor i64 %i.c, %.014                      ; 2 uses
  %i.e = lshr i32 %.01013, 1                      ; 2 uses
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %.highbits = lshr i64 %1, %i.f
  %i.g = icmp eq i64 %.highbits, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !75

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %0, %bb.a ], [ %i.d, %.lr.ph ]
  %i.h = add i64 %1, -1
  %i.i = and i64 %.0.lcssa, %i.h
  ret i64 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL7Checker16clause_satisfiedEPNS_13CheckerClauseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !44
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !50
  %i.k = icmp sgt i8 %i.j, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.k, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL7Checker23collect_garbage_clausesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !78
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i64, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %.not73 = icmp eq i64 %i.e, 0
  br i1 %.not73, label %._crit_edge55, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.b

._crit_edge55:                                    ; preds = %._crit_edge, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !79   ; 2 uses
  %i.m = shl i64 %i.l, 32
  %sext = sub i64 4294967296, %i.m
  %i.n = ashr exact i64 %sext, 32                 ; 2 uses
  %i.o = icmp sgt i64 %i.l, %i.n
  br i1 %i.o, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %._crit_edge55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph54, %._crit_edge
  %.02852 = phi i64 [ 0, %.lr.ph54 ], [ %i.ah, %._crit_edge ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.02852 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52   ; 2 uses
  %.not3450 = icmp eq ptr %i.r, null
  br i1 %.not3450, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN7CaDiCaL7Checker16clause_satisfiedEPNS_13CheckerClauseE.exit.thread
  %i.s = phi ptr [ %i.ag, %_ZN7CaDiCaL7Checker16clause_satisfiedEPNS_13CheckerClauseE.exit.thread ], [ %i.r, %bb.b ] ; 7 uses
  %.03051 = phi ptr [ %.1, %_ZN7CaDiCaL7Checker16clause_satisfiedEPNS_13CheckerClauseE.exit.thread ], [ %i.q, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %_ZN7CaDiCaL7Checker16clause_satisfiedEPNS_13CheckerClauseE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !49
  %wide.trip.count.i = zext i32 %i.v to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN7CaDiCaL7Checker16clause_satisfiedEPNS_13CheckerClauseE.exit.thread, label %bb.d, !llvm.loop !77

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !44
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !50
  %i.ac = icmp sgt i8 %i.ab, 0
  br i1 %i.ac, label %_ZN7CaDiCaL7Checker16clause_satisfiedEPNS_13CheckerClauseE.exit, label %bb.c

_ZN7CaDiCaL7Checker16clause_satisfiedEPNS_13CheckerClauseE.exit: ; preds = %bb.d
  store i32 0, ptr %i.u, align 8, !tbaa !42
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !16
  store ptr %i.ad, ptr %.03051, align 8, !tbaa !52
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !80
  store ptr %i.ae, ptr %i.s, align 8, !tbaa !16
  store ptr %i.s, ptr %i.i, align 8, !tbaa !80
  %1 = load <2 x i64>, ptr %i.j, align 8, !tbaa !71
  %i.af = add <2 x i64> %1, <i64 -1, i64 1>
  store <2 x i64> %i.af, ptr %i.j, align 8, !tbaa !71
  br label %_ZN7CaDiCaL7Checker16clause_satisfiedEPNS_13CheckerClauseE.exit.thread

_ZN7CaDiCaL7Checker16clause_satisfiedEPNS_13CheckerClauseE.exit.thread: ; preds = %bb.c, %.lr.ph, %_ZN7CaDiCaL7Checker16clause_satisfiedEPNS_13CheckerClauseE.exit
  %.1 = phi ptr [ %.03051, %_ZN7CaDiCaL7Checker16clause_satisfiedEPNS_13CheckerClauseE.exit ], [ %i.s, %.lr.ph ], [ %i.s, %bb.c ] ; 2 uses
  %i.ag = load ptr, ptr %.1, align 8, !tbaa !52   ; 2 uses
  %.not34 = icmp eq ptr %i.ag, null
  br i1 %.not34, label %._crit_edge, label %.lr.ph, !llvm.loop !81

._crit_edge:                                      ; preds = %_ZN7CaDiCaL7Checker16clause_satisfiedEPNS_13CheckerClauseE.exit.thread, %bb.b
  %i.ah = add nuw i64 %.02852, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.e
  br i1 %exitcond.not, label %._crit_edge55, label %bb.b, !llvm.loop !82

._crit_edge67:                                    ; preds = %_ZN7CaDiCaL12erase_vectorINS_12CheckerWatchEEEvRSt6vectorIT_SaIS3_EE.exit, %._crit_edge55
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !80 ; 2 uses
  %.not68 = icmp eq ptr %i.aj, null
  br i1 %.not68, label %._crit_edge72, label %.lr.ph71

bb.e:                                             ; preds = %.lr.ph66, %_ZN7CaDiCaL12erase_vectorINS_12CheckerWatchEEEvRSt6vectorIT_SaIS3_EE.exit
  %indvars.iv = phi i64 [ %i.n, %.lr.ph66 ], [ %indvars.iv.next, %_ZN7CaDiCaL12erase_vectorINS_12CheckerWatchEEEvRSt6vectorIT_SaIS3_EE.exit ] ; 4 uses
  %i.ak = icmp eq i64 %indvars.iv, 0
  br i1 %i.ak, label %_ZN7CaDiCaL12erase_vectorINS_12CheckerWatchEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = trunc nsw i64 %indvars.iv to i32
  %i.am = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true)
  %i.an = shl nuw i32 %i.am, 1
  %.inv.i.i = icmp sgt i64 %indvars.iv, -1
  %spec.select.v.i.i = select i1 %.inv.i.i, i32 -2, i32 -1
  %spec.select.i.i = add i32 %i.an, %spec.select.v.i.i
  %i.ao = zext i32 %spec.select.i.i to i64
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !83 ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !83 ; 3 uses
  %.not4958 = icmp eq ptr %i.at, %i.as
  br i1 %.not4958, label %_ZN7CaDiCaL12erase_vectorINS_12CheckerWatchEEEvRSt6vectorIT_SaIS3_EE.exit, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.f, %bb.h
  %.sroa.043.060 = phi ptr [ %.sroa.043.1, %bb.h ], [ %i.at, %bb.f ] ; 3 uses
  %.sroa.040.059 = phi ptr [ %i.az, %bb.h ], [ %i.at, %bb.f ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.040.059, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !84
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !42
  %.not33 = icmp eq i32 %i.ax, 0
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph62
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.043.060, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.043.060, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.059, i64 16, i1 false), !tbaa.struct !57
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph62
  %.sroa.043.1 = phi ptr [ %.sroa.043.060, %.lr.ph62 ], [ %i.ay, %bb.g ] ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.040.059, i64 16 ; 2 uses
  %.not49 = icmp eq ptr %i.az, %i.as
  br i1 %.not49, label %._crit_edge63, label %.lr.ph62, !llvm.loop !86

._crit_edge63:                                    ; preds = %bb.h
  %.pre = load ptr, ptr %i.ar, align 8, !tbaa !83
  %i.ba = icmp eq ptr %.sroa.043.1, %.pre
  br i1 %i.ba, label %_ZN7CaDiCaL12erase_vectorINS_12CheckerWatchEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge63
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !83 ; 3 uses
  %i.bc = icmp eq ptr %.sroa.043.1, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !64
  %.not.i35 = icmp eq ptr %i.be, %.sroa.043.1
  br i1 %.not.i35, label %_ZN7CaDiCaL12erase_vectorINS_12CheckerWatchEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i.i = icmp eq ptr %.sroa.043.1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %_ZN7CaDiCaL12erase_vectorINS_12CheckerWatchEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPv(ptr noundef nonnull %i.bb) #24
  br label %_ZN7CaDiCaL12erase_vectorINS_12CheckerWatchEEEvRSt6vectorIT_SaIS3_EE.exit

bb.m:                                             ; preds = %bb.i
  %i.bf = ptrtoint ptr %.sroa.043.1 to i64
  %i.bg = ptrtoint ptr %i.bb to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 4
  tail call void @_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 noundef %i.bi)
  br label %_ZN7CaDiCaL12erase_vectorINS_12CheckerWatchEEEvRSt6vectorIT_SaIS3_EE.exit

_ZN7CaDiCaL12erase_vectorINS_12CheckerWatchEEEvRSt6vectorIT_SaIS3_EE.exit: ; preds = %bb.f, %._crit_edge63, %bb.m, %bb.j, %bb.k, %bb.l, %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bj = load i64, ptr %i.k, align 8, !tbaa !79
  %i.bk = icmp sgt i64 %i.bj, %indvars.iv.next
  br i1 %i.bk, label %bb.e, label %._crit_edge67, !llvm.loop !87

._crit_edge72:                                    ; preds = %.lr.ph71, %._crit_edge67
  store ptr null, ptr %i.ai, align 8, !tbaa !80
  ret void

.lr.ph71:                                         ; preds = %._crit_edge67, %.lr.ph71
  %.069 = phi ptr [ %i.bl, %.lr.ph71 ], [ %i.aj, %._crit_edge67 ] ; 3 uses
  %i.bl = load ptr, ptr %.069, align 8, !tbaa !16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.069, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !42
  %.not.i36 = icmp eq i32 %i.bn, 0
  %..i = select i1 %.not.i36, i64 96, i64 88
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %..i ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !71
  %i.bq = add i64 %i.bp, -1
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !71
  tail call void @_ZdaPv(ptr noundef nonnull %.069) #24
  %.not = icmp eq ptr %i.bl, null
  br i1 %.not, label %._crit_edge72, label %.lr.ph71, !llvm.loop !88
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !56     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !53
  br label %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
  unreachable

_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #22 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !57, !alias.scope !89
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !62

_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.not.i31.i = icmp eq ptr %i.c, null
  br i1 %.not.i31.i, label %_ZNSt12_Vector_baseIN7CaDiCaL12CheckerWatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #24
  br label %_ZNSt12_Vector_baseIN7CaDiCaL12CheckerWatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i

_ZNSt12_Vector_baseIN7CaDiCaL12CheckerWatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i: ; preds = %bb.f, %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ab, ptr %i.j, align 8, !tbaa !64
  br label %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.ac = icmp ult i64 %1, %i.g
  br i1 %i.ac, label %bb.h, label %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ad
  br i1 %.not.i4, label %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN7CaDiCaL12CheckerWatchES1_EvT_S3_RSaIT0_E.exit.i

end_hunk_0
