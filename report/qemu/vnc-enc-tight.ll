Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vnc-enc-tight?download=true
inline.NumInlined: 64
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.2 = type { double, double, i32, i32 }
%struct.anon.3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Notifier = type { ptr, %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr }
%struct.anon.8 = type { i32, i32 }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x i32], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon.7, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon.7 = type { [8 x i32], [48 x i8] }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.palette_cb_priv = type { ptr, ptr, ptr, ptr }

@tight_jpeg_conf = internal unnamed_addr constant [10 x %struct.anon.2] [%struct.anon.2 { double 0.000000e+00, double 8.000000e+00, i32 1, i32 1 }, %struct.anon.2 { double 0.000000e+00, double 8.000000e+00, i32 1, i32 1 }, %struct.anon.2 { double 0.000000e+00, double 8.000000e+00, i32 1, i32 1 }, %struct.anon.2 { double 0.000000e+00, double 8.000000e+00, i32 1, i32 1 }, %struct.anon.2 { double 0.000000e+00, double 1.000000e+01, i32 1, i32 1 }, %struct.anon.2 { double 1.000000e-01, double 1.000000e+01, i32 1, i32 1 }, %struct.anon.2 { double 2.000000e-01, double 1.000000e+01, i32 1, i32 1 }, %struct.anon.2 { double 3.000000e-01, double 1.200000e+01, i32 0, i32 0 }, %struct.anon.2 { double 4.000000e-01, double 1.400000e+01, i32 0, i32 0 }, %struct.anon.2 { double 5.000000e-01, double 1.600000e+01, i32 0, i32 0 }], align 16
@tight_conf = internal unnamed_addr constant [10 x %struct.anon.3] [%struct.anon.3 { i32 512, i32 32, i32 6, i32 65536, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 5, i32 10000, i32 23000 }, %struct.anon.3 { i32 2048, i32 128, i32 6, i32 65536, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 8, i32 10, i32 8000, i32 18000 }, %struct.anon.3 { i32 6144, i32 256, i32 8, i32 65536, i32 3, i32 3, i32 2, i32 0, i32 0, i32 0, i32 24, i32 15, i32 6500, i32 15000 }, %struct.anon.3 { i32 10240, i32 1024, i32 12, i32 65536, i32 5, i32 5, i32 3, i32 0, i32 0, i32 0, i32 32, i32 25, i32 5000, i32 12000 }, %struct.anon.3 { i32 16384, i32 2048, i32 12, i32 65536, i32 6, i32 6, i32 4, i32 0, i32 0, i32 0, i32 32, i32 37, i32 4000, i32 10000 }, %struct.anon.3 { i32 32768, i32 2048, i32 12, i32 4096, i32 7, i32 7, i32 5, i32 4, i32 150, i32 380, i32 32, i32 50, i32 3000, i32 8000 }, %struct.anon.3 { i32 65536, i32 2048, i32 16, i32 4096, i32 7, i32 7, i32 6, i32 4, i32 170, i32 420, i32 48, i32 60, i32 2000, i32 5000 }, %struct.anon.3 { i32 65536, i32 2048, i32 16, i32 4096, i32 8, i32 8, i32 7, i32 5, i32 180, i32 450, i32 64, i32 70, i32 1000, i32 2500 }, %struct.anon.3 { i32 65536, i32 2048, i32 32, i32 8192, i32 9, i32 9, i32 8, i32 6, i32 190, i32 475, i32 64, i32 75, i32 500, i32 1200 }, %struct.anon.3 { i32 65536, i32 2048, i32 32, i32 8192, i32 9, i32 9, i32 9, i32 6, i32 200, i32 500, i32 96, i32 80, i32 200, i32 500 }], align 16
@color_count_palette = internal thread_local unnamed_addr global ptr null, align 8
@vnc_tight_cleanup_notifier = internal thread_local global %struct.Notifier zeroinitializer, align 8
@tight_png_conf = internal unnamed_addr constant [10 x %struct.anon.8] [%struct.anon.8 zeroinitializer, %struct.anon.8 { i32 1, i32 0 }, %struct.anon.8 { i32 2, i32 0 }, %struct.anon.8 { i32 3, i32 0 }, %struct.anon.8 { i32 4, i32 0 }, %struct.anon.8 { i32 5, i32 248 }, %struct.anon.8 { i32 6, i32 248 }, %struct.anon.8 { i32 7, i32 248 }, %struct.anon.8 { i32 8, i32 248 }, %struct.anon.8 { i32 9, i32 248 }], align 16
@.str = private unnamed_addr constant [7 x i8] c"1.6.43\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"VNC: error during tight compression\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"VNC: error initializing zlib\0A\00", align 1
@trace_events_enabled_count = external local_unnamed_addr global i32, align 4
@_TRACE_VNC_TIGHT_ZLIB_INIT_DSTATE = external local_unnamed_addr global i16, align 2
@.str.4 = private unnamed_addr constant [70 x i8] c"vnc_tight_zlib_init VNC tight zlib init state=%p stream=%d opaque=%p\0A\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @vnc_tight_send_framebuffer_update(ptr noundef %0, ptr noundef initializes((2720, 2724), (2726, 2727)) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2720
  store i32 7, ptr %i.a, align 8
  %i.b = tail call fastcc i32 @tight_send_framebuffer_update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  ret i32 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @tight_send_framebuffer_update(ptr noundef %0, ptr noundef initializes((2726, 2727)) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 86657 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2724 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 86680
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 86682
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 86681
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2726 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2725 ; 4 uses
  %i.h = icmp sgt i32 %4, 0                       ; 4 uses
  %i.i = add i32 %4, %2                           ; 8 uses
  %i.j = icmp slt i32 %2, %i.i
  %i.k = getelementptr i8, ptr %0, i64 86432      ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2720
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2728 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2768 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 86568 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2760 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2744
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 86692
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 86676
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 86677 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 86678 ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.aw, %bb.a
  %accumulator.tr = phi i32 [ 0, %bb.a ], [ %i.jo, %bb.aw ] ; 2 uses
  %.tr141 = phi i32 [ %3, %bb.a ], [ %.1146.i, %bb.aw ] ; 9 uses
  %.tr143 = phi i32 [ %5, %bb.a ], [ %i.jn, %bb.aw ] ; 10 uses
  %i.v = load i8, ptr %i.a, align 1
  %i.w = icmp eq i8 %i.v, 4
  br i1 %i.w, label %bb.b, label %bb.e

bb.b:                                             ; preds = %tailrecurse
  %i.x = load i8, ptr %i.c, align 8
  %i.y = icmp eq i8 %i.x, -1
  br i1 %i.y, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.z = load i8, ptr %i.d, align 2
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = load i8, ptr %i.e, align 1
  %i.ac = icmp eq i8 %i.ab, -1
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %tailrecurse
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %i.f, align 2
  %i.ad = load i8, ptr %i.b, align 4
  %.not = icmp eq i8 %i.ad, -1
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call double @vnc_update_freq(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %.tr141, i32 noundef %4, i32 noundef %.tr143) #12
  %i.af = load i8, ptr %i.b, align 4
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr @tight_jpeg_conf, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load double, ptr %i.ai, align 8
  %i.ak = fcmp ule double %i.ae, %i.aj
  br i1 %i.ak, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = tail call fastcc i32 @send_sub_rect(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %.tr141, i32 noundef %4, i32 noundef %.tr143)
  br label %send_rect_simple.exit

.thread:                                          ; preds = %bb.g, %bb.f
  %i.am = mul i32 %.tr143, %4                     ; 3 uses
  %i.an = icmp slt i32 %i.am, 4096
  %i.ao = load i8, ptr %i.g, align 1
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr @tight_conf, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8            ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.at = load i32, ptr %i.as, align 4            ; 5 uses
  br i1 %i.an, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.thread
  %i.au = icmp sgt i32 %4, %i.at
  %i.av = icmp sgt i32 %i.am, %i.ar
  %or.cond.i = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aw = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.at) ; 2 uses
  %i.ax = sdiv i32 %i.ar, %i.aw                   ; 2 uses
  %i.ay = icmp sgt i32 %.tr143, 0
  %or.cond68.i = and i1 %i.h, %i.ay
  br i1 %or.cond68.i, label %.preheader.us.i, label %send_rect_simple.exit

.preheader.us.i:                                  ; preds = %bb.j, %._crit_edge.us.i
  %.05463.us.i = phi i32 [ %i.bj, %._crit_edge.us.i ], [ 0, %bb.j ] ; 3 uses
  %.05562.us.i = phi i32 [ %i.bg, %._crit_edge.us.i ], [ 0, %bb.j ]
  %i.az = sub i32 %.tr143, %.05463.us.i
  %i.ba = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.az)
  %i.bb = add i32 %.05463.us.i, %.tr141
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader.us.i
  %.061.us.i = phi i32 [ 0, %.preheader.us.i ], [ %i.bh, %bb.k ] ; 3 uses
  %.160.us.i = phi i32 [ %.05562.us.i, %.preheader.us.i ], [ %i.bg, %bb.k ]
  %i.bc = sub i32 %4, %.061.us.i
  %i.bd = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bc)
  %i.be = add i32 %.061.us.i, %2
  %i.bf = tail call fastcc i32 @send_sub_rect(ptr noundef %0, ptr noundef %1, i32 noundef %i.be, i32 noundef %i.bb, i32 noundef %i.bd, i32 noundef %i.ba)
  %i.bg = add i32 %i.bf, %.160.us.i               ; 3 uses
  %i.bh = add i32 %.061.us.i, %i.at               ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %4
  br i1 %i.bi, label %bb.k, label %._crit_edge.us.i, !llvm.loop !17

._crit_edge.us.i:                                 ; preds = %bb.k
  %i.bj = add i32 %.05463.us.i, %i.ax             ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %.tr143
  br i1 %i.bk, label %.preheader.us.i, label %send_rect_simple.exit, !llvm.loop !18

bb.l:                                             ; preds = %bb.i
  %i.bl = tail call fastcc i32 @send_sub_rect(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %.tr141, i32 noundef %4, i32 noundef %.tr143)
  br label %send_rect_simple.exit

bb.m:                                             ; preds = %.thread
  %i.bm = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %4)
  %i.bn = sdiv i32 %i.ar, %i.bm                   ; 8 uses
  %i.bo = add i32 %.tr141, %.tr143
  %i.bp = icmp slt i32 %.tr141, %i.bo
  br i1 %i.bp, label %.lr.ph197, label %._crit_edge198

.lr.ph197:                                        ; preds = %bb.m
  %i.bq = mul i32 %i.bn, %4
  %i.br = icmp sgt i32 %i.bn, 0
  %or.cond68.i84 = and i1 %i.h, %i.br
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph197, %._crit_edge
  %.0106.i195 = phi i32 [ %.tr141, %.lr.ph197 ], [ %.1107.i, %._crit_edge ] ; 5 uses
  %.0108.i194 = phi i32 [ %.tr143, %.lr.ph197 ], [ %.1109.i, %._crit_edge ] ; 2 uses
  %.0111.i193 = phi i32 [ %.tr141, %.lr.ph197 ], [ %i.jr, %._crit_edge ] ; 10 uses
  %.0112.i192 = phi i32 [ 0, %.lr.ph197 ], [ %.1113.i, %._crit_edge ] ; 2 uses
  %i.bs = sub i32 %.0111.i193, %.0106.i195
  %.not.i = icmp slt i32 %i.bs, %i.bn
  br i1 %.not.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = load i8, ptr %i.g, align 1
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [56 x i8], ptr @tight_conf, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.by = load i32, ptr %i.bx, align 4            ; 3 uses
  %i.bz = icmp sgt i32 %4, %i.by
  %i.ca = icmp sgt i32 %i.bq, %i.bw
  %or.cond.i81 = select i1 %i.bz, i1 true, i1 %i.ca
  br i1 %or.cond.i81, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cb = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.by) ; 2 uses
  %i.cc = sdiv i32 %i.bw, %i.cb                   ; 2 uses
  br i1 %or.cond68.i84, label %.preheader.us.i85, label %send_rect_simple.exit91

.preheader.us.i85:                                ; preds = %bb.p, %._crit_edge.us.i90
  %.05463.us.i86 = phi i32 [ %i.cn, %._crit_edge.us.i90 ], [ 0, %bb.p ] ; 3 uses
  %.05562.us.i87 = phi i32 [ %i.ck, %._crit_edge.us.i90 ], [ 0, %bb.p ]
  %i.cd = sub i32 %i.bn, %.05463.us.i86
  %i.ce = tail call i32 @llvm.smin.i32(i32 %i.cc, i32 %i.cd)
  %i.cf = add i32 %.05463.us.i86, %.0106.i195
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader.us.i85
  %.061.us.i88 = phi i32 [ 0, %.preheader.us.i85 ], [ %i.cl, %bb.q ] ; 3 uses
  %.160.us.i89 = phi i32 [ %.05562.us.i87, %.preheader.us.i85 ], [ %i.ck, %bb.q ]
  %i.cg = sub i32 %4, %.061.us.i88
  %i.ch = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.cg)
  %i.ci = add i32 %.061.us.i88, %2
  %i.cj = tail call fastcc i32 @send_sub_rect(ptr noundef %0, ptr noundef %1, i32 noundef %i.ci, i32 noundef %i.cf, i32 noundef %i.ch, i32 noundef %i.ce)
  %i.ck = add i32 %i.cj, %.160.us.i89             ; 3 uses
  %i.cl = add i32 %.061.us.i88, %i.by             ; 2 uses
  %i.cm = icmp slt i32 %i.cl, %4
  br i1 %i.cm, label %bb.q, label %._crit_edge.us.i90, !llvm.loop !17

._crit_edge.us.i90:                               ; preds = %bb.q
  %i.cn = add i32 %.05463.us.i86, %i.cc           ; 2 uses
  %i.co = icmp slt i32 %i.cn, %i.bn
  br i1 %i.co, label %.preheader.us.i85, label %send_rect_simple.exit91, !llvm.loop !18

bb.r:                                             ; preds = %bb.o
  %i.cp = tail call fastcc i32 @send_sub_rect(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %.0106.i195, i32 noundef %4, i32 noundef %i.bn)
  br label %send_rect_simple.exit91

send_rect_simple.exit91:                          ; preds = %._crit_edge.us.i90, %bb.p, %bb.r
  %.2.i83 = phi i32 [ %i.cp, %bb.r ], [ 0, %bb.p ], [ %i.ck, %._crit_edge.us.i90 ]
  %i.cq = add i32 %.2.i83, %.0112.i192
  %i.cr = add i32 %.0106.i195, %i.bn
  %i.cs = sub i32 %.0108.i194, %i.bn
  br label %bb.s

bb.s:                                             ; preds = %send_rect_simple.exit91, %bb.n
  %.1113.i = phi i32 [ %i.cq, %send_rect_simple.exit91 ], [ %.0112.i192, %bb.n ] ; 4 uses
  %.1109.i = phi i32 [ %i.cs, %send_rect_simple.exit91 ], [ %.0108.i194, %bb.n ] ; 5 uses
  %.1107.i = phi i32 [ %i.cr, %send_rect_simple.exit91 ], [ %.0106.i195, %bb.n ] ; 9 uses
  %i.ct = add i32 %.1107.i, %.1109.i              ; 10 uses
  %i.cu = sub i32 %i.ct, %.0111.i193              ; 2 uses
  %i.cv = tail call i32 @llvm.smin.i32(i32 %i.cu, i32 16) ; 2 uses
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.s
  %i.cw = icmp sgt i32 %i.cu, 0
  %i.cx = icmp slt i32 %.0111.i193, %i.ct
  %i.cy = mul i32 %.1109.i, %4
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %.loopexit
  %.0110.i191 = phi i32 [ %2, %.lr.ph ], [ %i.jp, %.loopexit ] ; 16 uses
  %i.cz = sub i32 %i.i, %.0110.i191               ; 3 uses
  %i.da = tail call i32 @llvm.umin.i32(i32 %i.cz, i32 16)
  %.val.i = load ptr, ptr %i.k, align 8           ; 3 uses
  %i.db = tail call ptr @vnc_server_fb_ptr(ptr noundef %.val.i, i32 noundef %.0110.i191, i32 noundef %.0111.i193) #12 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4            ; 14 uses
  br i1 %i.cw, label %.preheader.lr.ph.i.i, label %.loopexit149

.preheader.lr.ph.i.i:                             ; preds = %bb.t
  %i.dd = icmp sgt i32 %i.cz, 0
  br i1 %i.dd, label %.preheader.us.preheader.i.i, label %.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.da to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03.us.i.i = phi i32 [ %i.dj, %._crit_edge.us.i.i ], [ 0, %.preheader.us.preheader.i.i ]
  %.0222.us.i.i = phi ptr [ %i.di, %._crit_edge.us.i.i ], [ %i.db, %.preheader.us.preheader.i.i ] ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond7.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond7.not.i.i, label %._crit_edge.us.i.i, label %bb.v, !llvm.loop !19

bb.v:                                             ; preds = %bb.u, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.u ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.0222.us.i.i, i64 %indvars.iv.i.i
  %i.df = load i32, ptr %i.de, align 4
  %.not24.us.i.i = icmp eq i32 %i.dc, %i.df
  br i1 %.not24.us.i.i, label %bb.u, label %.loopexit

._crit_edge.us.i.i:                               ; preds = %bb.u
  %i.dg = tail call i32 @vnc_server_fb_stride(ptr noundef %.val.i) #12
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %.0222.us.i.i, i64 %i.dh
  %i.dj = add nuw nsw i32 %.03.us.i.i, 1          ; 2 uses
  %exitcond8.not.i.i = icmp eq i32 %i.dj, %i.cv
  br i1 %exitcond8.not.i.i, label %.loopexit149, label %.preheader.us.i.i, !llvm.loop !20

.preheader.i.i:                                   ; preds = %.preheader.lr.ph.i.i, %.preheader.i.i
  %.03.i.i = phi i32 [ %i.dl, %.preheader.i.i ], [ 0, %.preheader.lr.ph.i.i ]
  %i.dk = tail call i32 @vnc_server_fb_stride(ptr noundef %.val.i) #12 ; 0 uses
  %i.dl = add nuw nsw i32 %.03.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.dl, %i.cv
  br i1 %exitcond.not.i.i, label %.loopexit149, label %.preheader.i.i, !llvm.loop !20

.loopexit149:                                     ; preds = %.preheader.i.i, %._crit_edge.us.i.i, %bb.t
  br i1 %i.cx, label %.lr.ph127.i, label %find_best_solid_area.exit

.lr.ph127.i:                                      ; preds = %.loopexit149, %check_solid_tile.exit87.i
  %.060124.i = phi i32 [ %i.fn, %check_solid_tile.exit87.i ], [ %.0111.i193, %.loopexit149 ] ; 6 uses
  %.061123.i = phi i32 [ %i.fh, %check_solid_tile.exit87.i ], [ %i.cz, %.loopexit149 ] ; 5 uses
  %.062122.i = phi i32 [ %spec.select67.i, %check_solid_tile.exit87.i ], [ 0, %.loopexit149 ] ; 4 uses
  %.063121.i = phi i32 [ %spec.select.i, %check_solid_tile.exit87.i ], [ 0, %.loopexit149 ] ; 4 uses
  %i.dm = sub i32 %i.ct, %.060124.i               ; 2 uses
  %i.dn = tail call i32 @llvm.smin.i32(i32 %i.dm, i32 16) ; 5 uses
  %i.do = tail call i32 @llvm.smin.i32(i32 %.061123.i, i32 16) ; 4 uses
  %.val68.i = load ptr, ptr %i.k, align 8         ; 3 uses
  %i.dp = tail call ptr @vnc_server_fb_ptr(ptr noundef %.val68.i, i32 noundef %.0110.i191, i32 noundef %.060124.i) #12 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4
  %.not.i.i.i71 = icmp eq i32 %i.dq, %i.dc
  br i1 %.not.i.i.i71, label %bb.w, label %find_best_solid_area.exit

bb.w:                                             ; preds = %.lr.ph127.i
  %i.dr = icmp sgt i32 %i.dm, 0
  br i1 %i.dr, label %.preheader.lr.ph.i.i.i, label %.loopexit98.thread.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.w
  %i.ds = icmp sgt i32 %.061123.i, 0
  br i1 %i.ds, label %.preheader.us.preheader.i.i.i74, label %.preheader.i.i.i

.preheader.us.preheader.i.i.i74:                  ; preds = %.preheader.lr.ph.i.i.i
  %wide.trip.count.i.i.i75 = zext nneg i32 %i.do to i64
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader.us.preheader.i.i.i74
  %.03.us.i.i.i = phi i32 [ %i.dy, %._crit_edge.us.i.i.i ], [ 0, %.preheader.us.preheader.i.i.i74 ]
  %.0222.us.i.i.i = phi ptr [ %i.dx, %._crit_edge.us.i.i.i ], [ %i.dp, %.preheader.us.preheader.i.i.i74 ] ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %indvars.iv.next.i.i.i78 = add nuw nsw i64 %indvars.iv.i.i.i76, 1 ; 2 uses
  %exitcond7.not.i.i.i79 = icmp eq i64 %indvars.iv.next.i.i.i78, %wide.trip.count.i.i.i75
  br i1 %exitcond7.not.i.i.i79, label %._crit_edge.us.i.i.i, label %bb.y, !llvm.loop !19

bb.y:                                             ; preds = %bb.x, %.preheader.us.i.i.i
  %indvars.iv.i.i.i76 = phi i64 [ 0, %.preheader.us.i.i.i ], [ %indvars.iv.next.i.i.i78, %bb.x ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.0222.us.i.i.i, i64 %indvars.iv.i.i.i76
  %i.du = load i32, ptr %i.dt, align 4
  %.not24.us.i.i.i77 = icmp eq i32 %i.dc, %i.du
  br i1 %.not24.us.i.i.i77, label %bb.x, label %find_best_solid_area.exit

._crit_edge.us.i.i.i:                             ; preds = %bb.x
  %i.dv = tail call i32 @vnc_server_fb_stride(ptr noundef %.val68.i) #12
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %.0222.us.i.i.i, i64 %i.dw
  %i.dy = add nuw nsw i32 %.03.us.i.i.i, 1        ; 2 uses
  %exitcond8.not.i.i.i = icmp eq i32 %i.dy, %i.dn
  br i1 %exitcond8.not.i.i.i, label %.loopexit98.i, label %.preheader.us.i.i.i, !llvm.loop !20

.preheader.i.i.i:                                 ; preds = %.preheader.lr.ph.i.i.i, %.preheader.i.i.i
  %.03.i.i.i = phi i32 [ %i.ea, %.preheader.i.i.i ], [ 0, %.preheader.lr.ph.i.i.i ]
  %i.dz = tail call i32 @vnc_server_fb_stride(ptr noundef %.val68.i) #12 ; 0 uses
  %i.ea = add nuw nsw i32 %.03.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.ea, %i.dn
  br i1 %exitcond.not.i.i.i, label %.loopexit98.thread155.i, label %.preheader.i.i.i, !llvm.loop !20

.loopexit98.i:                                    ; preds = %._crit_edge.us.i.i.i
  %i.eb = add i32 %i.do, %.0110.i191              ; 3 uses
  %i.ec = add i32 %.061123.i, %.0110.i191         ; 2 uses
  %i.ed = icmp slt i32 %i.eb, %i.ec
  br i1 %i.ed, label %.lr.ph.split.us.preheader.i, label %check_solid_tile.exit87.i

.loopexit98.thread155.i:                          ; preds = %.preheader.i.i.i
  %i.ee = add i32 %i.do, %.0110.i191              ; 3 uses
  %i.ef = add i32 %.061123.i, %.0110.i191         ; 2 uses
  %i.eg = icmp slt i32 %i.ee, %i.ef
  br i1 %i.eg, label %.lr.ph.split.us.preheader.i, label %check_solid_tile.exit87.i

.loopexit98.thread.i:                             ; preds = %bb.w
  %i.eh = add i32 %i.do, %.0110.i191              ; 3 uses
  %i.ei = add i32 %.061123.i, %.0110.i191         ; 3 uses
  %i.ej = icmp slt i32 %i.eh, %i.ei
  br i1 %i.ej, label %.lr.ph.split.i, label %check_solid_tile.exit87.i

.lr.ph.split.us.preheader.i:                      ; preds = %.loopexit98.i, %.loopexit98.thread155.i
  %i.ek = phi i32 [ %i.ee, %.loopexit98.thread155.i ], [ %i.eb, %.loopexit98.i ]
  %i.el = phi i32 [ %i.ef, %.loopexit98.thread155.i ], [ %i.ec, %.loopexit98.i ] ; 2 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.loopexit.us.i, %.lr.ph.split.us.preheader.i
  %.0110.us.i = phi i32 [ %i.ez, %.loopexit.us.i ], [ %i.ek, %.lr.ph.split.us.preheader.i ] ; 5 uses
  %i.em = sub i32 %i.el, %.0110.us.i              ; 2 uses
  %i.en = tail call i32 @llvm.smin.i32(i32 %i.em, i32 16) ; 2 uses
  %.val.us.i = load ptr, ptr %i.k, align 8        ; 3 uses
  %i.eo = tail call ptr @vnc_server_fb_ptr(ptr noundef %.val.us.i, i32 noundef %.0110.us.i, i32 noundef %.060124.i) #12 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4
  %.not.i.i69.us.i = icmp eq i32 %i.ep, %i.dc
  br i1 %.not.i.i69.us.i, label %.preheader.lr.ph.i.i72.us.i, label %check_solid_tile.exit87.i

.preheader.lr.ph.i.i72.us.i:                      ; preds = %.lr.ph.split.us.i
  %i.eq = icmp sgt i32 %i.em, 0
  br i1 %i.eq, label %.preheader.us.preheader.i.i76.us.i, label %.preheader.i.i73.us.i

.preheader.i.i73.us.i:                            ; preds = %.preheader.lr.ph.i.i72.us.i, %.preheader.i.i73.us.i
  %.03.i.i74.us.i = phi i32 [ %i.es, %.preheader.i.i73.us.i ], [ 0, %.preheader.lr.ph.i.i72.us.i ]
  %i.er = tail call i32 @vnc_server_fb_stride(ptr noundef %.val.us.i) #12 ; 0 uses
  %i.es = add nuw nsw i32 %.03.i.i74.us.i, 1      ; 2 uses
  %exitcond.not.i.i75.us.i = icmp eq i32 %i.es, %i.dn
  br i1 %exitcond.not.i.i75.us.i, label %.loopexit.us.i, label %.preheader.i.i73.us.i, !llvm.loop !20

.preheader.us.preheader.i.i76.us.i:               ; preds = %.preheader.lr.ph.i.i72.us.i
  %wide.trip.count.i.i77.us.i = zext nneg i32 %i.en to i64
  br label %.preheader.us.i.i78.us.i

.preheader.us.i.i78.us.i:                         ; preds = %._crit_edge.us.i.i85.us.i, %.preheader.us.preheader.i.i76.us.i
  %.03.us.i.i79.us.i = phi i32 [ %i.ey, %._crit_edge.us.i.i85.us.i ], [ 0, %.preheader.us.preheader.i.i76.us.i ]
  %.0222.us.i.i80.us.i = phi ptr [ %i.ex, %._crit_edge.us.i.i85.us.i ], [ %i.eo, %.preheader.us.preheader.i.i76.us.i ] ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %.preheader.us.i.i78.us.i
  %indvars.iv.i.i81.us.i = phi i64 [ 0, %.preheader.us.i.i78.us.i ], [ %indvars.iv.next.i.i83.us.i, %bb.aa ] ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0222.us.i.i80.us.i, i64 %indvars.iv.i.i81.us.i
  %i.eu = load i32, ptr %i.et, align 4
  %.not24.us.i.i82.us.i = icmp eq i32 %i.dc, %i.eu
  br i1 %.not24.us.i.i82.us.i, label %bb.aa, label %check_solid_tile.exit87.i

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next.i.i83.us.i = add nuw nsw i64 %indvars.iv.i.i81.us.i, 1 ; 2 uses
  %exitcond7.not.i.i84.us.i = icmp eq i64 %indvars.iv.next.i.i83.us.i, %wide.trip.count.i.i77.us.i
  br i1 %exitcond7.not.i.i84.us.i, label %._crit_edge.us.i.i85.us.i, label %bb.z, !llvm.loop !19

._crit_edge.us.i.i85.us.i:                        ; preds = %bb.aa
  %i.ev = tail call i32 @vnc_server_fb_stride(ptr noundef %.val.us.i) #12
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds i8, ptr %.0222.us.i.i80.us.i, i64 %i.ew
  %i.ey = add nuw nsw i32 %.03.us.i.i79.us.i, 1   ; 2 uses
  %exitcond8.not.i.i86.us.i = icmp eq i32 %i.ey, %i.dn
  br i1 %exitcond8.not.i.i86.us.i, label %.loopexit.us.i, label %.preheader.us.i.i78.us.i, !llvm.loop !20

.loopexit.us.i:                                   ; preds = %.preheader.i.i73.us.i, %._crit_edge.us.i.i85.us.i
  %i.ez = add i32 %i.en, %.0110.us.i              ; 3 uses
  %i.fa = icmp slt i32 %i.ez, %i.el
  br i1 %i.fa, label %.lr.ph.split.us.i, label %check_solid_tile.exit87.i, !llvm.loop !21

.lr.ph.split.i:                                   ; preds = %.loopexit98.thread.i, %bb.ab
  %.0110.i72 = phi i32 [ %i.ff, %bb.ab ], [ %i.eh, %.loopexit98.thread.i ] ; 4 uses
  %.val.i73 = load ptr, ptr %i.k, align 8
  %i.fb = tail call ptr @vnc_server_fb_ptr(ptr noundef %.val.i73, i32 noundef %.0110.i72, i32 noundef %.060124.i) #12
  %i.fc = load i32, ptr %i.fb, align 4
  %.not.i.i69.i = icmp eq i32 %i.fc, %i.dc
  br i1 %.not.i.i69.i, label %bb.ab, label %check_solid_tile.exit87.i

bb.ab:                                            ; preds = %.lr.ph.split.i
  %i.fd = sub i32 %i.ei, %.0110.i72
  %i.fe = tail call i32 @llvm.smin.i32(i32 %i.fd, i32 16)
  %i.ff = add i32 %i.fe, %.0110.i72               ; 3 uses
  %i.fg = icmp slt i32 %i.ff, %i.ei
  br i1 %i.fg, label %.lr.ph.split.i, label %check_solid_tile.exit87.i, !llvm.loop !21

check_solid_tile.exit87.i:                        ; preds = %bb.ab, %.lr.ph.split.i, %.loopexit.us.i, %.lr.ph.split.us.i, %bb.z, %.loopexit98.thread.i, %.loopexit98.thread155.i, %.loopexit98.i
  %.0102.i = phi i32 [ %i.ee, %.loopexit98.thread155.i ], [ %i.eb, %.loopexit98.i ], [ %i.ez, %.loopexit.us.i ], [ %.0110.us.i, %bb.z ], [ %i.eh, %.loopexit98.thread.i ], [ %.0110.us.i, %.lr.ph.split.us.i ], [ %.0110.i72, %.lr.ph.split.i ], [ %i.ff, %bb.ab ]
  %i.fh = sub i32 %.0102.i, %.0110.i191           ; 3 uses
  %i.fi = sub i32 %.060124.i, %.0111.i193
  %i.fj = add i32 %i.dn, %i.fi                    ; 2 uses
  %i.fk = mul i32 %i.fh, %i.fj
  %i.fl = mul i32 %.063121.i, %.062122.i
  %i.fm = icmp sgt i32 %i.fk, %i.fl               ; 2 uses
  %spec.select.i = select i1 %i.fm, i32 %i.fj, i32 %.063121.i ; 2 uses
  %spec.select67.i = select i1 %i.fm, i32 %i.fh, i32 %.062122.i ; 2 uses
  %i.fn = add i32 %.060124.i, 16                  ; 2 uses
  %i.fo = icmp slt i32 %i.fn, %i.ct
  br i1 %i.fo, label %.lr.ph127.i, label %find_best_solid_area.exit, !llvm.loop !22

find_best_solid_area.exit:                        ; preds = %.lr.ph127.i, %check_solid_tile.exit87.i, %bb.y, %.loopexit149
  %.063108.i = phi i32 [ %.063121.i, %bb.y ], [ 0, %.loopexit149 ], [ %spec.select.i, %check_solid_tile.exit87.i ], [ %.063121.i, %.lr.ph127.i ] ; 2 uses
  %.062106.i = phi i32 [ %.062122.i, %bb.y ], [ 0, %.loopexit149 ], [ %spec.select67.i, %check_solid_tile.exit87.i ], [ %.062122.i, %.lr.ph127.i ] ; 6 uses
  %i.fp = mul i32 %.062106.i, %.063108.i          ; 2 uses
  %.not125.i = icmp ne i32 %i.fp, %i.cy
  %i.fq = icmp slt i32 %i.fp, 2048
  %or.cond.i47 = and i1 %.not125.i, %i.fq
  br i1 %or.cond.i47, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %find_best_solid_area.exit
  %.0153.i = add i32 %.0111.i193, -1              ; 2 uses
  %.not154.i = icmp slt i32 %.0153.i, %.1107.i
  br i1 %.not154.i, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ac
  %i.fr = icmp sgt i32 %.062106.i, 0
  %wide.trip.count.i.i.i = zext nneg i32 %.062106.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %check_solid_tile.exit.i
  %.0.in156.i = phi i32 [ %.0.i, %check_solid_tile.exit.i ], [ %.0153.i, %.lr.ph.i.preheader ] ; 5 uses
  %.val64.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %i.fs = tail call ptr @vnc_server_fb_ptr(ptr noundef %.val64.i, i32 noundef %.0110.i191, i32 noundef %.0.in156.i) #12 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4
  %.not.i.i.i = icmp eq i32 %i.ft, %i.dc
  br i1 %.not.i.i.i, label %bb.ad, label %.critedge.loopexit223.split.loop.exit.i

bb.ad:                                            ; preds = %.lr.ph.i
  br i1 %i.fr, label %.preheader.us.preheader.i.i.i, label %check_solid_tile.exit.i

bb.ae:                                            ; preds = %.preheader.us.preheader.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond7.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond7.not.i.i.i, label %check_solid_tile.exit.i, label %.preheader.us.preheader.i.i.i, !llvm.loop !19

.preheader.us.preheader.i.i.i:                    ; preds = %bb.ad, %bb.ae
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.i.i.i
  %i.fv = load i32, ptr %i.fu, align 4
  %.not24.us.i.i.i = icmp eq i32 %i.dc, %i.fv
  br i1 %.not24.us.i.i.i, label %bb.ae, label %.critedge.loopexit.i

check_solid_tile.exit.i:                          ; preds = %bb.ae, %bb.ad
  %i.fw = tail call i32 @vnc_server_fb_stride(ptr noundef %.val64.i) #12 ; 0 uses
  %.0.i = add i32 %.0.in156.i, -1                 ; 2 uses
  %.not.i69 = icmp slt i32 %.0.i, %.1107.i
  br i1 %.not.i69, label %.critedge.i, label %.lr.ph.i, !llvm.loop !23

.critedge.loopexit.i:                             ; preds = %.preheader.us.preheader.i.i.i
  %.0.in156200.le230.i = add i32 %.0.in156.i, 1
  br label %.critedge.i

.critedge.loopexit223.split.loop.exit.i:          ; preds = %.lr.ph.i
  %.0.in156200.le.i = add i32 %.0.in156.i, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %check_solid_tile.exit.i, %.critedge.loopexit223.split.loop.exit.i, %.critedge.loopexit.i, %bb.ac
  %.0.in150.i = phi i32 [ %.0.in156200.le230.i, %.critedge.loopexit.i ], [ %.0111.i193, %bb.ac ], [ %.0.in156200.le.i, %.critedge.loopexit223.split.loop.exit.i ], [ %.0.in156.i, %check_solid_tile.exit.i ] ; 9 uses
  %i.fx = add i32 %.063108.i, %.0111.i193         ; 3 uses
  %i.fy = icmp slt i32 %i.fx, %i.ct
  br i1 %i.fy, label %.lr.ph164.i.preheader, label %.critedge2.i

.lr.ph164.i.preheader:                            ; preds = %.critedge.i
  %i.fz = icmp sgt i32 %.062106.i, 0
  %wide.trip.count.i.i72.i = zext nneg i32 %.062106.i to i64
  br label %.lr.ph164.i

.lr.ph164.i:                                      ; preds = %.lr.ph164.i.preheader, %.loopexit134.i
  %.1163.i = phi i32 [ %i.gf, %.loopexit134.i ], [ %i.fx, %.lr.ph164.i.preheader ] ; 4 uses
  %.val63.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %i.ga = tail call ptr @vnc_server_fb_ptr(ptr noundef %.val63.i, i32 noundef %.0110.i191, i32 noundef %.1163.i) #12 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4
  %.not.i.i65.i = icmp eq i32 %i.gb, %i.dc
  br i1 %.not.i.i65.i, label %bb.af, label %.critedge2.i

bb.af:                                            ; preds = %.lr.ph164.i
  br i1 %i.fz, label %.preheader.us.preheader.i.i71.i, label %.loopexit134.i

bb.ag:                                            ; preds = %.preheader.us.preheader.i.i71.i
  %indvars.iv.next.i.i78.i = add nuw nsw i64 %indvars.iv.i.i76.i, 1 ; 2 uses
  %exitcond7.not.i.i79.i = icmp eq i64 %indvars.iv.next.i.i78.i, %wide.trip.count.i.i72.i
  br i1 %exitcond7.not.i.i79.i, label %.loopexit134.i, label %.preheader.us.preheader.i.i71.i, !llvm.loop !19

.preheader.us.preheader.i.i71.i:                  ; preds = %bb.af, %bb.ag
  %indvars.iv.i.i76.i = phi i64 [ %indvars.iv.next.i.i78.i, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.i.i76.i
  %i.gd = load i32, ptr %i.gc, align 4
  %.not24.us.i.i77.i = icmp eq i32 %i.dc, %i.gd
  br i1 %.not24.us.i.i77.i, label %bb.ag, label %.critedge2.i

.loopexit134.i:                                   ; preds = %bb.ag, %bb.af
  %i.ge = tail call i32 @vnc_server_fb_stride(ptr noundef %.val63.i) #12 ; 0 uses
  %i.gf = add nsw i32 %.1163.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gf, %i.ct
  br i1 %exitcond.not.i, label %.critedge2.i, label %.lr.ph164.i, !llvm.loop !24

.critedge2.i:                                     ; preds = %.loopexit134.i, %.lr.ph164.i, %.preheader.us.preheader.i.i71.i, %.critedge.i
  %.1146.i = phi i32 [ %.1163.i, %.preheader.us.preheader.i.i71.i ], [ %i.fx, %.critedge.i ], [ %i.ct, %.loopexit134.i ], [ %.1163.i, %.lr.ph164.i ] ; 4 uses
  %i.gg = sub i32 %.1146.i, %.0.in150.i           ; 8 uses
  %.059170.i = add i32 %.0110.i191, -1            ; 2 uses
  %.not61171.i = icmp slt i32 %.059170.i, %2
  br i1 %.not61171.i, label %.critedge4.i, label %.lr.ph175.i.preheader

.lr.ph175.i.preheader:                            ; preds = %.critedge2.i
  %i.gh = icmp sgt i32 %i.gg, 0
  br label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %.lr.ph175.i.preheader, %check_solid_tile.exit96.i
  %.059.in173.i = phi i32 [ %.059.i, %check_solid_tile.exit96.i ], [ %.059170.i, %.lr.ph175.i.preheader ] ; 5 uses
  %.val62.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %i.gi = tail call ptr @vnc_server_fb_ptr(ptr noundef %.val62.i, i32 noundef %.059.in173.i, i32 noundef %.0.in150.i) #12 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4
  %.not.i.i83.i = icmp eq i32 %i.gj, %i.dc
  br i1 %.not.i.i83.i, label %bb.ah, label %.critedge4.loopexit221.split.loop.exit.i

bb.ah:                                            ; preds = %.lr.ph175.i
  br i1 %i.gh, label %.preheader.us.i.i87.i, label %check_solid_tile.exit96.i

.preheader.us.i.i87.i:                            ; preds = %bb.ah, %._crit_edge.us.i.i94.i
  %.03.us.i.i88.i = phi i32 [ %i.go, %._crit_edge.us.i.i94.i ], [ 0, %bb.ah ]
  %.0222.us.i.i89.i = phi ptr [ %i.gn, %._crit_edge.us.i.i94.i ], [ %i.gi, %bb.ah ] ; 2 uses
  %i.gk = load i32, ptr %.0222.us.i.i89.i, align 4
  %.not24.us.i.i91.i = icmp eq i32 %i.dc, %i.gk
  br i1 %.not24.us.i.i91.i, label %._crit_edge.us.i.i94.i, label %.critedge4.loopexit.i

._crit_edge.us.i.i94.i:                           ; preds = %.preheader.us.i.i87.i
  %i.gl = tail call i32 @vnc_server_fb_stride(ptr noundef %.val62.i) #12
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds i8, ptr %.0222.us.i.i89.i, i64 %i.gm
  %i.go = add nuw nsw i32 %.03.us.i.i88.i, 1      ; 2 uses
  %exitcond8.not.i.i95.i = icmp eq i32 %i.go, %i.gg
  br i1 %exitcond8.not.i.i95.i, label %check_solid_tile.exit96.i, label %.preheader.us.i.i87.i, !llvm.loop !20

check_solid_tile.exit96.i:                        ; preds = %._crit_edge.us.i.i94.i, %bb.ah
  %.059.i = add i32 %.059.in173.i, -1             ; 2 uses
  %.not61.i = icmp slt i32 %.059.i, %2
  br i1 %.not61.i, label %.critedge4.i, label %.lr.ph175.i, !llvm.loop !25

.critedge4.loopexit.i:                            ; preds = %.preheader.us.i.i87.i
  %.059.in173201.le234.i = add i32 %.059.in173.i, 1
  br label %.critedge4.i

.critedge4.loopexit221.split.loop.exit.i:         ; preds = %.lr.ph175.i
  %.059.in173201.le.i = add i32 %.059.in173.i, 1
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %check_solid_tile.exit96.i, %.critedge4.loopexit221.split.loop.exit.i, %.critedge4.loopexit.i, %.critedge2.i
  %.059.in142.i = phi i32 [ %.059.in173201.le234.i, %.critedge4.loopexit.i ], [ %.0110.i191, %.critedge2.i ], [ %.059.in173201.le.i, %.critedge4.loopexit221.split.loop.exit.i ], [ %.059.in173.i, %check_solid_tile.exit96.i ] ; 5 uses
  %i.gp = add i32 %.062106.i, %.0110.i191         ; 3 uses
  %i.gq = icmp slt i32 %i.gp, %i.i
  br i1 %i.gq, label %.lr.ph183.i.preheader, label %extend_solid_area.exit

.lr.ph183.i.preheader:                            ; preds = %.critedge4.i
  %i.gr = icmp sgt i32 %i.gg, 0
  br label %.lr.ph183.i

.lr.ph183.i:                                      ; preds = %.lr.ph183.i.preheader, %.loopexit.i
  %.160182.i = phi i32 [ %i.gz, %.loopexit.i ], [ %i.gp, %.lr.ph183.i.preheader ] ; 4 uses
  %.val.i68 = load ptr, ptr %i.k, align 8         ; 2 uses
  %i.gs = tail call ptr @vnc_server_fb_ptr(ptr noundef %.val.i68, i32 noundef %.160182.i, i32 noundef %.0.in150.i) #12 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4
  %.not.i.i97.i = icmp eq i32 %i.gt, %i.dc
  br i1 %.not.i.i97.i, label %bb.ai, label %extend_solid_area.exit

bb.ai:                                            ; preds = %.lr.ph183.i
  br i1 %i.gr, label %.preheader.us.i.i102.i, label %.loopexit.i

.preheader.us.i.i102.i:                           ; preds = %bb.ai, %._crit_edge.us.i.i109.i
  %.03.us.i.i103.i = phi i32 [ %i.gy, %._crit_edge.us.i.i109.i ], [ 0, %bb.ai ]
  %.0222.us.i.i104.i = phi ptr [ %i.gx, %._crit_edge.us.i.i109.i ], [ %i.gs, %bb.ai ] ; 2 uses
  %i.gu = load i32, ptr %.0222.us.i.i104.i, align 4
  %.not24.us.i.i106.i = icmp eq i32 %i.dc, %i.gu
  br i1 %.not24.us.i.i106.i, label %._crit_edge.us.i.i109.i, label %extend_solid_area.exit

._crit_edge.us.i.i109.i:                          ; preds = %.preheader.us.i.i102.i
  %i.gv = tail call i32 @vnc_server_fb_stride(ptr noundef %.val.i68) #12
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds i8, ptr %.0222.us.i.i104.i, i64 %i.gw
  %i.gy = add nuw nsw i32 %.03.us.i.i103.i, 1     ; 2 uses
  %exitcond8.not.i.i110.i = icmp eq i32 %i.gy, %i.gg
  br i1 %exitcond8.not.i.i110.i, label %.loopexit.i, label %.preheader.us.i.i102.i, !llvm.loop !20

.loopexit.i:                                      ; preds = %._crit_edge.us.i.i109.i, %bb.ai
  %i.gz = add nsw i32 %.160182.i, 1               ; 2 uses
  %exitcond200.not.i = icmp eq i32 %i.gz, %i.i
  br i1 %exitcond200.not.i, label %extend_solid_area.exit, label %.lr.ph183.i, !llvm.loop !26

extend_solid_area.exit:                           ; preds = %.lr.ph183.i, %.loopexit.i, %.preheader.us.i.i102.i, %.critedge4.i
  %.160140.i = phi i32 [ %.160182.i, %.preheader.us.i.i102.i ], [ %i.gp, %.critedge4.i ], [ %i.i, %.loopexit.i ], [ %.160182.i, %.lr.ph183.i ] ; 4 uses
  %i.ha = sub i32 %.160140.i, %.059.in142.i       ; 2 uses
  %.not126.i = icmp eq i32 %.0.in150.i, %.1107.i
  br i1 %.not126.i, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %extend_solid_area.exit
  %i.hb = sub i32 %.0.in150.i, %.1107.i           ; 5 uses
  %i.hc = load i8, ptr %i.g, align 1
  %i.hd = zext i8 %i.hc to i64
  %i.he = getelementptr inbounds nuw [56 x i8], ptr @tight_conf, i64 %i.hd ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8            ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hh = load i32, ptr %i.hg, align 4            ; 3 uses
  %i.hi = icmp sgt i32 %4, %i.hh
  %i.hj = mul i32 %i.hb, %4
  %i.hk = icmp sgt i32 %i.hj, %i.hf
  %or.cond.i58 = select i1 %i.hi, i1 true, i1 %i.hk
  br i1 %or.cond.i58, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.hl = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.hh) ; 2 uses
  %i.hm = sdiv i32 %i.hf, %i.hl                   ; 2 uses
  %i.hn = icmp sgt i32 %i.hb, 0
  %or.cond68.i60 = and i1 %i.h, %i.hn
  br i1 %or.cond68.i60, label %.preheader.us.i61, label %send_rect_simple.exit67

.preheader.us.i61:                                ; preds = %bb.ak, %._crit_edge.us.i66
  %.05463.us.i62 = phi i32 [ %i.hy, %._crit_edge.us.i66 ], [ 0, %bb.ak ] ; 3 uses
  %.05562.us.i63 = phi i32 [ %i.hv, %._crit_edge.us.i66 ], [ 0, %bb.ak ]
  %i.ho = sub i32 %i.hb, %.05463.us.i62
  %i.hp = tail call i32 @llvm.smin.i32(i32 %i.hm, i32 %i.ho)
  %i.hq = add i32 %.05463.us.i62, %.1107.i
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.preheader.us.i61
  %.061.us.i64 = phi i32 [ 0, %.preheader.us.i61 ], [ %i.hw, %bb.al ] ; 3 uses
  %.160.us.i65 = phi i32 [ %.05562.us.i63, %.preheader.us.i61 ], [ %i.hv, %bb.al ]
  %i.hr = sub i32 %4, %.061.us.i64
  %i.hs = tail call i32 @llvm.smin.i32(i32 %i.hl, i32 %i.hr)
  %i.ht = add i32 %.061.us.i64, %2
  %i.hu = tail call fastcc i32 @send_sub_rect(ptr noundef %0, ptr noundef %1, i32 noundef %i.ht, i32 noundef %i.hq, i32 noundef %i.hs, i32 noundef %i.hp)
  %i.hv = add i32 %i.hu, %.160.us.i65             ; 3 uses
  %i.hw = add i32 %.061.us.i64, %i.hh             ; 2 uses
  %i.hx = icmp slt i32 %i.hw, %4
  br i1 %i.hx, label %bb.al, label %._crit_edge.us.i66, !llvm.loop !17

._crit_edge.us.i66:                               ; preds = %bb.al
  %i.hy = add i32 %.05463.us.i62, %i.hm           ; 2 uses
  %i.hz = icmp slt i32 %i.hy, %i.hb
  br i1 %i.hz, label %.preheader.us.i61, label %send_rect_simple.exit67, !llvm.loop !18

bb.am:                                            ; preds = %bb.aj
  %i.ia = tail call fastcc i32 @send_sub_rect(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %.1107.i, i32 noundef %4, i32 noundef %i.hb)
  br label %send_rect_simple.exit67

send_rect_simple.exit67:                          ; preds = %._crit_edge.us.i66, %bb.ak, %bb.am
  %.2.i59 = phi i32 [ %i.ia, %bb.am ], [ 0, %bb.ak ], [ %i.hv, %._crit_edge.us.i66 ]
  %i.ib = add i32 %.2.i59, %.1113.i
  br label %bb.an

bb.an:                                            ; preds = %send_rect_simple.exit67, %extend_solid_area.exit
  %.3115.i = phi i32 [ %i.ib, %send_rect_simple.exit67 ], [ %.1113.i, %extend_solid_area.exit ] ; 2 uses
  %.not127.i = icmp eq i32 %.059.in142.i, %2
  br i1 %.not127.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ic = sub i32 %.059.in142.i, %2
  %i.id = tail call fastcc i32 @tight_send_framebuffer_update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %.0.in150.i, i32 noundef %i.ic, i32 noundef %i.gg), !inline_history !27
  %i.ie = add i32 %i.id, %.3115.i
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.4.i = phi i32 [ %i.ie, %bb.ao ], [ %.3115.i, %bb.an ]
  %i.if = load i32, ptr %i.l, align 8
  tail call void @vnc_framebuffer_update(ptr noundef %0, i32 noundef %.059.in142.i, i32 noundef %.0.in150.i, i32 noundef %i.ha, i32 noundef %i.gg, i32 noundef %i.if) #12
  tail call void @buffer_reset(ptr noundef nonnull %i.m) #12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  %i.ig = tail call i32 @vnc_raw_send_framebuffer_update(ptr noundef %0, i32 noundef %.059.in142.i, i32 noundef %.0.in150.i, i32 noundef %i.ha, i32 noundef %i.gg) #12 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext -128) #12
  %i.ih = load i8, ptr %i.f, align 2
  %.not.i.i = icmp eq i8 %i.ih, 0
  br i1 %.not.i.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ii = load ptr, ptr %i.p, align 8             ; 4 uses
  %i.ij = load i32, ptr %i.r, align 4
  %i.ik = icmp eq i32 %i.ij, 1234
  %i.il = load i8, ptr %i.s, align 4
  %i.im = zext i8 %i.il to i32                    ; 2 uses
  br i1 %i.ik, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.in = load i8, ptr %i.t, align 1
  %i.io = zext i8 %i.in to i32
  %i.ip = load i8, ptr %i.u, align 2
  %i.iq = zext i8 %i.ip to i32
  br label %.lr.ph.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.ir = sub nsw i32 24, %i.im
  %i.is = load i8, ptr %i.t, align 1
  %i.it = zext i8 %i.is to i32
  %i.iu = sub nsw i32 24, %i.it
  %i.iv = load i8, ptr %i.u, align 2
  %i.iw = zext i8 %i.iv to i32
  %i.ix = sub nsw i32 24, %i.iw
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.as, %bb.ar
  %.023.i.i.i = phi i32 [ %i.im, %bb.ar ], [ %i.ir, %bb.as ]
  %.022.i.i.i = phi i32 [ %i.io, %bb.ar ], [ %i.iu, %bb.as ]
  %.0.i.i.i = phi i32 [ %i.iq, %bb.ar ], [ %i.ix, %bb.as ]
  store i64 3, ptr %i.q, align 8
  %.024.val.i.i.i = load i32, ptr %i.ii, align 1  ; 3 uses
  %i.iy = lshr i32 %.024.val.i.i.i, %.023.i.i.i
  %i.iz = trunc i32 %i.iy to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  store i8 %i.iz, ptr %i.ii, align 1
  %i.jb = lshr i32 %.024.val.i.i.i, %.022.i.i.i
  %i.jc = trunc i32 %i.jb to i8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  store i8 %i.jc, ptr %i.ja, align 1
  %i.je = lshr i32 %.024.val.i.i.i, %.0.i.i.i
  %i.jf = trunc i32 %i.je to i8
  store i8 %i.jf, ptr %i.jd, align 1
  br label %send_sub_rect_solid.exit

bb.at:                                            ; preds = %bb.ap
  %i.jg = load i8, ptr %i.a, align 1
  %i.jh = zext i8 %i.jg to i64
  br label %send_sub_rect_solid.exit

send_sub_rect_solid.exit:                         ; preds = %.lr.ph.i.i.i, %bb.at
  %.0.i.i = phi i64 [ %i.jh, %bb.at ], [ 3, %.lr.ph.i.i.i ]
  %i.ji = load ptr, ptr %i.p, align 8
  tail call void @vnc_write(ptr noundef nonnull %0, ptr noundef %i.ji, i64 noundef %.0.i.i) #12
  %i.jj = add i32 %.4.i, 1                        ; 2 uses
  %.not128.i = icmp eq i32 %.160140.i, %i.i
  br i1 %.not128.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %send_sub_rect_solid.exit
  %i.jk = sub i32 %i.i, %.160140.i
  %i.jl = tail call fastcc i32 @tight_send_framebuffer_update(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %.160140.i, i32 noundef %.0.in150.i, i32 noundef %i.jk, i32 noundef %i.gg), !inline_history !27
  %i.jm = add i32 %i.jl, %i.jj
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %send_sub_rect_solid.exit
  %.5.i = phi i32 [ %i.jm, %bb.au ], [ %i.jj, %send_sub_rect_solid.exit ] ; 2 uses
  %.not130.i = icmp eq i32 %.1146.i, %i.ct
  br i1 %.not130.i, label %send_rect_simple.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jn = sub i32 %i.ct, %.1146.i
  %i.jo = add i32 %.5.i, %accumulator.tr
  br label %tailrecurse

.loopexit:                                        ; preds = %bb.v, %find_best_solid_area.exit
end_hunk_0
begin_hunk_1_@tight_send_framebuffer_update:bb.a
  br i1 %i.kl, label %.preheader.us.i51, label %send_rect_simple.exit57, !llvm.loop !18

bb.az:                                            ; preds = %._crit_edge198
  %i.km = tail call fastcc i32 @send_sub_rect(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %.0106.i.lcssa, i32 noundef %4, i32 noundef %.0108.i.lcssa)
  br label %send_rect_simple.exit57

send_rect_simple.exit57:                          ; preds = %._crit_edge.us.i56, %bb.ax, %bb.az
  %.2.i49 = phi i32 [ %i.km, %bb.az ], [ 0, %bb.ax ], [ %i.kh, %._crit_edge.us.i56 ]
  %i.kn = add i32 %.2.i49, %.0112.i.lcssa
  br label %send_rect_simple.exit

send_rect_simple.exit:                            ; preds = %bb.av, %._crit_edge.us.i, %send_rect_simple.exit57, %bb.l, %bb.j, %bb.h
  %.1 = phi i32 [ %i.al, %bb.h ], [ %i.bg, %._crit_edge.us.i ], [ %i.bl, %bb.l ], [ 0, %bb.j ], [ %i.kn, %send_rect_simple.exit57 ], [ %.5.i, %bb.av ]
  %accumulator.ret.tr = add i32 %.1, %accumulator.tr
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @vnc_tight_png_send_framebuffer_update(ptr noundef %0, ptr noundef initializes((2720, 2724), (2726, 2727)) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2720
  store i32 -260, ptr %i.a, align 8
  %i.b = tail call fastcc i32 @tight_send_framebuffer_update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  ret i32 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vnc_tight_clear(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2984
  %i.d = tail call i32 @deflateEnd(ptr noundef nonnull %i.c) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.f = load ptr, ptr %i.e, align 8
  %.not.1 = icmp eq ptr %i.f, null
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.h = tail call i32 @deflateEnd(ptr noundef nonnull %i.g) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3288
  %i.j = load ptr, ptr %i.i, align 8
  %.not.2 = icmp eq ptr %i.j, null
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.l = tail call i32 @deflateEnd(ptr noundef nonnull %i.k) #12 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3400
  %i.n = load ptr, ptr %i.m, align 8
  %.not.3 = icmp eq ptr %i.n, null
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3320
  %i.p = tail call i32 @deflateEnd(ptr noundef nonnull %i.o) #12 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2728
  tail call void @buffer_free(ptr noundef nonnull %i.q) #12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2808
  tail call void @buffer_free(ptr noundef nonnull %i.r) #12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2848
  tail call void @buffer_free(ptr noundef nonnull %i.s) #12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2888
  tail call void @buffer_free(ptr noundef nonnull %i.t) #12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2928
  tail call void @buffer_free(ptr noundef nonnull %i.u) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #2

declare void @buffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare double @vnc_update_freq(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 2) i32 @send_sub_rect(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2720 ; 5 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @color_count_palette) ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(8216) ptr @g_malloc(i64 noundef 8216) #13
  store ptr %i.d, ptr %i.b, align 8
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @vnc_tight_cleanup_notifier) ; 2 uses
  store ptr @vnc_tight_cleanup, ptr %i.e, align 8
  tail call void @qemu_thread_atexit_add(ptr noundef nonnull %i.e) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i32, ptr %i.a, align 8
  tail call void @vnc_framebuffer_update(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2728 ; 3 uses
  tail call void @buffer_reset(ptr noundef nonnull %i.g) #12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2768 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 86568 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  %i.j = tail call i32 @vnc_raw_send_framebuffer_update(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 86432
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 587225
  %i.n = load i8, ptr %i.m, align 1, !range !14, !noundef !15
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2724 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4
  %.not71 = icmp eq i8 %i.q, -1
  br i1 %.not71, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call double @vnc_update_freq(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12 ; 2 uses
  %i.s = load i8, ptr %i.p, align 4
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr @tight_jpeg_conf, i64 %i.t ; 2 uses
  %i.v = load double, ptr %i.u, align 8
  %i.w = fcmp uge double %i.r, %i.v               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load double, ptr %i.x, align 8
  %i.z = fcmp ult double %i.r, %i.y
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @vnc_sent_lossy_rect(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  %.169 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.f ], [ false, %bb.e ] ; 2 uses
  %.1 = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ %i.w, %bb.f ], [ %i.w, %bb.e ]
  %i.aa = mul i32 %5, %4                          ; 16 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8             ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2725 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [56 x i8], ptr @tight_conf, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = sext i32 %i.ai to i64
  %i.ak = udiv i64 %i.ab, %i.aj
  %i.al = trunc i64 %i.ak to i32                  ; 3 uses
  %i.am = icmp slt i32 %i.al, 2
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = load i32, ptr %i.an, align 8
  %.not.i = icmp ult i32 %i.aa, %i.ao
  %spec.select.i = select i1 %.not.i, i32 %i.al, i32 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi i32 [ %i.al, %bb.g ], [ %spec.select.i, %bb.h ] ; 5 uses
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %.0.i, i32 256) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 86657 ; 5 uses
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr i8, ptr %1, i64 2760      ; 7 uses
  %.val37.i = load ptr, ptr %i.ar, align 8        ; 11 uses
  %i.as = icmp ugt i32 %i.aa, 1                   ; 3 uses
  switch i8 %i.aq, label %bb.ah [
    i8 4, label %bb.j
    i8 2, label %bb.v
  ]

bb.j:                                             ; preds = %bb.i
  %i.at = load i32, ptr %.val37.i, align 4        ; 9 uses
  br i1 %i.as, label %.lr.ph.i.i, label %tight_fill_palette.exit

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %i.au = phi i64 [ %i.az, %bb.k ], [ 1, %bb.j ]
  %.0649.i.i = phi i32 [ %i.ay, %bb.k ], [ 1, %bb.j ] ; 4 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %.val37.i, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4            ; 5 uses
  %i.ax = icmp eq i32 %i.aw, %i.at
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ay = add nuw i32 %.0649.i.i, 1               ; 3 uses
  %i.az = sext i32 %i.ay to i64
  %exitcond137.not = icmp eq i32 %i.ay, %i.aa
  br i1 %exitcond137.not, label %tight_fill_palette.exit, label %.lr.ph.i.i, !llvm.loop !30

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.ba = icmp slt i32 %.0.i, 2
  br i1 %i.ba, label %tight_fill_palette.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.16510.i.i = add i32 %.0649.i.i, 1             ; 2 uses
  %i.bb = icmp ugt i32 %i.aa, %.16510.i.i
  br i1 %i.bb, label %.lr.ph15.i.i, label %._crit_edge.i.i

.lr.ph15.i.i:                                     ; preds = %bb.m, %bb.q
  %.013.i.i.a = phi i32 [ %.165.i.i, %bb.q ], [ %.16510.i.i, %bb.m ] ; 3 uses
  %.06212.i.i.a = phi i32 [ %.1.i.i, %bb.q ], [ 0, %bb.m ] ; 2 uses
  %.165.in11.i.i = phi i32 [ %.163.i.i, %bb.q ], [ %.0649.i.i, %bb.m ] ; 2 uses
  %i.bc = sext i32 %.013.i.i.a to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %.val37.i, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4            ; 4 uses
  %i.bf = icmp eq i32 %i.be, %i.at
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph15.i.i
  %i.bg = add i32 %.165.in11.i.i, 1
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph15.i.i
  %i.bh = icmp eq i32 %i.be, %i.aw
  br i1 %i.bh, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bi = add i32 %.06212.i.i.a, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.163.i.i = phi i32 [ %i.bg, %bb.n ], [ %.165.in11.i.i, %bb.p ] ; 2 uses
  %.1.i.i = phi i32 [ %.06212.i.i.a, %bb.n ], [ %i.bi, %bb.p ] ; 2 uses
  %.165.i.i = add nuw i32 %.013.i.i.a, 1          ; 2 uses
  %exitcond138.not = icmp eq i32 %.165.i.i, %i.aa
  br i1 %exitcond138.not, label %._crit_edge.i.i, label %.lr.ph15.i.i, !llvm.loop !31

._crit_edge.i.i:                                  ; preds = %bb.q, %bb.m
  %.062.lcssa.i.i = phi i32 [ %.0649.i.i, %bb.m ], [ %.163.i.i, %bb.q ]
  %.0.lcssa.i.i = phi i32 [ 0, %bb.m ], [ %.1.i.i, %bb.q ]
  %i.bj = icmp sgt i32 %.062.lcssa.i.i, %.0.lcssa.i.i ; 2 uses
  %..i.i = select i1 %i.bj, i32 %i.at, i32 %i.aw
  %.81.i.i = select i1 %i.bj, i32 %i.aw, i32 %i.at
  br label %tight_fill_palette.exit

bb.r:                                             ; preds = %bb.o
  %i.bk = icmp eq i32 %.0.i, 2
  br i1 %i.bk, label %tight_fill_palette.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = zext nneg i32 %spec.store.select.i to i64
  tail call void @palette_init(ptr noundef %i.ac, i64 noundef %i.bl, i32 noundef 32) #12
  %i.bm = tail call i32 @palette_put(ptr noundef %i.ac, i32 noundef %i.at) #12 ; 0 uses
  %i.bn = tail call i32 @palette_put(ptr noundef %i.ac, i32 noundef %i.aw) #12 ; 0 uses
  %i.bo = tail call i32 @palette_put(ptr noundef %i.ac, i32 noundef %i.be) #12 ; 0 uses
  %i.bp = add i32 %.013.i.i.a, 1                  ; 2 uses
  %i.bq = icmp ugt i32 %i.aa, %i.bp
  br i1 %i.bq, label %.lr.ph20.i.i, label %._crit_edge21.i.i

.lr.ph20.i.i:                                     ; preds = %bb.s, %bb.u
  %.218.i.i = phi i32 [ %i.bw, %bb.u ], [ %i.bp, %bb.s ] ; 2 uses
  %.26817.i.i = phi i32 [ %.3.i.i, %bb.u ], [ %i.be, %bb.s ] ; 2 uses
  %i.br = sext i32 %.218.i.i to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %.val37.i, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4            ; 3 uses
  %i.bu = icmp eq i32 %i.bt, %.26817.i.i
  br i1 %i.bu, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph20.i.i
  %i.bv = tail call i32 @palette_put(ptr noundef %i.ac, i32 noundef %i.bt) #12
  %.not79.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not79.i.i, label %tight_fill_palette.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph20.i.i
  %.3.i.i = phi i32 [ %.26817.i.i, %.lr.ph20.i.i ], [ %i.bt, %bb.t ]
  %i.bw = add nuw i32 %.218.i.i, 1                ; 2 uses
  %exitcond139.not = icmp eq i32 %i.bw, %i.aa
  br i1 %exitcond139.not, label %._crit_edge21.i.i, label %.lr.ph20.i.i, !llvm.loop !32

._crit_edge21.i.i:                                ; preds = %bb.u, %bb.s
  %i.bx = tail call i64 @palette_size(ptr noundef %i.ac) #12
  %i.by = trunc i64 %i.bx to i32
  br label %tight_fill_palette.exit

bb.v:                                             ; preds = %bb.i
  %i.bz = load i16, ptr %.val37.i, align 2        ; 6 uses
  br i1 %i.as, label %.lr.ph.i40.i, label %.critedge.i38.i

.lr.ph.i40.i:                                     ; preds = %bb.v, %bb.w
  %i.ca = phi i64 [ %i.cf, %bb.w ], [ 1, %bb.v ]
  %.0649.i41.i = phi i32 [ %i.ce, %bb.w ], [ 1, %bb.v ] ; 4 uses
  %i.cb = getelementptr inbounds [2 x i8], ptr %.val37.i, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2            ; 5 uses
  %i.cd = icmp eq i16 %i.cc, %i.bz
  br i1 %i.cd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i40.i
  %i.ce = add nuw i32 %.0649.i41.i, 1             ; 3 uses
  %i.cf = sext i32 %i.ce to i64
  %exitcond.not = icmp eq i32 %i.ce, %i.aa
  br i1 %exitcond.not, label %.critedge.i38.i, label %.lr.ph.i40.i, !llvm.loop !33

.critedge.i38.i:                                  ; preds = %bb.w, %bb.v
  %i.cg = zext i16 %i.bz to i32                   ; 2 uses
  br label %tight_fill_palette.exit

bb.x:                                             ; preds = %.lr.ph.i40.i
  %i.ch = icmp slt i32 %.0.i, 2
  br i1 %i.ch, label %tight_fill_palette.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.16510.i42.i = add i32 %.0649.i41.i, 1         ; 2 uses
  %i.ci = icmp ugt i32 %i.aa, %.16510.i42.i
  br i1 %i.ci, label %.lr.ph15.i48.i, label %._crit_edge.i43.i

.lr.ph15.i48.i:                                   ; preds = %bb.y, %bb.ac
  %.013.i50.i.a = phi i32 [ %.165.i61.i, %bb.ac ], [ %.16510.i42.i, %bb.y ] ; 3 uses
  %.06212.i51.i.a = phi i32 [ %.1.i60.i, %bb.ac ], [ 0, %bb.y ] ; 2 uses
  %.165.in11.i52.i = phi i32 [ %.163.i59.i, %bb.ac ], [ %.0649.i41.i, %bb.y ] ; 2 uses
  %i.cj = sext i32 %.013.i50.i.a to i64
  %i.ck = getelementptr inbounds [2 x i8], ptr %.val37.i, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2            ; 4 uses
  %i.cm = icmp eq i16 %i.cl, %i.bz
  br i1 %i.cm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph15.i48.i
  %i.cn = add i32 %.165.in11.i52.i, 1
  br label %bb.ac

bb.aa:                                            ; preds = %.lr.ph15.i48.i
  %i.co = icmp eq i16 %i.cl, %i.cc
  br i1 %i.co, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cp = add i32 %.06212.i51.i.a, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.163.i59.i = phi i32 [ %i.cn, %bb.z ], [ %.165.in11.i52.i, %bb.ab ] ; 2 uses
  %.1.i60.i = phi i32 [ %.06212.i51.i.a, %bb.z ], [ %i.cp, %bb.ab ] ; 2 uses
  %.165.i61.i = add nuw i32 %.013.i50.i.a, 1      ; 2 uses
  %exitcond135.not = icmp eq i32 %.165.i61.i, %i.aa
  br i1 %exitcond135.not, label %._crit_edge.i43.i, label %.lr.ph15.i48.i, !llvm.loop !34

._crit_edge.i43.i:                                ; preds = %bb.ac, %bb.y
  %.062.lcssa.i44.i = phi i32 [ %.0649.i41.i, %bb.y ], [ %.163.i59.i, %bb.ac ]
  %.0.lcssa.i45.i = phi i32 [ 0, %bb.y ], [ %.1.i60.i, %bb.ac ]
  %i.cq = icmp sgt i32 %.062.lcssa.i44.i, %.0.lcssa.i45.i ; 2 uses
  %..i46.i = select i1 %i.cq, i16 %i.bz, i16 %i.cc
  %.81.i47.i = select i1 %i.cq, i16 %i.cc, i16 %i.bz
  %storemerge80.i.i = zext i16 %..i46.i to i32
  %storemerge.i.i = zext i16 %.81.i47.i to i32
  br label %tight_fill_palette.exit

bb.ad:                                            ; preds = %bb.aa
  %i.cr = icmp eq i32 %.0.i, 2
  br i1 %i.cr, label %tight_fill_palette.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cs = zext nneg i32 %spec.store.select.i to i64
  tail call void @palette_init(ptr noundef %i.ac, i64 noundef %i.cs, i32 noundef 16) #12
  %i.ct = zext i16 %i.bz to i32
  %i.cu = tail call i32 @palette_put(ptr noundef %i.ac, i32 noundef %i.ct) #12 ; 0 uses
  %i.cv = zext i16 %i.cc to i32
  %i.cw = tail call i32 @palette_put(ptr noundef %i.ac, i32 noundef %i.cv) #12 ; 0 uses
  %i.cx = zext i16 %i.cl to i32
  %i.cy = tail call i32 @palette_put(ptr noundef %i.ac, i32 noundef %i.cx) #12 ; 0 uses
  %i.cz = add i32 %.013.i50.i.a, 1                ; 2 uses
  %i.da = icmp ugt i32 %i.aa, %i.cz
  br i1 %i.da, label %.lr.ph20.i54.i, label %._crit_edge21.i53.i

.lr.ph20.i54.i:                                   ; preds = %bb.ae, %bb.ag
  %.218.i55.i = phi i32 [ %i.dh, %bb.ag ], [ %i.cz, %bb.ae ] ; 2 uses
  %.26817.i56.i = phi i16 [ %.3.i58.i, %bb.ag ], [ %i.cl, %bb.ae ] ; 2 uses
  %i.db = sext i32 %.218.i55.i to i64
  %i.dc = getelementptr inbounds [2 x i8], ptr %.val37.i, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2            ; 3 uses
  %i.de = icmp eq i16 %i.dd, %.26817.i56.i
  br i1 %i.de, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph20.i54.i
  %i.df = zext i16 %i.dd to i32
  %i.dg = tail call i32 @palette_put(ptr noundef %i.ac, i32 noundef %i.df) #12
  %.not79.i57.i = icmp eq i32 %i.dg, 0
  br i1 %.not79.i57.i, label %tight_fill_palette.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph20.i54.i
  %.3.i58.i = phi i16 [ %.26817.i56.i, %.lr.ph20.i54.i ], [ %i.dd, %bb.af ]
  %i.dh = add nuw i32 %.218.i55.i, 1              ; 2 uses
  %exitcond136.not = icmp eq i32 %i.dh, %i.aa
  br i1 %exitcond136.not, label %._crit_edge21.i53.i, label %.lr.ph20.i54.i, !llvm.loop !35

._crit_edge21.i53.i:                              ; preds = %bb.ag, %bb.ae
  %i.di = tail call i64 @palette_size(ptr noundef %i.ac) #12
  %i.dj = trunc i64 %i.di to i32
  br label %tight_fill_palette.exit

bb.ah:                                            ; preds = %bb.i
  %i.dk = load i8, ptr %.val37.i, align 1         ; 5 uses
  br i1 %i.as, label %.lr.ph.i64.i, label %.critedge.i62.i

.lr.ph.i64.i:                                     ; preds = %bb.ah, %bb.ai
  %i.dl = phi i64 [ %i.dq, %bb.ai ], [ 1, %bb.ah ]
  %.0645.i.i = phi i32 [ %i.dp, %bb.ai ], [ 1, %bb.ah ] ; 3 uses
  %i.dm = getelementptr inbounds i8, ptr %.val37.i, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1             ; 4 uses
  %i.do = icmp eq i8 %i.dn, %i.dk
  %i.dp = add i32 %.0645.i.i, 1                   ; 5 uses
  br i1 %i.do, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i64.i
  %i.dq = sext i32 %i.dp to i64
  %exitcond140.not = icmp eq i32 %i.dp, %i.aa
  br i1 %exitcond140.not, label %.critedge.i62.i, label %.lr.ph.i64.i, !llvm.loop !36

.critedge.i62.i:                                  ; preds = %bb.ai, %bb.ah
  %i.dr = zext i8 %i.dk to i32                    ; 2 uses
  br label %tight_fill_palette.exit

bb.aj:                                            ; preds = %.lr.ph.i64.i
  %i.ds = icmp ugt i32 %i.aa, %i.dp
  br i1 %i.ds, label %.lr.ph10.i.i, label %._crit_edge.i65.i

.lr.ph10.i.i:                                     ; preds = %bb.aj, %bb.an
  %.1659.i.i = phi i32 [ %.165.i72.i, %bb.an ], [ %i.dp, %bb.aj ] ; 2 uses
  %.08.i.i = phi i32 [ %.1.i71.i, %bb.an ], [ 0, %bb.aj ] ; 2 uses
  %.0627.i.i = phi i32 [ %.163.i70.i, %bb.an ], [ %.0645.i.i, %bb.aj ] ; 2 uses
  %i.dt = sext i32 %.1659.i.i to i64
  %i.du = getelementptr inbounds i8, ptr %.val37.i, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1             ; 2 uses
  %i.dw = icmp eq i8 %i.dv, %i.dk
  br i1 %i.dw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph10.i.i
  %i.dx = add i32 %.0627.i.i, 1
  br label %bb.an

bb.al:                                            ; preds = %.lr.ph10.i.i
  %i.dy = icmp eq i8 %i.dv, %i.dn
  br i1 %i.dy, label %bb.am, label %tight_fill_palette.exit

bb.am:                                            ; preds = %bb.al
  %i.dz = add i32 %.08.i.i, 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.163.i70.i = phi i32 [ %i.dx, %bb.ak ], [ %.0627.i.i, %bb.am ] ; 2 uses
  %.1.i71.i = phi i32 [ %.08.i.i, %bb.ak ], [ %i.dz, %bb.am ] ; 2 uses
  %.165.i72.i = add nuw i32 %.1659.i.i, 1         ; 2 uses
  %exitcond141.not = icmp eq i32 %.165.i72.i, %i.aa
  br i1 %exitcond141.not, label %._crit_edge.i65.i, label %.lr.ph10.i.i, !llvm.loop !37

._crit_edge.i65.i:                                ; preds = %bb.an, %bb.aj
  %.062.lcssa.i66.i = phi i32 [ %.0645.i.i, %bb.aj ], [ %.163.i70.i, %bb.an ]
  %.0.lcssa.i67.i = phi i32 [ 0, %bb.aj ], [ %.1.i71.i, %bb.an ]
  %i.ea = icmp sgt i32 %.062.lcssa.i66.i, %.0.lcssa.i67.i ; 2 uses
  %..i68.i = select i1 %i.ea, i8 %i.dk, i8 %i.dn
  %.80.i.i = select i1 %i.ea, i8 %i.dn, i8 %i.dk
  %storemerge79.i.i = zext i8 %..i68.i to i32
  %storemerge.i69.i = zext i8 %.80.i.i to i32
  br label %tight_fill_palette.exit

tight_fill_palette.exit:                          ; preds = %bb.af, %bb.k, %bb.t, %bb.al, %bb.j, %bb.l, %._crit_edge.i.i, %bb.r, %._crit_edge21.i.i, %.critedge.i38.i, %bb.x, %._crit_edge.i43.i, %bb.ad, %._crit_edge21.i53.i, %.critedge.i62.i, %._crit_edge.i65.i
  %.088 = phi i32 [ %i.dr, %.critedge.i62.i ], [ %storemerge79.i.i, %._crit_edge.i65.i ], [ %i.at, %bb.j ], [ %i.at, %bb.k ], [ 0, %bb.l ], [ %..i.i, %._crit_edge.i.i ], [ 0, %bb.r ], [ 0, %._crit_edge21.i.i ], [ 0, %bb.al ], [ %i.cg, %.critedge.i38.i ], [ 0, %bb.x ], [ %storemerge80.i.i, %._crit_edge.i43.i ], [ 0, %bb.ad ], [ 0, %._crit_edge21.i53.i ], [ 0, %bb.t ], [ 0, %bb.af ] ; 2 uses
  %.0 = phi i32 [ %i.dr, %.critedge.i62.i ], [ %storemerge.i69.i, %._crit_edge.i65.i ], [ %i.at, %bb.j ], [ %i.at, %bb.k ], [ 0, %bb.l ], [ %.81.i.i, %._crit_edge.i.i ], [ 0, %bb.r ], [ 0, %._crit_edge21.i.i ], [ 0, %bb.al ], [ %i.cg, %.critedge.i38.i ], [ 0, %bb.x ], [ %storemerge.i.i, %._crit_edge.i43.i ], [ 0, %bb.ad ], [ 0, %._crit_edge21.i53.i ], [ 0, %bb.t ], [ 0, %bb.af ] ; 2 uses
  %.034.i = phi i32 [ 1, %.critedge.i62.i ], [ 2, %._crit_edge.i65.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 0, %bb.l ], [ 2, %._crit_edge.i.i ], [ 0, %bb.r ], [ %i.by, %._crit_edge21.i.i ], [ 0, %bb.al ], [ 1, %.critedge.i38.i ], [ 0, %bb.x ], [ 2, %._crit_edge.i43.i ], [ 0, %bb.ad ], [ %i.dj, %._crit_edge21.i53.i ], [ 0, %bb.t ], [ 0, %bb.af ] ; 5 uses
  br i1 %.1, label %bb.ao, label %tight_fill_palette.exit._crit_edge

tight_fill_palette.exit._crit_edge:               ; preds = %tight_fill_palette.exit
  %.pre144 = load ptr, ptr %i.b, align 8
  br label %bb.bh

bb.ao:                                            ; preds = %tight_fill_palette.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 2724 ; 3 uses
  %i.ec = load i8, ptr %i.eb, align 4             ; 5 uses
  %.not72 = icmp eq i8 %i.ec, -1
  %.pre145 = load ptr, ptr %i.b, align 8          ; 2 uses
  br i1 %.not72, label %bb.bh, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  switch i32 %.034.i, label %bb.bb [
    i32 0, label %bb.aq
    i32 1, label %bb.av
    i32 2, label %bb.ba
  ]

bb.aq:                                            ; preds = %bb.ap
  br i1 %.169, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ed = add i8 %i.ec, -7
  %.not58.i = icmp ult i8 %i.ed, 3
  br i1 %.not58.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ee = tail call fastcc i32 @tight_detect_smooth_image(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %4, i32 noundef %5)
  %.not59.i = icmp eq i32 %i.ee, 0
  br i1 %.not59.i, label %bb.au, label %._crit_edge

._crit_edge:                                      ; preds = %bb.as
  %.pre = load i8, ptr %i.eb, align 4
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge, %bb.aq
  %i.ef = phi i8 [ %.pre, %._crit_edge ], [ %i.ec, %bb.aq ]
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [56 x i8], ptr @tight_conf, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 44
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = tail call fastcc i32 @send_jpeg_rect(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.ej)
  br label %send_sub_rect_jpeg.exit

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.el = tail call fastcc i32 @send_full_color_rect(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %send_sub_rect_jpeg.exit

bb.av:                                            ; preds = %bb.ap
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext -128) #12
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 2726
  %i.en = load i8, ptr %i.em, align 2
  %.not.i.i = icmp eq i8 %i.en, 0
  br i1 %.not.i.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eo = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 2744
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 86692
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = icmp eq i32 %i.er, 1234
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 86676
  %i.eu = load i8, ptr %i.et, align 4
  %i.ev = zext i8 %i.eu to i32                    ; 2 uses
  br i1 %i.es, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 86677
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = zext i8 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 86678
  %i.fa = load i8, ptr %i.ez, align 2
  %i.fb = zext i8 %i.fa to i32
  br label %.lr.ph.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.fc = sub nsw i32 24, %i.ev
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 86677
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = zext i8 %i.fe to i32
  %i.fg = sub nsw i32 24, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 86678
  %i.fi = load i8, ptr %i.fh, align 2
  %i.fj = zext i8 %i.fi to i32
  %i.fk = sub nsw i32 24, %i.fj
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ay, %bb.ax
  %.023.i.i.i = phi i32 [ %i.ev, %bb.ax ], [ %i.fc, %bb.ay ]
  %.022.i.i.i = phi i32 [ %i.ey, %bb.ax ], [ %i.fg, %bb.ay ]
  %.0.i.i.i = phi i32 [ %i.fb, %bb.ax ], [ %i.fk, %bb.ay ]
  store i64 3, ptr %i.ep, align 8
  %.024.val.i.i.i = load i32, ptr %i.eo, align 1  ; 3 uses
  %i.fl = lshr i32 %.024.val.i.i.i, %.023.i.i.i
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store i8 %i.fm, ptr %i.eo, align 1
  %i.fo = lshr i32 %.024.val.i.i.i, %.022.i.i.i
  %i.fp = trunc i32 %i.fo to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
end_hunk_1
