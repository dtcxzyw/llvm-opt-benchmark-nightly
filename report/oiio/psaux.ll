inline.NumInlined: 440
inline.NumDeleted: 103
begin_hunk_0_@cf2_stack_getReal:bb.a
  %.not = icmp ult i32 %1, %i.g
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !598  ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %cf2_setError.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %.not3.i = icmp eq i32 %i.j, 0
  br i1 %.not3.i, label %bb.d, label %cf2_setError.exit

bb.d:                                             ; preds = %bb.c
  store i32 130, ptr %i.i, align 4, !tbaa !3
  br label %cf2_setError.exit

bb.e:                                             ; preds = %bb.a
  %i.k = zext i32 %1 to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !604
  %i.o = load i32, ptr %i.l, align 4, !tbaa !38   ; 4 uses
  switch i32 %i.n, label %cf2_setError.exit [
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = shl i32 %i.o, 16
  br label %cf2_setError.exit

bb.g:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.o, 8192
  %.lobit.neg = ashr i32 %i.o, 31
  %i.r = add nsw i32 %i.q, %.lobit.neg
  %i.s = ashr i32 %i.r, 14
  br label %cf2_setError.exit

cf2_setError.exit:                                ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.g, %bb.f
  %.0 = phi i32 [ %i.s, %bb.g ], [ 0, %bb.d ], [ %i.p, %bb.f ], [ 0, %bb.b ], [ 0, %bb.c ], [ %i.o, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @cf2_stack_popFixed(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !601  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !599
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !598  ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %cf2_setError.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %.not3.i = icmp eq i32 %i.h, 0
  br i1 %.not3.i, label %bb.d, label %cf2_setError.exit

bb.d:                                             ; preds = %bb.c
  store i32 161, ptr %i.g, align 4, !tbaa !3
  br label %cf2_setError.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !601
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !604
  %i.l = load i32, ptr %i.i, align 4, !tbaa !38   ; 4 uses
  switch i32 %i.k, label %cf2_setError.exit [
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = shl i32 %i.l, 16
  br label %cf2_setError.exit

bb.g:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.l, 8192
  %.lobit.neg = ashr i32 %i.l, 31
  %i.o = add nsw i32 %i.n, %.lobit.neg
  %i.p = ashr i32 %i.o, 14
  br label %cf2_setError.exit

cf2_setError.exit:                                ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.g, %bb.f
  %.0 = phi i32 [ %i.p, %bb.g ], [ 0, %bb.d ], [ %i.m, %bb.f ], [ 0, %bb.b ], [ 0, %bb.c ], [ %i.l, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cf2_glyphpath_moveTo(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18656 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !613
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %cf2_glyphpath_closeOpenPath.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18657 ; 2 uses
  store i8 1, ptr %i.c, align 1, !tbaa !592
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18784
  %i.e = load i64, ptr %i.d, align 8, !tbaa !614
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18792
  %i.h = load i64, ptr %i.g, align 8, !tbaa !615
  %i.i = trunc i64 %i.h to i32
  tail call fastcc void @cf2_glyphpath_lineTo(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.i), !inline_history !616
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18800 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !617
  %.not14.i = icmp eq i8 %i.k, 0
  br i1 %.not14.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 18720
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 18736
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18744
  %i.q = load i64, ptr %i.p, align 8
  tail call fastcc void @cf2_glyphpath_pushPrevElem(ptr noundef nonnull %0, ptr noundef %i.l, ptr noundef %i.m, i64 %i.o, i64 %i.q, i8 noundef zeroext 1), !inline_history !616
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i8 0, ptr %i.a, align 8, !tbaa !613
  store i8 0, ptr %i.c, align 1, !tbaa !592
  store i8 0, ptr %i.j, align 8, !tbaa !617
  br label %cf2_glyphpath_closeOpenPath.exit

cf2_glyphpath_closeOpenPath.exit:                 ; preds = %bb.a, %bb.d
  %i.r = sext i32 %1 to i64                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 18784
  store i64 %i.r, ptr %i.s, align 8, !tbaa !614
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18752
  store i64 %i.r, ptr %i.t, align 8, !tbaa !684
  %i.u = sext i32 %2 to i64                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 18792
  store i64 %i.u, ptr %i.v, align 8, !tbaa !615
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18760
  store i64 %i.u, ptr %i.w, align 8, !tbaa !685
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 18659
  store i8 1, ptr %i.x, align 1, !tbaa !591
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 40
  %.val17 = load i8, ptr %i.z, align 8, !tbaa !686
  %.not = icmp eq i8 %.val17, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 18680
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !583 ; 2 uses
  br i1 %.not, label %cf2_glyphpath_closeOpenPath.exit._crit_edge, label %bb.e

bb.e:                                             ; preds = %cf2_glyphpath_closeOpenPath.exit
  %i.aa = getelementptr i8, ptr %.pre, i64 9
  %.val = load i8, ptr %i.aa, align 1, !tbaa !654
  %.not16 = icmp eq i8 %.val, 0
  br i1 %.not16, label %bb.f, label %cf2_glyphpath_closeOpenPath.exit._crit_edge

cf2_glyphpath_closeOpenPath.exit._crit_edge:      ; preds = %cf2_glyphpath_closeOpenPath.exit, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 18664
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !581
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 18672
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !582
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18688
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !584
  tail call fastcc void @cf2_hintmap_build(ptr noundef nonnull %i.y, ptr noundef %i.ac, ptr noundef %i.ae, ptr noundef %.pre, i32 noundef %i.ag, i8 noundef zeroext 0)
  br label %bb.f

bb.f:                                             ; preds = %cf2_glyphpath_closeOpenPath.exit._crit_edge, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6184) %i.ah, ptr noundef nonnull align 8 dereferenceable(6184) %i.y, i64 6184, i1 false), !tbaa.struct !687
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cf2_glyphpath_lineTo(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.CF2_CallbackParamsRec_, align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18680 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !583
  %i.e = getelementptr i8, ptr %i.d, i64 9
  %.val = load i8, ptr %i.e, align 1, !tbaa !654
  %.not = icmp eq i8 %.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18657
  %i.g = load i8, ptr %i.f, align 1, !tbaa !592
  %.not41 = icmp eq i8 %i.g, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %5 = phi i1 [ false, %bb.a ], [ %.not41, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18752 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !684  ; 2 uses
  %i.j = sext i32 %1 to i64                       ; 2 uses
  %i.k = icmp eq i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18760
  %i.m = load i64, ptr %i.l, align 8, !tbaa !685  ; 2 uses
  br i1 %i.k, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.n = sext i32 %2 to i64
  %i.o = icmp ne i64 %i.m, %i.n
  %or.cond = select i1 %i.o, i1 true, i1 %5
  br i1 %or.cond, label %._crit_edge, label %bb.l

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.p = trunc i64 %i.i to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 18760 ; 2 uses
  %i.r = trunc i64 %i.m to i32
  call fastcc void @cf2_glyphpath_computeOffset(ptr noundef %0, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %1, i32 noundef %2, ptr noundef %i.a, ptr noundef %i.b)
  %i.s = load i64, ptr %i.h, align 8, !tbaa !684
  %i.t = trunc i64 %i.s to i32
  %i.u = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.v = add i32 %i.u, %i.t
  %i.w = sext i32 %i.v to i64                     ; 3 uses
  store i64 %i.w, ptr %4, align 8, !tbaa !155
  %i.x = load i64, ptr %i.q, align 8, !tbaa !685
  %i.y = trunc i64 %i.x to i32
  %i.z = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.aa = add i32 %i.z, %i.y                      ; 2 uses
  %i.ab = sext i32 %i.aa to i64                   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !156
  %i.ad = add i32 %i.u, %1
  %i.ae = sext i32 %i.ad to i64                   ; 3 uses
  %i.af = add i32 %i.z, %2
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 18659 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !591
  %.not42 = icmp eq i8 %i.ai, 0
  br i1 %.not42, label %bb.g, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 1, ptr %i.aj, align 8, !tbaa !691
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 18768 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !580
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = getelementptr i8, ptr %0, i64 40
  %.val.i = load i8, ptr %i.am, align 8, !tbaa !686
  %.not.i = icmp eq i8 %.val.i, 0
  br i1 %.not.i, label %bb.f, label %cf2_glyphpath_pushMove.exit

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 18784
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !614
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 18792
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !615
  %i.as = trunc i64 %i.ar to i32
  tail call fastcc void @cf2_glyphpath_moveTo(ptr noundef nonnull %0, i32 noundef %i.ap, i32 noundef %i.as), !inline_history !692
  br label %cf2_glyphpath_pushMove.exit

cf2_glyphpath_pushMove.exit:                      ; preds = %bb.e, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 18624
  %i.av = load i32, ptr %i.au, align 8, !tbaa !578
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul nsw i64 %i.aw, %i.w                 ; 2 uses
  %i.ay = ashr i64 %i.ax, 63
  %i.az = add nsw i64 %i.ax, 32768
  %i.ba = add nsw i64 %i.az, %i.ay
  %i.bb = lshr i64 %i.ba, 16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 18628
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !693
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul nsw i64 %i.be, %i.ab                ; 2 uses
  %i.bg = ashr i64 %i.bf, 63
  %i.bh = add nsw i64 %i.bf, 32768
  %i.bi = add nsw i64 %i.bh, %i.bg
  %i.bj = lshr i64 %i.bi, 16
  %i.bk = add nuw nsw i64 %i.bj, %i.bb
  %i.bl = tail call fastcc i32 @cf2_hintmap_map(ptr noundef nonnull %i.al, i32 noundef %i.aa)
  %i.bm = load ptr, ptr %0, align 8, !tbaa !563   ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 68
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !694
  %i.bp = sext i32 %i.bo to i64
  %sext.i = shl i64 %i.bk, 32
  %i.bq = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.br = mul nsw i64 %i.bq, %i.bp                ; 2 uses
  %i.bs = ashr i64 %i.br, 63
  %i.bt = add nsw i64 %i.br, 32768
  %i.bu = add nsw i64 %i.bt, %i.bs
  %i.bv = lshr i64 %i.bu, 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 76
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !695
  %i.by = sext i32 %i.bx to i64
  %i.bz = sext i32 %i.bl to i64                   ; 2 uses
  %i.ca = mul nsw i64 %i.by, %i.bz                ; 2 uses
  %i.cb = ashr i64 %i.ca, 63
  %i.cc = add nsw i64 %i.ca, 32768
  %i.cd = add nsw i64 %i.cc, %i.cb
  %i.ce = lshr i64 %i.cd, 16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 18640
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !696
  %i.ch = add i64 %i.ce, %i.cg
  %i.ci = add i64 %i.ch, %i.bv
  %sext15.i = shl i64 %i.ci, 32
  %i.cj = ashr exact i64 %sext15.i, 32
  store i64 %i.cj, ptr %i.at, align 8, !tbaa !155
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !697
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul nsw i64 %i.bq, %i.cm                ; 2 uses
  %i.co = ashr i64 %i.cn, 63
  %i.cp = add nsw i64 %i.cn, 32768
  %i.cq = add nsw i64 %i.cp, %i.co
  %i.cr = lshr i64 %i.cq, 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !698
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul nsw i64 %i.cu, %i.bz                ; 2 uses
  %i.cw = ashr i64 %i.cv, 63
  %i.cx = add nsw i64 %i.cv, 32768
  %i.cy = add nsw i64 %i.cx, %i.cw
  %i.cz = lshr i64 %i.cy, 16
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 18648
  %i.db = load i64, ptr %i.da, align 8, !tbaa !699
  %i.dc = add i64 %i.cr, %i.db
  %i.dd = add i64 %i.dc, %i.cz
  %sext16.i = shl i64 %i.dd, 32
  %i.de = ashr exact i64 %sext16.i, 32
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.de, ptr %i.df, align 8, !tbaa !156
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !572 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !700
  call void %i.di(ptr noundef nonnull %i.dh, ptr noundef nonnull %3) #19, !inline_history !692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !580
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 18720
  store i64 %i.w, ptr %i.dj, align 8, !tbaa !42
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 18728
  store i64 %i.ab, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  store i8 0, ptr %i.ah, align 1, !tbaa !591
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 18656
  store i8 1, ptr %i.dk, align 8, !tbaa !613
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 18736
  store i64 %i.ae, ptr %i.dl, align 8, !tbaa !42
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18744
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %cf2_glyphpath_pushMove.exit, %._crit_edge
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 18800 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !617
  %.not43 = icmp eq i8 %i.dn, 0
  br i1 %.not43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  call fastcc void @cf2_glyphpath_pushPrevElem(ptr noundef %0, ptr noundef %i.do, ptr noundef %4, i64 %i.ae, i64 %i.ag, i8 noundef zeroext 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i8 1, ptr %i.dm, align 8, !tbaa !617
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 18804
  store i32 2, ptr %i.dp, align 4, !tbaa !701
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 18808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !580
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 18824
  store i64 %i.ae, ptr %i.dr, align 8, !tbaa !42
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 18832
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx4, align 8, !tbaa !42
  br i1 %5, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 18664
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !581
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 18672
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !582
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !583
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 18688
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !584
  call fastcc void @cf2_hintmap_build(ptr noundef nonnull %i.ds, ptr noundef %i.du, ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef %i.dz, i8 noundef zeroext 0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 %i.j, ptr %i.h, align 8, !tbaa !684
  %i.ea = sext i32 %2 to i64
  store i64 %i.ea, ptr %i.q, align 8, !tbaa !685
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cf2_glyphpath_curveTo(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.CF2_CallbackParamsRec_, align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %8 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18752 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !684
  %i.g = trunc i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18760 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !685
  %i.j = trunc i64 %i.i to i32
  call fastcc void @cf2_glyphpath_computeOffset(ptr noundef %0, i32 noundef %i.g, i32 noundef %i.j, i32 noundef %1, i32 noundef %2, ptr noundef %i.a, ptr noundef %i.b)
  call fastcc void @cf2_glyphpath_computeOffset(ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %i.c, ptr noundef %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !572
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !702
  %i.o = ashr i32 %1, 16
  %i.p = sub i32 %4, %2
  %i.q = ashr i32 %i.p, 16
  %i.r = mul nsw i32 %i.q, %i.o
  %i.s = ashr i32 %2, 16
  %i.t = sub i32 %3, %1
  %i.u = ashr i32 %i.t, 16
  %i.v = mul nsw i32 %i.u, %i.s
  %i.w = sub nsw i32 %i.r, %i.v
  %i.x = add i32 %i.w, %i.n
  store i32 %i.x, ptr %i.m, align 8, !tbaa !702
  %i.y = load i64, ptr %i.e, align 8, !tbaa !684
  %i.z = trunc i64 %i.y to i32
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  store i64 %i.ac, ptr %8, align 8, !tbaa !155
  %i.ad = load i64, ptr %i.h, align 8, !tbaa !685
  %i.ae = trunc i64 %i.ad to i32
  %i.af = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.ag = add i32 %i.af, %i.ae                    ; 2 uses
  %i.ah = sext i32 %i.ag to i64                   ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !156
  %i.aj = add i32 %i.aa, %1
  %i.ak = sext i32 %i.aj to i64                   ; 3 uses
  %i.al = add i32 %i.af, %2
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %i.ao = add i32 %i.an, %3
  %i.ap = sext i32 %i.ao to i64
  %i.aq = load i32, ptr %i.d, align 4, !tbaa !3   ; 2 uses
  %i.ar = add i32 %i.aq, %4
  %i.as = sext i32 %i.ar to i64
  %i.at = add i32 %i.an, %5
  %i.au = sext i32 %i.at to i64
  %i.av = add i32 %i.aq, %6
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 18659 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !591
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 1, ptr %i.az, align 8, !tbaa !691
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 18768 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !580
  %i.bb = getelementptr i8, ptr %0, i64 40
  %.val.i = load i8, ptr %i.bb, align 8, !tbaa !686
  %.not.i = icmp eq i8 %.val.i, 0
  br i1 %.not.i, label %bb.c, label %cf2_glyphpath_pushMove.exit

bb.c:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 18784
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !614
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 18792
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !615
  %i.bh = trunc i64 %i.bg to i32
  tail call fastcc void @cf2_glyphpath_moveTo(ptr noundef nonnull %0, i32 noundef %i.be, i32 noundef %i.bh), !inline_history !692
  br label %cf2_glyphpath_pushMove.exit

cf2_glyphpath_pushMove.exit:                      ; preds = %bb.b, %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 18624
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !578
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul nsw i64 %i.bm, %i.ac                ; 2 uses
  %i.bo = ashr i64 %i.bn, 63
  %i.bp = add nsw i64 %i.bn, 32768
  %i.bq = add nsw i64 %i.bp, %i.bo
  %i.br = lshr i64 %i.bq, 16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 18628
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !693
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul nsw i64 %i.bu, %i.ah                ; 2 uses
  %i.bw = ashr i64 %i.bv, 63
  %i.bx = add nsw i64 %i.bv, 32768
  %i.by = add nsw i64 %i.bx, %i.bw
  %i.bz = lshr i64 %i.by, 16
  %i.ca = add nuw nsw i64 %i.bz, %i.br
  %i.cb = tail call fastcc i32 @cf2_hintmap_map(ptr noundef nonnull %i.bi, i32 noundef %i.ag), !inline_history !692
  %i.cc = load ptr, ptr %0, align 8, !tbaa !563   ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 68
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !694
  %i.cf = sext i32 %i.ce to i64
  %sext.i.i = shl i64 %i.ca, 32
  %i.cg = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.cf                ; 2 uses
  %i.ci = ashr i64 %i.ch, 63
  %i.cj = add nsw i64 %i.ch, 32768
  %i.ck = add nsw i64 %i.cj, %i.ci
  %i.cl = lshr i64 %i.ck, 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 76
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !695
  %i.co = sext i32 %i.cn to i64
  %i.cp = sext i32 %i.cb to i64                   ; 2 uses
  %i.cq = mul nsw i64 %i.co, %i.cp                ; 2 uses
  %i.cr = ashr i64 %i.cq, 63
  %i.cs = add nsw i64 %i.cq, 32768
  %i.ct = add nsw i64 %i.cs, %i.cr
  %i.cu = lshr i64 %i.ct, 16
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 18640
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !696
  %i.cx = add i64 %i.cu, %i.cw
  %i.cy = add i64 %i.cx, %i.cl
  %sext15.i.i = shl i64 %i.cy, 32
  %i.cz = ashr exact i64 %sext15.i.i, 32
  store i64 %i.cz, ptr %i.bj, align 8, !tbaa !155
  %i.da = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.db = load i32, ptr %i.da, align 4, !tbaa !697
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %i.cg, %i.dc                ; 2 uses
  %i.de = ashr i64 %i.dd, 63
  %i.df = add nsw i64 %i.dd, 32768
  %i.dg = add nsw i64 %i.df, %i.de
  %i.dh = lshr i64 %i.dg, 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !698
  %i.dk = sext i32 %i.dj to i64
  %i.dl = mul nsw i64 %i.dk, %i.cp                ; 2 uses
  %i.dm = ashr i64 %i.dl, 63
  %i.dn = add nsw i64 %i.dl, 32768
  %i.do = add nsw i64 %i.dn, %i.dm
  %i.dp = lshr i64 %i.do, 16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 18648
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !699
  %i.ds = add i64 %i.dh, %i.dr
  %i.dt = add i64 %i.ds, %i.dp
  %sext16.i.i = shl i64 %i.dt, 32
  %i.du = ashr exact i64 %sext16.i.i, 32
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !156
  %i.dw = load ptr, ptr %i.k, align 8, !tbaa !572 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !700
  call void %i.dx(ptr noundef nonnull %i.dw, ptr noundef nonnull %7) #19, !inline_history !692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !580
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 18720
  store i64 %i.ac, ptr %i.dy, align 8, !tbaa !42
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 18728
  store i64 %i.ah, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  store i8 0, ptr %i.ax, align 1, !tbaa !591
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 18656
  store i8 1, ptr %i.dz, align 8, !tbaa !613
end_hunk_0
begin_hunk_1_@cf2_stack_roll:bb.a
bb.a:
  %i.a = icmp slt i32 %1, 2
  br i1 %i.a, label %cf2_setError.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !599
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val40 = load ptr, ptr %i.c, align 8, !tbaa !601
  %i.d = ptrtoint ptr %.val40 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !598  ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %cf2_setError.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %.not3.i = icmp eq i32 %i.l, 0
  br i1 %.not3.i, label %bb.e, label %cf2_setError.exit

bb.e:                                             ; preds = %bb.d
  store i32 130, ptr %i.k, align 4, !tbaa !3
  br label %cf2_setError.exit

bb.f:                                             ; preds = %bb.b
  %i.m = icmp slt i32 %2, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = sub nsw i32 0, %2
  %i.o = urem i32 %i.n, %1
  %i.p = sub nsw i32 0, %i.o
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = urem i32 %2, %1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.034 = phi i32 [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  %.not45 = icmp eq i32 %.034, 0
  br i1 %.not45, label %cf2_setError.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.r = sub nsw i32 0, %1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.l
  %.044 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %bb.l ]
  %.03143 = phi i32 [ -1, %.lr.ph ], [ %.2, %bb.l ] ; 3 uses
  %.03242 = phi i32 [ -1, %.lr.ph ], [ %.133, %bb.l ] ; 2 uses
  %.sroa.0.041 = phi i64 [ 8589934592, %.lr.ph ], [ %i.ac, %bb.l ]
  %i.s = icmp eq i32 %.03242, %.03143
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !599 ; 2 uses
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %.03143, 1                   ; 3 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.u
  %i.w = load i64, ptr %i.v, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.1 = phi i64 [ %i.w, %bb.k ], [ %.sroa.0.041, %bb.j ]
  %.133 = phi i32 [ %i.t, %bb.k ], [ %.03242, %bb.j ]
  %.1 = phi i32 [ %i.t, %bb.k ], [ %.03143, %bb.j ]
  %i.x = add nsw i32 %.1, %.034                   ; 3 uses
  %.not = icmp slt i32 %i.x, %1
  %i.y = icmp slt i32 %i.x, 0
  %i.z = select i1 %i.y, i32 %1, i32 0
  %.2.p = select i1 %.not, i32 %i.z, i32 %i.r
  %.2 = add i32 %.2.p, %i.x                       ; 2 uses
  %i.aa = sext i32 %.2 to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.aa ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 4
  store i64 %.sroa.0.1, ptr %i.ab, align 4
  %i.ad = add nuw nsw i32 %.044, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ad, %1
  br i1 %exitcond.not, label %cf2_setError.exit, label %bb.j, !llvm.loop !709

cf2_setError.exit:                                ; preds = %bb.l, %bb.e, %bb.d, %bb.c, %bb.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cf2_getSeacComponent(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !285  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !246
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !627
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !216  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1312 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !710
  %.not.i = icmp eq ptr %i.l, null
  %or.cond.i = icmp ugt i32 %1, 255
  %or.cond16.i = or i1 %or.cond.i, %.not.i
  br i1 %or.cond16.i, label %cff_lookup_glyph_by_stdcharcode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4968
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !217
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !711
  %i.p = tail call zeroext i16 %i.o(i32 noundef %1) #19, !inline_history !712
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !713  ; 2 uses
  %.not20.i = icmp eq i32 %i.r, 0
  br i1 %.not20.i, label %cff_lookup_glyph_by_stdcharcode.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !710
  %i.t = zext i32 %i.r to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !44
  %i.w = icmp eq i16 %i.v, %i.p
  br i1 %i.w, label %cff_lookup_glyph_by_stdcharcode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.t
  br i1 %exitcond.not.i, label %cff_lookup_glyph_by_stdcharcode.exit.thread, label %bb.d, !llvm.loop !714

cff_lookup_glyph_by_stdcharcode.exit:             ; preds = %bb.d
  %i.x = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %cff_lookup_glyph_by_stdcharcode.exit.thread, label %cff_lookup_glyph_by_stdcharcode.exit._crit_edge

cff_lookup_glyph_by_stdcharcode.exit._crit_edge:  ; preds = %cff_lookup_glyph_by_stdcharcode.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !285
  br label %bb.f

bb.f:                                             ; preds = %cff_lookup_glyph_by_stdcharcode.exit._crit_edge, %bb.a
  %i.z = phi ptr [ %.pre, %cff_lookup_glyph_by_stdcharcode.exit._crit_edge ], [ %i.d, %bb.a ]
  %.015 = phi i32 [ %i.x, %cff_lookup_glyph_by_stdcharcode.exit._crit_edge ], [ %1, %bb.a ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !715
  %i.ac = call i32 %i.ab(ptr noundef %i.z, i32 noundef %.015, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #19 ; 2 uses
  %.not18 = icmp eq i32 %i.ac, 0
  br i1 %.not18, label %bb.g, label %cff_lookup_glyph_by_stdcharcode.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !26  ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !253
  %.not19 = icmp eq ptr %i.ad, null
  %i.af = load i64, ptr %i.b, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.ah = select i1 %.not19, ptr null, ptr %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !254
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !251
  br label %cff_lookup_glyph_by_stdcharcode.exit.thread

cff_lookup_glyph_by_stdcharcode.exit.thread:      ; preds = %bb.e, %bb.c, %bb.b, %bb.f, %cff_lookup_glyph_by_stdcharcode.exit, %bb.g
  %.0 = phi i32 [ 18, %cff_lookup_glyph_by_stdcharcode.exit ], [ 0, %bb.g ], [ %i.ac, %bb.f ], [ 18, %bb.b ], [ 18, %bb.c ], [ 18, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cf2_hintmap_build(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i8 noundef zeroext range(i8 0, 2) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.CF2_HintMoveRec_, align 8   ; 5 uses
  %7 = alloca %struct.CF2_HintMaskRec_, align 8   ; 7 uses
  %8 = alloca %struct.CF2_HintRec_, align 8       ; 5 uses
  %9 = alloca %struct.CF2_HintRec_, align 8       ; 13 uses
  %10 = alloca %struct.CF2_HintRec_, align 8      ; 12 uses
  %11 = alloca %struct.CF2_HintRec_, align 8      ; 6 uses
  %12 = alloca %struct.CF2_HintRec_, align 8      ; 4 uses
  %13 = alloca %struct.CF2_HintRec_, align 8      ; 11 uses
  %14 = alloca %struct.CF2_HintRec_, align 8      ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !574    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %.not = icmp ne i8 %5, 0                        ; 4 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !575  ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %.val119 = load i8, ptr %i.d, align 8, !tbaa !686
  %.not106 = icmp eq i8 %.val119, 0
  br i1 %.not106, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %3, align 8, !tbaa !561
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  store ptr %i.e, ptr %7, align 8, !tbaa !561
  call fastcc void @cf2_hintmap_build(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, i32 noundef %4, i8 noundef zeroext 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %.val118 = load i8, ptr %i.g, align 8, !tbaa !607
  %.not107 = icmp eq i8 %.val118, 0
  br i1 %.not107, label %bb.e, label %cf2_hintmask_setAll.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %1, i64 32
  %.val122 = load i64, ptr %i.h, align 8, !tbaa !653
  %i.i = getelementptr i8, ptr %2, i64 32
  %.val121 = load i64, ptr %i.i, align 8, !tbaa !653
  %i.j = add i64 %.val121, %.val122               ; 5 uses
  %i.k = trunc i64 %i.j to i8
  %i.l = sub i8 0, %i.k
  %i.m = and i8 %i.l, 7
  %notmask.i = shl nsw i8 -1, %i.m
  %i.n = icmp ugt i64 %i.j, 96
  br i1 %i.n, label %bb.f, label %cf2_hintmask_setCounts.exit.i

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %3, align 8, !tbaa !561    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %.not3.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not3.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 18, ptr %i.o, align 4, !tbaa !3
  br label %bb.i

cf2_hintmask_setCounts.exit.i:                    ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.j, ptr %i.q, align 8, !tbaa !664
  %i.r = add nuw nsw i64 %i.j, 7
  %i.s = lshr i64 %i.r, 3                         ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.s, ptr %i.t, align 8, !tbaa !665
  store i8 1, ptr %i.g, align 8, !tbaa !607
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 1, ptr %i.u, align 1, !tbaa !654
  %i.v = icmp eq i64 %i.j, 0
  br i1 %i.v, label %cf2_hintmask_setAll.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %cf2_hintmask_setCounts.exit.i
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %cf2_hintmask_setAll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.w, i8 -1, i64 %i.s, i1 false), !tbaa !38
  br label %cf2_hintmask_setAll.exit

cf2_hintmask_setAll.exit:                         ; preds = %.preheader.i, %.lr.ph.i
  %i.x = getelementptr i8, ptr %3, i64 31
  %i.y = getelementptr i8, ptr %i.x, i64 %i.s     ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !38
  %i.aa = and i8 %i.z, %notmask.i
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !38
  br label %cf2_hintmask_setAll.exit.thread

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !283
  %.not109 = icmp eq i8 %i.ac, 0
  br i1 %.not109, label %bb.ct, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %3, align 8, !tbaa !561
  store i32 0, ptr %i.ad, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.ae, align 1, !tbaa !573
  br label %bb.ct

cf2_hintmask_setAll.exit.thread:                  ; preds = %cf2_hintmask_setAll.exit, %cf2_hintmask_setCounts.exit.i, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  store i32 0, ptr %i.af, align 8, !tbaa !716
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.ag, align 4, !tbaa !717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !718
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ai = getelementptr i8, ptr %1, i64 32        ; 4 uses
  %.val120 = load i64, ptr %i.ai, align 8, !tbaa !653 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !664
  %i.al = icmp ugt i64 %.val120, %i.ak
  br i1 %i.al, label %bb.ct, label %bb.k

bb.k:                                             ; preds = %cf2_hintmask_setAll.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 321
  %i.an = load i8, ptr %i.am, align 1, !tbaa !719
  %.not110 = icmp eq i8 %i.an, 0
  br i1 %.not110, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  call fastcc void @cf2_hintmap_insertHint(ptr noundef nonnull %0, ptr noundef nonnull %i.ao, ptr noundef nonnull %8)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  call fastcc void @cf2_hintmap_insertHint(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not217 = icmp eq i64 %.val120, 0
  br i1 %.not217, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 332
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 316
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 408 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 328 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.av
  %.0208 = phi ptr [ %i.ah, %.lr.ph ], [ %.1.idx.sroa.sel.idx.sroa.sel, %bb.av ] ; 4 uses
  %.097207 = phi i32 [ 128, %.lr.ph ], [ %.198, %bb.av ] ; 3 uses
  %.0101204 = phi i64 [ 0, %.lr.ph ], [ %i.gl, %bb.av ] ; 9 uses
  %i.bi = load i8, ptr %.0208, align 1, !tbaa !38
  %i.bj = zext i8 %i.bi to i32
  %i.bk = and i32 %.097207, %i.bj
  %.not114 = icmp eq i32 %i.bk, 0
  br i1 %.not114, label %bb.av, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.bl = load i32, ptr %i.aq, align 4, !tbaa !579 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %i.bm = load i64, ptr %i.ai, align 8, !tbaa !653
  %.not.i.i = icmp ult i64 %.0101204, %i.bm       ; 2 uses
  br i1 %.not.i.i, label %cf2_arrstack_getPointer.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = load ptr, ptr %i.ar, align 8, !tbaa !559 ; 3 uses
  %.not.i.i.i127 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i127, label %cf2_arrstack_getPointer.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %.not3.i.i.i128 = icmp eq i32 %i.bo, 0
  br i1 %.not3.i.i.i128, label %bb.r, label %cf2_arrstack_getPointer.exit.i

bb.r:                                             ; preds = %bb.q
  store i32 130, ptr %i.bn, align 4, !tbaa !3
  br label %cf2_arrstack_getPointer.exit.i

cf2_arrstack_getPointer.exit.i:                   ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i.i = phi i64 [ %.0101204, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ]
  %i.bp = load ptr, ptr %i.as, align 8, !tbaa !672 ; 2 uses
  %i.bq = load i64, ptr %i.at, align 8, !tbaa !560 ; 2 uses
  %i.br = mul i64 %i.bq, %.0.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.br ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !679 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !677 ; 2 uses
  %i.bx = sub i32 %i.bu, %i.bw                    ; 2 uses
  switch i32 %i.bx, label %bb.t [
    i32 -1376256, label %bb.u
    i32 -1310720, label %bb.s
  ]

bb.s:                                             ; preds = %cf2_arrstack_getPointer.exit.i
  store i32 0, ptr %9, align 8, !tbaa !720
end_hunk_1
begin_hunk_2_@cf2_hintmap_build:bb.a
  br i1 %.not142.i, label %bb.bt, label %bb.cd

bb.bt:                                            ; preds = %bb.bs
  %i.ky = and i32 %i.kt, 65535                    ; 3 uses
  %i.kz = and i32 %i.kw, 65535                    ; 3 uses
  %i.la = icmp eq i32 %i.ky, 0
  %i.lb = sub nuw nsw i32 65536, %i.ky
  %i.lc = icmp eq i32 %i.kz, 0
  %i.ld = sub nuw nsw i32 65536, %i.kz
  %i.le = tail call i32 @llvm.umin.i32(i32 %i.lb, i32 %i.ld)
  %i.lf = select i1 %i.la, i1 true, i1 %i.lc
  %i.lg = select i1 %i.lf, i32 0, i32 %i.le       ; 6 uses
  %i.lh = tail call i32 @llvm.umin.i32(i32 %i.ky, i32 %i.kz) ; 5 uses
  %i.li = sub nsw i32 0, %i.lh                    ; 3 uses
  %i.lj = add i32 %i.kn, -1
  %i.lk = zext i32 %i.lj to i64
  %.not143.i = icmp samesign ult i64 %i.kr, %i.lk
  br i1 %.not143.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ku, i64 52
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !724
  %i.ln = add i32 %i.kw, 32768
  %i.lo = add i32 %i.ln, %i.lg
  %.not144.i = icmp slt i32 %i.lm, %i.lo
  br i1 %.not144.i, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.lp = icmp eq i64 %.0169.i, 0
  br i1 %i.lp, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lq = getelementptr i8, ptr %i.ko, i64 -12
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !724
  %reass.sub146.i = add i32 %i.kt, -32768
  %i.ls = sub i32 %reass.sub146.i, %i.lh
  %.not147.i = icmp sgt i32 %i.lr, %i.ls
  br i1 %.not147.i, label %.thread.i168, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.lt = icmp samesign ult i32 %i.lh, %i.lg
  %i.lu = select i1 %i.lt, i32 %i.li, i32 %i.lg
  br label %.thread.i168

bb.by:                                            ; preds = %bb.bu
  %i.lv = icmp eq i64 %.0169.i, 0
  br i1 %i.lv, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lw = getelementptr i8, ptr %i.ko, i64 -12
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !724
  %reass.sub.i = add i32 %i.kt, -32768
  %i.ly = sub i32 %reass.sub.i, %i.lh
  %.not145.i = icmp sgt i32 %i.lx, %i.ly
  br i1 %.not145.i, label %.thread162.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.not168.i = icmp samesign ult i32 %i.lg, %i.lh
  br i1 %.not168.i, label %.thread162.i, label %.thread.i168

.thread162.i:                                     ; preds = %bb.ca, %bb.bz
  %.0132165.i = phi i32 [ %i.li, %bb.ca ], [ 0, %bb.bz ] ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %.val155.i = load i32, ptr %i.lz, align 8, !tbaa !720
  %i.ma = and i32 %.val155.i, 16
  %.not149.i = icmp eq i32 %i.ma, 0
  br i1 %.not149.i, label %bb.cb, label %.thread.i168

bb.cb:                                            ; preds = %.thread162.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 %i.kr, ptr %6, align 8, !tbaa !730
  %i.mb = sub nsw i32 %i.lg, %.0132165.i
  store i32 %i.mb, ptr %i.km, align 8, !tbaa !732
  %i.mc = load ptr, ptr %i.kk, align 8, !tbaa !576
  call fastcc void @cf2_arrstack_push(ptr noundef %i.mc, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.thread.i168

.thread.i168:                                     ; preds = %bb.cb, %.thread162.i, %bb.ca, %bb.bx, %bb.bw
  %.0132161.i = phi i32 [ %i.li, %bb.ca ], [ %.0132165.i, %bb.cb ], [ %.0132165.i, %.thread162.i ], [ %i.lg, %bb.bw ], [ %i.lu, %bb.bx ] ; 2 uses
  %i.md = add i32 %.0132161.i, %i.kt
  store i32 %i.md, ptr %i.ks, align 4, !tbaa !724
  br i1 %.not167.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.thread.i168
  %i.me = add i32 %.0132161.i, %i.kw
  store i32 %i.me, ptr %i.kv, align 4, !tbaa !724
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.thread.i168, %bb.bs
  %.not151.i = icmp eq i64 %.0169.i, 0
  br i1 %.not151.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !721 ; 2 uses
  %i.mh = getelementptr i8, ptr %i.ko, i64 -16
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !721 ; 2 uses
  %.not152.i = icmp eq i32 %i.mg, %i.mi
  br i1 %.not152.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mj = load i32, ptr %i.ks, align 4, !tbaa !724
  %i.mk = getelementptr i8, ptr %i.ko, i64 -12
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !724
  %i.mm = sub i32 %i.mj, %i.ml
  %i.mn = sext i32 %i.mm to i64
  %i.mo = sub i32 %i.mg, %i.mi
  %i.mp = sext i32 %i.mo to i64
  %i.mq = tail call i64 @FT_DivFix(i64 noundef %i.mn, i64 noundef %i.mp) #19
  %i.mr = trunc i64 %i.mq to i32
  %i.ms = getelementptr i8, ptr %i.ko, i64 -8
  store i32 %i.mr, ptr %i.ms, align 8, !tbaa !722
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  br i1 %.not167.i, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !721 ; 2 uses
  %i.mv = getelementptr i8, ptr %i.ku, i64 -16
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !721 ; 2 uses
  %.not154.i = icmp eq i32 %i.mu, %i.mw
  br i1 %.not154.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mx = load i32, ptr %i.kv, align 4, !tbaa !724
  %i.my = getelementptr i8, ptr %i.ku, i64 -12
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !724
  %i.na = sub i32 %i.mx, %i.mz
  %i.nb = sext i32 %i.na to i64
  %i.nc = sub i32 %i.mu, %i.mw
  %i.nd = sext i32 %i.nc to i64
  %i.ne = tail call i64 @FT_DivFix(i64 noundef %i.nb, i64 noundef %i.nd) #19
  %i.nf = trunc i64 %i.ne to i32
  %i.ng = getelementptr i8, ptr %i.ku, i64 -8
  store i32 %i.nf, ptr %i.ng, align 8, !tbaa !722
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %.1.i162 = phi i64 [ %.0169.i, %bb.cg ], [ %i.kq, %bb.ci ], [ %i.kq, %bb.ch ]
  %i.nh = add i64 %.1.i162, 1                     ; 2 uses
  %i.ni = load i32, ptr %i.af, align 8, !tbaa !716 ; 4 uses
  %i.nj = zext i32 %i.ni to i64
  %i.nk = icmp ult i64 %i.nh, %i.nj
  br i1 %i.nk, label %bb.bs, label %._crit_edge.i163, !llvm.loop !733

._crit_edge.i163:                                 ; preds = %bb.cj
  %.pre.i164 = load ptr, ptr %i.kk, align 8, !tbaa !576 ; 3 uses
  %.phi.trans.insert.i165 = getelementptr i8, ptr %.pre.i164, i64 32
  %.val.pre.i = load i64, ptr %.phi.trans.insert.i165, align 8, !tbaa !653 ; 2 uses
  %.not170.i = icmp eq i64 %.val.pre.i, 0
  br i1 %.not170.i, label %cf2_hintmap_adjustHints.exit, label %cf2_arrstack_getPointer.exit.lr.ph.i

cf2_arrstack_getPointer.exit.lr.ph.i:             ; preds = %._crit_edge.i163
  %i.nl = getelementptr inbounds nuw i8, ptr %.pre.i164, i64 48
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !672
  %i.nn = getelementptr inbounds nuw i8, ptr %.pre.i164, i64 16
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !560
  br label %cf2_arrstack_getPointer.exit.i166

cf2_arrstack_getPointer.exit.i166:                ; preds = %bb.cm, %cf2_arrstack_getPointer.exit.lr.ph.i
  %.2171.i = phi i64 [ %.val.pre.i, %cf2_arrstack_getPointer.exit.lr.ph.i ], [ %i.np, %bb.cm ]
  %i.np = add i64 %.2171.i, -1                    ; 3 uses
  %i.nq = mul i64 %i.np, %i.no
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nq ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !730
  %i.nt = getelementptr [32 x i8], ptr %i.kl, i64 %i.ns ; 4 uses
  %i.nu = getelementptr i8, ptr %i.nt, i64 52
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !724
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 20 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !724
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !732 ; 2 uses
  %i.oa = add i32 %i.nz, %i.nx                    ; 2 uses
  %i.ob = add i32 %i.oa, 32768
  %.not139.i = icmp slt i32 %i.nv, %i.ob
  br i1 %.not139.i, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %cf2_arrstack_getPointer.exit.i166
  store i32 %i.oa, ptr %i.nw, align 4, !tbaa !724
  %.val157.i = load i32, ptr %i.nt, align 8, !tbaa !720
  %i.oc = and i32 %.val157.i, 12
  %.not166.i = icmp eq i32 %i.oc, 0
  br i1 %.not166.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.od = getelementptr i8, ptr %i.nt, i64 -12    ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !724
  %i.of = add i32 %i.oe, %i.nz
  store i32 %i.of, ptr %i.od, align 4, !tbaa !724
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %cf2_arrstack_getPointer.exit.i166
  %.not.i167 = icmp eq i64 %i.np, 0
  br i1 %.not.i167, label %cf2_hintmap_adjustHints.exit, label %cf2_arrstack_getPointer.exit.i166, !llvm.loop !734

cf2_hintmap_adjustHints.exit:                     ; preds = %bb.cm, %._crit_edge.i163
  %.not219 = icmp eq i32 %i.ni, 0
  %or.cond290 = or i1 %.not, %.not219
  br i1 %or.cond290, label %.loopexit, label %.lr.ph216

.lr.ph216:                                        ; preds = %cf2_hintmap_adjustHints.exit
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph216, %bb.cs
  %i.ok = phi i32 [ %i.ni, %.lr.ph216 ], [ %i.pa, %bb.cs ]
  %.2103215 = phi i64 [ 0, %.lr.ph216 ], [ %i.pb, %bb.cs ] ; 2 uses
  %i.ol = getelementptr inbounds nuw [32 x i8], ptr %i.og, i64 %.2103215 ; 4 uses
  %.val126 = load i32, ptr %i.ol, align 8, !tbaa !720 ; 4 uses
  %i.om = and i32 %.val126, 32
  %.not112 = icmp eq i32 %i.om, 0
  br i1 %.not112, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %bb.cn
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !723 ; 2 uses
  %i.op = load i64, ptr %i.ai, align 8, !tbaa !653
  %.not.i169 = icmp ult i64 %i.oo, %i.op
  br i1 %.not.i169, label %cf2_arrstack_getPointer.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.oq = load ptr, ptr %i.oh, align 8, !tbaa !559 ; 3 uses
  %.not.i.i170 = icmp eq ptr %i.oq, null
  br i1 %.not.i.i170, label %cf2_arrstack_getPointer.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !3
  %.not3.i.i = icmp eq i32 %i.or, 0
  br i1 %.not3.i.i, label %bb.cr, label %cf2_arrstack_getPointer.exit

bb.cr:                                            ; preds = %bb.cq
  store i32 130, ptr %i.oq, align 4, !tbaa !3
  %.val125.pre = load i32, ptr %i.ol, align 8, !tbaa !720
  br label %cf2_arrstack_getPointer.exit

cf2_arrstack_getPointer.exit:                     ; preds = %bb.co, %bb.cp, %bb.cq, %bb.cr
  %.val125 = phi i32 [ %.val126, %bb.co ], [ %.val126, %bb.cp ], [ %.val126, %bb.cq ], [ %.val125.pre, %bb.cr ]
  %.0.i = phi i64 [ %i.oo, %bb.co ], [ 0, %bb.cp ], [ 0, %bb.cq ], [ 0, %bb.cr ]
  %i.os = load ptr, ptr %i.oi, align 8, !tbaa !672
  %i.ot = load i64, ptr %i.oj, align 8, !tbaa !560
  %i.ou = mul i64 %i.ot, %.0.i
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ou ; 2 uses
  %i.ow = and i32 %.val125, 10
  %.not182 = icmp eq i32 %i.ow, 0
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ol, i64 20
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !724
  %. = select i1 %.not182, i64 12, i64 16
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 %.
  store i32 %i.oy, ptr %i.oz, align 4, !tbaa !3
  store i8 1, ptr %i.ov, align 4, !tbaa !680
  %.pre = load i32, ptr %i.af, align 8, !tbaa !716
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cn, %cf2_arrstack_getPointer.exit
  %i.pa = phi i32 [ %i.ok, %bb.cn ], [ %.pre, %cf2_arrstack_getPointer.exit ] ; 2 uses
  %i.pb = add nuw nsw i64 %.2103215, 1            ; 2 uses
  %i.pc = zext i32 %i.pa to i64
  %i.pd = icmp samesign ult i64 %i.pb, %i.pc
  br i1 %i.pd, label %bb.cn, label %.loopexit, !llvm.loop !735

.loopexit:                                        ; preds = %bb.cs, %.loopexit184, %.loopexit184.thread, %cf2_hintmap_adjustHints.exit
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.pe, align 8, !tbaa !686
  %i.pf = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.pf, align 1, !tbaa !654
  br label %bb.ct

bb.ct:                                            ; preds = %cf2_hintmask_setAll.exit.thread, %bb.i, %bb.j, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cf2_arrstack_push(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !653  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !736
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !672
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = shl i64 %i.c, 1
  %i.h = add i64 %i.g, 16                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !560  ; 2 uses
  %i.k = mul i64 %i.j, %i.h                       ; 2 uses
  %i.l = udiv i64 9223372036854775807, %i.j
  %i.m = icmp ugt i64 %i.h, %i.l
  br i1 %i.m, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !557
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !737
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !672
  %i.s = call ptr @ft_mem_qrealloc(ptr noundef %i.n, i64 noundef 1, i64 noundef %i.p, i64 noundef %i.k, ptr noundef %i.r, ptr noundef nonnull %i.a) #19 ; 2 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !672
  %i.t = load i32, ptr %i.a, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  store i64 %i.h, ptr %i.d, align 8, !tbaa !736
  store i64 %i.k, ptr %i.o, align 8, !tbaa !737
  %i.u = load i64, ptr %i.b, align 8, !tbaa !653  ; 2 uses
  %i.v = icmp ugt i64 %i.u, %i.h
  br i1 %i.v, label %bb.e, label %cf2_arrstack_setNumElements.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !559  ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %cf2_arrstack_setNumElements.exit.thread13, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %.not3.i.i = icmp eq i32 %i.y, 0
  br i1 %.not3.i.i, label %bb.g, label %cf2_arrstack_setNumElements.exit.thread13

bb.g:                                             ; preds = %bb.f
  store i32 130, ptr %i.x, align 4, !tbaa !3
  br label %cf2_arrstack_setNumElements.exit.thread13

cf2_arrstack_setNumElements.exit.thread13:        ; preds = %bb.e, %bb.f, %bb.g
  store i64 %i.h, ptr %i.b, align 8, !tbaa !653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %cf2_arrstack_setNumElements.exit.thread

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !559 ; 3 uses
  %.not.i23.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i, label %cf2_arrstack_setNumElements.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %.not3.i24.i = icmp eq i32 %i.ab, 0
  br i1 %.not3.i24.i, label %bb.j, label %cf2_arrstack_setNumElements.exit.thread

bb.j:                                             ; preds = %bb.i
  store i32 64, ptr %i.aa, align 4, !tbaa !3
  br label %cf2_arrstack_setNumElements.exit.thread

cf2_arrstack_setNumElements.exit:                 ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %cf2_arrstack_setNumElements.exit
  %i.ac = phi ptr [ %i.s, %cf2_arrstack_setNumElements.exit ], [ %.pre, %._crit_edge ]
  %i.ad = phi i64 [ %i.u, %cf2_arrstack_setNumElements.exit ], [ %i.c, %._crit_edge ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !560 ; 2 uses
  %i.ag = mul i64 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %1, i64 %i.af, i1 false)
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !653
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !653
  br label %cf2_arrstack_setNumElements.exit.thread

cf2_arrstack_setNumElements.exit.thread:          ; preds = %bb.j, %bb.i, %bb.h, %cf2_arrstack_setNumElements.exit.thread13, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @cf2_glyphpath_computeOffset(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %6) unnamed_addr #5 {
bb.a:
  %i.a = sub i32 %3, %1                           ; 3 uses
  %i.b = sub i32 %4, %2                           ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !563
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 308
  %i.e = load i8, ptr %i.d, align 4, !tbaa !324
  %.not = icmp eq i8 %i.e, 0                      ; 2 uses
  %i.f = sub i32 0, %i.a
  %i.g = sub i32 0, %i.b
  %.076 = select i1 %.not, i32 %i.a, i32 %i.f     ; 8 uses
  %.0 = select i1 %.not, i32 %i.b, i32 %i.g       ; 9 uses
  store i32 0, ptr %6, align 4, !tbaa !3
  store i32 0, ptr %5, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18658
  %i.i = load i8, ptr %i.h, align 2, !tbaa !586
  %.not77 = icmp eq i8 %i.i, 0
  br i1 %.not77, label %bb.y, label %bb.b
end_hunk_2
begin_hunk_3_@cf2_glyphpath_pushPrevElem:bb.a
  %i.jf = sext i32 %i.je to i64
  %i.jg = sext i32 %i.is to i64                   ; 2 uses
  %i.jh = mul nsw i64 %i.jf, %i.jg                ; 2 uses
  %i.ji = ashr i64 %i.jh, 63
  %i.jj = add nsw i64 %i.jh, 32768
  %i.jk = add nsw i64 %i.jj, %i.ji
  %i.jl = lshr i64 %i.jk, 16
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 18640 ; 3 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !696
  %i.jo = add i64 %i.jl, %i.jn
  %i.jp = add i64 %i.jo, %i.jc
  %sext15.i82 = shl i64 %i.jp, 32
  %i.jq = ashr exact i64 %sext15.i82, 32
  store i64 %i.jq, ptr %i.hu, align 8, !tbaa !155
  %i.jr = getelementptr inbounds nuw i8, ptr %i.it, i64 72
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !697
  %i.jt = sext i32 %i.js to i64
  %i.ju = mul nsw i64 %i.ix, %i.jt                ; 2 uses
  %i.jv = ashr i64 %i.ju, 63
  %i.jw = add nsw i64 %i.ju, 32768
  %i.jx = add nsw i64 %i.jw, %i.jv
  %i.jy = lshr i64 %i.jx, 16
  %i.jz = getelementptr inbounds nuw i8, ptr %i.it, i64 80
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !698
  %i.kb = sext i32 %i.ka to i64
  %i.kc = mul nsw i64 %i.kb, %i.jg                ; 2 uses
  %i.kd = ashr i64 %i.kc, 63
  %i.ke = add nsw i64 %i.kc, 32768
  %i.kf = add nsw i64 %i.ke, %i.kd
  %i.kg = lshr i64 %i.kf, 16
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 18648 ; 3 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !699
  %i.kj = add i64 %i.jy, %i.ki
  %i.kk = add i64 %i.kj, %i.kg
  %sext16.i83 = shl i64 %i.kk, 32
  %i.kl = ashr exact i64 %sext16.i83, 32
  %i.km = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.kl, ptr %i.km, align 8, !tbaa !156
  %i.kn = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ko = load i64, ptr %i.f, align 8, !tbaa !740
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 18848
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !741 ; 2 uses
  %i.kr = trunc i64 %i.kq to i32
  %i.ks = load i32, ptr %i.hz, align 8, !tbaa !578
  %i.kt = sext i32 %i.ks to i64
  %sext115 = shl i64 %i.ko, 32
  %i.ku = ashr exact i64 %sext115, 32
  %i.kv = mul nsw i64 %i.ku, %i.kt                ; 2 uses
  %i.kw = ashr i64 %i.kv, 63
  %i.kx = add nsw i64 %i.kv, 32768
  %i.ky = add nsw i64 %i.kx, %i.kw
  %i.kz = lshr i64 %i.ky, 16
  %i.la = load i32, ptr %i.ii, align 4, !tbaa !693
  %i.lb = sext i32 %i.la to i64
  %sext116 = shl i64 %i.kq, 32
  %i.lc = ashr exact i64 %sext116, 32
  %i.ld = mul nsw i64 %i.lc, %i.lb                ; 2 uses
  %i.le = ashr i64 %i.ld, 63
  %i.lf = add nsw i64 %i.ld, 32768
  %i.lg = add nsw i64 %i.lf, %i.le
  %i.lh = lshr i64 %i.lg, 16
  %i.li = add nuw nsw i64 %i.lh, %i.kz
  %i.lj = tail call fastcc i32 @cf2_hintmap_map(ptr noundef nonnull %1, i32 noundef %i.kr)
  %i.lk = load ptr, ptr %0, align 8, !tbaa !563   ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 68
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !694
  %i.ln = sext i32 %i.lm to i64
  %sext.i84 = shl i64 %i.li, 32
  %i.lo = ashr exact i64 %sext.i84, 32            ; 2 uses
  %i.lp = mul nsw i64 %i.lo, %i.ln                ; 2 uses
  %i.lq = ashr i64 %i.lp, 63
  %i.lr = add nsw i64 %i.lp, 32768
  %i.ls = add nsw i64 %i.lr, %i.lq
  %i.lt = lshr i64 %i.ls, 16
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lk, i64 76
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !695
  %i.lw = sext i32 %i.lv to i64
  %i.lx = sext i32 %i.lj to i64                   ; 2 uses
  %i.ly = mul nsw i64 %i.lw, %i.lx                ; 2 uses
  %i.lz = ashr i64 %i.ly, 63
  %i.ma = add nsw i64 %i.ly, 32768
  %i.mb = add nsw i64 %i.ma, %i.lz
  %i.mc = lshr i64 %i.mb, 16
  %i.md = load i64, ptr %i.jm, align 8, !tbaa !696
  %i.me = add i64 %i.mc, %i.md
  %i.mf = add i64 %i.me, %i.lt
  %sext15.i85 = shl i64 %i.mf, 32
  %i.mg = ashr exact i64 %sext15.i85, 32
  store i64 %i.mg, ptr %i.kn, align 8, !tbaa !155
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lk, i64 72
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !697
  %i.mj = sext i32 %i.mi to i64
  %i.mk = mul nsw i64 %i.lo, %i.mj                ; 2 uses
  %i.ml = ashr i64 %i.mk, 63
  %i.mm = add nsw i64 %i.mk, 32768
  %i.mn = add nsw i64 %i.mm, %i.ml
  %i.mo = lshr i64 %i.mn, 16
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lk, i64 80
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !698
  %i.mr = sext i32 %i.mq to i64
  %i.ms = mul nsw i64 %i.mr, %i.lx                ; 2 uses
  %i.mt = ashr i64 %i.ms, 63
  %i.mu = add nsw i64 %i.ms, 32768
  %i.mv = add nsw i64 %i.mu, %i.mt
  %i.mw = lshr i64 %i.mv, 16
  %i.mx = load i64, ptr %i.kh, align 8, !tbaa !699
  %i.my = add i64 %i.mo, %i.mx
  %i.mz = add i64 %i.my, %i.mw
  %sext16.i86 = shl i64 %i.mz, 32
  %i.na = ashr exact i64 %sext16.i86, 32
  %i.nb = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.na, ptr %i.nb, align 8, !tbaa !156
  %i.nc = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.nd = load i64, ptr %i.g, align 8, !tbaa !742
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 18864
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !743 ; 2 uses
  %i.ng = trunc i64 %i.nf to i32
  %i.nh = load i32, ptr %i.hz, align 8, !tbaa !578
  %i.ni = sext i32 %i.nh to i64
  %sext117 = shl i64 %i.nd, 32
  %i.nj = ashr exact i64 %sext117, 32
  %i.nk = mul nsw i64 %i.nj, %i.ni                ; 2 uses
  %i.nl = ashr i64 %i.nk, 63
  %i.nm = add nsw i64 %i.nk, 32768
  %i.nn = add nsw i64 %i.nm, %i.nl
  %i.no = lshr i64 %i.nn, 16
  %i.np = load i32, ptr %i.ii, align 4, !tbaa !693
  %i.nq = sext i32 %i.np to i64
  %sext118 = shl i64 %i.nf, 32
  %i.nr = ashr exact i64 %sext118, 32
  %i.ns = mul nsw i64 %i.nr, %i.nq                ; 2 uses
  %i.nt = ashr i64 %i.ns, 63
  %i.nu = add nsw i64 %i.ns, 32768
  %i.nv = add nsw i64 %i.nu, %i.nt
  %i.nw = lshr i64 %i.nv, 16
  %i.nx = add nuw nsw i64 %i.nw, %i.no
  %i.ny = tail call fastcc i32 @cf2_hintmap_map(ptr noundef nonnull %1, i32 noundef %i.ng)
  %i.nz = load ptr, ptr %0, align 8, !tbaa !563   ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 68
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !694
  %i.oc = sext i32 %i.ob to i64
  %sext.i87 = shl i64 %i.nx, 32
  %i.od = ashr exact i64 %sext.i87, 32            ; 2 uses
  %i.oe = mul nsw i64 %i.od, %i.oc                ; 2 uses
  %i.of = ashr i64 %i.oe, 63
  %i.og = add nsw i64 %i.oe, 32768
  %i.oh = add nsw i64 %i.og, %i.of
  %i.oi = lshr i64 %i.oh, 16
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nz, i64 76
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !695
  %i.ol = sext i32 %i.ok to i64
  %i.om = sext i32 %i.ny to i64                   ; 2 uses
  %i.on = mul nsw i64 %i.ol, %i.om                ; 2 uses
  %i.oo = ashr i64 %i.on, 63
  %i.op = add nsw i64 %i.on, 32768
  %i.oq = add nsw i64 %i.op, %i.oo
  %i.or = lshr i64 %i.oq, 16
  %i.os = load i64, ptr %i.jm, align 8, !tbaa !696
  %i.ot = add i64 %i.or, %i.os
  %i.ou = add i64 %i.ot, %i.oi
  %sext15.i88 = shl i64 %i.ou, 32
  %i.ov = ashr exact i64 %sext15.i88, 32
  store i64 %i.ov, ptr %i.nc, align 8, !tbaa !155
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nz, i64 72
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !697
  %i.oy = sext i32 %i.ox to i64
  %i.oz = mul nsw i64 %i.od, %i.oy                ; 2 uses
  %i.pa = ashr i64 %i.oz, 63
  %i.pb = add nsw i64 %i.oz, 32768
  %i.pc = add nsw i64 %i.pb, %i.pa
  %i.pd = lshr i64 %i.pc, 16
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nz, i64 80
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !698
  %i.pg = sext i32 %i.pf to i64
  %i.ph = mul nsw i64 %i.pg, %i.om                ; 2 uses
  %i.pi = ashr i64 %i.ph, 63
  %i.pj = add nsw i64 %i.ph, 32768
  %i.pk = add nsw i64 %i.pj, %i.pi
  %i.pl = lshr i64 %i.pk, 16
  %i.pm = load i64, ptr %i.kh, align 8, !tbaa !699
  %i.pn = add i64 %i.pd, %i.pm
  %i.po = add i64 %i.pn, %i.pl
  %sext16.i89 = shl i64 %i.po, 32
  %i.pp = ashr exact i64 %sext16.i89, 32
  %i.pq = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %i.pp, ptr %i.pq, align 8, !tbaa !156
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.m
  %.sink221 = phi i64 [ 24, %bb.m ], [ 8, %bb.l ]
  %.sink216 = phi ptr [ %i.nc, %bb.m ], [ %i.ho, %bb.l ]
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !572 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 %.sink221
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !22
  call void %i.pu(ptr noundef %i.ps, ptr noundef nonnull %6) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %.sink216, i64 16, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.l, %cf2_glyphpath_computeIntersection.exit.thread
  %7 = icmp ne i8 %5, 0
  %or.cond = or i1 %7, %i.et
  br i1 %or.cond, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not72 = icmp eq i8 %5, 0
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 6200
  %.sink275 = select i1 %.not72, ptr %1, ptr %i.pv
  %i.pw = load i64, ptr %2, align 8, !tbaa !155
  %i.px = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.py = load i64, ptr %i.px, align 8, !tbaa !156 ; 2 uses
  %i.pz = trunc i64 %i.py to i32
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 18624
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !578
  %i.qc = sext i32 %i.qb to i64
  %sext125 = shl i64 %i.pw, 32
  %i.qd = ashr exact i64 %sext125, 32
  %i.qe = mul nsw i64 %i.qd, %i.qc                ; 2 uses
  %i.qf = ashr i64 %i.qe, 63
  %i.qg = add nsw i64 %i.qe, 32768
  %i.qh = add nsw i64 %i.qg, %i.qf
  %i.qi = lshr i64 %i.qh, 16
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 18628
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !693
  %i.ql = sext i32 %i.qk to i64
  %sext126 = shl i64 %i.py, 32
  %i.qm = ashr exact i64 %sext126, 32
  %i.qn = mul nsw i64 %i.qm, %i.ql                ; 2 uses
  %i.qo = ashr i64 %i.qn, 63
  %i.qp = add nsw i64 %i.qn, 32768
  %i.qq = add nsw i64 %i.qp, %i.qo
  %i.qr = lshr i64 %i.qq, 16
  %i.qs = add nuw nsw i64 %i.qr, %i.qi
  %i.qt = call fastcc i32 @cf2_hintmap_map(ptr noundef nonnull %.sink275, i32 noundef %i.pz)
  %i.qu = load ptr, ptr %0, align 8, !tbaa !563   ; 4 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 68
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !694
  %i.qx = sext i32 %i.qw to i64
  %sext.i93 = shl i64 %i.qs, 32
  %i.qy = ashr exact i64 %sext.i93, 32            ; 2 uses
  %i.qz = mul nsw i64 %i.qy, %i.qx                ; 2 uses
  %i.ra = ashr i64 %i.qz, 63
  %i.rb = add nsw i64 %i.qz, 32768
  %i.rc = add nsw i64 %i.rb, %i.ra
  %i.rd = lshr i64 %i.rc, 16
  %i.re = getelementptr inbounds nuw i8, ptr %i.qu, i64 76
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !695
  %i.rg = sext i32 %i.rf to i64
  %i.rh = sext i32 %i.qt to i64                   ; 2 uses
  %i.ri = mul nsw i64 %i.rg, %i.rh                ; 2 uses
  %i.rj = ashr i64 %i.ri, 63
  %i.rk = add nsw i64 %i.ri, 32768
  %i.rl = add nsw i64 %i.rk, %i.rj
  %i.rm = lshr i64 %i.rl, 16
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 18640
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !696
  %i.rp = add i64 %i.rm, %i.ro
  %i.rq = add i64 %i.rp, %i.rd
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qu, i64 72
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !697
  %i.rt = sext i32 %i.rs to i64
  %i.ru = mul nsw i64 %i.qy, %i.rt                ; 2 uses
  %i.rv = ashr i64 %i.ru, 63
  %i.rw = add nsw i64 %i.ru, 32768
  %i.rx = add nsw i64 %i.rw, %i.rv
  %i.ry = lshr i64 %i.rx, 16
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qu, i64 80
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !698
  %i.sb = sext i32 %i.sa to i64
  %i.sc = mul nsw i64 %i.sb, %i.rh                ; 2 uses
  %i.sd = ashr i64 %i.sc, 63
  %i.se = add nsw i64 %i.sc, 32768
  %i.sf = add nsw i64 %i.se, %i.sd
  %i.sg = lshr i64 %i.sf, 16
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 18648
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !699
  %i.sj = add i64 %i.ry, %i.si
  %i.sk = add i64 %i.sj, %i.sg
  %.in141 = shl i64 %i.sk, 32
  %i.sl = ashr exact i64 %.in141, 32              ; 2 uses
  %.sink132.in = shl i64 %i.rq, 32
  %.sink132 = ashr exact i64 %.sink132.in, 32     ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %.sink132, ptr %i.sm, align 8, !tbaa !155
  %i.sn = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.sl, ptr %i.sn, align 8, !tbaa !156
  %i.so = load i64, ptr %i.eu, align 8, !tbaa !744
  %.not73 = icmp eq i64 %.sink132, %i.so
  br i1 %.not73, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 18776
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !745
  %.not74 = icmp eq i64 %i.sl, %i.sq
  br i1 %.not74, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.sr = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 2, ptr %i.sr, align 8, !tbaa !691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i64 16, i1 false), !tbaa.struct !580
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !572 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !746
  call void %i.sv(ptr noundef %i.st, ptr noundef nonnull %6) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.sm, i64 16, i1 false), !tbaa.struct !580
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  br i1 %i.et, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %.sroa.0.0, ptr %2, align 8, !tbaa !42
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !42
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @cf2_hintmap_map(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !716  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !573
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !579
  %i.h = sext i32 %1 to i64
  %i.i = sext i32 %i.g to i64
  %i.j = mul nsw i64 %i.i, %i.h                   ; 2 uses
  %i.k = ashr i64 %i.j, 63
  %i.l = add nsw i64 %i.j, 32768
  %i.m = add nsw i64 %i.l, %i.k
  %i.n = lshr i64 %i.m, 16
  %i.o = trunc i64 %i.n to i32
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !717  ; 3 uses
  %i.r = add i32 %i.b, -1                         ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.q, i32 %i.r) ; 3 uses
  %wide.trip.count = zext i32 %umax to i64
  %exitcond.not54.not = icmp ult i32 %i.q, %i.r
  br i1 %exitcond.not54.not, label %.lr.ph57, label %.critedge

.lr.ph57:                                         ; preds = %bb.d
  %i.s = zext i32 %i.q to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.f, !llvm.loop !747

bb.f:                                             ; preds = %.lr.ph57, %bb.e
  %indvars.iv55 = phi i64 [ %i.s, %.lr.ph57 ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv55, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.next
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load i32, ptr %i.u, align 8, !tbaa !721
  %.not38 = icmp slt i32 %1, %i.v
  br i1 %.not38, label %.critedge.split.loop.exit50, label %bb.e, !llvm.loop !747

.critedge.split.loop.exit50:                      ; preds = %bb.f
  %i.w = trunc nuw i64 %indvars.iv55 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %.critedge.split.loop.exit50
  %.0.lcssa = phi i32 [ %i.w, %.critedge.split.loop.exit50 ], [ %umax, %bb.d ], [ %umax, %bb.e ] ; 2 uses
  %.not3942 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not3942, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %bb.g
  %.143 = phi i32 [ %i.ac, %bb.g ], [ %.0.lcssa, %.critedge ] ; 4 uses
  %i.x = zext i32 %.143 to i64
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !721
  %i.ab = icmp slt i32 %1, %i.aa
  br i1 %i.ab, label %bb.g, label %.critedge2

bb.g:                                             ; preds = %.lr.ph
  %i.ac = add i32 %.143, -1                       ; 2 uses
  %.not39 = icmp eq i32 %i.ac, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph, !llvm.loop !748

.critedge2:                                       ; preds = %.lr.ph
  store i32 %.143, ptr %i.p, align 4, !tbaa !717
  %i.ad = zext i32 %.143 to i64
  br label %._crit_edge._crit_edge
end_hunk_3
