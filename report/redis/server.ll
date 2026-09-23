Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/server?download=true
inline.NumInlined: 245
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 23
begin_hunk_0_@addReplyDocFlagsForCommand:.lr.ph.i
  %.not21.i.1 = icmp eq i64 %i.f, 0
  br i1 %.not21.i.1, label %addReplyCommandFlags.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph29.i.1
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.256) #39
  br label %addReplyCommandFlags.exit

addReplyCommandFlags.exit:                        ; preds = %bb.b, %.lr.ph29.i.1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @addReplyFlagsForKeyArgs(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
.lr.ph.i:
  %i.a = and i64 %1, 1
  %i.b = and i64 %1, 1
  %i.c = and i64 %1, 2                            ; 2 uses
  %.lobit = lshr exact i64 %i.c, 1
  %spec.select.i.1 = add nuw nsw i64 %i.b, %.lobit
  %i.d = and i64 %1, 4                            ; 2 uses
  %.lobit2 = lshr exact i64 %i.d, 2
  %spec.select.i.2 = add nuw nsw i64 %spec.select.i.1, %.lobit2
  %i.e = and i64 %1, 8                            ; 2 uses
  %.lobit3 = lshr exact i64 %i.e, 3
  %spec.select.i.3 = add nuw nsw i64 %spec.select.i.2, %.lobit3
  %i.f = and i64 %1, 16                           ; 2 uses
  %.lobit4 = lshr exact i64 %i.f, 4
  %spec.select.i.4 = add nuw nsw i64 %spec.select.i.3, %.lobit4
  %i.g = and i64 %1, 32                           ; 2 uses
  %.lobit5 = lshr exact i64 %i.g, 5
  %spec.select.i.5 = add nuw nsw i64 %spec.select.i.4, %.lobit5
  %i.h = and i64 %1, 64                           ; 2 uses
  %.lobit6 = lshr exact i64 %i.h, 6
  %spec.select.i.6 = add nuw nsw i64 %spec.select.i.5, %.lobit6
  %i.i = and i64 %1, 128                          ; 2 uses
  %.lobit7 = lshr exact i64 %i.i, 7
  %spec.select.i.7 = add nuw nsw i64 %spec.select.i.6, %.lobit7
  %i.j = and i64 %1, 256                          ; 2 uses
  %.lobit8 = lshr exact i64 %i.j, 8
  %spec.select.i.8 = add nuw nsw i64 %spec.select.i.7, %.lobit8
  %i.k = and i64 %1, 512                          ; 2 uses
  %.lobit9 = lshr exact i64 %i.k, 9
  %spec.select.i.9 = add nuw nsw i64 %spec.select.i.8, %.lobit9
  %i.l = and i64 %1, 1024                         ; 2 uses
  %.lobit10 = lshr exact i64 %i.l, 10
  %spec.select.i.10 = add nuw nsw i64 %spec.select.i.9, %.lobit10
  tail call void @addReplySetLen(ptr noundef %0, i64 noundef %spec.select.i.10) #39
  %.not21.i = icmp eq i64 %i.a, 0
  br i1 %.not21.i, label %.lr.ph29.i.1, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.257) #39
  br label %.lr.ph29.i.1

.lr.ph29.i.1:                                     ; preds = %bb.a, %.lr.ph.i
  %.not21.i.1 = icmp eq i64 %i.c, 0
  br i1 %.not21.i.1, label %.lr.ph29.i.2, label %bb.b

bb.b:                                             ; preds = %.lr.ph29.i.1
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.258) #39
  br label %.lr.ph29.i.2

.lr.ph29.i.2:                                     ; preds = %bb.b, %.lr.ph29.i.1
  %.not21.i.2 = icmp eq i64 %i.d, 0
  br i1 %.not21.i.2, label %.lr.ph29.i.3, label %bb.c

bb.c:                                             ; preds = %.lr.ph29.i.2
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.259) #39
  br label %.lr.ph29.i.3

.lr.ph29.i.3:                                     ; preds = %bb.c, %.lr.ph29.i.2
  %.not21.i.3 = icmp eq i64 %i.e, 0
  br i1 %.not21.i.3, label %.lr.ph29.i.4, label %bb.d

bb.d:                                             ; preds = %.lr.ph29.i.3
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.260) #39
  br label %.lr.ph29.i.4

.lr.ph29.i.4:                                     ; preds = %bb.d, %.lr.ph29.i.3
  %.not21.i.4 = icmp eq i64 %i.f, 0
  br i1 %.not21.i.4, label %.lr.ph29.i.5, label %bb.e

bb.e:                                             ; preds = %.lr.ph29.i.4
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.261) #39
  br label %.lr.ph29.i.5

.lr.ph29.i.5:                                     ; preds = %bb.e, %.lr.ph29.i.4
  %.not21.i.5 = icmp eq i64 %i.g, 0
  br i1 %.not21.i.5, label %.lr.ph29.i.6, label %bb.f

bb.f:                                             ; preds = %.lr.ph29.i.5
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.262) #39
  br label %.lr.ph29.i.6

.lr.ph29.i.6:                                     ; preds = %bb.f, %.lr.ph29.i.5
  %.not21.i.6 = icmp eq i64 %i.h, 0
  br i1 %.not21.i.6, label %.lr.ph29.i.7, label %bb.g

bb.g:                                             ; preds = %.lr.ph29.i.6
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.263) #39
  br label %.lr.ph29.i.7

.lr.ph29.i.7:                                     ; preds = %bb.g, %.lr.ph29.i.6
  %.not21.i.7 = icmp eq i64 %i.i, 0
  br i1 %.not21.i.7, label %.lr.ph29.i.8, label %bb.h

bb.h:                                             ; preds = %.lr.ph29.i.7
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.264) #39
  br label %.lr.ph29.i.8

.lr.ph29.i.8:                                     ; preds = %bb.h, %.lr.ph29.i.7
  %.not21.i.8 = icmp eq i64 %i.j, 0
  br i1 %.not21.i.8, label %.lr.ph29.i.9, label %bb.i

bb.i:                                             ; preds = %.lr.ph29.i.8
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.265) #39
  br label %.lr.ph29.i.9

.lr.ph29.i.9:                                     ; preds = %bb.i, %.lr.ph29.i.8
  %.not21.i.9 = icmp eq i64 %i.k, 0
  br i1 %.not21.i.9, label %.lr.ph29.i.10, label %bb.j

bb.j:                                             ; preds = %.lr.ph29.i.9
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.266) #39
  br label %.lr.ph29.i.10

.lr.ph29.i.10:                                    ; preds = %bb.j, %.lr.ph29.i.9
  %.not21.i.10 = icmp eq i64 %i.l, 0
  br i1 %.not21.i.10, label %addReplyCommandFlags.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph29.i.10
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.267) #39
  br label %addReplyCommandFlags.exit

addReplyCommandFlags.exit:                        ; preds = %bb.k, %.lr.ph29.i.10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @addReplyFlagsForArg(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
.lr.ph.i:
  %i.a = and i64 %1, 1
  %i.b = and i64 %1, 1
  %i.c = and i64 %1, 2                            ; 2 uses
  %.lobit = lshr exact i64 %i.c, 1
  %spec.select.i.1 = add nuw nsw i64 %i.b, %.lobit
  %i.d = and i64 %1, 4                            ; 2 uses
  %.lobit2 = lshr exact i64 %i.d, 2
  %spec.select.i.2 = add nuw nsw i64 %spec.select.i.1, %.lobit2
  tail call void @addReplySetLen(ptr noundef %0, i64 noundef %spec.select.i.2) #39
  %.not21.i = icmp eq i64 %i.a, 0
  br i1 %.not21.i, label %.lr.ph29.i.1, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.277) #39
  br label %.lr.ph29.i.1

.lr.ph29.i.1:                                     ; preds = %bb.a, %.lr.ph.i
  %.not21.i.1 = icmp eq i64 %i.c, 0
  br i1 %.not21.i.1, label %.lr.ph29.i.2, label %bb.b

bb.b:                                             ; preds = %.lr.ph29.i.1
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.278) #39
  br label %.lr.ph29.i.2

.lr.ph29.i.2:                                     ; preds = %bb.b, %.lr.ph29.i.1
  %.not21.i.2 = icmp eq i64 %i.d, 0
  br i1 %.not21.i.2, label %addReplyCommandFlags.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph29.i.2
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.279) #39
  br label %addReplyCommandFlags.exit

addReplyCommandFlags.exit:                        ; preds = %bb.c, %.lr.ph29.i.2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @addReplyCommandArgList(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %2 to i64
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.a) #39
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.u, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.u ] ; 2 uses
  %i.c = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %indvars.iv ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !638
  %.not = icmp eq i32 %i.e, -1
  %spec.select = select i1 %.not, i64 2, i64 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %3 = load ptr, ptr %i.f, align 8, !tbaa !639
  %.not99 = icmp ne ptr %3, null
  %4 = zext i1 %.not99 to i64
  %.1 = add nuw nsw i64 %spec.select, %4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !640
  %.not100 = icmp ne ptr %i.h, null
  %5 = zext i1 %.not100 to i64
  %.2 = add nuw nsw i64 %.1, %5
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !641
  %.not101 = icmp ne ptr %i.j, null
  %6 = zext i1 %.not101 to i64
  %.3 = add nuw nsw i64 %.2, %6
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !642
  %.not102 = icmp ne ptr %8, null
  %9 = zext i1 %.not102 to i64
  %.4 = add nuw nsw i64 %.3, %9
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !643
  %.not103 = icmp ne i32 %i.l, 0
  %i.m = zext i1 %.not103 to i64
  %.5 = add nuw nsw i64 %.4, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !644
  %.off113 = add i32 %i.o, -7
  %switch114 = icmp ult i32 %.off113, 2           ; 3 uses
  %10 = zext i1 %switch114 to i64
  %spec.select116 = add nuw nsw i64 %.5, %10
  %not.switch114 = xor i1 %switch114, true
  %11 = zext i1 %not.switch114 to i64
  %spec.select112 = add nuw nsw i64 %spec.select116, %11
  tail call void @addReplyMapLen(ptr noundef %0, i64 noundef %spec.select112) #39
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.280) #39
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !645
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.p) #39
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.281) #39
  %i.q = load i32, ptr %i.n, align 8, !tbaa !644
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @ARG_TYPE_STR, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !240
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.t) #39
  br i1 %switch114, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.282) #39
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !646  ; 2 uses
  %.not105 = icmp eq ptr %i.v, null
  br i1 %.not105, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !645
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.x) #39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.y = load i32, ptr %i.d, align 4, !tbaa !638
  %.not106 = icmp eq i32 %i.y, -1
  br i1 %.not106, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.283) #39
  %i.z = load i32, ptr %i.d, align 4, !tbaa !638
  %i.aa = sext i32 %i.z to i64
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.aa) #39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !639
  %.not107 = icmp eq ptr %i.ab, null
  br i1 %.not107, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.284) #39
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !639
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.ac) #39
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !640
  %.not108 = icmp eq ptr %i.ad, null
  br i1 %.not108, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.285) #39
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !640
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.ae) #39
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !641
  %.not109 = icmp eq ptr %i.af, null
  br i1 %.not109, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.286) #39
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !641
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.ag) #39
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ah = load ptr, ptr %7, align 8, !tbaa !642
  %.not110 = icmp eq ptr %i.ah, null
  br i1 %.not110, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.287) #39
  %i.ai = load ptr, ptr %7, align 8, !tbaa !642
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.ai) #39
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aj = load i32, ptr %i.k, align 8, !tbaa !643
  %.not111 = icmp eq i32 %i.aj, 0
  br i1 %.not111, label %addReplyFlagsForArg.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.288) #39
  %i.ak = load i32, ptr %i.k, align 8, !tbaa !643 ; 4 uses
  %i.al = zext i32 %i.ak to i64                   ; 3 uses
  %i.am = and i64 %i.al, 1
  %i.an = lshr i64 %i.al, 1
  %.lobit.i = and i64 %i.an, 1
  %spec.select.i.1.i = add nuw nsw i64 %.lobit.i, %i.am
  %i.ao = lshr i64 %i.al, 2
  %.lobit2.i = and i64 %i.ao, 1
  %spec.select.i.2.i = add nuw nsw i64 %spec.select.i.1.i, %.lobit2.i
  tail call void @addReplySetLen(ptr noundef %0, i64 noundef %spec.select.i.2.i) #39
  %i.ap = and i32 %i.ak, 1
  %.not21.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not21.i.i, label %.lr.ph29.i.1.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.277) #39
  br label %.lr.ph29.i.1.i

.lr.ph29.i.1.i:                                   ; preds = %bb.q, %bb.p
  %i.aq = and i32 %i.ak, 2
  %.not21.i.1.i = icmp eq i32 %i.aq, 0
  br i1 %.not21.i.1.i, label %.lr.ph29.i.2.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph29.i.1.i
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.278) #39
  br label %.lr.ph29.i.2.i

.lr.ph29.i.2.i:                                   ; preds = %bb.r, %.lr.ph29.i.1.i
  %i.ar = and i32 %i.ak, 4
  %.not21.i.2.i = icmp eq i32 %i.ar, 0
  br i1 %.not21.i.2.i, label %addReplyFlagsForArg.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph29.i.2.i
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.279) #39
  br label %addReplyFlagsForArg.exit

addReplyFlagsForArg.exit:                         ; preds = %bb.s, %.lr.ph29.i.2.i, %bb.o
  %i.as = load i32, ptr %i.n, align 8, !tbaa !644
  %.off = add i32 %i.as, -7
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %addReplyFlagsForArg.exit
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.289) #39
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !647
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !648
  tail call void @addReplyCommandArgList(ptr noundef %0, ptr noundef %i.au, i32 noundef %i.aw)
  br label %bb.u

bb.u:                                             ; preds = %addReplyFlagsForArg.exit, %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !636
}

declare void @addReplyMapLen(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @addReplyBulkCString(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @addReplyCommandHistory(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !369
  %i.c = sext i32 %i.b to i64
  tail call void @addReplySetLen(ptr noundef %0, i64 noundef %i.c) #39
  %i.d = load i32, ptr %i.a, align 8, !tbaa !369
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #39
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !370
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !372
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.i) #39
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !370
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !373
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.m) #39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.a, align 8, !tbaa !369
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !9
}

; Function Attrs: nounwind uwtable
define dso_local void @addReplyCommandTips(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !374
  %i.c = sext i32 %i.b to i64
  tail call void @addReplySetLen(ptr noundef %0, i64 noundef %i.c) #39
  %i.d = load i32, ptr %i.a, align 8, !tbaa !374
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !375
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.i) #39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !374
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %bb.b, label %._crit_edge, !llvm.loop !10
}

; Function Attrs: nounwind uwtable
define dso_local void @addReplyCommandKeySpecs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !322
  %i.c = sext i32 %i.b to i64
  tail call void @addReplySetLen(ptr noundef %0, i64 noundef %i.c) #39
  %i.d = load i32, ptr %i.a, align 8, !tbaa !322
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 15 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.n, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 16 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !323
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !650
  %.not = icmp eq ptr %i.i, null
  %spec.select = select i1 %.not, i64 3, i64 4
  tail call void @addReplyMapLen(ptr noundef %0, i64 noundef %spec.select) #39
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !323
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !650
  %.not96 = icmp eq ptr %i.l, null
  br i1 %.not96, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.290) #39
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !323
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !650
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.o) #39
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.288) #39
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !323
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !326
  tail call void @addReplyFlagsForKeyArgs(ptr noundef %0, i64 noundef %i.s)
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.291) #39
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !323
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !324  ; 2 uses
  switch i32 %i.w, label %bb.h [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @addReplyMapLen(ptr noundef %0, i64 noundef 2) #39
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.281) #39
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.292) #39
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.293) #39
  tail call void @addReplyMapLen(ptr noundef %0, i64 noundef 0) #39
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  tail call void @addReplyMapLen(ptr noundef %0, i64 noundef 2) #39
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.281) #39
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.294) #39
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.293) #39
  tail call void @addReplyMapLen(ptr noundef %0, i64 noundef 1) #39
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.294) #39
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !323
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !61
  %i.ab = sext i32 %i.aa to i64
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.ab) #39
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  tail call void @addReplyMapLen(ptr noundef %0, i64 noundef 2) #39
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.281) #39
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.295) #39
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.293) #39
  tail call void @addReplyMapLen(ptr noundef %0, i64 noundef 2) #39
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.295) #39
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !323
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !61
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.af) #39
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.296) #39
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !323
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !61
  %i.ak = sext i32 %i.aj to i64
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.ak) #39
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.9, i32 noundef 5424, ptr noundef nonnull @.str.297, i32 noundef %i.w) #39
  tail call void @abort() #41
  unreachable

end_hunk_0
begin_hunk_1_@propagateNow:bb.a

bb.k:                                             ; preds = %bb.j
  tail call void @feedAppendOnlyFile(i32 noundef %0, ptr noundef %1, i32 noundef %2) #39
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.u = and i32 %3, 2
  %.not14 = icmp eq i32 %i.u, 0
  br i1 %.not14, label %shouldPropagate.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1480), align 8, !tbaa !175
  tail call void @replicationFeedSlaves(ptr noundef %i.v, i32 noundef %0, ptr noundef %1, i32 noundef %2) #39
  tail call void @asmFeedMigrationClient(ptr noundef %1, i32 noundef %2) #39
  br label %shouldPropagate.exit

shouldPropagate.exit:                             ; preds = %bb.d, %bb.g, %bb.b, %bb.a, %bb.m, %bb.l
  ret void
}

declare void @feedAppendOnlyFile(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @asmFeedMigrationClient(ptr noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i16 @crc16(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @replyToClientsBlockedOnShutdown() local_unnamed_addr #4

declare void @unpauseActions(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @prctl(i32 noundef, ...) local_unnamed_addr #3

declare ptr @sdstemplate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal ptr @redisProcTitleGetVariable(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.578) #40
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @sdsnew(ptr noundef %1) #39
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.579) #40
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 324), align 4, !tbaa !311
  %i.e = icmp ne i32 %i.d, 0
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 328), align 8
  %i.g = icmp ne i32 %i.f, 0
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  %i.h = tail call ptr @sdsempty() #39            ; 2 uses
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 464), align 8, !tbaa !239
  %.not11 = icmp eq i32 %i.i, 0
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 336), align 8
  %i.k = select i1 %.not11, ptr @.str.120, ptr %i.j
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 324), align 4, !tbaa !311 ; 2 uses
  %.not12 = icmp eq i32 %i.l, 0
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 328), align 8
  %i.n = select i1 %.not12, i32 %i.m, i32 %i.l
  %i.o = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.h, ptr noundef nonnull @.str.580, ptr noundef %i.k, i32 noundef %i.n) #39
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 480), align 8, !tbaa !315
  %i.q = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.h, ptr noundef nonnull @.str.581, ptr noundef %i.p) #39
  br label %bb.u

bb.g:                                             ; preds = %bb.c
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.582) #40
  %.not13 = icmp eq i32 %i.r, 0
  br i1 %.not13, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !99
  %.not14 = icmp eq i32 %i.s, 0
  br i1 %.not14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call ptr @sdsnew(ptr noundef nonnull @.str.583) #39
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 204), align 4, !tbaa !69
  %.not15 = icmp eq i32 %i.u, 0
  br i1 %.not15, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = tail call ptr @sdsnew(ptr noundef nonnull @.str.584) #39
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.w = tail call ptr @sdsempty() #39
  br label %bb.u

bb.m:                                             ; preds = %bb.g
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.585) #40
  %.not16 = icmp eq i32 %i.x, 0
  br i1 %.not16, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 16), align 8, !tbaa !384 ; 2 uses
  %.not17 = icmp eq ptr %i.y, null
  %i.z = select i1 %.not17, ptr @.str.586, ptr %i.y
  %i.aa = tail call ptr @sdsnew(ptr noundef nonnull %i.z) #39
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.587) #40
  %.not18 = icmp eq i32 %i.ab, 0
  br i1 %.not18, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ac = tail call ptr @sdsempty() #39
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 324), align 4, !tbaa !311
  %i.ae = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.588, i32 noundef %i.ad) #39
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.af = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.589) #40
  %.not19 = icmp eq i32 %i.af, 0
  br i1 %.not19, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ag = tail call ptr @sdsempty() #39
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 328), align 8, !tbaa !313
  %i.ai = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.588, i32 noundef %i.ah) #39
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(11) @.str.590) #40
  %.not20 = icmp eq i32 %i.aj, 0
  br i1 %.not20, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 480), align 8, !tbaa !315
  %i.al = tail call ptr @sdsnew(ptr noundef %i.ak) #39
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i, %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.al, %bb.t ], [ %i.ai, %bb.r ], [ %i.ae, %bb.p ], [ %i.aa, %bb.n ], [ %i.t, %bb.i ], [ %i.v, %bb.k ], [ %i.w, %bb.l ], [ %i.o, %bb.e ], [ %i.q, %bb.f ], [ null, %bb.s ]
  ret ptr %.0
}

declare ptr @sdstrim(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @raise(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @unsetenv(ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #37

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #35

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v16i64(<16 x i64>) #37

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { cold nofree noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #35 = { nofree nounwind }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #37 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { cold noreturn nounwind }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { cold }

!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}
!llvm.errno.tbaa = !{!26}

!0 = distinct !{!0, !148}
!1 = distinct !{!1, !148}
!2 = distinct !{!2, !148}
!3 = distinct !{!3, !148}
!4 = distinct !{!4, !148}
!5 = distinct !{!5, !148}
!6 = distinct !{null}
!7 = distinct !{!7, !148}
!8 = distinct !{!8, !148}
!9 = distinct !{!9, !148}
!10 = distinct !{!10, !148}
!11 = distinct !{!11, !148}
!12 = distinct !{!12, !148}
!13 = distinct !{!13, !148}
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{i32 1, !"ThinLTO", i32 0}
!21 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!22 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !{!"omnipotent char", !23, i64 0}
!25 = !{!"int", !24, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"long", !24, i64 0}
!28 = !{!"any pointer", !24, i64 0}
!29 = !{!"p1 omnipotent char", !28, i64 0}
!30 = !{!"any p2 pointer", !28, i64 0}
!31 = !{!"p2 omnipotent char", !30, i64 0}
!32 = !{!"p1 _ZTS7redisDb", !28, i64 0}
!33 = !{!"p1 _ZTS4dict", !28, i64 0}
!34 = !{!"p1 _ZTS11aeEventLoop", !28, i64 0}
!35 = !{!"p1 _ZTS3rax", !28, i64 0}
!36 = !{!"long long", !24, i64 0}
!37 = !{!"p1 _ZTS4list", !28, i64 0}
!38 = !{!"p1 _ZTS14ConnectionType", !28, i64 0}
!39 = !{!"connListener", !24, i64 0, !25, i64 64, !31, i64 72, !25, i64 80, !25, i64 84, !38, i64 88, !28, i64 96}
!40 = !{!"p1 _ZTS6client", !28, i64 0}
!41 = !{!"p2 _ZTS14pendingCommand", !30, i64 0}
!42 = !{!"pendingCommandPool", !41, i64 0, !25, i64 8, !25, i64 12, !25, i64 16}
!43 = !{!"double", !24, i64 0}
!44 = !{!"malloc_stats", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48, !27, i64 56, !27, i64 64, !27, i64 72, !27, i64 80}
!45 = !{!"p1 _ZTS11hotkeyStats", !28, i64 0}
!46 = !{!"p1 double", !28, i64 0}
!47 = !{!"p1 _ZTS9saveparam", !28, i64 0}
!48 = !{!"p2 _ZTS10connection", !30, i64 0}
!49 = !{!"p1 _ZTS7redisOp", !28, i64 0}
!50 = !{!"redisOpArray", !49, i64 0, !25, i64 8, !25, i64 12}
!51 = !{!"p1 _ZTS11replBacklog", !28, i64 0}
!52 = !{!"replDataBuf", !37, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40}
!53 = !{!"p1 _ZTS10connection", !28, i64 0}
!54 = !{!"p1 _ZTS8_kvstore", !28, i64 0}
!55 = !{!"p1 _ZTS12clusterState", !28, i64 0}
!56 = !{!"aclInfo", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!57 = !{!"redisTLSContextConfig", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !25, i64 48, !29, i64 56, !29, i64 64, !29, i64 72, !29, i64 80, !29, i64 88, !29, i64 96, !25, i64 104, !25, i64 108, !25, i64 112, !25, i64 116}
!58 = !{!"p1 _ZTS14sentinelConfig", !28, i64 0}
!59 = !{!"redisServer", !25, i64 0, !27, i64 8, !29, i64 16, !29, i64 24, !31, i64 32, !25, i64 40, !25, i64 44, !25, i64 48, !25, i64 52, !25, i64 56, !32, i64 64, !33, i64 72, !33, i64 80, !34, i64 88, !35, i64 96, !25, i64 104, !25, i64 108, !24, i64 112, !24, i64 116, !36, i64 120, !24, i64 128, !25, i64 132, !25, i64 136, !25, i64 140, !29, i64 144, !25, i64 152, !25, i64 156, !24, i64 160, !25, i64 204, !27, i64 208, !25, i64 216, !25, i64 220, !25, i64 224, !29, i64 232, !29, i64 240, !25, i64 248, !25, i64 252, !27, i64 256, !24, i64 264, !33, i64 272, !33, i64 280, !33, i64 288, !37, i64 296, !24, i64 304, !25, i64 312, !25, i64 316, !24, i64 320, !25, i64 324, !25, i64 328, !25, i64 332, !24, i64 336, !25, i64 464, !29, i64 472, !29, i64 480, !25, i64 488, !24, i64 496, !25, i64 1328, !39, i64 1336, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !40, i64 1496, !40, i64 1504, !28, i64 1512, !35, i64 1520, !25, i64 1528, !35, i64 1536, !25, i64 1544, !37, i64 1552, !24, i64 1560, !24, i64 1624, !33, i64 1880, !24, i64 1888, !25, i64 1896, !25, i64 1900, !24, i64 1904, !25, i64 2416, !25, i64 2420, !42, i64 2424, !25, i64 2448, !36, i64 2456, !25, i64 2464, !25, i64 2468, !25, i64 2472, !25, i64 2476, !25, i64 2480, !27, i64 2488, !27, i64 2496, !27, i64 2504, !27, i64 2512, !27, i64 2520, !27, i64 2528, !36, i64 2536, !36, i64 2544, !36, i64 2552, !36, i64 2560, !36, i64 2568, !36, i64 2576, !43, i64 2584, !36, i64 2592, !36, i64 2600, !36, i64 2608, !36, i64 2616, !36, i64 2624, !36, i64 2632, !27, i64 2640, !36, i64 2648, !36, i64 2656, !36, i64 2664, !36, i64 2672, !36, i64 2680, !36, i64 2688, !36, i64 2696, !36, i64 2704, !27, i64 2712, !27, i64 2720, !27, i64 2728, !36, i64 2736, !36, i64 2744, !36, i64 2752, !36, i64 2760, !36, i64 2768, !43, i64 2776, !36, i64 2784, !36, i64 2792, !36, i64 2800, !36, i64 2808, !36, i64 2816, !37, i64 2824, !36, i64 2832, !36, i64 2840, !27, i64 2848, !44, i64 2856, !24, i64 2944, !24, i64 2952, !24, i64 2960, !24, i64 2968, !27, i64 2976, !27, i64 2984, !27, i64 2992, !27, i64 3000, !27, i64 3008, !27, i64 3016, !27, i64 3024, !27, i64 3032, !43, i64 3040, !24, i64 3048, !27, i64 3080, !36, i64 3088, !36, i64 3096, !36, i64 3104, !24, i64 3112, !24, i64 4136, !24, i64 5160, !36, i64 5168, !36, i64 5176, !36, i64 5184, !36, i64 5192, !24, i64 5200, !36, i64 6264, !36, i64 6272, !27, i64 6280, !36, i64 6288, !36, i64 6296, !27, i64 6304, !24, i64 6312, !45, i64 6408, !25, i64 6416, !25, i64 6420, !25, i64 6424, !25, i64 6428, !25, i64 6432, !25, i64 6436, !25, i64 6440, !25, i64 6444, !25, i64 6448, !25, i64 6452, !25, i64 6456, !25, i64 6460, !25, i64 6464, !27, i64 6472, !25, i64 6480, !25, i64 6484, !25, i64 6488, !25, i64 6492, !27, i64 6496, !27, i64 6504, !25, i64 6512, !25, i64 6516, !25, i64 6520, !25, i64 6524, !25, i64 6528, !25, i64 6532, !29, i64 6536, !24, i64 6544, !25, i64 6616, !25, i64 6620, !25, i64 6624, !46, i64 6632, !25, i64 6640, !25, i64 6644, !25, i64 6648, !25, i64 6652, !25, i64 6656, !25, i64 6660, !25, i64 6664, !25, i64 6668, !25, i64 6672, !29, i64 6680, !29, i64 6688, !25, i64 6696, !25, i64 6700, !27, i64 6704, !27, i64 6712, !27, i64 6720, !27, i64 6728, !27, i64 6736, !25, i64 6744, !25, i64 6748, !29, i64 6752, !25, i64 6760, !25, i64 6764, !36, i64 6768, !36, i64 6776, !27, i64 6784, !27, i64 6792, !27, i64 6800, !25, i64 6808, !25, i64 6812, !27, i64 6816, !25, i64 6824, !25, i64 6828, !25, i64 6832, !25, i64 6836, !25, i64 6840, !27, i64 6848, !25, i64 6856, !24, i64 6860, !24, i64 6864, !28, i64 6872, !25, i64 6880, !36, i64 6888, !36, i64 6896, !36, i64 6904, !36, i64 6912, !25, i64 6920, !47, i64 6928, !25, i64 6936, !29, i64 6944, !25, i64 6952, !25, i64 6956, !25, i64 6960, !27, i64 6968, !27, i64 6976, !27, i64 6984, !27, i64 6992, !25, i64 7000, !25, i64 7004, !25, i64 7008, !25, i64 7012, !25, i64 7016, !25, i64 7020, !48, i64 7024, !25, i64 7032, !25, i64 7036, !29, i64 7040, !25, i64 7048, !25, i64 7052, !25, i64 7056, !24, i64 7060, !25, i64 7068, !50, i64 7072, !25, i64 7088, !29, i64 7096, !25, i64 7104, !29, i64 7112, !25, i64 7120, !25, i64 7124, !25, i64 7128, !25, i64 7132, !25, i64 7136, !25, i64 7140, !25, i64 7144, !24, i64 7148, !24, i64 7189, !36, i64 7232, !36, i64 7240, !24, i64 7248, !36, i64 7256, !25, i64 7264, !25, i64 7268, !51, i64 7272, !36, i64 7280, !36, i64 7288, !52, i64 7296, !27, i64 7344, !27, i64 7352, !25, i64 7360, !25, i64 7364, !25, i64 7368, !25, i64 7372, !25, i64 7376, !25, i64 7380, !25, i64 7384, !25, i64 7388, !25, i64 7392, !27, i64 7400, !37, i64 7408, !27, i64 7416, !29, i64 7424, !29, i64 7432, !29, i64 7440, !25, i64 7448, !25, i64 7452, !40, i64 7456, !40, i64 7464, !25, i64 7472, !25, i64 7476, !25, i64 7480, !25, i64 7484, !27, i64 7488, !27, i64 7496, !27, i64 7504, !27, i64 7512, !27, i64 7520, !53, i64 7528, !53, i64 7536, !25, i64 7544, !29, i64 7552, !27, i64 7560, !25, i64 7568, !25, i64 7572, !25, i64 7576, !27, i64 7584, !27, i64 7592, !25, i64 7600, !25, i64 7604, !25, i64 7608, !25, i64 7612, !29, i64 7616, !25, i64 7624, !25, i64 7628, !24, i64 7632, !36, i64 7680, !25, i64 7688, !37, i64 7696, !25, i64 7704, !36, i64 7712, !36, i64 7720, !27, i64 7728, !27, i64 7736, !25, i64 7744, !36, i64 7752, !27, i64 7760, !25, i64 7768, !25, i64 7772, !25, i64 7776, !25, i64 7780, !25, i64 7784, !36, i64 7792, !24, i64 7800, !25, i64 7812, !25, i64 7816, !25, i64 7820, !24, i64 7824, !37, i64 7872, !37, i64 7880, !25, i64 7888, !27, i64 7896, !37, i64 7904, !37, i64 7912, !25, i64 7920, !25, i64 7924, !25, i64 7928, !25, i64 7932, !27, i64 7936, !27, i64 7944, !27, i64 7952, !27, i64 7960, !27, i64 7968, !27, i64 7976, !27, i64 7984, !27, i64 7992, !27, i64 8000, !36, i64 8008, !36, i64 8016, !36, i64 8024, !25, i64 8032, !25, i64 8036, !24, i64 8040, !27, i64 8048, !24, i64 8056, !36, i64 8064, !36, i64 8072, !25, i64 8080, !27, i64 8088, !36, i64 8096, !27, i64 8104, !36, i64 8112, !54, i64 8120, !33, i64 8128, !25, i64 8136, !54, i64 8144, !25, i64 8152, !25, i64 8156, !25, i64 8160, !25, i64 8164, !36, i64 8168, !36, i64 8176, !29, i64 8184, !36, i64 8192, !36, i64 8200, !36, i64 8208, !25, i64 8216, !55, i64 8224, !25, i64 8232, !25, i64 8236, !25, i64 8240, !25, i64 8244, !25, i64 8248, !29, i64 8256, !29, i64 8264, !29, i64 8272, !25, i64 8280, !25, i64 8284, !25, i64 8288, !25, i64 8292, !25, i64 8296, !25, i64 8300, !25, i64 8304, !25, i64 8308, !36, i64 8312, !25, i64 8320, !25, i64 8324, !25, i64 8328, !36, i64 8336, !25, i64 8344, !25, i64 8348, !25, i64 8352, !25, i64 8356, !25, i64 8360, !25, i64 8364, !25, i64 8368, !25, i64 8372, !25, i64 8376, !36, i64 8384, !33, i64 8392, !29, i64 8400, !27, i64 8408, !29, i64 8416, !25, i64 8424, !56, i64 8432, !25, i64 8472, !27, i64 8480, !25, i64 8488, !25, i64 8492, !25, i64 8496, !57, i64 8504, !29, i64 8624, !29, i64 8632, !29, i64 8640, !29, i64 8648, !58, i64 8656, !36, i64 8664, !25, i64 8672, !29, i64 8680, !25, i64 8688, !25, i64 8692, !25, i64 8696, !27, i64 8704, !25, i64 8712, !25, i64 8716, !29, i64 8720, !25, i64 8728, !25, i64 8732}
!60 = !{!59, !29, i64 7096}
!61 = !{!24, !24, i64 0}
!62 = !{!59, !25, i64 6416}
!63 = !{!"p1 _ZTS8_IO_FILE", !28, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"timeval", !27, i64 0, !27, i64 8}
!66 = !{!65, !27, i64 0}
!67 = !{!59, !27, i64 8048}
!68 = !{!65, !27, i64 8}
!69 = !{!59, !25, i64 204}
!70 = !{!59, !25, i64 0}
!71 = !{!59, !29, i64 7440}
!72 = !{!59, !25, i64 7104}
!73 = !{!59, !36, i64 8096}
!74 = !{!"short", !24, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!27, !27, i64 0}
!77 = !{!"redisObject", !25, i64 0, !25, i64 0, !25, i64 1, !25, i64 3, !25, i64 4, !25, i64 5, !28, i64 8}
!78 = !{!77, !28, i64 8}
!79 = !{!28, !28, i64 0}
!80 = !{!"p1 _ZTS11redisObject", !28, i64 0}
!81 = !{!"p2 _ZTS11redisObject", !30, i64 0}
!82 = !{!"p1 _ZTS14pendingCommand", !28, i64 0}
!83 = !{!"pendingCommandList", !82, i64 0, !82, i64 8, !25, i64 16, !25, i64 20}
!84 = !{!"p1 _ZTS14deferredObject", !28, i64 0}
!85 = !{!"p1 _ZTS12redisCommand", !28, i64 0}
!86 = !{!"p1 _ZTS9dictEntry", !28, i64 0}
!87 = !{!"multiState", !41, i64 0, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !27, i64 24, !25, i64 32}
!88 = !{!"blockingState", !25, i64 0, !36, i64 8, !25, i64 16, !33, i64 24, !25, i64 32, !25, i64 36, !36, i64 40, !28, i64 48, !28, i64 56, !27, i64 64}
!89 = !{!"p1 _ZTS8listNode", !28, i64 0}
!90 = !{!"listNode", !89, i64 0, !89, i64 8, !28, i64 16}
!91 = !{!"p1 _ZTS13payloadHeader", !28, i64 0}
!92 = !{!"p1 _ZTS7asmTask", !28, i64 0}
!93 = !{!"client", !27, i64 0, !27, i64 8, !53, i64 16, !24, i64 24, !24, i64 25, !24, i64 26, !24, i64 27, !25, i64 28, !32, i64 32, !80, i64 40, !80, i64 48, !80, i64 56, !29, i64 64, !27, i64 72, !27, i64 80, !25, i64 88, !81, i64 96, !25, i64 104, !25, i64 108, !81, i64 112, !27, i64 120, !83, i64 128, !82, i64 152, !84, i64 160, !25, i64 168, !81, i64 176, !25, i64 184, !25, i64 188, !85, i64 192, !85, i64 200, !85, i64 208, !85, i64 216, !28, i64 224, !25, i64 232, !25, i64 236, !27, i64 240, !37, i64 248, !36, i64 256, !37, i64 264, !27, i64 272, !27, i64 280, !27, i64 288, !25, i64 296, !25, i64 300, !86, i64 304, !27, i64 312, !27, i64 320, !27, i64 328, !36, i64 336, !36, i64 344, !25, i64 352, !25, i64 356, !25, i64 360, !25, i64 364, !27, i64 368, !27, i64 376, !29, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !24, i64 480, !25, i64 524, !29, i64 528, !25, i64 536, !25, i64 540, !27, i64 544, !87, i64 552, !88, i64 592, !36, i64 664, !37, i64 672, !33, i64 680, !33, i64 688, !33, i64 696, !29, i64 704, !29, i64 712, !89, i64 720, !89, i64 728, !89, i64 736, !28, i64 744, !28, i64 752, !28, i64 760, !28, i64 768, !28, i64 776, !27, i64 784, !35, i64 792, !27, i64 800, !25, i64 808, !89, i64 816, !28, i64 824, !89, i64 832, !27, i64 840, !89, i64 848, !27, i64 856, !89, i64 864, !27, i64 872, !90, i64 880, !90, i64 904, !27, i64 928, !27, i64 936, !27, i64 944, !36, i64 952, !27, i64 960, !27, i64 968, !29, i64 976, !24, i64 984, !91, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !92, i64 1024, !29, i64 1032, !24, i64 1040}
!94 = !{!93, !27, i64 0}
!95 = !{!59, !25, i64 6620}
!96 = !{!59, !25, i64 6644}
!97 = !{!"", !89, i64 0}
!98 = !{!"", !97, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !24, i64 40}
!99 = !{!59, !25, i64 8160}
!100 = !{!59, !25, i64 56}
!101 = !{!59, !25, i64 312}
!102 = !{!59, !25, i64 316}
!103 = !{!59, !43, i64 3040}
!104 = !{!59, !25, i64 6936}
!105 = !{!"", !36, i64 0, !36, i64 8, !24, i64 16, !25, i64 144}
!106 = !{!105, !36, i64 0}
!107 = !{!105, !36, i64 8}
!108 = !{!105, !25, i64 144}
!109 = !{!36, !36, i64 0}
!110 = !{!93, !29, i64 64}
!111 = !{!59, !24, i64 8040}
!112 = !{!93, !27, i64 312}
!113 = !{!93, !27, i64 8}
!114 = !{!93, !27, i64 968}
!115 = !{!59, !25, i64 8712}
!116 = !{!59, !36, i64 6264}
!117 = !{!59, !36, i64 6272}
!118 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!119 = !{!59, !27, i64 8704}
!120 = !{!93, !29, i64 976}
!121 = !{!93, !81, i64 96}
!122 = !{!93, !27, i64 120}
!123 = !{!93, !53, i64 16}
!124 = !{!93, !27, i64 800}
!125 = !{!93, !25, i64 808}
!126 = !{!59, !27, i64 7760}
!127 = !{!93, !28, i64 824}
!128 = !{!"", !37, i64 0, !27, i64 8}
!129 = !{!128, !27, i64 8}
!130 = !{!128, !37, i64 0}
!131 = !{!93, !89, i64 816}
!132 = !{!59, !27, i64 8}
!133 = !{!93, !24, i64 25}
!134 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!135 = !{!59, !28, i64 1512}
!136 = !{!"list", !89, i64 0, !89, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !27, i64 40}
!137 = !{!59, !36, i64 8064}
!138 = !{!59, !25, i64 2420}
!139 = !{!59, !25, i64 2436}
!140 = !{!59, !25, i64 2440}
!141 = !{!59, !25, i64 2432}
!142 = !{!59, !37, i64 1440}
!143 = !{!136, !27, i64 40}
!144 = !{!59, !25, i64 52}
!145 = !{!136, !89, i64 0}
!146 = !{!90, !28, i64 16}
!147 = !{!93, !24, i64 24}
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v16i64/@llvm.ctpop.i4
!439 = !{!197, !80, i64 24}
!440 = !{!197, !80, i64 32}
!441 = !{!197, !80, i64 192}
!442 = !{!197, !80, i64 480}
!443 = !{!197, !80, i64 48}
!444 = !{!197, !80, i64 344}
!445 = !{!197, !80, i64 200}
!446 = !{!197, !80, i64 8}
!447 = !{!197, !80, i64 208}
!448 = !{!197, !80, i64 224}
!449 = !{!197, !80, i64 232}
!450 = !{!197, !80, i64 240}
!451 = !{!197, !80, i64 304}
!452 = !{!197, !80, i64 328}
!453 = !{!197, !80, i64 352}
!454 = !{!197, !80, i64 360}
!455 = !{!197, !80, i64 368}
!456 = !{!197, !80, i64 376}
!457 = !{!197, !80, i64 792}
!458 = !{!197, !80, i64 800}
!459 = !{!197, !80, i64 808}
!460 = !{!197, !80, i64 384}
!461 = !{!197, !80, i64 392}
!462 = !{!197, !80, i64 400}
!463 = !{!197, !80, i64 408}
!464 = !{!197, !80, i64 416}
!465 = !{!197, !80, i64 424}
!466 = !{!197, !80, i64 432}
!467 = !{!197, !80, i64 440}
!468 = !{!197, !80, i64 448}
!469 = !{!197, !80, i64 456}
!470 = !{!197, !80, i64 464}
!471 = !{!197, !80, i64 472}
!472 = !{!197, !80, i64 488}
!473 = !{!197, !80, i64 496}
!474 = !{!197, !80, i64 520}
!475 = !{!197, !80, i64 528}
!476 = !{!197, !80, i64 536}
!477 = !{!197, !80, i64 544}
!478 = !{!197, !80, i64 552}
!479 = !{!197, !80, i64 592}
!480 = !{!197, !80, i64 600}
!481 = !{!197, !80, i64 576}
!482 = !{!197, !80, i64 584}
!483 = !{!197, !80, i64 568}
!484 = !{!197, !80, i64 616}
!485 = !{!197, !80, i64 624}
!486 = !{!197, !80, i64 608}
!487 = !{!197, !80, i64 632}
!488 = !{!197, !80, i64 504}
!489 = !{!197, !80, i64 512}
!490 = !{!197, !80, i64 648}
!491 = !{!197, !80, i64 640}
!492 = !{!197, !80, i64 664}
!493 = !{!197, !80, i64 672}
!494 = !{!197, !80, i64 680}
!495 = !{!197, !80, i64 688}
!496 = !{!197, !80, i64 696}
!497 = !{!197, !80, i64 776}
!498 = !{!197, !80, i64 704}
!499 = !{!197, !80, i64 712}
!500 = !{!197, !80, i64 720}
!501 = !{!197, !80, i64 656}
!502 = !{!197, !80, i64 728}
!503 = !{!197, !80, i64 736}
!504 = !{!197, !80, i64 752}
!505 = !{!197, !80, i64 760}
!506 = !{!197, !80, i64 768}
!507 = !{!197, !80, i64 784}
!508 = !{!197, !80, i64 744}
!509 = !{!197, !29, i64 81920}
!510 = !{!197, !29, i64 81928}
!511 = !{!59, !25, i64 6440}
!512 = !{!59, !25, i64 6444}
!513 = !{!59, !25, i64 6456}
!514 = !{!59, !25, i64 6744}
!515 = !{!59, !36, i64 6776}
!516 = !{!59, !27, i64 6800}
!517 = !{!59, !25, i64 6764}
!518 = !{!59, !36, i64 6768}
!519 = !{!59, !25, i64 6464}
!520 = !{!59, !25, i64 8136}
!521 = !{!59, !24, i64 112}
!522 = !{!59, !24, i64 116}
!523 = !{!59, !25, i64 8296}
!524 = !{!59, !25, i64 8300}
!525 = !{!59, !24, i64 1888}
!526 = !{!59, !36, i64 7680}
!527 = !{!59, !25, i64 7480}
!528 = !{!59, !27, i64 7488}
!529 = !{!59, !29, i64 7552}
!530 = !{!59, !25, i64 7544}
!531 = !{!59, !53, i64 7528}
!532 = !{!59, !25, i64 7472}
!533 = !{!59, !24, i64 7248}
!534 = !{!59, !27, i64 7416}
!535 = !{!59, !36, i64 8664}
!536 = !{!59, !25, i64 8672}
!537 = distinct !{!537, !148}
!538 = !{!31, !31, i64 0}
!539 = !{!59, !25, i64 7812}
!540 = !{!"rlimit", !27, i64 0, !27, i64 8}
!541 = !{!540, !27, i64 0}
!542 = !{!540, !27, i64 8}
!543 = distinct !{!543, !148}
!544 = !{!59, !25, i64 1328}
!545 = distinct !{!545, !148}
!546 = !{!59, !29, i64 7112}
!547 = !{!59, !25, i64 7120}
!548 = !{!59, !25, i64 7016}
!549 = !{!59, !25, i64 7020}
!550 = !{!59, !35, i64 1536}
!551 = !{!59, !37, i64 1448}
!552 = !{!59, !37, i64 1456}
!553 = !{!59, !37, i64 1464}
!554 = !{!59, !37, i64 1472}
!555 = !{!59, !25, i64 7264}
!556 = !{!59, !37, i64 7872}
!557 = !{!59, !25, i64 1544}
!558 = !{!59, !37, i64 1552}
!559 = !{!59, !25, i64 8320}
!560 = !{!59, !25, i64 8716}
!561 = !{!59, !25, i64 8356}
!562 = !{!59, !29, i64 8720}
!563 = !{!153, !27, i64 88}
!564 = !{!153, !33, i64 40}
!565 = !{!153, !33, i64 48}
!566 = !{!153, !33, i64 56}
!567 = !{!59, !29, i64 232}
!568 = !{!59, !25, i64 7004}
!569 = !{!59, !25, i64 7068}
!570 = !{!59, !24, i64 128}
!571 = !{!59, !41, i64 2424}
!572 = !{!59, !25, i64 7768}
!573 = !{!59, !29, i64 8416}
!574 = distinct !{null}
!575 = !{!314, !28, i64 24}
!576 = !{!39, !28, i64 96}
!577 = distinct !{!577, !148}
!578 = !{i64 0, i64 8, !240, i64 8, i64 8, !76, i64 16, i64 4, !26, i64 24, i64 16, !61, i64 40, i64 4, !26, i64 44, i64 12, !61}
!579 = !{!"branch_weights", i32 1365897554, i32 780903145, i32 682949}
!580 = !{!262, !25, i64 272}
!581 = distinct !{!581, !148}
!582 = !{!262, !85, i64 160}
!583 = distinct !{!583, !148}
!584 = distinct !{!584, !148}
!585 = distinct !{!585, !148}
!586 = !{!259, !259, i64 0}
!587 = distinct !{!587, !148}
!588 = !{!59, !25, i64 7080}
!589 = !{!59, !49, i64 7072}
!590 = !{!59, !40, i64 1504}
!591 = !{!93, !37, i64 264}
!592 = !{!93, !36, i64 1016}
!593 = !{!93, !27, i64 936}
!594 = !{!93, !27, i64 928}
!595 = !{!93, !36, i64 664}
!596 = distinct !{!596, !148}
!597 = !{!"pendingCommand", !25, i64 0, !25, i64 4, !81, i64 8, !27, i64 16, !36, i64 24, !85, i64 32, !189, i64 40, !36, i64 104, !25, i64 112, !25, i64 116, !24, i64 120, !82, i64 128, !82, i64 136}
!598 = !{!597, !25, i64 116}
!599 = !{!597, !25, i64 0}
!600 = !{!597, !82, i64 136}
!601 = !{!597, !81, i64 8}
!602 = !{!597, !85, i64 32}
!603 = !{!597, !24, i64 120}
!604 = !{!597, !25, i64 112}
!605 = !{!93, !85, i64 208}
!606 = !{!93, !85, i64 200}
!607 = !{!59, !25, i64 2468}
!608 = !{!59, !25, i64 2472}
!609 = !{!93, !25, i64 568}
!610 = !{!93, !25, i64 572}
!611 = !{!93, !28, i64 224}
!612 = !{!93, !24, i64 27}
!613 = !{!93, !25, i64 296}
!614 = !{!59, !25, i64 6656}
!615 = !{!93, !25, i64 300}
!616 = !{!59, !25, i64 8344}
!617 = !{!59, !25, i64 7628}
!618 = distinct !{!618, !148}
!619 = distinct !{!619, !148}
!620 = distinct !{!620, !148}
!621 = distinct !{!621, !148}
!622 = !{!87, !25, i64 12}
!623 = !{!87, !41, i64 0}
!624 = !{!82, !82, i64 0}
!625 = !{!81, !81, i64 0}
!626 = !{!"branch_weights", !"expected", i32 2145486172, i32 1997476}
!627 = distinct !{!627, !148}
!628 = distinct !{!628, !148}
!629 = distinct !{!629, !148}
!630 = !{!59, !25, i64 1400}
!631 = distinct !{!631, !148}
!632 = distinct !{!632, !148}
!633 = !{!"replyFlagNames", !27, i64 0, !29, i64 8}
!634 = !{!633, !29, i64 8}
!635 = !{!633, !27, i64 0}
!636 = distinct !{!636, !148}
!637 = !{!"redisCommandArg", !29, i64 0, !25, i64 8, !25, i64 12, !29, i64 16, !29, i64 24, !29, i64 32, !25, i64 40, !29, i64 48, !25, i64 56, !258, i64 64, !29, i64 72}
!638 = !{!637, !25, i64 12}
!639 = !{!637, !29, i64 16}
!640 = !{!637, !29, i64 24}
!641 = !{!637, !29, i64 32}
!642 = !{!637, !29, i64 48}
!643 = !{!637, !25, i64 40}
!644 = !{!637, !25, i64 8}
!645 = !{!637, !29, i64 0}
!646 = !{!637, !29, i64 72}
!647 = !{!637, !258, i64 64}
!648 = !{!637, !25, i64 56}
!649 = distinct !{!649, !148}
!650 = !{!260, !29, i64 0}
!651 = distinct !{!651, !148}
!652 = !{!262, !29, i64 8}
!653 = !{!262, !29, i64 24}
!654 = !{!262, !29, i64 16}
!655 = !{!262, !29, i64 48}
!656 = !{!262, !29, i64 40}
!657 = !{!262, !258, i64 168}
!658 = !{!262, !25, i64 56}
!659 = !{!262, !25, i64 152}
!660 = distinct !{!660, !148}
!661 = !{!189, !25, i64 0}
!662 = !{!359, !25, i64 4}
!663 = distinct !{!663, !148}
!664 = !{!"", !25, i64 0, !24, i64 8}
!665 = !{!"", !25, i64 0, !29, i64 8, !664, i64 16}
!666 = !{!665, !25, i64 0}
!667 = !{!665, !25, i64 16}
!668 = !{!665, !29, i64 8}
!669 = distinct !{!669, !148}
!670 = distinct !{!670, !148}
!671 = distinct !{!671, !148}
!672 = distinct !{!672, !148}
!673 = distinct !{!673, !148}
!674 = distinct !{!674, !148}
!675 = distinct !{!675, !148}
!676 = distinct !{!676, !148}
!677 = !{!262, !36, i64 184}
!678 = !{!262, !36, i64 176}
!679 = distinct !{!679, !148}
!680 = distinct !{!680, !148}
!681 = distinct !{null, null}
!682 = distinct !{!682, !148, !739}
!683 = distinct !{null}
!684 = distinct !{!684, !148, !739}
!685 = distinct !{!685, !148}
!686 = distinct !{null, null}
!687 = distinct !{!687, !148}
!688 = distinct !{!688, !148}
!689 = distinct !{!689, !148}
!690 = !{!59, !25, i64 7820}
!691 = !{!"float", !24, i64 0}
!692 = !{!"redisMemOverhead", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48, !27, i64 56, !27, i64 64, !27, i64 72, !27, i64 80, !27, i64 88, !27, i64 96, !27, i64 104, !27, i64 112, !27, i64 120, !691, i64 128, !691, i64 132, !691, i64 136, !27, i64 144, !691, i64 152, !27, i64 160, !691, i64 168, !27, i64 176, !691, i64 184, !27, i64 192, !27, i64 200, !27, i64 208, !27, i64 216, !27, i64 224, !27, i64 232, !27, i64 240, !28, i64 248}
!693 = !{!692, !27, i64 72}
!694 = !{!692, !27, i64 80}
!695 = !{!692, !691, i64 132}
!696 = !{!692, !27, i64 96}
!697 = !{!692, !27, i64 16}
!698 = !{!692, !27, i64 104}
!699 = !{!692, !691, i64 128}
!700 = !{!59, !27, i64 2896}
!701 = !{!692, !691, i64 152}
!702 = !{!692, !27, i64 160}
!703 = !{!692, !691, i64 168}
!704 = !{!692, !27, i64 176}
!705 = !{!692, !691, i64 184}
!706 = !{!692, !27, i64 192}
!707 = !{!692, !691, i64 136}
!708 = !{!692, !27, i64 144}
!709 = !{!692, !27, i64 24}
!710 = !{!59, !27, i64 7400}
!711 = !{!59, !27, i64 7304}
!712 = !{!692, !27, i64 40}
!713 = !{!692, !27, i64 48}
!714 = !{!692, !27, i64 240}
!715 = !{!692, !27, i64 232}
!716 = !{!692, !27, i64 56}
!717 = !{!692, !27, i64 64}
!718 = !{!692, !27, i64 216}
!719 = !{!59, !27, i64 3000}
!720 = !{!59, !27, i64 2976}
!721 = !{!59, !27, i64 2984}
!722 = !{!59, !27, i64 2992}
!723 = !{!59, !27, i64 6984}
!724 = !{!59, !27, i64 6992}
!725 = !{!59, !36, i64 2752}
!726 = !{!59, !36, i64 2760}
!727 = !{!59, !27, i64 3016}
!728 = !{!59, !36, i64 6904}
!729 = !{!59, !36, i64 6912}
!730 = !{!59, !27, i64 6784}
!731 = !{!59, !27, i64 6792}
!732 = !{!59, !36, i64 2736}
!733 = !{!59, !36, i64 2744}
!734 = !{!59, !27, i64 3024}
!735 = !{!59, !27, i64 3032}
!736 = !{!59, !27, i64 2488}
!737 = !{!59, !27, i64 2504}
!738 = !{!59, !27, i64 2512}
!739 = !{!"llvm.loop.peeled.count", i32 1}
!740 = !{!59, !27, i64 2640}
!741 = !{!59, !27, i64 2712}
!742 = !{!59, !36, i64 2544}
!743 = !{!59, !36, i64 2792}
!744 = !{!59, !36, i64 2800}
!745 = !{!59, !36, i64 2808}
!746 = !{!59, !36, i64 2816}
!747 = !{!59, !36, i64 2568}
!748 = !{!59, !36, i64 2576}
!749 = !{!59, !36, i64 2552}
!750 = !{!59, !36, i64 2560}
!751 = !{!59, !43, i64 2584}
!752 = !{!59, !36, i64 2592}
!753 = !{!59, !36, i64 2600}
!754 = !{!59, !36, i64 2608}
!755 = !{!59, !36, i64 2616}
!756 = !{!59, !36, i64 2624}
!757 = !{!59, !36, i64 2632}
!758 = !{!59, !36, i64 2648}
!759 = !{!59, !36, i64 2656}
!760 = !{!59, !36, i64 2664}
!761 = !{!59, !36, i64 2672}
!762 = !{!59, !36, i64 2680}
!763 = !{!59, !36, i64 2688}
!764 = !{!59, !36, i64 2704}
!765 = !{!59, !36, i64 3088}
!766 = !{!59, !36, i64 3104}
!767 = !{!59, !36, i64 5192}
!768 = !{!59, !36, i64 5184}
!769 = !{!59, !27, i64 7584}
!770 = !{!59, !40, i64 7456}
!771 = !{!93, !36, i64 408}
!772 = !{!93, !36, i64 392}
!773 = !{!59, !27, i64 7312}
!774 = !{!59, !27, i64 7328}
!775 = !{!59, !27, i64 7504}
!776 = !{!59, !27, i64 7512}
!777 = !{!59, !27, i64 7560}
!778 = !{!59, !27, i64 7592}
!779 = !{!59, !27, i64 7736}
!780 = !{!59, !25, i64 7604}
!781 = !{!59, !25, i64 7572}
!782 = !{!59, !25, i64 7608}
!783 = !{!59, !25, i64 7360}
!784 = !{!93, !29, i64 528}
!785 = !{!"connection", !38, i64 0, !25, i64 8, !25, i64 12, !25, i64 16, !74, i64 20, !74, i64 22, !74, i64 24, !28, i64 32, !34, i64 40, !28, i64 48, !28, i64 56, !28, i64 64}
!786 = !{!785, !38, i64 0}
!787 = !{!314, !28, i64 48}
!788 = !{!93, !25, i64 524}
!789 = !{!59, !36, i64 7280}
!790 = !{!"rusage", !65, i64 0, !65, i64 16, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !24, i64 88, !24, i64 96, !24, i64 104, !24, i64 112, !24, i64 120, !24, i64 128, !24, i64 136}
!791 = !{!790, !27, i64 16}
!792 = !{!790, !27, i64 24}
!793 = !{!790, !27, i64 0}
!794 = !{!790, !27, i64 8}
!795 = !{!190, !36, i64 144}
!796 = !{!363, !28, i64 24}
!797 = !{!171, !36, i64 16}
!798 = !{!59, !27, i64 2912}
!799 = !{!59, !27, i64 2920}
!800 = !{!59, !27, i64 2928}
!801 = !{!59, !27, i64 2936}
!802 = distinct !{!802, !148}
!803 = distinct !{!803, !148}
!804 = !{!59, !29, i64 240}
!805 = !{!59, !25, i64 7816}
!806 = !{!59, !25, i64 216}
!807 = distinct !{!807, !148}
!808 = !{!"", !29, i64 0, !24, i64 8, !37, i64 16, !37, i64 24, !80, i64 32}
!809 = !{!808, !24, i64 8}
!810 = !{!59, !25, i64 1896}
!811 = !{!59, !43, i64 2776}
!812 = distinct !{!812, !148}
!813 = distinct !{!813, !148}
!814 = distinct !{!814, !148}
!815 = !{!59, !37, i64 7408}
!816 = !{!59, !37, i64 7296}
!817 = distinct !{!817, !148}
!818 = distinct !{!818, !148}
!819 = !{!93, !36, i64 256}
!820 = !{!"rdbSaveInfo", !25, i64 0, !25, i64 4, !24, i64 8, !36, i64 56}
!821 = !{!820, !25, i64 4}
!822 = !{!820, !36, i64 56}
!823 = !{!820, !25, i64 0}
!824 = distinct !{!824, !148}
!825 = distinct !{!825, !148}
!826 = !{!59, !25, i64 48}
!827 = !{!59, !29, i64 8624}
end_hunk_2
