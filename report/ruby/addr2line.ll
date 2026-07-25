inline.NumInlined: 199
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@fill_lines:bb.a
  %i.yi = sext i32 %i.yh to i64
  %i.yj = add i32 %.01119.i183.i.i, 7             ; 2 uses
  %.1.i184.i.i = add i64 %.01020.i182.i.i, %i.yi  ; 2 uses
  %i.yk = getelementptr i8, ptr %i.ye, i64 1      ; 2 uses
  %i.yl = load i8, ptr %i.ye, align 1, !tbaa !14  ; 3 uses
  %i.ym = icmp sgt i8 %i.yl, -1
  br i1 %i.ym, label %._crit_edge.loopexit.i185.i.i, label %.lr.ph.i181.i.i

._crit_edge.loopexit.i185.i.i:                    ; preds = %.lr.ph.i181.i.i
  %i.yn = zext nneg i32 %i.yj to i64
  br label %uleb128.exit190.i.i

uleb128.exit190.i.i:                              ; preds = %._crit_edge.loopexit.i185.i.i, %read_dw_form_addr.exit179.i.i
  %.8.i.i = phi ptr [ %i.ya, %read_dw_form_addr.exit179.i.i ], [ %i.yk, %._crit_edge.loopexit.i185.i.i ]
  %.011.lcssa.i186.i.i = phi i64 [ 0, %read_dw_form_addr.exit179.i.i ], [ %i.yn, %._crit_edge.loopexit.i185.i.i ]
  %.010.lcssa.i187.i.i = phi i64 [ 0, %read_dw_form_addr.exit179.i.i ], [ %.1.i184.i.i, %._crit_edge.loopexit.i185.i.i ]
  %.lcssa.i188.i.i = phi i8 [ %i.yb, %read_dw_form_addr.exit179.i.i ], [ %i.yl, %._crit_edge.loopexit.i185.i.i ]
  %i.yo = zext nneg i8 %.lcssa.i188.i.i to i64
  %i.yp = shl i64 %i.yo, %.011.lcssa.i186.i.i
  %.117.i189.i.i = add i64 %.010.lcssa.i187.i.i, %.0.i177.i.i
  %i.yq = add i64 %.117.i189.i.i, %i.yp
  br label %read_dw_form_addr.exit.i.i

read_dw_form_addr.exit.i.i:                       ; preds = %uleb128.exit190.i.i, %bb.df, %bb.de, %uleb128.exit167.i.i
  %.9.i.i = phi ptr [ %.7.i.i, %uleb128.exit167.i.i ], [ %i.xx, %bb.df ], [ %.8.i.i, %uleb128.exit190.i.i ], [ %i.xv, %bb.de ]
  %.179.i.i = phi i1 [ true, %uleb128.exit167.i.i ], [ %.078.i.i, %bb.df ], [ %.078.i.i, %uleb128.exit190.i.i ], [ %.078.i.i, %bb.de ]
  %.077.i.i = phi i64 [ %i.wz, %uleb128.exit167.i.i ], [ %.val.i3.i.i.i168.i.i, %bb.df ], [ %.0.i177.i.i, %uleb128.exit190.i.i ], [ %i.xu, %bb.de ] ; 2 uses
  %.076.i.i = phi i64 [ %i.xq, %uleb128.exit167.i.i ], [ %.val.i3.i.i.i172.i.i, %bb.df ], [ %i.yq, %uleb128.exit190.i.i ], [ %i.xw, %bb.de ]
  %.not90.i.i = icmp ule i64 %.077.i.i, %i.uo
  %i.yr = icmp ult i64 %i.uo, %.076.i.i
  %or.cond93.i.i = select i1 %.not90.i.i, i1 %i.yr, i1 false
  br i1 %or.cond93.i.i, label %ranges_include.exit.i, label %read_dw_form_addr.exit.thread.i.i.backedge

read_dw_form_addr.exit.thread.i.i.backedge:       ; preds = %.lr.ph.i136.i.i, %.lr.ph.i114.i.i, %.lr.ph.i.i103.i, %read_dw_form_addr.exit.i.i, %bb.dc, %bb.db, %bb.cy, %uleb128.exit134.i.i, %uleb128.exit112.i.i, %bb.cv, %read_dw_form_addr.exit.thread.i.i
  %.07.i.i285.be = phi ptr [ %i.wc, %uleb128.exit134.i.i ], [ %i.vs, %.lr.ph.i114.i.i ], [ %.9.i.i, %read_dw_form_addr.exit.i.i ], [ %i.xr, %bb.db ], [ %i.xr, %bb.dc ], [ %i.uy, %bb.cy ], [ %i.vo, %uleb128.exit112.i.i ], [ %i.ve, %.lr.ph.i.i103.i ], [ %i.uy, %read_dw_form_addr.exit.thread.i.i ], [ %i.va, %bb.cv ], [ %i.wg, %.lr.ph.i136.i.i ]
  %.078.i.i.be = phi i1 [ %.078.i.i, %uleb128.exit134.i.i ], [ %.078.i.i, %.lr.ph.i114.i.i ], [ %.179.i.i, %read_dw_form_addr.exit.i.i ], [ true, %bb.db ], [ true, %bb.dc ], [ false, %bb.cy ], [ %.078.i.i, %uleb128.exit112.i.i ], [ false, %.lr.ph.i.i103.i ], [ %.078.i.i, %read_dw_form_addr.exit.thread.i.i ], [ false, %bb.cv ], [ %.078.i.i, %.lr.ph.i136.i.i ]
  %.067.i.i.be = phi i64 [ %.067.i.i, %uleb128.exit134.i.i ], [ %.067.i.i, %.lr.ph.i114.i.i ], [ %.067.i.i, %read_dw_form_addr.exit.i.i ], [ %i.xs, %bb.db ], [ %.val.i3.i.i.i.i.i, %bb.dc ], [ %.067.i.i, %bb.cy ], [ %.067.i.i, %uleb128.exit112.i.i ], [ %.067.i.i, %.lr.ph.i.i103.i ], [ %.067.i.i, %read_dw_form_addr.exit.thread.i.i ], [ %.067.i.i, %bb.cv ], [ %.067.i.i, %.lr.ph.i136.i.i ]
  br label %read_dw_form_addr.exit.thread.i.i

bb.dj:                                            ; preds = %.cont.i
  %i.ys = load ptr, ptr %i.tv, align 8, !tbaa !119
  %i.yt = getelementptr i8, ptr %i.ys, i64 %.sroa.10.0.i ; 3 uses
  %i.yu = getelementptr i8, ptr %i.yt, i64 8
  %.val.i3.i.i65.i.i = load i64, ptr %i.yt, align 1 ; 2 uses
  %.val.i3.i.i19166.i.i = load i64, ptr %i.yu, align 1 ; 2 uses
  %i.yv = icmp ne i64 %.val.i3.i.i65.i.i, 0
  %i.yw = icmp ne i64 %.val.i3.i.i19166.i.i, 0
  %or.cond67.i.i = select i1 %i.yv, i1 true, i1 %i.yw
  br i1 %or.cond67.i.i, label %.lr.ph.i.i, label %.thread143.i

.lr.ph.i.i:                                       ; preds = %bb.dj, %bb.dl
  %.val.i3.i.i19170.i.i = phi i64 [ %.val.i3.i.i191.i.i, %bb.dl ], [ %.val.i3.i.i19166.i.i, %bb.dj ] ; 2 uses
  %.pn71.i.i = phi ptr [ %i.yx, %bb.dl ], [ %i.yt, %bb.dj ] ; 2 uses
  %.val.i3.i.i69.i.i = phi i64 [ %.val.i3.i.i.i.i283, %bb.dl ], [ %.val.i3.i.i65.i.i, %bb.dj ] ; 2 uses
  %.37068.i.i = phi i64 [ %.572.i.i, %bb.dl ], [ %spec.select358, %bb.dj ] ; 3 uses
  %i.yx = getelementptr i8, ptr %.pn71.i.i, i64 16 ; 2 uses
  %i.yy = icmp eq i64 %.val.i3.i.i69.i.i, -1
  br i1 %i.yy, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph.i.i
  %i.yz = add i64 %.37068.i.i, %.val.i3.i.i69.i.i ; 2 uses
  %.not.i100.i = icmp ule i64 %i.yz, %i.uo
  %i.za = add i64 %.37068.i.i, %.val.i3.i.i19170.i.i
  %i.zb = icmp ult i64 %i.uo, %i.za
  %or.cond95.i.i = select i1 %.not.i100.i, i1 %i.zb, i1 false
  br i1 %or.cond95.i.i, label %ranges_include.exit.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %.lr.ph.i.i
  %.572.i.i = phi i64 [ %.37068.i.i, %bb.dk ], [ %.val.i3.i.i19170.i.i, %.lr.ph.i.i ]
  %i.zc = getelementptr i8, ptr %.pn71.i.i, i64 24
  %.val.i3.i.i.i.i283 = load i64, ptr %i.yx, align 1 ; 2 uses
  %.val.i3.i.i191.i.i = load i64, ptr %i.zc, align 1 ; 2 uses
  %i.zd = icmp ne i64 %.val.i3.i.i.i.i283, 0
  %i.ze = icmp ne i64 %.val.i3.i.i191.i.i, 0
  %or.cond.i101.i = select i1 %i.zd, i1 true, i1 %i.ze
  br i1 %or.cond.i101.i, label %.lr.ph.i.i, label %.thread143.i

bb.dm:                                            ; preds = %bb.co
  %i.zf = icmp eq i64 %.sroa.0.0.i269, %i.uo
  %or.cond153.i = select i1 %.sroa.14.0.i, i1 %i.zf, i1 false
  br i1 %or.cond153.i, label %ranges_include.exit.i, label %.thread143.i

ranges_include.exit.i:                            ; preds = %bb.dk, %read_dw_form_addr.exit.i.i, %bb.dm, %bb.cn
  %.5.i.i = phi i64 [ %.sroa.0.0.i269, %bb.cn ], [ %.077.i.i, %read_dw_form_addr.exit.i.i ], [ %.sroa.0.0.i269, %bb.dm ], [ %i.yz, %bb.dk ] ; 2 uses
  switch i64 %.5.i.i, label %bb.dn [
    i64 -1, label %.critedge.thread.i
    i64 0, label %.thread143.i
  ]

bb.dn:                                            ; preds = %ranges_include.exit.i
  %i.zg = getelementptr [64 x i8], ptr %4, i64 %indvars.iv.i ; 6 uses
  %i.zh = getelementptr i8, ptr %i.zg, i64 48     ; 2 uses
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !29
  %.not74.i = icmp eq ptr %i.zi, null
  br i1 %.not74.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.zj = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.zj, ptr noundef nonnull align 1 dereferenceable(64) %i.zg, i64 noundef 64, i1 noundef false) #15
  %i.zk = getelementptr i8, ptr %i.zg, i64 56
  store ptr %i.zj, ptr %i.zk, align 8, !tbaa !41
  store <2 x ptr> %i.tx, ptr %i.zj, align 8, !tbaa !64
  %i.zl = getelementptr i8, ptr %i.zj, i64 24
  store i32 %i.ty, ptr %i.zl, align 8, !tbaa !21
  %i.zm = getelementptr i8, ptr %i.zj, i64 40
  store i64 0, ptr %i.zm, align 8, !tbaa !35
  %.pre226.i = load i64, ptr %i.tt, align 8, !tbaa !33
  %.pre227.i = load i64, ptr %i.tu, align 8, !tbaa !118
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.zn = phi i64 [ %.pre227.i, %bb.do ], [ %i.ug, %bb.dn ] ; 3 uses
  %i.zo = phi i64 [ %.pre226.i, %bb.do ], [ %i.uh, %bb.dn ] ; 3 uses
  %i.zp = load ptr, ptr %i.ts, align 8, !tbaa !15
  %i.zq = getelementptr i8, ptr %i.zg, i64 16
  store ptr %i.zp, ptr %i.zq, align 8, !tbaa !27
  %i.zr = getelementptr i8, ptr %i.zg, i64 32
  store i64 %i.tz, ptr %i.zr, align 8, !tbaa !40
  store ptr %i.ua, ptr %i.zh, align 8, !tbaa !29
  %i.zs = sub i64 %.5.i.i, %i.zn
  %i.zt = add i64 %i.zs, %i.zo
  %i.zu = getelementptr i8, ptr %i.zg, i64 40
  store i64 %i.zt, ptr %i.zu, align 8, !tbaa !35
  br label %.thread143.i

.thread143.i:                                     ; preds = %bb.dl, %read_dw_form_addr.exit.thread.i.i, %bb.dp, %ranges_include.exit.i, %bb.dm, %bb.dj, %bb.cn
  %i.zv = phi i64 [ %i.ug, %read_dw_form_addr.exit.thread.i.i ], [ %i.zn, %bb.dp ], [ %i.ug, %ranges_include.exit.i ], [ %i.ug, %bb.dm ], [ %i.ug, %bb.dj ], [ %i.ug, %bb.cn ], [ %i.ug, %bb.dl ]
  %i.zw = phi i64 [ %i.uh, %read_dw_form_addr.exit.thread.i.i ], [ %i.zo, %bb.dp ], [ %i.uh, %ranges_include.exit.i ], [ %i.uh, %bb.dm ], [ %i.uh, %bb.dj ], [ %i.uh, %bb.cn ], [ %i.uh, %bb.dl ]
  %i.zx = phi i64 [ %i.ui, %read_dw_form_addr.exit.thread.i.i ], [ %i.zn, %bb.dp ], [ %i.ui, %ranges_include.exit.i ], [ %i.ui, %bb.dm ], [ %i.ui, %bb.dj ], [ %i.ui, %bb.cn ], [ %i.ui, %bb.dl ]
  %i.zy = phi i64 [ %i.uj, %read_dw_form_addr.exit.thread.i.i ], [ %i.zo, %bb.dp ], [ %i.uj, %ranges_include.exit.i ], [ %i.uj, %bb.dm ], [ %i.uj, %bb.dj ], [ %i.uj, %bb.cn ], [ %i.uj, %bb.dl ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i282, label %bb.cl, !llvm.loop !120

select.unfold146.i:                               ; preds = %uleb128.exit21.i.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %.critedge.i282, !llvm.loop !113

.critedge.thread.i:                               ; preds = %ranges_include.exit.i, %bb.cm, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %.thread356

.critedge.i282:                                   ; preds = %.thread143.i, %select.unfold146.i, %.preheader.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.zz = load ptr, ptr %i.ed, align 8, !tbaa !81 ; 2 uses
  %i.aaa = load ptr, ptr %i.ep, align 8, !tbaa !88
  %i.aab = icmp ult ptr %i.zz, %i.aaa
  br i1 %i.aab, label %bb.bq, label %debug_info_read.exit

debug_info_read.exit:                             ; preds = %.critedge.i282, %rnglists_header_init.exit.i
  %i.aac = phi ptr [ %i.od, %rnglists_header_init.exit.i ], [ %i.zz, %.critedge.i282 ] ; 2 uses
  %i.aad = load ptr, ptr %i.eh, align 8, !tbaa !83
  %i.aae = icmp ult ptr %i.aac, %i.aad
  br i1 %i.aae, label %bb.ad, label %._crit_edge476, !llvm.loop !121

.thread356:                                       ; preds = %bb.af, %di_read_debug_line_cu.exit.i, %bb.an, %di_skip_records.exit.i, %addr_header_init.exit.i, %.critedge.thread.i, %rnglists_header_init.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %bb.dq

._crit_edge476:                                   ; preds = %debug_info_read.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %.loopexit359

bb.dq:                                            ; preds = %.thread356, %bb.aa, %bb.ab
  %.not249 = icmp eq ptr %.0214.lcssa, null       ; 2 uses
  %spec.select263 = select i1 %.not249, ptr %.0224.lcssa, ptr %.0217.lcssa ; 2 uses
  %spec.select264 = select i1 %.not249, ptr %.0221.lcssa, ptr %.0214.lcssa ; 3 uses
  %i.aaf = icmp ne ptr %spec.select264, null
  %i.aag = icmp ne ptr %spec.select263, null
  %or.cond5 = select i1 %i.aaf, i1 %i.aag, i1 false
  br i1 %or.cond5, label %bb.dr, label %.loopexit359

bb.dr:                                            ; preds = %bb.dq
  %i.aah = getelementptr i8, ptr %spec.select263, i64 24
  %i.aai = load i64, ptr %i.aah, align 8, !tbaa !56
  %i.aaj = getelementptr i8, ptr %i.n, i64 %i.aai
  %i.aak = getelementptr i8, ptr %spec.select264, i64 24
  %i.aal = load i64, ptr %i.aak, align 8, !tbaa !56
  %i.aam = getelementptr i8, ptr %i.n, i64 %i.aal
  %i.aan = getelementptr i8, ptr %spec.select264, i64 32
  %i.aao = load i64, ptr %i.aan, align 8, !tbaa !61
  %i.aap = udiv i64 %i.aao, 24                    ; 2 uses
  %i.aaq = trunc i64 %i.aap to i32
  %i.aar = icmp sgt i32 %i.aaq, 0
  br i1 %i.aar, label %.lr.ph481, label %.loopexit359

.lr.ph481:                                        ; preds = %bb.dr
  %i.aas = getelementptr i8, ptr %i.c, i64 32
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !33 ; 2 uses
  %i.aau = icmp slt i32 %5, %0
  br i1 %i.aau, label %.lr.ph481.split.us.preheader, label %.loopexit359

.lr.ph481.split.us.preheader:                     ; preds = %.lr.ph481
  %i.aav = sext i32 %5 to i64
  %wide.trip.count576 = and i64 %i.aap, 2147483647
  %wide.trip.count571 = sext i32 %0 to i64
  br label %.lr.ph481.split.us

.lr.ph481.split.us:                               ; preds = %.lr.ph481.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv573 = phi i64 [ 0, %.lr.ph481.split.us.preheader ], [ %indvars.iv.next574, %..loopexit_crit_edge.us ] ; 2 uses
  %i.aaw = getelementptr [24 x i8], ptr %i.aam, i64 %indvars.iv573 ; 4 uses
  %i.aax = getelementptr i8, ptr %i.aaw, i64 8
  %i.aay = load i64, ptr %i.aax, align 8, !tbaa !122
  %i.aaz = add i64 %i.aat, %i.aay                 ; 2 uses
  %i.aba = getelementptr i8, ptr %i.aaw, i64 4
  %i.abb = load i8, ptr %i.aba, align 4, !tbaa !70
  %i.abc = and i8 %i.abb, 15
  %.not250.us = icmp eq i8 %i.abc, 2
  br i1 %.not250.us, label %.preheader.us, label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.dx, %.lr.ph481.split.us
  %indvars.iv.next574 = add nuw nsw i64 %indvars.iv573, 1 ; 2 uses
  %exitcond577.not = icmp eq i64 %indvars.iv.next574, %wide.trip.count576
  br i1 %exitcond577.not, label %.loopexit359, label %.lr.ph481.split.us, !llvm.loop !123

bb.ds:                                            ; preds = %.preheader.us, %bb.dx
  %indvars.iv568 = phi i64 [ %i.aav, %.preheader.us ], [ %indvars.iv.next569.a, %bb.dx ] ; 3 uses
  %i.abd = getelementptr [64 x i8], ptr %4, i64 %indvars.iv568 ; 5 uses
  %i.abe = getelementptr i8, ptr %i.abd, i64 24
  %i.abf = load i32, ptr %i.abe, align 8, !tbaa !21
  %i.abg = icmp sgt i32 %i.abf, 0
  br i1 %i.abg, label %bb.dx, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.abh = getelementptr [8 x i8], ptr %1, i64 %indvars.iv568
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !20
  %i.abj = ptrtoint ptr %i.abi to i64
  %i.abk = sub i64 %i.abj, %i.aaz
  %i.abl = load i64, ptr %i.abw, align 8, !tbaa !72
  %i.abm = icmp ugt i64 %i.abk, %i.abl
  br i1 %i.abm, label %bb.dx, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.abn = getelementptr i8, ptr %i.abd, i64 48   ; 2 uses
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !29
  %.not251.us = icmp eq ptr %i.abo, null
  br i1 %.not251.us, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.abp = load i32, ptr %i.aaw, align 8, !tbaa !73
  %i.abq = zext i32 %i.abp to i64
  %i.abr = getelementptr i8, ptr %i.aaj, i64 %i.abq
  store ptr %i.abr, ptr %i.abn, align 8, !tbaa !29
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.abs = getelementptr i8, ptr %i.abd, i64 40
  store i64 %i.aaz, ptr %i.abs, align 8, !tbaa !35
  %i.abt = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.abu = getelementptr i8, ptr %i.abd, i64 16
  store ptr %i.abt, ptr %i.abu, align 8, !tbaa !27
  %i.abv = getelementptr i8, ptr %i.abd, i64 32
  store i64 %i.aat, ptr %i.abv, align 8, !tbaa !40
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dt, %bb.ds
  %indvars.iv.next569.a = add nsw i64 %indvars.iv568, 1 ; 2 uses
  %exitcond572.not.a = icmp eq i64 %indvars.iv.next569.a, %wide.trip.count571
  br i1 %exitcond572.not.a, label %..loopexit_crit_edge.us, label %bb.ds, !llvm.loop !124

.preheader.us:                                    ; preds = %.lr.ph481.split.us
  %i.abw = getelementptr i8, ptr %i.aaw, i64 16
  br label %bb.ds

.loopexit359:                                     ; preds = %..loopexit_crit_edge.us, %.lr.ph481, %bb.dr, %._crit_edge476, %bb.dq
  %i.abx = getelementptr i8, ptr %i.c, i64 96
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !84 ; 2 uses
  %.not252 = icmp eq ptr %i.aby, null
  br i1 %.not252, label %bb.dy, label %bb.ec

bb.dy:                                            ; preds = %.loopexit359
  %i.abz = icmp ne ptr %.0208.lcssa, null
  %i.aca = icmp ne i32 %2, 0                      ; 2 uses
  %or.cond7 = and i1 %i.aca, %i.abz
  br i1 %or.cond7, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.acb = getelementptr i8, ptr %.0208.lcssa, i64 24
  %i.acc = load i64, ptr %i.acb, align 8, !tbaa !56
  %i.acd = getelementptr i8, ptr %i.n, i64 %i.acc
  call fastcc void @follow_debuglink(ptr noundef %i.acd, i32 noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.ace = icmp ne ptr %.0211.lcssa, null
  %or.cond9 = and i1 %i.aca, %i.ace
  br i1 %or.cond9, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.acf = getelementptr i8, ptr %.0211.lcssa, i64 24
  %i.acg = load i64, ptr %i.acf, align 8, !tbaa !56
  %i.ach = getelementptr i8, ptr %i.n, i64 %i.acg ; 3 uses
  %i.aci = getelementptr i8, ptr %i.ach, i64 12
  %i.acj = load i32, ptr %i.ach, align 4, !tbaa !125
  %i.ack = zext i32 %i.acj to i64
  %i.acl = getelementptr i8, ptr %i.aci, i64 %i.ack
  %i.acm = getelementptr i8, ptr %i.ach, i64 4
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !127
  %i.aco = zext i32 %i.acn to i64
  call fastcc void @follow_debuglink_build_id(ptr noundef %i.acl, i64 noundef %i.aco, i32 noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  br label %bb.ed

bb.ec:                                            ; preds = %.loopexit359
  %i.acp = getelementptr i8, ptr %i.c, i64 104
  %i.acq = load i64, ptr %i.acp, align 8, !tbaa !128
  %i.acr = call fastcc i32 @parse_debug_line(i32 noundef %0, ptr noundef %1, ptr noundef %i.aby, i64 noundef %i.acq, ptr noundef nonnull %i.c, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  %i.acs = icmp eq i32 %i.acr, -1
  br i1 %i.acs, label %.loopexit368, label %bb.ed

.loopexit368:                                     ; preds = %uncompress_debug_section.exit, %uncompress_debug_section.exit.thread, %bb.e, %bb.c, %bb.ec, %bb.f, %bb.a
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eb, %bb.ea, %bb.ec, %.loopexit368
  %.0 = phi i64 [ -1, %.loopexit368 ], [ %.4, %bb.eb ], [ %.4, %bb.ec ], [ %.4, %bb.ea ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @dladdr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #9

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @dlclose(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @follow_debuglink(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) @binary_filename, i32 noundef 47) #16 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !11     ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 1
  store i8 0, ptr %i.c, align 1, !tbaa !14
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @binary_filename) #16
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.d, i64 4081) ; 3 uses
  %i.e = tail call ptr @__memmove_chk(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @binary_filename, i64 14), ptr noundef nonnull @binary_filename, i64 noundef %spec.store.select, i64 noundef 4083) #15 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) @binary_filename, ptr noundef nonnull align 1 dereferenceable(14) @follow_debuglink.global_debug_dir, i64 noundef 14, i1 noundef false) #15
  %i.f = getelementptr i8, ptr @binary_filename, i64 %spec.store.select
  %i.g = getelementptr i8, ptr %i.f, i64 14
  %i.h = sub nuw nsw i64 4082, %spec.store.select
  %i.i = tail call i64 @strlcpy(ptr noundef %i.g, ptr noundef nonnull dereferenceable(1) %0, i64 noundef %i.h) #15 ; 0 uses
  %i.j = tail call noalias dereferenceable_or_null(272) ptr @calloc(i64 noundef 1, i64 noundef 272) #14 ; 4 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !11     ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %append_obj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.k, i64 264
  store ptr %i.j, ptr %i.l, align 8, !tbaa !32
  br label %append_obj.exit

append_obj.exit:                                  ; preds = %bb.b, %bb.c
  store ptr %i.j, ptr %3, align 8, !tbaa !11
  %i.m = getelementptr i8, ptr %i.b, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33
  %i.o = getelementptr i8, ptr %i.j, i64 32
  store i64 %i.n, ptr %i.o, align 8, !tbaa !33
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !15
  store ptr %i.p, ptr %i.j, align 8, !tbaa !15
  %i.q = tail call fastcc i64 @fill_lines(i32 noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %append_obj.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @follow_debuglink_build_id(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !11     ; 2 uses
  %i.b = icmp samesign ugt i64 %1, 2032
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) @binary_filename, ptr noundef nonnull align 16 dereferenceable(25) @follow_debuglink_build_id.global_debug_dir, i64 noundef 25, i1 noundef false) #15
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %0, align 1, !tbaa !14
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = lshr i32 %i.d, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  store i8 %i.h, ptr getelementptr inbounds nuw (i8, ptr @binary_filename, i64 25), align 1, !tbaa !14
  %i.i = and i32 %i.d, 15
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  store i8 %i.l, ptr getelementptr inbounds nuw (i8, ptr @binary_filename, i64 26), align 2, !tbaa !14
  store i8 47, ptr getelementptr inbounds nuw (i8, ptr @binary_filename, i64 27), align 1, !tbaa !14
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.peel.next.preheader

.lr.ph.peel.next.preheader:                       ; preds = %bb.c
  %i.m = add nsw i64 %1, -1                       ; 3 uses
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i64 %1, 2
  br i1 %i.n, label %.lr.ph.peel.next.epil.preheader, label %.lr.ph.peel.next.preheader.new

.lr.ph.peel.next.preheader.new:                   ; preds = %.lr.ph.peel.next.preheader
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %.lr.ph.peel.next, %.lr.ph.peel.next.preheader.new
  %.027 = phi ptr [ getelementptr inbounds nuw (i8, ptr @binary_filename, i64 28), %.lr.ph.peel.next.preheader.new ], [ %i.ao, %.lr.ph.peel.next ] ; 5 uses
  %.02526 = phi i64 [ 1, %.lr.ph.peel.next.preheader.new ], [ %i.ap, %.lr.ph.peel.next ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.peel.next.preheader.new ], [ %niter.next.1, %.lr.ph.peel.next ]
  %i.o = getelementptr i8, ptr %0, i64 %.02526
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = lshr i32 %i.q, 4
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %i.v = getelementptr i8, ptr %.027, i64 1
  store i8 %i.u, ptr %.027, align 1, !tbaa !14
end_hunk_0
