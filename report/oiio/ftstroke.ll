inline.NumInlined: 59
inline.NumDeleted: 19
begin_hunk_0_@ft_stroke_border_cubicto:bb.a
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
define range(i32 0, 7) i32 @FT_Stroker_BeginSubPath(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
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
define i32 @FT_Stroker_EndSubPath(ptr nofree noundef %0) local_unnamed_addr #0 {
bb.a:
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
  %i.am = zext i32 %i.ai to i64                   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.am, 4
  %1 = add nsw i64 %.idx.i, -16                   ; 2 uses
  %i.an = sext i32 %i.ah to i64
  %.idx70.i = shl nsw i64 %i.an, 4
  %.not4752.i = icmp slt i64 %1, %.idx70.i
  br i1 %.not4752.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !34
  %.04251.i = getelementptr inbounds i8, ptr %i.ao, i64 %1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am
  %i.as = zext i32 %i.ak to i64                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.as
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.04256.i = phi ptr [ %.042.i, %.lr.ph.i ], [ %.04251.i, %.lr.ph.preheader.i ] ; 2 uses
  %.pn4855.i = phi ptr [ %.041.i, %.lr.ph.i ], [ %i.ar, %.lr.ph.preheader.i ]
  %.04354.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.at, %.lr.ph.preheader.i ] ; 2 uses
  %.04453.i = phi ptr [ %i.az, %.lr.ph.i ], [ %i.aw, %.lr.ph.preheader.i ] ; 2 uses
  %.041.i = getelementptr inbounds i8, ptr %.pn4855.i, i64 -1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.04453.i, ptr noundef nonnull align 8 dereferenceable(16) %.04256.i, i64 16, i1 false), !tbaa.struct !45
  %i.ax = load i8, ptr %.041.i, align 1, !tbaa !47
  %i.ay = and i8 %i.ax, -13
  store i8 %i.ay, ptr %.04354.i, align 1, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %.04453.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.04354.i, i64 1
  %.042.i = getelementptr inbounds i8, ptr %.04256.i, i64 -16 ; 2 uses
  %i.bb = load ptr, ptr %i.al, align 8, !tbaa !34
  %i.bc = load i32, ptr %i.i, align 4, !tbaa !24  ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.bd
  %.not47.i = icmp ult ptr %.042.i, %i.be
  br i1 %.not47.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !57

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre63.i = load i32, ptr %i.d, align 8, !tbaa !33
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.k
  %i.bf = phi i32 [ %i.ak, %bb.k ], [ %.pre63.i, %._crit_edge.loopexit.i ]
  %.lcssa.i = phi i32 [ %i.ah, %bb.k ], [ %i.bc, %._crit_edge.loopexit.i ]
  store i32 %.lcssa.i, ptr %i.g, align 8, !tbaa !33
  %i.bg = add i32 %i.bf, %i.k
  store i32 %i.bg, ptr %i.d, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.bh, align 8, !tbaa !48
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.bi, align 8, !tbaa !48
  br label %bb.l

ft_stroker_add_reverse_left.exit:                 ; preds = %bb.h, %bb.i
  %i.bj = phi i32 [ %i.ac, %bb.h ], [ %i.ag, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.y

bb.l:                                             ; preds = %._crit_edge.i, %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !45
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !49
  %i.bo = add nsw i64 %i.bn, 11796480
  %i.bp = call fastcc i32 @ft_stroker_cap(ptr noundef %0, i64 noundef %i.bo) ; 2 uses
  %.not51 = icmp eq i32 %i.bp, 0
  br i1 %.not51, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !24 ; 3 uses
  %i.bs = load i32, ptr %i.d, align 8, !tbaa !33  ; 3 uses
  %i.bt = add i32 %i.br, 1
  %.not.i = icmp ugt i32 %i.bs, %i.bt
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.br, ptr %i.d, align 8, !tbaa !33
  br label %ft_stroke_border_close.exit

bb.o:                                             ; preds = %bb.m
  %i.bu = add i32 %i.bs, -1                       ; 2 uses
  store i32 %i.bu, ptr %i.d, align 8, !tbaa !33
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !34 ; 2 uses
  %i.bx = zext i32 %i.br to i64                   ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = zext i32 %i.bu to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !45
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !35 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bz
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !47
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bx
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !47
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bx ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !47
  %i.cj = or i8 %i.ci, 4
  store i8 %i.cj, ptr %i.ch, align 1, !tbaa !47
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !35
  %i.cl = add i32 %i.bs, -2
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cm ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !47
  %i.cp = or i8 %i.co, 8
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !47
  br label %ft_stroke_border_close.exit

ft_stroke_border_close.exit:                      ; preds = %bb.n, %bb.o
  store i32 -1, ptr %i.bq, align 4, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.cq, align 8, !tbaa !48
  br label %bb.y

bb.p:                                             ; preds = %bb.b
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !38
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !58
  %i.cv = add i64 %i.cs, 1
  %i.cw = sub i64 %i.cv, %i.cu
  %or.cond = icmp ult i64 %i.cw, 3
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !40
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !59
  %i.db = add i64 %i.cy, 1
  %i.dc = sub i64 %i.db, %i.da
  %or.cond52 = icmp ult i64 %i.dc, 3
  br i1 %or.cond52, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dd = tail call i32 @FT_Stroker_LineTo(ptr noundef nonnull %0, ptr noundef nonnull %i.ct) ; 2 uses
  %.not47 = icmp eq i32 %i.dd, 0
  br i1 %.not47, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.df = load i64, ptr %i.de, align 8, !tbaa !49
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !42
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !50
  %i.dj = tail call fastcc i32 @ft_stroker_process_corner(ptr noundef %0, i64 noundef %i.di) ; 2 uses
  %.not48 = icmp eq i32 %i.dj, 0
  br i1 %.not48, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !24 ; 3 uses
  %i.dn = load i32, ptr %i.dk, align 8, !tbaa !33 ; 3 uses
  %i.do = add i32 %i.dm, 1
  %.not.i53 = icmp ugt i32 %i.dn, %i.do
  br i1 %.not.i53, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.dm, ptr %i.dk, align 8, !tbaa !33
  br label %ft_stroke_border_close.exit54

bb.v:                                             ; preds = %bb.t
  %i.dp = add i32 %i.dn, -1                       ; 2 uses
  store i32 %i.dp, ptr %i.dk, align 8, !tbaa !33
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !34 ; 2 uses
  %i.ds = zext i32 %i.dm to i64                   ; 3 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.ds
  %i.du = zext i32 %i.dp to i64                   ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false), !tbaa.struct !45
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !35 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.du
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !47
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ds
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !47
  %i.eb = load ptr, ptr %i.dw, align 8, !tbaa !35
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ds ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !47
  %i.ee = or i8 %i.ed, 4
  store i8 %i.ee, ptr %i.ec, align 1, !tbaa !47
  %i.ef = load ptr, ptr %i.dw, align 8, !tbaa !35
  %i.eg = add i32 %i.dn, -2
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eh ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !47
  %i.ek = or i8 %i.ej, 8
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !47
  br label %ft_stroke_border_close.exit54

ft_stroke_border_close.exit54:                    ; preds = %bb.u, %bb.v
  store i32 -1, ptr %i.dl, align 4, !tbaa !24
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.el, align 8, !tbaa !48
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !24 ; 3 uses
  %i.ep = load i32, ptr %i.em, align 8, !tbaa !33 ; 3 uses
  %i.eq = add i32 %i.eo, 1
  %.not.i55 = icmp ugt i32 %i.ep, %i.eq
  br i1 %.not.i55, label %bb.x, label %bb.w
end_hunk_0
