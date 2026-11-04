Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/execUtils?download=true
inline.NumInlined: 76
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ExecGetResultType:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @ExecGetResultSlotOps(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 199
  %i.b = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %.not20 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not20, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 195
  %i.g = load i8, ptr %i.f, align 1, !range !7, !noundef !8
  store i8 %i.g, ptr %1, align 1
  %.pre = load ptr, ptr %i.d, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  br i1 %.not20, label %bb.i, label %bb.f

.thread:                                          ; preds = %bb.a
  %.not2024 = icmp eq ptr %1, null
  br i1 %.not2024, label %bb.i, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 195
  %i.i = load i8, ptr %i.h, align 1, !range !7, !noundef !8
  br label %.sink.split

bb.g:                                             ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.k, null
  br i1 %.not21, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i16, ptr %i.l, align 4
  %i.n = trunc i16 %i.m to i8
  %i.o = lshr i8 %i.n, 4
  %i.p = and i8 %i.o, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h, %bb.f
  %.sink = phi i8 [ %i.i, %bb.f ], [ %i.p, %bb.h ], [ 0, %bb.g ]
  store i8 %.sink, ptr %1, align 1
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.thread, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not22 = icmp eq ptr %i.r, null
  br i1 %.not22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.d, %bb.i, %bb.j
  %.0 = phi ptr [ @TTSOpsVirtual, %bb.i ], [ %i.t, %bb.j ], [ %.pre, %bb.d ], [ %i.e, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @ExecGetCommonSlotOps(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 199
  %i.d = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 195
  %i.i = load i8, ptr %i.h, align 1, !range !7, !noundef !8 ; 3 uses
  br i1 %.not.i, label %.sink.split.i, label %ExecGetResultSlotOps.exit

.thread.i:                                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not21.i = icmp eq ptr %i.k, null
  br i1 %.not21.i, label %.loopexit, label %.sink.split.i.thread43

.sink.split.i.thread43:                           ; preds = %.thread.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i16, ptr %i.l, align 4
  %i.n = trunc i16 %i.m to i8
  %i.o = lshr i8 %i.n, 4
  br label %bb.d

.sink.split.i:                                    ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.not22.i = icmp eq ptr %.pre, null
  br i1 %.not22.i, label %ExecGetResultSlotOps.exit, label %bb.d

bb.d:                                             ; preds = %.sink.split.i.thread43, %.sink.split.i
  %.sink.i46 = phi i8 [ %i.o, %.sink.split.i.thread43 ], [ %i.i, %.sink.split.i ]
  %i.p = phi ptr [ %i.k, %.sink.split.i.thread43 ], [ %.pre, %.sink.split.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  br label %ExecGetResultSlotOps.exit

ExecGetResultSlotOps.exit:                        ; preds = %bb.c, %.sink.split.i, %bb.d
  %.028 = phi i8 [ %i.i, %.sink.split.i ], [ %.sink.i46, %bb.d ], [ %i.i, %bb.c ]
  %.0.i = phi ptr [ @TTSOpsVirtual, %.sink.split.i ], [ %i.r, %bb.d ], [ %i.g, %bb.c ] ; 3 uses
  %i.s = trunc i8 %.028 to i1
  br i1 %i.s, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %ExecGetResultSlotOps.exit
  %.not1729.not = icmp eq i32 %1, 1
  br i1 %.not1729.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.e:                                             ; preds = %ExecGetResultSlotOps.exit26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 199
  %i.w = load i8, ptr %i.v, align 1, !range !7, !noundef !8
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %.thread.i18

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i24 = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 195
  %i.ab = load i8, ptr %i.aa, align 1, !range !7, !noundef !8 ; 3 uses
  br i1 %.not.i24, label %.sink.split.i20, label %ExecGetResultSlotOps.exit26

.thread.i18:                                      ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not21.i19 = icmp eq ptr %i.ad, null
  br i1 %.not21.i19, label %.loopexit, label %.sink.split.i20.thread51

.sink.split.i20.thread51:                         ; preds = %.thread.i18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i16, ptr %i.ae, align 4
  %i.ag = trunc i16 %i.af to i8
  %i.ah = lshr i8 %i.ag, 4
  br label %bb.g

.sink.split.i20:                                  ; preds = %bb.f
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %.pre34 = load ptr, ptr %.phi.trans.insert33, align 8 ; 2 uses
  %.not22.i22 = icmp eq ptr %.pre34, null
  br i1 %.not22.i22, label %ExecGetResultSlotOps.exit26, label %bb.g

bb.g:                                             ; preds = %.sink.split.i20.thread51, %.sink.split.i20
  %.sink.i2154 = phi i8 [ %i.ah, %.sink.split.i20.thread51 ], [ %i.ab, %.sink.split.i20 ]
  %i.ai = phi ptr [ %i.ad, %.sink.split.i20.thread51 ], [ %.pre34, %.sink.split.i20 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  br label %ExecGetResultSlotOps.exit26

ExecGetResultSlotOps.exit26:                      ; preds = %bb.f, %.sink.split.i20, %bb.g
  %.1 = phi i8 [ %i.ab, %.sink.split.i20 ], [ %.sink.i2154, %bb.g ], [ %i.ab, %bb.f ]
  %.0.i23 = phi ptr [ @TTSOpsVirtual, %.sink.split.i20 ], [ %i.ak, %bb.g ], [ %i.z, %bb.f ]
  %i.al = trunc i8 %.1 to i1
  %.not = icmp eq ptr %.0.i, %.0.i23
  %cond1 = select i1 %i.al, i1 %.not, i1 false
  br i1 %cond1, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %.thread.i18, %bb.e, %ExecGetResultSlotOps.exit26, %.thread.i, %.preheader, %ExecGetResultSlotOps.exit, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %ExecGetResultSlotOps.exit ], [ %.0.i, %.preheader ], [ null, %.thread.i ], [ null, %.thread.i18 ], [ %.0.i, %bb.e ], [ null, %ExecGetResultSlotOps.exit26 ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @ExecGetCommonChildSlotOps(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 199
  %i.f = load i8, ptr %i.e, align 1, !range !7, !noundef !8
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %.thread.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 195
  %i.k = load i8, ptr %i.j, align 1, !range !7, !noundef !8 ; 3 uses
  br i1 %.not.i.i, label %.sink.split.i.i, label %ExecGetResultSlotOps.exit.i

.thread.i.i:                                      ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %.not21.i.i = icmp eq ptr %i.m, null
  br i1 %.not21.i.i, label %ExecGetCommonSlotOps.exit, label %.sink.split.i.thread43.i

.sink.split.i.thread43.i:                         ; preds = %.thread.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i16, ptr %i.n, align 4
  %i.p = trunc i16 %i.o to i8
  %i.q = lshr i8 %i.p, 4
  br label %bb.c

.sink.split.i.i:                                  ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %.not22.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not22.i.i, label %ExecGetResultSlotOps.exit.i, label %bb.c

bb.c:                                             ; preds = %.sink.split.i.i, %.sink.split.i.thread43.i
  %.sink.i46.i = phi i8 [ %i.q, %.sink.split.i.thread43.i ], [ %i.k, %.sink.split.i.i ]
  %i.r = phi ptr [ %i.m, %.sink.split.i.thread43.i ], [ %.pre.i, %.sink.split.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  br label %ExecGetResultSlotOps.exit.i

ExecGetResultSlotOps.exit.i:                      ; preds = %bb.c, %.sink.split.i.i, %bb.b
  %.028.i = phi i8 [ %i.k, %.sink.split.i.i ], [ %.sink.i46.i, %bb.c ], [ %i.k, %bb.b ]
  %.0.i.i = phi ptr [ @TTSOpsVirtual, %.sink.split.i.i ], [ %i.t, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.u = trunc i8 %.028.i to i1
  br i1 %i.u, label %.lr.ph.i, label %ExecGetCommonSlotOps.exit

.lr.ph.i:                                         ; preds = %ExecGetResultSlotOps.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 199
  %i.w = load i8, ptr %i.v, align 1, !range !7, !noundef !8
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %.thread.i18.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i24.i = icmp eq ptr %i.z, null
  %1 = getelementptr inbounds nuw i8, ptr %i.d, i64 195
  %2 = load i8, ptr %1, align 1, !range !7, !noundef !8 ; 3 uses
  br i1 %.not.i24.i, label %.sink.split.i20.i, label %ExecGetResultSlotOps.exit26.i

.thread.i18.i:                                    ; preds = %.lr.ph.i
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.aa = load ptr, ptr %3, align 8               ; 3 uses
  %.not21.i19.i.a = icmp eq ptr %i.aa, null
  br i1 %.not21.i19.i.a, label %ExecGetCommonSlotOps.exit, label %.sink.split.i20.thread51.i

.sink.split.i20.thread51.i:                       ; preds = %.thread.i18.i
  %4 = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %5 = load i16, ptr %4, align 4
  %6 = trunc i16 %5 to i8
  %7 = lshr i8 %6, 4
  br label %bb.e

.sink.split.i20.i:                                ; preds = %bb.d
  %.phi.trans.insert33.i.a = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %.pre34.i = load ptr, ptr %.phi.trans.insert33.i.a, align 8 ; 2 uses
  %.not22.i22.i = icmp eq ptr %.pre34.i, null
  br i1 %.not22.i22.i, label %ExecGetResultSlotOps.exit26.i, label %bb.e

bb.e:                                             ; preds = %.sink.split.i20.i, %.sink.split.i20.thread51.i
  %.sink.i2154.i = phi i8 [ %7, %.sink.split.i20.thread51.i ], [ %2, %.sink.split.i20.i ]
  %8 = phi ptr [ %i.aa, %.sink.split.i20.thread51.i ], [ %.pre34.i, %.sink.split.i20.i ]
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  br label %ExecGetResultSlotOps.exit26.i

ExecGetResultSlotOps.exit26.i:                    ; preds = %bb.e, %.sink.split.i20.i, %bb.d
  %.1.i = phi i8 [ %2, %.sink.split.i20.i ], [ %.sink.i2154.i, %bb.e ], [ %2, %bb.d ]
  %.0.i23.i = phi ptr [ @TTSOpsVirtual, %.sink.split.i20.i ], [ %10, %bb.e ], [ %i.z, %bb.d ]
  %11 = trunc i8 %.1.i to i1
  %.not.i = icmp eq ptr %.0.i.i, %.0.i23.i
  %cond1.i = select i1 %11, i1 %.not.i, i1 false
  %spec.select.a = select i1 %cond1.i, ptr %.0.i.i, ptr null
  br label %ExecGetCommonSlotOps.exit

ExecGetCommonSlotOps.exit:                        ; preds = %ExecGetResultSlotOps.exit26.i, %.thread.i18.i, %.thread.i.i, %ExecGetResultSlotOps.exit.i
  %.3.i = phi ptr [ null, %.thread.i.i ], [ null, %ExecGetResultSlotOps.exit.i ], [ null, %.thread.i18.i ], [ %spec.select.a, %ExecGetResultSlotOps.exit26.i ]
  ret ptr %.3.i
}

; Function Attrs: nounwind uwtable
define dso_local void @ExecAssignProjectionInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr @ExecBuildProjectionInfo(ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %0, ptr noundef %1) #13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.i, ptr %i.j, align 8
  ret void
}

declare ptr @ExecBuildProjectionInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ExecConditionalAssignProjectionInfo(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = load i32, ptr %1, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %list_head.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  br label %list_head.exit.i

list_head.exit.i:                                 ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.not2.i = icmp slt i32 %i.e, 1
  br i1 %.not2.i, label %tlist_matches_tupdesc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %list_head.exit.i
  %i.i = zext nneg i32 %i.e to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = getelementptr i8, ptr %i.d, i64 4
  %i.m = getelementptr i8, ptr %i.d, i64 16
  %i.n = add nuw i32 %i.e, 1
  %wide.trip.count.i = zext i32 %i.n to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 3 uses
  %.0244.i = phi ptr [ %i.h, %.lr.ph.i ], [ %..i.i, %bb.k ] ; 3 uses
  %i.o = getelementptr [100 x i8], ptr %i.k, i64 %indvars.iv.i ; 4 uses
  %i.p = icmp eq ptr %.0244.i, null
  br i1 %i.p, label %tlist_matches_tupdesc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %.0244.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 5 uses
  %.not31.i = icmp eq ptr %i.s, null
  br i1 %.not31.i, label %tlist_matches_tupdesc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp eq i32 %i.t, 6
  br i1 %i.u, label %bb.f, label %tlist_matches_tupdesc.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load i16, ptr %i.v, align 8
  %i.x = sext i16 %i.w to i64
  %.not32.i = icmp eq i64 %indvars.iv.i, %i.x
  br i1 %.not32.i, label %bb.g, label %tlist_matches_tupdesc.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.o, i64 23
  %i.z = load i8, ptr %i.y, align 1, !range !7, !noundef !8
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %tlist_matches_tupdesc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %i.o, i64 20
  %i.ac = load i8, ptr %i.ab, align 4, !range !7, !noundef !8
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %tlist_matches_tupdesc.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = load i32, ptr %i.o, align 4
  %.not33.i = icmp eq i32 %i.af, %i.ag
  br i1 %.not33.i, label %bb.j, label %tlist_matches_tupdesc.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr i8, ptr %i.o, i64 8
  %i.ak = load i32, ptr %i.aj, align 4
  %.not34.i = icmp eq i32 %i.ai, %i.ak
  %.not35.i = icmp eq i32 %i.ai, -1
  %or.cond.i = or i1 %.not35.i, %.not34.i
  br i1 %or.cond.i, label %bb.k, label %tlist_matches_tupdesc.exit.thread

bb.k:                                             ; preds = %bb.j
  %.val.i = load i32, ptr %i.l, align 4
  %.val36.i = load ptr, ptr %i.m, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.0244.i, i64 8 ; 2 uses
  %i.am = sext i32 %.val.i to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %.val36.i, i64 %i.am
  %i.ao = icmp ult ptr %i.al, %i.an
  %..i.i = select i1 %i.ao, ptr %i.al, ptr null   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %tlist_matches_tupdesc.exit, label %bb.c, !llvm.loop !12

tlist_matches_tupdesc.exit:                       ; preds = %bb.k, %list_head.exit.i
  %.024.lcssa.i = phi ptr [ %i.h, %list_head.exit.i ], [ %..i.i, %bb.k ]
  %.not30.i = icmp eq ptr %.024.lcssa.i, null
  br i1 %.not30.i, label %bb.l, label %tlist_matches_tupdesc.exit.thread

bb.l:                                             ; preds = %tlist_matches_tupdesc.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ar = load i8, ptr %i.aq, align 4, !range !7, !noundef !8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 199
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.au = load i8, ptr %i.at, align 8, !range !7, !noundef !8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 195
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %bb.o

tlist_matches_tupdesc.exit.thread:                ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.e, %bb.j, %bb.i, %tlist_matches_tupdesc.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %tlist_matches_tupdesc.exit.thread
  tail call void @ExecInitResultSlot(ptr noundef nonnull %0, ptr noundef nonnull @TTSOpsVirtual) #13
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr @TTSOpsVirtual, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 195
  store i8 1, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 199
  store i8 1, ptr %i.bc, align 1
  %.pre = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.pre18 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre19 = load ptr, ptr %i.ay, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %tlist_matches_tupdesc.exit.thread
  %i.bd = phi ptr [ %.pre19, %bb.m ], [ %i.az, %tlist_matches_tupdesc.exit.thread ]
  %i.be = phi ptr [ %.pre18, %bb.m ], [ %i.d, %tlist_matches_tupdesc.exit.thread ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call ptr @ExecBuildProjectionInfo(ptr noundef %i.be, ptr noundef %i.bg, ptr noundef %i.bd, ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.sink24 = phi i64 [ 136, %bb.n ], [ 184, %bb.l ]
  %.sink = phi ptr [ %i.bh, %bb.n ], [ %i.ax, %bb.l ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.sink24
  store ptr %.sink, ptr %i.bi, align 8
  ret void
}

declare void @ExecInitResultSlot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ExecAssignScanType(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @ExecSetSlotDescriptor(ptr noundef %i.b, ptr noundef %1) #13
  ret void
}

declare void @ExecSetSlotDescriptor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ExecCreateScanSlotFromOuterPlan(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @ExecInitScanTupleSlot(ptr noundef %0, ptr noundef %1, ptr noundef %i.d, ptr noundef %2, i16 noundef zeroext 0) #13
  ret void
}

end_hunk_0
