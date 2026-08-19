inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._php_stream_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._IO_cookie_io_functions_t = type { ptr, ptr, ptr, ptr }

@php_stream_stdio_ops = external global %struct._php_stream_ops, align 8
@stream_cookie_functions = internal global %struct._IO_cookie_io_functions_t { ptr @stream_cookie_reader, ptr @stream_cookie_writer, ptr @stream_cookie_seeker, ptr @stream_cookie_closer }, align 8
@.str = private unnamed_addr constant [19 x i8] c"fopencookie failed\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Cannot cast a filtered stream on this system\00", align 1
@_php_stream_cast.cast_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"STDIO FILE*\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"File Descriptor\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Socket Descriptor\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"select()able descriptor\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Cannot represent a stream of type %s as a %s\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"%ld bytes of buffered data lost during stream conversion!\00", align 1
@switch.table._php_stream_cast = private unnamed_addr constant [23 x i8] c"awwwwwwwwwwwwwwwwrwwwww", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @php_stream_mode_sanitize_fdopen_fopencookie(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.b = load i8, ptr %i.a, align 1, !tbaa !12
  %switch.tableidx = add i8 %i.b, -97             ; 2 uses
  %i.c = icmp ult i8 %switch.tableidx, 23
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._php_stream_cast, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %storemerge = phi i8 [ %switch.load, %switch.lookup ], [ 119, %bb.a ]
  store i8 %storemerge, ptr %1, align 1, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  switch i8 %i.f, label %.fold.split [
    i8 0, label %.thread
    i8 98, label %bb.d
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

.fold.split:                                      ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.fold.split, %bb.c
  %.128 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %.fold.split ] ; 3 uses
  %.126 = phi i32 [ 1, %bb.b ], [ 0, %bb.c ], [ 0, %.fold.split ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  switch i8 %i.h, label %.fold.split.1 [
    i8 0, label %.critedge
    i8 98, label %bb.f
    i8 43, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.f

.fold.split.1:                                    ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %.fold.split.1, %bb.e, %bb.d
  %.128.1 = phi i32 [ %.128, %bb.d ], [ 1, %bb.e ], [ %.128, %.fold.split.1 ] ; 2 uses
  %.126.1 = phi i32 [ 1, %bb.d ], [ %.126, %bb.e ], [ %.126, %.fold.split.1 ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 101
  %i.j = load i8, ptr %i.i, align 1, !tbaa !12
  switch i8 %i.j, label %.critedge [
    i8 43, label %bb.g
    i8 98, label %.critedge.thread41
  ]

bb.g:                                             ; preds = %bb.f
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g, %bb.d
  %.027.lcssa = phi i32 [ 1, %bb.g ], [ %.128.1, %bb.f ], [ %.128, %bb.d ] ; 2 uses
  %.025.lcssa = phi i32 [ %.126.1, %bb.g ], [ %.126.1, %bb.f ], [ %.126, %bb.d ]
  %.not31 = icmp eq i32 %.025.lcssa, 0
  br i1 %.not31, label %bb.h, label %.critedge.thread41

.critedge.thread41:                               ; preds = %bb.f, %.critedge
  %.027.lcssa45 = phi i32 [ %.027.lcssa, %.critedge ], [ %.128.1, %bb.f ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 98, ptr %i.k, align 1, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %.critedge.thread41, %.critedge
  %.027.lcssa40 = phi i32 [ %.027.lcssa45, %.critedge.thread41 ], [ %.027.lcssa, %.critedge ]
  %.1 = phi i32 [ 2, %.critedge.thread41 ], [ 1, %.critedge ] ; 3 uses
  %.not32 = icmp eq i32 %.027.lcssa40, 0
  br i1 %.not32, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = add nuw nsw i32 %.1, 1
  %i.m = zext nneg i32 %.1 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  store i8 43, ptr %i.n, align 1, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.i, %bb.h
  %.2 = phi i32 [ %i.l, %bb.i ], [ %.1, %bb.h ], [ 1, %bb.b ]
  %i.o = zext nneg i32 %.2 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  store i8 0, ptr %i.p, align 1, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_php_stream_cast(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [5 x i8], align 1                 ; 7 uses
  %i.c = and i32 %1, 536870911                    ; 4 uses
  %i.d = icmp ne ptr %2, null                     ; 3 uses
  %i.e = icmp ne i32 %i.c, 3
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @_php_stream_flush(ptr noundef %0, i32 noundef 0) #8 ; 0 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29
  %i.l = and i32 %i.k, 1
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load i64, ptr %i.n, align 8, !tbaa !30
  %i.p = call i32 %i.i(ptr noundef nonnull %0, i64 noundef %i.o, i32 noundef 0, ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %i.r = icmp eq i32 %i.c, 0                      ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 2 uses
  %.not78 = icmp eq ptr %i.t, null
  br i1 %.not78, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.ai

bb.h:                                             ; preds = %bb.g
  store ptr %i.t, ptr %2, align 8, !tbaa !32
  br label %bb.ai

bb.i:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %0, align 8, !tbaa !13
  %i.v = icmp eq ptr %i.u, @php_stream_stdio_ops
  br i1 %i.v, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @php_stream_stdio_ops, i64 48), align 8, !tbaa !33 ; 2 uses
  %.not79 = icmp eq ptr %i.w, null
  br i1 %.not79, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34
  %.not80 = icmp eq ptr %i.y, null
  br i1 %.not80, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35
  %.not81 = icmp eq ptr %i.aa, null
  br i1 %.not81, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ab = call i32 %i.w(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %2) #8
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = icmp eq ptr %2, null
  %or.cond5 = or i1 %i.ad, %i.ac
  br i1 %or.cond5, label %bb.ai, label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.old4 = icmp eq ptr %2, null
  br i1 %.old4, label %bb.ai, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !12
  %switch.tableidx = add i8 %i.af, -97            ; 2 uses
  %i.ag = icmp ult i8 %switch.tableidx, 23
  br i1 %i.ag, label %switch.lookup, label %bb.p

switch.lookup:                                    ; preds = %bb.o
  %i.ah = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._php_stream_cast, i64 %i.ah
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.p

bb.p:                                             ; preds = %switch.lookup, %bb.o
  %storemerge.i = phi i8 [ %switch.load, %switch.lookup ], [ 119, %bb.o ]
  store i8 %storemerge.i, ptr %i.b, align 1, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !12
  switch i8 %i.aj, label %.fold.split.i [
    i8 0, label %php_stream_mode_sanitize_fdopen_fopencookie.exit
    i8 98, label %bb.r
    i8 43, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  br label %bb.r

.fold.split.i:                                    ; preds = %bb.p
  br label %bb.r

bb.r:                                             ; preds = %.fold.split.i, %bb.q, %bb.p
  %.128.i = phi i32 [ 0, %bb.p ], [ 1, %bb.q ], [ 0, %.fold.split.i ] ; 3 uses
  %.126.i = phi i32 [ 1, %bb.p ], [ 0, %bb.q ], [ 0, %.fold.split.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !12
  switch i8 %i.al, label %.fold.split.1.i [
    i8 0, label %.critedge.i
    i8 98, label %bb.t
    i8 43, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  br label %bb.t

.fold.split.1.i:                                  ; preds = %bb.r
  br label %bb.t

bb.t:                                             ; preds = %.fold.split.1.i, %bb.s, %bb.r
  %.128.1.i = phi i32 [ %.128.i, %bb.r ], [ 1, %bb.s ], [ %.128.i, %.fold.split.1.i ] ; 2 uses
  %.126.1.i = phi i32 [ 1, %bb.r ], [ %.126.i, %bb.s ], [ %.126.i, %.fold.split.1.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 101
  %i.an = load i8, ptr %i.am, align 1, !tbaa !12
  switch i8 %i.an, label %.critedge.i [
    i8 43, label %bb.u
    i8 98, label %.critedge.thread41.i
  ]

bb.u:                                             ; preds = %bb.t
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.u, %bb.t, %bb.r
  %.027.lcssa.i = phi i32 [ 1, %bb.u ], [ %.128.1.i, %bb.t ], [ %.128.i, %bb.r ] ; 2 uses
  %.025.lcssa.i = phi i32 [ %.126.1.i, %bb.u ], [ %.126.1.i, %bb.t ], [ %.126.i, %bb.r ]
  %.not31.i = icmp eq i32 %.025.lcssa.i, 0
  br i1 %.not31.i, label %bb.v, label %.critedge.thread41.i

.critedge.thread41.i:                             ; preds = %.critedge.i, %bb.t
  %.027.lcssa45.i = phi i32 [ %.027.lcssa.i, %.critedge.i ], [ %.128.1.i, %bb.t ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 98, ptr %i.ao, align 1, !tbaa !12
  br label %bb.v

bb.v:                                             ; preds = %.critedge.thread41.i, %.critedge.i
  %.027.lcssa40.i = phi i32 [ %.027.lcssa45.i, %.critedge.thread41.i ], [ %.027.lcssa.i, %.critedge.i ]
  %.1.i = phi i32 [ 2, %.critedge.thread41.i ], [ 1, %.critedge.i ] ; 3 uses
  %.not32.i = icmp eq i32 %.027.lcssa40.i, 0
  br i1 %.not32.i, label %php_stream_mode_sanitize_fdopen_fopencookie.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ap = add nuw nsw i32 %.1.i, 1
  %i.aq = zext nneg i32 %.1.i to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aq
  store i8 43, ptr %i.ar, align 1, !tbaa !12
  br label %php_stream_mode_sanitize_fdopen_fopencookie.exit

php_stream_mode_sanitize_fdopen_fopencookie.exit: ; preds = %bb.p, %bb.v, %bb.w
  %.2.i = phi i32 [ %i.ap, %bb.w ], [ %.1.i, %bb.v ], [ 1, %bb.p ]
  %i.as = zext nneg i32 %.2.i to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.as
  store i8 0, ptr %i.at, align 1, !tbaa !12
  %i.au = call noalias ptr @fopencookie(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull byval(%struct._IO_cookie_io_functions_t) align 8 @stream_cookie_functions) #8 ; 2 uses
  store ptr %i.au, ptr %2, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %.not82 = icmp eq ptr %i.au, null
  br i1 %.not82, label %bb.z, label %bb.x

bb.x:                                             ; preds = %php_stream_mode_sanitize_fdopen_fopencookie.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 8
  %i.ax = and i16 %i.aw, -97
  %i.ay = or disjoint i16 %i.ax, 64
  store i16 %i.ay, ptr %i.av, align 8
  %i.az = call i64 @_php_stream_tell(ptr noundef nonnull %0) #8 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %bb.y, label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.bb = load ptr, ptr %2, align 8, !tbaa !36
  %i.bc = call i32 @fseek(ptr noundef %i.bb, i64 noundef %i.az, i32 noundef 0) ; 0 uses
  br label %bb.ai

bb.z:                                             ; preds = %php_stream_mode_sanitize_fdopen_fopencookie.exit
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str) #8
  br label %bb.ap

bb.aa:                                            ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !34
  %.not73 = icmp eq ptr %i.be, null
  br i1 %.not73, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !35
  %.not74 = icmp eq ptr %i.bg, null
  br i1 %.not74, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not77 = icmp eq i32 %3, 0
  br i1 %.not77, label %bb.ap, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.1) #8
  br label %bb.ap

bb.ae:                                            ; preds = %bb.ab
  %i.bh = load ptr, ptr %0, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !33 ; 2 uses
  %.not75 = icmp eq ptr %i.bj, null
  br i1 %.not75, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bk = call i32 %i.bj(ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef %2) #8
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.not76 = icmp eq i32 %3, 0
  br i1 %.not76, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bm = load ptr, ptr %0, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !37
  %i.bp = zext nneg i32 %i.c to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @_php_stream_cast.cast_names, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !38
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef %i.bo, ptr noundef %i.br) #8
  br label %bb.ap

bb.ai:                                            ; preds = %bb.x, %bb.y, %bb.af, %bb.n, %bb.m, %bb.g, %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !39
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !40
  %i.bw = sub nsw i64 %i.bt, %i.bv                ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  br i1 %i.bx, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bz = load i16, ptr %i.by, align 8
end_hunk_0
