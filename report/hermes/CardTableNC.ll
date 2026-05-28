inline.NumInlined: 28
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes2vm9CardTable25dirtyCardsForAddressRangeEPKvS3_(ptr noundef nonnull align 1 dereferenceable(16384) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 511
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr i64 %i.d, 9                         ; 5 uses
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.f, %i.c
  %i.h = ashr i64 %i.g, 9                         ; 4 uses
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %.lr.ph.i.i.preheader, label %_ZN6hermes2vm9CardTable10dirtyRangeEmm.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.j = sub nuw nsw i64 %i.h, %i.e
  %xtraiter = and i64 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.06.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %i.e, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i.prol
  store atomic i8 1, ptr %i.k monotonic, align 1
  %i.l = add nuw i64 %.06.i.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !7

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.06.i.i.unr = phi i64 [ %i.e, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = sub nsw i64 %i.e, %i.h
  %i.n = icmp ugt i64 %i.m, -8
  br i1 %i.n, label %_ZN6hermes2vm9CardTable10dirtyRangeEmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  store atomic i8 1, ptr %i.o monotonic, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store atomic i8 1, ptr %i.q monotonic, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store atomic i8 1, ptr %i.s monotonic, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  store atomic i8 1, ptr %i.u monotonic, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store atomic i8 1, ptr %i.w monotonic, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  store atomic i8 1, ptr %i.y monotonic, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  store atomic i8 1, ptr %i.aa monotonic, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 7
  store atomic i8 1, ptr %i.ac monotonic, align 1
  %i.ad = add nuw i64 %.06.i.i, 8                 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %i.ad, %i.h
  br i1 %exitcond.not.i.i.7, label %_ZN6hermes2vm9CardTable10dirtyRangeEmm.exit, label %.lr.ph.i.i, !llvm.loop !9

_ZN6hermes2vm9CardTable10dirtyRangeEmm.exit:      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes2vm9CardTable10dirtyRangeEmm(ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(16384) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i64 %1, %2
  br i1 %i.a, label %.lr.ph.i.preheader, label %_ZN6hermes2vm9CardTable17cleanOrDirtyRangeEmmNS1_10CardStatusE.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1
  %xtraiter = and i64 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.06.i.prol = phi i64 [ %i.d, %.lr.ph.i.prol ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.prol
  store atomic i8 1, ptr %i.c monotonic, align 1
  %i.d = add nuw i64 %.06.i.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !11

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi i64 [ %1, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.e = sub i64 %1, %2
  %i.f = icmp ugt i64 %i.e, -8
  br i1 %i.f, label %_ZN6hermes2vm9CardTable17cleanOrDirtyRangeEmmNS1_10CardStatusE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  store atomic i8 1, ptr %i.g monotonic, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store atomic i8 1, ptr %i.i monotonic, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store atomic i8 1, ptr %i.k monotonic, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store atomic i8 1, ptr %i.m monotonic, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store atomic i8 1, ptr %i.o monotonic, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  store atomic i8 1, ptr %i.q monotonic, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  store atomic i8 1, ptr %i.s monotonic, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  store atomic i8 1, ptr %i.u monotonic, align 1
  %i.v = add nuw i64 %.06.i, 8                    ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.v, %2
  br i1 %exitcond.not.i.7, label %_ZN6hermes2vm9CardTable17cleanOrDirtyRangeEmmNS1_10CardStatusE.exit, label %.lr.ph.i, !llvm.loop !9

_ZN6hermes2vm9CardTable17cleanOrDirtyRangeEmmNS1_10CardStatusE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden { i64, i8 } @_ZNK6hermes2vm9CardTable22findNextCardWithStatusENS1_10CardStatusEmm(ptr noundef nonnull readonly align 1 captures(none) dereferenceable(16384) %0, i8 noundef signext %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i64 %2, %3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %storemerge7 = phi i64 [ %i.e, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %storemerge7
  %i.c = load atomic i8, ptr %i.b monotonic, align 1
  %i.d = icmp eq i8 %i.c, %1
  br i1 %i.d, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = add i64 %storemerge7, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.e, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %storemerge7, %.lr.ph ]
  %.sroa.3.1 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes2vm9CardTable5clearEv(ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(16384) %0) local_unnamed_addr #0 align 2 {
bb.a:
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.a
  %.06.i.i = phi i64 [ 32, %bb.a ], [ %i.p, %.lr.ph.i.i ] ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  store atomic i8 0, ptr %i.a monotonic, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store atomic i8 0, ptr %i.c monotonic, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store atomic i8 0, ptr %i.e monotonic, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  store atomic i8 0, ptr %i.g monotonic, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store atomic i8 0, ptr %i.i monotonic, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store atomic i8 0, ptr %i.k monotonic, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  store atomic i8 0, ptr %i.m monotonic, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  store atomic i8 0, ptr %i.o monotonic, align 1
  %i.p = add nuw nsw i64 %.06.i.i, 8              ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %i.p, 8192
  br i1 %exitcond.not.i.i.7, label %_ZN6hermes2vm9CardTable10cleanRangeEmm.exit, label %.lr.ph.i.i, !llvm.loop !9

_ZN6hermes2vm9CardTable10cleanRangeEmm.exit:      ; preds = %.lr.ph.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes2vm9CardTable10cleanRangeEmm(ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(16384) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i64 %1, %2
  br i1 %i.a, label %.lr.ph.i.preheader, label %_ZN6hermes2vm9CardTable17cleanOrDirtyRangeEmmNS1_10CardStatusE.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1
  %xtraiter = and i64 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.06.i.prol = phi i64 [ %i.d, %.lr.ph.i.prol ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.prol
  store atomic i8 0, ptr %i.c monotonic, align 1
  %i.d = add nuw i64 %.06.i.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !13

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi i64 [ %1, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.e = sub i64 %1, %2
  %i.f = icmp ugt i64 %i.e, -8
  br i1 %i.f, label %_ZN6hermes2vm9CardTable17cleanOrDirtyRangeEmmNS1_10CardStatusE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  store atomic i8 0, ptr %i.g monotonic, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store atomic i8 0, ptr %i.i monotonic, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store atomic i8 0, ptr %i.k monotonic, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store atomic i8 0, ptr %i.m monotonic, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store atomic i8 0, ptr %i.o monotonic, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  store atomic i8 0, ptr %i.q monotonic, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  store atomic i8 0, ptr %i.s monotonic, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  store atomic i8 0, ptr %i.u monotonic, align 1
  %i.v = add nuw i64 %.06.i, 8                    ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.v, %2
  br i1 %exitcond.not.i.7, label %_ZN6hermes2vm9CardTable17cleanOrDirtyRangeEmmNS1_10CardStatusE.exit, label %.lr.ph.i, !llvm.loop !9

_ZN6hermes2vm9CardTable17cleanOrDirtyRangeEmmNS1_10CardStatusE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes2vm9CardTable21updateAfterCompactionEPKv(ptr noundef nonnull align 1 dereferenceable(16384) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 511
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr i64 %i.d, 9                         ; 9 uses
  %i.f = icmp ugt i64 %i.e, 32
  br i1 %i.f, label %.lr.ph.i.i.preheader, label %.lr.ph.i.i4.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -33
  %xtraiter = and i64 %i.e, 7                     ; 3 uses
  %i.h = icmp ult i64 %i.g, 7
  br i1 %i.h, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %i.i = and i64 %i.e, -8
  %i.j = add nsw i64 %i.i, -40
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.06.i.i = phi i64 [ 32, %.lr.ph.i.i.preheader.new ], [ %i.z, %.lr.ph.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  store atomic i8 1, ptr %i.k monotonic, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store atomic i8 1, ptr %i.m monotonic, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store atomic i8 1, ptr %i.o monotonic, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  store atomic i8 1, ptr %i.q monotonic, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store atomic i8 1, ptr %i.s monotonic, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  store atomic i8 1, ptr %i.u monotonic, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  store atomic i8 1, ptr %i.w monotonic, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 7
  store atomic i8 1, ptr %i.y monotonic, align 1
  %i.z = add nuw i64 %.06.i.i, 8                  ; 2 uses
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter, %i.j
  br i1 %niter.ncmp.7, label %_ZN6hermes2vm9CardTable10dirtyRangeEmm.exit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !9

_ZN6hermes2vm9CardTable10dirtyRangeEmm.exit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6hermes2vm9CardTable10dirtyRangeEmm.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN6hermes2vm9CardTable10dirtyRangeEmm.exit.unr-lcssa, %.lr.ph.i.i.preheader
  %.06.i.i.epil.init = phi i64 [ 32, %.lr.ph.i.i.preheader ], [ %i.z, %_ZN6hermes2vm9CardTable10dirtyRangeEmm.exit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.06.i.i.epil = phi i64 [ %i.ab, %.lr.ph.i.i.epil ], [ %.06.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i.epil
  store atomic i8 1, ptr %i.aa monotonic, align 1
  %i.ab = add nuw i64 %.06.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6hermes2vm9CardTable10dirtyRangeEmm.exit, label %.lr.ph.i.i.epil, !llvm.loop !14

_ZN6hermes2vm9CardTable10dirtyRangeEmm.exit:      ; preds = %.lr.ph.i.i.epil, %_ZN6hermes2vm9CardTable10dirtyRangeEmm.exit.unr-lcssa
  %i.ac = icmp ult i64 %i.e, 8192
  br i1 %i.ac, label %.lr.ph.i.i4.preheader, label %_ZN6hermes2vm9CardTable10cleanRangeEmm.exit

.lr.ph.i.i4.preheader:                            ; preds = %bb.a, %_ZN6hermes2vm9CardTable10dirtyRangeEmm.exit
  %i.ad = sub nsw i64 0, %i.e
  %xtraiter8 = and i64 %i.ad, 7                   ; 2 uses
  %lcmp.mod9.not = icmp eq i64 %xtraiter8, 0
  br i1 %lcmp.mod9.not, label %.lr.ph.i.i4.prol.loopexit, label %.lr.ph.i.i4.prol

.lr.ph.i.i4.prol:                                 ; preds = %.lr.ph.i.i4.preheader, %.lr.ph.i.i4.prol
  %.06.i.i5.prol = phi i64 [ %i.af, %.lr.ph.i.i4.prol ], [ %i.e, %.lr.ph.i.i4.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i4.prol ], [ 0, %.lr.ph.i.i4.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i5.prol
  store atomic i8 0, ptr %i.ae monotonic, align 1
  %i.af = add nuw nsw i64 %.06.i.i5.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter8
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i4.prol.loopexit, label %.lr.ph.i.i4.prol, !llvm.loop !15

.lr.ph.i.i4.prol.loopexit:                        ; preds = %.lr.ph.i.i4.prol, %.lr.ph.i.i4.preheader
  %.06.i.i5.unr = phi i64 [ %i.e, %.lr.ph.i.i4.preheader ], [ %i.af, %.lr.ph.i.i4.prol ]
  %i.ag = add nsw i64 %i.e, -8185
  %i.ah = icmp ult i64 %i.ag, 7
  br i1 %i.ah, label %_ZN6hermes2vm9CardTable10cleanRangeEmm.exit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %.lr.ph.i.i4.prol.loopexit, %.lr.ph.i.i4
  %.06.i.i5 = phi i64 [ %i.ax, %.lr.ph.i.i4 ], [ %.06.i.i5.unr, %.lr.ph.i.i4.prol.loopexit ] ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i5
  store atomic i8 0, ptr %i.ai monotonic, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store atomic i8 0, ptr %i.ak monotonic, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i5
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store atomic i8 0, ptr %i.am monotonic, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  store atomic i8 0, ptr %i.ao monotonic, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store atomic i8 0, ptr %i.aq monotonic, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i5
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 5
  store atomic i8 0, ptr %i.as monotonic, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i5
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  store atomic i8 0, ptr %i.au monotonic, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.i5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 7
  store atomic i8 0, ptr %i.aw monotonic, align 1
  %i.ax = add nuw nsw i64 %.06.i.i5, 8            ; 2 uses
  %exitcond.not.i.i6.7 = icmp eq i64 %i.ax, 8192
  br i1 %exitcond.not.i.i6.7, label %_ZN6hermes2vm9CardTable10cleanRangeEmm.exit, label %.lr.ph.i.i4, !llvm.loop !9

_ZN6hermes2vm9CardTable10cleanRangeEmm.exit:      ; preds = %.lr.ph.i.i4.prol.loopexit, %.lr.ph.i.i4, %_ZN6hermes2vm9CardTable10dirtyRangeEmm.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes2vm9CardTable17cleanOrDirtyRangeEmmNS1_10CardStatusE(ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(16384) %0, i64 noundef %1, i64 noundef %2, i8 noundef signext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i64 %1, %2
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1
  %xtraiter = and i64 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.06.prol = phi i64 [ %i.d, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.06.prol
  store atomic i8 %3, ptr %i.c monotonic, align 1
  %i.d = add nuw i64 %.06.prol, 1                 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !16

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.06.unr = phi i64 [ %1, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %i.e = sub i64 %1, %2
  %i.f = icmp ugt i64 %i.e, -8
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.06 = phi i64 [ %i.v, %.lr.ph ], [ %.06.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.06
  store atomic i8 %3, ptr %i.g monotonic, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.06
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store atomic i8 %3, ptr %i.i monotonic, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.06
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store atomic i8 %3, ptr %i.k monotonic, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.06
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store atomic i8 %3, ptr %i.m monotonic, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.06
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store atomic i8 %3, ptr %i.o monotonic, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.06
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  store atomic i8 %3, ptr %i.q monotonic, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.06
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  store atomic i8 %3, ptr %i.s monotonic, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.06
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  store atomic i8 %3, ptr %i.u monotonic, align 1
  %i.v = add nuw i64 %.06, 8                      ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.v, %2
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes2vm9CardTable16updateBoundariesEPNS1_8BoundaryEPKcS5_(ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(16384) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef readnone captures(address) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = lshr i64 %i.e, 3
  %i.g = trunc i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8192 ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 %i.g, ptr %i.j, align 1, !tbaa !23
  %storemerge19.in20 = load i64, ptr %1, align 8, !tbaa !22
  %storemerge1921 = add i64 %storemerge19.in20, 1 ; 2 uses
  store i64 %storemerge1921, ptr %1, align 8, !tbaa !22
  %.pn22 = load ptr, ptr %i.a, align 8, !tbaa !17
  %storemerge23 = getelementptr inbounds nuw i8, ptr %.pn22, i64 512 ; 2 uses
  store ptr %storemerge23, ptr %i.a, align 8, !tbaa !17
  %i.k = icmp ult ptr %storemerge23, %3
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.l = phi i64 [ %storemerge19, %.lr.ph ], [ %storemerge1921, %bb.a ]
  %.026 = phi i32 [ %.1, %.lr.ph ], [ 0, %bb.a ]
  %.01425 = phi i32 [ %.115, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %.01624 = phi i8 [ %.117, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.m = xor i8 %.01624, -1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  store i8 %i.m, ptr %i.n, align 1, !tbaa !23
  %i.o = add i32 %.026, 1                         ; 2 uses
  %i.p = icmp eq i32 %i.o, %.01425                ; 3 uses
  %i.q = zext i1 %i.p to i8
  %.117 = add i8 %.01624, %i.q
  %i.r = zext i1 %i.p to i32
  %.115 = shl i32 %.01425, %i.r
  %.1 = select i1 %i.p, i32 0, i32 %i.o
  %storemerge19.in = load i64, ptr %1, align 8, !tbaa !22
  %storemerge19 = add i64 %storemerge19.in, 1     ; 2 uses
  store i64 %storemerge19, ptr %1, align 8, !tbaa !22
  %.pn = load ptr, ptr %i.a, align 8, !tbaa !17
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 512 ; 2 uses
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !17
  %i.s = icmp ult ptr %storemerge, %3
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull ptr @_ZNK6hermes2vm9CardTable15firstObjForCardEj(ptr noundef nonnull readonly align 1 captures(ret: address, provenance) dereferenceable(16384) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8192 ; 2 uses
  %.pn12 = zext i32 %1 to i64                     ; 2 uses
  %.09.in13 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pn12
  %.0914 = load i8, ptr %.09.in13, align 1, !tbaa !23 ; 3 uses
  %i.b = icmp slt i8 %.0914, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0916 = phi i8 [ %.09, %.lr.ph ], [ %.0914, %bb.a ]
  %.015 = phi i32 [ %i.e, %.lr.ph ], [ %1, %bb.a ]
  %i.c = xor i8 %.0916, -1
  %i.d = zext nneg i8 %i.c to i32
  %.neg11 = shl nsw i32 -1, %i.d
  %i.e = add i32 %.neg11, %.015                   ; 2 uses
  %.pn = zext i32 %i.e to i64                     ; 2 uses
  %.09.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pn
  %.09 = load i8, ptr %.09.in, align 1, !tbaa !23 ; 3 uses
  %i.f = icmp slt i8 %.09, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.pn.lcssa = phi i64 [ %.pn12, %bb.a ], [ %.pn, %.lr.ph ]
  %.09.lcssa = phi i8 [ %.0914, %bb.a ], [ %.09, %.lr.ph ]
  %i.g = zext nneg i8 %.09.lcssa to i64
  %i.h = shl nuw nsw i64 %.pn.lcssa, 9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %.neg = mul nsw i64 %i.g, -8
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %.neg
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm9CardTable20protectBoundaryTableEv(ptr noundef nonnull align 1 dereferenceable(16384) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8192
  %i.b = tail call noundef zeroext i1 @_ZN6hermes8oscompat10vm_protectEPvmNS0_11ProtectModeE(ptr noundef nonnull %i.a, i64 noundef 8192, i32 noundef 1) #6 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm9CardTable22unprotectBoundaryTableEv(ptr noundef nonnull align 1 dereferenceable(16384) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8192
  %i.b = tail call noundef zeroext i1 @_ZN6hermes8oscompat10vm_protectEPvmNS0_11ProtectModeE(ptr noundef nonnull %i.a, i64 noundef 8192, i32 noundef 0) #6 ; 0 uses
  ret void
}

declare noundef zeroext i1 @_ZN6hermes8oscompat10vm_protectEPvmNS0_11ProtectModeE(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress nofree norecurse nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = !{!18, !20, i64 8}
!18 = !{!"_ZTSN6hermes2vm9CardTable8BoundaryE", !19, i64 0, !20, i64 8}
!19 = !{!"long", !5, i64 0}
!20 = !{!"p1 omnipotent char", !21, i64 0}
!21 = !{!"any pointer", !5, i64 0}
!22 = !{!18, !19, i64 0}
!23 = !{!5, !5, i64 0}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
end_hunk_0
