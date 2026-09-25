Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mpglib_main?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mpstr = type { ptr, ptr, i32, i32, i32, %struct.frame, [2 x [2304 x i8]], [2 x [2 x [576 x double]]], [2 x i32], i64, i32, [2 x [2 x [272 x double]]], i32 }
%struct.frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.VBRTAGDATA = type { i32, i32, i32, i32, i32, i32, [100 x i8] }

@mp = dso_local global %struct.mpstr zeroinitializer, align 8
@buf = internal global [16384 x i8] zeroinitializer, align 16
@out = internal global [8192 x i8] zeroinitializer, align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [50 x i8] c"Opps: first frame of mpglib output will be lost \0A\00", align 1
@freqs = external local_unnamed_addr global [9 x i64], align 16
@tabsel_123 = external local_unnamed_addr global [2 x [3 x [16 x i32]]], align 16
@.str.1 = private unnamed_addr constant [66 x i8] c"Opps: mpg123 returned more than one frame!  Cant handle this... \0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Opps: mpg123 returned more than one frame!  shouldn't happen... \0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @is_syncword(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !8
  %i.e = icmp ugt i8 %i.d, -17
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ]
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @lame_decode_initfile(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.VBRTAGDATA, align 4         ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = tail call i32 @InitMP3(ptr noundef nonnull @mp) #8 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) @buf, i8 0, i64 16384, i1 false)
  br label %is_syncword.exit.thread

thread-pre-split:                                 ; preds = %is_syncword.exit.thread
  %.pr = load i8, ptr @buf, align 16, !tbaa !8
  %i.c = icmp ne i8 %.pr, -1
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 1), align 1 ; 2 uses
  %i.e = icmp ult i8 %i.d, -16
  %or.cond23 = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond23, label %is_syncword.exit.thread, label %bb.b

is_syncword.exit.thread:                          ; preds = %bb.a, %thread-pre-split
  %i.f = phi i8 [ 0, %bb.a ], [ %i.d, %thread-pre-split ]
  store i8 %i.f, ptr @buf, align 16, !tbaa !8
  %i.g = tail call i64 @fread(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @buf, i64 1), i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.loopexit, label %thread-pre-split, !llvm.loop !24

bb.b:                                             ; preds = %thread-pre-split
  %i.i = tail call i64 @fread(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @buf, i64 2), i64 noundef 1, i64 noundef 46, ptr noundef %0) ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @GetVbrTag(ptr noundef nonnull %5, ptr noundef nonnull @buf) #8
  %i.l = icmp ne i32 %i.k, 0                      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %narrow = select i1 %i.l, i32 %i.n, i32 0
  %.0 = sext i32 %narrow to i64
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.o = trunc i64 %i.i to i32
  %i.p = add i32 %i.o, 2
  %i.q = call i32 @decodeMP3(ptr noundef nonnull @mp, ptr noundef nonnull @buf, i32 noundef %i.p, ptr noundef nonnull @out, i32 noundef 8192, ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.r = load i32, ptr %i.a, align 4, !tbaa !7
  %i.s = icmp slt i32 %i.r, 1
  %or.cond = or i1 %i.l, %i.s
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite = call i64 @fwrite(ptr nonnull @.str, i64 49, i64 1, ptr %i.t) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @mp, i64 28), align 4, !tbaa !17
  store i32 %i.u, ptr %1, align 4, !tbaa !7
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @mp, i64 64), align 8, !tbaa !25
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr @freqs, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !26
  %i.z = trunc i64 %i.y to i32
  store i32 %i.z, ptr %2, align 4, !tbaa !7
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @mp, i64 40), align 8, !tbaa !27
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [192 x i8], ptr @tabsel_123, i64 %i.ab
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @mp, i64 52), align 4, !tbaa !28
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr [64 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -64
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @mp, i64 60), align 4, !tbaa !29
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  store i32 %i.ak, ptr %3, align 4, !tbaa !7
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @mp, i64 40), align 8, !tbaa !27
  %i.am = icmp ne i32 %i.n, 0
  %or.cond3 = select i1 %i.l, i1 %i.am, i1 false
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = select i1 %i.an, i64 1152, i64 576
  %i.ap = mul nsw i64 %i.ao, %.0
  %storemerge = select i1 %or.cond3, i64 %i.ap, i64 4294967295
  store i64 %storemerge, ptr %4, align 8, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %is_syncword.exit.thread, %bb.b, %bb.e
  %.019 = phi i32 [ 0, %bb.e ], [ -1, %bb.b ], [ -1, %is_syncword.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret i32 %.019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @InitMP3(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @GetVbrTag(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @decodeMP3(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @lame_decode_init() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @InitMP3(ptr noundef nonnull @mp) #8 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) @buf, i8 0, i64 16384, i1 false)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lame_decode_fromfile(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 0, ptr %i.c, align 4, !tbaa !7
  %i.d = tail call i64 @fread(ptr noundef nonnull @buf, i64 noundef 1, i64 noundef 64, ptr noundef %0) ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.loopexit35, label %.preheader65

.preheader65:                                     ; preds = %bb.a, %.critedge
  %.sink63 = phi i64 [ %i.j, %.critedge ], [ %i.d, %bb.a ]
  %i.f = trunc i64 %.sink63 to i32
  %i.g = call i32 @decodeMP3(ptr noundef nonnull @mp, ptr noundef nonnull @buf, i32 noundef %i.f, ptr noundef nonnull @out, i32 noundef 8192, ptr noundef nonnull %i.c) #8 ; 3 uses
  %i.h = icmp eq i32 %i.g, 1
  %i.i = load i32, ptr %i.c, align 4              ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.preheader65
  %i.j = call i64 @fread(ptr noundef nonnull @buf, i64 noundef 1, i64 noundef 100, ptr noundef %0) ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit35, label %.preheader65, !llvm.loop !30

bb.b:                                             ; preds = %.preheader65
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @mp, i64 28), align 4, !tbaa !17 ; 5 uses
  %i.m = icmp eq i32 %i.g, 0
  br i1 %i.m, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.n = shl nsw i32 %i.l, 1
  %i.o = sdiv i32 %i.i, %i.n                      ; 9 uses
  switch i32 %i.o, label %bb.d [
    i32 1152, label %bb.e
    i32 576, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite = call i64 @fwrite(ptr nonnull @.str.1, i64 65, i64 1, ptr %i.p) #9 ; 0 uses
  call void @exit(i32 noundef -50) #10
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.q = icmp sgt i32 %i.l, 0
  br i1 %i.q, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.e
  %i.r = zext nneg i32 %i.l to i64                ; 11 uses
  %wide.trip.count = zext i32 %i.o to i64         ; 15 uses
  %wide.trip.count48 = zext nneg i32 %i.o to i64
  %min.iters.check80 = icmp ult i32 %i.o, 4
  %ident.check77.not = icmp ne i32 %i.l, 1
  %or.cond108.not110 = select i1 %min.iters.check80, i1 true, i1 %ident.check77.not
  %invariant.op = sub i64 ptrtoaddr (ptr @out to i64), %i.a
  %min.iters.check82 = icmp ult i32 %i.o, 16
  %i.s = and i64 %wide.trip.count, 12
  %n.vec84 = and i64 %wide.trip.count, 4294967280 ; 4 uses
  %cmp.n91 = icmp eq i64 %n.vec84, %wide.trip.count
  %min.epilog.iters.check96 = icmp eq i64 %i.s, 0
  %n.vec98 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n104 = icmp eq i64 %n.vec98, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.o, 4
  %ident.check.not = icmp ne i32 %i.l, 1
  %or.cond106.not111 = select i1 %min.iters.check, i1 true, i1 %ident.check.not
  %i.t = add i64 %i.b, xor (i64 ptrtoaddr (ptr @out to i64), i64 -1)
  %diff.check = icmp ult i64 %i.t, 31
  %or.cond107 = or i1 %or.cond106.not111, %diff.check
  %min.iters.check69 = icmp ult i32 %i.o, 16
  %i.u = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 4294967280   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  %n.vec71 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n75 = icmp eq i64 %n.vec71, %wide.trip.count
  %xtraiter116 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv50 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next51, %._crit_edge ] ; 4 uses
  %i.v = icmp eq i64 %indvars.iv50, 0
  br i1 %i.v, label %iter.check, label %iter.check93

iter.check:                                       ; preds = %.preheader
  br i1 %or.cond107, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <8 x i16>, ptr %i.w, align 16, !tbaa !19
  %wide.load70 = load <8 x i16>, ptr %i.x, align 16, !tbaa !19
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <8 x i16> %wide.load, ptr %i.y, align 2, !tbaa !19
  store <8 x i16> %wide.load70, ptr %i.z, align 2, !tbaa !19
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index72 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next74, %vec.epilog.vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %index72
  %wide.load73 = load <4 x i16>, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index72
  store <4 x i16> %wide.load73, ptr %i.ac, align 2, !tbaa !19
  %index.next74 = add nuw i64 %index72, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next74, %n.vec71
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n75, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv45.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec71, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod117.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv45.prol = phi i64 [ %indvars.iv.next46.prol, %.lr.ph.split.us.prol ], [ %indvars.iv45.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter118 = phi i64 [ %prol.iter118.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.ae = mul nuw nsw i64 %indvars.iv45.prol, %i.r
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !19
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv45.prol
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !19
  %indvars.iv.next46.prol = add nuw nsw i64 %indvars.iv45.prol, 1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !33

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv45.unr = phi i64 [ %indvars.iv45.ph, %.lr.ph.split.us.preheader ], [ %indvars.iv.next46.prol, %.lr.ph.split.us.prol ]
  %i.ai = sub nsw i64 %indvars.iv45.ph, %wide.trip.count
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.split.us

iter.check93:                                     ; preds = %.preheader
  %i.ak = shl nuw i64 %indvars.iv50, 1
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %indvars.iv50 ; 7 uses
  %.reass = add i64 %i.ak, %invariant.op
end_hunk_0
