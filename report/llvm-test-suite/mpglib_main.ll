Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mpglib_main?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0

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
  %i.n = load i32, ptr %i.m, align 4
  %narrow = select i1 %i.l, i32 %i.n, i32 0       ; 2 uses
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
  %i.am = icmp ne i32 %narrow, 0
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
  %min.iters.check80 = icmp ugt i32 %i.o, 3
  %ident.check77.not = icmp eq i32 %i.l, 1
  %or.cond108.not110 = select i1 %min.iters.check80, i1 %ident.check77.not, i1 false
  %invariant.op = sub i64 ptrtoaddr (ptr @out to i64), %i.a
  %min.iters.check82 = icmp ult i32 %i.o, 16
  %i.s = and i64 %wide.trip.count, 12
  %n.vec84 = and i64 %wide.trip.count, 4294967280 ; 4 uses
  %cmp.n91 = icmp eq i64 %n.vec84, %wide.trip.count
  %min.epilog.iters.check95 = icmp eq i64 %i.s, 0
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
  br i1 %i.v, label %iter.check, label %iter.check94

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

iter.check94:                                     ; preds = %.preheader
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %indvars.iv50 ; 7 uses
  br i1 %or.cond108.not110, label %iter.check92, label %.lr.ph.split.preheader

iter.check92:                                     ; preds = %iter.check94
  %i.ak = shl nuw i64 %indvars.iv50, 1
  %.reass = add i64 %i.ak, %invariant.op
  %diff.check79 = icmp ugt i64 %.reass, -32
  br i1 %diff.check79, label %.lr.ph.split.preheader, label %vector.main.loop.iter.check81

vector.main.loop.iter.check81:                    ; preds = %iter.check92
  br i1 %min.iters.check82, label %vec.epilog.ph96, label %vector.body85

vector.body85:                                    ; preds = %vector.main.loop.iter.check81, %vector.body85
  %index86 = phi i64 [ %index.next89, %vector.body85 ], [ 0, %vector.main.loop.iter.check81 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index86 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load87 = load <8 x i16>, ptr %i.al, align 2, !tbaa !19
  %wide.load88 = load <8 x i16>, ptr %i.am, align 2, !tbaa !19
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index86 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <8 x i16> %wide.load87, ptr %i.an, align 2, !tbaa !19
  store <8 x i16> %wide.load88, ptr %i.ao, align 2, !tbaa !19
  %index.next89 = add nuw i64 %index86, 16        ; 2 uses
  %i.ap = icmp eq i64 %index.next89, %n.vec84
  br i1 %i.ap, label %middle.block90, label %vector.body85, !llvm.loop !34

middle.block90:                                   ; preds = %vector.body85
  br i1 %cmp.n91, label %._crit_edge, label %vec.epilog.iter.check93

vec.epilog.iter.check93:                          ; preds = %middle.block90
  br i1 %min.epilog.iters.check95, label %.lr.ph.split.preheader, label %vec.epilog.ph96, !prof !22

vec.epilog.ph96:                                  ; preds = %vector.main.loop.iter.check81, %vec.epilog.iter.check93
  %vec.epilog.resume.val97 = phi i64 [ %n.vec84, %vec.epilog.iter.check93 ], [ 0, %vector.main.loop.iter.check81 ]
  br label %vec.epilog.vector.body99

vec.epilog.vector.body99:                         ; preds = %vec.epilog.vector.body99, %vec.epilog.ph96
  %index100 = phi i64 [ %vec.epilog.resume.val97, %vec.epilog.ph96 ], [ %index.next102, %vec.epilog.vector.body99 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index100
  %wide.load101 = load <4 x i16>, ptr %i.aq, align 2, !tbaa !19
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index100
  store <4 x i16> %wide.load101, ptr %i.ar, align 2, !tbaa !19
  %index.next102 = add nuw i64 %index100, 4       ; 2 uses
  %i.as = icmp eq i64 %index.next102, %n.vec98
  br i1 %i.as, label %vec.epilog.middle.block103, label %vec.epilog.vector.body99, !llvm.loop !35

vec.epilog.middle.block103:                       ; preds = %vec.epilog.vector.body99
  br i1 %cmp.n104, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %iter.check94, %iter.check92, %vec.epilog.iter.check93, %vec.epilog.middle.block103
  %indvars.iv.ph = phi i64 [ 0, %iter.check94 ], [ 0, %iter.check92 ], [ %n.vec84, %vec.epilog.iter.check93 ], [ %n.vec98, %vec.epilog.middle.block103 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.split.prol ], [ %indvars.iv.ph, %.lr.ph.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.at = mul nuw nsw i64 %indvars.iv.prol, %i.r
  %gep.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.at
  %i.au = load i16, ptr %gep.prol, align 2, !tbaa !19
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.prol
  store i16 %i.au, ptr %i.av, align 2, !tbaa !19
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !36

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.preheader ], [ %indvars.iv.next.prol, %.lr.ph.split.prol ]
  %i.aw = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv45 = phi i64 [ %indvars.iv.next46.3, %.lr.ph.split.us ], [ %indvars.iv45.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.ay = mul nuw nsw i64 %indvars.iv45, %i.r
  %i.az = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !19
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv45
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !19
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.bc = mul nuw nsw i64 %indvars.iv.next46, %i.r
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !19
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next46
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !19
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %i.bg = mul nuw nsw i64 %indvars.iv.next46.1, %i.r
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !19
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next46.1
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !19
  %indvars.iv.next46.2 = add nuw nsw i64 %indvars.iv45, 3 ; 2 uses
  %i.bk = mul nuw nsw i64 %indvars.iv.next46.2, %i.r
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !19
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next46.2
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !19
  %indvars.iv.next46.3 = add nuw nsw i64 %indvars.iv45, 4 ; 2 uses
  %exitcond49.not.3 = icmp eq i64 %indvars.iv.next46.3, %wide.trip.count48
  br i1 %exitcond49.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !37

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.split ], [ %indvars.iv.unr, %.lr.ph.split.prol.loopexit ] ; 6 uses
  %i.bo = mul nuw nsw i64 %indvars.iv, %i.r
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.bo
  %i.bp = load i16, ptr %gep, align 2, !tbaa !19
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = mul nuw nsw i64 %indvars.iv.next, %i.r
  %gep.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.br
  %i.bs = load i16, ptr %gep.1, align 2, !tbaa !19
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bu = mul nuw nsw i64 %indvars.iv.next.1, %i.r
  %gep.2 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.bu
  %i.bv = load i16, ptr %gep.2, align 2, !tbaa !19
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next.1
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !19
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bx = mul nuw nsw i64 %indvars.iv.next.2, %i.r
  %gep.3 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.bx
  %i.by = load i16, ptr %gep.3, align 2, !tbaa !19
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next.2
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !19
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.split, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block90, %vec.epilog.middle.block103, %middle.block, %vec.epilog.middle.block
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %i.r
  br i1 %exitcond54.not, label %.loopexit, label %.preheader, !llvm.loop !39

.loopexit:                                        ; preds = %._crit_edge, %bb.e, %bb.b
  %.031 = phi i32 [ 0, %bb.b ], [ %i.o, %bb.e ], [ %i.o, %._crit_edge ]
  %i.ca = icmp eq i32 %i.g, -1
  %..031 = select i1 %i.ca, i32 -1, i32 %.031
  br label %.loopexit35

.loopexit35:                                      ; preds = %.critedge, %.loopexit, %bb.a
  %.032 = phi i32 [ %..031, %.loopexit ], [ 0, %bb.a ], [ -1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret i32 %.032
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1153) i32 @lame_decode(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = call i32 @decodeMP3(ptr noundef nonnull @mp, ptr noundef %0, i32 noundef %1, ptr noundef nonnull @out, i32 noundef 8192, ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.c, align 4, !tbaa !7
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @mp, i64 28), align 4, !tbaa !17 ; 5 uses
  %i.h = shl nsw i32 %i.g, 1
  %i.i = sdiv i32 %i.f, %i.h                      ; 10 uses
  %i.j = icmp sgt i32 %i.i, 1152
  br i1 %i.j, label %bb.c, label %.preheader24

.preheader24:                                     ; preds = %bb.b
  %i.k = icmp sgt i32 %i.g, 0
  %i.l = icmp sgt i32 %i.i, 0
  %or.cond = and i1 %i.k, %i.l
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader24
  %i.m = zext nneg i32 %i.g to i64                ; 11 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 15 uses
  %wide.trip.count33 = zext nneg i32 %i.i to i64
  %min.iters.check54 = icmp ugt i32 %i.i, 3
  %ident.check51.not = icmp eq i32 %i.g, 1
  %or.cond84 = and i1 %min.iters.check54, %ident.check51.not
  %invariant.op = sub i64 ptrtoaddr (ptr @out to i64), %i.a
  %min.iters.check56 = icmp ult i32 %i.i, 16
  %i.n = and i64 %wide.trip.count, 12
  %n.vec58 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n65 = icmp eq i64 %n.vec58, %wide.trip.count
  %min.epilog.iters.check69 = icmp eq i64 %i.n, 0
  %n.vec72 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n78 = icmp eq i64 %n.vec72, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.i, 4
  %ident.check.not = icmp ne i32 %i.g, 1
  %or.cond80.not85 = or i1 %min.iters.check, %ident.check.not
  %i.o = add i64 %i.b, xor (i64 ptrtoaddr (ptr @out to i64), i64 -1)
  %diff.check = icmp ult i64 %i.o, 31
  %or.cond81 = or i1 %or.cond80.not85, %diff.check
  %min.iters.check43 = icmp ult i32 %i.i, 16
  %i.p = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  %n.vec45 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n49 = icmp eq i64 %n.vec45, %wide.trip.count
  %xtraiter87 = and i64 %wide.trip.count, 3       ; 2 uses
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite = call i64 @fwrite(ptr nonnull @.str.2, i64 65, i64 1, ptr %i.q) #9 ; 0 uses
  call void @exit(i32 noundef -50) #10
  unreachable

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv35 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next36, %._crit_edge ] ; 4 uses
  %i.r = icmp eq i64 %indvars.iv35, 0
  br i1 %i.r, label %iter.check, label %iter.check68

iter.check:                                       ; preds = %.preheader
  br i1 %or.cond81, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <8 x i16>, ptr %i.s, align 16, !tbaa !19
  %wide.load44 = load <8 x i16>, ptr %i.t, align 16, !tbaa !19
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <8 x i16> %wide.load, ptr %i.u, align 2, !tbaa !19
  store <8 x i16> %wide.load44, ptr %i.v, align 2, !tbaa !19
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %index46
  %wide.load47 = load <4 x i16>, ptr %i.x, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index46
  store <4 x i16> %wide.load47, ptr %i.y, align 2, !tbaa !19
  %index.next48 = add nuw i64 %index46, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next48, %n.vec45
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !41

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n49, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv30.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod88.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv30.prol = phi i64 [ %indvars.iv.next31.prol, %.lr.ph.split.us.prol ], [ %indvars.iv30.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter89 = phi i64 [ %prol.iter89.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.aa = mul nuw nsw i64 %indvars.iv30.prol, %i.m
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !19
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv30.prol
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !19
  %indvars.iv.next31.prol = add nuw nsw i64 %indvars.iv30.prol, 1 ; 2 uses
  %prol.iter89.next = add i64 %prol.iter89, 1     ; 2 uses
  %prol.iter89.cmp.not = icmp eq i64 %prol.iter89.next, %xtraiter87
  br i1 %prol.iter89.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !42

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv30.unr = phi i64 [ %indvars.iv30.ph, %.lr.ph.split.us.preheader ], [ %indvars.iv.next31.prol, %.lr.ph.split.us.prol ]
  %i.ae = sub nsw i64 %indvars.iv30.ph, %wide.trip.count
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %._crit_edge, label %.lr.ph.split.us

iter.check68:                                     ; preds = %.preheader
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %indvars.iv35 ; 7 uses
  br i1 %or.cond84, label %iter.check66, label %.lr.ph.split.preheader

iter.check66:                                     ; preds = %iter.check68
  %i.ag = shl nuw i64 %indvars.iv35, 1
  %.reass = add i64 %i.ag, %invariant.op
  %diff.check53 = icmp ugt i64 %.reass, -32
  br i1 %diff.check53, label %.lr.ph.split.preheader, label %vector.main.loop.iter.check55

vector.main.loop.iter.check55:                    ; preds = %iter.check66
  br i1 %min.iters.check56, label %vec.epilog.ph70, label %vector.body59

vector.body59:                                    ; preds = %vector.main.loop.iter.check55, %vector.body59
  %index60 = phi i64 [ %index.next63, %vector.body59 ], [ 0, %vector.main.loop.iter.check55 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index60 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load61 = load <8 x i16>, ptr %i.ah, align 2, !tbaa !19
  %wide.load62 = load <8 x i16>, ptr %i.ai, align 2, !tbaa !19
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index60 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <8 x i16> %wide.load61, ptr %i.aj, align 2, !tbaa !19
  store <8 x i16> %wide.load62, ptr %i.ak, align 2, !tbaa !19
  %index.next63 = add nuw i64 %index60, 16        ; 2 uses
  %i.al = icmp eq i64 %index.next63, %n.vec58
  br i1 %i.al, label %middle.block64, label %vector.body59, !llvm.loop !43

middle.block64:                                   ; preds = %vector.body59
  br i1 %cmp.n65, label %._crit_edge, label %vec.epilog.iter.check67

vec.epilog.iter.check67:                          ; preds = %middle.block64
  br i1 %min.epilog.iters.check69, label %.lr.ph.split.preheader, label %vec.epilog.ph70, !prof !22

vec.epilog.ph70:                                  ; preds = %vector.main.loop.iter.check55, %vec.epilog.iter.check67
  %vec.epilog.resume.val71 = phi i64 [ %n.vec58, %vec.epilog.iter.check67 ], [ 0, %vector.main.loop.iter.check55 ]
  br label %vec.epilog.vector.body73

vec.epilog.vector.body73:                         ; preds = %vec.epilog.vector.body73, %vec.epilog.ph70
  %index74 = phi i64 [ %vec.epilog.resume.val71, %vec.epilog.ph70 ], [ %index.next76, %vec.epilog.vector.body73 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index74
  %wide.load75 = load <4 x i16>, ptr %i.am, align 2, !tbaa !19
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index74
  store <4 x i16> %wide.load75, ptr %i.an, align 2, !tbaa !19
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next76, %n.vec72
  br i1 %i.ao, label %vec.epilog.middle.block77, label %vec.epilog.vector.body73, !llvm.loop !44

vec.epilog.middle.block77:                        ; preds = %vec.epilog.vector.body73
  br i1 %cmp.n78, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %iter.check68, %iter.check66, %vec.epilog.iter.check67, %vec.epilog.middle.block77
  %indvars.iv.ph = phi i64 [ 0, %iter.check68 ], [ 0, %iter.check66 ], [ %n.vec58, %vec.epilog.iter.check67 ], [ %n.vec72, %vec.epilog.middle.block77 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.split.prol ], [ %indvars.iv.ph, %.lr.ph.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.ap = mul nuw nsw i64 %indvars.iv.prol, %i.m
  %gep.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.ap
  %i.aq = load i16, ptr %gep.prol, align 2, !tbaa !19
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.prol
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !19
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !45

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.preheader ], [ %indvars.iv.next.prol, %.lr.ph.split.prol ]
  %i.as = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv30 = phi i64 [ %indvars.iv.next31.3, %.lr.ph.split.us ], [ %indvars.iv30.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.au = mul nuw nsw i64 %indvars.iv30, %i.m
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !19
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv30
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !19
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.ay = mul nuw nsw i64 %indvars.iv.next31, %i.m
  %i.az = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !19
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next31
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !19
  %indvars.iv.next31.1 = add nuw nsw i64 %indvars.iv30, 2 ; 2 uses
  %i.bc = mul nuw nsw i64 %indvars.iv.next31.1, %i.m
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !19
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next31.1
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !19
  %indvars.iv.next31.2 = add nuw nsw i64 %indvars.iv30, 3 ; 2 uses
  %i.bg = mul nuw nsw i64 %indvars.iv.next31.2, %i.m
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr @out, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !19
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next31.2
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !19
  %indvars.iv.next31.3 = add nuw nsw i64 %indvars.iv30, 4 ; 2 uses
  %exitcond34.not.3 = icmp eq i64 %indvars.iv.next31.3, %wide.trip.count33
  br i1 %exitcond34.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !46

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.split ], [ %indvars.iv.unr, %.lr.ph.split.prol.loopexit ] ; 6 uses
  %i.bk = mul nuw nsw i64 %indvars.iv, %i.m
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.bk
  %i.bl = load i16, ptr %gep, align 2, !tbaa !19
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = mul nuw nsw i64 %indvars.iv.next, %i.m
  %gep.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.bn
  %i.bo = load i16, ptr %gep.1, align 2, !tbaa !19
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next
  store i16 %i.bo, ptr %i.bp, align 2, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bq = mul nuw nsw i64 %indvars.iv.next.1, %i.m
  %gep.2 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.bq
  %i.br = load i16, ptr %gep.2, align 2, !tbaa !19
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next.1
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !19
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bt = mul nuw nsw i64 %indvars.iv.next.2, %i.m
  %gep.3 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.bt
  %i.bu = load i16, ptr %gep.3, align 2, !tbaa !19
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next.2
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !19
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.split, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block64, %vec.epilog.middle.block77, %middle.block, %vec.epilog.middle.block
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %i.m
  br i1 %exitcond39.not, label %.loopexit, label %.preheader, !llvm.loop !48

.loopexit:                                        ; preds = %._crit_edge, %.preheader24, %bb.a
  %.021 = phi i32 [ 0, %bb.a ], [ %i.i, %.preheader24 ], [ %i.i, %._crit_edge ]
  %i.bw = icmp eq i32 %i.d, -1
  %..021 = select i1 %i.bw, i32 -1, i32 %.021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret i32 %..021
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 _ZTS3buf", !10, i64 0}
!14 = !{!"frame", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68}
!15 = !{!"long", !5, i64 0}
!16 = !{!"mpstr", !13, i64 0, !13, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !14, i64 28, !5, i64 100, !5, i64 4712, !5, i64 23144, !15, i64 23152, !6, i64 23160, !5, i64 23168, !6, i64 31872}
!17 = !{!16, !6, i64 28}
!18 = !{!"short", !5, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 4, i32 12}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !9}
!25 = !{!16, !6, i64 64}
!26 = !{!15, !15, i64 0}
!27 = !{!16, !6, i64 40}
!28 = !{!16, !6, i64 52}
!29 = !{!16, !6, i64 60}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9, !20, !21}
!32 = distinct !{!32, !9, !20, !21}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !9, !20, !21}
!35 = distinct !{!35, !9, !20, !21}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !9, !20}
!38 = distinct !{!38, !9, !20}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9, !20, !21}
!41 = distinct !{!41, !9, !20, !21}
!42 = distinct !{!42, !23}
!43 = distinct !{!43, !9, !20, !21}
!44 = distinct !{!44, !9, !20, !21}
!45 = distinct !{!45, !23}
!46 = distinct !{!46, !9, !20}
!47 = distinct !{!47, !9, !20}
!48 = distinct !{!48, !9}
end_hunk_0
