Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_border?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0_@lv_draw_sw_border:bb.a
  %i.df = load i32, ptr %8, align 8, !tbaa !33
  store i32 %i.df, ptr %7, align 4, !tbaa !33
  %i.dg = load i32, ptr %i.cd, align 8, !tbaa !34
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !34
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.cr, ptr %i.di, align 4, !tbaa !31
  %i.dj = add nsw i32 %i.cs, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !32
  call void @lv_draw_sw_blend(ptr noundef nonnull %0, ptr noundef nonnull %4) #5
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %or.cond11.i = xor i1 %i.cw, %or.cond7.i
  br i1 %or.cond11.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dl = load i32, ptr %8, align 8, !tbaa !33
  store i32 %i.dl, ptr %7, align 4, !tbaa !33
  %i.dm = load i32, ptr %i.cd, align 8, !tbaa !34
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !34
  %i.do = load i32, ptr %i.w, align 4, !tbaa !32
  %i.dp = add nsw i32 %i.do, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !31
  %i.dr = load i32, ptr %i.v, align 4, !tbaa !32
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !32
  call void @lv_draw_sw_blend(ptr noundef nonnull %0, ptr noundef nonnull %4) #5
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dt = load i32, ptr %11, align 16, !tbaa !33  ; 2 uses
  %i.du = load i32, ptr %i.u, align 8, !tbaa !34
  %i.dv = icmp sge i32 %i.dt, %i.du
  %or.cond13.i = and i1 %i.cz, %i.dv
  %or.cond15.i = select i1 %or.cond13.i, i1 %i.dc, i1 false
  br i1 %or.cond15.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dw = load i32, ptr %2, align 4, !tbaa !33
  br label %.sink.split.i

bb.v:                                             ; preds = %bb.t
  br i1 %i.cz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = load i32, ptr %2, align 4, !tbaa !33
  store i32 %i.dx, ptr %7, align 4, !tbaa !33
  %i.dy = add nsw i32 %i.dt, -1
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !34
  %i.ea = load i32, ptr %i.ce, align 4, !tbaa !31
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !31
  %i.ec = load i32, ptr %i.cl, align 4, !tbaa !32
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !32
  call void @lv_draw_sw_blend(ptr noundef nonnull %0, ptr noundef nonnull %4) #5
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.dc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ee = load i32, ptr %i.u, align 8, !tbaa !34
  %i.ef = add nsw i32 %i.ee, 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.y, %bb.u
  %.sink.i = phi i32 [ %i.ef, %bb.y ], [ %i.dw, %bb.u ]
  store i32 %.sink.i, ptr %7, align 4, !tbaa !33
  %i.eg = load i32, ptr %i.t, align 4, !tbaa !34
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !34
  %i.ei = load i32, ptr %i.ce, align 4, !tbaa !31
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !31
  %i.ek = load i32, ptr %i.cl, align 4, !tbaa !32
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !32
  call void @lv_draw_sw_blend(ptr noundef nonnull %0, ptr noundef nonnull %4) #5
  br label %bb.z

bb.z:                                             ; preds = %.sink.split.i, %bb.x
  %i.em = load i32, ptr %3, align 4, !tbaa !33
  store i32 %i.em, ptr %7, align 4, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !34 ; 2 uses
  br i1 %or.cond7.i, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !34
  %i.eq = load i32, ptr %i.s, align 4, !tbaa !31
  %i.er = load i32, ptr %i.r, align 4, !tbaa !31
  %i.es = sub nsw i32 %i.eq, %i.er
  %.194.i = call i32 @llvm.smax.i32(i32 range(i32 -2147483648, 1073741824) %spec.select, i32 %i.es) ; 2 uses
  %i.et = icmp sgt i32 %.194.i, 0
  br i1 %i.et, label %.lr.ph212.i.a, label %.loopexit.i

.lr.ph212.i.a:                                    ; preds = %bb.aa
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ag, %.lr.ph212.i.a
  %.0175211.i = phi i32 [ 0, %.lr.ph212.i.a ], [ %i.fk, %bb.ag ] ; 3 uses
  %i.ey = load i32, ptr %i.r, align 4, !tbaa !31
  %i.ez = add nsw i32 %i.ey, %.0175211.i          ; 5 uses
  %i.fa = load i32, ptr %i.v, align 4, !tbaa !32
  %i.fb = sub nsw i32 %i.fa, %.0175211.i          ; 4 uses
  %i.fc = load i32, ptr %i.eu, align 4, !tbaa !31
  %i.fd = icmp slt i32 %i.ez, %i.fc
  %i.fe = load i32, ptr %i.ev, align 4
  %i.ff = icmp sgt i32 %i.fb, %i.fe
  %or.cond197.i = select i1 %i.fd, i1 %i.ff, i1 false
  br i1 %or.cond197.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @lv_memset(ptr noundef %i.bw, i8 noundef zeroext -1, i64 noundef %i.bv) #5
  %i.fg = load i32, ptr %7, align 4, !tbaa !33
  %i.fh = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.bw, i32 noundef %i.fg, i32 noundef %i.ez, i32 noundef %i.bu) #5
  store i32 %i.fh, ptr %i.de, align 8, !tbaa !38
  %i.fi = load i32, ptr %i.eu, align 4, !tbaa !31
  %.not.i54 = icmp slt i32 %i.ez, %i.fi
  br i1 %.not.i54, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.ez, ptr %i.ew, align 4, !tbaa !31
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !32
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %4) #5
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fj = load i32, ptr %i.ev, align 4, !tbaa !32
  %.not191.i = icmp sgt i32 %i.fb, %i.fj
  br i1 %.not191.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 %i.fb, ptr %i.ew, align 4, !tbaa !31
  store i32 %i.fb, ptr %i.ex, align 4, !tbaa !32
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %4) #5
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ab
  %i.fk = add nuw nsw i32 %.0175211.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.fk, %.194.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.ab, !llvm.loop !8

bb.ah:                                            ; preds = %bb.z
  %i.fl = load i32, ptr %8, align 8, !tbaa !33
  %i.fm = add nsw i32 %i.fl, -1
  %i.fn = call i32 @llvm.smin.i32(i32 %i.eo, i32 %i.fm)
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !34
  %i.fp = call i32 @lv_area_get_width(ptr noundef nonnull %7) #5 ; 5 uses
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %bb.ai, label %.loopexit200.i

bb.ai:                                            ; preds = %bb.ah
  %or.cond17.i = or i1 %i.ct, %i.cz
  br i1 %or.cond17.i, label %bb.aj, label %.loopexit201.i

bb.aj:                                            ; preds = %bb.ai
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !31 ; 2 uses
  %i.ft = load i32, ptr %i.ce, align 4, !tbaa !31
  %i.fu = icmp slt i32 %i.fs, %i.ft
  br i1 %i.fu, label %.lr.ph.i, label %.loopexit201.i

.lr.ph.i:                                         ; preds = %bb.aj
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.fx = zext nneg i32 %i.fp to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i
  %.1202.i = phi i32 [ %i.fs, %.lr.ph.i ], [ %i.ga, %bb.ak ] ; 4 uses
  store i32 %.1202.i, ptr %i.fv, align 4, !tbaa !31
  store i32 %.1202.i, ptr %i.fw, align 4, !tbaa !32
  call void @lv_memset(ptr noundef %i.bw, i8 noundef zeroext -1, i64 noundef %i.fx) #5
  %i.fy = load i32, ptr %7, align 4, !tbaa !33
  %i.fz = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.bw, i32 noundef %i.fy, i32 noundef %.1202.i, i32 noundef %i.fp) #5
  store i32 %i.fz, ptr %i.de, align 8, !tbaa !38
  call void @lv_draw_sw_blend(ptr noundef nonnull %0, ptr noundef nonnull %4) #5
  %i.ga = add nsw i32 %.1202.i, 1                 ; 2 uses
  %i.gb = load i32, ptr %i.ce, align 4, !tbaa !31
  %i.gc = icmp slt i32 %i.ga, %i.gb
  br i1 %i.gc, label %bb.ak, label %.loopexit201.i, !llvm.loop !9

.loopexit201.i:                                   ; preds = %bb.ak, %bb.aj, %bb.ai
  %or.cond19.i = select i1 %i.cz, i1 true, i1 %i.cw
  br i1 %or.cond19.i, label %bb.al, label %.loopexit200.i

bb.al:                                            ; preds = %.loopexit201.i
  %i.gd = load i32, ptr %i.cl, align 4, !tbaa !32
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %.2203.i = add nsw i32 %i.gd, 1                 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !32
  %.not192204.i = icmp sgt i32 %.2203.i, %i.gf
  br i1 %.not192204.i, label %.loopexit200.i, label %.lr.ph205.i

.lr.ph205.i:                                      ; preds = %bb.al
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.gi = zext nneg i32 %i.fp to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph205.i
  %.2.in204.i = phi i32 [ %.2203.i, %.lr.ph205.i ], [ %.2.i, %bb.am ] ; 4 uses
  store i32 %.2.in204.i, ptr %i.gg, align 4, !tbaa !31
  store i32 %.2.in204.i, ptr %i.gh, align 4, !tbaa !32
  call void @lv_memset(ptr noundef %i.bw, i8 noundef zeroext -1, i64 noundef %i.gi) #5
  %i.gj = load i32, ptr %7, align 4, !tbaa !33
  %i.gk = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.bw, i32 noundef %i.gj, i32 noundef %.2.in204.i, i32 noundef %i.fp) #5
  store i32 %i.gk, ptr %i.de, align 8, !tbaa !38
  call void @lv_draw_sw_blend(ptr noundef nonnull %0, ptr noundef nonnull %4) #5
  %.2.i = add nsw i32 %.2.in204.i, 1              ; 2 uses
  %i.gl = load i32, ptr %i.ge, align 4, !tbaa !32
  %.not192.i = icmp sgt i32 %.2.i, %i.gl
  br i1 %.not192.i, label %.loopexit200.i, label %bb.am, !llvm.loop !10

.loopexit200.i:                                   ; preds = %bb.am, %bb.al, %.loopexit201.i, %bb.ah
  %i.gm = load i32, ptr %3, align 4, !tbaa !33
  %i.gn = load i32, ptr %i.cd, align 8, !tbaa !34
  %i.go = add nsw i32 %i.gn, 1
  %i.gp = call i32 @llvm.smax.i32(i32 %i.gm, i32 %i.go)
  store i32 %i.gp, ptr %7, align 4, !tbaa !33
  %i.gq = load i32, ptr %i.en, align 4, !tbaa !34
  store i32 %i.gq, ptr %i.fo, align 4, !tbaa !34
  %i.gr = call i32 @lv_area_get_width(ptr noundef nonnull %7) #5 ; 5 uses
  %i.gs = icmp sgt i32 %i.gr, 0
  br i1 %i.gs, label %bb.an, label %.loopexit.i

bb.an:                                            ; preds = %.loopexit200.i
  %or.cond21.i = or i1 %i.ct, %i.dc
  br i1 %or.cond21.i, label %bb.ao, label %.loopexit199.i

bb.ao:                                            ; preds = %bb.an
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !31 ; 2 uses
  %i.gv = load i32, ptr %i.ce, align 4, !tbaa !31
  %i.gw = icmp slt i32 %i.gu, %i.gv
  br i1 %i.gw, label %.lr.ph207.i, label %.loopexit199.i

.lr.ph207.i:                                      ; preds = %bb.ao
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.gz = zext nneg i32 %i.gr to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph207.i
  %.3206.i = phi i32 [ %i.gu, %.lr.ph207.i ], [ %i.hc, %bb.ap ] ; 4 uses
  store i32 %.3206.i, ptr %i.gx, align 4, !tbaa !31
  store i32 %.3206.i, ptr %i.gy, align 4, !tbaa !32
  call void @lv_memset(ptr noundef %i.bw, i8 noundef zeroext -1, i64 noundef %i.gz) #5
  %i.ha = load i32, ptr %7, align 4, !tbaa !33
  %i.hb = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.bw, i32 noundef %i.ha, i32 noundef %.3206.i, i32 noundef %i.gr) #5
  store i32 %i.hb, ptr %i.de, align 8, !tbaa !38
  call void @lv_draw_sw_blend(ptr noundef nonnull %0, ptr noundef nonnull %4) #5
  %i.hc = add nsw i32 %.3206.i, 1                 ; 2 uses
  %i.hd = load i32, ptr %i.ce, align 4, !tbaa !31
  %i.he = icmp slt i32 %i.hc, %i.hd
  br i1 %i.he, label %bb.ap, label %.loopexit199.i, !llvm.loop !11

.loopexit199.i:                                   ; preds = %bb.ap, %bb.ao, %bb.an
  %or.cond23.i = select i1 %i.dc, i1 true, i1 %i.cw
  br i1 %or.cond23.i, label %bb.aq, label %.loopexit.i

bb.aq:                                            ; preds = %.loopexit199.i
  %i.hf = load i32, ptr %i.cl, align 4, !tbaa !32
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %.4209.i = add nsw i32 %i.hf, 1                 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !32
  %.not193210.i = icmp sgt i32 %.4209.i, %i.hh
  br i1 %.not193210.i, label %.loopexit.i, label %.lr.ph210.i

.lr.ph210.i:                                      ; preds = %bb.aq
  %i.hi = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.hj = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.hk = zext nneg i32 %i.gr to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.lr.ph210.i
  %.4.in209.i = phi i32 [ %.4209.i, %.lr.ph210.i ], [ %.4.i, %bb.ar ] ; 4 uses
  store i32 %.4.in209.i, ptr %i.hi, align 4, !tbaa !31
  store i32 %.4.in209.i, ptr %i.hj, align 4, !tbaa !32
  call void @lv_memset(ptr noundef %i.bw, i8 noundef zeroext -1, i64 noundef %i.hk) #5
  %i.hl = load i32, ptr %7, align 4, !tbaa !33
  %i.hm = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.bw, i32 noundef %i.hl, i32 noundef %.4.in209.i, i32 noundef %i.gr) #5
  store i32 %i.hm, ptr %i.de, align 8, !tbaa !38
  call void @lv_draw_sw_blend(ptr noundef nonnull %0, ptr noundef nonnull %4) #5
  %.4.i = add nsw i32 %.4.in209.i, 1              ; 2 uses
  %i.hn = load i32, ptr %i.hg, align 4, !tbaa !32
  %.not193.i = icmp sgt i32 %.4.i, %i.hn
  br i1 %.not193.i, label %.loopexit.i, label %bb.ar, !llvm.loop !12

.loopexit.i:                                      ; preds = %bb.ar, %bb.ag, %bb.aq, %.loopexit199.i, %.loopexit200.i, %bb.aa
  call void @lv_draw_sw_mask_free_param(ptr noundef nonnull %5) #5
  br i1 %i.by, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.loopexit.i
  call void @lv_draw_sw_mask_free_param(ptr noundef nonnull %6) #5
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.loopexit.i
  call void @lv_free(ptr noundef %i.bw) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %draw_border_complex.exit

draw_border_complex.exit:                         ; preds = %bb.m, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.au

bb.au:                                            ; preds = %draw_border_complex.exit, %draw_border_simple.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  br label %bb.av

bb.av:                                            ; preds = %bb.c, %bb.b, %bb.a, %bb.au
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_height(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare zeroext i1 @lv_area_intersect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @lv_draw_sw_mask_radius_init(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @lv_draw_sw_blend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

declare i32 @lv_draw_sw_mask_apply(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_draw_sw_mask_free_param(ptr noundef) local_unnamed_addr #2

declare void @lv_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !39}
!9 = distinct !{!9, !39}
!10 = distinct !{!10, !39}
!11 = distinct !{!11, !39}
!12 = distinct !{!12, !39}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS9_lv_obj_t", !13, i64 0}
!15 = !{!"p1 _ZTS11_lv_layer_t", !13, i64 0}
!16 = !{!"short", !4, i64 0}
!17 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!18 = !{!"long", !4, i64 0}
!19 = !{!"", !14, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !15, i64 24, !16, i64 32, !16, i64 34, !17, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !18, i64 48, !13, i64 56}
!20 = !{!"", !19, i64 0, !5, i64 64, !17, i64 68, !5, i64 72, !4, i64 76, !5, i64 77}
!21 = !{!20, !4, i64 76}
!22 = !{!20, !5, i64 72}
!23 = !{!20, !5, i64 64}
!24 = !{!5, !5, i64 0}
!25 = !{!"p1 omnipotent char", !13, i64 0}
!26 = !{!"_lv_draw_sw_blend_dsc_t", !13, i64 0, !13, i64 8, !5, i64 16, !5, i64 20, !13, i64 24, !4, i64 32, !17, i64 33, !25, i64 40, !5, i64 48, !13, i64 56, !5, i64 64, !5, i64 68}
!27 = !{!26, !13, i64 0}
!28 = !{!4, !4, i64 0}
!29 = !{!26, !4, i64 32}
!30 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!31 = !{!30, !5, i64 4}
!32 = !{!30, !5, i64 12}
!33 = !{!30, !5, i64 0}
!34 = !{!30, !5, i64 8}
!35 = !{!26, !25, i64 40}
!36 = !{!13, !13, i64 0}
!37 = !{!26, !13, i64 56}
!38 = !{!26, !5, i64 48}
!39 = !{!"llvm.loop.mustprogress"}
end_hunk_0
