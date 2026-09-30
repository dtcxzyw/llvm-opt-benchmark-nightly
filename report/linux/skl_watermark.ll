Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/skl_watermark?download=true
inline.NumInlined: 430
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 20
begin_hunk_0_@skl_wm_sanitize:bb.a

__drm_to_dev.exit41.i:                            ; preds = %bb.o, %__drm_to_dev.exit36.i
  %i.dk = phi ptr [ %i.dj, %bb.o ], [ null, %__drm_to_dev.exit36.i ]
  %i.dl = tail call ptr @dev_driver_string(ptr noundef %i.dk) #16
  %i.dm = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i42.i = icmp eq ptr %i.dm, null
  br i1 %.not.i42.i, label %__drm_to_dev.exit43.i, label %bb.p

bb.p:                                             ; preds = %__drm_to_dev.exit41.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  br label %__drm_to_dev.exit43.i

__drm_to_dev.exit43.i:                            ; preds = %bb.p, %__drm_to_dev.exit41.i
  %i.dp = phi ptr [ %i.do, %bb.p ], [ null, %__drm_to_dev.exit41.i ] ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 80
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %.not.i44.i = icmp eq ptr %i.dr, null
  br i1 %.not.i44.i, label %bb.q, label %dev_name.exit47.i

bb.q:                                             ; preds = %__drm_to_dev.exit43.i
  %.val.i46.i = load ptr, ptr %i.dp, align 8
  br label %dev_name.exit47.i

dev_name.exit47.i:                                ; preds = %bb.q, %__drm_to_dev.exit43.i
  %.0.i45.i = phi ptr [ %.val.i46.i, %bb.q ], [ %i.dr, %__drm_to_dev.exit43.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.dg, ptr noundef %i.dl, ptr noundef %.0.i45.i, ptr noundef nonnull @.str.63) #16
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !178
  br label %bb.r

bb.r:                                             ; preds = %dev_name.exit47.i, %bb.l
  %i.ds = getelementptr i8, ptr %i.cv, i64 3600
  store i32 0, ptr %i.ds, align 4
  %.pn.i = load ptr, ptr %.pn51.i, align 8        ; 2 uses
  %.not.i4 = icmp eq ptr %.pn.i, %i.ai
  br i1 %.not.i4, label %skl_dbuf_sanitize.exit, label %.lr.ph.i, !llvm.loop !174

skl_dbuf_sanitize.exit:                           ; preds = %bb.r, %skl_dbuf_is_misconfigured.exit.i, %__drm_to_dev.exit.i3
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_wm_plane_visible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @skl_build_plane_wm_single(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.skl_wm_params, align 4      ; 11 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 1484
  %i.f = getelementptr i8, ptr %2, i64 1356
  %i.g = load i32, ptr %i.f, align 4
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr [132 x i8], ptr %i.e, i64 %i.h ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i64 40, i1 false), !annotation !22
  %i.j = getelementptr i8, ptr %1, i64 192
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 108        ; 2 uses
  %.val.i = load i32, ptr %i.l, align 4
  %i.m = getelementptr i8, ptr %1, i64 116
  %.val11.i = load i32, ptr %i.m, align 4
  %i.n = sub i32 %.val11.i, %.val.i
  %i.o = ashr i32 %i.n, 16
  %i.p = getelementptr i8, ptr %i.k, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.k, i64 120
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %1, i64 204
  %i.u = load i32, ptr %i.t, align 4
  %i.v = tail call i32 @intel_plane_pixel_rate(ptr noundef %0, ptr noundef %1) #16
  %i.w = load i32, ptr %i.l, align 4
  %i.x = call fastcc range(i32 -22, 1) i32 @skl_compute_wm_params(ptr noundef %0, i32 noundef %i.o, ptr noundef %i.q, i64 noundef %i.s, i32 noundef %i.u, i32 noundef %i.v, ptr noundef nonnull %4, i32 noundef range(i32 0, 2) %3, i32 noundef %i.w) #17, !srcloc !30 ; 2 uses
  %.not25 = icmp eq i32 %i.x, 0
  br i1 %.not25, label %bb.d, label %skl_compute_transition_wm.exit42

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %0, align 8
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call ptr @__drm_to_display(ptr noundef nonnull %i.z) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = phi ptr [ %i.aa, %bb.e ], [ null, %bb.d ] ; 5 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 5536   ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 8
  %.not22.i = icmp eq i8 %i.ad, 0
  br i1 %.not22.i, label %skl_compute_wm_levels.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %i.ab, i64 5430   ; 2 uses
  %i.af = getelementptr i8, ptr %i.ab, i64 8      ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ab, i64 5568   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ab, i64 1168
  %i.ai = load i8, ptr %4, align 4, !range !18
  %.fr43 = freeze i8 %i.ai
  %i.aj = trunc i8 %.fr43 to i1
  br i1 %i.aj, label %.lr.ph.split.i.us, label %.lr.ph.split.i

.lr.ph.split.i.us:                                ; preds = %.lr.ph.i, %skl_wm_latency.exit.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %skl_wm_latency.exit.i.us ], [ 0, %.lr.ph.i ] ; 4 uses
  %.021.i.us = phi ptr [ %i.ak, %skl_wm_latency.exit.i.us ], [ %i.i, %.lr.ph.i ]
  %i.ak = getelementptr [12 x i8], ptr %i.i, i64 %indvars.iv.i.us ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ae, i64 %indvars.iv.i.us
  %i.am = load i16, ptr %i.al, align 2            ; 2 uses
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = icmp eq i16 %i.am, 0
  br i1 %i.ao, label %skl_wm_latency.exit.i.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.i.us
  %i.ap = load i64, ptr %i.af, align 8
  %i.aq = and i64 %i.ap, 622770257920
  %or.cond20.i.i.us = icmp eq i64 %i.aq, 0
  br i1 %or.cond20.i.i.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i8, ptr %i.ag, align 8, !range !18, !noundef !19
  %i.as = shl nuw nsw i8 %i.ar, 2
  %i.at = zext nneg i8 %i.as to i32
  %spec.select.i.i.us = add nuw nsw i32 %i.at, %i.an
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i.us = phi i32 [ %i.an, %bb.g ], [ %spec.select.i.i.us, %bb.h ] ; 2 uses
  %.val.i.i.us = load i16, ptr %i.ah, align 8
  %i.au = icmp eq i16 %.val.i.i.us, 9
  %i.av = add nuw nsw i32 %.0.i.i.us, 15
  %spec.select = select i1 %i.au, i32 %i.av, i32 %.0.i.i.us
  br label %skl_wm_latency.exit.i.us

skl_wm_latency.exit.i.us:                         ; preds = %bb.i, %.lr.ph.split.i.us
  %.014.i.i.us = phi i32 [ 0, %.lr.ph.split.i.us ], [ %spec.select, %bb.i ]
  %i.aw = trunc nuw nsw i64 %indvars.iv.i.us to i32
  call fastcc void @skl_compute_plane_wm(ptr noundef readonly %0, ptr noundef readonly %2, i32 noundef %i.aw, i32 noundef %.014.i.i.us, ptr noundef nonnull readonly %4, ptr noundef %.021.i.us, ptr noundef %i.ak) #17, !srcloc !31
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %i.ax = load i8, ptr %i.ac, align 8
  %i.ay = zext i8 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next.i.us, %i.ay
  br i1 %i.az, label %.lr.ph.split.i.us, label %skl_compute_wm_levels.exit, !llvm.loop !6

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %skl_wm_latency.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %skl_wm_latency.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %.021.i = phi ptr [ %i.ba, %skl_wm_latency.exit.i ], [ %i.i, %.lr.ph.i ]
  %i.ba = getelementptr [12 x i8], ptr %i.i, i64 %indvars.iv.i ; 2 uses
  %i.bb = getelementptr [2 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.bc = load i16, ptr %i.bb, align 2            ; 2 uses
  %i.bd = zext i16 %i.bc to i32                   ; 2 uses
  %i.be = icmp eq i16 %i.bc, 0
  br i1 %i.be, label %skl_wm_latency.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.i
  %i.bf = load i64, ptr %i.af, align 8
  %i.bg = and i64 %i.bf, 622770257920
  %or.cond20.i.i = icmp eq i64 %i.bg, 0
  br i1 %or.cond20.i.i, label %skl_wm_latency.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = load i8, ptr %i.ag, align 8, !range !18, !noundef !19
  %i.bi = shl nuw nsw i8 %i.bh, 2
  %i.bj = zext nneg i8 %i.bi to i32
  %spec.select.i.i = add nuw nsw i32 %i.bj, %i.bd
  br label %skl_wm_latency.exit.i

skl_wm_latency.exit.i:                            ; preds = %bb.j, %bb.k, %.lr.ph.split.i
  %.014.i.i = phi i32 [ 0, %.lr.ph.split.i ], [ %i.bd, %bb.j ], [ %spec.select.i.i, %bb.k ]
  %i.bk = trunc nuw nsw i64 %indvars.iv.i to i32
  call fastcc void @skl_compute_plane_wm(ptr noundef readonly %0, ptr noundef readonly %2, i32 noundef %i.bk, i32 noundef %.014.i.i, ptr noundef nonnull readonly %4, ptr noundef %.021.i, ptr noundef %i.ba) #17, !srcloc !31
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bl = load i8, ptr %i.ac, align 8
  %i.bm = zext i8 %i.bl to i64
  %i.bn = icmp samesign ult i64 %indvars.iv.next.i, %i.bm
  br i1 %i.bn, label %.lr.ph.split.i, label %skl_compute_wm_levels.exit, !llvm.loop !6

skl_compute_wm_levels.exit:                       ; preds = %skl_wm_latency.exit.i, %skl_wm_latency.exit.i.us, %bb.f
  %i.bo = getelementptr i8, ptr %i.i, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.val28 = load i8, ptr %i.bp, align 1           ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 28
  %.val29 = load i32, ptr %i.bq, align 4          ; 2 uses
  %i.br = getelementptr i8, ptr %i.d, i64 5568    ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !range !18, !noundef !19
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.l, label %skl_compute_transition_wm.exit

bb.l:                                             ; preds = %skl_compute_wm_levels.exit
  %i.bu = getelementptr i8, ptr %i.d, i64 1168
  %i.bv = load i16, ptr %i.bu, align 8            ; 2 uses
  %i.bw = icmp eq i16 %i.bv, 9
  br i1 %i.bw, label %skl_compute_transition_wm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = icmp ugt i16 %i.bv, 9
  %.030.i = select i1 %i.bx, i16 14, i16 24       ; 2 uses
  %i.by = getelementptr i8, ptr %i.i, i64 4
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = add i16 %i.bz, -1                       ; 2 uses
  %i.cb = trunc nuw i8 %.val28 to i1
  br i1 %i.cb, label %mul_round_up_u32_fixed16.exit.i, label %bb.n

mul_round_up_u32_fixed16.exit.i:                  ; preds = %bb.m
  %i.cc = shl i32 %.val29, 1
  %i.cd = add i32 %i.cc, 65534
  %i.ce = lshr i32 %i.cd, 16
  %i.cf = zext i16 %i.ca to i32
  %i.cg = tail call i32 @llvm.umax.i32(i32 %i.ce, i32 %i.cf)
  %i.ch = trunc nuw i32 %i.cg to i16
  %i.ci = add i16 %.030.i, %i.ch
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cj = add i16 %i.ca, %.030.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %mul_round_up_u32_fixed16.exit.i
  %.031.i = phi i16 [ %i.ci, %mul_round_up_u32_fixed16.exit.i ], [ %i.cj, %bb.n ] ; 2 uses
  %i.ck = add i16 %.031.i, 1
  %i.cl = getelementptr i8, ptr %i.i, i64 100
  store i16 %i.ck, ptr %i.cl, align 2
  %i.cm = load i16, ptr %i.i, align 2
  %i.cn = add i16 %.031.i, 2
  %i.co = tail call i16 @llvm.umax.i16(i16 %i.cm, i16 %i.cn)
  store i16 %i.co, ptr %i.bo, align 2
  %i.cp = getelementptr i8, ptr %i.i, i64 103
  store i8 1, ptr %i.cp, align 1
  br label %skl_compute_transition_wm.exit

skl_compute_transition_wm.exit:                   ; preds = %skl_compute_wm_levels.exit, %bb.l, %bb.o
  %i.cq = getelementptr i8, ptr %i.d, i64 1168    ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 8
  %i.cs = icmp ugt i16 %i.cr, 11
  br i1 %i.cs, label %bb.p, label %skl_compute_transition_wm.exit42

bb.p:                                             ; preds = %skl_compute_transition_wm.exit
  %i.ct = getelementptr i8, ptr %i.d, i64 8
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = and i64 %i.cu, 281474976710656
  %.not26 = icmp eq i64 %i.cv, 0
  br i1 %.not26, label %bb.q, label %skl_compute_transition_wm.exit42

bb.q:                                             ; preds = %bb.p
  %i.cw = load ptr, ptr %0, align 8
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %.not.i30 = icmp eq ptr %i.cx, null
  br i1 %.not.i30, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = tail call ptr @__drm_to_display(ptr noundef nonnull %i.cx) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cz = phi ptr [ %i.cy, %bb.r ], [ null, %bb.q ] ; 5 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 2228
  %i.db = load i32, ptr %i.da, align 4            ; 2 uses
  %.not15.i = icmp eq i32 %i.db, 0
  br i1 %.not15.i, label %tgl_compute_sagv_wm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr i8, ptr %i.cz, i64 5430
  %i.dd = load i16, ptr %i.dc, align 2            ; 2 uses
  %i.de = zext i16 %i.dd to i32                   ; 2 uses
  %i.df = icmp eq i16 %i.dd, 0
  br i1 %i.df, label %skl_wm_latency.exit.i35, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dg = getelementptr i8, ptr %i.cz, i64 8
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = and i64 %i.dh, 622770257920
  %or.cond20.i.i31 = icmp eq i64 %i.di, 0
  br i1 %or.cond20.i.i31, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = getelementptr i8, ptr %i.cz, i64 5568
  %i.dk = load i8, ptr %i.dj, align 8, !range !18, !noundef !19
  %i.dl = shl nuw nsw i8 %i.dk, 2
  %i.dm = zext nneg i8 %i.dl to i32
  %spec.select.i.i32 = add nuw nsw i32 %i.dm, %i.de
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0.i.i33 = phi i32 [ %i.de, %bb.u ], [ %spec.select.i.i32, %bb.v ] ; 3 uses
  %i.dn = getelementptr i8, ptr %i.cz, i64 1168
  %.val.i.i34 = load i16, ptr %i.dn, align 8
  %i.do = icmp eq i16 %.val.i.i34, 9
  br i1 %i.do, label %bb.x, label %skl_wm_latency.exit.i35

bb.x:                                             ; preds = %bb.w
  %i.dp = load i8, ptr %4, align 4, !range !18, !noundef !19
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = add nuw nsw i32 %.0.i.i33, 15
  %spec.select21.i.i37 = select i1 %i.dq, i32 %i.dr, i32 %.0.i.i33
  br label %skl_wm_latency.exit.i35

skl_wm_latency.exit.i35:                          ; preds = %bb.x, %bb.w, %bb.t
  %.014.i.i36 = phi i32 [ 0, %bb.t ], [ %.0.i.i33, %bb.w ], [ %spec.select21.i.i37, %bb.x ]
  %i.ds = add i32 %.014.i.i36, %i.db
  br label %tgl_compute_sagv_wm.exit

tgl_compute_sagv_wm.exit:                         ; preds = %bb.s, %skl_wm_latency.exit.i35
  %.0.i = phi i32 [ %i.ds, %skl_wm_latency.exit.i35 ], [ 0, %bb.s ]
  %i.dt = getelementptr i8, ptr %i.i, i64 108     ; 2 uses
  call fastcc void @skl_compute_plane_wm(ptr noundef readonly %0, ptr noundef readonly %2, i32 noundef 0, i32 noundef %.0.i, ptr noundef nonnull readonly %4, ptr noundef %i.i, ptr noundef %i.dt) #17, !srcloc !179
  %i.du = getelementptr i8, ptr %i.i, i64 120
  %i.dv = load i8, ptr %i.br, align 8, !range !18, !noundef !19
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.y, label %skl_compute_transition_wm.exit42

bb.y:                                             ; preds = %tgl_compute_sagv_wm.exit
  %i.dx = load i16, ptr %i.cq, align 8            ; 2 uses
  %i.dy = icmp eq i16 %i.dx, 9
  br i1 %i.dy, label %skl_compute_transition_wm.exit42, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp ugt i16 %i.dx, 9
  %.030.i39 = select i1 %i.dz, i16 14, i16 24     ; 2 uses
  %i.ea = getelementptr i8, ptr %i.i, i64 112
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = add i16 %i.eb, -1                       ; 2 uses
  %i.ed = trunc nuw i8 %.val28 to i1
  br i1 %i.ed, label %mul_round_up_u32_fixed16.exit.i41, label %bb.aa

mul_round_up_u32_fixed16.exit.i41:                ; preds = %bb.z
  %i.ee = shl i32 %.val29, 1
  %i.ef = add i32 %i.ee, 65534
  %i.eg = lshr i32 %i.ef, 16
  %i.eh = zext i16 %i.ec to i32
  %i.ei = tail call i32 @llvm.umax.i32(i32 %i.eg, i32 %i.eh)
  %i.ej = trunc nuw i32 %i.ei to i16
  %i.ek = add i16 %.030.i39, %i.ej
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.el = add i16 %i.ec, %.030.i39
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %mul_round_up_u32_fixed16.exit.i41
  %.031.i40 = phi i16 [ %i.ek, %mul_round_up_u32_fixed16.exit.i41 ], [ %i.el, %bb.aa ] ; 2 uses
  %i.em = add i16 %.031.i40, 1
  %i.en = getelementptr i8, ptr %i.i, i64 124
  store i16 %i.em, ptr %i.en, align 2
  %i.eo = load i16, ptr %i.dt, align 2
  %i.ep = add i16 %.031.i40, 2
  %i.eq = tail call i16 @llvm.umax.i16(i16 %i.eo, i16 %i.ep)
  store i16 %i.eq, ptr %i.du, align 2
  %i.er = getelementptr i8, ptr %i.i, i64 127
  store i8 1, ptr %i.er, align 1
  br label %skl_compute_transition_wm.exit42

skl_compute_transition_wm.exit42:                 ; preds = %bb.ab, %bb.y, %tgl_compute_sagv_wm.exit, %skl_compute_transition_wm.exit, %bb.p, %bb.c
  %.0 = phi i32 [ %i.x, %bb.c ], [ 0, %skl_compute_transition_wm.exit ], [ 0, %bb.p ], [ 0, %tgl_compute_sagv_wm.exit ], [ 0, %bb.y ], [ 0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_plane_pixel_rate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @skl_prefill_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @skl_prefill_vblank_too_short(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i8 @intel_calc_active_pipes(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_cdclk_state_set_joined_mbus(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc zeroext i8 @skl_compute_dbuf_slices(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 1664
  %i.e = load i32, ptr %i.d, align 8              ; 5 uses
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 72057594037927936
  %.not23 = icmp eq i64 %i.h, 0
  br i1 %.not23, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %1, label %dg2_compute_dbuf_slices.exit [
    i8 1, label %bb.e
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.l
    i8 8, label %bb.m
    i8 9, label %bb.n
    i8 10, label %bb.o
    i8 11, label %bb.p
    i8 12, label %bb.q
    i8 13, label %bb.r
    i8 14, label %bb.s
    i8 15, label %bb.t
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.f

bb.f:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e
  %.lcssa.i = phi ptr [ @dg2_allowed_dbufs, %bb.e ], [ getelementptr inbounds nuw (i8, ptr @dg2_allowed_dbufs, i64 6), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @dg2_allowed_dbufs, i64 12), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @dg2_allowed_dbufs, i64 18), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @dg2_allowed_dbufs, i64 24), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @dg2_allowed_dbufs, i64 30), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @dg2_allowed_dbufs, i64 36), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @dg2_allowed_dbufs, i64 42), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @dg2_allowed_dbufs, i64 48), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @dg2_allowed_dbufs, i64 54), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @dg2_allowed_dbufs, i64 60), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @dg2_allowed_dbufs, i64 66), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @dg2_allowed_dbufs, i64 72), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @dg2_allowed_dbufs, i64 78), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @dg2_allowed_dbufs, i64 84), %bb.t ]
  %i.i = getelementptr i8, ptr %.lcssa.i, i64 1
  %i.j = sext i32 %i.e to i64
  %i.k = getelementptr i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1
  br label %dg2_compute_dbuf_slices.exit

bb.g:                                             ; preds = %bb.d
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.f

bb.h:                                             ; preds = %bb.d
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.f

bb.i:                                             ; preds = %bb.d
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.f

bb.j:                                             ; preds = %bb.d
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.f

bb.k:                                             ; preds = %bb.d
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.f

bb.l:                                             ; preds = %bb.d
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.f

bb.m:                                             ; preds = %bb.d
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.f

bb.n:                                             ; preds = %bb.d
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.f

bb.o:                                             ; preds = %bb.d
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.f

bb.p:                                             ; preds = %bb.d
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.f

bb.q:                                             ; preds = %bb.d
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.f

bb.r:                                             ; preds = %bb.d
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.f

bb.s:                                             ; preds = %bb.d
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.f

bb.t:                                             ; preds = %bb.d
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.f

bb.u:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.c, i64 1168
  %i.n = load i16, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp ugt i16 %i.n, 12
  br i1 %i.o, label %bb.v, label %bb.am

bb.v:                                             ; preds = %bb.u
  switch i8 %1, label %dg2_compute_dbuf_slices.exit [
    i8 1, label %bb.w
    i8 2, label %bb.y
    i8 3, label %bb.z
    i8 4, label %bb.aa
    i8 5, label %bb.ab
    i8 6, label %bb.ac
    i8 7, label %bb.ad
    i8 8, label %bb.ae
    i8 9, label %bb.af
    i8 10, label %bb.ag
    i8 11, label %bb.ah
    i8 12, label %bb.ai
    i8 13, label %bb.aj
    i8 14, label %bb.ak
    i8 15, label %bb.al
  ]

bb.w:                                             ; preds = %bb.v
  %spec.select.i = select i1 %2, ptr @adlp_allowed_dbufs, ptr getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 12)
  br label %bb.x

bb.x:                                             ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.w
  %.lcssa.i25 = phi ptr [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 90), %bb.ak ], [ %spec.select30.i, %bb.y ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 96), %bb.al ], [ %spec.select.i, %bb.w ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 24), %bb.z ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 30), %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 36), %bb.ab ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 42), %bb.ac ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 48), %bb.ad ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 54), %bb.ae ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 60), %bb.af ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 66), %bb.ag ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 72), %bb.ah ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 78), %bb.ai ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 84), %bb.aj ]
  %i.p = getelementptr i8, ptr %.lcssa.i25, i64 1
  %i.q = sext i32 %i.e to i64
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  br label %dg2_compute_dbuf_slices.exit

bb.y:                                             ; preds = %bb.v
  %spec.select30.i = select i1 %2, ptr getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 6), ptr getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 18)
  br label %bb.x

bb.z:                                             ; preds = %bb.v
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.x

bb.aa:                                            ; preds = %bb.v
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.x

bb.ab:                                            ; preds = %bb.v
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.x

bb.ac:                                            ; preds = %bb.v
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.x

bb.ad:                                            ; preds = %bb.v
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.x

bb.ae:                                            ; preds = %bb.v
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.x

bb.af:                                            ; preds = %bb.v
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.x

bb.ag:                                            ; preds = %bb.v
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.x

bb.ah:                                            ; preds = %bb.v
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.x

bb.ai:                                            ; preds = %bb.v
  br i1 %2, label %dg2_compute_dbuf_slices.exit, label %bb.x

end_hunk_0
