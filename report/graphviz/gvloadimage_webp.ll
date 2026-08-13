inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gvloadimage_engine_s = type { ptr }
%struct.boxf = type { %struct.pointf_s, %struct.pointf_s }
%struct.pointf_s = type { double, double }
%struct.WebPDecoderConfig = type { %struct.WebPBitstreamFeatures, %struct.WebPDecBuffer, %struct.WebPDecoderOptions }
%struct.WebPBitstreamFeatures = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.WebPDecBuffer = type { i32, i32, i32, i32, %union.anon.0, [4 x i32], ptr }
%union.anon.0 = type { %struct.WebPYUVABuffer }
%struct.WebPYUVABuffer = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.WebPDecoderOptions = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32] }

@.str = private unnamed_addr constant [11 x i8] c"webp:cairo\00", align 1
@engine_webp = internal global %struct.gvloadimage_engine_s { ptr @webp_loadimage_cairo }, align 8
@gvloadimage_webp_types = local_unnamed_addr global [2 x { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr }] [{ i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str, i32 1, [4 x i8] zeroinitializer, ptr @engine_webp, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } zeroinitializer], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Error: WebP library version mismatch!\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Error: WebP could not read %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Error: WebP could not read %ld bytes of data from %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Error: WebP decoding of %s failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Status: %d (%s)\0A\00", align 1
@kStatusMessages = internal unnamed_addr constant [8 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], align 16
@.str.6 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"OUT_OF_MEMORY\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"INVALID_PARAM\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"BITSTREAM_ERROR\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"UNSUPPORTED_FEATURE\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"SUSPENDED\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"USER_ABORT\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"NOT_ENOUGH_DATA\00", align 1

; Function Attrs: nounwind uwtable
define internal void @webp_loadimage_cairo(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.boxf) align 8 captures(none) %2, i1 zeroext %3) #0 {
bb.a:
  %4 = alloca %struct.WebPDecoderConfig, align 8  ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.g = icmp eq ptr %i.f, @webp_freeimage
  br i1 %i.g, label %webp_loadimage.exit.thread14, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.f(ptr noundef nonnull %1) #9, !inline_history !37
  store ptr null, ptr %i.e, align 8, !tbaa !36
  store ptr null, ptr %i.c, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.h = tail call zeroext i1 @gvusershape_file_access(ptr noundef nonnull %1) #9
  br i1 %i.h, label %bb.e, label %webp_loadimage.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !38
  %cond.i = icmp eq i32 %i.j, 11
  br i1 %cond.i, label %bb.f, label %webp_loadimage.exit.thread18

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.p = call i32 @WebPInitDecoderConfigInternal(ptr noundef nonnull %4, i32 noundef 521) #9
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !41
  %i.r = call i64 @fwrite(ptr nonnull @.str.1, i64 38, i64 1, ptr %i.q) #10 ; 0 uses
  br label %webp_really_loadimage.exit.thread.i

bb.h:                                             ; preds = %bb.f
  %i.s = call i32 @fseek(ptr noundef %i.n, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.t = call noundef i64 @ftell(ptr noundef %i.n) ; 7 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !41
  %i.w = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.2, ptr noundef %i.l) #11 ; 0 uses
  br label %webp_really_loadimage.exit.thread.i

bb.j:                                             ; preds = %bb.h
  call void @rewind(ptr noundef %i.n)
  %i.x = call noalias ptr @malloc(i64 noundef %i.t) #12 ; 7 uses
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %.critedge.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not41.i.i = icmp eq ptr %i.x, null
  br i1 %.not41.i.i, label %.critedge45.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = call i64 @fread(ptr noundef nonnull %i.x, i64 noundef %i.t, i64 noundef 1, ptr noundef %i.n)
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %.critedge.i.i, label %.critedge45.i.i

.critedge45.i.i:                                  ; preds = %bb.l, %bb.k
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !41
  %i.ac = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.3, i64 noundef %i.t, ptr noundef %i.l) #11 ; 0 uses
  call void @free(ptr noundef %i.x) #9
  br label %webp_really_loadimage.exit.thread.i

.critedge.i.i:                                    ; preds = %bb.l, %bb.j
  %i.ad = call i32 @WebPGetFeaturesInternal(ptr noundef %i.x, i64 noundef range(i64 0, -9223372036854775808) %i.t, ptr noundef nonnull %4, i32 noundef 521) #9 ; 2 uses
  %.not42.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not42.i.i, label %bb.m, label %argb2rgba.exit.thread.i.i

argb2rgba.exit.thread.i.i:                        ; preds = %.critedge.i.i
  call void @free(ptr noundef %i.x) #9
  br label %bb.p

bb.m:                                             ; preds = %.critedge.i.i
  store i32 1, ptr %i.o, align 8, !tbaa !42
  %i.ae = call i32 @WebPDecode(ptr noundef %i.x, i64 noundef %i.t, ptr noundef nonnull %4) #9 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !44
  %.not43.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not43.i.i, label %bb.n, label %argb2rgba.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !46 ; 5 uses
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !47 ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %6 = load ptr, ptr %5, align 8, !tbaa !48       ; 3 uses
  %i.an = icmp ne i32 %i.al, 0
  %i.ao = icmp ne i32 %i.ai, 0
  %or.cond.i.i.i = and i1 %i.ao, %i.an
  br i1 %or.cond.i.i.i, label %.preheader.lver.check.i.i.i, label %argb2rgba.exit.i.i

.preheader.lver.check.i.i.i:                      ; preds = %bb.n
  %flatten.mul.i.i.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.am, i64 %i.aj) ; 2 uses
  %flatten.overflow.i.i.i = extractvalue { i64, i1 } %flatten.mul.i.i.i, 1
  br i1 %flatten.overflow.i.i.i, label %.preheader.i.preheader.i.i, label %.preheader.preheader.i.i.i

.preheader.i.preheader.i.i:                       ; preds = %.preheader.lver.check.i.i.i
  %xtraiter.a = and i64 %i.aj, 3
  %i.ap = icmp ult i32 %i.ai, 4
  %unroll_iter.a = and i64 %i.aj, -4
  %i.aq = and i32 %i.ai, 3
  %lcmp.mod.not.a = icmp eq i32 %i.aq, 0
  %i.ar = and i32 %i.ai, 3
  %lcmp.mod29 = icmp ne i32 %i.ar, 0
  br label %.preheader.lver.orig.i.lver.orig.i.lver.orig.i.lver.orig

.preheader.lver.orig.i.lver.orig.i.lver.orig.i.lver.orig: ; preds = %.preheader.i.preheader.i.i, %._crit_edge.i.i.i
  %.017.lver.orig.i.lver.orig.i.lver.orig.i.lver.orig = phi ptr [ %.lcssa, %._crit_edge.i.i.i ], [ %6, %.preheader.i.preheader.i.i ] ; 2 uses
  %.01216.lver.orig.i.lver.orig.i.lver.orig.i.lver.orig = phi i64 [ %i.aw, %._crit_edge.i.i.i ], [ 0, %.preheader.i.preheader.i.i ]
  br i1 %i.ap, label %.epil.preheader, label %.preheader.i.i.i.a

.preheader.i.i.i.a:                               ; preds = %.preheader.lver.orig.i.lver.orig.i.lver.orig.i.lver.orig, %.preheader.i.i.i.a
  %.017.i.i.i.a = phi ptr [ %22, %.preheader.i.i.i.a ], [ %.017.lver.orig.i.lver.orig.i.lver.orig.i.lver.orig, %.preheader.lver.orig.i.lver.orig.i.lver.orig.i.lver.orig ] ; 10 uses
  %.01216.i.i.i = phi i64 [ %niter42.next.3, %.preheader.i.i.i.a ], [ 0, %.preheader.lver.orig.i.lver.orig.i.lver.orig.i.lver.orig ]
  %7 = getelementptr inbounds nuw i8, ptr %.017.i.i.i.a, i64 2 ; 2 uses
  %8 = load i8, ptr %7, align 1, !tbaa !48
  %9 = load i8, ptr %.017.i.i.i.a, align 1, !tbaa !48
  store i8 %8, ptr %.017.i.i.i.a, align 1, !tbaa !48
  store i8 %9, ptr %7, align 1, !tbaa !48
  %10 = getelementptr inbounds nuw i8, ptr %.017.i.i.i.a, i64 4 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.017.i.i.i.a, i64 6 ; 2 uses
  %12 = load i8, ptr %11, align 1, !tbaa !48
  %13 = load i8, ptr %10, align 1, !tbaa !48
  store i8 %12, ptr %10, align 1, !tbaa !48
  store i8 %13, ptr %11, align 1, !tbaa !48
  %14 = getelementptr inbounds nuw i8, ptr %.017.i.i.i.a, i64 8 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %.017.i.i.i.a, i64 10 ; 2 uses
  %16 = load i8, ptr %15, align 1, !tbaa !48
  %17 = load i8, ptr %14, align 1, !tbaa !48
  store i8 %16, ptr %14, align 1, !tbaa !48
  store i8 %17, ptr %15, align 1, !tbaa !48
  %18 = getelementptr inbounds nuw i8, ptr %.017.i.i.i.a, i64 12 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %.017.i.i.i.a, i64 14 ; 2 uses
  %20 = load i8, ptr %19, align 1, !tbaa !48
  %21 = load i8, ptr %18, align 1, !tbaa !48
  store i8 %20, ptr %18, align 1, !tbaa !48
  store i8 %21, ptr %19, align 1, !tbaa !48
  %22 = getelementptr inbounds nuw i8, ptr %.017.i.i.i.a, i64 16 ; 3 uses
  %niter42.next.3 = add i64 %.01216.i.i.i, 4      ; 2 uses
  %niter42.ncmp.3 = icmp eq i64 %niter42.next.3, %unroll_iter.a
  br i1 %niter42.ncmp.3, label %._crit_edge.i.i.i.unr-lcssa, label %.preheader.i.i.i.a, !llvm.loop !49

._crit_edge.i.i.i.unr-lcssa:                      ; preds = %.preheader.i.i.i.a
  br i1 %lcmp.mod.not.a, label %._crit_edge.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.unr-lcssa, %.preheader.lver.orig.i.lver.orig.i.lver.orig.i.lver.orig
  %.115.i.i.i.epil.init = phi ptr [ %.017.lver.orig.i.lver.orig.i.lver.orig.i.lver.orig, %.preheader.lver.orig.i.lver.orig.i.lver.orig.i.lver.orig ], [ %22, %._crit_edge.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod29)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.115.i.i.i.epil = phi ptr [ %.115.i.i.i.epil.init, %.epil.preheader ], [ %i.av, %bb.o ] ; 4 uses
  %epil.iter.a = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next.a, %bb.o ]
  %i.as = getelementptr inbounds nuw i8, ptr %.115.i.i.i.epil, i64 2 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !48
  %i.au = load i8, ptr %.115.i.i.i.epil, align 1, !tbaa !48
  store i8 %i.at, ptr %.115.i.i.i.epil, align 1, !tbaa !48
  store i8 %i.au, ptr %i.as, align 1, !tbaa !48
  %i.av = getelementptr inbounds nuw i8, ptr %.115.i.i.i.epil, i64 4 ; 2 uses
  %epil.iter.next.a = add i64 %epil.iter.a, 1     ; 2 uses
  %epil.iter.cmp.not.a = icmp eq i64 %epil.iter.next.a, %xtraiter.a
  br i1 %epil.iter.cmp.not.a, label %._crit_edge.i.i.i, label %bb.o, !llvm.loop !51

._crit_edge.i.i.i:                                ; preds = %bb.o, %._crit_edge.i.i.i.unr-lcssa
  %.lcssa = phi ptr [ %22, %._crit_edge.i.i.i.unr-lcssa ], [ %i.av, %bb.o ]
  %i.aw = add nuw i64 %.01216.lver.orig.i.lver.orig.i.lver.orig.i.lver.orig, 1 ; 2 uses
  %exitcond19.not.i.i.i = icmp eq i64 %i.aw, %i.am
  br i1 %exitcond19.not.i.i.i, label %argb2rgba.exit.i.i, label %.preheader.lver.orig.i.lver.orig.i.lver.orig.i.lver.orig, !llvm.loop !53

.preheader.preheader.i.i.i:                       ; preds = %.preheader.lver.check.i.i.i
  %flatten.tripcount.i.i.i = extractvalue { i64, i1 } %flatten.mul.i.i.i, 0 ; 2 uses
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %flatten.tripcount.i.i.i, i64 1) ; 2 uses
  %xtraiter = and i64 %umax.i.i.i, 3              ; 3 uses
  %23 = icmp ult i64 %flatten.tripcount.i.i.i, 4
  br i1 %23, label %.preheader.i.i.i.epil.preheader, label %.preheader.preheader.i.i.i.new

.preheader.preheader.i.i.i.new:                   ; preds = %.preheader.preheader.i.i.i
  %unroll_iter = and i64 %umax.i.i.i, -4
  br label %.preheader.i.i.i.new

.preheader.i.i.i.new:                             ; preds = %.preheader.i.i.i.new, %.preheader.preheader.i.i.i.new
  %.115.i.i.i = phi ptr [ %6, %.preheader.preheader.i.i.i.new ], [ %i.bm, %.preheader.i.i.i.new ] ; 10 uses
  %niter = phi i64 [ 0, %.preheader.preheader.i.i.i.new ], [ %niter.next.3, %.preheader.i.i.i.new ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.115.i.i.i, i64 2 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !48
  %i.az = load i8, ptr %.115.i.i.i, align 1, !tbaa !48
  store i8 %i.ay, ptr %.115.i.i.i, align 1, !tbaa !48
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !48
  %i.ba = getelementptr inbounds nuw i8, ptr %.115.i.i.i, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.115.i.i.i, i64 6 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !48
  %i.bd = load i8, ptr %i.ba, align 1, !tbaa !48
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !48
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !48
  %i.be = getelementptr inbounds nuw i8, ptr %.115.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.115.i.i.i, i64 10 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !48
  %i.bh = load i8, ptr %i.be, align 1, !tbaa !48
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !48
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !48
  %i.bi = getelementptr inbounds nuw i8, ptr %.115.i.i.i, i64 12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.115.i.i.i, i64 14 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !48
  %i.bl = load i8, ptr %i.bi, align 1, !tbaa !48
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !48
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %.115.i.i.i, i64 16 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %argb2rgba.exit.i.i.loopexit34.unr-lcssa, label %.preheader.i.i.i.new, !llvm.loop !53

argb2rgba.exit.i.i.loopexit34.unr-lcssa:          ; preds = %.preheader.i.i.i.new
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %argb2rgba.exit.i.i, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %argb2rgba.exit.i.i.loopexit34.unr-lcssa, %.preheader.preheader.i.i.i
  %.017.i.i.i.epil.init = phi ptr [ %6, %.preheader.preheader.i.i.i ], [ %i.bm, %argb2rgba.exit.i.i.loopexit34.unr-lcssa ]
  %lcmp.mod35 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod35)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.017.i.i.i.epil = phi ptr [ %27, %.preheader.i.i.i.epil ], [ %.017.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %24 = getelementptr inbounds nuw i8, ptr %.017.i.i.i.epil, i64 2 ; 2 uses
  %25 = load i8, ptr %24, align 1, !tbaa !48
  %26 = load i8, ptr %.017.i.i.i.epil, align 1, !tbaa !48
  store i8 %25, ptr %.017.i.i.i.epil, align 1, !tbaa !48
  store i8 %26, ptr %24, align 1, !tbaa !48
  %27 = getelementptr inbounds nuw i8, ptr %.017.i.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %argb2rgba.exit.i.i, label %.preheader.i.i.i.epil, !llvm.loop !54

argb2rgba.exit.i.i:                               ; preds = %argb2rgba.exit.i.i.loopexit34.unr-lcssa, %.preheader.i.i.i.epil, %._crit_edge.i.i.i, %bb.n, %bb.m
  call void @free(ptr noundef %i.x) #9
  %i.bn = icmp eq i32 %i.ae, 0
  br i1 %i.bn, label %webp_really_loadimage.exit.i, label %bb.p

bb.p:                                             ; preds = %argb2rgba.exit.i.i, %argb2rgba.exit.thread.i.i
  %.03747.i.i = phi i32 [ %i.ad, %argb2rgba.exit.thread.i.i ], [ %i.ae, %argb2rgba.exit.i.i ] ; 2 uses
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !41
  %i.bp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str.4, ptr noundef %i.l) #11 ; 0 uses
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !41
  %i.br = zext i32 %.03747.i.i to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @kStatusMessages, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !55
  %i.bu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.5, i32 noundef %.03747.i.i, ptr noundef %i.bt) #11 ; 0 uses
  br label %webp_really_loadimage.exit.thread.i

webp_really_loadimage.exit.thread.i:              ; preds = %bb.p, %.critedge45.i.i, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %webp_loadimage.exit.thread18

webp_really_loadimage.exit.i:                     ; preds = %argb2rgba.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !48
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !46
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !47
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !48
  %i.cd = call ptr @cairo_image_surface_create_for_data(ptr noundef %i.bw, i32 noundef 0, i32 noundef %i.by, i32 noundef %i.ca, i32 noundef %i.cc) #9 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %.not26.i = icmp eq ptr %i.cd, null
  br i1 %.not26.i, label %webp_loadimage.exit.thread18, label %webp_loadimage.exit

webp_loadimage.exit.thread18:                     ; preds = %webp_really_loadimage.exit.i, %bb.e, %webp_really_loadimage.exit.thread.i
  call void @gvusershape_file_release(ptr noundef nonnull %1) #9
  br label %webp_loadimage.exit.thread

webp_loadimage.exit:                              ; preds = %webp_really_loadimage.exit.i
  %i.ce = call ptr @cairo_surface_reference(ptr noundef nonnull %i.cd) #9 ; 0 uses
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !32
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr @webp_freeimage, ptr %i.cf, align 8, !tbaa !36
  call void @gvusershape_file_release(ptr noundef nonnull %1) #9
  br label %webp_loadimage.exit.thread14

webp_loadimage.exit.thread14:                     ; preds = %bb.b, %webp_loadimage.exit
  %.020.i17 = phi ptr [ %i.cd, %webp_loadimage.exit ], [ %i.d, %bb.b ]
  call void @cairo_save(ptr noundef %i.b) #9
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ck = load double, ptr %2, align 8, !tbaa !56 ; 2 uses
  %i.cl = load double, ptr %i.ch, align 8, !tbaa !57 ; 2 uses
  %i.cm = fneg double %i.cl
  call void @cairo_translate(ptr noundef %i.b, double noundef %i.ck, double noundef %i.cm) #9
  %i.cn = load <2 x double>, ptr %i.cg, align 8
  %i.co = load double, ptr %i.cj, align 8, !tbaa !58
  %i.cp = insertelement <2 x double> %i.cn, double %i.cl, i64 1
  %i.cq = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.co, i64 1
  %i.cs = fsub <2 x double> %i.cp, %i.cr
  %i.ct = load <2 x double>, ptr %i.ci, align 8, !tbaa !59
  %i.cu = fdiv <2 x double> %i.cs, %i.ct          ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 0
  %i.cw = extractelement <2 x double> %i.cu, i64 1
  call void @cairo_scale(ptr noundef %i.b, double noundef %i.cv, double noundef %i.cw) #9
  call void @cairo_set_source_surface(ptr noundef %i.b, ptr noundef nonnull %.020.i17, double noundef 0.000000e+00, double noundef 0.000000e+00) #9
  call void @cairo_paint(ptr noundef %i.b) #9
  call void @cairo_restore(ptr noundef %i.b) #9
  br label %webp_loadimage.exit.thread

webp_loadimage.exit.thread:                       ; preds = %bb.d, %webp_loadimage.exit.thread18, %webp_loadimage.exit.thread14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cairo_save(ptr noundef) local_unnamed_addr #2

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @cairo_paint(ptr noundef) local_unnamed_addr #2

declare void @cairo_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @webp_freeimage(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  tail call void @cairo_surface_destroy(ptr noundef %i.b) #9
  ret void
}

declare zeroext i1 @gvusershape_file_access(ptr noundef) local_unnamed_addr #2

declare ptr @cairo_surface_reference(ptr noundef) local_unnamed_addr #2

declare void @gvusershape_file_release(ptr noundef) local_unnamed_addr #2

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @rewind(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare i32 @WebPDecode(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cairo_image_surface_create_for_data(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @WebPInitDecoderConfigInternal(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @WebPGetFeaturesInternal(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 256}
!9 = !{!"GVJ_s", !10, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !14, i64 32, !15, i64 40, !5, i64 48, !15, i64 56, !15, i64 64, !16, i64 72, !15, i64 80, !17, i64 88, !17, i64 96, !15, i64 104, !5, i64 112, !18, i64 120, !20, i64 152, !22, i64 184, !24, i64 208, !25, i64 216, !27, i64 232, !11, i64 240, !5, i64 248, !11, i64 256, !27, i64 264, !15, i64 272, !5, i64 280, !5, i64 284, !5, i64 288, !28, i64 292, !28, i64 300, !28, i64 308, !28, i64 316, !28, i64 324, !5, i64 332, !29, i64 336, !25, i64 368, !29, i64 384, !29, i64 416, !25, i64 448, !25, i64 464, !26, i64 480, !5, i64 488, !25, i64 496, !29, i64 512, !25, i64 544, !25, i64 560, !5, i64 576, !5, i64 580, !30, i64 584, !30, i64 600, !25, i64 616, !25, i64 632, !25, i64 648, !27, i64 664, !27, i64 665, !27, i64 666, !27, i64 667, !27, i64 668, !6, i64 669, !25, i64 672, !25, i64 688, !11, i64 704, !11, i64 712, !15, i64 720, !15, i64 728, !11, i64 736, !31, i64 744, !17, i64 752, !11, i64 760}
!10 = !{!"p1 _ZTS5GVC_s", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS5GVJ_s", !11, i64 0}
!13 = !{!"p1 _ZTS10GVCOMMON_s", !11, i64 0}
!14 = !{!"p1 _ZTS11obj_state_s", !11, i64 0}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!"gvplugin_active_render_s", !19, i64 0, !5, i64 8, !11, i64 16, !15, i64 24}
!19 = !{!"p1 _ZTS17gvrender_engine_s", !11, i64 0}
!20 = !{!"gvplugin_active_device_s", !21, i64 0, !5, i64 8, !11, i64 16, !15, i64 24}
!21 = !{!"p1 _ZTS17gvdevice_engine_s", !11, i64 0}
!22 = !{!"gvplugin_active_loadimage_t", !23, i64 0, !5, i64 8, !15, i64 16}
!23 = !{!"p1 _ZTS20gvloadimage_engine_s", !11, i64 0}
!24 = !{!"p1 _ZTS20gvdevice_callbacks_s", !11, i64 0}
!25 = !{!"pointf_s", !26, i64 0, !26, i64 8}
!26 = !{!"double", !6, i64 0}
!27 = !{!"_Bool", !6, i64 0}
!28 = !{!"", !5, i64 0, !5, i64 4}
!29 = !{!"", !25, i64 0, !25, i64 16}
!30 = !{!"", !28, i64 0, !28, i64 8}
!31 = !{!"p1 _ZTS21gvevent_key_binding_s", !11, i64 0}
!32 = !{!33, !11, i64 96}
!33 = !{!"usershape_s", !34, i64 0, !15, i64 16, !5, i64 24, !27, i64 28, !27, i64 29, !16, i64 32, !5, i64 40, !15, i64 48, !26, i64 56, !26, i64 64, !26, i64 72, !26, i64 80, !5, i64 88, !11, i64 96, !17, i64 104, !11, i64 112}
!34 = !{!"dtlink_s_", !35, i64 0, !6, i64 8}
!35 = !{!"p1 _ZTS9dtlink_s_", !11, i64 0}
!36 = !{!33, !11, i64 112}
!37 = distinct !{null}
!38 = !{!33, !5, i64 40}
!39 = !{!33, !15, i64 16}
!40 = !{!33, !16, i64 32}
!41 = !{!16, !16, i64 0}
!42 = !{!43, !5, i64 0}
!43 = !{!"WebPDecBuffer", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !6, i64 16, !6, i64 96, !15, i64 112}
!44 = !{!45, !5, i64 8}
!45 = !{!"WebPBitstreamFeatures", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20}
!46 = !{!43, !5, i64 4}
!47 = !{!43, !5, i64 8}
!48 = !{!6, !6, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !50}
!54 = distinct !{!54, !52}
!55 = !{!15, !15, i64 0}
!56 = !{!29, !26, i64 0}
!57 = !{!29, !26, i64 24}
!58 = !{!29, !26, i64 8}
!59 = !{!26, !26, i64 0}
end_hunk_0
