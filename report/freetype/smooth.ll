Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/smooth?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FT_Module_Class_ = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr }
%struct.gray_TWorker_ = type { %struct.FT_BBox_, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, %struct.FT_Outline_, %struct.TPixmap_, ptr, ptr }
%struct.FT_BBox_ = type { i64, i64, i64, i64 }
%struct.FT_Outline_ = type { i16, i16, ptr, ptr, ptr, i32 }
%struct.TPixmap_ = type { ptr, i32 }
%struct.FT_Raster_Params_ = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.FT_BBox_ }
%struct.FT_Span_ = type { i16, i16, i8 }
%struct.TCell_ = type { i32, i32, i32, ptr }
%struct.FT_Vector_ = type { i64, i64 }
%struct.TOrigin_ = type { ptr, i32, [5 x i8] }

@ft_grays_raster = hidden constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { i32 1869968492, [4 x i8] zeroinitializer, ptr @gray_raster_new, ptr @gray_raster_reset, ptr @gray_raster_set_mode, ptr @gray_raster_render, ptr @gray_raster_done }, align 8
@.str = private unnamed_addr constant [7 x i8] c"smooth\00", align 1
@ft_smooth_renderer_class = hidden local_unnamed_addr constant { %struct.FT_Module_Class_, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { %struct.FT_Module_Class_ { i64 2, i64 128, ptr @.str, i64 65536, i64 131072, ptr null, ptr @ft_smooth_init, ptr null, ptr null }, i32 1869968492, [4 x i8] zeroinitializer, ptr @ft_smooth_render, ptr @ft_smooth_transform, ptr @ft_smooth_get_cbox, ptr @ft_smooth_set_mode, ptr @ft_grays_raster }, align 8
@func_interface = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], i64 } { ptr @gray_move_to, ptr @gray_line_to, ptr @gray_conic_to, ptr @gray_cubic_to, i32 0, [4 x i8] zeroinitializer, i64 0 }, align 8

; Function Attrs: nounwind uwtable
define internal i32 @gray_raster_new(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call ptr @ft_mem_alloc(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.b, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @gray_raster_reset(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @gray_raster_set_mode(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gray_raster_render(ptr nofree noundef readnone captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca [1 x %struct.gray_TWorker_], align 16 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !19     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %3 = and i32 %i.e, 1
  %.not39 = icmp eq i32 %3, 0
  br i1 %.not39, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not40 = icmp eq ptr %i.b, null
  br i1 %.not40, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !21   ; 2 uses
  %i.h = zext i16 %i.g to i32
  %i.i = icmp eq i16 %i.g, 0
  br i1 %i.i, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i16, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.k = zext i16 %i.j to i64
  %i.l = icmp eq i16 %i.j, 0
  br i1 %i.l, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %.not41 = icmp eq ptr %i.n, null
  br i1 %.not41, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29
  %.not42 = icmp eq ptr %i.p, null
  br i1 %.not42, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = add nuw nsw i64 %i.k, 4294967295
  %i.r = and i64 %i.q, 4294967295
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !30
  %i.u = zext i16 %i.t to i32
  %i.v = add nuw nsw i32 %i.u, 1
  %.not43 = icmp eq i32 %i.v, %i.h
  br i1 %.not43, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !tbaa.struct !31
  %i.x = and i32 %i.e, 2
  %.not44 = icmp eq i32 %i.x, 0
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %.not49 = icmp eq ptr %i.z, null
  br i1 %.not49, label %bb.r, label %bb.o

bb.k:                                             ; preds = %bb.i
  %.not45 = icmp eq ptr %i.c, null
  br i1 %.not45, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !36 ; 2 uses
  %.not46 = icmp eq i32 %i.ab, 0
  br i1 %.not46, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = load i32, ptr %i.c, align 8, !tbaa !38  ; 3 uses
  %.not47 = icmp eq i32 %i.ac, 0
  br i1 %.not47, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %.not48 = icmp eq ptr %i.ae, null
  br i1 %.not48, label %bb.r, label %.thread

.thread:                                          ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !40 ; 3 uses
  %i.ah = icmp slt i32 %i.ag, 0
  %i.ai = add i32 %i.ac, -1
  %i.aj = mul i32 %i.ag, %i.ai
  %narrow = select i1 %i.ah, i32 0, i32 %i.aj
  %.sink.idx = zext i32 %narrow to i64
  %.sink = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sink.idx
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 144
  store ptr %.sink, ptr %i.ak, align 16, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i32 %i.ag, ptr %i.al, align 8, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.an = zext i32 %i.ab to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  store i64 %i.an, ptr %i.ao, align 16, !tbaa !48
  %i.ap = zext i32 %i.ac to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !49
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 160
  store ptr %i.z, ptr %i.ar, align 16, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !51
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 168
  store ptr %i.at, ptr %i.au, align 8, !tbaa !52
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 32, i1 false), !tbaa.struct !53
  %.pre = load i64, ptr %2, align 16, !tbaa !55
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre52 = load i64, ptr %.phi.trans.insert, align 16, !tbaa !48
  %i.aw = icmp slt i64 %.pre, %.pre52
  br i1 %i.aw, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.thread, %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !56
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !49
  %.not51 = icmp slt i64 %i.ay, %i.ba
  br i1 %.not51, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bb = call fastcc i32 @gray_convert_glyph(ptr noundef %2)
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.n, %bb.l, %bb.m, %bb.k, %bb.j, %bb.h, %bb.f, %bb.g, %bb.d, %bb.e, %bb.c, %bb.b, %bb.a, %bb.q
  %.0 = phi i32 [ 20, %bb.c ], [ 20, %bb.f ], [ 6, %bb.n ], [ %i.bb, %bb.q ], [ 20, %bb.h ], [ 0, %bb.l ], [ 6, %bb.k ], [ 0, %bb.j ], [ 0, %bb.d ], [ 19, %bb.b ], [ 6, %bb.a ], [ 0, %bb.e ], [ 20, %bb.g ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @gray_raster_done(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  tail call void @ft_mem_free(ptr noundef %i.a, ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ft_smooth_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  store i64 -21, ptr %i.c, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store i64 21, ptr %i.e, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i64 0, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76
  tail call void %i.l(ptr noundef %i.n, ptr noundef null, i64 noundef 0) #9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @ft_smooth_render(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %4 = alloca %struct.FT_Raster_Params_, align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !86
  %.not = icmp eq i32 %i.g, %i.i
  br i1 %.not, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %.thread.sink.split [
    i32 4, label %bb.c
    i32 3, label %bb.c
    i32 1, label %bb.c
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !88
  %5 = and i32 %i.m, 1
  %.not79 = icmp eq i32 %5, 0
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  tail call void @ft_mem_free(ptr noundef %i.e, ptr noundef %i.o) #9
  store ptr null, ptr %i.n, align 8, !tbaa !39
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !88
  %i.s = and i32 %i.r, -2
  store i32 %i.s, ptr %i.q, align 8, !tbaa !88
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call zeroext i8 @ft_glyphslot_preset_bitmap(ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3) #9
  %.not80 = icmp eq i8 %i.t, 0
  br i1 %.not80, label %bb.f, label %.thread.sink.split

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %.not81 = icmp eq i32 %i.u, 0
  br i1 %.not81, label %thread-pre-split.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.w = load i32, ptr %i.v, align 8, !tbaa !40   ; 2 uses
  %.not82 = icmp eq i32 %i.w, 0
  br i1 %.not82, label %thread-pre-split.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = sext i32 %i.w to i64
  %i.y = zext i32 %i.u to i64
  %i.z = call ptr @ft_mem_realloc(ptr noundef %i.e, i64 noundef %i.x, i64 noundef 0, i64 noundef %i.y, ptr noundef null, ptr noundef nonnull %i.a) #9
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !39
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !8
  %.not83 = icmp eq i32 %i.ab, 0
  br i1 %.not83, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !88
  %i.af = or i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !88
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !92
  %.neg = mul i32 %i.ah, -64                      ; 2 uses
  %i.ai = sext i32 %.neg to i64                   ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !93
  %.neg84 = mul i32 %i.ak, -64
  %i.al = sext i32 %.neg84 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 178
  %i.an = load i8, ptr %i.am, align 2, !tbaa !94
  %i.ao = icmp eq i8 %i.an, 6
  %i.ap = load i32, ptr %i.c, align 8, !tbaa !38
  %i.aq = shl nsw i32 %i.ap, 6                    ; 2 uses
  %i.ar = sdiv i32 %i.aq, 3
  %.pn.in = select i1 %i.ao, i32 %i.ar, i32 %i.aq
  %.pn = sext i32 %.pn.in to i64
  %.0 = add nsw i64 %.pn, %i.al                   ; 4 uses
  %i.as = icmp ne i32 %.neg, 0
  %i.at = icmp ne i64 %.0, 0
  %or.cond7 = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @FT_Outline_Translate(ptr noundef nonnull %i.b, i64 noundef %i.ai, i64 noundef %.0) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %or.cond9 = icmp samesign ult i32 %2, 2
  br i1 %or.cond9, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.av = load i32, ptr %i.au, align 8, !tbaa !95
  %i.aw = and i32 %i.av, 64
  %.not85 = icmp eq i32 %i.aw, 0
  br i1 %.not85, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = call fastcc i32 @ft_smooth_raster_overlap(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  store i32 %i.ax, ptr %i.a, align 4, !tbaa !8
  br label %thread-pre-split

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %i.c, ptr %4, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.ay, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %i.az, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !96
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !76
  %i.be = call i32 %i.bb(ptr noundef %i.bd, ptr noundef nonnull %4) #9 ; 2 uses
  store i32 %i.be, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %thread-pre-split

bb.o:                                             ; preds = %bb.k
  switch i32 %2, label %.thread-pre-split_crit_edge [
    i32 3, label %bb.p
    i32 4, label %bb.q
  ]

.thread-pre-split_crit_edge:                      ; preds = %bb.o
  %.pr.pre = load i32, ptr %i.a, align 4, !tbaa !8
  br label %thread-pre-split

bb.p:                                             ; preds = %bb.o
  %i.bf = call fastcc i32 @ft_smooth_raster_lcd(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !8
  br label %thread-pre-split

bb.q:                                             ; preds = %bb.o
  %i.bg = call fastcc i32 @ft_smooth_raster_lcdv(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %.thread-pre-split_crit_edge, %bb.n, %bb.m, %bb.q, %bb.p
  %i.bh = phi i32 [ %i.bf, %bb.p ], [ %i.be, %bb.n ], [ %i.ax, %bb.m ], [ %i.bg, %bb.q ], [ %.pr.pre, %.thread-pre-split_crit_edge ]
  %.not86 = icmp eq i32 %i.bh, 0
  br i1 %.not86, label %thread-pre-split.thread, label %.thread

thread-pre-split.thread:                          ; preds = %bb.g, %bb.f, %thread-pre-split
  %.1103 = phi i64 [ %.0, %thread-pre-split ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.075102 = phi i64 [ %i.ai, %thread-pre-split ], [ 0, %bb.f ], [ 0, %bb.g ]
  store i32 1651078259, ptr %i.f, align 8, !tbaa !78
  br label %bb.s

.thread.sink.split:                               ; preds = %bb.e, %bb.b, %bb.a
  %.sink = phi i32 [ 19, %bb.b ], [ 6, %bb.a ], [ 98, %bb.e ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.h, %thread-pre-split
  %.194 = phi i64 [ %.0, %thread-pre-split ], [ 0, %bb.h ], [ 0, %.thread.sink.split ] ; 2 uses
  %.07592 = phi i64 [ %i.ai, %thread-pre-split ], [ 0, %bb.h ], [ 0, %.thread.sink.split ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !87
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !88
  %6 = and i32 %i.bl, 1
  %.not87 = icmp eq i32 %6, 0
  br i1 %.not87, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !39
  call void @ft_mem_free(ptr noundef %i.e, ptr noundef %i.bn) #9
  store ptr null, ptr %i.bm, align 8, !tbaa !39
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !87
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !88
  %i.br = and i32 %i.bq, -2
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !88
  br label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r, %thread-pre-split.thread
  %.193 = phi i64 [ %.194, %.thread ], [ %.194, %bb.r ], [ %.1103, %thread-pre-split.thread ] ; 2 uses
  %.07591 = phi i64 [ %.07592, %.thread ], [ %.07592, %bb.r ], [ %.075102, %thread-pre-split.thread ] ; 2 uses
  %i.bs = icmp ne i64 %.07591, 0
  %i.bt = icmp ne i64 %.193, 0
  %or.cond11 = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond11, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bu = sub nsw i64 0, %.07591
  %i.bv = sub nsw i64 0, %.193
  call void @FT_Outline_Translate(ptr noundef nonnull %i.b, i64 noundef %i.bu, i64 noundef %i.bv) #9
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bw = load i32, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.bw
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 7) i32 @ft_smooth_transform(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !86
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not11 = icmp eq ptr %2, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @FT_Outline_Transform(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not12 = icmp eq ptr %3, null
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.g = load i64, ptr %3, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !68
  tail call void @FT_Outline_Translate(ptr noundef nonnull %i.f, i64 noundef %i.g, i64 noundef %i.i) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.e
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 6, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ft_smooth_get_cbox(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef initializes((0, 32)) %2) #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !86
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @FT_Outline_Get_CBox(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ft_smooth_set_mode(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.i = tail call i32 %i.f(ptr noundef %i.h, i64 noundef %1, ptr noundef %2) #9
  ret i32 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @gray_convert_glyph(ptr noundef nonnull initializes((72, 88)) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca [16 x %struct.FT_Span_], align 16   ; 8 uses
  %2 = alloca [682 x %struct.TCell_], align 16    ; 8 uses
  %i.a = alloca [32 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !56   ; 3 uses
  %i.f = sub nsw i64 %i.c, %i.e                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16344 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !98
  store i32 2147483647, ptr %i.g, align 8, !tbaa !99
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16352
  store i32 0, ptr %i.i, align 16, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16348
  store i32 0, ptr %i.j, align 4, !tbaa !102
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16360
  store ptr null, ptr %i.k, align 8, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store ptr %2, ptr %i.l, align 8, !tbaa !104
  %i.m = icmp ugt i64 %i.f, 85
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = add i64 %i.f, 84
  %i.o = udiv i64 %i.n, 85                        ; 2 uses
  %i.p = add i64 %i.f, -1
  %i.q = add i64 %i.p, %i.o
  %i.r = udiv i64 %i.q, %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.081 = phi i64 [ %i.r, %bb.b ], [ %i.f, %bb.a ]
  %sext = shl i64 %i.e, 32
  %i.s = ashr exact i64 %sext, 32
  %i.t = icmp sgt i64 %i.c, %i.s
  br i1 %i.t, label %.lr.ph118, label %.thread

.lr.ph118:                                        ; preds = %bb.c
  %i.u = trunc i64 %i.e to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.w = trunc i64 %.081 to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph118, %bb.at
  %i.am = phi i64 [ %i.c, %.lr.ph118 ], [ %i.ib, %bb.at ]
  %i.an = phi i1 [ true, %.lr.ph118 ], [ false, %bb.at ]
  %.080116 = phi i32 [ %i.u, %.lr.ph118 ], [ %i.ao, %bb.at ] ; 3 uses
  store i32 %.080116, ptr %i.v, align 8, !tbaa !105
  %i.ao = add i32 %.080116, %i.w                  ; 2 uses
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = call i64 @llvm.smin.i64(i64 %i.am, i64 %i.ap)
  %i.ar = trunc nsw i64 %i.aq to i32              ; 2 uses
  store i32 %i.ar, ptr %i.x, align 4, !tbaa !106
  %i.as = sub nsw i32 %i.ar, %.080116
  store i32 %i.as, ptr %i.y, align 8, !tbaa !107
  %i.at = load i64, ptr %0, align 8, !tbaa !55
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %i.z, align 4, !tbaa !8
  %i.av = load i64, ptr %i.aa, align 8, !tbaa !48
  %i.aw = trunc i64 %i.av to i32
  store i32 %i.aw, ptr %i.a, align 16, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.as, %bb.d
  %.078 = phi ptr [ %i.a, %bb.d ], [ %.179, %bb.as ] ; 5 uses
  %.177 = phi i1 [ %i.an, %bb.d ], [ false, %bb.as ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.078, i64 4 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
  store i32 %i.ay, ptr %i.ab, align 8, !tbaa !108
  %i.az = load i32, ptr %.078, align 4, !tbaa !8
  store i32 %i.az, ptr %i.ac, align 4, !tbaa !109
  %i.ba = load i32, ptr %i.y, align 8, !tbaa !107 ; 4 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  %.pre127 = load ptr, ptr %i.h, align 8, !tbaa !98 ; 3 uses
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.bc = load ptr, ptr %i.l, align 8, !tbaa !104 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ba to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.ba, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre127, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.bd, align 8, !tbaa !110
  store <2 x ptr> %broadcast.splat, ptr %i.be, align 8, !tbaa !110
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  store ptr %.pre127, ptr %i.bg, align 8, !tbaa !110
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !115

._crit_edge.loopexit:                             ; preds = %scalar.ph, %middle.block
  %.pre126 = load ptr, ptr %i.h, align 8, !tbaa !98
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.bh = phi ptr [ %.pre126, %._crit_edge.loopexit ], [ %.pre127, %bb.e ]
  %i.bi = sext i32 %i.ba to i64
  %i.bj = shl nsw i64 %i.bi, 3
  %i.bk = add nsw i64 %i.bj, 16
  %i.bl = udiv i64 %i.bk, 24
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.bl
  store ptr %i.bm, ptr %i.ad, align 8, !tbaa !116
  store ptr %i.bh, ptr %i.ae, align 8, !tbaa !117
  store i32 0, ptr %i.af, align 4, !tbaa !118
  br i1 %.177, label %.thread.i.a, label %bb.f

.thread.i.a:                                      ; preds = %._crit_edge
  %i.bn = call i32 @FT_Outline_Decompose(ptr noundef nonnull %i.ag, ptr noundef nonnull @func_interface, ptr noundef nonnull %0) #9
  br label %gray_convert_glyph_inner.exit

bb.f:                                             ; preds = %._crit_edge
  call void @FT_Trace_Disable() #9
  %i.bo = call i32 @FT_Outline_Decompose(ptr noundef nonnull %i.ag, ptr noundef nonnull @func_interface, ptr noundef nonnull %0) #9
  call void @FT_Trace_Enable() #9
  br label %gray_convert_glyph_inner.exit

gray_convert_glyph_inner.exit:                    ; preds = %.thread.i.a, %bb.f
  %i.bp = phi i32 [ %i.bn, %.thread.i.a ], [ %i.bo, %bb.f ] ; 3 uses
  switch i32 %i.bp, label %.thread [
    i32 0, label %bb.g
    i32 98, label %bb.aq
  ]

bb.g:                                             ; preds = %gray_convert_glyph_inner.exit
  %i.bq = load ptr, ptr %i.ah, align 8, !tbaa !50
  %.not91 = icmp eq ptr %i.bq, null
  %i.br = load i32, ptr %i.ai, align 8, !tbaa !119
  %i.bs = and i32 %i.br, 2
  %.not.i96 = icmp eq i32 %i.bs, 0                ; 7 uses
  %i.bt = select i1 %.not.i96, i32 -2147483648, i32 256 ; 6 uses
  br i1 %.not91, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.bu = load i32, ptr %i.v, align 8, !tbaa !105 ; 2 uses
  %i.bv = load i32, ptr %i.x, align 4, !tbaa !106
  %i.bw = icmp slt i32 %i.bu, %i.bv
  br i1 %i.bw, label %.lr.ph115.i, label %gray_sweep_direct.exit

.lr.ph115.i:                                      ; preds = %bb.h, %.thread.i95
  %.079113.i = phi i32 [ %i.er, %.thread.i95 ], [ %i.bu, %bb.h ] ; 5 uses
  %i.bx = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.by = load i32, ptr %i.v, align 8, !tbaa !105
  %i.bz = sub nsw i32 %.079113.i, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ca
  %.077105.i = load ptr, ptr %i.cb, align 8, !tbaa !110 ; 2 uses
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !98
  %.not91106.i = icmp eq ptr %.077105.i, %i.cc
  br i1 %.not91106.i, label %.thread.i95, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph115.i
  %i.cd = load i32, ptr %i.ab, align 8, !tbaa !108
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.o
  %.077110.i = phi ptr [ %.077.i, %bb.o ], [ %.077105.i, %.lr.ph.i.preheader ] ; 6 uses
  %.0109.i = phi i32 [ %i.da, %bb.o ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.076108.i = phi i32 [ %i.dw, %bb.o ], [ %i.cd, %.lr.ph.i.preheader ] ; 3 uses
  %.1107.i = phi i32 [ %.3.i, %bb.o ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.not95.i = icmp ne i32 %.0109.i, 0
  %.pre118.pre119.i = load i32, ptr %.077110.i, align 8, !tbaa !99 ; 4 uses
  %i.ce = icmp sgt i32 %.pre118.pre119.i, %.076108.i
  %or.cond.i = select i1 %.not95.i, i1 %i.ce, i1 false
  br i1 %or.cond.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i
  %i.cf = ashr exact i32 %.0109.i, 9              ; 2 uses
  %i.cg = and i32 %i.cf, %i.bt
  %.not96.i = icmp ne i32 %i.cg, 0
  %i.ch = sext i1 %.not96.i to i32
  %spec.select.i = xor i32 %i.cf, %i.ch           ; 2 uses
  %i.ci = icmp sgt i32 %spec.select.i, 255
  %i.cj = select i1 %i.ci, i1 %.not.i96, i1 false
  %i.ck = trunc i32 %spec.select.i to i8
  %i.cl = select i1 %i.cj, i8 -1, i8 %i.ck
  %i.cm = sext i32 %.1107.i to i64
  %i.cn = getelementptr inbounds [6 x i8], ptr %1, i64 %i.cm ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store i8 %i.cl, ptr %i.co, align 2, !tbaa !120
  %i.cp = trunc i32 %.076108.i to i16
  store i16 %i.cp, ptr %i.cn, align 2, !tbaa !122
  %i.cq = sub nsw i32 %.pre118.pre119.i, %.076108.i
  %i.cr = trunc i32 %i.cq to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !123
  %i.ct = add nsw i32 %.1107.i, 1                 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 16
  br i1 %i.cu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cv = load ptr, ptr %i.ah, align 8, !tbaa !50
  %i.cw = load ptr, ptr %i.aj, align 8, !tbaa !52
  call void %i.cv(i32 noundef %.079113.i, i32 noundef 16, ptr noundef nonnull %1, ptr noundef %i.cw) #9, !inline_history !124
  %.pre118.pre.i = load i32, ptr %.077110.i, align 8, !tbaa !99
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph.i
  %.pre118.i = phi i32 [ %.pre118.pre.i, %bb.j ], [ %.pre118.pre119.i, %bb.i ], [ %.pre118.pre119.i, %.lr.ph.i ] ; 5 uses
  %.2.i = phi i32 [ 0, %bb.j ], [ %i.ct, %bb.i ], [ %.1107.i, %.lr.ph.i ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.077110.i, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !102
  %i.cz = shl nsw i32 %i.cy, 9
  %i.da = add nsw i32 %i.cz, %.0109.i             ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.077110.i, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !101 ; 2 uses
  %i.dd = sub nsw i32 %i.da, %i.dc
  %.not97.i = icmp eq i32 %i.da, %i.dc
  br i1 %.not97.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.de = load i32, ptr %i.ab, align 8, !tbaa !108
  %.not98.i = icmp slt i32 %.pre118.i, %i.de
  br i1 %.not98.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.df = ashr i32 %i.dd, 9                       ; 2 uses
  %i.dg = and i32 %i.df, %i.bt
  %.not99.i = icmp ne i32 %i.dg, 0
  %i.dh = sext i1 %.not99.i to i32
  %spec.select101.i = xor i32 %i.df, %i.dh        ; 2 uses
  %i.di = icmp sgt i32 %spec.select101.i, 255
  %i.dj = select i1 %i.di, i1 %.not.i96, i1 false
  %i.dk = trunc i32 %spec.select101.i to i8
  %i.dl = select i1 %i.dj, i8 -1, i8 %i.dk
  %i.dm = sext i32 %.2.i to i64
  %i.dn = getelementptr inbounds [6 x i8], ptr %1, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i8 %i.dl, ptr %i.do, align 2, !tbaa !120
  %i.dp = trunc i32 %.pre118.i to i16
  store i16 %i.dp, ptr %i.dn, align 2, !tbaa !122
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store i16 1, ptr %i.dq, align 2, !tbaa !123
  %i.dr = add nsw i32 %.2.i, 1                    ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 16
  br i1 %i.ds, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dt = load ptr, ptr %i.ah, align 8, !tbaa !50
  %i.du = load ptr, ptr %i.aj, align 8, !tbaa !52
  call void %i.dt(i32 noundef %.079113.i, i32 noundef 16, ptr noundef nonnull %1, ptr noundef %i.du) #9, !inline_history !124
  %.pre.i = load i32, ptr %.077110.i, align 8, !tbaa !99
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.dv = phi i32 [ %.pre.i, %bb.n ], [ %.pre118.i, %bb.m ], [ %.pre118.i, %bb.l ], [ %.pre118.i, %bb.k ]
  %.3.i = phi i32 [ 0, %bb.n ], [ %i.dr, %bb.m ], [ %.2.i, %bb.l ], [ %.2.i, %bb.k ] ; 4 uses
  %i.dw = add nsw i32 %i.dv, 1                    ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.077110.i, i64 16
  %.077.i = load ptr, ptr %i.dx, align 8, !tbaa !110 ; 2 uses
  %i.dy = load ptr, ptr %i.h, align 8, !tbaa !98
  %.not91.i = icmp eq ptr %.077.i, %i.dy
  br i1 %.not91.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !125

._crit_edge.i:                                    ; preds = %bb.o
  %.not92.i = icmp eq i32 %i.da, 0
  br i1 %.not92.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.dz = ashr exact i32 %i.da, 9                 ; 2 uses
  %i.ea = and i32 %i.dz, %i.bt
  %.not93.i = icmp ne i32 %i.ea, 0
  %i.eb = sext i1 %.not93.i to i32
  %spec.select103.i = xor i32 %i.dz, %i.eb        ; 2 uses
  %i.ec = icmp sgt i32 %spec.select103.i, 255
  %i.ed = select i1 %i.ec, i1 %.not.i96, i1 false
  %i.ee = trunc i32 %spec.select103.i to i8
  %i.ef = select i1 %i.ed, i8 -1, i8 %i.ee
  %i.eg = sext i32 %.3.i to i64
  %i.eh = getelementptr inbounds [6 x i8], ptr %1, i64 %i.eg ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  store i8 %i.ef, ptr %i.ei, align 2, !tbaa !120
  %i.ej = trunc i32 %i.dw to i16
  store i16 %i.ej, ptr %i.eh, align 2, !tbaa !122
  %i.ek = load i32, ptr %i.ac, align 4, !tbaa !109
  %i.el = sub nsw i32 %i.ek, %i.dw
  %i.em = trunc i32 %i.el to i16
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  store i16 %i.em, ptr %i.en, align 2, !tbaa !123
  %i.eo = add nsw i32 %.3.i, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i
  %.4.i = phi i32 [ %i.eo, %bb.p ], [ %.3.i, %._crit_edge.i ] ; 2 uses
  %.not94.i = icmp eq i32 %.4.i, 0
  br i1 %.not94.i, label %.thread.i95, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ep = load ptr, ptr %i.ah, align 8, !tbaa !50
  %i.eq = load ptr, ptr %i.aj, align 8, !tbaa !52
  call void %i.ep(i32 noundef %.079113.i, i32 noundef %.4.i, ptr noundef nonnull %1, ptr noundef %i.eq) #9, !inline_history !124
  br label %.thread.i95

.thread.i95:                                      ; preds = %bb.r, %bb.q, %.lr.ph115.i
  %i.er = add nsw i32 %.079113.i, 1               ; 2 uses
  %i.es = load i32, ptr %i.x, align 4, !tbaa !106
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.lr.ph115.i, label %gray_sweep_direct.exit, !llvm.loop !126

gray_sweep_direct.exit:                           ; preds = %.thread.i95, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %gray_sweep.exit

bb.s:                                             ; preds = %bb.g
  %i.eu = load i32, ptr %i.v, align 8, !tbaa !105 ; 2 uses
end_hunk_0
