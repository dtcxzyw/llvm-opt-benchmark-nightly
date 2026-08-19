inline.NumInlined: 9
begin_hunk_0_@stroke:bb.a
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fl = add nsw i32 %.1237, -1
  %i.fm = call i32 %1(i32 noundef %i.fl, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %2) #7 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %5, ptr noundef nonnull align 8 dereferenceable(168) %4, i64 168, i1 false), !tbaa.struct !83
  %i.fn = icmp eq i32 %.1237, -1
  br i1 %i.fn, label %.thread226, label %bb.ab

bb.ab:                                            ; preds = %.thread285, %bb.aa
  %i.fo = call i32 %1(i32 noundef %.1237, ptr noundef nonnull %5, ptr noundef null, ptr noundef %2) #7 ; 0 uses
  br label %.thread226

.thread226:                                       ; preds = %.lr.ph, %bb.ab, %bb.aa
  %i.fp = phi i8 [ 0, %bb.ab ], [ 0, %bb.aa ], [ 1, %.lr.ph ] ; 2 uses
  %.2170230 = phi i32 [ %i.fj, %bb.ab ], [ %i.fj, %bb.aa ], [ %.1169233, %.lr.ph ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.ab ], [ 0, %bb.aa ], [ %.1237, %.lr.ph ] ; 2 uses
  %i.fq = fsub float %.0238, %.1160236            ; 3 uses
  %i.fr = add nsw i32 %.1163235, 1                ; 2 uses
  %i.fs = icmp eq i32 %i.fr, %i.g
  %spec.store.select = select i1 %i.fs, i32 0, i32 %i.fr ; 3 uses
  %i.ft = sext i32 %spec.store.select to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !34 ; 3 uses
  %i.fw = fcmp ogt float %i.fq, %i.fv
  br i1 %i.fw, label %.lr.ph, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %.thread226, %.preheader
  %.1176.lcssa = phi i64 [ %.0175248, %.preheader ], [ %i.eq, %.thread226 ] ; 3 uses
  %.1174.lcssa = phi i64 [ %.0173249, %.preheader ], [ %i.et, %.thread226 ] ; 3 uses
  %.1169.lcssa = phi i32 [ %.0168250, %.preheader ], [ %.2170230, %.thread226 ] ; 3 uses
  %.1166.lcssa = phi i8 [ %.0165251, %.preheader ], [ %i.fp, %.thread226 ] ; 2 uses
  %.1163.lcssa = phi i32 [ %.0162252, %.preheader ], [ %spec.store.select, %.thread226 ]
  %.1160.lcssa = phi float [ %.0159253, %.preheader ], [ %i.fv, %.thread226 ]
  %.1.lcssa = phi i32 [ %.0158254, %.preheader ], [ %.3, %.thread226 ] ; 4 uses
  %.0.lcssa = phi float [ %i.ej, %.preheader ], [ %i.fq, %.thread226 ]
  %.not205 = icmp eq i8 %.1166.lcssa, 0
  br i1 %.not205, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  store i64 %.1176.lcssa, ptr %4, align 8, !tbaa !67
  store i64 %.1174.lcssa, ptr %i.ba, align 8, !tbaa !68
  store i64 %i.ce, ptr %i.bb, align 8, !tbaa !69
  store i64 %i.cg, ptr %i.bc, align 8, !tbaa !70
  %i.fx = load i32, ptr %i.ay, align 8, !tbaa !64
  %.not206 = icmp eq i32 %i.fx, 0
  br i1 %.not206, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fy = load i64, ptr %i.au, align 8, !tbaa !58 ; 4 uses
  %i.fz = load i64, ptr %i.av, align 8, !tbaa !61 ; 4 uses
  %i.ga = sub nsw i64 %.1176.lcssa, %i.fy
  store i64 %i.ga, ptr %i.bd, align 8, !tbaa !71
  %i.gb = sub nsw i64 %.1174.lcssa, %i.fz
  store i64 %i.gb, ptr %i.be, align 8, !tbaa !72
  %i.gc = add nsw i64 %i.fy, %.1176.lcssa
  store i64 %i.gc, ptr %i.bf, align 8, !tbaa !73
  %i.gd = add nsw i64 %i.fz, %.1174.lcssa
  store i64 %i.gd, ptr %i.bg, align 8, !tbaa !74
  %i.ge = add nsw i64 %i.fy, %i.ce
  store i64 %i.ge, ptr %i.bh, align 8, !tbaa !75
  %i.gf = add nsw i64 %i.fz, %i.cg
  store i64 %i.gf, ptr %i.bi, align 8, !tbaa !76
  %i.gg = sub nsw i64 %i.ce, %i.fy
  store i64 %i.gg, ptr %i.bj, align 8, !tbaa !77
  %i.gh = sub nsw i64 %i.cg, %i.fz
  store i64 %i.gh, ptr %i.bk, align 8, !tbaa !78
  %i.gi = load i64, ptr %i.aw, align 8, !tbaa !65 ; 2 uses
  %i.gj = sub nsw i64 0, %i.gi
  store i64 %i.gj, ptr %i.bl, align 8, !tbaa !79
  %i.gk = load i64, ptr %i.ax, align 8, !tbaa !66 ; 2 uses
  %i.gl = sub nsw i64 0, %i.gk
  store i64 %i.gl, ptr %i.bm, align 8, !tbaa !80
  store i64 %i.gi, ptr %i.bn, align 8, !tbaa !81
  store i64 %i.gk, ptr %i.bo, align 8, !tbaa !82
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.gm = add nsw i32 %.1169.lcssa, 1
  %i.gn = icmp eq i32 %.1169.lcssa, 0
  br i1 %i.gn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull align 8 dereferenceable(168) %4, i64 168, i1 false), !tbaa.struct !83
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.go = add nsw i32 %.1.lcssa, 1
  %.not207 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not207, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gp = add nsw i32 %.1.lcssa, -1
  %i.gq = call i32 %1(i32 noundef %i.gp, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %2) #7 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %5, ptr noundef nonnull align 8 dereferenceable(168) %4, i64 168, i1 false), !tbaa.struct !83
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge
  %.3171 = phi i32 [ %i.gm, %bb.ai ], [ %.1169.lcssa, %._crit_edge ]
  %.4 = phi i32 [ %i.go, %bb.ai ], [ %.1.lcssa, %._crit_edge ]
  %i.gr = fsub float %.1160.lcssa, %.0.lcssa
  br label %bb.ar

bb.ak:                                            ; preds = %bb.u
  store i64 %.0175248, ptr %4, align 8, !tbaa !67
  store i64 %.0173249, ptr %i.ba, align 8, !tbaa !68
  store i64 %i.ce, ptr %i.bb, align 8, !tbaa !69
  store i64 %i.cg, ptr %i.bc, align 8, !tbaa !70
  br i1 %.not203, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gs = sub nsw i64 %.0175248, %i.ei
  store i64 %i.gs, ptr %i.bd, align 8, !tbaa !71
  %i.gt = sub nsw i64 %.0173249, %i.eh
  store i64 %i.gt, ptr %i.be, align 8, !tbaa !72
  %i.gu = add nsw i64 %i.ei, %.0175248
  store i64 %i.gu, ptr %i.bf, align 8, !tbaa !73
  %i.gv = add nsw i64 %i.eh, %.0173249
  store i64 %i.gv, ptr %i.bg, align 8, !tbaa !74
  %i.gw = add nsw i64 %i.ei, %i.ce
  store i64 %i.gw, ptr %i.bh, align 8, !tbaa !75
  %i.gx = add nsw i64 %i.eh, %i.cg
  store i64 %i.gx, ptr %i.bi, align 8, !tbaa !76
  %i.gy = sub nsw i64 %i.ce, %i.ei
  store i64 %i.gy, ptr %i.bj, align 8, !tbaa !77
  %i.gz = sub nsw i64 %i.cg, %i.eh
  store i64 %i.gz, ptr %i.bk, align 8, !tbaa !78
  %i.ha = sub nsw i64 0, %i.eg
  store i64 %i.ha, ptr %i.bl, align 8, !tbaa !79
  %i.hb = sub nsw i64 0, %i.ef
  store i64 %i.hb, ptr %i.bm, align 8, !tbaa !80
  store i64 %i.eg, ptr %i.bn, align 8, !tbaa !81
  store i64 %i.ef, ptr %i.bo, align 8, !tbaa !82
  br label %bb.am

bb.am:                                            ; preds = %.thread286.a, %bb.ak, %bb.al
  %i.hc = add nsw i32 %.0168250, 1
  %i.hd = icmp eq i32 %.0168250, 0
  br i1 %i.hd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull align 8 dereferenceable(168) %4, i64 168, i1 false), !tbaa.struct !83
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.he = add nsw i32 %.0158254, 1
  %.not204 = icmp eq i32 %.0158254, 0
  br i1 %.not204, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hf = add nsw i32 %.0158254, -1
  %i.hg = call i32 %1(i32 noundef %i.hf, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %2) #7 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %5, ptr noundef nonnull align 8 dereferenceable(168) %4, i64 168, i1 false), !tbaa.struct !83
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph256, %bb.aj, %bb.aq
  %.4172 = phi i32 [ %.0168250, %.lr.ph256 ], [ %.3171, %bb.aj ], [ %i.hc, %bb.aq ]
  %.2167 = phi i8 [ %.0165251, %.lr.ph256 ], [ %.1166.lcssa, %bb.aj ], [ %.0165251, %bb.aq ] ; 2 uses
  %.2164 = phi i32 [ %.0162252, %.lr.ph256 ], [ %.1163.lcssa, %bb.aj ], [ %.0162252, %bb.aq ]
  %.2161 = phi float [ %.0159253, %.lr.ph256 ], [ %i.gr, %bb.aj ], [ %.0159253, %bb.aq ]
  %.5 = phi i32 [ %.0158254, %.lr.ph256 ], [ %.4, %bb.aj ], [ %i.he, %bb.aq ] ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0177247, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !86 ; 3 uses
  %.not200 = icmp eq i32 %i.cc, 0
  br i1 %.not200, label %._crit_edge257, label %.lr.ph256, !llvm.loop !87

._crit_edge257:                                   ; preds = %bb.ar
  %.not201 = icmp eq i32 %.5, 0
  br i1 %.not201, label %._crit_edge257.thread, label %bb.as

bb.as:                                            ; preds = %._crit_edge257
  %i.hj = add nsw i32 %.5, -1
  %i.hk = getelementptr inbounds nuw i8, ptr %.1184262, i64 56
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !88
  %i.hm = icmp ne i8 %i.hl, 0
  %i.hn = icmp ne i8 %.2167, 0
  %or.cond4 = select i1 %i.hm, i1 %i.hn, i1 false
  br i1 %or.cond4, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ho = load i32, ptr %i.aq, align 8, !tbaa !49
  %.not202 = icmp eq i32 %i.ho, 0
  br i1 %.not202, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.as
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.hp = phi ptr [ null, %bb.au ], [ %6, %bb.at ]
  %i.hq = call i32 %1(i32 noundef %i.hj, ptr noundef nonnull %5, ptr noundef %i.hp, ptr noundef %2) #7 ; 0 uses
  br label %._crit_edge257.thread

._crit_edge257.thread:                            ; preds = %bb.h, %bb.av, %._crit_edge257
  %.0177.lcssa292 = phi ptr [ %i.hi, %._crit_edge257 ], [ %i.hi, %bb.av ], [ %i.bt, %bb.h ] ; 2 uses
  %i.hr = load ptr, ptr @stroke_path, align 8, !tbaa !8
  %i.hs = icmp eq ptr %i.hr, @stroke_path_body
  br i1 %i.hs, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %._crit_edge257.thread
  %i.ht = load ptr, ptr %i.bp, align 8, !tbaa !11
  %i.hu = call i32 (ptr, ptr, ptr, i32, i64, ...) @gx_fill_path(ptr noundef nonnull @stroke_path_body, ptr noundef %i.ht, ptr noundef %2, i32 noundef -1, i64 noundef 0) #7 ; 0 uses
  %i.hv = load ptr, ptr @stroke_path, align 8, !tbaa !8
  call void @gx_path_release(ptr noundef %i.hv) #7
  store ptr null, ptr @stroke_path, align 8, !tbaa !8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge257.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not198 = icmp eq ptr %.0177.lcssa292, null
  br i1 %.not198, label %._crit_edge265, label %bb.h, !llvm.loop !89

._crit_edge265:                                   ; preds = %bb.ax, %bb.g
  %i.hw = load i32, ptr %i.af, align 8, !tbaa !37
  %.not199 = icmp eq i32 %i.hw, 0
  br i1 %.not199, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge265
  call void @gx_path_release(ptr noundef nonnull %3) #7
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge265, %bb.ay, %bb.f, %bb.e
  %.0185 = phi i32 [ 0, %bb.e ], [ %i.am, %bb.f ], [ 0, %bb.ay ], [ 0, %._crit_edge265 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.0185
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stroke_fill(i32 noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load i32, ptr %i.a, align 8, !tbaa !64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = load i64, ptr %1, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !70
  %i.l = tail call i32 @gx_cpath_includes_rectangle(ptr noundef %i.d, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %i.i, i64 noundef %i.k) #7
  %.not26 = icmp eq i32 %i.l, 0
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %1, align 8, !tbaa !67
  %i.n = load i64, ptr %i.f, align 8, !tbaa !68
  %i.o = load i64, ptr %i.h, align 8, !tbaa !69
  %i.p = load i64, ptr %i.j, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11
  %i.s = tail call i32 (i64, i64, i64, i64, ptr, ptr, ...) @gz_draw_line_fixed(i64 noundef %i.m, i64 noundef %i.n, i64 noundef %i.o, i64 noundef %i.p, ptr noundef %i.r, ptr noundef nonnull %3) #7
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 1024, ptr %i.t, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 1024, ptr %i.u, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 512, ptr %i.v, align 8, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 512, ptr %i.w, align 8, !tbaa !66
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load <2 x i64>, ptr %1, align 8, !tbaa !31
  %i.z = shufflevector <2 x i64> %i.y, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aa = add nsw <4 x i64> %i.z, <i64 -1024, i64 -1024, i64 1024, i64 1024>
  store <4 x i64> %i.aa, ptr %i.x, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ac = load <2 x i64>, ptr %i.h, align 8, !tbaa !31
  %i.ad = shufflevector <2 x i64> %i.ac, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ae = add nsw <4 x i64> %i.ad, <i64 1024, i64 1024, i64 -1024, i64 -1024>
  store <4 x i64> %i.ae, ptr %i.ab, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 -512, ptr %i.af, align 8, !tbaa !79
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 -512, ptr %i.ag, align 8, !tbaa !80
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 512, ptr %i.ah, align 8, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 512, ptr %i.ai, align 8, !tbaa !82
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.aj = load ptr, ptr @stroke_path, align 8, !tbaa !8
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr @stroke_path_body, ptr @stroke_path, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @gx_path_init(ptr noundef nonnull @stroke_path_body, ptr noundef nonnull %i.al) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.am = tail call i32 @stroke_add(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) ; 0 uses
  %i.an = load ptr, ptr @stroke_path, align 8, !tbaa !8
  %i.ao = icmp eq ptr %i.an, @stroke_path_body
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !11
  %i.ar = tail call i32 (ptr, ptr, ptr, i32, i64, ...) @gx_fill_path(ptr noundef nonnull @stroke_path_body, ptr noundef %i.aq, ptr noundef %3, i32 noundef -1, i64 noundef 0) #7 ; 0 uses
  %i.as = load ptr, ptr @stroke_path, align 8, !tbaa !8
  tail call void @gx_path_release(ptr noundef %i.as) #7
  store ptr null, ptr @stroke_path, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c
  %.0 = phi i32 [ %i.s, %bb.c ], [ 0, %bb.h ], [ 0, %bb.g ]
  ret i32 %.0
}

declare i32 @gx_fill_path(...) local_unnamed_addr #2

declare void @gx_path_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @gx_stroke_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  store ptr %1, ptr @stroke_path, align 8, !tbaa !8
  %i.a = tail call i32 @stroke(ptr noundef %0, ptr noundef nonnull @stroke_add, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @stroke_add(i32 noundef %0, ptr nofree noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.gs_fixed_point_s, align 8   ; 6 uses
  %5 = alloca %struct.gs_fixed_point_s, align 16  ; 7 uses
  %i.a = load ptr, ptr @stroke_path, align 8, !tbaa !8 ; 24 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %add_capped.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !31
  %i.h = shufflevector <2 x i64> %i.g, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.i = load <2 x i64>, ptr %1, align 8, !tbaa !31
  %i.j = shufflevector <2 x i64> %i.i, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.k = sub nsw <4 x i64> %i.j, %i.h
  %i.l = add nsw <4 x i64> %i.j, %i.h
  %i.m = shufflevector <4 x i64> %i.k, <4 x i64> %i.l, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i64> %i.m, ptr %i.f, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load <2 x i64>, ptr %i.n, align 8, !tbaa !31
  %i.q = shufflevector <2 x i64> %i.p, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.r = add nsw <4 x i64> %i.q, %i.h
  %i.s = sub nsw <4 x i64> %i.q, %i.h
  %i.t = shufflevector <4 x i64> %i.r, <4 x i64> %i.s, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i64> %i.t, ptr %i.o, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.v = load i64, ptr %i.u, align 8, !tbaa !65   ; 2 uses
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.w, ptr %i.x, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.z = load i64, ptr %i.y, align 8, !tbaa !66   ; 2 uses
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !80
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.v, ptr %i.ac, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %i.z, ptr %i.ad, align 8, !tbaa !82
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ae = icmp eq i32 %0, 0
  br i1 %i.ae, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !91
  switch i32 %i.ai, label %add_capped.exit.thread168 [
    i32 1, label %bb.f
    i32 2, label %bb.i
    i32 0, label %.thread
  ]

bb.f:                                             ; preds = %bb.e
  %i.aj = load i64, ptr %1, align 8, !tbaa !92
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !93
  %i.am = add nsw i64 %i.al, %i.aj                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !94
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !95
  %i.ar = add nsw i64 %i.aq, %i.ao                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !96
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !97
  %i.aw = tail call i32 @gx_path_add_point(ptr noundef nonnull %i.a, i64 noundef %i.at, i64 noundef %i.av) #7, !inline_history !98 ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %add_capped.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !96 ; 2 uses
  %i.az = load i64, ptr %i.au, align 8, !tbaa !97 ; 2 uses
  %i.ba = load i64, ptr %i.ak, align 8, !tbaa !93
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = load i64, ptr %i.ap, align 8, !tbaa !95
  %i.bd = add nsw i64 %i.bc, %i.az
  %i.be = tail call i32 @gx_path_add_arc(ptr noundef nonnull %i.a, i64 noundef %i.ay, i64 noundef %i.az, i64 noundef %i.am, i64 noundef %i.ar, i64 noundef %i.bb, i64 noundef %i.bd) #7 ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %add_capped.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !99 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !100 ; 2 uses
  %i.bk = load i64, ptr %i.ak, align 8, !tbaa !93
  %i.bl = add nsw i64 %i.bk, %i.bh
  %i.bm = load i64, ptr %i.ap, align 8, !tbaa !95
  %i.bn = add nsw i64 %i.bm, %i.bj
  %i.bo = tail call i32 @gx_path_add_arc(ptr noundef nonnull %i.a, i64 noundef %i.am, i64 noundef %i.ar, i64 noundef %i.bh, i64 noundef %i.bj, i64 noundef %i.bl, i64 noundef %i.bn) #7
  br label %add_capped.exit

bb.i:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !96
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !93
  %i.bt = add nsw i64 %i.bs, %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !97
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !95
  %i.by = add nsw i64 %i.bx, %i.bv
  %i.bz = tail call i32 @gx_path_add_point(ptr noundef nonnull %i.a, i64 noundef %i.bt, i64 noundef %i.by) #7, !inline_history !98 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %add_capped.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !99
  %i.cd = load i64, ptr %i.br, align 8, !tbaa !93
  %i.ce = add nsw i64 %i.cd, %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !100
  %i.ch = load i64, ptr %i.bw, align 8, !tbaa !95
  %i.ci = add nsw i64 %i.ch, %i.cg
  %i.cj = tail call i32 @gx_path_add_line(ptr noundef nonnull %i.a, i64 noundef %i.ce, i64 noundef %i.ci) #7
  br label %add_capped.exit

.thread:                                          ; preds = %bb.d, %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !96
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !97
  %i.co = tail call i32 @gx_path_add_point(ptr noundef nonnull %i.a, i64 noundef %i.cl, i64 noundef %i.cn) #7, !inline_history !98 ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %add_capped.exit.thread, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !99
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !100
  %i.cu = tail call i32 @gx_path_add_line(ptr noundef nonnull %i.a, i64 noundef %i.cr, i64 noundef %i.ct) #7
  br label %add_capped.exit

add_capped.exit:                                  ; preds = %bb.h, %bb.j, %bb.k
  %.152.i = phi i32 [ %i.bo, %bb.h ], [ %i.cj, %bb.j ], [ %i.cu, %bb.k ] ; 2 uses
  %i.cv = icmp slt i32 %.152.i, 0
  br i1 %i.cv, label %add_capped.exit.thread, label %add_capped.exit.thread168

add_capped.exit.thread168:                        ; preds = %bb.e, %add_capped.exit
  %i.cw = icmp eq ptr %2, null
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !26 ; 3 uses
  br i1 %i.cw, label %bb.l, label %bb.t

bb.l:                                             ; preds = %add_capped.exit.thread168
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !91
  switch i32 %i.da, label %add_capped.exit162.thread175 [
    i32 1, label %bb.m
    i32 2, label %bb.p
    i32 0, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !92
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !93
end_hunk_0
