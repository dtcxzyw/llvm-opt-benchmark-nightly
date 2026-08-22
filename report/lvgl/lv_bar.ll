Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_bar?download=true
inline.NumInlined: 33
inline.NumDeleted: 13
begin_hunk_0_@lv_bar_event:bb.a
  br i1 %.not248.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ep = sub nsw i32 1, %.0234.i
  %i.eq = sub nsw i32 0, %.0232.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1235.i = phi i32 [ %i.ep, %bb.u ], [ %i.eo, %bb.t ] ; 2 uses
  %.1233.i = phi i32 [ %i.eq, %bb.u ], [ %.0232.i, %bb.t ] ; 2 uses
  %.1231.i = phi ptr [ %.251.i, %bb.u ], [ %..i, %bb.t ] ; 3 uses
  %.1229.i = phi ptr [ %..i, %bb.u ], [ %.251.i, %bb.t ] ; 3 uses
  br i1 %.0236.i, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %bb.v
  %i.er = load i32, ptr %.1231.i, align 4, !tbaa !28 ; 2 uses
  %i.es = add nsw i32 %i.er, %.1235.i             ; 4 uses
  store i32 %i.es, ptr %.1229.i, align 4, !tbaa !28
  %i.et = add nsw i32 %i.er, %.1233.i             ; 3 uses
  store i32 %i.et, ptr %.1231.i, align 4, !tbaa !28
  br i1 %i.aw, label %bb.x, label %.critedge253.i

.thread.i:                                        ; preds = %bb.v
  %i.eu = load i32, ptr %.1229.i, align 4, !tbaa !28 ; 2 uses
  %i.ev = sub nsw i32 %i.eu, %.1235.i             ; 4 uses
  store i32 %i.ev, ptr %.1231.i, align 4, !tbaa !28
  %i.ew = sub nsw i32 %i.eu, %.1233.i             ; 3 uses
  store i32 %i.ew, ptr %.1229.i, align 4, !tbaa !28
  br i1 %i.aw, label %bb.aa, label %.critedge253.i

bb.x:                                             ; preds = %bb.w
  %i.ex = load i32, ptr %i.ag, align 4, !tbaa !8
  %i.ey = mul i32 %i.cm, %i.ex
  %i.ez = sub i32 0, %i.ey
  %i.fa = sdiv i32 %i.ez, %spec.store.select.i    ; 2 uses
  %reass.sub288.i = add i32 %i.et, 1
  %i.fb = sub i32 %reass.sub288.i, %i.fa
  %i.fc = add nsw i32 %i.fa, %i.et
  %.0225.i = select i1 %.not248.i, i32 %i.fc, i32 %i.fb ; 3 uses
  %i.fd = icmp sgt i32 %i.es, %.0225.i
  br i1 %i.fd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %i.es, ptr %i.bf, align 8, !tbaa !28
  store i32 %.0225.i, ptr %i.bb, align 8, !tbaa !28
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  store i32 %i.es, ptr %i.bb, align 8, !tbaa !28
  store i32 %.0225.i, ptr %i.bf, align 8, !tbaa !28
  br label %bb.ae

bb.aa:                                            ; preds = %.thread.i
  %i.fe = load i32, ptr %i.ag, align 4, !tbaa !8
  %i.ff = mul i32 %i.cn, %i.fe
  %i.fg = sub i32 0, %i.ff
  %i.fh = sdiv i32 %i.fg, %spec.store.select.i    ; 2 uses
  %i.fi = add nsw i32 %i.fh, %i.ew
  %reass.sub.i = add i32 %i.ew, 1
  %i.fj = sub i32 %reass.sub.i, %i.fh
  %.1226.i = select i1 %.not248.i, i32 %i.fj, i32 %i.fi ; 3 uses
  %i.fk = icmp sgt i32 %i.ev, %.1226.i
  br i1 %i.fk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.ev, ptr %i.bh, align 4, !tbaa !28
  store i32 %.1226.i, ptr %i.bd, align 4, !tbaa !28
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  store i32 %i.ev, ptr %i.bd, align 4, !tbaa !28
  store i32 %.1226.i, ptr %i.bh, align 4, !tbaa !28
  br label %bb.ae

.critedge253.i:                                   ; preds = %.thread.i, %bb.w
  %i.fl = call i32 %lv_area_get_width.lv_area_get_height.i(ptr noundef nonnull %i.bb) #6, !callees !43, !inline_history !44
  %i.fm = icmp slt i32 %i.fl, 2
  br i1 %i.fm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.critedge253.i
  %i.fn = call i32 @lv_obj_send_event(ptr noundef nonnull %i.w, i32 noundef 34, ptr noundef null) #6 ; 0 uses
  br label %draw_indic.exit

bb.ae:                                            ; preds = %.critedge253.i, %bb.ac, %bb.ab, %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.fo = load <4 x i32>, ptr %i.bb, align 8, !tbaa !28
  store <4 x i32> %i.fo, ptr %3, align 16, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @lv_draw_rect_dsc_init(ptr noundef nonnull %4) #6
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.x, ptr %i.fp, align 8, !tbaa !45
  call void @lv_obj_init_draw_rect_dsc(ptr noundef nonnull %i.w, i32 noundef 131072, ptr noundef nonnull %4) #6
  %i.fq = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.w, i32 noundef 0, i8 noundef zeroext 120) #6
  %i.fr = ptrtoint ptr %i.fq to i64
  %.sroa.0.0.extract.trunc.i267.i = trunc i64 %i.fr to i32
  %i.fs = call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ad)
  %i.ft = ashr i32 %i.fs, 1
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.ft, i32 %.sroa.0.0.extract.trunc.i267.i) ; 3 uses
  %i.fu = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.w, i32 noundef 131072, i8 noundef zeroext -119) #6
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = and i64 %i.fv, 4294967295
  %.not279.i = icmp eq i64 %i.fw, 0               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @lv_draw_blur_dsc_init(ptr noundef nonnull %5) #6
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !52
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !53
  call void @lv_obj_init_draw_blur_dsc(ptr noundef nonnull %i.w, i32 noundef 131072, ptr noundef nonnull %5) #6
  br i1 %.not279.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @lv_draw_blur(ptr noundef %i.x, ptr noundef nonnull %5, ptr noundef nonnull %3) #6
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ga = load i32, ptr %i.fx, align 8, !tbaa !52
  %i.gb = call i32 @lv_area_get_width(ptr noundef nonnull %i.bb) #6
  %i.gc = call i32 @lv_area_get_height(ptr noundef nonnull %i.bb) #6
  %i.gd = icmp slt i32 %i.gb, %i.gc
  br i1 %i.gd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ge = call i32 @lv_area_get_width(ptr noundef nonnull %i.bb) #6
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.gf = call i32 @lv_area_get_height(ptr noundef nonnull %i.bb) #6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gg = phi i32 [ %i.ge, %bb.ah ], [ %i.gf, %bb.ai ]
  %i.gh = ashr i32 %i.gg, 1
  %spec.select254.i = call i32 @llvm.smin.i32(i32 %i.ga, i32 %i.gh) ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 115
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = and i8 %i.gj, 15
  %.297.i = select i1 %.0236.i, i8 2, i8 1
  %i.gl = icmp ne i8 %i.gk, %.297.i
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !55
  %.not249.i = icmp eq ptr %i.gn, null
  %spec.select258.not299.i = select i1 %.not249.i, i1 %i.gl, i1 false ; 4 uses
  %i.go = icmp sgt i32 %.sroa.0.0.extract.trunc.i262.i, -1
  %i.gp = icmp sgt i32 %.sroa.0.0.extract.trunc.i263.i, -1
  %or.cond.not286.i = select i1 %i.go, i1 %i.gp, i1 false
  %i.gq = icmp sgt i32 %.sroa.0.0.extract.trunc.i264.i, -1
  %or.cond3.not283.i = select i1 %or.cond.not286.i, i1 %i.gq, i1 false
  %i.gr = icmp sgt i32 %.sroa.0.0.extract.trunc.i265.i, -1
  %or.cond5.not281.i = select i1 %or.cond3.not283.i, i1 %i.gr, i1 false
  %.not250.i = icmp slt i32 %spec.select254.i, %spec.select.i
  %or.cond260.i = select i1 %or.cond5.not281.i, i1 %.not250.i, i1 false
  br i1 %or.cond260.i, label %bb.ak, label %.thread269.i

bb.ak:                                            ; preds = %bb.aj
  %i.gs = call zeroext i1 @lv_area_is_in(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef %spec.select.i) #6 ; 2 uses
  %or.cond7.not.i = and i1 %spec.select258.not299.i, %i.gs
  br i1 %or.cond7.not.i, label %bb.ax, label %bb.al

.thread269.i:                                     ; preds = %bb.aj
  br i1 %spec.select258.not299.i, label %bb.ax, label %.thread273.i

bb.al:                                            ; preds = %bb.ak
  br i1 %i.gs, label %.thread273.i, label %bb.am

.thread273.i:                                     ; preds = %bb.al, %.thread269.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %4, i64 208, i1 false), !tbaa.struct !56
  %i.gt = getelementptr inbounds nuw i8, ptr %6, i64 95
  store i8 0, ptr %i.gt, align 1, !tbaa !63
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i8 0, ptr %i.gu, align 8, !tbaa !64
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 94
  store i8 0, ptr %i.gv, align 2, !tbaa !65
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 91
  store i8 0, ptr %i.gw, align 1, !tbaa !66
  call void @lv_draw_rect(ptr noundef %i.x, ptr noundef nonnull %6, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 95
  store i8 0, ptr %i.gx, align 1, !tbaa !63
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i8 0, ptr %i.gy, align 8, !tbaa !64
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread273.i
  %.0272275.i = phi i1 [ true, %bb.am ], [ false, %.thread273.i ]
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 97
  store i8 0, ptr %i.gz, align 1, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %4, i64 208, i1 false), !tbaa.struct !56
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 95
  store i8 0, ptr %i.ha, align 1, !tbaa !63
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 96
  store i8 0, ptr %i.hb, align 8, !tbaa !64
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 97
  store i8 0, ptr %i.hc, align 1, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !68
  br i1 %spec.select258.not299.i, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %.0236.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hd = load i32, ptr %2, align 16, !tbaa !69
  %i.he = add nsw i32 %i.hd, %.sroa.0.0.extract.trunc.i262.i
  store i32 %i.he, ptr %8, align 4, !tbaa !69
  %i.hf = load i32, ptr %i.be, align 8, !tbaa !70
  %i.hg = sub nsw i32 %i.hf, %.sroa.0.0.extract.trunc.i263.i
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.hh = load i32, ptr %i.bc, align 4, !tbaa !71
  %i.hi = add nsw i32 %i.hh, %.sroa.0.0.extract.trunc.i264.i
  %i.hj = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !71
  %i.hk = load i32, ptr %i.bg, align 4, !tbaa !72
  %i.hl = sub nsw i32 %i.hk, %.sroa.0.0.extract.trunc.i265.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink296.i.sroa.phi = phi ptr [ %.sink296.i.sroa.gep, %bb.aq ], [ %.sink296.i.sroa.gep51, %bb.ap ]
  %.sink294.i = phi i32 [ %i.hl, %bb.aq ], [ %i.hg, %bb.ap ]
  store i32 %.sink294.i, ptr %.sink296.i.sroa.phi, align 4, !tbaa !28
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %i.hm, align 8, !tbaa !52
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.an
  %i.hn = call ptr @lv_draw_layer_create(ptr noundef %i.x, i32 noundef 16, ptr noundef nonnull %8) #6 ; 4 uses
  call void @lv_draw_rect(ptr noundef %i.hn, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @lv_draw_mask_rect_dsc_init(ptr noundef nonnull %9) #6
  br i1 %.0272275.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !68
  %i.hp = getelementptr inbounds nuw i8, ptr %9, i64 80
  store i32 %spec.select.i, ptr %i.hp, align 8, !tbaa !73
  call void @lv_draw_mask_rect(ptr noundef %i.hn, ptr noundef nonnull %9) #6
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  br i1 %spec.select258.not299.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hq = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !68
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 80
  store i32 %spec.select254.i, ptr %i.hr, align 8, !tbaa !73
  call void @lv_draw_mask_rect(ptr noundef %i.hn, ptr noundef nonnull %9) #6
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @lv_draw_image_dsc_init(ptr noundef nonnull %10) #6
  %i.hs = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr %i.hn, ptr %i.hs, align 8, !tbaa !75
  call void @lv_draw_layer(ptr noundef %i.x, ptr noundef nonnull %10, ptr noundef nonnull %8) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %4, i64 208, i1 false), !tbaa.struct !56
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 94
  store i8 0, ptr %i.ht, align 2, !tbaa !65
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 91
  store i8 0, ptr %i.hu, align 1, !tbaa !66
  call void @lv_draw_rect(ptr noundef %i.x, ptr noundef nonnull %7, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.ay

bb.ax:                                            ; preds = %.thread269.i, %bb.ak
  call void @lv_draw_rect(ptr noundef %i.x, ptr noundef nonnull %4, ptr noundef nonnull %3) #6
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  br i1 %.not279.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @lv_draw_blur(ptr noundef %i.x, ptr noundef nonnull %5, ptr noundef nonnull %3) #6
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %draw_indic.exit

draw_indic.exit:                                  ; preds = %bb.ad, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.bb

bb.bb:                                            ; preds = %bb.b, %draw_indic.exit, %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @lv_bar_create(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_class_create_obj(ptr noundef nonnull @lv_bar_class, ptr noundef %0) #6 ; 2 uses
  tail call void @lv_obj_class_init_obj(ptr noundef %i.a) #6
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @lv_obj_class_create_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_obj_class_init_obj(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @lv_bar_set_value(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20
  %. = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.g)
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %.)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27
  %.31 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.i) ; 2 uses
  %i.j = icmp eq i32 %i.b, %.31
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call fastcc void @lv_bar_set_value_with_anim(ptr noundef %0, i32 noundef %.31, ptr noundef %i.a, ptr noundef %i.k, i1 noundef zeroext %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lv_bar_set_value_with_anim(ptr noundef nonnull %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef nonnull %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct._lv_anim_t, align 8         ; 9 uses
  br i1 %4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 @lv_anim_delete(ptr noundef nonnull %3, ptr noundef null) #6 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 -1, ptr %i.b, align 8, !tbaa !26
  store i32 %1, ptr %2, align 4, !tbaa !28
  %i.c = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #6 ; 0 uses
  %i.d = tail call zeroext i1 @lv_anim_delete(ptr noundef nonnull %3, ptr noundef null) #6 ; 0 uses
  store ptr %0, ptr %3, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !25
  store i32 -1, ptr %i.b, align 8, !tbaa !26
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %2, align 4, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %1, ptr %i.l, align 4, !tbaa !25
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %i.o, align 8, !tbaa !24
  store i32 %1, ptr %i.m, align 4, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 %1, ptr %2, align 4, !tbaa !28
  %i.p = tail call zeroext i1 @lv_anim_delete(ptr noundef nonnull %3, ptr noundef null) #6 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @lv_anim_init(ptr noundef nonnull %5) #6
  call void @lv_anim_set_var(ptr noundef nonnull %5, ptr noundef nonnull %3) #6
  call void @lv_anim_set_exec_cb(ptr noundef nonnull %5, ptr noundef nonnull @lv_bar_anim) #6
  call void @lv_anim_set_values(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 256) #6
  call void @lv_anim_set_completed_cb(ptr noundef nonnull %5, ptr noundef nonnull @lv_bar_anim_completed) #6
  %i.q = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 117) #6
  %i.r = ptrtoint ptr %i.q to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.r to i32
  call void @lv_anim_set_duration(ptr noundef nonnull %5, i32 noundef %.sroa.0.0.extract.trunc.i) #6
  %i.s = call ptr @lv_anim_start(ptr noundef nonnull %5) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_bar_set_start_value(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 7
  %.not29 = icmp eq i8 %i.c, 2
  br i1 %.not29, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20
  %. = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.g)
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %.)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21
  %.31 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.i) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27
  %i.l = icmp eq i32 %i.k, %.31
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
end_hunk_0
