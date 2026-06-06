begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gx_device_color_s = type { i64, i64, i32, ptr }
%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, ptr, %struct.gs_fixed_rect_s, ptr, ptr, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.gs_memory_procs = type { ptr, ptr }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }

@gs_image_enum_sizeof = dso_local local_unnamed_addr global i32 8376, align 4
@map_4_to_32 = dso_local local_unnamed_addr global [16 x i32] [i32 0, i32 -16777216, i32 16711680, i32 -65536, i32 65280, i32 -16711936, i32 16776960, i32 -256, i32 255, i32 -16776961, i32 16711935, i32 -65281, i32 65535, i32 -16711681, i32 16777215, i32 -1], align 16
@map_4_to_16 = dso_local local_unnamed_addr global [16 x i16] [i16 0, i16 21760, i16 -22016, i16 -256, i16 85, i16 21845, i16 -21931, i16 -171, i16 170, i16 21930, i16 -21846, i16 -86, i16 255, i16 22015, i16 -21761, i16 -1], align 16
@.str = private unnamed_addr constant [13 x i8] c"image buffer\00", align 1
@image_init.procs = internal unnamed_addr constant [4 x ptr] [ptr @image_unpack_0, ptr @image_unpack_1, ptr @image_unpack_2, ptr @image_unpack_3], align 16
@image_init.spread_procs = internal unnamed_addr constant [4 x ptr] [ptr @image_unpack_0_spread, ptr @image_unpack_1_spread, ptr @image_unpack_2, ptr @image_unpack_3_spread], align 16
@switch.table.gs_image_init = private unnamed_addr constant [9 x i8] [i8 4, i8 3, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 3, i8 4], align 4
@switch.table.gs_image_init.1 = private unnamed_addr constant [9 x i8] [i8 4, i8 3, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 1, i8 1], align 4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @gs_image_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 436
  %i.b = load i8, ptr %i.a, align 4, !tbaa !8
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %4)
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.split, label %bb.e

.split:                                           ; preds = %bb.b
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %4, i1 true) ; 2 uses
  switch i32 %i.e, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %.split, %.split, %.split
  %i.f = ashr i32 %4, 1
  br label %bb.d

bb.d:                                             ; preds = %.split, %bb.c
  %.016 = phi i32 [ %i.f, %bb.c ], [ %i.e, %.split ]
  %switch.tableidx = add i32 %5, 4                ; 4 uses
  %i.g = icmp ult i32 %switch.tableidx, 9
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 419, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.g, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %bb.d
  %i.h = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.gs_image_init, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.i = zext nneg i32 %switch.tableidx to i64
  %switch.gep19 = getelementptr inbounds nuw i8, ptr @switch.table.gs_image_init.1, i64 %i.i
  %switch.load20 = load i8, ptr %switch.gep19, align 1
  %switch.ext21 = zext i8 %switch.load20 to i32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !29
  %i.p = tail call i32 @image_init(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %.016, i32 noundef %switch.ext, i32 noundef %switch.ext21, ptr noundef %6, ptr noundef nonnull %1, i64 noundef %i.m, i64 noundef %i.o)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.split, %bb.b, %bb.a, %switch.lookup
  %.017 = phi i32 [ %i.p, %switch.lookup ], [ -21, %bb.a ], [ -15, %.split ], [ -15, %bb.b ], [ -15, %bb.d ]
  ret i32 %.017
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @image_init(ptr nofree noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.gs_matrix_s, align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.a = add nsw i32 %1, 8
  %i.b = mul nsw i32 %4, %i.a                     ; 2 uses
  %i.c = icmp slt i32 %1, 1
  %i.d = icmp slt i32 %2, 0
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %bb.ae, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @gs_matrix_invert(ptr noundef %6, ptr noundef nonnull %10) #9 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.i = call i32 @gs_matrix_multiply(ptr noundef nonnull %10, ptr noundef nonnull %i.h, ptr noundef nonnull %10) #9 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.ae, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = call ptr @gs_malloc(i32 noundef 1, i32 noundef %i.b, ptr noundef nonnull @.str) #9 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.ae, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %1, ptr %0, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.m, align 4, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.n, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %i.o, align 4, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %5, ptr %i.p, align 8, !tbaa !35
  %i.q = load float, ptr %10, align 8, !tbaa !36
  %i.r = fmul float %i.q, 4.096000e+03
  %i.s = fptosi float %i.r to i64                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.s, ptr %i.t, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.v = load float, ptr %i.u, align 8, !tbaa !38
  %i.w = fmul float %i.v, 4.096000e+03
  %i.x = fptosi float %i.w to i64                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.x, ptr %i.y, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = or i64 %i.ac, %i.aa
  %.mask = and i64 %i.ad, 9223372036854775807
  %i.ae = icmp ne i64 %.mask, 0                   ; 6 uses
  %i.af = zext i1 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !40
  %i.ah = trunc i64 %i.aa to i32
  %i.ai = bitcast i32 %i.ah to float              ; 2 uses
  %i.aj = trunc i64 %i.ac to i32
  %i.ak = bitcast i32 %i.aj to float              ; 2 uses
  %i.al = fmul float %i.ai, 4.096000e+03
  %i.am = fptosi float %i.al to i64
  %i.an = fmul float %i.ak, 4.096000e+03
  %i.ao = fptosi float %i.an to i64
  %.sink161 = select i1 %i.ae, i64 %i.am, i64 0
  %.sink = select i1 %i.ae, i64 %i.ao, i64 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink161, ptr %i.ap, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sink, ptr %i.aq, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.as = load float, ptr %i.ar, align 8, !tbaa !43
  %i.at = fmul float %i.as, 4.096000e+03
  %i.au = fptosi float %i.at to i64               ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.au, ptr %i.av, align 8, !tbaa !44
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !45
  %i.ay = fmul float %i.ax, 4.096000e+03
  %i.az = fptosi float %i.ay to i64               ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %7, ptr %i.bb, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.k, ptr %i.bc, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.b, ptr %i.bd, align 8, !tbaa !49
  %i.be = zext nneg i32 %1 to i64                 ; 4 uses
  %i.bf = zext nneg i32 %3 to i64
  %i.bg = shl i64 %i.be, %i.bf
  %i.bh = sext i32 %4 to i64
  %i.bi = mul i64 %i.bg, %i.bh
  %i.bj = sext i32 %5 to i64
  %i.bk = udiv i64 %i.bi, %i.bj
  %i.bl = add i64 %i.bk, 7
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !50
  %i.bp = icmp eq i32 %4, 1
  br i1 %i.bp, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  switch i32 %3, label %.loopexit [
    i32 3, label %bb.h
    i32 2, label %bb.j
    i32 1, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0137 = phi i32 [ 64, %bb.h ], [ %i.ci, %bb.i ] ; 2 uses
  %.0136 = phi ptr [ %i.bq, %bb.h ], [ %i.ch, %bb.i ] ; 17 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0136, i64 112
  store i32 -1, ptr %i.br, align 8, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %.0136, i64 80
  store i32 -1, ptr %i.bs, align 8, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %.0136, i64 48
  store i32 -1, ptr %i.bt, align 8, !tbaa !51
  %i.bu = getelementptr inbounds nuw i8, ptr %.0136, i64 16
  store i32 -1, ptr %i.bu, align 8, !tbaa !51
  %i.bv = getelementptr inbounds nuw i8, ptr %.0136, i64 240
  store i32 -1, ptr %i.bv, align 8, !tbaa !51
  %i.bw = getelementptr inbounds nuw i8, ptr %.0136, i64 208
  store i32 -1, ptr %i.bw, align 8, !tbaa !51
  %i.bx = getelementptr inbounds nuw i8, ptr %.0136, i64 176
  store i32 -1, ptr %i.bx, align 8, !tbaa !51
  %i.by = getelementptr inbounds nuw i8, ptr %.0136, i64 144
  store i32 -1, ptr %i.by, align 8, !tbaa !51
  %i.bz = getelementptr inbounds nuw i8, ptr %.0136, i64 368
  store i32 -1, ptr %i.bz, align 8, !tbaa !51
  %i.ca = getelementptr inbounds nuw i8, ptr %.0136, i64 336
  store i32 -1, ptr %i.ca, align 8, !tbaa !51
  %i.cb = getelementptr inbounds nuw i8, ptr %.0136, i64 304
  store i32 -1, ptr %i.cb, align 8, !tbaa !51
  %i.cc = getelementptr inbounds nuw i8, ptr %.0136, i64 272
  store i32 -1, ptr %i.cc, align 8, !tbaa !51
  %i.cd = getelementptr inbounds nuw i8, ptr %.0136, i64 496
  store i32 -1, ptr %i.cd, align 8, !tbaa !51
  %i.ce = getelementptr inbounds nuw i8, ptr %.0136, i64 464
  store i32 -1, ptr %i.ce, align 8, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %.0136, i64 432
  store i32 -1, ptr %i.cf, align 8, !tbaa !51
  %i.cg = getelementptr inbounds nuw i8, ptr %.0136, i64 400
  store i32 -1, ptr %i.cg, align 8, !tbaa !51
  %i.ch = getelementptr inbounds nuw i8, ptr %.0136, i64 512
  %i.ci = add nsw i32 %.0137, -4
  %.not = icmp eq i32 %.0137, 4
  br i1 %.not, label %.loopexit, label %bb.i, !llvm.loop !54

bb.j:                                             ; preds = %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 7816
  store i32 -1, ptr %i.cj, align 8, !tbaa !51
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 7272
  store i32 -1, ptr %i.ck, align 8, !tbaa !51
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 6728
  store i32 -1, ptr %i.cl, align 8, !tbaa !51
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 6184
  store i32 -1, ptr %i.cm, align 8, !tbaa !51
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 5096
  store i32 -1, ptr %i.cn, align 8, !tbaa !51
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4552
  store i32 -1, ptr %i.co, align 8, !tbaa !51
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4008
  store i32 -1, ptr %i.cp, align 8, !tbaa !51
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 3464
  store i32 -1, ptr %i.cq, align 8, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 2376
  store i32 -1, ptr %i.cr, align 8, !tbaa !51
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1832
  store i32 -1, ptr %i.cs, align 8, !tbaa !51
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1288
  store i32 -1, ptr %i.ct, align 8, !tbaa !51
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 744
  store i32 -1, ptr %i.cu, align 8, !tbaa !51
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 5640
end_hunk_0
