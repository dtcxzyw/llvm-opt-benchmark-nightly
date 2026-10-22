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
  %i.b = load i32, ptr %2, align 4, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = add nsw i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47   ; 4 uses
  %i.h = sub i32 %i.e, %i.g                       ; 2 uses
  store i32 %i.h, ptr %5, align 4, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !48
  %i.k = add i32 %i.g, %i.d
  %i.l = add i32 %i.k, %i.j                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.l, ptr %i.m, align 4, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.q = load i32, ptr %i.p, align 4, !tbaa !50   ; 2 uses
  %i.r = sub i32 %i.o, %i.g
  %i.s = add i32 %i.r, %i.q                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.s, ptr %i.t, align 4, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !51
  %i.w = add i32 %i.q, %i.g
  %i.x = add i32 %i.w, %i.v                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.x, ptr %i.y, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !52  ; 2 uses
  %.neg = sdiv i32 %i.aa, -2
  %i.ab = add nsw i32 %.neg, -1                   ; 2 uses
  %i.ac = add i32 %i.ab, %i.h
  store i32 %i.ac, ptr %6, align 4, !tbaa !38
  %i.ad = sdiv i32 %i.aa, 2
  %i.ae = add nsw i32 %i.ad, 1                    ; 2 uses
  %i.af = add i32 %i.ae, %i.l
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !48
  %i.ah = add i32 %i.ab, %i.s
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 9 uses
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !49
  %i.aj = add i32 %i.ae, %i.x
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 7 uses
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !53
  %i.an = icmp ugt i8 %i.am, -3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 10 uses
  %i.ap = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %i.ao) #6
  br i1 %i.ap, label %bb.b, label %bb.cr

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  %i.aq = load <4 x i32>, ptr %2, align 4, !tbaa !54
  store <4 x i32> %i.aq, ptr %8, align 16, !tbaa !54
  call void @lv_area_increase(ptr noundef nonnull %8, i32 noundef -1, i32 noundef -1) #6
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !55
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
  %i.ba = load i32, ptr %i.ar, align 8, !tbaa !55
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
  %i.bi = load i32, ptr %i.z, align 8, !tbaa !52
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
  %i.bo = load i32, ptr %i.z, align 8, !tbaa !52  ; 6 uses
  %i.bp = add i32 %i.bo, %spec.select414          ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bt = sdiv i32 %i.bo, 2                       ; 2 uses
  %i.bu = add nsw i32 %i.bt, %spec.select414
  %i.bv = and i32 %i.bo, 1
  %i.bw = or i32 %i.bo, -2
  %i.bx = add i32 %i.bu, %i.bw                    ; 2 uses
  store i32 %i.bx, ptr %i.br, align 4, !tbaa !48
  %i.by = add nsw i32 %i.bt, 1                    ; 2 uses
  store i32 %i.by, ptr %i.bq, align 4, !tbaa !49
  %i.bz = call i32 @lv_area_get_width(ptr noundef nonnull %5) #6
  %i.ca = sub nsw i32 %i.bx, %i.bz
  store i32 %i.ca, ptr %3, align 4, !tbaa !38
  %i.cb = call i32 @lv_area_get_height(ptr noundef nonnull %5) #6
  %i.cc = add nsw i32 %i.cb, %i.by
  store i32 %i.cc, ptr %i.bs, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @lv_draw_sw_mask_radius_init(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef range(i32 -2147483648, 1073741824) %spec.select414, i1 noundef zeroext false) #6
  %i.cd = icmp eq i32 %i.bo, 1
  %i.ce = ashr i32 %i.bo, 1
  %.097.i = select i1 %i.cd, i32 1, i32 %i.ce     ; 7 uses
  %i.cf = sext i32 %i.bp to i64                   ; 4 uses
  %i.cg = call ptr @lv_malloc(i64 noundef %i.cf) #6 ; 8 uses
  %i.ch = icmp sgt i32 %i.bp, 0
  br i1 %i.ch, label %.lr.ph109.i, label %._crit_edge.i

.lr.ph109.i:                                      ; preds = %bb.i
  %i.ci = shl nuw nsw i64 %i.cf, 1
  %wide.trip.count.i = zext nneg i32 %i.bp to i64
  %i.cj = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.cj, 1
  %i.ck = icmp eq i32 %i.bp, 2                    ; 0 uses
  %unroll_iter = and i64 %i.cj, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod588 = trunc i64 %i.cj to i1
  br label %bb.j

bb.j:                                             ; preds = %.loopexit104.i, %.lr.ph109.i
  %.095107.i = phi ptr [ %i.bn, %.lr.ph109.i ], [ %i.dy, %.loopexit104.i ] ; 6 uses
  %.096106.i = phi i32 [ 0, %.lr.ph109.i ], [ %i.dz, %.loopexit104.i ] ; 2 uses
  call void @lv_memset(ptr noundef %i.cg, i8 noundef zeroext -1, i64 noundef %i.cf) #6
  %i.cl = load ptr, ptr %4, align 8, !tbaa !59
  %i.cm = call i32 %i.cl(ptr noundef %i.cg, i32 noundef 0, i32 noundef %.096106.i, i32 noundef %i.bp, ptr noundef nonnull %4) #6, !inline_history !14
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @lv_memset(ptr noundef nonnull %.095107.i, i8 noundef zeroext 0, i64 noundef range(i64 -4294967296, 4294967295) %i.ci) #6
  br label %.loopexit104.i

bb.l:                                             ; preds = %bb.j
  %i.co = load i8, ptr %i.cg, align 1, !tbaa !60
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 6
  %i.cr = sdiv i32 %i.cq, %.097.i
  %i.cs = trunc nsw i32 %i.cr to i16              ; 3 uses
  store i16 %i.cs, ptr %.095107.i, align 2, !tbaa !9
  switch i32 %i.bp, label %.lr.ph.i [
    i32 1, label %.loopexit104.i
    i32 2, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i:                                         ; preds = %bb.l, %bb.o
  %i.ct = phi i16 [ %.sink.i.1, %bb.o ], [ %i.cs, %bb.l ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.o ], [ 1, %bb.l ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %bb.o ], [ 0, %bb.l ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv.i ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !60  ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cu, i64 -1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !60
  %i.cy = icmp eq i8 %i.cv, %i.cx
  br i1 %i.cy, label %.lr.ph.i.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.cz = zext i8 %i.cv to i32
  %i.da = shl nuw nsw i32 %i.cz, 6
  %i.db = sdiv i32 %i.da, %.097.i
  %i.dc = trunc nsw i32 %i.db to i16
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.m, %.lr.ph.i
  %.sink.i = phi i16 [ %i.dc, %bb.m ], [ %i.ct, %.lr.ph.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.095107.i, i64 %indvars.iv.i
  store i16 %.sink.i, ptr %i.dd, align 2, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv.next.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !60  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cg, i64 %indvars.iv.i
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !60
  %i.di = icmp eq i8 %i.df, %i.dh
  br i1 %i.di, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.1
  %i.dj = zext i8 %i.df to i32
  %i.dk = shl nuw nsw i32 %i.dj, 6
  %i.dl = sdiv i32 %i.dk, %.097.i
  %i.dm = trunc nsw i32 %i.dl to i16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.1
  %.sink.i.1 = phi i16 [ %i.dm, %bb.n ], [ %.sink.i, %.lr.ph.i.1 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.095107.i, i64 %indvars.iv.next.i
  store i16 %.sink.i.1, ptr %i.dn, align 2, !tbaa !9
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit104.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !15

.loopexit104.i.loopexit.unr-lcssa:                ; preds = %bb.o
  br i1 %lcmp.mod.not, label %.loopexit104.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.l, %.loopexit104.i.loopexit.unr-lcssa
  %.epil.init = phi i16 [ %i.cs, %bb.l ], [ %.sink.i.1, %.loopexit104.i.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 1, %bb.l ], [ %indvars.iv.next.i.1, %.loopexit104.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod588)
  %i.do = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !60  ; 2 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 -1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !60
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %.loopexit104.i.loopexit.epilog-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.dt = zext i8 %i.dp to i32
  %i.du = shl nuw nsw i32 %i.dt, 6
  %i.dv = sdiv i32 %i.du, %.097.i
  %i.dw = trunc nsw i32 %i.dv to i16
  br label %.loopexit104.i.loopexit.epilog-lcssa

.loopexit104.i.loopexit.epilog-lcssa:             ; preds = %bb.p, %.lr.ph.i.epil.preheader
  %.sink.i.epil = phi i16 [ %i.dw, %bb.p ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %.095107.i, i64 %indvars.iv.i.epil.init
  store i16 %.sink.i.epil, ptr %i.dx, align 2, !tbaa !9
  br label %.loopexit104.i

.loopexit104.i:                                   ; preds = %.loopexit104.i.loopexit.epilog-lcssa, %.loopexit104.i.loopexit.unr-lcssa, %bb.l, %bb.k
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.095107.i, i64 %i.cf
  %i.dz = add nuw nsw i32 %.096106.i, 1           ; 2 uses
  %exitcond124.not.i = icmp eq i32 %i.dz, %i.bp
  br i1 %exitcond124.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.loopexit104.i, %bb.i
  call void @lv_free(ptr noundef %i.cg) #6
  call void @lv_draw_sw_mask_free_param(ptr noundef nonnull %4) #6
  %i.ea = icmp eq i32 %.097.i, 1
  br i1 %i.ea, label %.preheader.i, label %bb.q

.preheader.i:                                     ; preds = %._crit_edge.i
  %.not121.i = icmp eq i32 %i.bp, 0
  br i1 %.not121.i, label %shadow_draw_corner_buf.exit, label %iter.check573

iter.check573:                                    ; preds = %.preheader.i
  %i.eb = mul i32 %i.bp, %i.bp                    ; 3 uses
  %umax138.i = call i32 @llvm.umax.i32(i32 %i.eb, i32 1)
  %wide.trip.count139.i = zext i32 %umax138.i to i64 ; 6 uses
  %min.iters.check560 = icmp ult i32 %i.eb, 4
  br i1 %min.iters.check560, label %.lr.ph118.i.preheader, label %vector.main.loop.iter.check561

vector.main.loop.iter.check561:                   ; preds = %iter.check573
  %min.iters.check562 = icmp ult i32 %i.eb, 16
  br i1 %min.iters.check562, label %vec.epilog.ph577, label %vector.ph563

vector.ph563:                                     ; preds = %vector.main.loop.iter.check561
  %i.ec = and i64 %wide.trip.count139.i, 12
  %n.vec564 = and i64 %wide.trip.count139.i, 4294967280 ; 4 uses
  br label %vector.body565

vector.body565:                                   ; preds = %vector.ph563, %vector.body565
  %index566 = phi i64 [ 0, %vector.ph563 ], [ %index.next569, %vector.body565 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index566 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load567 = load <8 x i16>, ptr %i.ed, align 2, !tbaa !9
  %wide.load568 = load <8 x i16>, ptr %i.ee, align 2, !tbaa !9
  %i.ef = lshr <8 x i16> %wide.load567, splat (i16 6)
  %i.eg = lshr <8 x i16> %wide.load568, splat (i16 6)
  %i.eh = trunc <8 x i16> %i.ef to <8 x i8>
  %i.ei = trunc <8 x i16> %i.eg to <8 x i8>
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index566 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store <8 x i8> %i.eh, ptr %i.ej, align 1, !tbaa !60
  store <8 x i8> %i.ei, ptr %i.ek, align 1, !tbaa !60
  %index.next569 = add nuw i64 %index566, 16      ; 2 uses
  %i.el = icmp eq i64 %index.next569, %n.vec564
  br i1 %i.el, label %middle.block570, label %vector.body565, !llvm.loop !17

middle.block570:                                  ; preds = %vector.body565
  %cmp.n571 = icmp eq i64 %n.vec564, %wide.trip.count139.i
  br i1 %cmp.n571, label %shadow_draw_corner_buf.exit, label %vec.epilog.iter.check575

vec.epilog.iter.check575:                         ; preds = %middle.block570
  %min.epilog.iters.check576 = icmp eq i64 %i.ec, 0
  br i1 %min.epilog.iters.check576, label %.lr.ph118.i.preheader, label %vec.epilog.ph577, !prof !61

vec.epilog.ph577:                                 ; preds = %vector.main.loop.iter.check561, %vec.epilog.iter.check575
  %vec.epilog.resume.val572 = phi i64 [ %n.vec564, %vec.epilog.iter.check575 ], [ 0, %vector.main.loop.iter.check561 ]
  %n.vec578 = and i64 %wide.trip.count139.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body579

vec.epilog.vector.body579:                        ; preds = %vec.epilog.vector.body579, %vec.epilog.ph577
  %index580 = phi i64 [ %vec.epilog.resume.val572, %vec.epilog.ph577 ], [ %index.next582, %vec.epilog.vector.body579 ] ; 3 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index580
  %wide.load581 = load <4 x i16>, ptr %i.em, align 2, !tbaa !9
  %i.en = lshr <4 x i16> %wide.load581, splat (i16 6)
  %i.eo = trunc <4 x i16> %i.en to <4 x i8>
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index580
  store <4 x i8> %i.eo, ptr %i.ep, align 1, !tbaa !60
  %index.next582 = add nuw i64 %index580, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next582, %n.vec578
  br i1 %i.eq, label %vec.epilog.middle.block583, label %vec.epilog.vector.body579, !llvm.loop !18

vec.epilog.middle.block583:                       ; preds = %vec.epilog.vector.body579
  %cmp.n584 = icmp eq i64 %n.vec578, %wide.trip.count139.i
  br i1 %cmp.n584, label %shadow_draw_corner_buf.exit, label %.lr.ph118.i.preheader

.lr.ph118.i.preheader:                            ; preds = %iter.check573, %vec.epilog.iter.check575, %vec.epilog.middle.block583
  %indvars.iv135.i.ph = phi i64 [ 0, %iter.check573 ], [ %n.vec564, %vec.epilog.iter.check575 ], [ %n.vec578, %vec.epilog.middle.block583 ]
  br label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %.lr.ph118.i.preheader, %.lr.ph118.i
  %indvars.iv135.i = phi i64 [ %indvars.iv.next136.i, %.lr.ph118.i ], [ %indvars.iv135.i.ph, %.lr.ph118.i.preheader ] ; 3 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv135.i
  %i.es = load i16, ptr %i.er, align 2, !tbaa !9
  %i.et = lshr i16 %i.es, 6
  %i.eu = trunc i16 %i.et to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv135.i
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !60
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %exitcond140.not.i = icmp eq i64 %indvars.iv.next136.i, %wide.trip.count139.i
  br i1 %exitcond140.not.i, label %shadow_draw_corner_buf.exit, label %.lr.ph118.i, !llvm.loop !19

bb.q:                                             ; preds = %._crit_edge.i
  call fastcc void @shadow_blur_corner(i32 noundef %i.bp, i32 noundef %.097.i, ptr noundef nonnull %i.bn)
  %i.ew = add nsw i32 %.097.i, %i.bv              ; 11 uses
  %i.ex = icmp sgt i32 %i.ew, 1
  %i.ey = mul i32 %i.bp, %i.bp                    ; 6 uses
  br i1 %i.ex, label %bb.r, label %._crit_edge141.i

bb.r:                                             ; preds = %bb.q
  %.not119.i = icmp eq i32 %i.ey, 0
  br i1 %.not119.i, label %._crit_edge113.i, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %bb.r
  %wide.trip.count128.i = zext i32 %i.ey to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.ey, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph112.i
  %n.vec = and i64 %wide.trip.count128.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue540, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue540 ] ; 9 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.ez, align 2, !tbaa !9 ; 2 uses
  %i.fa = icmp ne <8 x i16> %wide.load, zeroinitializer ; 8 uses
  %i.fb = zext <8 x i16> %wide.load to <8 x i32>
  %i.fc = shl nuw nsw <8 x i32> %i.fb, splat (i32 6) ; 8 uses
  %i.fd = extractelement <8 x i1> %i.fa, i64 0
  br i1 %i.fd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.fe = extractelement <8 x i32> %i.fc, i64 0
  %i.ff = udiv i32 %i.fe, %i.ew
  %i.fg = trunc i32 %i.ff to i16
  store i16 %i.fg, ptr %i.ez, align 2, !tbaa !9
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.fh = extractelement <8 x i1> %i.fa, i64 1
  br i1 %i.fh, label %pred.store.if527, label %pred.store.continue528

pred.store.if527:                                 ; preds = %pred.store.continue
  %i.fi = extractelement <8 x i32> %i.fc, i64 1
  %i.fj = udiv i32 %i.fi, %i.ew
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  %i.fm = trunc i32 %i.fj to i16
  store i16 %i.fm, ptr %i.fl, align 2, !tbaa !9
  br label %pred.store.continue528

pred.store.continue528:                           ; preds = %pred.store.if527, %pred.store.continue
  %i.fn = extractelement <8 x i1> %i.fa, i64 2
  br i1 %i.fn, label %pred.store.if529, label %pred.store.continue530

pred.store.if529:                                 ; preds = %pred.store.continue528
  %i.fo = extractelement <8 x i32> %i.fc, i64 2
  %i.fp = udiv i32 %i.fo, %i.ew
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = trunc i32 %i.fp to i16
  store i16 %i.fs, ptr %i.fr, align 2, !tbaa !9
  br label %pred.store.continue530

pred.store.continue530:                           ; preds = %pred.store.if529, %pred.store.continue528
  %i.ft = extractelement <8 x i1> %i.fa, i64 3
  br i1 %i.ft, label %pred.store.if531, label %pred.store.continue532

pred.store.if531:                                 ; preds = %pred.store.continue530
  %i.fu = extractelement <8 x i32> %i.fc, i64 3
  %i.fv = udiv i32 %i.fu, %i.ew
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 6
  %i.fy = trunc i32 %i.fv to i16
  store i16 %i.fy, ptr %i.fx, align 2, !tbaa !9
  br label %pred.store.continue532

pred.store.continue532:                           ; preds = %pred.store.if531, %pred.store.continue530
  %i.fz = extractelement <8 x i1> %i.fa, i64 4
  br i1 %i.fz, label %pred.store.if533, label %pred.store.continue534

end_hunk_0
begin_hunk_1_@lv_draw_sw_box_shadow:bb.a

bb.cd:                                            ; preds = %bb.cc
  %i.us = call i32 @lv_area_get_width(ptr noundef nonnull %11) #6 ; 2 uses
  %i.ut = load i32, ptr %i.iu, align 4, !tbaa !51
  %i.uu = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !51
  %i.uw = sub nsw i32 %i.ut, %i.uv
  %i.ux = mul nsw i32 %i.uw, %i.bj
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr inbounds i8, ptr %i.bn, i64 %i.uy
  %i.va = load i32, ptr %11, align 4, !tbaa !38
  %i.vb = load i32, ptr %10, align 4, !tbaa !38
  %i.vc = sub nsw i32 %i.va, %i.vb
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds i8, ptr %i.uz, i64 %i.vd
  br i1 %i.hu, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.vf = call zeroext i1 @lv_area_is_out(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6 ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  store ptr %i.hx, ptr %i.hz, align 8, !tbaa !67
  %i.vg = icmp sgt i32 %i.us, 0
  br i1 %i.vg, label %bb.cg, label %.loopexit436

bb.cg:                                            ; preds = %bb.cf
  %i.vh = load i32, ptr %11, align 4, !tbaa !38
  store i32 %i.vh, ptr %10, align 4, !tbaa !38
  %i.vi = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !48
  store i32 %i.vj, ptr %i.in, align 4, !tbaa !48
  %i.vk = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  store i32 2, ptr %i.vk, align 8, !tbaa !70
  %i.vl = load i32, ptr %i.uu, align 4, !tbaa !51 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !49
  %.not412483 = icmp slt i32 %i.vl, %i.vn
  br i1 %.not412483, label %.loopexit436, label %.lr.ph487

.lr.ph487:                                        ; preds = %bb.cg
  %i.vo = sext i32 %i.bj to i64                   ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %.lr.ph487, %bb.ck
  %.8372485 = phi i32 [ %i.vl, %.lr.ph487 ], [ %i.vu, %bb.ck ] ; 5 uses
  %.6379484 = phi ptr [ %i.ve, %.lr.ph487 ], [ %i.vt, %bb.ck ] ; 3 uses
  store i32 %.8372485, ptr %i.ir, align 4, !tbaa !49
  store i32 %.8372485, ptr %i.iu, align 4, !tbaa !51
  br i1 %i.hu, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.vp = call ptr @lv_memcpy(ptr noundef %i.hx, ptr noundef %.6379484, i64 noundef %i.vo) #6 ; 0 uses
  %i.vq = load i32, ptr %11, align 4, !tbaa !38
  %i.vr = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.hx, i32 noundef %i.vq, i32 noundef %.8372485, i32 noundef %i.us) #6 ; 2 uses
  %i.vs = icmp eq i32 %i.vr, 1
  %spec.store.select422 = select i1 %i.vs, i32 2, i32 %i.vr
  store i32 %spec.store.select422, ptr %i.vk, align 8, !tbaa !70
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  store ptr %.6379484, ptr %i.hz, align 8, !tbaa !67
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %12) #6
  %i.vt = getelementptr inbounds i8, ptr %.6379484, i64 %i.vo
  %i.vu = add nsw i32 %.8372485, -1
  %i.vv = load i32, ptr %i.vm, align 4, !tbaa !49
  %.not412.not = icmp sgt i32 %.8372485, %i.vv
  br i1 %.not412.not, label %bb.ch, label %.loopexit436, !llvm.loop !35

.loopexit436:                                     ; preds = %bb.ck, %bb.cg, %bb.cf, %bb.cc, %.loopexit437
  %i.vw = load i32, ptr %6, align 4, !tbaa !38
  %i.vx = add nsw i32 %i.vw, %i.bj
  store i32 %i.vx, ptr %10, align 4, !tbaa !38
  %i.vy = load i32, ptr %i.ag, align 4, !tbaa !48
  %i.vz = sub nsw i32 %i.vy, %i.bj
  store i32 %i.vz, ptr %i.in, align 4, !tbaa !48
  %i.wa = load i32, ptr %i.ai, align 4, !tbaa !49
  %i.wb = add nsw i32 %i.wa, %i.bj
  %i.wc = load i32, ptr %i.ak, align 4, !tbaa !51
  %i.wd = sub nsw i32 %i.wc, %i.bj
  %i.we = call i32 @llvm.smin.i32(i32 %i.wb, i32 %i.kl)
  store i32 %i.we, ptr %i.ir, align 4, !tbaa !49
  %i.wf = call i32 @llvm.smax.i32(i32 %i.wd, i32 %i.il)
  store i32 %i.wf, ptr %i.iu, align 4, !tbaa !51
  store ptr %i.hx, ptr %i.hz, align 8, !tbaa !67
  %i.wg = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %i.ao) #6
  br i1 %i.wg, label %bb.cl, label %.loopexit

bb.cl:                                            ; preds = %.loopexit436
  %i.wh = call zeroext i1 @lv_area_is_in(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6
  br i1 %i.wh, label %.loopexit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.wi = call i32 @lv_area_get_width(ptr noundef nonnull %11) #6 ; 3 uses
  %i.wj = icmp sgt i32 %i.wi, 0
  br i1 %i.wj, label %bb.cn, label %.loopexit

bb.cn:                                            ; preds = %bb.cm
  %i.wk = load i32, ptr %11, align 4, !tbaa !38
  store i32 %i.wk, ptr %10, align 4, !tbaa !38
  %i.wl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !48
  store i32 %i.wm, ptr %i.in, align 4, !tbaa !48
  %i.wn = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !49 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !51
  %.not413488 = icmp sgt i32 %i.wo, %i.wq
  br i1 %.not413488, label %.loopexit, label %.lr.ph491

.lr.ph491:                                        ; preds = %bb.cn
  %i.wr = zext nneg i32 %i.wi to i64
  %i.ws = getelementptr inbounds nuw i8, ptr %12, i64 48
  br label %bb.co

bb.co:                                            ; preds = %.lr.ph491, %bb.co
  %.9489 = phi i32 [ %i.wo, %.lr.ph491 ], [ %i.wv, %bb.co ] ; 5 uses
  store i32 %.9489, ptr %i.ir, align 4, !tbaa !49
  store i32 %.9489, ptr %i.iu, align 4, !tbaa !51
  call void @lv_memset(ptr noundef %i.hx, i8 noundef zeroext -1, i64 noundef %i.wr) #6
  %i.wt = load i32, ptr %11, align 4, !tbaa !38
  %i.wu = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.hx, i32 noundef %i.wt, i32 noundef %.9489, i32 noundef %i.wi) #6
  store i32 %i.wu, ptr %i.ws, align 8, !tbaa !70
  call void @lv_draw_sw_blend(ptr noundef nonnull %0, ptr noundef nonnull %12) #6
  %i.wv = add nsw i32 %.9489, 1
  %i.ww = load i32, ptr %i.wp, align 4, !tbaa !51
  %.not413.not = icmp slt i32 %.9489, %i.ww
  br i1 %.not413.not, label %bb.co, label %.loopexit, !llvm.loop !36

.loopexit:                                        ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cl, %.loopexit436
  br i1 %i.hu, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.loopexit
  call void @lv_draw_sw_mask_free_param(ptr noundef nonnull %9) #6
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.loopexit
  call void @lv_free(ptr noundef nonnull %i.bn) #6
  call void @lv_free(ptr noundef %i.hx) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  br label %bb.cr

bb.cr:                                            ; preds = %bb.a, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @lv_area_intersect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_area_increase(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_height(ptr noundef) local_unnamed_addr #2

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @lv_draw_sw_mask_radius_init(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare zeroext i1 @lv_area_is_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @lv_area_is_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lv_draw_sw_mask_apply(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_draw_sw_blend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

declare void @lv_draw_sw_mask_free_param(ptr noundef) local_unnamed_addr #2

declare void @lv_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @shadow_blur_corner(i32 noundef %0, i32 noundef range(i32 -1073741824, 1073741825) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = ashr i32 %1, 1                           ; 4 uses
  %3 = and i32 %1, 1                              ; 2 uses
  %i.b = sext i32 %0 to i64                       ; 15 uses
  %i.c = shl nsw i64 %i.b, 1                      ; 2 uses
  %i.d = tail call ptr @lv_malloc(i64 noundef %i.c) #6 ; 13 uses
  %i.e = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %i.e, label %.lr.ph.us.preheader, label %._crit_edge137

.lr.ph.us.preheader:                              ; preds = %bb.a
  %4 = add nsw i32 %3, %i.a
  %i.f = sext i32 %i.a to i64
  %i.g = zext nneg i32 %0 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0114134.us = phi ptr [ %i.y, %._crit_edge.us ], [ %2, %.lr.ph.us.preheader ] ; 5 uses
  %.0115133.us = phi i32 [ %i.z, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %i.h = getelementptr [2 x i8], ptr %.0114134.us, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !9
  %i.k = zext i16 %i.j to i32
  %i.l = mul nsw i32 %1, %i.k
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.d
  %indvars.iv.in = phi i64 [ %i.b, %.lr.ph.us ], [ %indvars.iv, %bb.d ] ; 2 uses
  %.0113132.us = phi i32 [ %i.l, %.lr.ph.us ], [ %i.v, %bb.d ] ; 2 uses
  %indvars.iv = add nsw i64 %indvars.iv.in, -1    ; 4 uses
  %i.m = trunc i32 %.0113132.us to i16
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  store i16 %i.m, ptr %i.n, align 2, !tbaa !9
  %i.o = add nsw i64 %indvars.iv, %i.f            ; 2 uses
  %i.p = icmp slt i64 %i.o, %i.b
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds [2 x i8], ptr %.0114134.us, i64 %i.o
  %i.r = load i16, ptr %i.q, align 2, !tbaa !9
  %i.s = zext i16 %i.r to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0112.us = phi i32 [ %i.s, %bb.c ], [ 0, %bb.b ]
  %i.t = sub i32 %.0113132.us, %.0112.us
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %5 = sub i32 %i.u, %4
  %narrow.us = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %.0111.in.in.idx.us = zext nneg i32 %narrow.us to i64
  %.0111.in.in.us = getelementptr inbounds nuw [2 x i8], ptr %.0114134.us, i64 %.0111.in.in.idx.us
  %.0111.in.us = load i16, ptr %.0111.in.in.us, align 2, !tbaa !9
  %.0111.us = zext i16 %.0111.in.us to i32
  %i.v = add i32 %i.t, %.0111.us
  %i.w = icmp sgt i64 %indvars.iv.in, 1
  br i1 %i.w, label %bb.b, label %._crit_edge.us, !llvm.loop !71

._crit_edge.us:                                   ; preds = %bb.d
  %i.x = tail call ptr @lv_memcpy(ptr noundef nonnull %.0114134.us, ptr noundef nonnull %i.d, i64 noundef %i.c) #6 ; 0 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.0114134.us, i64 %i.b
  %i.z = add nuw nsw i32 %.0115133.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.z, %0
  br i1 %exitcond.not, label %._crit_edge137, label %.lr.ph.us, !llvm.loop !72

._crit_edge137:                                   ; preds = %._crit_edge.us, %bb.a
  %i.aa = mul i32 %0, %0                          ; 3 uses
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %.preheader130, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge137
  %i.ab = udiv i32 16320, %1                      ; 2 uses
  %wide.trip.count = zext i32 %i.aa to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.aa, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue202, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue202 ] ; 9 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.ac, align 2, !tbaa !9 ; 10 uses
  %i.ad = icmp eq <8 x i16> %wide.load, zeroinitializer
  %i.ae = icmp eq <8 x i16> %wide.load, splat (i16 16320) ; 2 uses
  %i.af = or <8 x i1> %i.ad, %i.ae                ; 2 uses
  %i.ag = xor <8 x i1> %i.af, splat (i1 true)     ; 9 uses
  %i.ah = extractelement <8 x i1> %i.ag, i64 0
  br i1 %i.ah, label %pred.sdiv.if, label %pred.sdiv.continue

pred.sdiv.if:                                     ; preds = %vector.body
  %i.ai = extractelement <8 x i16> %wide.load, i64 0
  %i.aj = zext i16 %i.ai to i32
  %i.ak = sdiv i32 %i.aj, %1
  %i.al = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  br label %pred.sdiv.continue

pred.sdiv.continue:                               ; preds = %pred.sdiv.if, %vector.body
  %i.am = phi <8 x i32> [ poison, %vector.body ], [ %i.al, %pred.sdiv.if ] ; 2 uses
  %i.an = extractelement <8 x i1> %i.ag, i64 1
  br i1 %i.an, label %pred.sdiv.if175, label %pred.sdiv.continue176

pred.sdiv.if175:                                  ; preds = %pred.sdiv.continue
  %i.ao = extractelement <8 x i16> %wide.load, i64 1
  %i.ap = zext i16 %i.ao to i32
  %i.aq = sdiv i32 %i.ap, %1
  %i.ar = insertelement <8 x i32> %i.am, i32 %i.aq, i64 1
  br label %pred.sdiv.continue176

pred.sdiv.continue176:                            ; preds = %pred.sdiv.if175, %pred.sdiv.continue
  %i.as = phi <8 x i32> [ %i.am, %pred.sdiv.continue ], [ %i.ar, %pred.sdiv.if175 ] ; 2 uses
  %i.at = extractelement <8 x i1> %i.ag, i64 2
  br i1 %i.at, label %pred.sdiv.if177, label %pred.sdiv.continue178

pred.sdiv.if177:                                  ; preds = %pred.sdiv.continue176
  %i.au = extractelement <8 x i16> %wide.load, i64 2
  %i.av = zext i16 %i.au to i32
  %i.aw = sdiv i32 %i.av, %1
  %i.ax = insertelement <8 x i32> %i.as, i32 %i.aw, i64 2
  br label %pred.sdiv.continue178

pred.sdiv.continue178:                            ; preds = %pred.sdiv.if177, %pred.sdiv.continue176
  %i.ay = phi <8 x i32> [ %i.as, %pred.sdiv.continue176 ], [ %i.ax, %pred.sdiv.if177 ] ; 2 uses
  %i.az = extractelement <8 x i1> %i.ag, i64 3
  br i1 %i.az, label %pred.sdiv.if179, label %pred.sdiv.continue180

pred.sdiv.if179:                                  ; preds = %pred.sdiv.continue178
  %i.ba = extractelement <8 x i16> %wide.load, i64 3
  %i.bb = zext i16 %i.ba to i32
  %i.bc = sdiv i32 %i.bb, %1
  %i.bd = insertelement <8 x i32> %i.ay, i32 %i.bc, i64 3
  br label %pred.sdiv.continue180

pred.sdiv.continue180:                            ; preds = %pred.sdiv.if179, %pred.sdiv.continue178
  %i.be = phi <8 x i32> [ %i.ay, %pred.sdiv.continue178 ], [ %i.bd, %pred.sdiv.if179 ] ; 2 uses
  %i.bf = extractelement <8 x i1> %i.ag, i64 4
  br i1 %i.bf, label %pred.sdiv.if181, label %pred.sdiv.continue182

pred.sdiv.if181:                                  ; preds = %pred.sdiv.continue180
  %i.bg = extractelement <8 x i16> %wide.load, i64 4
  %i.bh = zext i16 %i.bg to i32
  %i.bi = sdiv i32 %i.bh, %1
  %i.bj = insertelement <8 x i32> %i.be, i32 %i.bi, i64 4
  br label %pred.sdiv.continue182

pred.sdiv.continue182:                            ; preds = %pred.sdiv.if181, %pred.sdiv.continue180
  %i.bk = phi <8 x i32> [ %i.be, %pred.sdiv.continue180 ], [ %i.bj, %pred.sdiv.if181 ] ; 2 uses
  %i.bl = extractelement <8 x i1> %i.ag, i64 5
  br i1 %i.bl, label %pred.sdiv.if183, label %pred.sdiv.continue184

pred.sdiv.if183:                                  ; preds = %pred.sdiv.continue182
  %i.bm = extractelement <8 x i16> %wide.load, i64 5
  %i.bn = zext i16 %i.bm to i32
  %i.bo = sdiv i32 %i.bn, %1
  %i.bp = insertelement <8 x i32> %i.bk, i32 %i.bo, i64 5
  br label %pred.sdiv.continue184

pred.sdiv.continue184:                            ; preds = %pred.sdiv.if183, %pred.sdiv.continue182
  %i.bq = phi <8 x i32> [ %i.bk, %pred.sdiv.continue182 ], [ %i.bp, %pred.sdiv.if183 ] ; 2 uses
  %i.br = extractelement <8 x i1> %i.ag, i64 6
  br i1 %i.br, label %pred.sdiv.if185, label %pred.sdiv.continue186

pred.sdiv.if185:                                  ; preds = %pred.sdiv.continue184
  %i.bs = extractelement <8 x i16> %wide.load, i64 6
  %i.bt = zext i16 %i.bs to i32
  %i.bu = sdiv i32 %i.bt, %1
  %i.bv = insertelement <8 x i32> %i.bq, i32 %i.bu, i64 6
  br label %pred.sdiv.continue186

pred.sdiv.continue186:                            ; preds = %pred.sdiv.if185, %pred.sdiv.continue184
  %i.bw = phi <8 x i32> [ %i.bq, %pred.sdiv.continue184 ], [ %i.bv, %pred.sdiv.if185 ] ; 2 uses
  %i.bx = extractelement <8 x i1> %i.ag, i64 7
  br i1 %i.bx, label %pred.sdiv.if187, label %pred.sdiv.continue188

pred.sdiv.if187:                                  ; preds = %pred.sdiv.continue186
  %i.by = extractelement <8 x i16> %wide.load, i64 7
  %i.bz = zext i16 %i.by to i32
  %i.ca = sdiv i32 %i.bz, %1
  %i.cb = insertelement <8 x i32> %i.bw, i32 %i.ca, i64 7
  br label %pred.sdiv.continue188

pred.sdiv.continue188:                            ; preds = %pred.sdiv.if187, %pred.sdiv.continue186
  %i.cc = phi <8 x i32> [ %i.bw, %pred.sdiv.continue186 ], [ %i.cb, %pred.sdiv.if187 ]
  %i.cd = or <8 x i1> %i.ae, %i.ag                ; 8 uses
  %predphi = select <8 x i1> %i.af, <8 x i32> %broadcast.splat, <8 x i32> %i.cc ; 8 uses
  %i.ce = extractelement <8 x i1> %i.cd, i64 0
  br i1 %i.ce, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %pred.sdiv.continue188
  %i.cf = bitcast <8 x i32> %predphi to <16 x i16>
  %i.cg = extractelement <16 x i16> %i.cf, i64 0
  store i16 %i.cg, ptr %i.ac, align 2, !tbaa !9
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %pred.sdiv.continue188
  %i.ch = extractelement <8 x i1> %i.cd, i64 1
  br i1 %i.ch, label %pred.store.if189, label %pred.store.continue190

pred.store.if189:                                 ; preds = %pred.store.continue
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %i.ck = bitcast <8 x i32> %predphi to <16 x i16>
  %i.cl = extractelement <16 x i16> %i.ck, i64 2
  store i16 %i.cl, ptr %i.cj, align 2, !tbaa !9
  br label %pred.store.continue190

pred.store.continue190:                           ; preds = %pred.store.if189, %pred.store.continue
  %i.cm = extractelement <8 x i1> %i.cd, i64 2
  br i1 %i.cm, label %pred.store.if191, label %pred.store.continue192

pred.store.if191:                                 ; preds = %pred.store.continue190
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = bitcast <8 x i32> %predphi to <16 x i16>
  %i.cq = extractelement <16 x i16> %i.cp, i64 4
  store i16 %i.cq, ptr %i.co, align 2, !tbaa !9
  br label %pred.store.continue192

pred.store.continue192:                           ; preds = %pred.store.if191, %pred.store.continue190
  %i.cr = extractelement <8 x i1> %i.cd, i64 3
  br i1 %i.cr, label %pred.store.if193, label %pred.store.continue194

pred.store.if193:                                 ; preds = %pred.store.continue192
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 6
  %i.cu = bitcast <8 x i32> %predphi to <16 x i16>
  %i.cv = extractelement <16 x i16> %i.cu, i64 6
  store i16 %i.cv, ptr %i.ct, align 2, !tbaa !9
  br label %pred.store.continue194

pred.store.continue194:                           ; preds = %pred.store.if193, %pred.store.continue192
  %i.cw = extractelement <8 x i1> %i.cd, i64 4
  br i1 %i.cw, label %pred.store.if195, label %pred.store.continue196

pred.store.if195:                                 ; preds = %pred.store.continue194
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = bitcast <8 x i32> %predphi to <16 x i16>
  %i.da = extractelement <16 x i16> %i.cz, i64 8
  store i16 %i.da, ptr %i.cy, align 2, !tbaa !9
  br label %pred.store.continue196

pred.store.continue196:                           ; preds = %pred.store.if195, %pred.store.continue194
  %i.db = extractelement <8 x i1> %i.cd, i64 5
  br i1 %i.db, label %pred.store.if197, label %pred.store.continue198

pred.store.if197:                                 ; preds = %pred.store.continue196
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 10
  %i.de = bitcast <8 x i32> %predphi to <16 x i16>
  %i.df = extractelement <16 x i16> %i.de, i64 10
  store i16 %i.df, ptr %i.dd, align 2, !tbaa !9
  br label %pred.store.continue198

pred.store.continue198:                           ; preds = %pred.store.if197, %pred.store.continue196
  %i.dg = extractelement <8 x i1> %i.cd, i64 6
  br i1 %i.dg, label %pred.store.if199, label %pred.store.continue200

pred.store.if199:                                 ; preds = %pred.store.continue198
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.dj = bitcast <8 x i32> %predphi to <16 x i16>
  %i.dk = extractelement <16 x i16> %i.dj, i64 12
  store i16 %i.dk, ptr %i.di, align 2, !tbaa !9
  br label %pred.store.continue200

pred.store.continue200:                           ; preds = %pred.store.if199, %pred.store.continue198
  %i.dl = extractelement <8 x i1> %i.cd, i64 7
  br i1 %i.dl, label %pred.store.if201, label %pred.store.continue202

pred.store.if201:                                 ; preds = %pred.store.continue200
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 14
  %i.do = bitcast <8 x i32> %predphi to <16 x i16>
  %i.dp = extractelement <16 x i16> %i.do, i64 14
  store i16 %i.dp, ptr %i.dn, align 2, !tbaa !9
  br label %pred.store.continue202

pred.store.continue202:                           ; preds = %pred.store.if201, %pred.store.continue200
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %pred.store.continue202
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader130, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv152.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader130:                                    ; preds = %bb.g, %middle.block, %._crit_edge137
  br i1 %i.e, label %.lr.ph147, label %._crit_edge148

.lr.ph147:                                        ; preds = %.preheader130
  %i.dr = add nsw i32 %3, %i.a
  %i.ds = add nsw i32 %0, -1
  %i.dt = sext i32 %i.a to i64
  %wide.trip.count170 = zext nneg i32 %0 to i64   ; 4 uses
  %xtraiter = and i64 %wide.trip.count170, 7      ; 3 uses
  %i.du = icmp ult i32 %0, 8
  %unroll_iter = and i64 %wide.trip.count170, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod203 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph142.us

.lr.ph142.us:                                     ; preds = %._crit_edge.us149, %.lr.ph147
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %._crit_edge.us149 ], [ 0, %.lr.ph147 ] ; 4 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv166 ; 4 uses
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !9
  %i.dx = zext i16 %i.dw to i32
  %i.dy = mul nsw i32 %1, %i.dx
  %invariant.gep = getelementptr [2 x i8], ptr %2, i64 %indvars.iv166
  %i.dz = getelementptr [2 x i8], ptr %2, i64 %indvars.iv166
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph142.us, %bb.e
  %indvars.iv156 = phi i64 [ 0, %.lr.ph142.us ], [ %indvars.iv.next157, %bb.e ] ; 4 uses
  %.0109141.us = phi i32 [ %i.dy, %.lr.ph142.us ], [ %i.el, %bb.e ] ; 2 uses
  %.1140.us = phi ptr [ %i.dv, %.lr.ph142.us ], [ %i.em, %bb.e ] ; 2 uses
  %i.ea = tail call i32 @llvm.smax.i32(i32 %.0109141.us, i32 0)
  %i.eb = lshr i32 %i.ea, 6
  %i.ec = trunc i32 %i.eb to i16
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv156
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !9
  %i.ee = sub nsw i64 %indvars.iv156, %i.dt       ; 2 uses
  %i.ef = icmp slt i64 %i.ee, 1
  %i.eg = mul nsw i64 %i.ee, %i.b
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.eg
  %.0108.in.in.us = select i1 %i.ef, ptr %.1140.us, ptr %gep
  %.0108.in.us = load i16, ptr %.0108.in.in.us, align 2, !tbaa !9
  %.0108.us = zext i16 %.0108.in.us to i32
  %i.eh = sub i32 %.0109141.us, %.0108.us
  %i.ei = trunc nuw nsw i64 %indvars.iv156 to i32
  %i.ej = add i32 %i.dr, %i.ei
  %.pn129.us = tail call i32 @llvm.smin.i32(i32 %i.ej, i32 %i.ds)
  %.pn128.us = mul nsw i32 %.pn129.us, %0
  %i.ek = sext i32 %.pn128.us to i64
  %.0.in.in.us = getelementptr [2 x i8], ptr %i.dz, i64 %i.ek
  %.0.in.us = load i16, ptr %.0.in.in.us, align 2, !tbaa !9
  %.0.us = zext i16 %.0.in.us to i32
  %i.el = add i32 %i.eh, %.0.us
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %.1140.us, i64 %i.b
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count170
  br i1 %exitcond160.not, label %.lr.ph145.us.preheader, label %bb.e, !llvm.loop !74

.lr.ph145.us.preheader:                           ; preds = %bb.e
  br i1 %i.du, label %.lr.ph145.us.epil.preheader, label %.lr.ph145.us

.lr.ph145.us:                                     ; preds = %.lr.ph145.us.preheader, %.lr.ph145.us
  %indvars.iv161 = phi i64 [ %indvars.iv.next162.7, %.lr.ph145.us ], [ 0, %.lr.ph145.us.preheader ] ; 9 uses
  %.2144.us = phi ptr [ %i.fr, %.lr.ph145.us ], [ %i.dv, %.lr.ph145.us.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph145.us ], [ 0, %.lr.ph145.us.preheader ]
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv161
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !9
  store i16 %i.eo, ptr %.2144.us, align 2, !tbaa !9
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %.2144.us, i64 %i.b ; 2 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv161
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  %i.es = load i16, ptr %i.er, align 2, !tbaa !9
  store i16 %i.es, ptr %i.ep, align 2, !tbaa !9
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.b ; 2 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv161
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !9
  store i16 %i.ew, ptr %i.et, align 2, !tbaa !9
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %i.b ; 2 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv161
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 6
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !9
  store i16 %i.fa, ptr %i.ex, align 2, !tbaa !9
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %i.b ; 2 uses
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv161
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !9
  store i16 %i.fe, ptr %i.fb, align 2, !tbaa !9
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %i.b ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv161
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 10
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !9
  store i16 %i.fi, ptr %i.ff, align 2, !tbaa !9
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.ff, i64 %i.b ; 2 uses
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv161
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !9
  store i16 %i.fm, ptr %i.fj, align 2, !tbaa !9
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %i.b ; 2 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv161
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 14
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !9
  store i16 %i.fq, ptr %i.fn, align 2, !tbaa !9
  %indvars.iv.next162.7 = add nuw nsw i64 %indvars.iv161, 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %i.b ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us149.unr-lcssa, label %.lr.ph145.us, !llvm.loop !75

._crit_edge.us149.unr-lcssa:                      ; preds = %.lr.ph145.us
  br i1 %lcmp.mod.not, label %._crit_edge.us149, label %.lr.ph145.us.epil.preheader

.lr.ph145.us.epil.preheader:                      ; preds = %._crit_edge.us149.unr-lcssa, %.lr.ph145.us.preheader
  %indvars.iv161.epil.init = phi i64 [ 0, %.lr.ph145.us.preheader ], [ %indvars.iv.next162.7, %._crit_edge.us149.unr-lcssa ]
  %.2144.us.epil.init = phi ptr [ %i.dv, %.lr.ph145.us.preheader ], [ %i.fr, %._crit_edge.us149.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod203)
  br label %.lr.ph145.us.epil

.lr.ph145.us.epil:                                ; preds = %.lr.ph145.us.epil, %.lr.ph145.us.epil.preheader
  %indvars.iv161.epil = phi i64 [ %indvars.iv.next162.epil, %.lr.ph145.us.epil ], [ %indvars.iv161.epil.init, %.lr.ph145.us.epil.preheader ] ; 2 uses
  %.2144.us.epil = phi ptr [ %i.fu, %.lr.ph145.us.epil ], [ %.2144.us.epil.init, %.lr.ph145.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph145.us.epil ], [ 0, %.lr.ph145.us.epil.preheader ]
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv161.epil
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !9
  store i16 %i.ft, ptr %.2144.us.epil, align 2, !tbaa !9
  %indvars.iv.next162.epil = add nuw nsw i64 %indvars.iv161.epil, 1
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %.2144.us.epil, i64 %i.b
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us149, label %.lr.ph145.us.epil, !llvm.loop !76

._crit_edge.us149:                                ; preds = %.lr.ph145.us.epil, %._crit_edge.us149.unr-lcssa
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count170
  br i1 %exitcond171.not, label %._crit_edge148, label %.lr.ph142.us, !llvm.loop !77

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.g
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %bb.g ], [ %indvars.iv152.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv152 ; 2 uses
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !9  ; 2 uses
  switch i16 %i.fw, label %bb.f [
    i16 0, label %bb.g
    i16 16320, label %.sink.split
  ]

bb.f:                                             ; preds = %scalar.ph
  %i.fx = zext i16 %i.fw to i32
  %i.fy = sdiv i32 %i.fx, %1
  br label %.sink.split

.sink.split:                                      ; preds = %scalar.ph, %bb.f
  %.sink.in = phi i32 [ %i.fy, %bb.f ], [ %i.ab, %scalar.ph ]
  %.sink = trunc i32 %.sink.in to i16
  store i16 %.sink, ptr %i.fv, align 2, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %scalar.ph
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count
  br i1 %exitcond155.not, label %.preheader130, label %scalar.ph, !llvm.loop !78

._crit_edge148:                                   ; preds = %._crit_edge.us149, %.preheader130
  tail call void @lv_free(ptr noundef %i.d) #6
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umulh.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
