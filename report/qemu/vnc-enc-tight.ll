Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vnc-enc-tight?download=true
inline.NumInlined: 64
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 31
begin_hunk_0_@tight_send_framebuffer_update:bb.a
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
  br i1 %i.bi, label %bb.k, label %._crit_edge.us.i, !llvm.loop !7

._crit_edge.us.i:                                 ; preds = %bb.k
  %i.bj = add i32 %.05463.us.i, %i.ax             ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %.tr143
  br i1 %i.bk, label %.preheader.us.i, label %send_rect_simple.exit, !llvm.loop !9

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
  %.0111.i193 = phi i32 [ %.tr141, %.lr.ph197 ], [ %i.jr, %._crit_edge ] ; 11 uses
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
  br i1 %i.cm, label %bb.q, label %._crit_edge.us.i90, !llvm.loop !7

._crit_edge.us.i90:                               ; preds = %bb.q
  %i.cn = add i32 %.05463.us.i86, %i.cc           ; 2 uses
  %i.co = icmp slt i32 %i.cn, %i.bn
  br i1 %i.co, label %.preheader.us.i85, label %send_rect_simple.exit91, !llvm.loop !9

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
  %.0110.i191 = phi i32 [ %2, %.lr.ph ], [ %i.jp, %.loopexit ] ; 17 uses
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
  br i1 %exitcond7.not.i.i, label %._crit_edge.us.i.i, label %bb.v, !llvm.loop !10

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
  br i1 %exitcond8.not.i.i, label %.loopexit149, label %.preheader.us.i.i, !llvm.loop !11

.preheader.i.i:                                   ; preds = %.preheader.lr.ph.i.i, %.preheader.i.i
  %.03.i.i = phi i32 [ %i.dl, %.preheader.i.i ], [ 0, %.preheader.lr.ph.i.i ]
  %i.dk = tail call i32 @vnc_server_fb_stride(ptr noundef %.val.i) #12 ; 0 uses
  %i.dl = add nuw nsw i32 %.03.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.dl, %i.cv
  br i1 %exitcond.not.i.i, label %.loopexit149, label %.preheader.i.i, !llvm.loop !11

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
  br i1 %exitcond7.not.i.i.i79, label %._crit_edge.us.i.i.i, label %bb.y, !llvm.loop !10

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
  br i1 %exitcond8.not.i.i.i, label %.loopexit98.i, label %.preheader.us.i.i.i, !llvm.loop !11

.preheader.i.i.i:                                 ; preds = %.preheader.lr.ph.i.i.i, %.preheader.i.i.i
  %.03.i.i.i = phi i32 [ %i.ea, %.preheader.i.i.i ], [ 0, %.preheader.lr.ph.i.i.i ]
  %i.dz = tail call i32 @vnc_server_fb_stride(ptr noundef %.val68.i) #12 ; 0 uses
  %i.ea = add nuw nsw i32 %.03.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.ea, %i.dn
  br i1 %exitcond.not.i.i.i, label %.loopexit98.thread155.i, label %.preheader.i.i.i, !llvm.loop !11

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
  br i1 %exitcond.not.i.i75.us.i, label %.loopexit.us.i, label %.preheader.i.i73.us.i, !llvm.loop !11

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
  br i1 %exitcond7.not.i.i84.us.i, label %._crit_edge.us.i.i85.us.i, label %bb.z, !llvm.loop !10

._crit_edge.us.i.i85.us.i:                        ; preds = %bb.aa
  %i.ev = tail call i32 @vnc_server_fb_stride(ptr noundef %.val.us.i) #12
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds i8, ptr %.0222.us.i.i80.us.i, i64 %i.ew
  %i.ey = add nuw nsw i32 %.03.us.i.i79.us.i, 1   ; 2 uses
  %exitcond8.not.i.i86.us.i = icmp eq i32 %i.ey, %i.dn
  br i1 %exitcond8.not.i.i86.us.i, label %.loopexit.us.i, label %.preheader.us.i.i78.us.i, !llvm.loop !11

.loopexit.us.i:                                   ; preds = %.preheader.i.i73.us.i, %._crit_edge.us.i.i85.us.i
  %i.ez = add i32 %i.en, %.0110.us.i              ; 3 uses
  %i.fa = icmp slt i32 %i.ez, %i.el
  br i1 %i.fa, label %.lr.ph.split.us.i, label %check_solid_tile.exit87.i, !llvm.loop !12

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
  br i1 %i.fg, label %.lr.ph.split.i, label %check_solid_tile.exit87.i, !llvm.loop !12

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
  br i1 %i.fo, label %.lr.ph127.i, label %find_best_solid_area.exit, !llvm.loop !13

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
  %.0157.i = phi i32 [ %.0.i, %check_solid_tile.exit.i ], [ %.0153.i, %.lr.ph.i.preheader ] ; 4 uses
  %.0.in156.i = phi i32 [ %.0157.i, %check_solid_tile.exit.i ], [ %.0111.i193, %.lr.ph.i.preheader ] ; 2 uses
  %.val64.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %i.fs = tail call ptr @vnc_server_fb_ptr(ptr noundef %.val64.i, i32 noundef %.0110.i191, i32 noundef %.0157.i) #12 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4
  %.not.i.i.i = icmp eq i32 %i.ft, %i.dc
  br i1 %.not.i.i.i, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %.lr.ph.i
  br i1 %i.fr, label %.preheader.us.preheader.i.i.i, label %check_solid_tile.exit.i

bb.ae:                                            ; preds = %.preheader.us.preheader.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond7.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond7.not.i.i.i, label %check_solid_tile.exit.i, label %.preheader.us.preheader.i.i.i, !llvm.loop !10

.preheader.us.preheader.i.i.i:                    ; preds = %bb.ad, %bb.ae
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.i.i.i
  %i.fv = load i32, ptr %i.fu, align 4
  %.not24.us.i.i.i = icmp eq i32 %i.dc, %i.fv
  br i1 %.not24.us.i.i.i, label %bb.ae, label %.critedge.i

check_solid_tile.exit.i:                          ; preds = %bb.ae, %bb.ad
  %i.fw = tail call i32 @vnc_server_fb_stride(ptr noundef %.val64.i) #12 ; 0 uses
  %.0.i = add i32 %.0157.i, -1                    ; 2 uses
  %.not.i69 = icmp slt i32 %.0.i, %.1107.i
  br i1 %.not.i69, label %.critedge.i, label %.lr.ph.i, !llvm.loop !14

.critedge.i:                                      ; preds = %check_solid_tile.exit.i, %.lr.ph.i, %.preheader.us.preheader.i.i.i, %bb.ac
  %.0.in150.i = phi i32 [ %.0.in156.i, %.preheader.us.preheader.i.i.i ], [ %.0111.i193, %bb.ac ], [ %.0157.i, %check_solid_tile.exit.i ], [ %.0.in156.i, %.lr.ph.i ] ; 9 uses
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
  br i1 %exitcond7.not.i.i79.i, label %.loopexit134.i, label %.preheader.us.preheader.i.i71.i, !llvm.loop !10

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
  br i1 %exitcond.not.i, label %.critedge2.i, label %.lr.ph164.i, !llvm.loop !15

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
  %.059174.i = phi i32 [ %.059.i, %check_solid_tile.exit96.i ], [ %.059170.i, %.lr.ph175.i.preheader ] ; 4 uses
  %.059.in173.i = phi i32 [ %.059174.i, %check_solid_tile.exit96.i ], [ %.0110.i191, %.lr.ph175.i.preheader ] ; 2 uses
  %.val62.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %i.gi = tail call ptr @vnc_server_fb_ptr(ptr noundef %.val62.i, i32 noundef %.059174.i, i32 noundef %.0.in150.i) #12 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4
  %.not.i.i83.i = icmp eq i32 %i.gj, %i.dc
  br i1 %.not.i.i83.i, label %bb.ah, label %.critedge4.i

bb.ah:                                            ; preds = %.lr.ph175.i
  br i1 %i.gh, label %.preheader.us.i.i87.i, label %check_solid_tile.exit96.i

.preheader.us.i.i87.i:                            ; preds = %bb.ah, %._crit_edge.us.i.i94.i
  %.03.us.i.i88.i = phi i32 [ %i.go, %._crit_edge.us.i.i94.i ], [ 0, %bb.ah ]
  %.0222.us.i.i89.i = phi ptr [ %i.gn, %._crit_edge.us.i.i94.i ], [ %i.gi, %bb.ah ] ; 2 uses
  %i.gk = load i32, ptr %.0222.us.i.i89.i, align 4
  %.not24.us.i.i91.i = icmp eq i32 %i.dc, %i.gk
  br i1 %.not24.us.i.i91.i, label %._crit_edge.us.i.i94.i, label %.critedge4.i

._crit_edge.us.i.i94.i:                           ; preds = %.preheader.us.i.i87.i
  %i.gl = tail call i32 @vnc_server_fb_stride(ptr noundef %.val62.i) #12
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds i8, ptr %.0222.us.i.i89.i, i64 %i.gm
  %i.go = add nuw nsw i32 %.03.us.i.i88.i, 1      ; 2 uses
  %exitcond8.not.i.i95.i = icmp eq i32 %i.go, %i.gg
  br i1 %exitcond8.not.i.i95.i, label %check_solid_tile.exit96.i, label %.preheader.us.i.i87.i, !llvm.loop !11

check_solid_tile.exit96.i:                        ; preds = %._crit_edge.us.i.i94.i, %bb.ah
  %.059.i = add i32 %.059174.i, -1                ; 2 uses
  %.not61.i = icmp slt i32 %.059.i, %2
  br i1 %.not61.i, label %.critedge4.i, label %.lr.ph175.i, !llvm.loop !16

.critedge4.i:                                     ; preds = %check_solid_tile.exit96.i, %.lr.ph175.i, %.preheader.us.i.i87.i, %.critedge2.i
  %.059.in142.i = phi i32 [ %.059.in173.i, %.preheader.us.i.i87.i ], [ %.0110.i191, %.critedge2.i ], [ %.059174.i, %check_solid_tile.exit96.i ], [ %.059.in173.i, %.lr.ph175.i ] ; 5 uses
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
  br i1 %exitcond8.not.i.i110.i, label %.loopexit.i, label %.preheader.us.i.i102.i, !llvm.loop !11

.loopexit.i:                                      ; preds = %._crit_edge.us.i.i109.i, %bb.ai
  %i.gz = add nsw i32 %.160182.i, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gz, %i.i
  br i1 %exitcond.not, label %extend_solid_area.exit, label %.lr.ph183.i, !llvm.loop !17

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
  br i1 %i.hx, label %bb.al, label %._crit_edge.us.i66, !llvm.loop !7

._crit_edge.us.i66:                               ; preds = %bb.al
  %i.hy = add i32 %.05463.us.i62, %i.hm           ; 2 uses
  %i.hz = icmp slt i32 %i.hy, %i.hb
  br i1 %i.hz, label %.preheader.us.i61, label %send_rect_simple.exit67, !llvm.loop !9

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
  %i.id = tail call fastcc i32 @tight_send_framebuffer_update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %.0.in150.i, i32 noundef %i.ic, i32 noundef %i.gg), !inline_history !18
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
  %i.jl = tail call fastcc i32 @tight_send_framebuffer_update(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %.160140.i, i32 noundef %.0.in150.i, i32 noundef %i.jk, i32 noundef %i.gg), !inline_history !18
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
  %i.jp = add i32 %.0110.i191, 16                 ; 2 uses
  %i.jq = icmp slt i32 %i.jp, %i.i
  br i1 %i.jq, label %bb.t, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.loopexit, %bb.s
  %i.jr = add i32 %.0111.i193, 16                 ; 2 uses
  %i.js = icmp slt i32 %i.jr, %i.ct
  br i1 %i.js, label %bb.n, label %._crit_edge198.loopexit, !llvm.loop !20

._crit_edge198.loopexit:                          ; preds = %._crit_edge
  %.pre = load i8, ptr %i.g, align 1
  %.phi.trans.insert = zext i8 %.pre to i64
  %.phi.trans.insert259 = getelementptr inbounds nuw [56 x i8], ptr @tight_conf, i64 %.phi.trans.insert ; 2 uses
  %.pre260 = load i32, ptr %.phi.trans.insert259, align 8
  %.phi.trans.insert261 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert259, i64 4
  %.pre262 = load i32, ptr %.phi.trans.insert261, align 4
  %.pre263 = mul i32 %.1109.i, %4
  br label %._crit_edge198

._crit_edge198:                                   ; preds = %bb.m, %._crit_edge198.loopexit
  %.pre-phi264 = phi i32 [ %.pre263, %._crit_edge198.loopexit ], [ %i.am, %bb.m ]
  %i.jt = phi i32 [ %.pre262, %._crit_edge198.loopexit ], [ %i.at, %bb.m ] ; 3 uses
  %i.ju = phi i32 [ %.pre260, %._crit_edge198.loopexit ], [ %i.ar, %bb.m ] ; 2 uses
  %.0112.i.lcssa = phi i32 [ %.1113.i, %._crit_edge198.loopexit ], [ 0, %bb.m ]
  %.0108.i.lcssa = phi i32 [ %.1109.i, %._crit_edge198.loopexit ], [ %.tr143, %bb.m ] ; 4 uses
  %.0106.i.lcssa = phi i32 [ %.1107.i, %._crit_edge198.loopexit ], [ %.tr141, %bb.m ] ; 2 uses
  %i.jv = icmp sgt i32 %4, %i.jt
  %i.jw = icmp sgt i32 %.pre-phi264, %i.ju
  %or.cond.i48 = select i1 %i.jv, i1 true, i1 %i.jw
  br i1 %or.cond.i48, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %._crit_edge198
  %i.jx = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.jt) ; 2 uses
  %i.jy = sdiv i32 %i.ju, %i.jx                   ; 2 uses
  %i.jz = icmp sgt i32 %.0108.i.lcssa, 0
  %or.cond68.i50 = and i1 %i.h, %i.jz
end_hunk_0
