Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sdf?download=true
inline.NumInlined: 97
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FT_Module_Class_ = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr }
%struct.FT_ServiceDescRec_ = type { ptr, ptr }
%struct.FT_Service_PropertiesRec_ = type { ptr, ptr }
%struct.SDF_Raster_Params_ = type { %struct.FT_Raster_Params_, i32, i8, i8, i8 }
%struct.FT_Raster_Params_ = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.FT_BBox_ }
%struct.FT_BBox_ = type { i64, i64, i64, i64 }
%struct.FT_Bitmap_ = type { i32, i32, i32, ptr, i16, i8, i8, ptr }
%struct.BSDF_Worker_ = type { ptr, i32, i32, %struct.SDF_Raster_Params_ }
%struct.FT_Vector_ = type { i64, i64 }
%struct.SDF_Shape_ = type { ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"sdf\00", align 1
@ft_sdf_renderer_class = hidden local_unnamed_addr constant { %struct.FT_Module_Class_, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { %struct.FT_Module_Class_ { i64 2, i64 136, ptr @.str, i64 65536, i64 131072, ptr null, ptr @ft_sdf_init, ptr @ft_sdf_done, ptr @ft_sdf_requester }, i32 1869968492, [4 x i8] zeroinitializer, ptr @ft_sdf_render, ptr @ft_sdf_transform, ptr @ft_sdf_get_cbox, ptr @ft_sdf_set_mode, ptr @ft_sdf_raster }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"bsdf\00", align 1
@ft_bitmap_sdf_renderer_class = hidden local_unnamed_addr constant { %struct.FT_Module_Class_, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { %struct.FT_Module_Class_ { i64 2, i64 136, ptr @.str.1, i64 65536, i64 131072, ptr null, ptr @ft_sdf_init, ptr @ft_sdf_done, ptr @ft_sdf_requester }, i32 1651078259, [4 x i8] zeroinitializer, ptr @ft_bsdf_render, ptr @ft_sdf_transform, ptr @ft_sdf_get_cbox, ptr @ft_sdf_set_mode, ptr @ft_bitmap_sdf_raster }, align 8
@ft_bitmap_sdf_raster = hidden constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { i32 1651078259, [4 x i8] zeroinitializer, ptr @bsdf_raster_new, ptr @bsdf_raster_reset, ptr @bsdf_raster_set_mode, ptr @bsdf_raster_render, ptr @bsdf_raster_done }, align 8
@ft_sdf_raster = hidden constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { i32 1869968492, [4 x i8] zeroinitializer, ptr @sdf_raster_new, ptr @sdf_raster_reset, ptr @sdf_raster_set_mode, ptr @sdf_raster_render, ptr @sdf_raster_done }, align 8
@sdf_services = internal constant [2 x %struct.FT_ServiceDescRec_] [%struct.FT_ServiceDescRec_ { ptr @.str.4, ptr @sdf_service_properties }, %struct.FT_ServiceDescRec_ zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@sdf_service_properties = internal constant %struct.FT_Service_PropertiesRec_ { ptr @sdf_property_set, ptr @sdf_property_get }, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"spread\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"flip_sign\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"flip_y\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"overlaps\00", align 1
@sdf_decompose_funcs = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], i64 } { ptr @sdf_move_to, ptr @sdf_line_to, ptr @sdf_conic_to, ptr @sdf_cubic_to, i32 0, [4 x i8] zeroinitializer, i64 0 }, align 8
@__const.sdf_generate_bounding_box.dist = private unnamed_addr constant { i32, i32, i8, [3 x i8] } { i32 2147483647, i32 0, i8 0, [3 x i8] zeroinitializer }, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @ft_sdf_init(ptr nofree noundef writeonly captures(none) initializes((128, 135)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 8, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 0, ptr %i.b, align 4, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 0, ptr %i.c, align 1, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 134
  store i8 0, ptr %i.d, align 2, !tbaa !22
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ft_sdf_done(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @ft_sdf_requester(ptr nofree readnone captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = tail call ptr @ft_service_list_lookup(ptr noundef nonnull @sdf_services, ptr noundef %1) #12
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @ft_sdf_render(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %4 = alloca %struct.SDF_Raster_Params_, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !40
  %.not = icmp eq i32 %i.g, %i.i
  br i1 %.not, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %.not74 = icmp eq i32 %2, 5
  br i1 %.not74, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !42
  %5 = and i32 %i.m, 1
  %.not75 = icmp eq i32 %5, 0
  br i1 %.not75, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46
  tail call void @ft_mem_free(ptr noundef %i.e, ptr noundef %i.o) #12
  store ptr null, ptr %i.n, align 8, !tbaa !46
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !42
  %i.s = and i32 %i.r, -2
  store i32 %i.s, ptr %i.q, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call zeroext i8 @ft_glyphslot_preset_bitmap(ptr noundef nonnull %1, i32 noundef 0, ptr noundef %3) #12
  %.not76 = icmp eq i8 %i.t, 0
  br i1 %.not76, label %bb.f, label %.thread.sink.split

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %.not77 = icmp eq i32 %i.u, 0
  br i1 %.not77, label %thread-pre-split.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !48
  %.not78 = icmp eq i32 %i.w, 0
  br i1 %.not78, label %thread-pre-split.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !8    ; 3 uses
  %i.z = shl i32 %i.y, 1                          ; 2 uses
  %i.aa = add i32 %i.z, %i.u                      ; 2 uses
  store i32 %i.aa, ptr %i.c, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 156 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !49
  %i.ad = add i32 %i.ac, %i.z                     ; 3 uses
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 178
  store i8 2, ptr %i.ae, align 2, !tbaa !50
  store i32 %i.ad, ptr %i.v, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i16 255, ptr %i.af, align 8, !tbaa !51
  %i.ag = sext i32 %i.ad to i64
  %i.ah = zext i32 %i.aa to i64
  %i.ai = call ptr @ft_mem_realloc(ptr noundef %i.e, i64 noundef %i.ag, i64 noundef 0, i64 noundef %i.ah, ptr noundef null, ptr noundef nonnull %i.a) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !46
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !23  ; 2 uses
  %.not79 = icmp eq i32 %i.ak, 0
  br i1 %.not79, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !42
  %i.ao = or i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 196 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !52
  %i.ar = add i32 %i.aq, %i.y                     ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !53
  %i.au = sub i32 %i.at, %i.y                     ; 2 uses
  store i32 %i.au, ptr %i.as, align 8, !tbaa !53
  %.neg = mul i32 %i.au, -64
  %i.av = sext i32 %.neg to i64                   ; 2 uses
  %.neg80 = mul i32 %i.ar, -64
  %i.aw = sext i32 %.neg80 to i64
  %i.ax = load i32, ptr %i.c, align 8, !tbaa !47
  %i.ay = shl nsw i32 %i.ax, 6
  %i.az = sext i32 %i.ay to i64
  %i.ba = add nsw i64 %i.az, %i.aw                ; 2 uses
  %.not81 = icmp eq ptr %3, null
  br i1 %.not81, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load i64, ptr %3, align 8, !tbaa !54
  %i.bc = add nsw i64 %i.bb, %i.av
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !55
  %i.bf = add nsw i64 %i.be, %i.ba
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.071 = phi i64 [ %i.bc, %bb.j ], [ %i.av, %bb.i ] ; 3 uses
  %.0 = phi i64 [ %i.bf, %bb.j ], [ %i.ba, %bb.i ] ; 3 uses
  %i.bg = icmp ne i64 %.071, 0
  %i.bh = icmp ne i64 %.0, 0
  %or.cond = select i1 %i.bg, i1 true, i1 %i.bh   ; 2 uses
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @FT_Outline_Translate(ptr noundef nonnull %i.b, i64 noundef %.071, i64 noundef %.0) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  store ptr %i.c, ptr %4, align 8, !tbaa !56
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.bi, align 8, !tbaa !61
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 8, ptr %i.bj, align 8, !tbaa !62
  %i.bk = load i32, ptr %i.x, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !63
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 100
  store i8 %i.bn, ptr %i.bo, align 4, !tbaa !64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !21
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 101
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !65
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 102
  store i8 %i.bt, ptr %i.bu, align 2, !tbaa !66
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !67
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !68
  %i.bz = call i32 %i.bw(ptr noundef %i.by, ptr noundef nonnull %4) #12 ; 2 uses
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !23
  br i1 %or.cond, label %bb.n, label %thread-pre-split

bb.n:                                             ; preds = %bb.m
  %i.ca = sub nsw i64 0, %.071
  %i.cb = sub nsw i64 0, %.0
  call void @FT_Outline_Translate(ptr noundef nonnull %i.b, i64 noundef %i.ca, i64 noundef %i.cb) #12
  %.pr.pre = load i32, ptr %i.a, align 4, !tbaa !23
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.n, %bb.m
  %i.cc = phi i32 [ %i.bz, %bb.m ], [ %.pr.pre, %bb.n ] ; 2 uses
  %.not82 = icmp eq i32 %i.cc, 0
  br i1 %.not82, label %thread-pre-split.thread, label %.thread

thread-pre-split.thread:                          ; preds = %bb.f, %bb.g, %thread-pre-split
  store i32 1651078259, ptr %i.f, align 8, !tbaa !25
  br label %bb.p

.thread.sink.split:                               ; preds = %bb.e, %bb.b, %bb.a
  %.sink = phi i32 [ 19, %bb.b ], [ 18, %bb.a ], [ 98, %bb.e ] ; 2 uses
  store i32 %.sink, ptr %i.a, align 4, !tbaa !23
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.h, %thread-pre-split
  %i.cd = phi i32 [ %i.cc, %thread-pre-split ], [ %i.ak, %bb.h ], [ %.sink, %.thread.sink.split ]
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !42
  %6 = and i32 %i.ch, 1
  %.not83 = icmp eq i32 %6, 0
  br i1 %.not83, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !46
  call void @ft_mem_free(ptr noundef %i.e, ptr noundef %i.cj) #12
  store ptr null, ptr %i.ci, align 8, !tbaa !46
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !42
  %i.cn = and i32 %i.cm, -2
  store i32 %i.cn, ptr %i.cl, align 8, !tbaa !42
  %.pre = load i32, ptr %i.a, align 4, !tbaa !23
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o, %thread-pre-split.thread
  %i.co = phi i32 [ %i.cd, %.thread ], [ %.pre, %bb.o ], [ 0, %thread-pre-split.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.co
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 7) i32 @ft_sdf_transform(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not11 = icmp eq ptr %2, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @FT_Outline_Transform(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not12 = icmp eq ptr %3, null
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.g = load i64, ptr %3, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !55
  tail call void @FT_Outline_Translate(ptr noundef nonnull %i.f, i64 noundef %i.g, i64 noundef %i.i) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.e
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 6, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ft_sdf_get_cbox(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef initializes((0, 32)) %2) #2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @FT_Outline_Get_CBox(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ft_sdf_set_mode(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = tail call i32 %i.f(ptr noundef %i.h, i64 noundef %1, ptr noundef %2) #12
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define internal i32 @ft_bsdf_render(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(address_is_null) %3) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %4 = alloca %struct.FT_Bitmap_, align 8         ; 14 uses
  %5 = alloca %struct.SDF_Raster_Params_, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @FT_Bitmap_Init(ptr noundef nonnull %4) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !40
  %.not = icmp eq i32 %i.f, %i.h
  br i1 %.not, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i32 %2, 5
  br i1 %.not36, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %bb.b
  %.not37 = icmp eq ptr %3, null
  br i1 %.not37, label %bb.d, label %.thread.sink.split

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.b, align 8, !tbaa !47
  %.not38 = icmp eq i32 %i.i, 0
  br i1 %.not38, label %thread-pre-split.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.k = load i32, ptr %i.j, align 8, !tbaa !48
  %.not39 = icmp eq i32 %i.k, 0
  br i1 %.not39, label %thread-pre-split.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !42
  %6 = and i32 %i.o, 1
  %.not40 = icmp eq i32 %6, 0
  br i1 %.not40, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @FT_Bitmap_New(ptr noundef nonnull %4) #12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !8    ; 2 uses
  %i.r = load i32, ptr %i.b, align 8, !tbaa !47
  %i.s = shl i32 %i.q, 1                          ; 2 uses
  %i.t = add i32 %i.r, %i.s                       ; 2 uses
  store i32 %i.t, ptr %4, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.v = load i32, ptr %i.u, align 4, !tbaa !49
  %i.w = add i32 %i.v, %i.s                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.w, ptr %i.x, align 4, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i8 2, ptr %i.y, align 2, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.w, ptr %i.z, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 255, ptr %i.aa, align 8, !tbaa !51
  %i.ab = sext i32 %i.w to i64
  %i.ac = zext i32 %i.t to i64
  %i.ad = call ptr @ft_mem_realloc(ptr noundef %i.d, i64 noundef %i.ab, i64 noundef 0, i64 noundef %i.ac, ptr noundef null, ptr noundef nonnull %i.a) #12
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !46
  %i.af = load i32, ptr %i.a, align 4, !tbaa !23
  %.not41 = icmp eq i32 %i.af, 0
  br i1 %.not41, label %thread-pre-split, label %.thread

thread-pre-split:                                 ; preds = %bb.g
  store ptr %4, ptr %5, align 8, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.ag, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 8, ptr %i.ah, align 8, !tbaa !62
  %i.ai = load i32, ptr %i.p, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 100
  store i8 %i.al, ptr %i.am, align 4, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 101
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !65
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !68
  %i.au = call i32 %i.ar(ptr noundef %i.at, ptr noundef nonnull %5) #12 ; 2 uses
  store i32 %i.au, ptr %i.a, align 4, !tbaa !23
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %thread-pre-split.thread, label %.thread

thread-pre-split.thread:                          ; preds = %bb.d, %bb.e, %thread-pre-split
  %.051 = phi i32 [ %i.q, %thread-pre-split ], [ 0, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !42
  %7 = and i32 %i.az, 1
  %.not43 = icmp eq i32 %7, 0
  br i1 %.not43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %thread-pre-split.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !46
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.bb) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %thread-pre-split.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !76
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 196 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !52
  %i.be = add i32 %i.bd, %.051
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !53
  %i.bh = sub i32 %i.bg, %.051
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !46
  %.not44 = icmp eq ptr %i.bj, null
  br i1 %.not44, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !41
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !42
  %i.bn = or i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !42
  br label %bb.l

.thread.sink.split:                               ; preds = %bb.f, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ 7, %bb.c ], [ 18, %bb.a ], [ 19, %bb.b ], [ 6, %bb.f ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !23
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.g, %thread-pre-split
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !46 ; 2 uses
  %.not45 = icmp eq ptr %i.bp, null
  br i1 %.not45, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef nonnull %i.bp) #12
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k, %bb.i, %bb.j
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.bq
}

; Function Attrs: nounwind uwtable
define internal i32 @bsdf_raster_new(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = call ptr @ft_mem_alloc(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.b, align 8, !tbaa !81
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @bsdf_raster_reset(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @bsdf_raster_set_mode(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @bsdf_raster_render(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %2 = alloca %struct.BSDF_Worker_, align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !62
  %.not = icmp eq i32 %i.e, 8
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !56     ; 5 uses
  %i.i = icmp ne ptr %i.g, null
  %i.j = icmp ne ptr %i.h, null
  %or.cond3 = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond3, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !81     ; 3 uses
  %.not32 = icmp eq ptr %i.k, null
  br i1 %.not32, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load i32, ptr %i.l, align 8, !tbaa !63
  %i.n = add i32 %i.m, -33
  %or.cond38 = icmp ult i32 %i.n, -31
  br i1 %or.cond38, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !49
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 5
  %i.s = load i32, ptr %i.h, align 8, !tbaa !47
  %i.t = zext i32 %i.s to i64
  %i.u = call ptr @ft_mem_qrealloc(ptr noundef nonnull %i.k, i64 noundef %i.r, i64 noundef 0, i64 noundef %i.t, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 3 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !85
  %i.v = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not33 = icmp eq i32 %i.v, 0
  br i1 %.not33, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load <2 x i32>, ptr %i.h, align 8, !tbaa !23
  %i.y = shufflevector <2 x i32> %i.x, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.y, ptr %i.w, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.z, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false), !tbaa.struct !88
  %i.aa = call fastcc i32 @bsdf_init_distance_map(ptr noundef %i.g, ptr noundef %2) ; 3 uses
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !23
  %.not34 = icmp eq i32 %i.aa, 0
  br i1 %.not34, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ab = call fastcc i32 @bsdf_approximate_edge(ptr noundef %2) ; 3 uses
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !23
  %.not35 = icmp eq i32 %i.ab, 0
  br i1 %.not35, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ac = call fastcc i32 @edt8(ptr noundef %2)   ; 3 uses
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !23
  %.not36 = icmp eq i32 %i.ac, 0
  br i1 %.not36, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = call fastcc i32 @finalize_sdf(ptr noundef %2, ptr noundef %i.h) ; 2 uses
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.ae = phi i32 [ %i.ad, %bb.j ], [ %i.ac, %bb.i ], [ %i.ab, %bb.h ], [ %i.aa, %bb.g ], [ %i.v, %bb.f ]
  %.not37 = icmp eq ptr %i.u, null
  br i1 %.not37, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @ft_mem_free(ptr noundef nonnull %i.k, ptr noundef nonnull %i.u) #12
  %.pre = load i32, ptr %i.a, align 4, !tbaa !23
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.l, %bb.k
  %i.af = phi i32 [ %i.ae, %bb.k ], [ 97, %bb.b ], [ 6, %bb.c ], [ 32, %bb.d ], [ 6, %bb.a ], [ %.pre, %bb.l ], [ 6, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.af
}

; Function Attrs: nounwind uwtable
define internal void @bsdf_raster_done(ptr noundef %0) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81
  tail call void @ft_mem_free(ptr noundef %i.a, ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @sdf_raster_new(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = call ptr @ft_mem_alloc(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
end_hunk_0
begin_hunk_1_@edt8:bb.a
._crit_edge40.us.i25.loopexit:                    ; preds = %compare_neighbor.exit35.us.i27
  %indvars.iv.next55.i = add nsw i64 %indvars.iv54.i, -1
  %i.gk = icmp sgt i64 %indvars.iv54.i, 0
  br i1 %i.gk, label %.preheader.us.i19, label %second_pass.exit, !llvm.loop !129

.preheader.lr.ph.split.i6:                        ; preds = %.preheader.lr.ph.i5
  %i.gl = icmp eq i32 %i.df, 2
  br i1 %i.gl, label %.preheader.preheader.i7, label %second_pass.exit

.preheader.preheader.i7:                          ; preds = %.preheader.lr.ph.split.i6
  %i.gm = zext nneg i32 %i.dj to i64
  %i.gn = zext nneg i32 %i.dd to i64
  %invariant.gep79 = getelementptr [32 x i8], ptr %i.dc, i64 %i.gm
  br label %.preheader.i8

.preheader.i8:                                    ; preds = %compare_neighbor.exit35.i13, %.preheader.preheader.i7
  %indvars.iv45.i9 = phi i64 [ %i.gn, %.preheader.preheader.i7 ], [ %indvars.iv.next46.i16, %compare_neighbor.exit35.i13 ] ; 3 uses
  %i.go = mul nsw i64 %indvars.iv45.i9, %i.dh
  %gep80 = getelementptr [32 x i8], ptr %invariant.gep79, i64 %i.go ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.gp = load i32, ptr %gep80, align 8, !tbaa !117 ; 2 uses
  %i.gq = icmp slt i32 %i.gp, 32769
  br i1 %i.gq, label %compare_neighbor.exit35.i13, label %bb.am

bb.am:                                            ; preds = %.preheader.i8
  %i.gr = getelementptr inbounds nuw i8, ptr %gep80, i64 32
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !117
  %i.gt = add nsw i32 %i.gs, -65536
  %i.gu = icmp slt i32 %i.gt, %i.gp
  br i1 %i.gu, label %bb.an, label %compare_neighbor.exit35.i13

bb.an:                                            ; preds = %bb.am
  %i.gv = getelementptr inbounds nuw i8, ptr %gep80, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i64 16, i1 false), !tbaa.struct !123
  %i.gw = load i64, ptr %1, align 8, !tbaa !54
  %i.gx = add nsw i64 %i.gw, 65536
  store i64 %i.gx, ptr %1, align 8, !tbaa !54
  %i.gy = call i64 @FT_Vector_Length(ptr noundef nonnull %1) #12
  %i.gz = trunc i64 %i.gy to i32                  ; 2 uses
  %i.ha = load i32, ptr %gep80, align 8, !tbaa !117
  %i.hb = icmp sgt i32 %i.ha, %i.gz
  br i1 %i.hb, label %bb.ao, label %compare_neighbor.exit35.i13

bb.ao:                                            ; preds = %bb.an
  store i32 %i.gz, ptr %gep80, align 8, !tbaa !117
  %i.hc = getelementptr inbounds nuw i8, ptr %gep80, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit35.i13

compare_neighbor.exit35.i13:                      ; preds = %bb.ao, %bb.an, %bb.am, %.preheader.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %indvars.iv.next46.i16 = add nsw i64 %indvars.iv45.i9, -1
  %i.hd = icmp sgt i64 %indvars.iv45.i9, 0
  br i1 %i.hd, label %.preheader.i8, label %second_pass.exit, !llvm.loop !129

second_pass.exit:                                 ; preds = %compare_neighbor.exit35.i13, %._crit_edge40.us.i25.loopexit, %bb.b, %.preheader.lr.ph.split.i6, %first_pass.exit, %bb.a
  %.0 = phi i32 [ 6, %bb.a ], [ 0, %._crit_edge40.us.i25.loopexit ], [ 0, %first_pass.exit ], [ 0, %bb.b ], [ 0, %.preheader.lr.ph.split.i6 ], [ 0, %compare_neighbor.exit35.i13 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 7) i32 @finalize_sdf(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 3 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !47     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !104
  %.not = icmp eq i32 %i.b, %i.g
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !105
  %.not46 = icmp eq i32 %i.c, %i.i
  br i1 %.not46, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !130
  %i.l = shl i32 %i.k, 16                         ; 3 uses
  %i.m = icmp sgt i32 %i.c, 0
  br i1 %i.m, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.n = icmp sgt i32 %i.b, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.p = sext i32 %i.l to i64
  br i1 %i.n, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.q = zext nneg i32 %i.b to i64                ; 2 uses
  %wide.trip.count54 = zext nneg i32 %i.c to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv51 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next52, %._crit_edge ] ; 2 uses
  %i.r = mul nuw nsw i64 %indvars.iv51, %i.q
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.s = add nuw nsw i64 %indvars.iv, %i.r        ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.s ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !117  ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  %i.x = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.l)
  %.037 = select i1 %i.w, i32 %i.l, i32 %i.x      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !109
  %i.aa = icmp ult i8 %i.z, 127
  %i.ab = load i8, ptr %i.o, align 4, !tbaa !131
  %.not47 = icmp eq i8 %i.ab, 0
  %i.ac = xor i1 %i.aa, %.not47
  %i.ad = sub nsw i32 0, %.037
  %i.ae = select i1 %i.ac, i32 %.037, i32 %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = tail call i64 @FT_DivFix(i64 noundef %i.af, i64 noundef %i.p) #12
  %i.ah = trunc i64 %i.ag to i32                  ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true) ; 2 uses
  %i.ak = lshr i32 %i.aj, 9
  %i.al = icmp sgt i32 %i.ah, 0
  %i.am = icmp samesign ugt i32 %i.aj, 65535
  %or.cond.i = select i1 %i.al, i1 %i.am, i1 false
  %spec.store.select4.i = select i1 %or.cond.i, i32 127, i32 %i.ak ; 2 uses
  %i.an = tail call i32 @llvm.umin.i32(i32 %spec.store.select4.i, i32 128)
  %i.ao = sub nsw i32 0, %i.an
  %.p.i = select i1 %i.ai, i32 %i.ao, i32 %spec.store.select4.i
  %i.ap = trunc i32 %.p.i to i8
  %i.aq = xor i8 %i.ap, -128
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.s
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !132

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %.loopexit, label %.preheader, !llvm.loop !133

.loopexit:                                        ; preds = %._crit_edge, %bb.c, %.preheader.lr.ph, %bb.a, %bb.b
  %.040 = phi i32 [ 6, %bb.a ], [ 6, %bb.b ], [ 0, %.preheader.lr.ph ], [ 0, %bb.c ], [ 0, %._crit_edge ]
  ret i32 %.040
}

declare i64 @FT_Vector_Length(ptr noundef) local_unnamed_addr #4

declare hidden i32 @FT_Vector_NormLen(ptr noundef) local_unnamed_addr #4

declare i64 @FT_DivFix(i64 noundef, i64 noundef) local_unnamed_addr #4

declare hidden i32 @FT_SqrtFixed(i32 noundef) local_unnamed_addr #4

declare i32 @FT_Outline_Get_Orientation(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sdf_generate_with_overlaps(i64 range(i64 0, 281474976710656) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %4 = alloca %struct.SDF_Shape_, align 8         ; 5 uses
  %.fr201 = freeze i64 %0                         ; 3 uses
  %.sroa.0129.0.extract.trunc = trunc i64 %.fr201 to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %3, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !99     ; 8 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134  ; 2 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49   ; 2 uses
  %i.i = load i32, ptr %3, align 8, !tbaa !47     ; 2 uses
  %.not155174 = icmp eq ptr %i.f, null
  br i1 %.not155174, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0143176 = phi ptr [ %i.l, %.lr.ph ], [ %i.f, %bb.c ]
  %.0148175 = phi i32 [ %i.j, %.lr.ph ], [ 0, %bb.c ]
  %i.j = add nuw nsw i32 %.0148175, 1             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0143176, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !135  ; 2 uses
  %.not155 = icmp eq ptr %i.l, null
  br i1 %.not155, label %._crit_edge, label %.lr.ph, !llvm.loop !138

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0148.lcssa = phi i32 [ 0, %bb.c ], [ %i.j, %.lr.ph ] ; 7 uses
  %i.m = zext i32 %.0148.lcssa to i64             ; 8 uses
  %i.n = call ptr @ft_mem_realloc(ptr noundef nonnull %i.d, i64 noundef 40, i64 noundef 0, i64 noundef %i.m, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 10 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !23
  %.not156 = icmp eq i32 %i.o, 0
  br i1 %.not156, label %bb.d, label %.thread

bb.d:                                             ; preds = %._crit_edge
  %i.p = call ptr @ft_mem_realloc(ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 0, i64 noundef %i.m, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 9 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !23
  %.not157 = icmp eq i32 %i.q, 0
  br i1 %.not157, label %.preheader170, label %.loopexit

.preheader170:                                    ; preds = %bb.d
  %.not199 = icmp eq i32 %.0148.lcssa, 0          ; 2 uses
  br i1 %.not199, label %._crit_edge182, label %.lr.ph181

.lr.ph181:                                        ; preds = %.preheader170
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.u = icmp eq i32 %.sroa.0129.0.extract.trunc, 0
  %i.v = icmp eq i32 %.sroa.0129.0.extract.trunc, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.0129.0.insert.insert = and i64 %.fr201, 280379760050175
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph181, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %.1144180.in = phi ptr [ %i.e, %.lr.ph181 ], [ %i.cx, %bb.p ]
  %.0142179 = phi ptr [ null, %.lr.ph181 ], [ %i.da, %bb.p ]
  %.1144180 = load ptr, ptr %.1144180.in, align 8, !tbaa !139 ; 4 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv ; 7 uses
  call void @FT_Bitmap_Init(ptr noundef %i.x) #12
  %i.y = load <2 x i32>, ptr %3, align 8, !tbaa !23
  %i.z = load i32, ptr %3, align 8, !tbaa !47
  store <2 x i32> %i.y, ptr %i.x, align 8, !tbaa !23
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !48  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !48
  %i.ac = load i16, ptr %i.s, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i16 %i.ac, ptr %i.ad, align 8, !tbaa !51
  %i.ae = load i8, ptr %i.t, align 2, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 26
  store i8 %i.ae, ptr %i.af, align 2, !tbaa !50
  %i.ag = sext i32 %i.aa to i64
  %i.ah = zext i32 %i.z to i64
  %i.ai = call ptr @ft_mem_realloc(ptr noundef nonnull %i.d, i64 noundef %i.ag, i64 noundef 0, i64 noundef %i.ah, ptr noundef null, ptr noundef nonnull %i.a) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !46
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !23
  %.not159 = icmp eq i32 %i.ak, 0
  br i1 %.not159, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %.1144180, null
  br i1 %.not.i, label %get_contour_orientation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.1144180, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !140 ; 2 uses
  %.not41.i = icmp eq ptr %i.am, null
  br i1 %.not41.i, label %get_contour_orientation.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %bb.k
  %.045.i = phi i32 [ %i.cr, %bb.k ], [ 0, %bb.g ] ; 3 uses
  %.03744.i = phi ptr [ %i.ct, %bb.k ], [ %i.am, %bb.g ] ; 18 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03744.i, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !141
  switch i32 %i.ao, label %get_contour_orientation.exit [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.h:                                             ; preds = %.preheader.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.03744.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !143
  %i.ar = load i64, ptr %.03744.i, align 8, !tbaa !144
  %i.as = sub nsw i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.03744.i, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !145
  br label %bb.k

bb.i:                                             ; preds = %.preheader.i
  %i.av = getelementptr inbounds nuw i8, ptr %.03744.i, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !146 ; 2 uses
  %i.ax = load i64, ptr %.03744.i, align 8, !tbaa !144
  %i.ay = sub nsw i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.03744.i, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !147 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03744.i, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !148
  %i.bd = add nsw i64 %i.bc, %i.ba
  %i.be = mul nsw i64 %i.bd, %i.ay
  %i.bf = sdiv i64 %i.be, 64
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = add i32 %.045.i, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.03744.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !143
  %i.bk = sub nsw i64 %i.bj, %i.aw
  br label %bb.k

bb.j:                                             ; preds = %.preheader.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.03744.i, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !146 ; 2 uses
  %i.bn = load i64, ptr %.03744.i, align 8, !tbaa !144
  %i.bo = sub nsw i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.03744.i, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !147 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.03744.i, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !148
  %i.bt = add nsw i64 %i.bs, %i.bq
  %i.bu = mul nsw i64 %i.bt, %i.bo
  %i.bv = sdiv i64 %i.bu, 64
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = add i32 %.045.i, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.03744.i, i64 48
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !149 ; 2 uses
  %i.ca = sub nsw i64 %i.bz, %i.bm
  %i.cb = getelementptr inbounds nuw i8, ptr %.03744.i, i64 56
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !150 ; 2 uses
  %i.cd = add nsw i64 %i.cc, %i.bq
  %i.ce = mul nsw i64 %i.cd, %i.ca
  %i.cf = sdiv i64 %i.ce, 64
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = add i32 %i.bx, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %.03744.i, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !143
  %i.ck = sub nsw i64 %i.cj, %i.bz
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sink56.i = phi i64 [ 24, %bb.j ], [ 24, %bb.i ], [ 8, %bb.h ]
  %.sink54.i = phi i64 [ %i.cc, %bb.j ], [ %i.ba, %bb.i ], [ %i.au, %bb.h ]
  %.sink52.i = phi i64 [ %i.ck, %bb.j ], [ %i.bk, %bb.i ], [ %i.as, %bb.h ]
  %.sink.i = phi i32 [ %i.ch, %bb.j ], [ %i.bh, %bb.i ], [ %.045.i, %bb.h ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.03744.i, i64 %.sink56.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !90
  %i.cn = add nsw i64 %i.cm, %.sink54.i
  %i.co = mul nsw i64 %i.cn, %.sink52.i
  %i.cp = sdiv i64 %i.co, 64
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = add i32 %.sink.i, %i.cq                 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.03744.i, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !151 ; 2 uses
  %.not42.i = icmp eq ptr %i.ct, null
  br i1 %.not42.i, label %bb.l, label %.preheader.i, !llvm.loop !152

bb.l:                                             ; preds = %bb.k
  %.inv.i = icmp slt i32 %i.cr, 1
  %..i = select i1 %.inv.i, i32 2, i32 1
  br label %get_contour_orientation.exit

get_contour_orientation.exit:                     ; preds = %.preheader.i, %bb.f, %bb.g, %bb.l
  %.038.i = phi i32 [ 0, %bb.f ], [ %..i, %bb.l ], [ 0, %bb.g ], [ 0, %.preheader.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv ; 3 uses
  store i32 %.038.i, ptr %i.cu, align 4, !tbaa !23
  %i.cv = icmp eq i32 %.038.i, 2
  %or.cond4 = and i1 %i.cv, %i.u
  %i.cw = icmp eq i32 %.038.i, 1
  %or.cond7 = and i1 %i.cw, %i.v
  %narrow = or i1 %or.cond4, %or.cond7
  %.sroa.8.sroa.2.0 = zext i1 %narrow to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %.1144180, i64 24 ; 4 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !135
  store ptr null, ptr %i.cx, align 8, !tbaa !135
  store ptr %.1144180, ptr %i.w, align 8, !tbaa !134
  %i.cz = call fastcc i32 @sdf_generate_subdivision(i64 %.sroa.0129.0.insert.insert, i32 %.sroa.8.sroa.2.0, ptr noundef nonnull %4, i32 noundef %2, ptr noundef nonnull %i.x) ; 2 uses
  store i32 %i.cz, ptr %i.a, align 4, !tbaa !23
  %.not160 = icmp eq i32 %i.cz, 0
  br i1 %.not160, label %bb.m, label %.thread165

bb.m:                                             ; preds = %get_contour_orientation.exit
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !135
  %i.da = load ptr, ptr %i.w, align 8, !tbaa !134 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store ptr %.0142179, ptr %i.db, align 8, !tbaa !135
  br i1 %i.v, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dc = load i32, ptr %i.cu, align 4, !tbaa !23
  switch i32 %i.dc, label %bb.p [
    i32 1, label %.sink.split
    i32 2, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.o
  %.sink = phi i32 [ 1, %bb.o ], [ 2, %bb.n ]
  store i32 %.sink, ptr %i.cu, align 4, !tbaa !23
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.n, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %._crit_edge182, label %bb.e, !llvm.loop !153

._crit_edge182:                                   ; preds = %bb.p, %.preheader170
  %.0142.lcssa = phi ptr [ null, %.preheader170 ], [ %i.da, %bb.p ]
  store ptr %.0142.lcssa, ptr %i.e, align 8, !tbaa !134
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !46 ; 3 uses
  %i.df = icmp sgt i32 %i.i, 0
  br i1 %i.df, label %.preheader169.lr.ph, label %.loopexit

.preheader169.lr.ph:                              ; preds = %._crit_edge182
  %i.dg = icmp sgt i32 %i.h, 0
  %i.dh = and i64 %.fr201, 1095216660480
  %.not158 = icmp ne i64 %i.dh, 0                 ; 2 uses
  %spec.select = sext i1 %.not158 to i8
  br i1 %i.dg, label %.preheader169.lr.ph.split, label %.loopexit

.preheader169.lr.ph.split:                        ; preds = %.preheader169.lr.ph
  %i.di = zext nneg i32 %i.h to i64               ; 5 uses
  %i.dj = zext nneg i32 %i.i to i64               ; 3 uses
  br i1 %.not199, label %.preheader169.preheader, label %.preheader169.lr.ph.split.split.us

.preheader169.preheader:                          ; preds = %.preheader169.lr.ph.split
  %i.dk = mul nuw nsw i64 %i.di, %i.dj
  call void @llvm.memset.p0.i64(ptr align 1 %i.de, i8 %spec.select, i64 %i.dk, i1 false), !tbaa !79
  br label %.loopexit

.preheader169.lr.ph.split.split.us:               ; preds = %.preheader169.lr.ph.split
  br i1 %.not158, label %.preheader169.us.preheader, label %.preheader169.us.us.preheader

.preheader169.us.us.preheader:                    ; preds = %.preheader169.lr.ph.split.split.us
  %xtraiter = and i64 %i.m, 1
  %i.dl = icmp eq i32 %.0148.lcssa, 1
  %unroll_iter = and i64 %i.m, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod11 = trunc i32 %.0148.lcssa to i1
  br label %.preheader169.us.us

.preheader169.us.preheader:                       ; preds = %.preheader169.lr.ph.split.split.us
  %xtraiter13 = and i64 %i.m, 1
  %i.dm = icmp eq i32 %.0148.lcssa, 1
  %unroll_iter18 = and i64 %i.m, 4294967294
  %lcmp.mod14.not = icmp eq i64 %xtraiter13, 0
  %lcmp.mod17 = trunc i32 %.0148.lcssa to i1
  br label %.preheader169.us

.preheader169.us.us:                              ; preds = %.preheader169.us.us.preheader, %._crit_edge194.split.us.us.split.us.us
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %._crit_edge194.split.us.us.split.us.us ], [ 0, %.preheader169.us.us.preheader ] ; 2 uses
  %i.dn = mul nuw nsw i64 %indvars.iv217, %i.di
  br label %.lr.ph188.us.us.us.us

.lr.ph188.us.us.us.us:                            ; preds = %._crit_edge189.us.us.us.us, %.preheader169.us.us
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %._crit_edge189.us.us.us.us ], [ 0, %.preheader169.us.us ] ; 2 uses
  %i.do = add nuw nsw i64 %indvars.iv212, %i.dn   ; 4 uses
  br i1 %i.dl, label %.epil.preheader, label %.lr.ph188.us.us.us.us.new

.lr.ph188.us.us.us.us.new:                        ; preds = %.lr.ph188.us.us.us.us, %bb.v
  %indvars.iv208 = phi i64 [ %indvars.iv.next209.1, %bb.v ], [ 0, %.lr.ph188.us.us.us.us ] ; 4 uses
  %.0186.us.us.us.us = phi i8 [ %.1.us.us.us.us.1, %bb.v ], [ -1, %.lr.ph188.us.us.us.us ] ; 2 uses
  %.0137185.us.us.us.us = phi i8 [ %.1138.us.us.us.us.1, %bb.v ], [ 0, %.lr.ph188.us.us.us.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.v ], [ 0, %.lr.ph188.us.us.us.us ]
  %i.dp = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv208
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !46
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.do
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !79  ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv208
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !23
  %i.dw = icmp eq i32 %i.dv, 1
  br i1 %i.dw, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph188.us.us.us.us.new
  %i.dx = call i8 @llvm.umin.i8(i8 %.0186.us.us.us.us, i8 %i.dt)
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph188.us.us.us.us.new
  %i.dy = call i8 @llvm.umax.i8(i8 %.0137185.us.us.us.us, i8 %i.dt)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1138.us.us.us.us = phi i8 [ %i.dy, %bb.r ], [ %.0137185.us.us.us.us, %bb.q ] ; 2 uses
  %.1.us.us.us.us = phi i8 [ %.0186.us.us.us.us, %bb.r ], [ %i.dx, %bb.q ] ; 2 uses
  %indvars.iv.next209 = or disjoint i64 %indvars.iv208, 1 ; 2 uses
  %i.dz = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv.next209
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !46
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.do
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !79  ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next209
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !23
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = call i8 @llvm.umin.i8(i8 %.1.us.us.us.us, i8 %i.ed)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ei = call i8 @llvm.umax.i8(i8 %.1138.us.us.us.us, i8 %i.ed)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1138.us.us.us.us.1 = phi i8 [ %i.ei, %bb.u ], [ %.1138.us.us.us.us, %bb.t ] ; 3 uses
  %.1.us.us.us.us.1 = phi i8 [ %.1.us.us.us.us, %bb.u ], [ %i.eh, %bb.t ] ; 3 uses
  %indvars.iv.next209.1 = add nuw nsw i64 %indvars.iv208, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge189.us.us.us.us.unr-lcssa, label %.lr.ph188.us.us.us.us.new, !llvm.loop !154

._crit_edge189.us.us.us.us.unr-lcssa:             ; preds = %bb.v
  br i1 %lcmp.mod.not, label %._crit_edge189.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge189.us.us.us.us.unr-lcssa, %.lr.ph188.us.us.us.us
  %indvars.iv208.epil.init = phi i64 [ 0, %.lr.ph188.us.us.us.us ], [ %indvars.iv.next209.1, %._crit_edge189.us.us.us.us.unr-lcssa ] ; 2 uses
  %.0186.us.us.us.us.epil.init = phi i8 [ -1, %.lr.ph188.us.us.us.us ], [ %.1.us.us.us.us.1, %._crit_edge189.us.us.us.us.unr-lcssa ] ; 2 uses
  %.0137185.us.us.us.us.epil.init = phi i8 [ 0, %.lr.ph188.us.us.us.us ], [ %.1138.us.us.us.us.1, %._crit_edge189.us.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod11)
  %i.ej = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv208.epil.init
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !46
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.do
  %i.en = load i8, ptr %i.em, align 1, !tbaa !79  ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv208.epil.init
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !23
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.epil.preheader
  %i.er = call i8 @llvm.umin.i8(i8 %.0186.us.us.us.us.epil.init, i8 %i.en)
  br label %._crit_edge189.us.us.us.us

bb.x:                                             ; preds = %.epil.preheader
  %i.es = call i8 @llvm.umax.i8(i8 %.0137185.us.us.us.us.epil.init, i8 %i.en)
  br label %._crit_edge189.us.us.us.us

._crit_edge189.us.us.us.us:                       ; preds = %bb.w, %bb.x, %._crit_edge189.us.us.us.us.unr-lcssa
  %.1138.us.us.us.us.lcssa = phi i8 [ %.1138.us.us.us.us.1, %._crit_edge189.us.us.us.us.unr-lcssa ], [ %i.es, %bb.x ], [ %.0137185.us.us.us.us.epil.init, %bb.w ]
  %.1.us.us.us.us.lcssa = phi i8 [ %.1.us.us.us.us.1, %._crit_edge189.us.us.us.us.unr-lcssa ], [ %.0186.us.us.us.us.epil.init, %bb.x ], [ %i.er, %bb.w ]
  %i.et = call i8 @llvm.umin.i8(i8 %.1138.us.us.us.us.lcssa, i8 %.1.us.us.us.us.lcssa)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.do
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !79
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %i.di
  br i1 %exitcond216.not, label %._crit_edge194.split.us.us.split.us.us, label %.lr.ph188.us.us.us.us, !llvm.loop !155

._crit_edge194.split.us.us.split.us.us:           ; preds = %._crit_edge189.us.us.us.us
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %i.dj
  br i1 %exitcond221.not, label %.thread165, label %.preheader169.us.us, !llvm.loop !156

.preheader169.us:                                 ; preds = %.preheader169.us.preheader, %._crit_edge194.split.us.us.split
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %._crit_edge194.split.us.us.split ], [ 0, %.preheader169.us.preheader ] ; 2 uses
  %i.ev = mul nuw nsw i64 %indvars.iv231, %i.di
  br label %.lr.ph188.us.us

.lr.ph188.us.us:                                  ; preds = %._crit_edge189.us.us, %.preheader169.us
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %._crit_edge189.us.us ], [ 0, %.preheader169.us ] ; 2 uses
  %i.ew = add nuw nsw i64 %indvars.iv226, %i.ev   ; 4 uses
  br i1 %i.dm, label %.epil.preheader12, label %.lr.ph188.us.us.new

.lr.ph188.us.us.new:                              ; preds = %.lr.ph188.us.us, %bb.ad
  %indvars.iv222 = phi i64 [ %indvars.iv.next223.1, %bb.ad ], [ 0, %.lr.ph188.us.us ] ; 4 uses
  %.0186.us.us = phi i8 [ %.1.us.us.1, %bb.ad ], [ -1, %.lr.ph188.us.us ] ; 2 uses
  %.0137185.us.us = phi i8 [ %.1138.us.us.1, %bb.ad ], [ 0, %.lr.ph188.us.us ] ; 2 uses
  %niter19 = phi i64 [ %niter19.next.1, %bb.ad ], [ 0, %.lr.ph188.us.us ]
  %i.ex = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv222
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ew
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !79  ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv222
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !23
  %i.fe = icmp eq i32 %i.fd, 1
  br i1 %i.fe, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph188.us.us.new
  %i.ff = call i8 @llvm.umin.i8(i8 %.0186.us.us, i8 %i.fb)
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph188.us.us.new
  %i.fg = call i8 @llvm.umax.i8(i8 %.0137185.us.us, i8 %i.fb)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1138.us.us = phi i8 [ %i.fg, %bb.z ], [ %.0137185.us.us, %bb.y ] ; 2 uses
  %.1.us.us = phi i8 [ %.0186.us.us, %bb.z ], [ %i.ff, %bb.y ] ; 2 uses
  %indvars.iv.next223 = or disjoint i64 %indvars.iv222, 1 ; 2 uses
  %i.fh = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv.next223
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !46
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.ew
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !79  ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next223
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !23
  %i.fo = icmp eq i32 %i.fn, 1
  br i1 %i.fo, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fp = call i8 @llvm.umin.i8(i8 %.1.us.us, i8 %i.fl)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.fq = call i8 @llvm.umax.i8(i8 %.1138.us.us, i8 %i.fl)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1138.us.us.1 = phi i8 [ %i.fq, %bb.ac ], [ %.1138.us.us, %bb.ab ] ; 3 uses
  %.1.us.us.1 = phi i8 [ %.1.us.us, %bb.ac ], [ %i.fp, %bb.ab ] ; 3 uses
  %indvars.iv.next223.1 = add nuw nsw i64 %indvars.iv222, 2 ; 2 uses
  %niter19.next.1 = add i64 %niter19, 2           ; 2 uses
  %niter19.ncmp.1 = icmp eq i64 %niter19.next.1, %unroll_iter18
  br i1 %niter19.ncmp.1, label %._crit_edge189.us.us.unr-lcssa, label %.lr.ph188.us.us.new, !llvm.loop !154

._crit_edge189.us.us.unr-lcssa:                   ; preds = %bb.ad
  br i1 %lcmp.mod14.not, label %._crit_edge189.us.us, label %.epil.preheader12

.epil.preheader12:                                ; preds = %._crit_edge189.us.us.unr-lcssa, %.lr.ph188.us.us
  %indvars.iv222.epil.init = phi i64 [ 0, %.lr.ph188.us.us ], [ %indvars.iv.next223.1, %._crit_edge189.us.us.unr-lcssa ] ; 2 uses
  %.0186.us.us.epil.init = phi i8 [ -1, %.lr.ph188.us.us ], [ %.1.us.us.1, %._crit_edge189.us.us.unr-lcssa ] ; 2 uses
  %.0137185.us.us.epil.init = phi i8 [ 0, %.lr.ph188.us.us ], [ %.1138.us.us.1, %._crit_edge189.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod17)
  %i.fr = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv222.epil.init
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !46
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.ew
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !79  ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv222.epil.init
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !23
  %i.fy = icmp eq i32 %i.fx, 1
  br i1 %i.fy, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.epil.preheader12
  %i.fz = call i8 @llvm.umin.i8(i8 %.0186.us.us.epil.init, i8 %i.fv)
  br label %._crit_edge189.us.us

bb.af:                                            ; preds = %.epil.preheader12
  %i.ga = call i8 @llvm.umax.i8(i8 %.0137185.us.us.epil.init, i8 %i.fv)
  br label %._crit_edge189.us.us

._crit_edge189.us.us:                             ; preds = %bb.ae, %bb.af, %._crit_edge189.us.us.unr-lcssa
  %.1138.us.us.lcssa = phi i8 [ %.1138.us.us.1, %._crit_edge189.us.us.unr-lcssa ], [ %i.ga, %bb.af ], [ %.0137185.us.us.epil.init, %bb.ae ]
  %.1.us.us.lcssa = phi i8 [ %.1.us.us.1, %._crit_edge189.us.us.unr-lcssa ], [ %.0186.us.us.epil.init, %bb.af ], [ %i.fz, %bb.ae ]
  %i.gb = call i8 @llvm.umin.i8(i8 %.1138.us.us.lcssa, i8 %.1.us.us.lcssa)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ew
  %i.gd = xor i8 %i.gb, -1
  store i8 %i.gd, ptr %i.gc, align 1, !tbaa !79
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %i.di
  br i1 %exitcond230.not, label %._crit_edge194.split.us.us.split, label %.lr.ph188.us.us, !llvm.loop !155

._crit_edge194.split.us.us.split:                 ; preds = %._crit_edge189.us.us
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %i.dj
  br i1 %exitcond235.not, label %.thread165, label %.preheader169.us, !llvm.loop !156

.loopexit:                                        ; preds = %bb.e, %.preheader169.preheader, %._crit_edge182, %.preheader169.lr.ph, %bb.d
  %.not161 = icmp eq ptr %i.p, null
  br i1 %.not161, label %.thread, label %.thread165

.thread165:                                       ; preds = %get_contour_orientation.exit, %._crit_edge194.split.us.us.split.us.us, %._crit_edge194.split.us.us.split, %.loopexit
  call void @ft_mem_free(ptr noundef nonnull %i.d, ptr noundef nonnull %i.p) #12
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %.thread165, %.loopexit
  %.not162 = icmp eq ptr %i.n, null
  br i1 %.not162, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %.thread
  %i.ge = icmp eq i32 %.0148.lcssa, 0
  br i1 %i.ge, label %bb.ah, label %.preheader

bb.ah:                                            ; preds = %bb.ag
  store i32 97, ptr %i.a, align 4, !tbaa !23
  br label %bb.aj

.preheader:                                       ; preds = %bb.ag, %.preheader
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %.preheader ], [ 0, %bb.ag ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv240
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !46
  call void @ft_mem_free(ptr noundef nonnull %i.d, ptr noundef %i.gh) #12
  store ptr null, ptr %i.gg, align 8, !tbaa !46
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond244.not = icmp eq i64 %indvars.iv.next241, %i.m
  br i1 %exitcond244.not, label %bb.ai, label %.preheader, !llvm.loop !157

bb.ai:                                            ; preds = %.preheader
  call void @ft_mem_free(ptr noundef nonnull %i.d, ptr noundef nonnull %i.n) #12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %.thread
  %i.gi = load i32, ptr %i.a, align 4, !tbaa !23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.b, %bb.aj
  %.0140 = phi i32 [ %i.gi, %bb.aj ], [ 6, %bb.b ], [ 6, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0140
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sdf_generate_subdivision(i64 range(i64 0, 281474976710656) %0, i32 range(i32 0, 2) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %6 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %7 = alloca %struct.FT_Vector_, align 8         ; 7 uses
  %8 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %9 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %10 = alloca %struct.FT_Vector_, align 8        ; 7 uses
  %11 = alloca %struct.FT_Vector_, align 8        ; 6 uses
  %12 = alloca %struct.FT_Vector_, align 8        ; 7 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %13 = alloca [3 x %struct.FT_Vector_], align 16 ; 7 uses
  %14 = alloca [4 x %struct.FT_Vector_], align 16 ; 7 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %split_sdf_shape.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !99     ; 7 uses
  %.not65.i = icmp eq ptr %i.e, null
  br i1 %.not65.i, label %split_sdf_shape.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !134  ; 2 uses
  %.not66112.i = icmp eq ptr %i.g, null
  br i1 %.not66112.i, label %.loopexit, label %.lr.ph116.i

.lr.ph116.i:                                      ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph116.i
  %.046114.i = phi ptr [ null, %.lr.ph116.i ], [ %i.ar, %.loopexit.i ]
  %.048113.i = phi ptr [ %i.g, %.lr.ph116.i ], [ %i.ax, %.loopexit.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.048113.i, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8, !tbaa !158
  %.not67107.i = icmp eq ptr %i.n, null
  br i1 %.not67107.i, label %._crit_edge111.i, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %bb.d, %bb.i
  %.044108.i = phi ptr [ %i.aq, %bb.i ], [ %i.n, %bb.d ] ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.044108.i, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !141
  switch i32 %i.p, label %.thread95.i [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %.lr.ph110.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %i.q = call ptr @ft_mem_qalloc(ptr noundef nonnull %i.e, i64 noundef 80, ptr noundef nonnull %i.c) #12 ; 4 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %.not8.i.i = icmp eq i32 %i.r, 0
  br i1 %.not8.i.i, label %.thread.i, label %sdf_edge_new.exit.i

sdf_edge_new.exit.i:                              ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.thread95.i

.thread.i:                                        ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %.044108.i, i64 72, i1 false)
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !158
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store ptr %i.s, ptr %i.t, align 8, !tbaa !151
  store ptr %i.q, ptr %i.d, align 8, !tbaa !158
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph110.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %.044108.i, i64 16, i1 false), !tbaa.struct !123
  %i.u = getelementptr inbounds nuw i8, ptr %.044108.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !123
  %i.v = getelementptr inbounds nuw i8, ptr %.044108.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !123
  %i.w = load <2 x i64>, ptr %i.l, align 16, !tbaa !90
  %i.x = load <2 x i64>, ptr %13, align 16, !tbaa !90
  %i.y = add nsw <2 x i64> %i.x, %i.w
  %i.z = load <2 x i64>, ptr %i.k, align 16, !tbaa !90
  %i.aa = shl <2 x i64> %i.z, splat (i64 1)
  %i.ab = sub <2 x i64> %i.y, %i.aa
  %i.ac = call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.ab, i1 true)
  %i.ad = trunc <2 x i64> %i.ac to <2 x i32>      ; 2 uses
  %i.ae = extractelement <2 x i32> %i.ad, i64 0
  %i.af = extractelement <2 x i32> %i.ad, i64 1
  %.042.i = call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.af) ; 2 uses
  %i.ag = icmp sgt i32 %.042.i, 8
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.041106.i = phi i32 [ %i.ai, %.lr.ph.i ], [ 1, %bb.f ]
  %.143105.i = phi i32 [ %i.ah, %.lr.ph.i ], [ %.042.i, %bb.f ] ; 2 uses
  %i.ah = lshr i32 %.143105.i, 2
  %i.ai = shl i32 %.041106.i, 1                   ; 2 uses
  %i.aj = icmp samesign ugt i32 %.143105.i, 35
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !159

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.041.lcssa.i = phi i32 [ 1, %bb.f ], [ %i.ai, %.lr.ph.i ]
  %i.ak = call fastcc i32 @split_sdf_conic(ptr noundef %i.e, ptr noundef %13, i32 noundef %.041.lcssa.i, ptr noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph110.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %.044108.i, i64 16, i1 false), !tbaa.struct !123
  %i.al = getelementptr inbounds nuw i8, ptr %.044108.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !123
  %i.am = getelementptr inbounds nuw i8, ptr %.044108.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !123
  %i.an = getelementptr inbounds nuw i8, ptr %.044108.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !123
  %i.ao = call fastcc i32 @split_sdf_cubic(ptr noundef %i.e, ptr noundef %14, i32 noundef 32, ptr noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.151.i = phi i32 [ %i.ao, %bb.g ], [ %i.ak, %._crit_edge.i ] ; 2 uses
  %.not70.i = icmp eq i32 %.151.i, 0
  br i1 %.not70.i, label %bb.i, label %.thread95.i

bb.i:                                             ; preds = %bb.h, %.thread.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.044108.i, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !151 ; 2 uses
  %.not67.i = icmp eq ptr %i.aq, null
  br i1 %.not67.i, label %._crit_edge111.i, label %.lr.ph110.i, !llvm.loop !160

._crit_edge111.i:                                 ; preds = %bb.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !23
  %i.ar = call ptr @ft_mem_qalloc(ptr noundef nonnull %i.e, i64 noundef 32, ptr noundef nonnull %i.b) #12 ; 5 uses
  %i.as = load i32, ptr %i.b, align 4, !tbaa !23  ; 2 uses
  %.not8.i72.i = icmp eq i32 %i.as, 0
  br i1 %.not8.i72.i, label %bb.j, label %sdf_contour_new.exit.i

sdf_contour_new.exit.i:                           ; preds = %._crit_edge111.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.thread95.i

bb.j:                                             ; preds = %._crit_edge111.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %.046114.i, ptr %i.at, align 8, !tbaa !135
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !158
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.au, ptr %i.av, align 8, !tbaa !140
  store ptr null, ptr %i.d, align 8, !tbaa !158
  %i.aw = getelementptr inbounds nuw i8, ptr %.048113.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !135 ; 2 uses
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !140 ; 2 uses
  %.not1617.i.i = icmp eq ptr %i.ay, null
  br i1 %.not1617.i.i, label %.loopexit.i, label %sdf_edge_done.exit.i.i

sdf_edge_done.exit.i.i:                           ; preds = %bb.j, %sdf_edge_done.exit.i.i
  %.018.i.i = phi ptr [ %i.ba, %sdf_edge_done.exit.i.i ], [ %i.ay, %bb.j ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !151 ; 2 uses
  call void @ft_mem_free(ptr noundef nonnull %i.e, ptr noundef nonnull %.018.i.i) #12
  %.not16.i.i = icmp eq ptr %i.ba, null
  br i1 %.not16.i.i, label %.loopexit.i, label %sdf_edge_done.exit.i.i, !llvm.loop !161

.thread95.i:                                      ; preds = %bb.h, %.lr.ph110.i, %sdf_contour_new.exit.i, %sdf_edge_new.exit.i
  %.3.ph.i = phi i32 [ %i.as, %sdf_contour_new.exit.i ], [ %i.r, %sdf_edge_new.exit.i ], [ %.151.i, %bb.h ], [ 6, %.lr.ph110.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %split_sdf_shape.exit.thread

.loopexit.i:                                      ; preds = %sdf_edge_done.exit.i.i, %bb.j
  call void @ft_mem_free(ptr noundef nonnull %i.e, ptr noundef nonnull %.048113.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %.not66.i = icmp eq ptr %i.ax, null
  br i1 %.not66.i, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %.loopexit.i, %bb.c
  %.046.lcssa.i = phi ptr [ null, %bb.c ], [ %i.ar, %.loopexit.i ]
  store ptr %.046.lcssa.i, ptr %i.f, align 8, !tbaa !134
  %.fr251.i = freeze i64 %0                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.bb = shl i32 %3, 16                          ; 6 uses
  %i.bc = icmp eq ptr %4, null
  %i.bd = add i32 %3, -33
  %or.cond3.i = icmp ult i32 %i.bd, -31
  %or.cond314.i = or i1 %i.bc, %or.cond3.i
  br i1 %or.cond314.i, label %.loopexit.sink.split.i, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.be = load ptr, ptr %2, align 8, !tbaa !99    ; 10 uses
  %.not.i10 = icmp eq ptr %i.be, null
  br i1 %.not.i10, label %.loopexit.sink.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load i32, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !49 ; 2 uses
  %i.bi = udiv i32 2147483647, %i.bh
  %i.bj = icmp ugt i32 %i.bf, %i.bi
  br i1 %i.bj, label %.loopexit.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = mul i32 %i.bh, %i.bf
  %i.bl = zext i32 %i.bk to i64
  %i.bm = call ptr @ft_mem_realloc(ptr noundef nonnull %i.be, i64 noundef 12, i64 noundef 0, i64 noundef %i.bl, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 10 uses
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !23
  %.not164.i = icmp eq i32 %i.bn, 0
  br i1 %.not164.i, label %bb.n, label %sdf_generate_bounding_box.exit

bb.n:                                             ; preds = %bb.m
  %i.bo = load i32, ptr %i.bg, align 4, !tbaa !49 ; 5 uses
  %i.bp = load i32, ptr %4, align 8, !tbaa !47    ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !46 ; 2 uses
  %i.bs = icmp eq i32 %i.bo, 0
  %i.bt = icmp eq i32 %i.bp, 0
  %or.cond5.i = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond5.i, label %.loopexit.sink.split.i, label %.preheader221.i

.preheader221.i:                                  ; preds = %bb.n
  %.0140238.i = load ptr, ptr %i.f, align 8, !tbaa !139 ; 2 uses
  %.not165239.i = icmp eq ptr %.0140238.i, null
  br i1 %.not165239.i, label %.preheader.i, label %.lr.ph241.i

.lr.ph241.i:                                      ; preds = %.preheader221.i
  %i.bu = zext nneg i32 %3 to i64                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i23.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cb = and i64 %.fr251.i, 4294967295
  %i.cc = icmp eq i64 %i.cb, 1
  %.not172.i = icmp samesign ult i64 %.fr251.i, 1099511627776
  %i.cd = sext i32 %i.bo to i64
  %i.ce = sext i32 %i.bp to i64
  br label %bb.q

.preheader.i:                                     ; preds = %._crit_edge.i13, %.preheader221.i
  %i.cf = icmp sgt i32 %i.bp, 0
  br i1 %i.cf, label %.lr.ph248.i, label %sdf_generate_bounding_box.exit

.lr.ph248.i:                                      ; preds = %.preheader.i
  %.not166.i = icmp eq i32 %1, 0
  %spec.select.i = select i1 %.not166.i, i8 -1, i8 1 ; 2 uses
  %i.cg = icmp sgt i32 %i.bo, 0
  %i.ch = zext nneg i32 %i.bb to i64              ; 2 uses
  br i1 %i.cg, label %.lr.ph248.split.i, label %sdf_generate_bounding_box.exit

.lr.ph248.split.i:                                ; preds = %.lr.ph248.i
  %i.ci = and i64 %.fr251.i, 1095216660480
  %.not167.i = icmp eq i64 %i.ci, 0
  %i.cj = zext nneg i32 %i.bo to i64              ; 4 uses
  %wide.trip.count279.i = zext nneg i32 %i.bp to i64 ; 2 uses
  br i1 %.not167.i, label %.lr.ph245.us.i, label %.lr.ph245.i

.lr.ph245.us.i:                                   ; preds = %.lr.ph248.split.i, %._crit_edge246.split.us.us.i
  %indvars.iv276.i = phi i64 [ %indvars.iv.next277.i, %._crit_edge246.split.us.us.i ], [ 0, %.lr.ph248.split.i ] ; 2 uses
  %i.ck = mul nuw nsw i64 %indvars.iv276.i, %i.cj
  br label %bb.o

bb.o:                                             ; preds = %.thread.i14, %.lr.ph245.us.i
  %indvars.iv272.i = phi i64 [ %indvars.iv.next273.i, %.thread.i14 ], [ 0, %.lr.ph245.us.i ] ; 2 uses
  %.1243.us.us.i = phi i8 [ %.2.us.us304.i, %.thread.i14 ], [ %spec.select.i, %.lr.ph245.us.i ]
  %i.cl = add nuw nsw i64 %indvars.iv272.i, %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.cl ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !162 ; 2 uses
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %.thread.i14, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.pre283.i = load i32, ptr %i.cm, align 4, !tbaa !164
  %spec.select312.i = call i32 @llvm.smin.i32(i32 %.pre283.i, i32 %i.bb)
  br label %.thread.i14

.thread.i14:                                      ; preds = %bb.p, %bb.o
  %.2.us.us304.i = phi i8 [ %.1243.us.us.i, %bb.o ], [ %i.co, %bb.p ] ; 2 uses
  %i.cq = phi i32 [ %i.bb, %bb.o ], [ %spec.select312.i, %bb.p ]
  %i.cr = sext i8 %.2.us.us304.i to i32
  %i.cs = mul nsw i32 %i.cq, %i.cr                ; 2 uses
  store i32 %i.cs, ptr %i.cm, align 4, !tbaa !164
  %i.ct = sext i32 %i.cs to i64
  %i.cu = call i64 @FT_DivFix(i64 noundef %i.ct, i64 noundef %i.ch) #12
  %i.cv = trunc i64 %i.cu to i32                  ; 3 uses
  %i.cw = icmp slt i32 %i.cv, 0
  %i.cx = call i32 @llvm.abs.i32(i32 %i.cv, i1 true) ; 2 uses
  %i.cy = lshr i32 %i.cx, 9
  %i.cz = icmp sgt i32 %i.cv, 0
  %i.da = icmp samesign ugt i32 %i.cx, 65535
  %or.cond.i.us.us.i = select i1 %i.cz, i1 %i.da, i1 false
  %spec.store.select4.i.us.us.i = select i1 %or.cond.i.us.us.i, i32 127, i32 %i.cy ; 2 uses
  %i.db = call i32 @llvm.umin.i32(i32 %spec.store.select4.i.us.us.i, i32 128)
  %i.dc = sub nsw i32 0, %i.db
  %.p.i.us.us.i = select i1 %i.cw, i32 %i.dc, i32 %spec.store.select4.i.us.us.i
  %i.dd = trunc i32 %.p.i.us.us.i to i8
  %i.de = xor i8 %i.dd, -128
  %i.df = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cl
  store i8 %i.de, ptr %i.df, align 1, !tbaa !79
  %indvars.iv.next273.i = add nuw nsw i64 %indvars.iv272.i, 1 ; 2 uses
  %exitcond275.not.i = icmp eq i64 %indvars.iv.next273.i, %i.cj
  br i1 %exitcond275.not.i, label %._crit_edge246.split.us.us.i, label %bb.o, !llvm.loop !165

._crit_edge246.split.us.us.i:                     ; preds = %.thread.i14
  %indvars.iv.next277.i = add nuw nsw i64 %indvars.iv276.i, 1 ; 2 uses
  %exitcond280.not.i = icmp eq i64 %indvars.iv.next277.i, %wide.trip.count279.i
  br i1 %exitcond280.not.i, label %sdf_generate_bounding_box.exit, label %.lr.ph245.us.i, !llvm.loop !166

bb.q:                                             ; preds = %._crit_edge.i13, %.lr.ph241.i
  %.0140240.i = phi ptr [ %.0140238.i, %.lr.ph241.i ], [ %.0140.i, %._crit_edge.i13 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0140240.i, i64 16
  %.0148234.i = load ptr, ptr %i.dg, align 8, !tbaa !158 ; 2 uses
  %.not168235.i = icmp eq ptr %.0148234.i, null
  br i1 %.not168235.i, label %._crit_edge.i13, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.q, %._crit_edge228.i
  %.0148236.i = phi ptr [ %.0148.i, %._crit_edge228.i ], [ %.0148234.i, %bb.q ] ; 13 uses
  %.0148175.sroa.0.0.copyload.i = load i64, ptr %.0148236.i, align 8 ; 4 uses
  %.0148175.sroa.5.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 8 ; 4 uses
  %.0148175.sroa.5.0.copyload.i = load i64, ptr %.0148175.sroa.5.0..0148.sroa_idx.i, align 8 ; 4 uses
  %.0148175.sroa.7.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 16 ; 4 uses
  %.0148175.sroa.7.0.copyload.i = load i64, ptr %.0148175.sroa.7.0..0148.sroa_idx.i, align 8 ; 2 uses
  %.0148175.sroa.8.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 24 ; 4 uses
  %.0148175.sroa.8.0.copyload.i = load i64, ptr %.0148175.sroa.8.0..0148.sroa_idx.i, align 8 ; 2 uses
  %.0148175.sroa.9.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 32 ; 3 uses
  %.0148175.sroa.9.0.copyload.i = load i64, ptr %.0148175.sroa.9.0..0148.sroa_idx.i, align 8 ; 4 uses
  %.0148175.sroa.11.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 40 ; 3 uses
  %.0148175.sroa.11.0.copyload.i = load i64, ptr %.0148175.sroa.11.0..0148.sroa_idx.i, align 8 ; 4 uses
  %.0148175.sroa.13.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 48 ; 2 uses
  %.0148175.sroa.14.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 56 ; 2 uses
  %.0148175.sroa.15.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 64 ; 2 uses
  %.0148175.sroa.15.0.copyload.i = load i32, ptr %.0148175.sroa.15.0..0148.sroa_idx.i, align 8
  switch i32 %.0148175.sroa.15.0.copyload.i, label %get_control_box.exit.i [
    i32 3, label %.critedge.i.i
    i32 2, label %.critedge4.i.i
    i32 1, label %bb.r
  ]

.critedge.i.i:                                    ; preds = %.lr.ph.i12
  %.0148175.sroa.14.0.copyload.i = load i64, ptr %.0148175.sroa.14.0..0148.sroa_idx.i, align 8 ; 2 uses
  %.0148175.sroa.13.0.copyload.i = load i64, ptr %.0148175.sroa.13.0..0148.sroa_idx.i, align 8 ; 2 uses
  %i.dh = call i64 @llvm.smin.i64(i64 %.0148175.sroa.9.0.copyload.i, i64 %.0148175.sroa.13.0.copyload.i)
  %i.di = call i64 @llvm.smax.i64(i64 %.0148175.sroa.9.0.copyload.i, i64 %.0148175.sroa.13.0.copyload.i)
  %i.dj = call i64 @llvm.smin.i64(i64 %.0148175.sroa.11.0.copyload.i, i64 %.0148175.sroa.14.0.copyload.i)
  %i.dk = call i64 @llvm.smax.i64(i64 %.0148175.sroa.11.0.copyload.i, i64 %.0148175.sroa.14.0.copyload.i)
  br label %.critedge4.i.i

.critedge4.i.i:                                   ; preds = %.critedge.i.i, %.lr.ph.i12
  %i.dl = phi i64 [ %i.dk, %.critedge.i.i ], [ %.0148175.sroa.11.0.copyload.i, %.lr.ph.i12 ]
  %i.dm = phi i64 [ %i.dj, %.critedge.i.i ], [ %.0148175.sroa.11.0.copyload.i, %.lr.ph.i12 ]
  %i.dn = phi i64 [ %i.di, %.critedge.i.i ], [ %.0148175.sroa.9.0.copyload.i, %.lr.ph.i12 ]
  %i.do = phi i64 [ %i.dh, %.critedge.i.i ], [ %.0148175.sroa.9.0.copyload.i, %.lr.ph.i12 ]
  %i.dp = call i64 @llvm.smin.i64(i64 %.0148175.sroa.0.0.copyload.i, i64 %i.do)
  %i.dq = call i64 @llvm.smax.i64(i64 %.0148175.sroa.0.0.copyload.i, i64 %i.dn)
  %i.dr = call i64 @llvm.smin.i64(i64 %.0148175.sroa.5.0.copyload.i, i64 %i.dm)
  %i.ds = call i64 @llvm.smax.i64(i64 %.0148175.sroa.5.0.copyload.i, i64 %i.dl)
  br label %bb.r

bb.r:                                             ; preds = %.critedge4.i.i, %.lr.ph.i12
  %i.dt = phi i64 [ %i.ds, %.critedge4.i.i ], [ %.0148175.sroa.5.0.copyload.i, %.lr.ph.i12 ]
  %i.du = phi i64 [ %i.dr, %.critedge4.i.i ], [ %.0148175.sroa.5.0.copyload.i, %.lr.ph.i12 ]
  %i.dv = phi i64 [ %i.dq, %.critedge4.i.i ], [ %.0148175.sroa.0.0.copyload.i, %.lr.ph.i12 ]
  %i.dw = phi i64 [ %i.dp, %.critedge4.i.i ], [ %.0148175.sroa.0.0.copyload.i, %.lr.ph.i12 ]
  %i.dx = call i64 @llvm.smin.i64(i64 %.0148175.sroa.7.0.copyload.i, i64 %i.dw)
  %i.dy = call i64 @llvm.smax.i64(i64 %.0148175.sroa.7.0.copyload.i, i64 %i.dv)
  %i.dz = call i64 @llvm.smin.i64(i64 %.0148175.sroa.8.0.copyload.i, i64 %i.du)
  %i.ea = call i64 @llvm.smax.i64(i64 %.0148175.sroa.8.0.copyload.i, i64 %i.dt)
  %i.eb = add nsw i64 %i.dx, -63
  %i.ec = sdiv i64 %i.eb, 64
  %i.ed = add nsw i64 %i.dy, 63
  %i.ee = sdiv i64 %i.ed, 64
  %i.ef = add nsw i64 %i.dz, -63
  %i.eg = sdiv i64 %i.ef, 64
  %i.eh = add nsw i64 %i.ea, 63
  %i.ei = sdiv i64 %i.eh, 64
  %i.ej = trunc i64 %i.eg to i32
  %i.ek = trunc i64 %i.ec to i32
  br label %get_control_box.exit.i

get_control_box.exit.i:                           ; preds = %bb.r, %.lr.ph.i12
  %.sroa.0.0.i = phi i32 [ 0, %.lr.ph.i12 ], [ %i.ek, %bb.r ]
  %.sroa.7.0.i = phi i32 [ 0, %.lr.ph.i12 ], [ %i.ej, %bb.r ]
  %.sroa.9.0.i = phi i64 [ 0, %.lr.ph.i12 ], [ %i.ee, %bb.r ]
  %.sroa.11.0.i = phi i64 [ 0, %.lr.ph.i12 ], [ %i.ei, %bb.r ]
  %i.el = add nsw i64 %.sroa.9.0.i, %i.bu         ; 2 uses
  %i.em = add nsw i64 %.sroa.11.0.i, %i.bu        ; 2 uses
  %i.en = sub i32 %.sroa.7.0.i, %3
  %i.eo = sext i32 %i.en to i64                   ; 2 uses
  %i.ep = icmp sgt i64 %i.em, %i.eo
  br i1 %i.ep, label %.lr.ph227.i, label %._crit_edge228.i

.lr.ph227.i:                                      ; preds = %get_control_box.exit.i
  %i.eq = sub i32 %.sroa.0.0.i, %3
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = icmp sgt i64 %i.el, %i.er
  br i1 %i.es, label %.lr.ph.us.i, label %._crit_edge228.i

.lr.ph.us.i:                                      ; preds = %.lr.ph227.i, %._crit_edge.us.i
  %indvars.iv262.i = phi i64 [ %indvars.iv.next263.i, %._crit_edge.us.i ], [ %i.eo, %.lr.ph227.i ] ; 5 uses
  %i.et = icmp sgt i64 %indvars.iv262.i, -1
  %.not170.us.i = icmp slt i64 %indvars.iv262.i, %i.ce
  %or.cond174.us.i = select i1 %i.et, i1 %.not170.us.i, i1 false
  %i.eu = shl nsw i64 %indvars.iv262.i, 6
  %i.ev = or disjoint i64 %i.eu, 32               ; 5 uses
  %i.ew = shl nuw nsw i64 %i.ev, 10               ; 2 uses
  %or.cond174.fr.us.i = freeze i1 %or.cond174.us.i
  br i1 %or.cond174.fr.us.i, label %.lr.ph.split.us.us.preheader.i, label %._crit_edge.us.i

.lr.ph.split.us.us.preheader.i:                   ; preds = %.lr.ph.us.i
  %i.ex = trunc nsw i64 %indvars.iv262.i to i32   ; 2 uses
  %i.ey = xor i32 %i.ex, -1
  %i.ez = add i32 %i.bp, %i.ey
  %.0146.pn.us.i = select i1 %.not172.i, i32 %i.ez, i32 %i.ex
  %.pn.us.i = mul nsw i32 %.0146.pn.us.i, %i.bo
  br label %.lr.ph.split.us.us.i

._crit_edge.us.i:                                 ; preds = %bb.as, %.lr.ph.us.i
  %indvars.iv.next263.i = add nsw i64 %indvars.iv262.i, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next263.i, %i.em
  br i1 %exitcond39.not, label %._crit_edge228.i, label %.lr.ph.us.i, !llvm.loop !167

.lr.ph.split.us.us.i:                             ; preds = %bb.as, %.lr.ph.split.us.us.preheader.i
  %indvars.iv.i = phi i64 [ %i.er, %.lr.ph.split.us.us.preheader.i ], [ %indvars.iv.next.i, %bb.as ] ; 5 uses
  %i.fa = icmp sgt i64 %indvars.iv.i, -1
  %.not169.us.us.i = icmp slt i64 %indvars.iv.i, %i.cd
  %or.cond173.us.us.i = and i1 %i.fa, %.not169.us.us.i
  br i1 %or.cond173.us.us.i, label %bb.s, label %bb.as

bb.s:                                             ; preds = %.lr.ph.split.us.us.i
  %i.fb = shl nuw nsw i64 %indvars.iv.i, 6
  %i.fc = or disjoint i64 %i.fb, 32               ; 6 uses
  %i.fd = load i32, ptr %.0148175.sroa.15.0..0148.sroa_idx.i, align 8, !tbaa !141
  switch i32 %i.fd, label %.loopexit.sink.split.i [
    i32 1, label %bb.aj
    i32 2, label %bb.ab
    i32 3, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %.sroa.069.0.copyload.i.i.us.us.i = load i64, ptr %.0148236.i, align 8, !tbaa !90 ; 4 uses
  %.sroa.773.0.copyload.i.i.us.us.i = load i64, ptr %.0148175.sroa.5.0..0148.sroa_idx.i, align 8, !tbaa !90 ; 4 uses
  %.sroa.063.0.copyload.i.i.us.us.i = load i64, ptr %.0148175.sroa.9.0..0148.sroa_idx.i, align 8, !tbaa !90 ; 3 uses
  %.sroa.666.0.copyload.i.i.us.us.i = load i64, ptr %.0148175.sroa.11.0..0148.sroa_idx.i, align 8, !tbaa !90 ; 3 uses
end_hunk_1
