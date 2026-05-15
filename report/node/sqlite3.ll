inline.NumInlined: 12421
inline.NumDeleted: 1708
begin_hunk_0_@sqlite3_str_vappendf:bb.a
  %epil.iter2128.cmp.not = icmp eq i64 %epil.iter2128.next, %xtraiter2127
  br i1 %epil.iter2128.cmp.not, label %._crit_edge189.i, label %.lr.ph188.i.epil, !llvm.loop !333

._crit_edge189.i:                                 ; preds = %._crit_edge189.i.loopexit.unr-lcssa, %.lr.ph188.i.epil, %.critedge.thread.i
  %.0123185.lcssa229.i = phi i32 [ 1, %.critedge.thread.i ], [ %.0123185.lcssa.ph.i, %.lr.ph188.i.epil ], [ %.0123185.lcssa.ph.i, %._crit_edge189.i.loopexit.unr-lcssa ]
  %.0121.in.lcssa.i = phi i64 [ %i.wq, %.critedge.thread.i ], [ %i.xv, %._crit_edge189.i.loopexit.unr-lcssa ], [ %i.yb, %.lr.ph188.i.epil ]
  %i.yc = add i64 %.0121.in.lcssa.i, -47
  br label %.thread169.sink.split.i

bb.ge:                                            ; preds = %bb.gc
  %.not147.i = icmp slt i32 %i.uo, %.0133161.i
  br i1 %.not147.i, label %bb.gf, label %.preheader2065

.thread167.i:                                     ; preds = %bb.gd
  %.not147168.i = icmp slt i32 %i.uo, %.0133161.i
  br i1 %.not147168.i, label %.thread169.i, label %.preheader2065

bb.gf:                                            ; preds = %bb.ge
  %i.yd = icmp eq i8 %i.uw, 48
  br i1 %i.yd, label %bb.gg, label %.thread169.i

bb.gg:                                            ; preds = %bb.gf
  %i.ye = getelementptr i8, ptr %i.uq, i64 15
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !227
  %i.yg = icmp eq i8 %i.yf, 48
  br i1 %i.yg, label %bb.gh, label %.thread169.i

bb.gh:                                            ; preds = %bb.gg
  %i.yh = getelementptr i8, ptr %i.uq, i64 14
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !227
  %i.yj = icmp eq i8 %i.yi, 48
  br i1 %i.yj, label %.preheader2065, label %.thread169.i

.preheader2065:                                   ; preds = %bb.gh, %.thread167.i, %bb.ge
  br label %bb.gi

bb.gi:                                            ; preds = %.preheader2065, %bb.gi
  %indvars.iv197.i = phi i64 [ %indvars.iv.next198.i, %bb.gi ], [ 14, %.preheader2065 ] ; 5 uses
  %i.yk = getelementptr i8, ptr %i.up, i64 %indvars.iv197.i
  %i.yl = getelementptr i8, ptr %i.yk, i64 -1
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !227
  %i.yn = icmp eq i8 %i.ym, 48
  %indvars.iv.next198.i = add i64 %indvars.iv197.i, -1
  br i1 %i.yn, label %bb.gi, label %bb.gj, !llvm.loop !335

bb.gj:                                            ; preds = %bb.gi
  %indvars1497.le = trunc i64 %indvars.iv197.i to i32 ; 3 uses
  %i.yo = load i8, ptr %i.up, align 1, !tbaa !227
  %i.yp = sext i8 %i.yo to i64
  %.0118178.i = add nsw i64 %i.yp, -48            ; 3 uses
  %i.yq = icmp sgt i64 %indvars.iv197.i, 1
  br i1 %i.yq, label %.lr.ph182.preheader.i, label %.thread169.sink.split.i

.lr.ph182.preheader.i:                            ; preds = %bb.gj
  %wide.trip.count.i = and i64 %indvars.iv197.i, 4294967295 ; 2 uses
  %i.yr = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.ys = add nsw i64 %wide.trip.count.i, -2
  %xtraiter2121 = and i64 %i.yr, 3                ; 3 uses
  %i.yt = icmp ult i64 %i.ys, 3
  br i1 %i.yt, label %.lr.ph182.i.epil.preheader, label %.lr.ph182.preheader.i.new

.lr.ph182.preheader.i.new:                        ; preds = %.lr.ph182.preheader.i
  %unroll_iter2125 = and i64 %i.yr, -4
  br label %.lr.ph182.i

.lr.ph182.i:                                      ; preds = %.lr.ph182.i, %.lr.ph182.preheader.i.new
  %indvars.iv200.i = phi i64 [ 1, %.lr.ph182.preheader.i.new ], [ %indvars.iv.next201.i.3, %.lr.ph182.i ] ; 5 uses
  %.0118180.i = phi i64 [ %.0118178.i, %.lr.ph182.preheader.i.new ], [ %.0118.i.3, %.lr.ph182.i ]
  %niter2126 = phi i64 [ 0, %.lr.ph182.preheader.i.new ], [ %niter2126.next.3, %.lr.ph182.i ]
  %i.yu = mul i64 %.0118180.i, 10
  %i.yv = getelementptr inbounds nuw i8, ptr %i.up, i64 %indvars.iv200.i
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !227
  %i.yx = sext i8 %i.yw to i64
  %i.yy = add i64 %i.yu, -48
  %.0118.i = add i64 %i.yy, %i.yx
  %i.yz = mul i64 %.0118.i, 10
  %i.za = getelementptr inbounds nuw i8, ptr %i.up, i64 %indvars.iv200.i
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 1
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !227
  %i.zd = sext i8 %i.zc to i64
  %i.ze = add i64 %i.yz, -48
  %.0118.i.1 = add i64 %i.ze, %i.zd
  %i.zf = mul i64 %.0118.i.1, 10
  %i.zg = getelementptr inbounds nuw i8, ptr %i.up, i64 %indvars.iv200.i
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 2
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !227
  %i.zj = sext i8 %i.zi to i64
  %i.zk = add i64 %i.zf, -48
  %.0118.i.2 = add i64 %i.zk, %i.zj
  %i.zl = mul i64 %.0118.i.2, 10
  %i.zm = getelementptr inbounds nuw i8, ptr %i.up, i64 %indvars.iv200.i
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 3
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !227
  %i.zp = sext i8 %i.zo to i64
  %indvars.iv.next201.i.3 = add nuw nsw i64 %indvars.iv200.i, 4 ; 2 uses
  %i.zq = add i64 %i.zl, -48
  %.0118.i.3 = add i64 %i.zq, %i.zp               ; 3 uses
  %niter2126.next.3 = add i64 %niter2126, 4       ; 2 uses
  %niter2126.ncmp.3 = icmp eq i64 %niter2126.next.3, %unroll_iter2125
  br i1 %niter2126.ncmp.3, label %.thread169.sink.split.i.loopexit.unr-lcssa, label %.lr.ph182.i, !llvm.loop !336

.thread169.sink.split.i.loopexit.unr-lcssa:       ; preds = %.lr.ph182.i
  %lcmp.mod2122.not = icmp eq i64 %xtraiter2121, 0
  br i1 %lcmp.mod2122.not, label %.thread169.sink.split.i, label %.lr.ph182.i.epil.preheader

.lr.ph182.i.epil.preheader:                       ; preds = %.thread169.sink.split.i.loopexit.unr-lcssa, %.lr.ph182.preheader.i
  %indvars.iv200.i.epil.init = phi i64 [ 1, %.lr.ph182.preheader.i ], [ %indvars.iv.next201.i.3, %.thread169.sink.split.i.loopexit.unr-lcssa ]
  %.0118180.i.epil.init = phi i64 [ %.0118178.i, %.lr.ph182.preheader.i ], [ %.0118.i.3, %.thread169.sink.split.i.loopexit.unr-lcssa ]
  %lcmp.mod2124 = icmp ne i64 %xtraiter2121, 0
  call void @llvm.assume(i1 %lcmp.mod2124)
  br label %.lr.ph182.i.epil

.lr.ph182.i.epil:                                 ; preds = %.lr.ph182.i.epil, %.lr.ph182.i.epil.preheader
  %indvars.iv200.i.epil = phi i64 [ %indvars.iv200.i.epil.init, %.lr.ph182.i.epil.preheader ], [ %indvars.iv.next201.i.epil, %.lr.ph182.i.epil ] ; 2 uses
  %.0118180.i.epil = phi i64 [ %.0118180.i.epil.init, %.lr.ph182.i.epil.preheader ], [ %.0118.i.epil, %.lr.ph182.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph182.i.epil.preheader ], [ %epil.iter.next, %.lr.ph182.i.epil ]
  %i.zr = mul i64 %.0118180.i.epil, 10
  %i.zs = getelementptr inbounds nuw i8, ptr %i.up, i64 %indvars.iv200.i.epil
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !227
  %i.zu = sext i8 %i.zt to i64
  %indvars.iv.next201.i.epil = add nuw nsw i64 %indvars.iv200.i.epil, 1
  %i.zv = add i64 %i.zr, -48
  %.0118.i.epil = add i64 %i.zv, %i.zu            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2121
  br i1 %epil.iter.cmp.not, label %.thread169.sink.split.i, label %.lr.ph182.i.epil, !llvm.loop !337

.thread169.sink.split.i:                          ; preds = %.thread169.sink.split.i.loopexit.unr-lcssa, %.lr.ph182.i.epil, %bb.gj, %._crit_edge189.i, %.preheader171.13.i
  %.0123174.sink236.i = phi i32 [ 0, %.preheader171.13.i ], [ %.0123185.lcssa229.i, %._crit_edge189.i ], [ %indvars1497.le, %bb.gj ], [ %indvars1497.le, %.lr.ph182.i.epil ], [ %indvars1497.le, %.thread169.sink.split.i.loopexit.unr-lcssa ] ; 2 uses
  %.1.sink.i = phi i64 [ 1, %.preheader171.13.i ], [ %i.yc, %._crit_edge189.i ], [ %.0118178.i, %bb.gj ], [ %.0118.i.3, %.thread169.sink.split.i.loopexit.unr-lcssa ], [ %.0118.i.epil, %.lr.ph182.i.epil ]
  %i.zw = add i32 %i.re, %.0123174.sink236.i
  %i.zx = sub i32 %.0133161.i, %i.zw
  %i.zy = call fastcc double @sqlite3Fp10Convert2(i64 noundef %.1.sink.i, i32 noundef %i.zx)
  %i.zz = fcmp oeq double %.0124.i, %i.zy
  %i.aaa = add nsw i32 %.0123174.sink236.i, 1
  %.2.i = select i1 %i.zz, i32 %i.aaa, i32 17
  br label %.thread169.i

.thread169.i:                                     ; preds = %.thread169.sink.split.i, %bb.gh, %bb.gg, %bb.gf, %.thread167.i, %bb.gb
  %.4.i = phi i32 [ %i.ut, %bb.gb ], [ 17, %.thread167.i ], [ 17, %bb.gh ], [ 17, %bb.gg ], [ 17, %bb.gf ], [ %.2.i, %.thread169.sink.split.i ] ; 4 uses
  %i.aab = sext i32 %.4.i to i64                  ; 2 uses
  %i.aac = getelementptr inbounds i8, ptr %i.up, i64 %i.aab
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !227
  %i.aae = icmp sgt i8 %i.aad, 52
  br i1 %i.aae, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %.thread169.i, %bb.gk
  %indvars.iv210.i = phi i64 [ %indvars.iv.next211.i, %bb.gk ], [ %i.aab, %.thread169.i ]
  %indvars.iv.next211.i = add nsw i64 %indvars.iv210.i, -1 ; 3 uses
  %i.aaf = getelementptr inbounds i8, ptr %i.up, i64 %indvars.iv.next211.i ; 3 uses
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !227
  %i.aah = add i8 %i.aag, 1                       ; 2 uses
  store i8 %i.aah, ptr %i.aaf, align 1, !tbaa !227
  %i.aai = icmp slt i8 %i.aah, 58
  br i1 %i.aai, label %.loopexit.i, label %bb.gk

bb.gk:                                            ; preds = %.preheader.i
  store i8 48, ptr %i.aaf, align 1, !tbaa !227
  %i.aaj = icmp eq i64 %indvars.iv.next211.i, 0
  br i1 %i.aaj, label %bb.gl, label %.preheader.i

bb.gl:                                            ; preds = %bb.gk
  store i8 49, ptr %i.uq, align 1, !tbaa !227
  %i.aak = add nsw i32 %.4.i, 1
  %i.aal = load i32, ptr %i.af, align 4, !tbaa !328
  %i.aam = add nsw i32 %i.aal, 1
  store i32 %i.aam, ptr %i.af, align 4, !tbaa !328
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.gl, %.thread169.i, %bb.ga, %bb.fz, %bb.fx
  %.2135.i = phi i32 [ %i.ty, %bb.fz ], [ %.4.i, %.thread169.i ], [ %.0133161.i, %bb.ga ], [ %i.ty, %bb.fx ], [ %i.aak, %bb.gl ], [ %.4.i, %.preheader.i ]
  %.1128.i = phi ptr [ %i.ud, %bb.fz ], [ %i.up, %.thread169.i ], [ %i.up, %bb.ga ], [ %i.ud, %bb.fx ], [ %i.uq, %bb.gl ], [ %i.up, %.preheader.i ] ; 2 uses
  %i.aan = sext i32 %.2135.i to i64
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gm, %.loopexit.i
  %indvars.iv213.i = phi i64 [ %indvars.iv.next214.i, %bb.gm ], [ %i.aan, %.loopexit.i ] ; 3 uses
  %i.aao = getelementptr i8, ptr %.1128.i, i64 %indvars.iv213.i
  %i.aap = getelementptr i8, ptr %i.aao, i64 -1
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !227
  %i.aar = icmp eq i8 %i.aaq, 48
  %indvars.iv.next214.i = add nsw i64 %indvars.iv213.i, -1
  br i1 %i.aar, label %bb.gm, label %bb.gn, !llvm.loop !338

bb.gn:                                            ; preds = %bb.gm
  %i.aas = trunc nsw i64 %indvars.iv213.i to i32
  store i32 %i.aas, ptr %3, align 8, !tbaa !327
  %.pr.pre = load i8, ptr %i.ad, align 1, !tbaa !324
  br label %sqlite3FpDecode.exit

sqlite3FpDecode.exit:                             ; preds = %bb.gn, %bb.fi
  %i.aat = phi i8 [ %i.qo, %bb.fi ], [ %.pr.pre, %bb.gn ]
  %.1128.sink.i = phi ptr [ %i.ag, %bb.fi ], [ %.1128.i, %bb.gn ] ; 2 uses
  store ptr %.1128.sink.i, ptr %i.ah, align 8, !tbaa !329
  switch i8 %i.aat, label %bb.gp [
    i8 0, label %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge
    i8 2, label %bb.go
  ]

sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge: ; preds = %sqlite3FpDecode.exit
  %.pre.pre.pre = load i32, ptr %i.af, align 4, !tbaa !328
  br label %sqlite3FpDecode.exit._crit_edge

bb.go:                                            ; preds = %sqlite3FpDecode.exit
  %.not884 = icmp eq i8 %.17651094, 0             ; 2 uses
  %i.aau = select i1 %.not884, ptr @.str.2, ptr @.str.1
  %i.aav = select i1 %.not884, i32 3, i32 4
  br label %printfTempBuf.exit953

bb.gp:                                            ; preds = %sqlite3FpDecode.exit
  %.not872 = icmp eq i8 %.17651094, 0
  br i1 %.not872, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  store i8 57, ptr %.1128.sink.i, align 1, !tbaa !227
  store i32 1000, ptr %i.af, align 4, !tbaa !328
  store i32 1, ptr %3, align 8, !tbaa !327
  br label %sqlite3FpDecode.exit._crit_edge

bb.gr:                                            ; preds = %bb.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  %i.aaw = load i8, ptr %i.ae, align 4, !tbaa !326
  %i.aax = icmp eq i8 %i.aaw, 45
  br i1 %i.aax, label %bb.gu, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %.not873 = icmp eq i8 %.16981102, 0
  br i1 %.not873, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  store i8 %.16981102, ptr %i.a, align 16, !tbaa !227
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gs, %bb.gt, %bb.gr
  %.9604 = phi ptr [ %i.a, %bb.gr ], [ %i.a, %bb.gt ], [ %i.z, %bb.gs ] ; 2 uses
  %i.aay = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.9604) #72
  %i.aaz = trunc i64 %i.aay to i32
  %i.aba = and i32 %i.aaz, 1073741823
  br label %printfTempBuf.exit953

sqlite3FpDecode.exit._crit_edge:                  ; preds = %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge, %bb.gq
  %.pre.ph = phi i32 [ %.pre.pre.pre, %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge ], [ 1000, %bb.gq ] ; 3 uses
  %.pr = load i8, ptr %i.ae, align 4, !tbaa !326
  %i.abb = icmp eq i8 %.pr, 45
  br i1 %i.abb, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %sqlite3FpDecode.exit._crit_edge
  %i.abc = icmp eq i8 %.17131100, 0
  %i.abd = icmp ne i8 %.16981102, 0
  %or.cond10.not876.not1213 = select i1 %i.abc, i1 true, i1 %i.abd
  %or.cond13.not1210 = or i1 %or.cond10.not876.not1213, %i.qb
  %.not877 = icmp sgt i32 %.pre.ph, %.0677
  %or.cond = select i1 %or.cond13.not1210, i1 true, i1 %.not877
  %spec.select916 = select i1 %or.cond, i8 45, i8 0
  br label %bb.gw

bb.gw:                                            ; preds = %sqlite3FpDecode.exit._crit_edge.thread, %bb.gv, %sqlite3FpDecode.exit._crit_edge
  %.pre1923 = phi i32 [ %.pre.ph, %bb.gv ], [ %.pre.ph, %sqlite3FpDecode.exit._crit_edge ], [ 1, %sqlite3FpDecode.exit._crit_edge.thread ] ; 4 uses
  %.2748 = phi i8 [ %spec.select916, %bb.gv ], [ %.16981102, %sqlite3FpDecode.exit._crit_edge ], [ %.16981102, %sqlite3FpDecode.exit._crit_edge.thread ] ; 3 uses
  %i.abe = and i32 %.0665, -9                     ; 2 uses
  %i.abf = icmp eq i32 %i.abe, 3
  br i1 %i.abf, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.abg = xor i8 %.17131100, 1
  %i.abh = icmp slt i32 %.pre1923, -3
  %i.abi = icmp sgt i32 %.pre1923, %.6612
  %or.cond903 = select i1 %i.abh, i1 true, i1 %i.abi ; 2 uses
  %i.abj = sub i32 0, %.pre1923
  %spec.select918.p = select i1 %or.cond903, i32 -1, i32 %i.abj
  %spec.select918 = add i32 %spec.select918.p, %.6612
  br label %bb.gz

bb.gy:                                            ; preds = %bb.gw
  %i.abk = icmp eq i32 %i.abe, 1
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gx, %bb.gy
  %.1751 = phi i1 [ %i.abk, %bb.gy ], [ %or.cond903, %bb.gx ] ; 2 uses
  %.0711 = phi i8 [ %.17671092, %bb.gy ], [ %i.abg, %bb.gx ]
  %.7613 = phi i32 [ %.6612, %bb.gy ], [ %spec.select918, %bb.gx ]
  %.7613.fr = freeze i32 %.7613                   ; 4 uses
  %i.abl = add nsw i32 %.pre1923, -1
  %.0718 = select i1 %.1751, i32 0, i32 %i.abl    ; 6 uses
  %i.abm = icmp sgt i32 %.0718, 0
  %i.abn = call i32 @llvm.smax.i32(i32 %.0718, i32 0)
  %i.abo = zext nneg i32 %i.abn to i64
  %i.abp = sext i32 %.7613.fr to i64
  %i.abq = zext nneg i32 %.36811106 to i64
  %i.abr = add nuw nsw i64 %i.abq, 15
  %i.abs = add nuw nsw i64 %i.abr, %i.abo
  %i.abt = add nsw i64 %i.abs, %i.abp             ; 2 uses
  %i.abu = icmp ne i8 %.17541098, 0               ; 2 uses
  %or.cond15 = select i1 %i.abu, i1 %i.abm, i1 false
  br i1 %or.cond15, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.abv = add nuw nsw i32 %.0718, 2
  %i.abw = udiv i32 %i.abv, 3
  %i.abx = zext nneg i32 %i.abw to i64
  %i.aby = add nsw i64 %i.abt, %i.abx
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %.0671 = phi i64 [ %i.aby, %bb.ha ], [ %i.abt, %bb.gz ] ; 5 uses
  %i.abz = icmp sgt i64 %.0671, 70
  br i1 %i.abz, label %bb.hc, label %bb.ht

bb.hc:                                            ; preds = %bb.hb
  %i.aca = load i8, ptr %i.x, align 4, !tbaa !298
  %.not.i951 = icmp eq i8 %i.aca, 0
  br i1 %.not.i951, label %bb.hd, label %printfTempBuf.exit953.thread1156

bb.hd:                                            ; preds = %bb.hc
  %i.acb = load i32, ptr %i.r, align 8, !tbaa !280
  %i.acc = zext i32 %i.acb to i64
  %i.acd = icmp samesign ugt i64 %.0671, %i.acc
  br i1 %i.acd, label %bb.he, label %bb.hm

bb.he:                                            ; preds = %bb.hd
  %i.ace = load i32, ptr %i.y, align 4, !tbaa !299 ; 2 uses
  %i.acf = zext i32 %i.ace to i64
  %i.acg = icmp samesign ugt i64 %.0671, %i.acf
  br i1 %i.acg, label %bb.hf, label %bb.hm

bb.hf:                                            ; preds = %bb.he
  store i8 18, ptr %i.x, align 4, !tbaa !298
  %.not.i1025 = icmp eq i32 %i.ace, 0
  br i1 %.not.i1025, label %bb.hj, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.ach = load i8, ptr %i.b, align 1, !tbaa !275 ; 2 uses
  %i.aci = and i8 %i.ach, 4
  %.not.i.i1026 = icmp eq i8 %i.aci, 0
  br i1 %.not.i.i1026, label %sqlite3_str_reset.exit.i1030, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.acj = load ptr, ptr %i.s, align 8, !tbaa !282 ; 2 uses
  %.not.i.i.i1027 = icmp eq ptr %i.acj, null
  br i1 %.not.i.i.i1027, label %sqlite3DbFree.exit.i.i1029, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ack = load ptr, ptr %0, align 8, !tbaa !300
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.ack, ptr noundef nonnull %i.acj)
  %.pre.i.i1028 = load i8, ptr %i.b, align 1, !tbaa !275
  br label %sqlite3DbFree.exit.i.i1029

sqlite3DbFree.exit.i.i1029:                       ; preds = %bb.hi, %bb.hh
  %i.acl = phi i8 [ %i.ach, %bb.hh ], [ %.pre.i.i1028, %bb.hi ]
  %i.acm = and i8 %i.acl, -5
  store i8 %i.acm, ptr %i.b, align 1, !tbaa !275
  br label %sqlite3_str_reset.exit.i1030

sqlite3_str_reset.exit.i1030:                     ; preds = %sqlite3DbFree.exit.i.i1029, %bb.hg
  store i32 0, ptr %i.r, align 8, !tbaa !280
  store i32 0, ptr %i.q, align 8, !tbaa !279
  store ptr null, ptr %i.s, align 8, !tbaa !282
  br label %bb.hj

bb.hj:                                            ; preds = %sqlite3_str_reset.exit.i1030, %bb.hf
  %i.acn = load ptr, ptr %0, align 8, !tbaa !300  ; 2 uses
  %i.aco = icmp eq ptr %i.acn, null
  br i1 %i.aco, label %printfTempBuf.exit953.thread1156, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acn, i64 344
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !301 ; 3 uses
  %i.acr = icmp eq ptr %i.acq, null
  br i1 %i.acr, label %printfTempBuf.exit953.thread1156, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acq, i64 24
  store i32 18, ptr %i.acs, align 8, !tbaa !302
  %i.act = getelementptr inbounds nuw i8, ptr %i.acq, i64 52 ; 2 uses
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !313
  %i.acv = add nsw i32 %i.acu, 1
  store i32 %i.acv, ptr %i.act, align 4, !tbaa !313
  br label %printfTempBuf.exit953.thread1156

bb.hm:                                            ; preds = %bb.he, %bb.hd
  %i.acw = load ptr, ptr %0, align 8, !tbaa !300  ; 2 uses
  %.not.i1022 = icmp eq ptr %i.acw, null
  br i1 %.not.i1022, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.acx = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.acw, i64 noundef range(i64 47, -9223372036854775808) %.0671), !inline_history !314
  br label %sqlite3DbMallocRaw.exit1024

bb.ho:                                            ; preds = %bb.hm
  %i.acy = call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 47, -9223372036854775808) %.0671), !inline_history !314
  br label %sqlite3DbMallocRaw.exit1024

sqlite3DbMallocRaw.exit1024:                      ; preds = %bb.hn, %bb.ho
  %.0.i1023 = phi ptr [ %i.acx, %bb.hn ], [ %i.acy, %bb.ho ] ; 3 uses
  %i.acz = icmp eq ptr %.0.i1023, null
  br i1 %i.acz, label %bb.hp, label %bb.ht

bb.hp:                                            ; preds = %sqlite3DbMallocRaw.exit1024
  store i8 7, ptr %i.x, align 4, !tbaa !298
  %i.ada = load i32, ptr %i.y, align 4, !tbaa !299
  %.not.i1015 = icmp eq i32 %i.ada, 0
end_hunk_0
begin_hunk_1_@vdbeCommit:bb.a

sqlite3Strlen30.exit.thread:                      ; preds = %sqlite3BtreeGetFilename.exit, %sqlite3Strlen30.exit
  br i1 %.not177, label %.lr.ph318.preheader, label %.preheader

.lr.ph318.preheader:                              ; preds = %.preheader, %sqlite3Strlen30.exit.thread
  br label %.lr.ph318

.preheader:                                       ; preds = %sqlite3Strlen30.exit.thread, %sqlite3BtreeTxnState.exit206.thread
  %indvars.iv338 = phi i64 [ %indvars.iv.next339, %sqlite3BtreeTxnState.exit206.thread ], [ 0, %sqlite3Strlen30.exit.thread ] ; 3 uses
  %i.cr = load i32, ptr %i.s, align 8, !tbaa !60
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv338, %i.cs
  br i1 %i.ct, label %bb.z, label %.lr.ph318.preheader

bb.z:                                             ; preds = %.preheader
  %i.cu = load ptr, ptr %i.t, align 8, !tbaa !61
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %indvars.iv338
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !62 ; 3 uses
  %.not.i205 = icmp eq ptr %i.cx, null
  br i1 %.not.i205, label %sqlite3BtreeTxnState.exit206.thread, label %sqlite3BtreeTxnState.exit206

sqlite3BtreeTxnState.exit206:                     ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !646
  %i.da = icmp ugt i8 %i.cz, 1
  br i1 %i.da, label %bb.aa, label %sqlite3BtreeTxnState.exit206.thread

bb.aa:                                            ; preds = %sqlite3BtreeTxnState.exit206
  %i.db = tail call fastcc i32 @sqlite3BtreeCommitPhaseOne(ptr noundef nonnull %i.cx, ptr noundef null)
  br label %sqlite3BtreeTxnState.exit206.thread

sqlite3BtreeTxnState.exit206.thread:              ; preds = %bb.z, %bb.aa, %sqlite3BtreeTxnState.exit206
  %.4151 = phi i32 [ %i.db, %bb.aa ], [ 0, %sqlite3BtreeTxnState.exit206 ], [ 0, %bb.z ] ; 2 uses
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1
  %i.dc = icmp eq i32 %.4151, 0
  br i1 %i.dc, label %.preheader, label %.critedge191, !llvm.loop !2425

.lr.ph318:                                        ; preds = %.lr.ph318.preheader, %sqlite3BtreeTxnState.exit208.thread
  %indvars.iv341 = phi i64 [ %indvars.iv.next342, %sqlite3BtreeTxnState.exit208.thread ], [ 0, %.lr.ph318.preheader ] ; 3 uses
  %i.dd = load i32, ptr %i.s, align 8, !tbaa !60
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv341, %i.de
  br i1 %i.df, label %bb.ab, label %.critedge6

bb.ab:                                            ; preds = %.lr.ph318
  %i.dg = load ptr, ptr %i.t, align 8, !tbaa !61
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %indvars.iv341
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !62 ; 3 uses
  %.not.i207 = icmp eq ptr %i.dj, null
  br i1 %.not.i207, label %sqlite3BtreeTxnState.exit208.thread, label %sqlite3BtreeTxnState.exit208

sqlite3BtreeTxnState.exit208:                     ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !646
  %.not188 = icmp eq i8 %i.dl, 0
  br i1 %.not188, label %sqlite3BtreeTxnState.exit208.thread, label %bb.ac

bb.ac:                                            ; preds = %sqlite3BtreeTxnState.exit208
  %i.dm = tail call fastcc i32 @sqlite3BtreeCommitPhaseTwo(ptr noundef nonnull %i.dj, i32 noundef 0)
  br label %sqlite3BtreeTxnState.exit208.thread

sqlite3BtreeTxnState.exit208.thread:              ; preds = %bb.ab, %bb.ac, %sqlite3BtreeTxnState.exit208
  %.7 = phi i32 [ %i.dm, %bb.ac ], [ 0, %sqlite3BtreeTxnState.exit208 ], [ 0, %bb.ab ] ; 2 uses
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1
  %i.dn = icmp eq i32 %.7, 0
  br i1 %i.dn, label %.lr.ph318, label %.critedge191, !llvm.loop !2426

.critedge6:                                       ; preds = %.lr.ph318
  tail call fastcc void @callFinaliser(ptr noundef nonnull %0, i32 noundef 128)
  br label %.critedge191

bb.ad:                                            ; preds = %sqlite3Strlen30.exit
  %i.do = load ptr, ptr %0, align 8, !tbaa !536   ; 13 uses
  br i1 %.not4.i.i, label %bb.ae, label %sqlite3BtreeGetFilename.exit212.thread

bb.ae:                                            ; preds = %bb.ad
  %i.dp = load ptr, ptr %.val198.val, align 8, !tbaa !1310
  %.not6.i.i211 = icmp eq ptr %i.dp, @memdb_vfs
  br i1 %.not6.i.i211, label %sqlite3BtreeGetFilename.exit212.thread, label %sqlite3BtreeGetFilename.exit212

sqlite3BtreeGetFilename.exit212.thread:           ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #71
  store ptr null, ptr %i.a, align 8, !tbaa !1309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #71
  br label %bb.af

sqlite3BtreeGetFilename.exit212:                  ; preds = %bb.ae
  %i.dq = getelementptr inbounds nuw i8, ptr %.val198.val, i64 216
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1349 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #71
  store ptr null, ptr %i.a, align 8, !tbaa !1309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #71
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %sqlite3Strlen30.exit214, label %bb.af

bb.af:                                            ; preds = %sqlite3BtreeGetFilename.exit212.thread, %sqlite3BtreeGetFilename.exit212
  %.0.i.i210254 = phi ptr [ getelementptr inbounds nuw (i8, ptr @sqlite3PagerFilename.zFake, i64 4), %sqlite3BtreeGetFilename.exit212.thread ], [ %i.dr, %sqlite3BtreeGetFilename.exit212 ] ; 2 uses
  %i.dt = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i.i210254) #72
  %i.du = and i64 %i.dt, 1073741823
  br label %sqlite3Strlen30.exit214

sqlite3Strlen30.exit214:                          ; preds = %sqlite3BtreeGetFilename.exit212, %bb.af
  %.0.i.i210255 = phi ptr [ %.0.i.i210254, %bb.af ], [ null, %sqlite3BtreeGetFilename.exit212 ]
  %.0.i213 = phi i64 [ %i.du, %bb.af ], [ 0, %sqlite3BtreeGetFilename.exit212 ]
  %i.dv = tail call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.126, i32 noundef 0, ptr noundef %.0.i.i210255, i32 noundef 0) ; 18 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %.thread290, label %bb.ag

bb.ag:                                            ; preds = %sqlite3Strlen30.exit214
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 12 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.0.i213 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #71
  call void @sqlite3_randomness(i32 noundef 4, ptr noundef nonnull %i.c)
  %i.ea = load i32, ptr %i.c, align 4, !tbaa !5   ; 2 uses
  %i.eb = lshr i32 %i.ea, 8
  %i.ec = and i32 %i.ea, 255
  %i.ed = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 13, ptr noundef nonnull %i.dy, ptr noundef nonnull @.str.129, i32 noundef %i.eb, i32 noundef %i.ec) ; 0 uses
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !1532
  %i.ef = call i32 %i.ee(ptr noundef %i.do, ptr noundef nonnull %i.dx, i32 noundef 0, ptr noundef nonnull %i.b) #71, !inline_history !2030 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #71
  %i.eg = icmp eq i32 %i.ef, 0
  %i.eh = load i32, ptr %i.b, align 4
  %i.ei = icmp ne i32 %i.eh, 0
  %i.ej = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %i.ej, label %bb.ah, label %.loopexit328

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #71
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 13, ptr noundef nonnull @.str.128, ptr noundef nonnull %i.dx)
  call void @sqlite3_randomness(i32 noundef 4, ptr noundef nonnull %i.c)
  %i.ek = load i32, ptr %i.c, align 4, !tbaa !5   ; 2 uses
  %i.el = lshr i32 %i.ek, 8
  %i.em = and i32 %i.ek, 255
  %i.en = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 13, ptr noundef nonnull %i.dy, ptr noundef nonnull @.str.129, i32 noundef %i.el, i32 noundef %i.em) ; 0 uses
  %i.eo = load ptr, ptr %i.dz, align 8, !tbaa !1532
  %i.ep = call i32 %i.eo(ptr noundef nonnull %i.do, ptr noundef nonnull %i.dx, i32 noundef 0, ptr noundef nonnull %i.b) #71, !inline_history !2030 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #71
  %i.eq = icmp eq i32 %i.ep, 0
  %i.er = load i32, ptr %i.b, align 4
  %i.es = icmp ne i32 %i.er, 0
  %i.et = select i1 %i.eq, i1 %i.es, i1 false
  br i1 %i.et, label %.peel.next325.preheader, label %.loopexit328

.peel.next325.preheader:                          ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #71
  br label %bb.aj

.peel.next325:                                    ; preds = %bb.aj
  %i.eu = add nuw nsw i32 %.0155396, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #71
  %i.ev = icmp samesign ugt i32 %.0155396, 99
  br i1 %i.ev, label %.loopexit, label %bb.aj, !llvm.loop !2427

.loopexit:                                        ; preds = %.peel.next325
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 13, ptr noundef nonnull @.str.127, ptr noundef nonnull %i.dx)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !1493 ; 2 uses
  %.not.i215 = icmp eq ptr %i.ex, null
  br i1 %.not.i215, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  %i.ey = call i32 %i.ex(ptr noundef nonnull %i.do, ptr noundef nonnull %i.dx, i32 noundef 0) #71, !inline_history !2084 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.ai, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #71
  br label %bb.ak

bb.aj:                                            ; preds = %.peel.next325.preheader, %.peel.next325
  %.0155396 = phi i32 [ 2, %.peel.next325.preheader ], [ %i.eu, %.peel.next325 ] ; 2 uses
  call void @sqlite3_randomness(i32 noundef 4, ptr noundef nonnull %i.c)
  %i.ez = load i32, ptr %i.c, align 4, !tbaa !5   ; 2 uses
  %i.fa = lshr i32 %i.ez, 8
  %i.fb = and i32 %i.ez, 255
  %i.fc = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 13, ptr noundef nonnull %i.dy, ptr noundef nonnull @.str.129, i32 noundef %i.fa, i32 noundef %i.fb) ; 0 uses
  %i.fd = load ptr, ptr %i.dz, align 8, !tbaa !1532
  %i.fe = call i32 %i.fd(ptr noundef nonnull %i.do, ptr noundef nonnull %i.dx, i32 noundef 0, ptr noundef nonnull %i.b) #71, !inline_history !2030 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #71
  %i.ff = icmp eq i32 %i.fe, 0
  %i.fg = load i32, ptr %i.b, align 4
  %i.fh = icmp ne i32 %i.fg, 0
  %i.fi = select i1 %i.ff, i1 %i.fh, i1 false
  br i1 %i.fi, label %.peel.next325, label %.loopexit328, !llvm.loop !2427

.loopexit328:                                     ; preds = %bb.aj, %bb.ah, %bb.ag
  %.lcssa321 = phi i32 [ %i.ep, %bb.ah ], [ %i.ef, %bb.ag ], [ %i.fe, %bb.aj ] ; 2 uses
  %i.fj = icmp eq i32 %.lcssa321, 0
  br i1 %i.fj, label %bb.ak, label %sqlite3DbFree.exit

bb.ak:                                            ; preds = %.loopexit328, %.thread
  %i.fk = call fastcc i32 @sqlite3OsOpenMalloc(ptr noundef nonnull %i.do, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.a, i32 noundef 16406, ptr noundef null) ; 2 uses
  %.not181 = icmp eq i32 %i.fk, 0
  br i1 %.not181, label %.preheader295, label %sqlite3DbFree.exit

.preheader295:                                    ; preds = %bb.ak
  %i.fl = load i32, ptr %i.s, align 8, !tbaa !60  ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, 0
  %.pre349 = load ptr, ptr %i.a, align 8, !tbaa !1309 ; 15 uses
  br i1 %i.fm, label %.lr.ph311, label %._crit_edge

sqlite3DbFree.exit:                               ; preds = %.loopexit328, %bb.ak
  %.10264 = phi i32 [ %i.fk, %bb.ak ], [ %.lcssa321, %.loopexit328 ]
  call fastcc void @sqlite3DbFreeNN(ptr noundef nonnull %0, ptr noundef nonnull %i.dv)
  br label %.thread290

.lr.ph311:                                        ; preds = %.preheader295, %sqlite3DbFree.exit228
  %i.fn = phi i32 [ %i.ig, %sqlite3DbFree.exit228 ], [ %i.fl, %.preheader295 ] ; 3 uses
  %indvars.iv329 = phi i64 [ %indvars.iv.next330, %sqlite3DbFree.exit228 ], [ 0, %.preheader295 ] ; 2 uses
  %.0157309 = phi i64 [ %.3160279, %sqlite3DbFree.exit228 ], [ 0, %.preheader295 ] ; 5 uses
  %i.fo = load ptr, ptr %i.t, align 8, !tbaa !61
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %indvars.iv329
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !62 ; 3 uses
  %.not.i217 = icmp eq ptr %i.fr, null
  br i1 %.not.i217, label %sqlite3DbFree.exit228, label %sqlite3BtreeTxnState.exit218

sqlite3BtreeTxnState.exit218:                     ; preds = %.lr.ph311
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !646
  %i.fu = icmp eq i8 %i.ft, 2
  br i1 %i.fu, label %bb.al, label %sqlite3DbFree.exit228

bb.al:                                            ; preds = %sqlite3BtreeTxnState.exit218
  %i.fv = getelementptr i8, ptr %i.fr, i64 8
  %.val196 = load ptr, ptr %i.fv, align 8, !tbaa !67
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !73
  %i.fw = getelementptr i8, ptr %.val196.val, i64 224
  %.val196.val.val = load ptr, ptr %i.fw, align 8, !tbaa !2015 ; 4 uses
  %i.fx = icmp eq ptr %.val196.val.val, null
  br i1 %i.fx, label %sqlite3DbFree.exit228, label %sqlite3Strlen30.exit222

sqlite3Strlen30.exit222:                          ; preds = %bb.al
  %i.fy = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.val196.val.val) #72
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = and i32 %i.fz, 1073741823
  %i.gb = add nuw nsw i32 %i.ga, 1
  %i.gc = load ptr, ptr %.pre349, align 8, !tbaa !473
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !681
  %i.gf = call i32 %i.ge(ptr noundef nonnull %.pre349, ptr noundef nonnull %.val196.val.val, i32 noundef %i.gb, i64 noundef %.0157309) #71, !inline_history !682 ; 7 uses
  %.not187 = icmp eq i32 %i.gf, 0
  br i1 %.not187, label %sqlite3Strlen30.exit222.sqlite3DbFree.exit228_crit_edge, label %bb.am

sqlite3Strlen30.exit222.sqlite3DbFree.exit228_crit_edge: ; preds = %sqlite3Strlen30.exit222
  %i.gg = add i64 %.0157309, 1
  %i.gh = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.val196.val.val) #72
  %i.gi = and i64 %i.gh, 1073741823
  %i.gj = add i64 %i.gg, %i.gi
  %.pre = load i32, ptr %i.s, align 8, !tbaa !60
  br label %sqlite3DbFree.exit228

bb.am:                                            ; preds = %sqlite3Strlen30.exit222
  %i.gk = load ptr, ptr %.pre349, align 8, !tbaa !473 ; 2 uses
  %.not.i.i223 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i223, label %sqlite3OsClose.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !2028
  %i.gn = call i32 %i.gm(ptr noundef nonnull %.pre349) #71, !inline_history !2428 ; 0 uses
  store ptr null, ptr %.pre349, align 8, !tbaa !473
  br label %sqlite3OsClose.exit.i

sqlite3OsClose.exit.i:                            ; preds = %bb.an, %bb.am
  %i.go = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i2.i = icmp eq i32 %i.go, 0
  br i1 %.not.i2.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %sqlite3OsClose.exit.i
  %i.gp = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i224 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i224, label %sqlite3_mutex_enter.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.gq(ptr noundef nonnull %i.gp) #71, !inline_history !2429
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.ap, %bb.ao
  %i.gr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.gs = call i32 %i.gr(ptr noundef nonnull %.pre349) #71, !inline_history !2430
  %i.gt = sext i32 %i.gs to i64
  %i.gu = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.gv = sub nsw i64 %i.gu, %i.gt
  store i64 %i.gv, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.gw = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.gx = add nsw i64 %i.gw, -1
  store i64 %i.gx, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.gy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.gy(ptr noundef nonnull %.pre349) #71, !inline_history !2431
  %i.gz = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i4.i.i, label %sqlite3OsCloseFree.exit, label %bb.aq

bb.aq:                                            ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.ha = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.ha(ptr noundef nonnull %i.gz) #71, !inline_history !2432
  br label %sqlite3OsCloseFree.exit

bb.ar:                                            ; preds = %sqlite3OsClose.exit.i
  %i.hb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.hb(ptr noundef nonnull %.pre349) #71, !inline_history !2431
  br label %sqlite3OsCloseFree.exit

sqlite3OsCloseFree.exit:                          ; preds = %sqlite3_mutex_enter.exit.i.i, %bb.aq, %bb.ar
  %i.hc = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !1493 ; 2 uses
  %.not.i225 = icmp eq ptr %i.hd, null
  br i1 %.not.i225, label %sqlite3OsDelete.exit226, label %bb.as

bb.as:                                            ; preds = %sqlite3OsCloseFree.exit
  %i.he = call i32 %i.hd(ptr noundef nonnull %i.do, ptr noundef nonnull %i.dx, i32 noundef 0) #71, !inline_history !2084 ; 0 uses
  br label %sqlite3OsDelete.exit226

sqlite3OsDelete.exit226:                          ; preds = %sqlite3OsCloseFree.exit, %bb.as
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !100
  %i.hh = icmp ult ptr %i.dv, %i.hg
  br i1 %i.hh, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %sqlite3OsDelete.exit226
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !174
  %.not22.i = icmp ult ptr %i.dv, %i.hj
  br i1 %.not22.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !55
  store ptr %i.hl, ptr %i.dv, align 8, !tbaa !49
  store ptr %i.dv, ptr %i.hk, align 8, !tbaa !55
  br label %.thread290

bb.av:                                            ; preds = %bb.at
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !99
  %.not23.i = icmp ult ptr %i.dv, %i.hn
  br i1 %.not23.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !53
  store ptr %i.hp, ptr %i.dv, align 8, !tbaa !49
  store ptr %i.dv, ptr %i.ho, align 8, !tbaa !53
  br label %.thread290

bb.ax:                                            ; preds = %bb.av, %sqlite3OsDelete.exit226
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !98
  %.not24.i = icmp eq ptr %i.hr, null
  br i1 %.not24.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call fastcc void @measureAllocationSize(ptr noundef nonnull %0, ptr noundef nonnull %i.dv)
  br label %.thread290

bb.az:                                            ; preds = %bb.ax
  %i.hs = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i243 = icmp eq i32 %i.hs, 0
  br i1 %.not.i.i243, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ht = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i244 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i244, label %sqlite3_mutex_enter.exit.i.i245, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.hu(ptr noundef nonnull %i.ht) #71, !inline_history !546
  br label %sqlite3_mutex_enter.exit.i.i245

sqlite3_mutex_enter.exit.i.i245:                  ; preds = %bb.bb, %bb.ba
  %i.hv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.hw = call i32 %i.hv(ptr noundef nonnull %i.dv) #71, !inline_history !547
  %i.hx = sext i32 %i.hw to i64
  %i.hy = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.hz = sub nsw i64 %i.hy, %i.hx
  store i64 %i.hz, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ia = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ib = add nsw i64 %i.ia, -1
  store i64 %i.ib, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ic = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.ic(ptr noundef nonnull %i.dv) #71, !inline_history !548
  %i.id = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i246 = icmp eq ptr %i.id, null
  br i1 %.not.i4.i.i246, label %.thread290, label %bb.bc

bb.bc:                                            ; preds = %sqlite3_mutex_enter.exit.i.i245
  %i.ie = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.ie(ptr noundef nonnull %i.id) #71, !inline_history !549
  br label %.thread290

bb.bd:                                            ; preds = %bb.az
  %i.if = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.if(ptr noundef nonnull %i.dv) #71, !inline_history !548
  br label %.thread290

sqlite3DbFree.exit228:                            ; preds = %sqlite3Strlen30.exit222.sqlite3DbFree.exit228_crit_edge, %.lr.ph311, %sqlite3BtreeTxnState.exit218, %bb.al
end_hunk_1
begin_hunk_2_@sqlite3Insert:bb.a
  %.not619 = icmp eq ptr %i.sh, null
  br i1 %.not619, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.sj = load i16, ptr %i.si, align 1
  %i.sk = and i16 %i.sj, 8
  %.not620 = icmp eq i16 %i.sk, 0
  br i1 %.not620, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.sl = load i32, ptr %i.fm, align 4, !tbaa !950
  %i.sm = add nsw i32 %i.sl, 1                    ; 3 uses
  store i32 %i.sm, ptr %i.fm, align 4, !tbaa !950
  %i.sn = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i928, i32 noundef 72, i32 noundef 0, i32 noundef %i.sm) ; 0 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %.thread
  %.0555 = phi i32 [ 0, %bb.cd ], [ 0, %bb.ce ], [ 0, %bb.cf ], [ %i.sm, %bb.cg ], [ 0, %.thread ] ; 5 uses
  br i1 %i.dm, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.so = call fastcc i32 @sqlite3OpenTableAndIndices(ptr noundef nonnull %0, ptr noundef nonnull %i.af, i32 noundef 114, i8 noundef zeroext 0, i32 noundef -1, ptr noundef null, ptr noundef %i.a, ptr noundef %i.b) ; 5 uses
  %i.sp = add nsw i32 %i.so, 2
  %i.sq = sext i32 %i.sp to i64
  %i.sr = shl nsw i64 %i.sq, 2
  %i.ss = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.e, i64 noundef %i.sr) ; 6 uses
  %i.st = icmp eq ptr %i.ss, null
  br i1 %i.st, label %sqlite3ReleaseTempReg.exit676, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.su = icmp sgt i32 %i.so, 0
  %.pre856 = load i32, ptr %i.fm, align 4, !tbaa !950 ; 3 uses
  br i1 %i.su, label %.lr.ph816.preheader, label %.thread757

.lr.ph816.preheader:                              ; preds = %bb.cj
  %i.sv = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %wide.trip.count844 = zext nneg i32 %i.so to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count844, 1
  %i.sw = icmp eq i32 %i.so, 1
  br i1 %i.sw, label %.lr.ph816.epil.preheader, label %.lr.ph816.preheader.new

.lr.ph816.preheader.new:                          ; preds = %.lr.ph816.preheader
  %unroll_iter = and i64 %wide.trip.count844, 2147483646
  br label %.lr.ph816

.lr.ph816:                                        ; preds = %.lr.ph816, %.lr.ph816.preheader.new
  %i.sx = phi i32 [ %.pre856, %.lr.ph816.preheader.new ], [ %i.tn, %.lr.ph816 ]
  %indvars.iv841 = phi i64 [ 0, %.lr.ph816.preheader.new ], [ %indvars.iv.next842.1, %.lr.ph816 ] ; 3 uses
  %.0508.in814 = phi ptr [ %i.sv, %.lr.ph816.preheader.new ], [ %i.to, %.lr.ph816 ]
  %niter = phi i64 [ 0, %.lr.ph816.preheader.new ], [ %niter.next.1, %.lr.ph816 ]
  %.0508 = load ptr, ptr %.0508.in814, align 8, !tbaa !935 ; 2 uses
  %i.sy = add nsw i32 %i.sx, 1                    ; 2 uses
  store i32 %i.sy, ptr %i.fm, align 4, !tbaa !950
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %indvars.iv841
  store i32 %i.sy, ptr %i.sz, align 4, !tbaa !5
  %i.ta = getelementptr inbounds nuw i8, ptr %.0508, i64 96
  %i.tb = load i16, ptr %i.ta, align 8, !tbaa !875
  %i.tc = zext i16 %i.tb to i32
  %i.td = load i32, ptr %i.fm, align 4, !tbaa !950
  %i.te = add nsw i32 %i.td, %i.tc                ; 2 uses
  store i32 %i.te, ptr %i.fm, align 4, !tbaa !950
  %i.tf = getelementptr inbounds nuw i8, ptr %.0508, i64 40
  %.0508.1 = load ptr, ptr %i.tf, align 8, !tbaa !935 ; 2 uses
  %i.tg = add nsw i32 %i.te, 1                    ; 2 uses
  store i32 %i.tg, ptr %i.fm, align 4, !tbaa !950
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %indvars.iv841
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  store i32 %i.tg, ptr %i.ti, align 4, !tbaa !5
  %i.tj = getelementptr inbounds nuw i8, ptr %.0508.1, i64 96
  %i.tk = load i16, ptr %i.tj, align 8, !tbaa !875
  %i.tl = zext i16 %i.tk to i32
  %i.tm = load i32, ptr %i.fm, align 4, !tbaa !950
  %i.tn = add nsw i32 %i.tm, %i.tl                ; 4 uses
  store i32 %i.tn, ptr %i.fm, align 4, !tbaa !950
  %i.to = getelementptr inbounds nuw i8, ptr %.0508.1, i64 40 ; 2 uses
  %indvars.iv.next842.1 = add nuw nsw i64 %indvars.iv841, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread757.loopexit.unr-lcssa, label %.lr.ph816, !llvm.loop !3837

.thread757.loopexit.unr-lcssa:                    ; preds = %.lr.ph816
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread757, label %.lr.ph816.epil.preheader

.lr.ph816.epil.preheader:                         ; preds = %.thread757.loopexit.unr-lcssa, %.lr.ph816.preheader
  %.epil.init = phi i32 [ %.pre856, %.lr.ph816.preheader ], [ %i.tn, %.thread757.loopexit.unr-lcssa ]
  %indvars.iv841.epil.init = phi i64 [ 0, %.lr.ph816.preheader ], [ %indvars.iv.next842.1, %.thread757.loopexit.unr-lcssa ]
  %.0508.in814.epil.init = phi ptr [ %i.sv, %.lr.ph816.preheader ], [ %i.to, %.thread757.loopexit.unr-lcssa ]
  %lcmp.mod1046 = trunc i32 %i.so to i1
  call void @llvm.assume(i1 %lcmp.mod1046)
  %.0508.epil = load ptr, ptr %.0508.in814.epil.init, align 8, !tbaa !935
  %i.tp = add nsw i32 %.epil.init, 1              ; 2 uses
  store i32 %i.tp, ptr %i.fm, align 4, !tbaa !950
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %indvars.iv841.epil.init
  store i32 %i.tp, ptr %i.tq, align 4, !tbaa !5
  %i.tr = getelementptr inbounds nuw i8, ptr %.0508.epil, i64 96
  %i.ts = load i16, ptr %i.tr, align 8, !tbaa !875
  %i.tt = zext i16 %i.ts to i32
  %i.tu = load i32, ptr %i.fm, align 4, !tbaa !950
  %i.tv = add nsw i32 %i.tu, %i.tt                ; 2 uses
  store i32 %i.tv, ptr %i.fm, align 4, !tbaa !950
  br label %.thread757

.thread757:                                       ; preds = %.lr.ph816.epil.preheader, %.thread757.loopexit.unr-lcssa, %bb.cj
  %i.tw = phi i32 [ %.pre856, %bb.cj ], [ %i.tn, %.thread757.loopexit.unr-lcssa ], [ %i.tv, %.lr.ph816.epil.preheader ]
  %.3.lcssa = phi i64 [ 0, %bb.cj ], [ %wide.trip.count844, %.thread757.loopexit.unr-lcssa ], [ %wide.trip.count844, %.lr.ph816.epil.preheader ]
  %i.tx = add nsw i32 %i.tw, 1                    ; 2 uses
  store i32 %i.tx, ptr %i.fm, align 4, !tbaa !950
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %.3.lcssa
  store i32 %i.tx, ptr %i.ty, align 4, !tbaa !5
  br label %bb.ck

bb.ck:                                            ; preds = %.thread757, %bb.ch
  %.0564 = phi ptr [ null, %bb.ch ], [ %i.ss, %.thread757 ] ; 9 uses
  %.not621 = icmp eq ptr %5, null
  br i1 %.not621, label %.loopexit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.tz = load i8, ptr %i.dk, align 1, !tbaa !922
  switch i8 %i.tz, label %bb.co [
    i8 1, label %bb.cm
    i8 2, label %bb.cn
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.ua = load ptr, ptr %i.af, align 8, !tbaa !947
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.964, ptr noundef %i.ua)
  br label %sqlite3ReleaseTempReg.exit676

bb.cn:                                            ; preds = %bb.cl
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.965)
  br label %sqlite3ReleaseTempReg.exit676

bb.co:                                            ; preds = %bb.cl
  %i.ub = load ptr, ptr %5, align 8, !tbaa !3480
  %i.uc = call fastcc i32 @sqlite3HasExplicitNulls(ptr noundef nonnull %0, ptr noundef %i.ub)
  %.not622 = icmp eq i32 %i.uc, 0
  br i1 %.not622, label %bb.cp, label %sqlite3ReleaseTempReg.exit676

bb.cp:                                            ; preds = %bb.co
  %i.ud = load i32, ptr %i.a, align 4, !tbaa !5   ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.ud, ptr %i.ue, align 4, !tbaa !3555
  %i.uf = load i32, ptr %i.b, align 4, !tbaa !5
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cs, %bb.cp
  %.0530 = phi ptr [ %5, %bb.cp ], [ %i.un, %bb.cs ] ; 7 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.0530, i64 64
  store ptr %1, ptr %i.ug, align 8, !tbaa !3838
  %i.uh = getelementptr inbounds nuw i8, ptr %.0530, i64 72
  store i32 %.3570, ptr %i.uh, align 8, !tbaa !3839
  %i.ui = getelementptr inbounds nuw i8, ptr %.0530, i64 76
  store i32 %i.ud, ptr %i.ui, align 4, !tbaa !3814
  %i.uj = getelementptr inbounds nuw i8, ptr %.0530, i64 80
  store i32 %i.uf, ptr %i.uj, align 8, !tbaa !3815
  %i.uk = load ptr, ptr %.0530, align 8, !tbaa !3480
  %.not623 = icmp eq ptr %i.uk, null
  br i1 %.not623, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ul = call fastcc i32 @sqlite3UpsertAnalyzeTarget(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %.0530, ptr noundef %5)
  %.not624 = icmp eq i32 %i.ul, 0
  br i1 %.not624, label %bb.cs, label %sqlite3ReleaseTempReg.exit676

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.um = getelementptr inbounds nuw i8, ptr %.0530, i64 32
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !3478 ; 2 uses
  %.not625 = icmp eq ptr %i.un, null
  br i1 %.not625, label %.loopexit, label %bb.cq, !llvm.loop !3840

.loopexit:                                        ; preds = %bb.cs, %bb.ck
  br i1 %.not626, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.loopexit
  %i.uo = call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %.0.i928, i32 noundef 36, i32 noundef %.2528)
  %i.up = getelementptr i8, ptr %.0.i928, i64 144
  %.val654 = load i32, ptr %i.up, align 8, !tbaa !185
  br label %bb.cx

bb.cu:                                            ; preds = %.loopexit
  br i1 %i.eo, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.uq = load i32, ptr %i.h, align 4, !tbaa !3569
  %i.ur = call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %.0.i928, i32 noundef 12, i32 noundef %i.uq) ; 4 uses
  %i.us = icmp sgt i32 %.7911, -1
  br i1 %i.us, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ut = add nsw i32 %.7911, %.2554
  %i.uu = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i928, i32 noundef 81, i32 noundef %i.ut, i32 noundef %.4575) ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cu, %bb.cw, %bb.cv, %bb.ct
  %.0532 = phi i32 [ %.val654, %bb.ct ], [ %i.ur, %bb.cw ], [ %i.ur, %bb.cv ], [ 0, %bb.cu ] ; 2 uses
  %.0531 = phi i32 [ %i.uo, %bb.ct ], [ %i.ur, %bb.cw ], [ %i.ur, %bb.cv ], [ 0, %bb.cu ] ; 2 uses
  %i.uv = load i16, ptr %i.fp, align 2, !tbaa !881 ; 2 uses
  %i.uw = icmp sgt i16 %i.uv, 0
  %.pre857 = load i32, ptr %i.c, align 4, !tbaa !5 ; 2 uses
  br i1 %i.uw, label %.lr.ph823, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.cx
  %.pre859 = and i32 %.pre857, 1
  br label %._crit_edge

.lr.ph823:                                        ; preds = %bb.cx
  %i.ux = getelementptr inbounds nuw i8, ptr %i.af, i64 52
  %i.uy = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.uz = and i32 %.pre857, 1                     ; 2 uses
  %.not640 = icmp eq i32 %i.uz, 0
  %i.va = getelementptr inbounds nuw i8, ptr %i.af, i64 80 ; 3 uses
  %i.vb = icmp eq i32 %.5, 0
  %i.vc = getelementptr inbounds nuw i8, ptr %.0548, i64 8
  %.not639 = icmp eq i32 %.2554, %.3570
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph823, %bb.eh
  %indvars.iv846 = phi i64 [ 0, %.lr.ph823 ], [ %indvars.iv.next847, %bb.eh ] ; 5 uses
  %.3517819 = phi i32 [ 0, %.lr.ph823 ], [ %.5519, %bb.eh ] ; 6 uses
  %.0550818 = phi i32 [ %.3570, %.lr.ph823 ], [ %i.xx, %bb.eh ] ; 22 uses
  %i.vd = load i16, ptr %i.ux, align 4, !tbaa !891
  %i.ve = sext i16 %i.vd to i64
  %i.vf = icmp eq i64 %indvars.iv846, %i.ve
  br i1 %i.vf, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.vg = call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %.0.i928, i32 noundef 77, i32 noundef %.0550818) ; 0 uses
  br label %bb.eh

bb.da:                                            ; preds = %bb.cy
  %i.vh = load ptr, ptr %i.uy, align 8, !tbaa !882
  %i.vi = getelementptr inbounds nuw [16 x i8], ptr %i.vh, i64 %indvars.iv846 ; 4 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 14
  %i.vk = load i16, ptr %i.vj, align 2, !tbaa !883
  %i.vl = zext i16 %i.vk to i32                   ; 3 uses
  %i.vm = and i32 %i.vl, 98
  %.not634 = icmp eq i32 %i.vm, 0
  br i1 %.not634, label %bb.dm, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.vn = add nsw i32 %.3517819, 1                ; 5 uses
  %i.vo = and i32 %i.vl, 32
  %.not635 = icmp eq i32 %i.vo, 0
  br i1 %.not635, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.vp = add nsw i32 %.0550818, -1
  br label %bb.eh

bb.dd:                                            ; preds = %bb.db
  %i.vq = and i32 %i.vl, 64
  %.not636 = icmp eq i32 %i.vq, 0
  br i1 %.not636, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  br i1 %.not640, label %bb.eh, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.vr = call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %.0.i928, i32 noundef 77, i32 noundef %.0550818) ; 0 uses
  br label %bb.eh

bb.dg:                                            ; preds = %bb.dd
  br i1 %i.fi, label %bb.dh, label %.thread762

bb.dh:                                            ; preds = %bb.dg
  %i.vs = getelementptr i8, ptr %i.vi, i64 12
  %.val658 = load i16, ptr %i.vs, align 4, !tbaa !900 ; 3 uses
  %i.vt = zext i16 %.val658 to i32
  %i.vu = icmp eq i16 %.val658, 0
  br i1 %i.vu, label %sqlite3ColumnExpr.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.vv = load i8, ptr %i.dk, align 1, !tbaa !922
  %i.vw = icmp eq i8 %i.vv, 0
  br i1 %i.vw, label %bb.dj, label %sqlite3ColumnExpr.exit

bb.dj:                                            ; preds = %bb.di
  %i.vx = load ptr, ptr %i.va, align 8, !tbaa !227 ; 3 uses
  %i.vy = icmp eq ptr %i.vx, null
  br i1 %i.vy, label %sqlite3ColumnExpr.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.vz = load i32, ptr %i.vx, align 8, !tbaa !5
  %i.wa = icmp slt i32 %i.vz, %i.vt
  br i1 %i.wa, label %sqlite3ColumnExpr.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.wb = zext i16 %.val658 to i64
  %i.wc = getelementptr [24 x i8], ptr %i.vx, i64 %i.wb
  %i.wd = getelementptr i8, ptr %i.wc, i64 -16
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !902
  br label %sqlite3ColumnExpr.exit

sqlite3ColumnExpr.exit:                           ; preds = %bb.dh, %bb.di, %bb.dj, %bb.dk, %bb.dl
  %.0.i677 = phi ptr [ null, %bb.dh ], [ null, %bb.di ], [ null, %bb.dj ], [ %i.we, %bb.dl ], [ null, %bb.dk ]
  call fastcc void @sqlite3ExprCodeFactorable(ptr noundef nonnull %0, ptr noundef %.0.i677, i32 noundef %.0550818)
  br label %bb.eh

bb.dm:                                            ; preds = %bb.da
  br i1 %i.fi, label %bb.dt, label %.thread762

.thread762:                                       ; preds = %bb.dg, %bb.dm
  %.4518764 = phi i32 [ %.3517819, %bb.dm ], [ %i.vn, %bb.dg ] ; 2 uses
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %.0561, i64 %indvars.iv846
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !5  ; 2 uses
  %i.wh = icmp eq i32 %i.wg, 0
  br i1 %i.wh, label %bb.dn, label %bb.ds

bb.dn:                                            ; preds = %.thread762
  %i.wi = getelementptr i8, ptr %i.vi, i64 12
  %.val657 = load i16, ptr %i.wi, align 4, !tbaa !900 ; 3 uses
  %i.wj = zext i16 %.val657 to i32
  %i.wk = icmp eq i16 %.val657, 0
  br i1 %i.wk, label %sqlite3ColumnExpr.exit679, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.wl = load i8, ptr %i.dk, align 1, !tbaa !922
  %i.wm = icmp eq i8 %i.wl, 0
  br i1 %i.wm, label %bb.dp, label %sqlite3ColumnExpr.exit679

bb.dp:                                            ; preds = %bb.do
  %i.wn = load ptr, ptr %i.va, align 8, !tbaa !227 ; 3 uses
  %i.wo = icmp eq ptr %i.wn, null
  br i1 %i.wo, label %sqlite3ColumnExpr.exit679, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.wp = load i32, ptr %i.wn, align 8, !tbaa !5
  %i.wq = icmp slt i32 %i.wp, %i.wj
  br i1 %i.wq, label %sqlite3ColumnExpr.exit679, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.wr = zext i16 %.val657 to i64
  %i.ws = getelementptr [24 x i8], ptr %i.wn, i64 %i.wr
  %i.wt = getelementptr i8, ptr %i.ws, i64 -16
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !902
  br label %sqlite3ColumnExpr.exit679

sqlite3ColumnExpr.exit679:                        ; preds = %bb.dn, %bb.do, %bb.dp, %bb.dq, %bb.dr
  %.0.i678 = phi ptr [ null, %bb.dn ], [ null, %bb.do ], [ null, %bb.dp ], [ %i.wu, %bb.dr ], [ null, %bb.dq ]
  call fastcc void @sqlite3ExprCodeFactorable(ptr noundef nonnull %0, ptr noundef %.0.i678, i32 noundef %.0550818)
  br label %bb.eh

bb.ds:                                            ; preds = %.thread762
  %i.wv = add nsw i32 %i.wg, -1
  br label %bb.ea

bb.dt:                                            ; preds = %bb.dm
  br i1 %i.vb, label %bb.du, label %bb.dz

bb.du:                                            ; preds = %bb.dt
  %i.ww = getelementptr i8, ptr %i.vi, i64 12
  %.val656 = load i16, ptr %i.ww, align 4, !tbaa !900 ; 3 uses
  %i.wx = zext i16 %.val656 to i32
  %i.wy = icmp eq i16 %.val656, 0
  br i1 %i.wy, label %sqlite3ColumnExpr.exit681, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.wz = load i8, ptr %i.dk, align 1, !tbaa !922
  %i.xa = icmp eq i8 %i.wz, 0
  br i1 %i.xa, label %bb.dw, label %sqlite3ColumnExpr.exit681

bb.dw:                                            ; preds = %bb.dv
  %i.xb = load ptr, ptr %i.va, align 8, !tbaa !227 ; 3 uses
  %i.xc = icmp eq ptr %i.xb, null
  br i1 %i.xc, label %sqlite3ColumnExpr.exit681, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.xd = load i32, ptr %i.xb, align 8, !tbaa !5
  %i.xe = icmp slt i32 %i.xd, %i.wx
  br i1 %i.xe, label %sqlite3ColumnExpr.exit681, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.xf = zext i16 %.val656 to i64
  %i.xg = getelementptr [24 x i8], ptr %i.xb, i64 %i.xf
  %i.xh = getelementptr i8, ptr %i.xg, i64 -16
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !902
  br label %sqlite3ColumnExpr.exit681

sqlite3ColumnExpr.exit681:                        ; preds = %bb.du, %bb.dv, %bb.dw, %bb.dx, %bb.dy
  %.0.i680 = phi ptr [ null, %bb.du ], [ null, %bb.dv ], [ null, %bb.dw ], [ %i.xi, %bb.dy ], [ null, %bb.dx ]
  call fastcc void @sqlite3ExprCodeFactorable(ptr noundef nonnull %0, ptr noundef %.0.i680, i32 noundef %.0550818)
  br label %bb.eh

bb.dz:                                            ; preds = %bb.dt
  %i.xj = trunc nuw nsw i64 %indvars.iv846 to i32
  %i.xk = sub nsw i32 %i.xj, %.3517819
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.ds
  %.4518765 = phi i32 [ %.4518764, %bb.ds ], [ %.3517819, %bb.dz ] ; 5 uses
  %.0529 = phi i32 [ %i.wv, %bb.ds ], [ %i.xk, %bb.dz ] ; 3 uses
  br i1 %.not626, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.xl = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i928, i32 noundef 95, i32 noundef %.2528, i32 noundef %.0529, i32 noundef %.0550818) ; 0 uses
  br label %bb.eh

bb.ec:                                            ; preds = %bb.ea
  br i1 %i.eo, label %bb.ed, label %bb.ef
end_hunk_2
begin_hunk_3_@sqlite3WhereBegin:bb.a
  %i.ge = phi i32 [ 1, %bb.am ], [ 1, %bb.an ], [ %i.gd, %bb.ao ]
  %i.gf = load ptr, ptr %0, align 8, !tbaa !651
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 148
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !5  ; 2 uses
  %i.gi = icmp sgt i32 %i.ge, %i.gh
  br i1 %i.gi, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %sqlite3ExprAttachSubtrees.exit.i.i
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.796, i32 noundef %i.gh)
  br label %bb.as

bb.aq:                                            ; preds = %sqlite3ExprDup.exit.i
  %.not.i16.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i16.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gj = load ptr, ptr %0, align 8, !tbaa !651
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.gj, ptr noundef %i.fr), !inline_history !144
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %sqlite3ExprAttachSubtrees.exit.i.i
  %i.gk = tail call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 54, ptr noundef nonnull %i.ek, ptr noundef %i.ft) ; 2 uses
  %i.gl = load i8, ptr %i.dg, align 8, !tbaa !3498
  %i.gm = and i8 %i.gl, 24
  %.not45.i = icmp eq i8 %i.gm, 0
  %..i = select i1 %.not45.i, i32 2, i32 1
  %i.gn = load i32, ptr %i.da, align 4, !tbaa !3555
  tail call fastcc void @sqlite3SetJoinExpr(ptr noundef %i.gk, i32 noundef %i.gn, i32 noundef %..i)
  %i.go = tail call fastcc i32 @whereClauseInsert(ptr noundef nonnull %i.bu, ptr noundef %i.gk, i16 noundef zeroext 1) ; 0 uses
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %i.gp = load i32, ptr %i.do, align 8, !tbaa !5
  %i.gq = sext i32 %i.gp to i64
  %i.gr = icmp slt i64 %indvars.iv.next67.i, %i.gq
  br i1 %i.gr, label %.preheader.i, label %sqlite3WhereTabFuncArgs.exit, !llvm.loop !4279

sqlite3WhereTabFuncArgs.exit:                     ; preds = %bb.ag, %bb.as, %bb.ac, %bb.ad, %.preheader51.i, %.critedge.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gs = load i32, ptr %1, align 8, !tbaa !5
  %i.gt = sext i32 %i.gs to i64
  %i.gu = icmp slt i64 %indvars.iv.next, %i.gt
  br i1 %i.gu, label %bb.ac, label %.loopexit, !llvm.loop !4280

.loopexit:                                        ; preds = %sqlite3WhereTabFuncArgs.exit, %bb.z, %bb.aa, %bb.ab
  %i.gv = load i32, ptr %i.cf, align 4, !tbaa !1150 ; 2 uses
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %.lr.ph, label %sqlite3WhereExprAnalyze.exit

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %.0.in.i578 = phi i32 [ %.0.i, %.lr.ph ], [ %i.gv, %.loopexit ] ; 2 uses
  %.0.i = add nsw i32 %.0.in.i578, -1             ; 2 uses
  tail call fastcc void @exprAnalyze(ptr noundef nonnull %1, ptr noundef nonnull %i.bu, i32 noundef %.0.i), !inline_history !4281
  %i.gx = icmp samesign ugt i32 %.0.in.i578, 1
  br i1 %i.gx, label %.lr.ph, label %sqlite3WhereExprAnalyze.exit, !llvm.loop !4282

sqlite3WhereExprAnalyze.exit:                     ; preds = %.lr.ph, %.loopexit
  %.not401 = icmp eq ptr %5, null
  br i1 %.not401, label %bb.av, label %bb.at

bb.at:                                            ; preds = %sqlite3WhereExprAnalyze.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !3041
  %.not402 = icmp eq ptr %i.gz, null
  br i1 %.not402, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call fastcc void @sqlite3WhereAddLimit(ptr noundef nonnull %i.bu, ptr noundef %5)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %sqlite3WhereExprAnalyze.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !313
  %.not403 = icmp eq i32 %i.hb, 0
  br i1 %.not403, label %.preheader564, label %sqlite3DbFree.exit.thread

.preheader564:                                    ; preds = %bb.av
  %i.hc = load i32, ptr %i.cg, align 4, !tbaa !4276
  %i.hd = icmp sgt i32 %i.hc, 0
  br i1 %i.hd, label %.lr.ph580, label %._crit_edge

.lr.ph580:                                        ; preds = %.preheader564
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph580, %bb.bd
  %indvars.iv618 = phi i64 [ 0, %.lr.ph580 ], [ %indvars.iv.next619, %bb.bd ] ; 2 uses
  %i.hh = phi ptr [ %i.bu, %.lr.ph580 ], [ %i.ib, %bb.bd ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !1154
  %i.hk = getelementptr inbounds nuw [56 x i8], ptr %i.hj, i64 %indvars.iv618 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 18 ; 3 uses
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !4283
  %i.hn = and i16 %i.hm, 2
  %.not448 = icmp eq i16 %i.hn, 0
  br i1 %.not448, label %bb.ax, label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  %i.ho = load ptr, ptr %i.hk, align 8, !tbaa !1155 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !4284
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.ck, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  store i16 1, ptr %i.he, align 4, !tbaa !3505
  store <2 x ptr> <ptr @exprNodeIsDeterministic, ptr @sqlite3SelectWalkFail>, ptr %i.hf, align 8, !tbaa !450
  %.not.i.i474 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i474, label %exprIsDeterministic.exit.thread, label %exprIsDeterministic.exit

exprIsDeterministic.exit.thread:                  ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #71
  br label %bb.ba

exprIsDeterministic.exit:                         ; preds = %bb.az
  %i.hs = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %9, ptr noundef nonnull %i.ho) #74, !inline_history !3510 ; 0 uses
  %.pre.i = load i16, ptr %i.he, align 4, !tbaa !3505
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #71
  %.not449 = icmp eq i16 %.pre.i, 0
  br i1 %.not449, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %exprIsDeterministic.exit.thread, %exprIsDeterministic.exit, %bb.ay
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !367
  %i.hv = and i32 %i.hu, 2
  %.not450 = icmp eq i32 %i.hv, 0
  br i1 %.not450, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hw = load i8, ptr %i.hg, align 8, !tbaa !3498
  %i.hx = and i8 %i.hw, 64
  %.not451 = icmp eq i8 %i.hx, 0
  br i1 %.not451, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.hy = load i32, ptr %i.bg, align 4, !tbaa !5
  call void @sqlite3ExprIfFalse(ptr noundef nonnull %0, ptr noundef nonnull %i.ho, i32 noundef %i.hy, i32 noundef 16)
  %i.hz = load i16, ptr %i.hl, align 2, !tbaa !4283
  %i.ia = or i16 %i.hz, 4
  store i16 %i.ia, ptr %i.hl, align 2, !tbaa !4283
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ax, %exprIsDeterministic.exit, %bb.bb, %bb.bc, %bb.aw
  %indvars.iv.next619 = add nuw nsw i64 %indvars.iv618, 1 ; 2 uses
  %i.ib = load ptr, ptr %i.bv, align 8, !tbaa !4265 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 28
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !4276
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv.next619, %i.ie
  br i1 %i.if, label %bb.aw, label %._crit_edge, !llvm.loop !4285

._crit_edge:                                      ; preds = %bb.bd, %.preheader564
  %i.ig = and i32 %i.k, 256
  %.not404 = icmp eq i32 %i.ig, 0
  br i1 %.not404, label %bb.bk, label %bb.be

bb.be:                                            ; preds = %._crit_edge
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !1328
  %i.ij = and i32 %i.ii, 16
  %.not405 = icmp eq i32 %i.ij, 0
  br i1 %.not405, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ik = and i16 %.0364, 32511
  %i.il = load i16, ptr %i.bh, align 4, !tbaa !330
  %i.im = and i16 %i.il, -257
  store i16 %i.im, ptr %i.bh, align 4, !tbaa !330
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.in = call fastcc i32 @isDistinctRedundant(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bu, ptr noundef %4)
  %.not406 = icmp eq i32 %i.in, 0
  br i1 %.not406, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.io = getelementptr inbounds nuw i8, ptr %i.q, i64 67
  store i8 1, ptr %i.io, align 1, !tbaa !227
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.ip = icmp eq ptr %.0363, null
  br i1 %i.ip, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.iq = load i16, ptr %i.bh, align 4, !tbaa !330
  %i.ir = or i16 %i.iq, 128
  store i16 %i.ir, ptr %i.bh, align 4, !tbaa !330
  store ptr %4, ptr %i.aw, align 8, !tbaa !3626
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bf, %bb.bi, %bb.bj, %bb.bh, %._crit_edge
  %.1 = phi i16 [ %i.ik, %bb.bf ], [ %.0364, %bb.bh ], [ %.0364, %bb.bj ], [ %.0364, %bb.bi ], [ %.0364, %._crit_edge ] ; 4 uses
  %.not407 = icmp eq i32 %spec.select, 1
  %.pre629 = load ptr, ptr %10, align 8, !tbaa !4262 ; 13 uses
  %.pre631 = load ptr, ptr %i.bx, align 8, !tbaa !4266 ; 17 uses
  br i1 %.not407, label %bb.bl, label %bb.cl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #71
  %i.is = getelementptr inbounds nuw i8, ptr %.pre629, i64 60 ; 2 uses
  %i.it = load i16, ptr %i.is, align 4, !tbaa !330
  %i.iu = and i16 %i.it, 32
  %.not.i475 = icmp eq i16 %i.iu, 0
  br i1 %.not.i475, label %bb.bm, label %whereShortCut.exit.thread

bb.bm:                                            ; preds = %bb.bl
  %i.iv = getelementptr inbounds nuw i8, ptr %.pre629, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !4155 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !3016 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 63
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !922
  %i.jb = icmp eq i8 %i.ja, 1
  br i1 %i.jb, label %whereShortCut.exit.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 33
  %i.jd = load i16, ptr %i.jc, align 1
  %i.je = and i16 %i.jd, 3
  %or.cond.i = icmp eq i16 %i.je, 0
  br i1 %or.cond.i, label %bb.bo, label %whereShortCut.exit.thread

bb.bo:                                            ; preds = %bb.bn
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 36
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !3555 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.pre629, i64 104 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre631, i64 48 ; 7 uses
  store i32 0, ptr %i.ji, align 8, !tbaa !4272
  %i.jj = getelementptr inbounds nuw i8, ptr %.pre631, i64 54
  store i16 0, ptr %i.jj, align 2, !tbaa !4286
  store ptr %i.jh, ptr %8, align 8, !tbaa !4287
  %i.jk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.jh, ptr %i.jk, align 8, !tbaa !4289
  %i.jl = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  store i8 0, ptr %i.jl, align 8, !tbaa !4290
  %i.jm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i8 0, i64 16, i1 false)
  store i32 130, ptr %i.jn, align 4, !tbaa !4291
  %i.jo = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i32 0, ptr %i.jo, align 8, !tbaa !4292
  %i.jp = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  store i32 %i.jg, ptr %i.jp, align 4, !tbaa !5
  %i.jq = getelementptr inbounds nuw i8, ptr %8, i64 42 ; 2 uses
  store i8 1, ptr %i.jq, align 2, !tbaa !4293
  %i.jr = getelementptr inbounds nuw i8, ptr %8, i64 41 ; 3 uses
  store i8 1, ptr %i.jr, align 1, !tbaa !4294
  %i.js = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 3 uses
  store i16 -1, ptr %i.js, align 8, !tbaa !330
  %i.jt = call fastcc ptr @whereScanNext(ptr noundef nonnull %8) ; 2 uses
  %.not8210.i = icmp eq ptr %i.jt, null
  br i1 %.not8210.i, label %.critedge95.i, label %.lr.ph.i477

.lr.ph.i477:                                      ; preds = %bb.bo, %bb.bp
  %.07711.i = phi ptr [ %i.jw, %bb.bp ], [ %i.jt, %bb.bo ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.07711.i, i64 40
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !4295
  %.not83.i = icmp eq i64 %i.jv, 0
  br i1 %.not83.i, label %.critedge.i480, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i477
  %i.jw = call fastcc ptr @whereScanNext(ptr noundef %8) ; 2 uses
  %.not82.i = icmp eq ptr %i.jw, null
  br i1 %.not82.i, label %.critedge95.i, label %.lr.ph.i477, !llvm.loop !4296

.critedge.i480:                                   ; preds = %.lr.ph.i477
  store i32 4353, ptr %i.ji, align 8, !tbaa !4272
  %i.jx = getelementptr inbounds nuw i8, ptr %.pre631, i64 64
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !4267
  store ptr %.07711.i, ptr %i.jy, align 8, !tbaa !4297
  %i.jz = getelementptr inbounds nuw i8, ptr %.pre631, i64 52
  store i16 1, ptr %i.jz, align 4, !tbaa !4270
  %i.ka = getelementptr inbounds nuw i8, ptr %.pre631, i64 24
  store i16 1, ptr %i.ka, align 8, !tbaa !227
  br label %.loopexit3.sink.split.i

.critedge95.i:                                    ; preds = %bb.bp, %bb.bo
  %i.kb = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %.07619.i = load ptr, ptr %i.kb, align 8, !tbaa !935 ; 2 uses
  %.not8420.i = icmp eq ptr %.07619.i, null
  br i1 %.not8420.i, label %.loopexit3.i, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.critedge95.i
  %i.kc = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.kd = getelementptr inbounds nuw i8, ptr %.pre631, i64 64
  br label %bb.bq

bb.bq:                                            ; preds = %bb.ce, %.lr.ph22.i
  %.07621.i = phi ptr [ %.07619.i, %.lr.ph22.i ], [ %.076.i, %bb.ce ] ; 12 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.07621.i, i64 98
  %i.kf = load i8, ptr %i.ke, align 2, !tbaa !2990
  %.not85.i = icmp eq i8 %i.kf, 0
  br i1 %.not85.i, label %bb.ce, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kg = getelementptr inbounds nuw i8, ptr %.07621.i, i64 72
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !2797
  %.not86.i = icmp eq ptr %i.kh, null
  br i1 %.not86.i, label %bb.bs, label %bb.ce

bb.bs:                                            ; preds = %bb.br
  %i.ki = getelementptr inbounds nuw i8, ptr %.07621.i, i64 94 ; 3 uses
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !936 ; 2 uses
  %i.kk = icmp ugt i16 %i.kj, 3
  br i1 %i.kk, label %bb.ce, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kl = getelementptr inbounds nuw i8, ptr %.07621.i, i64 99
  %i.km = load i16, ptr %i.kl, align 1
  %i.kn = and i16 %i.km, 8
  %.not87.i = icmp eq i16 %i.kn, 0
  %i.ko = select i1 %.not87.i, i32 2, i32 130
  %.not23.i = icmp eq i16 %i.kj, 0
  br i1 %.not23.i, label %.loopexit.i, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %bb.bt
  %i.kp = getelementptr inbounds nuw i8, ptr %.07621.i, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %.07621.i, i64 24
  %i.kr = getelementptr inbounds nuw i8, ptr %.07621.i, i64 80
  %i.ks = getelementptr inbounds nuw i8, ptr %.07621.i, i64 64 ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %.critedge2.i, %.lr.ph17.i
  %indvars.iv.i478 = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next.i479, %.critedge2.i ] ; 8 uses
  store ptr %i.jh, ptr %8, align 8, !tbaa !4287
  store ptr %i.jh, ptr %i.jk, align 8, !tbaa !4289
  store i8 0, ptr %i.jl, align 8, !tbaa !4290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i8 0, i64 16, i1 false)
  store i32 %i.ko, ptr %i.jn, align 4, !tbaa !4291
  store i32 0, ptr %i.jo, align 8, !tbaa !4292
  store i32 %i.jg, ptr %i.jp, align 4, !tbaa !5
  store i8 1, ptr %i.jq, align 2, !tbaa !4293
  store i8 1, ptr %i.jr, align 1, !tbaa !4294
  %i.kt = load ptr, ptr %i.kp, align 8, !tbaa !878
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.kt, i64 %indvars.iv.i478
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !330 ; 6 uses
  %i.kw = sext i16 %i.kv to i64
  %i.kx = load ptr, ptr %i.kq, align 8, !tbaa !1098 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 52
  %i.kz = load i16, ptr %i.ky, align 4, !tbaa !891
  %i.la = icmp eq i16 %i.kv, %i.kz
  br i1 %i.la, label %.thread.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lb = icmp sgt i16 %i.kv, -1
  br i1 %i.lb, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !882
  %i.le = getelementptr inbounds nuw [16 x i8], ptr %i.ld, i64 %i.kw
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 9
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !905
  store i8 %i.lg, ptr %i.jl, align 8, !tbaa !4290
  %i.lh = load ptr, ptr %i.ks, align 8, !tbaa !2803
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.i478
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !251
  store ptr %i.lj, ptr %i.jm, align 8, !tbaa !4298
  br label %.thread.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.lk = icmp eq i16 %i.kv, -2
  br i1 %i.lk, label %bb.by, label %.thread.i.i

bb.by:                                            ; preds = %bb.bx
  %i.ll = load ptr, ptr %i.kr, align 8, !tbaa !2799
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = getelementptr inbounds nuw [24 x i8], ptr %i.lm, i64 %indvars.iv.i478
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !902
  store ptr %i.lo, ptr %i.kc, align 8, !tbaa !4299
  %i.lp = load ptr, ptr %i.ks, align 8, !tbaa !2803
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv.i478
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !251
  store ptr %i.lr, ptr %i.jm, align 8, !tbaa !4298
  store i16 -2, ptr %i.js, align 8, !tbaa !330
  %i.ls = call fastcc ptr @whereScanInitIndexExpr(ptr noundef nonnull %8)
  br label %whereScanInit.exit.i

.thread.i.i:                                      ; preds = %bb.bx, %bb.bw, %bb.bu
  %.2.i.i = phi i16 [ %i.kv, %bb.bx ], [ -1, %bb.bu ], [ %i.kv, %bb.bw ]
  store i16 %.2.i.i, ptr %i.js, align 8, !tbaa !330
  %i.lt = call fastcc ptr @whereScanNext(ptr noundef nonnull %8)
  br label %whereScanInit.exit.i

whereScanInit.exit.i:                             ; preds = %.thread.i.i, %bb.by
  %.1.i.i = phi ptr [ %i.lt, %.thread.i.i ], [ %i.ls, %bb.by ] ; 2 uses
  %cond12.i = icmp eq ptr %.1.i.i, null
  br i1 %cond12.i, label %.loopexit.loopexit36.i, label %.lr.ph14.i

.lr.ph14.i:                                       ; preds = %whereScanInit.exit.i, %bb.bz
  %.113.i = phi ptr [ %i.lw, %bb.bz ], [ %.1.i.i, %whereScanInit.exit.i ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.113.i, i64 40
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !4295
  %.not89.i = icmp eq i64 %i.lv, 0
  br i1 %.not89.i, label %.critedge2.i, label %bb.bz
end_hunk_3
begin_hunk_4_@sqlite3Fts3Incrmerge:bb.a

fts3TermCmp.exit.i:                               ; preds = %._crit_edge.i162
  %.inv.i = icmp sgt i32 %i.mm, %i.qs             ; 2 uses
  %i.rb = icmp eq ptr %i.qr, null
  br i1 %i.rb, label %nodeReaderRelease.exit.i, label %bb.da

bb.da:                                            ; preds = %fts3TermCmp.exit.i, %fts3TermCmp.exit.thread.i
  %.inv240.i = phi i1 [ %.inv239.i, %fts3TermCmp.exit.thread.i ], [ %.inv.i, %fts3TermCmp.exit.i ] ; 3 uses
  %i.rc = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i108.i = icmp eq i32 %i.rc, 0
  br i1 %.not.i.i108.i, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.rd = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i109.i = icmp eq ptr %i.rd, null
  br i1 %.not.i.i.i109.i, label %sqlite3_mutex_enter.exit.i.i.i163, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.re = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.re(ptr noundef nonnull %i.rd) #71, !inline_history !6036
  br label %sqlite3_mutex_enter.exit.i.i.i163

sqlite3_mutex_enter.exit.i.i.i163:                ; preds = %bb.dc, %bb.db
  %i.rf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.rg = call i32 %i.rf(ptr noundef nonnull %i.qr) #71, !inline_history !6037
  %i.rh = sext i32 %i.rg to i64
  %i.ri = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.rj = sub nsw i64 %i.ri, %i.rh
  store i64 %i.rj, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.rk = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.rl = add nsw i64 %i.rk, -1
  store i64 %i.rl, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.rm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.rm(ptr noundef nonnull %i.qr) #71, !inline_history !6038
  %i.rn = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.rn, null
  br i1 %.not.i4.i.i.i, label %nodeReaderRelease.exit.i, label %bb.dd

bb.dd:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i163
  %i.ro = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.ro(ptr noundef nonnull %i.rn) #71, !inline_history !6039
  br label %nodeReaderRelease.exit.i

bb.de:                                            ; preds = %bb.da
  %i.rp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.rp(ptr noundef nonnull %i.qr) #71, !inline_history !6038
  br label %nodeReaderRelease.exit.i

nodeReaderRelease.exit.i:                         ; preds = %bb.de, %bb.dd, %sqlite3_mutex_enter.exit.i.i.i163, %fts3TermCmp.exit.i
  %.inv241.i = phi i1 [ %.inv.i, %fts3TermCmp.exit.i ], [ %.inv240.i, %sqlite3_mutex_enter.exit.i.i.i163 ], [ %.inv240.i, %bb.dd ], [ %.inv240.i, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #71
  br label %bb.df

bb.df:                                            ; preds = %nodeReaderRelease.exit.i, %bb.cx
  %.0156.i = phi i32 [ %storemerge.lcssa.i, %nodeReaderRelease.exit.i ], [ %i.qb, %bb.cx ]
  %.1.i160 = phi i1 [ %.inv241.i, %nodeReaderRelease.exit.i ], [ true, %bb.cx ]
  %i.rq = icmp eq ptr %.pre204.i, null
  br i1 %i.rq, label %sqlite3_free.exit.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.rr = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i110.i = icmp eq i32 %i.rr, 0
  br i1 %.not.i110.i, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.rs = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i111.i = icmp eq ptr %i.rs, null
  br i1 %.not.i.i111.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.rt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.rt(ptr noundef nonnull %i.rs) #71, !inline_history !6040
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.di, %bb.dh
  %i.ru = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.rv = call i32 %i.ru(ptr noundef nonnull %.pre204.i) #71, !inline_history !6041
  %i.rw = sext i32 %i.rv to i64
  %i.rx = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ry = sub nsw i64 %i.rx, %i.rw
  store i64 %i.ry, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.rz = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.sa = add nsw i64 %i.rz, -1
  store i64 %i.sa, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.sb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.sb(ptr noundef nonnull %.pre204.i) #71, !inline_history !6042
  %i.sc = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.sc, null
  br i1 %.not.i4.i.i, label %sqlite3_free.exit.i, label %bb.dj

bb.dj:                                            ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.sd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.sd(ptr noundef nonnull %i.sc) #71, !inline_history !6043
  br label %sqlite3_free.exit.i

bb.dk:                                            ; preds = %bb.dg
  %i.se = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.se(ptr noundef nonnull %.pre204.i) #71, !inline_history !6042
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.dk, %bb.dj, %sqlite3_mutex_enter.exit.i.i, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #71
  br label %bb.dl

bb.dl:                                            ; preds = %sqlite3_free.exit.i, %fts3IsAppendable.exit.i
  %.1157.i = phi i32 [ %.0156.i, %sqlite3_free.exit.i ], [ %i.pz, %fts3IsAppendable.exit.i ] ; 2 uses
  %.2154.i = phi i1 [ %.1.i160, %sqlite3_free.exit.i ], [ %i.py, %fts3IsAppendable.exit.i ]
  %i.sf = icmp eq i32 %.1157.i, 0
  %or.cond4.i = select i1 %i.sf, i1 %.2154.i, i1 false
  br i1 %or.cond4.i, label %bb.dm, label %.loopexit.i

bb.dm:                                            ; preds = %bb.dl
  %i.sg = load i8, ptr %i.pd, align 1, !tbaa !227 ; 4 uses
  %i.sh = sext i8 %i.sg to i64                    ; 6 uses
  %i.si = add i8 %i.sg, -1
  %or.cond6.i = icmp ult i8 %i.si, 15
  br i1 %or.cond6.i, label %bb.dn, label %.thread171.i

.thread171.i:                                     ; preds = %bb.dm
  %i.sj = call i32 @sqlite3_reset(ptr noundef %i.mq), !inline_history !6020 ; 0 uses
  br label %fts3IncrmergeLoad.exit

bb.dn:                                            ; preds = %bb.dm
  %i.sk = sub nsw i64 %.0155.i, %i.ns
  %i.sl = trunc i64 %i.sk to i32
  %i.sm = add i32 %i.sl, 1
  %i.sn = sdiv i32 %i.sm, 16
  %i.so = sext i32 %i.sn to i64                   ; 7 uses
  store i64 %i.so, ptr %i.s, align 8, !tbaa !6044
  store i64 %i.ns, ptr %i.bf, align 8, !tbaa !6045
  store i64 %.0155.i, ptr %i.bg, align 8, !tbaa !6046
  store i64 %.395, ptr %i.bh, align 8, !tbaa !6047
  store i32 %i.mn, ptr %i.bi, align 8, !tbaa !6048
  %i.sp = icmp samesign ult i8 %i.sg, 15
  br i1 %i.sp, label %.lr.ph185.i.preheader, label %._crit_edge186.i

.lr.ph185.i.preheader:                            ; preds = %bb.dn
  %i.sq = and i64 %i.sh, 3
  %i.sr = and i8 %i.sg, 3
  %lcmp.mod.not = icmp eq i8 %i.sr, 3
  br i1 %lcmp.mod.not, label %.lr.ph185.i.prol.loopexit, label %.lr.ph185.i.prol

.lr.ph185.i.prol:                                 ; preds = %.lr.ph185.i.preheader, %.lr.ph185.i.prol
  %indvars.iv.i158.prol = phi i64 [ %indvars.iv.next.i159.prol, %.lr.ph185.i.prol ], [ %i.sh, %.lr.ph185.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph185.i.prol ], [ 0, %.lr.ph185.i.preheader ]
  %indvars.iv.next.i159.prol = add nuw nsw i64 %indvars.iv.i158.prol, 1 ; 4 uses
  %i.ss = mul nsw i64 %indvars.iv.next.i159.prol, %i.so
  %i.st = add nsw i64 %i.ss, %i.ns
  %i.su = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %indvars.iv.next.i159.prol
  store i64 %i.st, ptr %i.su, align 8, !tbaa !6049
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %i.sv = xor i64 %i.sq, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i64 %i.sv, 3
  br i1 %prol.iter.cmp.not, label %.lr.ph185.i.prol.loopexit, label %.lr.ph185.i.prol, !llvm.loop !6051

.lr.ph185.i.prol.loopexit:                        ; preds = %.lr.ph185.i.prol, %.lr.ph185.i.preheader
  %indvars.iv.i158.unr = phi i64 [ %i.sh, %.lr.ph185.i.preheader ], [ %indvars.iv.next.i159.prol, %.lr.ph185.i.prol ]
  %i.sw = add nsw i64 %i.sh, -12
  %i.sx = icmp ult i64 %i.sw, 3
  br i1 %i.sx, label %._crit_edge186.i, label %.lr.ph185.i

.lr.ph185.i:                                      ; preds = %.lr.ph185.i.prol.loopexit, %.lr.ph185.i
  %indvars.iv.i158 = phi i64 [ %indvars.iv.next.i159.3, %.lr.ph185.i ], [ %indvars.iv.i158.unr, %.lr.ph185.i.prol.loopexit ] ; 4 uses
  %indvars.iv.next.i159 = add nuw nsw i64 %indvars.iv.i158, 1 ; 2 uses
  %i.sy = mul nsw i64 %indvars.iv.next.i159, %i.so
  %i.sz = add nsw i64 %i.sy, %i.ns
  %i.ta = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %indvars.iv.next.i159
  store i64 %i.sz, ptr %i.ta, align 8, !tbaa !6049
  %indvars.iv.next.i159.1 = add nuw nsw i64 %indvars.iv.i158, 2 ; 2 uses
  %i.tb = mul nsw i64 %indvars.iv.next.i159.1, %i.so
  %i.tc = add nsw i64 %i.tb, %i.ns
  %i.td = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %indvars.iv.next.i159.1
  store i64 %i.tc, ptr %i.td, align 8, !tbaa !6049
  %indvars.iv.next.i159.2 = add nuw nsw i64 %indvars.iv.i158, 3 ; 2 uses
  %i.te = mul nsw i64 %indvars.iv.next.i159.2, %i.so
  %i.tf = add nsw i64 %i.te, %i.ns
  %i.tg = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %indvars.iv.next.i159.2
  store i64 %i.tf, ptr %i.tg, align 8, !tbaa !6049
  %indvars.iv.next.i159.3 = add nuw nsw i64 %indvars.iv.i158, 4 ; 4 uses
  %i.th = mul nsw i64 %indvars.iv.next.i159.3, %i.so
  %i.ti = add nsw i64 %i.th, %i.ns
  %i.tj = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %indvars.iv.next.i159.3
  store i64 %i.ti, ptr %i.tj, align 8, !tbaa !6049
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.i159.3, 15
  br i1 %exitcond.not.3, label %._crit_edge186.i, label %.lr.ph185.i, !llvm.loop !6052

._crit_edge186.i:                                 ; preds = %.lr.ph185.i.prol.loopexit, %.lr.ph185.i, %bb.dn
  %.pre-phi.i154 = phi i64 [ 15, %bb.dn ], [ %i.sh, %.lr.ph185.i ], [ %i.sh, %.lr.ph185.i.prol.loopexit ] ; 3 uses
  %i.tk = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %.pre-phi.i154 ; 4 uses
  %i.tl = mul nsw i64 %.pre-phi.i154, %i.so
  %i.tm = add nsw i64 %i.tl, %i.ns
  store i64 %i.tm, ptr %i.tk, align 8, !tbaa !6049
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 24 ; 3 uses
  %i.to = load i32, ptr %i.ci, align 8, !tbaa !5660
  %..i155 = call i32 @llvm.smax.i32(i32 %i.pc, i32 %i.to)
  %i.tp = add nsw i32 %..i155, 20                 ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tk, i64 36 ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !6005
  %i.ts = icmp sgt i32 %i.tp, %i.tr
  %.pre205.i = load ptr, ptr %i.tn, align 8, !tbaa !6053 ; 2 uses
  br i1 %i.ts, label %bb.do, label %.lr.ph192.i

bb.do:                                            ; preds = %._crit_edge186.i
  %i.tt = call i32 @sqlite3_initialize(), !inline_history !6054
  %.not.i.i112.i = icmp eq i32 %i.tt, 0
  br i1 %.not.i.i112.i, label %sqlite3_realloc64.exit.i.i157, label %.loopexit.thread.i

sqlite3_realloc64.exit.i.i157:                    ; preds = %bb.do
  %i.tu = sext i32 %i.tp to i64
  %i.tv = call fastcc ptr @sqlite3Realloc(ptr noundef %.pre205.i, i64 noundef %i.tu), !inline_history !6054 ; 3 uses
  %.not.i113.i = icmp eq ptr %i.tv, null
  br i1 %.not.i113.i, label %.loopexit.thread.i, label %bb.dp

bb.dp:                                            ; preds = %sqlite3_realloc64.exit.i.i157
  store i32 %i.tp, ptr %i.tq, align 4, !tbaa !6005
  store ptr %i.tv, ptr %i.tn, align 8, !tbaa !6006
  br label %.lr.ph192.i

.loopexit.thread.i:                               ; preds = %sqlite3_realloc64.exit.i.i157, %bb.do
  %i.tw = call i32 @sqlite3_reset(ptr noundef %i.mq), !inline_history !6020 ; 0 uses
  br label %fts3IncrmergeLoad.exit

.lr.ph192.i:                                      ; preds = %bb.dp, %._crit_edge186.i
  %i.tx = phi ptr [ %i.tv, %bb.dp ], [ %.pre205.i, %._crit_edge186.i ]
  %i.ty = sext i32 %i.pc to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tx, ptr nonnull align 1 %i.pd, i64 %i.ty, i1 false)
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  store i32 %i.pc, ptr %i.tz, align 8, !tbaa !6055
  %i.ua = load ptr, ptr %i.tn, align 8, !tbaa !6053
  %i.ub = getelementptr inbounds i8, ptr %i.ua, i64 %i.ty
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ub, i8 0, i64 20, i1 false)
  br label %bb.dq

bb.dq:                                            ; preds = %nodeReaderRelease.exit139.i, %.lr.ph192.i
  %indvars.iv201.i = phi i64 [ %.pre-phi.i154, %.lr.ph192.i ], [ %indvars.iv.next202.i, %nodeReaderRelease.exit139.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #71
  %i.uc = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %indvars.iv201.i ; 9 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 24
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !6053 ; 4 uses
  %.not.i156 = icmp eq ptr %i.ue, null
  br i1 %.not.i156, label %nodeReaderRelease.exit139.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 32
  %i.ug = load i32, ptr %i.uf, align 8, !tbaa !6055
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ck, i8 0, i64 40, i1 false)
  store ptr %i.ue, ptr %4, align 8, !tbaa !6028
  store i32 %i.ug, ptr %i.cj, align 8, !tbaa !6030
  %i.uh = load i8, ptr %i.ue, align 1, !tbaa !227
  %.not12.i115.i = icmp eq i8 %i.uh, 0
  br i1 %.not12.i115.i, label %nodeReaderInit.exit119.i, label %.thread.i116.i

.thread.i116.i:                                   ; preds = %bb.dr
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ue, i64 1
  %i.uj = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %i.ui, ptr noundef nonnull %i.ck), !inline_history !6031
  %i.uk = add nsw i32 %i.uj, 1
  br label %nodeReaderInit.exit119.i

nodeReaderInit.exit119.i:                         ; preds = %.thread.i116.i, %bb.dr
  %.sink.i117.i = phi i32 [ %i.uk, %.thread.i116.i ], [ 1, %bb.dr ]
  store i32 %.sink.i117.i, ptr %i.cl, align 4, !tbaa !6032
  %i.ul = call fastcc i32 @nodeReaderNext(ptr noundef nonnull %4), !inline_history !6031 ; 2 uses
  %i.um = load ptr, ptr %4, align 8, !tbaa !6028
  %i.un = icmp ne ptr %i.um, null
  %i.uo = icmp eq i32 %i.ul, 0                    ; 2 uses
  %i.up = select i1 %i.un, i1 %i.uo, i1 false
  br i1 %i.up, label %.lr.ph187.i, label %._crit_edge188.i

.lr.ph187.i:                                      ; preds = %nodeReaderInit.exit119.i, %.lr.ph187.i
  %i.uq = call fastcc i32 @nodeReaderNext(ptr noundef %4), !inline_history !6020 ; 2 uses
  %i.ur = load ptr, ptr %4, align 8, !tbaa !6028
  %i.us = icmp ne ptr %i.ur, null
  %i.ut = icmp eq i32 %i.uq, 0                    ; 2 uses
  %i.uu = select i1 %i.us, i1 %i.ut, i1 false
  br i1 %i.uu, label %.lr.ph187.i, label %._crit_edge188.i, !llvm.loop !6056

._crit_edge188.i:                                 ; preds = %.lr.ph187.i, %nodeReaderInit.exit119.i
  %storemerge97.lcssa.i = phi i32 [ %i.ul, %nodeReaderInit.exit119.i ], [ %i.uq, %.lr.ph187.i ]
  %.lcssa.i = phi i1 [ %i.uo, %nodeReaderInit.exit119.i ], [ %i.ut, %.lr.ph187.i ]
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uc, i64 8 ; 3 uses
  %i.uw = load i32, ptr %i.cn, align 8, !tbaa !6035 ; 6 uses
  br i1 %.lcssa.i, label %bb.ds, label %blobGrowBuffer.exit124.thread.i

bb.ds:                                            ; preds = %._crit_edge188.i
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uc, i64 20 ; 2 uses
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !6005
  %i.uz = icmp sgt i32 %i.uw, %i.uy
  br i1 %i.uz, label %bb.dt, label %blobGrowBuffer.exit124.i

bb.dt:                                            ; preds = %bb.ds
  %i.va = load ptr, ptr %i.uv, align 8, !tbaa !6006
  %i.vb = call i32 @sqlite3_initialize(), !inline_history !6054
  %.not.i.i120.i = icmp eq i32 %i.vb, 0
  br i1 %.not.i.i120.i, label %sqlite3_realloc64.exit.i122.i, label %blobGrowBuffer.exit124.thread.i

sqlite3_realloc64.exit.i122.i:                    ; preds = %bb.dt
  %i.vc = sext i32 %i.uw to i64
  %i.vd = call fastcc ptr @sqlite3Realloc(ptr noundef %i.va, i64 noundef %i.vc), !inline_history !6054 ; 2 uses
  %.not.i123.i = icmp eq ptr %i.vd, null
  br i1 %.not.i123.i, label %blobGrowBuffer.exit124.thread.i, label %bb.du

bb.du:                                            ; preds = %sqlite3_realloc64.exit.i122.i
  store i32 %i.uw, ptr %i.ux, align 4, !tbaa !6005
  store ptr %i.vd, ptr %i.uv, align 8, !tbaa !6006
  br label %blobGrowBuffer.exit124.i

blobGrowBuffer.exit124.i:                         ; preds = %bb.du, %bb.ds
  %i.ve = icmp sgt i32 %i.uw, 0
  br i1 %i.ve, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %blobGrowBuffer.exit124.i
  %i.vf = load ptr, ptr %i.uv, align 8, !tbaa !6057
  %i.vg = load ptr, ptr %i.cm, align 8, !tbaa !6034
  %i.vh = zext nneg i32 %i.uw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vf, ptr align 1 %i.vg, i64 %i.vh, i1 false)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %blobGrowBuffer.exit124.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  store i32 %i.uw, ptr %i.vi, align 8, !tbaa !6058
  %.not632 = icmp eq i64 %indvars.iv201.i, 0
  br i1 %.not632, label %blobGrowBuffer.exit124.thread.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #71
  store ptr null, ptr %i.h, align 8, !tbaa !251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #71
  store i32 0, ptr %i.i, align 4, !tbaa !5
  %i.vj = getelementptr i8, ptr %i.uc, i64 -40
  %i.vk = load i64, ptr %i.ck, align 8, !tbaa !6059 ; 2 uses
  store i64 %i.vk, ptr %i.vj, align 8, !tbaa !6049
  %i.vl = call fastcc i32 @sqlite3Fts3ReadBlock(ptr noundef %0, i64 noundef %i.vk, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i), !inline_history !6020 ; 2 uses
  %i.vm = getelementptr i8, ptr %i.uc, i64 -16    ; 3 uses
  %i.vn = load i32, ptr %i.i, align 4, !tbaa !5   ; 3 uses
  %i.vo = load i32, ptr %i.ci, align 8, !tbaa !5660
  %.99.i = call i32 @llvm.smax.i32(i32 %i.vn, i32 %i.vo)
  %i.vp = add nsw i32 %.99.i, 20                  ; 3 uses
  %i.vq = icmp eq i32 %i.vl, 0
  br i1 %i.vq, label %bb.dy, label %blobGrowBuffer.exit129.thread.i

bb.dy:                                            ; preds = %bb.dx
  %i.vr = getelementptr i8, ptr %i.uc, i64 -4     ; 2 uses
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !6005
  %i.vt = icmp sgt i32 %i.vp, %i.vs
  %.pre206.i = load ptr, ptr %i.vm, align 8, !tbaa !6053 ; 2 uses
  br i1 %i.vt, label %bb.dz, label %blobGrowBuffer.exit129.i

bb.dz:                                            ; preds = %bb.dy
  %i.vu = call i32 @sqlite3_initialize(), !inline_history !6054
  %.not.i.i125.i = icmp eq i32 %i.vu, 0
  br i1 %.not.i.i125.i, label %sqlite3_realloc64.exit.i127.i, label %blobGrowBuffer.exit129.thread.i

sqlite3_realloc64.exit.i127.i:                    ; preds = %bb.dz
  %i.vv = sext i32 %i.vp to i64
  %i.vw = call fastcc ptr @sqlite3Realloc(ptr noundef %.pre206.i, i64 noundef %i.vv), !inline_history !6054 ; 3 uses
  %.not.i128.i = icmp eq ptr %i.vw, null
  br i1 %.not.i128.i, label %blobGrowBuffer.exit129.thread.i, label %bb.ea

bb.ea:                                            ; preds = %sqlite3_realloc64.exit.i127.i
  store i32 %i.vp, ptr %i.vr, align 4, !tbaa !6005
  store ptr %i.vw, ptr %i.vm, align 8, !tbaa !6006
  br label %blobGrowBuffer.exit129.i

blobGrowBuffer.exit129.i:                         ; preds = %bb.ea, %bb.dy
  %i.vx = phi ptr [ %i.vw, %bb.ea ], [ %.pre206.i, %bb.dy ]
  %i.vy = load ptr, ptr %i.h, align 8, !tbaa !251
  %i.vz = sext i32 %i.vn to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vx, ptr align 1 %i.vy, i64 %i.vz, i1 false)
  %i.wa = getelementptr i8, ptr %i.uc, i64 -8
  store i32 %i.vn, ptr %i.wa, align 8, !tbaa !6055
  %i.wb = load ptr, ptr %i.vm, align 8, !tbaa !6053
  %i.wc = getelementptr inbounds i8, ptr %i.wb, i64 %i.vz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.wc, i8 0, i64 20, i1 false)
  br label %blobGrowBuffer.exit129.thread.i

blobGrowBuffer.exit129.thread.i:                  ; preds = %blobGrowBuffer.exit129.i, %sqlite3_realloc64.exit.i127.i, %bb.dz, %bb.dx
  %.10170.i = phi i32 [ 0, %blobGrowBuffer.exit129.i ], [ 7, %bb.dz ], [ 7, %sqlite3_realloc64.exit.i127.i ], [ %i.vl, %bb.dx ]
  %i.wd = load ptr, ptr %i.h, align 8, !tbaa !251 ; 4 uses
  %i.we = icmp eq ptr %i.wd, null
  br i1 %i.we, label %sqlite3_free.exit134.i, label %bb.eb

bb.eb:                                            ; preds = %blobGrowBuffer.exit129.thread.i
  %i.wf = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i130.i = icmp eq i32 %i.wf, 0
  br i1 %.not.i130.i, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.wg = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i131.i = icmp eq ptr %i.wg, null
  br i1 %.not.i.i131.i, label %sqlite3_mutex_enter.exit.i132.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.wh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.wh(ptr noundef nonnull %i.wg) #71, !inline_history !6040
  br label %sqlite3_mutex_enter.exit.i132.i

sqlite3_mutex_enter.exit.i132.i:                  ; preds = %bb.ed, %bb.ec
  %i.wi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.wj = call i32 %i.wi(ptr noundef nonnull %i.wd) #71, !inline_history !6041
  %i.wk = sext i32 %i.wj to i64
  %i.wl = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.wm = sub nsw i64 %i.wl, %i.wk
  store i64 %i.wm, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.wn = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.wo = add nsw i64 %i.wn, -1
  store i64 %i.wo, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.wp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.wp(ptr noundef nonnull %i.wd) #71, !inline_history !6042
  %i.wq = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i133.i = icmp eq ptr %i.wq, null
  br i1 %.not.i4.i133.i, label %sqlite3_free.exit134.i, label %bb.ee

bb.ee:                                            ; preds = %sqlite3_mutex_enter.exit.i132.i
  %i.wr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.wr(ptr noundef nonnull %i.wq) #71, !inline_history !6043
  br label %sqlite3_free.exit134.i

bb.ef:                                            ; preds = %bb.eb
  %i.ws = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.ws(ptr noundef nonnull %i.wd) #71, !inline_history !6042
  br label %sqlite3_free.exit134.i

sqlite3_free.exit134.i:                           ; preds = %bb.ef, %bb.ee, %sqlite3_mutex_enter.exit.i132.i, %blobGrowBuffer.exit129.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #71
  br label %blobGrowBuffer.exit124.thread.i

blobGrowBuffer.exit124.thread.i:                  ; preds = %._crit_edge188.i, %bb.dt, %sqlite3_realloc64.exit.i122.i, %bb.dw, %sqlite3_free.exit134.i
  %.3159.ph.i = phi i32 [ %storemerge97.lcssa.i, %._crit_edge188.i ], [ 7, %sqlite3_realloc64.exit.i122.i ], [ 7, %bb.dt ], [ 0, %bb.dw ], [ %.10170.i, %sqlite3_free.exit134.i ] ; 4 uses
  %.val.pr.i = load ptr, ptr %i.cm, align 8, !tbaa !6034 ; 4 uses
  %i.wt = icmp eq ptr %.val.pr.i, null
  br i1 %i.wt, label %nodeReaderRelease.exit139.i, label %bb.eg

bb.eg:                                            ; preds = %blobGrowBuffer.exit124.thread.i
  %i.wu = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i135.i = icmp eq i32 %i.wu, 0
  br i1 %.not.i.i135.i, label %bb.ek, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.wv = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i136.i = icmp eq ptr %i.wv, null
  br i1 %.not.i.i.i136.i, label %sqlite3_mutex_enter.exit.i.i137.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ww = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.ww(ptr noundef nonnull %i.wv) #71, !inline_history !6036
  br label %sqlite3_mutex_enter.exit.i.i137.i

sqlite3_mutex_enter.exit.i.i137.i:                ; preds = %bb.ei, %bb.eh
  %i.wx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.wy = call i32 %i.wx(ptr noundef nonnull %.val.pr.i) #71, !inline_history !6037
  %i.wz = sext i32 %i.wy to i64
  %i.xa = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.xb = sub nsw i64 %i.xa, %i.wz
  store i64 %i.xb, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.xc = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.xd = add nsw i64 %i.xc, -1
  store i64 %i.xd, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.xe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.xe(ptr noundef nonnull %.val.pr.i) #71, !inline_history !6038
  %i.xf = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i138.i = icmp eq ptr %i.xf, null
  br i1 %.not.i4.i.i138.i, label %nodeReaderRelease.exit139.i, label %bb.ej

bb.ej:                                            ; preds = %sqlite3_mutex_enter.exit.i.i137.i
  %i.xg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.xg(ptr noundef nonnull %i.xf) #71, !inline_history !6039
  br label %nodeReaderRelease.exit139.i

bb.ek:                                            ; preds = %bb.eg
  %i.xh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.xh(ptr noundef nonnull %.val.pr.i) #71, !inline_history !6038
  br label %nodeReaderRelease.exit139.i

nodeReaderRelease.exit139.i:                      ; preds = %bb.dq, %bb.ek, %bb.ej, %sqlite3_mutex_enter.exit.i.i137.i, %blobGrowBuffer.exit124.thread.i
  %.3159.i248 = phi i32 [ %.3159.ph.i, %blobGrowBuffer.exit124.thread.i ], [ %.3159.ph.i, %bb.ek ], [ %.3159.ph.i, %bb.ej ], [ %.3159.ph.i, %sqlite3_mutex_enter.exit.i.i137.i ], [ 0, %bb.dq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #71
  %indvars.iv.next202.i = add nsw i64 %indvars.iv201.i, -1
  %i.xi = icmp sgt i64 %indvars.iv201.i, 0
  %i.xj = icmp eq i32 %.3159.i248, 0
  %i.xk = select i1 %i.xi, i1 %i.xj, i1 false
  br i1 %i.xk, label %bb.dq, label %.loopexit.i, !llvm.loop !6060

.loopexit.i:                                      ; preds = %nodeReaderRelease.exit139.i, %bb.dl
  %.5.i = phi i32 [ %.1157.i, %bb.dl ], [ %.3159.i248, %nodeReaderRelease.exit139.i ]
  %.5.fr.i = freeze i32 %.5.i                     ; 2 uses
  %i.xl = call i32 @sqlite3_reset(ptr noundef %i.mq), !inline_history !6020
  %i.xm = icmp eq i32 %.5.fr.i, 0
  %spec.select.i153 = select i1 %i.xm, i32 %i.xl, i32 %.5.fr.i
  br label %fts3IncrmergeLoad.exit

fts3IncrmergeLoad.exit:                           ; preds = %bb.bz, %bb.cp, %bb.cq, %.thread173.i, %.thread171.i, %.loopexit.thread.i, %.loopexit.i
  %.3.i149 = phi i32 [ %i.ph, %bb.cq ], [ %i.mo, %bb.bz ], [ %i.pi, %.thread173.i ], [ %i.pg, %bb.cp ], [ 267, %.thread171.i ], [ 7, %.loopexit.thread.i ], [ %spec.select.i153, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #71
  br label %bb.fc

bb.el:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #71
  store ptr null, ptr %i.b, align 8, !tbaa !511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #71
  store ptr null, ptr %i.c, align 8, !tbaa !511
  %i.xn = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 29, ptr noundef %i.b, ptr noundef null), !inline_history !6061 ; 2 uses
  %i.xo = icmp eq i32 %i.xn, 0
  br i1 %i.xo, label %bb.em, label %fts3IncrmergeWriter.exit

bb.em:                                            ; preds = %bb.el
  %i.xp = load ptr, ptr %i.b, align 8, !tbaa !511 ; 9 uses
  %i.xq = call fastcc i32 @vdbeUnbind(ptr noundef %i.xp, i32 noundef 0), !inline_history !6061
  %i.xr = icmp eq i32 %i.xq, 0
  br i1 %i.xr, label %bb.en, label %sqlite3_bind_int64.exit.i172

bb.en:                                            ; preds = %bb.em
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xp, i64 128
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !171 ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 20 ; 2 uses
  %i.xv = load i16, ptr %i.xu, align 4, !tbaa !162
  %i.xw = and i16 %i.xv, -28672
  %.not.i.i.i175 = icmp eq i16 %i.xw, 0
  br i1 %.not.i.i.i175, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.xt, i64 noundef range(i64 0, -9223372036854775808) %.395), !inline_history !6061
  br label %sqlite3VdbeMemSetInt64.exit.i.i176

bb.ep:                                            ; preds = %bb.en
  store i64 %.395, ptr %i.xt, align 8, !tbaa !227
  store i16 4, ptr %i.xu, align 4, !tbaa !162
  br label %sqlite3VdbeMemSetInt64.exit.i.i176

sqlite3VdbeMemSetInt64.exit.i.i176:               ; preds = %bb.ep, %bb.eo
  %i.xx = load ptr, ptr %i.xp, align 8, !tbaa !146
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 24
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !23 ; 2 uses
  %.not.i8.i.i177 = icmp eq ptr %i.xz, null
  br i1 %.not.i8.i.i177, label %sqlite3_bind_int64.exit.i172, label %bb.eq

bb.eq:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i176
  %i.ya = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.ya(ptr noundef nonnull %i.xz) #71, !inline_history !6062
  br label %sqlite3_bind_int64.exit.i172

sqlite3_bind_int64.exit.i172:                     ; preds = %bb.eq, %sqlite3VdbeMemSetInt64.exit.i.i176, %bb.em
  %i.yb = load i32, ptr %i.bc, align 8, !tbaa !5351
  %i.yc = sext i32 %i.yb to i64                   ; 2 uses
  %i.yd = call fastcc i32 @vdbeUnbind(ptr noundef %i.xp, i32 noundef 1), !inline_history !6061
  %i.ye = icmp eq i32 %i.yd, 0
  br i1 %i.ye, label %bb.er, label %sqlite3_bind_int64.exit44.i

bb.er:                                            ; preds = %sqlite3_bind_int64.exit.i172
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xp, i64 128
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !171 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 56 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 76 ; 2 uses
  %i.yj = load i16, ptr %i.yi, align 4, !tbaa !162
  %i.yk = and i16 %i.yj, -28672
  %.not.i.i41.i = icmp eq i16 %i.yk, 0
  br i1 %.not.i.i41.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.yh, i64 noundef %i.yc), !inline_history !6061
  br label %sqlite3VdbeMemSetInt64.exit.i42.i

bb.et:                                            ; preds = %bb.er
  store i64 %i.yc, ptr %i.yh, align 8, !tbaa !227
  store i16 4, ptr %i.yi, align 4, !tbaa !162
  br label %sqlite3VdbeMemSetInt64.exit.i42.i

sqlite3VdbeMemSetInt64.exit.i42.i:                ; preds = %bb.et, %bb.es
  %i.yl = load ptr, ptr %i.xp, align 8, !tbaa !146
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 24
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !23 ; 2 uses
end_hunk_4
begin_hunk_5_@sqlite3Fts3Incrmerge:bb.a
  %i.yq = icmp eq i32 %i.yp, 100
  br i1 %i.yq, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %sqlite3_bind_int64.exit44.i
  %i.yr = call i64 @sqlite3_column_int64(ptr noundef %i.xp, i32 noundef 0), !inline_history !6061
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %sqlite3_bind_int64.exit44.i
  %.0.i173 = phi i64 [ %i.yr, %bb.ev ], [ 0, %sqlite3_bind_int64.exit44.i ] ; 17 uses
  %i.ys = call i32 @sqlite3_reset(ptr noundef %i.xp), !inline_history !6061 ; 2 uses
  %.not.i174 = icmp eq i32 %i.ys, 0
  br i1 %.not.i174, label %bb.ex, label %fts3IncrmergeWriter.exit

bb.ex:                                            ; preds = %bb.ew
  %i.yt = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 10, ptr noundef %i.c, ptr noundef null), !inline_history !6061 ; 2 uses
  %i.yu = icmp eq i32 %i.yt, 0
  br i1 %i.yu, label %bb.ey, label %fts3IncrmergeWriter.exit

bb.ey:                                            ; preds = %bb.ex
  %i.yv = load ptr, ptr %i.c, align 8, !tbaa !511 ; 3 uses
  %i.yw = call i32 @sqlite3_step(ptr noundef %i.yv), !inline_history !6061
  %i.yx = icmp eq i32 %i.yw, 100
  br i1 %i.yx, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.yy = call i64 @sqlite3_column_int64(ptr noundef %i.yv, i32 noundef 0), !inline_history !6061 ; 2 uses
  store i64 %i.yy, ptr %i.bf, align 8, !tbaa !6045
  %i.yz = shl nsw i64 %.0.i173, 4
  %i.za = add i64 %i.yz, -1
  %i.zb = add i64 %i.za, %i.yy
  store i64 %i.zb, ptr %i.bg, align 8, !tbaa !6046
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.zc = call i32 @sqlite3_reset(ptr noundef %i.yv), !inline_history !6061 ; 2 uses
  %.not39.i = icmp eq i32 %i.zc, 0
  br i1 %.not39.i, label %bb.fb, label %fts3IncrmergeWriter.exit

bb.fb:                                            ; preds = %bb.fa
  %i.zd = load i64, ptr %i.bg, align 8, !tbaa !6046
  %i.ze = call fastcc i32 @fts3WriteSegment(ptr noundef %0, i64 noundef %i.zd, ptr noundef null, i32 noundef 0), !inline_history !6061 ; 2 uses
  %.not40.i = icmp eq i32 %i.ze, 0
  br i1 %.not40.i, label %.thread.loopexit.i, label %fts3IncrmergeWriter.exit

.thread.loopexit.i:                               ; preds = %bb.fb
  store i64 %.395, ptr %i.bh, align 8, !tbaa !6047
  store i64 %.0.i173, ptr %i.s, align 8, !tbaa !6044
  store i32 %.0228, ptr %i.bi, align 8, !tbaa !6048
  %i.zf = load i64, ptr %i.bf, align 8, !tbaa !6045 ; 16 uses
  store i64 %i.zf, ptr %i.bj, align 8, !tbaa !6049
  %i.zg = add nsw i64 %i.zf, %.0.i173
  store i64 %i.zg, ptr %i.bk, align 8, !tbaa !6049
  %i.zh = shl nsw i64 %.0.i173, 1
  %i.zi = add nsw i64 %i.zf, %i.zh
  store i64 %i.zi, ptr %i.bl, align 8, !tbaa !6049
  %i.zj = mul nsw i64 %.0.i173, 3
  %i.zk = add nsw i64 %i.zf, %i.zj
  store i64 %i.zk, ptr %i.bm, align 8, !tbaa !6049
  %i.zl = shl nsw i64 %.0.i173, 2
  %i.zm = add nsw i64 %i.zf, %i.zl
  store i64 %i.zm, ptr %i.bn, align 8, !tbaa !6049
  %i.zn = mul nsw i64 %.0.i173, 5
  %i.zo = add nsw i64 %i.zf, %i.zn
  store i64 %i.zo, ptr %i.bo, align 8, !tbaa !6049
  %i.zp = mul nsw i64 %.0.i173, 6
  %i.zq = add nsw i64 %i.zf, %i.zp
  store i64 %i.zq, ptr %i.bp, align 8, !tbaa !6049
  %i.zr = mul nsw i64 %.0.i173, 7
  %i.zs = add nsw i64 %i.zf, %i.zr
  store i64 %i.zs, ptr %i.bq, align 8, !tbaa !6049
  %i.zt = shl nsw i64 %.0.i173, 3
  %i.zu = add nsw i64 %i.zf, %i.zt
  store i64 %i.zu, ptr %i.br, align 8, !tbaa !6049
  %i.zv = mul nsw i64 %.0.i173, 9
  %i.zw = add nsw i64 %i.zf, %i.zv
  store i64 %i.zw, ptr %i.bs, align 8, !tbaa !6049
  %i.zx = mul nsw i64 %.0.i173, 10
  %i.zy = add nsw i64 %i.zf, %i.zx
  store i64 %i.zy, ptr %i.bt, align 8, !tbaa !6049
  %i.zz = mul nsw i64 %.0.i173, 11
  %i.aaa = add nsw i64 %i.zf, %i.zz
  store i64 %i.aaa, ptr %i.bu, align 8, !tbaa !6049
  %i.aab = mul nsw i64 %.0.i173, 12
  %i.aac = add nsw i64 %i.zf, %i.aab
  store i64 %i.aac, ptr %i.bv, align 8, !tbaa !6049
  %i.aad = mul nsw i64 %.0.i173, 13
  %i.aae = add nsw i64 %i.zf, %i.aad
  store i64 %i.aae, ptr %i.bw, align 8, !tbaa !6049
  %i.aaf = mul nsw i64 %.0.i173, 14
  %i.aag = add nsw i64 %i.zf, %i.aaf
  store i64 %i.aag, ptr %i.bx, align 8, !tbaa !6049
  %i.aah = mul nsw i64 %.0.i173, 15
  %i.aai = add nsw i64 %i.zf, %i.aah
  store i64 %i.aai, ptr %i.by, align 8, !tbaa !6049
  br label %fts3IncrmergeWriter.exit

fts3IncrmergeWriter.exit:                         ; preds = %bb.el, %bb.ew, %bb.ex, %bb.fa, %bb.fb, %.thread.loopexit.i
  %.035.i = phi i32 [ %i.ze, %bb.fb ], [ %i.ys, %bb.ew ], [ %i.zc, %bb.fa ], [ %i.yt, %bb.ex ], [ %i.xn, %bb.el ], [ 0, %.thread.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #71
  br label %bb.fc

bb.fc:                                            ; preds = %fts3IncrmergeWriter.exit, %fts3IncrmergeLoad.exit
  %storemerge116 = phi i32 [ %.035.i, %fts3IncrmergeWriter.exit ], [ %.3.i149, %fts3IncrmergeLoad.exit ] ; 3 uses
  store i32 %storemerge116, ptr %i.n, align 4, !tbaa !5
  %i.aaj = icmp eq i32 %storemerge116, 0
  br i1 %i.aaj, label %bb.fd, label %bb.gw

bb.fd:                                            ; preds = %bb.fc
  %i.aak = load i64, ptr %i.s, align 8, !tbaa !6044
  %.not117 = icmp eq i64 %i.aak, 0
  br i1 %.not117, label %bb.gw, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  br i1 %.not118, label %.loopexit._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.fe
  %i.aal = zext nneg i32 %.090354 to i64
  br label %bb.ff

bb.ff:                                            ; preds = %.preheader, %bb.gv
  %i.aam = load ptr, ptr %i.bz, align 8, !tbaa !5424 ; 5 uses
  %i.aan = load i32, ptr %i.ca, align 8, !tbaa !5423 ; 5 uses
  %i.aao = load ptr, ptr %i.co, align 8, !tbaa !5429
  %i.aap = load i32, ptr %i.cp, align 8, !tbaa !5426 ; 4 uses
  %i.aaq = load ptr, ptr %i.cq, align 8, !tbaa !6057
  %i.aar = load i32, ptr %i.cr, align 8, !tbaa !6058
  %invariant.smin.i.i = call i32 @llvm.smin.i32(i32 %i.aar, i32 %i.aan) ; 3 uses
  %or.cond9.i.i = icmp sgt i32 %invariant.smin.i.i, 0
  br i1 %or.cond9.i.i, label %.lr.ph.preheader.i.i, label %fts3PrefixCompress.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ff
  %wide.trip.count.i.i = zext nneg i32 %invariant.smin.i.i to i64
  br label %.lr.ph.i.i188

.lr.ph.i.i188:                                    ; preds = %bb.fg, %.lr.ph.preheader.i.i
  %indvars.iv.i.i189 = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i190, %bb.fg ] ; 4 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %indvars.iv.i.i189
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !227
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aam, i64 %indvars.iv.i.i189
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !227
  %i.aaw = icmp eq i8 %i.aat, %i.aav
  br i1 %i.aaw, label %bb.fg, label %.critedge.loopexit.split.loop.exit14.i.i

bb.fg:                                            ; preds = %.lr.ph.i.i188
  %indvars.iv.next.i.i190 = add nuw nsw i64 %indvars.iv.i.i189, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i190, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %fts3PrefixCompress.exit.i, label %.lr.ph.i.i188, !llvm.loop !5938

.critedge.loopexit.split.loop.exit14.i.i:         ; preds = %.lr.ph.i.i188
  %i.aax = trunc nuw nsw i64 %indvars.iv.i.i189 to i32
  br label %fts3PrefixCompress.exit.i

fts3PrefixCompress.exit.i:                        ; preds = %bb.fg, %.critedge.loopexit.split.loop.exit14.i.i, %bb.ff
  %.0.lcssa.i.i178 = phi i32 [ 0, %bb.ff ], [ %i.aax, %.critedge.loopexit.split.loop.exit14.i.i ], [ %invariant.smin.i.i, %bb.fg ] ; 4 uses
  %i.aay = sub nsw i32 %i.aan, %.0.lcssa.i.i178   ; 3 uses
  %i.aaz = icmp slt i32 %i.aay, 1
  br i1 %i.aaz, label %.sink.split, label %bb.fh

bb.fh:                                            ; preds = %fts3PrefixCompress.exit.i
  %i.aba = sext i32 %.0.lcssa.i.i178 to i64
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fi, %bb.fh
  %.04.i.i = phi i64 [ %i.aba, %bb.fh ], [ %i.abc, %bb.fi ]
  %.0.i.i = phi i32 [ 0, %bb.fh ], [ %i.abb, %bb.fi ]
  %i.abb = add nuw nsw i32 %.0.i.i, 1             ; 2 uses
  %i.abc = lshr i64 %.04.i.i, 7                   ; 2 uses
  %.not.i.i179 = icmp eq i64 %i.abc, 0
  br i1 %.not.i.i179, label %sqlite3Fts3VarintLen.exit.i, label %bb.fi, !llvm.loop !5441

sqlite3Fts3VarintLen.exit.i:                      ; preds = %bb.fi
  %i.abd = zext nneg i32 %i.aay to i64
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fj, %sqlite3Fts3VarintLen.exit.i
  %.04.i63.i = phi i64 [ %i.abd, %sqlite3Fts3VarintLen.exit.i ], [ %i.abf, %bb.fj ]
  %.0.i64.i = phi i32 [ 0, %sqlite3Fts3VarintLen.exit.i ], [ %i.abe, %bb.fj ]
  %i.abe = add nuw nsw i32 %.0.i64.i, 1           ; 2 uses
  %i.abf = lshr i64 %.04.i63.i, 7                 ; 2 uses
  %.not.i65.i = icmp eq i64 %i.abf, 0
  br i1 %.not.i65.i, label %sqlite3Fts3VarintLen.exit66.i, label %bb.fj, !llvm.loop !5441

sqlite3Fts3VarintLen.exit66.i:                    ; preds = %bb.fj
  %i.abg = sext i32 %i.aap to i64                 ; 2 uses
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fk, %sqlite3Fts3VarintLen.exit66.i
  %.04.i67.i = phi i64 [ %i.abg, %sqlite3Fts3VarintLen.exit66.i ], [ %i.abi, %bb.fk ]
  %.0.i68.i = phi i32 [ 0, %sqlite3Fts3VarintLen.exit66.i ], [ %i.abh, %bb.fk ]
  %i.abh = add nuw nsw i32 %.0.i68.i, 1           ; 2 uses
  %i.abi = lshr i64 %.04.i67.i, 7                 ; 2 uses
  %.not.i69.i = icmp eq i64 %i.abi, 0
  br i1 %.not.i69.i, label %sqlite3Fts3VarintLen.exit70.i, label %bb.fk, !llvm.loop !5441

sqlite3Fts3VarintLen.exit70.i:                    ; preds = %bb.fk
  %i.abj = add i32 %i.aay, %i.aap
  %i.abk = add i32 %i.abj, %i.abb
  %i.abl = add i32 %i.abk, %i.abe
  %i.abm = add i32 %i.abl, %i.abh                 ; 2 uses
  %i.abn = load i32, ptr %i.ct, align 8, !tbaa !6055 ; 4 uses
  %i.abo = icmp sgt i32 %i.abn, 0
  %i.abp = add nsw i32 %i.abn, %i.abm             ; 2 uses
  br i1 %i.abo, label %bb.fl, label %.thread.i180

bb.fl:                                            ; preds = %sqlite3Fts3VarintLen.exit70.i
  %i.abq = load i32, ptr %i.ci, align 8, !tbaa !5660
  %i.abr = icmp sgt i32 %i.abp, %i.abq
  br i1 %i.abr, label %bb.fm, label %.thread.i180

bb.fm:                                            ; preds = %bb.fl
  %i.abs = load i64, ptr %i.bj, align 8, !tbaa !6049 ; 2 uses
  %i.abt = load i64, ptr %i.bf, align 8, !tbaa !6045
  %i.abu = load i64, ptr %i.s, align 8, !tbaa !6044
  %i.abv = add nsw i64 %i.abu, %i.abt
  %i.abw = icmp slt i64 %i.abs, %i.abv
  br i1 %i.abw, label %bb.fn, label %.thread.i180

bb.fn:                                            ; preds = %bb.fm
  %i.abx = load ptr, ptr %i.cs, align 8, !tbaa !6053
  %i.aby = call fastcc i32 @fts3WriteSegment(ptr noundef nonnull %0, i64 noundef %i.abs, ptr noundef %i.abx, i32 noundef %i.abn), !inline_history !6063 ; 2 uses
  %i.abz = load i64, ptr %i.cu, align 8, !tbaa !6064
  %i.aca = add nsw i64 %i.abz, 1
  store i64 %i.aca, ptr %i.cu, align 8, !tbaa !6064
  %i.acb = icmp eq i32 %i.aby, 0
  br i1 %i.acb, label %bb.fo, label %fts3IncrmergePush.exit.i

bb.fo:                                            ; preds = %bb.fn
  %i.acc = add nsw i32 %.0.lcssa.i.i178, 1        ; 6 uses
  %i.acd = load i64, ptr %i.bj, align 8, !tbaa !6049
  br label %bb.fp

bb.fp:                                            ; preds = %bb.gm, %bb.fo
  %indvars.iv.i71.i = phi i64 [ 1, %bb.fo ], [ %indvars.iv.next.i73.i, %bb.gm ] ; 4 uses
  %.072156.i.i = phi i64 [ %i.acd, %bb.fo ], [ %i.agq, %bb.gm ] ; 2 uses
  %i.ace = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %indvars.iv.i71.i ; 13 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 8
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !6057
  %i.ach = getelementptr inbounds nuw i8, ptr %i.ace, i64 16 ; 4 uses
  %i.aci = load i32, ptr %i.ach, align 8, !tbaa !6058 ; 2 uses
  %invariant.smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.aci, i32 range(i32 -2147483647, -2147483648) %i.acc) ; 3 uses
  %or.cond9.i.i.i = icmp sgt i32 %invariant.smin.i.i.i, 0
  br i1 %or.cond9.i.i.i, label %.lr.ph.preheader.i.i.i, label %fts3PrefixCompress.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.fp
  %wide.trip.count.i.i.i = zext nneg i32 %invariant.smin.i.i.i to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.fq, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.fq ] ; 4 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 %indvars.iv.i.i.i
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !227
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aam, i64 %indvars.iv.i.i.i
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !227
  %i.acn = icmp eq i8 %i.ack, %i.acm
  br i1 %i.acn, label %bb.fq, label %.critedge.loopexit.split.loop.exit14.i.i.i

bb.fq:                                            ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %fts3PrefixCompress.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !5938

.critedge.loopexit.split.loop.exit14.i.i.i:       ; preds = %.lr.ph.i.i.i
  %i.aco = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  br label %fts3PrefixCompress.exit.i.i

fts3PrefixCompress.exit.i.i:                      ; preds = %bb.fq, %.critedge.loopexit.split.loop.exit14.i.i.i, %bb.fp
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.fp ], [ %i.aco, %.critedge.loopexit.split.loop.exit14.i.i.i ], [ %invariant.smin.i.i.i, %bb.fq ] ; 2 uses
  %i.acp = sub nsw i32 %i.acc, %.0.lcssa.i.i.i    ; 4 uses
  %i.acq = icmp slt i32 %i.acp, 1
  br i1 %i.acq, label %fts3IncrmergePush.exit.i, label %bb.fr

bb.fr:                                            ; preds = %fts3PrefixCompress.exit.i.i
  %i.acr = sext i32 %.0.lcssa.i.i.i to i64        ; 3 uses
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fs, %bb.fr
  %.04.i.i.i = phi i64 [ %i.acr, %bb.fr ], [ %i.act, %bb.fs ]
  %.0.i.i.i = phi i32 [ 0, %bb.fr ], [ %i.acs, %bb.fs ]
  %i.acs = add nuw nsw i32 %.0.i.i.i, 1           ; 2 uses
  %i.act = lshr i64 %.04.i.i.i, 7                 ; 2 uses
  %.not.i.i.i185 = icmp eq i64 %i.act, 0
  br i1 %.not.i.i.i185, label %sqlite3Fts3VarintLen.exit.i.i, label %bb.fs, !llvm.loop !5441

sqlite3Fts3VarintLen.exit.i.i:                    ; preds = %bb.fs
  %i.acu = zext nneg i32 %i.acp to i64            ; 3 uses
  br label %bb.ft

bb.ft:                                            ; preds = %bb.ft, %sqlite3Fts3VarintLen.exit.i.i
  %.04.i78.i.i = phi i64 [ %i.acu, %sqlite3Fts3VarintLen.exit.i.i ], [ %i.acw, %bb.ft ]
  %.0.i79.i.i = phi i32 [ 0, %sqlite3Fts3VarintLen.exit.i.i ], [ %i.acv, %bb.ft ]
  %i.acv = add nuw nsw i32 %.0.i79.i.i, 1         ; 2 uses
  %i.acw = lshr i64 %.04.i78.i.i, 7               ; 2 uses
  %.not.i80.i.i = icmp eq i64 %i.acw, 0
  br i1 %.not.i80.i.i, label %sqlite3Fts3VarintLen.exit81.i.i, label %bb.ft, !llvm.loop !5441

sqlite3Fts3VarintLen.exit81.i.i:                  ; preds = %bb.ft
  %i.acx = add nuw nsw i32 %i.acs, %i.acp
  %i.acy = add nuw nsw i32 %i.acx, %i.acv         ; 2 uses
  %i.acz = icmp eq i32 %i.aci, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ace, i64 32 ; 2 uses
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !6000 ; 4 uses
  br i1 %i.acz, label %split.i.i, label %bb.fu

bb.fu:                                            ; preds = %sqlite3Fts3VarintLen.exit81.i.i
  %i.ada = add nsw i32 %.pre.i.i, %i.acy
  %i.adb = load i32, ptr %i.ci, align 8, !tbaa !5660
  %.not.i72.i = icmp sgt i32 %i.ada, %i.adb
  br i1 %.not.i72.i, label %bb.gj, label %split.i.i

split.i.i:                                        ; preds = %bb.fu, %sqlite3Fts3VarintLen.exit81.i.i
  %i.adc = getelementptr inbounds nuw i8, ptr %i.ace, i64 8 ; 3 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.ace, i64 24 ; 8 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.ace, i64 32 ; 8 uses
  %i.adf = icmp eq i32 %.pre.i.i, 0
  br i1 %i.adf, label %bb.fv, label %bb.ga

bb.fv:                                            ; preds = %split.i.i
  %i.adg = load i32, ptr %i.ci, align 8, !tbaa !5660 ; 3 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.ace, i64 36 ; 2 uses
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !6005
  %i.adj = icmp sgt i32 %i.adg, %i.adi
  %.pre180.i.i = load ptr, ptr %i.add, align 8, !tbaa !6006 ; 2 uses
  br i1 %i.adj, label %bb.fw, label %bb.fy

bb.fw:                                            ; preds = %bb.fv
  %i.adk = call i32 @sqlite3_initialize(), !inline_history !6065
  %.not.i.i.i.i187 = icmp eq i32 %i.adk, 0
  br i1 %.not.i.i.i.i187, label %sqlite3_realloc64.exit.i.i.i, label %fts3IncrmergePush.exit.i

sqlite3_realloc64.exit.i.i.i:                     ; preds = %bb.fw
  %i.adl = sext i32 %i.adg to i64
  %i.adm = call fastcc ptr @sqlite3Realloc(ptr noundef %.pre180.i.i, i64 noundef %i.adl), !inline_history !6065 ; 3 uses
  %.not.i82.i.i = icmp eq ptr %i.adm, null
  br i1 %.not.i82.i.i, label %fts3IncrmergePush.exit.i, label %bb.fx

bb.fx:                                            ; preds = %sqlite3_realloc64.exit.i.i.i
  store i32 %i.adg, ptr %i.adh, align 4, !tbaa !6005
  store ptr %i.adm, ptr %i.add, align 8, !tbaa !6006
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fv
  %i.adn = phi ptr [ %.pre180.i.i, %bb.fv ], [ %i.adm, %bb.fx ]
  %i.ado = trunc i64 %indvars.iv.i71.i to i8
  store i8 %i.ado, ptr %i.adn, align 1, !tbaa !227
  %i.adp = load ptr, ptr %i.add, align 8, !tbaa !6006
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 1 ; 2 uses
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fz, %bb.fy
  %.08.i.i.i = phi ptr [ %i.adq, %bb.fy ], [ %i.adt, %bb.fz ] ; 3 uses
  %.0.i83.i.i = phi i64 [ %.072156.i.i, %bb.fy ], [ %i.adu, %bb.fz ] ; 2 uses
  %i.adr = trunc i64 %.0.i83.i.i to i8            ; 2 uses
  %i.ads = or i8 %i.adr, -128
  %i.adt = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1 ; 2 uses
  store i8 %i.ads, ptr %.08.i.i.i, align 1, !tbaa !227
  %i.adu = lshr i64 %.0.i83.i.i, 7                ; 2 uses
  %.not.i84.i.i = icmp eq i64 %i.adu, 0
  br i1 %.not.i84.i.i, label %sqlite3Fts3PutVarint.exit.i.i, label %bb.fz, !llvm.loop !5443

sqlite3Fts3PutVarint.exit.i.i:                    ; preds = %bb.fz
  store i8 %i.adr, ptr %.08.i.i.i, align 1, !tbaa !227
  %i.adv = ptrtoint ptr %i.adt to i64
  %i.adw = ptrtoint ptr %i.adq to i64
  %i.adx = sub i64 %i.adv, %i.adw
  %i.ady = trunc i64 %i.adx to i32
  %i.adz = add nsw i32 %i.ady, 1                  ; 2 uses
  store i32 %i.adz, ptr %i.ade, align 8, !tbaa !6000
  br label %bb.ga

bb.ga:                                            ; preds = %sqlite3Fts3PutVarint.exit.i.i, %split.i.i
  %i.aea = phi i32 [ %i.adz, %sqlite3Fts3PutVarint.exit.i.i ], [ %.pre.i.i, %split.i.i ]
  %i.aeb = add nsw i32 %i.aea, %i.acy             ; 3 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ace, i64 36 ; 2 uses
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !6005
  %i.aee = icmp sgt i32 %i.aeb, %i.aed
  br i1 %i.aee, label %bb.gb, label %blobGrowBuffer.exit89.i.i

bb.gb:                                            ; preds = %bb.ga
  %i.aef = load ptr, ptr %i.add, align 8, !tbaa !6006
  %i.aeg = call i32 @sqlite3_initialize(), !inline_history !6065
  %.not.i.i85.i.i = icmp eq i32 %i.aeg, 0
  br i1 %.not.i.i85.i.i, label %sqlite3_realloc64.exit.i87.i.i, label %fts3IncrmergePush.exit.i

sqlite3_realloc64.exit.i87.i.i:                   ; preds = %bb.gb
  %i.aeh = sext i32 %i.aeb to i64
  %i.aei = call fastcc ptr @sqlite3Realloc(ptr noundef %i.aef, i64 noundef %i.aeh), !inline_history !6065 ; 2 uses
  %.not.i88.i.i = icmp eq ptr %i.aei, null
  br i1 %.not.i88.i.i, label %fts3IncrmergePush.exit.i, label %bb.gc

bb.gc:                                            ; preds = %sqlite3_realloc64.exit.i87.i.i
  store i32 %i.aeb, ptr %i.aec, align 4, !tbaa !6005
  store ptr %i.aei, ptr %i.add, align 8, !tbaa !6006
  br label %blobGrowBuffer.exit89.i.i

blobGrowBuffer.exit89.i.i:                        ; preds = %bb.gc, %bb.ga
  %i.aej = getelementptr inbounds nuw i8, ptr %i.ace, i64 20 ; 2 uses
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !6005
  %.not.i186 = icmp slt i32 %.0.lcssa.i.i178, %i.aek
  br i1 %.not.i186, label %blobGrowBuffer.exit94.i.i, label %bb.gd

bb.gd:                                            ; preds = %blobGrowBuffer.exit89.i.i
  %i.ael = load ptr, ptr %i.adc, align 8, !tbaa !6006
  %i.aem = call i32 @sqlite3_initialize(), !inline_history !6065
  %.not.i.i90.i.i = icmp eq i32 %i.aem, 0
  br i1 %.not.i.i90.i.i, label %sqlite3_realloc64.exit.i92.i.i, label %fts3IncrmergePush.exit.i

sqlite3_realloc64.exit.i92.i.i:                   ; preds = %bb.gd
  %i.aen = sext i32 %i.acc to i64
  %i.aeo = call fastcc ptr @sqlite3Realloc(ptr noundef %i.ael, i64 noundef %i.aen), !inline_history !6065 ; 2 uses
  %.not.i93.i.i = icmp eq ptr %i.aeo, null
  br i1 %.not.i93.i.i, label %fts3IncrmergePush.exit.i, label %bb.ge

bb.ge:                                            ; preds = %sqlite3_realloc64.exit.i92.i.i
  store i32 %i.acc, ptr %i.aej, align 4, !tbaa !6005
  store ptr %i.aeo, ptr %i.adc, align 8, !tbaa !6006
  br label %blobGrowBuffer.exit94.i.i

blobGrowBuffer.exit94.i.i:                        ; preds = %bb.ge, %blobGrowBuffer.exit89.i.i
  %i.aep = load i32, ptr %i.ach, align 8, !tbaa !6058
  %.not77.i.i = icmp eq i32 %i.aep, 0
  %.pre182.i.i = load ptr, ptr %i.add, align 8, !tbaa !6006 ; 2 uses
  %.pre183.i.i = load i32, ptr %i.ade, align 8, !tbaa !6000 ; 2 uses
  br i1 %.not77.i.i, label %bb.gh, label %bb.gf

bb.gf:                                            ; preds = %blobGrowBuffer.exit94.i.i
  %i.aeq = sext i32 %.pre183.i.i to i64
  %i.aer = getelementptr inbounds i8, ptr %.pre182.i.i, i64 %i.aeq ; 2 uses
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gg, %bb.gf
  %.08.i95.i.i = phi ptr [ %i.aer, %bb.gf ], [ %i.aeu, %bb.gg ] ; 3 uses
  %.0.i96.i.i = phi i64 [ %i.acr, %bb.gf ], [ %i.aev, %bb.gg ] ; 2 uses
  %i.aes = trunc i64 %.0.i96.i.i to i8            ; 2 uses
  %i.aet = or i8 %i.aes, -128
  %i.aeu = getelementptr inbounds nuw i8, ptr %.08.i95.i.i, i64 1 ; 2 uses
  store i8 %i.aet, ptr %.08.i95.i.i, align 1, !tbaa !227
  %i.aev = lshr i64 %.0.i96.i.i, 7                ; 2 uses
  %.not.i97.i.i = icmp eq i64 %i.aev, 0
  br i1 %.not.i97.i.i, label %sqlite3Fts3PutVarint.exit98.i.i, label %bb.gg, !llvm.loop !5443

sqlite3Fts3PutVarint.exit98.i.i:                  ; preds = %bb.gg
  store i8 %i.aes, ptr %.08.i95.i.i, align 1, !tbaa !227
  %i.aew = ptrtoint ptr %i.aeu to i64
  %i.aex = ptrtoint ptr %i.aer to i64
  %i.aey = sub i64 %i.aew, %i.aex
  %i.aez = trunc i64 %i.aey to i32
  %i.afa = load i32, ptr %i.ade, align 8, !tbaa !6000
  %i.afb = add nsw i32 %i.afa, %i.aez             ; 2 uses
  store i32 %i.afb, ptr %i.ade, align 8, !tbaa !6000
  %.pre181.i.i = load ptr, ptr %i.add, align 8, !tbaa !6006
  br label %bb.gh

bb.gh:                                            ; preds = %sqlite3Fts3PutVarint.exit98.i.i, %blobGrowBuffer.exit94.i.i
  %i.afc = phi i32 [ %i.afb, %sqlite3Fts3PutVarint.exit98.i.i ], [ %.pre183.i.i, %blobGrowBuffer.exit94.i.i ]
  %i.afd = phi ptr [ %.pre181.i.i, %sqlite3Fts3PutVarint.exit98.i.i ], [ %.pre182.i.i, %blobGrowBuffer.exit94.i.i ]
  %i.afe = sext i32 %i.afc to i64
  %i.aff = getelementptr inbounds i8, ptr %i.afd, i64 %i.afe ; 2 uses
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gi, %bb.gh
  %.08.i99.i.i = phi ptr [ %i.aff, %bb.gh ], [ %i.afi, %bb.gi ] ; 3 uses
  %.0.i100.i.i = phi i64 [ %i.acu, %bb.gh ], [ %i.afj, %bb.gi ] ; 2 uses
  %i.afg = trunc i64 %.0.i100.i.i to i8           ; 2 uses
  %i.afh = or i8 %i.afg, -128
  %i.afi = getelementptr inbounds nuw i8, ptr %.08.i99.i.i, i64 1 ; 2 uses
  store i8 %i.afh, ptr %.08.i99.i.i, align 1, !tbaa !227
  %i.afj = lshr i64 %.0.i100.i.i, 7               ; 2 uses
  %.not.i101.i.i = icmp eq i64 %i.afj, 0
  br i1 %.not.i101.i.i, label %sqlite3Fts3PutVarint.exit102.i.i, label %bb.gi, !llvm.loop !5443

sqlite3Fts3PutVarint.exit102.i.i:                 ; preds = %bb.gi
  store i8 %i.afg, ptr %.08.i99.i.i, align 1, !tbaa !227
  %i.afk = ptrtoint ptr %i.afi to i64
  %i.afl = ptrtoint ptr %i.aff to i64
  %i.afm = sub i64 %i.afk, %i.afl
  %i.afn = trunc i64 %i.afm to i32
  %i.afo = load i32, ptr %i.ade, align 8, !tbaa !6000
  %i.afp = add nsw i32 %i.afo, %i.afn             ; 2 uses
  store i32 %i.afp, ptr %i.ade, align 8, !tbaa !6000
  %i.afq = load ptr, ptr %i.add, align 8, !tbaa !6006
  %i.afr = sext i32 %i.afp to i64
  %i.afs = getelementptr inbounds i8, ptr %i.afq, i64 %i.afr
  %i.aft = getelementptr inbounds i8, ptr %i.aam, i64 %i.acr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afs, ptr readonly align 1 %i.aft, i64 %i.acu, i1 false)
  %i.afu = load i32, ptr %i.ade, align 8, !tbaa !6000
  %i.afv = add nsw i32 %i.afu, %i.acp
  store i32 %i.afv, ptr %i.ade, align 8, !tbaa !6000
  %i.afw = load ptr, ptr %i.adc, align 8, !tbaa !6057
  %i.afx = sext i32 %i.acc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afw, ptr readonly align 1 %i.aam, i64 %i.afx, i1 false)
  store i32 %i.acc, ptr %i.ach, align 8, !tbaa !6058
  br label %fts3IncrmergePush.exit.i

bb.gj:                                            ; preds = %bb.fu
  %i.afy = getelementptr inbounds nuw i8, ptr %i.ace, i64 24 ; 3 uses
  %i.afz = load i64, ptr %i.ace, align 8, !tbaa !6049
  %i.aga = load ptr, ptr %i.afy, align 8, !tbaa !6053
  %i.agb = call fastcc i32 @fts3WriteSegment(ptr noundef nonnull %0, i64 noundef %i.afz, ptr noundef %i.aga, i32 noundef %.pre.i.i), !inline_history !6066 ; 2 uses
  %i.agc = trunc i64 %indvars.iv.i71.i to i8
  %i.agd = load ptr, ptr %i.afy, align 8, !tbaa !6053
  store i8 %i.agc, ptr %i.agd, align 1, !tbaa !227
  %i.age = load ptr, ptr %i.afy, align 8, !tbaa !6053
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 1 ; 2 uses
  %i.agg = add nsw i64 %.072156.i.i, 1
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gk, %bb.gj
  %.08.i103.i.i = phi ptr [ %i.agf, %bb.gj ], [ %i.agj, %bb.gk ] ; 3 uses
  %.0.i104.i.i = phi i64 [ %i.agg, %bb.gj ], [ %i.agk, %bb.gk ] ; 2 uses
  %i.agh = trunc i64 %.0.i104.i.i to i8           ; 2 uses
  %i.agi = or i8 %i.agh, -128
  %i.agj = getelementptr inbounds nuw i8, ptr %.08.i103.i.i, i64 1 ; 2 uses
  store i8 %i.agi, ptr %.08.i103.i.i, align 1, !tbaa !227
  %i.agk = lshr i64 %.0.i104.i.i, 7               ; 2 uses
  %.not.i105.i.i = icmp eq i64 %i.agk, 0
  br i1 %.not.i105.i.i, label %bb.gl, label %bb.gk, !llvm.loop !5443

bb.gl:                                            ; preds = %bb.gk
  store i8 %i.agh, ptr %.08.i103.i.i, align 1, !tbaa !227
  %i.agl = ptrtoint ptr %i.agj to i64
  %i.agm = ptrtoint ptr %i.agf to i64
  %i.agn = sub i64 %i.agl, %i.agm
  %i.ago = trunc i64 %i.agn to i32
  %i.agp = add nsw i32 %i.ago, 1
  store i32 %i.agp, ptr %.phi.trans.insert.i.i, align 8, !tbaa !6055
  %i.agq = load i64, ptr %i.ace, align 8, !tbaa !6049 ; 3 uses
  %i.agr = add nsw i64 %i.agq, 1
  store i64 %i.agr, ptr %i.ace, align 8, !tbaa !6049
  store i32 0, ptr %i.ach, align 8, !tbaa !6058
  %i.ags = icmp eq i32 %i.agb, 0
  %i.agt = icmp ne i64 %i.agq, 0
  %or.cond.not.i.i = select i1 %i.ags, i1 %i.agt, i1 false
  br i1 %or.cond.not.i.i, label %bb.gm, label %fts3IncrmergePush.exit.i

bb.gm:                                            ; preds = %bb.gl
  %indvars.iv.next.i73.i = add nuw nsw i64 %indvars.iv.i71.i, 1 ; 2 uses
  %exitcond.not.i74.i = icmp eq i64 %indvars.iv.next.i73.i, 16
  br i1 %exitcond.not.i74.i, label %fts3IncrmergePush.exit.i, label %bb.fp, !llvm.loop !6067

fts3IncrmergePush.exit.i:                         ; preds = %bb.gm, %bb.gl, %fts3PrefixCompress.exit.i.i, %sqlite3Fts3PutVarint.exit102.i.i, %sqlite3_realloc64.exit.i92.i.i, %bb.gd, %sqlite3_realloc64.exit.i87.i.i, %bb.gb, %sqlite3_realloc64.exit.i.i.i, %bb.fw, %bb.fn
  %.087.i = phi i32 [ %i.aby, %bb.fn ], [ 7, %sqlite3_realloc64.exit.i87.i.i ], [ 7, %sqlite3_realloc64.exit.i.i.i ], [ 7, %bb.fw ], [ 0, %sqlite3Fts3PutVarint.exit102.i.i ], [ 7, %bb.gd ], [ 7, %sqlite3_realloc64.exit.i92.i.i ], [ 7, %bb.gb ], [ 267, %fts3PrefixCompress.exit.i.i ], [ 0, %bb.gm ], [ %i.agb, %bb.gl ] ; 2 uses
  %i.agu = load i64, ptr %i.bj, align 8, !tbaa !6049
  %i.agv = add nsw i64 %i.agu, 1
  store i64 %i.agv, ptr %i.bj, align 8, !tbaa !6049
  store i32 0, ptr %i.cr, align 8, !tbaa !6058
  store i32 0, ptr %i.ct, align 8, !tbaa !6055
  %i.agw = sext i32 %i.aan to i64
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gn, %fts3IncrmergePush.exit.i
  %.04.i75.i = phi i64 [ %i.agw, %fts3IncrmergePush.exit.i ], [ %i.agy, %bb.gn ]
  %.0.i76.i = phi i32 [ 0, %fts3IncrmergePush.exit.i ], [ %i.agx, %bb.gn ]
  %i.agx = add nuw nsw i32 %.0.i76.i, 1           ; 2 uses
  %i.agy = lshr i64 %.04.i75.i, 7                 ; 2 uses
  %.not.i77.i = icmp eq i64 %i.agy, 0
  br i1 %.not.i77.i, label %sqlite3Fts3VarintLen.exit78.i, label %bb.gn, !llvm.loop !5441

sqlite3Fts3VarintLen.exit78.i:                    ; preds = %bb.gn, %sqlite3Fts3VarintLen.exit78.i
  %.04.i79.i = phi i64 [ %i.aha, %sqlite3Fts3VarintLen.exit78.i ], [ %i.abg, %bb.gn ]
  %.0.i80.i = phi i32 [ %i.agz, %sqlite3Fts3VarintLen.exit78.i ], [ 0, %bb.gn ]
  %i.agz = add nuw nsw i32 %.0.i80.i, 1           ; 2 uses
  %i.aha = lshr i64 %.04.i79.i, 7                 ; 2 uses
  %.not.i81.i = icmp eq i64 %i.aha, 0
  br i1 %.not.i81.i, label %bb.go, label %sqlite3Fts3VarintLen.exit78.i, !llvm.loop !5441

.thread.i180:                                     ; preds = %sqlite3Fts3VarintLen.exit70.i, %bb.fm, %bb.fl
  %i.ahb = sext i32 %i.abm to i64
  %i.ahc = load i64, ptr %i.cb, align 8, !tbaa !6023
  %i.ahd = add nsw i64 %i.ahc, %i.ahb
  store i64 %i.ahd, ptr %i.cb, align 8, !tbaa !6023
  br label %bb.gp

bb.go:                                            ; preds = %sqlite3Fts3VarintLen.exit78.i
  %i.ahe = add i32 %i.aan, 1
  %i.ahf = add i32 %i.ahe, %i.aap
  %i.ahg = add i32 %i.ahf, %i.agx
  %i.ahh = add i32 %i.ahg, %i.agz                 ; 2 uses
  %i.ahi = sext i32 %i.ahh to i64
  %i.ahj = load i64, ptr %i.cb, align 8, !tbaa !6023
  %i.ahk = add nsw i64 %i.ahj, %i.ahi
  store i64 %i.ahk, ptr %i.cb, align 8, !tbaa !6023
  %i.ahl = icmp eq i32 %.087.i, 0
  br i1 %i.ahl, label %bb.gp, label %.sink.split

bb.gp:                                            ; preds = %bb.go, %.thread.i180
  %i.ahm = phi i32 [ %i.abp, %.thread.i180 ], [ %i.ahh, %bb.go ] ; 3 uses
  %i.ahn = phi i32 [ %i.abn, %.thread.i180 ], [ 0, %bb.go ]
  %i.aho = load i32, ptr %i.cv, align 4, !tbaa !6005
  %i.ahp = icmp sgt i32 %i.ahm, %i.aho
  br i1 %i.ahp, label %bb.gq, label %blobGrowBuffer.exit.i181

bb.gq:                                            ; preds = %bb.gp
  %i.ahq = load ptr, ptr %i.cs, align 8, !tbaa !6006
  %i.ahr = call i32 @sqlite3_initialize(), !inline_history !6068
  %.not.i.i83.i = icmp eq i32 %i.ahr, 0
  br i1 %.not.i.i83.i, label %sqlite3_realloc64.exit.i.i183, label %.sink.split

sqlite3_realloc64.exit.i.i183:                    ; preds = %bb.gq
  %i.ahs = sext i32 %i.ahm to i64
  %i.aht = call fastcc ptr @sqlite3Realloc(ptr noundef %i.ahq, i64 noundef %i.ahs), !inline_history !6068 ; 2 uses
  %.not.i84.i = icmp eq ptr %i.aht, null
  br i1 %.not.i84.i, label %.sink.split, label %bb.gr

bb.gr:                                            ; preds = %sqlite3_realloc64.exit.i.i183
  store i32 %i.ahm, ptr %i.cv, align 4, !tbaa !6005
  store ptr %i.aht, ptr %i.cs, align 8, !tbaa !6006
  %.pre.i184 = load i32, ptr %i.ct, align 8, !tbaa !6055
  br label %blobGrowBuffer.exit.i181

blobGrowBuffer.exit.i181:                         ; preds = %bb.gr, %bb.gp
  %i.ahu = phi i32 [ %.pre.i184, %bb.gr ], [ %i.ahn, %bb.gp ]
  %i.ahv = icmp eq i32 %i.ahu, 0
  br i1 %i.ahv, label %bb.gs, label %fts3IncrmergeAppend.exit

bb.gs:                                            ; preds = %blobGrowBuffer.exit.i181
  store i32 1, ptr %i.ct, align 8, !tbaa !6055
  %i.ahw = load ptr, ptr %i.cs, align 8, !tbaa !6053
  store i8 0, ptr %i.ahw, align 1, !tbaa !227
  br label %fts3IncrmergeAppend.exit

fts3IncrmergeAppend.exit:                         ; preds = %blobGrowBuffer.exit.i181, %bb.gs
  %i.ahx = call fastcc i32 @fts3AppendToNode(ptr noundef %i.cs, ptr noundef %i.cq, ptr noundef %i.aam, i32 noundef %i.aan, ptr noundef %i.aao, i32 noundef %i.aap), !inline_history !6063 ; 3 uses
  store i32 %i.ahx, ptr %i.n, align 4, !tbaa !5
  %i.ahy = icmp eq i32 %i.ahx, 0
  br i1 %i.ahy, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %fts3IncrmergeAppend.exit
  %i.ahz = call fastcc i32 @sqlite3Fts3SegReaderStep(ptr noundef %0, ptr noundef nonnull %i.u)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.go, %sqlite3_realloc64.exit.i.i183, %bb.gq, %fts3PrefixCompress.exit.i, %bb.gt
  %.0.i182.ph.sink = phi i32 [ %i.ahz, %bb.gt ], [ %.087.i, %bb.go ], [ 7, %sqlite3_realloc64.exit.i.i183 ], [ 7, %bb.gq ], [ 267, %fts3PrefixCompress.exit.i ] ; 2 uses
  store i32 %.0.i182.ph.sink, ptr %i.n, align 4, !tbaa !5
  br label %bb.gu

bb.gu:                                            ; preds = %.sink.split, %fts3IncrmergeAppend.exit
  %i.aia = phi i32 [ %i.ahx, %fts3IncrmergeAppend.exit ], [ %.0.i182.ph.sink, %.sink.split ] ; 3 uses
  %i.aib = load i64, ptr %i.cu, align 8, !tbaa !6064 ; 2 uses
  %i.aic = icmp sge i64 %i.aib, %i.aal
  %i.aid = icmp eq i32 %i.aia, 100                ; 2 uses
  %or.cond8 = select i1 %i.aic, i1 %i.aid, i1 false
  br i1 %or.cond8, label %.thread253, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  br i1 %i.aid, label %bb.ff, label %.loopexit, !llvm.loop !6069

.loopexit:                                        ; preds = %bb.gv
  %i.aie = icmp eq i32 %i.aia, 0
  br i1 %i.aie, label %.loopexit._crit_edge, label %bb.gw

.loopexit._crit_edge:                             ; preds = %bb.fe, %.loopexit
  %.pre416 = load i64, ptr %i.cu, align 8, !tbaa !6064
  br label %.thread253

.thread253:                                       ; preds = %bb.gu, %.loopexit._crit_edge
  %i.aif = phi i64 [ %.pre416, %.loopexit._crit_edge ], [ %i.aib, %bb.gu ]
  %i.aig = trunc i64 %i.aif to i32
  %i.aih = xor i32 %i.aig, -1
  %i.aii = add i32 %.090354, %i.aih               ; 2 uses
  %i.aij = call fastcc i32 @fts3IncrmergeChomp(ptr noundef %0, i64 noundef %.395, ptr noundef %i.u, ptr noundef %i.o) ; 2 uses
  store i32 %i.aij, ptr %i.n, align 4, !tbaa !5
  %i.aik = load i32, ptr %i.o, align 4, !tbaa !5  ; 2 uses
  %.not119 = icmp eq i32 %i.aik, 0
  br i1 %.not119, label %.thread256, label %.thread263

.thread263:                                       ; preds = %.thread253
  call fastcc void @fts3IncrmergeHintPush(ptr noundef %5, i64 noundef %.395, i32 noundef %i.aik, ptr noundef %i.n)
  %.pr271.pre.pre = load i32, ptr %i.n, align 4, !tbaa !5
  br label %bb.gx

bb.gw:                                            ; preds = %.loopexit, %bb.fd, %bb.fc
  %.pr271.pre421 = phi i32 [ %i.aia, %.loopexit ], [ 0, %bb.fd ], [ %storemerge116, %bb.fc ] ; 2 uses
  %.pr255 = load i32, ptr %i.o, align 4, !tbaa !5
  %.not120 = icmp eq i32 %.pr255, 0
  br i1 %.not120, label %.thread256, label %bb.gx

bb.gx:                                            ; preds = %.thread263, %bb.gw
  %.pr271.pre = phi i32 [ %.pr271.pre.pre, %.thread263 ], [ %.pr271.pre421, %bb.gw ]
  %.1268 = phi i32 [ %i.aii, %.thread263 ], [ %.090354, %bb.gw ]
  %.3101267 = phi i32 [ 1, %.thread263 ], [ %.2100, %bb.gw ]
  %i.ail = load i64, ptr %i.cb, align 8, !tbaa !6023
  %i.aim = sub nsw i64 0, %i.ail
  store i64 %i.aim, ptr %i.cb, align 8, !tbaa !6023
  br label %.thread256

.thread256:                                       ; preds = %bb.gx, %bb.gw, %.thread253
  %i.ain = phi i32 [ %i.aij, %.thread253 ], [ %.pr271.pre421, %bb.gw ], [ %.pr271.pre, %bb.gx ] ; 5 uses
  %.not120262 = phi i1 [ true, %.thread253 ], [ true, %bb.gw ], [ false, %bb.gx ]
  %.1261 = phi i32 [ %i.aii, %.thread253 ], [ %.090354, %bb.gw ], [ %.1268, %bb.gx ] ; 3 uses
  %.3101260 = phi i32 [ %.2100, %.thread253 ], [ %.2100, %bb.gw ], [ %.3101267, %bb.gx ] ; 3 uses
  br label %bb.gy

bb.gy:                                            ; preds = %bb.hk, %.thread256
  %.04486.i = phi i32 [ 15, %.thread256 ], [ %i.akb, %bb.hk ] ; 5 uses
  %i.aio = zext nneg i32 %.04486.i to i64         ; 2 uses
  %i.aip = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.aio ; 5 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 32
  %i.air = load i32, ptr %i.aiq, align 8, !tbaa !6055
  %i.ais = icmp sgt i32 %i.air, 0
  br i1 %i.ais, label %sqlite3_free.exit51.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aip, i64 24
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !6053 ; 4 uses
  %i.aiv = icmp eq ptr %i.aiu, null
  br i1 %i.aiv, label %sqlite3_free.exit.i195, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.aiw = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i191 = icmp eq i32 %i.aiw, 0
  br i1 %.not.i.i191, label %bb.he, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aix = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i192 = icmp eq ptr %i.aix, null
  br i1 %.not.i.i.i192, label %sqlite3_mutex_enter.exit.i.i193, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.aiy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.aiy(ptr noundef nonnull %i.aix) #71, !inline_history !6070
  br label %sqlite3_mutex_enter.exit.i.i193

sqlite3_mutex_enter.exit.i.i193:                  ; preds = %bb.hc, %bb.hb
  %i.aiz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.aja = call i32 %i.aiz(ptr noundef nonnull %i.aiu) #71, !inline_history !6071
  %i.ajb = sext i32 %i.aja to i64
  %i.ajc = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ajd = sub nsw i64 %i.ajc, %i.ajb
  store i64 %i.ajd, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.aje = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ajf = add nsw i64 %i.aje, -1
  store i64 %i.ajf, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ajg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.ajg(ptr noundef nonnull %i.aiu) #71, !inline_history !6072
  %i.ajh = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i194 = icmp eq ptr %i.ajh, null
  br i1 %.not.i4.i.i194, label %sqlite3_free.exit.i195, label %bb.hd

bb.hd:                                            ; preds = %sqlite3_mutex_enter.exit.i.i193
  %i.aji = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.aji(ptr noundef nonnull %i.ajh) #71, !inline_history !6073
  br label %sqlite3_free.exit.i195

bb.he:                                            ; preds = %bb.ha
  %i.ajj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.ajj(ptr noundef nonnull %i.aiu) #71, !inline_history !6072
  br label %sqlite3_free.exit.i195

sqlite3_free.exit.i195:                           ; preds = %bb.he, %bb.hd, %sqlite3_mutex_enter.exit.i.i193, %bb.gz
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aip, i64 8
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !6057 ; 4 uses
  %i.ajm = icmp eq ptr %i.ajl, null
  br i1 %i.ajm, label %bb.hk, label %bb.hf

bb.hf:                                            ; preds = %sqlite3_free.exit.i195
  %i.ajn = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i47.i = icmp eq i32 %i.ajn, 0
  br i1 %.not.i47.i, label %bb.hj, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.ajo = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i48.i = icmp eq ptr %i.ajo, null
  br i1 %.not.i.i48.i, label %sqlite3_mutex_enter.exit.i49.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.ajp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.ajp(ptr noundef nonnull %i.ajo) #71, !inline_history !6070
  br label %sqlite3_mutex_enter.exit.i49.i

sqlite3_mutex_enter.exit.i49.i:                   ; preds = %bb.hh, %bb.hg
  %i.ajq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.ajr = call i32 %i.ajq(ptr noundef nonnull %i.ajl) #71, !inline_history !6071
  %i.ajs = sext i32 %i.ajr to i64
  %i.ajt = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.aju = sub nsw i64 %i.ajt, %i.ajs
  store i64 %i.aju, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ajv = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ajw = add nsw i64 %i.ajv, -1
  store i64 %i.ajw, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ajx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.ajx(ptr noundef nonnull %i.ajl) #71, !inline_history !6072
  %i.ajy = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i50.i = icmp eq ptr %i.ajy, null
  br i1 %.not.i4.i50.i, label %bb.hk, label %bb.hi

bb.hi:                                            ; preds = %sqlite3_mutex_enter.exit.i49.i
  %i.ajz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.ajz(ptr noundef nonnull %i.ajy) #71, !inline_history !6073
  br label %bb.hk

bb.hj:                                            ; preds = %bb.hf
  %i.aka = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.aka(ptr noundef nonnull %i.ajl) #71, !inline_history !6072
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi, %sqlite3_mutex_enter.exit.i49.i, %sqlite3_free.exit.i195
  %i.akb = add nsw i32 %.04486.i, -1
  %.not.i196 = icmp eq i32 %.04486.i, 0
  br i1 %.not.i196, label %fts3IncrmergeRelease.exit, label %bb.gy, !llvm.loop !6074

sqlite3_free.exit51.i:                            ; preds = %bb.gy
  %i.akc = icmp eq i32 %.04486.i, 0
  br i1 %i.akc, label %bb.hl, label %blobGrowBuffer.exit.thread.i

bb.hl:                                            ; preds = %sqlite3_free.exit51.i
  %i.akd = icmp eq i32 %i.ain, 0
  br i1 %i.akd, label %bb.hm, label %.lr.ph.preheader.i

bb.hm:                                            ; preds = %bb.hl
  %i.ake = load i32, ptr %i.cx, align 4, !tbaa !6005
  %i.akf = icmp slt i32 %i.ake, 11
  %.pre.i204 = load ptr, ptr %i.cw, align 8, !tbaa !6006 ; 2 uses
  br i1 %i.akf, label %bb.hn, label %blobGrowBuffer.exit.i205

bb.hn:                                            ; preds = %bb.hm
  %i.akg = call i32 @sqlite3_initialize(), !inline_history !6075
  %.not.i.i52.i = icmp eq i32 %i.akg, 0
  br i1 %.not.i.i52.i, label %sqlite3_realloc64.exit.i.i207, label %.lr.ph.preheader.i

sqlite3_realloc64.exit.i.i207:                    ; preds = %bb.hn
  %i.akh = call fastcc ptr @sqlite3Realloc(ptr noundef %.pre.i204, i64 noundef 11), !inline_history !6075 ; 3 uses
  %.not.i53.i = icmp eq ptr %i.akh, null
  br i1 %.not.i53.i, label %.lr.ph.preheader.i, label %bb.ho

bb.ho:                                            ; preds = %sqlite3_realloc64.exit.i.i207
  store i32 11, ptr %i.cx, align 4, !tbaa !6005
  store ptr %i.akh, ptr %i.cw, align 8, !tbaa !6006
  br label %blobGrowBuffer.exit.i205

blobGrowBuffer.exit.i205:                         ; preds = %bb.ho, %bb.hm
  %i.aki = phi ptr [ %i.akh, %bb.ho ], [ %.pre.i204, %bb.hm ]
  store i8 1, ptr %i.aki, align 1, !tbaa !227
  %i.akj = load ptr, ptr %i.cw, align 8, !tbaa !6006
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 1 ; 2 uses
  %i.akl = load i64, ptr %i.bj, align 8, !tbaa !6049
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hp, %blobGrowBuffer.exit.i205
  %.08.i.i = phi ptr [ %i.akk, %blobGrowBuffer.exit.i205 ], [ %i.ako, %bb.hp ] ; 3 uses
  %.0.i.i206 = phi i64 [ %i.akl, %blobGrowBuffer.exit.i205 ], [ %i.akp, %bb.hp ] ; 2 uses
  %i.akm = trunc i64 %.0.i.i206 to i8             ; 2 uses
  %i.akn = or i8 %i.akm, -128
  %i.ako = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1 ; 2 uses
  store i8 %i.akn, ptr %.08.i.i, align 1, !tbaa !227
  %i.akp = lshr i64 %.0.i.i206, 7                 ; 2 uses
  %.not.i54.i = icmp eq i64 %i.akp, 0
  br i1 %.not.i54.i, label %sqlite3Fts3PutVarint.exit.i, label %bb.hp, !llvm.loop !5443

sqlite3Fts3PutVarint.exit.i:                      ; preds = %bb.hp
  store i8 %i.akm, ptr %.08.i.i, align 1, !tbaa !227
  %i.akq = ptrtoint ptr %i.ako to i64
  %i.akr = ptrtoint ptr %i.akk to i64
  %i.aks = sub i64 %i.akq, %i.akr
  %i.akt = trunc i64 %i.aks to i32
  %i.aku = add nsw i32 %i.akt, 1
  store i32 %i.aku, ptr %i.cy, align 8, !tbaa !6000
  br label %.lr.ph.preheader.i

blobGrowBuffer.exit.thread.i:                     ; preds = %sqlite3_free.exit51.i
  %i.akv = icmp sgt i32 %.04486.i, 0
  br i1 %i.akv, label %.lr.ph.preheader.i, label %._crit_edge.i197

.lr.ph.preheader.i:                               ; preds = %bb.hl, %bb.hn, %sqlite3_realloc64.exit.i.i207, %sqlite3Fts3PutVarint.exit.i, %blobGrowBuffer.exit.thread.i
  %i.akw = phi ptr [ %i.aip, %blobGrowBuffer.exit.thread.i ], [ %i.bk, %sqlite3Fts3PutVarint.exit.i ], [ %i.bk, %sqlite3_realloc64.exit.i.i207 ], [ %i.bk, %bb.hn ], [ %i.bk, %bb.hl ]
  %i.akx = phi i64 [ %i.aio, %blobGrowBuffer.exit.thread.i ], [ 1, %sqlite3Fts3PutVarint.exit.i ], [ 1, %sqlite3_realloc64.exit.i.i207 ], [ 1, %bb.hn ], [ 1, %bb.hl ]
  %.079114.i = phi i32 [ %i.ain, %blobGrowBuffer.exit.thread.i ], [ 0, %sqlite3Fts3PutVarint.exit.i ], [ 7, %sqlite3_realloc64.exit.i.i207 ], [ 7, %bb.hn ], [ %i.ain, %bb.hl ]
  br label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %sqlite3_free.exit64.i, %.lr.ph.preheader.i
  %indvars.iv.i201 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i203, %sqlite3_free.exit64.i ] ; 2 uses
  %.18087.i = phi i32 [ %.079114.i, %.lr.ph.preheader.i ], [ %.2.i, %sqlite3_free.exit64.i ] ; 2 uses
  %i.aky = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %indvars.iv.i201 ; 4 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 24 ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.aky, i64 32
  %i.alb = load i32, ptr %i.ala, align 8, !tbaa !6055 ; 2 uses
  %i.alc = icmp sgt i32 %i.alb, 0
  %i.ald = icmp eq i32 %.18087.i, 0
  %or.cond.i202 = select i1 %i.alc, i1 %i.ald, i1 false
  br i1 %or.cond.i202, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %.lr.ph.i200
  %i.ale = load i64, ptr %i.aky, align 8, !tbaa !6049
  %i.alf = load ptr, ptr %i.akz, align 8, !tbaa !6053
  %i.alg = call fastcc i32 @fts3WriteSegment(ptr noundef %0, i64 noundef %i.ale, ptr noundef %i.alf, i32 noundef %i.alb), !inline_history !6076
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %.lr.ph.i200
  %.2.i = phi i32 [ %i.alg, %bb.hq ], [ %.18087.i, %.lr.ph.i200 ] ; 2 uses
  %i.alh = load ptr, ptr %i.akz, align 8, !tbaa !6053 ; 4 uses
  %i.ali = icmp eq ptr %i.alh, null
  br i1 %i.ali, label %sqlite3_free.exit59.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.alj = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i55.i = icmp eq i32 %i.alj, 0
  br i1 %.not.i55.i, label %bb.hw, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.alk = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i56.i = icmp eq ptr %i.alk, null
  br i1 %.not.i.i56.i, label %sqlite3_mutex_enter.exit.i57.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.all = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.all(ptr noundef nonnull %i.alk) #71, !inline_history !6070
  br label %sqlite3_mutex_enter.exit.i57.i

sqlite3_mutex_enter.exit.i57.i:                   ; preds = %bb.hu, %bb.ht
  %i.alm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.aln = call i32 %i.alm(ptr noundef nonnull %i.alh) #71, !inline_history !6071
  %i.alo = sext i32 %i.aln to i64
  %i.alp = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.alq = sub nsw i64 %i.alp, %i.alo
  store i64 %i.alq, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.alr = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.als = add nsw i64 %i.alr, -1
  store i64 %i.als, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.alt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.alt(ptr noundef nonnull %i.alh) #71, !inline_history !6072
  %i.alu = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i58.i = icmp eq ptr %i.alu, null
  br i1 %.not.i4.i58.i, label %sqlite3_free.exit59.i, label %bb.hv

bb.hv:                                            ; preds = %sqlite3_mutex_enter.exit.i57.i
  %i.alv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.alv(ptr noundef nonnull %i.alu) #71, !inline_history !6073
  br label %sqlite3_free.exit59.i

bb.hw:                                            ; preds = %bb.hs
  %i.alw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.alw(ptr noundef nonnull %i.alh) #71, !inline_history !6072
  br label %sqlite3_free.exit59.i

sqlite3_free.exit59.i:                            ; preds = %bb.hw, %bb.hv, %sqlite3_mutex_enter.exit.i57.i, %bb.hr
  %i.alx = getelementptr inbounds nuw i8, ptr %i.aky, i64 8
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !6057 ; 4 uses
  %i.alz = icmp eq ptr %i.aly, null
  br i1 %i.alz, label %sqlite3_free.exit64.i, label %bb.hx

bb.hx:                                            ; preds = %sqlite3_free.exit59.i
  %i.ama = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i60.i = icmp eq i32 %i.ama, 0
  br i1 %.not.i60.i, label %bb.ib, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.amb = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i61.i = icmp eq ptr %i.amb, null
  br i1 %.not.i.i61.i, label %sqlite3_mutex_enter.exit.i62.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.amc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.amc(ptr noundef nonnull %i.amb) #71, !inline_history !6070
  br label %sqlite3_mutex_enter.exit.i62.i

sqlite3_mutex_enter.exit.i62.i:                   ; preds = %bb.hz, %bb.hy
  %i.amd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.ame = call i32 %i.amd(ptr noundef nonnull %i.aly) #71, !inline_history !6071
  %i.amf = sext i32 %i.ame to i64
  %i.amg = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.amh = sub nsw i64 %i.amg, %i.amf
  store i64 %i.amh, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ami = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.amj = add nsw i64 %i.ami, -1
  store i64 %i.amj, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.amk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.amk(ptr noundef nonnull %i.aly) #71, !inline_history !6072
  %i.aml = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i63.i = icmp eq ptr %i.aml, null
  br i1 %.not.i4.i63.i, label %sqlite3_free.exit64.i, label %bb.ia

bb.ia:                                            ; preds = %sqlite3_mutex_enter.exit.i62.i
  %i.amm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.amm(ptr noundef nonnull %i.aml) #71, !inline_history !6073
  br label %sqlite3_free.exit64.i

bb.ib:                                            ; preds = %bb.hx
  %i.amn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.amn(ptr noundef nonnull %i.aly) #71, !inline_history !6072
  br label %sqlite3_free.exit64.i

sqlite3_free.exit64.i:                            ; preds = %bb.ib, %bb.ia, %sqlite3_mutex_enter.exit.i62.i, %sqlite3_free.exit59.i
  %indvars.iv.next.i203 = add nuw nsw i64 %indvars.iv.i201, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i203, %i.akx
  br i1 %exitcond.not.i, label %._crit_edge.i197, label %.lr.ph.i200, !llvm.loop !6077

._crit_edge.i197:                                 ; preds = %sqlite3_free.exit64.i, %blobGrowBuffer.exit.thread.i
  %i.amo = phi ptr [ %i.aip, %blobGrowBuffer.exit.thread.i ], [ %i.akw, %sqlite3_free.exit64.i ] ; 4 uses
  %.180.lcssa.i = phi i32 [ %i.ain, %blobGrowBuffer.exit.thread.i ], [ %.2.i, %sqlite3_free.exit64.i ] ; 2 uses
  %i.amp = icmp eq i32 %.180.lcssa.i, 0
  br i1 %i.amp, label %bb.ic, label %bb.if

bb.ic:                                            ; preds = %._crit_edge.i197
  %i.amq = load i64, ptr %i.bh, align 8, !tbaa !6047
  %i.amr = add nsw i64 %i.amq, 1
  %i.ams = load i32, ptr %i.bi, align 8, !tbaa !6048
  %i.amt = load i64, ptr %i.bf, align 8, !tbaa !6045
  %i.amu = load i64, ptr %i.bj, align 8, !tbaa !6049
  %i.amv = load i64, ptr %i.bg, align 8, !tbaa !6046
  %i.amw = load i8, ptr %i.cc, align 8, !tbaa !6025
  %i.amx = icmp eq i8 %i.amw, 0
  br i1 %i.amx, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.amy = load i64, ptr %i.cb, align 8, !tbaa !6023
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %i.amz = phi i64 [ %i.amy, %bb.id ], [ 0, %bb.ic ]
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amo, i64 24
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !6053
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amo, i64 32
  %i.and = load i32, ptr %i.anc, align 8, !tbaa !6055
  %i.ane = call fastcc i32 @fts3WriteSegdir(ptr noundef %0, i64 noundef %i.amr, i32 noundef %i.ams, i64 noundef %i.amt, i64 noundef %i.amu, i64 noundef %i.amv, i64 noundef %i.amz, ptr noundef %i.anb, i32 noundef %i.and), !inline_history !6076
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %._crit_edge.i197
  %.3.i198 = phi i32 [ %i.ane, %bb.ie ], [ %.180.lcssa.i, %._crit_edge.i197 ] ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amo, i64 24
  %i.ang = load ptr, ptr %i.anf, align 8, !tbaa !6053 ; 4 uses
  %i.anh = icmp eq ptr %i.ang, null
  br i1 %i.anh, label %sqlite3_free.exit69.i, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.ani = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i65.i199 = icmp eq i32 %i.ani, 0
  br i1 %.not.i65.i199, label %bb.ik, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.anj = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i66.i = icmp eq ptr %i.anj, null
  br i1 %.not.i.i66.i, label %sqlite3_mutex_enter.exit.i67.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.ank = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.ank(ptr noundef nonnull %i.anj) #71, !inline_history !6070
  br label %sqlite3_mutex_enter.exit.i67.i

sqlite3_mutex_enter.exit.i67.i:                   ; preds = %bb.ii, %bb.ih
  %i.anl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.anm = call i32 %i.anl(ptr noundef nonnull %i.ang) #71, !inline_history !6071
  %i.ann = sext i32 %i.anm to i64
  %i.ano = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.anp = sub nsw i64 %i.ano, %i.ann
  store i64 %i.anp, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.anq = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.anr = add nsw i64 %i.anq, -1
  store i64 %i.anr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ans = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.ans(ptr noundef nonnull %i.ang) #71, !inline_history !6072
  %i.ant = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i68.i = icmp eq ptr %i.ant, null
  br i1 %.not.i4.i68.i, label %sqlite3_free.exit69.i, label %bb.ij

bb.ij:                                            ; preds = %sqlite3_mutex_enter.exit.i67.i
  %i.anu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.anu(ptr noundef nonnull %i.ant) #71, !inline_history !6073
  br label %sqlite3_free.exit69.i

bb.ik:                                            ; preds = %bb.ig
  %i.anv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.anv(ptr noundef nonnull %i.ang) #71, !inline_history !6072
  br label %sqlite3_free.exit69.i

sqlite3_free.exit69.i:                            ; preds = %bb.ik, %bb.ij, %sqlite3_mutex_enter.exit.i67.i, %bb.if
  %i.anw = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !6057 ; 4 uses
  %i.any = icmp eq ptr %i.anx, null
  br i1 %i.any, label %sqlite3_free.exit74.i, label %bb.il

bb.il:                                            ; preds = %sqlite3_free.exit69.i
  %i.anz = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i70.i = icmp eq i32 %i.anz, 0
  br i1 %.not.i70.i, label %bb.ip, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.aoa = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i71.i = icmp eq ptr %i.aoa, null
  br i1 %.not.i.i71.i, label %sqlite3_mutex_enter.exit.i72.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.aob = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.aob(ptr noundef nonnull %i.aoa) #71, !inline_history !6070
  br label %sqlite3_mutex_enter.exit.i72.i

sqlite3_mutex_enter.exit.i72.i:                   ; preds = %bb.in, %bb.im
  %i.aoc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.aod = call i32 %i.aoc(ptr noundef nonnull %i.anx) #71, !inline_history !6071
  %i.aoe = sext i32 %i.aod to i64
  %i.aof = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.aog = sub nsw i64 %i.aof, %i.aoe
  store i64 %i.aog, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.aoh = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.aoi = add nsw i64 %i.aoh, -1
  store i64 %i.aoi, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.aoj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.aoj(ptr noundef nonnull %i.anx) #71, !inline_history !6072
  %i.aok = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i73.i = icmp eq ptr %i.aok, null
  br i1 %.not.i4.i73.i, label %sqlite3_free.exit74.i, label %bb.io

bb.io:                                            ; preds = %sqlite3_mutex_enter.exit.i72.i
  %i.aol = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.aol(ptr noundef nonnull %i.aok) #71, !inline_history !6073
  br label %sqlite3_free.exit74.i

bb.ip:                                            ; preds = %bb.il
  %i.aom = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.aom(ptr noundef nonnull %i.anx) #71, !inline_history !6072
  br label %sqlite3_free.exit74.i

sqlite3_free.exit74.i:                            ; preds = %bb.ip, %bb.io, %sqlite3_mutex_enter.exit.i72.i, %sqlite3_free.exit69.i
  store i32 %.3.i198, ptr %i.n, align 4, !tbaa !5
  br label %fts3IncrmergeRelease.exit

fts3IncrmergeRelease.exit:                        ; preds = %bb.hk, %sqlite3_free.exit74.i
  %i.aon = phi i32 [ %.3.i198, %sqlite3_free.exit74.i ], [ %i.ain, %bb.hk ] ; 3 uses
  br i1 %.not120262, label %bb.iq, label %.thread273

bb.iq:                                            ; preds = %fts3IncrmergeRelease.exit
  %i.aoo = load i8, ptr %i.cc, align 8, !tbaa !6025
  %i.aop = icmp eq i8 %i.aoo, 0
  br i1 %i.aop, label %bb.ir, label %.thread273

bb.ir:                                            ; preds = %bb.iq
  %i.aoq = add nuw nsw i64 %.395, 1
  %i.aor = load i64, ptr %i.cb, align 8, !tbaa !6023
  %i.aos = call fastcc i32 @fts3PromoteSegments(ptr noundef %0, i64 noundef %i.aoq, i64 noundef %i.aor) ; 0 uses
  br label %.thread273

bb.is:                                            ; preds = %bb.bx
  call fastcc void @sqlite3Fts3SegReaderFinish(ptr noundef nonnull %i.u)
  br label %.thread279

.thread279:                                       ; preds = %bb.ae, %bb.af, %bb.is
  %i.aot = phi i32 [ %i.mj, %bb.is ], [ 267, %bb.af ], [ %i.gk, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #71
  br label %.loopexit284

.thread273:                                       ; preds = %bb.ag, %fts3SegmentIsMaxLevel.exit.thread, %bb.bg, %thread-pre-split.thread555, %fts3IncrmergeRelease.exit, %bb.iq, %bb.ir, %thread-pre-split, %bb.bv, %bb.bw
  %i.aou = phi i32 [ %i.mb, %thread-pre-split ], [ %i.mh, %bb.bw ], [ 0, %bb.bv ], [ %i.aon, %bb.ir ], [ %i.aon, %bb.iq ], [ %i.aon, %fts3IncrmergeRelease.exit ], [ %.3.i.ph, %thread-pre-split.thread555 ], [ %i.gk, %bb.ag ], [ %i.hl, %fts3SegmentIsMaxLevel.exit.thread ], [ %i.jy, %bb.bg ] ; 2 uses
  %.5 = phi i32 [ %.2100, %thread-pre-split ], [ %.2100, %bb.bw ], [ %.2100, %bb.bv ], [ %.3101260, %bb.ir ], [ %.3101260, %bb.iq ], [ %.3101260, %fts3IncrmergeRelease.exit ], [ %.2100, %thread-pre-split.thread555 ], [ %.2100, %bb.ag ], [ %.2100, %fts3SegmentIsMaxLevel.exit.thread ], [ %.2100, %bb.bg ] ; 2 uses
  %.3 = phi i32 [ %.090354, %thread-pre-split ], [ %.090354, %bb.bw ], [ %.090354, %bb.bv ], [ %.1261, %bb.ir ], [ %.1261, %bb.iq ], [ %.1261, %fts3IncrmergeRelease.exit ], [ %.090354, %thread-pre-split.thread555 ], [ %.090354, %bb.ag ], [ %.090354, %fts3SegmentIsMaxLevel.exit.thread ], [ %.090354, %bb.bg ] ; 2 uses
  call fastcc void @sqlite3Fts3SegReaderFinish(ptr noundef nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #71
  %i.aov = icmp eq i32 %i.aou, 0
  %i.aow = icmp sgt i32 %.3, 0
  %i.aox = select i1 %i.aov, i1 %i.aow, i1 false
  br i1 %i.aox, label %bb.m, label %.loopexit284

.loopexit284:                                     ; preds = %.thread273, %.thread279
  %i.aoy = phi i32 [ %i.aot, %.thread279 ], [ %i.aou, %.thread273 ] ; 2 uses
  %.7 = phi i32 [ %.2100, %.thread279 ], [ %.5, %.thread273 ]
  %i.aoz = icmp ne i32 %.7, 0
  %i.apa = icmp eq i32 %i.aoy, 0
  %or.cond10 = select i1 %i.aoz, i1 %i.apa, i1 false
  br i1 %or.cond10, label %bb.it, label %.loopexit284.thread

bb.it:                                            ; preds = %.loopexit284
  %.val = load ptr, ptr %5, align 8               ; 2 uses
  %.val125 = load i32, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #71
  store ptr null, ptr %i.a, align 8, !tbaa !511
  %i.apb = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 23, ptr noundef %i.a, ptr noundef null), !inline_history !6078 ; 2 uses
  %i.apc = icmp eq i32 %i.apb, 0
  br i1 %i.apc, label %bb.iu, label %fts3IncrmergeHintStore.exit

bb.iu:                                            ; preds = %bb.it
  %i.apd = load ptr, ptr %i.a, align 8, !tbaa !511 ; 12 uses
  %i.ape = call fastcc i32 @vdbeUnbind(ptr noundef %i.apd, i32 noundef 0), !inline_history !6078
  %i.apf = icmp eq i32 %i.ape, 0
  br i1 %i.apf, label %bb.iv, label %sqlite3_bind_int.exit.i209

bb.iv:                                            ; preds = %bb.iu
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apd, i64 128
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !171 ; 3 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 20 ; 2 uses
  %i.apj = load i16, ptr %i.api, align 4, !tbaa !162
  %i.apk = and i16 %i.apj, -28672
  %.not.i.i.i.i212 = icmp eq i16 %i.apk, 0
  br i1 %.not.i.i.i.i212, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.aph, i64 noundef 1), !inline_history !6078
  br label %sqlite3VdbeMemSetInt64.exit.i.i.i213

bb.ix:                                            ; preds = %bb.iv
  store i64 1, ptr %i.aph, align 8, !tbaa !227
  store i16 4, ptr %i.api, align 4, !tbaa !162
  br label %sqlite3VdbeMemSetInt64.exit.i.i.i213

sqlite3VdbeMemSetInt64.exit.i.i.i213:             ; preds = %bb.ix, %bb.iw
  %i.apl = load ptr, ptr %i.apd, align 8, !tbaa !146
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 24
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !23 ; 2 uses
  %.not.i8.i.i.i214 = icmp eq ptr %i.apn, null
  br i1 %.not.i8.i.i.i214, label %sqlite3_bind_int.exit.i209, label %bb.iy

bb.iy:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i.i213
  %i.apo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.apo(ptr noundef nonnull %i.apn) #71, !inline_history !6079
  br label %sqlite3_bind_int.exit.i209

sqlite3_bind_int.exit.i209:                       ; preds = %bb.iy, %sqlite3VdbeMemSetInt64.exit.i.i.i213, %bb.iu
  %i.app = sext i32 %.val125 to i64
  %i.apq = call fastcc i32 @vdbeUnbind(ptr noundef %i.apd, i32 noundef 1), !inline_history !6078
  %i.apr = icmp eq i32 %i.apq, 0
  br i1 %i.apr, label %bb.iz, label %bindText.exit.i

bb.iz:                                            ; preds = %sqlite3_bind_int.exit.i209
  %.not.i.i211 = icmp eq ptr %.val, null
  br i1 %.not.i.i211, label %sqlite3VdbeChangeEncoding.exit.thread.i.i, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apd, i64 128
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !171 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 56
  %i.apv = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef nonnull %i.apu, ptr noundef nonnull %.val, i64 noundef %i.app, i8 noundef zeroext 0, ptr noundef null), !inline_history !6078 ; 4 uses
  %i.apw = load ptr, ptr %i.apd, align 8, !tbaa !146 ; 3 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 100
end_hunk_5
begin_hunk_6_@fts3SnippetFunc:bb.a
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %.split.i, label %.split274.us.thread.i

.split274.us.thread.i:                            ; preds = %bb.ba
  %i.et = mul nuw nsw i64 %indvar.i, 24
  %i.eu = add nuw nsw i64 %i.et, 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %5, i8 0, i64 %i.eu, i1 false)
  br label %.preheader.i

.split.i:                                         ; preds = %bb.ba, %._crit_edge.i
  %i.ev = phi i32 [ %i.vc, %._crit_edge.i ], [ %i.er, %bb.ba ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %bb.ba ] ; 2 uses
  %.056272.i = phi i64 [ %i.vb, %._crit_edge.i ], [ 0, %bb.ba ] ; 4 uses
  %.0148270.i = phi i64 [ %.1149.lcssa.i, %._crit_edge.i ], [ 0, %bb.ba ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %indvars.iv.i ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, i8 0, i64 24, i1 false)
  %i.ex = icmp sgt i32 %i.ev, 0
  br i1 %i.ex, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ec, %.lr.ph.i
  %.0266.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ux, %bb.ec ] ; 5 uses
  %.055265.i = phi i32 [ -1, %.lr.ph.i ], [ %.2.ph.i, %bb.ec ] ; 3 uses
  %.1149264.i = phi i64 [ %.0148270.i, %.lr.ph.i ], [ %.2150.ph.i, %bb.ec ] ; 5 uses
  %.not71.i = icmp eq i32 %.0266.i, %.3287785
  %or.cond74.i = or i1 %i.eg, %.not71.i
  br i1 %or.cond74.i, label %bb.bc, label %bb.ec

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #71
  store i64 0, ptr %i.ei, align 8
  store ptr %i.dy, ptr %3, align 8, !tbaa !6119
  %i.ey = load ptr, ptr %i.ec, align 8, !tbaa !5546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #71
  store i32 0, ptr %i.n, align 4, !tbaa !5
  %i.ez = call fastcc i32 @fts3ExprIterate2(ptr noundef %i.ey, ptr noundef %i.n, ptr noundef nonnull @fts3ExprLoadDoclistsCb, ptr noundef nonnull %3), !inline_history !6121 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #71
  %i.fa = load i32, ptr %i.ei, align 8, !tbaa !6122 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #71
  %.not.i.i57 = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i57, label %bb.bd, label %fts3BestSnippet.exit.thread.i

bb.bd:                                            ; preds = %bb.bc
  %i.fb = sext i32 %i.fa to i64
  %i.fc = mul nsw i64 %i.fb, 48                   ; 6 uses
  %i.fd = call i32 @sqlite3_initialize(), !inline_history !6123
  %.not.i.i.i.i = icmp ne i32 %i.fd, 0
  %i.fe = add nsw i64 %i.fc, -2147483392
  %or.cond.i89.i = icmp ult i64 %i.fe, -2147483391
  %or.cond205.i = select i1 %.not.i.i.i.i, i1 true, i1 %or.cond.i89.i
  br i1 %or.cond205.i, label %fts3BestSnippet.exit.thread.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ff = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i90.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i90.i, label %bb.bs, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fg = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i91.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i91.i, label %sqlite3_mutex_enter.exit.i92.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.fh(ptr noundef nonnull %i.fg) #71, !inline_history !6124
  br label %sqlite3_mutex_enter.exit.i92.i

sqlite3_mutex_enter.exit.i92.i:                   ; preds = %bb.bg, %bb.bf
  %i.fi = trunc nuw nsw i64 %i.fc to i32
  %i.fj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 64), align 8, !tbaa !102
  %i.fk = call i32 %i.fj(i32 noundef range(i32 1, 2147483392) %i.fi) #71, !inline_history !6125 ; 2 uses
  %i.fl = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 120), align 8, !tbaa !18
  %i.fm = icmp slt i64 %i.fl, %i.fc
  br i1 %i.fm, label %bb.bh, label %sqlite3StatusHighwater.exit.i.i.i

bb.bh:                                            ; preds = %sqlite3_mutex_enter.exit.i92.i
  store i64 %i.fc, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 120), align 8, !tbaa !18
  br label %sqlite3StatusHighwater.exit.i.i.i

sqlite3StatusHighwater.exit.i.i.i:                ; preds = %bb.bh, %sqlite3_mutex_enter.exit.i92.i
  %i.fn = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 8), align 8, !tbaa !256 ; 2 uses
  %i.fo = icmp sgt i64 %i.fn, 0
  br i1 %i.fo, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %sqlite3StatusHighwater.exit.i.i.i
  %i.fp = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.fq = sext i32 %i.fk to i64                   ; 2 uses
  %i.fr = sub nsw i64 %i.fn, %i.fq
  %.not.i5.i.i = icmp slt i64 %i.fp, %i.fr
  br i1 %.not.i5.i.i, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store atomic i32 1, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 24) monotonic, align 8
  %i.fs = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i.i94.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i94.i, label %sqlite3MallocAlarm.exit.i.i.i, label %sqlite3_mutex_leave.exit.i.i.i.i

sqlite3_mutex_leave.exit.i.i.i.i:                 ; preds = %bb.bj
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.ft(ptr noundef nonnull %i.fs) #71, !inline_history !6126
  %.pr.i.i.i.i = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i1.i.i.i.i, label %sqlite3MallocAlarm.exit.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %sqlite3_mutex_leave.exit.i.i.i.i
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.fu(ptr noundef nonnull %.pr.i.i.i.i) #71, !inline_history !6127
  br label %sqlite3MallocAlarm.exit.i.i.i

sqlite3MallocAlarm.exit.i.i.i:                    ; preds = %bb.bk, %sqlite3_mutex_leave.exit.i.i.i.i, %bb.bj
  %i.fv = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 16), align 8, !tbaa !257 ; 2 uses
  %.not17.i.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not17.i.i.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %sqlite3MallocAlarm.exit.i.i.i
  %i.fw = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.fx = sub nsw i64 %i.fv, %i.fq
  %.not18.i.i.i = icmp slt i64 %i.fw, %i.fx
  br i1 %.not18.i.i.i, label %bb.bn, label %mallocWithAlarm.exit.i.i

bb.bm:                                            ; preds = %bb.bi
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 24) monotonic, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %sqlite3MallocAlarm.exit.i.i.i, %sqlite3StatusHighwater.exit.i.i.i
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 32), align 8, !tbaa !212
  %i.fz = call ptr %i.fy(i32 noundef %i.fk) #71, !inline_history !6125 ; 4 uses
  %.not19.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not19.i.i.i, label %mallocWithAlarm.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.gb = call i32 %i.ga(ptr noundef nonnull %i.fz) #71, !inline_history !6128
  %i.gc = sext i32 %i.gb to i64
  %i.gd = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ge = add nsw i64 %i.gd, %i.gc                ; 3 uses
  store i64 %i.ge, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.gf = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 80), align 8, !tbaa !18
  %i.gg = icmp sgt i64 %i.ge, %i.gf
  br i1 %i.gg, label %bb.bp, label %sqlite3StatusUp.exit.i.i.i

bb.bp:                                            ; preds = %bb.bo
  store i64 %i.ge, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 80), align 8, !tbaa !18
  br label %sqlite3StatusUp.exit.i.i.i

sqlite3StatusUp.exit.i.i.i:                       ; preds = %bb.bp, %bb.bo
  %i.gh = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18 ; 2 uses
  %i.gi = add nsw i64 %i.gh, 1                    ; 2 uses
  store i64 %i.gi, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.gj = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 152), align 8, !tbaa !18
  %.not21.i.i.i = icmp slt i64 %i.gh, %i.gj
  br i1 %.not21.i.i.i, label %mallocWithAlarm.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %sqlite3StatusUp.exit.i.i.i
  store i64 %i.gi, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 152), align 8, !tbaa !18
  br label %mallocWithAlarm.exit.i.i

mallocWithAlarm.exit.i.i:                         ; preds = %bb.bq, %sqlite3StatusUp.exit.i.i.i, %bb.bn, %bb.bl
  %storemerge.i.i.i = phi ptr [ null, %bb.bl ], [ %i.fz, %bb.bq ], [ %i.fz, %sqlite3StatusUp.exit.i.i.i ], [ null, %bb.bn ] ; 2 uses
  %i.gk = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i6.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i6.i.i, label %sqlite3Malloc.exit.i, label %bb.br

bb.br:                                            ; preds = %mallocWithAlarm.exit.i.i
  %i.gl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.gl(ptr noundef nonnull %i.gk) #71, !inline_history !6129
  br label %sqlite3Malloc.exit.i

bb.bs:                                            ; preds = %bb.be
  %i.gm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 32), align 8, !tbaa !212
  %i.gn = trunc nuw nsw i64 %i.fc to i32
  %i.go = call ptr %i.gm(i32 noundef %i.gn) #71, !inline_history !6130
  br label %sqlite3Malloc.exit.i

sqlite3Malloc.exit.i:                             ; preds = %bb.bs, %bb.br, %mallocWithAlarm.exit.i.i
  %.0.i93.i = phi ptr [ %storemerge.i.i.i, %bb.br ], [ %i.go, %bb.bs ], [ %storemerge.i.i.i, %mallocWithAlarm.exit.i.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.0.i93.i, null
  br i1 %.not.i.i.i, label %fts3BestSnippet.exit.thread.i, label %bb.bt

bb.bt:                                            ; preds = %sqlite3Malloc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i93.i, i8 0, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.fc, i1 false)
  store ptr %.0.i93.i, ptr %i.ej, align 8, !tbaa !6131
  store ptr %i.dy, ptr %4, align 8, !tbaa !6134
  store i32 %.0266.i, ptr %i.ek, align 8, !tbaa !6135
  store i32 %.062.i, ptr %i.el, align 4, !tbaa !6136
  store i32 %i.fa, ptr %i.eh, align 8, !tbaa !6137
  store i32 -1, ptr %i.em, align 8, !tbaa !6138
  %i.gp = load ptr, ptr %i.ec, align 8, !tbaa !5546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #71
  store i32 0, ptr %i.m, align 4, !tbaa !5
  %i.gq = call fastcc i32 @fts3ExprIterate2(ptr noundef %i.gp, ptr noundef %i.m, ptr noundef nonnull @fts3SnippetFindPositions, ptr noundef nonnull %4), !inline_history !6121 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #71
  %i.gr = icmp eq i32 %i.gq, 0                    ; 2 uses
  %.pre60.i.i = load ptr, ptr %i.ej, align 8, !tbaa !6131 ; 15 uses
  br i1 %i.gr, label %.preheader.i.i, label %fts3SnippetNextCandidate.exit.i.i

.preheader.i.i:                                   ; preds = %bb.bt
  %i.gs = icmp sgt i32 %i.fa, 0
  br i1 %i.gs, label %.lr.ph.i.i58, label %._crit_edge.i.i

.lr.ph.i.i58:                                     ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.fa to i64 ; 3 uses
  %min.iters.check458 = icmp ult i32 %i.fa, 5
  br i1 %min.iters.check458, label %scalar.ph457.preheader, label %vector.ph459

vector.ph459:                                     ; preds = %.lr.ph.i.i58
  %n.mod.vf460 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %i.gt = icmp eq i64 %n.mod.vf460, 0
  %i.gu = select i1 %i.gt, i64 4, i64 %n.mod.vf460
  %n.vec461 = sub nsw i64 %wide.trip.count.i.i, %i.gu ; 2 uses
  %i.gv = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.1149264.i, i64 0
  br label %vector.body462

vector.body462:                                   ; preds = %vector.body462, %vector.ph459
  %index463 = phi i64 [ 0, %vector.ph459 ], [ %index.next468, %vector.body462 ] ; 5 uses
  %vec.phi464 = phi <2 x i64> [ %i.gv, %vector.ph459 ], [ %i.hu, %vector.body462 ]
  %vec.phi465 = phi <2 x i64> [ zeroinitializer, %vector.ph459 ], [ %i.hv, %vector.body462 ]
  %vec.ind466 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph459 ], [ %vec.ind.next469, %vector.body462 ] ; 3 uses
  %step.add467 = add nuw <2 x i64> %vec.ind466, splat (i64 2)
  %i.gw = getelementptr inbounds nuw [48 x i8], ptr %.pre60.i.i, i64 %index463
  %i.gx = getelementptr inbounds nuw [48 x i8], ptr %.pre60.i.i, i64 %index463
  %i.gy = getelementptr inbounds nuw [48 x i8], ptr %.pre60.i.i, i64 %index463
  %i.gz = getelementptr inbounds nuw [48 x i8], ptr %.pre60.i.i, i64 %index463
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 72
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 120
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 168
  %i.he = load ptr, ptr %i.ha, align 8, !tbaa !6139
  %i.hf = load ptr, ptr %i.hb, align 8, !tbaa !6139
  %i.hg = insertelement <2 x ptr> poison, ptr %i.he, i64 0
  %i.hh = insertelement <2 x ptr> %i.hg, ptr %i.hf, i64 1
  %i.hi = load ptr, ptr %i.hc, align 8, !tbaa !6139
  %i.hj = load ptr, ptr %i.hd, align 8, !tbaa !6139
  %i.hk = insertelement <2 x ptr> poison, ptr %i.hi, i64 0
  %i.hl = insertelement <2 x ptr> %i.hk, ptr %i.hj, i64 1
  %i.hm = icmp eq <2 x ptr> %i.hh, splat (ptr null)
  %i.hn = icmp eq <2 x ptr> %i.hl, splat (ptr null)
  %i.ho = and <2 x i64> %vec.ind466, splat (i64 63)
  %i.hp = and <2 x i64> %step.add467, splat (i64 63)
  %i.hq = shl nuw <2 x i64> splat (i64 1), %i.ho
  %i.hr = shl nuw <2 x i64> splat (i64 1), %i.hp
  %i.hs = select <2 x i1> %i.hm, <2 x i64> zeroinitializer, <2 x i64> %i.hq
  %i.ht = select <2 x i1> %i.hn, <2 x i64> zeroinitializer, <2 x i64> %i.hr
  %i.hu = or <2 x i64> %i.hs, %vec.phi464         ; 2 uses
  %i.hv = or <2 x i64> %i.ht, %vec.phi465         ; 2 uses
  %index.next468 = add nuw i64 %index463, 4       ; 2 uses
  %vec.ind.next469 = add nuw <2 x i64> %vec.ind466, splat (i64 4)
  %i.hw = icmp eq i64 %index.next468, %n.vec461
  br i1 %i.hw, label %middle.block470, label %vector.body462, !llvm.loop !6141

middle.block470:                                  ; preds = %vector.body462
  %bin.rdx471 = or <2 x i64> %i.hv, %i.hu
  %i.hx = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx471)
  br label %scalar.ph457.preheader

scalar.ph457.preheader:                           ; preds = %.lr.ph.i.i58, %middle.block470
  %.6154.i.ph = phi i64 [ %.1149264.i, %.lr.ph.i.i58 ], [ %i.hx, %middle.block470 ]
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i58 ], [ %n.vec461, %middle.block470 ]
  br label %scalar.ph457

scalar.ph457:                                     ; preds = %scalar.ph457.preheader, %scalar.ph457
  %.6154.i = phi i64 [ %.7155.i, %scalar.ph457 ], [ %.6154.i.ph, %scalar.ph457.preheader ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph457 ], [ %indvars.iv.i.i.ph, %scalar.ph457.preheader ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [48 x i8], ptr %.pre60.i.i, i64 %indvars.iv.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !6139
  %.not29.i.i = icmp eq ptr %i.ia, null
  %i.ib = and i64 %indvars.iv.i.i, 63
  %i.ic = shl nuw i64 1, %i.ib
  %i.id = select i1 %.not29.i.i, i64 0, i64 %i.ic
  %.7155.i = or i64 %i.id, %.6154.i               ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph457, !llvm.loop !6142

._crit_edge.i.i:                                  ; preds = %scalar.ph457, %.preheader.i.i
  %.5153.i = phi i64 [ %.1149264.i, %.preheader.i.i ], [ %.7155.i, %scalar.ph457 ] ; 2 uses
  %.promoted.i.i = load i32, ptr %i.em, align 8, !tbaa !6138
  %i.ie = load i32, ptr %i.eh, align 8            ; 4 uses
  %i.if = icmp sgt i32 %i.ie, 0                   ; 3 uses
  %wide.trip.count.i.i.i = zext i32 %i.ie to i64  ; 5 uses
  %i.ig = load i32, ptr %i.el, align 4
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.ih = icmp eq i32 %i.ie, 1
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod551 = trunc i32 %i.ie to i1
  %invariant.op = sub i32 1, %i.ig
  br label %.outer

.outer:                                           ; preds = %bb.dv, %._crit_edge.i.i
  %.sroa.5.1.i.ph = phi i32 [ %i.uf, %bb.dv ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.6.1.i.ph = phi i64 [ %.040.lcssa.i.i.i, %bb.dv ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.7.1.i.ph = phi i64 [ %.044.lcssa.i.i.i, %bb.dv ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.ph = phi i32 [ %i.uf, %bb.dv ], [ %.promoted.i.i, %._crit_edge.i.i ]
  %.024.i.i.ph = phi i32 [ %.037.lcssa.i.i.i, %bb.dv ], [ -1, %._crit_edge.i.i ] ; 3 uses
  br label %bb.bu

bb.bu:                                            ; preds = %.outer, %fts3SnippetDetails.exit.i.i
  %i.ii = phi i32 [ %i.uf, %fts3SnippetDetails.exit.i.i ], [ %.ph, %.outer ]
  %i.ij = icmp slt i32 %i.ii, 0
  br i1 %i.ij, label %bb.bv, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bu
  br i1 %i.if, label %.lr.ph.i.i.i.preheader, label %fts3SnippetNextCandidate.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader.i.i.i
  br i1 %i.ih, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.em, align 8, !tbaa !6138
  br i1 %i.if, label %.lr.ph73.i.i.i, label %fts3SnippetDetails.exit.i.i

.lr.ph73.i.i.i:                                   ; preds = %bb.bv
  %i.ik = load i32, ptr %i.el, align 4
  %i.il = sext i32 %i.ik to i64                   ; 2 uses
  br label %bb.bw

bb.bw:                                            ; preds = %fts3SnippetAdvance.exit.i.i.i, %.lr.ph73.i.i.i
  %indvars.iv81.i.i.i = phi i64 [ 0, %.lr.ph73.i.i.i ], [ %indvars.iv.next82.i.i.i, %fts3SnippetAdvance.exit.i.i.i ] ; 2 uses
  %i.im = getelementptr inbounds nuw [48 x i8], ptr %.pre60.i.i, i64 %indvars.iv81.i.i.i ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 2 uses
  %i.ip = load ptr, ptr %i.in, align 8, !tbaa !251 ; 3 uses
  %.not.i.i31.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i31.i.i, label %fts3SnippetAdvance.exit.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !18 ; 3 uses
  %i.ir = icmp slt i64 %i.iq, %i.il
  br i1 %i.ir, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bx, %fts3GetDeltaPosition.exit.i.i.i.i
  %.011.i.i.i.i = phi i64 [ %i.kc, %fts3GetDeltaPosition.exit.i.i.i.i ], [ %i.iq, %bb.bx ]
  %.0810.i.i.i.i = phi ptr [ %i.jz, %fts3GetDeltaPosition.exit.i.i.i.i ], [ %i.ip, %bb.bx ] ; 6 uses
  %i.is = load i8, ptr %.0810.i.i.i.i, align 1, !tbaa !227 ; 4 uses
  %i.it = icmp ult i8 %i.is, 2
  br i1 %i.it, label %._crit_edge.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i = icmp sgt i8 %i.is, -1
  br i1 %.not.i.i.i.i.i, label %bb.cd, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.iu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 1
  %i.iv = and i8 %i.is, 127
  %i.iw = zext nneg i8 %i.iv to i32
  %i.ix = load i8, ptr %i.iu, align 1, !tbaa !227 ; 2 uses
  %i.iy = zext i8 %i.ix to i32
  %i.iz = shl nuw nsw i32 %i.iy, 7
  %i.ja = or disjoint i32 %i.iz, %i.iw            ; 2 uses
  %i.jb = icmp sgt i8 %i.ix, -1
  br i1 %i.jb, label %fts3GetDeltaPosition.exit.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 2
  %i.jd = and i32 %i.ja, 16383
  %i.je = load i8, ptr %i.jc, align 1, !tbaa !227 ; 2 uses
  %i.jf = zext i8 %i.je to i32
  %i.jg = shl nuw nsw i32 %i.jf, 14
  %i.jh = or disjoint i32 %i.jg, %i.jd            ; 2 uses
  %i.ji = icmp sgt i8 %i.je, -1
  br i1 %i.ji, label %fts3GetDeltaPosition.exit.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 3
  %i.jk = and i32 %i.jh, 2097151
  %i.jl = load i8, ptr %i.jj, align 1, !tbaa !227 ; 2 uses
  %i.jm = zext i8 %i.jl to i32
  %i.jn = shl nuw nsw i32 %i.jm, 21
  %i.jo = or disjoint i32 %i.jn, %i.jk            ; 2 uses
  %i.jp = icmp sgt i8 %i.jl, -1
  br i1 %i.jp, label %fts3GetDeltaPosition.exit.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4
  %i.jr = and i32 %i.jo, 268435455
  %i.js = load i8, ptr %i.jq, align 1, !tbaa !227
  %i.jt = and i8 %i.js, 7
  %i.ju = zext nneg i8 %i.jt to i32
  %i.jv = shl nuw nsw i32 %i.ju, 28
  %i.jw = or disjoint i32 %i.jv, %i.jr
  br label %fts3GetDeltaPosition.exit.i.i.i.i

bb.cd:                                            ; preds = %bb.by
  %i.jx = zext nneg i8 %i.is to i32
  br label %fts3GetDeltaPosition.exit.i.i.i.i

fts3GetDeltaPosition.exit.i.i.i.i:                ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz
  %.0.i.i.i.i.i = phi i32 [ %i.jx, %bb.cd ], [ %i.jw, %bb.cc ], [ %i.jh, %bb.ca ], [ %i.ja, %bb.bz ], [ %i.jo, %bb.cb ]
  %i.jy = phi i64 [ 1, %bb.cd ], [ 5, %bb.cc ], [ 3, %bb.ca ], [ 2, %bb.bz ], [ 4, %bb.cb ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 %i.jy ; 2 uses
  %i.ka = add nsw i32 %.0.i.i.i.i.i, -2
  %i.kb = sext i32 %i.ka to i64
end_hunk_6
begin_hunk_7_@fts5IndexTombstoneAddToPage:bb.a
  %i.ag = trunc nuw nsw i64 %i.af to i32          ; 2 uses
  %i.ah = icmp ugt i64 %3, 4294967295
  %or.cond = and i1 %i.ah, %i.c
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = icmp eq i64 %3, 0
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 1, ptr %i.aj, align 1, !tbaa !227
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.ak = icmp ne i32 %1, 0
  %i.al = lshr i32 %i.j, 1
  %.not = icmp slt i32 %i.ab, %i.al
  %or.cond50 = select i1 %i.ak, i1 true, i1 %.not
  br i1 %or.cond50, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.am = add nsw i32 %i.ab, 1                    ; 4 uses
  %i.an = lshr i32 %i.am, 24
  %i.ao = trunc nuw i32 %i.an to i8
  store i8 %i.ao, ptr %i.k, align 1, !tbaa !227
  %i.ap = lshr i32 %i.am, 16
  %i.aq = trunc i32 %i.ap to i8
  store i8 %i.aq, ptr %i.o, align 1, !tbaa !227
  %i.ar = lshr i32 %i.am, 8
  %i.as = trunc i32 %i.ar to i8
  store i8 %i.as, ptr %i.t, align 1, !tbaa !227
  %i.at = trunc i32 %i.am to i8
  store i8 %i.at, ptr %i.y, align 1, !tbaa !227
  %i.au = load ptr, ptr %0, align 8, !tbaa !6920
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  br i1 %i.c, label %.preheader, label %.preheader67

.preheader:                                       ; preds = %bb.e, %bb.f
  %.045 = phi i32 [ %i.bb, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %.041 = phi i32 [ %i.ba, %bb.f ], [ %i.ag, %bb.e ] ; 2 uses
  %i.aw = zext nneg i32 %.041 to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !5
  %.not49 = icmp eq i32 %i.ay, 0
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.az = add nuw nsw i32 %.041, 1
  %i.ba = urem i32 %i.az, %i.j
  %i.bb = add nsw i32 %.045, -1
  %i.bc = icmp eq i32 %.045, 0
  br i1 %i.bc, label %.loopexit, label %.preheader, !llvm.loop !7693

bb.g:                                             ; preds = %.preheader
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aw ; 4 uses
  %i.be = lshr i64 %3, 24
  %i.bf = trunc i64 %i.be to i8
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !227
  %i.bg = lshr i64 %3, 16
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !227
  %i.bj = lshr i64 %3, 8
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !227
  %i.bm = trunc i64 %3 to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !227
  br label %.loopexit

.preheader67:                                     ; preds = %bb.e, %bb.h
  %.146 = phi i32 [ %i.bt, %bb.h ], [ %i.j, %bb.e ] ; 2 uses
  %.142 = phi i32 [ %i.bs, %bb.h ], [ %i.ag, %bb.e ] ; 2 uses
  %i.bo = zext nneg i32 %.142 to i64              ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !18
  %.not48 = icmp eq i64 %i.bq, 0
  br i1 %.not48, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader67
  %i.br = add nuw nsw i32 %.142, 1
  %i.bs = urem i32 %i.br, %i.j
  %i.bt = add nsw i32 %.146, -1
  %i.bu = icmp eq i32 %.146, 0
  br i1 %i.bu, label %.loopexit, label %.preheader67, !llvm.loop !7694

bb.i:                                             ; preds = %.preheader67
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bo ; 8 uses
  %i.bw = lshr i64 %3, 56
  %i.bx = trunc nuw i64 %i.bw to i8
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !227
  %i.by = lshr i64 %3, 48
  %i.bz = trunc i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !227
  %i.cb = lshr i64 %3, 40
  %i.cc = trunc i64 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !227
  %i.ce = lshr i64 %3, 32
  %i.cf = trunc i64 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !227
  %i.ch = lshr i64 %3, 24
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !227
  %i.ck = lshr i64 %3, 16
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bv, i64 5
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !227
  %i.cn = lshr i64 %3, 8
  %i.co = trunc i64 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bv, i64 6
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !227
  %i.cq = trunc i64 %3 to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bv, i64 7
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !227
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.i, %bb.g, %bb.d, %bb.a, %bb.c
  %.2 = phi i32 [ 0, %bb.g ], [ 0, %bb.c ], [ 2, %bb.a ], [ 1, %bb.d ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.h ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fts5IndexTombstoneRebuild(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(address) %2, i32 noundef range(i32 -1, 2147483647) %3, i32 noundef range(i32 4, 9) %4, ptr noundef nonnull writeonly captures(none) %5, ptr noundef nonnull writeonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !6431
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.c = load i32, ptr %i.b, align 4, !tbaa !6483
  %i.d = add nsw i32 %i.c, -8
  %i.e = sdiv i32 %i.d, %4
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.e, i32 32) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !6707 ; 2 uses
  switch i32 %i.g, label %.thread [
    i32 0, label %.thread75
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !6920
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 1
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
  %i.l = shl nsw i32 %i.k, 2                      ; 2 uses
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 32)
  %i.n = icmp sgt i32 %i.l, %spec.select
  br i1 %i.n, label %.thread, label %.thread75

.thread:                                          ; preds = %bb.a, %bb.b
  %i.o = shl nsw i32 %i.g, 1
  %i.p = or disjoint i32 %i.o, 1
  br label %.thread75

.thread75:                                        ; preds = %bb.a, %.thread, %bb.b
  %.257 = phi i32 [ %i.p, %.thread ], [ 1, %bb.b ], [ 1, %bb.a ]
  %.1 = phi i32 [ %spec.select, %.thread ], [ %i.m, %bb.b ], [ 32, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 8 uses
  %i.r = trunc nuw nsw i32 %4 to i8               ; 3 uses
  %i.s = zext i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.av, %.thread75
  %.358 = phi i32 [ %.257, %.thread75 ], [ %i.il, %bb.av ] ; 11 uses
  %.2 = phi i32 [ %.1, %.thread75 ], [ %spec.select, %bb.av ]
  %i.t = sext i32 %.358 to i64                    ; 3 uses
  %i.u = shl nsw i64 %i.t, 3                      ; 2 uses
  %i.v = load i32, ptr %i.q, align 4, !tbaa !5
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %sqlite3Fts5MallocZero.exit

bb.d:                                             ; preds = %bb.c
  %i.x = tail call i32 @sqlite3_initialize(), !inline_history !6573
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %sqlite3_malloc64.exit.i, label %sqlite3_malloc64.exit.thread.i

sqlite3_malloc64.exit.i:                          ; preds = %bb.d
  %i.y = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.u), !inline_history !6573 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %sqlite3_malloc64.exit.thread.i, label %bb.e

sqlite3_malloc64.exit.thread.i:                   ; preds = %sqlite3_malloc64.exit.i, %bb.d
  %i.aa = icmp sgt i32 %.358, 0
  br i1 %i.aa, label %sqlite3Fts5MallocZero.exit.thread, label %._crit_edge.thread136

sqlite3Fts5MallocZero.exit.thread:                ; preds = %sqlite3_malloc64.exit.thread.i
  store i32 7, ptr %i.q, align 4, !tbaa !5
  br label %.lr.ph

bb.e:                                             ; preds = %sqlite3_malloc64.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.u, i1 false)
  br label %sqlite3Fts5MallocZero.exit

sqlite3Fts5MallocZero.exit:                       ; preds = %bb.c, %bb.e
  %.0.i = phi ptr [ null, %bb.c ], [ %i.y, %bb.e ] ; 2 uses
  %i.ab = icmp sgt i32 %.358, 0
  %.pre110 = load i32, ptr %i.q, align 4, !tbaa !6362 ; 2 uses
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sqlite3Fts5MallocZero.exit.thread, %sqlite3Fts5MallocZero.exit
  %.pre110129 = phi i32 [ 7, %sqlite3Fts5MallocZero.exit.thread ], [ %.pre110, %sqlite3Fts5MallocZero.exit ]
  %.0.i128 = phi ptr [ null, %sqlite3Fts5MallocZero.exit.thread ], [ %.0.i, %sqlite3Fts5MallocZero.exit ] ; 3 uses
  %i.ac = mul nsw i32 %.2, %4                     ; 3 uses
  %i.ad = add nuw nsw i32 %i.ac, 8
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = add nuw nsw i64 %i.ae, 24               ; 4 uses
  %or.cond.i = icmp ugt i32 %i.ac, 2147483367
  %i.ag = trunc nuw nsw i64 %i.af to i32          ; 2 uses
  %i.ah = icmp eq i32 %.pre110129, 0
  br i1 %i.ah, label %.lr.ph.split.preheader, label %.critedge.thread

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %.358 to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %sqlite3Fts5MallocZero.exit67.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %sqlite3Fts5MallocZero.exit67.thread ] ; 2 uses
  %i.ai = load i32, ptr %i.q, align 4, !tbaa !5
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %sqlite3Fts5MallocZero.exit67.thread

bb.f:                                             ; preds = %.lr.ph.split
  %i.ak = tail call i32 @sqlite3_initialize(), !inline_history !6573
  %.not.i.i64 = icmp ne i32 %i.ak, 0
  %or.cond = select i1 %.not.i.i64, i1 true, i1 %or.cond.i
  br i1 %or.cond, label %sqlite3_malloc64.exit.thread.i65.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i69 = icmp eq i32 %i.al, 0
  br i1 %.not.i69, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.am, null
  br i1 %.not.i.i70, label %sqlite3_mutex_enter.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.an(ptr noundef nonnull %i.am) #71, !inline_history !7695
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.i, %bb.h
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 64), align 8, !tbaa !102
  %i.ap = tail call i32 %i.ao(i32 noundef range(i32 1, 2147483392) %i.ag) #71, !inline_history !7696 ; 2 uses
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 120), align 8, !tbaa !18
  %i.ar = icmp slt i64 %i.aq, %i.af
  br i1 %i.ar, label %bb.j, label %sqlite3StatusHighwater.exit.i.i

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit.i
  store i64 %i.af, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 120), align 8, !tbaa !18
  br label %sqlite3StatusHighwater.exit.i.i

sqlite3StatusHighwater.exit.i.i:                  ; preds = %bb.j, %sqlite3_mutex_enter.exit.i
  %i.as = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 8), align 8, !tbaa !256 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %bb.k, label %bb.p

bb.k:                                             ; preds = %sqlite3StatusHighwater.exit.i.i
  %i.au = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.av = sext i32 %i.ap to i64                   ; 2 uses
  %i.aw = sub nsw i64 %i.as, %i.av
  %.not.i5.i = icmp slt i64 %i.au, %i.aw
  br i1 %.not.i5.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  store atomic i32 1, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 24) monotonic, align 8
  %i.ax = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i.i72 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i72, label %sqlite3MallocAlarm.exit.i.i, label %sqlite3_mutex_leave.exit.i.i.i

sqlite3_mutex_leave.exit.i.i.i:                   ; preds = %bb.l
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.ay(ptr noundef nonnull %i.ax) #71, !inline_history !7697
  %.pr.i.i.i = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i1.i.i.i, label %sqlite3MallocAlarm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %sqlite3_mutex_leave.exit.i.i.i
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.az(ptr noundef nonnull %.pr.i.i.i) #71, !inline_history !7698
  br label %sqlite3MallocAlarm.exit.i.i

sqlite3MallocAlarm.exit.i.i:                      ; preds = %bb.m, %sqlite3_mutex_leave.exit.i.i.i, %bb.l
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 16), align 8, !tbaa !257 ; 2 uses
  %.not17.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not17.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %sqlite3MallocAlarm.exit.i.i
  %i.bb = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bc = sub nsw i64 %i.ba, %i.av
  %.not18.i.i = icmp slt i64 %i.bb, %i.bc
  br i1 %.not18.i.i, label %bb.p, label %mallocWithAlarm.exit.i

bb.o:                                             ; preds = %bb.k
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 24) monotonic, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %sqlite3MallocAlarm.exit.i.i, %sqlite3StatusHighwater.exit.i.i
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 32), align 8, !tbaa !212
  %i.be = tail call ptr %i.bd(i32 noundef %i.ap) #71, !inline_history !7696 ; 4 uses
  %.not19.i.i = icmp eq ptr %i.be, null
  br i1 %.not19.i.i, label %mallocWithAlarm.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.bg = tail call i32 %i.bf(ptr noundef nonnull %i.be) #71, !inline_history !7699
  %i.bh = sext i32 %i.bg to i64
  %i.bi = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bj = add nsw i64 %i.bi, %i.bh                ; 3 uses
  store i64 %i.bj, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 80), align 8, !tbaa !18
  %i.bl = icmp sgt i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.r, label %sqlite3StatusUp.exit.i.i

bb.r:                                             ; preds = %bb.q
  store i64 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 80), align 8, !tbaa !18
  br label %sqlite3StatusUp.exit.i.i

sqlite3StatusUp.exit.i.i:                         ; preds = %bb.r, %bb.q
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18 ; 2 uses
  %i.bn = add nsw i64 %i.bm, 1                    ; 2 uses
  store i64 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bo = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 152), align 8, !tbaa !18
  %.not21.i.i = icmp slt i64 %i.bm, %i.bo
  br i1 %.not21.i.i, label %mallocWithAlarm.exit.i, label %bb.s

bb.s:                                             ; preds = %sqlite3StatusUp.exit.i.i
  store i64 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 152), align 8, !tbaa !18
  br label %mallocWithAlarm.exit.i

mallocWithAlarm.exit.i:                           ; preds = %bb.s, %sqlite3StatusUp.exit.i.i, %bb.p, %bb.n
  %storemerge.i.i = phi ptr [ null, %bb.n ], [ %i.be, %bb.s ], [ %i.be, %sqlite3StatusUp.exit.i.i ], [ null, %bb.p ] ; 2 uses
  %i.bp = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.bp, null
  br i1 %.not.i6.i, label %sqlite3Malloc.exit, label %bb.t

bb.t:                                             ; preds = %mallocWithAlarm.exit.i
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.bq(ptr noundef nonnull %i.bp) #71, !inline_history !7700
  br label %sqlite3Malloc.exit

bb.u:                                             ; preds = %bb.g
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 32), align 8, !tbaa !212
  %i.bs = tail call ptr %i.br(i32 noundef %i.ag) #71, !inline_history !7701
  br label %sqlite3Malloc.exit

sqlite3Malloc.exit:                               ; preds = %mallocWithAlarm.exit.i, %bb.t, %bb.u
  %.0.i71 = phi ptr [ %storemerge.i.i, %bb.t ], [ %i.bs, %bb.u ], [ %storemerge.i.i, %mallocWithAlarm.exit.i ] ; 6 uses
  %i.bt = icmp eq ptr %.0.i71, null
  br i1 %i.bt, label %sqlite3_malloc64.exit.thread.i65.thread, label %bb.v

sqlite3_malloc64.exit.thread.i65.thread:          ; preds = %bb.f, %sqlite3Malloc.exit
  store i32 7, ptr %i.q, align 4, !tbaa !5
  br label %sqlite3Fts5MallocZero.exit67.thread

bb.v:                                             ; preds = %sqlite3Malloc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i71, i8 0, i64 %i.af, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i71, i64 8
  store i32 %i.ad, ptr %i.bu, align 8, !tbaa !6922
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i71, i64 16
  store ptr %i.bv, ptr %.0.i71, align 8, !tbaa !6920
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.0.i128, i64 %indvars.iv
  store ptr %.0.i71, ptr %i.bw, align 8, !tbaa !6784
  br label %sqlite3Fts5MallocZero.exit67.thread

sqlite3Fts5MallocZero.exit67.thread:              ; preds = %.lr.ph.split, %sqlite3_malloc64.exit.thread.i65.thread, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph.split, !llvm.loop !7702

._crit_edge.loopexit:                             ; preds = %sqlite3Fts5MallocZero.exit67.thread
  %.pre = load i32, ptr %i.q, align 4, !tbaa !6362
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %sqlite3Fts5MallocZero.exit
  %i.bx = phi i1 [ false, %sqlite3Fts5MallocZero.exit ], [ true, %._crit_edge.loopexit ]
  %.0.i127 = phi ptr [ %.0.i, %sqlite3Fts5MallocZero.exit ], [ %.0.i128, %._crit_edge.loopexit ] ; 7 uses
  %i.by = phi i32 [ %.pre110, %sqlite3Fts5MallocZero.exit ], [ %.pre, %._crit_edge.loopexit ]
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.w, label %.critedge.thread

._crit_edge.thread136:                            ; preds = %sqlite3_malloc64.exit.thread.i
  %.pre110132 = load i32, ptr %i.q, align 4, !tbaa !6362
  %i.ca = icmp eq i32 %.pre110132, 0
  br i1 %i.ca, label %.preheader78.i, label %.critedge.thread

bb.w:                                             ; preds = %._crit_edge
  br i1 %i.bx, label %.lr.ph.i, label %.preheader78.i

.lr.ph.i:                                         ; preds = %bb.w
  %wide.trip.count.i = zext nneg i32 %.358 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cb = icmp eq i32 %.358, 1
  br i1 %i.cb, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.x

.preheader78.i.loopexit.unr-lcssa:                ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader78.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader78.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader78.i.loopexit.unr-lcssa ]
  %lcmp.mod161 = trunc i32 %.358 to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.0.i127, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !6784
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !6920
  store i8 %i.r, ptr %i.ce, align 1, !tbaa !227
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !6784
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !6920
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 0, ptr %i.ch, align 1
  br label %.preheader78.i

.preheader78.i:                                   ; preds = %.epil.preheader, %.preheader78.i.loopexit.unr-lcssa, %._crit_edge.thread136, %bb.w
  %.0.i127138141 = phi ptr [ null, %._crit_edge.thread136 ], [ %.0.i127, %bb.w ], [ %.0.i127, %.preheader78.i.loopexit.unr-lcssa ], [ %.0.i127, %.epil.preheader ] ; 5 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.x ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.x ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.0.i127, i64 %indvars.iv.i ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !6784
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !6920
  store i8 %i.r, ptr %i.ck, align 1, !tbaa !227
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !6784
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !6920
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 0, ptr %i.cn, align 1
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.0.i127, i64 %indvars.iv.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !6784
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !6920
  store i8 %i.r, ptr %i.cr, align 1, !tbaa !227
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !6784
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !6920
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  store i32 0, ptr %i.cu, align 1
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader78.i.loopexit.unr-lcssa, label %bb.x, !llvm.loop !7703

bb.y:                                             ; preds = %fts5DataRelease.exit.i, %.preheader78.i
  %indvars.iv102.i = phi i64 [ 0, %.preheader78.i ], [ %indvars.iv.next103.i, %fts5DataRelease.exit.i ] ; 5 uses
  %i.cv = load i32, ptr %i.f, align 8, !tbaa !6707
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv102.i, %i.cw
  br i1 %i.cx, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.cy = icmp eq i64 %indvars.iv102.i, %i.s
  br i1 %i.cy, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = load i32, ptr %1, align 8, !tbaa !6701
  %i.da = add nsw i32 %i.cz, 65536
  %i.db = zext i32 %i.da to i64
  %i.dc = shl i64 %i.db, 37
  %i.dd = add nuw nsw i64 %i.dc, %indvars.iv102.i
  %i.de = tail call fastcc ptr @fts5DataRead(ptr noundef nonnull %0, i64 noundef %i.dd), !inline_history !7704 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.059.i = phi ptr [ %i.de, %bb.aa ], [ null, %bb.z ] ; 4 uses
  %.054.i = phi ptr [ %i.de, %bb.aa ], [ %2, %bb.z ] ; 5 uses
  %.not.i = icmp eq ptr %.054.i, null
  br i1 %.not.i, label %bb.ap, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = load ptr, ptr %.054.i, align 8, !tbaa !6920
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !227
  %i.dh = icmp eq i8 %i.dg, 4                     ; 2 uses
  %i.di = select i1 %i.dh, i32 4, i32 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.054.i, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !6922
  %i.dl = add nsw i32 %i.dk, -8
  %i.dm = sdiv i32 %i.dl, %i.di                   ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph85.preheader.i, label %fts5IndexTombstoneAddToPage.exit.i

.lr.ph85.preheader.i:                             ; preds = %bb.ac
  %wide.trip.count100.i = zext nneg i32 %i.dm to i64
  br label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %.thread.i, %.lr.ph85.preheader.i
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph85.preheader.i ], [ %indvars.iv.next98.i, %.thread.i ] ; 3 uses
  %i.do = load ptr, ptr %.054.i, align 8, !tbaa !6920
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  br i1 %i.dh, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.lr.ph85.i
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv97.i
  %i.dr = load i32, ptr %i.dq, align 4            ; 2 uses
  %.not62.i = icmp eq i32 %i.dr, 0
  br i1 %.not62.i, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %rev.i = tail call i32 @llvm.bswap.i32(i32 %i.dr)
  %i.ds = zext i32 %rev.i to i64
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph85.i
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv97.i
  %i.du = load i64, ptr %i.dt, align 8            ; 2 uses
  %.not61.i = icmp eq i64 %i.du, 0
  br i1 %.not61.i, label %.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dv = tail call i64 @llvm.bswap.i64(i64 %i.du)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.257.i = phi i64 [ %i.dv, %bb.ag ], [ %i.ds, %bb.ae ] ; 15 uses
  %i.dw = urem i64 %.257.i, %i.t
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.0.i127138141, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !6784 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !6920 ; 5 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !227
  %i.eb = icmp eq i8 %i.ea, 4                     ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !6922 ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, 16
  %i.ef = add nsw i32 %i.ed, -8
  %i.eg = select i1 %i.eb, i32 2, i32 3
  %i.eh = lshr i32 %i.ef, %i.eg
  %i.ei = select i1 %i.ee, i32 %i.eh, i32 1       ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !227
  %i.el = zext i8 %i.ek to i32
  %i.em = shl nuw i32 %i.el, 24
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 5 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !227
  %i.ep = zext i8 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 16
  %i.er = or disjoint i32 %i.eq, %i.em
  %i.es = getelementptr inbounds nuw i8, ptr %i.dz, i64 6 ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !227
  %i.eu = zext i8 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 8
  %i.ew = or disjoint i32 %i.er, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dz, i64 7 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !227
  %i.ez = zext i8 %i.ey to i32
  %i.fa = or disjoint i32 %i.ew, %i.ez            ; 2 uses
  %i.fb = udiv i64 %.257.i, %i.t
  %i.fc = zext nneg i32 %i.ei to i64
  %i.fd = urem i64 %i.fb, %i.fc
  %i.fe = trunc nuw nsw i64 %i.fd to i32          ; 2 uses
  %i.ff = icmp ugt i64 %.257.i, 4294967295
  %or.cond.i.i = and i1 %i.ff, %i.eb
  br i1 %or.cond.i.i, label %fts5IndexTombstoneAddToPage.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = lshr i32 %i.ei, 1
  %.not.i.i68 = icmp slt i32 %i.fa, %i.fg
  br i1 %.not.i.i68, label %bb.aj, label %fts5IndexTombstoneAddToPage.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.fh = add nsw i32 %i.fa, 1                    ; 4 uses
  %i.fi = lshr i32 %i.fh, 24
  %i.fj = trunc nuw i32 %i.fi to i8
  store i8 %i.fj, ptr %i.ej, align 1, !tbaa !227
  %i.fk = lshr i32 %i.fh, 16
  %i.fl = trunc i32 %i.fk to i8
  store i8 %i.fl, ptr %i.en, align 1, !tbaa !227
  %i.fm = lshr i32 %i.fh, 8
  %i.fn = trunc i32 %i.fm to i8
  store i8 %i.fn, ptr %i.es, align 1, !tbaa !227
  %i.fo = trunc i32 %i.fh to i8
  store i8 %i.fo, ptr %i.ex, align 1, !tbaa !227
  %i.fp = load ptr, ptr %i.dy, align 8, !tbaa !6920
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 4 uses
  br i1 %i.eb, label %.preheader.i, label %.preheader76.i

.preheader.i:                                     ; preds = %bb.aj, %bb.ak
  %.045.i.i = phi i32 [ %i.fw, %bb.ak ], [ %i.ei, %bb.aj ] ; 2 uses
  %.041.i.i = phi i32 [ %i.fv, %bb.ak ], [ %i.fe, %bb.aj ] ; 2 uses
  %i.fr = zext nneg i32 %.041.i.i to i64          ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fr
end_hunk_7
begin_hunk_8_@llvm.fmuladd.v2f64
!5853 = !{!5851, !15, i64 8}
!5854 = !{!5851, !6, i64 0}
!5855 = distinct !{!5855, !52}
!5856 = distinct !{!5856, !52}
!5857 = distinct !{!5857, !52}
!5858 = distinct !{null, null, ptr @sqlite3_malloc64}
!5859 = distinct !{!5859, !52}
!5860 = distinct !{null, null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!5861 = distinct !{null, null, ptr @sqlite3_free, null}
!5862 = distinct !{null, null, ptr @sqlite3_free}
!5863 = distinct !{null, null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!5864 = distinct !{null}
!5865 = distinct !{null}
!5866 = !{!5521, !5521, i64 0}
!5867 = distinct !{null, null}
!5868 = !{!5673, !5673, i64 0}
!5869 = !{!5412, !15, i64 24}
!5870 = distinct !{null, ptr @fts3PendingListAppendVarint, null, ptr @sqlite3_malloc64}
!5871 = !{!5412, !15, i64 16}
!5872 = distinct !{null, ptr @fts3PendingListAppendVarint, null, ptr @sqlite3_realloc64}
!5873 = distinct !{null, ptr @fts3PendingListAppendVarint, null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!5874 = distinct !{null, ptr @fts3PendingListAppendVarint, null, ptr @sqlite3_free, null}
!5875 = distinct !{null, ptr @fts3PendingListAppendVarint, null, ptr @sqlite3_free}
!5876 = distinct !{null, ptr @fts3PendingListAppendVarint, null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!5877 = !{!5412, !15, i64 32}
!5878 = !{!5412, !15, i64 40}
!5879 = distinct !{null, null}
!5880 = distinct !{!5880, !52}
!5881 = distinct !{!5881, !52}
!5882 = distinct !{!5882, !52}
!5883 = distinct !{!5883, !52}
!5884 = distinct !{null, null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!5885 = distinct !{null, null, ptr @sqlite3_free, null}
!5886 = distinct !{null, null, ptr @sqlite3_free}
!5887 = distinct !{null, null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!5888 = distinct !{!5888, !52}
!5889 = distinct !{!5889, !52}
!5890 = distinct !{!5890, !52}
!5891 = distinct !{null, ptr @sqlite3_malloc64}
!5892 = distinct !{null}
!5893 = distinct !{!5893, !52}
!5894 = distinct !{!5894, !52}
!5895 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!5896 = distinct !{null, ptr @sqlite3_free, null}
!5897 = distinct !{null, ptr @sqlite3_free}
!5898 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!5899 = distinct !{!5899, !52}
!5900 = distinct !{null, null, ptr @sqlite3_malloc64}
!5901 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!5902 = distinct !{null, ptr @sqlite3_free, null}
!5903 = distinct !{null, ptr @sqlite3_free}
!5904 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!5905 = distinct !{null, null}
!5906 = distinct !{null}
!5907 = distinct !{!5907, !52}
!5908 = distinct !{null, null, ptr @sqlite3_malloc64}
!5909 = distinct !{null}
!5910 = distinct !{null, null}
!5911 = distinct !{!5911, !52}
!5912 = distinct !{null}
!5913 = distinct !{null}
!5914 = distinct !{!5914, !52}
!5915 = distinct !{!5915, !52}
!5916 = !{ptr @sqlite3_free, ptr @bindText, ptr @sqlite3_mutex_enter}
!5917 = distinct !{ptr @sqlite3_free, ptr @bindText, null}
!5918 = !{ptr @sqlite3_free, ptr @bindText}
!5919 = !{ptr @sqlite3_free, ptr @bindText, ptr @sqlite3_mutex_leave}
!5920 = distinct !{!5920, !52}
!5921 = distinct !{!5921, !52}
!5922 = distinct !{!5922, !52}
!5923 = distinct !{null}
!5924 = distinct !{null, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!5925 = distinct !{null}
!5926 = distinct !{ptr @sqlite3_bind_int64, null, ptr @sqlite3_mutex_leave}
!5927 = distinct !{null, ptr @sqlite3_malloc64}
!5928 = !{!5929, !64, i64 56}
!5929 = !{!"SegmentWriter", !5930, i64 0, !15, i64 8, !15, i64 16, !64, i64 24, !6, i64 32, !6, i64 36, !64, i64 40, !6, i64 48, !6, i64 52, !64, i64 56, !15, i64 64}
!5930 = !{!"p1 _ZTS11SegmentNode", !12, i64 0}
!5931 = !{!5929, !6, i64 48}
!5932 = distinct !{null}
!5933 = !{!5929, !15, i64 16}
!5934 = !{!5929, !15, i64 8}
!5935 = !{!5929, !6, i64 52}
!5936 = !{!5929, !64, i64 24}
!5937 = !{!5929, !6, i64 32}
!5938 = distinct !{!5938, !52}
!5939 = !{!5929, !15, i64 64}
!5940 = distinct !{null, ptr @sqlite3_realloc64}
!5941 = !{!5929, !6, i64 36}
!5942 = !{!5929, !64, i64 40}
!5943 = distinct !{!5943, !52}
!5944 = distinct !{null}
!5945 = distinct !{!5945, !52}
!5946 = distinct !{null, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!5947 = !{!5929, !5930, i64 0}
!5948 = distinct !{null}
!5949 = !{!5950, !5930, i64 0}
!5950 = !{!"SegmentNode", !5930, i64 0, !5930, i64 8, !5930, i64 16, !6, i64 24, !64, i64 32, !6, i64 40, !6, i64 44, !64, i64 48, !6, i64 56, !64, i64 64}
!5951 = !{!5950, !64, i64 64}
!5952 = !{!5930, !5930, i64 0}
!5953 = !{!5950, !6, i64 56}
!5954 = distinct !{null, null}
!5955 = !{!5950, !6, i64 24}
!5956 = distinct !{!5956, !52}
!5957 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!5958 = distinct !{null, ptr @sqlite3_free, null}
!5959 = distinct !{null, ptr @sqlite3_free}
!5960 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!5961 = distinct !{!5961, !52}
!5962 = distinct !{!5962, !52}
!5963 = distinct !{!5963, !52}
!5964 = distinct !{!5964, !52}
!5965 = !{!5950, !64, i64 32}
!5966 = !{!5950, !6, i64 40}
!5967 = !{!5950, !6, i64 44}
!5968 = !{!5950, !64, i64 48}
!5969 = !{!5950, !5930, i64 8}
!5970 = !{!5950, !5930, i64 16}
!5971 = distinct !{!5971, !52}
!5972 = distinct !{!5972, !52}
!5973 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!5974 = distinct !{null, ptr @sqlite3_free, null}
!5975 = distinct !{null, ptr @sqlite3_free}
!5976 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!5977 = distinct !{!5977, !52}
!5978 = distinct !{!5978, !52}
!5979 = distinct !{null}
!5980 = distinct !{!5980, !52}
!5981 = distinct !{null, null}
!5982 = distinct !{null, null}
!5983 = distinct !{null}
!5984 = distinct !{!5984, !52}
!5985 = distinct !{!5985, !334}
!5986 = distinct !{!5986, !52}
!5987 = distinct !{!5987, !52}
!5988 = distinct !{ptr @sqlite3Fts3SegReaderFinish, null}
!5989 = distinct !{ptr @sqlite3Fts3SegReaderFinish, null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!5990 = distinct !{ptr @sqlite3Fts3SegReaderFinish, null, ptr @sqlite3_free, null}
!5991 = distinct !{ptr @sqlite3Fts3SegReaderFinish, null, ptr @sqlite3_free}
!5992 = distinct !{ptr @sqlite3Fts3SegReaderFinish, null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!5993 = distinct !{!5993, !52}
!5994 = distinct !{!5994, !52}
!5995 = distinct !{!5995, !334}
!5996 = distinct !{!5996, !334}
!5997 = distinct !{!5997, !52}
!5998 = distinct !{!5998, !52}
!5999 = distinct !{!5999, !52}
!6000 = !{!6001, !6, i64 8}
!6001 = !{!"Blob", !64, i64 0, !6, i64 8, !6, i64 12}
!6002 = distinct !{null}
!6003 = distinct !{null, ptr @sqlite3_bind_int, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!6004 = distinct !{null, null, ptr @sqlite3_realloc64}
!6005 = !{!6001, !6, i64 12}
!6006 = !{!6001, !64, i64 0}
!6007 = distinct !{!6007, !52}
!6008 = distinct !{!6008, !52}
!6009 = distinct !{null}
!6010 = distinct !{null, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!6011 = distinct !{null}
!6012 = distinct !{null, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!6013 = distinct !{null, ptr @sqlite3_column_type, null, ptr @sqlite3_mutex_enter}
!6014 = distinct !{null, ptr @sqlite3_column_type, null, ptr @sqlite3_mutex_leave}
!6015 = distinct !{null, ptr @sqlite3_malloc64}
!6016 = distinct !{null}
!6017 = distinct !{null, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!6018 = distinct !{null, null, ptr @sqlite3_malloc64}
!6019 = distinct !{!6019, !52}
!6020 = distinct !{null}
!6021 = distinct !{null, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!6022 = distinct !{null, ptr @sqlite3_bind_int, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!6023 = !{!6024, !15, i64 48}
!6024 = !{!"IncrmergeWriter", !15, i64 0, !15, i64 8, !15, i64 16, !6, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !7, i64 56, !7, i64 64}
!6025 = !{!6024, !7, i64 56}
!6026 = distinct !{null, null}
!6027 = distinct !{null, null, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!6028 = !{!6029, !64, i64 0}
!6029 = !{!"NodeReader", !64, i64 0, !6, i64 8, !6, i64 12, !15, i64 16, !6001, i64 24, !64, i64 40, !6, i64 48}
!6030 = !{!6029, !6, i64 8}
!6031 = distinct !{null, null}
!6032 = !{!6029, !6, i64 12}
!6033 = distinct !{!6033, !52}
!6034 = !{!6029, !64, i64 24}
!6035 = !{!6029, !6, i64 32}
!6036 = distinct !{null, null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!6037 = distinct !{null, null, ptr @sqlite3_free, null}
!6038 = distinct !{null, null, ptr @sqlite3_free}
!6039 = distinct !{null, null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!6040 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!6041 = distinct !{null, ptr @sqlite3_free, null}
!6042 = distinct !{null, ptr @sqlite3_free}
!6043 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!6044 = !{!6024, !15, i64 0}
!6045 = !{!6024, !15, i64 32}
!6046 = !{!6024, !15, i64 40}
!6047 = !{!6024, !15, i64 16}
!6048 = !{!6024, !6, i64 24}
!6049 = !{!6050, !15, i64 0}
!6050 = !{!"NodeWriter", !15, i64 0, !6001, i64 8, !6001, i64 24}
!6051 = distinct !{!6051, !334}
!6052 = distinct !{!6052, !52}
!6053 = !{!6050, !64, i64 24}
!6054 = distinct !{null, null, ptr @sqlite3_realloc64}
!6055 = !{!6050, !6, i64 32}
!6056 = distinct !{!6056, !52}
!6057 = !{!6050, !64, i64 8}
!6058 = !{!6050, !6, i64 16}
!6059 = !{!6029, !15, i64 16}
!6060 = distinct !{!6060, !52}
!6061 = distinct !{null}
!6062 = distinct !{null, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!6063 = distinct !{null}
!6064 = !{!6024, !15, i64 8}
!6065 = distinct !{null, null, null, ptr @sqlite3_realloc64}
!6066 = distinct !{null, null}
!6067 = distinct !{!6067, !52}
!6068 = distinct !{null, null, ptr @sqlite3_realloc64}
!6069 = distinct !{!6069, !52}
!6070 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!6071 = distinct !{null, ptr @sqlite3_free, null}
!6072 = distinct !{null, ptr @sqlite3_free}
!6073 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!6074 = distinct !{!6074, !52}
!6075 = distinct !{null, null, ptr @sqlite3_realloc64}
!6076 = distinct !{null}
!6077 = distinct !{!6077, !52}
!6078 = distinct !{null}
!6079 = distinct !{null, ptr @sqlite3_bind_int, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!6080 = distinct !{null, ptr @bindText, ptr @sqlite3_mutex_leave}
!6081 = distinct !{null, ptr @sqlite3_bind_null, ptr @sqlite3_mutex_leave}
!6082 = distinct !{!6082, !52}
!6083 = distinct !{null}
!6084 = distinct !{null, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!6085 = distinct !{null, ptr @sqlite3_bind_int, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!6086 = distinct !{null}
!6087 = distinct !{null, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!6088 = distinct !{null, ptr @sqlite3_bind_int, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!6089 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!6090 = distinct !{null, ptr @sqlite3_free, null}
!6091 = distinct !{null, ptr @sqlite3_free}
!6092 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!6093 = distinct !{!6093, !52}
!6094 = distinct !{null, ptr @bindText, ptr @sqlite3_mutex_leave}
!6095 = distinct !{null, ptr @sqlite3_bind_null, ptr @sqlite3_mutex_leave}
!6096 = distinct !{!6096, !52}
!6097 = distinct !{null}
!6098 = distinct !{null, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!6099 = distinct !{null, ptr @sqlite3_realloc64}
!6100 = distinct !{!6100, !52}
!6101 = distinct !{null, ptr @sqlite3_bind_int, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!6102 = distinct !{!6102, !52}
!6103 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!6104 = distinct !{null, ptr @sqlite3_free, null}
!6105 = distinct !{null, ptr @sqlite3_free}
!6106 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!6107 = distinct !{null, ptr @sqlite3_realloc64}
!6108 = !{!6029, !6, i64 48}
!6109 = !{!6029, !64, i64 40}
!6110 = distinct !{null}
!6111 = distinct !{!6111, !52}
!6112 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!6113 = distinct !{null, ptr @sqlite3_free, null}
!6114 = distinct !{null, ptr @sqlite3_free}
!6115 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!6116 = !{!6117, !6117, i64 0}
!6117 = !{!"p1 _ZTS10Fts3Cursor", !12, i64 0}
!6118 = distinct !{null}
!6119 = !{!6120, !6117, i64 0}
!6120 = !{!"LoadDoclistCtx", !6117, i64 0, !6, i64 8, !6, i64 12}
!6121 = distinct !{null, null}
!6122 = !{!6120, !6, i64 8}
!6123 = distinct !{null, null, null, ptr @sqlite3_malloc64}
!6124 = distinct !{null, ptr @sqlite3Malloc, null, null, ptr @sqlite3_malloc64, ptr @sqlite3_mutex_enter}
!6125 = distinct !{null, ptr @sqlite3Malloc, null, null, ptr @sqlite3_malloc64, null}
!6126 = distinct !{null, ptr @sqlite3Malloc, null, null, ptr @sqlite3_malloc64, null, null, ptr @sqlite3_mutex_leave}
!6127 = distinct !{null, ptr @sqlite3Malloc, null, null, ptr @sqlite3_malloc64, null, null, ptr @sqlite3_mutex_enter}
!6128 = distinct !{null, ptr @sqlite3Malloc, null, null, ptr @sqlite3_malloc64, null, null}
!6129 = distinct !{null, ptr @sqlite3Malloc, null, null, ptr @sqlite3_malloc64, ptr @sqlite3_mutex_leave}
!6130 = distinct !{null, ptr @sqlite3Malloc, null, null, ptr @sqlite3_malloc64}
!6131 = !{!6132, !6133, i64 24}
!6132 = !{!"SnippetIter", !6117, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6133, i64 24, !6, i64 32}
!6133 = !{!"p1 _ZTS13SnippetPhrase", !12, i64 0}
!6134 = !{!6132, !6117, i64 0}
!6135 = !{!6132, !6, i64 8}
!6136 = !{!6132, !6, i64 12}
!6137 = !{!6132, !6, i64 16}
!6138 = !{!6132, !6, i64 32}
!6139 = !{!6140, !64, i64 24}
!6140 = !{!"SnippetPhrase", !6, i64 0, !64, i64 8, !15, i64 16, !64, i64 24, !15, i64 32, !64, i64 40}
!6141 = distinct !{!6141, !52, !343, !344}
!6142 = distinct !{!6142, !52, !344, !343}
!6143 = distinct !{!6143, !52}
!6144 = distinct !{!6144, !52}
!6145 = !{!6140, !15, i64 16}
!6146 = distinct !{!6146, !52}
!6147 = distinct !{!6147, !52}
!6148 = !{!6140, !64, i64 40}
!6149 = !{!6140, !15, i64 32}
!6150 = !{!6140, !6, i64 0}
!6151 = distinct !{!6151, !52, !343, !344}
!6152 = distinct !{!6152, !52, !344, !343}
!6153 = distinct !{!6153, !1282}
!6154 = distinct !{!6154, !52}
!6155 = distinct !{!6155, !52}
!6156 = distinct !{null, null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!6157 = distinct !{null, null, ptr @sqlite3_free, null}
!6158 = distinct !{null, null, ptr @sqlite3_free}
!6159 = distinct !{null, null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!6160 = distinct !{!6160, !52}
!6161 = !{!6162, !15, i64 8}
!6162 = !{!"SnippetFragment", !6, i64 0, !6, i64 4, !15, i64 8, !15, i64 16}
!6163 = distinct !{!6163, !52, !1696}
!6164 = !{!6162, !6, i64 4}
!6165 = !{!6162, !15, i64 16}
!6166 = !{!6162, !6, i64 0}
!6167 = distinct !{null, null}
!6168 = distinct !{null, null, ptr @sqlite3_column_type, null, ptr @sqlite3_mutex_enter}
!6169 = distinct !{null, null, ptr @sqlite3_column_type, null, ptr @sqlite3_mutex_leave}
!6170 = distinct !{null, null, null}
!6171 = distinct !{null, null, null}
!6172 = distinct !{null, null, null, ptr @sqlite3_realloc64}
!6173 = distinct !{!6173, !52}
!6174 = distinct !{!6174, !52}
!6175 = distinct !{!6175, !52}
!6176 = distinct !{null, null, null, null}
!6177 = distinct !{null, null, null}
!6178 = distinct !{!6178, !52}
!6179 = distinct !{!6179, !52}
!6180 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!6181 = distinct !{null, ptr @sqlite3_free, null}
!6182 = distinct !{null, ptr @sqlite3_free}
!6183 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!6184 = distinct !{null}
!6185 = !{!6120, !6, i64 12}
!6186 = distinct !{null, null, ptr @sqlite3_malloc64}
!6187 = !{!6188, !6189, i64 24}
!6188 = !{!"TermOffsetCtx", !6117, i64 0, !6, i64 8, !6, i64 12, !15, i64 16, !6189, i64 24}
!6189 = !{!"p1 _ZTS10TermOffset", !12, i64 0}
!6190 = !{!6188, !15, i64 16}
!6191 = !{!6188, !6117, i64 0}
!6192 = !{!6188, !6, i64 8}
!6193 = !{!6188, !6, i64 12}
!6194 = distinct !{null, ptr @sqlite3_column_type, null, ptr @sqlite3_mutex_enter}
!6195 = distinct !{null, ptr @sqlite3_column_type, null, ptr @sqlite3_mutex_leave}
!6196 = distinct !{null, null}
!6197 = !{!6198, !64, i64 0}
!6198 = !{!"TermOffset", !64, i64 0, !15, i64 8, !15, i64 16}
!6199 = !{!6198, !15, i64 8}
!6200 = !{!6198, !15, i64 16}
!6201 = distinct !{!6201, !52}
!6202 = distinct !{!6202, !52}
!6203 = distinct !{null, null}
!6204 = distinct !{null, null, ptr @sqlite3_realloc64}
!6205 = distinct !{!6205, !52}
!6206 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!6207 = distinct !{null, ptr @sqlite3_free, null}
!6208 = distinct !{null, ptr @sqlite3_free}
!6209 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!6210 = distinct !{null}
!6211 = distinct !{null}
!6212 = !{!6213, !6117, i64 0}
!6213 = !{!"MatchInfo", !6117, i64 0, !6, i64 8, !6, i64 12, !15, i64 16, !7, i64 24, !46, i64 32}
!6214 = !{!6213, !6, i64 8}
!6215 = distinct !{null, null}
!6216 = distinct !{null, null, null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!6217 = distinct !{null, null, null, ptr @sqlite3_free, null}
!6218 = distinct !{null, null, null, ptr @sqlite3_free}
!6219 = distinct !{null, null, null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!6220 = !{!5519, !6, i64 36}
!6221 = !{!6213, !6, i64 12}
!6222 = distinct !{null, null, null}
!6223 = distinct !{null, null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!6224 = distinct !{null, null, ptr @sqlite3_free, null}
!6225 = distinct !{null, null, ptr @sqlite3_free}
!6226 = distinct !{null, null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!6227 = distinct !{!6227, !52}
!6228 = distinct !{null, null, null}
!6229 = distinct !{null, null, null, null, ptr @sqlite3_malloc64}
!6230 = distinct !{null, null, null, ptr @sqlite3_malloc64}
!6231 = !{!6213, !46, i64 32}
!6232 = !{!6213, !7, i64 24}
!6233 = distinct !{null, null, null, null}
!6234 = distinct !{null, null, null}
!6235 = distinct !{!6235, !52}
!6236 = distinct !{null, null, null, null, null}
!6237 = distinct !{null, null, null, null, null, ptr @sqlite3_bind_int64, ptr @sqlite3_mutex_leave}
!6238 = distinct !{null, null, null, null, null, ptr @sqlite3_column_type, null, ptr @sqlite3_mutex_enter}
!6239 = distinct !{null, null, null, null, null, ptr @sqlite3_column_type, null, ptr @sqlite3_mutex_leave}
!6240 = distinct !{null, null, ptr @sqlite3_column_blob, null, null, ptr @sqlite3_mutex_enter}
!6241 = distinct !{null, null, ptr @sqlite3_column_blob, null, null, ptr @sqlite3_mutex_leave}
!6242 = distinct !{!6242, !52}
!6243 = distinct !{null, null, null, null, null, ptr @sqlite3_malloc64}
!6244 = distinct !{null, null, null, null}
!6245 = !{!6246, !5520, i64 0}
!6246 = !{!"LcsIterator", !5520, i64 0, !6, i64 8, !64, i64 16, !6, i64 24}
!6247 = !{!6246, !6, i64 8}
!6248 = distinct !{!6248, !52}
!6249 = !{!6246, !64, i64 16}
!6250 = !{!6246, !6, i64 24}
!6251 = distinct !{!6251, !52}
!6252 = distinct !{!6252, !52}
!6253 = distinct !{!6253, !52}
!6254 = distinct !{!6254, !52}
!6255 = distinct !{null, null, null, null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
end_hunk_8
