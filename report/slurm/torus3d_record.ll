inline.NumInlined: 33
inline.NumDeleted: 15
begin_hunk_0_@torus3d_record_validate:bb.a
  %i.wc = icmp sgt i32 %i.wb, 4
  br i1 %i.wc, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wa, i64 44
  %i.we = load i32, ptr %i.wd, align 4
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wa, i64 36
  %i.wg = load i16, ptr %i.wf, align 4
  %i.wh = zext i16 %i.wg to i32
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wa, i64 38
  %i.wj = load i16, ptr %i.wi, align 2
  %i.wk = zext i16 %i.wj to i32
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wa, i64 40
  %i.wm = load i16, ptr %i.wl, align 4
  %i.wn = zext i16 %i.wm to i32
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wa, i64 24
  %i.wp = load i16, ptr %i.wo, align 8
  %i.wq = zext i16 %i.wp to i32
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wa, i64 26
  %i.ws = load i16, ptr %i.wr, align 2
  %i.wt = zext i16 %i.ws to i32
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wa, i64 28
  %i.wv = load i16, ptr %i.wu, align 4
  %i.ww = zext i16 %i.wv to i32
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wa, i64 42
  %i.wy = load i8, ptr %i.wx, align 2, !range !24, !noundef !25
  %i.wz = trunc nuw i8 %i.wy to i1
  %i.xa = select i1 %i.wz, ptr @.str.27, ptr @.str.28
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.26, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._log_placement, i32 noundef %i.we, i32 noundef %i.wh, i32 noundef %i.wk, i32 noundef %i.wn, i32 noundef %i.wq, i32 noundef %i.wt, i32 noundef %i.ww, ptr noundef nonnull %i.xa) #10
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.xb = load ptr, ptr %i.wa, align 8
  %.not.i23.i = icmp eq ptr %i.xb, null
  br i1 %.not.i23.i, label %_log_placement.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.da
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wa, i64 8 ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 8
  %i.xe = icmp sgt i32 %i.xd, 0
  br i1 %i.xe, label %.lr.ph.i24.i, label %_log_placement.exit.i

.lr.ph.i24.i:                                     ; preds = %.preheader.i.i, %bb.dc
  %indvars.iv.i25.i = phi i64 [ %indvars.iv.next.i26.i, %bb.dc ], [ 0, %.preheader.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.xf = load ptr, ptr %i.wa, align 8
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %indvars.iv.i25.i
  %i.xh = load ptr, ptr %i.xg, align 8
  %i.xi = call ptr @bitmap2node_name(ptr noundef %i.xh) #10
  store ptr %i.xi, ptr %i.g, align 8
  %i.xj = call i32 @get_log_level() #10
  %i.xk = icmp sgt i32 %i.xj, 4
  br i1 %i.xk, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.lr.ph.i24.i
  %i.xl = load ptr, ptr %i.g, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.29, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._log_placement, ptr noundef %i.xl) #10
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.lr.ph.i24.i
  call void @slurm_xfree(ptr noundef nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  %indvars.iv.next.i26.i = add nuw nsw i64 %indvars.iv.i25.i, 1 ; 2 uses
  %i.xm = load i32, ptr %i.xc, align 8
  %i.xn = sext i32 %i.xm to i64
  %i.xo = icmp slt i64 %indvars.iv.next.i26.i, %i.xn
  br i1 %i.xo, label %.lr.ph.i24.i, label %_log_placement.exit.i, !llvm.loop !32

_log_placement.exit.i:                            ; preds = %bb.dc, %.preheader.i.i, %bb.da
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %i.xp = load i32, ptr %i.vr, align 8
  %i.xq = sext i32 %i.xp to i64
  %i.xr = icmp slt i64 %indvars.iv.next.i57, %i.xq
  br i1 %i.xr, label %bb.cy, label %._crit_edge.i54, !llvm.loop !33

_log_toruses.exit:                                ; preds = %._crit_edge.i54, %bb.d, %.preheader, %._crit_edge208
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.n, ptr %i.xs, align 8
  ret i32 0

.lr.ph207:                                        ; preds = %.preheader, %bb.de
  %.pr324 = phi i32 [ %.pr, %bb.de ], [ %i.st, %.preheader ]
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %bb.de ], [ 0, %.preheader ] ; 2 uses
  %i.xt = load ptr, ptr %i.s, align 8
  %i.xu = getelementptr inbounds nuw [56 x i8], ptr %i.xt, i64 %indvars.iv321 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 32
  %i.xw = load i32, ptr %i.xv, align 8
  %i.xx = icmp sgt i32 %i.xw, 0
  br i1 %i.xx, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.lr.ph207
  %i.xy = load ptr, ptr %i.n, align 8
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  %i.ya = load ptr, ptr %i.xz, align 8
  call void @bit_or(ptr noundef %i.xy, ptr noundef %i.ya) #10
  %.pr.pre = load i32, ptr %i.p, align 8
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph207, %bb.dd
  %.pr = phi i32 [ %.pr324, %.lr.ph207 ], [ %.pr.pre, %bb.dd ] ; 3 uses
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %i.yb = sext i32 %.pr to i64
  %i.yc = icmp slt i64 %indvars.iv.next322, %i.yb
  br i1 %i.yc, label %.lr.ph207, label %._crit_edge208, !llvm.loop !34
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #4

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @bit_alloc(i64 noundef) local_unnamed_addr #5

declare i32 @xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @bit_overlap_any(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @bit_or(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @torus3d_record_update_torus_config(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = sext i32 %1 to i64                       ; 3 uses
  %i.j = getelementptr inbounds [56 x i8], ptr %i.h, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @slurm_xfree(ptr noundef nonnull %i.k) #10
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %bb.c, label %.preheader19

.preheader19:                                     ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader19
  tail call void @slurm_xfree(ptr noundef nonnull %i.l) #10
  br label %bb.c

.lr.ph:                                           ; preds = %.preheader19, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader19 ] ; 2 uses
  %i.q = load ptr, ptr %i.l, align 8
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  tail call void @slurm_xfree(ptr noundef nonnull %i.s) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr %i.n, align 8
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !35

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds [56 x i8], ptr %i.x, i64 %i.i ; 5 uses
  %i.z = load ptr, ptr %i.g, align 8
  %i.aa = getelementptr inbounds [56 x i8], ptr %i.z, i64 %i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call ptr @bit_alloc(i64 noundef %i.ad) #10 ; 7 uses
  store ptr %i.ae, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.af = tail call ptr @slurm_xcalloc(i64 noundef 8, i64 noundef 24, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 736, ptr noundef nonnull @__func__._rebuild_regions) #10
  store ptr %i.af, ptr %i.b, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 52 ; 5 uses
  %i.ah = load i16, ptr %i.ag, align 4            ; 2 uses
  %.not65.i = icmp eq i16 %i.ah, 0
  br i1 %.not65.i, label %._crit_edge62.i, label %.preheader35.lr.ph.i

.preheader35.lr.ph.i:                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 50 ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 5 uses
  %i.al = load i16, ptr %i.ai, align 2            ; 3 uses
  %.not66.i = icmp eq i16 %i.al, 0
  br i1 %.not66.i, label %._crit_edge62.i, label %.preheader35.i

.preheader35.i:                                   ; preds = %.preheader35.lr.ph.i, %._crit_edge54.i
  %i.am = phi i16 [ %i.au, %._crit_edge54.i ], [ %i.ah, %.preheader35.lr.ph.i ] ; 2 uses
  %i.an = phi i16 [ %i.av, %._crit_edge54.i ], [ %i.al, %.preheader35.lr.ph.i ] ; 3 uses
  %i.ao = phi i16 [ %i.aw, %._crit_edge54.i ], [ %i.al, %.preheader35.lr.ph.i ] ; 2 uses
  %indvars.iv102.i = phi i64 [ %.pre109.i, %._crit_edge54.i ], [ 0, %.preheader35.lr.ph.i ] ; 8 uses
  %.02859.i = phi i32 [ %.1.lcssa.i, %._crit_edge54.i ], [ 8, %.preheader35.lr.ph.i ] ; 3 uses
  %.02958.i = phi i32 [ %.130.lcssa.i, %._crit_edge54.i ], [ 0, %.preheader35.lr.ph.i ] ; 3 uses
  %.not67.i = icmp eq i16 %i.ao, 0
  %.pre109.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 4 uses
  br i1 %.not67.i, label %._crit_edge54.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader35.i
  %indvars.i44.i = trunc nuw i64 %.pre109.i to i16 ; 4 uses
  %i.ap = load i16, ptr %i.aj, align 8            ; 2 uses
  %.not68.i = icmp eq i16 %i.ap, 0
  br i1 %.not68.i, label %._crit_edge54.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.aq = trunc nuw i64 %indvars.iv102.i to i16   ; 2 uses
  br label %.preheader.i

._crit_edge62.i:                                  ; preds = %._crit_edge54.i, %.preheader35.lr.ph.i, %bb.c
  %.029.lcssa.i = phi i32 [ 0, %bb.c ], [ 0, %.preheader35.lr.ph.i ], [ %.130.lcssa.i, %._crit_edge54.i ]
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_rebuild_regions.exit, label %bb.s

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %i.ar = phi i16 [ %i.an, %.preheader.preheader.i ], [ %i.az, %._crit_edge.i ]
  %i.as = phi i16 [ %i.ap, %.preheader.preheader.i ], [ %i.ba, %._crit_edge.i ] ; 2 uses
  %indvars.iv97.i = phi i64 [ 0, %.preheader.preheader.i ], [ %.pre110.i, %._crit_edge.i ] ; 10 uses
  %indvars.iv86.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next87.i, %._crit_edge.i ] ; 2 uses
  %.152.i = phi i32 [ %.02859.i, %.preheader.preheader.i ], [ %.2.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.13051.i = phi i32 [ %.02958.i, %.preheader.preheader.i ], [ %.231.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.not69.i = icmp eq i16 %i.as, 0
  %.pre110.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 4 uses
  br i1 %.not69.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.at = trunc nuw i64 %indvars.iv97.i to i16    ; 2 uses
  br label %bb.d

._crit_edge54.loopexit72.i:                       ; preds = %._crit_edge.i
  %.pre108.i = load i16, ptr %i.ag, align 4
  br label %._crit_edge54.i

._crit_edge54.i:                                  ; preds = %._crit_edge54.loopexit72.i, %.preheader.lr.ph.i, %.preheader35.i
  %i.au = phi i16 [ %i.am, %.preheader.lr.ph.i ], [ %.pre108.i, %._crit_edge54.loopexit72.i ], [ %i.am, %.preheader35.i ] ; 2 uses
  %i.av = phi i16 [ %i.an, %.preheader.lr.ph.i ], [ %i.az, %._crit_edge54.loopexit72.i ], [ %i.an, %.preheader35.i ]
  %i.aw = phi i16 [ %i.ao, %.preheader.lr.ph.i ], [ %i.az, %._crit_edge54.loopexit72.i ], [ 0, %.preheader35.i ]
  %.130.lcssa.i = phi i32 [ %.02958.i, %.preheader.lr.ph.i ], [ %.231.lcssa.i, %._crit_edge54.loopexit72.i ], [ %.02958.i, %.preheader35.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.02859.i, %.preheader.lr.ph.i ], [ %.2.lcssa.i, %._crit_edge54.loopexit72.i ], [ %.02859.i, %.preheader35.i ]
  %i.ax = zext i16 %i.au to i64
  %i.ay = icmp samesign ult i64 %.pre109.i, %i.ax
  br i1 %i.ay, label %.preheader35.i, label %._crit_edge62.i, !llvm.loop !36

._crit_edge.loopexit.i:                           ; preds = %bb.r
  %.pre.i = load i16, ptr %i.ai, align 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.az = phi i16 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.ar, %.preheader.i ] ; 4 uses
  %i.ba = phi i16 [ %i.fk, %._crit_edge.loopexit.i ], [ 0, %.preheader.i ]
  %.231.lcssa.i = phi i32 [ %.332.i, %._crit_edge.loopexit.i ], [ %.13051.i, %.preheader.i ] ; 2 uses
  %.2.lcssa.i = phi i32 [ %.3.i, %._crit_edge.loopexit.i ], [ %.152.i, %.preheader.i ] ; 2 uses
  %i.bb = zext i16 %i.az to i64
  %i.bc = icmp samesign ult i64 %.pre110.i, %i.bb
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1
  br i1 %i.bc, label %.preheader.i, label %._crit_edge54.loopexit72.i, !llvm.loop !37

bb.d:                                             ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.r ] ; 11 uses
  %i.bd = phi i16 [ %i.as, %.lr.ph.i ], [ %i.fk, %bb.r ]
  %.246.i = phi i32 [ %.152.i, %.lr.ph.i ], [ %.3.i, %bb.r ] ; 5 uses
  %.23145.i = phi i32 [ %.13051.i, %.lr.ph.i ], [ %.332.i, %bb.r ] ; 5 uses
  %i.be = zext i16 %i.bd to i64
  %i.bf = load i16, ptr %i.ai, align 2
  %i.bg = zext i16 %i.bf to i64
  %i.bh = mul nuw nsw i64 %indvars.iv102.i, %i.bg
  %reass.add.i.i = add nuw nsw i64 %i.bh, %indvars.iv97.i
  %reass.mul.i.i = mul nuw nsw i64 %reass.add.i.i, %i.be
  %i.bi = add nuw nsw i64 %reass.mul.i.i, %indvars.iv.i
  %i.bj = load ptr, ptr %i.ak, align 8
  %i.bk = and i64 %i.bi, 4294967295               ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = icmp eq i32 %i.bm, -2
  br i1 %i.bn, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.bk) #10
  %.not24.i = icmp eq i32 %i.bo, 0
  br i1 %.not24.i, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.e, %bb.g
  %indvars.iv81.i = phi i64 [ %indvars.iv.next82.i, %bb.g ], [ %indvars.iv.i, %bb.e ] ; 2 uses
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1 ; 7 uses
  %i.bp = load i16, ptr %i.aj, align 8
  %i.bq = zext i16 %i.bp to i64                   ; 2 uses
  %i.br = icmp samesign ult i64 %indvars.iv.next82.i, %i.bq
  %.pre284.i.i = load i16, ptr %i.ai, align 2     ; 3 uses
  br i1 %i.br, label %bb.f, label %.thread.i.i

bb.f:                                             ; preds = %.preheader
  %i.bs = zext i16 %.pre284.i.i to i64
  %i.bt = mul nuw nsw i64 %indvars.iv102.i, %i.bs
  %reass.add.i.i.i = add nuw nsw i64 %i.bt, %indvars.iv97.i
  %reass.mul.i.i.i = mul nuw nsw i64 %reass.add.i.i.i, %i.bq
  %i.bu = add nuw nsw i64 %reass.mul.i.i.i, %indvars.iv.next82.i
  %i.bv = load ptr, ptr %i.ak, align 8
  %i.bw = and i64 %i.bu, 4294967295               ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = icmp eq i32 %i.by, -2
  br i1 %i.bz, label %.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.bw) #10
  %.not.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i, label %.preheader, label %..thread_crit_edge.i.i

..thread_crit_edge.i.i:                           ; preds = %bb.g
  %.pre.i.i = load i16, ptr %i.ai, align 2
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.preheader, %bb.f, %..thread_crit_edge.i.i
  %i.cb = phi i16 [ %.pre.i.i, %..thread_crit_edge.i.i ], [ %.pre284.i.i, %bb.f ], [ %.pre284.i.i, %.preheader ]
  %indvars124.i = trunc i64 %indvars.iv.next82.i to i16 ; 3 uses
  %i.cc = zext i16 %i.cb to i64
  %i.cd = icmp samesign ult i64 %.pre110.i, %i.cc
  br i1 %i.cd, label %.preheader179.us.i.i, label %.thread167.i.i

.preheader179.us.i.i:                             ; preds = %.thread.i.i, %..critedge.loopexit_crit_edge.us.i.i
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i, %..critedge.loopexit_crit_edge.us.i.i ], [ %indvars.iv86.i, %.thread.i.i ] ; 4 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %indvars.iv81.i
  br i1 %exitcond.not.i.i, label %..critedge.loopexit_crit_edge.us.i.i, label %bb.i, !llvm.loop !38

bb.i:                                             ; preds = %bb.h, %.preheader179.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.i, %.preheader179.us.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 3 uses
  %i.ce = load i16, ptr %i.aj, align 8
  %i.cf = zext i16 %i.ce to i64
  %i.cg = load i16, ptr %i.ai, align 2
  %i.ch = zext i16 %i.cg to i64
  %i.ci = mul nuw nsw i64 %indvars.iv102.i, %i.ch
  %reass.add.i154.us.i.i = add nuw nsw i64 %i.ci, %indvars.iv88.i
  %reass.mul.i155.us.i.i = mul nuw nsw i64 %reass.add.i154.us.i.i, %i.cf
  %i.cj = add nuw nsw i64 %reass.mul.i155.us.i.i, %indvars.iv.i.i
  %i.ck = load ptr, ptr %i.ak, align 8
  %i.cl = and i64 %i.cj, 4294967295               ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = icmp eq i32 %i.cn, -2
  br i1 %i.co, label %.thread167.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.cl) #10
  %.not146.us.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not146.us.i.i, label %bb.h, label %.thread167.i.i

..critedge.loopexit_crit_edge.us.i.i:             ; preds = %bb.h
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 3 uses
  %i.cq = load i16, ptr %i.ai, align 2
  %i.cr = zext i16 %i.cq to i64
  %i.cs = icmp samesign ult i64 %indvars.iv.next89.i, %i.cr
  br i1 %i.cs, label %.preheader179.us.i.i, label %.thread167.i.i

.thread167.i.i:                                   ; preds = %..critedge.loopexit_crit_edge.us.i.i, %bb.i, %bb.j, %.thread.i.i
  %.0119184.i.i.in = phi i64 [ %indvars.iv88.i, %bb.i ], [ %.pre110.i, %.thread.i.i ], [ %indvars.iv88.i, %bb.j ], [ %indvars.iv.next89.i, %..critedge.loopexit_crit_edge.us.i.i ]
  %.0119184.i.i.in.fr = freeze i64 %.0119184.i.i.in ; 2 uses
  %.0119184.i.i = trunc i64 %.0119184.i.i.in.fr to i16
  %i.ct = and i64 %.0119184.i.i.in.fr, 65535      ; 6 uses
  %i.cu = icmp samesign ult i64 %indvars.iv97.i, %i.ct
  br i1 %i.cu, label %.thread167.split.us.i.i, label %.thread167.split.i.i

.thread167.split.us.i.i:                          ; preds = %.thread167.i.i
  %i.cv = and i64 %indvars.iv.next82.i, 65535     ; 2 uses
  %.not233.i.i = icmp samesign ult i64 %indvars.iv.i, %i.cv
  %i.cw = load i16, ptr %i.ag, align 4            ; 2 uses
  br i1 %.not233.i.i, label %.thread167.split.us.split.preheader.i.i, label %.thread167.split.us.split.us.i.i

.thread167.split.us.split.preheader.i.i:          ; preds = %.thread167.split.us.i.i
  %2 = icmp ugt i16 %i.cw, %indvars.i44.i
  br i1 %2, label %.preheader178.us.i.i, label %.split.us.i.i

.thread167.split.us.split.us.i.i:                 ; preds = %.thread167.split.us.i.i
  %spec.select.i.i = call i16 @llvm.umax.i16(i16 %indvars.i44.i, i16 %i.cw)
  br label %.split.us.i.i

.thread167.split.us.split.i.loopexit.i:           ; preds = %.thread170.us.i.i
  %indvars.iv.next42 = add nuw i64 %indvars.iv41, 1 ; 2 uses
  %indvars94.i = trunc i64 %indvars.iv.next42 to i16 ; 2 uses
  %3 = load i16, ptr %i.ag, align 4
  %4 = icmp ugt i16 %3, %indvars94.i
  br i1 %4, label %.preheader178.us.i.i, label %.split.us.i.i, !llvm.loop !39

bb.k:                                             ; preds = %bb.m
  %indvars.iv.next245.i.i = add nuw nsw i64 %indvars.iv244.i.i, 1 ; 2 uses
  %exitcond249.not.i.i = icmp eq i64 %indvars.iv.next245.i.i, %i.cv
  br i1 %exitcond249.not.i.i, label %.thread170.us.i.i, label %bb.l, !llvm.loop !40

bb.l:                                             ; preds = %.preheader177.us206.i.i, %bb.k
  %indvars.iv244.i.i = phi i64 [ %indvars.iv.i, %.preheader177.us206.i.i ], [ %indvars.iv.next245.i.i, %bb.k ] ; 2 uses
  %i.cx = load i16, ptr %i.aj, align 8
  %i.cy = zext i16 %i.cx to i64
  %i.cz = load i16, ptr %i.ai, align 2
  %i.da = zext i16 %i.cz to i64
  %i.db = mul nuw nsw i64 %5, %i.da
  %reass.add.i156.us.i.i = add nuw nsw i64 %i.db, %indvars.iv250.i.i
  %reass.mul.i157.us.i.i = mul nuw nsw i64 %reass.add.i156.us.i.i, %i.cy
  %i.dc = add nuw nsw i64 %reass.mul.i157.us.i.i, %indvars.iv244.i.i
  %i.dd = load ptr, ptr %i.ak, align 8
  %i.de = and i64 %i.dc, 4294967295               ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = icmp eq i32 %i.dg, -2
  br i1 %i.dh, label %.split.us.i.i.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.di = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.de) #10
  %.not148.us.i.i = icmp eq i32 %i.di, 0
  br i1 %.not148.us.i.i, label %bb.k, label %.split.us.i.i.loopexit

.thread170.us.i.i:                                ; preds = %bb.k
  %indvars.iv.next251.i.i = add nuw nsw i64 %indvars.iv250.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next251.i.i, %i.ct
  br i1 %exitcond.not.i, label %.thread167.split.us.split.i.loopexit.i, label %.preheader177.us206.i.i, !llvm.loop !39

.preheader177.us206.i.i:                          ; preds = %.preheader178.us.i.i, %.thread170.us.i.i
  %indvars.iv250.i.i = phi i64 [ %indvars.iv97.i, %.preheader178.us.i.i ], [ %indvars.iv.next251.i.i, %.thread170.us.i.i ] ; 2 uses
  br label %bb.l

.preheader178.us.i.i:                             ; preds = %.thread167.split.us.split.preheader.i.i, %.thread167.split.us.split.i.loopexit.i
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %.thread167.split.us.split.i.loopexit.i ], [ %.pre109.i, %.thread167.split.us.split.preheader.i.i ] ; 3 uses
  %5 = and i64 %indvars.iv41, 65535
  br label %.preheader177.us206.i.i

.thread167.split.i.i:                             ; preds = %.thread167.i.i
  %i.dj = load i16, ptr %i.ag, align 4
  %umax243.i.i = call i16 @llvm.umax.i16(i16 %i.dj, i16 %indvars.i44.i)
  br label %.split.us.i.i

.split.us.i.i.loopexit:                           ; preds = %bb.m, %bb.l
  %i.dk = trunc i64 %indvars.iv41 to i16
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.thread167.split.us.split.i.loopexit.i, %.split.us.i.i.loopexit, %.thread167.split.i.i, %.thread167.split.us.split.us.i.i, %.thread167.split.us.split.preheader.i.i
  %.us-phi210.i.i = phi i16 [ %spec.select.i.i, %.thread167.split.us.split.us.i.i ], [ %umax243.i.i, %.thread167.split.i.i ], [ %indvars.i44.i, %.thread167.split.us.split.preheader.i.i ], [ %i.dk, %.split.us.i.i.loopexit ], [ %indvars94.i, %.thread167.split.us.split.i.loopexit.i ] ; 2 uses
  %i.dl = zext i16 %.us-phi210.i.i to i64         ; 3 uses
  %i.dm = icmp samesign ult i64 %indvars.iv102.i, %i.dl ; 2 uses
  br i1 %i.dm, label %.preheader176.lr.ph.i.i, label %._crit_edge219.split.i.i

.preheader176.lr.ph.i.i:                          ; preds = %.split.us.i.i
  %i.dn = icmp samesign uge i64 %indvars.iv97.i, %i.ct
  %i.do = and i64 %indvars.iv.next82.i, 65535
  %i.dp = icmp samesign uge i64 %indvars.iv.i, %i.do
  %brmerge.i.i = or i1 %i.dp, %i.dn
  br i1 %brmerge.i.i, label %._crit_edge219.split.i.i, label %.preheader176.i.i

.preheader176.i.i:                                ; preds = %.preheader176.lr.ph.i.i, %._crit_edge217.i.i
  %indvars.iv263.i.i = phi i64 [ %indvars.iv.next264.i.i, %._crit_edge217.i.i ], [ %indvars.iv102.i, %.preheader176.lr.ph.i.i ] ; 2 uses
  br label %.preheader175.i.i

._crit_edge219.split.i.i:                         ; preds = %._crit_edge217.i.i, %.preheader176.lr.ph.i.i, %.split.us.i.i
  %.not147.i.i = icmp slt i32 %.23145.i, %.246.i
  br i1 %.not147.i.i, label %bb.p, label %bb.o

.preheader175.i.i:                                ; preds = %._crit_edge.i.i, %.preheader176.i.i
  %indvars.iv258.i.i = phi i64 [ %indvars.iv97.i, %.preheader176.i.i ], [ %indvars.iv.next259.i.i, %._crit_edge.i.i ] ; 2 uses
  br label %bb.n

._crit_edge217.i.i:                               ; preds = %._crit_edge.i.i
  %indvars.iv.next264.i.i = add nuw nsw i64 %indvars.iv263.i.i, 1 ; 2 uses
  %exitcond267.not.i.i.a = icmp eq i64 %indvars.iv.next264.i.i, %i.dl
  br i1 %exitcond267.not.i.i.a, label %._crit_edge219.split.i.i, label %.preheader176.i.i, !llvm.loop !41

._crit_edge.i.i:                                  ; preds = %bb.n
  %indvars.iv.next259.i.i = add nuw nsw i64 %indvars.iv258.i.i, 1 ; 2 uses
  %exitcond262.not.i.i = icmp eq i64 %indvars.iv.next259.i.i, %i.ct
  br i1 %exitcond262.not.i.i, label %._crit_edge217.i.i, label %.preheader175.i.i, !llvm.loop !42

bb.n:                                             ; preds = %bb.n, %.preheader175.i.i
  %indvars.iv253.i.i = phi i64 [ %indvars.iv.i, %.preheader175.i.i ], [ %indvars.iv.next254.i.i, %bb.n ] ; 2 uses
  %i.dq = load i16, ptr %i.aj, align 8
  %i.dr = zext i16 %i.dq to i64
  %i.ds = load i16, ptr %i.ai, align 2
  %i.dt = zext i16 %i.ds to i64
  %i.du = mul nuw nsw i64 %indvars.iv263.i.i, %i.dt
  %reass.add.i158.i.i = add nuw nsw i64 %i.du, %indvars.iv258.i.i
  %reass.mul.i159.i.i = mul nuw nsw i64 %reass.add.i158.i.i, %i.dr
  %i.dv = add nuw nsw i64 %reass.mul.i159.i.i, %indvars.iv253.i.i
  %i.dw = and i64 %i.dv, 4294967295
  call void @bit_set(ptr noundef %i.ae, i64 noundef %i.dw) #10
  %indvars.iv.next254.i.i = add nuw nsw i64 %indvars.iv253.i.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next254.i.i to i16
  %exitcond = icmp eq i16 %lftr.wideiv, %indvars124.i
  br i1 %exitcond, label %._crit_edge.i.i, label %bb.n, !llvm.loop !43

bb.o:                                             ; preds = %._crit_edge219.split.i.i
  %i.dx = shl nsw i32 %.246.i, 1                  ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.b, i64 noundef %i.dy, i64 noundef 24, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 699, ptr noundef nonnull @__func__._build_region) #10 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge219.split.i.i
  %.4.i = phi i32 [ %.246.i, %._crit_edge219.split.i.i ], [ %i.dx, %bb.o ]
  %i.ea = load ptr, ptr %i.b, align 8
  %i.eb = add nsw i32 %.23145.i, 1
  %i.ec = sext i32 %.23145.i to i64
  %i.ed = getelementptr inbounds [24 x i8], ptr %i.ea, i64 %i.ec ; 7 uses
  %i.ee = trunc nuw i64 %indvars.iv.i to i16      ; 2 uses
  store i16 %i.ee, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  store i16 %i.at, ptr %i.ef, align 2
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i16 %i.aq, ptr %i.eg, align 4
  %i.eh = sub i16 %indvars124.i, %i.ee
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 6
  store i16 %i.eh, ptr %i.ei, align 2
  %i.ej = sub i16 %.0119184.i.i, %i.at
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i16 %i.ej, ptr %i.ek, align 8
  %i.el = sub i16 %.us-phi210.i.i, %i.aq
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 10
  store i16 %i.el, ptr %i.em, align 2
  %i.en = call ptr @hostlist_create(ptr noundef null) #10 ; 3 uses
  br i1 %i.dm, label %.preheader174.lr.ph.i.i, label %_build_region.exit.i

.preheader174.lr.ph.i.i:                          ; preds = %bb.p
  %i.eo = icmp samesign uge i64 %indvars.iv97.i, %i.ct
  %i.ep = and i64 %indvars.iv.next82.i, 65535
  %i.eq = icmp samesign uge i64 %indvars.iv.i, %i.ep
  %brmerge232.i.i = or i1 %i.eq, %i.eo
  br i1 %brmerge232.i.i, label %_build_region.exit.i, label %.preheader174.i.i

.preheader174.i.i:                                ; preds = %.preheader174.lr.ph.i.i, %._crit_edge224.i.i
  %indvars.iv279.i.i = phi i64 [ %indvars.iv.next280.i.i, %._crit_edge224.i.i ], [ %indvars.iv102.i, %.preheader174.lr.ph.i.i ] ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge222.i.i, %.preheader174.i.i
  %indvars.iv274.i.i.a = phi i64 [ %indvars.iv97.i, %.preheader174.i.i ], [ %indvars.iv.next275.i.i.a, %._crit_edge222.i.i ] ; 2 uses
  br label %bb.q

._crit_edge224.i.i:                               ; preds = %._crit_edge222.i.i
  %indvars.iv.next280.i.i = add nuw nsw i64 %indvars.iv279.i.i, 1 ; 2 uses
  %exitcond283.not.i.i = icmp eq i64 %indvars.iv.next280.i.i, %i.dl
  br i1 %exitcond283.not.i.i, label %_build_region.exit.i, label %.preheader174.i.i, !llvm.loop !44

._crit_edge222.i.i:                               ; preds = %bb.q
  %indvars.iv.next275.i.i.a = add nuw nsw i64 %indvars.iv274.i.i.a, 1 ; 2 uses
  %exitcond278.not.i.i = icmp eq i64 %indvars.iv.next275.i.i.a, %i.ct
  br i1 %exitcond278.not.i.i, label %._crit_edge224.i.i, label %.preheader.i.i, !llvm.loop !45

bb.q:                                             ; preds = %bb.q, %.preheader.i.i
  %indvars.iv268.i.i = phi i64 [ %indvars.iv.i, %.preheader.i.i ], [ %indvars.iv.next269.i.i, %bb.q ] ; 2 uses
  %i.er = load i16, ptr %i.aj, align 8
  %i.es = zext i16 %i.er to i64
  %i.et = load i16, ptr %i.ai, align 2
  %i.eu = zext i16 %i.et to i64
  %i.ev = mul nuw nsw i64 %indvars.iv279.i.i, %i.eu
  %reass.add.i160.i.i = add nuw nsw i64 %i.ev, %indvars.iv274.i.i.a
  %reass.mul.i161.i.i = mul nuw nsw i64 %reass.add.i160.i.i, %i.es
  %i.ew = add nuw nsw i64 %reass.mul.i161.i.i, %indvars.iv268.i.i
  %i.ex = load ptr, ptr %i.ak, align 8
  %i.ey = and i64 %i.ew, 4294967295
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = load ptr, ptr @node_record_table_ptr, align 8
  %i.fc = zext i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 280
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = call i32 @hostlist_push_host(ptr noundef %i.en, ptr noundef %i.fg) #10 ; 0 uses
  %indvars.iv.next269.i.i = add nuw nsw i64 %indvars.iv268.i.i, 1 ; 2 uses
  %lftr.wideiv44 = trunc i64 %indvars.iv.next269.i.i to i16
  %exitcond45 = icmp eq i16 %lftr.wideiv44, %indvars124.i
  br i1 %exitcond45, label %._crit_edge222.i.i, label %bb.q, !llvm.loop !46

_build_region.exit.i:                             ; preds = %._crit_edge224.i.i, %.preheader174.lr.ph.i.i, %bb.p
  %i.fi = call ptr @hostlist_ranged_string_xmalloc(ptr noundef %i.en) #10
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store ptr %i.fi, ptr %i.fj, align 8
  call void @hostlist_destroy(ptr noundef %i.en) #10
  br label %bb.r

bb.r:                                             ; preds = %_build_region.exit.i, %bb.e, %bb.d
  %.332.i = phi i32 [ %.23145.i, %bb.d ], [ %i.eb, %_build_region.exit.i ], [ %.23145.i, %bb.e ] ; 2 uses
  %.3.i = phi i32 [ %.246.i, %bb.d ], [ %.4.i, %_build_region.exit.i ], [ %.246.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fk = load i16, ptr %i.aj, align 8            ; 3 uses
  %i.fl = zext i16 %i.fk to i64
  %i.fm = icmp samesign ult i64 %indvars.iv.next.i, %i.fl
  br i1 %i.fm, label %bb.d, label %._crit_edge.loopexit.i, !llvm.loop !47

bb.s:                                             ; preds = %._crit_edge62.i
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #10
  br label %_rebuild_regions.exit

_rebuild_regions.exit:                            ; preds = %._crit_edge62.i, %bb.s
  %i.fn = load ptr, ptr %i.b, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.fn, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 %.029.lcssa.i, ptr %i.fp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %_rebuild_regions.exit
  ret void
}

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @torus3d_record_table_destroy(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph20, label %.loopexit

.lr.ph20:                                         ; preds = %.preheader, %._crit_edge
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %._crit_edge ], [ 0, %.preheader ] ; 8 uses
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %indvars.iv23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  tail call void @slurm_xfree(ptr noundef nonnull %i.i) #10
  %i.j = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %indvars.iv23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %bb.d, label %bb.c

end_hunk_0
