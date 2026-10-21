Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftstroke?download=true
inline.NumInlined: 59
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@FT_Stroker_ParseOutline:bb.a
  %i.ar = getelementptr inbounds i8, ptr %i.ab, i64 -16
  %i.as = getelementptr inbounds i8, ptr %i.ae, i64 -1
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  %.093 = phi ptr [ %i.ar, %bb.h ], [ %i.ab, %bb.d ] ; 2 uses
  %.192 = phi ptr [ %.091, %bb.h ], [ %i.z, %bb.d ] ; 6 uses
  %.087 = phi ptr [ %i.as, %bb.h ], [ %i.ae, %bb.d ]
  store i8 1, ptr %i.l, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !48
  store i8 %2, ptr %i.n, align 1, !tbaa !56
  %i.at = load i32, ptr %i.o, align 8, !tbaa !33
  %.not.i130 = icmp ne i32 %i.at, 0               ; 2 uses
  %brmerge = or i1 %.not.i130, %.not17.i
  br i1 %brmerge, label %FT_Stroker_BeginSubPath.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load i32, ptr %i.p, align 4, !tbaa !32
  %i.av = icmp eq i32 %i.au, 0
  br label %FT_Stroker_BeginSubPath.exit

FT_Stroker_BeginSubPath.exit:                     ; preds = %bb.i, %bb.j
  %.in = phi i1 [ %.not.i130, %bb.i ], [ %i.av, %bb.j ]
  %i.aw = zext i1 %.in to i8
  store i8 %i.aw, ptr %i.q, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull readonly align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !48
  store i64 0, ptr %0, align 8, !tbaa !47
  %i.ax = icmp ult ptr %.093, %.192
  br i1 %i.ax, label %.lr.ph174, label %.thread155

.lr.ph174:                                        ; preds = %FT_Stroker_BeginSubPath.exit, %.backedge
  %.188173 = phi ptr [ %.188.be, %.backedge ], [ %.087, %FT_Stroker_BeginSubPath.exit ] ; 3 uses
  %.194172 = phi ptr [ %.194.be, %.backedge ], [ %.093, %FT_Stroker_BeginSubPath.exit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.194172, i64 16 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.188173, i64 1 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !50
  %i.bb = and i8 %i.ba, 3
  switch i8 %i.bb, label %bb.o [
    i8 1, label %bb.k
    i8 0, label %bb.l
  ]

bb.k:                                             ; preds = %.lr.ph174
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.bc = load <2 x i64>, ptr %i.ay, align 8, !tbaa !46
  store <2 x i64> %i.bc, ptr %5, align 16, !tbaa !46
  %i.bd = call i32 @FT_Stroker_LineTo(ptr noundef nonnull %0, ptr noundef nonnull %5) ; 2 uses
  %.not119 = icmp eq i32 %i.bd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %.not119, label %.backedge, label %FT_Stroker_BeginSubPath.exit.thread

.backedge:                                        ; preds = %bb.r, %bb.k, %select.unfold
  %.194.be = phi ptr [ %i.bh, %select.unfold ], [ %i.ay, %bb.k ], [ %i.by, %bb.r ] ; 2 uses
  %.188.be = phi ptr [ %i.bi, %select.unfold ], [ %i.az, %bb.k ], [ %i.bz, %bb.r ]
  %i.be = icmp ult ptr %.194.be, %.192
  br i1 %i.be, label %.lr.ph174, label %.thread155

bb.l:                                             ; preds = %.lr.ph174
  %i.bf = load <2 x i64>, ptr %i.ay, align 8, !tbaa !46
  store <2 x i64> %i.bf, ptr %3, align 16, !tbaa !46
  %i.bg = icmp ult ptr %i.ay, %.192
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l, %.critedge
  %.289170 = phi ptr [ %i.bi, %.critedge ], [ %i.az, %bb.l ]
  %.295169 = phi ptr [ %i.bh, %.critedge ], [ %i.ay, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.bh = getelementptr inbounds nuw i8, ptr %.295169, i64 16 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.289170, i64 1 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !50
  %i.bk = and i8 %i.bj, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false), !tbaa.struct !48
  switch i8 %i.bk, label %.thread135 [
    i8 1, label %bb.m
    i8 0, label %bb.n
  ]

.thread135:                                       ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %FT_Stroker_BeginSubPath.exit.thread

bb.m:                                             ; preds = %.lr.ph
  %i.bl = call i32 @FT_Stroker_ConicTo(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %6) ; 2 uses
  %.not118 = icmp eq i32 %i.bl, 0
  br i1 %.not118, label %select.unfold, label %.thread, !llvm.loop !91

bb.n:                                             ; preds = %.lr.ph
  %i.bm = load <2 x i64>, ptr %3, align 16, !tbaa !46
  %i.bn = load <2 x i64>, ptr %6, align 16, !tbaa !46
  %i.bo = add nsw <2 x i64> %i.bn, %i.bm
  %i.bp = sdiv <2 x i64> %i.bo, splat (i64 2)
  store <2 x i64> %i.bp, ptr %7, align 16, !tbaa !46
  %i.bq = call i32 @FT_Stroker_ConicTo(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %7) ; 2 uses
  %.not117 = icmp eq i32 %i.bq, 0
  br i1 %.not117, label %.critedge, label %.thread

.critedge:                                        ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.br = icmp ult ptr %i.bh, %.192
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.thread:                                          ; preds = %bb.m, %bb.n
  %.285.ph = phi i32 [ %i.bq, %bb.n ], [ %i.bl, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %FT_Stroker_BeginSubPath.exit.thread

select.unfold:                                    ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %.backedge

._crit_edge:                                      ; preds = %bb.l, %.critedge
  %i.bs = call i32 @FT_Stroker_ConicTo(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %bb.s

bb.o:                                             ; preds = %.lr.ph174
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.bt = getelementptr inbounds nuw i8, ptr %.194172, i64 32 ; 2 uses
  %i.bu = icmp ugt ptr %i.bt, %.192
  br i1 %i.bu, label %.thread140, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %.188173, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !50
  %i.bx = and i8 %i.bw, 3
  %.not120 = icmp eq i8 %i.bx, 2
  br i1 %.not120, label %bb.q, label %.thread140

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.194172, i64 48 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !tbaa.struct !48
  %.not121 = icmp ugt ptr %i.by, %.192
  br i1 %.not121, label %.thread145, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %.188173, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !48
  %i.ca = call i32 @FT_Stroker_CubicTo(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) ; 2 uses
  %.not122 = icmp eq i32 %i.ca, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br i1 %.not122, label %.backedge, label %FT_Stroker_BeginSubPath.exit.thread

.thread145:                                       ; preds = %bb.q
  %i.cb = call i32 @FT_Stroker_CubicTo(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.s

.thread140:                                       ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %FT_Stroker_BeginSubPath.exit.thread

bb.s:                                             ; preds = %.thread145, %._crit_edge
  %.4 = phi i32 [ %i.cb, %.thread145 ], [ %i.bs, %._crit_edge ] ; 2 uses
  %.not123 = icmp eq i32 %.4, 0
  br i1 %.not123, label %.thread155, label %FT_Stroker_BeginSubPath.exit.thread

.thread155:                                       ; preds = %.backedge, %FT_Stroker_BeginSubPath.exit, %bb.s
  %i.cc = load i8, ptr %i.l, align 8, !tbaa !44
  %.not124 = icmp eq i8 %i.cc, 0
  br i1 %.not124, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread155
  %i.cd = call i32 @FT_Stroker_EndSubPath(ptr noundef nonnull %0) ; 2 uses
  %.not125 = icmp eq i32 %i.cd, 0
  br i1 %.not125, label %bb.u, label %FT_Stroker_BeginSubPath.exit.thread

bb.u:                                             ; preds = %.thread155, %bb.t, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = load i16, ptr %1, align 8, !tbaa !67
  %i.cf = zext i16 %i.ce to i64
  %i.cg = icmp samesign ult i64 %indvars.iv.next, %i.cf
  br i1 %i.cg, label %bb.c, label %FT_Stroker_BeginSubPath.exit.thread, !llvm.loop !92

FT_Stroker_BeginSubPath.exit.thread:              ; preds = %bb.u, %bb.t, %bb.s, %bb.d, %bb.k, %bb.r, %FT_Stroker_Rewind.exit, %.thread135, %.thread140, %.thread, %bb.b, %bb.a
  %.097 = phi i32 [ %i.bd, %bb.k ], [ 0, %FT_Stroker_Rewind.exit ], [ 6, %bb.b ], [ 20, %bb.a ], [ %.285.ph, %.thread ], [ 20, %.thread140 ], [ 20, %.thread135 ], [ %i.ca, %bb.r ], [ 0, %bb.u ], [ %i.cd, %bb.t ], [ 20, %bb.d ], [ %.4, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.097
}

; Function Attrs: nounwind uwtable
define i32 @FT_Glyph_Stroke(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !70     ; 3 uses
  %.not42 = icmp eq ptr %i.b, null
  br i1 %.not42, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %.not43 = icmp eq ptr %i.d, @ft_outline_glyph_class
  br i1 %.not43, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.e = call i32 @FT_Glyph_Copy(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not44 = icmp eq i32 %i.e, 0
  %i.f = load ptr, ptr %i.a, align 8              ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %.not44, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 5 uses
  %i.h = call i32 @FT_Stroker_ParseOutline(ptr noundef %1, ptr noundef nonnull %i.g, i8 noundef zeroext 0) ; 2 uses
  %.not45 = icmp eq i32 %i.h, 0
  br i1 %.not45, label %bb.f, label %FT_Stroker_GetCounts.exit.thread

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %FT_Stroker_GetCounts.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !36   ; 3 uses
  %.not36.i.i = icmp eq i32 %i.j, 0
  br i1 %.not36.i.i, label %bb.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.preheader.i.i
  %.041.i.i = phi i1 [ %.not31.not.i.i, %bb.h ], [ true, %.lr.ph.preheader.i.i ]
  %.01940.i.i = phi ptr [ %i.s, %bb.h ], [ %i.l, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02139.i.i = phi i32 [ %i.r, %bb.h ], [ %i.j, %.lr.ph.preheader.i.i ]
  %.02238.i.i = phi i32 [ %spec.select.i.i, %bb.h ], [ 0, %.lr.ph.preheader.i.i ]
  %i.m = load i8, ptr %.01940.i.i, align 1, !tbaa !50 ; 2 uses
  %i.n = and i8 %i.m, 4
  %.not29.i.i = icmp eq i8 %i.n, 0
  %i.o = xor i1 %.041.i.i, %.not29.i.i
  br i1 %i.o, label %bb.h, label %FT_Stroker_GetCounts.exit.thread

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.p = and i8 %i.m, 8                           ; 2 uses
  %.not31.not.i.i = icmp ne i8 %i.p, 0            ; 2 uses
  %.lobit.i.i = lshr exact i8 %i.p, 3
  %i.q = zext nneg i8 %.lobit.i.i to i32
  %spec.select.i.i = add i32 %.02238.i.i, %i.q    ; 2 uses
  %i.r = add i32 %.02139.i.i, -1                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01940.i.i, i64 1
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %bb.h
  br i1 %.not31.not.i.i, label %bb.i, label %FT_Stroker_GetCounts.exit.thread

bb.i:                                             ; preds = %._crit_edge.i.i, %bb.g
  %.022.lcssa49.i.i = phi i32 [ %spec.select.i.i, %._crit_edge.i.i ], [ 0, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i8 1, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.v = load i32, ptr %i.u, align 8, !tbaa !36   ; 3 uses
  %.not36.i22.i = icmp eq i32 %i.v, 0
  br i1 %.not36.i22.i, label %bb.k, label %.lr.ph.preheader.i23.i

.lr.ph.preheader.i23.i:                           ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %bb.j, %.lr.ph.preheader.i23.i
  %.041.i25.i = phi i1 [ %.not31.not.i33.i, %bb.j ], [ true, %.lr.ph.preheader.i23.i ]
  %.01940.i26.i = phi ptr [ %i.ae, %bb.j ], [ %i.x, %.lr.ph.preheader.i23.i ] ; 2 uses
  %.02139.i27.i = phi i32 [ %i.ad, %bb.j ], [ %i.v, %.lr.ph.preheader.i23.i ]
  %.02238.i28.i = phi i32 [ %spec.select.i35.i, %bb.j ], [ 0, %.lr.ph.preheader.i23.i ]
  %i.y = load i8, ptr %.01940.i26.i, align 1, !tbaa !50 ; 2 uses
  %i.z = and i8 %i.y, 4
  %.not29.i29.i = icmp eq i8 %i.z, 0
  %i.aa = xor i1 %.041.i25.i, %.not29.i29.i
  br i1 %i.aa, label %bb.j, label %FT_Stroker_GetCounts.exit.thread

bb.j:                                             ; preds = %.lr.ph.i24.i
  %i.ab = and i8 %i.y, 8                          ; 2 uses
  %.not31.not.i33.i = icmp ne i8 %i.ab, 0         ; 2 uses
  %.lobit.i34.i = lshr exact i8 %i.ab, 3
  %i.ac = zext nneg i8 %.lobit.i34.i to i32
  %spec.select.i35.i = add i32 %.02238.i28.i, %i.ac ; 2 uses
  %i.ad = add i32 %.02139.i27.i, -1               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01940.i26.i, i64 1
  %.not.i36.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i36.i, label %._crit_edge.i37.i, label %.lr.ph.i24.i, !llvm.loop !1

._crit_edge.i37.i:                                ; preds = %bb.j
  br i1 %.not31.not.i33.i, label %bb.k, label %FT_Stroker_GetCounts.exit.thread

bb.k:                                             ; preds = %._crit_edge.i37.i, %bb.i
  %.022.lcssa49.i39.i = phi i32 [ %spec.select.i35.i, %._crit_edge.i37.i ], [ 0, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i8 1, ptr %i.af, align 8, !tbaa !30
  %i.ag = add i32 %i.v, %i.j
  %i.ah = add i32 %.022.lcssa49.i39.i, %.022.lcssa49.i.i
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.aj = call i32 @FT_Outline_Done(ptr noundef %i.ai, ptr noundef nonnull %i.g) #10 ; 0 uses
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.al = call i32 @FT_Outline_New(ptr noundef %i.ak, i32 noundef %i.ag, i32 noundef %i.ah, ptr noundef nonnull %i.g) #10 ; 2 uses
  %.not47 = icmp eq i32 %i.al, 0
  br i1 %.not47, label %bb.l, label %FT_Stroker_GetCounts.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 42
  store i16 0, ptr %i.am, align 2, !tbaa !60
  store i16 0, ptr %i.g, align 8, !tbaa !67
  call void @FT_Stroker_Export(ptr noundef nonnull %1, ptr noundef nonnull %i.g)
  %.not49 = icmp eq i8 %2, 0
  br i1 %.not49, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %0, align 8, !tbaa !70
  call void @FT_Done_Glyph(ptr noundef %i.an) #10
  br label %.sink.split

FT_Stroker_GetCounts.exit.thread:                 ; preds = %.lr.ph.i.i, %.lr.ph.i24.i, %._crit_edge.i37.i, %._crit_edge.i.i, %bb.f, %bb.e, %bb.k
  %.033.ph = phi i32 [ %i.al, %bb.k ], [ %i.h, %bb.e ], [ 20, %.lr.ph.i24.i ], [ 20, %._crit_edge.i37.i ], [ 20, %._crit_edge.i.i ], [ 6, %bb.f ], [ 20, %.lr.ph.i.i ] ; 2 uses
  call void @FT_Done_Glyph(ptr noundef %i.f) #10
  %.not48 = icmp eq i8 %2, 0
  br i1 %.not48, label %.sink.split, label %bb.n

.sink.split:                                      ; preds = %FT_Stroker_GetCounts.exit.thread, %bb.l, %bb.m
  %.032.sink = phi ptr [ %i.f, %bb.l ], [ %i.f, %bb.m ], [ null, %FT_Stroker_GetCounts.exit.thread ]
  %.035.ph = phi i32 [ 0, %bb.l ], [ 0, %bb.m ], [ %.033.ph, %FT_Stroker_GetCounts.exit.thread ]
  store ptr %.032.sink, ptr %0, align 8, !tbaa !70
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.d, %bb.a, %bb.c, %bb.b, %FT_Stroker_GetCounts.exit.thread
  %.035 = phi i32 [ 6, %bb.a ], [ 6, %bb.c ], [ %i.e, %bb.d ], [ %.033.ph, %FT_Stroker_GetCounts.exit.thread ], [ 6, %bb.b ], [ %.035.ph, %.sink.split ]
  ret i32 %.035
}

declare i32 @FT_Glyph_Copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @FT_Outline_Done(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @FT_Outline_New(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @FT_Done_Glyph(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @FT_Glyph_StrokeBorder(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !70     ; 3 uses
  %.not46 = icmp eq ptr %i.b, null
  br i1 %.not46, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %.not47 = icmp eq ptr %i.d, @ft_outline_glyph_class
  br i1 %.not47, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.e = call i32 @FT_Glyph_Copy(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not48 = icmp eq i32 %i.e, 0
  %i.f = load ptr, ptr %i.a, align 8              ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %.not48, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 6 uses
  %i.h = call i32 @FT_Outline_Get_Orientation(ptr noundef nonnull %i.g) #10
  %i.i = icmp ne i32 %i.h, 0
  %.not49 = icmp ne i8 %2, 0
  %.0.v = xor i1 %.not49, %i.i                    ; 2 uses
  %.0 = zext i1 %.0.v to i32
  %i.j = call i32 @FT_Stroker_ParseOutline(ptr noundef %1, ptr noundef nonnull %i.g, i8 noundef zeroext 0) ; 2 uses
  %.not50 = icmp eq i32 %i.j, 0
  br i1 %.not50, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.k = icmp eq ptr %1, null
  br i1 %i.k, label %FT_Stroker_GetBorderCounts.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = zext i1 %.0.v to i64
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !36   ; 3 uses
  %.not36.i.i = icmp eq i32 %i.o, 0
  br i1 %.not36.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.preheader.i.i
  %.041.i.i = phi i1 [ %.not31.not.i.i, %bb.h ], [ true, %.lr.ph.preheader.i.i ]
  %.01940.i.i = phi ptr [ %i.x, %bb.h ], [ %i.q, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02139.i.i = phi i32 [ %i.w, %bb.h ], [ %i.o, %.lr.ph.preheader.i.i ]
  %.02238.i.i = phi i32 [ %spec.select.i.i, %bb.h ], [ 0, %.lr.ph.preheader.i.i ]
  %i.r = load i8, ptr %.01940.i.i, align 1, !tbaa !50 ; 2 uses
  %i.s = and i8 %i.r, 4
  %.not29.i.i = icmp eq i8 %i.s, 0
  %i.t = xor i1 %.041.i.i, %.not29.i.i
  br i1 %i.t, label %bb.h, label %FT_Stroker_GetBorderCounts.exit

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.u = and i8 %i.r, 8                           ; 2 uses
  %.not31.not.i.i = icmp ne i8 %i.u, 0            ; 2 uses
  %.lobit.i.i = lshr exact i8 %i.u, 3
  %i.v = zext nneg i8 %.lobit.i.i to i32
  %spec.select.i.i = add i32 %.02238.i.i, %i.v    ; 2 uses
  %i.w = add i32 %.02139.i.i, -1                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01940.i.i, i64 1
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %bb.h
  br i1 %.not31.not.i.i, label %._crit_edge.thread.i.i, label %FT_Stroker_GetBorderCounts.exit

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.g
  %.022.lcssa49.i.i = phi i32 [ %spec.select.i.i, %._crit_edge.i.i ], [ 0, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i8 1, ptr %i.y, align 8, !tbaa !30
  br label %FT_Stroker_GetBorderCounts.exit

FT_Stroker_GetBorderCounts.exit:                  ; preds = %.lr.ph.i.i, %bb.f, %._crit_edge.i.i, %._crit_edge.thread.i.i
  %.016.i = phi i32 [ 0, %bb.f ], [ %i.o, %._crit_edge.thread.i.i ], [ 0, %._crit_edge.i.i ], [ 0, %.lr.ph.i.i ]
  %.015.i = phi i32 [ 0, %bb.f ], [ %.022.lcssa49.i.i, %._crit_edge.thread.i.i ], [ 0, %._crit_edge.i.i ], [ 0, %.lr.ph.i.i ]
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.aa = call i32 @FT_Outline_Done(ptr noundef %i.z, ptr noundef nonnull %i.g) #10 ; 0 uses
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.ac = call i32 @FT_Outline_New(ptr noundef %i.ab, i32 noundef %.016.i, i32 noundef %.015.i, ptr noundef nonnull %i.g) #10 ; 2 uses
  %.not51 = icmp eq i32 %i.ac, 0
  br i1 %.not51, label %bb.i, label %bb.k

bb.i:                                             ; preds = %FT_Stroker_GetBorderCounts.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 42
  store i16 0, ptr %i.ad, align 2, !tbaa !60
  store i16 0, ptr %i.g, align 8, !tbaa !67
  call void @FT_Stroker_ExportBorder(ptr noundef %1, i32 noundef %.0, ptr noundef nonnull %i.g)
  %.not53 = icmp eq i8 %3, 0
  br i1 %.not53, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %0, align 8, !tbaa !70
  call void @FT_Done_Glyph(ptr noundef %i.ae) #10
  br label %.sink.split

bb.k:                                             ; preds = %bb.e, %FT_Stroker_GetBorderCounts.exit
  %.038.ph = phi i32 [ %i.ac, %FT_Stroker_GetBorderCounts.exit ], [ %i.j, %bb.e ] ; 2 uses
  call void @FT_Done_Glyph(ptr noundef nonnull %i.f) #10
  %.not52 = icmp eq i8 %3, 0
  br i1 %.not52, label %.sink.split, label %bb.l

.sink.split:                                      ; preds = %bb.k, %bb.i, %bb.j
  %.037.sink = phi ptr [ %i.f, %bb.i ], [ %i.f, %bb.j ], [ null, %bb.k ]
  %.040.ph = phi i32 [ 0, %bb.i ], [ 0, %bb.j ], [ %.038.ph, %bb.k ]
  store ptr %.037.sink, ptr %0, align 8, !tbaa !70
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.d, %bb.a, %bb.c, %bb.b, %bb.k
  %.040 = phi i32 [ 6, %bb.a ], [ 6, %bb.c ], [ %i.e, %bb.d ], [ %.038.ph, %bb.k ], [ 6, %bb.b ], [ %.040.ph, %.sink.split ]
  ret i32 %.040
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @FT_Vector_Unit(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_stroker_arcto(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %3 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %4 = alloca %struct.FT_Vector_, align 8         ; 5 uses
  %5 = alloca %struct.FT_Vector_, align 8         ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  %i.f = tail call i64 @FT_Angle_Diff(i64 noundef %i.c, i64 noundef %i.e) #10 ; 2 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.h = zext nneg i32 %1 to i64                  ; 3 uses
  %i.i = icmp eq i64 %i.f, 11796480
  %.neg16 = mul nuw nsw i64 %i.h, 23592960
  %i.j = add nsw i64 %.neg16, -11796480
  %.0 = select i1 %i.i, i64 %i.j, i64 %i.f        ; 3 uses
  %.neg = mul nuw nsw i64 %i.h, -11796480
  %i.k = add nsw i64 %.neg, 5898240
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.h ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = add nsw i64 %i.k, %i.g                   ; 2 uses
  %smax = tail call i64 @llvm.abs.i64(i64 %.0, i1 false)
  %smax18 = tail call i64 @llvm.smax.i64(i64 %smax, i64 5898240)
  %i.p = add nsw i64 %smax18, -1
  %i.q = udiv i64 %i.p, 5898240                   ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = and i64 %i.s, 4294967292
  %i.u = sdiv i64 %.0, %i.t
  %i.v = tail call i64 @FT_Tan(i64 noundef %i.u) #10 ; 2 uses
  %i.w = sdiv i64 %i.v, 3
  %i.x = add nsw i64 %i.w, %i.v                   ; 4 uses
  call void @FT_Vector_From_Polar(ptr noundef nonnull %2, i64 noundef %i.b, i64 noundef %i.o) #10
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !42   ; 2 uses
  %i.aa = mul i64 %i.z, %i.x                      ; 2 uses
  %i.ab = sub i64 0, %i.aa
  %i.ac = ashr i64 %i.ab, 63
  %reass.sub = sub i64 %i.ac, %i.aa
  %i.ad = add i64 %reass.sub, 32768
  %i.ae = ashr i64 %i.ad, 16
  %i.af = load i64, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.ag = mul i64 %i.af, %i.x                     ; 2 uses
  %i.ah = ashr i64 %i.ag, 63
  %i.ai = add i64 %i.ag, 32768
  %i.aj = add i64 %i.ai, %i.ah
  %i.ak = ashr i64 %i.aj, 16
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.n, align 8, !tbaa !40
  %i.an = add nsw i64 %i.am, %i.af                ; 2 uses
  store i64 %i.an, ptr %2, align 8, !tbaa !40
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !42
  %i.aq = add nsw i64 %i.ap, %i.z                 ; 2 uses
  store i64 %i.aq, ptr %i.y, align 8, !tbaa !42
  %i.ar = add nsw i64 %i.ae, %i.an
  store i64 %i.ar, ptr %3, align 8, !tbaa !40
  %i.as = add nsw i64 %i.aq, %i.ak
  store i64 %i.as, ptr %i.al, align 8, !tbaa !42
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = add nuw nsw i64 %i.q, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv43.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next44.i, %bb.c ] ; 3 uses
  %i.aw = mul nsw i64 %indvars.iv43.i, %.0
  %i.ax = sdiv i64 %i.aw, %i.r
  %i.ay = add nsw i64 %i.ax, %i.o
  call void @FT_Vector_From_Polar(ptr noundef nonnull %5, i64 noundef %i.b, i64 noundef %i.ay) #10
  %i.az = load i64, ptr %i.at, align 8, !tbaa !42 ; 2 uses
  %i.ba = mul i64 %i.az, %i.x                     ; 2 uses
  %i.bb = ashr i64 %i.ba, 63
  %i.bc = add i64 %i.ba, 32768
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = ashr i64 %i.bd, 16
  %i.bf = load i64, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.bg = mul i64 %i.x, %i.bf                     ; 2 uses
  %i.bh = sub i64 0, %i.bg
  %i.bi = ashr i64 %i.bh, 63
  %reass.sub17 = sub i64 %i.bi, %i.bg
  %i.bj = add i64 %reass.sub17, 32768
  %i.bk = ashr i64 %i.bj, 16
  %i.bl = load i64, ptr %i.n, align 8, !tbaa !40
  %i.bm = add nsw i64 %i.bl, %i.bf                ; 2 uses
  store i64 %i.bm, ptr %5, align 8, !tbaa !40
  %i.bn = load i64, ptr %i.ao, align 8, !tbaa !42
  %i.bo = add nsw i64 %i.bn, %i.az                ; 2 uses
  store i64 %i.bo, ptr %i.at, align 8, !tbaa !42
  %i.bp = add nsw i64 %i.be, %i.bm                ; 2 uses
  store i64 %i.bp, ptr %4, align 8, !tbaa !40
  %i.bq = add nsw i64 %i.bo, %i.bk                ; 2 uses
  store i64 %i.bq, ptr %i.au, align 8, !tbaa !42
  %i.br = call fastcc i32 @ft_stroke_border_cubicto(ptr noundef nonnull %i.m, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 2 uses
  %.not35.i = icmp eq i32 %i.br, 0
  br i1 %.not35.i, label %bb.c, label %ft_stroke_border_arcto.exit

bb.c:                                             ; preds = %bb.b
  %i.bs = load i64, ptr %5, align 8, !tbaa !40
  %factor.i = shl i64 %i.bs, 1
  %i.bt = sub i64 %factor.i, %i.bp
  store i64 %i.bt, ptr %3, align 8, !tbaa !40
  %i.bu = load i64, ptr %i.at, align 8, !tbaa !42
  %factor39.i = shl i64 %i.bu, 1
  %i.bv = sub i64 %factor39.i, %i.bq
  store i64 %i.bv, ptr %i.al, align 8, !tbaa !42
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv43.i, %i.av
  br i1 %exitcond.not, label %ft_stroke_border_arcto.exit, label %bb.b, !llvm.loop !93

ft_stroke_border_arcto.exit:                      ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.bw = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i8 0, ptr %i.bw, align 8, !tbaa !51
  ret i32 %i.br
}

declare i64 @FT_Tan(i64 noundef) local_unnamed_addr #2

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !54}
!1 = distinct !{!1, !54}
!2 = distinct !{!2, !54}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS13FT_MemoryRec_", !11, i64 0}
!13 = !{!"p1 _ZTS15FT_ListNodeRec_", !11, i64 0}
!14 = !{!"FT_ListRec_", !13, i64 0, !13, i64 8}
!15 = !{!"p1 _ZTS15FT_RendererRec_", !11, i64 0}
!16 = !{!"p1 _ZTS13FT_ModuleRec_", !11, i64 0}
!17 = !{!"FT_LibraryRec_", !12, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !7, i64 24, !14, i64 280, !15, i64 296, !16, i64 304, !7, i64 312, !7, i64 344, !8, i64 392}
!18 = !{!17, !12, i64 0}
!19 = !{!8, !8, i64 0}
!20 = !{!"long", !7, i64 0}
!21 = !{!"FT_Vector_", !20, i64 0, !20, i64 8}
!22 = !{!"p1 _ZTS14FT_LibraryRec_", !11, i64 0}
!23 = !{!"FT_StrokerRec_", !20, i64 0, !20, i64 8, !21, i64 16, !20, i64 32, !7, i64 40, !7, i64 41, !20, i64 48, !21, i64 56, !20, i64 72, !7, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !20, i64 96, !20, i64 104, !7, i64 112, !22, i64 208}
!24 = !{!23, !22, i64 208}
!25 = !{!"p1 _ZTS10FT_Vector_", !11, i64 0}
!26 = !{!"p1 omnipotent char", !11, i64 0}
!27 = !{!"FT_StrokeBorderRec_", !8, i64 0, !8, i64 4, !25, i64 8, !26, i64 16, !7, i64 24, !8, i64 28, !12, i64 32, !7, i64 40}
!28 = !{!27, !12, i64 32}
!29 = !{!27, !8, i64 28}
!30 = !{!27, !7, i64 40}
!31 = !{!23, !20, i64 104}
end_hunk_0
