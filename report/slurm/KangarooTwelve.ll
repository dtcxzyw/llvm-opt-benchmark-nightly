inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.KangarooTwelve_Instance = type { %struct.KeccakWidth1600_12rounds_SpongeInstanceStruct, [4 x i8], %struct.KeccakWidth1600_12rounds_SpongeInstanceStruct, i64, i64, i32, i32 }
%struct.KeccakWidth1600_12rounds_SpongeInstanceStruct = type { [200 x i8], i32, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @KangarooTwelve_Initialize(ptr noundef initializes((432, 456)) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = tail call i32 @KeccakWidth1600_12rounds_SpongeInitialize(ptr noundef nonnull %i.e, i32 noundef 1344, i32 noundef 256) #4
  ret i32 %i.f
}

declare i32 @KeccakWidth1600_12rounds_SpongeInitialize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @KangarooTwelve_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.b, label %.thread110

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 7 uses
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = sub i32 8192, %i.j
  %i.l = zext i32 %i.k to i64
  %i.m = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.l) ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.o = tail call i32 @KeccakWidth1600_12rounds_SpongeAbsorb(ptr noundef nonnull %i.n, ptr noundef %1, i64 noundef %i.m) #4
  %.not93 = icmp eq i32 %i.o, 0
  br i1 %.not93, label %bb.d, label %.thread110

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw i64 %i.m to i32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.m ; 2 uses
  %i.r = sub nuw i64 %2, %i.m                     ; 3 uses
  %i.s = load i32, ptr %i.i, align 8
  %i.t = add i32 %i.s, %i.p                       ; 2 uses
  store i32 %i.t, ptr %i.i, align 8
  %i.u = icmp eq i32 %i.t, 8192
  %i.v = icmp ne i64 %i.r, 0
  %or.cond = and i1 %i.v, %i.u
  br i1 %or.cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i8 3, ptr %i.a, align 1
  store i32 0, ptr %i.i, align 8
  store i64 1, ptr %i.f, align 8
  %i.w = call i32 @KeccakWidth1600_12rounds_SpongeAbsorb(ptr noundef nonnull %i.n, ptr noundef nonnull %i.a, i64 noundef 1) #4
  %.not94 = icmp eq i32 %i.w, 0
  br i1 %.not94, label %.thread.thread, label %.critedge

.thread.thread:                                   ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add i32 %i.y, 7
  %i.aa = and i32 %i.z, -8
  store i32 %i.aa, ptr %i.x, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.lr.ph

.critedge:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.thread110

bb.f:                                             ; preds = %bb.b
  %.not88 = icmp eq i32 %i.j, 0
  br i1 %.not88, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = sub i32 8192, %i.j
  %i.ac = zext i32 %i.ab to i64
  %i.ad = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.ac) ; 4 uses
  %i.ae = tail call i32 @KeccakWidth1600_12rounds_SpongeAbsorb(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.ad) #4
  %.not89 = icmp eq i32 %i.ae, 0
  br i1 %.not89, label %bb.h, label %.thread110

bb.h:                                             ; preds = %bb.g
  %i.af = trunc nuw i64 %i.ad to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad ; 2 uses
  %i.ah = sub nuw i64 %2, %i.ad                   ; 2 uses
  %i.ai = load i32, ptr %i.i, align 8
  %i.aj = add i32 %i.ai, %i.af                    ; 2 uses
  store i32 %i.aj, ptr %i.i, align 8
  %i.ak = icmp eq i32 %i.aj, 8192
  br i1 %i.ak, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 0, ptr %i.i, align 8
  %i.al = load i64, ptr %i.f, align 8
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.f, align 8
  %i.an = tail call i32 @KeccakWidth1600_12rounds_SpongeAbsorbLastFewBits(ptr noundef nonnull %0, i8 noundef zeroext 11) #4
  %.not90 = icmp eq i32 %i.an, 0
  br i1 %.not90, label %bb.j, label %.critedge102

bb.j:                                             ; preds = %bb.i
  %i.ao = call i32 @KeccakWidth1600_12rounds_SpongeSqueeze(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 32) #4
  %.not91 = icmp eq i32 %i.ao, 0
  br i1 %.not91, label %bb.k, label %.critedge102

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aq = call i32 @KeccakWidth1600_12rounds_SpongeAbsorb(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.b, i64 noundef 32) #4
  %.not92 = icmp eq i32 %i.aq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br i1 %.not92, label %.thread, label %.thread110

.critedge102:                                     ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %.thread110

.thread:                                          ; preds = %bb.d, %bb.k, %bb.h, %bb.f
  %.282 = phi i64 [ %i.ah, %bb.k ], [ %2, %bb.f ], [ %i.ah, %bb.h ], [ %i.r, %bb.d ] ; 2 uses
  %.271 = phi ptr [ %i.ag, %bb.k ], [ %1, %bb.f ], [ %i.ag, %bb.h ], [ %i.q, %bb.d ]
  %.not95119 = icmp eq i64 %.282, 0
  br i1 %.not95119, label %.thread110, label %.lr.ph

.lr.ph:                                           ; preds = %.thread.thread, %.thread
  %.271134 = phi ptr [ %i.q, %.thread.thread ], [ %.271, %.thread ]
  %.282133 = phi i64 [ %i.r, %.thread.thread ], [ %.282, %.thread ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.s
  %.372121 = phi ptr [ %.271134, %.lr.ph ], [ %i.ax, %bb.s ] ; 2 uses
  %.383120 = phi i64 [ %.282133, %.lr.ph ], [ %i.ay, %bb.s ] ; 3 uses
  %i.at = call i64 @llvm.umin.i64(i64 %.383120, i64 8192) ; 4 uses
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = call i32 @KeccakWidth1600_12rounds_SpongeInitialize(ptr noundef nonnull %0, i32 noundef 1344, i32 noundef 256) #4
  %.not96 = icmp eq i32 %i.av, 0
  br i1 %.not96, label %bb.m, label %.thread110

bb.m:                                             ; preds = %bb.l
  %i.aw = call i32 @KeccakWidth1600_12rounds_SpongeAbsorb(ptr noundef nonnull %0, ptr noundef %.372121, i64 noundef %i.at) #4
  %.not97 = icmp eq i32 %i.aw, 0
  br i1 %.not97, label %bb.n, label %.thread110

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %.372121, i64 %i.at
  %i.ay = sub nuw i64 %.383120, %i.at             ; 2 uses
  %i.az = icmp ugt i64 %.383120, 8191
  br i1 %i.az, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.ba = load i64, ptr %i.f, align 8
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.f, align 8
  %i.bc = call i32 @KeccakWidth1600_12rounds_SpongeAbsorbLastFewBits(ptr noundef nonnull %0, i8 noundef zeroext 11) #4
  %.not98 = icmp eq i32 %i.bc, 0
  br i1 %.not98, label %bb.p, label %.critedge105

bb.p:                                             ; preds = %bb.o
  %i.bd = call i32 @KeccakWidth1600_12rounds_SpongeSqueeze(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 32) #4
  %.not99 = icmp eq i32 %i.bd, 0
  br i1 %.not99, label %bb.q, label %.critedge105

bb.q:                                             ; preds = %bb.p
  %i.be = call i32 @KeccakWidth1600_12rounds_SpongeAbsorb(ptr noundef nonnull %i.as, ptr noundef nonnull %i.c, i64 noundef 32) #4
  %.not100 = icmp eq i32 %i.be, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br i1 %.not100, label %bb.s, label %.thread110

bb.r:                                             ; preds = %bb.n
  store i32 %i.au, ptr %i.ar, align 8
  br label %bb.s

.critedge105:                                     ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %.thread110

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not95 = icmp eq i64 %i.ay, 0
  br i1 %.not95, label %.thread110, label %bb.l

.thread110:                                       ; preds = %bb.s, %bb.q, %bb.l, %bb.m, %.thread, %.critedge105, %.critedge102, %bb.g, %bb.k, %bb.c, %.critedge, %bb.a
  %.11 = phi i32 [ 1, %bb.c ], [ 1, %.critedge102 ], [ 1, %bb.a ], [ 1, %.critedge105 ], [ 1, %.critedge ], [ 1, %bb.k ], [ 1, %bb.g ], [ 0, %.thread ], [ 1, %bb.l ], [ 1, %bb.q ], [ 0, %bb.s ], [ 1, %bb.m ]
  ret i32 %.11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @KeccakWidth1600_12rounds_SpongeAbsorb(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @KeccakWidth1600_12rounds_SpongeAbsorbLastFewBits(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @KeccakWidth1600_12rounds_SpongeSqueeze(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @KangarooTwelve_Final(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 10 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 452 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %bb.b, label %.critedge47

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %3, 0
  br i1 %.not35, label %.split, label %bb.c

.split:                                           ; preds = %bb.b
  store i8 0, ptr %i.a, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @KangarooTwelve_Update(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3)
  %.not36 = icmp eq i32 %i.e, 0
  br i1 %.not36, label %.lr.ph.i, label %.critedge47

.lr.ph22.preheader.i:                             ; preds = %.lr.ph.i
  %i.f = add nuw nsw i32 %.01718.i, 2
  %wide.trip.count.i = zext nneg i32 %i.f to i64  ; 2 uses
  br label %.lr.ph22.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.019.i = phi i64 [ %i.h, %.lr.ph.i ], [ %3, %bb.c ]
  %.01718.i = phi i32 [ %i.g, %.lr.ph.i ], [ 0, %bb.c ] ; 3 uses
  %i.g = add nuw nsw i32 %.01718.i, 1             ; 4 uses
  %i.h = lshr i64 %.019.i, 8                      ; 2 uses
  %i.i = icmp ne i64 %i.h, 0
  %i.j = icmp samesign ult i32 %.01718.i, 7
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %.lr.ph.i, label %.lr.ph22.preheader.i, !llvm.loop !8

.lr.ph22.i:                                       ; preds = %.lr.ph22.i, %.lr.ph22.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph22.preheader.i ], [ %indvars.iv.next.i, %.lr.ph22.i ] ; 3 uses
  %i.l = trunc i64 %indvars.iv.i to i32
  %i.m = sub i32 %i.g, %i.l
  %i.n = shl nsw i32 %i.m, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = lshr i64 %3, %i.o
  %i.q = trunc i64 %i.p to i8
  %i.r = getelementptr i8, ptr %i.a, i64 %indvars.iv.i
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  store i8 %i.q, ptr %i.s, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %right_encode.exit, label %.lr.ph22.i, !llvm.loop !11

right_encode.exit:                                ; preds = %.lr.ph22.i
  %i.t = zext nneg i32 %i.g to i64
  %i.u = trunc nuw nsw i32 %i.g to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  store i8 %i.u, ptr %i.v, align 1
  br label %bb.d

bb.d:                                             ; preds = %right_encode.exit, %.split
  %phi.call = phi i64 [ 1, %.split ], [ %wide.trip.count.i, %right_encode.exit ]
  %i.w = call i32 @KangarooTwelve_Update(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %phi.call)
  %.not37 = icmp eq i32 %i.w, 0
  br i1 %.not37, label %bb.e, label %.critedge47

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ab = load i32, ptr %i.aa, align 8
  %.not38 = icmp eq i32 %i.ab, 0
  br i1 %.not38, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.ac = add i64 %i.y, 1
  store i64 %i.ac, ptr %i.x, align 8
  %i.ad = call i32 @KeccakWidth1600_12rounds_SpongeAbsorbLastFewBits(ptr noundef nonnull %0, i8 noundef zeroext 11) #4
  %.not39 = icmp eq i32 %i.ad, 0
  br i1 %.not39, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ae = call i32 @KeccakWidth1600_12rounds_SpongeSqueeze(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 32) #4
  %.not40 = icmp eq i32 %i.ae, 0
  br i1 %.not40, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ag = call i32 @KeccakWidth1600_12rounds_SpongeAbsorb(ptr noundef nonnull %i.af, ptr noundef nonnull %i.b, i64 noundef 32) #4
  %.not41 = icmp eq i32 %i.ag, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br i1 %.not41, label %._crit_edge, label %.critedge47

._crit_edge:                                      ; preds = %bb.i
  %.pre = load i64, ptr %i.x, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.f
  %i.ah = phi i64 [ %.pre, %._crit_edge ], [ %i.y, %bb.f ]
  %i.ai = add i64 %i.ah, -1                       ; 4 uses
  store i64 %i.ai, ptr %i.x, align 8
  %.not23.i48 = icmp eq i64 %i.ai, 0
  br i1 %.not23.i48, label %right_encode.exit61, label %.lr.ph.i49

.lr.ph22.preheader.i52:                           ; preds = %.lr.ph.i49
  %i.aj = add nuw nsw i32 %.01718.i51, 2          ; 2 uses
  %wide.trip.count.i53 = zext nneg i32 %i.aj to i64
  br label %.lr.ph22.i54

.lr.ph.i49:                                       ; preds = %bb.j, %.lr.ph.i49
  %.019.i50 = phi i64 [ %i.al, %.lr.ph.i49 ], [ %i.ai, %bb.j ]
  %.01718.i51 = phi i32 [ %i.ak, %.lr.ph.i49 ], [ 0, %bb.j ] ; 3 uses
  %i.ak = add nuw nsw i32 %.01718.i51, 1          ; 4 uses
  %i.al = lshr i64 %.019.i50, 8                   ; 2 uses
  %i.am = icmp ne i64 %i.al, 0
  %i.an = icmp samesign ult i32 %.01718.i51, 7
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph.i49, label %.lr.ph22.preheader.i52, !llvm.loop !8

.lr.ph22.i54:                                     ; preds = %.lr.ph22.i54, %.lr.ph22.preheader.i52
  %indvars.iv.i55 = phi i64 [ 1, %.lr.ph22.preheader.i52 ], [ %indvars.iv.next.i56, %.lr.ph22.i54 ] ; 3 uses
  %i.ap = trunc i64 %indvars.iv.i55 to i32
  %i.aq = sub i32 %i.ak, %i.ap
  %i.ar = shl nsw i32 %i.aq, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 %i.ai, %i.as
  %i.au = trunc i64 %i.at to i8
  %i.av = getelementptr i8, ptr %i.a, i64 %indvars.iv.i55
  %i.aw = getelementptr i8, ptr %i.av, i64 -1
  store i8 %i.au, ptr %i.aw, align 1
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i55, 1 ; 2 uses
  %exitcond.i57 = icmp eq i64 %indvars.iv.next.i56, %wide.trip.count.i53
  br i1 %exitcond.i57, label %right_encode.exit61.loopexit, label %.lr.ph22.i54, !llvm.loop !11

right_encode.exit61.loopexit:                     ; preds = %.lr.ph22.i54
  %i.ax = zext nneg i32 %i.ak to i64
  %i.ay = trunc nuw nsw i32 %i.ak to i8
  br label %right_encode.exit61

right_encode.exit61:                              ; preds = %bb.j, %right_encode.exit61.loopexit
  %.017.lcssa29.i58 = phi i8 [ %i.ay, %right_encode.exit61.loopexit ], [ 0, %bb.j ]
  %.pre-phi26.i59 = phi i32 [ %i.aj, %right_encode.exit61.loopexit ], [ 1, %bb.j ] ; 2 uses
  %.pre-phi.i60 = phi i64 [ %i.ax, %right_encode.exit61.loopexit ], [ 0, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi.i60
  store i8 %.017.lcssa29.i58, ptr %i.az, align 1
  %i.ba = zext nneg i32 %.pre-phi26.i59 to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ba ; 2 uses
  store i8 -1, ptr %i.bb, align 1
  %i.bc = add nuw nsw i32 %.pre-phi26.i59, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 -1, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bf = zext nneg i32 %i.bc to i64
  %i.bg = call i32 @KeccakWidth1600_12rounds_SpongeAbsorb(ptr noundef nonnull %i.be, ptr noundef nonnull %i.a, i64 noundef %i.bf) #4
  %.not42 = icmp eq i32 %i.bg, 0
  br i1 %.not42, label %bb.k, label %.critedge47

.critedge:                                        ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %.critedge47

bb.k:                                             ; preds = %bb.e, %right_encode.exit61
  %.133 = phi i8 [ 6, %right_encode.exit61 ], [ 7, %bb.e ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bi = call i32 @KeccakWidth1600_12rounds_SpongeAbsorbLastFewBits(ptr noundef nonnull %i.bh, i8 noundef zeroext %.133) #4
  %.not43 = icmp eq i32 %i.bi, 0
  br i1 %.not43, label %bb.l, label %.critedge47

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %.not44 = icmp eq i64 %i.bk, 0
  br i1 %.not44, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 2, ptr %i.c, align 4
  %i.bl = call i32 @KeccakWidth1600_12rounds_SpongeSqueeze(ptr noundef nonnull %i.bh, ptr noundef %1, i64 noundef %i.bk) #4
  br label %.critedge47

bb.n:                                             ; preds = %bb.l
  store i32 3, ptr %i.c, align 4
  br label %.critedge47

.critedge47:                                      ; preds = %.critedge, %bb.i, %bb.k, %bb.d, %bb.c, %bb.a, %right_encode.exit61, %bb.n, %bb.m
  %.3 = phi i32 [ 1, %right_encode.exit61 ], [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.k ], [ %i.bl, %bb.m ], [ 0, %bb.n ], [ 1, %bb.d ], [ 1, %bb.i ], [ 1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @KangarooTwelve_Squeeze(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = tail call i32 @KeccakWidth1600_12rounds_SpongeSqueeze(ptr noundef nonnull %i.c, ptr noundef %1, i64 noundef %2) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @KangarooTwelve(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.KangarooTwelve_Instance, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 432
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 448
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 440
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 452
  store i32 1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 216
  %i.g = call i32 @KeccakWidth1600_12rounds_SpongeInitialize(ptr noundef nonnull %i.f, i32 noundef 1344, i32 noundef 256) #4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 @KangarooTwelve_Update(ptr noundef nonnull %6, ptr noundef %0, i64 noundef %1)
  %.not8 = icmp eq i32 %i.h, 0
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @KangarooTwelve_Final(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %4, i64 noundef %5)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ %i.i, %bb.d ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
end_hunk_0
