Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/xfacedec?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.ProbRange = type { i8, i8 }
%struct.BigInt = type { i32, [546 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"xface\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"X-face image\00", align 1
@ff_xface_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 204, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 2304, ptr null, ptr null, ptr null, ptr @xface_decode_init, %union.anon { ptr @xface_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"Size value %dx%d not supported, only accepts a size of %dx%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Buffer is longer than expected, truncating at byte %d\0A\00", align 1
@ff_xface_probranges_per_level = external local_unnamed_addr constant [4 x [3 x %struct.ProbRange]], align 16
@ff_xface_probranges_2x2 = external local_unnamed_addr constant [16 x %struct.ProbRange], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -22, 1) i32 @xface_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !29 ; 3 uses
  switch i32 %i.b, label %.thread [
    i32 0, label %bb.b
    i32 48, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %.not10 = icmp eq i32 %.pre, 0
  br i1 %.not10, label %bb.d, label %.thread

bb.c:                                             ; preds = %bb.a
  %.not12 = icmp eq i32 %.pre, 48
  br i1 %.not12, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.b, i32 noundef %.pre, i32 noundef 48, i32 noundef 48) #5
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store <2 x i32> splat (i32 48), ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 9, ptr %i.c, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %.0 = phi i32 [ -22, %.thread ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @xface_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.BigInt, align 4             ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(552) %4, i8 0, i64 552, i1 false)
  %i.c = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #5 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.i = phi i32 [ %i.f, %.lr.ph ], [ %i.r, %bb.g ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.05069 = phi i32 [ 0, %.lr.ph ], [ %.151, %bb.g ] ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1, !tbaa !36    ; 3 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add i8 %i.l, -127
  %or.cond = icmp ult i8 %i.m, -94
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp sgt i32 %.05069, 665
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.3, i32 noundef %i.o) #5
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.p = add nsw i32 %.05069, 1
  call void @ff_big_mul(ptr noundef nonnull %4, i8 noundef zeroext 94) #5
  %i.q = add nsw i8 %i.l, -33
  call void @ff_big_add(ptr noundef nonnull %4, i8 noundef zeroext %i.q) #5
  %.pre = load i32, ptr %i.e, align 8, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %i.r = phi i32 [ %i.i, %bb.c ], [ %.pre, %bb.f ] ; 2 uses
  %.151 = phi i32 [ %.05069, %bb.c ], [ %i.p, %bb.f ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.b, label %.critedge, !llvm.loop !37

.critedge:                                        ; preds = %bb.b, %bb.g, %.preheader, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2304) %i.b, i8 0, i64 2304, i1 false)
  call fastcc void @decode_block(ptr noundef %4, ptr noundef nonnull %i.b, i32 noundef 16, i32 noundef 16, i32 noundef 0)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call fastcc void @decode_block(ptr noundef %4, ptr noundef nonnull %i.u, i32 noundef 16, i32 noundef 16, i32 noundef 0)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call fastcc void @decode_block(ptr noundef %4, ptr noundef nonnull %i.v, i32 noundef 16, i32 noundef 16, i32 noundef 0)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  call fastcc void @decode_block(ptr noundef %4, ptr noundef nonnull %i.w, i32 noundef 16, i32 noundef 16, i32 noundef 0)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  call fastcc void @decode_block(ptr noundef %4, ptr noundef nonnull %i.x, i32 noundef 16, i32 noundef 16, i32 noundef 0)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 800
  call fastcc void @decode_block(ptr noundef %4, ptr noundef nonnull %i.y, i32 noundef 16, i32 noundef 16, i32 noundef 0)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1536
  call fastcc void @decode_block(ptr noundef %4, ptr noundef nonnull %i.z, i32 noundef 16, i32 noundef 16, i32 noundef 0)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1552
  call fastcc void @decode_block(ptr noundef %4, ptr noundef nonnull %i.aa, i32 noundef 16, i32 noundef 16, i32 noundef 0)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  call fastcc void @decode_block(ptr noundef %4, ptr noundef nonnull %i.ab, i32 noundef 16, i32 noundef 16, i32 noundef 0)
  call void @ff_xface_generate_face(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #5
  %i.ac = load ptr, ptr %1, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.k
  %indvars.iv78 = phi i64 [ 0, %.critedge ], [ %indvars.iv.next79, %bb.k ] ; 2 uses
  %.075 = phi ptr [ %i.ac, %.critedge ], [ %.1, %bb.k ] ; 4 uses
  %.04874 = phi i8 [ 0, %.critedge ], [ %.14965, %bb.k ]
  %.273 = phi i32 [ 0, %.critedge ], [ %.364, %bb.k ] ; 2 uses
  %.05272 = phi i32 [ 0, %.critedge ], [ %.254, %bb.k ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv78
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !36
  %i.ag = add i8 %i.af, %.04874                   ; 2 uses
  %i.ah = icmp eq i32 %.273, 7
  br i1 %i.ah, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  %i.ai = add nsw i32 %.273, 1
  %i.aj = shl i8 %i.ag, 1
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ak = add nsw i32 %.05272, 1                  ; 2 uses
  %i.al = sext i32 %.05272 to i64
  %i.am = getelementptr inbounds i8, ptr %.075, i64 %i.al
  store i8 %i.ag, ptr %i.am, align 1, !tbaa !36
  %i.an = icmp eq i32 %i.ak, 6
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load i32, ptr %i.ad, align 8, !tbaa !30
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %.075, i64 %i.ap
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.i, %bb.j
  %.14965 = phi i8 [ 0, %bb.j ], [ 0, %bb.i ], [ %i.aj, %.thread ]
  %.364 = phi i32 [ 0, %bb.j ], [ 0, %bb.i ], [ %i.ai, %.thread ]
  %.254 = phi i32 [ 0, %bb.j ], [ %i.ak, %bb.i ], [ %.05272, %.thread ]
  %.1 = phi ptr [ %i.aq, %bb.j ], [ %.075, %bb.i ], [ %.075, %.thread ]
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, 2304
  br i1 %exitcond.not, label %bb.l, label %bb.h, !llvm.loop !40

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %2, align 4, !tbaa !30
  %i.ar = load i32, ptr %i.e, align 8, !tbaa !33
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  %.057 = phi i32 [ %i.ar, %bb.l ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret i32 %.057
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_big_mul(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ff_big_add(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @decode_block(ptr noundef nonnull %0, ptr noundef %1, i32 noundef range(i32 0, 17) %2, i32 noundef range(i32 0, 17) %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = sext i32 %4 to i64
  %i.c = getelementptr inbounds [6 x i8], ptr @ff_xface_probranges_per_level, i64 %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @ff_big_div(ptr noundef nonnull %0, i8 noundef zeroext 0, ptr noundef nonnull %i.a) #5
  %i.d = load i8, ptr %i.a, align 1, !tbaa !36    ; 2 uses
  %i.e = zext i8 %i.d to i32
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %bb.a
  %.010.i = phi ptr [ %i.c, %bb.a ], [ %i.m, %.critedge.i ] ; 3 uses
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.n, %.critedge.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.010.i, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !41    ; 3 uses
  %i.h = icmp ult i8 %i.d, %i.g
  br i1 %i.h, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = zext i8 %i.g to i32
  %i.j = load i8, ptr %.010.i, align 1, !tbaa !43 ; 2 uses
  %i.k = zext i8 %i.j to i32
  %i.l = add nuw nsw i32 %i.k, %i.i
  %.not.i = icmp samesign ugt i32 %i.l, %i.e
  br i1 %.not.i, label %pop_integer.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 2
  %i.n = add nuw nsw i32 %.0.i, 1
  br label %bb.b, !llvm.loop !44

pop_integer.exit:                                 ; preds = %bb.c
  call void @ff_big_mul(ptr noundef nonnull %0, i8 noundef zeroext %i.j) #5
  %i.o = load i8, ptr %i.a, align 1, !tbaa !36
  %i.p = sub i8 %i.o, %i.g
  call void @ff_big_add(ptr noundef nonnull %0, i8 noundef zeroext %i.p) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  switch i32 %.0.i, label %bb.e [
    i32 2, label %bb.f
    i32 0, label %bb.d
  ]

bb.d:                                             ; preds = %pop_integer.exit
  call fastcc void @pop_greys(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.f

bb.e:                                             ; preds = %pop_integer.exit
  %i.q = lshr i32 %2, 1                           ; 5 uses
  %i.r = lshr i32 %3, 1                           ; 5 uses
  %i.s = add nsw i32 %4, 1                        ; 4 uses
  call fastcc void @decode_block(ptr noundef %0, ptr noundef %1, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.s)
  %i.t = zext nneg i32 %i.q to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t ; 2 uses
  call fastcc void @decode_block(ptr noundef %0, ptr noundef %i.u, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.s)
  %i.v = mul nuw nsw i32 %i.r, 48
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  call fastcc void @decode_block(ptr noundef %0, ptr noundef %i.x, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.s)
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  call fastcc void @decode_block(ptr noundef %0, ptr noundef %i.y, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.s)
  br label %bb.f

bb.f:                                             ; preds = %pop_integer.exit, %bb.e, %bb.d
  ret void
}

declare void @ff_xface_generate_face(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @pop_greys(ptr noundef nonnull %0, ptr noundef %1, i32 noundef range(i32 0, 17) %2, i32 noundef range(i32 0, 17) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = icmp samesign ugt i32 %2, 3
  br i1 %i.b, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %.tr3640 = phi i32 [ %i.d, %tailrecurse ], [ %3, %bb.a ]
  %.tr3539 = phi i32 [ %i.c, %tailrecurse ], [ %2, %bb.a ] ; 2 uses
  %.tr3438 = phi ptr [ %i.j, %tailrecurse ], [ %1, %bb.a ] ; 3 uses
  %i.c = lshr i32 %.tr3539, 1                     ; 5 uses
  %i.d = lshr i32 %.tr3640, 1                     ; 5 uses
  tail call fastcc void @pop_greys(ptr noundef %0, ptr noundef %.tr3438, i32 noundef %i.c, i32 noundef %i.d)
  %i.e = zext nneg i32 %i.c to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.tr3438, i64 %i.e
  tail call fastcc void @pop_greys(ptr noundef %0, ptr noundef %i.f, i32 noundef %i.c, i32 noundef %i.d)
  %i.g = mul nuw nsw i32 %i.d, 48
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.tr3438, i64 %i.h ; 2 uses
  tail call fastcc void @pop_greys(ptr noundef %0, ptr noundef %i.i, i32 noundef %i.c, i32 noundef %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e ; 2 uses
  %i.k = icmp samesign ugt i32 %.tr3539, 7
  br i1 %i.k, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr34.lcssa = phi ptr [ %1, %bb.a ], [ %i.j, %tailrecurse ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @ff_big_div(ptr noundef nonnull %0, i8 noundef zeroext 0, ptr noundef nonnull %i.a) #5
  %i.l = load i8, ptr %i.a, align 1, !tbaa !36    ; 2 uses
  %i.m = zext i8 %i.l to i32
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %tailrecurse._crit_edge
  %.010.i = phi ptr [ @ff_xface_probranges_2x2, %tailrecurse._crit_edge ], [ %i.u, %.critedge.i ] ; 3 uses
  %.0.i = phi i32 [ 0, %tailrecurse._crit_edge ], [ %i.v, %.critedge.i ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.010.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !41    ; 3 uses
  %i.p = icmp ult i8 %i.l, %i.o
  br i1 %i.p, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = zext i8 %i.o to i32
  %i.r = load i8, ptr %.010.i, align 1, !tbaa !43 ; 2 uses
  %i.s = zext i8 %i.r to i32
  %i.t = add nuw nsw i32 %i.s, %i.q
  %.not.i = icmp samesign ugt i32 %i.t, %i.m
  br i1 %.not.i, label %pop_integer.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.010.i, i64 2
  %i.v = add nuw nsw i32 %.0.i, 1
  br label %bb.b, !llvm.loop !44

pop_integer.exit:                                 ; preds = %bb.c
  call void @ff_big_mul(ptr noundef nonnull %0, i8 noundef zeroext %i.r) #5
  %i.w = load i8, ptr %i.a, align 1, !tbaa !36
  %i.x = sub i8 %i.w, %i.o
  call void @ff_big_add(ptr noundef nonnull %0, i8 noundef zeroext %i.x) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.y = and i32 %.0.i, 1
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %pop_integer.exit
  store i8 1, ptr %.tr34.lcssa, align 1, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %pop_integer.exit
  %i.z = and i32 %.0.i, 2
  %.not31 = icmp eq i32 %i.z, 0
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr34.lcssa, i64 1
  store i8 1, ptr %i.aa, align 1, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = and i32 %.0.i, 4
  %.not32 = icmp eq i32 %i.ab, 0
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr34.lcssa, i64 48
  store i8 1, ptr %i.ac, align 1, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = and i32 %.0.i, 8
  %.not33 = icmp eq i32 %i.ad, 0
  br i1 %.not33, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr34.lcssa, i64 49
  store i8 1, ptr %i.ae, align 1, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

declare void @ff_big_div(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 112}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 116}
!30 = !{!6, !6, i64 0}
!31 = !{!10, !6, i64 136}
!32 = !{!10, !12, i64 32}
!33 = !{!34, !6, i64 32}
!34 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!35 = !{!34, !16, i64 24}
!36 = !{!7, !7, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!16, !16, i64 0}
!40 = distinct !{!40, !38}
!41 = !{!42, !7, i64 1}
!42 = !{!"", !7, i64 0, !7, i64 1}
!43 = !{!42, !7, i64 0}
!44 = distinct !{!44, !38}
end_hunk_0
