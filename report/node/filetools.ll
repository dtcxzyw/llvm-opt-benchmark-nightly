inline.NumInlined: 13
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%"class.icu_78::CharString" = type { %"class.icu_78::MaybeStackArray", i32, [4 x i8] }
%"class.icu_78::MaybeStackArray" = type <{ ptr, i32, i8, [40 x i8], [3 x i8] }>

@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"%s:%d: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"../../deps/icu-small/source/tools/toolutil/filetools.cpp\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Unable to open directory: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Unable to get stats from file: %s or %s\0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local signext range(i8 0, 2) i8 @isFileModTimeLater(ptr noundef %0, ptr noundef %1, i8 noundef signext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 4 uses
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %5 = alloca %struct.stat, align 8               ; 5 uses
  %6 = alloca %struct.stat, align 8               ; 5 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %7 = alloca %"class.icu_78::CharString", align 8 ; 18 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %.loopexit.a, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %2, 1
  br i1 %i.d, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias ptr @opendir(ptr noundef nonnull %1) ; 4 uses
  %.not53 = icmp eq ptr %i.e, null
  br i1 %.not53, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.f = tail call ptr @readdir64(ptr noundef nonnull %i.e) #7 ; 2 uses
  %.not5480 = icmp eq ptr %i.f, null
  br i1 %.not5480, label %.thread, label %sub_0.lr.ph

sub_0.lr.ph:                                      ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 88
  br label %sub_0

sub_0:                                            ; preds = %sub_0.lr.ph, %bb.l
  %i.m = phi ptr [ %i.f, %sub_0.lr.ph ], [ %i.au, %bb.l ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 19 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1
  %.not83 = icmp eq i8 %i.o, 46
  br i1 %.not83, label %.tail, label %.tail76.thread

.tail:                                            ; preds = %sub_0
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.l, label %sub_178

sub_178:                                          ; preds = %.tail
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.t = load i8, ptr %i.s, align 1
  %.not85 = icmp eq i8 %i.t, 46
  br i1 %.not85, label %.tail76, label %.tail76.thread

.tail76:                                          ; preds = %sub_178
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 21
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.l, label %.tail76.thread

.tail76.thread:                                   ; preds = %sub_0, %sub_178, %.tail76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store ptr %i.g, ptr %7, align 8
  store i32 40, ptr %i.h, align 8
  store i8 0, ptr %i.i, align 4
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.g, align 1
  %i.x = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef nonnull %1, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #7 ; 0 uses
  %i.y = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef nonnull @.str.2, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #7 ; 0 uses
  %i.z = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef nonnull %i.n, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #7 ; 0 uses
  %i.aa = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %bb.d, label %bb.j

bb.d:                                             ; preds = %.tail76.thread
  %i.ac = load ptr, ptr %7, align 8
  %i.ad = call noalias ptr @opendir(ptr noundef %i.ac) ; 2 uses
  %.not58 = icmp eq ptr %i.ad, null
  br i1 %.not58, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = call i32 @closedir(ptr noundef nonnull %i.ad) ; 0 uses
  %i.af = load ptr, ptr %7, align 8
  %i.ag = call signext i8 @isFileModTimeLater(ptr noundef %0, ptr noundef %i.af, i8 noundef signext 1)
  %.not61.not = icmp eq i8 %i.ag, 0
  br i1 %.not61.not, label %.loopexit, label %spec.select74.si.unfold.false.jt0

bb.f:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %7, align 8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.ai = call i32 @stat64(ptr noundef nonnull %0, ptr noundef nonnull %5) #7
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ak = call i32 @stat64(ptr noundef %i.ah, ptr noundef nonnull %6) #7
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = load i64, ptr %i.k, align 8
  %i.an = load i64, ptr %i.l, align 8
  %i.ao = call double @difftime(i64 noundef %i.am, i64 noundef %i.an) #8
  %i.ap = fcmp olt double %i.ao, 0.000000e+00
  br i1 %i.ap, label %_ZL23whichFileModTimeIsLaterPKcS0_.exit.thread, label %_ZL23whichFileModTimeIsLaterPKcS0_.exit

_ZL23whichFileModTimeIsLaterPKcS0_.exit:          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %spec.select74.si.unfold.false.jt0

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.aq = load ptr, ptr @stderr, align 8
  %i.ar = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.6, ptr noundef nonnull %0, ptr noundef %i.ah) #9 ; 0 uses
  br label %_ZL23whichFileModTimeIsLaterPKcS0_.exit.thread

_ZL23whichFileModTimeIsLaterPKcS0_.exit.thread:   ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %.loopexit

spec.select74.si.unfold.false.jt0:                ; preds = %bb.e, %_ZL23whichFileModTimeIsLaterPKcS0_.exit
  %8 = load i8, ptr %i.i, align 4
  %.not.i.i.i.jt0 = icmp eq i8 %8, 0
  br i1 %.not.i.i.i.jt0, label %_ZN6icu_7810CharStringD2Ev.exit.jt0, label %13

.loopexit:                                        ; preds = %bb.e, %_ZL23whichFileModTimeIsLaterPKcS0_.exit.thread
  %9 = load i8, ptr %i.i, align 4
  %.not.i.i.i.jt3 = icmp eq i8 %9, 0
  br i1 %.not.i.i.i.jt3, label %_ZN6icu_7810CharStringD2Ev.exit.jt3, label %15

bb.j:                                             ; preds = %.tail76.thread
  %10 = load ptr, ptr @stderr, align 8
  %11 = call ptr @u_errorName_78(i32 noundef %i.aa) #7
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 66, ptr noundef %11) #9 ; 0 uses
  %i.as = load i8, ptr %i.i, align 4
  %.not.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.k

13:                                               ; preds = %spec.select74.si.unfold.false.jt0
  %14 = load ptr, ptr %7, align 8
  call void @uprv_free_78(ptr noundef %14) #7
  br label %_ZN6icu_7810CharStringD2Ev.exit.jt0

15:                                               ; preds = %.loopexit
  %16 = load ptr, ptr %7, align 8
  call void @uprv_free_78(ptr noundef %16) #7
  br label %_ZN6icu_7810CharStringD2Ev.exit.jt3

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %7, align 8
  call void @uprv_free_78(ptr noundef %i.at) #7
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit.jt0:              ; preds = %13, %spec.select74.si.unfold.false.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.l

_ZN6icu_7810CharStringD2Ev.exit.jt3:              ; preds = %15, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit.a

bb.l:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit.jt0, %.tail76, %.tail
  %i.au = call ptr @readdir64(ptr noundef nonnull %i.e) #7 ; 2 uses
  %.not54 = icmp eq ptr %i.au, null
  br i1 %.not54, label %.thread, label %sub_0, !llvm.loop !5

.thread:                                          ; preds = %bb.l, %_ZN6icu_7810CharStringD2Ev.exit.jt3, %.preheader
  %.540 = phi i8 [ 1, %.preheader ], [ 0, %_ZN6icu_7810CharStringD2Ev.exit.jt3 ], [ 1, %bb.l ]
  %i.av = call i32 @closedir(ptr noundef nonnull %i.e) ; 0 uses
  br label %.loopexit.a

.critedge:                                        ; preds = %bb.c
  %i.aw = load ptr, ptr @stderr, align 8
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.5, ptr noundef nonnull %1) #9 ; 0 uses
  br label %.loopexit.a

bb.m:                                             ; preds = %bb.b
  %i.ay = tail call signext i8 @T_FileStream_file_exists(ptr noundef nonnull %1) #7
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %.loopexit.a, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.az = call i32 @stat64(ptr noundef nonnull %0, ptr noundef nonnull %3) #7
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bb = call i32 @stat64(ptr noundef nonnull %1, ptr noundef nonnull %4) #7
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = tail call double @difftime(i64 noundef %i.be, i64 noundef %i.bg) #8
  %i.bi = fcmp olt double %i.bh, 0.000000e+00
  br i1 %i.bi, label %_ZL23whichFileModTimeIsLaterPKcS0_.exit64, label %bb.q

bb.q:                                             ; preds = %bb.p
  br label %_ZL23whichFileModTimeIsLaterPKcS0_.exit64

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.bj = load ptr, ptr @stderr, align 8
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.6, ptr noundef nonnull %0, ptr noundef nonnull %1) #9 ; 0 uses
  br label %_ZL23whichFileModTimeIsLaterPKcS0_.exit64

_ZL23whichFileModTimeIsLaterPKcS0_.exit64:        ; preds = %bb.q, %bb.p, %bb.r
  %not.or.cond7 = phi i8 [ 0, %bb.r ], [ 1, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %.loopexit.a

.loopexit.a:                                      ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %.thread, %_ZL23whichFileModTimeIsLaterPKcS0_.exit64, %bb.m, %.critedge, %bb.a
  %.6 = phi i8 [ 0, %bb.m ], [ 0, %.critedge ], [ 0, %bb.a ], [ %not.or.cond7, %_ZL23whichFileModTimeIsLaterPKcS0_.exit64 ], [ %.540, %.thread ], [ 0, %_ZN6icu_7810CharStringD2Ev.exit ]
  ret i8 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #2

declare ptr @readdir64(ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare ptr @u_errorName_78(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare signext i8 @T_FileStream_file_exists(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @swapFileSepChar(ptr nofree noundef captures(none) %0, i8 noundef signext %1, i8 noundef signext %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10 ; 5 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = and i64 %i.a, 2147483647     ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp samesign ult i64 %wide.trip.count, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.a, 24
  %n.vec = and i64 %i.a, 2147483616               ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %1, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert14 = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat15 = shufflevector <16 x i8> %broadcast.splatinsert14, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.d, align 1  ; 2 uses
  %wide.load16 = load <16 x i8>, ptr %i.e, align 1 ; 2 uses
  %i.f = icmp eq <16 x i8> %wide.load, %broadcast.splat
  %i.g = icmp eq <16 x i8> %wide.load16, %broadcast.splat
  %i.h = select <16 x i1> %i.f, <16 x i8> %broadcast.splat15, <16 x i8> %wide.load
  %i.i = select <16 x i1> %i.g, <16 x i8> %broadcast.splat15, <16 x i8> %wide.load16
  store <16 x i8> %i.h, ptr %i.d, align 1
  store <16 x i8> %i.i, ptr %i.e, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !10

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.a, 2147483640             ; 3 uses
  %broadcast.splatinsert19 = insertelement <8 x i8> poison, i8 %1, i64 0
  %broadcast.splat20 = shufflevector <8 x i8> %broadcast.splatinsert19, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert21 = insertelement <8 x i8> poison, i8 %2, i64 0
  %broadcast.splat22 = shufflevector <8 x i8> %broadcast.splatinsert21, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index23 ; 2 uses
  %wide.load24 = load <8 x i8>, ptr %i.k, align 1 ; 2 uses
  %i.l = icmp eq <8 x i8> %wide.load24, %broadcast.splat20
  %i.m = select <8 x i1> %i.l, <8 x i8> %broadcast.splat22, <8 x i8> %wide.load24
  store <8 x i8> %i.m, ptr %i.k, align 1
  %index.next25 = add nuw i64 %index23, 8         ; 2 uses
  %i.n = icmp eq i64 %index.next25, %n.vec18
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %wide.trip.count, %n.vec18
  br i1 %cmp.n26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec18, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %i.q = icmp eq i8 %i.p, %1
  %. = select i1 %i.q, i8 %2, i8 %i.p
  store i8 %., ptr %i.o, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6, !8, !9}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = !{!"branch_weights", i32 8, i32 24}
!11 = distinct !{!11, !6, !8, !9}
!12 = distinct !{!12, !6, !9, !8}
end_hunk_0
