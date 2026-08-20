inline.NumInlined: 33
inline.NumDeleted: 15
begin_hunk_0_@torus3d_record_validate:bb.a
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
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %._crit_edge54.i ], [ 1, %.preheader35.lr.ph.i ] ; 2 uses
  %i.am = phi i16 [ %i.av, %._crit_edge54.i ], [ %i.ah, %.preheader35.lr.ph.i ] ; 2 uses
  %i.an = phi i16 [ %i.aw, %._crit_edge54.i ], [ %i.al, %.preheader35.lr.ph.i ] ; 3 uses
  %i.ao = phi i16 [ %i.ax, %._crit_edge54.i ], [ %i.al, %.preheader35.lr.ph.i ] ; 2 uses
  %indvars.iv102.i = phi i64 [ %.pre109.i, %._crit_edge54.i ], [ 0, %.preheader35.lr.ph.i ] ; 8 uses
  %.02859.i = phi i32 [ %.1.lcssa.i, %._crit_edge54.i ], [ 8, %.preheader35.lr.ph.i ] ; 3 uses
  %.02958.i = phi i32 [ %.130.lcssa.i, %._crit_edge54.i ], [ 0, %.preheader35.lr.ph.i ] ; 3 uses
  %.not67.i = icmp eq i16 %i.ao, 0
  %.pre109.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 4 uses
  br i1 %.not67.i, label %._crit_edge54.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader35.i
  %i.ap = load i16, ptr %i.aj, align 8            ; 2 uses
  %.not68.i = icmp eq i16 %i.ap, 0
  br i1 %.not68.i, label %._crit_edge54.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.aq = trunc nuw i64 %.pre109.i to i16         ; 3 uses
  %i.ar = trunc nuw i64 %indvars.iv102.i to i16   ; 2 uses
  br label %.preheader.i

._crit_edge62.i:                                  ; preds = %._crit_edge54.i, %.preheader35.lr.ph.i, %bb.c
  %.029.lcssa.i = phi i32 [ 0, %bb.c ], [ 0, %.preheader35.lr.ph.i ], [ %.130.lcssa.i, %._crit_edge54.i ]
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_rebuild_regions.exit, label %bb.s

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %i.as = phi i16 [ %i.an, %.preheader.preheader.i ], [ %i.ba, %._crit_edge.i ]
  %i.at = phi i16 [ %i.ap, %.preheader.preheader.i ], [ %i.bb, %._crit_edge.i ] ; 2 uses
  %indvars.iv97.i = phi i64 [ 0, %.preheader.preheader.i ], [ %.pre110.i, %._crit_edge.i ] ; 10 uses
  %indvars.iv86.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next87.i, %._crit_edge.i ] ; 2 uses
  %.152.i = phi i32 [ %.02859.i, %.preheader.preheader.i ], [ %.2.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.13051.i = phi i32 [ %.02958.i, %.preheader.preheader.i ], [ %.231.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.not69.i = icmp eq i16 %i.at, 0
  %.pre110.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 4 uses
  br i1 %.not69.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.au = trunc nuw i64 %indvars.iv97.i to i16    ; 3 uses
  %2 = add i16 %i.au, 2
  %3 = trunc nuw i64 %.pre110.i to i16
  br label %bb.d

._crit_edge54.loopexit72.i:                       ; preds = %._crit_edge.i
  %.pre108.i = load i16, ptr %i.ag, align 4
  br label %._crit_edge54.i

._crit_edge54.i:                                  ; preds = %._crit_edge54.loopexit72.i, %.preheader.lr.ph.i, %.preheader35.i
  %i.av = phi i16 [ %i.am, %.preheader.lr.ph.i ], [ %.pre108.i, %._crit_edge54.loopexit72.i ], [ %i.am, %.preheader35.i ] ; 2 uses
  %i.aw = phi i16 [ %i.an, %.preheader.lr.ph.i ], [ %i.ba, %._crit_edge54.loopexit72.i ], [ %i.an, %.preheader35.i ]
  %i.ax = phi i16 [ %i.ao, %.preheader.lr.ph.i ], [ %i.ba, %._crit_edge54.loopexit72.i ], [ 0, %.preheader35.i ]
  %.130.lcssa.i = phi i32 [ %.02958.i, %.preheader.lr.ph.i ], [ %.231.lcssa.i, %._crit_edge54.loopexit72.i ], [ %.02958.i, %.preheader35.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.02859.i, %.preheader.lr.ph.i ], [ %.2.lcssa.i, %._crit_edge54.loopexit72.i ], [ %.02859.i, %.preheader35.i ]
  %i.ay = zext i16 %i.av to i64
  %i.az = icmp samesign ult i64 %.pre109.i, %i.ay
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br i1 %i.az, label %.preheader35.i, label %._crit_edge62.i, !llvm.loop !36

._crit_edge.loopexit.i:                           ; preds = %bb.r
  %.pre.i = load i16, ptr %i.ai, align 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.ba = phi i16 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.as, %.preheader.i ] ; 4 uses
  %i.bb = phi i16 [ %i.fq, %._crit_edge.loopexit.i ], [ 0, %.preheader.i ]
  %.231.lcssa.i = phi i32 [ %.332.i, %._crit_edge.loopexit.i ], [ %.13051.i, %.preheader.i ] ; 2 uses
  %.2.lcssa.i = phi i32 [ %.3.i, %._crit_edge.loopexit.i ], [ %.152.i, %.preheader.i ] ; 2 uses
  %i.bc = zext i16 %i.ba to i64
  %i.bd = icmp samesign ult i64 %.pre110.i, %i.bc
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1
  br i1 %i.bd, label %.preheader.i, label %._crit_edge54.loopexit72.i, !llvm.loop !37

bb.d:                                             ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.r ] ; 12 uses
  %i.be = phi i16 [ %i.at, %.lr.ph.i ], [ %i.fq, %bb.r ]
  %.246.i = phi i32 [ %.152.i, %.lr.ph.i ], [ %.3.i, %bb.r ] ; 5 uses
  %.23145.i = phi i32 [ %.13051.i, %.lr.ph.i ], [ %.332.i, %bb.r ] ; 5 uses
  %i.bf = zext i16 %i.be to i64
  %i.bg = load i16, ptr %i.ai, align 2
  %i.bh = zext i16 %i.bg to i64
  %i.bi = mul nuw nsw i64 %indvars.iv102.i, %i.bh
  %reass.add.i.i = add nuw nsw i64 %i.bi, %indvars.iv97.i
  %reass.mul.i.i = mul nuw nsw i64 %reass.add.i.i, %i.bf
  %i.bj = add nuw nsw i64 %reass.mul.i.i, %indvars.iv.i
  %i.bk = load ptr, ptr %i.ak, align 8
  %i.bl = and i64 %i.bj, 4294967295               ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp eq i32 %i.bn, -2
  br i1 %i.bo, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.bl) #10
  %.not24.i = icmp eq i32 %i.bp, 0
  br i1 %.not24.i, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.e, %bb.g
  %indvars.iv81.i = phi i64 [ %indvars.iv.next82.i, %bb.g ], [ %indvars.iv.i, %bb.e ] ; 3 uses
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1 ; 7 uses
  %i.bq = load i16, ptr %i.aj, align 8
  %i.br = zext i16 %i.bq to i64                   ; 2 uses
  %i.bs = icmp samesign ult i64 %indvars.iv.next82.i, %i.br
  %.pre284.i.i = load i16, ptr %i.ai, align 2     ; 3 uses
  br i1 %i.bs, label %bb.f, label %.thread.i.i

bb.f:                                             ; preds = %.preheader
  %i.bt = zext i16 %.pre284.i.i to i64
  %i.bu = mul nuw nsw i64 %indvars.iv102.i, %i.bt
  %reass.add.i.i.i = add nuw nsw i64 %i.bu, %indvars.iv97.i
  %reass.mul.i.i.i = mul nuw nsw i64 %reass.add.i.i.i, %i.br
  %i.bv = add nuw nsw i64 %reass.mul.i.i.i, %indvars.iv.next82.i
  %i.bw = load ptr, ptr %i.ak, align 8
  %i.bx = and i64 %i.bv, 4294967295               ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = icmp eq i32 %i.bz, -2
  br i1 %i.ca, label %.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cb = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.bx) #10
  %.not.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i, label %.preheader, label %..thread_crit_edge.i.i

..thread_crit_edge.i.i:                           ; preds = %bb.g
  %.pre.i.i = load i16, ptr %i.ai, align 2
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.preheader, %bb.f, %..thread_crit_edge.i.i
  %i.cc = phi i16 [ %.pre.i.i, %..thread_crit_edge.i.i ], [ %.pre284.i.i, %bb.f ], [ %.pre284.i.i, %.preheader ] ; 2 uses
  %indvars124.i = trunc i64 %indvars.iv.next82.i to i16 ; 3 uses
  %i.cd = zext i16 %i.cc to i64
  %i.ce = icmp samesign ult i64 %.pre110.i, %i.cd
  br i1 %i.ce, label %.preheader179.lr.ph.i.i, label %.thread167.i.i

.preheader179.lr.ph.i.i:                          ; preds = %.thread.i.i
  %.not173186.i.i.not = icmp samesign ugt i64 %indvars.iv.i, %indvars.iv81.i
  br i1 %.not173186.i.i.not, label %.preheader179.lr.ph.split.i.i, label %.preheader179.us.i.i

.preheader179.us.i.i:                             ; preds = %.preheader179.lr.ph.i.i, %..critedge.loopexit_crit_edge.us.i.i
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i, %..critedge.loopexit_crit_edge.us.i.i ], [ %indvars.iv86.i, %.preheader179.lr.ph.i.i ] ; 3 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %indvars.iv81.i
  br i1 %exitcond.not.i.i, label %..critedge.loopexit_crit_edge.us.i.i, label %bb.i, !llvm.loop !38

bb.i:                                             ; preds = %bb.h, %.preheader179.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.i, %.preheader179.us.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 3 uses
  %i.cf = load i16, ptr %i.aj, align 8
  %i.cg = zext i16 %i.cf to i64
  %i.ch = load i16, ptr %i.ai, align 2
  %i.ci = zext i16 %i.ch to i64
  %i.cj = mul nuw nsw i64 %indvars.iv102.i, %i.ci
  %reass.add.i154.us.i.i = add nuw nsw i64 %i.cj, %indvars.iv88.i
  %reass.mul.i155.us.i.i = mul nuw nsw i64 %reass.add.i154.us.i.i, %i.cg
  %i.ck = add nuw nsw i64 %reass.mul.i155.us.i.i, %indvars.iv.i.i
  %i.cl = load ptr, ptr %i.ak, align 8
  %i.cm = and i64 %i.ck, 4294967295               ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp eq i32 %i.co, -2
  br i1 %i.cp, label %.thread167.i.loopexit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.cm) #10
  %.not146.us.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not146.us.i.i, label %bb.h, label %.thread167.i.loopexit.i

..critedge.loopexit_crit_edge.us.i.i:             ; preds = %bb.h
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 3 uses
  %i.cr = load i16, ptr %i.ai, align 2
  %i.cs = zext i16 %i.cr to i64
  %i.ct = icmp samesign ult i64 %indvars.iv.next89.i, %i.cs
  br i1 %i.ct, label %.preheader179.us.i.i, label %.thread167.i.loopexit71.i

.preheader179.lr.ph.split.i.i:                    ; preds = %.preheader179.lr.ph.i.i
  %umax.i.i = call i16 @llvm.umax.i16(i16 %i.cc, i16 %2)
  br label %.thread167.i.i

.thread167.i.loopexit71.i:                        ; preds = %..critedge.loopexit_crit_edge.us.i.i
  %4 = trunc nuw i64 %indvars.iv.next89.i to i16
  br label %.thread167.i.i

.thread167.i.loopexit.i:                          ; preds = %bb.j, %bb.i
  %5 = trunc nuw i64 %indvars.iv88.i to i16
  br label %.thread167.i.i

.thread167.i.i:                                   ; preds = %.thread167.i.loopexit.i, %.thread167.i.loopexit71.i, %.preheader179.lr.ph.split.i.i, %.thread.i.i
  %.0119184.i.i = phi i16 [ %umax.i.i, %.preheader179.lr.ph.split.i.i ], [ %3, %.thread.i.i ], [ %4, %.thread167.i.loopexit71.i ], [ %5, %.thread167.i.loopexit.i ]
  %.0119184.fr.i.i = freeze i16 %.0119184.i.i     ; 2 uses
  %6 = zext i16 %.0119184.fr.i.i to i64           ; 6 uses
  %i.cu = icmp samesign ult i64 %indvars.iv97.i, %6
  br i1 %i.cu, label %.thread167.split.us.i.i, label %.thread167.split.i.i

.thread167.split.us.i.i:                          ; preds = %.thread167.i.i
  %i.cv = and i64 %indvars.iv.next82.i, 65535     ; 2 uses
  %.not233.i.i = icmp samesign ult i64 %indvars.iv.i, %i.cv
  %i.cw = load i16, ptr %i.ag, align 4            ; 2 uses
  br i1 %.not233.i.i, label %.thread167.split.us.split.preheader.i.i, label %.thread167.split.us.split.us.i.i

.thread167.split.us.split.preheader.i.i:          ; preds = %.thread167.split.us.i.i
  %i.cx = zext i16 %i.cw to i64
  %i.cy = icmp samesign ult i64 %.pre109.i, %i.cx
  br i1 %i.cy, label %.preheader178.us.i.i, label %.split.us.i.i

.thread167.split.us.split.us.i.i:                 ; preds = %.thread167.split.us.i.i
  %spec.select.i.i = call i16 @llvm.umax.i16(i16 %i.aq, i16 %i.cw)
  br label %.split.us.i.i

.thread167.split.us.split.i.loopexit.i:           ; preds = %.thread170.us.i.i
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 3 uses
  %i.cz = load i16, ptr %i.ag, align 4
  %i.da = zext i16 %i.cz to i64
  %i.db = icmp samesign ult i64 %indvars.iv.next42, %i.da
  br i1 %i.db, label %.preheader178.us.i.i, label %.split.us.i.i.loopexit29, !llvm.loop !39

bb.k:                                             ; preds = %bb.m
  %indvars.iv.next245.i.i = add nuw nsw i64 %indvars.iv244.i.i, 1 ; 2 uses
  %exitcond249.not.i.i = icmp eq i64 %indvars.iv.next245.i.i, %i.cv
  br i1 %exitcond249.not.i.i, label %.thread170.us.i.i, label %bb.l, !llvm.loop !40

bb.l:                                             ; preds = %.preheader177.us206.i.i, %bb.k
  %indvars.iv244.i.i = phi i64 [ %indvars.iv.i, %.preheader177.us206.i.i ], [ %indvars.iv.next245.i.i, %bb.k ] ; 2 uses
  %i.dc = load i16, ptr %i.aj, align 8
  %i.dd = zext i16 %i.dc to i64
  %i.de = load i16, ptr %i.ai, align 2
  %i.df = zext i16 %i.de to i64
  %i.dg = mul nuw nsw i64 %indvars.iv41, %i.df
  %reass.add.i156.us.i.i = add nuw nsw i64 %i.dg, %indvars.iv250.i.i
  %reass.mul.i157.us.i.i = mul nuw nsw i64 %reass.add.i156.us.i.i, %i.dd
  %i.dh = add nuw nsw i64 %reass.mul.i157.us.i.i, %indvars.iv244.i.i
  %i.di = load ptr, ptr %i.ak, align 8
  %i.dj = and i64 %i.dh, 4294967295               ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = icmp eq i32 %i.dl, -2
  br i1 %i.dm, label %.split.us.i.i.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dn = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.dj) #10
  %.not148.us.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not148.us.i.i, label %bb.k, label %.split.us.i.i.loopexit

.thread170.us.i.i:                                ; preds = %bb.k
  %indvars.iv.next251.i.i = add nuw nsw i64 %indvars.iv250.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next251.i.i, %6
  br i1 %exitcond.not.i, label %.thread167.split.us.split.i.loopexit.i, label %.preheader177.us206.i.i, !llvm.loop !39

.preheader177.us206.i.i:                          ; preds = %.preheader178.us.i.i, %.thread170.us.i.i
  %indvars.iv250.i.i = phi i64 [ %indvars.iv97.i, %.preheader178.us.i.i ], [ %indvars.iv.next251.i.i, %.thread170.us.i.i ] ; 2 uses
  br label %bb.l

.preheader178.us.i.i:                             ; preds = %.thread167.split.us.split.preheader.i.i, %.thread167.split.us.split.i.loopexit.i
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %.thread167.split.us.split.i.loopexit.i ], [ %indvars.iv39, %.thread167.split.us.split.preheader.i.i ] ; 3 uses
  br label %.preheader177.us206.i.i

.thread167.split.i.i:                             ; preds = %.thread167.i.i
  %i.do = load i16, ptr %i.ag, align 4
  %umax243.i.i = call i16 @llvm.umax.i16(i16 %i.do, i16 %i.aq)
  br label %.split.us.i.i

.split.us.i.i.loopexit29:                         ; preds = %.thread167.split.us.split.i.loopexit.i
  %i.dp = trunc nuw i64 %indvars.iv.next42 to i16
  br label %.split.us.i.i

.split.us.i.i.loopexit:                           ; preds = %bb.l, %bb.m
  %i.dq = trunc nuw i64 %indvars.iv41 to i16
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.split.us.i.i.loopexit, %.split.us.i.i.loopexit29, %.thread167.split.i.i, %.thread167.split.us.split.us.i.i, %.thread167.split.us.split.preheader.i.i
  %.us-phi210.i.i = phi i16 [ %spec.select.i.i, %.thread167.split.us.split.us.i.i ], [ %umax243.i.i, %.thread167.split.i.i ], [ %i.aq, %.thread167.split.us.split.preheader.i.i ], [ %i.dp, %.split.us.i.i.loopexit29 ], [ %i.dq, %.split.us.i.i.loopexit ] ; 2 uses
  %i.dr = zext i16 %.us-phi210.i.i to i64         ; 3 uses
  %i.ds = icmp samesign ult i64 %indvars.iv102.i, %i.dr ; 2 uses
  br i1 %i.ds, label %.preheader176.lr.ph.i.i, label %._crit_edge219.split.i.i

.preheader176.lr.ph.i.i:                          ; preds = %.split.us.i.i
  %i.dt = icmp samesign uge i64 %indvars.iv97.i, %6
  %i.du = and i64 %indvars.iv.next82.i, 65535
  %i.dv = icmp samesign uge i64 %indvars.iv.i, %i.du
  %brmerge.i.i = or i1 %i.dv, %i.dt
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
  %exitcond267.not.i.i = icmp eq i64 %indvars.iv.next264.i.i, %i.dr
  br i1 %exitcond267.not.i.i, label %._crit_edge219.split.i.i, label %.preheader176.i.i, !llvm.loop !41

._crit_edge.i.i:                                  ; preds = %bb.n
  %indvars.iv.next259.i.i = add nuw nsw i64 %indvars.iv258.i.i, 1 ; 2 uses
  %exitcond262.not.i.i = icmp eq i64 %indvars.iv.next259.i.i, %6
  br i1 %exitcond262.not.i.i, label %._crit_edge217.i.i, label %.preheader175.i.i, !llvm.loop !42

bb.n:                                             ; preds = %bb.n, %.preheader175.i.i
  %indvars.iv253.i.i = phi i64 [ %indvars.iv.i, %.preheader175.i.i ], [ %indvars.iv.next254.i.i, %bb.n ] ; 2 uses
  %i.dw = load i16, ptr %i.aj, align 8
  %i.dx = zext i16 %i.dw to i64
  %i.dy = load i16, ptr %i.ai, align 2
  %i.dz = zext i16 %i.dy to i64
  %i.ea = mul nuw nsw i64 %indvars.iv263.i.i, %i.dz
  %reass.add.i158.i.i = add nuw nsw i64 %i.ea, %indvars.iv258.i.i
  %reass.mul.i159.i.i = mul nuw nsw i64 %reass.add.i158.i.i, %i.dx
  %i.eb = add nuw nsw i64 %reass.mul.i159.i.i, %indvars.iv253.i.i
  %i.ec = and i64 %i.eb, 4294967295
  call void @bit_set(ptr noundef %i.ae, i64 noundef %i.ec) #10
  %indvars.iv.next254.i.i = add nuw nsw i64 %indvars.iv253.i.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next254.i.i to i16
  %exitcond = icmp eq i16 %lftr.wideiv, %indvars124.i
  br i1 %exitcond, label %._crit_edge.i.i, label %bb.n, !llvm.loop !43

bb.o:                                             ; preds = %._crit_edge219.split.i.i
  %i.ed = shl nsw i32 %.246.i, 1                  ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.b, i64 noundef %i.ee, i64 noundef 24, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 699, ptr noundef nonnull @__func__._build_region) #10 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge219.split.i.i
  %.4.i = phi i32 [ %.246.i, %._crit_edge219.split.i.i ], [ %i.ed, %bb.o ]
  %i.eg = load ptr, ptr %i.b, align 8
  %i.eh = add nsw i32 %.23145.i, 1
  %i.ei = sext i32 %.23145.i to i64
  %i.ej = getelementptr inbounds [24 x i8], ptr %i.eg, i64 %i.ei ; 7 uses
  %i.ek = trunc nuw i64 %indvars.iv.i to i16      ; 2 uses
  store i16 %i.ek, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  store i16 %i.au, ptr %i.el, align 2
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i16 %i.ar, ptr %i.em, align 4
  %i.en = sub i16 %indvars124.i, %i.ek
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 6
  store i16 %i.en, ptr %i.eo, align 2
  %i.ep = sub i16 %.0119184.fr.i.i, %i.au
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i16 %i.ep, ptr %i.eq, align 8
  %i.er = sub i16 %.us-phi210.i.i, %i.ar
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 10
  store i16 %i.er, ptr %i.es, align 2
  %i.et = call ptr @hostlist_create(ptr noundef null) #10 ; 3 uses
  br i1 %i.ds, label %.preheader174.lr.ph.i.i, label %_build_region.exit.i

.preheader174.lr.ph.i.i:                          ; preds = %bb.p
  %i.eu = icmp samesign uge i64 %indvars.iv97.i, %6
  %i.ev = and i64 %indvars.iv.next82.i, 65535
  %i.ew = icmp samesign uge i64 %indvars.iv.i, %i.ev
  %brmerge232.i.i = or i1 %i.ew, %i.eu
  br i1 %brmerge232.i.i, label %_build_region.exit.i, label %.preheader174.i.i

.preheader174.i.i:                                ; preds = %.preheader174.lr.ph.i.i, %._crit_edge224.i.i
  %indvars.iv279.i.i = phi i64 [ %indvars.iv.next280.i.i, %._crit_edge224.i.i ], [ %indvars.iv102.i, %.preheader174.lr.ph.i.i ] ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge222.i.i, %.preheader174.i.i
  %indvars.iv274.i.i = phi i64 [ %indvars.iv97.i, %.preheader174.i.i ], [ %indvars.iv.next275.i.i, %._crit_edge222.i.i ] ; 2 uses
  br label %bb.q

._crit_edge224.i.i:                               ; preds = %._crit_edge222.i.i
  %indvars.iv.next280.i.i = add nuw nsw i64 %indvars.iv279.i.i, 1 ; 2 uses
  %exitcond283.not.i.i = icmp eq i64 %indvars.iv.next280.i.i, %i.dr
  br i1 %exitcond283.not.i.i, label %_build_region.exit.i, label %.preheader174.i.i, !llvm.loop !44

._crit_edge222.i.i:                               ; preds = %bb.q
  %indvars.iv.next275.i.i = add nuw nsw i64 %indvars.iv274.i.i, 1 ; 2 uses
  %exitcond278.not.i.i = icmp eq i64 %indvars.iv.next275.i.i, %6
  br i1 %exitcond278.not.i.i, label %._crit_edge224.i.i, label %.preheader.i.i, !llvm.loop !45

bb.q:                                             ; preds = %bb.q, %.preheader.i.i
  %indvars.iv268.i.i = phi i64 [ %indvars.iv.i, %.preheader.i.i ], [ %indvars.iv.next269.i.i, %bb.q ] ; 2 uses
  %i.ex = load i16, ptr %i.aj, align 8
  %i.ey = zext i16 %i.ex to i64
  %i.ez = load i16, ptr %i.ai, align 2
  %i.fa = zext i16 %i.ez to i64
  %i.fb = mul nuw nsw i64 %indvars.iv279.i.i, %i.fa
  %reass.add.i160.i.i = add nuw nsw i64 %i.fb, %indvars.iv274.i.i
  %reass.mul.i161.i.i = mul nuw nsw i64 %reass.add.i160.i.i, %i.ey
  %i.fc = add nuw nsw i64 %reass.mul.i161.i.i, %indvars.iv268.i.i
  %i.fd = load ptr, ptr %i.ak, align 8
  %i.fe = and i64 %i.fc, 4294967295
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = load ptr, ptr @node_record_table_ptr, align 8
  %i.fi = zext i32 %i.fg to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fi
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 280
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = call i32 @hostlist_push_host(ptr noundef %i.et, ptr noundef %i.fm) #10 ; 0 uses
  %indvars.iv.next269.i.i = add nuw nsw i64 %indvars.iv268.i.i, 1 ; 2 uses
  %lftr.wideiv44 = trunc i64 %indvars.iv.next269.i.i to i16
  %exitcond45 = icmp eq i16 %lftr.wideiv44, %indvars124.i
  br i1 %exitcond45, label %._crit_edge222.i.i, label %bb.q, !llvm.loop !46

_build_region.exit.i:                             ; preds = %._crit_edge224.i.i, %.preheader174.lr.ph.i.i, %bb.p
  %i.fo = call ptr @hostlist_ranged_string_xmalloc(ptr noundef %i.et) #10
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store ptr %i.fo, ptr %i.fp, align 8
  call void @hostlist_destroy(ptr noundef %i.et) #10
  br label %bb.r

bb.r:                                             ; preds = %_build_region.exit.i, %bb.e, %bb.d
  %.332.i = phi i32 [ %.23145.i, %bb.d ], [ %i.eh, %_build_region.exit.i ], [ %.23145.i, %bb.e ] ; 2 uses
  %.3.i = phi i32 [ %.246.i, %bb.d ], [ %.4.i, %_build_region.exit.i ], [ %.246.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fq = load i16, ptr %i.aj, align 8            ; 3 uses
  %i.fr = zext i16 %i.fq to i64
  %i.fs = icmp samesign ult i64 %indvars.iv.next.i, %i.fr
  br i1 %i.fs, label %bb.d, label %._crit_edge.loopexit.i, !llvm.loop !47

bb.s:                                             ; preds = %._crit_edge62.i
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #10
  br label %_rebuild_regions.exit

_rebuild_regions.exit:                            ; preds = %._crit_edge62.i, %bb.s
  %i.ft = load ptr, ptr %i.b, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.ft, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 %.029.lcssa.i, ptr %i.fv, align 8
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

bb.c:                                             ; preds = %.lr.ph20
  tail call void @slurm_bit_free(ptr noundef nonnull %i.l) #10
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph20
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.j, %.lr.ph20 ]
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr null, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %indvars.iv23 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_free_placement.exit, %bb.d
  %.lcssa = phi ptr [ %i.r, %bb.d ], [ %i.ay, %_free_placement.exit ]
  tail call void @slurm_xfree(ptr noundef nonnull %.lcssa) #10
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %indvars.iv23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  tail call void @slurm_xfree(ptr noundef nonnull %i.x) #10
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %i.y = load i32, ptr %i.d, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next24, %i.z
  br i1 %i.aa, label %.lr.ph20, label %.loopexit, !llvm.loop !48

.lr.ph:                                           ; preds = %bb.d, %_free_placement.exit
  %i.ab = phi ptr [ %i.ax, %_free_placement.exit ], [ %i.q, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_free_placement.exit ], [ 0, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %indvars.iv23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %indvars.iv ; 10 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_free_placement.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ag = load ptr, ptr %i.af, align 8
  %.not17.i = icmp eq ptr %i.ag, null
  br i1 %.not17.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.g
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %.preheader.i ] ; 3 uses
  %i.ak = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %.not18.i = icmp eq ptr %i.am, null
  br i1 %.not18.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @slurm_bit_free(ptr noundef nonnull %i.al) #10
  %.pre.i = load ptr, ptr %i.af, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.an = phi ptr [ %.pre.i, %bb.f ], [ %i.ak, %.lr.ph.i ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i
  store ptr null, ptr %i.ao, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ap = load i32, ptr %i.ah, align 8
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next.i, %i.aq
  br i1 %i.ar, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !49

.loopexit.i:                                      ; preds = %bb.g, %.preheader.i, %bb.e
  tail call void @slurm_xfree(ptr noundef nonnull %i.af) #10
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  tail call void @slurm_xfree(ptr noundef nonnull %i.as) #10
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  tail call void @slurm_xfree(ptr noundef nonnull %i.at) #10
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  tail call void @slurm_xfree(ptr noundef nonnull %i.au) #10
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  tail call void @slurm_xfree(ptr noundef nonnull %i.av) #10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 0, ptr %i.aw, align 8
  %.pre26 = load ptr, ptr %i.b, align 8
  br label %_free_placement.exit

_free_placement.exit:                             ; preds = %.lr.ph, %.loopexit.i
  %i.ax = phi ptr [ %i.ab, %.lr.ph ], [ %.pre26, %.loopexit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.ax, i64 %indvars.iv23 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next, %i.bb
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !50

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %bb.b
  %i.bd = load ptr, ptr %0, align 8
  %.not16 = icmp eq ptr %i.bd, null
  br i1 %.not16, label %bb.i, label %bb.h
end_hunk_0
