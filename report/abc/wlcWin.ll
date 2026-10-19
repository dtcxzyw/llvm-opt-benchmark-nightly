Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcWin?download=true
inline.NumInlined: 53
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"Arithmetic cone of node %d (%s):\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Finished printing %d arithmetic cones.\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @Wlc_ObjIsArithm(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, 63                         ; 2 uses
  %switch.tableidx = add nsw i16 %i.b, -6         ; 2 uses
  %i.c = icmp ult i16 %switch.tableidx, 40
  br i1 %i.c, label %switch.hole_check, label %bb.b

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  %i.d = icmp eq i16 %i.b, 50
  %i.e = zext i1 %i.d to i32
  br label %switch.lookup

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i16 %switch.tableidx to i64
  %switch.shifted = lshr i64 962073461251, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %switch.hole_check, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ 1, %switch.hole_check ]
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @Wlc_ObjIsArithmReal(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, 63                         ; 2 uses
  %switch.tableidx = add nsw i16 %i.b, -15        ; 2 uses
  %i.c = icmp ult i16 %switch.tableidx, 31
  br i1 %i.c, label %switch.hole_check, label %bb.b

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  %i.d = icmp eq i16 %i.b, 50
  %i.e = zext i1 %i.d to i32
  br label %switch.lookup

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i16 %switch.tableidx to i32
  %switch.shifted = lshr i32 1879048193, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %switch.hole_check, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ 1, %switch.hole_check ]
  ret i32 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Wlc_ManCountArithmReal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !12  ; 2 uses
  %i.b = icmp sgt i32 %.val, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr i8, ptr %0, i64 640
  %.val10 = load ptr, ptr %i.d, align 8, !tbaa !22
  %wide.trip.count = zext nneg i32 %.val to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Wlc_ObjIsArithmReal.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Wlc_ObjIsArithmReal.exit ] ; 2 uses
  %.012 = phi i32 [ 0, %.lr.ph ], [ %i.o, %Wlc_ObjIsArithmReal.exit ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [24 x i8], ptr %.val10, i64 %i.g
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 63                         ; 2 uses
  %switch.tableidx = add nsw i16 %i.j, -15        ; 2 uses
  %i.k = icmp ult i16 %switch.tableidx, 31
  br i1 %i.k, label %switch.hole_check, label %bb.c

bb.c:                                             ; preds = %switch.hole_check, %bb.b
  %i.l = icmp eq i16 %i.j, 50
  %i.m = zext i1 %i.l to i32
  br label %Wlc_ObjIsArithmReal.exit

switch.hole_check:                                ; preds = %bb.b
  %switch.maskindex = zext nneg i16 %switch.tableidx to i32
  %switch.shifted = lshr i32 1879048193, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %Wlc_ObjIsArithmReal.exit, label %bb.c

Wlc_ObjIsArithmReal.exit:                         ; preds = %switch.hole_check, %bb.c
  %i.n = phi i32 [ %i.m, %bb.c ], [ 1, %switch.hole_check ]
  %i.o = add nuw nsw i32 %i.n, %.012              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !0

.critedge:                                        ; preds = %Wlc_ObjIsArithmReal.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %Wlc_ObjIsArithmReal.exit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Wlc_ObjHasArithm_rec(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 640
  br label %tailrecurse

tailrecurse:                                      ; preds = %Wlc_ObjFanin0.exit, %bb.a
  %.tr13 = phi ptr [ %1, %bb.a ], [ %i.l, %Wlc_ObjFanin0.exit ] ; 3 uses
  %i.b = load i16, ptr %.tr13, align 8
  %i.c = and i16 %i.b, 63                         ; 3 uses
  switch i16 %i.c, label %bb.c [
    i16 6, label %.loopexit.loopexit
    i16 7, label %bb.b
    i16 15, label %bb.b
    i16 24, label %bb.b
    i16 25, label %bb.b
    i16 43, label %.loopexit
    i16 44, label %.loopexit
    i16 45, label %.loopexit
  ]

bb.b:                                             ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  %i.d = getelementptr inbounds nuw i8, ptr %.tr13, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !26
  %i.f = icmp ugt i32 %i.e, 2
  %cond = icmp eq i16 %i.c, 22
  %or.cond = or i1 %cond, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %.tr13, i64 16 ; 2 uses
  br i1 %or.cond, label %Wlc_ObjHasArray.exit.thread.i.i.i, label %Wlc_ObjFanin0.exit

Wlc_ObjHasArray.exit.thread.i.i.i:                ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  br label %Wlc_ObjFanin0.exit

Wlc_ObjFanin0.exit:                               ; preds = %bb.b, %Wlc_ObjHasArray.exit.thread.i.i.i
  %i.i = phi ptr [ %i.h, %Wlc_ObjHasArray.exit.thread.i.i.i ], [ %i.g, %bb.b ]
  %i.j = load i32, ptr %i.i, align 4, !tbaa !23
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %i.k
  br label %tailrecurse

bb.c:                                             ; preds = %tailrecurse
  %i.m = icmp eq i16 %i.c, 50
  %i.n = zext i1 %i.m to i32
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %tailrecurse
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %.loopexit.loopexit, %bb.c
  %.0 = phi i32 [ %i.n, %bb.c ], [ 0, %.loopexit.loopexit ], [ 1, %tailrecurse ], [ 1, %tailrecurse ], [ 1, %tailrecurse ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Wlc_ObjHasArithmFanins(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %.val9 = load i32, ptr %i.a, align 4, !tbaa !26 ; 5 uses
  %i.b = icmp sgt i32 %.val9, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp samesign ugt i32 %.val9, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 640
  %.val = load ptr, ptr %i.e, align 8, !tbaa !22  ; 4 uses
  br i1 %i.c, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !27
  %wide.trip.count44 = zext nneg i32 %.val9 to i64
  br label %Wlc_ObjHasArray.exit.thread.i.i.us

Wlc_ObjHasArray.exit.thread.i.i.us:               ; preds = %Wlc_ObjHasArithm_rec.exit.thread.us, %.lr.ph.split.us
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %Wlc_ObjHasArithm_rec.exit.thread.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv41
  br label %tailrecurse.i.us

tailrecurse.i.us:                                 ; preds = %tailrecurse.i.us.backedge, %Wlc_ObjHasArray.exit.thread.i.i.us
  %.pn.in.in.us = phi ptr [ %i.g, %Wlc_ObjHasArray.exit.thread.i.i.us ], [ %.pn.in.in.us.be, %tailrecurse.i.us.backedge ]
  %.pn.in.us = load i32, ptr %.pn.in.in.us, align 4, !tbaa !23
  %.pn.us = sext i32 %.pn.in.us to i64
  %.tr13.i.us = getelementptr inbounds [24 x i8], ptr %.val, i64 %.pn.us ; 3 uses
  %i.h = load i16, ptr %.tr13.i.us, align 8
  %i.i = and i16 %i.h, 63                         ; 2 uses
  switch i16 %i.i, label %Wlc_ObjHasArithm_rec.exit.thread.us [
    i16 50, label %.critedge
    i16 7, label %bb.b
    i16 15, label %bb.b
    i16 24, label %bb.b
    i16 25, label %bb.b
    i16 43, label %.critedge
    i16 44, label %.critedge
    i16 45, label %.critedge
  ]

bb.b:                                             ; preds = %tailrecurse.i.us, %tailrecurse.i.us, %tailrecurse.i.us, %tailrecurse.i.us
  %i.j = getelementptr inbounds nuw i8, ptr %.tr13.i.us, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26
  %i.l = icmp ugt i32 %i.k, 2
  %cond.i.us = icmp eq i16 %i.i, 22
  %or.cond.i.us = or i1 %cond.i.us, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %.tr13.i.us, i64 16 ; 2 uses
  br i1 %or.cond.i.us, label %Wlc_ObjHasArray.exit.thread.i.i.i.i.us, label %tailrecurse.i.us.backedge

Wlc_ObjHasArray.exit.thread.i.i.i.i.us:           ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  br label %tailrecurse.i.us.backedge

tailrecurse.i.us.backedge:                        ; preds = %Wlc_ObjHasArray.exit.thread.i.i.i.i.us, %bb.b
  %.pn.in.in.us.be = phi ptr [ %i.n, %Wlc_ObjHasArray.exit.thread.i.i.i.i.us ], [ %i.m, %bb.b ]
  br label %tailrecurse.i.us

Wlc_ObjHasArithm_rec.exit.thread.us:              ; preds = %tailrecurse.i.us
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %.critedge, label %Wlc_ObjHasArray.exit.thread.i.i.us, !llvm.loop !29

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.o = load i16, ptr %1, align 8
  %i.p = and i16 %i.o, 63
  switch i16 %i.p, label %tailrecurse.i [
    i16 6, label %.lr.ph.split.split.us
    i16 22, label %.lr.ph.split.split.us
  ]

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.lr.ph.split
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !27
  %wide.trip.count = zext nneg i32 %.val9 to i64
  br label %Wlc_ObjHasArray.exit.thread.i.i.us18

Wlc_ObjHasArray.exit.thread.i.i.us18:             ; preds = %Wlc_ObjHasArithm_rec.exit.thread.us29.a, %.lr.ph.split.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %Wlc_ObjHasArithm_rec.exit.thread.us29.a ], [ 0, %.lr.ph.split.split.us ] ; 2 uses
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  br label %tailrecurse.i.us20

tailrecurse.i.us20:                               ; preds = %tailrecurse.i.us20.backedge, %Wlc_ObjHasArray.exit.thread.i.i.us18
  %.pn.in.in.us21 = phi ptr [ %2, %Wlc_ObjHasArray.exit.thread.i.i.us18 ], [ %.pn.in.in.us21.be, %tailrecurse.i.us20.backedge ]
  %.pn.in.us22 = load i32, ptr %.pn.in.in.us21, align 4, !tbaa !23
  %.pn.us23 = sext i32 %.pn.in.us22 to i64
  %.tr13.i.us24 = getelementptr inbounds [24 x i8], ptr %.val, i64 %.pn.us23 ; 3 uses
  %i.r = load i16, ptr %.tr13.i.us24, align 8
  %i.s = and i16 %i.r, 63                         ; 2 uses
  switch i16 %i.s, label %Wlc_ObjHasArithm_rec.exit.thread.us29.a [
    i16 50, label %.critedge
    i16 7, label %bb.c
    i16 15, label %bb.c
    i16 24, label %bb.c
    i16 25, label %bb.c
    i16 43, label %.critedge
    i16 44, label %.critedge
    i16 45, label %.critedge
  ]

bb.c:                                             ; preds = %tailrecurse.i.us20, %tailrecurse.i.us20, %tailrecurse.i.us20, %tailrecurse.i.us20
  %i.t = getelementptr inbounds nuw i8, ptr %.tr13.i.us24, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !26
  %i.v = icmp ugt i32 %i.u, 2
  %cond.i.us25 = icmp eq i16 %i.s, 22
  %or.cond.i.us26 = or i1 %cond.i.us25, %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %.tr13.i.us24, i64 16 ; 2 uses
  br i1 %or.cond.i.us26, label %Wlc_ObjHasArray.exit.thread.i.i.i.i.us27, label %tailrecurse.i.us20.backedge

Wlc_ObjHasArray.exit.thread.i.i.i.i.us27:         ; preds = %bb.c
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  br label %tailrecurse.i.us20.backedge

tailrecurse.i.us20.backedge:                      ; preds = %Wlc_ObjHasArray.exit.thread.i.i.i.i.us27, %bb.c
  %.pn.in.in.us21.be = phi ptr [ %i.x, %Wlc_ObjHasArray.exit.thread.i.i.i.i.us27 ], [ %i.w, %bb.c ]
  br label %tailrecurse.i.us20

Wlc_ObjHasArithm_rec.exit.thread.us29.a:          ; preds = %tailrecurse.i.us20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not.a, label %.critedge, label %Wlc_ObjHasArray.exit.thread.i.i.us18, !llvm.loop !29

tailrecurse.i:                                    ; preds = %.lr.ph.split, %tailrecurse.i.backedge
  %.pn.in.in = phi ptr [ %.pn.in.in.be, %tailrecurse.i.backedge ], [ %i.d, %.lr.ph.split ]
  %.pn.in = load i32, ptr %.pn.in.in, align 4, !tbaa !23
  %.pn = sext i32 %.pn.in to i64
  %.tr13.i = getelementptr inbounds [24 x i8], ptr %.val, i64 %.pn ; 3 uses
  %i.y = load i16, ptr %.tr13.i, align 8
  %i.z = and i16 %i.y, 63                         ; 2 uses
  switch i16 %i.z, label %Wlc_ObjHasArithm_rec.exit.thread [
    i16 50, label %.critedge
    i16 7, label %bb.d
    i16 15, label %bb.d
    i16 24, label %bb.d
    i16 25, label %bb.d
    i16 43, label %.critedge
    i16 44, label %.critedge
    i16 45, label %.critedge
  ]

bb.d:                                             ; preds = %tailrecurse.i, %tailrecurse.i, %tailrecurse.i, %tailrecurse.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr13.i, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26
  %i.ac = icmp ugt i32 %i.ab, 2
  %cond.i = icmp eq i16 %i.z, 22
  %or.cond.i = or i1 %cond.i, %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr13.i, i64 16 ; 2 uses
  br i1 %or.cond.i, label %Wlc_ObjHasArray.exit.thread.i.i.i.i, label %tailrecurse.i.backedge

Wlc_ObjHasArray.exit.thread.i.i.i.i:              ; preds = %bb.d
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %Wlc_ObjHasArray.exit.thread.i.i.i.i, %bb.d
  %.pn.in.in.be = phi ptr [ %i.ae, %Wlc_ObjHasArray.exit.thread.i.i.i.i ], [ %i.ad, %bb.d ]
  br label %tailrecurse.i

Wlc_ObjHasArithm_rec.exit.thread:                 ; preds = %tailrecurse.i
  %exitcond40.not = icmp eq i32 %.val9, 1
  br i1 %exitcond40.not, label %.critedge.loopexit58.a, label %Wlc_ObjFaninId.exit.1

Wlc_ObjFaninId.exit.1:                            ; preds = %Wlc_ObjHasArithm_rec.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %tailrecurse.i.1

tailrecurse.i.1:                                  ; preds = %tailrecurse.i.backedge.1, %Wlc_ObjFaninId.exit.1
  %.pn.in.in.1 = phi ptr [ %i.af, %Wlc_ObjFaninId.exit.1 ], [ %.pn.in.in.be.1, %tailrecurse.i.backedge.1 ]
  %.pn.in.1 = load i32, ptr %.pn.in.in.1, align 4, !tbaa !23
  %.pn.1 = sext i32 %.pn.in.1 to i64
  %.tr13.i.1 = getelementptr inbounds [24 x i8], ptr %.val, i64 %.pn.1 ; 3 uses
  %i.ag = load i16, ptr %.tr13.i.1, align 8
  %i.ah = and i16 %i.ag, 63                       ; 2 uses
  switch i16 %i.ah, label %.critedge.loopexit58.a [
    i16 50, label %.critedge
    i16 7, label %bb.e
    i16 15, label %bb.e
    i16 24, label %bb.e
    i16 25, label %bb.e
    i16 43, label %.critedge
    i16 44, label %.critedge
    i16 45, label %.critedge
  ]

bb.e:                                             ; preds = %tailrecurse.i.1, %tailrecurse.i.1, %tailrecurse.i.1, %tailrecurse.i.1
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr13.i.1, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !26
  %i.ak = icmp ugt i32 %i.aj, 2
  %cond.i.1 = icmp eq i16 %i.ah, 22
  %or.cond.i.1 = or i1 %cond.i.1, %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %.tr13.i.1, i64 16 ; 2 uses
  br i1 %or.cond.i.1, label %Wlc_ObjHasArray.exit.thread.i.i.i.i.1, label %tailrecurse.i.backedge.1

Wlc_ObjHasArray.exit.thread.i.i.i.i.1:            ; preds = %bb.e
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !27
  br label %tailrecurse.i.backedge.1

tailrecurse.i.backedge.1:                         ; preds = %Wlc_ObjHasArray.exit.thread.i.i.i.i.1, %bb.e
  %.pn.in.in.be.1 = phi ptr [ %i.am, %Wlc_ObjHasArray.exit.thread.i.i.i.i.1 ], [ %i.al, %bb.e ]
  br label %tailrecurse.i.1

.critedge.loopexit58.a:                           ; preds = %tailrecurse.i.1, %Wlc_ObjHasArithm_rec.exit.thread
  br label %.critedge

.critedge:                                        ; preds = %Wlc_ObjHasArithm_rec.exit.thread.us29.a, %tailrecurse.i.us20, %tailrecurse.i.us20, %tailrecurse.i.us20, %tailrecurse.i.us20, %tailrecurse.i, %tailrecurse.i, %tailrecurse.i, %tailrecurse.i, %tailrecurse.i.1, %tailrecurse.i.1, %tailrecurse.i.1, %tailrecurse.i.1, %Wlc_ObjHasArithm_rec.exit.thread.us, %tailrecurse.i.us, %tailrecurse.i.us, %tailrecurse.i.us, %tailrecurse.i.us, %.critedge.loopexit58.a, %bb.a
  %.08 = phi i32 [ 1, %tailrecurse.i.us20 ], [ 1, %tailrecurse.i ], [ 0, %bb.a ], [ 0, %.critedge.loopexit58.a ], [ 0, %Wlc_ObjHasArithm_rec.exit.thread.us ], [ 1, %tailrecurse.i.us ], [ 1, %tailrecurse.i.us ], [ 1, %tailrecurse.i.us ], [ 1, %tailrecurse.i.us ], [ 1, %tailrecurse.i.1 ], [ 1, %tailrecurse.i.1 ], [ 1, %tailrecurse.i.1 ], [ 1, %tailrecurse.i.1 ], [ 1, %tailrecurse.i ], [ 1, %tailrecurse.i ], [ 1, %tailrecurse.i ], [ 1, %tailrecurse.i.us20 ], [ 1, %tailrecurse.i.us20 ], [ 1, %tailrecurse.i.us20 ], [ 0, %Wlc_ObjHasArithm_rec.exit.thread.us29.a ]
  ret i32 %.08
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Wlc_WinCompute_rec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i16, ptr %1, align 8                ; 3 uses
  %i.b = and i16 %i.a, 128
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.c = or disjoint i16 %i.a, 128
  store i16 %i.c, ptr %1, align 8
  %i.d = and i16 %i.a, 63
  switch i16 %i.d, label %Wlc_ObjIsArithm.exit [
    i16 6, label %.critedge30
    i16 7, label %.critedge30
    i16 15, label %.critedge30
    i16 24, label %.critedge30
    i16 25, label %.critedge30
    i16 43, label %.critedge30
    i16 44, label %.critedge30
    i16 45, label %.critedge30
    i16 50, label %.critedge30
  ]

Wlc_ObjIsArithm.exit:                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 640
  %.val21 = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %.val21 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !12   ; 7 uses
  %i.k = load i32, ptr %2, align 8, !tbaa !28
  %i.l = icmp eq i32 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %Wlc_ObjIsArithm.exit
  %i.m = icmp slt i32 %i.j, 16
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.o, i64 noundef 64) #11
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.q = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #12
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.r = phi ptr [ %i.p, %bb.e ], [ %i.q, %bb.f ]
  store ptr %i.r, ptr %i.n, align 8, !tbaa !13
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.s = icmp samesign ult i32 %i.j, 1073741823
  %i.t = shl nuw nsw i32 %i.j, 1
  %spec.select.i = select i1 %i.s, i32 %i.t, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.j, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.v, null
  %i.w = zext nneg i32 %spec.select.i to i64
  %i.x = shl nuw nsw i64 %i.w, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call ptr @realloc(ptr noundef nonnull %i.v, i64 noundef %i.x) #11
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.x) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = phi ptr [ %i.y, %bb.i ], [ %i.z, %bb.j ]
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !13
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !28
  %.pre35 = load i32, ptr %i.i, align 4, !tbaa !12
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Wlc_ObjIsArithm.exit, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.ab = phi i32 [ %i.j, %Wlc_ObjIsArithm.exit ], [ %i.j, %bb.g ], [ %.pre35, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.ae = add nsw i32 %i.ab, 1
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !12
  br label %.sink.split

.critedge30:                                      ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.af = getelementptr i8, ptr %1, i64 4         ; 2 uses
  %.val1931 = load i32, ptr %i.af, align 4, !tbaa !26 ; 2 uses
  %i.ag = icmp sgt i32 %.val1931, 0
  br i1 %i.ag, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.critedge30
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 640
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %Wlc_ObjFaninId.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Wlc_ObjFaninId.exit ] ; 2 uses
  %.val1933 = phi i32 [ %.val1931, %.lr.ph ], [ %.val19, %Wlc_ObjFaninId.exit ]
  %i.aj = icmp ugt i32 %.val1933, 2
  br i1 %i.aj, label %Wlc_ObjHasArray.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load i16, ptr %1, align 8
  %i.al = and i16 %i.ak, 63
  switch i16 %i.al, label %Wlc_ObjFaninId.exit [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i
  ]

Wlc_ObjHasArray.exit.thread.i.i:                  ; preds = %bb.m, %bb.m, %bb.l
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !27
  br label %Wlc_ObjFaninId.exit

Wlc_ObjFaninId.exit:                              ; preds = %bb.m, %Wlc_ObjHasArray.exit.thread.i.i
  %i.an = phi ptr [ %i.am, %Wlc_ObjHasArray.exit.thread.i.i ], [ %i.ah, %bb.m ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !23
  %.val = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [24 x i8], ptr %.val, i64 %i.aq
  tail call void @Wlc_WinCompute_rec(ptr noundef %0, ptr noundef %i.ar, ptr noundef %2, ptr noundef %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val19 = load i32, ptr %i.af, align 4, !tbaa !26 ; 2 uses
  %i.as = sext i32 %.val19 to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %bb.l, label %.critedge, !llvm.loop !30

.critedge:                                        ; preds = %Wlc_ObjFaninId.exit, %.critedge30
  %i.au = getelementptr i8, ptr %0, i64 640
  %.val20 = load ptr, ptr %i.au, align 8, !tbaa !22
  %i.av = ptrtoint ptr %1 to i64
  %i.aw = ptrtoint ptr %.val20 to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !12 ; 7 uses
  %i.ba = load i32, ptr %3, align 8, !tbaa !28
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.n, label %Vec_IntPush.exit29

bb.n:                                             ; preds = %.critedge
  %i.bc = icmp slt i32 %i.az, 16
  br i1 %i.bc, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i27 = icmp eq ptr %i.be, null
  br i1 %.not9.i.i27, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.be, i64 noundef 64) #11
  br label %Vec_IntGrow.exit.i28

bb.q:                                             ; preds = %bb.o
  %i.bg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #12
  br label %Vec_IntGrow.exit.i28

Vec_IntGrow.exit.i28:                             ; preds = %bb.q, %bb.p
  %i.bh = phi ptr [ %i.bf, %bb.p ], [ %i.bg, %bb.q ]
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !13
  br label %Vec_IntGrow.exit11.sink.split.i25

bb.r:                                             ; preds = %bb.n
  %i.bi = icmp samesign ult i32 %i.az, 1073741823
  %i.bj = shl nuw nsw i32 %i.az, 1
  %spec.select.i22 = select i1 %i.bi, i32 %i.bj, i32 2147483647 ; 3 uses
  %.not.i9.i23 = icmp samesign ult i32 %i.az, %spec.select.i22
  br i1 %.not.i9.i23, label %bb.s, label %Vec_IntPush.exit29

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !13 ; 2 uses
  %.not9.i10.i24 = icmp eq ptr %i.bl, null
  %i.bm = zext nneg i32 %spec.select.i22 to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2                ; 2 uses
  br i1 %.not9.i10.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = tail call ptr @realloc(ptr noundef nonnull %i.bl, i64 noundef %i.bn) #11
  br label %bb.v
end_hunk_0
