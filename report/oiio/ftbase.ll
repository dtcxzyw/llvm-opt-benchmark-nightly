inline.NumInlined: 362
inline.NumDeleted: 35
begin_hunk_0_@FT_Get_Color_Glyph_Paint:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !489
  %.not14 = icmp eq ptr %i.i, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !543
  %i.l = tail call zeroext i8 %i.k(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i8 [ %i.l, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i8 @FT_Get_Color_Glyph_ClipBox(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74
  %i.e = and i64 %i.d, 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !179
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !544  ; 2 uses
  %.not14 = icmp eq ptr %i.i, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call zeroext i8 %i.i(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i8 [ %i.j, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i8 @FT_Get_Paint_Layers(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %1, null
  %or.cond3 = and i1 %i.c, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !74
  %i.f = and i64 %i.e, 8
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !179
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !545  ; 2 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call zeroext i8 %i.j(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i8 [ %i.k, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i8 @FT_Get_Paint(ptr noundef %0, ptr %1, i8 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %3, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74
  %i.e = and i64 %i.d, 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !179
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !546  ; 2 uses
  %.not13 = icmp eq ptr %i.i, null
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call zeroext i8 %i.i(ptr noundef nonnull %0, ptr %1, i8 %2, ptr noundef nonnull %3) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i8 [ %i.j, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i8 @FT_Get_Colorline_Stops(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !74
  %i.f = and i64 %i.e, 8
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !179
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 296
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !547  ; 2 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call zeroext i8 %i.j(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i8 [ %i.k, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define i32 @FT_Outline_Decompose(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FT_Vector_, align 16        ; 9 uses
  %4 = alloca %struct.FT_Vector_, align 16        ; 11 uses
  %5 = alloca %struct.FT_Vector_, align 16        ; 4 uses
  %6 = alloca %struct.FT_Vector_, align 16        ; 8 uses
  %7 = alloca %struct.FT_Vector_, align 16        ; 7 uses
  %8 = alloca %struct.FT_Vector_, align 16        ; 7 uses
  %9 = alloca %struct.FT_Vector_, align 16        ; 7 uses
  %10 = alloca %struct.FT_Vector_, align 16       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not156 = icmp eq ptr %1, null
  br i1 %.not156, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = load i16, ptr %0, align 8, !tbaa !138
  %i.b = icmp sgt i16 %i.a, 0
  br i1 %i.b, label %.lr.ph213, label %.loopexit

.lr.ph213:                                        ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !548
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !550
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %i.o = shufflevector <2 x i64> %i.n, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.p = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %i.q = shufflevector <2 x i64> %i.p, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i16, ptr %0, align 8, !tbaa !138
  %i.s = sext i16 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.e, label %.loopexit, !llvm.loop !551

bb.e:                                             ; preds = %.lr.ph213, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph213 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.0126211 = phi i32 [ -1, %.lr.ph213 ], [ %i.x, %bb.d ]
  %11 = add nsw i32 %.0126211, 1                  ; 2 uses
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !139
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load i16, ptr %i.v, align 2, !tbaa !141
  %i.x = sext i16 %i.w to i32                     ; 3 uses
  %12 = icmp sgt i32 %11, %i.x
  br i1 %12, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !162  ; 2 uses
  %i.z = zext nneg i32 %i.x to i64                ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z ; 4 uses
  %i.ab = zext nneg i32 %11 to i64                ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.ab ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !312
  %i.ad = load <2 x i64>, ptr %4, align 16, !tbaa !39
  %i.ae = shl <2 x i64> %i.ad, %i.o
  %i.af = sub nsw <2 x i64> %i.ae, %i.q           ; 2 uses
  store <2 x i64> %i.af, ptr %4, align 16, !tbaa !39
  %i.ag = load <2 x i64>, ptr %i.aa, align 8, !tbaa !39
  %i.ah = shl <2 x i64> %i.ag, %i.o
  %i.ai = sub nsw <2 x i64> %i.ah, %i.q           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !312
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !214 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !242
  %i.am = and i8 %i.al, 3
  switch i8 %i.am, label %bb.k [
    i8 2, label %.loopexit
    i8 0, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.z
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !242
  %i.ap = and i8 %i.ao, 3
  %i.aq = icmp eq i8 %i.ap, 1
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds i8, ptr %i.aa, i64 -16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.as = add nsw <2 x i64> %i.ai, %i.af
  %i.at = sdiv <2 x i64> %i.as, splat (i64 2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0136 = phi ptr [ %i.ar, %bb.h ], [ %i.aa, %bb.i ]
  %i.au = phi <2 x i64> [ %i.ai, %bb.h ], [ %i.at, %bb.i ]
  store <2 x i64> %i.au, ptr %4, align 16, !tbaa !39
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.aw = getelementptr inbounds i8, ptr %i.ak, i64 -1
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j
  %.0138 = phi ptr [ %i.av, %bb.j ], [ %i.ac, %bb.f ] ; 2 uses
  %.1137 = phi ptr [ %.0136, %bb.j ], [ %i.aa, %bb.f ] ; 6 uses
  %.0132 = phi ptr [ %i.aw, %bb.j ], [ %i.ak, %bb.f ]
  %i.ax = load ptr, ptr %1, align 8, !tbaa !552
  %i.ay = call i32 %i.ax(ptr noundef nonnull %4, ptr noundef %2) #30 ; 2 uses
  %.not158 = icmp eq i32 %i.ay, 0
  br i1 %.not158, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.k
  %i.az = icmp ult ptr %.0138, %.1137
  br i1 %i.az, label %.lr.ph208, label %._crit_edge209

.lr.ph208:                                        ; preds = %.preheader, %.backedge
  %.1133207 = phi ptr [ %.1133.be, %.backedge ], [ %.0132, %.preheader ] ; 3 uses
  %.1139206 = phi ptr [ %.1139.be, %.backedge ], [ %.0138, %.preheader ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.1139206, i64 16 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1133207, i64 1 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !242
  %i.bd = and i8 %i.bc, 3
  switch i8 %i.bd, label %bb.p [
    i8 1, label %bb.l
    i8 0, label %bb.m
  ]

bb.l:                                             ; preds = %.lr.ph208
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.be = load <2 x i64>, ptr %i.ba, align 8, !tbaa !39
  %i.bf = shl <2 x i64> %i.be, %i.o
  %i.bg = sub nsw <2 x i64> %i.bf, %i.q
  store <2 x i64> %i.bg, ptr %5, align 16, !tbaa !39
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !553
  %i.bi = call i32 %i.bh(ptr noundef nonnull %5, ptr noundef %2) #30 ; 2 uses
  %.not162.a = icmp eq i32 %i.bi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.not162.a, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.s, %bb.l, %select.unfold
  %.1139.be = phi ptr [ %i.bo, %select.unfold ], [ %i.ba, %bb.l ], [ %i.ck, %bb.s ] ; 2 uses
  %.1133.be = phi ptr [ %i.bp, %select.unfold ], [ %i.bb, %bb.l ], [ %i.cr, %bb.s ]
  %i.bj = icmp ult ptr %.1139.be, %.1137
  br i1 %i.bj, label %.lr.ph208, label %._crit_edge209

bb.m:                                             ; preds = %.lr.ph208
  %i.bk = load <2 x i64>, ptr %i.ba, align 8, !tbaa !39
  %i.bl = shl <2 x i64> %i.bk, %i.o
  %i.bm = sub nsw <2 x i64> %i.bl, %i.q
  store <2 x i64> %i.bm, ptr %3, align 16, !tbaa !39
  %i.bn = icmp ult ptr %i.ba, %.1137
  br i1 %i.bn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m, %.critedge
  %.2134204 = phi ptr [ %i.bp, %.critedge ], [ %i.bb, %bb.m ]
  %.2140203 = phi ptr [ %i.bo, %.critedge ], [ %i.ba, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.bo = getelementptr inbounds nuw i8, ptr %.2140203, i64 16 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.2134204, i64 1 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !242
  %i.br = and i8 %i.bq, 3
  %i.bs = load <2 x i64>, ptr %i.bo, align 8, !tbaa !39
  %i.bt = shl <2 x i64> %i.bs, %i.o
  %i.bu = sub nsw <2 x i64> %i.bt, %i.q           ; 2 uses
  store <2 x i64> %i.bu, ptr %6, align 16, !tbaa !39
  switch i8 %i.br, label %.thread173 [
    i8 1, label %bb.n
    i8 0, label %bb.o
  ]

.thread173:                                       ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.loopexit

bb.n:                                             ; preds = %.lr.ph
  %i.bv = load ptr, ptr %i.k, align 8, !tbaa !554
  %i.bw = call i32 %i.bv(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef %2) #30 ; 2 uses
  %.not161 = icmp eq i32 %i.bw, 0
  br i1 %.not161, label %select.unfold, label %.thread, !llvm.loop !555

bb.o:                                             ; preds = %.lr.ph
  %i.bx = load <2 x i64>, ptr %3, align 16, !tbaa !39
  %i.by = add nsw <2 x i64> %i.bx, %i.bu
  %i.bz = sdiv <2 x i64> %i.by, splat (i64 2)
  store <2 x i64> %i.bz, ptr %7, align 16, !tbaa !39
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !554
  %i.cb = call i32 %i.ca(ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %2) #30 ; 2 uses
  %.not160 = icmp eq i32 %i.cb, 0
  br i1 %.not160, label %.critedge, label %.thread

.critedge:                                        ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !312
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cc = icmp ult ptr %i.bo, %.1137
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

.thread:                                          ; preds = %bb.n, %bb.o
  %.2130.ph = phi i32 [ %i.cb, %bb.o ], [ %i.bw, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.loopexit

select.unfold:                                    ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.backedge

._crit_edge:                                      ; preds = %bb.m, %.critedge
  %i.cd = load ptr, ptr %i.k, align 8, !tbaa !554
  %i.ce = call i32 %i.cd(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %2) #30
  br label %bb.t

bb.p:                                             ; preds = %.lr.ph208
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.cf = getelementptr inbounds nuw i8, ptr %.1139206, i64 32 ; 2 uses
  %i.cg = icmp ugt ptr %i.cf, %.1137
  br i1 %i.cg, label %.thread178, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %.1133207, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !242
  %i.cj = and i8 %i.ci, 3
  %.not163.a = icmp eq i8 %i.cj, 2
  br i1 %.not163.a, label %bb.r, label %.thread178

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %.1139206, i64 48 ; 3 uses
  %i.cl = load <2 x i64>, ptr %i.ba, align 8, !tbaa !39
  %i.cm = shl <2 x i64> %i.cl, %i.o
  %i.cn = sub nsw <2 x i64> %i.cm, %i.q
  store <2 x i64> %i.cn, ptr %8, align 16, !tbaa !39
  %i.co = load <2 x i64>, ptr %i.cf, align 8, !tbaa !39
  %i.cp = shl <2 x i64> %i.co, %i.o
  %i.cq = sub nsw <2 x i64> %i.cp, %i.q
  store <2 x i64> %i.cq, ptr %9, align 16, !tbaa !39
  %.not164.a = icmp ugt ptr %i.ck, %.1137
  br i1 %.not164.a, label %.thread183, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %.1133207, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.cs = load <2 x i64>, ptr %i.ck, align 8, !tbaa !39
  %i.ct = shl <2 x i64> %i.cs, %i.o
  %i.cu = sub nsw <2 x i64> %i.ct, %i.q
  store <2 x i64> %i.cu, ptr %10, align 16, !tbaa !39
  %i.cv = load ptr, ptr %i.m, align 8, !tbaa !556
  %i.cw = call i32 %i.cv(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %2) #30 ; 2 uses
  %.not165.a = icmp eq i32 %i.cw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
end_hunk_0
begin_hunk_1_@FT_Outline_EmboldenXY:bb.a
  %i.fk = add i64 %i.fj, %i.fi
  %i.fl = udiv i64 %i.fk, %.022.i137
  br label %FT_MulDiv.exit143

FT_MulDiv.exit143:                                ; preds = %bb.w, %bb.x
  %i.fm = phi i64 [ %i.fl, %bb.x ], [ 2147483647, %bb.w ] ; 2 uses
  %i.fn = xor i64 %.sroa.0.0, %.0102
  %i.fo = icmp slt i64 %i.fn, 0
  %i.fp = sub i64 0, %i.fm
  %i.fq = select i1 %i.fo, i64 %i.fp, i64 %i.fm
  br label %bb.y

bb.y:                                             ; preds = %FT_MulDiv.exit143, %FT_MulDiv.exit
  %.sroa.0.1 = phi i64 [ %i.fh, %FT_MulDiv.exit ], [ %i.fq, %FT_MulDiv.exit143 ] ; 2 uses
  %i.fr = mul nsw i64 %i.el, %i.q                 ; 2 uses
  %i.fs = ashr i64 %i.fr, 63
  %i.ft = add nsw i64 %i.fr, 32768
  %i.fu = add nsw i64 %i.ft, %i.fs
  %i.fv = shl i64 %i.fu, 16
  %i.fw = ashr i64 %i.fv, 32
  %.not121 = icmp sgt i64 %i.fw, %i.ez
  br i1 %.not121, label %bb.z, label %FT_MulDiv.exit155

FT_MulDiv.exit155:                                ; preds = %bb.y
  %spec.select.i151 = tail call i64 @llvm.abs.i64(i64 %i.dt, i1 false)
  %i.fx = mul i64 %spec.select.i151, %.023.i150
  %i.fy = lshr i64 %i.dr, 1
  %i.fz = add i64 %i.fy, %i.fx
  %i.ga = udiv i64 %i.fz, %i.dr                   ; 2 uses
  %i.gb = icmp slt i64 %.sroa.11.0, 0
  %i.gc = xor i1 %i.r, %i.gb
  %i.gd = sub nsw i64 0, %i.ga
  %i.ge = select i1 %i.gc, i64 %i.gd, i64 %i.ga
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.not.i156 = icmp eq i64 %.0102, 0
  br i1 %.not.i156, label %FT_MulDiv.exit163, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.022.i157 = tail call i64 @llvm.abs.i64(i64 %i.ei, i1 true) ; 2 uses
  %.023.i158 = tail call i64 @llvm.abs.i64(i64 %i.ek, i1 false)
  %spec.select.i159 = tail call i64 @llvm.abs.i64(i64 %i.dt, i1 false)
  %i.gf = mul i64 %.023.i158, %spec.select.i159
  %i.gg = lshr i64 %.022.i157, 1
  %i.gh = add i64 %i.gg, %i.gf
  %i.gi = udiv i64 %i.gh, %.022.i157
  br label %FT_MulDiv.exit163

FT_MulDiv.exit163:                                ; preds = %bb.z, %bb.aa
  %i.gj = phi i64 [ %i.gi, %bb.aa ], [ 2147483647, %bb.z ] ; 2 uses
  %i.gk = xor i64 %.sroa.11.0, %.0102
  %i.gl = icmp slt i64 %i.gk, 0
  %i.gm = sub i64 0, %i.gj
  %i.gn = select i1 %i.gl, i64 %i.gm, i64 %i.gj
  br label %bb.ab

bb.ab:                                            ; preds = %bb.u, %FT_MulDiv.exit155, %FT_MulDiv.exit163
  %.sroa.11.1 = phi i64 [ %i.ge, %FT_MulDiv.exit155 ], [ %i.gn, %FT_MulDiv.exit163 ], [ 0, %bb.u ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %FT_MulDiv.exit155 ], [ %.sroa.0.1, %FT_MulDiv.exit163 ], [ 0, %bb.u ]
  %.not122180 = icmp eq i32 %.098191, %.097192
  br i1 %.not122180, label %FT_Vector_NormLen.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab
  %i.go = add nsw i64 %.sroa.0.2, %i.a
  %i.gp = add nsw i64 %.sroa.11.1, %i.b
  %i.gq = insertelement <2 x i64> poison, i64 %i.go, i64 0
  %i.gr = insertelement <2 x i64> %i.gq, i64 %i.gp, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.ac
  %.199181 = phi i32 [ %.098191, %.lr.ph ], [ %i.gy, %bb.ac ] ; 3 uses
  %i.gs = sext i32 %.199181 to i64
  %i.gt = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.gs ; 2 uses
  %i.gu = load <2 x i64>, ptr %i.gt, align 8, !tbaa !39
  %i.gv = add nsw <2 x i64> %i.gr, %i.gu
  store <2 x i64> %i.gv, ptr %i.gt, align 8, !tbaa !39
  %i.gw = icmp slt i32 %.199181, %i.v
  %i.gx = add nsw i32 %.199181, 1
  %i.gy = select i1 %i.gw, i32 %i.gx, i32 %i.s    ; 2 uses
  %.not122 = icmp eq i32 %i.gy, %.097192
  br i1 %.not122, label %FT_Vector_NormLen.exit.thread, label %bb.ac, !llvm.loop !572

FT_Vector_NormLen.exit.thread:                    ; preds = %bb.ac, %bb.ab, %bb.h, %bb.r, %FT_Vector_NormLen.exit
  %.sroa.8.1 = phi i64 [ %.sroa.8.0182, %FT_Vector_NormLen.exit ], [ %.sroa.8.0182, %bb.h ], [ %.sroa.11.0174, %bb.r ], [ %.sroa.11.0174, %bb.ab ], [ %.sroa.11.0174, %bb.ac ]
  %.sroa.056.1 = phi i64 [ %.sroa.056.0183, %FT_Vector_NormLen.exit ], [ %.sroa.056.0183, %bb.h ], [ %.sroa.0.0172, %bb.r ], [ %.sroa.0.0172, %bb.ab ], [ %.sroa.0.0172, %bb.ac ]
  %.sroa.5.3 = phi i64 [ %.sroa.5.0184, %FT_Vector_NormLen.exit ], [ %.sroa.5.0184, %bb.h ], [ %.sroa.5.0184, %bb.r ], [ %.sroa.5.1, %bb.ab ], [ %.sroa.5.1, %bb.ac ]
  %.sroa.052.3 = phi i64 [ %.sroa.052.0186, %FT_Vector_NormLen.exit ], [ %.sroa.052.0186, %bb.h ], [ %.sroa.052.0186, %bb.r ], [ %.sroa.052.1, %bb.ab ], [ %.sroa.052.1, %bb.ac ]
  %.1110 = phi i64 [ %.0109188, %FT_Vector_NormLen.exit ], [ %.0109188, %bb.h ], [ %.0108, %bb.r ], [ %.0108, %bb.ab ], [ %.0108, %bb.ac ]
  %.3107 = phi i64 [ %.0104189, %FT_Vector_NormLen.exit ], [ %.0104189, %bb.h ], [ %.0104189, %bb.r ], [ %.1105, %bb.ab ], [ %.1105, %bb.ac ]
  %.3101 = phi i32 [ %.098191, %FT_Vector_NormLen.exit ], [ %.098191, %bb.h ], [ %.097192, %bb.r ], [ %.097192, %bb.ab ], [ %.097192, %bb.ac ] ; 3 uses
  %.3 = phi i32 [ %.0193, %FT_Vector_NormLen.exit ], [ %.0193, %bb.h ], [ %.0193, %bb.r ], [ %.1, %bb.ab ], [ %.1, %bb.ac ] ; 2 uses
  %i.gz = icmp slt i32 %.097192, %i.v
  %i.ha = add nsw i32 %.097192, 1
  %i.hb = select i1 %i.gz, i32 %i.ha, i32 %i.s    ; 2 uses
  %i.hc = icmp ne i32 %i.hb, %.3101
  %i.hd = icmp ne i32 %.3101, %.3
  %i.he = and i1 %i.hc, %i.hd
  br i1 %i.he, label %.lr.ph195, label %._crit_edge, !llvm.loop !573

._crit_edge:                                      ; preds = %FT_Vector_NormLen.exit.thread, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !574

.loopexit:                                        ; preds = %._crit_edge, %bb.e, %bb.d, %bb.b, %bb.a
  %.0103 = phi i32 [ 20, %bb.a ], [ %., %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %._crit_edge ]
  ret i32 %.0103
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 3) i32 @FT_Outline_Get_Orientation(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %FT_Outline_Get_CBox.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !137  ; 3 uses
  %i.c = icmp slt i16 %i.b, 1
  br i1 %i.c, label %FT_Outline_Get_CBox.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 9 uses
  %i.f = zext nneg i16 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %.not59 = icmp eq i16 %i.b, 1
  br i1 %.not59, label %FT_Outline_Get_CBox.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !168  ; 2 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !166  ; 2 uses
  %.04051.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.04057.i = phi ptr [ %.040.i, %.lr.ph.i ], [ %.04051.i, %.lr.ph.preheader.i ] ; 3 uses
  %.056.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.03455.i = phi i64 [ %.135.i, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %.03754.i = phi i64 [ %.138.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.pn53.i = phi ptr [ %.04057.i, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader.i ]
  %.04152.i = phi i64 [ %.142.i, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %i.k = load i64, ptr %.04057.i, align 8, !tbaa !166 ; 2 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %.056.i) ; 4 uses
  %.138.i = tail call i64 @llvm.smax.i64(i64 %i.k, i64 %.03754.i) ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn53.i, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !168  ; 2 uses
  %.135.i = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %.03455.i) ; 4 uses
  %.142.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %.04152.i) ; 4 uses
  %.040.i = getelementptr inbounds nuw i8, ptr %.04057.i, i64 16 ; 2 uses
  %i.n = icmp ult ptr %.040.i, %i.g
  br i1 %i.n, label %.lr.ph.i, label %FT_Outline_Get_CBox.exit, !llvm.loop !286

FT_Outline_Get_CBox.exit:                         ; preds = %.lr.ph.i
  %i.o = icmp eq i64 %spec.select.i, %.138.i
  %i.p = icmp eq i64 %.135.i, %.142.i
  %or.cond58 = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond58, label %FT_Outline_Get_CBox.exit.thread, label %bb.d

bb.d:                                             ; preds = %FT_Outline_Get_CBox.exit
  %i.q = icmp slt i64 %spec.select.i, -16777216
  %i.r = icmp slt i64 %.135.i, -16777216
  %or.cond = or i1 %i.q, %i.r
  %i.s = icmp sgt i64 %.138.i, 16777216
  %or.cond5 = or i1 %i.s, %or.cond
  %i.t = icmp sgt i64 %.142.i, 16777216
  %or.cond8 = or i1 %i.t, %or.cond5
  br i1 %or.cond8, label %FT_Outline_Get_CBox.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i16, ptr %0, align 8, !tbaa !138    ; 2 uses
  %i.v = icmp sgt i16 %i.u, 0
  br i1 %i.v, label %.lr.ph70, label %.thread

.lr.ph70:                                         ; preds = %bb.e
  %wide.trip.count77 = zext nneg i16 %i.u to i64
  %i.w = sub nsw i64 %.142.i, %.135.i
  %i.x = trunc i64 %i.w to i32
  %i.y = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.x, i1 true)
  %i.z = sub nsw i32 17, %i.y
  %i.aa = tail call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %i.ab = tail call i64 @llvm.abs.i64(i64 %.138.i, i1 true)
  %i.ac = tail call i64 @llvm.abs.i64(i64 %spec.select.i, i1 true)
  %i.ad = or i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ae, i1 true)
  %i.ag = sub nsw i32 17, %i.af
  %i.ah = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 0)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !139
  %i.ak = zext nneg i32 %i.ah to i64              ; 4 uses
  %i.al = zext nneg i32 %i.aa to i64              ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph70, %._crit_edge
  %indvars.iv74 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next75, %._crit_edge ] ; 2 uses
  %.068 = phi i64 [ 0, %.lr.ph70 ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.04367 = phi i32 [ -1, %.lr.ph70 ], [ %i.ao, %._crit_edge ] ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv74
  %i.an = load i16, ptr %i.am, align 2, !tbaa !141 ; 3 uses
  %i.ao = sext i16 %i.an to i32                   ; 3 uses
  %.not53.not61 = icmp slt i32 %.04367, %i.ao
  br i1 %.not53.not61, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ap = sext i16 %i.an to i64
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !168
  %i.at = ashr i64 %i.as, %i.al                   ; 2 uses
  %i.au = load i64, ptr %i.aq, align 8, !tbaa !166
  %i.av = ashr i64 %i.au, %i.ak                   ; 2 uses
  %narrow = add nsw i32 %.04367, 1
  %1 = sext i32 %narrow to i64                    ; 3 uses
  %2 = add nsw i32 %i.ao, 1
  %i.aw = sext i32 %2 to i64
  %wide.trip.count = sext i16 %i.an to i64        ; 2 uses
  %3 = sext i32 %.04367 to i64                    ; 2 uses
  %i.ax = sub nsw i64 %wide.trip.count, %3
  %xtraiter = and i64 %i.ax, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.e, i64 %1 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !166
  %i.ba = ashr i64 %i.az, %i.ak                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !168
  %i.bd = ashr i64 %i.bc, %i.al                   ; 2 uses
  %i.be = sub nsw i64 %i.bd, %i.at
  %i.bf = add nsw i64 %i.ba, %i.av
  %i.bg = mul i64 %i.be, %i.bf
  %i.bh = add i64 %i.bg, %.068
  %i.bi = freeze i64 %i.bh                        ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %1, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.bi, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %1, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.165.unr = phi i64 [ %.068, %.lr.ph.preheader ], [ %i.bi, %.lr.ph.prol ]
  %.sroa.023.063.unr = phi i64 [ %i.av, %.lr.ph.preheader ], [ %i.ba, %.lr.ph.prol ]
  %.sroa.524.062.unr = phi i64 [ %i.at, %.lr.ph.preheader ], [ %i.bd, %.lr.ph.prol ]
  %i.bj = add nsw i64 %wide.trip.count, -1
  %i.bk = icmp eq i64 %i.bj, %3
  br i1 %i.bk, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %i.ce, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.165 = phi i64 [ %6, %.lr.ph ], [ %.165.unr, %.lr.ph.prol.loopexit ]
  %.sroa.023.063 = phi i64 [ %i.bx, %.lr.ph ], [ %.sroa.023.063.unr, %.lr.ph.prol.loopexit ]
  %.sroa.524.062 = phi i64 [ %i.ca, %.lr.ph ], [ %.sroa.524.062.unr, %.lr.ph.prol.loopexit ]
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !166
  %i.bn = ashr i64 %i.bm, %i.ak                   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !168
  %i.bq = ashr i64 %i.bp, %i.al                   ; 2 uses
  %i.br = sub nsw i64 %i.bq, %.sroa.524.062
  %i.bs = add nsw i64 %i.bn, %.sroa.023.063
  %i.bt = mul i64 %i.br, %i.bs
  %i.bu = add i64 %i.bt, %.165
  %i.bv = freeze i64 %i.bu
  %4 = getelementptr [16 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %5 = getelementptr i8, ptr %4, i64 16
  %i.bw = load i64, ptr %5, align 8, !tbaa !166
  %i.bx = ashr i64 %i.bw, %i.ak                   ; 2 uses
  %i.by = getelementptr i8, ptr %4, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !168
  %i.ca = ashr i64 %i.bz, %i.al                   ; 2 uses
  %i.cb = sub nsw i64 %i.ca, %i.bq
  %i.cc = add nsw i64 %i.bx, %i.bn
  %i.cd = mul i64 %i.cb, %i.cc
  %.fr = freeze i64 %i.cd
  %6 = add i64 %.fr, %i.bv                        ; 2 uses
  %i.ce = add nsw i64 %indvars.iv, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ce, %i.aw
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !575

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  %.1.lcssa = phi i64 [ %.068, %bb.f ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %6, %.lr.ph ] ; 3 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge71, label %bb.f, !llvm.loop !576

._crit_edge71:                                    ; preds = %._crit_edge
  %i.cf = icmp sgt i64 %.1.lcssa, 0
  br i1 %i.cf, label %FT_Outline_Get_CBox.exit.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge71
  %.not60 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not60, label %.thread, label %FT_Outline_Get_CBox.exit.thread

.thread:                                          ; preds = %bb.e, %bb.g
  br label %FT_Outline_Get_CBox.exit.thread

FT_Outline_Get_CBox.exit.thread:                  ; preds = %.thread, %bb.g, %bb.c, %._crit_edge71, %bb.d, %FT_Outline_Get_CBox.exit, %bb.a, %bb.b
  %.044 = phi i32 [ 1, %._crit_edge71 ], [ 0, %bb.a ], [ 2, %FT_Outline_Get_CBox.exit ], [ 2, %bb.d ], [ 2, %bb.c ], [ 0, %bb.b ], [ 2, %.thread ], [ 0, %bb.g ]
  ret i32 %.044
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn uwtable
define hidden range(i32 0, 13) i32 @ps_property_set(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #22 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 19 uses
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(21) @.str.11) #31
  %.not = icmp eq i32 %i.b, 0
  %.1113.sroa.gep166 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.1113.sroa.gep168 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.1113.sroa.gep171 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.1113.sroa.gep174 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.1113.sroa.gep177 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.1113.sroa.gep180 = getelementptr inbounds nuw i8, ptr %2, i64 24
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %.not127 = icmp eq i8 %3, 0
  br i1 %.not127, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.1113.sroa.gep160 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.pre = load i32, ptr %2, align 4, !tbaa !3
  %.pre181 = load i32, ptr %.1113.sroa.gep166, align 4, !tbaa !3
  %.pre182 = load i32, ptr %.1113.sroa.gep168, align 4, !tbaa !3
  %.pre183 = load i32, ptr %.1113.sroa.gep171, align 4, !tbaa !3
  %.pre184 = load i32, ptr %.1113.sroa.gep174, align 4, !tbaa !3
  %.pre185 = load i32, ptr %.1113.sroa.gep177, align 4, !tbaa !3
  %.pre186 = load i32, ptr %.1113.sroa.gep180, align 4, !tbaa !3
  %.pre187 = load i32, ptr %.1113.sroa.gep160, align 4, !tbaa !3
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.c = call i64 @strtol(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 10) #30
  %i.d = trunc i64 %i.c to i32
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !199  ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !242
  %.not128 = icmp ne i8 %i.f, 44
  %i.g = icmp eq ptr %2, %i.e
  %or.cond137 = or i1 %.not128, %i.g
  br i1 %or.cond137, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.i = call i64 @strtol(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 10) #30
  %i.j = trunc i64 %i.i to i32
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !199  ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !242
  %.not128.1 = icmp ne i8 %i.l, 44
  %i.m = icmp eq ptr %i.h, %i.k
  %or.cond137.1 = or i1 %.not128.1, %i.m
  br i1 %or.cond137.1, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.o = call i64 @strtol(ptr noundef nonnull %i.n, ptr noundef nonnull %i.a, i32 noundef 10) #30
  %i.p = trunc i64 %i.o to i32
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !199  ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !242
  %.not128.2 = icmp ne i8 %i.r, 44
  %i.s = icmp eq ptr %i.n, %i.q
  %or.cond137.2 = or i1 %.not128.2, %i.s
  br i1 %or.cond137.2, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.u = call i64 @strtol(ptr noundef nonnull %i.t, ptr noundef nonnull %i.a, i32 noundef 10) #30
  %i.v = trunc i64 %i.u to i32
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !199  ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !242
  %.not128.3 = icmp ne i8 %i.x, 44
  %i.y = icmp eq ptr %i.t, %i.w
  %or.cond137.3 = or i1 %.not128.3, %i.y
  br i1 %or.cond137.3, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.aa = call i64 @strtol(ptr noundef nonnull %i.z, ptr noundef nonnull %i.a, i32 noundef 10) #30
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !199 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !242
  %.not128.4 = icmp ne i8 %i.ad, 44
  %i.ae = icmp eq ptr %i.z, %i.ac
  %or.cond137.4 = or i1 %.not128.4, %i.ae
  br i1 %or.cond137.4, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %i.ag = call i64 @strtol(ptr noundef nonnull %i.af, ptr noundef nonnull %i.a, i32 noundef 10) #30
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !199 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !242
  %.not128.5 = icmp ne i8 %i.aj, 44
  %i.ak = icmp eq ptr %i.af, %i.ai
  %or.cond137.5 = or i1 %.not128.5, %i.ak
  br i1 %or.cond137.5, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.am = call i64 @strtol(ptr noundef nonnull %i.al, ptr noundef nonnull %i.a, i32 noundef 10) #30
  %i.an = trunc i64 %i.am to i32
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !199 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !242
  %.not128.6 = icmp ne i8 %i.ap, 44
  %i.aq = icmp eq ptr %i.al, %i.ao
  %or.cond137.6 = or i1 %.not128.6, %i.aq
  br i1 %or.cond137.6, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.as = call i64 @strtol(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.a, i32 noundef 10) #30
  %i.at = trunc i64 %i.as to i32
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !199 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !242
  switch i8 %i.av, label %.loopexit [
    i8 0, label %bb.k
    i8 32, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.aw = icmp eq ptr %i.ar, %i.au
  br i1 %i.aw, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.l

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.critedge141

bb.l:                                             ; preds = %._crit_edge, %.critedge
  %i.ax = phi i32 [ %i.at, %.critedge ], [ %.pre187, %._crit_edge ] ; 3 uses
  %i.ay = phi i32 [ %i.an, %.critedge ], [ %.pre186, %._crit_edge ] ; 3 uses
  %i.az = phi i32 [ %i.ah, %.critedge ], [ %.pre185, %._crit_edge ] ; 3 uses
  %i.ba = phi i32 [ %i.ab, %.critedge ], [ %.pre184, %._crit_edge ] ; 4 uses
  %i.bb = phi i32 [ %i.v, %.critedge ], [ %.pre183, %._crit_edge ] ; 3 uses
  %i.bc = phi i32 [ %i.p, %.critedge ], [ %.pre182, %._crit_edge ] ; 4 uses
  %i.bd = phi i32 [ %i.j, %.critedge ], [ %.pre181, %._crit_edge ] ; 3 uses
  %i.be = phi i32 [ %i.d, %.critedge ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.bf = icmp slt i32 %i.be, 0
  %i.bg = icmp slt i32 %i.bc, 0
  %or.cond = select i1 %i.bf, i1 true, i1 %i.bg
  %i.bh = icmp slt i32 %i.ba, 0
  %or.cond4 = select i1 %or.cond, i1 true, i1 %i.bh
  %i.bi = icmp slt i32 %i.ay, 0
  %or.cond6 = select i1 %or.cond4, i1 true, i1 %i.bi
  %i.bj = icmp slt i32 %i.bd, 0
  %or.cond8 = select i1 %or.cond6, i1 true, i1 %i.bj
  %i.bk = icmp slt i32 %i.bb, 0
  %or.cond10 = select i1 %or.cond8, i1 true, i1 %i.bk
  %i.bl = icmp slt i32 %i.az, 0
  %or.cond12 = select i1 %or.cond10, i1 true, i1 %i.bl
  %i.bm = icmp slt i32 %i.ax, 0
  %or.cond14 = select i1 %or.cond12, i1 true, i1 %i.bm
  %i.bn = icmp sgt i32 %i.be, %i.bc
  %or.cond138 = select i1 %or.cond14, i1 true, i1 %i.bn
  %i.bo = icmp sgt i32 %i.bc, %i.ba
  %or.cond139 = select i1 %or.cond138, i1 true, i1 %i.bo
  br i1 %or.cond139, label %.critedge141, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = icmp sgt i32 %i.ba, %i.ay
  %i.bq = icmp sgt i32 %i.bd, 500
  %or.cond16 = select i1 %i.bp, i1 true, i1 %i.bq
  %i.br = icmp samesign ugt i32 %i.bb, 500
  %or.cond18 = select i1 %or.cond16, i1 true, i1 %i.br
  %i.bs = icmp samesign ugt i32 %i.az, 500
  %or.cond20 = select i1 %or.cond18, i1 true, i1 %i.bs
  %i.bt = icmp samesign ugt i32 %i.ax, 500
  %or.cond22 = select i1 %or.cond20, i1 true, i1 %i.bt
  br i1 %or.cond22, label %.critedge141, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.be, ptr %i.bu, align 8, !tbaa !3
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.bd, ptr %i.bv, align 4, !tbaa !3
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.bc, ptr %i.bw, align 8, !tbaa !3
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 76
end_hunk_1
