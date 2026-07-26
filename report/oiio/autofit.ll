inline.NumInlined: 115
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 40
begin_hunk_0_@af_cjk_hints_apply:bb.a
.split63.us.us.us.i:                              ; preds = %.lr.ph.i, %.loopexit.split.us.us.us.i
  %.04564.us.us.i = phi ptr [ %i.am, %.loopexit.split.us.us.us.i ], [ %i.p, %.lr.ph.i ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04564.us.us.i, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !93   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.04564.us.us.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %.04564.us.us.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !97
  %i.ab = sub i64 %i.y, %i.aa
  br label %.split60.us.us.us.us.i

.split60.us.us.us.us.i:                           ; preds = %.split62.us.us.us.us.i, %.split63.us.us.us.i
  %.1.us.us.us.i = phi ptr [ %i.w, %.split63.us.us.us.i ], [ %i.al, %.split62.us.us.us.us.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.us.us.us.i, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !98
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.split60.us.us.us.us.i
  %.1.pn.us.us.us.us.i = phi ptr [ %.1.us.us.us.i, %.split60.us.us.us.us.i ], [ %.0.us.us.us.us.i, %bb.i ]
  %.0.in.us.us.us.us.i = getelementptr inbounds nuw i8, ptr %.1.pn.us.us.us.us.i, i64 64
  %.0.us.us.us.us.i = load ptr, ptr %.0.in.us.us.us.us.i, align 8, !tbaa !100 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.us.us.us.us.i, i64 32 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !101
  %i.ag = add nsw i64 %i.ab, %i.af
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !101
  %i.ah = load i16, ptr %.0.us.us.us.us.i, align 8, !tbaa !103
  %i.ai = or i16 %i.ah, 4
  store i16 %i.ai, ptr %.0.us.us.us.us.i, align 8, !tbaa !103
  %i.aj = icmp eq ptr %.0.us.us.us.us.i, %i.ad
  br i1 %i.aj, label %.split62.us.us.us.us.i, label %bb.i

.split62.us.us.us.us.i:                           ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.us.us.us.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !104 ; 2 uses
  %.not54.us.us.us.i = icmp eq ptr %i.al, %i.w
  br i1 %.not54.us.us.us.i, label %.loopexit.split.us.us.us.i, label %.split60.us.us.us.us.i, !llvm.loop !105

.loopexit.split.us.us.us.i:                       ; preds = %.split62.us.us.us.us.i
  %i.am = getelementptr inbounds nuw i8, ptr %.04564.us.us.i, i64 88 ; 2 uses
  %i.an = icmp ult ptr %i.am, %i.s
  br i1 %i.an, label %.split63.us.us.us.i, label %af_cjk_align_edge_points.exit, !llvm.loop !106

.preheader.us.i:                                  ; preds = %.lr.ph.i, %.loopexit57.split.us.us.i
  %.04564.us69.i = phi ptr [ %i.ba, %.loopexit57.split.us.us.i ], [ %i.p, %.lr.ph.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.04564.us69.i, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !93 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.04564.us69.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !96
  br label %.split.us.us.us.i

.split.us.us.us.i:                                ; preds = %.split59.us.us.us.i, %.preheader.us.i
  %.047.us.us.i = phi ptr [ %i.az, %.split59.us.us.us.i ], [ %i.ap, %.preheader.us.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.047.us.us.i, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !98
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.split.us.us.us.i
  %.047.pn.us.us.us.i = phi ptr [ %.047.us.us.i, %.split.us.us.us.i ], [ %.046.us.us.us.i, %bb.j ]
  %.046.in.us.us.us.i = getelementptr inbounds nuw i8, ptr %.047.pn.us.us.us.i, i64 64
  %.046.us.us.us.i = load ptr, ptr %.046.in.us.us.us.i, align 8, !tbaa !100 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.046.us.us.us.i, i64 32
  store i64 %i.ar, ptr %i.au, align 8, !tbaa !101
  %i.av = load i16, ptr %.046.us.us.us.i, align 8, !tbaa !103
  %i.aw = or i16 %i.av, 4
  store i16 %i.aw, ptr %.046.us.us.us.i, align 8, !tbaa !103
  %i.ax = icmp eq ptr %.046.us.us.us.i, %i.at
  br i1 %i.ax, label %.split59.us.us.us.i, label %bb.j

.split59.us.us.us.i:                              ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.047.us.us.i, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !104 ; 2 uses
  %.not56.us.us.i = icmp eq ptr %i.az, %i.ap
  br i1 %.not56.us.us.i, label %.loopexit57.split.us.us.i, label %.split.us.us.us.i, !llvm.loop !107

.loopexit57.split.us.us.i:                        ; preds = %.split59.us.us.us.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.04564.us69.i, i64 88 ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %i.s
  br i1 %i.bb, label %.preheader.us.i, label %af_cjk_align_edge_points.exit, !llvm.loop !106

af_cjk_align_edge_points.exit:                    ; preds = %.loopexit57.split.us.us.i, %.loopexit.split.us.us.us.i, %.split, %.thread.i
  tail call fastcc void @af_glyph_hints_align_strong_points(ptr noundef nonnull %1, i32 noundef 0)
  tail call fastcc void @af_glyph_hints_align_weak_points(ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.k

bb.k:                                             ; preds = %af_cjk_align_edge_points.exit, %bb.h
  %i.bc = load i32, ptr %i.b, align 8, !tbaa !85
  %i.bd = and i32 %i.bc, 2
  %.not45.1 = icmp eq i32 %i.bd, 0
  br i1 %.not45.1, label %.split33.1, label %bb.n

.split33.1:                                       ; preds = %bb.k
  tail call fastcc void @af_cjk_hint_edges(ptr noundef nonnull %1, i32 noundef 1)
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !87  ; 4 uses
  %.not.i49.1 = icmp eq ptr %i.be, null
  br i1 %.not.i49.1, label %af_cjk_align_edge_points.exit55.1, label %.thread.i50.1

.thread.i50.1:                                    ; preds = %.split33.1
  %i.bf = load i32, ptr %i.j, align 8, !tbaa !92  ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %.idx.1 = mul nuw nsw i64 %i.bg, 88
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.1 ; 2 uses
  %.not58.1 = icmp eq i32 %i.bf, 0
  br i1 %.not58.1, label %af_cjk_align_edge_points.exit55.1, label %.lr.ph.i51.1

.lr.ph.i51.1:                                     ; preds = %.thread.i50.1
  %i.bi = load i32, ptr %i.k, align 4, !tbaa !86
  %i.bj = and i32 %i.bi, 2
  %.not53.i52.1 = icmp eq i32 %i.bj, 0
  br i1 %.not53.i52.1, label %.split63.us68.i.1, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.lr.ph.i51.1, %.loopexit57.split.i.1
  %.04564.i.1 = phi ptr [ %i.bw, %.loopexit57.split.i.1 ], [ %i.be, %.lr.ph.i51.1 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.04564.i.1, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !93 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.04564.i.1, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !96
  br label %.split.i.1

.split.i.1:                                       ; preds = %.split59.i.1, %.preheader.i.1
  %.047.i.1 = phi ptr [ %i.bv, %.split59.i.1 ], [ %i.bl, %.preheader.i.1 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.047.i.1, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !98
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.split.i.1
  %.047.pn.i.1 = phi ptr [ %.047.i.1, %.split.i.1 ], [ %.046.i.1, %bb.l ]
  %.046.in.i.1 = getelementptr inbounds nuw i8, ptr %.047.pn.i.1, i64 64
  %.046.i.1 = load ptr, ptr %.046.in.i.1, align 8, !tbaa !100 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.046.i.1, i64 40
  store i64 %i.bn, ptr %i.bq, align 8, !tbaa !108
  %i.br = load i16, ptr %.046.i.1, align 8, !tbaa !103
  %i.bs = or i16 %i.br, 8
  store i16 %i.bs, ptr %.046.i.1, align 8, !tbaa !103
  %i.bt = icmp eq ptr %.046.i.1, %i.bp
  br i1 %i.bt, label %.split59.i.1, label %bb.l

.split59.i.1:                                     ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.047.i.1, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !104 ; 2 uses
  %.not56.i.1 = icmp eq ptr %i.bv, %i.bl
  br i1 %.not56.i.1, label %.loopexit57.split.i.1, label %.split.i.1, !llvm.loop !107

.loopexit57.split.i.1:                            ; preds = %.split59.i.1
  %i.bw = getelementptr inbounds nuw i8, ptr %.04564.i.1, i64 88 ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %i.bh
  br i1 %i.bx, label %.preheader.i.1, label %af_cjk_align_edge_points.exit55.1, !llvm.loop !106

.split63.us68.i.1:                                ; preds = %.lr.ph.i51.1, %.loopexit.split.us67.i.1
  %.04564.us.i.1 = phi ptr [ %i.cp, %.loopexit.split.us67.i.1 ], [ %i.be, %.lr.ph.i51.1 ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.04564.us.i.1, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !93 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.04564.us.i.1, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !96
  %i.cc = getelementptr inbounds nuw i8, ptr %.04564.us.i.1, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !97
  %i.ce = sub i64 %i.cb, %i.cd
  br label %.split60.us.i.1

.split60.us.i.1:                                  ; preds = %.split62.us.i.1, %.split63.us68.i.1
  %.1.us65.i.1 = phi ptr [ %i.bz, %.split63.us68.i.1 ], [ %i.co, %.split62.us.i.1 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1.us65.i.1, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !98
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.split60.us.i.1
  %.1.pn.us.i.1 = phi ptr [ %.1.us65.i.1, %.split60.us.i.1 ], [ %.0.us.i.1, %bb.m ]
  %.0.in.us.i.1 = getelementptr inbounds nuw i8, ptr %.1.pn.us.i.1, i64 64
  %.0.us.i.1 = load ptr, ptr %.0.in.us.i.1, align 8, !tbaa !100 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.us.i.1, i64 40 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !108
  %i.cj = add nsw i64 %i.ce, %i.ci
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !108
  %i.ck = load i16, ptr %.0.us.i.1, align 8, !tbaa !103
  %i.cl = or i16 %i.ck, 8
  store i16 %i.cl, ptr %.0.us.i.1, align 8, !tbaa !103
  %i.cm = icmp eq ptr %.0.us.i.1, %i.cg
  br i1 %i.cm, label %.split62.us.i.1, label %bb.m

.split62.us.i.1:                                  ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %.1.us65.i.1, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !104 ; 2 uses
  %.not54.us66.i.1 = icmp eq ptr %i.co, %i.bz
  br i1 %.not54.us66.i.1, label %.loopexit.split.us67.i.1, label %.split60.us.i.1, !llvm.loop !105

.loopexit.split.us67.i.1:                         ; preds = %.split62.us.i.1
  %i.cp = getelementptr inbounds nuw i8, ptr %.04564.us.i.1, i64 88 ; 2 uses
  %i.cq = icmp ult ptr %i.cp, %i.bh
  br i1 %i.cq, label %.split63.us68.i.1, label %af_cjk_align_edge_points.exit55.1, !llvm.loop !106

af_cjk_align_edge_points.exit55.1:                ; preds = %.loopexit57.split.i.1, %.loopexit.split.us67.i.1, %.thread.i50.1, %.split33.1
  tail call fastcc void @af_glyph_hints_align_strong_points(ptr noundef nonnull %1, i32 noundef 1)
  tail call fastcc void @af_glyph_hints_align_weak_points(ptr noundef nonnull %1, i32 noundef 1)
  br label %bb.n

bb.n:                                             ; preds = %af_cjk_align_edge_points.exit55.1, %bb.k
  %i.cr = getelementptr i8, ptr %1, i64 44
  %.val = load i32, ptr %i.cr, align 4, !tbaa !109 ; 2 uses
  %i.cs = getelementptr i8, ptr %1, i64 48
  %.val46 = load ptr, ptr %i.cs, align 8, !tbaa !110 ; 2 uses
  %i.ct = sext i32 %.val to i64
  %.idx.i = mul nuw nsw i64 %i.ct, 80
  %i.cu = getelementptr inbounds nuw i8, ptr %.val46, i64 %.idx.i
  %i.cv = icmp sgt i32 %.val, 0
  br i1 %i.cv, label %.lr.ph.i56.preheader, label %af_glyph_hints_save.exit

.lr.ph.i56.preheader:                             ; preds = %bb.n
  %i.cw = getelementptr i8, ptr %2, i64 16
  %.val48 = load ptr, ptr %i.cw, align 8, !tbaa !111
  %i.cx = getelementptr i8, ptr %2, i64 8
  %.val47 = load ptr, ptr %i.cx, align 8, !tbaa !113
  br label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.lr.ph.i56.preheader, %.lr.ph.i56
  %.03.i = phi ptr [ %i.dg, %.lr.ph.i56 ], [ %.val48, %.lr.ph.i56.preheader ] ; 2 uses
  %.0192.i = phi ptr [ %i.df, %.lr.ph.i56 ], [ %.val47, %.lr.ph.i56.preheader ] ; 2 uses
  %.0201.i = phi ptr [ %i.de, %.lr.ph.i56 ], [ %.val46, %.lr.ph.i56.preheader ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0201.i, i64 32
  %i.cz = load <2 x i64>, ptr %i.cy, align 8, !tbaa !68
  store <2 x i64> %i.cz, ptr %.0192.i, align 8, !tbaa !68
  %i.da = load i16, ptr %.0201.i, align 8, !tbaa !103
  %i.db = zext i16 %i.da to i32                   ; 2 uses
  %i.dc = and i32 %i.db, 1
  %.not.i57 = icmp eq i32 %i.dc, 0
  %i.dd = and i32 %i.db, 2
  %.not21.i = icmp eq i32 %i.dd, 0
  %..i = select i1 %.not21.i, i8 1, i8 2
  %.sink.i = select i1 %.not.i57, i8 %..i, i8 0
  store i8 %.sink.i, ptr %.03.i, align 1, !tbaa !41
  %i.de = getelementptr inbounds nuw i8, ptr %.0201.i, i64 80 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0192.i, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %.03.i, i64 1
  %i.dh = icmp ult ptr %i.de, %i.cu
  br i1 %i.dh, label %.lr.ph.i56, label %af_glyph_hints_save.exit, !llvm.loop !114

af_glyph_hints_save.exit:                         ; preds = %.lr.ph.i56, %bb.n, %bb.f, %bb.c, %bb.a
  %.2 = phi i32 [ %i.a, %bb.a ], [ %i.e, %bb.c ], [ %i.h, %bb.f ], [ 0, %bb.n ], [ 0, %.lr.ph.i56 ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @af_dummy_hints_init(ptr nofree noundef writeonly captures(none) initializes((8, 40), (5144, 5148), (5152, 5160)) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5152
  store ptr %1, ptr %i.a, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5144
  store i32 %i.c, ptr %i.d, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !115
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load <2 x i64>, ptr %i.h, align 8, !tbaa !68
  %i.k = shufflevector <2 x i64> %i.j, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.k, ptr %i.i, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !117
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %i.n, align 8, !tbaa !118
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @af_dummy_hints_apply(i32 %0, ptr noundef initializes((44, 48), (60, 64), (72, 76), (88, 92), (2608, 2612), (2624, 2628)) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @af_glyph_hints_reload(ptr noundef %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %af_glyph_hints_save.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 44
  %.val = load i32, ptr %i.b, align 4, !tbaa !109 ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 48
  %.val7 = load ptr, ptr %i.c, align 8, !tbaa !110 ; 2 uses
  %i.d = sext i32 %.val to i64
  %.idx.i = mul nuw nsw i64 %i.d, 80
  %i.e = getelementptr inbounds nuw i8, ptr %.val7, i64 %.idx.i
  %i.f = icmp sgt i32 %.val, 0
  br i1 %i.f, label %.lr.ph.i.preheader, label %af_glyph_hints_save.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = getelementptr i8, ptr %2, i64 16
  %.val9 = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.h = getelementptr i8, ptr %2, i64 8
  %.val8 = load ptr, ptr %i.h, align 8, !tbaa !113
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.03.i = phi ptr [ %i.q, %.lr.ph.i ], [ %.val9, %.lr.ph.i.preheader ] ; 2 uses
  %.0192.i = phi ptr [ %i.p, %.lr.ph.i ], [ %.val8, %.lr.ph.i.preheader ] ; 2 uses
  %.0201.i = phi ptr [ %i.o, %.lr.ph.i ], [ %.val7, %.lr.ph.i.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0201.i, i64 32
  %i.j = load <2 x i64>, ptr %i.i, align 8, !tbaa !68
  store <2 x i64> %i.j, ptr %.0192.i, align 8, !tbaa !68
  %i.k = load i16, ptr %.0201.i, align 8, !tbaa !103
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = and i32 %i.l, 1
  %.not.i = icmp eq i32 %i.m, 0
  %i.n = and i32 %i.l, 2
  %.not21.i = icmp eq i32 %i.n, 0
  %..i = select i1 %.not21.i, i8 1, i8 2
  %.sink.i = select i1 %.not.i, i8 %..i, i8 0
  store i8 %.sink.i, ptr %.03.i, align 1, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %.0201.i, i64 80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0192.i, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.03.i, i64 1
  %i.r = icmp ult ptr %i.o, %i.e
  br i1 %i.r, label %.lr.ph.i, label %af_glyph_hints_save.exit, !llvm.loop !114

af_glyph_hints_save.exit:                         ; preds = %.lr.ph.i, %bb.b, %bb.a
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @af_indic_metrics_init(ptr nofree noundef captures(none) initializes((72, 76)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.d = load i16, ptr %i.c, align 8, !tbaa !27
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.e, ptr %i.f, align 8, !tbaa !28
  %i.g = tail call i32 @FT_Select_Charmap(ptr noundef %1, i32 noundef 1970170211) #18
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @af_cjk_metrics_init_widths(ptr noundef nonnull %0, ptr noundef nonnull %1)
  tail call fastcc void @af_cjk_metrics_check_digits(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store ptr %i.b, ptr %i.a, align 8, !tbaa !7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @af_indic_metrics_scale(ptr nofree noundef captures(none) initializes((8, 56)) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !74
  tail call fastcc void @af_cjk_metrics_scale_dim(ptr noundef %0, ptr noundef nonnull readonly %1, i32 noundef 0)
  tail call fastcc void @af_cjk_metrics_scale_dim(ptr noundef %0, ptr noundef nonnull readonly %1, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @af_indic_get_standard_widths(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15840
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76
  store i64 %i.b, ptr %1, align 8, !tbaa !68
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %2, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.d = load i64, ptr %i.c, align 8, !tbaa !76
  store i64 %i.d, ptr %2, align 8, !tbaa !68
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @af_indic_hints_init(ptr nofree noundef writeonly captures(none) initializes((8, 40), (5144, 5160)) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5152
  store ptr %1, ptr %i.a, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5144
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !68
  store <2 x i64> %i.g, ptr %i.f, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 15424
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load <2 x i64>, ptr %i.h, align 8, !tbaa !68
  store <2 x i64> %i.j, ptr %i.i, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !84   ; 4 uses
  %i.m = icmp eq i32 %i.l, 2                      ; 2 uses
  %i.n = and i32 %i.l, -2
  %or.cond.i = icmp eq i32 %i.n, 2
  %spec.select.i = zext i1 %or.cond.i to i32      ; 2 uses
  %i.o = icmp eq i32 %i.l, 4
  %or.cond3.i = or i1 %i.m, %i.o
  %i.p = or disjoint i32 %spec.select.i, 2
  %.1.i = select i1 %or.cond3.i, i32 %i.p, i32 %spec.select.i ; 2 uses
  %i.q = and i32 %i.l, -3
  %or.cond5.not.i = icmp eq i32 %i.q, 1
  %i.r = or disjoint i32 %.1.i, 4
  %.2.i = select i1 %or.cond5.not.i, i32 %.1.i, i32 %i.r ; 2 uses
  %i.s = or disjoint i32 %.2.i, 8
  %.3.i = select i1 %i.m, i32 %i.s, i32 %.2.i
  %i.t = or i32 %i.c, 4
  store i32 %i.t, ptr %i.d, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5148
  store i32 %.3.i, ptr %i.u, align 4, !tbaa !86
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @af_indic_hints_apply(i32 %0, ptr noundef initializes((44, 48), (60, 64), (72, 76), (88, 92), (2608, 2612), (2624, 2628)) %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @af_cjk_hints_apply(i32 poison, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @af_latin_metrics_init(ptr noundef initializes((72, 76)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [51 x i64], align 16              ; 15 uses
  %i.c = alloca [51 x i64], align 16              ; 15 uses
  %i.d = alloca [10 x ptr], align 16              ; 9 uses
  %2 = alloca [1 x %struct.AF_GlyphHintsRec_], align 16 ; 16 uses
  %3 = alloca [1 x %struct.AF_LatinMetricsRec_], align 16 ; 9 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.i = load i16, ptr %i.h, align 8, !tbaa !27
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  store i32 %i.j, ptr %i.k, align 8, !tbaa !119
  %i.l = tail call i32 @FT_Select_Charmap(ptr noundef %1, i32 noundef 1970170211) #18
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.cu

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !121
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5152) %i.o, i8 0, i64 5152, i1 false)
  store ptr %i.n, ptr %2, align 16, !tbaa !122
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i32 0, ptr %i.p, align 8, !tbaa !123
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 19696 ; 3 uses
  store i32 0, ptr %i.q, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %0, align 8, !tbaa !125
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !126
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @af_script_classes, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !127
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !129  ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !41   ; 2 uses
  %.not119.i = icmp eq i8 %i.aa, 0
  br i1 %.not119.i, label %.loopexit.i, label %.preheader114.lr.ph.i

.preheader114.lr.ph.i:                            ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.preheader114.i

.preheader114.i:                                  ; preds = %af_shaper_get_cluster.exit.thread.i, %.preheader114.lr.ph.i
  %i.ac = phi i8 [ %i.aa, %.preheader114.lr.ph.i ], [ %i.bt, %af_shaper_get_cluster.exit.thread.i ]
  %.078120.i = phi ptr [ %i.z, %.preheader114.lr.ph.i ], [ %.3.lcssa76.i106.i, %af_shaper_get_cluster.exit.thread.i ] ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 32
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader114.i, %.lr.ph.i
  %.179118.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.078120.i, %.preheader114.i ]
end_hunk_0
begin_hunk_1_@af_latin_hints_apply:bb.a
  %i.bk = and i8 %i.bd, 1
  %i.bl = load i16, ptr %.0105.us.i, align 8, !tbaa !200
  %i.bm = sext i16 %i.bl to i64                   ; 3 uses
  %i.bn = load i64, ptr %i.aw, align 8, !tbaa !201 ; 2 uses
  %i.bo = sub nsw i64 %i.bm, %i.bn
  %spec.select.us.i = tail call i64 @llvm.abs.i64(i64 %i.bo, i1 true)
  %sext95.us.i = shl i64 %spec.select.us.i, 32
  %i.bp = ashr exact i64 %sext95.us.i, 32
  %i.bq = mul nsw i64 %i.bp, %i.ai                ; 2 uses
  %i.br = ashr i64 %i.bq, 63
  %i.bs = add nsw i64 %i.bq, 32768
  %i.bt = add nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = shl i64 %i.bt, 16
  %i.bv = ashr i64 %i.bu, 32                      ; 2 uses
  %i.bw = icmp sgt i64 %.075100.us.i, %i.bv       ; 2 uses
  %.176.us.i = tail call i64 @llvm.smin.i64(i64 %.075100.us.i, i64 %i.bv) ; 3 uses
  %.170.us.i = select i1 %i.bw, i8 %i.bk, i8 %.069101.us.i ; 2 uses
  %.168.us.i = select i1 %i.bw, ptr %i.aw, ptr %.067102.us.i ; 2 uses
  %i.bx = load i8, ptr %i.av, align 8, !tbaa !202
  %i.by = trunc i8 %i.bx to i1
  %i.bz = and i64 %i.bt, 281474976645120
  %i.ca = icmp ne i64 %i.bz, 0
  %or.cond4.us.i = and i1 %i.ca, %i.by
  %.not97.us.i = xor i1 %i.bj, true
  %or.cond6.not.us.i = and i1 %or.cond4.us.i, %.not97.us.i
  %i.cb = icmp sgt i64 %i.bn, %i.bm
  %i.cc = xor i1 %i.bb, %i.cb
  %or.cond94.us.i = and i1 %i.cc, %or.cond6.not.us.i
  br i1 %or.cond94.us.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !203
  %i.cf = sub nsw i64 %i.bm, %i.ce
  %spec.select92.us.i = tail call i64 @llvm.abs.i64(i64 %i.cf, i1 true)
  %sext98.us.i = shl i64 %spec.select92.us.i, 32
  %i.cg = ashr exact i64 %sext98.us.i, 32
  %i.ch = mul nsw i64 %i.cg, %i.ai                ; 2 uses
  %i.ci = ashr i64 %i.ch, 63
  %i.cj = add nsw i64 %i.ch, 32768
  %i.ck = add nsw i64 %i.cj, %i.ci
  %i.cl = shl i64 %i.ck, 16
  %i.cm = ashr i64 %i.cl, 32                      ; 2 uses
  %i.cn = icmp sgt i64 %.176.us.i, %i.cm
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.580.us.i = phi i64 [ %.075100.us.i, %bb.i ], [ %.075100.us.i, %bb.j ], [ %.176.us.i, %bb.k ], [ %i.cm, %bb.m ], [ %.176.us.i, %bb.l ]
  %.574.us.i = phi i8 [ %.069101.us.i, %bb.i ], [ %.069101.us.i, %bb.j ], [ %.170.us.i, %bb.k ], [ 0, %bb.m ], [ %.170.us.i, %bb.l ] ; 2 uses
  %.5.us.i = phi ptr [ %.067102.us.i, %bb.i ], [ %.067102.us.i, %bb.j ], [ %.168.us.i, %bb.k ], [ %i.cd, %bb.m ], [ %.168.us.i, %bb.l ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.i, !llvm.loop !204

bb.o:                                             ; preds = %._crit_edge.us.i
  %i.co = getelementptr inbounds nuw i8, ptr %.0105.us.i, i64 40
  store ptr %.5.us.i, ptr %i.co, align 8, !tbaa !205
  %.not90.us.i = icmp eq i8 %.574.us.i, 0
  br i1 %.not90.us.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = load i8, ptr %i.av, align 8, !tbaa !202
  %i.cq = or i8 %i.cp, 8
  store i8 %i.cq, ptr %i.av, align 8, !tbaa !202
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.us.i, %bb.p, %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %.0105.us.i, i64 88 ; 2 uses
  %i.cs = icmp ult ptr %i.cr, %i.ab
  br i1 %i.cs, label %.lr.ph.us.i, label %.loopexit, !llvm.loop !206

._crit_edge.us.i:                                 ; preds = %bb.n
  %.not89.us.i = icmp eq ptr %.5.us.i, null
  br i1 %.not89.us.i, label %bb.q, label %bb.o

.loopexit:                                        ; preds = %bb.q, %bb.d, %bb.f, %bb.g, %bb.h, %.lr.ph107.i
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 2616
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 2608
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cw = load i32, ptr %i.b, align 8, !tbaa !85
  %i.cx = and i32 %i.cw, 1
  %.not49 = icmp eq i32 %i.cx, 0
  br i1 %.not49, label %.split, label %bb.u

.split:                                           ; preds = %.loopexit
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call fastcc void @af_latin_hint_edges(ptr noundef nonnull %1, i32 noundef 0)
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !145 ; 3 uses
  %.not.i54 = icmp eq ptr %i.cz, null
  br i1 %.not.i54, label %af_glyph_hints_align_edge_points.exit, label %bb.r

bb.r:                                             ; preds = %.split
  %i.da = load i32, ptr %i.cv, align 8, !tbaa !146 ; 2 uses
  %i.db = zext i32 %i.da to i64
  %.idx.i55 = mul nuw nsw i64 %i.db, 80
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx.i55
  %.not58.i = icmp eq i32 %i.da, 0
  br i1 %.not58.i, label %af_glyph_hints_align_edge_points.exit, label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %bb.r, %.loopexit.i
  %.048.i = phi ptr [ %i.dn, %.loopexit.i ], [ %i.cz, %bb.r ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.048.i, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !207 ; 2 uses
  %.not42.i = icmp eq ptr %i.de, null
  br i1 %.not42.i, label %.loopexit.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph49.i
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i, i64 72
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !98
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !96
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.0.pn.i = phi ptr [ %.048.i, %bb.s ], [ %.036.i, %bb.t ]
  %.036.in.i = getelementptr inbounds nuw i8, ptr %.0.pn.i, i64 64
  %.036.i = load ptr, ptr %.036.in.i, align 8, !tbaa !100 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.036.i, i64 32
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !101
  %i.dk = load i16, ptr %.036.i, align 8, !tbaa !103
  %i.dl = or i16 %i.dk, 4
  store i16 %i.dl, ptr %.036.i, align 8, !tbaa !103
  %i.dm = icmp eq ptr %.036.i, %i.dg
  br i1 %i.dm, label %.loopexit.i, label %bb.t

.loopexit.i:                                      ; preds = %bb.t, %.lr.ph49.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i, i64 80 ; 2 uses
  %i.do = icmp ult ptr %i.dn, %i.dc
  br i1 %i.do, label %.lr.ph49.i, label %af_glyph_hints_align_edge_points.exit, !llvm.loop !208

af_glyph_hints_align_edge_points.exit:            ; preds = %.loopexit.i, %.split, %bb.r
  tail call fastcc void @af_glyph_hints_align_strong_points(ptr noundef nonnull %1, i32 noundef 0)
  tail call fastcc void @af_glyph_hints_align_weak_points(ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.u

bb.u:                                             ; preds = %af_glyph_hints_align_edge_points.exit, %.loopexit
  %i.dp = load i32, ptr %i.b, align 8, !tbaa !85
  %i.dq = and i32 %i.dp, 2
  %.not50.1 = icmp eq i32 %i.dq, 0
  br i1 %.not50.1, label %.split37.1, label %bb.y

.split37.1:                                       ; preds = %bb.u
  tail call fastcc void @af_latin_hint_edges(ptr noundef nonnull %1, i32 noundef 1)
  %i.dr = load ptr, ptr %i.ct, align 8, !tbaa !145 ; 3 uses
  %.not.i56.1 = icmp eq ptr %i.dr, null
  br i1 %.not.i56.1, label %af_glyph_hints_align_edge_points.exit59.1, label %bb.v

bb.v:                                             ; preds = %.split37.1
  %i.ds = load i32, ptr %i.cu, align 8, !tbaa !146 ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %.idx.i57.1 = mul nuw nsw i64 %i.dt, 80
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx.i57.1
  %.not58.i58.1 = icmp eq i32 %i.ds, 0
  br i1 %.not58.i58.1, label %af_glyph_hints_align_edge_points.exit59.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.v, %.loopexit44.i.1
  %.147.i.1 = phi ptr [ %i.ef, %.loopexit44.i.1 ], [ %i.dr, %bb.v ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.147.i.1, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !207 ; 2 uses
  %.not41.i.1 = icmp eq ptr %i.dw, null
  br i1 %.not41.i.1, label %.loopexit44.i.1, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.1
  %i.dx = getelementptr inbounds nuw i8, ptr %.147.i.1, i64 72
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !98
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !96
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.1.pn.i.1 = phi ptr [ %.147.i.1, %bb.w ], [ %.037.i.1, %bb.x ]
  %.037.in.i.1 = getelementptr inbounds nuw i8, ptr %.1.pn.i.1, i64 64
  %.037.i.1 = load ptr, ptr %.037.in.i.1, align 8, !tbaa !100 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.037.i.1, i64 40
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !108
  %i.ec = load i16, ptr %.037.i.1, align 8, !tbaa !103
  %i.ed = or i16 %i.ec, 8
  store i16 %i.ed, ptr %.037.i.1, align 8, !tbaa !103
  %i.ee = icmp eq ptr %.037.i.1, %i.dy
  br i1 %i.ee, label %.loopexit44.i.1, label %bb.x

.loopexit44.i.1:                                  ; preds = %bb.x, %.lr.ph.i.1
  %i.ef = getelementptr inbounds nuw i8, ptr %.147.i.1, i64 80 ; 2 uses
  %i.eg = icmp ult ptr %i.ef, %i.du
  br i1 %i.eg, label %.lr.ph.i.1, label %af_glyph_hints_align_edge_points.exit59.1, !llvm.loop !209

af_glyph_hints_align_edge_points.exit59.1:        ; preds = %.loopexit44.i.1, %bb.v, %.split37.1
  tail call fastcc void @af_glyph_hints_align_strong_points(ptr noundef nonnull %1, i32 noundef 1)
  tail call fastcc void @af_glyph_hints_align_weak_points(ptr noundef nonnull %1, i32 noundef 1)
  br label %bb.y

bb.y:                                             ; preds = %af_glyph_hints_align_edge_points.exit59.1, %bb.u
  %i.eh = getelementptr i8, ptr %1, i64 44
  %.val = load i32, ptr %i.eh, align 4, !tbaa !109 ; 2 uses
  %i.ei = getelementptr i8, ptr %1, i64 48
  %.val51 = load ptr, ptr %i.ei, align 8, !tbaa !110 ; 2 uses
  %i.ej = sext i32 %.val to i64
  %.idx.i60 = mul nuw nsw i64 %i.ej, 80
  %i.ek = getelementptr inbounds nuw i8, ptr %.val51, i64 %.idx.i60
  %i.el = icmp sgt i32 %.val, 0
  br i1 %i.el, label %.lr.ph.i61.preheader, label %af_glyph_hints_save.exit

.lr.ph.i61.preheader:                             ; preds = %bb.y
  %i.em = getelementptr i8, ptr %2, i64 16
  %.val53 = load ptr, ptr %i.em, align 8, !tbaa !111
  %i.en = getelementptr i8, ptr %2, i64 8
  %.val52 = load ptr, ptr %i.en, align 8, !tbaa !113
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.preheader, %.lr.ph.i61
  %.03.i = phi ptr [ %i.ew, %.lr.ph.i61 ], [ %.val53, %.lr.ph.i61.preheader ] ; 2 uses
  %.0192.i = phi ptr [ %i.ev, %.lr.ph.i61 ], [ %.val52, %.lr.ph.i61.preheader ] ; 2 uses
  %.0201.i = phi ptr [ %i.eu, %.lr.ph.i61 ], [ %.val51, %.lr.ph.i61.preheader ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0201.i, i64 32
  %i.ep = load <2 x i64>, ptr %i.eo, align 8, !tbaa !68
  store <2 x i64> %i.ep, ptr %.0192.i, align 8, !tbaa !68
  %i.eq = load i16, ptr %.0201.i, align 8, !tbaa !103
  %i.er = zext i16 %i.eq to i32                   ; 2 uses
  %i.es = and i32 %i.er, 1
  %.not.i62 = icmp eq i32 %i.es, 0
  %i.et = and i32 %i.er, 2
  %.not21.i = icmp eq i32 %i.et, 0
  %..i = select i1 %.not21.i, i8 1, i8 2
  %.sink.i = select i1 %.not.i62, i8 %..i, i8 0
  store i8 %.sink.i, ptr %.03.i, align 1, !tbaa !41
  %i.eu = getelementptr inbounds nuw i8, ptr %.0201.i, i64 80 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0192.i, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %.03.i, i64 1
  %i.ex = icmp ult ptr %i.eu, %i.ek
  br i1 %i.ex, label %.lr.ph.i61, label %af_glyph_hints_save.exit, !llvm.loop !114

af_glyph_hints_save.exit:                         ; preds = %.lr.ph.i61, %bb.y, %bb.e, %bb.c, %bb.a
  %.2 = phi i32 [ %i.a, %bb.a ], [ %i.h, %bb.c ], [ %i.n, %bb.e ], [ 0, %bb.y ], [ 0, %.lr.ph.i61 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @af_autofitter_load_glyph(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %5 = alloca %struct.AF_ScalerRec_, align 8      ; 11 uses
  %6 = alloca %struct.FT_Matrix_, align 8         ; 5 uses
  %7 = alloca %struct.FT_BBox_, align 16          ; 5 uses
  %8 = alloca %struct.FT_Vector_, align 16        ; 5 uses
  %9 = alloca [1 x %struct.AF_GlyphHintsRec_], align 16 ; 13 uses
  %10 = alloca [1 x %struct.AF_LoaderRec_], align 16 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !210
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5152) %i.e, i8 0, i64 5152, i1 false)
  store ptr %i.d, ptr %9, align 16, !tbaa !122
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.f, i8 0, i64 104, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %9, ptr %i.g, align 16, !tbaa !218
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !222  ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !223  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !224  ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55   ; 19 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !228  ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !229  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !232  ; 2 uses
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %._crit_edge283.i, label %bb.b

._crit_edge283.i:                                 ; preds = %bb.a
  %.pre284.i = lshr i32 %4, 16
  %.pre286.i = and i32 %.pre284.i, 15
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !234  ; 2 uses
  %i.x = lshr i32 %4, 16
  %i.y = and i32 %i.x, 15                         ; 2 uses
  %.not191.i = icmp eq i32 %i.w, %i.y
  br i1 %.not191.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge283.i
  %.pre-phi287.i = phi i32 [ %.pre286.i, %._crit_edge283.i ], [ %i.y, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %.pre-phi287.i, ptr %i.z, align 8, !tbaa !234
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 56, i1 false), !tbaa.struct !235
  %.pre.i = load i64, ptr %i.t, align 8, !tbaa !232
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi282.i = phi i32 [ %.pre-phi287.i, %bb.c ], [ %i.w, %bb.b ]
  %i.ab = phi i64 [ %.pre.i, %bb.c ], [ %i.u, %bb.b ]
  store ptr %i.i, ptr %5, align 8, !tbaa !144
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !142
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.ad, align 8, !tbaa !236
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !237
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !143
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 0, ptr %i.ah, align 8, !tbaa !238
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store i32 %.pre-phi282.i, ptr %i.ai, align 8, !tbaa !239
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 0, ptr %i.aj, align 4, !tbaa !240
  store ptr %i.i, ptr %10, align 16, !tbaa !241
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 216 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !242 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !243
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.an = call fastcc i32 @af_face_globals_new(ptr noundef nonnull %i.i, ptr noundef %i.am, ptr noundef nonnull %0) ; 2 uses
  %.not13.i.i = icmp eq i32 %i.an, 0
  br i1 %.not13.i.i, label %bb.f, label %af_loader_load_glyph.exit

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !243 ; 2 uses
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !242
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  store ptr @af_face_globals_free, ptr %i.ap, align 8, !tbaa !244
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.aq = phi ptr [ %i.al, %bb.d ], [ %i.ao, %bb.f ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !184
  %.not.i214.i = icmp ult i32 %3, %i.as
  br i1 %.not.i214.i, label %bb.h, label %af_face_globals_get_metrics.exit.thread233.i

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !183
  %i.av = zext i32 %3 to i64                      ; 3 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 3 uses
  %.139.in58.i.i = and i16 %i.ax, 16383
  %i.az = zext nneg i16 %.139.in58.i.i to i64     ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !245 ; 2 uses
  %.not4559.i.i = icmp eq ptr %i.bb, null
  br i1 %.not4559.i.i, label %.lr.ph.i.i, label %af_face_globals_get_metrics.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.o
  %i.bc = phi i64 [ %i.bz, %bb.o ], [ %i.az, %bb.h ] ; 2 uses
  %.in65.i.i = getelementptr inbounds nuw [8 x i8], ptr @af_style_classes, i64 %i.bc
  %i.bd = load ptr, ptr %.in65.i.i, align 8, !tbaa !246 ; 2 uses
  %.pn.in.in.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %.pn.in.i.i = load i32, ptr %.pn.in.in.i.i, align 4, !tbaa !247
  %.pn.i.i = zext i32 %.pn.in.i.i to i64
  %.in.i.i = getelementptr inbounds nuw [8 x i8], ptr @af_writing_system_classes, i64 %.pn.i.i
  %i.be = load ptr, ptr %.in.i.i, align 8, !tbaa !248 ; 3 uses
  %i.bf = load ptr, ptr %i.aq, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 184
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !121 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !250
  %i.bk = call ptr @ft_mem_alloc(ptr noundef %i.bh, i64 noundef %i.bj, ptr noundef nonnull %i.a) #18 ; 7 uses
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not46.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not46.i.i, label %bb.i, label %af_face_globals_get_metrics.exit.thread233.i

bb.i:                                             ; preds = %.lr.ph.i.i
  store ptr %i.bd, ptr %i.bk, align 8, !tbaa !252
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  store ptr %i.aq, ptr %i.bm, align 8, !tbaa !45
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !253 ; 2 uses
  %.not47.i.i = icmp eq ptr %i.bo, null
  br i1 %.not47.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = load ptr, ptr %i.aq, align 8, !tbaa !46
  %i.bq = call i32 %i.bo(ptr noundef nonnull %i.bk, ptr noundef %i.bp) #18, !inline_history !254 ; 2 uses
  store i32 %i.bq, ptr %i.a, align 4, !tbaa !3
  %.not48.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not48.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !255 ; 2 uses
  %.not49.i.i = icmp eq ptr %i.bs, null
  br i1 %.not49.i.i, label %bb.m, label %bb.l
end_hunk_1
begin_hunk_2_@af_glyph_hints_reload:bb.a
  %i.is = load i8, ptr %i.ir, align 2, !tbaa !312
  %i.it = icmp eq i8 %i.is, 4
  br i1 %i.it, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.iu = getelementptr inbounds nuw i8, ptr %.2366, i64 3
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !313
  %i.iw = icmp eq i8 %i.iv, 4
  br i1 %i.iw, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.ix = getelementptr inbounds nuw i8, ptr %.2366, i64 48
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !323
  %.idx329 = mul nsw i64 %i.iy, 80                ; 2 uses
  %i.iz = getelementptr inbounds i8, ptr %.2366, i64 %.idx329 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.2366, i64 56
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !324
  %.idx330 = mul nsw i64 %i.jb, 80                ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %.2366, i64 %.idx330 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.2366, i64 24
  %i.je = load i16, ptr %i.jd, align 8, !tbaa !314
  %i.jf = sext i16 %i.je to i64                   ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %i.jh = load i16, ptr %i.jg, align 8, !tbaa !314
  %i.ji = sext i16 %i.jh to i64
  %i.jj = sub nsw i64 %i.jf, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jl = load i16, ptr %i.jk, align 8, !tbaa !314
  %i.jm = sext i16 %i.jl to i64
  %i.jn = sub nsw i64 %i.jm, %i.jf
  %i.jo = xor i64 %i.jn, %i.jj
  %i.jp = icmp sgt i64 %i.jo, -1
  br i1 %i.jp, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.jq = getelementptr inbounds nuw i8, ptr %i.iz, i64 26
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !315
  %i.js = sext i16 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %.2366, i64 26
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !315
  %i.jv = sext i16 %i.ju to i64                   ; 2 uses
  %i.jw = sub nsw i64 %i.js, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jc, i64 26
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !315
  %i.jz = sext i16 %i.jy to i64
  %i.ka = sub nsw i64 %i.jv, %i.jz
  %i.kb = xor i64 %i.ka, %i.jw
  %i.kc = icmp sgt i64 %i.kb, -1
  br i1 %i.kc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kd = or disjoint i16 %i.ip, 16
  store i16 %i.kd, ptr %.2366, align 8, !tbaa !103
  %gepdiff331 = sub nsw i64 %.idx329, %.idx330
  %i.ke = sdiv exact i64 %gepdiff331, 80          ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jc, i64 48
  store i64 %i.ke, ptr %i.kf, align 8, !tbaa !323
  %i.kg = sub nsw i64 0, %i.ke
  %i.kh = getelementptr inbounds nuw i8, ptr %i.iz, i64 56
  store i64 %i.kg, ptr %i.kh, align 8, !tbaa !324
  br label %bb.ap

bb.ap:                                            ; preds = %bb.am, %bb.an, %bb.ao, %bb.ak, %bb.al, %.lr.ph367
  %i.ki = getelementptr inbounds nuw i8, ptr %.2366, i64 80 ; 2 uses
  %i.kj = icmp ult ptr %i.ki, %i.br
  br i1 %i.kj, label %.lr.ph367, label %.lr.ph369, !llvm.loop !328

.lr.ph369:                                        ; preds = %bb.ap, %.thread
  %.3368 = phi ptr [ %i.mk, %.thread ], [ %i.bn, %bb.ap ] ; 12 uses
  %i.kk = load i16, ptr %.3368, align 8, !tbaa !103 ; 4 uses
  %i.kl = zext i16 %i.kk to i32                   ; 2 uses
  %i.km = and i32 %i.kl, 16
  %.not323 = icmp eq i32 %i.km, 0
  br i1 %.not323, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %.lr.ph369
  %i.kn = and i32 %i.kl, 3
  %.not324 = icmp eq i32 %i.kn, 0
  br i1 %.not324, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.av, %bb.aw, %bb.at, %bb.aq
  %i.ko = phi i16 [ %.pre376, %bb.av ], [ %i.kk, %bb.aw ], [ %i.kk, %bb.at ], [ %i.kk, %bb.aq ]
  %i.kp = or i16 %i.ko, 16
  store i16 %i.kp, ptr %.3368, align 8, !tbaa !103
  br label %.thread

bb.as:                                            ; preds = %bb.aq
  %i.kq = getelementptr inbounds nuw i8, ptr %.3368, i64 3
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !313 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.3368, i64 2
  %i.kt = load i8, ptr %i.ks, align 2, !tbaa !312 ; 2 uses
  %i.ku = icmp eq i8 %i.kr, %i.kt
  br i1 %i.ku, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %.not325 = icmp eq i8 %i.kr, 4
  br i1 %.not325, label %bb.au, label %bb.ar

bb.au:                                            ; preds = %bb.at
  %i.kv = getelementptr inbounds nuw i8, ptr %.3368, i64 48
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !323
  %.idx = mul nsw i64 %i.kw, 80                   ; 2 uses
  %i.kx = getelementptr inbounds i8, ptr %.3368, i64 %.idx ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.3368, i64 56
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !324
  %.idx327 = mul nsw i64 %i.kz, 80                ; 2 uses
  %i.la = getelementptr inbounds i8, ptr %.3368, i64 %.idx327 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.3368, i64 24
  %i.lc = load i16, ptr %i.lb, align 8, !tbaa !314
  %i.ld = sext i16 %i.lc to i32                   ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lf = load i16, ptr %i.le, align 8, !tbaa !314
  %i.lg = sext i16 %i.lf to i32
  %i.lh = sub nsw i32 %i.ld, %i.lg
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %.3368, i64 26
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !315
  %i.ll = sext i16 %i.lk to i32                   ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.la, i64 26
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !315
  %i.lo = sext i16 %i.ln to i32
  %i.lp = sub nsw i32 %i.ll, %i.lo
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.ls = load i16, ptr %i.lr, align 8, !tbaa !314
  %i.lt = sext i16 %i.ls to i32
  %i.lu = sub nsw i32 %i.lt, %i.ld
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kx, i64 26
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !315
  %i.ly = sext i16 %i.lx to i32
  %i.lz = sub nsw i32 %i.ly, %i.ll
  %i.ma = sext i32 %i.lz to i64
  %i.mb = call i32 @ft_corner_is_flat(i64 noundef %i.li, i64 noundef %i.lq, i64 noundef %i.lv, i64 noundef %i.ma) #18
  %.not326 = icmp eq i32 %i.mb, 0
  br i1 %.not326, label %.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %gepdiff = sub nsw i64 %.idx, %.idx327
  %i.mc = sdiv exact i64 %gepdiff, 80             ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.la, i64 48
  store i64 %i.mc, ptr %i.md, align 8, !tbaa !323
  %i.me = sub nsw i64 0, %i.mc
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kx, i64 56
  store i64 %i.me, ptr %i.mf, align 8, !tbaa !324
  %.pre376 = load i16, ptr %.3368, align 8, !tbaa !103
  br label %bb.ar

bb.aw:                                            ; preds = %bb.as
  %i.mg = sext i8 %i.kr to i32
  %i.mh = sext i8 %i.kt to i32
  %i.mi = sub nsw i32 0, %i.mg
  %i.mj = icmp eq i32 %i.mh, %i.mi
  br i1 %i.mj, label %bb.ar, label %.thread

.thread:                                          ; preds = %bb.au, %bb.ar, %bb.aw, %.lr.ph369
  %i.mk = getelementptr inbounds nuw i8, ptr %.3368, i64 80 ; 2 uses
  %i.ml = icmp ult ptr %i.mk, %i.br
  br i1 %i.ml, label %.lr.ph369, label %.loopexit, !llvm.loop !329

.loopexit:                                        ; preds = %.thread, %.preheader343, %bb.r, %bb.n, %bb.g
  %i.mm = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.mm
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @af_latin_hints_compute_segments(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %.sroa.5 = alloca [47 x i8], align 1            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr inbounds nuw [2536 x i8], ptr %i.d, i64 %i.e ; 13 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !122    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !307  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !304  ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx564 = shl nsw i64 %i.l, 3
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %.idx564
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.o = load i32, ptr %i.n, align 8, !tbaa !119
  %i.p = udiv i32 %i.o, 14
  %i.q = zext nneg i32 %i.p to i64                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.5, i8 0, i64 47, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !199
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true) ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !146
  %i.u = icmp eq i32 %1, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.y = load i32, ptr %i.x, align 4, !tbaa !109  ; 2 uses
  %i.z = sext i32 %i.y to i64
  %.idx563 = mul nuw nsw i64 %i.z, 80
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx563 ; 2 uses
  %i.ab = icmp sgt i32 %i.y, 0                    ; 2 uses
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.ab, label %.lr.ph555, label %.loopexit546

.lr.ph555:                                        ; preds = %bb.b, %.lr.ph555
  %.0291554 = phi ptr [ %i.ag, %.lr.ph555 ], [ %i.w, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0291554, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.0291554, i64 48
  %i.ae = load <2 x i16>, ptr %i.ac, align 8, !tbaa !56
  %i.af = sext <2 x i16> %i.ae to <2 x i64>
  store <2 x i64> %i.af, ptr %i.ad, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %.0291554, i64 80 ; 2 uses
  %i.ah = icmp ult ptr %i.ag, %i.aa
  br i1 %i.ah, label %.lr.ph555, label %.loopexit546, !llvm.loop !330

bb.c:                                             ; preds = %bb.a
  br i1 %i.ab, label %.lr.ph, label %.loopexit546

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0407553 = phi ptr [ %i.an, %.lr.ph ], [ %i.w, %bb.c ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0407553, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.0407553, i64 24
  %i.ak = load <2 x i16>, ptr %i.aj, align 8, !tbaa !56
  %i.al = shufflevector <2 x i16> %i.ak, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  %i.am = sext <2 x i16> %i.al to <2 x i64>
  store <2 x i64> %i.am, ptr %i.ai, align 8, !tbaa !68
  %i.an = getelementptr inbounds nuw i8, ptr %.0407553, i64 80 ; 2 uses
  %i.ao = icmp ult ptr %i.an, %i.aa
  br i1 %i.ao, label %.lr.ph, label %.loopexit546, !llvm.loop !331

.loopexit546:                                     ; preds = %.lr.ph, %.lr.ph555, %bb.c, %bb.b
  %i.ap = icmp sgt i32 %i.k, 0
  br i1 %i.ap, label %.lr.ph559, label %._crit_edge

.lr.ph559:                                        ; preds = %.loopexit546
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph559, %bb.aq
  %.0284558 = phi ptr [ %i.i, %.lr.ph559 ], [ %i.hi, %bb.aq ] ; 2 uses
  %.0285557 = phi i32 [ %i.t, %.lr.ph559 ], [ %.1286, %bb.aq ]
  %.0556 = phi ptr [ null, %.lr.ph559 ], [ %.2, %bb.aq ]
  %i.at = load ptr, ptr %.0284558, align 8, !tbaa !100 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !318
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !313
  %i.ay = call i8 @llvm.abs.i8(i8 %i.ax, i1 false)
  %i.az = zext i8 %i.ay to i32
  %i.ba = icmp eq i32 %i.t, %i.az
  br i1 %i.ba, label %bb.e, label %.loopexit545

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !313
  %i.bd = call i8 @llvm.abs.i8(i8 %i.bc, i1 false)
  %i.be = zext i8 %i.bd to i32
  %i.bf = icmp eq i32 %i.t, %i.be
  br i1 %i.bf, label %.preheader, label %.loopexit545

.preheader:                                       ; preds = %bb.e, %bb.g
  %.0403 = phi ptr [ %i.bh, %bb.g ], [ %i.at, %bb.e ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0403, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !318 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !313
  %i.bk = call i8 @llvm.abs.i8(i8 %i.bj, i1 false)
  %i.bl = zext i8 %i.bk to i32
  %.not444 = icmp eq i32 %i.t, %i.bl
  br i1 %.not444, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !319
  br label %.loopexit545

bb.g:                                             ; preds = %.preheader
  %i.bo = icmp eq ptr %i.bh, %i.at
  br i1 %i.bo, label %.loopexit545, label %.preheader

.loopexit545:                                     ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.1404 = phi ptr [ %i.bn, %bb.f ], [ %i.at, %bb.d ], [ %i.at, %bb.e ], [ %i.bh, %bb.g ] ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.ap, %.loopexit545
  %.1 = phi ptr [ %.0556, %.loopexit545 ], [ %.3490, %bb.ap ] ; 21 uses
  %.2405 = phi ptr [ %.1404, %.loopexit545 ], [ %i.hh, %bb.ap ] ; 22 uses
  %.0399 = phi i32 [ 0, %.loopexit545 ], [ %.2401, %bb.ap ]
  %.0390 = phi i64 [ 32000, %.loopexit545 ], [ %.7397, %bb.ap ] ; 2 uses
  %.0381 = phi i64 [ -32000, %.loopexit545 ], [ %.7388, %bb.ap ] ; 2 uses
  %.0373 = phi i64 [ 32000, %.loopexit545 ], [ %.6379, %bb.ap ] ; 3 uses
  %.0365 = phi i64 [ -32000, %.loopexit545 ], [ %.6371, %bb.ap ] ; 3 uses
  %.0357 = phi i16 [ 0, %.loopexit545 ], [ %.6363, %bb.ap ] ; 2 uses
  %.0349 = phi i16 [ 0, %.loopexit545 ], [ %.6355, %bb.ap ] ; 2 uses
  %.0340 = phi i64 [ 32000, %.loopexit545 ], [ %.8348, %bb.ap ] ; 3 uses
  %.0334 = phi i64 [ -32000, %.loopexit545 ], [ %.7, %bb.ap ] ; 3 uses
  %.0331 = phi i8 [ 0, %.loopexit545 ], [ %.1332, %bb.ap ] ; 2 uses
  %.0326 = phi ptr [ null, %.loopexit545 ], [ %.4330, %bb.ap ] ; 15 uses
  %.0321 = phi i64 [ 32000, %.loopexit545 ], [ %.4325, %bb.ap ] ; 5 uses
  %.0316 = phi i64 [ -32000, %.loopexit545 ], [ %.4320, %bb.ap ] ; 5 uses
  %.0312 = phi i64 [ 32000, %.loopexit545 ], [ %.3315, %bb.ap ] ; 7 uses
  %.0308 = phi i64 [ -32000, %.loopexit545 ], [ %.3311, %bb.ap ] ; 7 uses
  %.0304 = phi i16 [ 0, %.loopexit545 ], [ %.3307, %bb.ap ] ; 5 uses
  %.0300 = phi i16 [ 0, %.loopexit545 ], [ %.3303, %bb.ap ] ; 5 uses
  %.0296 = phi i64 [ 32000, %.loopexit545 ], [ %.3299, %bb.ap ] ; 5 uses
  %.0292 = phi i64 [ -32000, %.loopexit545 ], [ %.3295, %bb.ap ] ; 5 uses
  %.1286 = phi i32 [ %.0285557, %.loopexit545 ], [ %.2287, %bb.ap ] ; 4 uses
  %.not445 = icmp eq i32 %.0399, 0
  br i1 %.not445, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %.2405, i64 48
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !323 ; 2 uses
  %spec.select = call i64 @llvm.smin.i64(i64 %i.bq, i64 %.0390) ; 8 uses
  %.1382 = call i64 @llvm.smax.i64(i64 %i.bq, i64 %.0381) ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.2405, i64 56
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !324 ; 6 uses
  %i.bt = icmp slt i64 %i.bs, %.0373
  %.pre.pre = load i16, ptr %.2405, align 8, !tbaa !103 ; 3 uses
  %spec.select604 = call i64 @llvm.smin.i64(i64 %i.bs, i64 %.0373) ; 11 uses
  %spec.select605 = select i1 %i.bt, i16 %.pre.pre, i16 %.0357 ; 9 uses
  %i.bu = icmp sgt i64 %i.bs, %.0365
  %.1366 = call i64 @llvm.smax.i64(i64 %i.bs, i64 %.0365) ; 11 uses
  %.1350 = select i1 %i.bu, i16 %.pre.pre, i16 %.0349 ; 9 uses
  %i.bv = and i16 %.pre.pre, 3
  %.not446 = icmp eq i16 %i.bv, 0                 ; 2 uses
  %spec.select460 = call i64 @llvm.smin.i64(i64 %i.bs, i64 %.0340)
  %spec.select470 = call i64 @llvm.smax.i64(i64 %i.bs, i64 %.0334)
  %.2342 = select i1 %.not446, i64 %spec.select460, i64 %.0340 ; 9 uses
  %.1335 = select i1 %.not446, i64 %spec.select470, i64 %.0334 ; 9 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.2405, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !313
  %i.by = sext i8 %i.bx to i32
  %.not447 = icmp ne i32 %.1286, %i.by
  %i.bz = icmp eq ptr %.2405, %.1404
  %or.cond = select i1 %.not447, i1 true, i1 %i.bz
  br i1 %or.cond, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %.not448 = icmp eq ptr %.0326, null
  br i1 %.not448, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.1, i64 64
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !332
  %i.cc = getelementptr inbounds nuw i8, ptr %.0326, i64 72 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !98 ; 2 uses
  %.not449 = icmp eq ptr %i.cb, %i.cd
  br i1 %.not449, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %.1, i64 72
  store ptr %.2405, ptr %i.ce, align 8, !tbaa !98
  %i.cf = add nsw i64 %spec.select, %.1382
  %i.cg = lshr i64 %i.cf, 1
  %i.ch = trunc i64 %i.cg to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %.1, i64 2
  store i16 %i.ch, ptr %i.ci, align 2, !tbaa !148
  %i.cj = sub nsw i64 %.1382, %spec.select
  %i.ck = lshr i64 %i.cj, 1
  %i.cl = trunc i64 %i.ck to i16
  %i.cm = getelementptr inbounds nuw i8, ptr %.1, i64 4
  store i16 %i.cl, ptr %i.cm, align 4, !tbaa !333
  %i.cn = or i16 %.1350, %spec.select605
  %i.co = and i16 %i.cn, 3
  %.not453 = icmp ne i16 %i.co, 0
  %i.cp = sub nsw i64 %.1335, %.2342
  %i.cq = icmp slt i64 %i.cp, %i.q
  %or.cond462 = select i1 %.not453, i1 %i.cq, i1 false
  br i1 %or.cond462, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cr = load i8, ptr %.1, align 8, !tbaa !334
  %i.cs = or i8 %i.cr, 1
  store i8 %i.cs, ptr %.1, align 8, !tbaa !334
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ct = trunc i64 %spec.select604 to i16        ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1, i64 6
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !335
  %i.cv = trunc i64 %.1366 to i16                 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store i16 %i.cv, ptr %i.cw, align 8, !tbaa !336
  %i.cx = sub i16 %i.cv, %i.ct
  %i.cy = getelementptr inbounds nuw i8, ptr %.1, i64 10
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !337
  br label %bb.w

bb.o:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.da = load i8, ptr %i.cz, align 2, !tbaa !312
  %i.db = getelementptr inbounds nuw i8, ptr %.2405, i64 2
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !312
  %i.dd = icmp eq i8 %i.da, %i.dc
  br i1 %i.dd, label %bb.p, label %bb.q
end_hunk_2
