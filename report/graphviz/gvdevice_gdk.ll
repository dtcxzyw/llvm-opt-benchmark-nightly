inline.NumInlined: 32
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gvdevice_engine_s = type { ptr, ptr, ptr }
%struct.pointf_s = type { double, double }
%struct.agxbuf = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i64, i64, [7 x i8], i8 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"bmp:cairo\00", align 1
@gdk_engine = internal global %struct.gvdevice_engine_s { ptr null, ptr @gdk_format, ptr null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"ico:cairo\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"jpe:cairo\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"jpeg:cairo\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"jpg:cairo\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"png:cairo\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"tif:cairo\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"tiff:cairo\00", align 1
@gvdevice_gdk_types = local_unnamed_addr global [9 x { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr }] [{ i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str, i32 6, [4 x i8] zeroinitializer, ptr @gdk_engine, ptr @device_features_gdk }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1, i32 6, [4 x i8] zeroinitializer, ptr @gdk_engine, ptr @device_features_gdk }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.2, i32 6, [4 x i8] zeroinitializer, ptr @gdk_engine, ptr @device_features_gdk }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.3, i32 6, [4 x i8] zeroinitializer, ptr @gdk_engine, ptr @device_features_gdk }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.4, i32 6, [4 x i8] zeroinitializer, ptr @gdk_engine, ptr @device_features_gdk }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.5, i32 6, [4 x i8] zeroinitializer, ptr @gdk_engine, ptr @device_features_gdk }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.6, i32 6, [4 x i8] zeroinitializer, ptr @gdk_engine, ptr @device_features_gdk }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.7, i32 6, [4 x i8] zeroinitializer, ptr @gdk_engine, ptr @device_features_gdk }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [4 x i8] c"bmp\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ico\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"tiff\00", align 1
@__const.gdk_format.format_strs = private unnamed_addr constant [5 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"%.0f\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"x-dpi\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"y-dpi\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@device_features_gdk = internal global { i32, [4 x i8], %struct.pointf_s, %struct.pointf_s, %struct.pointf_s } { i32 768, [4 x i8] zeroinitializer, %struct.pointf_s zeroinitializer, %struct.pointf_s zeroinitializer, %struct.pointf_s { double 9.600000e+01, double 9.600000e+01 } }, align 8

; Function Attrs: nounwind uwtable
define internal void @gdk_format(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.agxbuf, align 8             ; 15 uses
  %2 = alloca %struct.agxbuf, align 8             ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @__const.gdk_format.format_strs, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !33   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !34   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.k = icmp ne i32 %i.i, 0
  %i.l = icmp ne i32 %i.g, 0
  %or.cond.i = and i1 %i.l, %i.k
  br i1 %or.cond.i, label %bb.b, label %argb2rgba.exit

bb.b:                                             ; preds = %bb.a
  %3 = zext i32 %i.g to i64
  %4 = zext i32 %i.i to i64
  %5 = load ptr, ptr %i.j, align 8, !tbaa !35     ; 2 uses
  %flatten.tripcount.i = mul nuw i64 %4, %3       ; 3 uses
  %xtraiter = and i64 %flatten.tripcount.i, 3     ; 3 uses
  %6 = icmp ult i64 %flatten.tripcount.i, 4
  br i1 %6, label %.preheader.i.epil.preheader, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %unroll_iter = and i64 %flatten.tripcount.i, -4
  br label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i.new, %._crit_edge.i
  %.115.i = phi ptr [ %5, %._crit_edge.i ], [ %i.ab, %.preheader.i.new ] ; 10 uses
  %niter = phi i64 [ 0, %._crit_edge.i ], [ %niter.next.3, %.preheader.i.new ]
  %i.m = getelementptr inbounds nuw i8, ptr %.115.i, i64 2 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !36
  %i.o = load i8, ptr %.115.i, align 1, !tbaa !36
  store i8 %i.n, ptr %.115.i, align 1, !tbaa !36
  store i8 %i.o, ptr %i.m, align 1, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %.115.i, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.115.i, i64 6 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !36
  %i.s = load i8, ptr %i.p, align 1, !tbaa !36
  store i8 %i.r, ptr %i.p, align 1, !tbaa !36
  store i8 %i.s, ptr %i.q, align 1, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %.115.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.115.i, i64 10 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !36
  %i.w = load i8, ptr %i.t, align 1, !tbaa !36
  store i8 %i.v, ptr %i.t, align 1, !tbaa !36
  store i8 %i.w, ptr %i.u, align 1, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %.115.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.115.i, i64 14 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !36
  %i.aa = load i8, ptr %i.x, align 1, !tbaa !36
  store i8 %i.z, ptr %i.x, align 1, !tbaa !36
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %.115.i, i64 16 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %argb2rgba.exit.loopexit.unr-lcssa, label %.preheader.i.new, !llvm.loop !37

argb2rgba.exit.loopexit.unr-lcssa:                ; preds = %.preheader.i.new
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %argb2rgba.exit.loopexit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %argb2rgba.exit.loopexit.unr-lcssa, %bb.b
  %.017.i.epil.init = phi ptr [ %5, %bb.b ], [ %i.ab, %argb2rgba.exit.loopexit.unr-lcssa ]
  %lcmp.mod37 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.017.i.epil = phi ptr [ %.017.i.epil.init, %.preheader.i.epil.preheader ], [ %10, %.preheader.i.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter.next, %.preheader.i.epil ]
  %7 = getelementptr inbounds nuw i8, ptr %.017.i.epil, i64 2 ; 2 uses
  %8 = load i8, ptr %7, align 1, !tbaa !36
  %9 = load i8, ptr %.017.i.epil, align 1, !tbaa !36
  store i8 %8, ptr %.017.i.epil, align 1, !tbaa !36
  store i8 %9, ptr %7, align 1, !tbaa !36
  %10 = getelementptr inbounds nuw i8, ptr %.017.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %argb2rgba.exit.loopexit, label %.preheader.i.epil, !llvm.loop !39

argb2rgba.exit.loopexit:                          ; preds = %.preheader.i.epil, %argb2rgba.exit.loopexit.unr-lcssa
  %.pre33.a = load i32, ptr %i.f, align 8, !tbaa !33
  %.pre34 = load i32, ptr %i.h, align 4, !tbaa !34
  br label %argb2rgba.exit

argb2rgba.exit:                                   ; preds = %argb2rgba.exit.loopexit, %bb.a
  %i.ac = phi i32 [ %.pre34, %argb2rgba.exit.loopexit ], [ %i.i, %bb.a ]
  %i.ad = phi i32 [ %.pre33.a, %argb2rgba.exit.loopexit ], [ %i.g, %bb.a ] ; 2 uses
  %11 = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.ae = shl nsw i32 %i.ad, 2
  %i.af = tail call ptr @gdk_pixbuf_new_from_data(ptr noundef %11, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.ad, i32 noundef %i.ac, i32 noundef %i.ae, ptr noundef null, ptr noundef null) #14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !41
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %1, ptr nonnull poison, double noundef %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !42
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %2, ptr nonnull poison, double noundef %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 6 uses
  %.val.i = load i8, ptr %i.ak, align 1, !tbaa !36 ; 3 uses
  switch i8 %.val.i, label %agxblen.exit.i.i [
    i8 -1, label %bb.c
    i8 31, label %agxbclear.exit.thread.i
  ]

agxblen.exit.i.i:                                 ; preds = %argb2rgba.exit
  %i.al = zext i8 %.val.i to i64
  br label %agxbsizeof.exit.i.i

bb.c:                                             ; preds = %argb2rgba.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !36
  br label %agxbsizeof.exit.i.i

agxbsizeof.exit.i.i:                              ; preds = %bb.c, %agxblen.exit.i.i
  %.0.i20.i.i = phi i64 [ %i.an, %bb.c ], [ %i.al, %agxblen.exit.i.i ]
  %.0.i14.i.i = phi i64 [ %i.ap, %bb.c ], [ 31, %agxblen.exit.i.i ]
  %.not.i5.i = icmp ult i64 %.0.i20.i.i, %.0.i14.i.i
  br i1 %.not.i5.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %agxbsizeof.exit.i.i
  call fastcc void @agxbmore(ptr noundef nonnull %1, i64 noundef 1)
  %.val.i15.pre.i.i = load i8, ptr %i.ak, align 1, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %agxbsizeof.exit.i.i
  %.val.i6.pr.i = phi i8 [ %.val.i15.pre.i.i, %bb.d ], [ %.val.i, %agxbsizeof.exit.i.i ] ; 2 uses
  %.not.i16.i.i = icmp eq i8 %.val.i6.pr.i, -1
  br i1 %.not.i16.i.i, label %agxbputc.exit.i.thread, label %agxbputc.exit.i

agxbputc.exit.i.thread:                           ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.as = load ptr, ptr %1, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 0, ptr %i.at, align 1, !tbaa !36
  br label %bb.f

agxbputc.exit.i:                                  ; preds = %bb.e
  %i.au = zext i8 %.val.i6.pr.i to i64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  store i8 0, ptr %i.av, align 1, !tbaa !36
  %i.aw = load i8, ptr %i.ak, align 1, !tbaa !36
  %i.ax = add i8 %i.aw, 1                         ; 2 uses
  store i8 %i.ax, ptr %i.ak, align 1, !tbaa !36
  %i.ay = icmp eq i8 %i.ax, -1
  br i1 %i.ay, label %bb.f, label %agxbclear.exit.thread.i

agxbclear.exit.thread.i:                          ; preds = %agxbputc.exit.i, %argb2rgba.exit
  store i8 0, ptr %i.ak, align 1, !tbaa !36
  br label %agxbuse.exit

bb.f:                                             ; preds = %agxbputc.exit.i.thread, %agxbputc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !36
  %i.ba = load ptr, ptr %1, align 8, !tbaa !36
  br label %agxbuse.exit

agxbuse.exit:                                     ; preds = %agxbclear.exit.thread.i, %bb.f
  %i.bb = phi ptr [ %i.ba, %bb.f ], [ %1, %agxbclear.exit.thread.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 31 ; 6 uses
  %.val.i17 = load i8, ptr %i.bc, align 1, !tbaa !36 ; 3 uses
  switch i8 %.val.i17, label %agxblen.exit.i.i30 [
    i8 -1, label %bb.g
    i8 31, label %agxbclear.exit.thread.i18
  ]

agxblen.exit.i.i30:                               ; preds = %agxbuse.exit
  %i.bd = zext i8 %.val.i17 to i64
  br label %agxbsizeof.exit.i.i19

bb.g:                                             ; preds = %agxbuse.exit
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !36
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !36
  br label %agxbsizeof.exit.i.i19

agxbsizeof.exit.i.i19:                            ; preds = %bb.g, %agxblen.exit.i.i30
  %.0.i20.i.i20 = phi i64 [ %i.bf, %bb.g ], [ %i.bd, %agxblen.exit.i.i30 ]
  %.0.i14.i.i21 = phi i64 [ %i.bh, %bb.g ], [ 31, %agxblen.exit.i.i30 ]
  %.not.i5.i22 = icmp ult i64 %.0.i20.i.i20, %.0.i14.i.i21
  br i1 %.not.i5.i22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %agxbsizeof.exit.i.i19
  call fastcc void @agxbmore(ptr noundef nonnull %2, i64 noundef 1)
  %.val.i15.pre.i.i23 = load i8, ptr %i.bc, align 1, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %agxbsizeof.exit.i.i19
  %.val.i6.pr.i29 = phi i8 [ %.val.i15.pre.i.i23, %bb.h ], [ %.val.i17, %agxbsizeof.exit.i.i19 ] ; 2 uses
  %.not.i16.i.i25 = icmp eq i8 %.val.i6.pr.i29, -1
  br i1 %.not.i16.i.i25, label %agxbputc.exit.i26.thread, label %agxbputc.exit.i26

agxbputc.exit.i26.thread:                         ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !36
  %i.bk = load ptr, ptr %2, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store i8 0, ptr %i.bl, align 1, !tbaa !36
  br label %bb.j

agxbputc.exit.i26:                                ; preds = %bb.i
  %i.bm = zext i8 %.val.i6.pr.i29 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 %i.bm
  store i8 0, ptr %i.bn, align 1, !tbaa !36
  %i.bo = load i8, ptr %i.bc, align 1, !tbaa !36
  %i.bp = add i8 %i.bo, 1                         ; 2 uses
  store i8 %i.bp, ptr %i.bc, align 1, !tbaa !36
  %i.bq = icmp eq i8 %i.bp, -1
  br i1 %i.bq, label %bb.j, label %agxbclear.exit.thread.i18

agxbclear.exit.thread.i18:                        ; preds = %agxbputc.exit.i26, %agxbuse.exit
  store i8 0, ptr %i.bc, align 1, !tbaa !36
  br label %agxbuse.exit31

bb.j:                                             ; preds = %agxbputc.exit.i26.thread, %agxbputc.exit.i26
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.br, align 8, !tbaa !36
  %i.bs = load ptr, ptr %2, align 8, !tbaa !36
  br label %agxbuse.exit31

agxbuse.exit31:                                   ; preds = %agxbclear.exit.thread.i18, %bb.j
  %i.bt = phi ptr [ %i.bs, %bb.j ], [ %2, %agxbclear.exit.thread.i18 ]
  %i.bu = call i32 (ptr, ptr, ptr, ptr, ptr, ...) @gdk_pixbuf_save_to_callback(ptr noundef %i.af, ptr noundef nonnull @writer, ptr noundef nonnull %0, ptr noundef %i.e, ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef %i.bb, ptr noundef nonnull @.str.15, ptr noundef %i.bt, ptr noundef null) #14 ; 0 uses
  %.val16 = load i8, ptr %i.bc, align 1, !tbaa !36
  %i.bv = icmp eq i8 %.val16, -1
  br i1 %i.bv, label %bb.k, label %agxbfree.exit

bb.k:                                             ; preds = %agxbuse.exit31
  %.val15 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %.val15) #14
  br label %agxbfree.exit

agxbfree.exit:                                    ; preds = %agxbuse.exit31, %bb.k
  %.val14 = load i8, ptr %i.ak, align 1, !tbaa !36
  %i.bw = icmp eq i8 %.val14, -1
  br i1 %i.bw, label %bb.l, label %agxbfree.exit32

bb.l:                                             ; preds = %agxbfree.exit
  %.val = load ptr, ptr %1, align 8
  call void @free(ptr noundef %.val) #14
  br label %agxbfree.exit32

agxbfree.exit32:                                  ; preds = %agxbfree.exit, %bb.l
  call void @g_object_unref(ptr noundef %i.af) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @gdk_pixbuf_new_from_data(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @agxbprint(ptr nofree noundef nonnull captures(none) %0, ptr nofree readnone captures(none) %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.va_copy.p0(ptr nonnull %2, ptr nonnull %3)
  %i.b = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull %2) #14 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = icmp sgt i32 %i.b, -1
  %narrow.i = add nuw i32 %i.b, 1
  %i.d = zext i32 %narrow.i to i64                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %i.c, label %bb.b, label %vagxbprint.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 31         ; 5 uses
  %.val.i.i = load i8, ptr %i.e, align 1, !tbaa !36 ; 4 uses
  %.not.i.i = icmp eq i8 %.val.i.i, -1
  br i1 %.not.i.i, label %bb.c, label %agxbsizeof.exit.i

agxbsizeof.exit.i:                                ; preds = %bb.b
  %i.f = zext i8 %.val.i.i to i64
  br label %agxblen.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !36
  br label %agxblen.exit.i

agxblen.exit.i:                                   ; preds = %bb.c, %agxbsizeof.exit.i
  %.0.i2.i = phi i64 [ 31, %agxbsizeof.exit.i ], [ %i.h, %bb.c ]
  %.0.i42.i = phi i64 [ %i.f, %agxbsizeof.exit.i ], [ %i.j, %bb.c ]
  %i.k = sub i64 %.0.i2.i, %.0.i42.i              ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %agxblen.exit.i
  %i.m = sub nuw nsw i64 %i.d, %i.k               ; 2 uses
  %i.n = icmp ne i8 %.val.i.i, -1
  %i.o = icmp eq i64 %i.m, 1
  %or.cond.i = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @agxbmore(ptr noundef nonnull %0, i64 noundef %i.m)
  %.val.i.i.pre.i = load i8, ptr %i.e, align 1, !tbaa !36
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %agxblen.exit.i
  %.val.i.i.i = phi i8 [ %.val.i.i, %agxblen.exit.i ], [ %.val.i.i.pre.i, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %.not.i.i.i = icmp eq i8 %.val.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.h, label %agxblen.exit.thread.i.i

agxblen.exit.thread.i.i:                          ; preds = %bb.g
  %i.p = zext i8 %.val.i.i.i to i64
  br label %agxbnext.exit.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36
  %i.s = load ptr, ptr %0, align 8, !tbaa !36
  br label %agxbnext.exit.i

agxbnext.exit.i:                                  ; preds = %bb.h, %agxblen.exit.thread.i.i
  %.0.i6.i.i = phi i64 [ %i.r, %bb.h ], [ %i.p, %agxblen.exit.thread.i.i ]
  %.pn.i.i = phi ptr [ %i.s, %bb.h ], [ %0, %agxblen.exit.thread.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.0.i6.i.i
  br label %bb.i

bb.i:                                             ; preds = %agxbnext.exit.i, %bb.f
  %.1366.i = phi i1 [ false, %agxbnext.exit.i ], [ true, %bb.f ]
  %i.u = phi ptr [ %i.t, %agxbnext.exit.i ], [ %i.a, %bb.f ]
  %i.v = call i32 @vsnprintf(ptr noundef %i.u, i64 noundef %i.d, ptr noundef nonnull @.str.13, ptr noundef nonnull %3) #14 ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.val.i = load i8, ptr %i.e, align 1, !tbaa !36 ; 3 uses
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.1366.i, label %agxbnext.exit48.i, label %bb.l

agxbnext.exit48.i:                                ; preds = %bb.k
  %i.x = zext i8 %.val.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = zext nneg i32 %i.v to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 16 %i.a, i64 %i.z, i1 false)
  %.pre.i = load i8, ptr %i.e, align 1, !tbaa !36
  br label %bb.l

bb.l:                                             ; preds = %agxbnext.exit48.i, %bb.k
  %i.aa = phi i8 [ %.pre.i, %agxbnext.exit48.i ], [ %.val.i, %bb.k ]
  %i.ab = trunc i32 %i.v to i8
  %i.ac = add i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.e, align 1, !tbaa !36
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ad = zext nneg i32 %i.v to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !36
  %i.ag = add i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %vagxbprint.exit

vagxbprint.exit:                                  ; preds = %bb.a, %bb.n
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

declare i32 @gdk_pixbuf_save_to_callback(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @writer(ptr noundef %0, i64 noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i64 @gvwrite(ptr noundef %3, ptr noundef %0, i64 noundef %1) #14
  %i.b = icmp eq i64 %1, %i.a
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

declare void @g_object_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #5

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @agxbmore(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 -2147483646, 2147483649) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 31         ; 2 uses
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !36 ; 2 uses
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %agxbsizeof.exit, label %bb.g

agxbsizeof.exit:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !36
  %.fr = freeze i64 %i.c                          ; 6 uses
  %i.d = icmp eq i64 %.fr, 0
  %i.e = shl i64 %.fr, 1
  %spec.select44 = select i1 %i.d, i64 8192, i64 %i.e
  %i.f = add i64 %.fr, %1
  %spec.select33 = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %spec.select44) ; 7 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.h = icmp eq i64 %spec.select33, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %agxbsizeof.exit
  tail call void @free(ptr noundef %i.g) #14
  br label %gv_recalloc.exit

bb.c:                                             ; preds = %agxbsizeof.exit
  %i.i = tail call ptr @realloc(ptr noundef %i.g, i64 noundef %spec.select33) #15 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !43
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.17, i64 noundef %spec.select33) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ugt i64 %spec.select33, %.fr
  br i1 %i.m, label %bb.f, label %gv_recalloc.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %.fr
  %i.o = sub nuw i64 %spec.select33, %.fr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %gv_recalloc.exit

bb.g:                                             ; preds = %bb.a
  %i.p = add nsw i64 %1, 31
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.p, i64 62) ; 3 uses
  %i.q = tail call noalias ptr @calloc(i64 noundef %spec.select, i64 noundef 1) #18 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %gv_calloc.exit

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !43
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.17, i64 noundef %spec.select) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_calloc.exit:                                   ; preds = %bb.g
  %i.u = zext i8 %.val.i to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %0, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !36
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.f, %bb.e, %bb.b, %gv_calloc.exit
  %spec.select3641 = phi i64 [ %spec.select, %gv_calloc.exit ], [ 0, %bb.b ], [ %spec.select33, %bb.e ], [ %spec.select33, %bb.f ]
  %.0 = phi ptr [ %i.q, %gv_calloc.exit ], [ null, %bb.b ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  store ptr %.0, ptr %0, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select3641, ptr %i.w, align 8, !tbaa !36
  store i8 -1, ptr %i.a, align 1, !tbaa !36
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #7 {
bb.a:
  tail call void @exit(i32 noundef 1) #19
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

declare i64 @gvwrite(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(1) }
attributes #16 = { cold nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { cold noreturn nounwind }

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
!8 = !{!9, !5, i64 160}
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
!32 = !{!15, !15, i64 0}
!33 = !{!9, !5, i64 576}
!34 = !{!9, !5, i64 580}
!35 = !{!9, !15, i64 272}
!36 = !{!6, !6, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!9, !26, i64 560}
!42 = !{!9, !26, i64 568}
!43 = !{!16, !16, i64 0}
end_hunk_0
