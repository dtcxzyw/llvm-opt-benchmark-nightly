Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_grid?download=true
inline.NumInlined: 81
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@grid_update:bb.a
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph141.i.i
  %i.bz = add nsw i32 %i.bx, -536870811           ; 2 uses
  %i.ca = mul nsw i32 %i.bz, %.092139.i.i
  %i.cb = sdiv i32 %.2138.i.i, 2
  %i.cc = add nsw i32 %i.ca, %i.cb
  %i.cd = sdiv i32 %i.cc, %.2138.i.i              ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv151.i.i
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !33
  %i.cf = sub i32 %.2138.i.i, %i.bz
  %i.cg = sub nsw i32 %.092139.i.i, %i.cd
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph141.i.i
  %.3.i.i = phi i32 [ %i.cf, %bb.r ], [ %.2138.i.i, %.lr.ph141.i.i ] ; 2 uses
  %.193.i.i = phi i32 [ %i.cg, %bb.r ], [ %.092139.i.i, %.lr.ph141.i.i ]
  %indvars.iv.next152.i.i = add nuw nsw i64 %indvars.iv151.i.i, 1 ; 2 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.next152.i.i, %i.bv
  %i.ci = icmp ne i32 %.3.i.i, 0
  %i.cj = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %i.cj, label %.lr.ph141.i.i, label %._crit_edge142.i.i, !llvm.loop !44

._crit_edge142.i.i:                               ; preds = %bb.s, %._crit_edge134.i.i
  br i1 %i.d, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge142.i.i
  tail call void @lv_free(ptr noundef nonnull %.1107.i.i) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge142.i.i
  %i.ck = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -91) #8 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null                 ; 2 uses
  br i1 %i.cl, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cm = tail call ptr @lv_obj_get_parent(ptr noundef %0) #8
  %i.cn = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.cm, i32 noundef 0, i8 noundef zeroext -91) #8 ; 2 uses
  %.not.not.i54.i = icmp eq ptr %i.cn, null
  br i1 %.not.not.i54.i, label %calc.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -86) #8
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -85) #8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = shl i64 %i.cr, 32                       ; 2 uses
  %sext.i55.i = add i64 %i.cs, 4294967296
  %i.ct = ashr exact i64 %sext.i55.i, 30
  %i.cu = tail call ptr @lv_malloc(i64 noundef %i.ct) #8 ; 3 uses
  %sext122.i.i = shl i64 %i.cp, 32
  %i.cv = ashr exact i64 %sext122.i.i, 30
  %i.cw = getelementptr inbounds i8, ptr %i.cn, i64 %i.cv
  %i.cx = ashr exact i64 %i.cs, 30                ; 2 uses
  %i.cy = tail call ptr @lv_memcpy(ptr noundef %i.cu, ptr noundef nonnull %i.cw, i64 noundef %i.cx) #8 ; 0 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cx
  store i32 536870911, ptr %i.cz, align 4, !tbaa !33
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.1108.i.i = phi ptr [ %i.cu, %bb.w ], [ %i.ck, %bb.u ] ; 5 uses
  %i.da = tail call i32 @lv_obj_get_content_width(ptr noundef %0) #8
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.pre81.i = phi i32 [ 0, %bb.x ], [ %i.de, %bb.y ] ; 7 uses
  %i.db = zext i32 %.pre81.i to i64               ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.1108.i.i, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !33
  %.not.i.i36.i = icmp eq i32 %i.dd, 536870911
  %i.de = add i32 %.pre81.i, 1
  br i1 %.not.i.i36.i, label %count_tracks.exit.i37.i, label %bb.y, !llvm.loop !34

count_tracks.exit.i37.i:                          ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i32 %.pre81.i, ptr %i.df, align 8, !tbaa !45
  %i.dg = shl nuw nsw i64 %i.db, 2                ; 2 uses
  %i.dh = tail call ptr @lv_malloc(i64 noundef %i.dg) #8 ; 22 uses
  store ptr %i.dh, ptr %3, align 8, !tbaa !46
  %i.di = tail call ptr @lv_malloc(i64 noundef %i.dg) #8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !47
  %.not.i38.i = icmp eq i32 %.pre81.i, 0
  br i1 %.not.i38.i, label %._crit_edge135.i.i, label %.lr.ph130.i.i.preheader

.lr.ph130.i.i.preheader:                          ; preds = %count_tracks.exit.i37.i
  %.pre66 = zext i32 %.pre81.i to i64
  br label %.lr.ph130.i.i

.lr.ph130.i.i:                                    ; preds = %.lr.ph130.i.i.preheader, %.lr.ph130.i.i._crit_edge
  %indvars.iv.i39.i = phi i64 [ %indvars.iv.next.i40.i, %.lr.ph130.i.i._crit_edge ], [ 0, %.lr.ph130.i.i.preheader ] ; 4 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.1108.i.i, i64 %indvars.iv.i39.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !33
  %i.dm = icmp eq i32 %i.dl, 536870810
  br i1 %i.dm, label %.preheader125.i.i, label %.lr.ph130.i.i._crit_edge

.preheader125.i.i:                                ; preds = %.lr.ph130.i.i
  %i.dn = tail call i32 @lv_obj_get_child_count(ptr noundef %0) #8
  %.not144.i48.i = icmp eq i32 %i.dn, 0
  br i1 %.not144.i48.i, label %._crit_edge.thread.i52.i, label %.lr.ph.i49.i

.lr.ph.i49.i:                                     ; preds = %.preheader125.i.i, %bb.ad
  %.099127.i.i = phi i32 [ %i.dz, %bb.ad ], [ 0, %.preheader125.i.i ] ; 2 uses
  %.0100126.i.i = phi i32 [ %.3103.i.i, %bb.ad ], [ -536870911, %.preheader125.i.i ] ; 5 uses
  %i.do = tail call ptr @lv_obj_get_child(ptr noundef %0, i32 noundef %.099127.i.i) #8 ; 5 uses
  %i.dp = tail call zeroext i1 @lv_obj_has_flag_any(ptr noundef %i.do, i32 noundef 393217) #8
  br i1 %i.dp, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i49.i
  %i.dq = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.do, i32 noundef 0, i8 noundef zeroext -85) #8
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = and i64 %i.dr, 4294967295
  %.not117.i50.i = icmp eq i64 %i.ds, 1
  br i1 %.not117.i50.i, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dt = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.do, i32 noundef 0, i8 noundef zeroext -86) #8
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = and i64 %i.du, 4294967295
  %.not118.i.i = icmp eq i64 %indvars.iv.i39.i, %i.dv
  br i1 %.not118.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dw = tail call i32 @lv_obj_get_width(ptr noundef %i.do) #8
  %i.dx = icmp sgt i32 %.0100126.i.i, %i.dw
  br i1 %i.dx, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dy = tail call i32 @lv_obj_get_width(ptr noundef %i.do) #8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %.lr.ph.i49.i
  %.3103.i.i = phi i32 [ %.0100126.i.i, %.lr.ph.i49.i ], [ %.0100126.i.i, %bb.z ], [ %.0100126.i.i, %bb.aa ], [ %i.dy, %bb.ac ], [ %.0100126.i.i, %bb.ab ] ; 3 uses
  %i.dz = add nuw i32 %.099127.i.i, 1             ; 2 uses
  %i.ea = tail call i32 @lv_obj_get_child_count(ptr noundef %0) #8
  %i.eb = icmp ult i32 %i.dz, %i.ea
  br i1 %i.eb, label %.lr.ph.i49.i, label %._crit_edge.i51.i, !llvm.loop !48

._crit_edge.i51.i:                                ; preds = %bb.ad
  %i.ec = icmp sgt i32 %.3103.i.i, -1
  br i1 %i.ec, label %.sink.split.i53.i, label %._crit_edge.thread.i52.i

._crit_edge.thread.i52.i:                         ; preds = %._crit_edge.i51.i, %.preheader125.i.i
  br label %.sink.split.i53.i

.sink.split.i53.i:                                ; preds = %._crit_edge.thread.i52.i, %._crit_edge.i51.i
  %.3103.lcssa.sink.i.i = phi i32 [ 0, %._crit_edge.thread.i52.i ], [ %.3103.i.i, %._crit_edge.i51.i ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.i39.i
  store i32 %.3103.lcssa.sink.i.i, ptr %i.ed, align 4, !tbaa !33
  br label %.lr.ph130.i.i._crit_edge

.lr.ph130.i.i._crit_edge:                         ; preds = %.lr.ph130.i.i, %.sink.split.i53.i
  %.pre-phi = phi i64 [ %i.db, %.sink.split.i53.i ], [ %.pre66, %.lr.ph130.i.i ]
  %indvars.iv.next.i40.i = add nuw nsw i64 %indvars.iv.i39.i, 1 ; 2 uses
  %i.ee = icmp samesign ult i64 %indvars.iv.next.i40.i, %.pre-phi
  br i1 %i.ee, label %.lr.ph130.i.i, label %.lr.ph134.i.i, !llvm.loop !49

.lr.ph134.i.i:                                    ; preds = %.lr.ph130.i.i._crit_edge, %bb.ai
  %i.ef = phi i32 [ %i.er, %bb.ai ], [ %.pre81.i, %.lr.ph130.i.i._crit_edge ] ; 2 uses
  %i.eg = phi i32 [ %i.es, %bb.ai ], [ %.pre81.i, %.lr.ph130.i.i._crit_edge ] ; 2 uses
  %indvars.iv149.i.i = phi i64 [ %indvars.iv.next150.i.i, %bb.ai ], [ 0, %.lr.ph130.i.i._crit_edge ] ; 3 uses
  %.095133.i.i = phi i32 [ %.196.i.i, %bb.ai ], [ 0, %.lr.ph130.i.i._crit_edge ] ; 3 uses
  %.097132.i.i = phi i32 [ %.198.i.i, %bb.ai ], [ 0, %.lr.ph130.i.i._crit_edge ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.1108.i.i, i64 %indvars.iv149.i.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !33 ; 5 uses
  %i.ej = icmp sgt i32 %i.ei, 536870810
  br i1 %i.ej, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph134.i.i
  %i.ek = add i32 %.097132.i.i, -536870811
  %i.el = add i32 %i.ek, %i.ei
  br label %bb.ai

bb.af:                                            ; preds = %.lr.ph134.i.i
  %i.em = icmp eq i32 %i.ei, 536870810
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv149.i.i ; 2 uses
  br i1 %i.em, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !33
  %i.ep = add nsw i32 %i.eo, %.095133.i.i
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store i32 %i.ei, ptr %i.en, align 4, !tbaa !33
  %i.eq = add nsw i32 %i.ei, %.095133.i.i
  %.pre.i42.i = load i32, ptr %i.df, align 8, !tbaa !45 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.er = phi i32 [ %i.ef, %bb.ae ], [ %i.ef, %bb.ag ], [ %.pre.i42.i, %bb.ah ] ; 2 uses
  %i.es = phi i32 [ %i.eg, %bb.ae ], [ %i.eg, %bb.ag ], [ %.pre.i42.i, %bb.ah ] ; 2 uses
  %.198.i.i = phi i32 [ %i.el, %bb.ae ], [ %.097132.i.i, %bb.ag ], [ %.097132.i.i, %bb.ah ] ; 2 uses
  %.196.i.i = phi i32 [ %.095133.i.i, %bb.ae ], [ %i.ep, %bb.ag ], [ %i.eq, %bb.ah ] ; 2 uses
  %indvars.iv.next150.i.i = add nuw nsw i64 %indvars.iv149.i.i, 1 ; 2 uses
  %i.et = zext i32 %i.es to i64
  %i.eu = icmp samesign ult i64 %indvars.iv.next150.i.i, %i.et
  br i1 %i.eu, label %.lr.ph134.i.i, label %._crit_edge135.i.i, !llvm.loop !50

._crit_edge135.i.i:                               ; preds = %bb.ai, %count_tracks.exit.i37.i
  %i.ev = phi i32 [ 0, %count_tracks.exit.i37.i ], [ %i.er, %bb.ai ] ; 13 uses
  %.097.lcssa.i.i = phi i32 [ 0, %count_tracks.exit.i37.i ], [ %.198.i.i, %bb.ai ] ; 2 uses
  %.095.lcssa.i.i = phi i32 [ 0, %count_tracks.exit.i37.i ], [ %.196.i.i, %bb.ai ]
  %i.ew = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 30) #8
  %i.ex = icmp ne i32 %i.ev, 0                    ; 2 uses
  %i.ey = icmp ne i32 %.097.lcssa.i.i, 0
  %i.ez = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %i.ez, label %.lr.ph142.preheader.i.i, label %._crit_edge143.i.i

.lr.ph142.preheader.i.i:                          ; preds = %._crit_edge135.i.i
  %.neg124.i.i = sub i32 %i.da, %.095.lcssa.i.i
  %.neg146.i44.i = sub i32 1, %i.ev
  %i.fa = ptrtoint ptr %i.ew to i64
  %.sroa.0.0.extract.trunc.i.i45.i = trunc i64 %i.fa to i32
  %.neg147.i.i = mul i32 %.neg146.i44.i, %.sroa.0.0.extract.trunc.i.i45.i
  %i.fb = add i32 %.neg124.i.i, %.neg147.i.i
  %spec.store.select.i46.i = tail call i32 @llvm.smax.i32(i32 %i.fb, i32 0)
  %i.fc = load ptr, ptr %i.dj, align 8
  %i.fd = zext i32 %i.ev to i64
  br label %.lr.ph142.i.i

.lr.ph142.i.i:                                    ; preds = %bb.ak, %.lr.ph142.preheader.i.i
  %indvars.iv152.i.i = phi i64 [ 0, %.lr.ph142.preheader.i.i ], [ %indvars.iv.next153.i.i, %bb.ak ] ; 3 uses
  %.093140.i.i = phi i32 [ %spec.store.select.i46.i, %.lr.ph142.preheader.i.i ], [ %.194.i.i, %bb.ak ] ; 3 uses
  %.2139.i.i = phi i32 [ %.097.lcssa.i.i, %.lr.ph142.preheader.i.i ], [ %.3.i47.i, %bb.ak ] ; 4 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.1108.i.i, i64 %indvars.iv152.i.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !33 ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, 536870810
  br i1 %i.fg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph142.i.i
  %i.fh = add nsw i32 %i.ff, -536870811           ; 2 uses
  %i.fi = mul nsw i32 %i.fh, %.093140.i.i
  %i.fj = sdiv i32 %.2139.i.i, 2
  %i.fk = add nsw i32 %i.fi, %i.fj
  %i.fl = sdiv i32 %i.fk, %.2139.i.i              ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv152.i.i
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !33
  %i.fn = sub i32 %.2139.i.i, %i.fh
  %i.fo = sub nsw i32 %.093140.i.i, %i.fl
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph142.i.i
  %.3.i47.i = phi i32 [ %i.fn, %bb.aj ], [ %.2139.i.i, %.lr.ph142.i.i ] ; 2 uses
  %.194.i.i = phi i32 [ %i.fo, %bb.aj ], [ %.093140.i.i, %.lr.ph142.i.i ]
  %indvars.iv.next153.i.i = add nuw nsw i64 %indvars.iv152.i.i, 1 ; 2 uses
  %i.fp = icmp samesign ult i64 %indvars.iv.next153.i.i, %i.fd
  %i.fq = icmp ne i32 %.3.i47.i, 0
  %i.fr = select i1 %i.fp, i1 %i.fq, i1 false
  br i1 %i.fr, label %.lr.ph142.i.i, label %._crit_edge143.i.i, !llvm.loop !51

._crit_edge143.i.i:                               ; preds = %bb.ak, %._crit_edge135.i.i
  br i1 %i.cl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge143.i.i
  tail call void @lv_free(ptr noundef nonnull %.1108.i.i) #8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge143.i.i
  %i.fs = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 30) #8
  %i.ft = ptrtoint ptr %i.fs to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ft to i32 ; 2 uses
  %i.fu = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 29) #8
  %i.fv = ptrtoint ptr %i.fu to i64
  %.sroa.0.0.extract.trunc.i56.i = trunc i64 %i.fv to i32 ; 2 uses
  %i.fw = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -127) #8
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = and i64 %i.fx, 4294967295
  %i.fz = icmp eq i64 %i.fy, 1
  %i.ga = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 1) #8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 2) #8
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = and i64 %i.gb, 4294967295
  %i.gf = icmp eq i64 %i.ge, 1073741823
  br i1 %i.gf, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.gh = load i32, ptr %i.gg, align 2
  %i.gi = and i32 %i.gh, 2048
  %.not.i = icmp eq i32 %i.gi, 0
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gj = phi i1 [ false, %bb.am ], [ %.not.i, %bb.an ]
  %i.gk = tail call i32 @lv_obj_get_content_width(ptr noundef %0) #8 ; 9 uses
  %i.gl = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -88) #8
  %i.gm = load ptr, ptr %i.dj, align 8, !tbaa !47 ; 15 uses
  br i1 %i.gj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.dh, align 4, !tbaa !33
  br label %bb.ax

bb.aq:                                            ; preds = %bb.ao
  %i.gn = ptrtoint ptr %i.gl to i64
  %.sroa.0.0.extract.trunc.i.i60.i = trunc i64 %i.gn to i32 ; 2 uses
  %i.go = add i32 %.sroa.0.0.extract.trunc.i.i60.i, -4
  %or.cond3.i31 = icmp ult i32 %i.go, 3           ; 2 uses
  %i.gp = icmp eq i32 %i.ev, 1
  %.068.i = select i1 %or.cond3.i31, i32 0, i32 %.sroa.0.0.extract.trunc.i.i ; 7 uses
  %i.gq = and i1 %i.gp, %or.cond3.i31
  %.067.i = select i1 %i.gq, i32 1, i32 %.sroa.0.0.extract.trunc.i.i60.i
  %.not.i32 = icmp eq i32 %i.ev, 0
  br i1 %.not.i32, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.aq
  %wide.trip.count.i = zext i32 %i.ev to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %i.ev, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.068.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gv, %vector.body ]
  %vec.phi98 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gw, %vector.body ]
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %index ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load = load <4 x i32>, ptr %i.gr, align 4, !tbaa !33
  %wide.load99 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !33
  %i.gt = add <4 x i32> %vec.phi, %broadcast.splat
  %i.gu = add <4 x i32> %vec.phi98, %broadcast.splat
  %i.gv = add <4 x i32> %i.gt, %wide.load         ; 2 uses
  %i.gw = add <4 x i32> %i.gu, %wide.load99       ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gx = icmp eq i64 %index.next, %n.vec
  br i1 %i.gx, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.gw, %i.gv
  %i.gy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.06676.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.gy, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.06676.i = phi i32 [ %i.hc, %.lr.ph.i ], [ %.06676.i.ph, %.lr.ph.i.preheader ]
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv.i
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !33
  %i.hb = add i32 %.06676.i, %.068.i
  %i.hc = add i32 %i.hb, %i.ha                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.aq
  %.066.lcssa.i = phi i32 [ 0, %bb.aq ], [ %i.gy, %middle.block ], [ %i.hc, %.lr.ph.i ]
  %i.hd = sub nsw i32 %.066.lcssa.i, %.068.i      ; 5 uses
  switch i32 %.067.i, label %._crit_edge._crit_edge.i [
    i32 0, label %bb.ar
    i32 1, label %bb.as
    i32 2, label %bb.at
    i32 6, label %bb.au
    i32 5, label %bb.av
    i32 4, label %bb.aw
  ]

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i
  %.pre97.pre.i = load i32, ptr %i.dh, align 4, !tbaa !33
  br label %bb.ax

bb.ar:                                            ; preds = %._crit_edge.i
  store i32 0, ptr %i.dh, align 4, !tbaa !33
  br label %bb.ax

bb.as:                                            ; preds = %._crit_edge.i
  %i.he = sub nsw i32 %i.gk, %i.hd
  %i.hf = sdiv i32 %i.he, 2                       ; 2 uses
  store i32 %i.hf, ptr %i.dh, align 4, !tbaa !33
  br label %bb.ax

bb.at:                                            ; preds = %._crit_edge.i
  %i.hg = sub nsw i32 %i.gk, %i.hd                ; 2 uses
  store i32 %i.hg, ptr %i.dh, align 4, !tbaa !33
  br label %bb.ax

bb.au:                                            ; preds = %._crit_edge.i
  store i32 0, ptr %i.dh, align 4, !tbaa !33
  %i.hh = sub nsw i32 %i.gk, %i.hd
  %i.hi = add i32 %i.ev, -1
  %i.hj = sdiv i32 %i.hh, %i.hi
  br label %bb.ax

bb.av:                                            ; preds = %._crit_edge.i
  %i.hk = sub nsw i32 %i.gk, %i.hd
  %i.hl = sdiv i32 %i.hk, %i.ev                   ; 2 uses
  %i.hm = sdiv i32 %i.hl, 2                       ; 2 uses
  store i32 %i.hm, ptr %i.dh, align 4, !tbaa !33
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i
  %i.hn = sub nsw i32 %i.gk, %i.hd
  %i.ho = add i32 %i.ev, 1
  %i.hp = sdiv i32 %i.hn, %i.ho                   ; 3 uses
  store i32 %i.hp, ptr %i.dh, align 4, !tbaa !33
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %._crit_edge._crit_edge.i, %bb.ap
  %.pre97.i = phi i32 [ 0, %bb.ap ], [ %.pre97.pre.i, %._crit_edge._crit_edge.i ], [ 0, %bb.ar ], [ %i.hf, %bb.as ], [ %i.hg, %bb.at ], [ 0, %bb.au ], [ %i.hm, %bb.av ], [ %i.hp, %bb.aw ] ; 4 uses
  %.169.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i, %bb.ap ], [ %.068.i, %._crit_edge._crit_edge.i ], [ %.068.i, %bb.ar ], [ %.068.i, %bb.as ], [ %.068.i, %bb.at ], [ %i.hj, %bb.au ], [ %i.hl, %bb.av ], [ %i.hp, %bb.aw ] ; 5 uses
  %i.hq = add i32 %i.ev, -1                       ; 3 uses
  %.not85.i = icmp eq i32 %i.hq, 0
  br i1 %.not85.i, label %._crit_edge81.i, label %.lr.ph80.preheader.i

.lr.ph80.preheader.i:                             ; preds = %bb.ax
  %wide.trip.count90.i = zext i32 %i.hq to i64    ; 4 uses
  %xtraiter = and i64 %wide.trip.count90.i, 3     ; 3 uses
  %i.hr = icmp ult i32 %i.hq, 4
  br i1 %i.hr, label %.lr.ph80.i.epil.preheader, label %.lr.ph80.preheader.i.new

.lr.ph80.preheader.i.new:                         ; preds = %.lr.ph80.preheader.i
  %unroll_iter = and i64 %wide.trip.count90.i, 4294967292
  br label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %.lr.ph80.i, %.lr.ph80.preheader.i.new
  %i.hs = phi i32 [ %.pre97.i, %.lr.ph80.preheader.i.new ], [ %i.il, %.lr.ph80.i ]
  %indvars.iv87.i = phi i64 [ 0, %.lr.ph80.preheader.i.new ], [ %indvars.iv.next88.i.3, %.lr.ph80.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph80.preheader.i.new ], [ %niter.next.3, %.lr.ph80.i ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv87.i
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !33
  %i.hv = add i32 %i.hs, %.169.i
  %i.hw = add i32 %i.hv, %i.hu                    ; 2 uses
  %indvars.iv.next88.i = or disjoint i64 %indvars.iv87.i, 1 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next88.i
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !33
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv.next88.i
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !33
  %i.ia = add i32 %i.hw, %.169.i
  %i.ib = add i32 %i.ia, %i.hz                    ; 2 uses
  %indvars.iv.next88.i.1 = or disjoint i64 %indvars.iv87.i, 2 ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next88.i.1
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !33
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv.next88.i.1
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !33
  %i.if = add i32 %i.ib, %.169.i
  %i.ig = add i32 %i.if, %i.ie                    ; 2 uses
  %indvars.iv.next88.i.2 = or disjoint i64 %indvars.iv87.i, 3 ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next88.i.2
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !33
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv.next88.i.2
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !33
  %i.ik = add i32 %i.ig, %.169.i
  %i.il = add i32 %i.ik, %i.ij                    ; 3 uses
  %indvars.iv.next88.i.3 = add nuw nsw i64 %indvars.iv87.i, 4 ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next88.i.3
  store i32 %i.il, ptr %i.im, align 4, !tbaa !33
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge81.i.loopexit.unr-lcssa, label %.lr.ph80.i, !llvm.loop !56

._crit_edge81.i.loopexit.unr-lcssa:               ; preds = %.lr.ph80.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge81.i.loopexit, label %.lr.ph80.i.epil.preheader

.lr.ph80.i.epil.preheader:                        ; preds = %._crit_edge81.i.loopexit.unr-lcssa, %.lr.ph80.preheader.i
  %.epil.init = phi i32 [ %.pre97.i, %.lr.ph80.preheader.i ], [ %i.il, %._crit_edge81.i.loopexit.unr-lcssa ]
  %indvars.iv87.i.epil.init = phi i64 [ 0, %.lr.ph80.preheader.i ], [ %indvars.iv.next88.i.3, %._crit_edge81.i.loopexit.unr-lcssa ]
  %lcmp.mod144 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %.lr.ph80.i.epil

.lr.ph80.i.epil:                                  ; preds = %.lr.ph80.i.epil, %.lr.ph80.i.epil.preheader
  %i.in = phi i32 [ %.epil.init, %.lr.ph80.i.epil.preheader ], [ %i.ir, %.lr.ph80.i.epil ]
  %indvars.iv87.i.epil = phi i64 [ %indvars.iv87.i.epil.init, %.lr.ph80.i.epil.preheader ], [ %indvars.iv.next88.i.epil, %.lr.ph80.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph80.i.epil.preheader ], [ %epil.iter.next, %.lr.ph80.i.epil ]
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv87.i.epil
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !33
  %i.iq = add i32 %i.in, %.169.i
  %i.ir = add i32 %i.iq, %i.ip                    ; 2 uses
  %indvars.iv.next88.i.epil = add nuw nsw i64 %indvars.iv87.i.epil, 1 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next88.i.epil
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !33
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge81.i.loopexit, label %.lr.ph80.i.epil, !llvm.loop !57

._crit_edge81.i.loopexit:                         ; preds = %.lr.ph80.i.epil, %._crit_edge81.i.loopexit.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %wide.trip.count90.i
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !33
  br label %._crit_edge81.i

._crit_edge81.i:                                  ; preds = %._crit_edge81.i.loopexit, %bb.ax
  %i.it = phi i32 [ %.pre97.i, %bb.ax ], [ %.pre, %._crit_edge81.i.loopexit ]
  %.pre-phi.i = phi i64 [ 0, %bb.ax ], [ %wide.trip.count90.i, %._crit_edge81.i.loopexit ]
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %.pre-phi.i
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !33
  %or.cond.i33 = and i1 %i.fz, %i.ex
  br i1 %or.cond.i33, label %.lr.ph84.preheader.i, label %grid_align.exit

.lr.ph84.preheader.i:                             ; preds = %._crit_edge81.i
  %wide.trip.count95.i = zext i32 %i.ev to i64    ; 6 uses
  %min.iters.check102 = icmp ult i32 %i.ev, 8
  br i1 %min.iters.check102, label %.lr.ph84.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph84.preheader.i
  %i.iw = shl nuw nsw i64 %wide.trip.count95.i, 2 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dh, i64 %i.iw
  %scevgep100 = getelementptr i8, ptr %i.gm, i64 %i.iw
  %bound0 = icmp ult ptr %i.dh, %scevgep100
  %bound1 = icmp ult ptr %i.gm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph84.i.preheader, label %vector.ph103

vector.ph103:                                     ; preds = %vector.memcheck
  %n.vec104 = and i64 %wide.trip.count95.i, 4294967288 ; 3 uses
  %broadcast.splatinsert105 = insertelement <4 x i32> poison, i32 %i.gk, i64 0
  %broadcast.splat106 = shufflevector <4 x i32> %broadcast.splatinsert105, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph103
  %index108 = phi i64 [ 0, %vector.ph103 ], [ %index.next113, %vector.body107 ] ; 3 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index108 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 2 uses
  %wide.load109 = load <4 x i32>, ptr %i.ix, align 4, !tbaa !33, !alias.scope !59, !noalias !62
  %wide.load110 = load <4 x i32>, ptr %i.iy, align 4, !tbaa !33, !alias.scope !59, !noalias !62
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %index108 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load111 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !33, !alias.scope !62
  %wide.load112 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !33, !alias.scope !62
  %i.jb = add <4 x i32> %wide.load109, %wide.load111
  %i.jc = add <4 x i32> %wide.load110, %wide.load112
  %i.jd = sub <4 x i32> %broadcast.splat106, %i.jb
  %i.je = sub <4 x i32> %broadcast.splat106, %i.jc
  store <4 x i32> %i.jd, ptr %i.ix, align 4, !tbaa !33, !alias.scope !59, !noalias !62
  store <4 x i32> %i.je, ptr %i.iy, align 4, !tbaa !33, !alias.scope !59, !noalias !62
  %index.next113 = add nuw i64 %index108, 8       ; 2 uses
  %i.jf = icmp eq i64 %index.next113, %n.vec104
  br i1 %i.jf, label %middle.block114, label %vector.body107, !llvm.loop !64

middle.block114:                                  ; preds = %vector.body107
  %cmp.n115 = icmp eq i64 %n.vec104, %wide.trip.count95.i
  br i1 %cmp.n115, label %grid_align.exit, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph84.preheader.i, %middle.block114
  %indvars.iv92.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph84.preheader.i ], [ %n.vec104, %middle.block114 ] ; 5 uses
  %xtraiter145 = and i64 %wide.trip.count95.i, 1
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.lr.ph84.i.prol.loopexit, label %.lr.ph84.i.prol

.lr.ph84.i.prol:                                  ; preds = %.lr.ph84.i.preheader
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv92.i.ph ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !33
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv92.i.ph
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !33
  %i.jk = add i32 %i.jh, %i.jj
  %i.jl = sub i32 %i.gk, %i.jk
  store i32 %i.jl, ptr %i.jg, align 4, !tbaa !33
  %indvars.iv.next93.i.prol = or disjoint i64 %indvars.iv92.i.ph, 1
  br label %.lr.ph84.i.prol.loopexit

.lr.ph84.i.prol.loopexit:                         ; preds = %.lr.ph84.i.prol, %.lr.ph84.i.preheader
  %indvars.iv92.i.unr = phi i64 [ %indvars.iv92.i.ph, %.lr.ph84.i.preheader ], [ %indvars.iv.next93.i.prol, %.lr.ph84.i.prol ]
  %i.jm = add nsw i64 %wide.trip.count95.i, -1
  %i.jn = icmp eq i64 %indvars.iv92.i.ph, %i.jm
  br i1 %i.jn, label %grid_align.exit, label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.prol.loopexit, %.lr.ph84.i
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i.1, %.lr.ph84.i ], [ %indvars.iv92.i.unr, %.lr.ph84.i.prol.loopexit ] ; 4 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv92.i ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !33
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv92.i
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !33
  %i.js = add i32 %i.jp, %i.jr
  %i.jt = sub i32 %i.gk, %i.js
  store i32 %i.jt, ptr %i.jo, align 4, !tbaa !33
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next93.i ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !33
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv.next93.i
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !33
  %i.jy = add i32 %i.jv, %i.jx
  %i.jz = sub i32 %i.gk, %i.jy
  store i32 %i.jz, ptr %i.ju, align 4, !tbaa !33
  %indvars.iv.next93.i.1 = add nuw nsw i64 %indvars.iv92.i, 2 ; 2 uses
  %exitcond96.not.i.1 = icmp eq i64 %indvars.iv.next93.i.1, %wide.trip.count95.i
  br i1 %exitcond96.not.i.1, label %grid_align.exit, label %.lr.ph84.i, !llvm.loop !65

grid_align.exit:                                  ; preds = %.lr.ph84.i.prol.loopexit, %.lr.ph84.i, %middle.block114, %._crit_edge81.i
  %i.ka = sub i32 %i.it, %.pre97.i
  %i.kb = add i32 %i.ka, %i.iv
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.kb, ptr %i.kc, align 8, !tbaa !66
  %i.kd = and i64 %i.gd, 4294967295
  %i.ke = icmp eq i64 %i.kd, 1073741823
  br i1 %i.ke, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %grid_align.exit
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.kg = load i32, ptr %i.kf, align 2
  %i.kh = and i32 %i.kg, 1024
  %.not34.i = icmp eq i32 %i.kh, 0
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %grid_align.exit
  %i.ki = phi i1 [ false, %grid_align.exit ], [ %.not34.i, %bb.ay ]
  %i.kj = tail call i32 @lv_obj_get_content_height(ptr noundef %0) #8 ; 5 uses
  %i.kk = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -87) #8
  %i.kl = load i32, ptr %i.w, align 4, !tbaa !36  ; 8 uses
  %i.km = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 9 uses
  br i1 %i.ki, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.y, align 4, !tbaa !33
  br label %bb.bi

bb.bb:                                            ; preds = %bb.az
  %i.kn = ptrtoint ptr %i.kk to i64
  %.sroa.0.0.extract.trunc.i.i61.i = trunc i64 %i.kn to i32 ; 2 uses
  %i.ko = add i32 %.sroa.0.0.extract.trunc.i.i61.i, -4
  %or.cond3.i.i = icmp ult i32 %i.ko, 3           ; 2 uses
  %i.kp = icmp eq i32 %i.kl, 1
  %.068.i.i = select i1 %or.cond3.i.i, i32 0, i32 %.sroa.0.0.extract.trunc.i56.i ; 7 uses
  %i.kq = and i1 %i.kp, %or.cond3.i.i
  %.067.i.i = select i1 %i.kq, i32 1, i32 %.sroa.0.0.extract.trunc.i.i61.i
  %.not.i62.i = icmp eq i32 %i.kl, 0
  br i1 %.not.i62.i, label %._crit_edge.i66.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bb
  %wide.trip.count.i.i = zext i32 %i.kl to i64    ; 3 uses
  %min.iters.check118 = icmp ult i32 %i.kl, 8
  br i1 %min.iters.check118, label %.lr.ph.i63.i.preheader, label %vector.ph119

vector.ph119:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec120 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  %broadcast.splatinsert121 = insertelement <4 x i32> poison, i32 %.068.i.i, i64 0
  %broadcast.splat122 = shufflevector <4 x i32> %broadcast.splatinsert121, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph119
  %index124 = phi i64 [ 0, %vector.ph119 ], [ %index.next129, %vector.body123 ] ; 2 uses
  %vec.phi125 = phi <4 x i32> [ zeroinitializer, %vector.ph119 ], [ %i.kv, %vector.body123 ]
  %vec.phi126 = phi <4 x i32> [ zeroinitializer, %vector.ph119 ], [ %i.kw, %vector.body123 ]
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %index124 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %wide.load127 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !33
  %wide.load128 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !33
  %i.kt = add <4 x i32> %vec.phi125, %broadcast.splat122
  %i.ku = add <4 x i32> %vec.phi126, %broadcast.splat122
  %i.kv = add <4 x i32> %i.kt, %wide.load127      ; 2 uses
  %i.kw = add <4 x i32> %i.ku, %wide.load128      ; 2 uses
  %index.next129 = add nuw i64 %index124, 8       ; 2 uses
  %i.kx = icmp eq i64 %index.next129, %n.vec120
  br i1 %i.kx, label %middle.block130, label %vector.body123, !llvm.loop !67

middle.block130:                                  ; preds = %vector.body123
  %bin.rdx131 = add <4 x i32> %i.kw, %i.kv
  %i.ky = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx131) ; 2 uses
  %cmp.n132 = icmp eq i64 %n.vec120, %wide.trip.count.i.i
  br i1 %cmp.n132, label %._crit_edge.i66.i, label %.lr.ph.i63.i.preheader

.lr.ph.i63.i.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block130
  %indvars.iv.i64.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec120, %middle.block130 ]
  %.06676.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.ky, %middle.block130 ]
  br label %.lr.ph.i63.i

.lr.ph.i63.i:                                     ; preds = %.lr.ph.i63.i.preheader, %.lr.ph.i63.i
  %indvars.iv.i64.i = phi i64 [ %indvars.iv.next.i65.i, %.lr.ph.i63.i ], [ %indvars.iv.i64.i.ph, %.lr.ph.i63.i.preheader ] ; 2 uses
  %.06676.i.i = phi i32 [ %i.lc, %.lr.ph.i63.i ], [ %.06676.i.i.ph, %.lr.ph.i63.i.preheader ]
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv.i64.i
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !33
  %i.lb = add i32 %.06676.i.i, %.068.i.i
  %i.lc = add i32 %i.lb, %i.la                    ; 2 uses
  %indvars.iv.next.i65.i = add nuw nsw i64 %indvars.iv.i64.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i65.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i66.i, label %.lr.ph.i63.i, !llvm.loop !68

._crit_edge.i66.i:                                ; preds = %.lr.ph.i63.i, %middle.block130, %bb.bb
  %.066.lcssa.i.i = phi i32 [ 0, %bb.bb ], [ %i.ky, %middle.block130 ], [ %i.lc, %.lr.ph.i63.i ]
  %i.ld = sub nsw i32 %.066.lcssa.i.i, %.068.i.i  ; 5 uses
  switch i32 %.067.i.i, label %._crit_edge._crit_edge.i.i [
    i32 0, label %bb.bc
    i32 1, label %bb.bd
    i32 2, label %bb.be
    i32 6, label %bb.bf
    i32 5, label %bb.bg
    i32 4, label %bb.bh
  ]

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i66.i
  %.pre97.pre.i.i = load i32, ptr %i.y, align 4, !tbaa !33
  br label %bb.bi

bb.bc:                                            ; preds = %._crit_edge.i66.i
  store i32 0, ptr %i.y, align 4, !tbaa !33
  br label %bb.bi

bb.bd:                                            ; preds = %._crit_edge.i66.i
  %i.le = sub nsw i32 %i.kj, %i.ld
  %i.lf = sdiv i32 %i.le, 2                       ; 2 uses
  store i32 %i.lf, ptr %i.y, align 4, !tbaa !33
  br label %bb.bi

bb.be:                                            ; preds = %._crit_edge.i66.i
  %i.lg = sub nsw i32 %i.kj, %i.ld                ; 2 uses
  store i32 %i.lg, ptr %i.y, align 4, !tbaa !33
  br label %bb.bi

bb.bf:                                            ; preds = %._crit_edge.i66.i
  store i32 0, ptr %i.y, align 4, !tbaa !33
  %i.lh = sub nsw i32 %i.kj, %i.ld
  %i.li = add i32 %i.kl, -1
  %i.lj = sdiv i32 %i.lh, %i.li
  br label %bb.bi

bb.bg:                                            ; preds = %._crit_edge.i66.i
  %i.lk = sub nsw i32 %i.kj, %i.ld
  %i.ll = sdiv i32 %i.lk, %i.kl                   ; 2 uses
  %i.lm = sdiv i32 %i.ll, 2                       ; 2 uses
  store i32 %i.lm, ptr %i.y, align 4, !tbaa !33
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge.i66.i
  %i.ln = sub nsw i32 %i.kj, %i.ld
  %i.lo = add i32 %i.kl, 1
  %i.lp = sdiv i32 %i.ln, %i.lo                   ; 3 uses
  store i32 %i.lp, ptr %i.y, align 4, !tbaa !33
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %._crit_edge._crit_edge.i.i, %bb.ba
  %.pre97.i.i = phi i32 [ 0, %bb.ba ], [ %.pre97.pre.i.i, %._crit_edge._crit_edge.i.i ], [ 0, %bb.bc ], [ %i.lf, %bb.bd ], [ %i.lg, %bb.be ], [ 0, %bb.bf ], [ %i.lm, %bb.bg ], [ %i.lp, %bb.bh ] ; 4 uses
  %.169.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i56.i, %bb.ba ], [ %.068.i.i, %._crit_edge._crit_edge.i.i ], [ %.068.i.i, %bb.bc ], [ %.068.i.i, %bb.bd ], [ %.068.i.i, %bb.be ], [ %i.lj, %bb.bf ], [ %i.ll, %bb.bg ], [ %i.lp, %bb.bh ] ; 5 uses
  %i.lq = add i32 %i.kl, -1                       ; 3 uses
  %.not85.i.i = icmp eq i32 %i.lq, 0
  br i1 %.not85.i.i, label %bb.bj, label %.lr.ph80.preheader.i.i

.lr.ph80.preheader.i.i:                           ; preds = %bb.bi
  %wide.trip.count90.i.i = zext i32 %i.lq to i64  ; 4 uses
  %xtraiter147 = and i64 %wide.trip.count90.i.i, 3 ; 3 uses
  %i.lr = icmp ult i32 %i.lq, 4
  br i1 %i.lr, label %.lr.ph80.i.i.epil.preheader, label %.lr.ph80.preheader.i.i.new

.lr.ph80.preheader.i.i.new:                       ; preds = %.lr.ph80.preheader.i.i
  %unroll_iter153 = and i64 %wide.trip.count90.i.i, 4294967292
  br label %.lr.ph80.i.i

.lr.ph80.i.i:                                     ; preds = %.lr.ph80.i.i, %.lr.ph80.preheader.i.i.new
  %i.ls = phi i32 [ %.pre97.i.i, %.lr.ph80.preheader.i.i.new ], [ %i.ml, %.lr.ph80.i.i ]
  %indvars.iv87.i.i = phi i64 [ 0, %.lr.ph80.preheader.i.i.new ], [ %indvars.iv.next88.i.i.3, %.lr.ph80.i.i ] ; 5 uses
end_hunk_0
