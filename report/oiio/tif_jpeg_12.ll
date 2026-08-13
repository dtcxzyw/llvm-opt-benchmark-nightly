inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@TIFFjpeg_alloc_sarray
define internal fastcc ptr @TIFFjpeg_alloc_sarray(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !209
  %i.g = call ptr %i.f(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %1, i32 noundef %2) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TIFFjpeg_read_scanlines(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @jpeg12_read_scanlines(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.d
}

declare i32 @jpeg12_read_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_set_colorspace(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef %1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_set_quality(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_set_quality(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @JPEGEncodeRaw(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1268
  %i.e = load i32, ptr %i.d, align 4, !tbaa !177
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1352 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !178
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !150
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef nonnull @.str.35) #16
  br label %.loopexit108

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1170
  %i.m = load i16, ptr %i.l, align 2, !tbaa !80
  %i.n = zext i16 %i.m to i64                     ; 3 uses
  %i.o = add nsw i64 %i.k, -1
  %i.p = add nsw i64 %i.o, %i.n
  %i.q = sdiv i64 %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1172 ; 3 uses
  %i.s = load i16, ptr %i.r, align 4, !tbaa !81
  %i.t = zext i16 %i.s to i64                     ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, %i.n
  %i.v = add nuw nsw i64 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %i.q, %i.y
  %i.aa = mul i64 %i.z, %i.v
  %i.ab = add nsw i64 %i.aa, 7
  %i.ac = sdiv i64 %i.ab, 8                       ; 4 uses
  %i.ad = sdiv i64 %2, %i.ac
  %i.ae = mul nsw i64 %i.ad, %i.t                 ; 3 uses
  %i.af = srem i64 %2, %i.ac
  %.not101 = icmp eq i64 %i.af, 0
  br i1 %.not101, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %0, align 8, !tbaa !150
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef %i.ag, ptr noundef nonnull @.str.36) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 140
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !189
  %.fr = freeze i32 %i.ak                         ; 7 uses
  %i.al = icmp sgt i64 %i.ae, 0
  br i1 %i.al, label %.lr.ph157, label %.loopexit108

.lr.ph157:                                        ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 1184 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 1264 ; 8 uses
  %.not103111 = icmp eq i32 %.fr, 0
  %i.ap = sext i32 %i.e to i64                    ; 11 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 844 ; 4 uses
  br i1 %.not103111, label %.lr.ph157.split.us, label %.lr.ph157.split.preheader

.lr.ph157.split.preheader:                        ; preds = %.lr.ph157
  %i.as = mul nsw i64 %i.ap, -2
  %xtraiter268 = and i32 %.fr, 7                  ; 2 uses
  %lcmp.mod269.not = icmp eq i32 %xtraiter268, 0
  %i.at = icmp ult i32 %.fr, 8
  br label %.lr.ph157.split

.lr.ph157.split.us:                               ; preds = %.lr.ph157, %bb.g
  %.089153.us = phi i64 [ %i.bi, %bb.g ], [ %i.ae, %.lr.ph157 ]
  %i.au = load i32, ptr %i.am, align 4, !tbaa !21
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.us158.preheader, label %._crit_edge144.split.us.us

.lr.ph.us158.preheader:                           ; preds = %.lr.ph157.split.us
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !21
  br label %.lr.ph.us158

._crit_edge144.split.us.us:                       ; preds = %._crit_edge126.us.us, %.lr.ph157.split.us
  %i.ax = load i32, ptr %i.ao, align 8, !tbaa !149 ; 2 uses
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.ao, align 8, !tbaa !149
  %i.az = icmp sgt i32 %i.ax, 6
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge144.split.us.us
  %i.ba = load i32, ptr %i.aq, align 8, !tbaa !21
  %i.bb = shl nsw i32 %i.ba, 3                    ; 2 uses
  %i.bc = tail call fastcc i32 @TIFFjpeg_write_raw_data(ptr noundef nonnull %i.c, ptr noundef nonnull %i.an, i32 noundef %i.bb)
  %.not102.us = icmp eq i32 %i.bc, %i.bb
  br i1 %.not102.us, label %.thread.us, label %.split.us

.thread.us:                                       ; preds = %bb.f
  store i32 0, ptr %i.ao, align 8, !tbaa !149
  br label %bb.g

bb.g:                                             ; preds = %.thread.us, %._crit_edge144.split.us.us
  %i.bd = load i16, ptr %i.r, align 4, !tbaa !81  ; 2 uses
  %i.be = zext i16 %i.bd to i32
  %i.bf = load i32, ptr %i.ar, align 4, !tbaa !141
  %i.bg = add i32 %i.bf, %i.be
  store i32 %i.bg, ptr %i.ar, align 4, !tbaa !141
  %i.bh = zext i16 %i.bd to i64
  %i.bi = sub nsw i64 %.089153.us, %i.bh          ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph157.split.us, label %.loopexit108

.lr.ph.us158:                                     ; preds = %.lr.ph.us158.preheader, %._crit_edge126.us.us
  %indvars.iv212 = phi i64 [ 0, %.lr.ph.us158.preheader ], [ %indvars.iv.next213, %._crit_edge126.us.us ] ; 2 uses
  %.092142.us.us = phi ptr [ %i.aw, %.lr.ph.us158.preheader ], [ %i.bq, %._crit_edge126.us.us ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.092142.us.us, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !146 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.092142.us.us, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !147
  %i.bo = shl i32 %i.bn, 3                        ; 3 uses
  %i.bp = icmp sgt i32 %i.bl, 0
  br i1 %i.bp, label %.lr.ph125.us.us, label %._crit_edge126.us.us

._crit_edge126.us.us:                             ; preds = %._crit_edge.us136.us.us.us, %._crit_edge.us129.us.us, %.preheader105.us.us.us.preheader, %.lr.ph125.split.us145.us, %.lr.ph.us158
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.092142.us.us, i64 96
  %i.br = load i32, ptr %i.am, align 4, !tbaa !21
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next213, %i.bs
  br i1 %i.bt, label %.lr.ph.us158, label %._crit_edge144.split.us.us

.lr.ph125.us.us:                                  ; preds = %.lr.ph.us158
  %i.bu = getelementptr inbounds nuw i8, ptr %.092142.us.us, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !144
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv212
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !175 ; 2 uses
  %i.by = load i32, ptr %i.ao, align 8, !tbaa !149
  %i.bz = mul nsw i32 %i.by, %i.bl                ; 2 uses
  %i.ca = icmp eq i32 %i.bv, 1
  %i.cb = icmp sgt i32 %i.bo, 0                   ; 2 uses
  br i1 %i.ca, label %.preheader105.us.us.us.preheader, label %.lr.ph125.split.us145.us

.preheader105.us.us.us.preheader:                 ; preds = %.lr.ph125.us.us
  %i.cc = sext i32 %i.bz to i64
  %wide.trip.count210 = zext nneg i32 %i.bl to i64
  %invariant.gep232 = getelementptr [8 x i8], ptr %i.bx, i64 %i.cc
  br i1 %i.cb, label %.lr.ph121.us.us.us.preheader, label %._crit_edge126.us.us

.lr.ph125.split.us145.us:                         ; preds = %.lr.ph125.us.us
  br i1 %i.cb, label %.preheader106.us.us.us.us.preheader, label %._crit_edge126.us.us

.preheader106.us.us.us.us.preheader:              ; preds = %.lr.ph125.split.us145.us
  %i.cd = sext i32 %i.bz to i64
  %wide.trip.count200 = zext nneg i32 %i.bl to i64
  %invariant.gep230 = getelementptr [8 x i8], ptr %i.bx, i64 %i.cd
  br label %.preheader106.us.us.us.us

.lr.ph121.us.us.us:                               ; preds = %.lr.ph121.us.us.us, %.lr.ph121.us.us.us.preheader
  %.4120.us.us.us = phi ptr [ %i.cn, %.lr.ph121.us.us.us.preheader ], [ %i.cl, %.lr.ph121.us.us.us ] ; 9 uses
  %.195119.us.us.us = phi i32 [ 0, %.lr.ph121.us.us.us.preheader ], [ %i.cm, %.lr.ph121.us.us.us ]
  store i16 %load_initial252, ptr %.4120.us.us.us, align 2, !tbaa !79
  %i.ce = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 2
  store i16 %load_initial252, ptr %i.ce, align 2, !tbaa !79
  %i.cf = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 4
  store i16 %load_initial252, ptr %i.cf, align 2, !tbaa !79
  %i.cg = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 6
  store i16 %load_initial252, ptr %i.cg, align 2, !tbaa !79
  %i.ch = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 8
  store i16 %load_initial252, ptr %i.ch, align 2, !tbaa !79
  %i.ci = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 10
  store i16 %load_initial252, ptr %i.ci, align 2, !tbaa !79
  %i.cj = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 12
  store i16 %load_initial252, ptr %i.cj, align 2, !tbaa !79
  %i.ck = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 14
  store i16 %load_initial252, ptr %i.ck, align 2, !tbaa !79
  %i.cl = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 16
  %i.cm = add nuw nsw i32 %.195119.us.us.us, 8    ; 2 uses
  %exitcond202.not.7 = icmp eq i32 %i.cm, %i.bo
  br i1 %exitcond202.not.7, label %._crit_edge.us129.us.us, label %.lr.ph121.us.us.us

._crit_edge.us129.us.us:                          ; preds = %.lr.ph121.us.us.us
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %exitcond211.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count210
  br i1 %exitcond211.not, label %._crit_edge126.us.us, label %.lr.ph121.us.us.us.preheader

.lr.ph121.us.us.us.preheader:                     ; preds = %.preheader105.us.us.us.preheader, %._crit_edge.us129.us.us
  %indvars.iv203 = phi i64 [ %indvars.iv.next204, %._crit_edge.us129.us.us ], [ 0, %.preheader105.us.us.us.preheader ] ; 2 uses
  %gep233 = getelementptr [8 x i8], ptr %invariant.gep232, i64 %indvars.iv203
  %i.cn = load ptr, ptr %gep233, align 8, !tbaa !151 ; 2 uses
  %scevgep251 = getelementptr i8, ptr %i.cn, i64 -2
  %load_initial252 = load i16, ptr %scevgep251, align 2 ; 8 uses
  br label %.lr.ph121.us.us.us

.preheader106.us.us.us.us:                        ; preds = %.preheader106.us.us.us.us.preheader, %._crit_edge.us136.us.us.us
  %indvars.iv197 = phi i64 [ 0, %.preheader106.us.us.us.us.preheader ], [ %indvars.iv.next198, %._crit_edge.us136.us.us.us ] ; 2 uses
  %gep231 = getelementptr [8 x i8], ptr %invariant.gep230, i64 %indvars.iv197
  %i.co = load ptr, ptr %gep231, align 8, !tbaa !151 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.co, i64 -2
  %load_initial = load i16, ptr %scevgep, align 2 ; 8 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader106.us.us.us.us
  %.4120.us133.us.us.us = phi ptr [ %i.co, %.preheader106.us.us.us.us ], [ %i.cw, %bb.h ] ; 9 uses
  %.195119.us134.us.us.us = phi i32 [ 0, %.preheader106.us.us.us.us ], [ %i.cx, %bb.h ]
  store i16 %load_initial, ptr %.4120.us133.us.us.us, align 2, !tbaa !79
  %i.cp = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 2
  store i16 %load_initial, ptr %i.cp, align 2, !tbaa !79
  %i.cq = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 4
  store i16 %load_initial, ptr %i.cq, align 2, !tbaa !79
  %i.cr = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 6
  store i16 %load_initial, ptr %i.cr, align 2, !tbaa !79
  %i.cs = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 8
  store i16 %load_initial, ptr %i.cs, align 2, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 10
  store i16 %load_initial, ptr %i.ct, align 2, !tbaa !79
  %i.cu = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 12
  store i16 %load_initial, ptr %i.cu, align 2, !tbaa !79
  %i.cv = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 14
  store i16 %load_initial, ptr %i.cv, align 2, !tbaa !79
  %i.cw = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 16
  %i.cx = add nuw nsw i32 %.195119.us134.us.us.us, 8 ; 2 uses
  %exitcond196.not.7 = icmp eq i32 %i.cx, %i.bo
  br i1 %exitcond196.not.7, label %._crit_edge.us136.us.us.us, label %bb.h

._crit_edge.us136.us.us.us:                       ; preds = %bb.h
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count200
  br i1 %exitcond201.not, label %._crit_edge126.us.us, label %.preheader106.us.us.us.us

.lr.ph157.split:                                  ; preds = %.lr.ph157.split.preheader, %bb.j
  %indvar = phi i64 [ 0, %.lr.ph157.split.preheader ], [ %indvar.next, %bb.j ] ; 2 uses
  %.081154 = phi ptr [ %1, %.lr.ph157.split.preheader ], [ %i.iy, %bb.j ] ; 3 uses
  %.089153 = phi i64 [ %i.ae, %.lr.ph157.split.preheader ], [ %i.ja, %bb.j ]
  %i.cy = mul i64 %i.ac, %indvar
  %i.cz = add i64 %i.cy, %i.a
  %i.da = load i32, ptr %i.am, align 4, !tbaa !21
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph.preheader, label %._crit_edge144.split

.lr.ph.preheader:                                 ; preds = %.lr.ph157.split
  %i.dc = load ptr, ptr %i.ah, align 8, !tbaa !21
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge126
  %indvars.iv193 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next194, %._crit_edge126 ] ; 2 uses
  %.092142 = phi ptr [ %i.dc, %.lr.ph.preheader ], [ %i.ik, %._crit_edge126 ] ; 4 uses
  %.097140 = phi i32 [ 0, %.lr.ph.preheader ], [ %.198.lcssa, %._crit_edge126 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.092142, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !144 ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.092142, i64 12
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !146 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.092142, i64 28
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !147
  %i.dj = shl i32 %i.di, 3                        ; 3 uses
  %i.dk = mul i32 %i.de, %.fr                     ; 3 uses
  %i.dl = sub i32 %i.dj, %i.dk                    ; 5 uses
  %i.dm = icmp sgt i32 %i.dg, 0
  br i1 %i.dm, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %.lr.ph
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv193
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !175 ; 2 uses
  %i.dp = load i32, ptr %i.ao, align 8, !tbaa !149
  %i.dq = mul nsw i32 %i.dp, %i.dg
  %i.dr = icmp eq i32 %i.de, 1
  %i.ds = icmp sgt i32 %i.de, 0
  %i.dt = icmp sgt i32 %i.dl, 0                   ; 2 uses
  %i.du = sext i32 %i.dq to i64                   ; 2 uses
  %i.dv = sext i32 %.097140 to i64                ; 3 uses
  br i1 %i.dr, label %.preheader105.us.preheader, label %.preheader106.preheader

.preheader106.preheader:                          ; preds = %.lr.ph125
  %i.dw = sext i32 %i.de to i64                   ; 2 uses
  %wide.trip.count181 = zext nneg i32 %i.dg to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.do, i64 %i.du
  %wide.trip.count = zext i32 %i.de to i64        ; 8 uses
  %.neg = mul nsw i64 %i.dv, -2
  %.neg259 = sub i64 %.neg, %i.cz
  %i.dx = mul nsw i64 %i.dw, -2
  %min.iters.check = icmp ult i32 %i.de, 4
  %min.iters.check241 = icmp ult i32 %i.de, 16
  %i.dy = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 5 uses
  %i.dz = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.dy, 0
  %n.vec243 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.ea = shl nuw nsw i64 %n.vec243, 1
  %cmp.n248 = icmp eq i64 %n.vec243, %wide.trip.count
  %xtraiter265 = and i32 %i.dl, 7                 ; 3 uses
  %i.eb = sub i32 %i.dk, %i.dj
  %i.ec = icmp ugt i32 %i.eb, -8
  %unroll_iter = and i32 %i.dl, 2147483640
  %lcmp.mod266.not = icmp eq i32 %xtraiter265, 0
  %lcmp.mod267 = icmp ne i32 %xtraiter265, 0
  br label %.preheader106

.preheader105.us.preheader:                       ; preds = %.lr.ph125
  %wide.trip.count191 = zext nneg i32 %i.dg to i64
  %invariant.gep228 = getelementptr [8 x i8], ptr %i.do, i64 %i.du
  %xtraiter271 = and i32 %i.dl, 7                 ; 3 uses
  %i.ed = sub i32 %i.dk, %i.dj
  %i.ee = icmp ugt i32 %i.ed, -8
  %unroll_iter275 = and i32 %i.dl, 2147483640
  %lcmp.mod273.not = icmp eq i32 %xtraiter271, 0
  %lcmp.mod274 = icmp ne i32 %xtraiter271, 0
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %._crit_edge.us129, %.preheader105.us.preheader
  %indvars.iv186 = phi i64 [ %i.dv, %.preheader105.us.preheader ], [ %indvars.iv.next187, %._crit_edge.us129 ] ; 2 uses
  %indvars.iv184 = phi i64 [ 0, %.preheader105.us.preheader ], [ %indvars.iv.next185, %._crit_edge.us129 ] ; 2 uses
  %gep229 = getelementptr [8 x i8], ptr %invariant.gep228, i64 %indvars.iv184
  %i.ef = load ptr, ptr %gep229, align 8, !tbaa !151 ; 2 uses
  %i.eg = getelementptr inbounds [2 x i8], ptr %.081154, i64 %indvars.iv186 ; 2 uses
  br i1 %lcmp.mod269.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.082118.us.prol = phi ptr [ %i.ek, %.lr.ph.us.prol ], [ %i.eg, %.lr.ph.us.preheader ] ; 2 uses
  %.084117.us.prol = phi ptr [ %i.ej, %.lr.ph.us.prol ], [ %i.ef, %.lr.ph.us.preheader ] ; 3 uses
  %.090116.us.prol = phi i32 [ %i.eh, %.lr.ph.us.prol ], [ %.fr, %.lr.ph.us.preheader ]
  %prol.iter270 = phi i32 [ %prol.iter270.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.eh = add i32 %.090116.us.prol, -1            ; 2 uses
  %i.ei = load i16, ptr %.082118.us.prol, align 2, !tbaa !79
  %i.ej = getelementptr inbounds nuw i8, ptr %.084117.us.prol, i64 2 ; 3 uses
  store i16 %i.ei, ptr %.084117.us.prol, align 2, !tbaa !79
  %i.ek = getelementptr inbounds [2 x i8], ptr %.082118.us.prol, i64 %i.ap ; 2 uses
  %prol.iter270.next = add i32 %prol.iter270, 1   ; 2 uses
  %prol.iter270.cmp.not = icmp eq i32 %prol.iter270.next, %xtraiter268
  br i1 %prol.iter270.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !210

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.084117.us.lcssa.unr = phi ptr [ poison, %.lr.ph.us.preheader ], [ %.084117.us.prol, %.lr.ph.us.prol ]
  %.lcssa264.unr = phi ptr [ poison, %.lr.ph.us.preheader ], [ %i.ej, %.lr.ph.us.prol ]
  %.082118.us.unr = phi ptr [ %i.eg, %.lr.ph.us.preheader ], [ %i.ek, %.lr.ph.us.prol ]
  %.084117.us.unr = phi ptr [ %i.ef, %.lr.ph.us.preheader ], [ %i.ej, %.lr.ph.us.prol ]
  %.090116.us.unr = phi i32 [ %.fr, %.lr.ph.us.preheader ], [ %i.eh, %.lr.ph.us.prol ]
  br i1 %i.at, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.082118.us = phi ptr [ %i.fj, %.lr.ph.us ], [ %.082118.us.unr, %.lr.ph.us.prol.loopexit ] ; 2 uses
  %.084117.us = phi ptr [ %i.fi, %.lr.ph.us ], [ %.084117.us.unr, %.lr.ph.us.prol.loopexit ] ; 10 uses
  %.090116.us = phi i32 [ %i.fg, %.lr.ph.us ], [ %.090116.us.unr, %.lr.ph.us.prol.loopexit ]
  %i.el = load i16, ptr %.082118.us, align 2, !tbaa !79
  %i.em = getelementptr inbounds nuw i8, ptr %.084117.us, i64 2
  store i16 %i.el, ptr %.084117.us, align 2, !tbaa !79
  %i.en = getelementptr inbounds [2 x i8], ptr %.082118.us, i64 %i.ap ; 2 uses
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !79
  %i.ep = getelementptr inbounds nuw i8, ptr %.084117.us, i64 4
  store i16 %i.eo, ptr %i.em, align 2, !tbaa !79
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.en, i64 %i.ap ; 2 uses
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !79
  %i.es = getelementptr inbounds nuw i8, ptr %.084117.us, i64 6
  store i16 %i.er, ptr %i.ep, align 2, !tbaa !79
  %i.et = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %i.ap ; 2 uses
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !79
  %i.ev = getelementptr inbounds nuw i8, ptr %.084117.us, i64 8
  store i16 %i.eu, ptr %i.es, align 2, !tbaa !79
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.et, i64 %i.ap ; 2 uses
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !79
  %i.ey = getelementptr inbounds nuw i8, ptr %.084117.us, i64 10
  store i16 %i.ex, ptr %i.ev, align 2, !tbaa !79
  %i.ez = getelementptr inbounds [2 x i8], ptr %i.ew, i64 %i.ap ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !79
  %i.fb = getelementptr inbounds nuw i8, ptr %.084117.us, i64 12
  store i16 %i.fa, ptr %i.ey, align 2, !tbaa !79
  %i.fc = getelementptr inbounds [2 x i8], ptr %i.ez, i64 %i.ap ; 2 uses
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !79
  %i.fe = getelementptr inbounds nuw i8, ptr %.084117.us, i64 14
  store i16 %i.fd, ptr %i.fb, align 2, !tbaa !79
  %i.ff = getelementptr inbounds [2 x i8], ptr %i.fc, i64 %i.ap ; 2 uses
  %i.fg = add i32 %.090116.us, -8                 ; 2 uses
  %i.fh = load i16, ptr %i.ff, align 2, !tbaa !79
  %i.fi = getelementptr inbounds nuw i8, ptr %.084117.us, i64 16 ; 2 uses
  store i16 %i.fh, ptr %i.fe, align 2, !tbaa !79
  %i.fj = getelementptr inbounds [2 x i8], ptr %i.ff, i64 %i.ap
  %.not104.us.7 = icmp eq i32 %i.fg, 0
  br i1 %.not104.us.7, label %.loopexit.us.unr-lcssa, label %.lr.ph.us

.lr.ph121.us:                                     ; preds = %.lr.ph121.us.preheader, %.lr.ph121.us
  %.4120.us = phi ptr [ %i.fr, %.lr.ph121.us ], [ %.lcssa264, %.lr.ph121.us.preheader ] ; 9 uses
  %niter276 = phi i32 [ %niter276.next.7, %.lr.ph121.us ], [ 0, %.lr.ph121.us.preheader ]
  store i16 %load_initial257, ptr %.4120.us, align 2, !tbaa !79
  %i.fk = getelementptr inbounds nuw i8, ptr %.4120.us, i64 2
  store i16 %load_initial257, ptr %i.fk, align 2, !tbaa !79
  %i.fl = getelementptr inbounds nuw i8, ptr %.4120.us, i64 4
  store i16 %load_initial257, ptr %i.fl, align 2, !tbaa !79
  %i.fm = getelementptr inbounds nuw i8, ptr %.4120.us, i64 6
end_hunk_0
