inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gvdevice_engine_s = type { ptr, ptr, ptr }
%struct.pointf_s = type { double, double }

@.str = private unnamed_addr constant [12 x i8] c"kitty:cairo\00", align 1
@device_engine_kitty = internal global %struct.gvdevice_engine_s { ptr null, ptr @kitty_format, ptr null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"kittyz:cairo\00", align 1
@device_engine_zkitty = internal global %struct.gvdevice_engine_s { ptr null, ptr @zkitty_format, ptr null }, align 8
@gvdevice_types_kitty = local_unnamed_addr global [3 x { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr }] [{ i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr @device_engine_kitty, ptr @device_features_kitty }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1, i32 1, [4 x i8] zeroinitializer, ptr @device_engine_zkitty, ptr @device_features_zkitty }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [27 x i8] c"\1B_Ga=T,f=32,s=%u,v=%u%s%s;\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c",m=1\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c",o=z\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\1B_Gm=%d;\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@device_features_kitty = internal global { i32, [4 x i8], %struct.pointf_s, %struct.pointf_s, %struct.pointf_s } { i32 256, [4 x i8] zeroinitializer, %struct.pointf_s zeroinitializer, %struct.pointf_s zeroinitializer, %struct.pointf_s { double 9.600000e+01, double 9.600000e+01 } }, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@device_features_zkitty = internal global { i32, [4 x i8], %struct.pointf_s, %struct.pointf_s, %struct.pointf_s } { i32 256, [4 x i8] zeroinitializer, %struct.pointf_s zeroinitializer, %struct.pointf_s zeroinitializer, %struct.pointf_s { double 9.600000e+01, double 9.600000e+01 } }, align 8

; Function Attrs: nounwind uwtable
define internal void @kitty_format(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33   ; 4 uses
  %i.g = icmp ne i32 %i.f, 0
  %i.h = icmp ne i32 %i.d, 0
  %or.cond.i = and i1 %i.h, %i.g
  br i1 %or.cond.i, label %bb.b, label %argb2rgba.exit

bb.b:                                             ; preds = %bb.a
  %1 = zext i32 %i.d to i64
  %2 = zext i32 %i.f to i64
  %flatten.tripcount.i = mul nuw i64 %2, %1       ; 3 uses
  %xtraiter = and i64 %flatten.tripcount.i, 3     ; 3 uses
  %3 = icmp ult i64 %flatten.tripcount.i, 4
  br i1 %3, label %.preheader.i.epil.preheader, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %unroll_iter = and i64 %flatten.tripcount.i, -4
  br label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i.new, %._crit_edge.i
  %.115.i = phi ptr [ %i.b, %._crit_edge.i ], [ %i.x, %.preheader.i.new ] ; 10 uses
  %niter = phi i64 [ 0, %._crit_edge.i ], [ %niter.next.3, %.preheader.i.new ]
  %i.i = getelementptr inbounds nuw i8, ptr %.115.i, i64 2 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !34
  %i.k = load i8, ptr %.115.i, align 1, !tbaa !34
  store i8 %i.j, ptr %.115.i, align 1, !tbaa !34
  store i8 %i.k, ptr %i.i, align 1, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %.115.i, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.115.i, i64 6 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !34
  %i.o = load i8, ptr %i.l, align 1, !tbaa !34
  store i8 %i.n, ptr %i.l, align 1, !tbaa !34
  store i8 %i.o, ptr %i.m, align 1, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %.115.i, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.115.i, i64 10 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !34
  %i.s = load i8, ptr %i.p, align 1, !tbaa !34
  store i8 %i.r, ptr %i.p, align 1, !tbaa !34
  store i8 %i.s, ptr %i.q, align 1, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %.115.i, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.115.i, i64 14 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !34
  %i.w = load i8, ptr %i.t, align 1, !tbaa !34
  store i8 %i.v, ptr %i.t, align 1, !tbaa !34
  store i8 %i.w, ptr %i.u, align 1, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %.115.i, i64 16 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %argb2rgba.exit.loopexit.unr-lcssa, label %.preheader.i.new, !llvm.loop !35

argb2rgba.exit.loopexit.unr-lcssa:                ; preds = %.preheader.i.new
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %argb2rgba.exit.loopexit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %argb2rgba.exit.loopexit.unr-lcssa, %bb.b
  %.017.i.epil.init = phi ptr [ %i.b, %bb.b ], [ %i.x, %argb2rgba.exit.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.017.i.epil = phi ptr [ %.017.i.epil.init, %.preheader.i.epil.preheader ], [ %7, %.preheader.i.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter.next, %.preheader.i.epil ]
  %4 = getelementptr inbounds nuw i8, ptr %.017.i.epil, i64 2 ; 2 uses
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = load i8, ptr %.017.i.epil, align 1, !tbaa !34
  store i8 %5, ptr %.017.i.epil, align 1, !tbaa !34
  store i8 %6, ptr %4, align 1, !tbaa !34
  %7 = getelementptr inbounds nuw i8, ptr %.017.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %argb2rgba.exit.loopexit, label %.preheader.i.epil, !llvm.loop !37

argb2rgba.exit.loopexit:                          ; preds = %.preheader.i.epil, %argb2rgba.exit.loopexit.unr-lcssa
  %.pre = load i32, ptr %i.c, align 8, !tbaa !32
  %.pre9 = load i32, ptr %i.e, align 4, !tbaa !33
  br label %argb2rgba.exit

argb2rgba.exit:                                   ; preds = %argb2rgba.exit.loopexit, %bb.a
  %i.y = phi i32 [ %.pre9, %argb2rgba.exit.loopexit ], [ %i.f, %bb.a ]
  %i.z = phi i32 [ %.pre, %argb2rgba.exit.loopexit ], [ %i.d, %bb.a ]
  %i.aa = shl i32 %i.d, 2
  %i.ab = mul i32 %i.aa, %i.f
  %i.ac = zext i32 %i.ab to i64
  tail call fastcc void @kitty_write(ptr noundef %i.b, i64 noundef %i.ac, i32 noundef %i.z, i32 noundef %i.y, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @kitty_write(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @gv_base64(ptr noundef %0, i64 noundef %1) #10 ; 2 uses
  %i.b = tail call i64 @gv_base64_size(i64 noundef %1) #10 ; 5 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp ugt i64 %i.b, 4096
  %i.d = select i1 %i.c, ptr @.str.3, ptr @.str.4
  %i.e = select i1 %4, ptr @.str.5, ptr @.str.4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.021 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.e ] ; 4 uses
  %i.f = add i64 %.021, 4096                      ; 3 uses
  %i.g = icmp ule i64 %i.f, %i.b                  ; 2 uses
  %i.h = icmp eq i64 %.021, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = zext i1 %i.g to i32
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.j) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = sub i64 %i.b, %.021
  %i.m = select i1 %i.g, i64 4096, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.021
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !39
  %i.p = tail call i64 @fwrite(ptr noundef %i.n, i64 noundef %i.m, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %i.r = icmp ult i64 %i.f, %i.b
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  tail call void @free(ptr noundef %i.a) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare hidden ptr @gv_base64(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden i64 @gv_base64_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @zkitty_format(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !32   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33   ; 3 uses
  %i.h = shl i32 %i.e, 2
  %i.i = mul i32 %i.h, %i.g
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = icmp ne i32 %i.g, 0
  %i.l = icmp ne i32 %i.e, 0
  %or.cond.i = and i1 %i.l, %i.k
  br i1 %or.cond.i, label %bb.b, label %argb2rgba.exit

bb.b:                                             ; preds = %bb.a
  %1 = zext i32 %i.e to i64
  %2 = zext i32 %i.g to i64
  %flatten.tripcount.i = mul nuw i64 %2, %1       ; 3 uses
  %xtraiter = and i64 %flatten.tripcount.i, 3     ; 3 uses
  %3 = icmp ult i64 %flatten.tripcount.i, 4
  br i1 %3, label %.preheader.i.epil.preheader, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %unroll_iter = and i64 %flatten.tripcount.i, -4
  br label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i.new, %._crit_edge.i
  %.115.i = phi ptr [ %i.c, %._crit_edge.i ], [ %i.ab, %.preheader.i.new ] ; 10 uses
  %niter = phi i64 [ 0, %._crit_edge.i ], [ %niter.next.3, %.preheader.i.new ]
  %i.m = getelementptr inbounds nuw i8, ptr %.115.i, i64 2 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !34
  %i.o = load i8, ptr %.115.i, align 1, !tbaa !34
  store i8 %i.n, ptr %.115.i, align 1, !tbaa !34
  store i8 %i.o, ptr %i.m, align 1, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %.115.i, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.115.i, i64 6 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !34
  %i.s = load i8, ptr %i.p, align 1, !tbaa !34
  store i8 %i.r, ptr %i.p, align 1, !tbaa !34
  store i8 %i.s, ptr %i.q, align 1, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %.115.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.115.i, i64 10 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !34
  %i.w = load i8, ptr %i.t, align 1, !tbaa !34
  store i8 %i.v, ptr %i.t, align 1, !tbaa !34
  store i8 %i.w, ptr %i.u, align 1, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %.115.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.115.i, i64 14 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34
  %i.aa = load i8, ptr %i.x, align 1, !tbaa !34
  store i8 %i.z, ptr %i.x, align 1, !tbaa !34
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %.115.i, i64 16 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %argb2rgba.exit.loopexit.unr-lcssa, label %.preheader.i.new, !llvm.loop !35

argb2rgba.exit.loopexit.unr-lcssa:                ; preds = %.preheader.i.new
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %argb2rgba.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %argb2rgba.exit.loopexit.unr-lcssa, %bb.b
  %.017.i.epil.init = phi ptr [ %i.c, %bb.b ], [ %i.ab, %argb2rgba.exit.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.017.i.epil = phi ptr [ %.017.i.epil.init, %.preheader.i.epil.preheader ], [ %7, %.preheader.i.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter.next, %.preheader.i.epil ]
  %4 = getelementptr inbounds nuw i8, ptr %.017.i.epil, i64 2 ; 2 uses
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = load i8, ptr %.017.i.epil, align 1, !tbaa !34
  store i8 %5, ptr %.017.i.epil, align 1, !tbaa !34
  store i8 %6, ptr %4, align 1, !tbaa !34
  %7 = getelementptr inbounds nuw i8, ptr %.017.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %argb2rgba.exit, label %.preheader.i.epil, !llvm.loop !41

argb2rgba.exit:                                   ; preds = %argb2rgba.exit.loopexit.unr-lcssa, %.preheader.i.epil, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ac = tail call i64 @compressBound(i64 noundef range(i64 0, 4294967296) %i.j) #10 ; 4 uses
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !42
  %i.ad = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.ac) #11 ; 4 uses
  %i.ae = icmp ne i64 %i.ac, 0
  %i.af = icmp eq ptr %i.ad, null
  %or.cond3.i.i.i = and i1 %i.ae, %i.af
  br i1 %or.cond3.i.i.i, label %bb.c, label %zlib_compress.exit

bb.c:                                             ; preds = %argb2rgba.exit
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.11, i64 noundef %i.ac) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

zlib_compress.exit:                               ; preds = %argb2rgba.exit
  %i.ai = call i32 @compress(ptr noundef %i.ad, ptr noundef nonnull %i.a, ptr noundef %i.c, i64 noundef range(i64 0, 4294967296) %i.j) #10 ; 0 uses
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.ak = load i32, ptr %i.d, align 8, !tbaa !32
  %i.al = load i32, ptr %i.f, align 4, !tbaa !33
  call fastcc void @kitty_write(ptr noundef %i.ad, i64 noundef %i.aj, i32 noundef %i.ak, i32 noundef %i.al, i1 noundef zeroext true)
  call void @free(ptr noundef %i.ad) #10
  ret void
}

declare i64 @compressBound(i64 noundef) local_unnamed_addr #2

declare i32 @compress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #5 {
bb.a:
  tail call void @exit(i32 noundef 1) #14
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { cold nounwind }
attributes #13 = { noreturn }
attributes #14 = { cold noreturn nounwind }

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
!8 = !{!9, !15, i64 272}
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
!32 = !{!9, !5, i64 576}
!33 = !{!9, !5, i64 580}
!34 = !{!6, !6, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!16, !16, i64 0}
!40 = distinct !{!40, !36}
!41 = distinct !{!41, !38}
!42 = !{!17, !17, i64 0}
end_hunk_0
