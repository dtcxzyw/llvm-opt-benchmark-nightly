Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/line-log?download=true
inline.NumInlined: 74
inline.NumDeleted: 35
begin_hunk_0_@process_all_files:bb.a
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !21
  call void @range_set_append(ptr noundef nonnull %i.bm, i64 noundef %i.ch, i64 noundef %i.cj)
  %i.ck = load ptr, ptr %i.k, align 8, !tbaa !201
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !21
  call void @range_set_append(ptr noundef nonnull %i.bn, i64 noundef %i.cm, i64 noundef %i.co)
  %.pre.i.i.i = load i32, ptr %i.j, align 4, !tbaa !200
  br label %ranges_overlap.exit.thread.i.i.i

ranges_overlap.exit.thread.i.i.i:                 ; preds = %ranges_overlap.exit.i.i.i, %bb.r
  %i.cp = phi i32 [ %i.bq, %bb.r ], [ %.pre.i.i.i, %ranges_overlap.exit.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cq = zext i32 %i.cp to i64
  %i.cr = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.cq
  br i1 %i.cr, label %.preheader.i.i.i, label %diff_ranges_filter_touched.exit.ithread-pre-split.i, !llvm.loop !204

diff_ranges_filter_touched.exit.ithread-pre-split.i: ; preds = %ranges_overlap.exit.thread.i.i.i, %bb.o
  %.pr.i = load i32, ptr %i.ae, align 4, !tbaa !17
  br label %diff_ranges_filter_touched.exit.i.i

diff_ranges_filter_touched.exit.i.i:              ; preds = %bb.q, %diff_ranges_filter_touched.exit.ithread-pre-split.i
  %i.cs = phi i32 [ %.pr.i, %diff_ranges_filter_touched.exit.ithread-pre-split.i ], [ %i.bz, %bb.q ]
  %.not66.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not66.i.i.i, label %process_diff_filepair.exit, label %.lr.ph65.i.i.i

.lr.ph65.i.i.i:                                   ; preds = %diff_ranges_filter_touched.exit.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.02981.i, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.i.i.i, %.lr.ph65.i.i.i
  %.sroa.0.0.i.i = phi i32 [ 0, %.lr.ph65.i.i.i ], [ %.sroa.0.1.i.i, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.8.0.i.i = phi i32 [ 0, %.lr.ph65.i.i.i ], [ %.sroa.8.1.i.i, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.15.0.i.i = phi ptr [ null, %.lr.ph65.i.i.i ], [ %.sroa.15.1.i.i, %.loopexit.i.i.i ] ; 2 uses
  %indvars.iv73.i.i.i = phi i64 [ 0, %.lr.ph65.i.i.i ], [ %indvars.iv.next74.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %.03964.i.i.i = phi i32 [ 0, %.lr.ph65.i.i.i ], [ %.3.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !16
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv73.i.i.i ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !21 ; 5 uses
  %.059.i.i.i = load i64, ptr %i.cx, align 8, !tbaa !87 ; 2 uses
  %i.da = icmp slt i64 %.059.i.i.i, %i.cz
  br i1 %i.da, label %.preheader.i12.i.i, label %.loopexit.i.i.i

.preheader.i12.i.i:                               ; preds = %bb.s, %bb.ag
  %.sroa.0.2.i.i = phi i32 [ %.sroa.0.3.i.i, %bb.ag ], [ %.sroa.0.0.i.i, %bb.s ] ; 7 uses
  %.sroa.8.2.i.i = phi i32 [ %.sroa.8.3.i.i, %bb.ag ], [ %.sroa.8.0.i.i, %bb.s ] ; 11 uses
  %.sroa.15.2.i.i = phi ptr [ %.sroa.15.3.i.i, %bb.ag ], [ %.sroa.15.0.i.i, %bb.s ] ; 7 uses
  %.061.i.i.i = phi i64 [ %.0.i.i.i, %bb.ag ], [ %.059.i.i.i, %bb.s ] ; 7 uses
  %.14060.i.i.i = phi i32 [ %i.di, %bb.ag ], [ %.03964.i.i.i, %bb.s ] ; 3 uses
  %i.db = load i32, ptr %i.cu, align 4, !tbaa !17 ; 3 uses
  %i.dc = icmp ult i32 %.14060.i.i.i, %i.db
  br i1 %i.dc, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i12.i.i
  %i.dd = load ptr, ptr %i.cv, align 8, !tbaa !16 ; 2 uses
  %i.de = zext i32 %.14060.i.i.i to i64
  %wide.trip.count.i.i.i = zext i32 %i.db to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.i.i
  %indvars.iv.i13.i.i = phi i64 [ %i.de, %.lr.ph.i.i.i ], [ %indvars.iv.next.i15.i.i, %bb.u ] ; 4 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %indvars.iv.i13.i.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !21 ; 2 uses
  %.not.i14.i.i = icmp slt i64 %.061.i.i.i, %i.dh
  br i1 %.not.i14.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next.i15.i.i = add nuw nsw i64 %indvars.iv.i13.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i15.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i, label %bb.t, !llvm.loop !205

bb.v:                                             ; preds = %bb.t
  %i.di = trunc nuw i64 %indvars.iv.i13.i.i to i32 ; 3 uses
  %i.dj = load i64, ptr %i.df, align 8, !tbaa !18 ; 3 uses
  %.not45.i.i.i = icmp sgt i64 %i.cz, %i.dj
  br i1 %.not45.i.i.i, label %bb.ab, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.v, %.preheader.i12.i.i, %bb.u
  %.249.i.i.i = phi i32 [ %i.db, %bb.u ], [ %.14060.i.i.i, %.preheader.i12.i.i ], [ %i.di, %bb.v ]
  %i.dk = icmp eq i32 %.sroa.8.2.i.i, 0
  br i1 %i.dk, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.critedge.i.i.i
  %i.dl = add i32 %.sroa.8.2.i.i, -1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.15.2.i.i, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !21
  %.not.i27.i.i = icmp sgt i64 %i.dp, %.061.i.i.i
  br i1 %.not.i27.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 74, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_append) #14
  unreachable

bb.y:                                             ; preds = %bb.w, %.critedge.i.i.i
  %.not.i.i28.i.i = icmp sgt i64 %.061.i.i.i, %i.cz
  br i1 %.not.i.i28.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 65, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_append_unsafe) #14
  unreachable

bb.aa:                                            ; preds = %bb.y
  %.not10.i.i29.i.i = icmp ult i32 %.sroa.8.2.i.i, %.sroa.0.2.i.i
  %.pre164.i.i = zext i32 %.sroa.8.2.i.i to i64   ; 2 uses
  br i1 %.not10.i.i29.i.i, label %range_set_append.exit37.i.i, label %st_mult.exit.i.i.i30.i.i

st_mult.exit.i.i.i30.i.i:                         ; preds = %bb.aa
  %i.dq = add nuw nsw i64 %.pre164.i.i, 1
  %i.dr = mul i32 %.sroa.0.2.i.i, 3
  %i.ds = add i32 %i.dr, 48
  %i.dt = lshr i32 %i.ds, 1
  %i.du = zext nneg i32 %i.dt to i64
  %storemerge14.i.i.i31.i.i = call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.du) ; 2 uses
  %storemerge.i.i.i32.i.i = trunc i64 %storemerge14.i.i.i31.i.i to i32
  %i.dv = shl nuw nsw i64 %storemerge14.i.i.i31.i.i, 4
  %i.dw = and i64 %i.dv, 68719476720
  %i.dx = call ptr @xrealloc(ptr noundef %.sroa.15.2.i.i, i64 noundef %i.dw) #13
  br label %range_set_append.exit37.i.i

range_set_append.exit37.i.i:                      ; preds = %st_mult.exit.i.i.i30.i.i, %bb.aa
  %.sroa.0.5.i.i = phi i32 [ %storemerge.i.i.i32.i.i, %st_mult.exit.i.i.i30.i.i ], [ %.sroa.0.2.i.i, %bb.aa ]
  %.sroa.15.6.i.i = phi ptr [ %i.dx, %st_mult.exit.i.i.i30.i.i ], [ %.sroa.15.2.i.i, %bb.aa ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.15.6.i.i, i64 %.pre164.i.i ; 2 uses
  store i64 %.061.i.i.i, ptr %i.dy, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 %i.cz, ptr %i.dz, align 8, !tbaa !21
  %i.ea = add i32 %.sroa.8.2.i.i, 1
  br label %.loopexit.i.i.i

bb.ab:                                            ; preds = %bb.v
  %.not46.i.i.i = icmp slt i64 %.061.i.i.i, %i.dj
  br i1 %.not46.i.i.i, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.eb = icmp eq i32 %.sroa.8.2.i.i, 0
  br i1 %i.eb, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = add i32 %.sroa.8.2.i.i, -1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %.sroa.15.2.i.i, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !21
  %.not.i25.i.i = icmp sgt i64 %i.eg, %.061.i.i.i
  br i1 %.not.i25.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 74, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_append) #14
  unreachable

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.not10.i.i.i.i = icmp ult i32 %.sroa.8.2.i.i, %.sroa.0.2.i.i
  %.pre161.i.i = zext i32 %.sroa.8.2.i.i to i64   ; 2 uses
  br i1 %.not10.i.i.i.i, label %range_set_append.exit.i.i, label %st_mult.exit.i.i.i.i.i

st_mult.exit.i.i.i.i.i:                           ; preds = %bb.af
  %i.eh = add nuw nsw i64 %.pre161.i.i, 1
  %i.ei = mul i32 %.sroa.0.2.i.i, 3
  %i.ej = add i32 %i.ei, 48
  %i.ek = lshr i32 %i.ej, 1
  %i.el = zext nneg i32 %i.ek to i64
  %storemerge14.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.eh, i64 %i.el) ; 2 uses
  %storemerge.i.i.i.i.i = trunc i64 %storemerge14.i.i.i.i.i to i32
  %i.em = shl nuw nsw i64 %storemerge14.i.i.i.i.i, 4
  %i.en = and i64 %i.em, 68719476720
  %i.eo = call ptr @xrealloc(ptr noundef %.sroa.15.2.i.i, i64 noundef %i.en) #13
  %.pre.i.i = load ptr, ptr %i.cv, align 8, !tbaa !16
  br label %range_set_append.exit.i.i

range_set_append.exit.i.i:                        ; preds = %st_mult.exit.i.i.i.i.i, %bb.af
  %i.ep = phi ptr [ %.pre.i.i, %st_mult.exit.i.i.i.i.i ], [ %i.dd, %bb.af ]
  %.sroa.0.4.i.i = phi i32 [ %storemerge.i.i.i.i.i, %st_mult.exit.i.i.i.i.i ], [ %.sroa.0.2.i.i, %bb.af ]
  %.sroa.15.5.i.i = phi ptr [ %i.eo, %st_mult.exit.i.i.i.i.i ], [ %.sroa.15.2.i.i, %bb.af ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.15.5.i.i, i64 %.pre161.i.i ; 2 uses
  store i64 %.061.i.i.i, ptr %i.eq, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %i.dj, ptr %i.er, align 8, !tbaa !21
  %i.es = add i32 %.sroa.8.2.i.i, 1
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %indvars.iv.i13.i.i
  %.1.in.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i.i.i, i64 8
  %.0.pre.i.i.i = load i64, ptr %.1.in.phi.trans.insert.i.i.i, align 8, !tbaa !87
  br label %bb.ag

bb.ag:                                            ; preds = %range_set_append.exit.i.i, %bb.ab
  %.sroa.0.3.i.i = phi i32 [ %.sroa.0.4.i.i, %range_set_append.exit.i.i ], [ %.sroa.0.2.i.i, %bb.ab ] ; 2 uses
  %.sroa.8.3.i.i = phi i32 [ %i.es, %range_set_append.exit.i.i ], [ %.sroa.8.2.i.i, %bb.ab ] ; 2 uses
  %.sroa.15.3.i.i = phi ptr [ %.sroa.15.5.i.i, %range_set_append.exit.i.i ], [ %.sroa.15.2.i.i, %bb.ab ] ; 2 uses
  %.0.i.i.i = phi i64 [ %.0.pre.i.i.i, %range_set_append.exit.i.i ], [ %i.dh, %bb.ab ] ; 2 uses
  %i.et = icmp slt i64 %.0.i.i.i, %i.cz
  br i1 %i.et, label %.preheader.i12.i.i, label %.loopexit.i.i.i, !llvm.loop !206

.loopexit.i.i.i:                                  ; preds = %bb.ag, %range_set_append.exit37.i.i, %bb.s
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.0.i.i, %bb.s ], [ %.sroa.0.5.i.i, %range_set_append.exit37.i.i ], [ %.sroa.0.3.i.i, %bb.ag ]
  %.sroa.8.1.i.i = phi i32 [ %.sroa.8.0.i.i, %bb.s ], [ %i.ea, %range_set_append.exit37.i.i ], [ %.sroa.8.3.i.i, %bb.ag ] ; 3 uses
  %.sroa.15.1.i.i = phi ptr [ %.sroa.15.0.i.i, %bb.s ], [ %.sroa.15.6.i.i, %range_set_append.exit37.i.i ], [ %.sroa.15.3.i.i, %bb.ag ] ; 4 uses
  %.3.i.i.i = phi i32 [ %.03964.i.i.i, %bb.s ], [ %.249.i.i.i, %range_set_append.exit37.i.i ], [ %i.di, %bb.ag ]
  %indvars.iv.next74.i.i.i = add nuw nsw i64 %indvars.iv73.i.i.i, 1 ; 2 uses
  %i.eu = load i32, ptr %i.ae, align 4, !tbaa !17
  %i.ev = zext i32 %i.eu to i64
  %i.ew = icmp samesign ult i64 %indvars.iv.next74.i.i.i, %i.ev
  br i1 %i.ew, label %bb.s, label %range_set_difference.exit.i.i, !llvm.loop !207

range_set_difference.exit.i.i:                    ; preds = %.loopexit.i.i.i
  %i.ex = load ptr, ptr %i.k, align 8, !tbaa !201
  %i.ey = load ptr, ptr %i.l, align 8, !tbaa !203
  %.not12.i.i.i = icmp eq i32 %.sroa.8.1.i.i, 0
  br i1 %.not12.i.i.i, label %process_diff_filepair.exit, label %.preheader.lr.ph.i16.i.i

.preheader.lr.ph.i16.i.i:                         ; preds = %range_set_difference.exit.i.i
  %wide.trip.count.i17.i.i = zext i32 %.sroa.8.1.i.i to i64
  %.promoted109.i.i.a = load i32, ptr %4, align 8
  %.promoted113.i.i = load ptr, ptr %i.n, align 8
  br label %.preheader.i18.i.i

.preheader.i18.i.i:                               ; preds = %range_set_append.exit48.i.i, %.preheader.lr.ph.i16.i.i
  %i.ez = phi ptr [ %.promoted113.i.i, %.preheader.lr.ph.i16.i.i ], [ %i.gh, %range_set_append.exit48.i.i ] ; 3 uses
  %storemerge.i.i.i43111.i.i = phi i32 [ %.promoted109.i.i.a, %.preheader.lr.ph.i16.i.i ], [ %storemerge.i.i.i43110.i.i, %range_set_append.exit48.i.i ] ; 3 uses
  %indvars.iv14.i.i.i = phi i64 [ 0, %.preheader.lr.ph.i16.i.i ], [ %.pre.i, %range_set_append.exit48.i.i ] ; 6 uses
  %.011.i.i.i = phi i64 [ 0, %.preheader.lr.ph.i16.i.i ], [ %.1.lcssa.i.i.i, %range_set_append.exit48.i.i ] ; 2 uses
  %.02810.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i16.i.i ], [ %.129.lcssa.i.i.i, %range_set_append.exit48.i.i ] ; 3 uses
  %i.fa = load i32, ptr %i.j, align 4, !tbaa !200 ; 3 uses
  %i.fb = icmp ult i32 %.02810.i.i.i, %i.fa
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.15.1.i.i, i64 %indvars.iv14.i.i.i ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !18 ; 3 uses
  br i1 %i.fb, label %.lr.ph.i20.i.i, label %.critedge.i19.i.i

.lr.ph.i20.i.i:                                   ; preds = %.preheader.i18.i.i
  %i.fe = zext i32 %.02810.i.i.i to i64
  %i.ff = zext i32 %i.fa to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph.i20.i.i
  %indvars.iv.i21.i.i = phi i64 [ %i.fe, %.lr.ph.i20.i.i ], [ %indvars.iv.next.i23.i.i, %bb.ai ] ; 4 uses
  %.14.i.i.i = phi i64 [ %.011.i.i.i, %.lr.ph.i20.i.i ], [ %i.fp, %bb.ai ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %indvars.iv.i21.i.i ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !18 ; 2 uses
  %.not.i22.i.i = icmp slt i64 %i.fd, %i.fh
  br i1 %.not.i22.i.i, label %.critedge.loopexit.split.loop.exit19.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %indvars.iv.i21.i.i ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !21
  %i.fl = load i64, ptr %i.fi, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !21
  %.neg47 = add i64 %i.fh, %.14.i.i.i
  %.neg39.i = add i64 %.neg47, %i.fk
  %i.fo = add i64 %i.fl, %i.fn
  %i.fp = sub i64 %.neg39.i, %i.fo                ; 2 uses
  %indvars.iv.next.i23.i.i = add nuw nsw i64 %indvars.iv.i21.i.i, 1 ; 2 uses
  %exitcond.not.i24.i.i = icmp eq i64 %indvars.iv.next.i23.i.i, %i.ff
  br i1 %exitcond.not.i24.i.i, label %.critedge.i19.i.i, label %bb.ah, !llvm.loop !208

.critedge.loopexit.split.loop.exit19.i.i.i:       ; preds = %bb.ah
  %i.fq = trunc nuw i64 %indvars.iv.i21.i.i to i32
  br label %.critedge.i19.i.i

.critedge.i19.i.i:                                ; preds = %bb.ai, %.critedge.loopexit.split.loop.exit19.i.i.i, %.preheader.i18.i.i
  %.129.lcssa.i.i.i = phi i32 [ %.02810.i.i.i, %.preheader.i18.i.i ], [ %i.fq, %.critedge.loopexit.split.loop.exit19.i.i.i ], [ %i.fa, %bb.ai ]
  %.1.lcssa.i.i.i = phi i64 [ %.011.i.i.i, %.preheader.i18.i.i ], [ %.14.i.i.i, %.critedge.loopexit.split.loop.exit19.i.i.i ], [ %i.fp, %bb.ai ] ; 3 uses
  %i.fr = add nsw i64 %.1.lcssa.i.i.i, %i.fd      ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !21 ; 2 uses
  %i.fu = add nsw i64 %i.ft, %.1.lcssa.i.i.i
  %i.fv = icmp eq i64 %indvars.iv14.i.i.i, 0
  br i1 %i.fv, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.critedge.i19.i.i
  %i.fw = getelementptr [16 x i8], ptr %i.ez, i64 %indvars.iv14.i.i.i
  %i.fx = getelementptr i8, ptr %i.fw, i64 -8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !21
  %.not.i38.i.i = icmp sgt i64 %i.fy, %i.fr
  br i1 %.not.i38.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 74, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_append) #14
  unreachable

bb.al:                                            ; preds = %bb.aj, %.critedge.i19.i.i
  %.not.i.i39.i.i = icmp sgt i64 %i.fd, %i.ft
  br i1 %.not.i.i39.i.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 65, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_append_unsafe) #14
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.fz = zext i32 %storemerge.i.i.i43111.i.i to i64
  %.not10.i.i40.i.i = icmp samesign ult i64 %indvars.iv14.i.i.i, %i.fz
  %.pre.i = add nuw nsw i64 %indvars.iv14.i.i.i, 1 ; 4 uses
  br i1 %.not10.i.i40.i.i, label %range_set_append.exit48.i.i, label %st_mult.exit.i.i.i41.i.i

st_mult.exit.i.i.i41.i.i:                         ; preds = %bb.an
  %i.ga = mul i32 %storemerge.i.i.i43111.i.i, 3
  %i.gb = add i32 %i.ga, 48
  %i.gc = lshr i32 %i.gb, 1
  %i.gd = zext nneg i32 %i.gc to i64
  %storemerge14.i.i.i42.i.i = call i64 @llvm.umax.i64(i64 %.pre.i, i64 %i.gd) ; 2 uses
  %storemerge.i.i.i43.i.i = trunc i64 %storemerge14.i.i.i42.i.i to i32 ; 2 uses
  store i32 %storemerge.i.i.i43.i.i, ptr %4, align 8, !tbaa !12
  %i.ge = shl nuw nsw i64 %storemerge14.i.i.i42.i.i, 4
  %i.gf = and i64 %i.ge, 68719476720
  %i.gg = call ptr @xrealloc(ptr noundef %i.ez, i64 noundef %i.gf) #13 ; 2 uses
  store ptr %i.gg, ptr %i.n, align 8, !tbaa !16
  br label %range_set_append.exit48.i.i

range_set_append.exit48.i.i:                      ; preds = %st_mult.exit.i.i.i41.i.i, %bb.an
  %i.gh = phi ptr [ %i.gg, %st_mult.exit.i.i.i41.i.i ], [ %i.ez, %bb.an ] ; 3 uses
  %storemerge.i.i.i43110.i.i = phi i32 [ %storemerge.i.i.i43.i.i, %st_mult.exit.i.i.i41.i.i ], [ %storemerge.i.i.i43111.i.i, %bb.an ]
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %indvars.iv14.i.i.i ; 2 uses
  store i64 %i.fr, ptr %i.gi, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i64 %i.fu, ptr %i.gj, align 8, !tbaa !21
  %13 = trunc nuw i64 %.pre.i to i32
  store i32 %13, ptr %i.m, align 4, !tbaa !17
  %exitcond17.not.i.i.i = icmp eq i64 %.pre.i, %wide.trip.count.i17.i.i
  br i1 %exitcond17.not.i.i.i, label %process_diff_filepair.exit, label %.preheader.i18.i.i, !llvm.loop !209

process_diff_filepair.exit.thread:                ; preds = %bb.f, %bb.g, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %.thread

process_diff_filepair.exit:                       ; preds = %range_set_append.exit48.i.i, %diff_ranges_filter_touched.exit.i.i, %range_set_difference.exit.i.i
  %i.gk = phi ptr [ null, %diff_ranges_filter_touched.exit.i.i ], [ null, %range_set_difference.exit.i.i ], [ %i.gh, %range_set_append.exit48.i.i ]
  %.sroa.15.463.i.i = phi ptr [ null, %diff_ranges_filter_touched.exit.i.i ], [ %.sroa.15.1.i.i, %range_set_difference.exit.i.i ], [ %.sroa.15.1.i.i, %range_set_append.exit48.i.i ]
  call fastcc void @range_set_union(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %i.bm)
  call void @free(ptr noundef %.sroa.15.463.i.i) #13
  call void @free(ptr noundef %i.gk) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.gl = getelementptr inbounds nuw i8, ptr %.02981.i, i64 24 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !16
  call void @free(ptr noundef %i.gm) #13
  %i.gn = load ptr, ptr %i.o, align 8, !tbaa !16
  store ptr %i.gn, ptr %i.gl, align 8, !tbaa !16
  %i.go = load <2 x i32>, ptr %9, align 8, !tbaa !210
  store <2 x i32> %i.go, ptr %i.ad, align 8, !tbaa !210
  %i.gp = load ptr, ptr %i.l, align 8, !tbaa !16
  call void @free(ptr noundef %i.gp) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.gq = load ptr, ptr %i.k, align 8, !tbaa !16
  call void @free(ptr noundef %i.gq) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  call void @free(ptr noundef %.0.i) #13
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !211
  %.not45 = icmp eq i32 %i.gs, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br i1 %.not45, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %process_diff_filepair.exit
  %i.gt = add nsw i32 %.024110, 1
  %i.gu = load ptr, ptr %i.u, align 8, !tbaa !145
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !111
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.aq
  %.0108 = phi ptr [ %3, %bb.ao ], [ %i.ha, %bb.aq ] ; 7 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.0108, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !126
  %i.gz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gy, ptr noundef nonnull dereferenceable(1) %i.gw) #15
  %.not29 = icmp eq i32 %i.gz, 0
  br i1 %.not29, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ha = load ptr, ptr %.0108, align 8, !tbaa !131 ; 2 uses
  %.not28 = icmp eq ptr %i.ha, null
  br i1 %.not28, label %.critedge32, label %bb.ap, !llvm.loop !212

.critedge32:                                      ; preds = %bb.aq
  call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 988, ptr noundef nonnull @__PRETTY_FUNCTION__.process_all_files) #14
  unreachable

.critedge:                                        ; preds = %bb.ap
  %i.hb = getelementptr inbounds nuw i8, ptr %.0108, i64 32 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !139 ; 2 uses
  %.not30 = icmp eq ptr %i.hc, null
  br i1 %.not30, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.critedge
  call void @diff_free_filepair(ptr noundef nonnull %i.hc) #13
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.critedge
  %i.hd = load ptr, ptr %2, align 8, !tbaa !181
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !183 ; 2 uses
  %i.hg = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #13 ; 3 uses
  %i.hh = load ptr, ptr %i.hf, align 8, !tbaa !142 ; 2 uses
  store ptr %i.hh, ptr %i.hg, align 8, !tbaa !142
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !145 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !145
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 72 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !146
  %i.hn = add nsw i32 %i.hm, 1
  store i32 %i.hn, ptr %i.hl, align 8, !tbaa !146
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 72 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !146
  %i.hq = add nsw i32 %i.hp, 1
  store i32 %i.hq, ptr %i.ho, align 8, !tbaa !146
  store ptr %i.hg, ptr %i.hb, align 8, !tbaa !139
  %i.hr = getelementptr inbounds nuw i8, ptr %.0108, i64 40 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.0108, i64 48
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !16
  call void @free(ptr noundef %i.ht) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i8 0, i64 16, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %.0108, i64 56
  %i.hv = getelementptr inbounds nuw i8, ptr %.0108, i64 64
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !16
  call void @free(ptr noundef %i.hw) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hr, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false)
  call void @free(ptr noundef %i.bm) #13
  br label %.thread

bb.at:                                            ; preds = %process_diff_filepair.exit
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !16
  call void @free(ptr noundef %i.hy) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !16
  call void @free(ptr noundef %i.ia) #13
  call void @free(ptr noundef nonnull %i.bm) #13
  br label %.thread

.thread:                                          ; preds = %process_diff_filepair.exit.thread, %bb.as, %bb.at
  %.144 = phi i32 [ %.024110, %bb.at ], [ %.024110, %process_diff_filepair.exit.thread ], [ %i.gt, %bb.as ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ib = load i32, ptr %i.b, align 4, !tbaa !178
  %i.ic = sext i32 %i.ib to i64
  %i.id = icmp slt i64 %indvars.iv.next, %i.ic
  br i1 %i.id, label %bb.b, label %._crit_edge, !llvm.loop !213

._crit_edge:                                      ; preds = %.thread, %bb.a
  %.024.lcssa = phi i32 [ 0, %bb.a ], [ %.144, %.thread ]
  ret i32 %.024.lcssa
}

declare void @diff_queue_clear(ptr noundef) local_unnamed_addr #6

declare void @commit_list_free(ptr noundef) local_unnamed_addr #6

declare ptr @commit_list_append(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @get_commit_tree_oid(ptr noundef) local_unnamed_addr #6

declare void @clear_pathspec(ptr noundef) local_unnamed_addr #6

declare void @diff_tree_oid(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @repo_diff_setup(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @diff_setup_done(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @filter_diffs_for_paths(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.diff_queue_struct, align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !178
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not15 = icmp eq i32 %1, 0
  br i1 %.not15, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  %i.c = load ptr, ptr @diff_queued_diff, align 8, !tbaa !181
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv22
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !183  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !145  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load i16, ptr %i.h, align 8, !tbaa !184
  %.not.us = icmp eq i16 %i.i, 0
  br i1 %.not.us, label %bb.e, label %.preheader.us

bb.b:                                             ; preds = %.preheader.us, %bb.c
  %.018.us = phi ptr [ %0, %.preheader.us ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.018.us, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !126
  %i.l = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(1) %i.r) #15
  %.not17.us = icmp eq i32 %i.l, 0
  br i1 %.not17.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %.018.us, align 8, !tbaa !131 ; 2 uses
  %.not16.us = icmp eq ptr %i.m, null
  br i1 %.not16.us, label %.critedge.us, label %bb.b, !llvm.loop !214

bb.d:                                             ; preds = %bb.b
  call void @diff_q(ptr noundef nonnull %2, ptr noundef %i.e) #13
  br label %bb.f

.critedge.us:                                     ; preds = %bb.c
  call void @diff_free_filepair(ptr noundef %i.e) #13
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us
  call void @diff_free_filepair(ptr noundef nonnull %i.e) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge.us, %bb.d
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !178
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next23, %i.o
  br i1 %i.p, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !215

.preheader.us:                                    ; preds = %.lr.ph.split.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !111
  br label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %.lr.ph ] ; 2 uses
end_hunk_0
