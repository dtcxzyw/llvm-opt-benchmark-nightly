inline.NumInlined: 9
inline.NumDeleted: 7
begin_hunk_0_@jinit_1pass_quantizer:bb.a
  %i.ew = tail call ptr %i.eu(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %.us-phi76.i.i, i32 noundef %i.ev) #8, !inline_history !69 ; 2 uses
  %i.ex = load i32, ptr %i.y, align 8, !tbaa !53  ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %.lr.ph75.preheader.i, label %create_colormap.exit

.lr.ph75.preheader.i:                             ; preds = %bb.s
  %i.ez = sext i32 %.us-phi76.i.i to i64
  br label %.lr.ph75.i

.lr.ph75.i:                                       ; preds = %._crit_edge.i, %.lr.ph75.preheader.i
  %i.fa = phi i32 [ %i.ex, %.lr.ph75.preheader.i ], [ %i.go, %._crit_edge.i ] ; 2 uses
  %indvars.iv93.i = phi i64 [ 0, %.lr.ph75.preheader.i ], [ %indvars.iv.next94.i, %._crit_edge.i ] ; 3 uses
  %.06072.i = phi i32 [ %.us-phi76.i.i, %.lr.ph75.preheader.i ], [ %.fr77.i, %._crit_edge.i ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv93.i
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3  ; 4 uses
  %i.fd = sdiv i32 %.06072.i, %i.fc
  %.fr77.i = freeze i32 %i.fd                     ; 5 uses
  %i.fe = icmp sgt i32 %i.fc, 0
  br i1 %i.fe, label %.lr.ph71.i, label %._crit_edge.i

.lr.ph71.i:                                       ; preds = %.lr.ph75.i
  %i.ff = add nsw i32 %i.fc, -1                   ; 2 uses
  %i.fg = lshr i32 %i.ff, 1
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = zext nneg i32 %i.ff to i64
  %i.fj = icmp sgt i32 %.fr77.i, 0
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv93.i ; 5 uses
  br i1 %i.fj, label %.lr.ph71.split.us.preheader.i, label %._crit_edge.i

.lr.ph71.split.us.preheader.i:                    ; preds = %.lr.ph71.i
  %i.fl = zext nneg i32 %.fr77.i to i64           ; 3 uses
  %i.fm = sext i32 %.06072.i to i64
  %wide.trip.count91.i = zext nneg i32 %i.fc to i64
  %xtraiter88 = and i64 %i.fl, 3                  ; 3 uses
  %i.fn = icmp ult i32 %.fr77.i, 4
  %unroll_iter92 = and i64 %i.fl, 2147483644
  %lcmp.mod90.not = icmp eq i64 %xtraiter88, 0
  %lcmp.mod91 = icmp ne i64 %xtraiter88, 0
  br label %.lr.ph71.split.us.i

.lr.ph71.split.us.i:                              ; preds = %._crit_edge69.split.us.us.i, %.lr.ph71.split.us.preheader.i
  %indvars.iv88.i = phi i64 [ 0, %.lr.ph71.split.us.preheader.i ], [ %indvars.iv.next89.i, %._crit_edge69.split.us.us.i ] ; 3 uses
  %indvars.iv83.i = phi i64 [ 0, %.lr.ph71.split.us.preheader.i ], [ %indvars.iv.next84.i, %._crit_edge69.split.us.us.i ] ; 2 uses
  %i.fo = trunc i64 %indvars.iv88.i to i32
  %i.fp = mul i32 %.fr77.i, %i.fo
  %i.fq = icmp slt i32 %i.fp, %.us-phi76.i.i
  br i1 %i.fq, label %.preheader.lr.ph.us.i, label %._crit_edge69.split.us.us.i

._crit_edge69.split.us.us.i:                      ; preds = %._crit_edge.us.us.i, %.lr.ph71.split.us.i
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 2 uses
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, %i.fl
  %exitcond92.not.i = icmp eq i64 %indvars.iv.next89.i, %wide.trip.count91.i
  br i1 %exitcond92.not.i, label %._crit_edge.loopexit.i, label %.lr.ph71.split.us.i, !llvm.loop !71

.preheader.lr.ph.us.i:                            ; preds = %.lr.ph71.split.us.i
  %i.fr = mul nuw nsw i64 %indvars.iv88.i, 255
  %i.fs = add nuw nsw i64 %i.fr, %i.fh
  %i.ft = udiv i64 %i.fs, %i.fi
  %i.fu = trunc i64 %i.ft to i8                   ; 5 uses
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge.us.us.i, %.preheader.lr.ph.us.i
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %._crit_edge.us.us.i ], [ %indvars.iv83.i, %.preheader.lr.ph.us.i ] ; 6 uses
  br i1 %i.fn, label %.epil.preheader87, label %.preheader.us.us.i.new

.preheader.us.us.i.new:                           ; preds = %.preheader.us.us.i, %.preheader.us.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.us.us.i.new ], [ 0, %.preheader.us.us.i ] ; 5 uses
  %niter93 = phi i64 [ %niter93.next.3, %.preheader.us.us.i.new ], [ 0, %.preheader.us.us.i ]
  %i.fv = load ptr, ptr %i.fk, align 8, !tbaa !72
  %i.fw = getelementptr i8, ptr %i.fv, i64 %indvars.iv.i
  %i.fx = getelementptr i8, ptr %i.fw, i64 %indvars.iv85.i
  store i8 %i.fu, ptr %i.fx, align 1, !tbaa !36
  %i.fy = load ptr, ptr %i.fk, align 8, !tbaa !72
  %i.fz = getelementptr i8, ptr %i.fy, i64 %indvars.iv.i
  %i.ga = getelementptr i8, ptr %i.fz, i64 1
  %i.gb = getelementptr i8, ptr %i.ga, i64 %indvars.iv85.i
  store i8 %i.fu, ptr %i.gb, align 1, !tbaa !36
  %i.gc = load ptr, ptr %i.fk, align 8, !tbaa !72
  %i.gd = getelementptr i8, ptr %i.gc, i64 %indvars.iv.i
  %i.ge = getelementptr i8, ptr %i.gd, i64 2
  %i.gf = getelementptr i8, ptr %i.ge, i64 %indvars.iv85.i
  store i8 %i.fu, ptr %i.gf, align 1, !tbaa !36
  %i.gg = load ptr, ptr %i.fk, align 8, !tbaa !72
  %i.gh = getelementptr i8, ptr %i.gg, i64 %indvars.iv.i
  %i.gi = getelementptr i8, ptr %i.gh, i64 3
  %i.gj = getelementptr i8, ptr %i.gi, i64 %indvars.iv85.i
  store i8 %i.fu, ptr %i.gj, align 1, !tbaa !36
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter93.next.3 = add i64 %niter93, 4           ; 2 uses
  %niter93.ncmp.3 = icmp eq i64 %niter93.next.3, %unroll_iter92
  br i1 %niter93.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.preheader.us.us.i.new, !llvm.loop !73

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.preheader.us.us.i.new
  br i1 %lcmp.mod90.not, label %._crit_edge.us.us.i, label %.epil.preheader87

.epil.preheader87:                                ; preds = %._crit_edge.us.us.i.unr-lcssa, %.preheader.us.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.us.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod91)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader87
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %bb.t ], [ %indvars.iv.i.epil.init, %.epil.preheader87 ] ; 2 uses
  %epil.iter89 = phi i64 [ %epil.iter89.next, %bb.t ], [ 0, %.epil.preheader87 ]
  %i.gk = load ptr, ptr %i.fk, align 8, !tbaa !72
  %i.gl = getelementptr i8, ptr %i.gk, i64 %indvars.iv.i.epil
  %i.gm = getelementptr i8, ptr %i.gl, i64 %indvars.iv85.i
  store i8 %i.fu, ptr %i.gm, align 1, !tbaa !36
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter89.next = add i64 %epil.iter89, 1     ; 2 uses
  %epil.iter89.cmp.not = icmp eq i64 %epil.iter89.next, %xtraiter88
  br i1 %epil.iter89.cmp.not, label %._crit_edge.us.us.i, label %bb.t, !llvm.loop !74

._crit_edge.us.us.i:                              ; preds = %bb.t, %._crit_edge.us.us.i.unr-lcssa
  %indvars.iv.next86.i = add nsw i64 %indvars.iv85.i, %i.fm ; 2 uses
  %i.gn = icmp slt i64 %indvars.iv.next86.i, %i.ez
  br i1 %i.gn, label %.preheader.us.us.i, label %._crit_edge69.split.us.us.i, !llvm.loop !75

._crit_edge.loopexit.i:                           ; preds = %._crit_edge69.split.us.us.i
  %.pre96.i = load i32, ptr %i.y, align 8, !tbaa !53
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph71.i, %.lr.ph75.i
  %i.go = phi i32 [ %i.fa, %.lr.ph75.i ], [ %.pre96.i, %._crit_edge.loopexit.i ], [ %i.fa, %.lr.ph71.i ] ; 2 uses
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %i.gp = sext i32 %i.go to i64
  %i.gq = icmp slt i64 %indvars.iv.next94.i, %i.gp
  br i1 %i.gq, label %.lr.ph75.i, label %create_colormap.exit, !llvm.loop !76

create_colormap.exit:                             ; preds = %._crit_edge.i, %bb.s
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store ptr %i.ew, ptr %i.gr, align 8, !tbaa !77
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i32 %.us-phi76.i.i, ptr %i.gs, align 8, !tbaa !78
  tail call fastcc void @create_colorindex(ptr noundef nonnull %0)
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !79
  %i.gv = icmp eq i32 %i.gu, 2
  br i1 %i.gv, label %bb.u, label %alloc_fs_workspace.exit

bb.u:                                             ; preds = %create_colormap.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !80
  %i.gy = add i32 %i.gx, 2
  %i.gz = zext i32 %i.gy to i64
  %i.ha = shl nuw nsw i64 %i.gz, 1
  %i.hb = load i32, ptr %i.y, align 8, !tbaa !53
  %i.hc = icmp sgt i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph.i35, label %alloc_fs_workspace.exit

.lr.ph.i35:                                       ; preds = %bb.u
  %i.hd = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 120
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i35
  %indvars.iv.i36 = phi i64 [ 0, %.lr.ph.i35 ], [ %indvars.iv.next.i37, %bb.v ] ; 2 uses
  %i.hf = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !81
  %i.hi = tail call ptr %i.hh(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.ha) #8, !inline_history !82
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv.i36
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !50
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %i.hk = load i32, ptr %i.y, align 8, !tbaa !53
  %i.hl = sext i32 %i.hk to i64
  %i.hm = icmp slt i64 %indvars.iv.next.i37, %i.hl
  br i1 %i.hm, label %bb.v, label %alloc_fs_workspace.exit, !llvm.loop !83

alloc_fs_workspace.exit:                          ; preds = %bb.v, %bb.u, %create_colormap.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_1_quant(ptr noundef initializes((156, 168)) %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.d, ptr %i.e, align 8, !tbaa !84
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.g, ptr %i.h, align 4, !tbaa !85
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !79
  switch i32 %i.j, label %bb.m [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !53
  %i.m = icmp eq i32 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %color_quantize3.color_quantize = select i1 %i.m, ptr @color_quantize3, ptr @color_quantize
  store ptr %color_quantize3.color_quantize, ptr %i.n, align 8, !tbaa !86
  br label %create_odither_tables.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !53
  %i.q = icmp eq i32 %i.p, 3
  %spec.select = select i1 %i.q, ptr @quantize3_ord_dither, ptr @quantize_ord_dither
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %spec.select, ptr %i.r, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store i32 0, ptr %i.s, align 4, !tbaa !87
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !88
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @create_colorindex(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.f, label %create_odither_tables.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.o, align 8, !tbaa !53   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph26.i, label %create_odither_tables.exit

.lr.ph26.i:                                       ; preds = %bb.f
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 68 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 88 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.g

bb.g:                                             ; preds = %make_odither_array.exit.i, %.lr.ph26.i
  %i.ae = phi i32 [ %i.y, %.lr.ph26.i ], [ %i.gh, %make_odither_array.exit.i ]
  %indvars.iv29.i = phi i64 [ 0, %.lr.ph26.i ], [ %indvars.iv.next30.i, %make_odither_array.exit.i ] ; 5 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv29.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3  ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv29.i, 0
  br i1 %.not.i, label %.thread.i, label %.lr.ph.i

bb.h:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv29.i
  br i1 %exitcond.not.i, label %.thread.i, label %.lr.ph.i, !llvm.loop !89

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.thread.i, label %make_odither_array.exit.i

.thread.i:                                        ; preds = %bb.h, %bb.i, %bb.g
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42
  %i.ap = tail call ptr %i.ao(ptr noundef %0, i32 noundef 1, i64 noundef 1024) #8, !inline_history !90 ; 2 uses
  %i.aq = add nsw i32 %i.ag, -1
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 9                    ; 16 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.thread.i
  %indvars.iv.i.i = phi i64 [ 0, %.thread.i ], [ %indvars.iv.next.i.i, %.preheader.i.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr @base_dither_matrix, i64 %indvars.iv.i.i ; 16 uses
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %indvars.iv.i.i ; 16 uses
  %i.av = load i8, ptr %i.at, align 16, !tbaa !36
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 1
  %i.ay = sub nsw i32 255, %i.ax
  %narrow.i.i = mul nsw i32 %i.ay, 255
  %i.az = sext i32 %narrow.i.i to i64
  %i.ba = sdiv i64 %i.az, %i.as
  %i.bb = trunc nsw i64 %i.ba to i32
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !36
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 1
  %i.bg = sub nsw i32 255, %i.bf
  %narrow.1.i.i = mul nsw i32 %i.bg, 255
  %i.bh = sext i32 %narrow.1.i.i to i64
  %i.bi = sdiv i64 %i.bh, %i.as
  %i.bj = trunc nsw i64 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !36
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 1
  %i.bp = sub nsw i32 255, %i.bo
  %narrow.2.i.i = mul nsw i32 %i.bp, 255
  %i.bq = sext i32 %narrow.2.i.i to i64
  %i.br = sdiv i64 %i.bq, %i.as
  %i.bs = trunc nsw i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !36
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = sub nsw i32 255, %i.bx
  %narrow.3.i.i = mul nsw i32 %i.by, 255
  %i.bz = sext i32 %narrow.3.i.i to i64
  %i.ca = sdiv i64 %i.bz, %i.as
  %i.cb = trunc nsw i64 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !36
  %i.cf = zext i8 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 1
  %i.ch = sub nsw i32 255, %i.cg
  %narrow.4.i.i = mul nsw i32 %i.ch, 255
  %i.ci = sext i32 %narrow.4.i.i to i64
  %i.cj = sdiv i64 %i.ci, %i.as
  %i.ck = trunc nsw i64 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.at, i64 5
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !36
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = sub nsw i32 255, %i.cp
  %narrow.5.i.i = mul nsw i32 %i.cq, 255
  %i.cr = sext i32 %narrow.5.i.i to i64
  %i.cs = sdiv i64 %i.cr, %i.as
  %i.ct = trunc nsw i64 %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %i.cw = load i8, ptr %i.cv, align 2, !tbaa !36
  %i.cx = zext i8 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = sub nsw i32 255, %i.cy
  %narrow.6.i.i = mul nsw i32 %i.cz, 255
  %i.da = sext i32 %narrow.6.i.i to i64
  %i.db = sdiv i64 %i.da, %i.as
  %i.dc = trunc nsw i64 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !3
  %i.de = getelementptr inbounds nuw i8, ptr %i.at, i64 7
  %i.df = load i8, ptr %i.de, align 1, !tbaa !36
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 1
  %i.di = sub nsw i32 255, %i.dh
  %narrow.7.i.i = mul nsw i32 %i.di, 255
  %i.dj = sext i32 %narrow.7.i.i to i64
  %i.dk = sdiv i64 %i.dj, %i.as
  %i.dl = trunc nsw i64 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !36
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 1
  %i.dr = sub nsw i32 255, %i.dq
  %narrow.8.i.i = mul nsw i32 %i.dr, 255
  %i.ds = sext i32 %narrow.8.i.i to i64
  %i.dt = sdiv i64 %i.ds, %i.as
  %i.du = trunc nsw i64 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !3
  %i.dw = getelementptr inbounds nuw i8, ptr %i.at, i64 9
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !36
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 1
  %i.ea = sub nsw i32 255, %i.dz
  %narrow.9.i.i = mul nsw i32 %i.ea, 255
  %i.eb = sext i32 %narrow.9.i.i to i64
  %i.ec = sdiv i64 %i.eb, %i.as
  %i.ed = trunc nsw i64 %i.ec to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.at, i64 10
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !36
  %i.eh = zext i8 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = sub nsw i32 255, %i.ei
  %narrow.10.i.i = mul nsw i32 %i.ej, 255
  %i.ek = sext i32 %narrow.10.i.i to i64
  %i.el = sdiv i64 %i.ek, %i.as
  %i.em = trunc nsw i64 %i.el to i32
  %i.en = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i32 %i.em, ptr %i.en, align 4, !tbaa !3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.at, i64 11
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !36
  %i.eq = zext i8 %i.ep to i32
  %i.er = shl nuw nsw i32 %i.eq, 1
  %i.es = sub nsw i32 255, %i.er
  %narrow.11.i.i = mul nsw i32 %i.es, 255
  %i.et = sext i32 %narrow.11.i.i to i64
  %i.eu = sdiv i64 %i.et, %i.as
  %i.ev = trunc nsw i64 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ey = load i8, ptr %i.ex, align 4, !tbaa !36
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 1
  %i.fb = sub nsw i32 255, %i.fa
  %narrow.12.i.i = mul nsw i32 %i.fb, 255
  %i.fc = sext i32 %narrow.12.i.i to i64
  %i.fd = sdiv i64 %i.fc, %i.as
  %i.fe = trunc nsw i64 %i.fd to i32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !3
  %i.fg = getelementptr inbounds nuw i8, ptr %i.at, i64 13
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !36
  %i.fi = zext i8 %i.fh to i32
  %i.fj = shl nuw nsw i32 %i.fi, 1
  %i.fk = sub nsw i32 255, %i.fj
  %narrow.13.i.i = mul nsw i32 %i.fk, 255
  %i.fl = sext i32 %narrow.13.i.i to i64
  %i.fm = sdiv i64 %i.fl, %i.as
  %i.fn = trunc nsw i64 %i.fm to i32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.au, i64 52
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.at, i64 14
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !36
  %i.fr = zext i8 %i.fq to i32
  %i.fs = shl nuw nsw i32 %i.fr, 1
  %i.ft = sub nsw i32 255, %i.fs
  %narrow.14.i.i = mul nsw i32 %i.ft, 255
  %i.fu = sext i32 %narrow.14.i.i to i64
  %i.fv = sdiv i64 %i.fu, %i.as
  %i.fw = trunc nsw i64 %i.fv to i32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !3
  %i.fy = getelementptr inbounds nuw i8, ptr %i.at, i64 15
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !36
  %i.ga = zext i8 %i.fz to i32
  %i.gb = shl nuw nsw i32 %i.ga, 1
  %i.gc = sub nsw i32 255, %i.gb
  %narrow.15.i.i = mul nsw i32 %i.gc, 255
  %i.gd = sext i32 %narrow.15.i.i to i64
  %i.ge = sdiv i64 %i.gd, %i.as
  %i.gf = trunc nsw i64 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.au, i64 60
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !3
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 16
  br i1 %exitcond.not.i.i, label %make_odither_array.exit.loopexit.i, label %.preheader.i.i, !llvm.loop !91

make_odither_array.exit.loopexit.i:               ; preds = %.preheader.i.i
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !53
  br label %make_odither_array.exit.i

make_odither_array.exit.i:                        ; preds = %make_odither_array.exit.loopexit.i, %bb.i
  %i.gh = phi i32 [ %i.ae, %bb.i ], [ %.pre.i, %make_odither_array.exit.loopexit.i ] ; 2 uses
  %.1.i = phi ptr [ %i.al, %bb.i ], [ %i.ap, %make_odither_array.exit.loopexit.i ]
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv29.i
  store ptr %.1.i, ptr %i.gi, align 8, !tbaa !52
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %i.gj = sext i32 %i.gh to i64
  %i.gk = icmp slt i64 %indvars.iv.next30.i, %i.gj
  br i1 %i.gk, label %bb.g, label %create_odither_tables.exit, !llvm.loop !92

bb.j:                                             ; preds = %bb.a
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @quantize_fs_dither, ptr %i.gl, align 8, !tbaa !86
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i32 0, ptr %i.gm, align 8, !tbaa !93
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !50
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.k, label %.alloc_fs_workspace.exit_crit_edge

.alloc_fs_workspace.exit_crit_edge:               ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !53
  br label %alloc_fs_workspace.exit

bb.k:                                             ; preds = %bb.j
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !80
  %i.gs = add i32 %i.gr, 2
  %i.gt = zext i32 %i.gs to i64
  %i.gu = shl nuw nsw i64 %i.gt, 1
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !53
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.lr.ph.i30, label %create_odither_tables.exit

.lr.ph.i30:                                       ; preds = %bb.k
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i30
  %indvars.iv.i31 = phi i64 [ 0, %.lr.ph.i30 ], [ %indvars.iv.next.i32, %bb.l ] ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !41
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !81
  %i.hc = tail call ptr %i.hb(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.gu) #8, !inline_history !82
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.i31
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !50
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i31, 1 ; 2 uses
  %i.he = load i32, ptr %i.gv, align 8, !tbaa !53 ; 2 uses
  %i.hf = sext i32 %i.he to i64
  %i.hg = icmp slt i64 %indvars.iv.next.i32, %i.hf
  br i1 %i.hg, label %bb.l, label %alloc_fs_workspace.exit, !llvm.loop !83

alloc_fs_workspace.exit:                          ; preds = %bb.l, %.alloc_fs_workspace.exit_crit_edge
  %i.hh = phi i32 [ %.pre, %.alloc_fs_workspace.exit_crit_edge ], [ %i.he, %bb.l ]
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !80
  %i.hk = add i32 %i.hj, 2
  %i.hl = zext i32 %i.hk to i64
  %i.hm = shl nuw nsw i64 %i.hl, 1
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ho = icmp sgt i32 %i.hh, 0
  br i1 %i.ho, label %.lr.ph, label %create_odither_tables.exit

.lr.ph:                                           ; preds = %alloc_fs_workspace.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %alloc_fs_workspace.exit ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !50
  tail call void @jzero_far(ptr noundef %i.hq, i64 noundef %i.hm) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hr = load i32, ptr %i.hn, align 8, !tbaa !53
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp slt i64 %indvars.iv.next, %i.hs
  br i1 %i.ht, label %.lr.ph, label %create_odither_tables.exit, !llvm.loop !94

bb.m:                                             ; preds = %bb.a
  %i.hu = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 40
  store i32 49, ptr %i.hv, align 8, !tbaa !33
  %i.hw = load ptr, ptr %i.hu, align 8, !tbaa !37
  tail call void %i.hw(ptr noundef nonnull %0) #8
  br label %create_odither_tables.exit

create_odither_tables.exit:                       ; preds = %.lr.ph, %make_odither_array.exit.i, %bb.b, %bb.k, %alloc_fs_workspace.exit, %bb.f, %bb.e, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @finish_pass_1_quant(ptr readnone captures(none) %0) #2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @new_color_map_1_quant(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 47, ptr %i.b, align 8, !tbaa !33
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !37
  tail call void %i.c(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @create_colorindex(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !79
  %.not = icmp eq i32 %i.d, 1                     ; 4 uses
  %spec.select = zext i1 %.not to i32
  %spec.select79 = select i1 %.not, i32 766, i32 256
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 %spec.select, ptr %i.e, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !53
  %i.l = tail call ptr %i.i(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %spec.select79, i32 noundef %i.k) #8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !95
  %i.n = load i32, ptr %i.j, align 8, !tbaa !53
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph62, %.loopexit
  %indvars.iv73 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next74, %.loopexit ] ; 3 uses
  %.04660 = phi i32 [ %i.q, %.lr.ph62 ], [ %i.u, %.loopexit ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv73
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3    ; 2 uses
  %i.u = sdiv i32 %.04660, %i.t                   ; 2 uses
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !95
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv73 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72   ; 2 uses
  br i1 %.not, label %bb.c, label %._crit_edge76

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 255 ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !72
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %bb.b, %bb.c
  %i.y = phi ptr [ %i.x, %bb.c ], [ %i.w, %bb.b ] ; 9 uses
  %i.z = add nsw i32 %i.t, -1                     ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = add nsw i64 %i.aa, 255
  %i.ac = shl nsw i32 %i.z, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = sdiv i64 %i.ab, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %invariant.op = add nsw i64 %i.aa, 255
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge76, %._crit_edge
  %indvars.iv66 = phi i64 [ 0, %._crit_edge76 ], [ %indvars.iv.next67, %._crit_edge ] ; 4 uses
  %.04557 = phi i32 [ 0, %._crit_edge76 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.04856 = phi i32 [ %i.af, %._crit_edge76 ], [ %.149.lcssa, %._crit_edge ] ; 2 uses
  %i.ag = sext i32 %.04856 to i64
  %i.ah = icmp sgt i64 %indvars.iv66, %i.ag
  br i1 %i.ah, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ai = sext i32 %.04557 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.ai, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.aj = mul i64 %indvars.iv.next, 510
  %.reass = add i64 %i.aj, %invariant.op
  %i.ak = sdiv i64 %.reass, %i.ad                 ; 2 uses
  %sext = shl i64 %i.ak, 32
  %i.al = ashr exact i64 %sext, 32
  %i.am = icmp sgt i64 %indvars.iv66, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !96

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.an = trunc i64 %i.ak to i32
  %i.ao = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.149.lcssa = phi i32 [ %.04856, %.preheader ], [ %i.an, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.04557, %.preheader ], [ %i.ao, %._crit_edge.loopexit ] ; 2 uses
  %i.ap = mul nsw i32 %.1.lcssa, %i.u
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv66
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !36
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next67, 256
  br i1 %exitcond.not, label %bb.d, label %.preheader, !llvm.loop !97

bb.d:                                             ; preds = %._crit_edge
  br i1 %.not, label %.preheader52, label %.loopexit

.preheader52:                                     ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 255 ; 3 uses
  %.pre78 = load i8, ptr %i.y, align 1, !tbaa !36 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader52
  %indvars.iv69 = phi i64 [ 1, %.preheader52 ], [ %indvars.iv.next70.2, %bb.e ] ; 7 uses
  %i.at = sub nsw i64 0, %indvars.iv69
  %i.au = getelementptr inbounds i8, ptr %i.y, i64 %i.at
  store i8 %.pre78, ptr %i.au, align 1, !tbaa !36
  %i.av = load i8, ptr %i.as, align 1, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv69
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 255
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !36
  %i.ay = xor i64 %indvars.iv69, -1
  %i.az = getelementptr inbounds i8, ptr %i.y, i64 %i.ay
  store i8 %.pre78, ptr %i.az, align 1, !tbaa !36
  %i.ba = load i8, ptr %i.as, align 1, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv69
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 256
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !36
  %i.bd = sub nuw nsw i64 -2, %indvars.iv69
  %i.be = getelementptr inbounds i8, ptr %i.y, i64 %i.bd
  store i8 %.pre78, ptr %i.be, align 1, !tbaa !36
  %i.bf = load i8, ptr %i.as, align 1, !tbaa !36
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv69
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 257
  store i8 %i.bf, ptr %i.bh, align 1, !tbaa !36
  %indvars.iv.next70.2 = add nuw nsw i64 %indvars.iv69, 3 ; 2 uses
  %exitcond72.not.2 = icmp eq i64 %indvars.iv.next70.2, 256
  br i1 %exitcond72.not.2, label %.loopexit, label %bb.e, !llvm.loop !98

.loopexit:                                        ; preds = %bb.e, %bb.d
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !53
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next74, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge63, !llvm.loop !99

._crit_edge63:                                    ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @color_quantize3(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !80   ; 5 uses
  %i.l = icmp slt i32 %3, 1
  %.not27 = icmp eq i32 %i.k, 0
  %or.cond = select i1 %i.l, i1 true, i1 %.not27
  br i1 %or.cond, label %._crit_edge34, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64
  %xtraiter = and i32 %i.k, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.m = add nsw i32 %i.k, -1
  %i.n = icmp eq i32 %i.k, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72   ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !72   ; 3 uses
end_hunk_0
