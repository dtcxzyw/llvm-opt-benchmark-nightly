Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/omap_dma?download=true
inline.NumInlined: 37
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32, i8, ptr }
%struct.anon.2 = type { i32, i32, i8 }

@.str = private unnamed_addr constant [9 x i8] c"omap.dma\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: Bus time-out in DMA%i operation\0A\00", align 1
@__func__.omap_dma_transfer_setup = private unnamed_addr constant [24 x i8] c"omap_dma_transfer_setup\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: bad DMA request\0A\00", align 1
@__func__.omap_dma_channel_load = private unnamed_addr constant [22 x i8] c"omap_dma_channel_load\00", align 1
@omap_dma_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], %struct.anon, %struct.anon.2, [4 x i8] } { ptr @omap_dma_read, ptr @omap_dma_write, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, %struct.anon zeroinitializer, %struct.anon.2 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"%s: read at offset 0x%lx with bad width %d\0A\00", align 1
@__func__.omap_dma_read = private unnamed_addr constant [14 x i8] c"omap_dma_read\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s: Bad register %#08lx\0A\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"%s: write at offset 0x%lx with bad width %d\0A\00", align 1
@__func__.omap_dma_write = private unnamed_addr constant [15 x i8] c"omap_dma_write\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"%s: invalid DMA port %i\0A\00", align 1
@__func__.omap_dma_ch_reg_write = private unnamed_addr constant [22 x i8] c"omap_dma_ch_reg_write\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"%s: bad data_type for DMA channel\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"%s: Read-only register %#08lx\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @omap_dma_reset(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 11 uses
  %i.c = load ptr, ptr %i.b, align 16
  tail call void @soc_dma_reset(ptr noundef %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  store i32 4, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 noundef 0, i64 noundef 16, i1 noundef false) #8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 364
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 noundef 0, i64 noundef 16, i1 noundef false) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 9616
  store i32 0, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 9660
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 9656
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 9664
  store i32 0, ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 396
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw [288 x i8], ptr %i.o, i64 %indvars.iv ; 20 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 280
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 108
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 284
  store i32 0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 156
  store i32 0, ptr %i.t, align 4
  store i64 0, ptr %i.p, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store i32 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i64> zeroinitializer, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 92
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store i32 3, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  store i32 0, ptr %i.ad, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 164
  store i32 0, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  store i16 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  store i32 0, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 180
  store i32 0, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i8 noundef 0, i64 noundef 56, i1 noundef false) #8
  store <4 x i32> zeroinitializer, ptr %i.y, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @soc_dma_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @omap_dma_init(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
.preheader72:
  %i.a = tail call noalias dereferenceable_or_null(9712) ptr @g_malloc0(i64 noundef 9712) #9 ; 57 uses
  %i.b = getelementptr i8, ptr %i.a, i64 288
  store ptr %4, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 3 uses
  store ptr %5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 9688
  store ptr %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 9696
  store ptr %4, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 396 ; 3 uses
  store i32 9, ptr %i.f, align 4
  %i.g = tail call ptr @soc_dma_init(i32 noundef 9) #8 ; 4 uses
  store ptr %i.g, ptr %i.a, align 16
  %i.h = tail call i64 @omap_clk_getrate(ptr noundef %5) #8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr @omap_dma_transfer_generic, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @omap_dma_transfer_setup, ptr %i.k, align 8
  %i.l = tail call ptr @qemu_allocate_irqs(ptr noundef nonnull @omap_dma_request, ptr noundef nonnull %i.a, i32 noundef 32) #8
  %i.m = load ptr, ptr %i.a, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.a, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.a, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.a, i64 2024
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.a, i64 1736
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.a, i64 1448
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.a, i64 1160
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.a, i64 872
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = load ptr, ptr %1, align 8
  %i.ag = getelementptr i8, ptr %i.a, i64 584
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 2128 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store ptr %i.ai, ptr %i.aj, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 2320
  store ptr %i.ah, ptr %i.ak, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 688 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 2416
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  store ptr %i.am, ptr %i.an, align 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 2608
  store ptr %i.al, ptr %i.ao, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 976 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 2704
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 1168
  store ptr %i.aq, ptr %i.ar, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 2896
  store ptr %i.ap, ptr %i.as, align 16
  %i.at = load ptr, ptr %i.a, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 704
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 2704
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 2960
  store ptr %i.aw, ptr %i.ay, align 16
  %i.az = load ptr, ptr %i.au, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 784
  store ptr %i.ax, ptr %i.ba, align 8
  %i.bb = load ptr, ptr %i.a, align 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 616
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 2416
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 2672
  store ptr %i.be, ptr %i.bg, align 16
  %i.bh = load ptr, ptr %i.bc, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 696
  store ptr %i.bf, ptr %i.bi, align 8
  %i.bj = load ptr, ptr %i.a, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 528
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 2384
  store ptr %i.bm, ptr %i.bn, align 16
  %i.bo = load ptr, ptr %i.bk, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 608
  store ptr %i.ai, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.a, align 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 440
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 1840
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 2096
  store ptr %i.bt, ptr %i.bv, align 16
  %i.bw = load ptr, ptr %i.br, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 520
  store ptr %i.bu, ptr %i.bx, align 8
  %i.by = load ptr, ptr %i.a, align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 352
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 1552
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 1808
  store ptr %i.cb, ptr %i.cd, align 16
  %i.ce = load ptr, ptr %i.bz, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 432
  store ptr %i.cc, ptr %i.cf, align 8
  %i.cg = load ptr, ptr %i.a, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 264
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 1264
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 1520
  store ptr %i.cj, ptr %i.cl, align 16
  %i.cm = load ptr, ptr %i.ch, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 344
  store ptr %i.ck, ptr %i.cn, align 8
  %i.co = load ptr, ptr %i.a, align 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 176
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 1232
  store ptr %i.cr, ptr %i.cs, align 16
  %i.ct = load ptr, ptr %i.cp, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 256
  store ptr %i.ap, ptr %i.cu, align 8
  %i.cv = load ptr, ptr %i.a, align 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 88
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  store ptr %i.cy, ptr %i.cz, align 16
  %i.da = load ptr, ptr %i.cw, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 168
  store ptr %i.al, ptr %i.db, align 8
  %i.dc = load ptr, ptr %i.a, align 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  store ptr %i.de, ptr %i.df, align 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  store ptr %i.ah, ptr %i.dg, align 8
  %i.dh = load ptr, ptr %i.c, align 8
  %i.di = tail call ptr @qemu_allocate_irq(ptr noundef nonnull @omap_dma_clk_update, ptr noundef nonnull %i.a, i32 noundef 0) #8
  tail call void @omap_clk_adduser(ptr noundef %i.dh, ptr noundef %i.di) #8
  %i.dj = load ptr, ptr %i.a, align 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8            ; 11 uses
  %i.dm = load ptr, ptr %i.dl, align 16
  tail call void @soc_dma_reset(ptr noundef %i.dm) #8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 336
  store i32 4, ptr %i.dn, align 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 340
  store i32 0, ptr %i.do, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 380
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dp, i8 noundef 0, i64 noundef 16, i1 noundef false) #8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 364
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dq, i8 noundef 0, i64 noundef 16, i1 noundef false) #8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 9616
  store i32 0, ptr %i.dr, align 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 9660
  store i32 0, ptr %i.ds, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 9656
  store i32 0, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 9664
  store i32 0, ptr %i.du, align 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 396
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.i, label %omap_dma_reset.exit

.lr.ph.i:                                         ; preds = %.preheader72
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 400
  %wide.trip.count.i = zext nneg i32 %i.dw to i64
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.a ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [288 x i8], ptr %i.dy, i64 %indvars.iv.i ; 20 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 280
  store i32 0, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 108
  store i32 0, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 284
  store i32 0, ptr %i.ec, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 156
  store i32 0, ptr %i.ed, align 4
  store i64 0, ptr %i.dz, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  store i64 0, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 80
  store i64 0, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 88
  store i32 0, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <4 x i64> zeroinitializer, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 264
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 92
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 112
  %i.el = getelementptr inbounds nuw i8, ptr %i.dz, i64 132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ej, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ek, i8 0, i64 16, i1 false)
  store i32 3, ptr %i.el, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.dz, i64 136
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 160
  store i32 0, ptr %i.en, align 16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 164
  store i32 0, ptr %i.eo, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dz, i64 168
end_hunk_0
begin_hunk_1_@omap_dma_transfer_setup:bb.a
  %i.hb = or i32 %i.ha, 8
  store i32 %i.hb, ptr %i.gz, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %omap_dma_deactivate_channel.exit227
  %.not251 = icmp ugt i32 %i.df, %.6
  br i1 %.not251, label %bb.bv, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.hd = load i32, ptr %i.hc, align 8
  %.not198 = icmp eq i32 %i.hd, 0
  br i1 %.not198, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4
  %.not.i228 = icmp eq i32 %i.hf, 0
  br i1 %.not.i228, label %omap_dma_disable_channel.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.he, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i32 0, ptr %i.hg, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.hi = load i64, ptr %i.hh, align 8
  %i.hj = trunc i64 %i.hi to i16
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i16 %i.hj, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 8
  %.not19.i.i = icmp eq i32 %i.hm, 0
  br i1 %.not19.i.i, label %omap_dma_disable_channel.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 8
  %i.hp = and i32 %i.ho, -65
  store i32 %i.hp, ptr %i.hn, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.hr = load ptr, ptr %i.hq, align 8
  tail call void @soc_dma_set_request(ptr noundef %i.hr, i32 noundef 0) #8
  br label %omap_dma_disable_channel.exit

bb.bm:                                            ; preds = %bb.bi
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.ht = load i32, ptr %i.hs, align 4
  %.not199 = icmp eq i32 %i.ht, 0
  br i1 %.not199, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.hv = load i32, ptr %i.hu, align 8
  %.not200 = icmp eq i32 %i.hv, 0
  br i1 %.not200, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  tail call fastcc void @omap_dma_channel_load(ptr noundef nonnull %i.b)
  br label %omap_dma_disable_channel.exit

bb.bp:                                            ; preds = %bb.bn
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  store i32 1, ptr %i.hw, align 4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.hy = load i64, ptr %i.hx, align 8
  %i.hz = trunc i64 %i.hy to i16
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i16 %i.hz, ptr %i.ia, align 8
  %i.ib = load i32, ptr %i.ag, align 8            ; 2 uses
  %.not16.i231 = icmp eq i32 %i.ib, 0
  br i1 %.not16.i231, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.id = load i32, ptr %i.ic, align 4
  %.not17.i232 = icmp eq i32 %i.id, 0
  br i1 %.not17.i232, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ie = load ptr, ptr %i.e, align 16
  %i.if = load i64, ptr %i.ie, align 8
  %i.ig = zext nneg i32 %i.ib to i64
  %i.ih = shl nuw i64 1, %i.ig
  %i.ii = and i64 %i.if, %i.ih
  %.not18.i233 = icmp eq i64 %i.ii, 0
  br i1 %.not18.i233, label %bb.bs, label %omap_dma_disable_channel.exit

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 8
  %.not19.i234 = icmp eq i32 %i.ik, 0
  br i1 %.not19.i234, label %omap_dma_disable_channel.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.ij, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.im = load i32, ptr %i.il, align 8
  %i.in = and i32 %i.im, -65
  store i32 %i.in, ptr %i.il, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.ip = load ptr, ptr %i.io, align 8
  tail call void @soc_dma_set_request(ptr noundef %i.ip, i32 noundef 0) #8
  br label %omap_dma_disable_channel.exit

omap_dma_disable_channel.exit:                    ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bl, %bb.bk, %bb.bj, %bb.bo
  %i.iq = load i32, ptr %i.am, align 4
  %i.ir = and i32 %i.iq, 32
  %.not201 = icmp eq i32 %i.ir, 0
  br i1 %.not201, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %omap_dma_disable_channel.exit
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8
  %i.iu = or i32 %i.it, 32
  store i32 %i.iu, ptr %i.is, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %omap_dma_disable_channel.exit, %bb.bu, %bb.bh
  %i.iv = load i32, ptr %i.cs, align 8
  %.not202 = icmp eq i32 %i.iv, 0
  br i1 %.not202, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.ix = load i32, ptr %i.iw, align 4
  %.not203 = icmp eq i32 %i.ix, 0
  br i1 %.not203, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8
  %i.ja = add i32 %i.iz, %spec.select210
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 252
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = urem i32 %i.ja, %i.jc
  store i32 %i.jd, ptr %i.iy, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.jf = load i32, ptr %i.je, align 4
  %.not204 = icmp eq i32 %i.jf, 0
  br i1 %.not204, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jg = load i32, ptr %i.dc, align 4
  %i.jh = add i32 %i.jg, %spec.select210          ; 3 uses
  %i.ji = load i32, ptr %i.cz, align 8            ; 3 uses
  %i.jj = udiv i32 %i.jh, %i.ji                   ; 3 uses
  %i.jk = urem i32 %i.jh, %i.ji
  store i32 %i.jk, ptr %i.dc, align 4
  %i.jl = load i32, ptr %i.cv, align 8
  %i.jm = add i32 %i.jl, %i.jj
  store i32 %i.jm, ptr %i.cv, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.jo = load i32, ptr %i.jn, align 4
  %i.jp = sext i32 %i.jo to i64
  %i.jq = mul nsw i64 %i.jp, %i.dg
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.js = load i32, ptr %i.jr, align 4
  %i.jt = mul i32 %i.js, %i.jj
  %i.ju = zext i32 %i.jt to i64
  %i.jv = load i64, ptr %i.f, align 8
  %i.jw = add i64 %i.jv, %i.jq
  %i.jx = add i64 %i.jw, %i.ju
  store i64 %i.jx, ptr %i.f, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.jz = load i32, ptr %i.jy, align 8
  %i.ka = sext i32 %i.jz to i64
  %i.kb = mul nsw i64 %i.ka, %i.dg
  %i.kc = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.kd = load i32, ptr %i.kc, align 8
  %i.ke = mul i32 %i.kd, %i.jj
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8
  %i.ki = add i64 %i.kh, %i.kb
  %i.kj = add i64 %i.ki, %i.kf                    ; 2 uses
  store i64 %i.kj, ptr %i.kg, align 8
  %i.kk = load i32, ptr %i.ag, align 8
  %i.kl = icmp eq i32 %i.kk, 0
  %i.km = icmp ule i32 %i.ji, %i.jh
  %or.cond = select i1 %i.kl, i1 %i.km, i1 false
  br i1 %or.cond, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.kn = trunc i64 %i.kj to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i16 %i.kn, ptr %i.ko, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca, %bb.by
  tail call fastcc void @omap_dma_interrupts_update(ptr noundef nonnull %i.e)
  ret void
}

declare ptr @qemu_allocate_irqs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @omap_dma_request(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 16               ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = zext nneg i32 %1 to i64
  %i.d = shl nuw i64 1, %i.c                      ; 2 uses
  %i.e = and i64 %i.b, %i.d
  %.not9.not = icmp eq i64 %i.e, 0
  br i1 %.not9.not, label %bb.c, label %omap_dma_process_request.exit

bb.c:                                             ; preds = %bb.b
  %i.f = or i64 %i.b, %i.d
  store i64 %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader.i, label %omap_dma_process_request.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400
  br label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %omap_dma_activate_channel.exit.thread.i, %.lr.ph.preheader.i
  %.022.ph.i = phi ptr [ %i.ak, %omap_dma_activate_channel.exit.thread.i ], [ %i.j, %.lr.ph.preheader.i ]
  %i.k = phi i1 [ false, %omap_dma_activate_channel.exit.thread.i ], [ true, %.lr.ph.preheader.i ]
  %.01620.ph.i = phi i32 [ %i.aj, %omap_dma_activate_channel.exit.thread.i ], [ 0, %.lr.ph.preheader.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %omap_dma_activate_channel.exit.i, %.lr.ph.outer.i
  %.022.i = phi ptr [ %i.ad, %omap_dma_activate_channel.exit.i ], [ %.022.ph.i, %.lr.ph.outer.i ] ; 11 uses
  %.01620.i = phi i32 [ %i.ac, %omap_dma_activate_channel.exit.i ], [ %.01620.ph.i, %.lr.ph.outer.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.022.i, i64 148
  %i.m = load i32, ptr %i.l, align 4
  %.not17.i = icmp eq i32 %i.m, 0
  br i1 %.not17.i, label %omap_dma_activate_channel.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.022.i, i64 152 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.o, %1
  br i1 %i.p, label %bb.e, label %omap_dma_activate_channel.exit.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.022.i, i64 144 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %.not18.i = icmp eq i32 %i.r, 0
  br i1 %.not18.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.022.i, i64 172 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %.not8.i.i = icmp eq i32 %i.t, 0
  br i1 %.not8.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @omap_dma_channel_load(ptr noundef nonnull %.022.i)
  store i32 0, ptr %i.s, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.q, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.022.i, i64 256
  %i.v = load ptr, ptr %i.u, align 8
  tail call void @soc_dma_set_request(ptr noundef %i.v, i32 noundef 1) #8
  %i.w = load i32, ptr %i.n, align 8
  %.not9.i.i = icmp eq i32 %i.w, 0
  br i1 %.not9.i.i, label %omap_dma_activate_channel.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.022.i, i64 136 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = or i32 %i.y, 64
  store i32 %i.z, ptr %i.x, align 8
  br label %omap_dma_activate_channel.exit.i

bb.j:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.022.i, i64 160 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %.not19.i = icmp eq i32 %i.ab, 0
  br i1 %.not19.i, label %bb.k, label %omap_dma_activate_channel.exit.thread.i

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.aa, align 8
  br label %omap_dma_activate_channel.exit.i

omap_dma_activate_channel.exit.i:                 ; preds = %bb.k, %bb.i, %bb.h, %bb.d, %.lr.ph.i
  %i.ac = add nuw nsw i32 %.01620.i, 1            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.022.i, i64 288
  %i.ae = load i32, ptr %i.g, align 4
  %i.af = icmp slt i32 %i.ac, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !13

omap_dma_activate_channel.exit.thread.i:          ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %.022.i, i64 136 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = or i32 %i.ah, 2
  store i32 %i.ai, ptr %i.ag, align 8
  %i.aj = add nuw nsw i32 %.01620.i, 1            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.022.i, i64 288
  %i.al = load i32, ptr %i.g, align 4
  %i.am = icmp slt i32 %i.aj, %i.al
  br i1 %i.am, label %.lr.ph.outer.i, label %._crit_edge.thread26.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %omap_dma_activate_channel.exit.i
  br i1 %i.k, label %omap_dma_process_request.exit, label %._crit_edge.thread26.i

._crit_edge.thread26.i:                           ; preds = %omap_dma_activate_channel.exit.thread.i, %._crit_edge.i
  tail call fastcc void @omap_dma_interrupts_update(ptr noundef nonnull %0)
  br label %omap_dma_process_request.exit

bb.l:                                             ; preds = %bb.a
  %i.an = zext nneg i32 %1 to i64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = xor i64 %i.ao, -1
  %i.aq = load ptr, ptr %0, align 16              ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = and i64 %i.ar, %i.ap
  store i64 %i.as, ptr %i.aq, align 8
  br label %omap_dma_process_request.exit

omap_dma_process_request.exit:                    ; preds = %._crit_edge.thread26.i, %._crit_edge.i, %bb.c, %bb.b, %bb.l
  ret void
}

declare void @omap_clk_adduser(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @qemu_allocate_irq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @omap_dma_clk_update(ptr nofree noundef readonly captures(none) %0, i32 %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i64 @omap_clk_getrate(ptr noundef %i.b) #8
  %i.d = load ptr, ptr %0, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.j = phi i32 [ %i.g, %.lr.ph ], [ %i.p, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [288 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.m = load i32, ptr %i.l, align 16
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.o = load ptr, ptr %i.n, align 16
  tail call void @soc_dma_set_request(ptr noundef %i.o, i32 noundef %2) #8
  %.pre = load i32, ptr %i.f, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %i.j, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @memory_region_add_subregion(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @omap_dma_get_lcdch(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9616
  ret ptr %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @physical_memory_read(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @physical_memory_write(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @omap_dma_channel_load(ptr nofree noundef captures(none) initializes((200, 216), (244, 252)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load <2 x i64>, ptr %i.b, align 8
  store <2 x i64> %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = load i16, ptr %i.d, align 4              ; 4 uses
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 3 uses
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.m = load i32, ptr %i.l, align 4
  %.not = icmp eq i32 %i.m, 0
  %i.n = zext i1 %.not to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 %i.p, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.t, align 8
  %.not78 = icmp eq i32 %i.i, 0
  %.not79 = icmp eq i16 %i.e, 0
  %or.cond84 = select i1 %.not78, i1 true, i1 %.not79, !prof !14
  br i1 %or.cond84, label %.critedge, label %.preheader, !prof !14

.preheader:                                       ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.z = load i32, ptr %i.u, align 8
  switch i32 %i.z, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

.critedge:                                        ; preds = %bb.a
  %i.aa = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.omap_dma_channel_load) #8 ; 0 uses
  br label %bb.z

bb.b:                                             ; preds = %.preheader
  store i32 0, ptr %i.x, align 4
  br label %.sink.split

bb.c:                                             ; preds = %.preheader
  %i.ab = load i32, ptr %i.v, align 4
  store i32 %i.ab, ptr %i.x, align 4
  br label %.sink.split

bb.d:                                             ; preds = %.preheader
  %i.ac = load i32, ptr %i.v, align 4
  %i.ad = load i16, ptr %i.w, align 8
  %i.ae = sext i16 %i.ad to i32
  %i.af = add i32 %i.ac, -1
  %i.ag = add i32 %i.af, %i.ae
  store i32 %i.ag, ptr %i.x, align 4
  br label %.sink.split

bb.e:                                             ; preds = %.preheader
  %i.ah = load i32, ptr %i.v, align 4
  %i.ai = load i16, ptr %i.w, align 8
  %i.aj = sext i16 %i.ai to i32                   ; 2 uses
  %i.ak = add i32 %i.ah, -1
  %i.al = add i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.x, align 4
  %i.am = load i32, ptr %i.k, align 8
  %i.an = sub i32 %i.am, %i.aj
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.an, %bb.e ]
  store i32 %.sink, ptr %i.y, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ap = load i32, ptr %i.ao, align 4
  switch i32 %i.ap, label %bb.k [
    i32 0, label %bb.j
    i32 1, label %bb.i
    i32 2, label %bb.h
    i32 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.v, align 4
  %i.ar = load i16, ptr %i.w, align 8
  %i.as = sext i16 %i.ar to i32                   ; 2 uses
  %i.at = add i32 %i.aq, -1
  %i.au = add i32 %i.at, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %i.au, ptr %i.av, align 8
  %i.aw = load i32, ptr %i.k, align 8
  %i.ax = sub i32 %i.aw, %i.as
  br label %.sink.split94

bb.h:                                             ; preds = %bb.f
  %i.ay = load i32, ptr %i.v, align 4
  %i.az = load i16, ptr %i.w, align 8
  %i.ba = sext i16 %i.az to i32
  %i.bb = add i32 %i.ay, -1
  %i.bc = add i32 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %i.bc, ptr %i.bd, align 8
  br label %.sink.split94

bb.i:                                             ; preds = %bb.f
  %i.be = load i32, ptr %i.v, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %i.be, ptr %i.bf, align 8
  br label %.sink.split94

bb.j:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 0, ptr %i.bg, align 8
  br label %.sink.split94

.sink.split94:                                    ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.sink95 = phi i32 [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ %i.ax, %bb.g ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %.sink95, ptr %i.bh, align 8
  br label %bb.k

bb.k:                                             ; preds = %.sink.split94, %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bj = load i32, ptr %i.bi, align 8
  %.not80 = icmp eq i32 %i.bj, 0
  br i1 %.not80, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bl = load i32, ptr %i.bk, align 4
  %.not81 = icmp eq i32 %i.bl, 0
  br i1 %.not81, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.l, %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %.split.us.preheader

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = or i32 %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = or i32 %i.bv, %i.bt
  %i.bx = icmp eq i32 %i.br, %i.bw
  %i.by = freeze i1 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 8 uses
  br i1 %i.by, label %.split.preheader, label %.split.us.preheader

.split.us.preheader:                              ; preds = %.thread, %bb.m
  %i.ca = phi ptr [ %i.bm, %.thread ], [ %i.bz, %bb.m ] ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store i32 2, ptr %i.cc, align 4
  %i.cd = load i64, ptr %i.b, align 8
  %i.ce = load ptr, ptr %i.ca, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  store i64 %i.cd, ptr %i.cf, align 8
  br label %.split88.us

.split.preheader:                                 ; preds = %bb.m
  %i.cg = load i32, ptr %i.x, align 4             ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.split.preheader
  %i.ci = icmp eq i16 %i.e, 1
  br i1 %i.ci, label %.split.1, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = load i32, ptr %i.y, align 4
  %.not82 = icmp eq i32 %i.cj, 0
  br i1 %.not82, label %.split.1, label %bb.p

bb.p:                                             ; preds = %bb.o, %.split.preheader
  %i.ck = load i32, ptr %i.v, align 4
  %i.cl = icmp eq i32 %i.cg, %i.ck
  br i1 %i.cl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cm = icmp eq i16 %i.e, 1
  br i1 %i.cm, label %.split.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = load i32, ptr %i.y, align 4
  %.not83 = icmp eq i32 %i.cn, 0
  br i1 %.not83, label %.split.1, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  br label %.split.1

.split.1:                                         ; preds = %bb.q, %bb.r, %bb.n, %bb.o, %bb.s
  %.sink97 = phi i32 [ 0, %bb.n ], [ 2, %bb.s ], [ 0, %bb.o ], [ 1, %bb.r ], [ 1, %bb.q ]
  %i.co = load ptr, ptr %i.bz, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  store i32 %.sink97, ptr %i.cp, align 4
  %i.cq = load i64, ptr %i.b, align 8
  %i.cr = load ptr, ptr %i.bz, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  store i64 %i.cq, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cu = load i32, ptr %i.ct, align 8            ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.split.1
  %i.cw = load i32, ptr %i.g, align 4
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %.split88.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cz = load i32, ptr %i.cy, align 8
  %.not82.1 = icmp eq i32 %i.cz, 0
  br i1 %.not82.1, label %.split88.us, label %bb.v

bb.v:                                             ; preds = %bb.u, %.split.1
  %i.da = load i32, ptr %i.v, align 4
  %i.db = icmp eq i32 %i.cu, %i.da
  br i1 %i.db, label %bb.w, label %.split88.us

bb.w:                                             ; preds = %bb.v
  %i.dc = load i32, ptr %i.g, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.df = load i32, ptr %i.de, align 8
  %.not83.1 = icmp eq i32 %i.df, 0
  br i1 %.not83.1, label %bb.y, label %.split88.us

bb.y:                                             ; preds = %bb.x, %bb.w
  br label %.split88.us

.split88.us:                                      ; preds = %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %.split.us.preheader
  %.sink106 = phi i32 [ 2, %.split.us.preheader ], [ 2, %bb.v ], [ 1, %bb.y ], [ 2, %bb.x ], [ 0, %bb.u ], [ 0, %bb.t ]
  %i.dg = phi ptr [ %i.ca, %.split.us.preheader ], [ %i.bz, %bb.t ], [ %i.bz, %bb.u ], [ %i.bz, %bb.v ], [ %i.bz, %bb.x ], [ %i.bz, %bb.y ] ; 3 uses
  %.sink108 = load ptr, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.sink108, i64 44
  store i32 %.sink106, ptr %i.dh, align 4
  %.sink103.in = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sink103 = load i64, ptr %.sink103.in, align 8
  %.sink105 = load ptr, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %.sink105, i64 56
  store i64 %.sink103, ptr %i.di, align 8
  %i.dj = load ptr, ptr %i.dg, align 8
  tail call void @soc_dma_ch_update(ptr noundef %i.dj) #8
  br label %bb.z

bb.z:                                             ; preds = %.split88.us, %.critedge
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @omap_dma_interrupts_update(ptr nofree noundef readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.d = load i32, ptr %i.c, align 8
  %i.e = or i32 %i.d, %i.b
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @qemu_set_irq(ptr noundef %i.g, i32 noundef 1) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2552
  %i.k = load i32, ptr %i.j, align 8
  %i.l = or i32 %i.k, %i.i
  %.not16 = icmp eq i32 %i.l, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @qemu_set_irq(ptr noundef %i.n, i32 noundef 1) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2840
  %i.r = load i32, ptr %i.q, align 8
  %i.s = or i32 %i.r, %i.p
  %.not17 = icmp eq i32 %i.s, 0
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @qemu_set_irq(ptr noundef %i.u, i32 noundef 1) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.w = load i32, ptr %i.v, align 8
  %.not18 = icmp eq i32 %i.w, 0
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @qemu_set_irq(ptr noundef %i.y, i32 noundef 1) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.aa = load i32, ptr %i.z, align 8
  %.not19 = icmp eq i32 %i.aa, 0
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @qemu_set_irq(ptr noundef %i.ac, i32 noundef 1) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.ae = load i32, ptr %i.ad, align 8
  %.not20 = icmp eq i32 %i.ae, 0
  br i1 %.not20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void @qemu_set_irq(ptr noundef %i.ag, i32 noundef 1) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

declare void @soc_dma_set_request(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @soc_dma_ch_update(ptr noundef) local_unnamed_addr #2

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @omap_dma_read(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @qemu_loglevel, align 4
  %i.b = and i32 %i.a, 2048
  %.not32 = icmp eq i32 %i.b, 0
  br i1 %.not32, label %bb.at, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.omap_dma_read, i64 noundef %1, i32 noundef %2) #8
  br label %bb.at

bb.d:                                             ; preds = %bb.a
  %cond = icmp eq i64 %1, 1024
  br i1 %cond, label %bb.aq, label %bb.ar

bb.e:                                             ; preds = %bb.p
  %i.c = trunc nuw nsw i64 %1 to i32
  switch i32 %i.c, label %omap_dma_3_1_lcd_read.exit [
    i32 768, label %bb.f
    i32 770, label %bb.g
    i32 772, label %bb.h
    i32 774, label %bb.i
    i32 776, label %bb.j
    i32 778, label %bb.k
    i32 780, label %bb.l
    i32 782, label %bb.m
    i32 784, label %bb.n
  ]

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9616
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9660 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  store i32 0, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9688
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @qemu_set_irq(ptr noundef %i.h, i32 noundef 0) #8
  %i.i = load i32, ptr %i.d, align 8
  %i.j = icmp eq i32 %i.i, 2
  %i.k = select i1 %i.j, i32 64, i32 0
  %i.l = shl i32 %i.f, 3
  %i.m = or i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9656
  %i.o = load i32, ptr %i.n, align 8
  %i.p = shl i32 %i.o, 1
  %i.q = or i32 %i.m, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 9664
  %i.s = load i32, ptr %i.r, align 8
  %i.t = or i32 %i.q, %i.s
  %i.u = zext i32 %i.t to i64
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 9624
  %i.w = load i64, ptr %i.v, align 8
  br label %bb.o

bb.h:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 9624
  %i.y = load i64, ptr %i.x, align 8
  %i.z = lshr i64 %i.y, 16
  br label %bb.o

bb.i:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 9632
  %i.ab = load i64, ptr %i.aa, align 8
  br label %bb.o

bb.j:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 9632
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = lshr i64 %i.ad, 16
  br label %bb.o

bb.k:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 9640
  %i.ag = load i64, ptr %i.af, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 9640
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = lshr i64 %i.ai, 16
  br label %bb.o

bb.m:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 9648
  %i.al = load i64, ptr %i.ak, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 9648
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = lshr i64 %i.an, 16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.023.ph = phi i64 [ %i.ao, %bb.n ], [ %i.al, %bb.m ], [ %i.aj, %bb.l ], [ %i.ag, %bb.k ], [ %i.ae, %bb.j ], [ %i.ab, %bb.i ], [ %i.z, %bb.h ], [ %i.w, %bb.g ], [ %i.u, %bb.f ]
  %i.ap = and i64 %.023.ph, 65535
  br label %bb.at

bb.p:                                             ; preds = %bb.ao
  %i.aq = add i64 %1, -768
  %i.ar = icmp ult i64 %i.aq, 255
  br i1 %i.ar, label %bb.e, label %omap_dma_3_1_lcd_read.exit

bb.q:                                             ; preds = %bb.ao
  %i.as = trunc nuw nsw i64 %1 to i32
  %i.at = and i32 %i.as, 63
  %i.au = lshr i64 %1, 6
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.aw = getelementptr inbounds nuw [288 x i8], ptr %i.av, i64 %i.au ; 41 uses
  switch i32 %i.at, label %omap_dma_3_1_lcd_read.exit [
    i32 0, label %bb.r
    i32 2, label %bb.s
    i32 4, label %bb.t
    i32 6, label %bb.u
    i32 8, label %bb.x
    i32 10, label %bb.y
    i32 12, label %bb.z
    i32 14, label %bb.aa
    i32 16, label %bb.ab
    i32 18, label %bb.ac
    i32 20, label %bb.ad
    i32 22, label %bb.ae
    i32 24, label %bb.af
    i32 26, label %bb.ag
    i32 28, label %bb.ah
    i32 30, label %bb.ai
    i32 32, label %bb.aj
    i32 34, label %bb.ak
    i32 36, label %bb.al
    i32 40, label %bb.am
    i32 42, label %bb.an
  ]

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = shl i32 %i.ay, 14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = shl i32 %i.bc, 13
  %i.be = or i32 %i.bd, %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = shl i32 %i.bh, 9
  %i.bj = or i32 %i.be, %i.bi
  %i.bk = load i32, ptr %i.aw, align 8
  %i.bl = shl i32 %i.bk, 7
  %i.bm = or i32 %i.bj, %i.bl
  %i.bn = load i32, ptr %i.ba, align 8
  %i.bo = shl i32 %i.bn, 6
  %i.bp = or i32 %i.bm, %i.bo
  %i.bq = load i32, ptr %i.bf, align 8
  %i.br = shl i32 %i.bq, 2
  %i.bs = or i32 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 92
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = lshr i32 %i.bu, 1
  %i.bw = or i32 %i.bs, %i.bv
  %i.bx = trunc i32 %i.bw to i16
  br label %bb.ap

bb.s:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 68
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = shl i32 %i.ca, 14
  %i.cc = load i32, ptr %i.by, align 8
  %i.cd = shl i32 %i.cc, 12
  %i.ce = or i32 %i.cd, %i.cb
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = shl i32 %i.cg, 11
  %i.ci = or i32 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aw, i64 116
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = shl i32 %i.ck, 9
  %i.cm = or i32 %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = shl i32 %i.co, 8
  %i.cq = or i32 %i.cm, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aw, i64 148
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = shl i32 %i.cs, 7
  %i.cu = or i32 %i.cq, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aw, i64 268
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = shl i32 %i.cw, 6
  %i.cy = or i32 %i.cu, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aw, i64 176
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = shl i32 %i.da, 5
  %i.dc = or i32 %i.cy, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aw, i64 152
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = or i32 %i.dc, %i.de
  %i.dg = trunc i32 %i.df to i16
  br label %bb.ap

bb.t:                                             ; preds = %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aw, i64 132
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = trunc i32 %i.di to i16
  br label %bb.ap

bb.u:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aw, i64 136 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8            ; 2 uses
  %i.dm = trunc i32 %i.dl to i16                  ; 2 uses
  %i.dn = and i32 %i.dl, 64
  store i32 %i.dn, ptr %i.dk, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.aw, i64 192
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 136 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8            ; 2 uses
  %.tr.i = trunc i32 %i.dr to i16
  %i.ds = shl i16 %.tr.i, 6
  %i.dt = and i16 %i.ds, 4032
  %i.du = or i16 %i.dt, %i.dm
  %i.dv = and i32 %i.dr, 64
  store i32 %i.dv, ptr %i.dq, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1 = phi i16 [ %i.dm, %bb.u ], [ %i.du, %bb.v ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aw, i64 184
  %i.dx = load ptr, ptr %i.dw, align 8
  tail call void @qemu_set_irq(ptr noundef %i.dx, i32 noundef 0) #8
  br label %bb.ap

bb.x:                                             ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = trunc i64 %i.dz to i16
  br label %bb.ap

bb.y:                                             ; preds = %bb.q
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = lshr i64 %i.ec, 16
  %i.ee = trunc i64 %i.ed to i16
  br label %bb.ap

bb.z:                                             ; preds = %bb.q
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = trunc i64 %i.eg to i16
  br label %bb.ap

bb.aa:                                            ; preds = %bb.q
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = lshr i64 %i.ej, 16
  %i.el = trunc i64 %i.ek to i16
  br label %bb.ap

bb.ab:                                            ; preds = %bb.q
  %i.em = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.en = load i32, ptr %i.em, align 8
  %i.eo = trunc i32 %i.en to i16
  br label %bb.ap

bb.ac:                                            ; preds = %bb.q
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aw, i64 76
  %i.eq = load i16, ptr %i.ep, align 4
  br label %bb.ap

bb.ad:                                            ; preds = %bb.q
  %i.er = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.es = load i32, ptr %i.er, align 8
  %i.et = trunc i32 %i.es to i16
  br label %bb.ap

bb.ae:                                            ; preds = %bb.q
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %i.ev = load i16, ptr %i.eu, align 8
  br label %bb.ap

bb.af:                                            ; preds = %bb.q
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aw, i64 168
  %i.ex = load i16, ptr %i.ew, align 8
  br label %bb.ap

bb.ag:                                            ; preds = %bb.q
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aw, i64 208
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = trunc i64 %i.ez to i16
  br label %bb.ap

bb.ah:                                            ; preds = %bb.q
  %i.fb = getelementptr inbounds nuw i8, ptr %i.aw, i64 90
  %i.fc = load i16, ptr %i.fb, align 2
  br label %bb.ap

bb.ai:                                            ; preds = %bb.q
  %i.fd = getelementptr inbounds nuw i8, ptr %i.aw, i64 84
  %i.fe = load i32, ptr %i.fd, align 4
  %i.ff = trunc i32 %i.fe to i16
  br label %bb.ap

bb.aj:                                            ; preds = %bb.q
  %i.fg = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  %i.fh = load i32, ptr %i.fg, align 8
  %i.fi = trunc i32 %i.fh to i16
  br label %bb.ap

bb.ak:                                            ; preds = %bb.q
  %i.fj = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  %i.fk = load i32, ptr %i.fj, align 8
  %i.fl = lshr i32 %i.fk, 16
  %i.fm = trunc nuw i32 %i.fl to i16
  br label %bb.ap

bb.al:                                            ; preds = %bb.q
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aw, i64 180
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = shl i32 %i.fo, 2
  %i.fq = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.fr = load i32, ptr %i.fq, align 8
  %i.fs = shl i32 %i.fr, 1
  %i.ft = or i32 %i.fs, %i.fp
  %i.fu = getelementptr inbounds nuw i8, ptr %i.aw, i64 100
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = or i32 %i.ft, %i.fv
  %i.fx = trunc i32 %i.fw to i16
  br label %bb.ap

bb.am:                                            ; preds = %bb.q
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aw, i64 124
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = shl i32 %i.fz, 15
  %i.gb = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.gc = load i32, ptr %i.gb, align 8
  %i.gd = and i32 %i.gc, 15
  %i.ge = or disjoint i32 %i.gd, %i.ga
  %i.gf = trunc i32 %i.ge to i16
  br label %bb.ap

bb.an:                                            ; preds = %bb.q
  %i.gg = getelementptr inbounds nuw i8, ptr %i.aw, i64 272
  %i.gh = load i32, ptr %i.gg, align 8
  %i.gi = shl i32 %i.gh, 15
  %i.gj = getelementptr inbounds nuw i8, ptr %i.aw, i64 276
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = or i32 %i.gi, %i.gk
  %i.gm = trunc i32 %i.gl to i16
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ar
  %i.gn = icmp ult i64 %1, 767
  br i1 %i.gn, label %bb.q, label %bb.p

bb.ap:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.t, %bb.s, %bb.r
  %.2.ph = phi i16 [ %i.gm, %bb.an ], [ %i.gf, %bb.am ], [ %i.fx, %bb.al ], [ %i.fm, %bb.ak ], [ %i.fi, %bb.aj ], [ %i.ff, %bb.ai ], [ %i.fc, %bb.ah ], [ %i.fa, %bb.ag ], [ %i.ex, %bb.af ], [ %i.ev, %bb.ae ], [ %i.et, %bb.ad ], [ %i.eq, %bb.ac ], [ %i.eo, %bb.ab ], [ %i.el, %bb.aa ], [ %i.eh, %bb.z ], [ %i.ee, %bb.y ], [ %i.ea, %bb.x ], [ %.1, %bb.w ], [ %i.dj, %bb.t ], [ %i.dg, %bb.s ], [ %i.bx, %bb.r ]
  %i.go = zext i16 %.2.ph to i64
  br label %bb.at

bb.aq:                                            ; preds = %bb.d
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.gq = load i32, ptr %i.gp, align 16
  %i.gr = zext i32 %i.gq to i64
  br label %bb.at

bb.ar:                                            ; preds = %bb.d
  %i.gs = add i64 %1, -2816
  %i.gt = icmp ult i64 %i.gs, 255
  %i.gu = add i64 %1, -1028
  %i.gv = icmp ult i64 %i.gu, 251
  %or.cond = or i1 %i.gt, %i.gv
  br i1 %or.cond, label %omap_dma_3_1_lcd_read.exit, label %bb.ao

omap_dma_3_1_lcd_read.exit:                       ; preds = %bb.q, %bb.e, %bb.p, %bb.ar
  %i.gw = load i32, ptr @qemu_loglevel, align 4
  %i.gx = and i32 %i.gw, 2048
  %.not33 = icmp eq i32 %i.gx, 0
  br i1 %.not33, label %bb.at, label %bb.as, !prof !10

bb.as:                                            ; preds = %omap_dma_3_1_lcd_read.exit
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.omap_dma_read, i64 noundef %1) #8
  br label %bb.at

bb.at:                                            ; preds = %omap_dma_3_1_lcd_read.exit, %bb.as, %bb.b, %bb.c, %bb.aq, %bb.ap, %bb.o
  %.0 = phi i64 [ %i.ap, %bb.o ], [ %i.gr, %bb.aq ], [ 0, %bb.b ], [ %i.go, %bb.ap ], [ 0, %bb.c ], [ 0, %bb.as ], [ 0, %omap_dma_3_1_lcd_read.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @omap_dma_write(ptr nofree noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %.not = icmp eq i32 %3, 2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @qemu_loglevel, align 4
  %i.b = and i32 %i.a, 2048
  %.not26 = icmp eq i32 %i.b, 0
  br i1 %.not26, label %omap_dma_3_1_lcd_write.exit.thread, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.omap_dma_write, i64 noundef %1, i32 noundef %3) #8
  br label %omap_dma_3_1_lcd_write.exit.thread

bb.d:                                             ; preds = %bb.a
  %cond = icmp eq i64 %1, 1024
  br i1 %cond, label %bb.bs, label %bb.bt

bb.e:                                             ; preds = %bb.o
  %i.c = trunc nuw nsw i64 %1 to i32
  switch i32 %i.c, label %omap_dma_3_1_lcd_write.exit [
    i32 768, label %bb.f
    i32 770, label %bb.g
    i32 772, label %bb.h
    i32 774, label %bb.i
    i32 776, label %bb.j
    i32 778, label %bb.k
    i32 780, label %bb.l
    i32 782, label %bb.m
    i32 784, label %bb.n
  ]

bb.f:                                             ; preds = %bb.e
  %i.d = trunc i64 %2 to i32                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9616
  %i.f = lshr i32 %i.d, 5
  %i.g = and i32 %i.f, 2
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9660
  store i32 0, ptr %i.h, align 4
  %i.i = lshr i32 %i.d, 1
  %i.j = and i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9656
  store i32 %i.j, ptr %i.k, align 8
  %i.l = and i32 %i.d, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9664
  store i32 %i.l, ptr %i.m, align 8
  br label %omap_dma_3_1_lcd_write.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9624 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 4294901760
  %i.q = and i64 %2, 65535
  %i.r = or disjoint i64 %i.p, %i.q
  store i64 %i.r, ptr %i.n, align 8
  br label %omap_dma_3_1_lcd_write.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9624 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, 65535
  %i.v = shl i64 %2, 16
  %i.w = and i64 %i.v, 4294901760
  %i.x = or disjoint i64 %i.u, %i.w
  store i64 %i.x, ptr %i.s, align 8
  br label %omap_dma_3_1_lcd_write.exit.thread

bb.i:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 9632 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, 4294901760
  %i.ab = and i64 %2, 65535
  %i.ac = or disjoint i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %i.y, align 8
  br label %omap_dma_3_1_lcd_write.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 9632 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = and i64 %i.ae, 65535
  %i.ag = shl i64 %2, 16
  %i.ah = and i64 %i.ag, 4294901760
  %i.ai = or disjoint i64 %i.af, %i.ah
  store i64 %i.ai, ptr %i.ad, align 8
  br label %omap_dma_3_1_lcd_write.exit.thread

bb.k:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 9640 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, 4294901760
  %i.am = and i64 %2, 65535
  %i.an = or disjoint i64 %i.al, %i.am
  store i64 %i.an, ptr %i.aj, align 8
  br label %omap_dma_3_1_lcd_write.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 9640 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, 65535
  %i.ar = shl i64 %2, 16
  %i.as = and i64 %i.ar, 4294901760
  %i.at = or disjoint i64 %i.aq, %i.as
  store i64 %i.at, ptr %i.ao, align 8
  br label %omap_dma_3_1_lcd_write.exit.thread

bb.m:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 9648 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = and i64 %i.av, 4294901760
  %i.ax = and i64 %2, 65535
  %i.ay = or disjoint i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %i.au, align 8
  br label %omap_dma_3_1_lcd_write.exit.thread

bb.n:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 9648 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = and i64 %i.ba, 65535
  %i.bc = shl i64 %2, 16
  %i.bd = and i64 %i.bc, 4294901760
  %i.be = or disjoint i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.az, align 8
  br label %omap_dma_3_1_lcd_write.exit.thread

bb.o:                                             ; preds = %bb.br
  %i.bf = add i64 %1, -768
  %i.bg = icmp ult i64 %i.bf, 255
  br i1 %i.bg, label %bb.e, label %omap_dma_3_1_lcd_write.exit

bb.p:                                             ; preds = %bb.br
  %i.bh = trunc nuw nsw i64 %1 to i32
  %i.bi = and i32 %i.bh, 63
  %i.bj = lshr i64 %1, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bl = getelementptr inbounds nuw [288 x i8], ptr %i.bk, i64 %i.bj ; 64 uses
  %i.bm = trunc i64 %2 to i16                     ; 6 uses
  switch i32 %i.bi, label %omap_dma_3_1_lcd_write.exit [
    i32 0, label %bb.q
    i32 2, label %bb.aa
    i32 4, label %bb.au
    i32 6, label %bb.av
    i32 8, label %bb.ax
    i32 10, label %bb.ay
    i32 12, label %bb.az
    i32 14, label %bb.ba
    i32 16, label %bb.bb
    i32 18, label %bb.bc
    i32 20, label %bb.bd
    i32 22, label %bb.be
    i32 24, label %bb.bf
    i32 28, label %bb.bh
    i32 30, label %bb.bi
    i32 32, label %bb.bj
    i32 34, label %bb.bk
    i32 36, label %bb.bl
    i32 40, label %bb.bm
    i32 42, label %bb.bq
  ]

bb.q:                                             ; preds = %bb.p
  %i.bn = trunc i64 %2 to i32                     ; 7 uses
  %i.bo = lshr i32 %i.bn, 14
  %i.bp = and i32 %i.bo, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %i.bp, ptr %i.bq, align 4
  %i.br = lshr i32 %i.bn, 13
  %i.bs = and i32 %i.br, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 %i.bs, ptr %i.bu, align 4
  %i.bv = lshr i32 %i.bn, 9
  %i.bw = and i32 %i.bv, 15                       ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 44 ; 2 uses
  store i32 %i.bw, ptr %i.by, align 4
  %i.bz = lshr i32 %i.bn, 7
  %i.ca = and i32 %i.bz, 3
  store i32 %i.ca, ptr %i.bl, align 8
  %i.cb = lshr i32 %i.bn, 6
  %i.cc = and i32 %i.cb, 1
  store i32 %i.cc, ptr %i.bt, align 8
  %i.cd = lshr i32 %i.bn, 2
  %i.ce = and i32 %i.cd, 15                       ; 3 uses
  store i32 %i.ce, ptr %i.bx, align 8
  %i.cf = icmp samesign ugt i32 %i.ce, 5
  br i1 %i.cf, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cg = load i32, ptr @qemu_loglevel, align 4
  %i.ch = and i32 %i.cg, 2048
  %.not110.i = icmp eq i32 %i.ch, 0
  br i1 %.not110.i, label %bb.t, label %bb.s, !prof !10

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.omap_dma_ch_reg_write, i32 noundef %i.ce) #8
  %.pre.i = load i32, ptr %i.by, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
end_hunk_1
