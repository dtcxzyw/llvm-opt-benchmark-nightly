Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/7zIn?download=true
inline.NumInlined: 85
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@SzReadStreamsInfo:bb.a
bb.da:                                            ; preds = %SzFolder_FindBindPairForOutStream.exit.i.i
  %i.uv = icmp sgt i32 %.0.i.i647.in, 1
  br i1 %i.uv, label %.lr.ph648, label %SzFolder_GetUnpackSize.exit.i

.lr.ph648:                                        ; preds = %.lr.ph648.preheader, %bb.da
  %.0.i.i647.in = phi i32 [ %.0.i.i647, %bb.da ], [ %i.up, %.lr.ph648.preheader ] ; 2 uses
  %.0.i.i647 = add nsw i32 %.0.i.i647.in, -1      ; 3 uses
  br i1 %.not.i11.i.i, label %SzFolder_FindBindPairForOutStream.exit.thread.i.i, label %.lr.ph.i12.i.i

.lr.ph.i12.i.i:                                   ; preds = %.lr.ph648
  %i.uw = load ptr, ptr %i.us, align 8, !tbaa !16
  br label %bb.db

bb.db:                                            ; preds = %bb.dc, %.lr.ph.i12.i.i
  %indvars.iv.i14.i.i = phi i64 [ 0, %.lr.ph.i12.i.i ], [ %indvars.iv.next.i15.i.i, %bb.dc ] ; 3 uses
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %indvars.iv.i14.i.i
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !30
  %i.va = icmp eq i32 %i.uz, %.0.i.i647
  br i1 %i.va, label %SzFolder_FindBindPairForOutStream.exit.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %indvars.iv.next.i15.i.i = add nuw nsw i64 %indvars.iv.i14.i.i, 1 ; 2 uses
  %exitcond.not.i16.i.i = icmp eq i64 %indvars.iv.next.i15.i.i, %wide.trip.count.i13.i.i
  br i1 %exitcond.not.i16.i.i, label %SzFolder_FindBindPairForOutStream.exit.thread.i.i, label %bb.db

SzFolder_FindBindPairForOutStream.exit.i.i:       ; preds = %bb.db
  %i.vb = and i64 %indvars.iv.i14.i.i, 2147483648
  %.not.i230.i = icmp eq i64 %i.vb, 0
  br i1 %.not.i230.i, label %bb.da, label %SzFolder_FindBindPairForOutStream.exit.thread.i.i

SzFolder_FindBindPairForOutStream.exit.thread.i.i: ; preds = %SzFolder_FindBindPairForOutStream.exit.i.i, %.lr.ph648, %bb.dc
  %i.vc = getelementptr inbounds nuw i8, ptr %i.si, i64 24
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !18
  %i.ve = zext nneg i32 %.0.i.i647 to i64
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %i.ve
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !31
  br label %SzFolder_GetUnpackSize.exit.i

SzFolder_GetUnpackSize.exit.i:                    ; preds = %bb.da, %.preheader.i.i, %SzFolder_FindBindPairForOutStream.exit.thread.i.i, %SzFolder_GetNumOutStreams.exit.i.i, %.loopexit258.i
  %.09.i.i = phi i64 [ 0, %SzFolder_GetNumOutStreams.exit.i.i ], [ %i.vg, %SzFolder_FindBindPairForOutStream.exit.thread.i.i ], [ 0, %.loopexit258.i ], [ 0, %.preheader.i.i ], [ 0, %bb.da ]
  %i.vh = sub i64 %.09.i.i, %.2161.i
  %i.vi = load ptr, ptr %4, align 8, !tbaa !70
  %i.vj = add i32 %.3171.i, 1
  %i.vk = zext i32 %.3171.i to i64
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %i.vk
  store i64 %i.vh, ptr %i.vl, align 8, !tbaa !31
  br label %bb.de

bb.dd:                                            ; preds = %.lr.ph288.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.loopexit

bb.de:                                            ; preds = %SzFolder_GetUnpackSize.exit.i, %bb.cx
  %.4172.ph.i = phi i32 [ %.0168292.i, %bb.cx ], [ %i.vj, %SzFolder_GetUnpackSize.exit.i ]
  %indvars.iv.next350.i = add nuw nsw i64 %indvars.iv349.i, 1 ; 2 uses
  %exitcond353.not.i = icmp eq i64 %indvars.iv.next350.i, %wide.trip.count346.i
  br i1 %exitcond353.not.i, label %._crit_edge295.i, label %bb.cx

._crit_edge295.i:                                 ; preds = %bb.de, %bb.cw
  %i.vm = icmp eq i64 %i.qq, 9
  br i1 %i.vm, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %._crit_edge295.i
  %i.vn = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.c) ; 2 uses
  %.not216.i = icmp eq i32 %i.vn, 0
  br i1 %.not216.i, label %bb.dg, label %.loopexit

bb.dg:                                            ; preds = %bb.df, %._crit_edge295.i
  %i.vo = load i32, ptr %3, align 4, !tbaa !46
  %.not320.i = icmp eq i32 %i.vo, 0
  br i1 %.not320.i, label %.preheader255.i, label %.lr.ph298.i

.preheader255.i:                                  ; preds = %.lr.ph298.i, %bb.dg
  br i1 %.not317.i, label %.preheader254.i, label %.lr.ph301.i.preheader

.lr.ph301.i.preheader:                            ; preds = %.preheader255.i
  %xtraiter774 = and i64 %wide.trip.count346.i, 1
  %i.vp = icmp eq i32 %i.pu, 1
  br i1 %i.vp, label %.lr.ph301.i.epil.preheader, label %.lr.ph301.i.preheader.new

.lr.ph301.i.preheader.new:                        ; preds = %.lr.ph301.i.preheader
  %unroll_iter779 = and i64 %wide.trip.count346.i, 4294967294
  br label %.lr.ph301.i

.lr.ph298.i:                                      ; preds = %bb.dg, %.lr.ph298.i
  %indvars.iv354.i = phi i64 [ %indvars.iv.next355.i, %.lr.ph298.i ], [ 0, %bb.dg ] ; 3 uses
  %i.vq = load ptr, ptr %5, align 8, !tbaa !60
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 %indvars.iv354.i
  store i8 0, ptr %i.vr, align 1, !tbaa !52
  %i.vs = load ptr, ptr %6, align 8, !tbaa !71
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %indvars.iv354.i
  store i32 0, ptr %i.vt, align 4, !tbaa !46
  %indvars.iv.next355.i = add nuw nsw i64 %indvars.iv354.i, 1 ; 2 uses
  %i.vu = load i32, ptr %3, align 4, !tbaa !46
  %i.vv = zext i32 %i.vu to i64
  %i.vw = icmp samesign ult i64 %indvars.iv.next355.i, %i.vv
  br i1 %i.vw, label %.lr.ph298.i, label %.preheader255.i

.preheader254.loopexit.i.unr-lcssa:               ; preds = %bb.dn
  %lcmp.mod776.not = icmp eq i64 %xtraiter774, 0
  br i1 %lcmp.mod776.not, label %.preheader254.loopexit.i, label %.lr.ph301.i.epil.preheader

.lr.ph301.i.epil.preheader:                       ; preds = %.preheader254.loopexit.i.unr-lcssa, %.lr.ph301.i.preheader
  %indvars.iv357.i.epil.init = phi i64 [ 0, %.lr.ph301.i.preheader ], [ %indvars.iv.next358.i.1, %.preheader254.loopexit.i.unr-lcssa ]
  %.0166300.i.epil.init = phi i32 [ 0, %.lr.ph301.i.preheader ], [ %.1167.i.1, %.preheader254.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod778 = trunc i32 %i.pu to i1
  tail call void @llvm.assume(i1 %lcmp.mod778)
  %i.vx = getelementptr inbounds nuw [56 x i8], ptr %i.pv, i64 %indvars.iv357.i.epil.init ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 52
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !72 ; 2 uses
  %.not223.i.epil = icmp eq i32 %i.vz, 1
  br i1 %.not223.i.epil, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %.lr.ph301.i.epil.preheader
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 44
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !64
  %.not224.i.epil = icmp eq i32 %i.wb, 0
  br i1 %.not224.i.epil, label %bb.di, label %.preheader254.loopexit.i

bb.di:                                            ; preds = %bb.dh, %.lr.ph301.i.epil.preheader
  %i.wc = add i32 %i.vz, %.0166300.i.epil.init
  br label %.preheader254.loopexit.i

.preheader254.loopexit.i:                         ; preds = %bb.dh, %bb.di, %.preheader254.loopexit.i.unr-lcssa
  %.1167.i.lcssa = phi i32 [ %.1167.i.1, %.preheader254.loopexit.i.unr-lcssa ], [ %i.wc, %bb.di ], [ %.0166300.i.epil.init, %bb.dh ]
  %i.wd = zext i32 %.1167.i.lcssa to i64
  br label %.preheader254.i

.preheader254.i:                                  ; preds = %.preheader254.loopexit.i, %.preheader255.i
  %.0166.lcssa.i = phi i64 [ 0, %.preheader255.i ], [ %i.wd, %.preheader254.loopexit.i ]
  br label %bb.do

.lr.ph301.i:                                      ; preds = %bb.dn, %.lr.ph301.i.preheader.new
  %indvars.iv357.i = phi i64 [ 0, %.lr.ph301.i.preheader.new ], [ %indvars.iv.next358.i.1, %bb.dn ] ; 3 uses
  %.0166300.i = phi i32 [ 0, %.lr.ph301.i.preheader.new ], [ %.1167.i.1, %bb.dn ] ; 2 uses
  %niter780 = phi i64 [ 0, %.lr.ph301.i.preheader.new ], [ %niter780.next.1, %bb.dn ]
  %i.we = getelementptr inbounds nuw [56 x i8], ptr %i.pv, i64 %indvars.iv357.i ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 52
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !72 ; 2 uses
  %.not223.i = icmp eq i32 %i.wg, 1
  br i1 %.not223.i, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %.lr.ph301.i
  %i.wh = getelementptr inbounds nuw i8, ptr %i.we, i64 44
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !64
  %.not224.i = icmp eq i32 %i.wi, 0
  br i1 %.not224.i, label %bb.dk, label %.lr.ph301.i.1

bb.dk:                                            ; preds = %bb.dj, %.lr.ph301.i
  %i.wj = add i32 %i.wg, %.0166300.i
  br label %.lr.ph301.i.1

.lr.ph301.i.1:                                    ; preds = %bb.dk, %bb.dj
  %.1167.i = phi i32 [ %i.wj, %bb.dk ], [ %.0166300.i, %bb.dj ] ; 2 uses
  %i.wk = getelementptr inbounds nuw [56 x i8], ptr %i.pv, i64 %indvars.iv357.i ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 108
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !72 ; 2 uses
  %.not223.i.1 = icmp eq i32 %i.wm, 1
  br i1 %.not223.i.1, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.lr.ph301.i.1
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wk, i64 100
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !64
  %.not224.i.1 = icmp eq i32 %i.wo, 0
  br i1 %.not224.i.1, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl, %.lr.ph301.i.1
  %i.wp = add i32 %i.wm, %.1167.i
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.1167.i.1 = phi i32 [ %i.wp, %bb.dm ], [ %.1167.i, %bb.dl ] ; 3 uses
  %indvars.iv.next358.i.1 = add nuw nsw i64 %indvars.iv357.i, 2 ; 2 uses
  %niter780.next.1 = add i64 %niter780, 2         ; 2 uses
  %niter780.ncmp.1 = icmp eq i64 %niter780.next.1, %unroll_iter779
  br i1 %niter780.ncmp.1, label %.preheader254.loopexit.i.unr-lcssa, label %.lr.ph301.i

bb.do:                                            ; preds = %bb.dy, %.preheader254.i
  %.5173.i = phi i32 [ %.12.i, %bb.dy ], [ 0, %.preheader254.i ] ; 3 uses
  %i.wq = load i64, ptr %i.c, align 8, !tbaa !31
  switch i64 %i.wq, label %bb.dx [
    i64 10, label %bb.dp
    i64 0, label %SzReadSubStreamsInfo.exit
  ]

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store ptr null, ptr %i.e, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store ptr null, ptr %i.f, align 8, !tbaa !71
  %i.wr = call fastcc i32 @SzReadHashDigests(ptr noundef nonnull %0, i64 noundef %.0166.lcssa.i, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef %8) ; 2 uses
  %i.ws = icmp ne i32 %i.wr, 0                    ; 2 uses
  %brmerge.i = or i1 %.not317.i, %i.ws
  %.pre.i81 = load ptr, ptr %i.e, align 8         ; 2 uses
  %.pre371.i = load ptr, ptr %i.f, align 8        ; 2 uses
  br i1 %brmerge.i, label %.loopexit253.i, label %.lr.ph313.i

.lr.ph313.i:                                      ; preds = %bb.dp, %.loopexit.i
  %indvars.iv366.i = phi i64 [ %indvars.iv.next367.i, %.loopexit.i ], [ 0, %bb.dp ] ; 2 uses
  %.0157312.i = phi i32 [ %.3.i, %.loopexit.i ], [ 0, %bb.dp ] ; 5 uses
  %.6174311.i = phi i32 [ %.10178.i, %.loopexit.i ], [ %.5173.i, %bb.dp ] ; 6 uses
  %i.wt = getelementptr inbounds nuw [56 x i8], ptr %i.pv, i64 %indvars.iv366.i ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 52
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !72 ; 2 uses
  switch i32 %i.wv, label %.lr.ph307.preheader.i [
    i32 1, label %bb.dq
    i32 0, label %.loopexit.i
  ]

bb.dq:                                            ; preds = %.lr.ph313.i
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wt, i64 44
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !64
  %.not220.i = icmp eq i32 %i.wx, 0
  br i1 %.not220.i, label %.lr.ph307.preheader.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.wy = load i32, ptr %3, align 4, !tbaa !46
  %.not222.i = icmp ult i32 %.6174311.i, %i.wy
  br i1 %.not222.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #12
  br label %.loopexit.i

bb.dt:                                            ; preds = %bb.dr
  %i.wz = load ptr, ptr %5, align 8, !tbaa !60
  %i.xa = zext i32 %.6174311.i to i64             ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 %i.xa
  store i8 1, ptr %i.xb, align 1, !tbaa !52
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wt, i64 48
  %i.xd = load i32, ptr %i.xc, align 8, !tbaa !65
  %i.xe = load ptr, ptr %6, align 8, !tbaa !71
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %i.xa
  store i32 %i.xd, ptr %i.xf, align 4, !tbaa !46
  %i.xg = add nuw i32 %.6174311.i, 1
  br label %.loopexit.i

.lr.ph307.preheader.i:                            ; preds = %bb.dq, %.lr.ph313.i
  %9 = add i32 %i.wv, %.0157312.i                 ; 2 uses
  br label %.lr.ph307.i

.lr.ph307.i:                                      ; preds = %bb.dw, %.lr.ph307.preheader.i
  %.0305.i = phi i32 [ %i.xs, %bb.dw ], [ %.0157312.i, %.lr.ph307.preheader.i ] ; 2 uses
  %.7175303.i = phi i32 [ %.8176.i, %bb.dw ], [ %.6174311.i, %.lr.ph307.preheader.i ] ; 4 uses
  %i.xh = load i32, ptr %3, align 4, !tbaa !46
  %.not221.i = icmp ult i32 %.7175303.i, %i.xh
  br i1 %.not221.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %.lr.ph307.i
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #12
  br label %bb.dw

bb.dv:                                            ; preds = %.lr.ph307.i
  %10 = sext i32 %.0305.i to i64                  ; 2 uses
  %i.xi = getelementptr inbounds i8, ptr %.pre.i81, i64 %10
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !52
  %i.xk = load ptr, ptr %5, align 8, !tbaa !60
  %i.xl = zext i32 %.7175303.i to i64             ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xl
  store i8 %i.xj, ptr %i.xm, align 1, !tbaa !52
  %i.xn = getelementptr inbounds [4 x i8], ptr %.pre371.i, i64 %10
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !46
  %i.xp = load ptr, ptr %6, align 8, !tbaa !71
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %i.xl
  store i32 %i.xo, ptr %i.xq, align 4, !tbaa !46
  %i.xr = add nuw i32 %.7175303.i, 1
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.8176.i = phi i32 [ %.7175303.i, %bb.du ], [ %i.xr, %bb.dv ] ; 2 uses
  %i.xs = add i32 %.0305.i, 1                     ; 2 uses
  %exitcond365.not.i = icmp eq i32 %i.xs, %9
  br i1 %exitcond365.not.i, label %.loopexit.i, label %.lr.ph307.i

.loopexit.i:                                      ; preds = %bb.dw, %bb.dt, %bb.ds, %.lr.ph313.i
  %.10178.i = phi i32 [ %.6174311.i, %bb.ds ], [ %i.xg, %bb.dt ], [ %.6174311.i, %.lr.ph313.i ], [ %.8176.i, %bb.dw ] ; 2 uses
  %.3.i = phi i32 [ %.0157312.i, %bb.ds ], [ %.0157312.i, %bb.dt ], [ %.0157312.i, %.lr.ph313.i ], [ %9, %bb.dw ]
  %indvars.iv.next367.i = add nuw nsw i64 %indvars.iv366.i, 1 ; 2 uses
  %exitcond370.not.i = icmp eq i64 %indvars.iv.next367.i, %wide.trip.count346.i
  br i1 %exitcond370.not.i, label %.loopexit253.i, label %.lr.ph313.i

.loopexit253.i:                                   ; preds = %.loopexit.i, %bb.dp
  %.11.i = phi i32 [ %.5173.i, %bb.dp ], [ %.10178.i, %.loopexit.i ]
  %i.xt = load ptr, ptr %i.ah, align 8, !tbaa !15
  tail call void %i.xt(ptr noundef %8, ptr noundef %.pre.i81) #12, !inline_history !115
  %i.xu = load ptr, ptr %i.ah, align 8, !tbaa !15
  tail call void %i.xu(ptr noundef %8, ptr noundef %.pre371.i) #12, !inline_history !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br i1 %i.ws, label %.loopexit, label %bb.dy

bb.dx:                                            ; preds = %bb.do
  %i.xv = tail call fastcc i32 @SzSkeepData(ptr noundef nonnull %0) ; 2 uses
  %.not217.i = icmp eq i32 %i.xv, 0
  br i1 %.not217.i, label %bb.dy, label %.loopexit

bb.dy:                                            ; preds = %bb.dx, %.loopexit253.i
  %.12.i = phi i32 [ %.11.i, %.loopexit253.i ], [ %.5173.i, %bb.dx ]
  %i.xw = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.c) ; 2 uses
  %.not219.i = icmp eq i32 %i.xw, 0
  br i1 %.not219.i, label %bb.do, label %.loopexit

.loopexit:                                        ; preds = %bb.cu, %bb.ct, %bb.cp, %bb.df, %bb.cv, %bb.cq, %._crit_edge.i73, %bb.cr, %.backedge.i, %bb.dy, %.loopexit253.i, %bb.dx, %bb.cl, %SzSkeepData.exit.thread.i86, %SzReadNumber32.exit.thread.i83, %bb.dd
  %.18.i.ph = phi i32 [ %i.xw, %bb.dy ], [ %i.sp, %bb.dd ], [ 11, %bb.cl ], [ %i.ri, %.backedge.i ], [ %.1.i229.ph.i, %SzSkeepData.exit.thread.i86 ], [ %.1.i.ph.i84, %SzReadNumber32.exit.thread.i83 ], [ %i.xv, %bb.dx ], [ %i.wr, %.loopexit253.i ], [ 11, %bb.cq ], [ 11, %bb.cr ], [ 2, %bb.cv ], [ %i.vn, %bb.df ], [ 11, %bb.cp ], [ 2, %bb.cu ], [ 2, %bb.ct ], [ %i.qp, %._crit_edge.i73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %SzReadPackInfo.exit.thread

SzReadSubStreamsInfo.exit:                        ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %SzReadPackInfo.exit

SzReadPackInfo.exit:                              ; preds = %.lr.ph132.i, %bb.y, %.thread161.i, %bb.s, %SzReadUnpackInfo.exit, %SzReadSubStreamsInfo.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #12
  %i.xx = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.ac) ; 2 uses
  %.not = icmp eq i32 %i.xx, 0
  br i1 %.not, label %bb.b, label %SzReadPackInfo.exit.thread

SzReadPackInfo.exit.thread.loopexit674:           ; preds = %bb.c
  br label %SzReadPackInfo.exit.thread

SzReadPackInfo.exit.thread:                       ; preds = %bb.b, %SzReadPackInfo.exit, %bb.k, %bb.t, %bb.v, %bb.x, %bb.m, %bb.d, %._crit_edge.i, %bb.af, %bb.ah, %SzReadSwitch.exit._crit_edge.i, %bb.ai, %bb.am, %bb.bn, %bb.bt, %._crit_edge424.i.i, %bb.ak, %._crit_edge419.i.i, %SzFolder_FindBindPairForInStream.exit.thread.i.i, %SzFolder_GetNumOutStreams.exit.thread.i, %SzFolder_GetNumOutStreams.exit.i, %bb.cc, %.lr.ph.i, %bb.bx, %.lr.ph220.i, %bb.ba, %.lr.ph412.i.i, %bb.c, %SzReadPackInfo.exit.thread.loopexit674, %bb.a, %SzWaitAttribute.exit.thread.i53, %SzReadNumber32.exit.thread.i.i, %SzReadNumber32.exit.thread.i56, %._crit_edge419.thread.i.i, %.thread335.i.i, %.split.thread.i.i, %.split.thread369.i.i, %.thread.i.i, %.thread331.i.i, %.thread339.i.i, %bb.bk, %.thread359.i.i, %.thread355.i.i, %SzReadNumber32.exit282.thread.i.i, %.thread.i, %SzWaitAttribute.exit.thread.i, %SzReadNumber32.exit.thread.i, %SzReadUnpackInfo.exit.thread94, %.loopexit
  %.6.ph = phi i32 [ %i.ad, %bb.a ], [ %.18.i.ph, %.loopexit ], [ %.14.ph.i.ph, %SzReadUnpackInfo.exit.thread94 ], [ %.1.i281.ph.i.i, %SzReadNumber32.exit282.thread.i.i ], [ %.9.ph.i, %.thread.i ], [ %.1.i272.ph.i.i, %.thread355.i.i ], [ 4, %SzFolder_FindBindPairForInStream.exit.thread.i.i ], [ %i.oq, %.lr.ph220.i ], [ 4, %bb.c ], [ %.1.i.ph.i, %SzReadNumber32.exit.thread.i ], [ %.3.ph.i.ph.i, %SzWaitAttribute.exit.thread.i ], [ %.1.i275.ph.i.i, %.thread359.i.i ], [ 16, %bb.bk ], [ %i.jr, %.thread339.i.i ], [ %.1.i264.ph.i.i, %.thread331.i.i ], [ %.11193.ph.i.i, %.thread.i.i ], [ %.3.ph.i.ph.i54, %SzWaitAttribute.exit.thread.i53 ], [ 4, %._crit_edge419.thread.i.i ], [ %i.bs, %.lr.ph.i ], [ 16, %.split.thread369.i.i ], [ %.9191.ph.i.i, %.split.thread.i.i ], [ %.1.i.ph.i57, %SzReadNumber32.exit.thread.i56 ], [ %.1.i267.ph.i.i, %.thread335.i.i ], [ 16, %bb.ba ], [ %.1.i.ph.i142.i, %SzReadNumber32.exit.thread.i.i ], [ 4, %bb.bx ], [ 2, %bb.cc ], [ 16, %.lr.ph412.i.i ], [ 11, %SzFolder_GetNumOutStreams.exit.thread.i ], [ 11, %SzFolder_GetNumOutStreams.exit.i ], [ 2, %bb.am ], [ 2, %bb.bn ], [ 2, %bb.bt ], [ 4, %._crit_edge424.i.i ], [ 4, %bb.ak ], [ 4, %._crit_edge419.i.i ], [ 11, %bb.af ], [ 16, %._crit_edge.i ], [ %i.ao, %bb.d ], [ %i.me, %SzReadSwitch.exit._crit_edge.i ], [ 4, %bb.b ], [ 11, %bb.t ], [ 11, %bb.k ], [ %i.xx, %SzReadPackInfo.exit ], [ 2, %bb.m ], [ 2, %bb.v ], [ 2, %bb.ah ], [ 4, %bb.ai ], [ 2, %bb.x ], [ %i.an, %SzReadPackInfo.exit.thread.loopexit674 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #12
  ret i32 %.6.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 17) i32 @SzWaitAttribute(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 9, 13) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.b) ; 2 uses
  %.not24 = icmp eq i32 %i.c, 0
  br i1 %.not24, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.e = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.h = call fastcc i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.a) ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.e, label %SzSkeepData.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.j = load i64, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.k = icmp ugt i64 %i.i, %i.j
  br i1 %i.k, label %SzSkeepData.exit.thread, label %bb.f

SzSkeepData.exit.thread:                          ; preds = %bb.d, %bb.e
  %.1.i.ph = phi i32 [ 16, %bb.e ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.l = sub nuw i64 %i.j, %i.i
  store i64 %i.l, ptr %i.d, align 8, !tbaa !58
  %i.m = load ptr, ptr %0, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  store ptr %i.n, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.o = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.b) ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.f, %bb.a, %SzSkeepData.exit.thread
  %.3.ph = phi i32 [ %.1.i.ph, %SzSkeepData.exit.thread ], [ %i.c, %bb.a ], [ 0, %bb.b ], [ 16, %bb.c ], [ %i.o, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i32 %.3.ph
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 17) i32 @SzReadHashDigests(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %SzReadBoolVector2.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1
  store i64 %i.d, ptr %i.a, align 8, !tbaa !58
  %i.e = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %0, align 8, !tbaa !57
  %i.g = load i8, ptr %i.e, align 1, !tbaa !52
  %i.h = icmp eq i8 %i.g, 0
  %i.i = load ptr, ptr %2, align 8, !tbaa !60
  %.not.i.i = icmp eq ptr %i.i, null              ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i, label %bb.d, label %SzReadBoolVector2.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %1, 0
  br i1 %i.j, label %SzReadBoolVector2.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %4, align 8, !tbaa !63
  %i.l = tail call ptr %i.k(ptr noundef nonnull %4, i64 noundef range(i64 0, 4294967296) %1) #12, !inline_history !123 ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !60
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %SzReadBoolVector2.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.g
  %.01935.i.i = phi i64 [ %i.z, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %.02034.i.i = phi i8 [ %i.y, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %.033.i.i = phi i8 [ %.127.i.i, %bb.g ], [ 0, %bb.e ]
  %i.n = icmp eq i8 %.02034.i.i, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %SzReadBoolVector2.exit.thread, label %SzReadByte.exit.thread.i.i

SzReadByte.exit.thread.i.i:                       ; preds = %bb.f
  %i.q = add i64 %i.o, -1
  store i64 %i.q, ptr %i.a, align 8, !tbaa !58
  %i.r = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %0, align 8, !tbaa !57
  %i.t = load i8, ptr %i.r, align 1, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %SzReadByte.exit.thread.i.i, %.lr.ph.i.i
  %.127.i.i = phi i8 [ %i.t, %SzReadByte.exit.thread.i.i ], [ %.033.i.i, %.lr.ph.i.i ] ; 2 uses
  %.1.i.i = phi i8 [ -128, %SzReadByte.exit.thread.i.i ], [ %.02034.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.u = and i8 %.1.i.i, %.127.i.i
  %.not26.i.i = icmp ne i8 %i.u, 0
  %i.v = zext i1 %.not26.i.i to i8
  %i.w = load ptr, ptr %2, align 8, !tbaa !60
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.01935.i.i
  store i8 %i.v, ptr %i.x, align 1, !tbaa !52
  %i.y = lshr i8 %.1.i.i, 1
  %i.z = add nuw nsw i64 %.01935.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.z, %1
  br i1 %exitcond.not.i.i, label %SzReadBoolVector2.exit, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.b
  br i1 %.not.i.i, label %bb.i, label %SzReadBoolVector2.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i64 %1, 0
  br i1 %i.aa, label %SzReadBoolVector2.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %4, align 8, !tbaa !63
  %i.ac = tail call ptr %i.ab(ptr noundef nonnull %4, i64 noundef range(i64 0, 4294967296) %1) #12, !inline_history !124 ; 2 uses
  store ptr %i.ac, ptr %2, align 8, !tbaa !60
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %SzReadBoolVector2.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.ae = icmp samesign ult i64 %1, 4
  br i1 %i.ae, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %1, 4294967292
  br label %.lr.ph.i
end_hunk_0
