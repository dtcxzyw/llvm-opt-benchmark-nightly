Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_draw?download=true
begin_hunk_0_@_Z19ImFontAtlasBakedAddP11ImFontAtlasP6ImFontffj:bb.a
  %i.cb = load ptr, ptr %i.bk, align 8, !tbaa !275
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.cc = phi ptr [ %i.cb, %bb.n ], [ %i.ca, %bb.m ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !491
  %i.cf = add i64 %i.ce, %.05268
  %i.cg = getelementptr inbounds nuw i8, ptr %.05169, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !298
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 128
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !299 ; 2 uses
  %.not63.1 = icmp eq ptr %i.cj, null
  br i1 %.not63.1, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ck = load ptr, ptr %i.bk, align 8, !tbaa !275
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cl = phi ptr [ %i.ck, %bb.p ], [ %i.cj, %bb.o ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !491
  %i.co = add i64 %i.cn, %i.cf                    ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.05169, i64 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.m

bb.r:                                             ; preds = %._crit_edge
  %i.cq = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %.lcssa) #35
  %.pre = load ptr, ptr %i.bf, align 8, !tbaa !293
  %.pre77 = load i32, ptr %i.be, align 8, !tbaa !295 ; 2 uses
  %.pre78 = sext i32 %.pre77 to i64
  %.pre79 = shl nsw i64 %.pre78, 3
  %i.cr = icmp eq i32 %.pre77, 0
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r
  %.idx76.pre-phi = phi i64 [ %.idx, %._crit_edge ], [ %.pre79, %bb.r ]
  %.not6070 = phi i1 [ false, %._crit_edge ], [ %i.cr, %bb.r ]
  %i.cs = phi ptr [ %i.bg, %._crit_edge ], [ %.pre, %bb.r ] ; 2 uses
  %i.ct = phi ptr [ null, %._crit_edge ], [ %i.cq, %bb.r ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !490
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %.idx76.pre-phi
  br i1 %.not6070, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 696
  br label %bb.ab

._crit_edge75:                                    ; preds = %bb.af, %.thread, %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !209
  %i.cz = icmp ugt i32 %i.cy, 32
  br i1 %i.cz, label %bb.t, label %bb.v, !prof !210

bb.t:                                             ; preds = %._crit_edge75
  %i.da = load ptr, ptr %.sroa.565.0..sroa_idx, align 8, !tbaa !211
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !136 ; 2 uses
  switch i16 %i.dc, label %bb.u [
    i16 -2, label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread.i
    i16 -1, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.dd = load ptr, ptr %.sroa.666.0..sroa_idx, align 8, !tbaa !212
  %i.de = zext i16 %i.dc to i64
  %i.df = getelementptr inbounds nuw [44 x i8], ptr %i.dd, i64 %i.de
  br label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.i

bb.v:                                             ; preds = %bb.t, %._crit_edge75
  %i.dg = getelementptr inbounds nuw i8, ptr %i.at, i64 76 ; 4 uses
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = or i32 %i.dh, 134217728
  store i32 %i.di, ptr %i.dg, align 4
  %i.dj = tail call fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedt(ptr noundef nonnull align 8 dereferenceable(104) %i.at, i16 noundef zeroext 32), !inline_history !492
  %i.dk = load i32, ptr %i.dg, align 4
  %i.dl = and i32 %i.dk, -134217729
  store i32 %i.dl, ptr %i.dg, align 4
  br label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.i

_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.i:   ; preds = %bb.v, %bb.u
  %.1.i.i = phi ptr [ %i.dj, %bb.v ], [ %i.df, %bb.u ] ; 4 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.i
  %i.dm = load i32, ptr %.1.i.i, align 4
  %i.dn = and i32 %i.dm, -3
  store i32 %i.dn, ptr %.1.i.i, align 4
  br label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread.i

_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread.i: ; preds = %bb.w, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.i, %bb.t
  %i.do = phi i1 [ false, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.i ], [ true, %bb.w ], [ false, %bb.t ]
  %.1.i12.i = phi ptr [ null, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.i ], [ %.1.i.i, %bb.w ], [ null, %bb.t ]
  %i.dp = load i32, ptr %i.cx, align 8, !tbaa !209
  %i.dq = icmp ugt i32 %i.dp, 9
  br i1 %i.dq, label %bb.x, label %bb.z, !prof !210

bb.x:                                             ; preds = %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread.i
  %i.dr = load ptr, ptr %.sroa.565.0..sroa_idx, align 8, !tbaa !211
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 18
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !136 ; 2 uses
  switch i16 %i.dt, label %bb.y [
    i16 -2, label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit10.i
    i16 -1, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.du = load ptr, ptr %.sroa.666.0..sroa_idx, align 8, !tbaa !212
  %i.dv = zext i16 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [44 x i8], ptr %i.du, i64 %i.dv
  br label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit10.i

bb.z:                                             ; preds = %bb.x, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.at, i64 76 ; 4 uses
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = or i32 %i.dy, 134217728
  store i32 %i.dz, ptr %i.dx, align 4
  %i.ea = tail call fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedt(ptr noundef nonnull align 8 dereferenceable(104) %i.at, i16 noundef zeroext 9), !inline_history !492
  %i.eb = load i32, ptr %i.dx, align 4
  %i.ec = and i32 %i.eb, -134217729
  store i32 %i.ec, ptr %i.dx, align 4
  br label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit10.i

_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit10.i: ; preds = %bb.z, %bb.y, %bb.x
  %.1.i9.i = phi ptr [ %i.ea, %bb.z ], [ null, %bb.x ], [ %i.dw, %bb.y ]
  %i.ed = icmp eq ptr %.1.i9.i, null
  %or.cond.i = and i1 %i.do, %i.ed
  br i1 %or.cond.i, label %bb.aa, label %_ZL36ImFontAtlasBuildSetupFontBakedBlanksP11ImFontAtlasP11ImFontBaked.exit

bb.aa:                                            ; preds = %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ee, i8 0, i64 36, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 -1, ptr %i.ef, align 4, !tbaa !477
  store i32 576, ptr %5, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %.1.i12.i, i64 4
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !215
  %i.ei = fmul float %i.eh, 4.000000e+00
  store float %i.ei, ptr %i.ee, align 4, !tbaa !215
  %i.ej = call noundef ptr @_Z28ImFontAtlasBakedAddFontGlyphP11ImFontAtlasP11ImFontBakedP12ImFontConfigPK11ImFontGlyph(ptr noundef %0, ptr noundef nonnull %i.at, ptr noundef null, ptr noundef nonnull %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %_ZL36ImFontAtlasBuildSetupFontBakedBlanksP11ImFontAtlasP11ImFontBaked.exit

_ZL36ImFontAtlasBuildSetupFontBakedBlanksP11ImFontAtlasP11ImFontBaked.exit: ; preds = %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit10.i, %bb.aa
  ret ptr %i.at

bb.ab:                                            ; preds = %.lr.ph74, %bb.af
  %.072 = phi ptr [ %i.cs, %.lr.ph74 ], [ %i.ev, %bb.af ] ; 2 uses
  %.05071 = phi ptr [ %i.ct, %.lr.ph74 ], [ %i.eu, %bb.af ] ; 2 uses
  %i.ek = load ptr, ptr %.072, align 8, !tbaa !298 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 128
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !299 ; 2 uses
  %.not61 = icmp eq ptr %i.em, null
  br i1 %.not61, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.en = load ptr, ptr %i.cw, align 8, !tbaa !275
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.eo = phi ptr [ %i.en, %bb.ac ], [ %i.em, %bb.ab ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !436 ; 2 uses
  %.not62 = icmp eq ptr %i.eq, null
  br i1 %.not62, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.er = tail call noundef zeroext i1 %i.eq(ptr noundef %0, ptr noundef nonnull %i.ek, ptr noundef nonnull %i.at, ptr noundef %.05071) #35 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  %i.et = load i64, ptr %i.es, align 8, !tbaa !491
  %i.eu = getelementptr inbounds nuw i8, ptr %.05071, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %.072, i64 8 ; 2 uses
  %.not60 = icmp eq ptr %i.ev, %i.cv
  br i1 %.not60, label %._crit_edge75, label %bb.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_Z31ImFontAtlasBakedGetClosestMatchP11ImFontAtlasP6ImFontff(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, float noundef %2, float noundef %3) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.d = load i32, ptr %i.c, align 8, !tbaa !285  ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.split.us.us.preheader, label %.thread

.lr.ph.split.us.us.preheader:                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !286  ; 2 uses
  br label %.lr.ph.split.us.us

4:                                                ; preds = %._crit_edge.us.a
  %.not50.us = icmp eq ptr %.2.us.us, null
  br i1 %.not50.us, label %.lr.ph.split.us76.1, label %.thread

.lr.ph.split.us76.1:                              ; preds = %4, %bb.k
  %.061.us65.1 = phi i32 [ %i.af, %bb.k ], [ 0, %4 ] ; 3 uses
  %.03860.us66.1 = phi ptr [ %.2.us72.1, %bb.k ], [ null, %4 ] ; 6 uses
  %.03959.us67.1 = phi ptr [ %.241.us71.1, %bb.k ], [ null, %4 ] ; 6 uses
  %i.h = lshr i32 %.061.us65.1, 5
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !187
  %i.l = and i32 %.061.us65.1, 31
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %i.k, i64 %i.m ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !287
  %.not51.us68.1 = icmp eq ptr %i.p, %1
  br i1 %.not51.us68.1, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.lr.ph.split.us76.1
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 76
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 67108864
  %.not52.us69.1 = icmp eq i32 %i.s, 0
  br i1 %.not52.us69.1, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !155 ; 4 uses
  %i.v = fcmp ogt float %i.u, %2
  br i1 %i.v, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq ptr %.03959.us67.1, null
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.03959.us67.1, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !155
  %i.z = fcmp olt float %i.u, %i.y
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.140.us70.1 = phi ptr [ %i.n, %bb.f ], [ %.03959.us67.1, %bb.e ], [ %.03959.us67.1, %bb.c ] ; 3 uses
  %i.aa = fcmp olt float %i.u, %2
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp eq ptr %.03860.us66.1, null
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.03860.us66.1, i64 20
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !155
  %i.ae = fcmp ogt float %i.u, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.b, %.lr.ph.split.us76.1
  %.241.us71.1 = phi ptr [ %.140.us70.1, %bb.g ], [ %.03959.us67.1, %.lr.ph.split.us76.1 ], [ %.03959.us67.1, %bb.b ], [ %.140.us70.1, %bb.j ], [ %.140.us70.1, %bb.i ] ; 3 uses
  %.2.us72.1 = phi ptr [ %.03860.us66.1, %bb.g ], [ %.03860.us66.1, %.lr.ph.split.us76.1 ], [ %.03860.us66.1, %bb.b ], [ %i.n, %bb.j ], [ %.03860.us66.1, %bb.i ] ; 3 uses
  %i.af = add nuw nsw i32 %.061.us65.1, 1         ; 2 uses
  %exitcond.1.not = icmp eq i32 %i.af, %i.d
  br i1 %exitcond.1.not, label %._crit_edge.us.1, label %.lr.ph.split.us76.1, !llvm.loop !730

._crit_edge.us.1:                                 ; preds = %bb.k
  %.not.us.1 = icmp eq ptr %.241.us71.1, null
  br i1 %.not.us.1, label %.thread, label %.split78.us

._crit_edge.us.a:                                 ; preds = %bb.v
  %.not.us.a = icmp eq ptr %.241.us.us, null
  br i1 %.not.us.a, label %4, label %.split78.us

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.v
  %.061.us.us = phi i32 [ %i.bh, %bb.v ], [ 0, %.lr.ph.split.us.us.preheader ] ; 3 uses
  %.03860.us.us = phi ptr [ %.2.us.us, %bb.v ], [ null, %.lr.ph.split.us.us.preheader ] ; 7 uses
  %.03959.us.us = phi ptr [ %.241.us.us, %bb.v ], [ null, %.lr.ph.split.us.us.preheader ] ; 7 uses
  %i.ag = lshr i32 %.061.us.us, 5
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !187
  %i.ak = and i32 %.061.us.us, 31
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.aj, i64 %i.al ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !287
  %.not51.us.us = icmp eq ptr %i.ao, %1
  br i1 %.not51.us.us, label %bb.l, label %bb.v

bb.l:                                             ; preds = %.lr.ph.split.us.us
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 76
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 67108864
  %.not52.us.us = icmp eq i32 %i.ar, 0
  br i1 %.not52.us.us, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.at = load float, ptr %i.as, align 8, !tbaa !166
  %i.au = fcmp une float %i.at, %3
  br i1 %i.au, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.aw = load float, ptr %i.av, align 4, !tbaa !155 ; 4 uses
  %i.ax = fcmp ogt float %i.aw, %2
  br i1 %i.ax, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ay = icmp eq ptr %.03959.us.us, null
  br i1 %i.ay, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %.03959.us.us, i64 20
  %i.ba = load float, ptr %i.az, align 4, !tbaa !155
  %i.bb = fcmp olt float %i.aw, %i.ba
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %.140.us.us = phi ptr [ %i.am, %bb.q ], [ %.03959.us.us, %bb.p ], [ %.03959.us.us, %bb.n ] ; 3 uses
  %i.bc = fcmp olt float %i.aw, %2
  br i1 %i.bc, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bd = icmp eq ptr %.03860.us.us, null
  br i1 %i.bd, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %.03860.us.us, i64 20
  %i.bf = load float, ptr %i.be, align 4, !tbaa !155
  %i.bg = fcmp ogt float %i.aw, %i.bf
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r, %bb.m, %bb.l, %.lr.ph.split.us.us
  %.241.us.us = phi ptr [ %.03959.us.us, %bb.m ], [ %.03959.us.us, %.lr.ph.split.us.us ], [ %.03959.us.us, %bb.l ], [ %.140.us.us, %bb.u ], [ %.140.us.us, %bb.t ], [ %.140.us.us, %bb.r ] ; 3 uses
  %.2.us.us = phi ptr [ %.03860.us.us, %bb.m ], [ %.03860.us.us, %.lr.ph.split.us.us ], [ %.03860.us.us, %bb.l ], [ %i.am, %bb.u ], [ %.03860.us.us, %bb.t ], [ %.03860.us.us, %bb.r ] ; 4 uses
  %i.bh = add nuw nsw i32 %.061.us.us, 1          ; 2 uses
  %exitcond87.not = icmp eq i32 %i.bh, %i.d
  br i1 %exitcond87.not, label %._crit_edge.us.a, label %.lr.ph.split.us.us, !llvm.loop !730

.split78.us:                                      ; preds = %._crit_edge.us.1, %._crit_edge.us.a
  %.us-phi.us.lcssa = phi ptr [ %.241.us.us, %._crit_edge.us.a ], [ %.241.us71.1, %._crit_edge.us.1 ] ; 3 uses
  %.us-phi63.us.lcssa = phi ptr [ %.2.us.us, %._crit_edge.us.a ], [ %.2.us72.1, %._crit_edge.us.1 ] ; 3 uses
  %i.bi = icmp eq ptr %.us-phi63.us.lcssa, null
  br i1 %i.bi, label %.thread, label %bb.w

bb.w:                                             ; preds = %.split78.us
  %i.bj = getelementptr inbounds nuw i8, ptr %.us-phi.us.lcssa, i64 20
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !155
  %i.bl = fmul float %2, 2.000000e+00
  %i.bm = fcmp ult float %i.bk, %i.bl
  br i1 %i.bm, label %.thread56, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %.us-phi63.us.lcssa, i64 20
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !155
  %i.bp = fmul float %2, 5.000000e-01
  %i.bq = fcmp ogt float %i.bo, %i.bp
  br i1 %i.bq, label %.thread, label %.thread56

.thread56:                                        ; preds = %bb.x, %bb.w
  br label %.thread

.thread:                                          ; preds = %._crit_edge.us.1, %4, %bb.a, %bb.x, %.split78.us, %.thread56
  %spec.select = phi ptr [ %.us-phi.us.lcssa, %.split78.us ], [ %.us-phi.us.lcssa, %bb.x ], [ %.us-phi63.us.lcssa, %.thread56 ], [ null, %bb.a ], [ %.2.us.us, %4 ], [ %.2.us72.1, %._crit_edge.us.1 ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z23ImFontAtlasBakedDiscardP11ImFontAtlasP6ImFontP11ImFontBaked(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 2 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !468 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 10156
  %i.e = load i32, ptr %i.d, align 4, !tbaa !469
  %i.f = and i32 %i.e, 256
  %.not50 = icmp eq i32 %i.f, 0
  br i1 %.not50, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !155
  %i.i = fpext float %i.h to double
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !731
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZNK6ImFont12GetDebugNameEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !293
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !298
  br label %_ZNK6ImFont12GetDebugNameEv.exit

_ZNK6ImFont12GetDebugNameEv.exit:                 ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %i.n, %bb.d ], [ @.str.25, %bb.c ]
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.17, double noundef %i.i, ptr noundef %i.o) #35
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6ImFont12GetDebugNameEv.exit, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !481  ; 2 uses
  %i.s = load i32, ptr %i.p, align 8, !tbaa !482  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %.idx = mul nsw i64 %i.t, 44
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %.idx
  %.not5157 = icmp eq i32 %i.s, 0
  br i1 %.not5157, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !293  ; 2 uses
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !295 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %.idx65 = shl nsw i64 %i.ab, 3
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %.idx65
  %.not5259 = icmp eq i32 %i.aa, 0
  %.pre66 = load ptr, ptr %i.w, align 8, !tbaa !490 ; 2 uses
  br i1 %.not5259, label %._crit_edge64, label %.lr.ph63

.lr.ph63:                                         ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 696
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %.04458 = phi ptr [ %i.r, %.lr.ph ], [ %i.bs, %bb.h ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.04458, i64 40
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !477 ; 2 uses
  %.not56 = icmp eq i32 %i.af, -1
  br i1 %.not56, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = and i32 %i.af, 1048575                  ; 2 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !181 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !448
  %i.ak = zext nneg i32 %i.ag to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak ; 3 uses
  %i.am = load i32, ptr %i.al, align 4            ; 4 uses
  %i.an = shl i32 %i.am, 12
  %i.ao = ashr exact i32 %i.an, 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !268
  %i.ar = sext i32 %i.ao to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %i.at = and i32 %i.am, -1073741825
  store i32 %i.at, ptr %i.al, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 144 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !439
  %i.aw = and i32 %i.av, 1048575
  %i.ax = and i32 %i.am, -2147483648
  %i.ay = add i32 %i.am, 1048576
  %i.az = and i32 %i.ay, 1072693248
  %i.ba = or disjoint i32 %i.az, %i.ax
  %i.bb = or disjoint i32 %i.ba, %i.aw
  store i32 %i.bb, ptr %i.al, align 4
  %i.bc = load i32, ptr %i.v, align 8, !tbaa !453 ; 2 uses
  store i32 %i.ag, ptr %i.au, align 8, !tbaa !439
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 156 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !288
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !288
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !451
  %i.bi = zext i16 %i.bh to i32
  %i.bj = add nsw i32 %i.bc, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 6 ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !452
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add nsw i32 %i.bc, %i.bm
  %i.bo = mul nsw i32 %i.bn, %i.bj
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 160 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !470
  %i.br = add nsw i32 %i.bo, %i.bq
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !470
  store i16 0, ptr %i.bk, align 2, !tbaa !452
  store i16 0, ptr %i.bg, align 2, !tbaa !451
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %.04458, i64 44 ; 2 uses
  %.not51 = icmp eq ptr %i.bs, %i.u
  br i1 %.not51, label %._crit_edge, label %bb.f

._crit_edge64.loopexit:                           ; preds = %bb.m
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !490
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %._crit_edge
  %i.bt = phi ptr [ %.pre, %._crit_edge64.loopexit ], [ %.pre66, %._crit_edge ] ; 2 uses
  %.not53 = icmp eq ptr %i.bt, null
  br i1 %.not53, label %bb.o, label %bb.n

bb.i:                                             ; preds = %.lr.ph63, %bb.m
  %.061 = phi ptr [ %i.z, %.lr.ph63 ], [ %i.ce, %bb.m ] ; 2 uses
  %.04360 = phi ptr [ %.pre66, %.lr.ph63 ], [ %i.cd, %bb.m ] ; 2 uses
  %i.bu = load ptr, ptr %.061, align 8, !tbaa !298 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 128
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !299 ; 2 uses
  %.not54 = icmp eq ptr %i.bw, null
  br i1 %.not54, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bx = load ptr, ptr %i.ad, align 8, !tbaa !275
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.by = phi ptr [ %i.bx, %bb.j ], [ %i.bw, %bb.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !437 ; 2 uses
  %.not55 = icmp eq ptr %i.ca, null
  br i1 %.not55, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void %i.ca(ptr noundef %0, ptr noundef nonnull %i.bu, ptr noundef %2, ptr noundef %.04360) #35
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !491
  %i.cd = getelementptr inbounds nuw i8, ptr %.04360, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %.061, i64 8 ; 2 uses
  %.not52 = icmp eq ptr %i.ce, %i.ac
  br i1 %.not52, label %._crit_edge64.loopexit, label %bb.i

bb.n:                                             ; preds = %._crit_edge64
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.bt) #35
  store ptr null, ptr %i.w, align 8, !tbaa !490
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !303
  tail call void @_ZN12ImGuiStorage10SetVoidPtrEjPv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i32 noundef %i.ch, ptr noundef null) #35
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !302
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 8, !tbaa !302
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float 0.000000e+00, ptr %i.cl, align 8, !tbaa !478
  %i.cm = load ptr, ptr %i.q, align 8, !tbaa !481 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i, label %_ZN8ImVectorI11ImFontGlyphE5clearEv.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 0, ptr %i.cn, align 4, !tbaa !480
  store i32 0, ptr %i.p, align 8, !tbaa !482
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.cm) #35
  store ptr null, ptr %i.q, align 8, !tbaa !481
  br label %_ZN8ImVectorI11ImFontGlyphE5clearEv.exit.i

end_hunk_0
