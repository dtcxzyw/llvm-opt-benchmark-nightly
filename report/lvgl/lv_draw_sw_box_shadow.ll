Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_box_shadow?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lv_area_t = type { i32, i32, i32, i32 }
%struct._lv_draw_sw_mask_radius_param_t = type { %struct._lv_draw_sw_mask_common_dsc_t, %struct.anon, ptr }
%struct._lv_draw_sw_mask_common_dsc_t = type { ptr, i32 }
%struct.anon = type { %struct.lv_area_t, i32, i8 }
%struct._lv_draw_sw_blend_dsc_t = type { ptr, ptr, i32, i32, ptr, i8, %struct.lv_color_t, ptr, i32, ptr, i32, i32 }
%struct.lv_color_t = type { i8, i8, i8 }

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_box_shadow(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.lv_area_t, align 4          ; 7 uses
  %4 = alloca %struct._lv_draw_sw_mask_radius_param_t, align 8 ; 6 uses
  %5 = alloca %struct.lv_area_t, align 4          ; 12 uses
  %6 = alloca %struct.lv_area_t, align 4          ; 17 uses
  %7 = alloca %struct.lv_area_t, align 4          ; 3 uses
  %8 = alloca %struct.lv_area_t, align 16         ; 27 uses
  %9 = alloca %struct._lv_draw_sw_mask_radius_param_t, align 8 ; 5 uses
  %i.a = alloca [2 x ptr], align 16               ; 13 uses
  %10 = alloca %struct.lv_area_t, align 4         ; 37 uses
  %11 = alloca %struct.lv_area_t, align 4         ; 89 uses
  %12 = alloca %struct._lv_draw_sw_blend_dsc_t, align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.b = load i32, ptr %2, align 4, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = add nsw i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.g = load i32, ptr %i.f, align 4, !tbaa !45   ; 4 uses
  %i.h = sub i32 %i.e, %i.g                       ; 2 uses
  store i32 %i.h, ptr %5, align 4, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !46
  %i.k = add i32 %i.g, %i.d
  %i.l = add i32 %i.k, %i.j                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.l, ptr %i.m, align 4, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.q = load i32, ptr %i.p, align 4, !tbaa !48   ; 2 uses
  %i.r = sub i32 %i.o, %i.g
  %i.s = add i32 %i.r, %i.q                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.s, ptr %i.t, align 4, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !49
  %i.w = add i32 %i.q, %i.g
  %i.x = add i32 %i.w, %i.v                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.x, ptr %i.y, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !50  ; 2 uses
  %.neg = sdiv i32 %i.aa, -2
  %i.ab = add nsw i32 %.neg, -1                   ; 2 uses
  %i.ac = add i32 %i.ab, %i.h
  store i32 %i.ac, ptr %6, align 4, !tbaa !36
  %i.ad = sdiv i32 %i.aa, 2
  %i.ae = add nsw i32 %i.ad, 1                    ; 2 uses
  %i.af = add i32 %i.ae, %i.l
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !46
  %i.ah = add i32 %i.ab, %i.s
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 9 uses
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !47
  %i.aj = add i32 %i.ae, %i.x
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 7 uses
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !51
  %i.an = icmp ugt i8 %i.am, -3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 10 uses
  %i.ap = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %i.ao) #6
  br i1 %i.ap, label %bb.b, label %bb.cp

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  %i.aq = load <4 x i32>, ptr %2, align 4, !tbaa !52
  store <4 x i32> %i.aq, ptr %8, align 16, !tbaa !52
  call void @lv_area_increase(ptr noundef nonnull %8, i32 noundef -1, i32 noundef -1) #6
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !53
  %i.at = call i32 @lv_area_get_width(ptr noundef nonnull %8) #6
  %i.au = call i32 @lv_area_get_height(ptr noundef nonnull %8) #6
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aw = call i32 @lv_area_get_width(ptr noundef nonnull %8) #6
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ax = call i32 @lv_area_get_height(ptr noundef nonnull %8) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ay = phi i32 [ %i.aw, %bb.c ], [ %i.ax, %bb.d ]
  %i.az = ashr i32 %i.ay, 1
  %spec.select = call i32 @llvm.smin.i32(i32 %i.as, i32 %i.az) ; 19 uses
  %i.ba = load i32, ptr %i.ar, align 8, !tbaa !53
  %i.bb = call i32 @lv_area_get_width(ptr noundef nonnull %5) #6
  %i.bc = call i32 @lv_area_get_height(ptr noundef nonnull %5) #6
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = call i32 @lv_area_get_width(ptr noundef nonnull %5) #6
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bf = call i32 @lv_area_get_height(ptr noundef nonnull %5) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bg = phi i32 [ %i.be, %bb.f ], [ %i.bf, %bb.g ]
  %i.bh = ashr i32 %i.bg, 1
  %spec.select414 = call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.bh) ; 4 uses
  %i.bi = load i32, ptr %i.z, align 8, !tbaa !50
  %i.bj = add nsw i32 %spec.select414, %i.bi      ; 43 uses
  %i.bk = shl i32 %i.bj, 1
  %i.bl = mul i32 %i.bk, %i.bj
  %i.bm = zext i32 %i.bl to i64
  %i.bn = call ptr @lv_malloc(i64 noundef %i.bm) #6 ; 35 uses
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h, %.preheader
  br label %.preheader

bb.i:                                             ; preds = %bb.h
  %i.bo = load i32, ptr %i.z, align 8, !tbaa !50  ; 6 uses
  %i.bp = add i32 %i.bo, %spec.select414          ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bt = sdiv i32 %i.bo, 2                       ; 2 uses
  %i.bu = add nsw i32 %i.bt, %spec.select414
  %i.bv = and i32 %i.bo, 1
  %i.bw = or i32 %i.bo, -2
  %i.bx = add i32 %i.bu, %i.bw                    ; 2 uses
  store i32 %i.bx, ptr %i.br, align 4, !tbaa !46
  %i.by = add nsw i32 %i.bt, 1                    ; 2 uses
  store i32 %i.by, ptr %i.bq, align 4, !tbaa !47
  %i.bz = call i32 @lv_area_get_width(ptr noundef nonnull %5) #6
  %i.ca = sub nsw i32 %i.bx, %i.bz
  store i32 %i.ca, ptr %3, align 4, !tbaa !36
  %i.cb = call i32 @lv_area_get_height(ptr noundef nonnull %5) #6
  %i.cc = add nsw i32 %i.cb, %i.by
  store i32 %i.cc, ptr %i.bs, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @lv_draw_sw_mask_radius_init(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef range(i32 -2147483648, 1073741824) %spec.select414, i1 noundef zeroext false) #6
  %i.cd = icmp eq i32 %i.bo, 1
  %i.ce = ashr i32 %i.bo, 1
  %.097.i = select i1 %i.cd, i32 1, i32 %i.ce     ; 5 uses
  %i.cf = sext i32 %i.bp to i64                   ; 4 uses
  %i.cg = call ptr @lv_malloc(i64 noundef %i.cf) #6 ; 6 uses
  %i.ch = icmp sgt i32 %i.bp, 0
  br i1 %i.ch, label %.lr.ph109.i, label %._crit_edge.i

.lr.ph109.i:                                      ; preds = %bb.i
  %.not.i = icmp eq i32 %i.bp, 1
  %i.ci = shl nuw nsw i64 %i.cf, 1
  %wide.trip.count.i = zext nneg i32 %i.bp to i64
  br label %bb.j

bb.j:                                             ; preds = %.loopexit104.i, %.lr.ph109.i
  %.095107.i = phi ptr [ %i.bn, %.lr.ph109.i ], [ %i.da, %.loopexit104.i ] ; 5 uses
  %.096106.i = phi i32 [ 0, %.lr.ph109.i ], [ %i.db, %.loopexit104.i ] ; 2 uses
  call void @lv_memset(ptr noundef %i.cg, i8 noundef zeroext -1, i64 noundef %i.cf) #6
  %i.cj = load ptr, ptr %4, align 8, !tbaa !57
  %i.ck = call i32 %i.cj(ptr noundef %i.cg, i32 noundef 0, i32 noundef %.096106.i, i32 noundef %i.bp, ptr noundef nonnull %4) #6, !inline_history !12
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @lv_memset(ptr noundef nonnull %.095107.i, i8 noundef zeroext 0, i64 noundef range(i64 -4294967296, 4294967295) %i.ci) #6
  br label %.loopexit104.i

bb.l:                                             ; preds = %bb.j
  %i.cm = load i8, ptr %i.cg, align 1, !tbaa !58
  %i.cn = zext i8 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 6
  %i.cp = sdiv i32 %i.co, %.097.i
  %i.cq = trunc nsw i32 %i.cp to i16
  store i16 %i.cq, ptr %.095107.i, align 2, !tbaa !9
  br i1 %.not.i, label %.loopexit104.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.n
  %indvars.iv.i = phi i64 [ %niter.next.1, %bb.n ], [ 1, %bb.l ] ; 4 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv.i
  %14 = load i8, ptr %13, align 1, !tbaa !58      ; 2 uses
  %15 = add nsw i64 %indvars.iv.i, -1             ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cg, i64 %15
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !58
  %i.ct = icmp eq i8 %14, %i.cs
  br i1 %i.ct, label %.lr.ph.i.1, label %bb.m

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.cu = getelementptr inbounds [2 x i8], ptr %.095107.i, i64 %15
  %16 = load i16, ptr %i.cu, align 2, !tbaa !9
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i
  %i.cv = zext i8 %14 to i32
  %i.cw = shl nuw nsw i32 %i.cv, 6
  %i.cx = sdiv i32 %i.cw, %.097.i
  %i.cy = trunc nsw i32 %i.cx to i16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.1
  %.sink.i.1 = phi i16 [ %16, %.lr.ph.i.1 ], [ %i.cy, %bb.m ]
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.095107.i, i64 %indvars.iv.i
  store i16 %.sink.i.1, ptr %i.cz, align 2, !tbaa !9
  %niter.next.1 = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %wide.trip.count.i
  br i1 %niter.ncmp.1, label %.loopexit104.i, label %.lr.ph.i, !llvm.loop !13

.loopexit104.i:                                   ; preds = %bb.n, %bb.l, %bb.k
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.095107.i, i64 %i.cf
  %i.db = add nuw nsw i32 %.096106.i, 1           ; 2 uses
  %exitcond124.not.i = icmp eq i32 %i.db, %i.bp
  br i1 %exitcond124.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !14

._crit_edge.i:                                    ; preds = %.loopexit104.i, %bb.i
  call void @lv_free(ptr noundef %i.cg) #6
  call void @lv_draw_sw_mask_free_param(ptr noundef nonnull %4) #6
  %i.dc = icmp eq i32 %.097.i, 1
  br i1 %i.dc, label %.preheader.i, label %bb.o

.preheader.i:                                     ; preds = %._crit_edge.i
  %.not121.i = icmp eq i32 %i.bp, 0
  br i1 %.not121.i, label %shadow_draw_corner_buf.exit, label %iter.check573

iter.check573:                                    ; preds = %.preheader.i
  %i.dd = mul i32 %i.bp, %i.bp                    ; 3 uses
  %umax138.i = call i32 @llvm.umax.i32(i32 %i.dd, i32 1)
  %wide.trip.count139.i = zext i32 %umax138.i to i64 ; 6 uses
  %min.iters.check560 = icmp ult i32 %i.dd, 4
  br i1 %min.iters.check560, label %.lr.ph118.i.preheader, label %vector.main.loop.iter.check561

vector.main.loop.iter.check561:                   ; preds = %iter.check573
  %min.iters.check562 = icmp ult i32 %i.dd, 16
  br i1 %min.iters.check562, label %vec.epilog.ph577, label %vector.ph563

vector.ph563:                                     ; preds = %vector.main.loop.iter.check561
  %i.de = and i64 %wide.trip.count139.i, 12
  %n.vec564 = and i64 %wide.trip.count139.i, 4294967280 ; 4 uses
  br label %vector.body565

vector.body565:                                   ; preds = %vector.ph563, %vector.body565
  %index566 = phi i64 [ 0, %vector.ph563 ], [ %index.next569, %vector.body565 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index566 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load567 = load <8 x i16>, ptr %i.df, align 2, !tbaa !9
  %wide.load568 = load <8 x i16>, ptr %i.dg, align 2, !tbaa !9
  %i.dh = lshr <8 x i16> %wide.load567, splat (i16 6)
  %i.di = lshr <8 x i16> %wide.load568, splat (i16 6)
  %i.dj = trunc <8 x i16> %i.dh to <8 x i8>
  %i.dk = trunc <8 x i16> %i.di to <8 x i8>
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index566 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store <8 x i8> %i.dj, ptr %i.dl, align 1, !tbaa !58
  store <8 x i8> %i.dk, ptr %i.dm, align 1, !tbaa !58
  %index.next569 = add nuw i64 %index566, 16      ; 2 uses
  %i.dn = icmp eq i64 %index.next569, %n.vec564
  br i1 %i.dn, label %middle.block570, label %vector.body565, !llvm.loop !15

middle.block570:                                  ; preds = %vector.body565
  %cmp.n571 = icmp eq i64 %n.vec564, %wide.trip.count139.i
  br i1 %cmp.n571, label %shadow_draw_corner_buf.exit, label %vec.epilog.iter.check575

vec.epilog.iter.check575:                         ; preds = %middle.block570
  %min.epilog.iters.check576 = icmp eq i64 %i.de, 0
  br i1 %min.epilog.iters.check576, label %.lr.ph118.i.preheader, label %vec.epilog.ph577, !prof !61

vec.epilog.ph577:                                 ; preds = %vector.main.loop.iter.check561, %vec.epilog.iter.check575
  %vec.epilog.resume.val572 = phi i64 [ %n.vec564, %vec.epilog.iter.check575 ], [ 0, %vector.main.loop.iter.check561 ]
  %n.vec578 = and i64 %wide.trip.count139.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body579

vec.epilog.vector.body579:                        ; preds = %vec.epilog.vector.body579, %vec.epilog.ph577
  %index580 = phi i64 [ %vec.epilog.resume.val572, %vec.epilog.ph577 ], [ %index.next582, %vec.epilog.vector.body579 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index580
  %wide.load581 = load <4 x i16>, ptr %i.do, align 2, !tbaa !9
  %i.dp = lshr <4 x i16> %wide.load581, splat (i16 6)
  %i.dq = trunc <4 x i16> %i.dp to <4 x i8>
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index580
  store <4 x i8> %i.dq, ptr %i.dr, align 1, !tbaa !58
  %index.next582 = add nuw i64 %index580, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next582, %n.vec578
  br i1 %i.ds, label %vec.epilog.middle.block583, label %vec.epilog.vector.body579, !llvm.loop !16

vec.epilog.middle.block583:                       ; preds = %vec.epilog.vector.body579
  %cmp.n584 = icmp eq i64 %n.vec578, %wide.trip.count139.i
  br i1 %cmp.n584, label %shadow_draw_corner_buf.exit, label %.lr.ph118.i.preheader

.lr.ph118.i.preheader:                            ; preds = %iter.check573, %vec.epilog.iter.check575, %vec.epilog.middle.block583
  %indvars.iv135.i.ph = phi i64 [ 0, %iter.check573 ], [ %n.vec564, %vec.epilog.iter.check575 ], [ %n.vec578, %vec.epilog.middle.block583 ]
  br label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %.lr.ph118.i.preheader, %.lr.ph118.i
  %indvars.iv135.i = phi i64 [ %indvars.iv.next136.i, %.lr.ph118.i ], [ %indvars.iv135.i.ph, %.lr.ph118.i.preheader ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv135.i
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !9
  %i.dv = lshr i16 %i.du, 6
  %i.dw = trunc i16 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv135.i
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !58
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %exitcond140.not.i = icmp eq i64 %indvars.iv.next136.i, %wide.trip.count139.i
  br i1 %exitcond140.not.i, label %shadow_draw_corner_buf.exit, label %.lr.ph118.i, !llvm.loop !17

bb.o:                                             ; preds = %._crit_edge.i
  call fastcc void @shadow_blur_corner(i32 noundef %i.bp, i32 noundef %.097.i, ptr noundef nonnull %i.bn)
  %i.dy = add nsw i32 %.097.i, %i.bv              ; 11 uses
  %i.dz = icmp sgt i32 %i.dy, 1
  %i.ea = mul i32 %i.bp, %i.bp                    ; 6 uses
  br i1 %i.dz, label %bb.p, label %._crit_edge141.i

bb.p:                                             ; preds = %bb.o
  %.not119.i = icmp eq i32 %i.ea, 0
  br i1 %.not119.i, label %._crit_edge113.i, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %bb.p
  %wide.trip.count128.i = zext i32 %i.ea to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.ea, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph112.i
  %n.vec = and i64 %wide.trip.count128.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue540, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue540 ] ; 9 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.eb, align 2, !tbaa !9 ; 2 uses
  %i.ec = icmp ne <8 x i16> %wide.load, zeroinitializer ; 8 uses
  %i.ed = zext <8 x i16> %wide.load to <8 x i32>
  %i.ee = shl nuw nsw <8 x i32> %i.ed, splat (i32 6) ; 8 uses
  %i.ef = extractelement <8 x i1> %i.ec, i64 0
  br i1 %i.ef, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.eg = extractelement <8 x i32> %i.ee, i64 0
  %i.eh = udiv i32 %i.eg, %i.dy
  %i.ei = trunc i32 %i.eh to i16
  store i16 %i.ei, ptr %i.eb, align 2, !tbaa !9
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ej = extractelement <8 x i1> %i.ec, i64 1
  br i1 %i.ej, label %pred.store.if527, label %pred.store.continue528

pred.store.if527:                                 ; preds = %pred.store.continue
  %i.ek = extractelement <8 x i32> %i.ee, i64 1
  %i.el = udiv i32 %i.ek, %i.dy
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  %i.eo = trunc i32 %i.el to i16
  store i16 %i.eo, ptr %i.en, align 2, !tbaa !9
  br label %pred.store.continue528

pred.store.continue528:                           ; preds = %pred.store.if527, %pred.store.continue
  %i.ep = extractelement <8 x i1> %i.ec, i64 2
  br i1 %i.ep, label %pred.store.if529, label %pred.store.continue530

pred.store.if529:                                 ; preds = %pred.store.continue528
  %i.eq = extractelement <8 x i32> %i.ee, i64 2
  %i.er = udiv i32 %i.eq, %i.dy
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = trunc i32 %i.er to i16
  store i16 %i.eu, ptr %i.et, align 2, !tbaa !9
  br label %pred.store.continue530

pred.store.continue530:                           ; preds = %pred.store.if529, %pred.store.continue528
  %i.ev = extractelement <8 x i1> %i.ec, i64 3
  br i1 %i.ev, label %pred.store.if531, label %pred.store.continue532

pred.store.if531:                                 ; preds = %pred.store.continue530
  %i.ew = extractelement <8 x i32> %i.ee, i64 3
  %i.ex = udiv i32 %i.ew, %i.dy
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 6
  %i.fa = trunc i32 %i.ex to i16
  store i16 %i.fa, ptr %i.ez, align 2, !tbaa !9
  br label %pred.store.continue532

pred.store.continue532:                           ; preds = %pred.store.if531, %pred.store.continue530
  %i.fb = extractelement <8 x i1> %i.ec, i64 4
  br i1 %i.fb, label %pred.store.if533, label %pred.store.continue534

pred.store.if533:                                 ; preds = %pred.store.continue532
  %i.fc = extractelement <8 x i32> %i.ee, i64 4
  %i.fd = udiv i32 %i.fc, %i.dy
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = trunc i32 %i.fd to i16
  store i16 %i.fg, ptr %i.ff, align 2, !tbaa !9
  br label %pred.store.continue534

pred.store.continue534:                           ; preds = %pred.store.if533, %pred.store.continue532
  %i.fh = extractelement <8 x i1> %i.ec, i64 5
  br i1 %i.fh, label %pred.store.if535, label %pred.store.continue536

pred.store.if535:                                 ; preds = %pred.store.continue534
  %i.fi = extractelement <8 x i32> %i.ee, i64 5
  %i.fj = udiv i32 %i.fi, %i.dy
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 10
  %i.fm = trunc i32 %i.fj to i16
  store i16 %i.fm, ptr %i.fl, align 2, !tbaa !9
  br label %pred.store.continue536

pred.store.continue536:                           ; preds = %pred.store.if535, %pred.store.continue534
  %i.fn = extractelement <8 x i1> %i.ec, i64 6
  br i1 %i.fn, label %pred.store.if537, label %pred.store.continue538

end_hunk_0
