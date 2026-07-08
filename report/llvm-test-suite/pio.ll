inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@pzero = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @fputp(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %1, align 2, !tbaa !8
  %i.b = add i16 %i.a, 1
  store i16 %i.b, ptr %1, align 2, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @ptoa(ptr noundef %1) #6   ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %fouts.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10    ; 2 uses
  %.not13.i = icmp eq i8 %i.d, 0
  br i1 %.not13.i, label %fouts.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %i.e = phi i8 [ %i.j, %.preheader.i ], [ %i.d, %bb.d ]
  %.011.i = phi ptr [ %i.i, %.preheader.i ], [ %i.c, %bb.d ]
  %.09.i = phi i32 [ %i.f, %.preheader.i ], [ 0, %bb.d ]
  %i.f = add nuw nsw i32 %.09.i, 1                ; 2 uses
  %i.g = sext i8 %i.e to i32
  %i.h = tail call i32 @putc(i32 noundef %i.g, ptr noundef %0) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.011.i, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !10    ; 2 uses
  %i.k = icmp ne i8 %i.j, 0
  %i.l = icmp ne i32 %i.h, -1
  %i.m = and i1 %i.l, %i.k
  br i1 %i.m, label %.preheader.i, label %bb.e, !llvm.loop !11

bb.e:                                             ; preds = %.preheader.i
  %.not14.i = icmp eq i32 %i.h, -1
  %spec.select.i = select i1 %.not14.i, i32 -1, i32 %i.f
  br label %fouts.exit

fouts.exit:                                       ; preds = %bb.c, %bb.d, %bb.e
  %i.n = phi i32 [ 0, %bb.c ], [ %spec.select.i, %bb.e ], [ 0, %bb.d ]
  %i.o = tail call i32 (ptr, ...) @free(ptr noundef %i.c) #6 ; 0 uses
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %fouts.exit
  %i.p = load i16, ptr %1, align 2, !tbaa !8
  %i.q = add i16 %i.p, -1                         ; 2 uses
  store i16 %i.q, ptr %1, align 2, !tbaa !8
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i32 (ptr, ...) @pfree(ptr noundef nonnull %1) #6 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %fouts.exit
  ret i32 %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @ptoa(ptr noundef) local_unnamed_addr #2

declare i32 @free(...) local_unnamed_addr #2

declare i32 @pfree(...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @putp(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 2, !tbaa !8
  %i.b = add i16 %i.a, 1
  store i16 %i.b, ptr %0, align 2, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @ptoa(ptr noundef %0) #6   ; 4 uses
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !13 ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %fouts.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %i.c, align 1, !tbaa !10    ; 2 uses
  %.not13.i = icmp eq i8 %i.e, 0
  br i1 %.not13.i, label %fouts.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %i.f = phi i8 [ %i.j, %.preheader.i ], [ %i.e, %bb.d ]
  %.011.i = phi ptr [ %i.i, %.preheader.i ], [ %i.c, %bb.d ]
  %i.g = sext i8 %i.f to i32
  %i.h = tail call i32 @putc(i32 noundef %i.g, ptr noundef %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %.011.i, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !10    ; 2 uses
  %i.k = icmp ne i8 %i.j, 0
  %i.l = icmp ne i32 %i.h, -1
  %i.m = and i1 %i.l, %i.k
  br i1 %i.m, label %.preheader.i, label %fouts.exit.loopexit, !llvm.loop !11

fouts.exit.loopexit:                              ; preds = %.preheader.i
  %.pre = load ptr, ptr @stdout, align 8, !tbaa !13
  br label %fouts.exit

fouts.exit:                                       ; preds = %fouts.exit.loopexit, %bb.c, %bb.d
  %i.n = phi ptr [ %.pre, %fouts.exit.loopexit ], [ %i.d, %bb.c ], [ %i.d, %bb.d ]
  %i.o = tail call i32 @putc(i32 noundef 10, ptr noundef %i.n)
  %i.p = tail call i32 (ptr, ...) @free(ptr noundef %i.c) #6 ; 0 uses
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %fouts.exit
  %i.q = load i16, ptr %0, align 2, !tbaa !8
  %i.r = add i16 %i.q, -1                         ; 2 uses
  store i16 %i.r, ptr %0, align 2, !tbaa !8
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 (ptr, ...) @pfree(ptr noundef nonnull %0) #6 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %fouts.exit
  ret i32 %i.o
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @fprintp(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %1, align 2, !tbaa !8
  %i.b = add i16 %i.a, 1
  store i16 %i.b, ptr %1, align 2, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @ptoa(ptr noundef %1) #6   ; 6 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #7
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.g = icmp sgt i32 %2, %i.e
  br i1 %i.g, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.c, align 1, !tbaa !10    ; 2 uses
  %.not13.i = icmp eq i8 %i.h, 0
  br i1 %.not13.i, label %fouts.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %i.i = phi i8 [ %i.n, %.preheader.i ], [ %i.h, %bb.d ]
  %.011.i = phi ptr [ %i.m, %.preheader.i ], [ %i.c, %bb.d ]
  %.09.i = phi i32 [ %i.j, %.preheader.i ], [ 0, %bb.d ]
  %i.j = add nuw nsw i32 %.09.i, 1                ; 2 uses
  %i.k = sext i8 %i.i to i32
  %i.l = tail call i32 @putc(i32 noundef %i.k, ptr noundef %0) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10    ; 2 uses
  %i.o = icmp ne i8 %i.n, 0
  %i.p = icmp ne i32 %i.l, -1
  %i.q = and i1 %i.p, %i.o
  br i1 %i.q, label %.preheader.i, label %bb.e, !llvm.loop !11

bb.e:                                             ; preds = %.preheader.i
  %.not14.i = icmp eq i32 %i.l, -1
  %spec.select.i = select i1 %.not14.i, i32 -1, i32 %i.j
  br label %fouts.exit

fouts.exit:                                       ; preds = %bb.d, %bb.e
  %i.r = phi i32 [ 0, %bb.d ], [ %spec.select.i, %bb.e ] ; 2 uses
  %i.s = sub nsw i32 0, %i.e                      ; 2 uses
  %i.t = icmp slt i32 %2, %i.s
  br i1 %i.t, label %.lr.ph37, label %fouts.exit31

.lr.ph37:                                         ; preds = %fouts.exit, %.lr.ph37
  %.036 = phi i32 [ %i.u, %.lr.ph37 ], [ %2, %fouts.exit ]
  %i.u = add i32 %.036, 1                         ; 2 uses
  %i.v = tail call i32 @putc(i32 noundef 32, ptr noundef %0) ; 0 uses
  %exitcond.not = icmp eq i32 %i.u, %i.s
  br i1 %exitcond.not, label %fouts.exit31, label %.lr.ph37, !llvm.loop !16

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.135 = phi i32 [ %i.w, %.lr.ph ], [ %2, %.preheader ]
  %i.w = add nsw i32 %.135, -1                    ; 2 uses
  %i.x = tail call i32 @putc(i32 noundef 32, ptr noundef %0) ; 0 uses
  %i.y = icmp sgt i32 %i.w, %i.e
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.z = load i8, ptr %i.c, align 1, !tbaa !10    ; 2 uses
  %.not13.i25 = icmp eq i8 %i.z, 0
  br i1 %.not13.i25, label %fouts.exit31, label %.preheader.i26

.preheader.i26:                                   ; preds = %._crit_edge, %.preheader.i26
  %i.aa = phi i8 [ %i.af, %.preheader.i26 ], [ %i.z, %._crit_edge ]
  %.011.i27 = phi ptr [ %i.ae, %.preheader.i26 ], [ %i.c, %._crit_edge ]
  %.09.i28 = phi i32 [ %i.ab, %.preheader.i26 ], [ 0, %._crit_edge ]
  %i.ab = add nuw nsw i32 %.09.i28, 1             ; 2 uses
  %i.ac = sext i8 %i.aa to i32
  %i.ad = tail call i32 @putc(i32 noundef %i.ac, ptr noundef %0) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i27, i64 1 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !10  ; 2 uses
  %i.ag = icmp ne i8 %i.af, 0
  %i.ah = icmp ne i32 %i.ad, -1
  %i.ai = and i1 %i.ah, %i.ag
  br i1 %i.ai, label %.preheader.i26, label %bb.f, !llvm.loop !11

bb.f:                                             ; preds = %.preheader.i26
  %.not14.i29 = icmp eq i32 %i.ad, -1
  %spec.select.i30 = select i1 %.not14.i29, i32 -1, i32 %i.ab
  br label %fouts.exit31

fouts.exit31:                                     ; preds = %.lr.ph37, %fouts.exit, %bb.f, %._crit_edge
  %.019 = phi i32 [ %spec.select.i30, %bb.f ], [ 0, %._crit_edge ], [ %i.r, %fouts.exit ], [ %i.r, %.lr.ph37 ]
  %i.aj = tail call i32 (ptr, ...) @free(ptr noundef nonnull %i.c) #6 ; 0 uses
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %fouts.exit31
  %i.ak = load i16, ptr %1, align 2, !tbaa !8
  %i.al = add i16 %i.ak, -1                       ; 2 uses
  store i16 %i.al, ptr %1, align 2, !tbaa !8
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = tail call i32 (ptr, ...) @pfree(ptr noundef nonnull %1) #6 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %fouts.exit31
  ret i32 %.019
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @fgetp(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8, !tbaa !18
  %i.c = tail call i32 @getc(ptr noundef %0)      ; 3 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %.thread80, label %.preheader46

.preheader46:                                     ; preds = %bb.a
  %i.d = tail call ptr @__ctype_b_loc() #8        ; 12 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !8
  %i.i = and i16 %i.h, 8192
  %.not3853 = icmp eq i16 %i.i, 0
  br i1 %.not3853, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader46, %.lr.ph
  %i.j = tail call i32 @getc(ptr noundef %0)      ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !8
  %i.o = and i16 %i.n, 8192
  %.not38 = icmp eq i16 %i.o, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %.preheader46
  %.029.lcssa = phi i32 [ %i.c, %.preheader46 ], [ %i.j, %.lr.ph ] ; 3 uses
  %.not44 = icmp eq i32 %.029.lcssa, 45
  switch i32 %.029.lcssa, label %bb.b [
    i32 45, label %.sink.split
    i32 43, label %.sink.split
  ]

.sink.split:                                      ; preds = %._crit_edge, %._crit_edge
  %i.p = tail call i32 @getc(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.sink.split
  %.130 = phi i32 [ %.029.lcssa, %._crit_edge ], [ %i.p, %.sink.split ] ; 4 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.r = sext i32 %.130 to i64
  %i.s = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !8
  %i.u = and i16 %i.t, 2048
  %.not39 = icmp eq i16 %i.u, 0
  br i1 %.not39, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr @pzero, align 8, !tbaa !18
  %i.w = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef %i.v) #6 ; 0 uses
  %i.x = call ptr @utop(i32 noundef 1000000000) #6
  %i.y = call ptr @psetq(ptr noundef nonnull %i.b, ptr noundef %i.x) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %.2 = phi i32 [ %.130, %bb.c ], [ %i.cm, %bb.k ]
  %i.z = add nsw i32 %.2, -48                     ; 2 uses
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.ab = call i32 @getc(ptr noundef %0)          ; 3 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !8
  %i.af = and i16 %i.ae, 2048
  %.not40.not = icmp eq i16 %i.af, 0
  br i1 %.not40.not, label %._crit_edge58, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %1 = mul i32 %i.z, 10
  %trip.count.minus.1 = add i32 %1, -48
  %n.rnd.up = add i32 %trip.count.minus.1, %i.ab  ; 2 uses
  %2 = load ptr, ptr %i.d, align 8, !tbaa !19
  %3 = call i32 @getc(ptr noundef %0)             ; 3 uses
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [2 x i8], ptr %2, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !8
  %7 = and i16 %6, 2048
  %.not40.1 = icmp eq i16 %7, 0                   ; 3 uses
  br i1 %.not40.1, label %bb.l, label %bb.e

bb.e:                                             ; preds = %vector.ph
  %i.ag = mul i32 %n.rnd.up, 10
  %i.ah = add i32 %i.ag, -48
  %i.ai = add i32 %i.ah, %3                       ; 2 uses
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.ak = call i32 @getc(ptr noundef %0)          ; 3 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !8
  %i.ao = and i16 %i.an, 2048
  %.not40.1.a = icmp eq i16 %i.ao, 0
  br i1 %.not40.1.a, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = mul i32 %i.ai, 10
  %i.aq = add i32 %i.ap, -48
  %i.ar = add i32 %i.aq, %i.ak                    ; 2 uses
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.at = call i32 @getc(ptr noundef %0)          ; 3 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %i.as, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !8
  %i.ax = and i16 %i.aw, 2048
  %.not40.2 = icmp eq i16 %i.ax, 0
  br i1 %.not40.2, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = mul i32 %i.ar, 10
  %i.az = add i32 %i.ay, -48
  %i.ba = add i32 %i.az, %i.at                    ; 2 uses
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.bc = call i32 @getc(ptr noundef %0)          ; 3 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %i.bb, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !8
  %i.bg = and i16 %i.bf, 2048
  %.not40.3 = icmp eq i16 %i.bg, 0
  br i1 %.not40.3, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = mul i32 %i.ba, 10
  %i.bi = add i32 %i.bh, -48
  %i.bj = add i32 %i.bi, %i.bc                    ; 2 uses
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.bl = call i32 @getc(ptr noundef %0)          ; 3 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !8
  %i.bp = and i16 %i.bo, 2048
  %.not40.4 = icmp eq i16 %i.bp, 0
  br i1 %.not40.4, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = mul i32 %i.bj, 10
  %i.br = add i32 %i.bq, -48
  %i.bs = add i32 %i.br, %i.bl                    ; 2 uses
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.bu = call i32 @getc(ptr noundef %0)          ; 3 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.bt, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !8
  %i.by = and i16 %i.bx, 2048
  %.not40.5 = icmp eq i16 %i.by, 0
  br i1 %.not40.5, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = mul i32 %i.bs, 10
  %i.ca = add i32 %i.bz, -48
  %i.cb = add i32 %i.ca, %i.bu                    ; 2 uses
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.cd = call i32 @getc(ptr noundef %0)          ; 3 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !8
  %i.ch = and i16 %i.cg, 2048
  %.not40.6 = icmp eq i16 %i.ch, 0
  br i1 %.not40.6, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = mul i32 %i.cb, 10
  %i.cj = add i32 %i.ci, -48
  %i.ck = add i32 %i.cj, %i.cd
  %8 = load ptr, ptr %i.a, align 8, !tbaa !18
  %9 = load ptr, ptr %i.b, align 8, !tbaa !18
  %10 = call ptr @pmul(ptr noundef %8, ptr noundef %9) #6
  %11 = call ptr @utop(i32 noundef %i.ck) #6
  %12 = call ptr @padd(ptr noundef %10, ptr noundef %11) #6
  %13 = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef %12) #6 ; 0 uses
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.cm = call i32 @getc(ptr noundef %0)          ; 3 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !8
  %i.cq = and i16 %i.cp, 2048
  %.not40.7 = icmp eq i16 %i.cq, 0
  br i1 %.not40.7, label %.loopexit, label %bb.d, !llvm.loop !22

bb.l:                                             ; preds = %vector.ph, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.028.lcssa.ph = phi i32 [ %i.cb, %bb.j ], [ %i.bs, %bb.i ], [ %i.bj, %bb.h ], [ %i.ba, %bb.g ], [ %i.ar, %bb.f ], [ %i.ai, %bb.e ], [ %n.rnd.up, %vector.ph ] ; 2 uses
  %exitcond.not.1 = phi i1 [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ true, %bb.e ], [ false, %vector.ph ]
  %exitcond.not.2 = phi i1 [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ true, %bb.f ], [ false, %bb.e ], [ false, %vector.ph ]
  %exitcond.not.3 = phi i1 [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ true, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %vector.ph ]
  %exitcond.not.4 = phi i1 [ false, %bb.j ], [ false, %bb.i ], [ true, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %vector.ph ]
  %exitcond.not.5 = phi i1 [ false, %bb.j ], [ true, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %vector.ph ]
  %.lcssa60.ph = phi i32 [ %i.cd, %bb.j ], [ %i.bu, %bb.i ], [ %i.bl, %bb.h ], [ %i.bc, %bb.g ], [ %i.at, %bb.f ], [ %i.ak, %bb.e ], [ %3, %vector.ph ] ; 2 uses
  %brmerge = or i1 %.not40.1, %exitcond.not.1     ; 2 uses
  %.mux = select i1 %.not40.1, i32 100, i32 1000
  %brmerge117 = or i1 %brmerge, %exitcond.not.2   ; 2 uses
  %.mux.mux = select i1 %brmerge, i32 %.mux, i32 10000
  %brmerge118 = or i1 %brmerge117, %exitcond.not.3 ; 2 uses
  %.mux.mux.mux = select i1 %brmerge117, i32 %.mux.mux, i32 100000
  %brmerge119 = or i1 %brmerge118, %exitcond.not.4
  %.mux.mux.mux.mux = select i1 %brmerge118, i32 %.mux.mux.mux, i32 1000000
  br i1 %brmerge119, label %._crit_edge58, label %.lr.ph57.5

.lr.ph57.5:                                       ; preds = %bb.l
  %spec.select = select i1 %exitcond.not.5, i32 10000000, i32 100000000
  br label %._crit_edge58

._crit_edge58:                                    ; preds = %.lr.ph57.5, %bb.d, %bb.l
  %.lcssa6076 = phi i32 [ %i.ab, %bb.d ], [ %.lcssa60.ph, %.lr.ph57.5 ], [ %.lcssa60.ph, %bb.l ]
  %.028.lcssa73 = phi i32 [ %i.z, %bb.d ], [ %.028.lcssa.ph, %.lr.ph57.5 ], [ %.028.lcssa.ph, %bb.l ]
  %.027.lcssa = phi i32 [ 10, %bb.d ], [ %.mux.mux.mux.mux, %bb.l ], [ %spec.select, %.lr.ph57.5 ]
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cs = call ptr @utop(i32 noundef %.027.lcssa) #6
  %i.ct = call ptr @pmul(ptr noundef %i.cr, ptr noundef %i.cs) #6
  %i.cu = call ptr @utop(i32 noundef %.028.lcssa73) #6
  %i.cv = call ptr @padd(ptr noundef %i.ct, ptr noundef %i.cu) #6
  %i.cw = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef %i.cv) #6 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %._crit_edge58
  %.3 = phi i32 [ %.lcssa6076, %._crit_edge58 ], [ %i.cm, %bb.k ] ; 2 uses
  %.not42 = icmp eq i32 %.3, -1
  br i1 %.not42, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.cx = call i32 @ungetc(i32 noundef %.3, ptr noundef %0) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit
  br i1 %.not44, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cz = call ptr @pneg(ptr noundef %i.cy) #6
  %i.da = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef %i.cz) #6 ; 0 uses
  br label %bb.s

bb.p:                                             ; preds = %bb.b
  %i.db = icmp eq i32 %.130, -1
  br i1 %i.db, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.a, align 8, !tbaa !18
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.dc = tail call i32 @ungetc(i32 noundef %.130, ptr noundef %0) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.n, %bb.r, %bb.q
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !18   ; 4 uses
  %.not45 = icmp eq ptr %.pr, null
  br i1 %.not45, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = load i16, ptr %.pr, align 2, !tbaa !8
  %i.de = add i16 %i.dd, -1                       ; 2 uses
  store i16 %i.de, ptr %.pr, align 2, !tbaa !8
  %i.df = icmp eq i16 %i.de, 0
  br i1 %i.df, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dg = call i32 (ptr, ...) @pfree(ptr noundef nonnull %.pr) #6 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.pr79 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  %i.dh = icmp eq ptr %.pr79, null
  br i1 %i.dh, label %.thread80, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = call ptr @presult(ptr noundef nonnull %.pr79) #6
  br label %.thread80

.thread80:                                        ; preds = %bb.a, %bb.v, %bb.w
  %.032 = phi ptr [ %i.di, %bb.w ], [ null, %bb.v ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.032
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

declare ptr @psetq(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @utop(i32 noundef) local_unnamed_addr #2

declare ptr @padd(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @pmul(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @pneg(ptr noundef) local_unnamed_addr #2

declare ptr @presult(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = !{!15, !15, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 short", !15, i64 0}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
end_hunk_0
