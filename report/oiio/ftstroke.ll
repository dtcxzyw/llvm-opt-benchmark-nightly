inline.NumInlined: 59
inline.NumDeleted: 19
begin_hunk_0_@FT_Stroker_CubicTo:bb.a
bb.ar:                                            ; preds = %bb.aq
  %i.jw = call fastcc i32 @ft_stroke_border_lineto(ptr noundef %i.at, ptr noundef %7, i8 noundef zeroext 0) ; 2 uses
  %.not172.1 = icmp eq i32 %i.jw, 0
  br i1 %.not172.1, label %bb.as, label %.thread210

bb.as:                                            ; preds = %bb.ar
  %i.jx = call fastcc i32 @ft_stroke_border_cubicto(ptr noundef %i.at, ptr noundef %6, ptr noundef %5, ptr noundef %8) ; 2 uses
  %.not173.1 = icmp eq i32 %i.jx, 0
  br i1 %.not173.1, label %bb.at, label %.thread210

bb.at:                                            ; preds = %bb.as
  %i.jy = call fastcc i32 @ft_stroke_border_lineto(ptr noundef %i.at, ptr noundef %7, i8 noundef zeroext 0) ; 2 uses
  %.not174.1 = icmp eq i32 %i.jy, 0
  br i1 %.not174.1, label %bb.au, label %.thread210

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.aw

bb.av:                                            ; preds = %.thread.1, %bb.ao
  %i.jz = call fastcc i32 @ft_stroke_border_cubicto(ptr noundef %i.at, ptr noundef %5, ptr noundef %6, ptr noundef %7) ; 2 uses
  %.not175.1 = icmp eq i32 %i.jz, 0
  br i1 %.not175.1, label %bb.aw, label %.thread214

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %.0133.add162 = add nsw i64 %.0133.idx237, -48
  store i64 %.0202, ptr %0, align 8, !tbaa !44
  br label %bb.ax

.thread214:                                       ; preds = %bb.an, %bb.av, %.thread210
  %.6.ph = phi i32 [ %.3.ph, %.thread210 ], [ %i.ht, %bb.an ], [ %i.jz, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.thread219

bb.ax:                                            ; preds = %bb.aw, %bb.x
  %.2137 = phi i8 [ %.0135236, %bb.x ], [ 0, %bb.aw ]
  %.1134.idx = phi i64 [ %.0133.add, %bb.x ], [ %.0133.add162, %bb.aw ] ; 3 uses
  %.0133.ptr = getelementptr inbounds i8, ptr %4, i64 %.1134.idx
  %.not = icmp slt i64 %.1134.idx, 0
  br i1 %.not, label %bb.ay, label %bb.j

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !45
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ka, align 8, !tbaa !46
  br label %.thread219

.thread219:                                       ; preds = %bb.ae, %.thread214, %bb.h, %bb.ay, %bb.a
  %.0 = phi i32 [ 6, %bb.a ], [ 0, %bb.h ], [ 0, %bb.ay ], [ %.6.ph, %.thread214 ], [ %.1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_stroke_border_cubicto(ptr noundef nonnull captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !36   ; 3 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.e = add i32 %i.d, 3                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.f = icmp ugt i32 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre18 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !35
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.02529.i = phi i32 [ %i.c, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.i = lshr i32 %.02529.i, 1
  %i.j = add i32 %.02529.i, 16
  %i.k = add i32 %i.j, %i.i                       ; 4 uses
  %i.l = icmp ult i32 %i.k, %i.e
  br i1 %i.l, label %bb.c, label %bb.d, !llvm.loop !51

bb.d:                                             ; preds = %bb.c
  %i.m = zext i32 %i.c to i64                     ; 2 uses
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.q = call ptr @ft_mem_realloc(ptr noundef %i.h, i64 noundef 16, i64 noundef %i.m, i64 noundef %i.n, ptr noundef %i.p, ptr noundef nonnull %i.a) #10
  store ptr %i.q, ptr %i.o, align 8, !tbaa !34
  %i.r = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.e, label %ft_stroke_border_grow.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.u = call ptr @ft_mem_realloc(ptr noundef %i.h, i64 noundef 1, i64 noundef %i.m, i64 noundef %i.n, ptr noundef %i.t, ptr noundef nonnull %i.a) #10 ; 2 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !35
  %i.v = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not28.i = icmp eq i32 %i.v, 0
  br i1 %.not28.i, label %bb.f, label %ft_stroke_border_grow.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.k, ptr %i.b, align 4, !tbaa !36
  %.pre = load i32, ptr %0, align 8, !tbaa !33
  br label %bb.g

ft_stroke_border_grow.exit:                       ; preds = %bb.d, %bb.e
  %i.w = phi i32 [ %i.r, %bb.d ], [ %i.v, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.x = phi ptr [ %i.u, %bb.f ], [ %.pre18, %._crit_edge ]
  %i.y = phi i32 [ %.pre, %bb.f ], [ %i.d, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.ab = zext i32 %i.y to i64                    ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !45
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !45
  store i8 2, ptr %i.ad, align 1, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 2, ptr %i.ag, align 1, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store i8 1, ptr %i.ah, align 1, !tbaa !47
  %i.ai = load i32, ptr %0, align 8, !tbaa !33
  %i.aj = add i32 %i.ai, 3
  store i32 %i.aj, ptr %0, align 8, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %ft_stroke_border_grow.exit, %bb.g
  %i.ak = phi i32 [ 0, %bb.g ], [ %i.w, %ft_stroke_border_grow.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.al, align 8, !tbaa !48
  ret i32 %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 7) i32 @FT_Stroker_BeginSubPath(ptr noundef captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.c, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %2, ptr %i.e, align 1, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !30
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not17 = icmp eq i8 %2, 0
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !29
  %i.j = icmp eq i32 %i.i, 0
  %i.k = zext i1 %i.j to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.l = phi i8 [ 1, %bb.b ], [ 0, %bb.c ], [ %i.k, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.l, ptr %i.m, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !45
  store i64 0, ptr %0, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 6, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @FT_Stroker_EndSubPath(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.FT_Vector_, align 8         ; 4 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.c = load i8, ptr %i.b, align 1, !tbaa !56
  %.not46 = icmp eq i8 %i.c, 0
  br i1 %.not46, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !44
  %i.f = tail call fastcc i32 @ft_stroker_cap(ptr noundef %0, i64 noundef %i.e) ; 2 uses
  %.not49 = icmp eq i32 %i.f, 0
  br i1 %.not49, label %bb.d, label %bb.y

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24   ; 2 uses
  %i.k = sub nsw i32 %i.h, %i.j                   ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !36   ; 3 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.p = add i32 %i.o, %i.k                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.q = icmp ugt i32 %i.p, %i.n
  br i1 %i.q, label %bb.f, label %._crit_edge59.i

._crit_edge59.i:                                  ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre60.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !35
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.02529.i.i = phi i32 [ %i.n, %bb.f ], [ %i.v, %bb.g ] ; 2 uses
  %i.t = lshr i32 %.02529.i.i, 1
  %i.u = add i32 %.02529.i.i, 16
  %i.v = add i32 %i.u, %i.t                       ; 4 uses
  %i.w = icmp ult i32 %i.v, %i.p
  br i1 %i.w, label %bb.g, label %bb.h, !llvm.loop !51

bb.h:                                             ; preds = %bb.g
  %i.x = zext i32 %i.n to i64                     ; 2 uses
  %i.y = zext i32 %i.v to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.ab = call ptr @ft_mem_realloc(ptr noundef %i.s, i64 noundef 16, i64 noundef %i.x, i64 noundef %i.y, ptr noundef %i.aa, ptr noundef nonnull %i.a) #10
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !34
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %bb.i, label %ft_stroker_add_reverse_left.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35
  %i.af = call ptr @ft_mem_realloc(ptr noundef %i.s, i64 noundef 1, i64 noundef %i.x, i64 noundef %i.y, ptr noundef %i.ae, ptr noundef nonnull %i.a) #10 ; 2 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !35
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not28.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not28.i.i, label %bb.j, label %ft_stroker_add_reverse_left.exit

bb.j:                                             ; preds = %bb.i
  store i32 %i.v, ptr %i.m, align 4, !tbaa !36
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !33
  %.pre61.i = load i32, ptr %i.g, align 8, !tbaa !33
  %.pre62.i = load i32, ptr %i.i, align 4, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge59.i
  %i.ah = phi i32 [ %.pre62.i, %bb.j ], [ %i.j, %._crit_edge59.i ] ; 2 uses
  %i.ai = phi i32 [ %.pre61.i, %bb.j ], [ %i.h, %._crit_edge59.i ]
  %i.aj = phi ptr [ %i.af, %bb.j ], [ %.pre60.i, %._crit_edge59.i ]
  %i.ak = phi i32 [ %.pre.i, %bb.j ], [ %i.o, %._crit_edge59.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.am = zext i32 %i.ai to i64                   ; 3 uses
  %i.an = sext i32 %i.ah to i64
  %.not4752.not.i = icmp sgt i64 %i.am, %i.an
  br i1 %.not4752.not.i, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %.idx.i = shl nuw nsw i64 %i.am, 4
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !34
  %i.ap = getelementptr i8, ptr %i.ao, i64 %.idx.i
  %.04251.i = getelementptr i8, ptr %i.ap, i64 -16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am
  %i.at = zext i32 %i.ak to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.at
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.04256.i = phi ptr [ %.042.i, %.lr.ph.i ], [ %.04251.i, %.lr.ph.preheader.i ] ; 2 uses
  %.pn4855.i = phi ptr [ %.041.i, %.lr.ph.i ], [ %i.as, %.lr.ph.preheader.i ]
  %.04354.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %i.au, %.lr.ph.preheader.i ] ; 2 uses
  %.04453.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.ax, %.lr.ph.preheader.i ] ; 2 uses
  %.041.i = getelementptr inbounds i8, ptr %.pn4855.i, i64 -1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.04453.i, ptr noundef nonnull align 8 dereferenceable(16) %.04256.i, i64 16, i1 false), !tbaa.struct !45
  %i.ay = load i8, ptr %.041.i, align 1, !tbaa !47
  %i.az = and i8 %i.ay, -13
  store i8 %i.az, ptr %.04354.i, align 1, !tbaa !47
  %i.ba = getelementptr inbounds nuw i8, ptr %.04453.i, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.04354.i, i64 1
  %.042.i = getelementptr inbounds i8, ptr %.04256.i, i64 -16 ; 2 uses
  %i.bc = load ptr, ptr %i.al, align 8, !tbaa !34
  %i.bd = load i32, ptr %i.i, align 4, !tbaa !24  ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.be
  %.not47.i = icmp ult ptr %.042.i, %i.bf
  br i1 %.not47.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !57

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre63.i = load i32, ptr %i.d, align 8, !tbaa !33
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.k
  %i.bg = phi i32 [ %i.ak, %bb.k ], [ %.pre63.i, %._crit_edge.loopexit.i ]
  %.lcssa.i = phi i32 [ %i.ah, %bb.k ], [ %i.bd, %._crit_edge.loopexit.i ]
  store i32 %.lcssa.i, ptr %i.g, align 8, !tbaa !33
  %i.bh = add i32 %i.bg, %i.k
  store i32 %i.bh, ptr %i.d, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.bi, align 8, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.bj, align 8, !tbaa !48
  br label %bb.l

ft_stroker_add_reverse_left.exit:                 ; preds = %bb.h, %bb.i
  %i.bk = phi i32 [ %i.ac, %bb.h ], [ %i.ag, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.y

bb.l:                                             ; preds = %._crit_edge.i, %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !45
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !49
  %i.bp = add nsw i64 %i.bo, 11796480
  %i.bq = call fastcc i32 @ft_stroker_cap(ptr noundef %0, i64 noundef %i.bp) ; 2 uses
  %.not51 = icmp eq i32 %i.bq, 0
  br i1 %.not51, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !24 ; 3 uses
  %i.bt = load i32, ptr %i.d, align 8, !tbaa !33  ; 3 uses
  %i.bu = add i32 %i.bs, 1
  %.not.i = icmp ugt i32 %i.bt, %i.bu
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.bs, ptr %i.d, align 8, !tbaa !33
  br label %ft_stroke_border_close.exit

bb.o:                                             ; preds = %bb.m
  %i.bv = add i32 %i.bt, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.d, align 8, !tbaa !33
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !34 ; 2 uses
  %i.by = zext i32 %i.bs to i64                   ; 3 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.by
  %i.ca = zext i32 %i.bv to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !45
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !35 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !47
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.by
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !47
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !35
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.by ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !47
  %i.ck = or i8 %i.cj, 4
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !47
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !35
  %i.cm = add i32 %i.bt, -2
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cn ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !47
  %i.cq = or i8 %i.cp, 8
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !47
  br label %ft_stroke_border_close.exit

ft_stroke_border_close.exit:                      ; preds = %bb.n, %bb.o
  store i32 -1, ptr %i.br, align 4, !tbaa !24
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.cr, align 8, !tbaa !48
  br label %bb.y

bb.p:                                             ; preds = %bb.b
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !38
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !58
  %i.cw = add i64 %i.ct, 1
  %i.cx = sub i64 %i.cw, %i.cv
  %or.cond = icmp ult i64 %i.cx, 3
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !40
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.db = load i64, ptr %i.da, align 8, !tbaa !59
  %i.dc = add i64 %i.cz, 1
  %i.dd = sub i64 %i.dc, %i.db
  %or.cond52 = icmp ult i64 %i.dd, 3
  br i1 %or.cond52, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.de = tail call i32 @FT_Stroker_LineTo(ptr noundef nonnull %0, ptr noundef nonnull %i.cu) ; 2 uses
  %.not47 = icmp eq i32 %i.de, 0
  br i1 %.not47, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !49
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !42
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !50
  %i.dk = tail call fastcc i32 @ft_stroker_process_corner(ptr noundef %0, i64 noundef %i.dj) ; 2 uses
  %.not48 = icmp eq i32 %i.dk, 0
  br i1 %.not48, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !24 ; 3 uses
  %i.do = load i32, ptr %i.dl, align 8, !tbaa !33 ; 3 uses
  %i.dp = add i32 %i.dn, 1
  %.not.i53 = icmp ugt i32 %i.do, %i.dp
  br i1 %.not.i53, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !33
  br label %ft_stroke_border_close.exit54

bb.v:                                             ; preds = %bb.t
  %i.dq = add i32 %i.do, -1                       ; 2 uses
  store i32 %i.dq, ptr %i.dl, align 8, !tbaa !33
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !34 ; 2 uses
  %i.dt = zext i32 %i.dn to i64                   ; 3 uses
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = zext i32 %i.dq to i64                   ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i64 16, i1 false), !tbaa.struct !45
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !35 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !47
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dt
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !47
  %i.ec = load ptr, ptr %i.dx, align 8, !tbaa !35
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dt ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !47
  %i.ef = or i8 %i.ee, 4
  store i8 %i.ef, ptr %i.ed, align 1, !tbaa !47
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !35
  %i.eh = add i32 %i.do, -2
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ei ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !47
  %i.el = or i8 %i.ek, 8
  store i8 %i.el, ptr %i.ej, align 1, !tbaa !47
  br label %ft_stroke_border_close.exit54

ft_stroke_border_close.exit54:                    ; preds = %bb.u, %bb.v
  store i32 -1, ptr %i.dm, align 4, !tbaa !24
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.em, align 8, !tbaa !48
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !24 ; 3 uses
  %i.eq = load i32, ptr %i.en, align 8, !tbaa !33 ; 3 uses
  %i.er = add i32 %i.ep, 1
  %.not.i55 = icmp ugt i32 %i.eq, %i.er
  br i1 %.not.i55, label %bb.x, label %bb.w

bb.w:                                             ; preds = %ft_stroke_border_close.exit54
  store i32 %i.ep, ptr %i.en, align 8, !tbaa !33
  br label %ft_stroke_border_close.exit61

bb.x:                                             ; preds = %ft_stroke_border_close.exit54
  %i.es = add i32 %i.eq, -1                       ; 2 uses
  store i32 %i.es, ptr %i.en, align 8, !tbaa !33
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !34 ; 2 uses
  %i.ev = zext i32 %i.ep to i64                   ; 5 uses
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = zext i32 %i.es to i64                   ; 4 uses
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.ex
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.ey, i64 16, i1 false), !tbaa.struct !45
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !35 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ex
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !47
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ev
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !47
  %.idx.i56 = shl nuw nsw i64 %i.ev, 4
  %.idx65.i = shl nuw nsw i64 %i.ex, 4
  %i.fe = add nsw i64 %.idx65.i, -16              ; 2 uses
  %i.ff = add nuw nsw i64 %.idx.i56, 16           ; 2 uses
  %i.fg = icmp slt i64 %i.ff, %i.fe
  br i1 %i.fg, label %.lr.ph.preheader.i59, label %._crit_edge.i57

.lr.ph.preheader.i59:                             ; preds = %bb.x
  %i.fh = load ptr, ptr %i.et, align 8, !tbaa !34 ; 2 uses
  %.04956.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ff
  %.04855.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fe
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60, %.lr.ph.preheader.i59
  %.04958.i = phi ptr [ %.049.i, %.lr.ph.i60 ], [ %.04956.i, %.lr.ph.preheader.i59 ] ; 3 uses
  %.04857.i = phi ptr [ %.048.i, %.lr.ph.i60 ], [ %.04855.i, %.lr.ph.preheader.i59 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.04958.i, i64 16, i1 false), !tbaa.struct !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.04958.i, ptr noundef nonnull align 8 dereferenceable(16) %.04857.i, i64 16, i1 false), !tbaa.struct !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.04857.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !45
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.048.i = getelementptr inbounds i8, ptr %.04857.i, i64 -16 ; 2 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.04958.i, i64 16 ; 2 uses
  %i.fi = icmp ult ptr %.049.i, %.048.i
  br i1 %i.fi, label %.lr.ph.i60, label %._crit_edge.i57, !llvm.loop !60

._crit_edge.i57:                                  ; preds = %.lr.ph.i60, %bb.x
  %i.fj = add nsw i64 %i.ex, -1                   ; 2 uses
  %i.fk = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %i.fl = icmp slt i64 %i.fk, %i.fj
  br i1 %i.fl, label %.lr.ph64.preheader.i, label %.loopexit.i

.lr.ph64.preheader.i:                             ; preds = %._crit_edge.i57
  %i.fm = load ptr, ptr %i.ez, align 8, !tbaa !35 ; 2 uses
  %.04760.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fk
  %.059.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fj
  br label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.lr.ph64.i, %.lr.ph64.preheader.i
  %.04762.i = phi ptr [ %.047.i, %.lr.ph64.i ], [ %.04760.i, %.lr.ph64.preheader.i ] ; 3 uses
  %.061.i = phi ptr [ %.0.i58, %.lr.ph64.i ], [ %.059.i, %.lr.ph64.preheader.i ] ; 3 uses
  %i.fn = load i8, ptr %.04762.i, align 1, !tbaa !47
  %i.fo = load i8, ptr %.061.i, align 1, !tbaa !47
  store i8 %i.fo, ptr %.04762.i, align 1, !tbaa !47
  store i8 %i.fn, ptr %.061.i, align 1, !tbaa !47
  %.0.i58 = getelementptr inbounds i8, ptr %.061.i, i64 -1 ; 2 uses
  %.047.i = getelementptr inbounds nuw i8, ptr %.04762.i, i64 1 ; 2 uses
  %i.fp = icmp ult ptr %.047.i, %.0.i58
  br i1 %i.fp, label %.lr.ph64.i, label %.loopexit.i, !llvm.loop !61

.loopexit.i:                                      ; preds = %.lr.ph64.i, %._crit_edge.i57
  %i.fq = load ptr, ptr %i.ez, align 8, !tbaa !35
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ev ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !47
  %i.ft = or i8 %i.fs, 4
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !47
  %i.fu = load ptr, ptr %i.ez, align 8, !tbaa !35
  %i.fv = add i32 %i.eq, -2
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fw ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !47
  %i.fz = or i8 %i.fy, 8
  store i8 %i.fz, ptr %i.fx, align 1, !tbaa !47
  br label %ft_stroke_border_close.exit61

ft_stroke_border_close.exit61:                    ; preds = %bb.w, %.loopexit.i
  store i32 -1, ptr %i.eo, align 4, !tbaa !24
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.ga, align 8, !tbaa !48
  br label %bb.y

bb.y:                                             ; preds = %ft_stroker_add_reverse_left.exit, %bb.r, %bb.s, %ft_stroke_border_close.exit61, %bb.a, %bb.l, %bb.c, %ft_stroke_border_close.exit
  %.1 = phi i32 [ 6, %bb.a ], [ %i.de, %bb.r ], [ %i.dk, %bb.s ], [ 0, %ft_stroke_border_close.exit61 ], [ 0, %ft_stroke_border_close.exit ], [ %i.f, %bb.c ], [ %i.bk, %ft_stroker_add_reverse_left.exit ], [ %i.bq, %bb.l ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_stroker_cap(ptr noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.FT_Vector_, align 16        ; 7 uses
  %3 = alloca %struct.FT_Vector_, align 16        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %0, align 8, !tbaa !44
  %i.d = add nsw i64 %1, 11796480
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !42
  %i.f = tail call fastcc i32 @ft_stroker_arcto(ptr noundef %0, i32 noundef 0)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  call void @FT_Vector_From_Polar(ptr noundef nonnull %2, i64 noundef %i.h, i64 noundef %1) #10
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = load i64, ptr %2, align 16               ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i32, ptr %i.a, align 4, !tbaa !29
  %i.o = icmp eq i32 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !38   ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i64 %i.q, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !40
  %i.u = add nsw i64 %i.t, %i.k
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ %i.r, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %storemerge = phi i64 [ %i.u, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  store i64 %.sink, ptr %2, align 16, !tbaa !37
  store i64 %storemerge, ptr %i.j, align 8, !tbaa !39
  %i.x = sub nsw i64 %.sink, %i.k                 ; 2 uses
  store i64 %i.x, ptr %3, align 16, !tbaa !37
  %i.y = add nsw i64 %storemerge, %i.l            ; 2 uses
  store i64 %i.y, ptr %i.m, align 8, !tbaa !39
  %i.z = call fastcc i32 @ft_stroke_border_lineto(ptr noundef %i.i, ptr noundef %3, i8 noundef zeroext 0) ; 2 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load <2 x i64>, ptr %2, align 16, !tbaa !43
  %i.ab = shl <2 x i64> %i.aa, splat (i64 1)
  %i.ac = insertelement <2 x i64> poison, i64 %i.x, i64 0
  %i.ad = insertelement <2 x i64> %i.ac, i64 %i.y, i64 1
  %i.ae = sub <2 x i64> %i.ab, %i.ad
  store <2 x i64> %i.ae, ptr %3, align 16, !tbaa !43
  %i.af = call fastcc i32 @ft_stroke_border_lineto(ptr noundef %i.i, ptr noundef %3, i8 noundef zeroext 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.025 = phi i32 [ %i.af, %bb.g ], [ %i.z, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.1 = phi i32 [ %i.f, %bb.b ], [ %.025, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 7) i32 @FT_Stroker_GetBorderCounts(ptr noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ugt i32 %1, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %ft_stroke_border_get_counts.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !33   ; 3 uses
  %.not35.i = icmp eq i32 %i.f, 0
  br i1 %.not35.i, label %._crit_edge.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.040.i = phi i1 [ %.not30.not.i, %bb.c ], [ true, %.lr.ph.preheader.i ]
  %.01939.i = phi ptr [ %i.o, %bb.c ], [ %i.h, %.lr.ph.preheader.i ] ; 2 uses
  %.02138.i = phi i32 [ %i.n, %bb.c ], [ %i.f, %.lr.ph.preheader.i ]
  %.02237.i = phi i32 [ %spec.select.i, %bb.c ], [ 0, %.lr.ph.preheader.i ]
  %i.i = load i8, ptr %.01939.i, align 1, !tbaa !47 ; 2 uses
  %i.j = and i8 %i.i, 4
  %.not28.i = icmp eq i8 %i.j, 0
  %i.k = xor i1 %.040.i, %.not28.i
  br i1 %i.k, label %bb.c, label %ft_stroke_border_get_counts.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = and i8 %i.i, 8                           ; 2 uses
  %.not30.not.i = icmp ne i8 %i.l, 0              ; 2 uses
  %.lobit.i = lshr exact i8 %i.l, 3
  %i.m = zext nneg i8 %.lobit.i to i32
  %spec.select.i = add i32 %.02237.i, %i.m        ; 2 uses
  %i.n = add i32 %.02138.i, -1                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01939.i, i64 1
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !62

._crit_edge.i:                                    ; preds = %bb.c
  br i1 %.not30.not.i, label %._crit_edge.thread.i, label %ft_stroke_border_get_counts.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.b
  %.022.lcssa48.i = phi i32 [ %spec.select.i, %._crit_edge.i ], [ 0, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i8 1, ptr %i.p, align 8, !tbaa !25
  br label %ft_stroke_border_get_counts.exit

ft_stroke_border_get_counts.exit:                 ; preds = %.lr.ph.i, %._crit_edge.thread.i, %._crit_edge.i, %bb.a
  %.016 = phi i32 [ 0, %bb.a ], [ %i.f, %._crit_edge.thread.i ], [ 0, %._crit_edge.i ], [ 0, %.lr.ph.i ]
  %.015 = phi i32 [ 0, %bb.a ], [ %.022.lcssa48.i, %._crit_edge.thread.i ], [ 0, %._crit_edge.i ], [ 0, %.lr.ph.i ]
  %.0 = phi i32 [ 6, %bb.a ], [ 0, %._crit_edge.thread.i ], [ 0, %._crit_edge.i ], [ 0, %.lr.ph.i ]
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %ft_stroke_border_get_counts.exit
  store i32 %.016, ptr %2, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %ft_stroke_border_get_counts.exit
end_hunk_0
