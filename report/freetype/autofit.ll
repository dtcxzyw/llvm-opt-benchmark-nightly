Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/autofit?download=true
inline.NumInlined: 210
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 37
begin_hunk_0_@af_cjk_hints_apply:bb.a

.split63.us.us.us.i:                              ; preds = %.lr.ph.i, %.loopexit.split.us.us.us.i
  %.04764.us.us.i = phi ptr [ %i.am, %.loopexit.split.us.us.us.i ], [ %i.p, %.lr.ph.i ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04764.us.us.i, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !113  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.04764.us.us.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !114
  %i.z = getelementptr inbounds nuw i8, ptr %.04764.us.us.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !115
  %i.ab = sub i64 %i.y, %i.aa
  br label %.split60.us.us.us.us.i

.split60.us.us.us.us.i:                           ; preds = %.split62.us.us.us.us.i, %.split63.us.us.us.i
  %.1.us.us.us.i = phi ptr [ %i.w, %.split63.us.us.us.i ], [ %i.al, %.split62.us.us.us.us.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.us.us.us.i, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !117
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.split60.us.us.us.us.i
  %.1.pn.us.us.us.us.i = phi ptr [ %.1.us.us.us.i, %.split60.us.us.us.us.i ], [ %.0.us.us.us.us.i, %bb.i ]
  %.0.in.us.us.us.us.i = getelementptr inbounds nuw i8, ptr %.1.pn.us.us.us.us.i, i64 64
  %.0.us.us.us.us.i = load ptr, ptr %.0.in.us.us.us.us.i, align 8, !tbaa !118 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.us.us.us.us.i, i64 32 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !120
  %i.ag = add nsw i64 %i.ab, %i.af
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !120
  %i.ah = load i16, ptr %.0.us.us.us.us.i, align 8, !tbaa !121
  %i.ai = or i16 %i.ah, 4
  store i16 %i.ai, ptr %.0.us.us.us.us.i, align 8, !tbaa !121
  %i.aj = icmp eq ptr %.0.us.us.us.us.i, %i.ad
  br i1 %i.aj, label %.split62.us.us.us.us.i, label %bb.i

.split62.us.us.us.us.i:                           ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.us.us.us.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !122 ; 2 uses
  %.not54.us.us.us.i = icmp eq ptr %i.al, %i.w
  br i1 %.not54.us.us.us.i, label %.loopexit.split.us.us.us.i, label %.split60.us.us.us.us.i, !llvm.loop !305

.loopexit.split.us.us.us.i:                       ; preds = %.split62.us.us.us.us.i
  %i.am = getelementptr inbounds nuw i8, ptr %.04764.us.us.i, i64 88 ; 2 uses
  %i.an = icmp ult ptr %i.am, %i.s
  br i1 %i.an, label %.split63.us.us.us.i, label %af_cjk_align_edge_points.exit, !llvm.loop !306

.preheader.us.i:                                  ; preds = %.lr.ph.i, %.loopexit57.split.us.us.i
  %.04764.us69.i = phi ptr [ %i.ba, %.loopexit57.split.us.us.i ], [ %i.p, %.lr.ph.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.04764.us69.i, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !113 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.04764.us69.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !114
  br label %.split.us.us.us.i

.split.us.us.us.i:                                ; preds = %.split59.us.us.us.i, %.preheader.us.i
  %.046.us.us.i = phi ptr [ %i.az, %.split59.us.us.us.i ], [ %i.ap, %.preheader.us.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.046.us.us.i, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !117
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.split.us.us.us.i
  %.046.pn.us.us.us.i = phi ptr [ %.046.us.us.i, %.split.us.us.us.i ], [ %.045.us.us.us.i, %bb.j ]
  %.045.in.us.us.us.i = getelementptr inbounds nuw i8, ptr %.046.pn.us.us.us.i, i64 64
  %.045.us.us.us.i = load ptr, ptr %.045.in.us.us.us.i, align 8, !tbaa !118 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.045.us.us.us.i, i64 32
  store i64 %i.ar, ptr %i.au, align 8, !tbaa !120
  %i.av = load i16, ptr %.045.us.us.us.i, align 8, !tbaa !121
  %i.aw = or i16 %i.av, 4
  store i16 %i.aw, ptr %.045.us.us.us.i, align 8, !tbaa !121
  %i.ax = icmp eq ptr %.045.us.us.us.i, %i.at
  br i1 %i.ax, label %.split59.us.us.us.i, label %bb.j

.split59.us.us.us.i:                              ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.046.us.us.i, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !122 ; 2 uses
  %.not56.us.us.i = icmp eq ptr %i.az, %i.ap
  br i1 %.not56.us.us.i, label %.loopexit57.split.us.us.i, label %.split.us.us.us.i, !llvm.loop !307

.loopexit57.split.us.us.i:                        ; preds = %.split59.us.us.us.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.04764.us69.i, i64 88 ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %i.s
  br i1 %i.bb, label %.preheader.us.i, label %af_cjk_align_edge_points.exit, !llvm.loop !306

af_cjk_align_edge_points.exit:                    ; preds = %.loopexit57.split.us.us.i, %.loopexit.split.us.us.us.i, %.split, %.thread.i
  tail call fastcc void @af_glyph_hints_align_strong_points(ptr noundef nonnull %1, i32 noundef 0)
  tail call fastcc void @af_glyph_hints_align_weak_points(ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.k

bb.k:                                             ; preds = %af_cjk_align_edge_points.exit, %bb.h
  %i.bc = load i32, ptr %i.b, align 8, !tbaa !103
  %i.bd = and i32 %i.bc, 2
  %.not45.1 = icmp eq i32 %i.bd, 0
  br i1 %.not45.1, label %.split33.1, label %bb.n

.split33.1:                                       ; preds = %bb.k
  tail call fastcc void @af_cjk_hint_edges(ptr noundef nonnull %1, i32 noundef 1)
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !109 ; 4 uses
  %.not.i49.1 = icmp eq ptr %i.be, null
  br i1 %.not.i49.1, label %af_cjk_align_edge_points.exit55.1, label %.thread.i50.1

.thread.i50.1:                                    ; preds = %.split33.1
  %i.bf = load i32, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %.idx.1 = mul nuw nsw i64 %i.bg, 88
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.1 ; 2 uses
  %.not58.1 = icmp eq i32 %i.bf, 0
  br i1 %.not58.1, label %af_cjk_align_edge_points.exit55.1, label %.lr.ph.i51.1

.lr.ph.i51.1:                                     ; preds = %.thread.i50.1
  %i.bi = load i32, ptr %i.k, align 4, !tbaa !104
  %i.bj = and i32 %i.bi, 2
  %.not53.i52.1 = icmp eq i32 %i.bj, 0
  br i1 %.not53.i52.1, label %.split63.us65.i.1, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.lr.ph.i51.1, %.loopexit57.split.i.1
  %.04764.i.1 = phi ptr [ %i.bw, %.loopexit57.split.i.1 ], [ %i.be, %.lr.ph.i51.1 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.04764.i.1, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !113 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.04764.i.1, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !114
  br label %.split.i.1

.split.i.1:                                       ; preds = %.split59.i.1, %.preheader.i.1
  %.046.i.1 = phi ptr [ %i.bv, %.split59.i.1 ], [ %i.bl, %.preheader.i.1 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.046.i.1, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !117
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.split.i.1
  %.046.pn.i.1 = phi ptr [ %.046.i.1, %.split.i.1 ], [ %.045.i.1, %bb.l ]
  %.045.in.i.1 = getelementptr inbounds nuw i8, ptr %.046.pn.i.1, i64 64
  %.045.i.1 = load ptr, ptr %.045.in.i.1, align 8, !tbaa !118 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.045.i.1, i64 40
  store i64 %i.bn, ptr %i.bq, align 8, !tbaa !123
  %i.br = load i16, ptr %.045.i.1, align 8, !tbaa !121
  %i.bs = or i16 %i.br, 8
  store i16 %i.bs, ptr %.045.i.1, align 8, !tbaa !121
  %i.bt = icmp eq ptr %.045.i.1, %i.bp
  br i1 %i.bt, label %.split59.i.1, label %bb.l

.split59.i.1:                                     ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.046.i.1, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !122 ; 2 uses
  %.not56.i.1 = icmp eq ptr %i.bv, %i.bl
  br i1 %.not56.i.1, label %.loopexit57.split.i.1, label %.split.i.1, !llvm.loop !307

.loopexit57.split.i.1:                            ; preds = %.split59.i.1
  %i.bw = getelementptr inbounds nuw i8, ptr %.04764.i.1, i64 88 ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %i.bh
  br i1 %i.bx, label %.preheader.i.1, label %af_cjk_align_edge_points.exit55.1, !llvm.loop !306

.split63.us65.i.1:                                ; preds = %.lr.ph.i51.1, %.loopexit.split.us68.i.1
  %.04764.us.i.1 = phi ptr [ %i.cp, %.loopexit.split.us68.i.1 ], [ %i.be, %.lr.ph.i51.1 ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.04764.us.i.1, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !113 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.04764.us.i.1, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !114
  %i.cc = getelementptr inbounds nuw i8, ptr %.04764.us.i.1, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !115
  %i.ce = sub i64 %i.cb, %i.cd
  br label %.split60.us.i.1

.split60.us.i.1:                                  ; preds = %.split62.us.i.1, %.split63.us65.i.1
  %.1.us66.i.1 = phi ptr [ %i.bz, %.split63.us65.i.1 ], [ %i.co, %.split62.us.i.1 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1.us66.i.1, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !117
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.split60.us.i.1
  %.1.pn.us.i.1 = phi ptr [ %.1.us66.i.1, %.split60.us.i.1 ], [ %.0.us.i.1, %bb.m ]
  %.0.in.us.i.1 = getelementptr inbounds nuw i8, ptr %.1.pn.us.i.1, i64 64
  %.0.us.i.1 = load ptr, ptr %.0.in.us.i.1, align 8, !tbaa !118 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.us.i.1, i64 40 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !123
  %i.cj = add nsw i64 %i.ce, %i.ci
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !123
  %i.ck = load i16, ptr %.0.us.i.1, align 8, !tbaa !121
  %i.cl = or i16 %i.ck, 8
  store i16 %i.cl, ptr %.0.us.i.1, align 8, !tbaa !121
  %i.cm = icmp eq ptr %.0.us.i.1, %i.cg
  br i1 %i.cm, label %.split62.us.i.1, label %bb.m

.split62.us.i.1:                                  ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %.1.us66.i.1, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !122 ; 2 uses
  %.not54.us67.i.1 = icmp eq ptr %i.co, %i.bz
  br i1 %.not54.us67.i.1, label %.loopexit.split.us68.i.1, label %.split60.us.i.1, !llvm.loop !305

.loopexit.split.us68.i.1:                         ; preds = %.split62.us.i.1
  %i.cp = getelementptr inbounds nuw i8, ptr %.04764.us.i.1, i64 88 ; 2 uses
  %i.cq = icmp ult ptr %i.cp, %i.bh
  br i1 %i.cq, label %.split63.us65.i.1, label %af_cjk_align_edge_points.exit55.1, !llvm.loop !306

af_cjk_align_edge_points.exit55.1:                ; preds = %.loopexit57.split.i.1, %.loopexit.split.us68.i.1, %.thread.i50.1, %.split33.1
  tail call fastcc void @af_glyph_hints_align_strong_points(ptr noundef nonnull %1, i32 noundef 1)
  tail call fastcc void @af_glyph_hints_align_weak_points(ptr noundef nonnull %1, i32 noundef 1)
  br label %bb.n

bb.n:                                             ; preds = %af_cjk_align_edge_points.exit55.1, %bb.k
  %i.cr = getelementptr i8, ptr %1, i64 44
  %.val = load i32, ptr %i.cr, align 4, !tbaa !124 ; 2 uses
  %i.cs = getelementptr i8, ptr %1, i64 48
  %.val46 = load ptr, ptr %i.cs, align 8, !tbaa !125 ; 2 uses
  %4 = sext i32 %.val to i64
  %.idx.i = mul nuw nsw i64 %4, 80
  %i.ct = getelementptr inbounds nuw i8, ptr %.val46, i64 %.idx.i
  %i.cu = icmp sgt i32 %.val, 0
  br i1 %i.cu, label %.lr.ph.i56.preheader, label %af_glyph_hints_save.exit

.lr.ph.i56.preheader:                             ; preds = %bb.n
  %i.cv = getelementptr i8, ptr %2, i64 16
  %.val48 = load ptr, ptr %i.cv, align 8, !tbaa !127
  %i.cw = getelementptr i8, ptr %2, i64 8
  %.val47 = load ptr, ptr %i.cw, align 8, !tbaa !128
  br label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.lr.ph.i56.preheader, %.lr.ph.i56
  %.03.i = phi ptr [ %i.df, %.lr.ph.i56 ], [ %.val48, %.lr.ph.i56.preheader ] ; 2 uses
  %.0192.i = phi ptr [ %i.de, %.lr.ph.i56 ], [ %.val47, %.lr.ph.i56.preheader ] ; 2 uses
  %.0201.i = phi ptr [ %i.dd, %.lr.ph.i56 ], [ %.val46, %.lr.ph.i56.preheader ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0201.i, i64 32
  %i.cy = load <2 x i64>, ptr %i.cx, align 8, !tbaa !76
  store <2 x i64> %i.cy, ptr %.0192.i, align 8, !tbaa !76
  %i.cz = load i16, ptr %.0201.i, align 8, !tbaa !121
  %i.da = zext i16 %i.cz to i32                   ; 2 uses
  %i.db = and i32 %i.da, 1
  %.not.i57 = icmp eq i32 %i.db, 0
  %i.dc = and i32 %i.da, 2
  %.not21.i = icmp eq i32 %i.dc, 0
  %..i = select i1 %.not21.i, i8 1, i8 2
  %.sink.i = select i1 %.not.i57, i8 %..i, i8 0
  store i8 %.sink.i, ptr %.03.i, align 1, !tbaa !68
  %i.dd = getelementptr inbounds nuw i8, ptr %.0201.i, i64 80 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0192.i, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %.03.i, i64 1
  %i.dg = icmp ult ptr %i.dd, %i.ct
  br i1 %i.dg, label %.lr.ph.i56, label %af_glyph_hints_save.exit, !llvm.loop !2

af_glyph_hints_save.exit:                         ; preds = %.lr.ph.i56, %bb.n, %bb.f, %bb.c, %bb.a
  %.2 = phi i32 [ %i.a, %bb.a ], [ %i.e, %bb.c ], [ %i.h, %bb.f ], [ 0, %bb.n ], [ 0, %.lr.ph.i56 ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @af_dummy_hints_init(ptr nofree noundef writeonly captures(none) initializes((8, 40), (5160, 5164), (5168, 5176)) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5168
  store ptr %1, ptr %i.a, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5160
  store i32 %i.c, ptr %i.d, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <4 x i64>, ptr %i.e, align 8, !tbaa !76
  %i.h = shufflevector <4 x i64> %i.g, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.h, ptr %i.f, align 8, !tbaa !76
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @af_dummy_hints_apply(i32 %0, ptr noundef initializes((44, 48), (60, 64), (88, 92), (104, 108), (2624, 2628), (2640, 2644)) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @af_glyph_hints_reload(ptr noundef %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %af_glyph_hints_save.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 44
  %.val = load i32, ptr %i.b, align 4, !tbaa !124 ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 48
  %.val7 = load ptr, ptr %i.c, align 8, !tbaa !125 ; 2 uses
  %4 = sext i32 %.val to i64
  %.idx.i = mul nuw nsw i64 %4, 80
  %i.d = getelementptr inbounds nuw i8, ptr %.val7, i64 %.idx.i
  %i.e = icmp sgt i32 %.val, 0
  br i1 %i.e, label %.lr.ph.i.preheader, label %af_glyph_hints_save.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.f = getelementptr i8, ptr %2, i64 16
  %.val9 = load ptr, ptr %i.f, align 8, !tbaa !127
  %i.g = getelementptr i8, ptr %2, i64 8
  %.val8 = load ptr, ptr %i.g, align 8, !tbaa !128
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.03.i = phi ptr [ %i.p, %.lr.ph.i ], [ %.val9, %.lr.ph.i.preheader ] ; 2 uses
  %.0192.i = phi ptr [ %i.o, %.lr.ph.i ], [ %.val8, %.lr.ph.i.preheader ] ; 2 uses
  %.0201.i = phi ptr [ %i.n, %.lr.ph.i ], [ %.val7, %.lr.ph.i.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0201.i, i64 32
  %i.i = load <2 x i64>, ptr %i.h, align 8, !tbaa !76
  store <2 x i64> %i.i, ptr %.0192.i, align 8, !tbaa !76
  %i.j = load i16, ptr %.0201.i, align 8, !tbaa !121
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = and i32 %i.k, 1
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = and i32 %i.k, 2
  %.not21.i = icmp eq i32 %i.m, 0
  %..i = select i1 %.not21.i, i8 1, i8 2
  %.sink.i = select i1 %.not.i, i8 %..i, i8 0
  store i8 %.sink.i, ptr %.03.i, align 1, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %.0201.i, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0192.i, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.03.i, i64 1
  %i.q = icmp ult ptr %i.n, %i.d
  br i1 %i.q, label %.lr.ph.i, label %af_glyph_hints_save.exit, !llvm.loop !2

af_glyph_hints_save.exit:                         ; preds = %.lr.ph.i, %bb.b, %bb.a
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @af_indic_metrics_init(ptr nofree noundef captures(none) initializes((80, 84)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.d = load i16, ptr %i.c, align 8, !tbaa !37
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.e, ptr %i.f, align 8, !tbaa !45
  %i.g = tail call i32 @FT_Select_Charmap(ptr noundef %1, i32 noundef 1970170211) #18
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @af_cjk_metrics_init_widths(ptr noundef nonnull %0, ptr noundef nonnull %1)
  tail call fastcc void @af_cjk_metrics_check_digits(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store ptr %i.b, ptr %i.a, align 8, !tbaa !36
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @af_indic_metrics_scale(ptr nofree noundef captures(none) initializes((8, 56)) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !92
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.b = load i64, ptr %i.a, align 8, !tbaa !93
  store i64 %i.b, ptr %1, align 8, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %2, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load i64, ptr %i.c, align 8, !tbaa !93
  store i64 %i.d, ptr %2, align 8, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @af_indic_hints_init(ptr nofree noundef writeonly captures(none) initializes((8, 40), (5160, 5176)) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5168
  store ptr %1, ptr %i.a, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5160
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !76
  store <2 x i64> %i.g, ptr %i.f, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load <2 x i64>, ptr %i.h, align 8, !tbaa !76
  store <2 x i64> %i.j, ptr %i.i, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !102  ; 4 uses
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
  store i32 %i.t, ptr %i.d, align 8, !tbaa !103
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5164
  store i32 %.3.i, ptr %i.u, align 4, !tbaa !104
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @af_indic_hints_apply(i32 %0, ptr noundef initializes((44, 48), (60, 64), (88, 92), (104, 108), (2624, 2628), (2640, 2644)) %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @af_cjk_hints_apply(i32 poison, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @af_latin_metrics_init(ptr noundef initializes((80, 84)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [2 x i32], align 8                ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 3 uses
  %i.k = alloca [20 x i8], align 16               ; 4 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca [51 x i64], align 16              ; 15 uses
  %i.o = alloca [51 x i64], align 16              ; 15 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca [8 x ptr], align 16               ; 9 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %2 = alloca [1 x %struct.AF_GlyphHintsRec_], align 16 ; 16 uses
  %3 = alloca [1 x %struct.AF_LatinMetricsRec_], align 16 ; 9 uses
  %i.t = alloca i64, align 8                      ; 3 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %i.v = alloca i32, align 4                      ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.z = load i16, ptr %i.y, align 8, !tbaa !37
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !130
  %i.ac = tail call i32 @FT_Select_Charmap(ptr noundef %1, i32 noundef 1970170211) #18
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.b, label %bb.di

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5168) %i.af, i8 0, i64 5168, i1 false)
  store ptr %i.ae, ptr %2, align 16, !tbaa !132
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !134
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load ptr, ptr %0, align 8, !tbaa !355
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !135
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @af_script_classes, i64 %i.am
end_hunk_0
begin_hunk_1_@af_latin_hints_apply:bb.a

.preheader.split.us.i400.i:                       ; preds = %.preheader.i378.i, %.preheader.split.us.i400.i
  %.149.us.i401.i = phi i64 [ %spec.select64.us.i405.i, %.preheader.split.us.i400.i ], [ %.04869.i377.i, %.preheader.i378.i ]
  %.144.us.i402.i = phi i64 [ %spec.select.us.i404.i, %.preheader.split.us.i400.i ], [ %.04370.i376.i, %.preheader.i378.i ]
  %.0.us.i403.i = phi ptr [ %i.agu, %.preheader.split.us.i400.i ], [ %i.agm, %.preheader.i378.i ]
  %i.agt = getelementptr inbounds nuw i8, ptr %.0.us.i403.i, i64 64
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !194 ; 3 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 32
  %i.agw = load i64, ptr %i.agv, align 8, !tbaa !120 ; 2 uses
  %spec.select.us.i404.i = tail call i64 @llvm.smin.i64(i64 %i.agw, i64 %.144.us.i402.i) ; 2 uses
  %spec.select64.us.i405.i = tail call i64 @llvm.smax.i64(i64 %i.agw, i64 %.149.us.i401.i) ; 2 uses
  %.not61.us.i406.i = icmp eq ptr %i.agu, %i.agm
  br i1 %.not61.us.i406.i, label %.loopexit.i386.i, label %.preheader.split.us.i400.i, !llvm.loop !381

.preheader.split.i379.i:                          ; preds = %.preheader.i378.i, %.preheader.split.i379.i
  %.140.i380.i = phi i64 [ %spec.select65.i384.i, %.preheader.split.i379.i ], [ %.03971.i375.i, %.preheader.i378.i ]
  %.1.i381.i = phi i64 [ %spec.select62.i383.i, %.preheader.split.i379.i ], [ %.03872.i374.i, %.preheader.i378.i ]
  %.0.i382.i = phi ptr [ %i.agy, %.preheader.split.i379.i ], [ %i.agm, %.preheader.i378.i ]
  %i.agx = getelementptr inbounds nuw i8, ptr %.0.i382.i, i64 64
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !194 ; 3 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 32
  %i.aha = load i64, ptr %i.agz, align 8, !tbaa !120 ; 2 uses
  %spec.select62.i383.i = tail call i64 @llvm.smin.i64(i64 %i.aha, i64 %.1.i381.i) ; 2 uses
  %spec.select65.i384.i = tail call i64 @llvm.smax.i64(i64 %i.aha, i64 %.140.i380.i) ; 2 uses
  %.not61.i385.i = icmp eq ptr %i.agy, %i.agm
  br i1 %.not61.i385.i, label %.loopexit.i386.i, label %.preheader.split.i379.i, !llvm.loop !381

.loopexit.i386.i:                                 ; preds = %.preheader.split.i379.i, %.preheader.split.us.i400.i, %bb.gt
  %.351.i387.i = phi i64 [ %.04869.i377.i, %bb.gt ], [ %spec.select64.us.i405.i, %.preheader.split.us.i400.i ], [ %.04869.i377.i, %.preheader.split.i379.i ] ; 4 uses
  %.447.i388.i = phi i64 [ %.04370.i376.i, %bb.gt ], [ %spec.select.us.i404.i, %.preheader.split.us.i400.i ], [ %.04370.i376.i, %.preheader.split.i379.i ] ; 4 uses
  %.342.i389.i = phi i64 [ %.03971.i375.i, %bb.gt ], [ %.03971.i375.i, %.preheader.split.us.i400.i ], [ %spec.select65.i384.i, %.preheader.split.i379.i ] ; 4 uses
  %.4.i390.i = phi i64 [ %.03872.i374.i, %bb.gt ], [ %.03872.i374.i, %.preheader.split.us.i400.i ], [ %spec.select62.i383.i, %.preheader.split.i379.i ] ; 4 uses
  %indvars.iv.next.i391.i = add nuw nsw i64 %indvars.iv.i373.i, 1 ; 2 uses
  %exitcond.not.i392.i = icmp eq i64 %indvars.iv.next.i391.i, %wide.trip.count.i355.i
  br i1 %exitcond.not.i392.i, label %._crit_edge.i393.i, label %bb.gt, !llvm.loop !382

._crit_edge.i393.i:                               ; preds = %.loopexit.i386.i
  %.not.i394.i = icmp sgt i64 %.4.i390.i, %.351.i387.i
  %.not58.i395.i = icmp sgt i64 %.351.i387.i, %.342.i389.i
  %or.cond.i396.i = select i1 %.not.i394.i, i1 true, i1 %.not58.i395.i
  br i1 %or.cond.i396.i, label %bb.gu, label %af_check_contour_horizontal_overlap.exit407.thread.i

bb.gu:                                            ; preds = %._crit_edge.i393.i
  %.not59.i397.i = icmp sgt i64 %.4.i390.i, %.447.i388.i
  %.not60.i398.i = icmp sgt i64 %.447.i388.i, %.342.i389.i
  %or.cond63.i399.i = select i1 %.not59.i397.i, i1 true, i1 %.not60.i398.i
  br i1 %or.cond63.i399.i, label %af_check_contour_horizontal_overlap.exit407.i, label %af_check_contour_horizontal_overlap.exit407.thread.i

af_check_contour_horizontal_overlap.exit407.i:    ; preds = %bb.gu
  %i.ahb = icmp slt i64 %.351.i387.i, %.342.i389.i
  %i.ahc = icmp sgt i64 %.447.i388.i, %.4.i390.i
  %.not420.i = select i1 %i.ahb, i1 true, i1 %i.ahc
  br i1 %.not420.i, label %af_glyph_hints_apply_vertical_separation_adjustments.exit, label %af_check_contour_horizontal_overlap.exit407.thread.i

af_check_contour_horizontal_overlap.exit407.thread.i: ; preds = %af_check_contour_horizontal_overlap.exit407.i, %bb.gu, %._crit_edge.i393.i
  %i.ahd = sext i32 %.120.i361.i.lcssa to i64     ; 2 uses
  %i.ahe = getelementptr inbounds [8 x i8], ptr %i.afh, i64 %i.ahd
  %i.ahf = load i64, ptr %i.ahe, align 8, !tbaa !76
  %i.ahg = getelementptr inbounds [8 x i8], ptr %i.afi, i64 %i.ahd
  %i.ahh = load i64, ptr %i.ahg, align 8, !tbaa !76 ; 9 uses
  %i.ahi = sub i64 %i.ahh, %i.ahf                 ; 5 uses
  %i.ahj = icmp sgt i64 %i.ahi, %.1150
  br i1 %i.ahj, label %af_glyph_hints_apply_vertical_separation_adjustments.exit, label %.lr.ph431.i.preheader

.lr.ph431.i.preheader:                            ; preds = %af_check_contour_horizontal_overlap.exit407.thread.i
  %xtraiter637 = and i64 %wide.trip.count.i355.i, 1
  %i.ahk = icmp eq i64 %i.afj, 0
  br i1 %i.ahk, label %.lr.ph431.i.epil.preheader, label %.lr.ph431.i.preheader.new

.lr.ph431.i.preheader.new:                        ; preds = %.lr.ph431.i.preheader
  %unroll_iter641 = and i64 %wide.trip.count.i355.i, 2147483646
  br label %.lr.ph431.i

.lr.ph431.i:                                      ; preds = %bb.gx, %.lr.ph431.i.preheader.new
  %indvars.iv440.i = phi i64 [ 0, %.lr.ph431.i.preheader.new ], [ %indvars.iv.next441.i.1, %bb.gx ] ; 5 uses
  %.0237430.i = phi i64 [ 64, %.lr.ph431.i.preheader.new ], [ %.2.i377.1, %bb.gx ] ; 3 uses
  %niter642 = phi i64 [ 0, %.lr.ph431.i.preheader.new ], [ %niter642.next.1, %bb.gx ]
  %i.ahl = icmp eq i64 %indvars.iv440.i, %i.agk
  br i1 %i.ahl, label %.lr.ph431.i.1, label %bb.gv

bb.gv:                                            ; preds = %.lr.ph431.i
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %indvars.iv440.i
  %i.ahn = load i64, ptr %i.ahm, align 8, !tbaa !76
  %i.aho = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv440.i
  %i.ahp = load i64, ptr %i.aho, align 8, !tbaa !76
  %i.ahq = sub i64 %i.ahn, %i.ahh                 ; 3 uses
  %i.ahr = icmp slt i64 %i.ahq, 64
  %i.ahs = icmp slt i64 %i.ahq, %.0237430.i
  %or.cond271.i = select i1 %i.ahr, i1 %i.ahs, i1 false
  %i.aht = icmp sgt i64 %i.ahp, %i.ahh
  %or.cond272.i = select i1 %or.cond271.i, i1 %i.aht, i1 false
  %.1.i376 = select i1 %or.cond272.i, i64 %i.ahq, i64 %.0237430.i
  br label %.lr.ph431.i.1

.lr.ph431.i.1:                                    ; preds = %bb.gv, %.lr.ph431.i
  %.2.i377 = phi i64 [ %.1.i376, %bb.gv ], [ %.0237430.i, %.lr.ph431.i ] ; 3 uses
  %indvars.iv.next441.i = or disjoint i64 %indvars.iv440.i, 1 ; 3 uses
  %i.ahu = icmp eq i64 %indvars.iv.next441.i, %i.agk
  br i1 %i.ahu, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %.lr.ph431.i.1
  %i.ahv = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %indvars.iv.next441.i
  %i.ahw = load i64, ptr %i.ahv, align 8, !tbaa !76
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv.next441.i
  %i.ahy = load i64, ptr %i.ahx, align 8, !tbaa !76
  %i.ahz = sub i64 %i.ahw, %i.ahh                 ; 3 uses
  %i.aia = icmp slt i64 %i.ahz, 64
  %i.aib = icmp slt i64 %i.ahz, %.2.i377
  %or.cond271.i.1 = select i1 %i.aia, i1 %i.aib, i1 false
  %i.aic = icmp sgt i64 %i.ahy, %i.ahh
  %or.cond272.i.1 = select i1 %or.cond271.i.1, i1 %i.aic, i1 false
  %.1.i376.1 = select i1 %or.cond272.i.1, i64 %i.ahz, i64 %.2.i377
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %.lr.ph431.i.1
  %.2.i377.1 = phi i64 [ %.1.i376.1, %bb.gw ], [ %.2.i377, %.lr.ph431.i.1 ] ; 3 uses
  %indvars.iv.next441.i.1 = add nuw nsw i64 %indvars.iv440.i, 2 ; 2 uses
  %niter642.next.1 = add i64 %niter642, 2         ; 2 uses
  %niter642.ncmp.1 = icmp eq i64 %niter642.next.1, %unroll_iter641
  br i1 %niter642.ncmp.1, label %._crit_edge432.i.unr-lcssa, label %.lr.ph431.i, !llvm.loop !384

._crit_edge432.i.unr-lcssa:                       ; preds = %bb.gx
  %lcmp.mod638.not = icmp eq i64 %xtraiter637, 0
  br i1 %lcmp.mod638.not, label %._crit_edge432.i, label %.lr.ph431.i.epil.preheader

.lr.ph431.i.epil.preheader:                       ; preds = %._crit_edge432.i.unr-lcssa, %.lr.ph431.i.preheader
  %indvars.iv440.i.epil.init = phi i64 [ 0, %.lr.ph431.i.preheader ], [ %indvars.iv.next441.i.1, %._crit_edge432.i.unr-lcssa ] ; 3 uses
  %.0237430.i.epil.init = phi i64 [ 64, %.lr.ph431.i.preheader ], [ %.2.i377.1, %._crit_edge432.i.unr-lcssa ] ; 3 uses
  %lcmp.mod640 = trunc i32 %i.aff to i1
  tail call void @llvm.assume(i1 %lcmp.mod640)
  %i.aid = icmp eq i64 %indvars.iv440.i.epil.init, %i.agk
  br i1 %i.aid, label %._crit_edge432.i, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph431.i.epil.preheader
  %i.aie = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %indvars.iv440.i.epil.init
  %i.aif = load i64, ptr %i.aie, align 8, !tbaa !76
  %i.aig = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv440.i.epil.init
  %i.aih = load i64, ptr %i.aig, align 8, !tbaa !76
  %i.aii = sub i64 %i.aif, %i.ahh                 ; 3 uses
  %i.aij = icmp slt i64 %i.aii, 64
  %i.aik = icmp slt i64 %i.aii, %.0237430.i.epil.init
  %or.cond271.i.epil = select i1 %i.aij, i1 %i.aik, i1 false
  %i.ail = icmp sgt i64 %i.aih, %i.ahh
  %or.cond272.i.epil = select i1 %or.cond271.i.epil, i1 %i.ail, i1 false
  %.1.i376.epil = select i1 %or.cond272.i.epil, i64 %i.aii, i64 %.0237430.i.epil.init
  br label %._crit_edge432.i

._crit_edge432.i:                                 ; preds = %.lr.ph431.i.epil.preheader, %bb.gy, %._crit_edge432.i.unr-lcssa
  %.2.i377.lcssa = phi i64 [ %.2.i377.1, %._crit_edge432.i.unr-lcssa ], [ %.1.i376.epil, %bb.gy ], [ %.0237430.i.epil.init, %.lr.ph431.i.epil.preheader ] ; 2 uses
  %i.aim = sub nsw i64 64, %.2.i377.lcssa         ; 3 uses
  %i.ain = and i32 %.0248.i, 32
  %.not434.i = icmp eq i32 %i.ain, 0
  %i.aio = and i32 %.0248.i, 160
  %or.cond30.not.i = icmp eq i32 %i.aio, 0
  br i1 %or.cond30.not.i, label %bb.hb, label %bb.gz

bb.gz:                                            ; preds = %._crit_edge432.i
  %i.aip = sub i64 %i.ahh, %i.aim
  %i.aiq = and i64 %i.aip, 63
  %i.air = icmp eq i64 %i.aiq, 0
  %i.ais = icmp slt i64 %i.ahi, 192
  %or.cond35.i = and i1 %i.ais, %i.air
  br i1 %or.cond35.i, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.ait = add nsw i64 %i.ahi, 32
  %i.aiu = and i64 %i.ait, -64
  %i.aiv = sub nsw i64 %i.aiu, %i.ahi
  %i.aiw = sdiv i64 %i.aiv, 2
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz, %._crit_edge432.i
  %.0235.i = phi i64 [ %i.aiw, %bb.ha ], [ 0, %bb.gz ], [ 0, %._crit_edge432.i ]
  %i.aix = select i1 %.not434.i, i64 0, i64 %.0235.i
  %.0236.i = add nsw i64 %i.aix, %i.aim           ; 3 uses
  %i.aiy = icmp ne i64 %.0236.i, 0
  %i.aiz = icmp sgt i64 %.0236.i, -3
  %or.cond43.i = and i1 %i.aiy, %i.aiz
  br i1 %or.cond43.i, label %bb.hc, label %af_glyph_hints_apply_vertical_separation_adjustments.exit

bb.hc:                                            ; preds = %bb.hb
  %i.aja = icmp slt i64 %.0236.i, 67
  %i.ajb = icmp sgt i64 %.2.i377.lcssa, -3
  %or.cond45.i = select i1 %i.aja, i1 true, i1 %i.ajb
  br i1 %or.cond45.i, label %bb.hd, label %af_glyph_hints_apply_vertical_separation_adjustments.exit

bb.hd:                                            ; preds = %bb.hc
  %i.ajc = sdiv i64 %i.ahi, 8
  %i.ajd = add i64 %i.ajc, %i.ahh
  tail call fastcc void @af_move_contours_down(ptr noundef readonly %1, i64 noundef %i.ajd, i64 noundef %i.aim)
  br label %af_glyph_hints_apply_vertical_separation_adjustments.exit

af_glyph_hints_apply_vertical_separation_adjustments.exit: ; preds = %bb.hd, %bb.hc, %bb.hb, %af_check_contour_horizontal_overlap.exit407.thread.i, %af_check_contour_horizontal_overlap.exit407.i, %bb.gj, %bb.gi, %af_check_contour_horizontal_overlap.exit.thread.i, %af_check_contour_horizontal_overlap.exit.i, %bb.dq, %af_glyph_hints_align_edge_points.exit
  br i1 %i.uf, label %bb.dp, label %af_glyph_hints_apply_vertical_separation_adjustments.exit.thread, !llvm.loop !385

af_glyph_hints_apply_vertical_separation_adjustments.exit.thread: ; preds = %bb.du, %af_glyph_hints_apply_vertical_separation_adjustments.exit
  %i.aje = getelementptr i8, ptr %1, i64 44
  %.val = load i32, ptr %i.aje, align 4, !tbaa !124 ; 2 uses
  %i.ajf = getelementptr i8, ptr %1, i64 48
  %.val186 = load ptr, ptr %i.ajf, align 8, !tbaa !125 ; 2 uses
  %4 = sext i32 %.val to i64
  %.idx.i402 = mul nuw nsw i64 %4, 80
  %i.ajg = getelementptr inbounds nuw i8, ptr %.val186, i64 %.idx.i402
  %i.ajh = icmp sgt i32 %.val, 0
  br i1 %i.ajh, label %.lr.ph.i404.preheader, label %af_latin_hints_compute_blue_edges.exit

.lr.ph.i404.preheader:                            ; preds = %af_glyph_hints_apply_vertical_separation_adjustments.exit.thread
  %i.aji = getelementptr i8, ptr %2, i64 16
  %.val188 = load ptr, ptr %i.aji, align 8, !tbaa !127
  %i.ajj = getelementptr i8, ptr %2, i64 8
  %.val187 = load ptr, ptr %i.ajj, align 8, !tbaa !128
  br label %.lr.ph.i404

.lr.ph.i404:                                      ; preds = %.lr.ph.i404.preheader, %.lr.ph.i404
  %.03.i = phi ptr [ %i.ajs, %.lr.ph.i404 ], [ %.val188, %.lr.ph.i404.preheader ] ; 2 uses
  %.0192.i = phi ptr [ %i.ajr, %.lr.ph.i404 ], [ %.val187, %.lr.ph.i404.preheader ] ; 2 uses
  %.0201.i = phi ptr [ %i.ajq, %.lr.ph.i404 ], [ %.val186, %.lr.ph.i404.preheader ] ; 3 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %.0201.i, i64 32
  %i.ajl = load <2 x i64>, ptr %i.ajk, align 8, !tbaa !76
  store <2 x i64> %i.ajl, ptr %.0192.i, align 8, !tbaa !76
  %i.ajm = load i16, ptr %.0201.i, align 8, !tbaa !121
  %i.ajn = zext i16 %i.ajm to i32                 ; 2 uses
  %i.ajo = and i32 %i.ajn, 1
  %.not.i405 = icmp eq i32 %i.ajo, 0
  %i.ajp = and i32 %i.ajn, 2
  %.not21.i = icmp eq i32 %i.ajp, 0
  %..i = select i1 %.not21.i, i8 1, i8 2
  %.sink.i = select i1 %.not.i405, i8 %..i, i8 0
  store i8 %.sink.i, ptr %.03.i, align 1, !tbaa !68
  %i.ajq = getelementptr inbounds nuw i8, ptr %.0201.i, i64 80 ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %.0192.i, i64 16
  %i.ajs = getelementptr inbounds nuw i8, ptr %.03.i, i64 1
  %i.ajt = icmp ult ptr %i.ajq, %i.ajg
  br i1 %i.ajt, label %.lr.ph.i404, label %af_latin_hints_compute_blue_edges.exit, !llvm.loop !2

af_latin_hints_compute_blue_edges.exit:           ; preds = %.lr.ph.i404, %af_glyph_hints_apply_vertical_separation_adjustments.exit.thread, %af_latin_ignore_bottom.exit356, %bb.a, %bb.c
  %.2 = phi i32 [ %i.a, %bb.a ], [ %i.ki, %af_latin_ignore_bottom.exit356 ], [ %i.h, %bb.c ], [ 0, %af_glyph_hints_apply_vertical_separation_adjustments.exit.thread ], [ 0, %.lr.ph.i404 ]
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
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5168) %i.d, i8 0, i64 5168, i1 false)
  store ptr %i.c, ptr %9, align 16, !tbaa !132
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.e, i8 0, i64 104, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %9, ptr %i.f, align 16, !tbaa !390
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !391  ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !209  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !213  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77   ; 19 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !392  ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !395  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !397  ; 2 uses
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %._crit_edge269.i, label %bb.b

._crit_edge269.i:                                 ; preds = %bb.a
  %.pre270.i = lshr i32 %4, 16
  %.pre272.i = and i32 %.pre270.i, 15
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !398  ; 2 uses
  %i.w = lshr i32 %4, 16
  %i.x = and i32 %i.w, 15                         ; 2 uses
  %.not191.i = icmp eq i32 %i.v, %i.x
  br i1 %.not191.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge269.i
  %.pre-phi273.i = phi i32 [ %.pre272.i, %._crit_edge269.i ], [ %i.x, %bb.b ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %.pre-phi273.i, ptr %i.y, align 8, !tbaa !398
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false), !tbaa.struct !399
  %.pre.i = load i64, ptr %i.s, align 8, !tbaa !397
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi268.i = phi i32 [ %.pre-phi273.i, %bb.c ], [ %i.v, %bb.b ]
  %i.aa = phi i64 [ %.pre.i, %bb.c ], [ %i.t, %bb.b ]
  store ptr %i.h, ptr %5, align 8, !tbaa !150
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !148
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.ac, align 8, !tbaa !400
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !401
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !149
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 0, ptr %i.ag, align 8, !tbaa !402
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store i32 %.pre-phi268.i, ptr %i.ah, align 8, !tbaa !403
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 0, ptr %i.ai, align 4, !tbaa !214
  store ptr %i.h, ptr %10, align 16, !tbaa !404
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 216 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !215 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !216
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.am = call fastcc i32 @af_face_globals_new(ptr noundef nonnull %i.h, ptr noundef %i.al, ptr noundef nonnull %0) ; 2 uses
  %.not13.i.i = icmp eq i32 %i.am, 0
  br i1 %.not13.i.i, label %bb.f, label %af_loader_load_glyph.exit

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !216 ; 2 uses
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !215
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  store ptr @af_face_globals_free, ptr %i.ao, align 8, !tbaa !217
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.ap = phi ptr [ %i.ak, %bb.d ], [ %i.an, %bb.f ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !70
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !170
  %.not.i214.i = icmp ult i32 %3, %i.ar
  br i1 %.not.i214.i, label %bb.h, label %af_face_globals_get_metrics.exit.thread233.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !169
  %i.au = zext i32 %3 to i64                      ; 3 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !78
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 72 ; 3 uses
  %.1.in57.i.i = and i16 %i.aw, 8191
  %i.ay = zext nneg i16 %.1.in57.i.i to i64       ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !218 ; 2 uses
  %.not4558.i.i = icmp eq ptr %i.ba, null
  br i1 %.not4558.i.i, label %.lr.ph.i.i, label %af_face_globals_get_metrics.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.o
  %i.bb = phi i64 [ %i.by, %bb.o ], [ %i.ay, %bb.h ] ; 2 uses
  %.in64.i.i = getelementptr inbounds nuw [8 x i8], ptr @af_style_classes, i64 %i.bb
  %i.bc = load ptr, ptr %.in64.i.i, align 8, !tbaa !219 ; 2 uses
  %.pn.in.in.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %.pn.in.i.i = load i32, ptr %.pn.in.in.i.i, align 4, !tbaa !220
  %.pn.i.i = zext i32 %.pn.in.i.i to i64
  %.in.i.i = getelementptr inbounds nuw [8 x i8], ptr @af_writing_system_classes, i64 %.pn.i.i
  %i.bd = load ptr, ptr %.in.i.i, align 8, !tbaa !222 ; 3 uses
  %i.be = load ptr, ptr %i.ap, align 8, !tbaa !174
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 184
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !131 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !405
  %i.bj = call ptr @ft_mem_alloc(ptr noundef %i.bg, i64 noundef %i.bi, ptr noundef nonnull %i.a) #18 ; 7 uses
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !70  ; 2 uses
  %.not46.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not46.i.i, label %bb.i, label %af_face_globals_get_metrics.exit.thread233.i

bb.i:                                             ; preds = %.lr.ph.i.i
  store ptr %i.bc, ptr %i.bj, align 8, !tbaa !180
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  store ptr %i.ap, ptr %i.bl, align 8, !tbaa !71
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !406 ; 2 uses
  %.not47.i.i = icmp eq ptr %i.bn, null
  br i1 %.not47.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = load ptr, ptr %i.ap, align 8, !tbaa !174
  %i.bp = call i32 %i.bn(ptr noundef nonnull %i.bj, ptr noundef %i.bo) #18, !inline_history !388 ; 2 uses
  store i32 %i.bp, ptr %i.a, align 4, !tbaa !70
  %.not48.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not48.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !224 ; 2 uses
  %.not49.i.i = icmp eq ptr %i.br, null
end_hunk_1
begin_hunk_2_@af_glyph_hints_reload:bb.a
  %i.iv = getelementptr inbounds nuw i8, ptr %.2322378, i64 2
  %i.iw = load i8, ptr %i.iv, align 2, !tbaa !258
  %i.ix = icmp eq i8 %i.iw, 4
  br i1 %i.ix, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.iy = getelementptr inbounds nuw i8, ptr %.2322378, i64 3
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !259
  %i.ja = icmp eq i8 %i.iz, 4
  br i1 %i.ja, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.jb = getelementptr inbounds nuw i8, ptr %.2322378, i64 48
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !263
  %.idx347 = mul nsw i64 %i.jc, 80                ; 2 uses
  %i.jd = getelementptr inbounds i8, ptr %.2322378, i64 %.idx347 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.2322378, i64 56
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !264
  %.idx348 = mul nsw i64 %i.jf, 80                ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %.2322378, i64 %.idx348 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.2322378, i64 24
  %i.ji = load i16, ptr %i.jh, align 8, !tbaa !481
  %i.jj = sext i16 %i.ji to i64                   ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.jl = load i16, ptr %i.jk, align 8, !tbaa !481
  %i.jm = sext i16 %i.jl to i64
  %i.jn = sub nsw i64 %i.jj, %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jp = load i16, ptr %i.jo, align 8, !tbaa !481
  %i.jq = sext i16 %i.jp to i64
  %i.jr = sub nsw i64 %i.jq, %i.jj
  %i.js = xor i64 %i.jr, %i.jn
  %i.jt = icmp sgt i64 %i.js, -1
  br i1 %i.jt, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jd, i64 26
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !482
  %i.jw = sext i16 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %.2322378, i64 26
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !482
  %i.jz = sext i16 %i.jy to i64                   ; 2 uses
  %i.ka = sub nsw i64 %i.jw, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jg, i64 26
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !482
  %i.kd = sext i16 %i.kc to i64
  %i.ke = sub nsw i64 %i.jz, %i.kd
  %i.kf = xor i64 %i.ke, %i.ka
  %i.kg = icmp sgt i64 %i.kf, -1
  br i1 %i.kg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.kh = or disjoint i16 %i.it, 16
  store i16 %i.kh, ptr %.2322378, align 8, !tbaa !121
  %gepdiff349 = sub nsw i64 %.idx347, %.idx348
  %i.ki = sdiv exact i64 %gepdiff349, 80          ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  store i64 %i.ki, ptr %i.kj, align 8, !tbaa !263
  %i.kk = sub nsw i64 0, %i.ki
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !264
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.am, %bb.an, %.lr.ph379
  %i.km = getelementptr inbounds nuw i8, ptr %.2322378, i64 80 ; 2 uses
  %i.kn = icmp ult ptr %i.km, %i.cd
  br i1 %i.kn, label %.lr.ph379, label %.lr.ph381, !llvm.loop !475

.lr.ph381:                                        ; preds = %bb.ar, %.thread
  %.3380 = phi ptr [ %i.mo, %.thread ], [ %i.bz, %bb.ar ] ; 12 uses
  %i.ko = load i16, ptr %.3380, align 8, !tbaa !121 ; 4 uses
  %i.kp = zext i16 %i.ko to i32                   ; 2 uses
  %i.kq = and i32 %i.kp, 16
  %.not341 = icmp eq i32 %i.kq, 0
  br i1 %.not341, label %bb.as, label %.thread

bb.as:                                            ; preds = %.lr.ph381
  %i.kr = and i32 %i.kp, 3
  %.not342 = icmp eq i32 %i.kr, 0
  br i1 %.not342, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.ax, %bb.ay, %bb.av, %bb.as
  %i.ks = phi i16 [ %.pre388, %bb.ax ], [ %i.ko, %bb.ay ], [ %i.ko, %bb.av ], [ %i.ko, %bb.as ]
  %i.kt = or i16 %i.ks, 16
  store i16 %i.kt, ptr %.3380, align 8, !tbaa !121
  br label %.thread

bb.au:                                            ; preds = %bb.as
  %i.ku = getelementptr inbounds nuw i8, ptr %.3380, i64 3
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !259 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.3380, i64 2
  %i.kx = load i8, ptr %i.kw, align 2, !tbaa !258 ; 2 uses
  %i.ky = icmp eq i8 %i.kv, %i.kx
  br i1 %i.ky, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %.not343 = icmp eq i8 %i.kv, 4
  br i1 %.not343, label %bb.aw, label %bb.at

bb.aw:                                            ; preds = %bb.av
  %i.kz = getelementptr inbounds nuw i8, ptr %.3380, i64 48
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !263
  %.idx = mul nsw i64 %i.la, 80                   ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %.3380, i64 %.idx ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.3380, i64 56
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !264
  %.idx345 = mul nsw i64 %i.ld, 80                ; 2 uses
  %i.le = getelementptr inbounds i8, ptr %.3380, i64 %.idx345 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.3380, i64 24
  %i.lg = load i16, ptr %i.lf, align 8, !tbaa !481
  %i.lh = sext i16 %i.lg to i32                   ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lj = load i16, ptr %i.li, align 8, !tbaa !481
  %i.lk = sext i16 %i.lj to i32
  %i.ll = sub nsw i32 %i.lh, %i.lk
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %.3380, i64 26
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !482
  %i.lp = sext i16 %i.lo to i32                   ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.le, i64 26
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !482
  %i.ls = sext i16 %i.lr to i32
  %i.lt = sub nsw i32 %i.lp, %i.ls
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.lw = load i16, ptr %i.lv, align 8, !tbaa !481
  %i.lx = sext i16 %i.lw to i32
  %i.ly = sub nsw i32 %i.lx, %i.lh
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lb, i64 26
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !482
  %i.mc = sext i16 %i.mb to i32
  %i.md = sub nsw i32 %i.mc, %i.lp
  %i.me = sext i32 %i.md to i64
  %i.mf = call i32 @ft_corner_is_flat(i64 noundef %i.lm, i64 noundef %i.lu, i64 noundef %i.lz, i64 noundef %i.me) #18
  %.not344 = icmp eq i32 %i.mf, 0
  br i1 %.not344, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %gepdiff = sub nsw i64 %.idx, %.idx345
  %i.mg = sdiv exact i64 %gepdiff, 80             ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  store i64 %i.mg, ptr %i.mh, align 8, !tbaa !263
  %i.mi = sub nsw i64 0, %i.mg
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lb, i64 56
  store i64 %i.mi, ptr %i.mj, align 8, !tbaa !264
  %.pre388 = load i16, ptr %.3380, align 8, !tbaa !121
  br label %bb.at

bb.ay:                                            ; preds = %bb.au
  %i.mk = sext i8 %i.kv to i32
  %i.ml = sext i8 %i.kx to i32
  %i.mm = sub nsw i32 0, %i.mk
  %i.mn = icmp eq i32 %i.ml, %i.mm
  br i1 %i.mn, label %bb.at, label %.thread

.thread:                                          ; preds = %bb.aw, %bb.at, %bb.ay, %.lr.ph381
  %i.mo = getelementptr inbounds nuw i8, ptr %.3380, i64 80 ; 2 uses
  %i.mp = icmp ult ptr %i.mo, %i.cd
  br i1 %i.mp, label %.lr.ph381, label %.loopexit, !llvm.loop !476

.loopexit:                                        ; preds = %.thread, %.preheader355, %bb.t, %bb.p, %bb.i, %bb.h, %bb.g
  %i.mq = load i32, ptr %i.a, align 4, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.mq
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @af_latin_hints_compute_segments(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %.sroa.5 = alloca [47 x i8], align 1            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr inbounds nuw [2536 x i8], ptr %i.d, i64 %i.e ; 13 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !132    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !191  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !190  ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx579 = shl nsw i64 %i.l, 3
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %.idx579
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.o = load i32, ptr %i.n, align 8, !tbaa !130
  %i.p = udiv i32 %i.o, 14
  %i.q = zext nneg i32 %i.p to i64                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.5, i8 0, i64 47, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !199
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true) ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !152
  %i.u = icmp eq i32 %1, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !125  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.y = load i32, ptr %i.x, align 4, !tbaa !124  ; 2 uses
  %2 = sext i32 %i.y to i64
  %.idx578 = mul nuw nsw i64 %2, 80
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx578 ; 2 uses
  %i.aa = icmp sgt i32 %i.y, 0                    ; 2 uses
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.aa, label %.lr.ph570, label %.loopexit561

.lr.ph570:                                        ; preds = %bb.b, %.lr.ph570
  %.0400569 = phi ptr [ %i.af, %.lr.ph570 ], [ %i.w, %bb.b ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0400569, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.0400569, i64 48
  %i.ad = load <2 x i16>, ptr %i.ab, align 8, !tbaa !78
  %i.ae = sext <2 x i16> %i.ad to <2 x i64>
  store <2 x i64> %i.ae, ptr %i.ac, align 8, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %.0400569, i64 80 ; 2 uses
  %i.ag = icmp ult ptr %i.af, %i.z
  br i1 %i.ag, label %.lr.ph570, label %.loopexit561, !llvm.loop !483

bb.c:                                             ; preds = %bb.a
  br i1 %i.aa, label %.lr.ph, label %.loopexit561

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0399568 = phi ptr [ %i.am, %.lr.ph ], [ %i.w, %bb.c ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0399568, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %.0399568, i64 24
  %i.aj = load <2 x i16>, ptr %i.ai, align 8, !tbaa !78
  %i.ak = shufflevector <2 x i16> %i.aj, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  %i.al = sext <2 x i16> %i.ak to <2 x i64>
  store <2 x i64> %i.al, ptr %i.ah, align 8, !tbaa !76
  %i.am = getelementptr inbounds nuw i8, ptr %.0399568, i64 80 ; 2 uses
  %i.an = icmp ult ptr %i.am, %i.z
  br i1 %i.an, label %.lr.ph, label %.loopexit561, !llvm.loop !484

.loopexit561:                                     ; preds = %.lr.ph, %.lr.ph570, %bb.c, %bb.b
  %i.ao = icmp sgt i32 %i.k, 0
  br i1 %i.ao, label %.lr.ph574, label %._crit_edge

.lr.ph574:                                        ; preds = %.loopexit561
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph574, %bb.ar
  %.0401573 = phi i32 [ %i.t, %.lr.ph574 ], [ %.1402, %bb.ar ]
  %.0405572 = phi ptr [ %i.i, %.lr.ph574 ], [ %i.ho, %bb.ar ] ; 2 uses
  %.0498571 = phi ptr [ null, %.lr.ph574 ], [ %.2500, %bb.ar ]
  %i.as = load ptr, ptr %.0405572, align 8, !tbaa !118 ; 8 uses
  %i.at = load i16, ptr %i.as, align 8, !tbaa !121
  %i.au = and i16 %i.at, 64
  %.not451 = icmp eq i16 %i.au, 0
  br i1 %.not451, label %bb.e, label %.loopexit560

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !262
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !259
  %i.az = call i8 @llvm.abs.i8(i8 %i.ay, i1 false)
  %i.ba = zext i8 %i.az to i32
  %i.bb = icmp eq i32 %i.t, %i.ba
  br i1 %i.bb, label %bb.f, label %.loopexit560

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !259
  %i.be = call i8 @llvm.abs.i8(i8 %i.bd, i1 false)
  %i.bf = zext i8 %i.be to i32
  %i.bg = icmp eq i32 %i.t, %i.bf
  br i1 %i.bg, label %.preheader, label %.loopexit560

.preheader:                                       ; preds = %bb.f, %bb.h
  %.0395 = phi ptr [ %i.bi, %bb.h ], [ %i.as, %bb.f ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0395, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !262 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !259
  %i.bl = call i8 @llvm.abs.i8(i8 %i.bk, i1 false)
  %i.bm = zext i8 %i.bl to i32
  %.not452 = icmp eq i32 %i.t, %i.bm
  br i1 %.not452, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !194
  br label %.loopexit560

bb.h:                                             ; preds = %.preheader
  %i.bp = icmp eq ptr %i.bi, %i.as
  br i1 %i.bp, label %.loopexit560, label %.preheader

.loopexit560:                                     ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.1396 = phi ptr [ %i.as, %bb.d ], [ %i.bo, %bb.g ], [ %i.as, %bb.e ], [ %i.as, %bb.f ], [ %i.bi, %bb.h ] ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.aq, %.loopexit560
  %.1499 = phi ptr [ %.0498571, %.loopexit560 ], [ %.3501, %bb.aq ] ; 21 uses
  %.1402 = phi i32 [ %.0401573, %.loopexit560 ], [ %.2403, %bb.aq ] ; 4 uses
  %.2397 = phi ptr [ %.1396, %.loopexit560 ], [ %i.hn, %bb.aq ] ; 23 uses
  %.0391 = phi i32 [ 0, %.loopexit560 ], [ %.2393, %bb.aq ]
  %.0382 = phi i64 [ 32000, %.loopexit560 ], [ %.7389, %bb.aq ] ; 2 uses
  %.0373 = phi i64 [ -32000, %.loopexit560 ], [ %.7380, %bb.aq ] ; 2 uses
  %.0365 = phi i64 [ 32000, %.loopexit560 ], [ %.6371, %bb.aq ] ; 3 uses
  %.0357 = phi i64 [ -32000, %.loopexit560 ], [ %.6363, %bb.aq ] ; 3 uses
  %.0349 = phi i16 [ 0, %.loopexit560 ], [ %.6355, %bb.aq ] ; 2 uses
  %.0341 = phi i16 [ 0, %.loopexit560 ], [ %.6347, %bb.aq ] ; 2 uses
  %.0332 = phi i64 [ 32000, %.loopexit560 ], [ %.8340, %bb.aq ] ; 3 uses
  %.0326 = phi i64 [ -32000, %.loopexit560 ], [ %.7, %bb.aq ] ; 3 uses
  %.0323 = phi i8 [ 0, %.loopexit560 ], [ %.1324, %bb.aq ] ; 2 uses
  %.0318 = phi ptr [ null, %.loopexit560 ], [ %.4322, %bb.aq ] ; 15 uses
  %.0313 = phi i64 [ 32000, %.loopexit560 ], [ %.4317, %bb.aq ] ; 5 uses
  %.0309 = phi i64 [ -32000, %.loopexit560 ], [ %.4, %bb.aq ] ; 5 uses
  %.0305 = phi i64 [ 32000, %.loopexit560 ], [ %.3308, %bb.aq ] ; 7 uses
  %.0301 = phi i64 [ -32000, %.loopexit560 ], [ %.3304, %bb.aq ] ; 7 uses
  %.0297 = phi i16 [ 0, %.loopexit560 ], [ %.3300, %bb.aq ] ; 5 uses
  %.0293 = phi i16 [ 0, %.loopexit560 ], [ %.3296, %bb.aq ] ; 5 uses
  %.0289 = phi i64 [ 32000, %.loopexit560 ], [ %.3292, %bb.aq ] ; 5 uses
  %.0287 = phi i64 [ -32000, %.loopexit560 ], [ %.3, %bb.aq ] ; 5 uses
  %.not453 = icmp eq i32 %.0391, 0
  br i1 %.not453, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.2397, i64 48
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !263 ; 2 uses
  %spec.select = call i64 @llvm.smin.i64(i64 %i.br, i64 %.0382) ; 8 uses
  %.1374 = call i64 @llvm.smax.i64(i64 %i.br, i64 %.0373) ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.2397, i64 56
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !264 ; 6 uses
  %i.bu = icmp slt i64 %i.bt, %.0365
  %.pre.pre = load i16, ptr %.2397, align 8, !tbaa !121 ; 4 uses
  %spec.select618 = call i64 @llvm.smin.i64(i64 %i.bt, i64 %.0365) ; 11 uses
  %spec.select619 = select i1 %i.bu, i16 %.pre.pre, i16 %.0349 ; 9 uses
  %i.bv = icmp sgt i64 %i.bt, %.0357
  %.1358 = call i64 @llvm.smax.i64(i64 %i.bt, i64 %.0357) ; 11 uses
  %.1342 = select i1 %i.bv, i16 %.pre.pre, i16 %.0341 ; 9 uses
  %i.bw = and i16 %.pre.pre, 3
  %.not454 = icmp eq i16 %i.bw, 0                 ; 2 uses
  %spec.select467 = call i64 @llvm.smin.i64(i64 %i.bt, i64 %.0332)
  %spec.select478 = call i64 @llvm.smax.i64(i64 %i.bt, i64 %.0326)
  %.2334 = select i1 %.not454, i64 %spec.select467, i64 %.0332 ; 9 uses
  %.1327 = select i1 %.not454, i64 %spec.select478, i64 %.0326 ; 9 uses
  %i.bx = and i16 %.pre.pre, 64
  %.not455 = icmp eq i16 %i.bx, 0
  br i1 %.not455, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %.2397, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !259
  %i.ca = sext i8 %i.bz to i32
  %.not456 = icmp ne i32 %.1402, %i.ca
  %i.cb = icmp eq ptr %.2397, %.1396
  %or.cond468 = select i1 %.not456, i1 true, i1 %i.cb
  br i1 %or.cond468, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %.not559 = icmp eq ptr %.0318, null
  br i1 %.not559, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %.1499, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !265
  %i.ce = getelementptr inbounds nuw i8, ptr %.0318, i64 72 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !117 ; 2 uses
  %.not457 = icmp eq ptr %i.cd, %i.cf
  br i1 %.not457, label %bb.p, label %.thread

.thread:                                          ; preds = %bb.j, %bb.m, %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %.1499, i64 72
  store ptr %.2397, ptr %i.cg, align 8, !tbaa !117
  %i.ch = add nsw i64 %spec.select, %.1374
  %i.ci = lshr i64 %i.ch, 1
  %i.cj = trunc i64 %i.ci to i16
  %i.ck = getelementptr inbounds nuw i8, ptr %.1499, i64 2
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !154
  %i.cl = sub nsw i64 %.1374, %spec.select
  %i.cm = lshr i64 %i.cl, 1
  %i.cn = trunc i64 %i.cm to i16
  %i.co = getelementptr inbounds nuw i8, ptr %.1499, i64 4
  store i16 %i.cn, ptr %i.co, align 4, !tbaa !266
  %i.cp = or i16 %.1342, %spec.select619
  %i.cq = and i16 %i.cp, 3
  %.not461 = icmp ne i16 %i.cq, 0
  %i.cr = sub nsw i64 %.1327, %.2334
  %i.cs = icmp slt i64 %i.cr, %i.q
  %or.cond470 = select i1 %.not461, i1 %i.cs, i1 false
  br i1 %or.cond470, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread
  %i.ct = load i8, ptr %.1499, align 8, !tbaa !267
  %i.cu = or i8 %i.ct, 1
  store i8 %i.cu, ptr %.1499, align 8, !tbaa !267
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread
  %i.cv = trunc i64 %spec.select618 to i16        ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.1499, i64 6
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !268
  %i.cx = trunc i64 %.1358 to i16                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1499, i64 8
end_hunk_2
