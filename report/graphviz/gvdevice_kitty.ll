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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33   ; 4 uses
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = zext i32 %i.f to i64
  %i.i = icmp ne i32 %i.f, 0
  %i.j = icmp ne i32 %i.d, 0
  %or.cond.i = and i1 %i.j, %i.i
  br i1 %or.cond.i, label %.preheader.i.preheader, label %argb2rgba.exit

.preheader.i.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.k = icmp ult i32 %i.d, 4
  %unroll_iter = and i64 %i.g, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.017.i = phi ptr [ %.lcssa, %._crit_edge.i ], [ %i.b, %.preheader.i.preheader ] ; 2 uses
  %.01216.i = phi i64 [ %i.p, %._crit_edge.i ], [ 0, %.preheader.i.preheader ]
  br i1 %i.k, label %.epil.preheader, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %.115.i.epil.init = phi ptr [ %.017.i, %.preheader.i ], [ %i.af, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.115.i.epil = phi ptr [ %.115.i.epil.init, %.epil.preheader ], [ %i.o, %bb.b ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.115.i.epil, i64 2 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !34
  %i.n = load i8, ptr %.115.i.epil, align 1, !tbaa !34
  store i8 %i.m, ptr %.115.i.epil, align 1, !tbaa !34
  store i8 %i.n, ptr %i.l, align 1, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %.115.i.epil, i64 4 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.b, !llvm.loop !35

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.i.unr-lcssa
  %.lcssa = phi ptr [ %i.af, %._crit_edge.i.unr-lcssa ], [ %i.o, %bb.b ]
  %i.p = add nuw nsw i64 %.01216.i, 1             ; 2 uses
  %exitcond19.not.i = icmp eq i64 %i.p, %i.h
  br i1 %exitcond19.not.i, label %argb2rgba.exit.loopexit, label %.preheader.i, !llvm.loop !37

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %.115.i = phi ptr [ %i.af, %.preheader.i.new ], [ %.017.i, %.preheader.i ] ; 10 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.115.i, i64 2 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !34
  %i.s = load i8, ptr %.115.i, align 1, !tbaa !34
  store i8 %i.r, ptr %.115.i, align 1, !tbaa !34
  store i8 %i.s, ptr %i.q, align 1, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %.115.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.115.i, i64 6 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !34
  %i.w = load i8, ptr %i.t, align 1, !tbaa !34
  store i8 %i.v, ptr %i.t, align 1, !tbaa !34
  store i8 %i.w, ptr %i.u, align 1, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %.115.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.115.i, i64 10 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34
  %i.aa = load i8, ptr %i.x, align 1, !tbaa !34
  store i8 %i.z, ptr %i.x, align 1, !tbaa !34
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %.115.i, i64 12 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.115.i, i64 14 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !34
  %i.ae = load i8, ptr %i.ab, align 1, !tbaa !34
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !34
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %.115.i, i64 16 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !39

argb2rgba.exit.loopexit:                          ; preds = %._crit_edge.i
  %.pre = load i32, ptr %i.c, align 8, !tbaa !32
  %.pre9 = load i32, ptr %i.e, align 4, !tbaa !33
  br label %argb2rgba.exit

argb2rgba.exit:                                   ; preds = %argb2rgba.exit.loopexit, %bb.a
  %i.ag = phi i32 [ %.pre9, %argb2rgba.exit.loopexit ], [ %i.f, %bb.a ]
  %i.ah = phi i32 [ %.pre, %argb2rgba.exit.loopexit ], [ %i.d, %bb.a ]
  %i.ai = shl i32 %i.d, 2
  %i.aj = mul i32 %i.ai, %i.f
  %i.ak = zext i32 %i.aj to i64
  tail call fastcc void @kitty_write(ptr noundef %i.b, i64 noundef %i.ak, i32 noundef %i.ah, i32 noundef %i.ag, i1 noundef zeroext false)
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
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.p = tail call i64 @fwrite(ptr noundef %i.n, i64 noundef %i.m, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %i.r = icmp ult i64 %i.f, %i.b
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !41

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !32   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33   ; 3 uses
  %i.h = shl i32 %i.e, 2
  %i.i = mul i32 %i.h, %i.g
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = zext i32 %i.e to i64                     ; 2 uses
  %i.l = zext i32 %i.g to i64
  %i.m = icmp ne i32 %i.g, 0
  %i.n = icmp ne i32 %i.e, 0
  %or.cond.i = and i1 %i.n, %i.m
  br i1 %or.cond.i, label %.preheader.i.preheader, label %argb2rgba.exit

.preheader.i.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %i.k, 3                     ; 3 uses
  %i.o = icmp ult i32 %i.e, 4
  %unroll_iter = and i64 %i.k, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.017.i = phi ptr [ %.lcssa, %._crit_edge.i ], [ %i.c, %.preheader.i.preheader ] ; 2 uses
  %.01216.i = phi i64 [ %i.t, %._crit_edge.i ], [ 0, %.preheader.i.preheader ]
  br i1 %i.o, label %.epil.preheader, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %.115.i.epil.init = phi ptr [ %.017.i, %.preheader.i ], [ %i.aj, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.115.i.epil = phi ptr [ %.115.i.epil.init, %.epil.preheader ], [ %i.s, %bb.b ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %.115.i.epil, i64 2 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !34
  %i.r = load i8, ptr %.115.i.epil, align 1, !tbaa !34
  store i8 %i.q, ptr %.115.i.epil, align 1, !tbaa !34
  store i8 %i.r, ptr %i.p, align 1, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %.115.i.epil, i64 4 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.b, !llvm.loop !42

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.i.unr-lcssa
  %.lcssa = phi ptr [ %i.aj, %._crit_edge.i.unr-lcssa ], [ %i.s, %bb.b ]
  %i.t = add nuw nsw i64 %.01216.i, 1             ; 2 uses
  %exitcond19.not.i = icmp eq i64 %i.t, %i.l
  br i1 %exitcond19.not.i, label %argb2rgba.exit, label %.preheader.i, !llvm.loop !37

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %.115.i = phi ptr [ %i.aj, %.preheader.i.new ], [ %.017.i, %.preheader.i ] ; 10 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.115.i, i64 2 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !34
  %i.w = load i8, ptr %.115.i, align 1, !tbaa !34
  store i8 %i.v, ptr %.115.i, align 1, !tbaa !34
  store i8 %i.w, ptr %i.u, align 1, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %.115.i, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.115.i, i64 6 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34
  %i.aa = load i8, ptr %i.x, align 1, !tbaa !34
  store i8 %i.z, ptr %i.x, align 1, !tbaa !34
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %.115.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.115.i, i64 10 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !34
  %i.ae = load i8, ptr %i.ab, align 1, !tbaa !34
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !34
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %.115.i, i64 12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.115.i, i64 14 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !34
  %i.ai = load i8, ptr %i.af, align 1, !tbaa !34
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !34
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %.115.i, i64 16 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !39

argb2rgba.exit:                                   ; preds = %._crit_edge.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ak = tail call i64 @compressBound(i64 noundef range(i64 0, 4294967296) %i.j) #10 ; 4 uses
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !43
  %i.al = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.ak) #11 ; 4 uses
  %i.am = icmp ne i64 %i.ak, 0
  %i.an = icmp eq ptr %i.al, null
  %or.cond3.i.i.i = and i1 %i.am, %i.an
  br i1 %or.cond3.i.i.i, label %bb.c, label %zlib_compress.exit

bb.c:                                             ; preds = %argb2rgba.exit
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.11, i64 noundef %i.ak) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

zlib_compress.exit:                               ; preds = %argb2rgba.exit
  %i.aq = call i32 @compress(ptr noundef %i.al, ptr noundef nonnull %i.a, ptr noundef %i.c, i64 noundef range(i64 0, 4294967296) %i.j) #10 ; 0 uses
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.as = load i32, ptr %i.d, align 8, !tbaa !32
  %i.at = load i32, ptr %i.f, align 4, !tbaa !33
  call fastcc void @kitty_write(ptr noundef %i.al, i64 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at, i1 noundef zeroext true)
  call void @free(ptr noundef %i.al) #10
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
end_hunk_0
