loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@rgb_red = internal unnamed_addr constant [17 x i32] [i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 2, i32 3, i32 1, i32 0, i32 2, i32 3, i32 1, i32 -1], align 16
@rgb_green = internal unnamed_addr constant [17 x i32] [i32 -1, i32 -1, i32 1, i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 2, i32 2, i32 -1], align 16
@rgb_blue = internal unnamed_addr constant [17 x i32] [i32 -1, i32 -1, i32 2, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 0, i32 0, i32 1, i32 3, i32 2, i32 0, i32 1, i32 3, i32 -1], align 16
@rgb_pixelsize = internal unnamed_addr constant [17 x i32] [i32 -1, i32 -1, i32 3, i32 -1, i32 -1, i32 -1, i32 3, i32 4, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 -1], align 16

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @jinit_write_bmp(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not = icmp eq i32 %i.b, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 16, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.b, ptr %i.e, align 4, !tbaa !37
  %i.f = load ptr, ptr %0, align 8, !tbaa !33
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  tail call void %i.g(ptr noundef nonnull %0) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.k = tail call ptr %i.j(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 120) #6 ; 22 uses
  store ptr @start_output_bmp, ptr %i.k, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr @finish_output_bmp, ptr %i.l, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr null, ptr %i.m, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i32 %1, ptr %i.n, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !51   ; 3 uses
  switch i32 %i.p, label %bb.e [
    i32 1, label %bb.d
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @put_gray_rows, ptr %i.q, align 8, !tbaa !52
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.r = add i32 %i.p, -6
  %or.cond = icmp ult i32 %i.r, 10
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.t = load i32, ptr %i.s, align 4, !tbaa !53
  %.not82 = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br i1 %.not82, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @put_gray_rows, ptr %i.u, align 8, !tbaa !52
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  store ptr @put_pixel_rows, ptr %i.u, align 8, !tbaa !52
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.w = load i32, ptr %i.v, align 4, !tbaa !53
  %.not81 = icmp eq i32 %i.w, 0
  br i1 %.not81, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  switch i32 %i.p, label %bb.l [
    i32 16, label %bb.k
    i32 4, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @put_pixel_rows, ptr %i.x, align 8, !tbaa !52
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.y = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i32 1005, ptr %i.z, align 8, !tbaa !34
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !38
  tail call void %i.aa(ptr noundef nonnull %0) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.g, %bb.l, %bb.k, %bb.d
  tail call void @jpeg_calc_output_dimensions(ptr noundef nonnull %0) #6
  %i.ab = load i32, ptr %i.o, align 8, !tbaa !51  ; 4 uses
  %i.ac = icmp eq i32 %i.ab, 16
  br i1 %i.ac, label %.loopexit.loopexit, label %bb.n

.loopexit.loopexit:                               ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !54 ; 3 uses
  %i.af = mul i32 %i.ae, 3                        ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 92
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !56
  %i.ai = and i32 %i.ae, 1
  %i.aj = add i32 %i.ae, %i.ai
  %i.ak = shl i32 %i.aj, 1
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.am = load i32, ptr %i.al, align 4, !tbaa !53
  %.not83 = icmp eq i32 %i.am, 0
  br i1 %.not83, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.an = icmp eq i32 %i.ab, 2
  br i1 %i.an, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = add i32 %i.ab, -6
  %or.cond88 = icmp ult i32 %i.ao, 10
  %i.ap = icmp eq i32 %i.ab, 4
  %or.cond89 = or i1 %i.ap, %or.cond88
  br i1 %or.cond89, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !54 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.at = load i32, ptr %i.as, align 4, !tbaa !57
  %i.au = mul i32 %i.at, %i.ar
  %i.av = mul i32 %i.ar, 3                        ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !55
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 92
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !56
  br label %.loopexit

bb.r:                                             ; preds = %bb.p, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !54
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !57
  %i.bc = mul i32 %i.bb, %i.az                    ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !55
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 92
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.q, %bb.r
  %i.bf = phi i32 [ %i.av, %bb.q ], [ %i.bc, %bb.r ], [ %i.af, %.loopexit.loopexit ] ; 5 uses
  %.1 = phi i32 [ %i.au, %bb.q ], [ %i.bc, %bb.r ], [ %i.ak, %.loopexit.loopexit ]
  %i.bg = and i32 %i.bf, 3
  %.not8590 = icmp eq i32 %i.bg, 0
  br i1 %.not8590, label %bb.s, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 92
  %3 = and i32 %i.bf, 3
  %4 = xor i32 %3, 3
  %5 = add i32 %i.bf, %4
  %i.bi = add i32 %5, 1                           ; 2 uses
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !56
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph.preheader, %.loopexit
  %.lcssa = phi i32 [ %i.bi, %.lr.ph.preheader ], [ %i.bf, %.loopexit ] ; 3 uses
  %i.bj = sub i32 %.lcssa, %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !58
  %.not86 = icmp eq i32 %2, 0
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !39  ; 2 uses
  br i1 %.not86, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !59
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !60
  %i.bq = tail call ptr %i.bn(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef %.lcssa, i32 noundef %i.bp, i32 noundef 1) #6
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !61
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  store i32 0, ptr %i.bs, align 4, !tbaa !62
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !63 ; 2 uses
  %.not87 = icmp eq ptr %i.bu, null
  br i1 %.not87, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 36 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !64
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !64
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !40
  %i.bz = zext i32 %.lcssa to i64
  %i.ca = tail call ptr %i.by(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.bz) #6
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !67
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store i32 %2, ptr %i.cc, align 8, !tbaa !68
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !69
  %i.cg = tail call ptr %i.cf(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %.1, i32 noundef 1) #6
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !70
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i32 1, ptr %i.ci, align 8, !tbaa !71
  ret ptr %i.k
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @start_output_bmp(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @write_os2_header(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @write_bmp_header(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_output_bmp(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !68
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50
  %.not35 = icmp eq i32 %i.h, 0
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @write_os2_header(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @write_bmp_header(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !60   ; 3 uses
  %.not3640 = icmp eq i32 %i.j, 0
  %.not37 = icmp eq ptr %i.d, null                ; 2 uses
  br i1 %.not3640, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  br i1 %.not37, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.041.us = phi i32 [ %i.t, %.lr.ph.split.us ], [ %i.j, %.lr.ph ]
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.t = add i32 %.041.us, -1                     ; 3 uses
  %i.u = tail call ptr %i.r(ptr noundef nonnull %0, ptr noundef %i.s, i32 noundef %i.t, i32 noundef 1, i32 noundef 0) #6
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !74
  %i.w = load i32, ptr %i.o, align 4, !tbaa !56
  %i.x = zext i32 %i.w to i64
  %i.y = tail call i64 @fwrite(ptr noundef %i.v, i64 noundef 1, i64 noundef %i.x, ptr noundef %i.b) ; 0 uses
  %.not36.us = icmp eq i32 %i.t, 0
  br i1 %.not36.us, label %._crit_edge.thread, label %.lr.ph.split.us, !llvm.loop !75

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.041 = phi i32 [ %i.ai, %.lr.ph.split ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.z = load i32, ptr %i.i, align 4, !tbaa !60   ; 2 uses
  %i.aa = sub i32 %i.z, %.041
  %i.ab = zext i32 %i.aa to i64
  store i64 %i.ab, ptr %i.k, align 8, !tbaa !77
  %i.ac = zext i32 %i.z to i64
  store i64 %i.ac, ptr %i.l, align 8, !tbaa !78
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !79
  tail call void %i.ad(ptr noundef nonnull %0) #6
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !73
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.ai = add i32 %.041, -1                       ; 3 uses
  %i.aj = tail call ptr %i.ag(ptr noundef nonnull %0, ptr noundef %i.ah, i32 noundef %i.ai, i32 noundef 1, i32 noundef 0) #6
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !74
  %i.al = load i32, ptr %i.o, align 4, !tbaa !56
  %i.am = zext i32 %i.al to i64
  %i.an = tail call i64 @fwrite(ptr noundef %i.ak, i64 noundef 1, i64 noundef %i.am, ptr noundef %i.b) ; 0 uses
  %.not36 = icmp eq i32 %i.ai, 0
  br i1 %.not36, label %._crit_edge.thread45, label %.lr.ph.split, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.e
  br i1 %.not37, label %._crit_edge.thread, label %._crit_edge.thread45

._crit_edge.thread45:                             ; preds = %.lr.ph.split, %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !80
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !80
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.split.us, %._crit_edge, %._crit_edge.thread45, %bb.a
  %i.ar = tail call i32 @fflush(ptr noundef %i.b) ; 0 uses
  %i.as = tail call i32 @ferror(ptr noundef %i.b) #6
  %.not38 = icmp eq i32 %i.as, 0
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread
  %i.at = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i32 38, ptr %i.au, align 8, !tbaa !34
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !38
  tail call void %i.av(ptr noundef nonnull %0) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_gray_rows(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_0
