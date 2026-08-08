inline.NumInlined: 670
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@glk_color_check:bb.a
  %.not3.i.i71 = icmp eq i8 %i.cp, 0
  br i1 %.not3.i.i71, label %glk_use_pre_csc_lut_for_gamma.exit.i74, label %glk_use_pre_csc_lut_for_gamma.exit.thread.i

glk_use_pre_csc_lut_for_gamma.exit.i74:           ; preds = %bb.w
  %i.cq = load i32, ptr %i.ap, align 8
  %.not44.i = icmp eq i32 %i.cq, 0
  br i1 %.not44.i, label %glk_use_pre_csc_lut_for_gamma.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %glk_use_pre_csc_lut_for_gamma.exit.i74
  %i.cr = getelementptr i8, ptr %i.cm, i64 1160
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr i8, ptr %i.cs, i64 124
  %i.cu = load i32, ptr %i.ct, align 4            ; 6 uses
  %.val34.i = load ptr, ptr %i.cm, align 8
  %i.cv = getelementptr i8, ptr %i.cn, i64 72
  %.val.i.i75 = load i64, ptr %i.cv, align 8
  %i.cw = lshr i64 %.val.i.i75, 3
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = sext i32 %i.cu to i64
  %i.cz = shl nsw i64 %i.cy, 3
  %i.da = tail call ptr @drm_property_create_blob(ptr noundef %.val34.i, i64 noundef %i.cz, ptr noundef null) #11 ; 5 uses
  %i.db = icmp ugt ptr %i.da, inttoptr (i64 -4096 to ptr)
  br i1 %i.db, label %glk_assign_luts.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr i8, ptr %i.cn, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8            ; 3 uses
  %i.de = getelementptr i8, ptr %i.da, i64 80
  %i.df = load ptr, ptr %i.de, align 8            ; 3 uses
  %i.dg = icmp sgt i32 %i.cu, 0
  br i1 %i.dg, label %.lr.ph.i.i, label %.loopexit47.i

.lr.ph.i.i:                                       ; preds = %bb.y
  %i.dh = add i32 %i.cx, -1                       ; 3 uses
  %i.di = add nsw i32 %i.cu, -1                   ; 3 uses
  %wide.trip.count7.i.i = zext nneg i32 %i.cu to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count7.i.i, 1
  %i.dj = icmp eq i32 %i.cu, 1
  br i1 %i.dj, label %.lr.ph.split.i.i.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count7.i.i, 2147483646
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.split.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %.lr.ph.split.i.i ]
  %i.dk = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.dl = mul i32 %i.dh, %i.dk
  %i.dm = sdiv i32 %i.dl, %i.di
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr [8 x i8], ptr %i.dd, i64 %i.dn
  %i.dp = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.dq = load i64, ptr %i.do, align 2
  store i64 %i.dq, ptr %i.dp, align 2
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dr = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.ds = mul i32 %i.dh, %i.dr
  %i.dt = sdiv i32 %i.ds, %i.di
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr [8 x i8], ptr %i.dd, i64 %i.du
  %i.dw = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.next.i.i
  %i.dx = load i64, ptr %i.dv, align 2
  store i64 %i.dx, ptr %i.dw, align 2
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit47.i.loopexit.unr-lcssa, label %.lr.ph.split.i.i, !llvm.loop !170

.loopexit47.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.split.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit47.i, label %.lr.ph.split.i.i.epil.preheader

.lr.ph.split.i.i.epil.preheader:                  ; preds = %.loopexit47.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %.loopexit47.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod116 = trunc i32 %i.cu to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.dy = trunc nuw nsw i64 %indvars.iv.i.i.epil.init to i32
  %i.dz = mul i32 %i.dh, %i.dy
  %i.ea = sdiv i32 %i.dz, %i.di
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr [8 x i8], ptr %i.dd, i64 %i.eb
  %i.ed = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i.epil.init
  %i.ee = load i64, ptr %i.ec, align 2
  store i64 %i.ee, ptr %i.ed, align 2
  br label %.loopexit47.i

.loopexit47.i:                                    ; preds = %.lr.ph.split.i.i.epil.preheader, %.loopexit47.i.loopexit.unr-lcssa, %bb.y
  %i.ef = getelementptr i8, ptr %i.j, i64 752
  %i.eg = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.ef, ptr noundef %i.da) #11 ; 0 uses
  %i.eh = getelementptr i8, ptr %i.j, i64 760
  %i.ei = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.eh, ptr noundef null) #11 ; 0 uses
  tail call void @drm_property_blob_put(ptr noundef %i.da) #11
  br label %glk_assign_luts.exit.thread

glk_use_pre_csc_lut_for_gamma.exit.thread.i:      ; preds = %glk_use_pre_csc_lut_for_gamma.exit.i74, %bb.w, %bb.v
  %i.ej = load ptr, ptr %i.j, align 8
  %i.ek = load ptr, ptr %i.ej, align 8            ; 2 uses
  %.not.i35.i = icmp eq ptr %i.ek, null
  br i1 %.not.i35.i, label %.thread.i.i, label %bb.z

bb.z:                                             ; preds = %glk_use_pre_csc_lut_for_gamma.exit.thread.i
  %i.el = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ek) #11 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.j, align 8
  %.pre15.i.i = load ptr, ptr %.pre.i.i, align 8  ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %.pre15.i.i, null
  br i1 %.not.i.i.i72, label %.thread.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = tail call ptr @__drm_to_display(ptr noundef nonnull %.pre15.i.i) #11
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aa, %bb.z, %glk_use_pre_csc_lut_for_gamma.exit.thread.i
  %i.en = phi ptr [ %i.el, %bb.aa ], [ %i.el, %bb.z ], [ null, %glk_use_pre_csc_lut_for_gamma.exit.thread.i ]
  %i.eo = phi ptr [ %i.em, %bb.aa ], [ null, %bb.z ], [ null, %glk_use_pre_csc_lut_for_gamma.exit.thread.i ] ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 1168
  %i.eq = load i16, ptr %i.ep, align 8
  %i.er = add i16 %i.eq, -11
  %or.cond.i.i.i = icmp ult i16 %i.er, -4
  br i1 %or.cond.i.i.i, label %ilk_lut_limited_range.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %.thread.i.i
  %i.es = getelementptr i8, ptr %i.eo, i64 8
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = and i64 %i.et, 524288
  %.not9.i.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not9.i.i.i, label %ilk_limited_range.exit.i.i, label %ilk_lut_limited_range.exit.thread.i

ilk_limited_range.exit.i.i:                       ; preds = %bb.ab
  %i.ev = getelementptr i8, ptr %i.j, i64 884
  %i.ew = load i8, ptr %i.ev, align 4, !range !13, !noundef !14
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.ac, label %ilk_lut_limited_range.exit.thread.i

bb.ac:                                            ; preds = %ilk_limited_range.exit.i.i
  %i.ey = getelementptr i8, ptr %i.j, i64 3948
  %i.ez = load i8, ptr %i.ey, align 4
  %.not11.i.i = icmp eq i8 %i.ez, 0
  br i1 %.not11.i.i, label %bb.ad, label %ilk_lut_limited_range.exit.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.fa = getelementptr i8, ptr %i.en, i64 1168
  %i.fb = load i16, ptr %i.fa, align 8
  %i.fc = icmp eq i16 %i.fb, 10
  %i.fd = load ptr, ptr %i.v, align 8             ; 3 uses
  %.not46.i = icmp eq ptr %i.fd, null             ; 2 uses
  br i1 %i.fc, label %ilk_lut_limited_range.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not46.i, label %ilk_lut_limited_range.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fe = getelementptr i8, ptr %i.j, i64 352
  %i.ff = load ptr, ptr %i.fe, align 8
  %.not13.i.i = icmp eq ptr %i.ff, null
  br i1 %.not13.i.i, label %.split.i, label %ilk_lut_limited_range.exit.thread41.i

.split.i:                                         ; preds = %bb.af
  %i.fg = getelementptr i8, ptr %i.j, i64 368
  %i.fh = load ptr, ptr %i.fg, align 8
  %.not45.i = icmp eq ptr %i.fh, null
  br i1 %.not45.i, label %ilk_lut_limited_range.exit.thread.i, label %ilk_lut_limited_range.exit.thread41.i

ilk_lut_limited_range.exit.i:                     ; preds = %bb.ad
  br i1 %.not46.i, label %ilk_lut_limited_range.exit.thread.i, label %ilk_lut_limited_range.exit.thread41.i

ilk_lut_limited_range.exit.thread41.i:            ; preds = %ilk_lut_limited_range.exit.i, %.split.i, %bb.af
  %i.fi = getelementptr i8, ptr %i.fd, i64 72
  %.val.i73 = load i64, ptr %i.fi, align 8
  %i.fj = lshr i64 %.val.i73, 3                   ; 3 uses
  %i.fk = trunc i64 %i.fj to i32                  ; 2 uses
  %.val33.i = load ptr, ptr %i.cm, align 8
  %sext.i = shl i64 %i.fj, 32
  %i.fl = ashr exact i64 %sext.i, 29
  %i.fm = tail call ptr @drm_property_create_blob(ptr noundef %.val33.i, i64 noundef %i.fl, ptr noundef null) #11 ; 5 uses
  %i.fn = icmp ugt ptr %i.fm, inttoptr (i64 -4096 to ptr)
  br i1 %i.fn, label %glk_assign_luts.exit, label %bb.ag

bb.ag:                                            ; preds = %ilk_lut_limited_range.exit.thread41.i
  %i.fo = getelementptr i8, ptr %i.fd, i64 80
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = getelementptr i8, ptr %i.fm, i64 80
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = icmp sgt i32 %i.fk, 0
  br i1 %i.fs, label %.lr.ph.i37.i, label %.loopexit.i

.lr.ph.i37.i:                                     ; preds = %bb.ag
  %i.ft = add nsw i32 %i.fk, -1                   ; 2 uses
  %wide.trip.count7.i38.i = and i64 %i.fj, 2147483647
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i, %.lr.ph.i37.i
  %indvars.iv4.i.i = phi i64 [ %indvars.iv.next5.i.i, %.lr.ph.split.us.i.i ], [ 0, %.lr.ph.i37.i ] ; 3 uses
  %i.fu = trunc nuw nsw i64 %indvars.iv4.i.i to i32
  %i.fv = mul i32 %i.ft, %i.fu
  %i.fw = sdiv i32 %i.fv, %i.ft
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr [8 x i8], ptr %i.fp, i64 %i.fx ; 3 uses
  %i.fz = load i16, ptr %i.fy, align 2
  %i.ga = zext i16 %i.fz to i32
  %i.gb = mul nuw nsw i32 %i.ga, 18688
  %i.gc = udiv i32 %i.gb, 21845
  %i.gd = trunc nuw i32 %i.gc to i16
  %i.ge = add nuw i16 %i.gd, 4096
  %i.gf = getelementptr [8 x i8], ptr %i.fr, i64 %indvars.iv4.i.i ; 3 uses
  store i16 %i.ge, ptr %i.gf, align 2
  %i.gg = getelementptr i8, ptr %i.fy, i64 2
  %i.gh = load i16, ptr %i.gg, align 2
  %i.gi = zext i16 %i.gh to i32
  %i.gj = mul nuw nsw i32 %i.gi, 18688
  %i.gk = udiv i32 %i.gj, 21845
  %i.gl = trunc nuw i32 %i.gk to i16
  %i.gm = add nuw i16 %i.gl, 4096
  %i.gn = getelementptr i8, ptr %i.gf, i64 2
  store i16 %i.gm, ptr %i.gn, align 2
  %i.go = getelementptr i8, ptr %i.fy, i64 4
  %i.gp = load i16, ptr %i.go, align 2
  %i.gq = zext i16 %i.gp to i32
  %i.gr = mul nuw nsw i32 %i.gq, 18688
  %i.gs = udiv i32 %i.gr, 21845
  %i.gt = trunc nuw i32 %i.gs to i16
  %i.gu = add nuw i16 %i.gt, 4096
  %i.gv = getelementptr i8, ptr %i.gf, i64 4
  store i16 %i.gu, ptr %i.gv, align 2
  %indvars.iv.next5.i.i = add nuw nsw i64 %indvars.iv4.i.i, 1 ; 2 uses
  %exitcond8.not.i.i = icmp eq i64 %indvars.iv.next5.i.i, %wide.trip.count7.i38.i
  br i1 %exitcond8.not.i.i, label %.loopexit.i, label %.lr.ph.split.us.i.i, !llvm.loop !170

.loopexit.i:                                      ; preds = %.lr.ph.split.us.i.i, %bb.ag
  %i.gw = getelementptr i8, ptr %i.j, i64 760
  %i.gx = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.gw, ptr noundef %i.fm) #11 ; 0 uses
  tail call void @drm_property_blob_put(ptr noundef %i.fm) #11
  br label %bb.ah

ilk_lut_limited_range.exit.thread.i:              ; preds = %ilk_lut_limited_range.exit.i, %.split.i, %bb.ae, %bb.ac, %ilk_limited_range.exit.i.i, %bb.ab, %.thread.i.i
  %i.gy = getelementptr i8, ptr %i.j, i64 760
  %i.gz = load ptr, ptr %i.v, align 8
  %i.ha = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.gy, ptr noundef %i.gz) #11 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %ilk_lut_limited_range.exit.thread.i, %.loopexit.i
  %i.hb = getelementptr i8, ptr %i.j, i64 752     ; 3 uses
  %i.hc = getelementptr i8, ptr %i.j, i64 352
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.hb, ptr noundef %i.hd) #11 ; 0 uses
  %i.hf = load i8, ptr %i.bz, align 1, !range !13, !noundef !14
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.ai, label %glk_assign_luts.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.hh = load ptr, ptr %i.hb, align 8
  %.not32.i = icmp eq ptr %i.hh, null
  br i1 %.not32.i, label %bb.aj, label %glk_assign_luts.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.hi = getelementptr i8, ptr %i.cm, i64 704
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.hb, ptr noundef %i.hj) #11 ; 0 uses
  br label %glk_assign_luts.exit.thread

glk_assign_luts.exit:                             ; preds = %ilk_lut_limited_range.exit.thread41.i, %bb.x
  %.2.i.in.in = phi ptr [ %i.da, %bb.x ], [ %i.fm, %ilk_lut_limited_range.exit.thread41.i ]
  %.2.i.in = ptrtoint ptr %.2.i.in.in to i64
  %.2.i = trunc i64 %.2.i.in to i32               ; 2 uses
  %.not58 = icmp eq i32 %.2.i, 0
  br i1 %.not58, label %glk_assign_luts.exit.thread, label %bb.ao

glk_assign_luts.exit.thread:                      ; preds = %bb.ah, %bb.ai, %bb.aj, %.loopexit47.i, %glk_assign_luts.exit
  tail call fastcc void @ilk_assign_csc(ptr noundef %i.j) #14, !srcloc !171
  %i.hl = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i76 = icmp eq ptr %i.hl, null
  br i1 %.not.i76, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %glk_assign_luts.exit.thread
  %i.hm = tail call ptr @__drm_to_display(ptr noundef nonnull %i.hl) #11
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %glk_assign_luts.exit.thread
  %i.hn = phi ptr [ %i.hm, %bb.ak ], [ null, %glk_assign_luts.exit.thread ]
  %.val.i77 = load ptr, ptr %i.e, align 8
  %.val11.i = load i32, ptr %i.f, align 8
  %i.ho = zext i32 %.val11.i to i64
  %i.hp = getelementptr [56 x i8], ptr %.val.i77, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8            ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hn, i64 1168
  %i.ht = load i16, ptr %i.hs, align 8
  %i.hu = icmp ugt i16 %i.ht, 29
  br i1 %i.hu, label %intel_can_preload_luts.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hv = getelementptr i8, ptr %i.hr, i64 760
  %i.hw = load ptr, ptr %i.hv, align 8
  %.not9.i = icmp eq ptr %i.hw, null
  br i1 %.not9.i, label %bb.an, label %intel_can_preload_luts.exit

bb.an:                                            ; preds = %bb.am
  %i.hx = getelementptr i8, ptr %i.hr, i64 752
  %i.hy = load ptr, ptr %i.hx, align 8
  %.not10.i = icmp eq ptr %i.hy, null
  %i.hz = zext i1 %.not10.i to i8
  br label %intel_can_preload_luts.exit

intel_can_preload_luts.exit:                      ; preds = %bb.al, %bb.am, %bb.an
  %.0.i78 = phi i8 [ 0, %bb.al ], [ 0, %bb.am ], [ %i.hz, %bb.an ]
  %i.ia = getelementptr i8, ptr %i.j, i64 851
  store i8 %.0.i78, ptr %i.ia, align 1
  br label %bb.ao

bb.ao:                                            ; preds = %glk_assign_luts.exit, %glk_gamma_mode.exit, %glk_check_luts.exit, %intel_can_preload_luts.exit, %__drm_to_dev.exit62, %__drm_to_dev.exit
  %.0 = phi i32 [ 0, %intel_can_preload_luts.exit ], [ -22, %__drm_to_dev.exit ], [ -22, %__drm_to_dev.exit62 ], [ %i.ao, %glk_check_luts.exit ], [ %i.ci, %glk_gamma_mode.exit ], [ %.2.i, %glk_assign_luts.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skl_color_commit_noarm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 1289
  %i.b = load i8, ptr %i.a, align 1, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %ilk_load_csc_matrix.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4401
  %i.e = load i8, ptr %i.d, align 1, !range !13, !noundef !14
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %ilk_load_csc_matrix.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr i8, ptr %1, i64 768
  tail call fastcc void @ilk_update_pipe_csc(ptr noundef %0, ptr noundef %i.g, ptr noundef readonly %i.h) #14, !srcloc !172
  br label %ilk_load_csc_matrix.exit

ilk_load_csc_matrix.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skl_color_commit_arm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #11
  %.pre = load ptr, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 1664     ; 5 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %1, i64 736
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %1, i64 1289
  %i.k = load i8, ptr %i.j, align 1, !range !13, !noundef !14
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %ilk_load_csc_matrix.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %1, i64 4401
  %i.n = load i8, ptr %i.m, align 1, !range !13, !noundef !14
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %ilk_load_csc_matrix.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %1, i64 768
  tail call fastcc void @ilk_update_pipe_csc(ptr noundef %0, ptr noundef %i.d, ptr noundef readonly %i.p) #14, !srcloc !172
  br label %ilk_load_csc_matrix.exit

ilk_load_csc_matrix.exit:                         ; preds = %bb.e, %bb.d, %bb.c
  %i.q = getelementptr i8, ptr %1, i64 4400
  %i.r = load i8, ptr %i.q, align 8, !range !13, !noundef !14
  %i.s = zext nneg i8 %i.r to i32
  %i.t = shl nuw i32 %i.s, 31
  %spec.select = or i32 %i.t, %i.i
  %i.u = getelementptr i8, ptr %1, i64 4401
  %i.v = load i8, ptr %i.u, align 1, !range !13, !noundef !14
  %i.w = zext nneg i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 30
  %.1 = or i32 %spec.select, %i.x                 ; 3 uses
  %i.y = shl i32 %i.g, 12
  %i.z = add i32 %i.y, 458804                     ; 5 uses
  %.not.i30 = icmp eq ptr %0, null
  br i1 %.not.i30, label %bb.f, label %bb.p

bb.f:                                             ; preds = %ilk_load_csc_matrix.exit
  %i.aa = zext i32 %.1 to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i [label %arch_test_bit.exit.i.i.i], !srcloc !29

arch_test_bit.exit.i.i.i:                         ; preds = %bb.f
  %i.ab = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #12, !srcloc !30
  %i.ac = zext i32 %i.ab to i64
  %i.ad = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ac) #12, !srcloc !31 ; 2 uses
  %i.ae = icmp ult i8 %i.ad, 2
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = trunc nuw i8 %i.ad to i1
  br i1 %i.af, label %bb.g, label %trace_i915_reg_rw.exit.i

bb.g:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.ag = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ag, ptr elementtype(i64) %i.ag) #12, !srcloc !32
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !33
  %i.ah = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.aj, i1 noundef zeroext true, i32 %i.z, i64 noundef range(i64 0, 4294967296) %i.aa, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !34
end_hunk_0
begin_hunk_1_@ivb_color_check:bb.a
  br i1 %.not45.i, label %bb.an, label %bb.ai, !prof !15

bb.ai:                                            ; preds = %bb.ah
  %i.ds = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not.i60.i = icmp eq ptr %i.ds, null
  br i1 %.not.i60.i, label %__drm_to_dev.exit61.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  br label %__drm_to_dev.exit61.i

__drm_to_dev.exit61.i:                            ; preds = %bb.aj, %bb.ai
  %i.dv = phi ptr [ %i.du, %bb.aj ], [ null, %bb.ai ]
  %i.dw = tail call ptr @dev_driver_string(ptr noundef %i.dv) #11 ; 0 uses
  %i.dx = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 2693, i32 2321, i64 16) #12, !srcloc !201
  %i.dy = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not.i68.i = icmp eq ptr %i.dy, null
  br i1 %.not.i68.i, label %__drm_to_dev.exit69.i, label %bb.ak

bb.ak:                                            ; preds = %__drm_to_dev.exit61.i
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  br label %__drm_to_dev.exit69.i

__drm_to_dev.exit69.i:                            ; preds = %bb.ak, %__drm_to_dev.exit61.i
  %i.eb = phi ptr [ %i.ea, %bb.ak ], [ null, %__drm_to_dev.exit61.i ]
  %i.ec = tail call ptr @dev_driver_string(ptr noundef %i.eb) #11
  %i.ed = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not.i70.i = icmp eq ptr %i.ed, null
  br i1 %.not.i70.i, label %__drm_to_dev.exit71.i, label %bb.al

bb.al:                                            ; preds = %__drm_to_dev.exit69.i
  %i.ee = getelementptr i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  br label %__drm_to_dev.exit71.i

__drm_to_dev.exit71.i:                            ; preds = %bb.al, %__drm_to_dev.exit69.i
  %i.eg = phi ptr [ %i.ef, %bb.al ], [ null, %__drm_to_dev.exit69.i ] ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 80
  %i.ei = load ptr, ptr %i.eh, align 8            ; 2 uses
  %.not.i72.i = icmp eq ptr %i.ei, null
  br i1 %.not.i72.i, label %bb.am, label %dev_name.exit75.i

bb.am:                                            ; preds = %__drm_to_dev.exit71.i
  %.val.i74.i = load ptr, ptr %i.eg, align 8
  br label %dev_name.exit75.i

dev_name.exit75.i:                                ; preds = %bb.am, %__drm_to_dev.exit71.i
  %.0.i73.i = phi ptr [ %.val.i74.i, %bb.am ], [ %i.ei, %__drm_to_dev.exit71.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.dx, ptr noundef %i.ec, ptr noundef %.0.i73.i, ptr noundef nonnull @.str.32) #11
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !202
  br label %bb.an

bb.an:                                            ; preds = %dev_name.exit75.i, %bb.ah
  %i.ej = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.val48.i = load ptr, ptr %i.cs, align 8
  %i.ek = getelementptr i8, ptr %i.ej, i64 72
  %.val.i76.i = load i64, ptr %i.ek, align 8
  %i.el = tail call ptr @drm_property_create_blob(ptr noundef %.val48.i, i64 noundef 4096, ptr noundef null) #11 ; 6 uses
  %i.em = icmp ugt ptr %i.el, inttoptr (i64 -4096 to ptr)
  br i1 %i.em, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.en = lshr i64 %.val.i76.i, 3
  %i.eo = trunc i64 %i.en to i32
  %i.ep = getelementptr i8, ptr %i.ej, i64 80
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %i.er = getelementptr i8, ptr %i.el, i64 80
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %i.et = add i32 %i.eo, -1                       ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i, %bb.ao
  %indvars.iv.i.i = phi i64 [ 0, %bb.ao ], [ %indvars.iv.next.i.i.1, %.lr.ph.split.i.i ] ; 4 uses
  %i.eu = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.ev = mul i32 %i.et, %i.eu
  %i.ew = sdiv i32 %i.ev, 511
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr [8 x i8], ptr %i.eq, i64 %i.ex
  %i.ez = getelementptr [8 x i8], ptr %i.es, i64 %indvars.iv.i.i
  %i.fa = load i64, ptr %i.ey, align 2
  store i64 %i.fa, ptr %i.ez, align 2
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fb = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.fc = mul i32 %i.et, %i.fb
  %i.fd = sdiv i32 %i.fc, 511
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr [8 x i8], ptr %i.eq, i64 %i.fe
  %i.fg = getelementptr [8 x i8], ptr %i.es, i64 %indvars.iv.next.i.i
  %i.fh = load i64, ptr %i.ff, align 2
  store i64 %i.fh, ptr %i.fg, align 2
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 512
  br i1 %exitcond.not.i.i.1, label %create_resized_lut.exit.i, label %.lr.ph.split.i.i, !llvm.loop !170

bb.ap:                                            ; preds = %bb.an
  %i.fi = ptrtoint ptr %i.el to i64
  %i.fj = trunc i64 %i.fi to i32
  br label %ivb_assign_luts.exit

create_resized_lut.exit.i:                        ; preds = %.lr.ph.split.i.i
  %i.fk = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.fl = load ptr, ptr %i.j, align 8
  %i.fm = load ptr, ptr %i.fl, align 8            ; 2 uses
  %.not.i77.i = icmp eq ptr %i.fm, null
  br i1 %.not.i77.i, label %.thread.i.i, label %bb.aq

bb.aq:                                            ; preds = %create_resized_lut.exit.i
  %i.fn = tail call ptr @__drm_to_display(ptr noundef nonnull %i.fm) #11 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.j, align 8
  %.pre15.i.i = load ptr, ptr %.pre.i.i, align 8  ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %.pre15.i.i, null
  br i1 %.not.i.i.i74, label %.thread.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fo = tail call ptr @__drm_to_display(ptr noundef nonnull %.pre15.i.i) #11
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ar, %bb.aq, %create_resized_lut.exit.i
  %i.fp = phi ptr [ %i.fn, %bb.ar ], [ %i.fn, %bb.aq ], [ null, %create_resized_lut.exit.i ]
  %i.fq = phi ptr [ %i.fo, %bb.ar ], [ null, %bb.aq ], [ null, %create_resized_lut.exit.i ] ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 1168
  %i.fs = load i16, ptr %i.fr, align 8
  %i.ft = add i16 %i.fs, -11
  %or.cond.i.i.i = icmp ult i16 %i.ft, -4
  br i1 %or.cond.i.i.i, label %ilk_lut_limited_range.exit.i, label %bb.as

bb.as:                                            ; preds = %.thread.i.i
  %i.fu = getelementptr i8, ptr %i.fq, i64 8
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = and i64 %i.fv, 524288
  %.not9.i.i.i = icmp eq i64 %i.fw, 0
  br i1 %.not9.i.i.i, label %ilk_limited_range.exit.i.i, label %ilk_lut_limited_range.exit.i

ilk_limited_range.exit.i.i:                       ; preds = %bb.as
  %i.fx = getelementptr i8, ptr %i.j, i64 884
  %i.fy = load i8, ptr %i.fx, align 4, !range !13, !noundef !14
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.at, label %ilk_lut_limited_range.exit.i

bb.at:                                            ; preds = %ilk_limited_range.exit.i.i
  %i.ga = load i8, ptr %i.af, align 4
  %.not11.i.i = icmp eq i8 %i.ga, 0
  br i1 %.not11.i.i, label %bb.au, label %ilk_lut_limited_range.exit.i

bb.au:                                            ; preds = %bb.at
  %i.gb = getelementptr i8, ptr %i.fp, i64 1168
  %i.gc = load i16, ptr %i.gb, align 8
  %i.gd = icmp eq i16 %i.gc, 10
  %i.ge = load ptr, ptr %i.v, align 8             ; 2 uses
  br i1 %i.gd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gf = icmp ne ptr %i.ge, null
  br label %ilk_lut_limited_range.exit.i

bb.aw:                                            ; preds = %bb.au
  %.not12.i.i = icmp eq ptr %i.ge, null
  br i1 %.not12.i.i, label %ilk_lut_limited_range.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gg = load ptr, ptr %i.bz, align 8
  %.not13.i.i = icmp eq ptr %i.gg, null
  br i1 %.not13.i.i, label %bb.ay, label %ilk_lut_limited_range.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.gh = getelementptr i8, ptr %i.j, i64 368
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = icmp ne ptr %i.gi, null
  br label %ilk_lut_limited_range.exit.i

ilk_lut_limited_range.exit.i:                     ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.at, %ilk_limited_range.exit.i.i, %bb.as, %.thread.i.i
  %.0.i78.i = phi i1 [ false, %ilk_limited_range.exit.i.i ], [ %i.gf, %bb.av ], [ false, %bb.at ], [ false, %bb.aw ], [ true, %bb.ax ], [ %i.gj, %bb.ay ], [ false, %.thread.i.i ], [ false, %bb.as ]
  %.val47.i = load ptr, ptr %i.cs, align 8
  %i.gk = getelementptr i8, ptr %i.fk, i64 72
  %.val.i79.i = load i64, ptr %i.gk, align 8
  %i.gl = tail call ptr @drm_property_create_blob(ptr noundef %.val47.i, i64 noundef 4096, ptr noundef null) #11 ; 5 uses
  %i.gm = icmp ugt ptr %i.gl, inttoptr (i64 -4096 to ptr)
  br i1 %i.gm, label %create_resized_lut.exit84.i, label %bb.az

bb.az:                                            ; preds = %ilk_lut_limited_range.exit.i
  %i.gn = lshr i64 %.val.i79.i, 3
  %i.go = trunc i64 %i.gn to i32
  %i.gp = getelementptr i8, ptr %i.fk, i64 80
  %i.gq = load ptr, ptr %i.gp, align 8            ; 3 uses
  %i.gr = getelementptr i8, ptr %i.gl, i64 80
  %i.gs = load ptr, ptr %i.gr, align 8            ; 3 uses
  %i.gt = add i32 %i.go, -1                       ; 3 uses
  br i1 %.0.i78.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i80.i

.lr.ph.split.us.i.i:                              ; preds = %bb.az, %.lr.ph.split.us.i.i
  %indvars.iv4.i.i = phi i64 [ %indvars.iv.next5.i.i, %.lr.ph.split.us.i.i ], [ 0, %bb.az ] ; 3 uses
  %i.gu = trunc nuw nsw i64 %indvars.iv4.i.i to i32
  %i.gv = mul i32 %i.gt, %i.gu
  %i.gw = sdiv i32 %i.gv, 511
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr [8 x i8], ptr %i.gq, i64 %i.gx ; 3 uses
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = zext i16 %i.gz to i32
  %i.hb = mul nuw nsw i32 %i.ha, 18688
  %i.hc = udiv i32 %i.hb, 21845
  %i.hd = trunc nuw i32 %i.hc to i16
  %i.he = add nuw i16 %i.hd, 4096
  %i.hf = getelementptr [8 x i8], ptr %i.gs, i64 %indvars.iv4.i.i ; 3 uses
  store i16 %i.he, ptr %i.hf, align 2
  %i.hg = getelementptr i8, ptr %i.gy, i64 2
  %i.hh = load i16, ptr %i.hg, align 2
  %i.hi = zext i16 %i.hh to i32
  %i.hj = mul nuw nsw i32 %i.hi, 18688
  %i.hk = udiv i32 %i.hj, 21845
  %i.hl = trunc nuw i32 %i.hk to i16
  %i.hm = add nuw i16 %i.hl, 4096
  %i.hn = getelementptr i8, ptr %i.hf, i64 2
  store i16 %i.hm, ptr %i.hn, align 2
  %i.ho = getelementptr i8, ptr %i.gy, i64 4
  %i.hp = load i16, ptr %i.ho, align 2
  %i.hq = zext i16 %i.hp to i32
  %i.hr = mul nuw nsw i32 %i.hq, 18688
  %i.hs = udiv i32 %i.hr, 21845
  %i.ht = trunc nuw i32 %i.hs to i16
  %i.hu = add nuw i16 %i.ht, 4096
  %i.hv = getelementptr i8, ptr %i.hf, i64 4
  store i16 %i.hu, ptr %i.hv, align 2
  %indvars.iv.next5.i.i = add nuw nsw i64 %indvars.iv4.i.i, 1 ; 2 uses
  %exitcond8.not.i.i = icmp eq i64 %indvars.iv.next5.i.i, 512
  br i1 %exitcond8.not.i.i, label %ivb_assign_luts.exit.thread, label %.lr.ph.split.us.i.i, !llvm.loop !170

.lr.ph.split.i80.i:                               ; preds = %bb.az, %.lr.ph.split.i80.i
  %indvars.iv.i81.i = phi i64 [ %indvars.iv.next.i82.i.1, %.lr.ph.split.i80.i ], [ 0, %bb.az ] ; 4 uses
  %i.hw = trunc nuw nsw i64 %indvars.iv.i81.i to i32
  %i.hx = mul i32 %i.gt, %i.hw
  %i.hy = sdiv i32 %i.hx, 511
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr [8 x i8], ptr %i.gq, i64 %i.hz
  %i.ib = getelementptr [8 x i8], ptr %i.gs, i64 %indvars.iv.i81.i
  %i.ic = load i64, ptr %i.ia, align 2
  store i64 %i.ic, ptr %i.ib, align 2
  %indvars.iv.next.i82.i = or disjoint i64 %indvars.iv.i81.i, 1 ; 2 uses
  %i.id = trunc nuw nsw i64 %indvars.iv.next.i82.i to i32
  %i.ie = mul i32 %i.gt, %i.id
  %i.if = sdiv i32 %i.ie, 511
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr [8 x i8], ptr %i.gq, i64 %i.ig
  %i.ii = getelementptr [8 x i8], ptr %i.gs, i64 %indvars.iv.next.i82.i
  %i.ij = load i64, ptr %i.ih, align 2
  store i64 %i.ij, ptr %i.ii, align 2
  %indvars.iv.next.i82.i.1 = add nuw nsw i64 %indvars.iv.i81.i, 2 ; 2 uses
  %exitcond.not.i83.i.1 = icmp eq i64 %indvars.iv.next.i82.i.1, 512
  br i1 %exitcond.not.i83.i.1, label %ivb_assign_luts.exit.thread, label %.lr.ph.split.i80.i, !llvm.loop !170

create_resized_lut.exit84.i:                      ; preds = %ilk_lut_limited_range.exit.i
  tail call void @drm_property_blob_put(ptr noundef %i.el) #11
  %i.ik = ptrtoint ptr %i.gl to i64
  %i.il = trunc i64 %i.ik to i32
  br label %ivb_assign_luts.exit

ivb_assign_luts.exit.thread:                      ; preds = %.lr.ph.split.i80.i, %.lr.ph.split.us.i.i
  %i.im = getelementptr i8, ptr %i.j, i64 752
  %i.in = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.im, ptr noundef %i.el) #11 ; 0 uses
  %i.io = getelementptr i8, ptr %i.j, i64 760
  %i.ip = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.io, ptr noundef %i.gl) #11 ; 0 uses
  tail call void @drm_property_blob_put(ptr noundef %i.el) #11
  tail call void @drm_property_blob_put(ptr noundef %i.gl) #11
  br label %bb.ba

ivb_assign_luts.exit:                             ; preds = %bb.aa, %bb.ap, %create_resized_lut.exit84.i
  %.0.i71 = phi i32 [ %i.cu, %bb.aa ], [ %i.fj, %bb.ap ], [ %i.il, %create_resized_lut.exit84.i ] ; 2 uses
  %.not55 = icmp eq i32 %.0.i71, 0
  br i1 %.not55, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %ivb_assign_luts.exit.thread, %ivb_assign_luts.exit
  tail call fastcc void @ilk_assign_csc(ptr noundef %i.j) #14, !srcloc !203
  %i.iq = tail call fastcc zeroext i1 @intel_can_preload_luts(ptr noundef %0, ptr noundef %1) #14, !srcloc !204
  %i.ir = getelementptr i8, ptr %i.j, i64 851
  %i.is = zext i1 %i.iq to i8
  store i8 %i.is, ptr %i.ir, align 1
  br label %bb.bb

bb.bb:                                            ; preds = %ivb_assign_luts.exit, %ivb_csc_mode.exit, %check_luts.exit, %bb.ba, %__drm_to_dev.exit60, %__drm_to_dev.exit58, %__drm_to_dev.exit
  %.0 = phi i32 [ 0, %bb.ba ], [ -22, %__drm_to_dev.exit ], [ -22, %__drm_to_dev.exit58 ], [ -22, %__drm_to_dev.exit60 ], [ %i.ae, %check_luts.exit ], [ %i.co, %ivb_csc_mode.exit ], [ %.0.i71, %ivb_assign_luts.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bdw_load_luts(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 760
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 752
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  %i.e = select i1 %.not, ptr %i.d, ptr %i.b      ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 3936       ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  switch i32 %i.g, label %bb.e [
    i32 0, label %bb.b
    i32 3, label %bb.c
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ilk_load_lut_8(ptr noundef %0, ptr noundef %i.e) #14, !srcloc !205
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 72
  %.val25 = load i64, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.d, i64 80
  %.val26 = load ptr, ptr %i.i, align 8
  tail call fastcc void @bdw_load_lut_10(ptr noundef %0, i64 %.val25, ptr %.val26, i32 noundef -2147483648) #14
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 1664
  %i.l = load i32, ptr %i.k, align 8
  %i.m = shl i32 %i.l, 11                         ; 3 uses
  %i.n = add i32 %i.m, 304160
  tail call fastcc void @ilk_lut_write(ptr noundef readonly %0, i32 %i.n, i32 noundef 65536) #14, !srcloc !124
  %i.o = add i32 %i.m, 304164
  tail call fastcc void @ilk_lut_write(ptr noundef readonly %0, i32 %i.o, i32 noundef 65536) #14, !srcloc !125
  %i.p = add i32 %i.m, 304168
  tail call fastcc void @ilk_lut_write(ptr noundef readonly %0, i32 %i.p, i32 noundef 65536) #14, !srcloc !126
  %i.q = getelementptr i8, ptr %i.b, i64 72
  %.val23 = load i64, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.b, i64 80
  %.val24 = load ptr, ptr %i.r, align 8
  tail call fastcc void @bdw_load_lut_10(ptr noundef %0, i64 %.val23, ptr %.val24, i32 noundef -2147483136) #14
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr i8, ptr %i.e, i64 72
  %.val = load i64, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %i.e, i64 80
  %.val22 = load ptr, ptr %i.t, align 8
  tail call fastcc void @bdw_load_lut_10(ptr noundef %0, i64 %.val, ptr %.val22, i32 noundef 0) #14
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 1664
  %i.w = load i32, ptr %i.v, align 8
  %i.x = shl i32 %i.w, 11                         ; 3 uses
  %i.y = add i32 %i.x, 304160
  tail call fastcc void @ilk_lut_write(ptr noundef readonly %0, i32 %i.y, i32 noundef 65536) #14, !srcloc !124
  %i.z = add i32 %i.x, 304164
  tail call fastcc void @ilk_lut_write(ptr noundef readonly %0, i32 %i.z, i32 noundef 65536) #14, !srcloc !125
  %i.aa = add i32 %i.x, 304168
  tail call fastcc void @ilk_lut_write(ptr noundef readonly %0, i32 %i.aa, i32 noundef 65536) #14, !srcloc !126
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ab = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.17, ptr nonnull @.str.3, i32 1590, i32 2321, i64 16) #12, !srcloc !206
  %i.ac = load i32, ptr %i.f, align 8
  %i.ad = zext i32 %i.ac to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ab, ptr noundef nonnull @.str.18, i64 noundef %i.ad) #11
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !207
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bdw_read_luts(ptr nofree noundef captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 3948
  %i.c = load i8, ptr %i.b, align 4
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 4400
  %i.e = load i8, ptr %i.d, align 8, !range !13, !noundef !14
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.thread31, label %bb.g

.thread31:                                        ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 3940
  %i.h = load i32, ptr %i.g, align 4
  %.fr30 = freeze i32 %i.h
  %i.i = and i32 %.fr30, 2
  %.not = icmp eq i32 %i.i, 0
  %i.j = getelementptr i8, ptr %0, i64 760        ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 752        ; 2 uses
  %spec.select = select i1 %.not, ptr %i.k, ptr %i.j
  br label %.thread29

.thread:                                          ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 760        ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 752
  br label %.thread29

.thread29:                                        ; preds = %.thread31, %.thread
  %i.n = phi ptr [ %i.l, %.thread ], [ %spec.select, %.thread31 ] ; 2 uses
  %i.o = phi ptr [ %i.l, %.thread ], [ %i.j, %.thread31 ]
  %i.p = phi ptr [ %i.m, %.thread ], [ %i.k, %.thread31 ]
  %i.q = getelementptr i8, ptr %0, i64 3936       ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  switch i32 %i.r, label %bb.f [
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %.thread29
  %i.s = tail call fastcc ptr @ilk_read_lut_8(ptr noundef %i.a) #14, !srcloc !208
  store ptr %i.s, ptr %i.n, align 8
  br label %bb.g

bb.d:                                             ; preds = %.thread29
  %i.t = tail call fastcc ptr @bdw_read_lut_10(ptr noundef %i.a, i32 noundef -2147483648) #14, !srcloc !209
  store ptr %i.t, ptr %i.p, align 8
  %i.u = tail call fastcc ptr @bdw_read_lut_10(ptr noundef %i.a, i32 noundef -2147483136) #14, !srcloc !210
  store ptr %i.u, ptr %i.o, align 8
  br label %bb.g

bb.e:                                             ; preds = %.thread29
  %i.v = tail call fastcc ptr @bdw_read_lut_10(ptr noundef %i.a, i32 noundef 0) #14, !srcloc !211
  store ptr %i.v, ptr %i.n, align 8
  br label %bb.g

bb.f:                                             ; preds = %.thread29
  %i.w = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.17, ptr nonnull @.str.3, i32 3728, i32 2321, i64 16) #12, !srcloc !212
end_hunk_1
begin_hunk_2_@ivb_lut_equal:bb.a
  %.not.i11 = icmp eq ptr %1, null                ; 3 uses
  %i.bo = icmp eq ptr %2, null
  %.not26.not.i12 = xor i1 %.not.i11, %i.bo
  %.not28.not.i13 = xor i1 %.not.i11, %i.bn
  %or.cond.not33.i14 = or i1 %.not26.not.i12, %.not28.not.i13 ; 2 uses
  %brmerge.i15 = or i1 %.not.i11, %or.cond.not33.i14
  %not.or.cond.not33.i16 = xor i1 %or.cond.not33.i14, true
  br i1 %brmerge.i15, label %intel_lut_equal.exit, label %bb.q

bb.q:                                             ; preds = %ivb_post_csc_lut_precision.exit
  %i.bp = getelementptr i8, ptr %1, i64 72
  %.val32.i17 = load i64, ptr %i.bp, align 8
  %i.bq = lshr i64 %.val32.i17, 3                 ; 2 uses
  %i.br = trunc i64 %i.bq to i32                  ; 3 uses
  %i.bs = getelementptr i8, ptr %2, i64 72
  %.val.i18 = load i64, ptr %i.bs, align 8
  %i.bt = lshr i64 %.val.i18, 3
  %i.bu = trunc i64 %i.bt to i32
  %.not29.i19 = icmp ne i32 %i.br, %i.bu
  %i.bv = icmp slt i32 %i.br, 0
  %or.cond31.i20 = or i1 %i.bv, %.not29.i19
  br i1 %or.cond31.i20, label %intel_lut_equal.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr i8, ptr %1, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr i8, ptr %2, i64 80
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = icmp eq i32 %i.br, 0
  br i1 %i.ca, label %intel_lut_equal.exit, label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %bb.r
  %i.cb = lshr i32 65535, %.0.i8
  %i.cc = zext nneg i32 %i.cb to i64              ; 3 uses
  %wide.trip.count.i.i22 = and i64 %i.bq, 2147483647
  br label %bb.t

bb.s:                                             ; preds = %err_check.exit.i.i26
  %indvars.iv.next.i.i28 = add nuw nsw i64 %indvars.iv.i.i23, 1 ; 2 uses
  %exitcond.not.i.i29 = icmp eq i64 %indvars.iv.next.i.i28, %wide.trip.count.i.i22
  br i1 %exitcond.not.i.i29, label %intel_lut_equal.exit, label %bb.t, !llvm.loop !59

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.i21
  %indvars.iv.i.i23 = phi i64 [ 0, %.lr.ph.i.i21 ], [ %indvars.iv.next.i.i28, %bb.s ] ; 3 uses
  %i.cd = getelementptr [8 x i8], ptr %i.bx, i64 %indvars.iv.i.i23 ; 3 uses
  %i.ce = getelementptr [8 x i8], ptr %i.bz, i64 %indvars.iv.i.i23 ; 3 uses
  %i.cf = load i16, ptr %i.ce, align 2
  %i.cg = zext i16 %i.cf to i64
  %i.ch = load i16, ptr %i.cd, align 2
  %i.ci = zext i16 %i.ch to i64
  %i.cj = sub nsw i64 %i.cg, %i.ci
  %i.ck = tail call i64 @llvm.abs.i64(i64 %i.cj, i1 true)
  %.not.i.i.i24 = icmp samesign ugt i64 %i.ck, %i.cc
  br i1 %.not.i.i.i24, label %intel_lut_equal.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr i8, ptr %i.ce, i64 4
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = zext i16 %i.cm to i64
  %i.co = getelementptr i8, ptr %i.cd, i64 4
  %i.cp = load i16, ptr %i.co, align 2
  %i.cq = zext i16 %i.cp to i64
  %i.cr = sub nsw i64 %i.cn, %i.cq
  %i.cs = tail call i64 @llvm.abs.i64(i64 %i.cr, i1 true)
  %.not20.i.i.i25 = icmp samesign ugt i64 %i.cs, %i.cc
  br i1 %.not20.i.i.i25, label %intel_lut_equal.exit, label %err_check.exit.i.i26

err_check.exit.i.i26:                             ; preds = %bb.u
  %i.ct = getelementptr i8, ptr %i.ce, i64 2
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = zext i16 %i.cu to i64
  %i.cw = getelementptr i8, ptr %i.cd, i64 2
  %i.cx = load i16, ptr %i.cw, align 2
  %i.cy = zext i16 %i.cx to i64
  %i.cz = sub nsw i64 %i.cv, %i.cy
  %i.da = tail call i64 @llvm.abs.i64(i64 %i.cz, i1 true)
  %.not.i.i27 = icmp samesign ugt i64 %i.da, %i.cc
  br i1 %.not.i.i27, label %intel_lut_equal.exit, label %bb.s

intel_lut_equal.exit:                             ; preds = %err_check.exit.i.i26, %bb.u, %bb.t, %bb.s, %err_check.exit.i.i, %bb.k, %bb.j, %bb.i, %bb.r, %bb.q, %ivb_post_csc_lut_precision.exit, %bb.h, %bb.g, %ivb_pre_csc_lut_precision.exit
  %.0 = phi i1 [ false, %bb.q ], [ false, %bb.g ], [ %not.or.cond.not33.i, %ivb_pre_csc_lut_precision.exit ], [ true, %bb.h ], [ %not.or.cond.not33.i16, %ivb_post_csc_lut_precision.exit ], [ true, %bb.r ], [ false, %bb.j ], [ false, %bb.k ], [ true, %bb.i ], [ false, %err_check.exit.i.i ], [ false, %bb.t ], [ false, %bb.u ], [ true, %bb.s ], [ false, %err_check.exit.i.i26 ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @ilk_assign_luts(ptr noundef %0) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #11 ; 3 uses
  %.pre = load ptr, ptr %0, align 8
  %.pre31 = load ptr, ptr %.pre, align 8          ; 2 uses
  %.not.i = icmp eq ptr %.pre31, null
  br i1 %.not.i, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__drm_to_display(ptr noundef nonnull %.pre31) #11 ; 2 uses
  %.pre.i = load ptr, ptr %0, align 8
  %.pre15.i = load ptr, ptr %.pre.i, align 8      ; 2 uses
  %.not.i.i = icmp eq ptr %.pre15.i, null
  br i1 %.not.i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @__drm_to_display(ptr noundef nonnull %.pre15.i) #11
  br label %.thread.i

.thread.i:                                        ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.f = phi ptr [ %i.c, %bb.d ], [ %i.c, %bb.c ], [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.g = phi ptr [ %i.d, %bb.d ], [ %i.d, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %i.h = phi ptr [ %i.e, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 1168
  %i.j = load i16, ptr %i.i, align 8
  %i.k = add i16 %i.j, -11
  %or.cond.i.i = icmp ult i16 %i.k, -4
  br i1 %or.cond.i.i, label %ilk_lut_limited_range.exit.thread, label %bb.e

bb.e:                                             ; preds = %.thread.i
  %i.l = getelementptr i8, ptr %i.h, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, 524288
  %.not9.i.i = icmp eq i64 %i.n, 0
  br i1 %.not9.i.i, label %ilk_limited_range.exit.i, label %ilk_lut_limited_range.exit.thread

ilk_limited_range.exit.i:                         ; preds = %bb.e
  %i.o = getelementptr i8, ptr %0, i64 884
  %i.p = load i8, ptr %i.o, align 4, !range !13, !noundef !14
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %ilk_lut_limited_range.exit.thread

bb.f:                                             ; preds = %ilk_limited_range.exit.i
  %i.r = getelementptr i8, ptr %0, i64 3948
  %i.s = load i8, ptr %i.r, align 4
  %.not11.i = icmp eq i8 %i.s, 0
  br i1 %.not11.i, label %bb.g, label %ilk_lut_limited_range.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.g, i64 1168
  %i.u = load i16, ptr %i.t, align 8
  %i.v = icmp eq i16 %i.u, 10
  %i.w = getelementptr i8, ptr %0, i64 360
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %.not30 = icmp eq ptr %i.x, null                ; 2 uses
  br i1 %i.v, label %ilk_lut_limited_range.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not30, label %ilk_lut_limited_range.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %0, i64 352
  %i.z = load ptr, ptr %i.y, align 8
  %.not13.i = icmp eq ptr %i.z, null
  br i1 %.not13.i, label %.split, label %ilk_lut_limited_range.exit.thread27

.split:                                           ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %0, i64 368
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not29 = icmp eq ptr %i.ab, null
  br i1 %.not29, label %ilk_lut_limited_range.exit.thread, label %ilk_lut_limited_range.exit.thread27

ilk_lut_limited_range.exit:                       ; preds = %bb.g
  br i1 %.not30, label %ilk_lut_limited_range.exit.thread, label %ilk_lut_limited_range.exit.thread27

ilk_lut_limited_range.exit.thread27:              ; preds = %bb.i, %.split, %ilk_lut_limited_range.exit
  %i.ac = getelementptr i8, ptr %i.x, i64 72
  %.val = load i64, ptr %i.ac, align 8
  %i.ad = lshr i64 %.val, 3                       ; 3 uses
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %.val25 = load ptr, ptr %i.f, align 8
  %sext = shl i64 %i.ad, 32
  %i.af = ashr exact i64 %sext, 29
  %i.ag = tail call ptr @drm_property_create_blob(ptr noundef %.val25, i64 noundef %i.af, ptr noundef null) #11 ; 5 uses
  %i.ah = icmp ugt ptr %i.ag, inttoptr (i64 -4096 to ptr)
  br i1 %i.ah, label %create_resized_lut.exit, label %bb.j

bb.j:                                             ; preds = %ilk_lut_limited_range.exit.thread27
  %i.ai = getelementptr i8, ptr %i.x, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.ag, i64 80
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp sgt i32 %i.ae, 0
  br i1 %i.am, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1                   ; 2 uses
  %wide.trip.count7.i = and i64 %i.ad, 2147483647
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.i
  %indvars.iv4.i = phi i64 [ %indvars.iv.next5.i, %.lr.ph.split.us.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv4.i to i32
  %i.ap = mul i32 %i.an, %i.ao
  %i.aq = sdiv i32 %i.ap, %i.an
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [8 x i8], ptr %i.aj, i64 %i.ar ; 3 uses
  %i.at = load i16, ptr %i.as, align 2
  %i.au = zext i16 %i.at to i32
  %i.av = mul nuw nsw i32 %i.au, 18688
  %i.aw = udiv i32 %i.av, 21845
  %i.ax = trunc nuw i32 %i.aw to i16
  %i.ay = add nuw i16 %i.ax, 4096
  %i.az = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv4.i ; 3 uses
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = getelementptr i8, ptr %i.as, i64 2
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = zext i16 %i.bb to i32
  %i.bd = mul nuw nsw i32 %i.bc, 18688
  %i.be = udiv i32 %i.bd, 21845
  %i.bf = trunc nuw i32 %i.be to i16
  %i.bg = add nuw i16 %i.bf, 4096
  %i.bh = getelementptr i8, ptr %i.az, i64 2
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = getelementptr i8, ptr %i.as, i64 4
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = zext i16 %i.bj to i32
  %i.bl = mul nuw nsw i32 %i.bk, 18688
  %i.bm = udiv i32 %i.bl, 21845
  %i.bn = trunc nuw i32 %i.bm to i16
  %i.bo = add nuw i16 %i.bn, 4096
  %i.bp = getelementptr i8, ptr %i.az, i64 4
  store i16 %i.bo, ptr %i.bp, align 2
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1 ; 2 uses
  %exitcond8.not.i = icmp eq i64 %indvars.iv.next5.i, %wide.trip.count7.i
  br i1 %exitcond8.not.i, label %.loopexit, label %.lr.ph.split.us.i, !llvm.loop !170

create_resized_lut.exit:                          ; preds = %ilk_lut_limited_range.exit.thread27
  %i.bq = ptrtoint ptr %i.ag to i64
  %i.br = trunc i64 %i.bq to i32
  br label %bb.n

.loopexit:                                        ; preds = %.lr.ph.split.us.i, %bb.j
  %i.bs = getelementptr i8, ptr %0, i64 760
  %i.bt = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.bs, ptr noundef %i.ag) #11 ; 0 uses
  tail call void @drm_property_blob_put(ptr noundef %i.ag) #11
  %i.bu = getelementptr i8, ptr %0, i64 752
  %i.bv = getelementptr i8, ptr %0, i64 352
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.bu, ptr noundef %i.bw) #11 ; 0 uses
  br label %bb.n

ilk_lut_limited_range.exit.thread:                ; preds = %bb.e, %.thread.i, %bb.h, %bb.f, %ilk_limited_range.exit.i, %.split, %ilk_lut_limited_range.exit
  %i.by = getelementptr i8, ptr %0, i64 352
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not23 = icmp eq ptr %i.bz, null
  br i1 %.not23, label %bb.k, label %bb.l

bb.k:                                             ; preds = %ilk_lut_limited_range.exit.thread
  %i.ca = getelementptr i8, ptr %0, i64 3940
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = and i32 %i.cb, 2
  %.not24 = icmp eq i32 %i.cc, 0
  br i1 %.not24, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %ilk_lut_limited_range.exit.thread
  %i.cd = getelementptr i8, ptr %0, i64 752
  %i.ce = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.cd, ptr noundef %i.bz) #11 ; 0 uses
  %i.cf = getelementptr i8, ptr %0, i64 760
  %i.cg = getelementptr i8, ptr %0, i64 360
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.cf, ptr noundef %i.ch) #11 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cj = getelementptr i8, ptr %0, i64 752
  %i.ck = getelementptr i8, ptr %0, i64 360
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.cj, ptr noundef %i.cl) #11 ; 0 uses
  %i.cn = getelementptr i8, ptr %0, i64 760
  %i.co = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.cn, ptr noundef null) #11 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %create_resized_lut.exit, %.loopexit
  %.1 = phi i32 [ 0, %.loopexit ], [ %i.br, %create_resized_lut.exit ], [ 0, %bb.m ], [ 0, %bb.l ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ilk_color_commit_noarm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4401
  %i.b = load i8, ptr %i.a, align 1, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %ilk_load_csc_matrix.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr i8, ptr %1, i64 768
  tail call fastcc void @ilk_update_pipe_csc(ptr noundef %0, ptr noundef %i.d, ptr noundef readonly %i.e) #14, !srcloc !172
  br label %ilk_load_csc_matrix.exit

ilk_load_csc_matrix.exit:                         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hsw_color_commit_arm(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.e = getelementptr i8, ptr %i.a, i64 1664     ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = shl i32 %i.f, 11
  %i.h = add i32 %i.g, 304256                     ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 3936
  %i.j = load i32, ptr %i.i, align 8
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.h) #11
  %.val.i = load ptr, ptr %i.d, align 8
  %i.k = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #11 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 176
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef %i.k, i32 %i.h, i32 noundef %i.j, i1 noundef zeroext true) #11, !inline_history !214
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %i.h) #11
  %i.n = load i32, ptr %i.e, align 8
  %i.o = shl i32 %i.n, 8
  %i.p = add i32 %i.o, 299048                     ; 4 uses
  %i.q = getelementptr i8, ptr %1, i64 3940
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = zext i32 %i.r to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i [label %arch_test_bit.exit.i.i.i], !srcloc !29

arch_test_bit.exit.i.i.i:                         ; preds = %bb.c
  %i.t = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #12, !srcloc !30
  %i.u = zext i32 %i.t to i64
  %i.v = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.u) #12, !srcloc !31 ; 2 uses
  %i.w = icmp ult i8 %i.v, 2
  tail call void @llvm.assume(i1 %i.w)
  %i.x = trunc nuw i8 %i.v to i1
  br i1 %i.x, label %bb.d, label %trace_i915_reg_rw.exit.i

bb.d:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.y = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.y, ptr elementtype(i64) %i.y) #12, !srcloc !32
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !33
  %i.z = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ab, i1 noundef zeroext true, i32 %i.p, i64 noundef range(i64 0, 4294967296) %i.s, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !34
  %i.ad = getelementptr i8, ptr %i.y, i64 8       ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ad, ptr elementtype(i64) %i.ad) #12, !srcloc !35
  br label %trace_i915_reg_rw.exit.i

trace_i915_reg_rw.exit.i:                         ; preds = %bb.f, %arch_test_bit.exit.i.i.i, %bb.c
  %.val.i12 = load ptr, ptr %i.d, align 8
  %i.ae = tail call ptr @to_intel_uncore(ptr noundef %.val.i12) #11 ; 2 uses
  %i.af = icmp ult i32 %i.p, 262144
  br i1 %i.af, label %bb.g, label %intel_de_write_fw.exit

bb.g:                                             ; preds = %trace_i915_reg_rw.exit.i
  %i.ag = getelementptr i8, ptr %i.ae, i64 36
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add i32 %i.ah, %i.p
  br label %intel_de_write_fw.exit

intel_de_write_fw.exit:                           ; preds = %trace_i915_reg_rw.exit.i, %bb.g
  %.0.i.i = phi i32 [ %i.ai, %bb.g ], [ %i.p, %trace_i915_reg_rw.exit.i ]
  %i.aj = load ptr, ptr %i.ae, align 8
  %i.ak = zext i32 %.0.i.i to i64
  %i.al = getelementptr i8, ptr %i.aj, i64 %i.ak
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.r, ptr elementtype(i32) %i.al) #12, !srcloc !36
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ilk_read_csc(ptr nofree noundef captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4401
  %i.b = load i8, ptr %i.a, align 1, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr i8, ptr %0, i64 768
  tail call fastcc void @ilk_read_pipe_csc(ptr noundef %i.d, ptr noundef %i.e) #14, !srcloc !215
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hsw_get_config(ptr nofree noundef captures(none) initializes((3936, 3944)) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %hsw_read_gamma_mode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #11
  br label %hsw_read_gamma_mode.exit

hsw_read_gamma_mode.exit:                         ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.e = getelementptr i8, ptr %i.a, i64 1664     ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = shl i32 %i.f, 11
  %i.h = add i32 %i.g, 304256                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.h) #11
end_hunk_2
