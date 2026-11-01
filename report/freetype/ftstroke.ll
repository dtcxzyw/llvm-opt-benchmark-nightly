Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftstroke?download=true
inline.NumInlined: 59
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@FT_Stroker_EndSubPath:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cn ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !50
  %i.cq = or i8 %i.cp, 8
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !50
  br label %ft_stroke_border_close.exit

ft_stroke_border_close.exit:                      ; preds = %bb.n, %bb.o
  store i32 -1, ptr %i.br, align 4, !tbaa !29
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.cr, align 8, !tbaa !51
  br label %bb.y

bb.p:                                             ; preds = %bb.b
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !41
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !80
  %i.cw = add i64 %i.ct, 1
  %i.cx = sub i64 %i.cw, %i.cv
  %or.cond = icmp ult i64 %i.cx, 3
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !43
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.db = load i64, ptr %i.da, align 8, !tbaa !81
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
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !52
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !45
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !53
  %i.dk = tail call fastcc i32 @ft_stroker_process_corner(ptr noundef %0, i64 noundef %i.dj) ; 2 uses
  %.not48 = icmp eq i32 %i.dk, 0
  br i1 %.not48, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !29 ; 3 uses
  %i.do = load i32, ptr %i.dl, align 8, !tbaa !36 ; 3 uses
  %i.dp = add i32 %i.dn, 1
  %.not.i53 = icmp ugt i32 %i.do, %i.dp
  br i1 %.not.i53, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !36
  br label %ft_stroke_border_close.exit54

bb.v:                                             ; preds = %bb.t
  %i.dq = add i32 %i.do, -1                       ; 2 uses
  store i32 %i.dq, ptr %i.dl, align 8, !tbaa !36
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !37 ; 2 uses
  %i.dt = zext i32 %i.dn to i64                   ; 3 uses
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = zext i32 %i.dq to i64                   ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i64 16, i1 false), !tbaa.struct !48
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !38 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !50
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dt
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !50
  %i.ec = load ptr, ptr %i.dx, align 8, !tbaa !38
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dt ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !50
  %i.ef = or i8 %i.ee, 4
  store i8 %i.ef, ptr %i.ed, align 1, !tbaa !50
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !38
  %i.eh = add i32 %i.do, -2
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ei ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !50
  %i.el = or i8 %i.ek, 8
  store i8 %i.el, ptr %i.ej, align 1, !tbaa !50
  br label %ft_stroke_border_close.exit54

ft_stroke_border_close.exit54:                    ; preds = %bb.u, %bb.v
  store i32 -1, ptr %i.dm, align 4, !tbaa !29
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.em, align 8, !tbaa !51
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !29 ; 3 uses
  %i.eq = load i32, ptr %i.en, align 8, !tbaa !36 ; 3 uses
  %i.er = add i32 %i.ep, 1
  %.not.i55 = icmp ugt i32 %i.eq, %i.er
  br i1 %.not.i55, label %bb.x, label %bb.w

bb.w:                                             ; preds = %ft_stroke_border_close.exit54
  store i32 %i.ep, ptr %i.en, align 8, !tbaa !36
  br label %ft_stroke_border_close.exit61

bb.x:                                             ; preds = %ft_stroke_border_close.exit54
  %i.es = add i32 %i.eq, -1                       ; 2 uses
  store i32 %i.es, ptr %i.en, align 8, !tbaa !36
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !37 ; 2 uses
  %i.ev = zext i32 %i.ep to i64                   ; 5 uses
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = zext i32 %i.es to i64                   ; 4 uses
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.ex
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.ey, i64 16, i1 false), !tbaa.struct !48
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !38 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ex
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !50
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ev
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !50
  %.idx.i56 = shl nuw nsw i64 %i.ev, 4
  %.idx65.i = shl nuw nsw i64 %i.ex, 4
  %i.fe = add nsw i64 %.idx65.i, -16              ; 2 uses
  %i.ff = add nuw nsw i64 %.idx.i56, 16           ; 2 uses
  %i.fg = icmp slt i64 %i.ff, %i.fe
  br i1 %i.fg, label %.lr.ph.preheader.i59, label %._crit_edge.i57

.lr.ph.preheader.i59:                             ; preds = %bb.x
  %i.fh = load ptr, ptr %i.et, align 8, !tbaa !37 ; 2 uses
  %.04956.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ff
  %.04855.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fe
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60, %.lr.ph.preheader.i59
  %.04958.i = phi ptr [ %.049.i, %.lr.ph.i60 ], [ %.04956.i, %.lr.ph.preheader.i59 ] ; 3 uses
  %.04857.i = phi ptr [ %.048.i, %.lr.ph.i60 ], [ %.04855.i, %.lr.ph.preheader.i59 ] ; 3 uses
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.04958.i, align 8, !tbaa !46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.04958.i, ptr noundef nonnull align 8 dereferenceable(16) %.04857.i, i64 16, i1 false), !tbaa.struct !48
  store <2 x i64> %.sroa.0.0.copyload, ptr %.04857.i, align 8, !tbaa !46
  %.048.i = getelementptr inbounds i8, ptr %.04857.i, i64 -16 ; 2 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.04958.i, i64 16 ; 2 uses
  %i.fi = icmp ult ptr %.049.i, %.048.i
  br i1 %i.fi, label %.lr.ph.i60, label %._crit_edge.i57, !llvm.loop !78

._crit_edge.i57:                                  ; preds = %.lr.ph.i60, %bb.x
  %i.fj = add nsw i64 %i.ex, -1                   ; 2 uses
  %i.fk = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %i.fl = icmp slt i64 %i.fk, %i.fj
  br i1 %i.fl, label %.lr.ph64.preheader.i, label %.loopexit.i

.lr.ph64.preheader.i:                             ; preds = %._crit_edge.i57
  %i.fm = load ptr, ptr %i.ez, align 8, !tbaa !38 ; 2 uses
  %.04760.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fk
  %.059.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fj
  br label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.lr.ph64.i, %.lr.ph64.preheader.i
  %.04762.i = phi ptr [ %.047.i, %.lr.ph64.i ], [ %.04760.i, %.lr.ph64.preheader.i ] ; 3 uses
  %.061.i = phi ptr [ %.0.i58, %.lr.ph64.i ], [ %.059.i, %.lr.ph64.preheader.i ] ; 3 uses
  %i.fn = load i8, ptr %.04762.i, align 1, !tbaa !50
  %i.fo = load i8, ptr %.061.i, align 1, !tbaa !50
  store i8 %i.fo, ptr %.04762.i, align 1, !tbaa !50
  store i8 %i.fn, ptr %.061.i, align 1, !tbaa !50
  %.0.i58 = getelementptr inbounds i8, ptr %.061.i, i64 -1 ; 2 uses
  %.047.i = getelementptr inbounds nuw i8, ptr %.04762.i, i64 1 ; 2 uses
  %i.fp = icmp ult ptr %.047.i, %.0.i58
  br i1 %i.fp, label %.lr.ph64.i, label %.loopexit.i, !llvm.loop !79

.loopexit.i:                                      ; preds = %.lr.ph64.i, %._crit_edge.i57
  %i.fq = load ptr, ptr %i.ez, align 8, !tbaa !38
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ev ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !50
  %i.ft = or i8 %i.fs, 4
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !50
  %i.fu = load ptr, ptr %i.ez, align 8, !tbaa !38
  %i.fv = add i32 %i.eq, -2
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fw ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !50
  %i.fz = or i8 %i.fy, 8
  store i8 %i.fz, ptr %i.fx, align 1, !tbaa !50
  br label %ft_stroke_border_close.exit61

ft_stroke_border_close.exit61:                    ; preds = %bb.w, %.loopexit.i
  store i32 -1, ptr %i.eo, align 4, !tbaa !29
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.ga, align 8, !tbaa !51
  br label %bb.y

bb.y:                                             ; preds = %ft_stroker_add_reverse_left.exit, %bb.r, %bb.s, %ft_stroke_border_close.exit61, %bb.a, %bb.l, %bb.c, %ft_stroke_border_close.exit
  %.1 = phi i32 [ 6, %bb.a ], [ %i.de, %bb.r ], [ %i.dk, %bb.s ], [ 0, %ft_stroke_border_close.exit61 ], [ 0, %ft_stroke_border_close.exit ], [ %i.f, %bb.c ], [ %i.bk, %ft_stroker_add_reverse_left.exit ], [ %i.bq, %bb.l ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_stroker_cap(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.FT_Vector_, align 8         ; 7 uses
  %3 = alloca %struct.FT_Vector_, align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %0, align 8, !tbaa !47
  %i.d = add nsw i64 %1, 11796480
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !45
  %i.f = tail call fastcc i32 @ft_stroker_arcto(ptr noundef %0, i32 noundef 0)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  call void @FT_Vector_From_Polar(ptr noundef nonnull %2, i64 noundef %i.h, i64 noundef %1) #10
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = load i64, ptr %2, align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !32
  %i.o = icmp eq i32 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !41   ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i64 %i.q, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !43
  %i.u = add nsw i64 %i.t, %i.k
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ %i.r, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %storemerge = phi i64 [ %i.u, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  store i64 %.sink, ptr %2, align 8, !tbaa !40
  store i64 %storemerge, ptr %i.j, align 8, !tbaa !42
  %i.x = sub nsw i64 %.sink, %i.k                 ; 2 uses
  store i64 %i.x, ptr %3, align 8, !tbaa !40
  %i.y = add nsw i64 %storemerge, %i.l            ; 2 uses
  store i64 %i.y, ptr %i.m, align 8, !tbaa !42
  %i.z = call fastcc i32 @ft_stroke_border_lineto(ptr noundef %i.i, ptr noundef %3, i8 noundef zeroext 0) ; 2 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %4 = load i64, ptr %2, align 8, !tbaa !40
  %factor = shl i64 %4, 1
  %5 = sub i64 %factor, %i.x
  store i64 %5, ptr %3, align 8, !tbaa !40
  %6 = load i64, ptr %i.j, align 8, !tbaa !42
  %factor28 = shl i64 %6, 1
  %7 = sub i64 %factor28, %i.y
  store i64 %7, ptr %i.m, align 8, !tbaa !42
  %i.aa = call fastcc i32 @ft_stroke_border_lineto(ptr noundef %i.i, ptr noundef %3, i8 noundef zeroext 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.024 = phi i32 [ %i.aa, %bb.g ], [ %i.z, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.1 = phi i32 [ %i.f, %bb.b ], [ %.024, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 21) i32 @FT_Stroker_GetBorderCounts(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ugt i32 %1, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %ft_stroke_border_get_counts.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36   ; 3 uses
  %.not36.i = icmp eq i32 %i.f, 0
  br i1 %.not36.i, label %._crit_edge.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.041.i = phi i1 [ %.not31.not.i, %bb.c ], [ true, %.lr.ph.preheader.i ]
  %.01940.i = phi ptr [ %i.o, %bb.c ], [ %i.h, %.lr.ph.preheader.i ] ; 2 uses
  %.02139.i = phi i32 [ %i.n, %bb.c ], [ %i.f, %.lr.ph.preheader.i ]
  %.02238.i = phi i32 [ %spec.select.i, %bb.c ], [ 0, %.lr.ph.preheader.i ]
  %i.i = load i8, ptr %.01940.i, align 1, !tbaa !50 ; 2 uses
  %i.j = and i8 %i.i, 4
  %.not29.i = icmp eq i8 %i.j, 0
  %i.k = xor i1 %.041.i, %.not29.i
  br i1 %i.k, label %bb.c, label %ft_stroke_border_get_counts.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = and i8 %i.i, 8                           ; 2 uses
  %.not31.not.i = icmp ne i8 %i.l, 0              ; 2 uses
  %.lobit.i = lshr exact i8 %i.l, 3
  %i.m = zext nneg i8 %.lobit.i to i32
  %spec.select.i = add i32 %.02238.i, %i.m        ; 2 uses
  %i.n = add i32 %.02139.i, -1                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01940.i, i64 1
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.c
  br i1 %.not31.not.i, label %._crit_edge.thread.i, label %ft_stroke_border_get_counts.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.b
  %.022.lcssa49.i = phi i32 [ %spec.select.i, %._crit_edge.i ], [ 0, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i8 1, ptr %i.p, align 8, !tbaa !30
  br label %ft_stroke_border_get_counts.exit

ft_stroke_border_get_counts.exit:                 ; preds = %.lr.ph.i, %._crit_edge.thread.i, %._crit_edge.i, %bb.a
  %.016 = phi i32 [ 0, %bb.a ], [ %i.f, %._crit_edge.thread.i ], [ 0, %._crit_edge.i ], [ 0, %.lr.ph.i ]
  %.015 = phi i32 [ 0, %bb.a ], [ %.022.lcssa49.i, %._crit_edge.thread.i ], [ 0, %._crit_edge.i ], [ 0, %.lr.ph.i ]
  %.0 = phi i32 [ 6, %bb.a ], [ 0, %._crit_edge.thread.i ], [ 20, %._crit_edge.i ], [ 20, %.lr.ph.i ]
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %ft_stroke_border_get_counts.exit
  store i32 %.016, ptr %2, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %ft_stroke_border_get_counts.exit
  %.not13 = icmp eq ptr %3, null
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %.015, ptr %3, align 4, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 21) i32 @FT_Stroker_GetCounts(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ft_stroke_border_get_counts.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %.not36.i = icmp eq i32 %i.b, 0
  br i1 %.not36.i, label %bb.d, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.041.i = phi i1 [ %.not31.not.i, %bb.c ], [ true, %.lr.ph.preheader.i ]
  %.01940.i = phi ptr [ %i.k, %bb.c ], [ %i.d, %.lr.ph.preheader.i ] ; 2 uses
  %.02139.i = phi i32 [ %i.j, %bb.c ], [ %i.b, %.lr.ph.preheader.i ]
  %.02238.i = phi i32 [ %spec.select.i, %bb.c ], [ 0, %.lr.ph.preheader.i ]
  %i.e = load i8, ptr %.01940.i, align 1, !tbaa !50 ; 2 uses
  %i.f = and i8 %i.e, 4
  %.not29.i = icmp eq i8 %i.f, 0
  %i.g = xor i1 %.041.i, %.not29.i
  br i1 %i.g, label %bb.c, label %ft_stroke_border_get_counts.exit.thread

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = and i8 %i.e, 8                           ; 2 uses
  %.not31.not.i = icmp ne i8 %i.h, 0              ; 2 uses
  %.lobit.i = lshr exact i8 %i.h, 3
  %i.i = zext nneg i8 %.lobit.i to i32
  %spec.select.i = add i32 %.02238.i, %i.i        ; 2 uses
  %i.j = add i32 %.02139.i, -1                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01940.i, i64 1
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.c
  br i1 %.not31.not.i, label %bb.d, label %ft_stroke_border_get_counts.exit.thread

bb.d:                                             ; preds = %._crit_edge.i, %bb.b
  %.022.lcssa49.i = phi i32 [ %spec.select.i, %._crit_edge.i ], [ 0, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %i.l, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = load i32, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %.not36.i22 = icmp eq i32 %i.n, 0
  br i1 %.not36.i22, label %bb.f, label %.lr.ph.preheader.i23

.lr.ph.preheader.i23:                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %bb.e, %.lr.ph.preheader.i23
  %.041.i25 = phi i1 [ %.not31.not.i33, %bb.e ], [ true, %.lr.ph.preheader.i23 ]
  %.01940.i26 = phi ptr [ %i.w, %bb.e ], [ %i.p, %.lr.ph.preheader.i23 ] ; 2 uses
  %.02139.i27 = phi i32 [ %i.v, %bb.e ], [ %i.n, %.lr.ph.preheader.i23 ]
  %.02238.i28 = phi i32 [ %spec.select.i35, %bb.e ], [ 0, %.lr.ph.preheader.i23 ]
  %i.q = load i8, ptr %.01940.i26, align 1, !tbaa !50 ; 2 uses
  %i.r = and i8 %i.q, 4
  %.not29.i29 = icmp eq i8 %i.r, 0
  %i.s = xor i1 %.041.i25, %.not29.i29
  br i1 %i.s, label %bb.e, label %ft_stroke_border_get_counts.exit.thread

bb.e:                                             ; preds = %.lr.ph.i24
  %i.t = and i8 %i.q, 8                           ; 2 uses
  %.not31.not.i33 = icmp ne i8 %i.t, 0            ; 2 uses
  %.lobit.i34 = lshr exact i8 %i.t, 3
  %i.u = zext nneg i8 %.lobit.i34 to i32
  %spec.select.i35 = add i32 %.02238.i28, %i.u    ; 2 uses
  %i.v = add i32 %.02139.i27, -1                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01940.i26, i64 1
  %.not.i36 = icmp eq i32 %i.v, 0
  br i1 %.not.i36, label %._crit_edge.i37, label %.lr.ph.i24, !llvm.loop !1

._crit_edge.i37:                                  ; preds = %bb.e
  br i1 %.not31.not.i33, label %bb.f, label %ft_stroke_border_get_counts.exit.thread

bb.f:                                             ; preds = %._crit_edge.i37, %bb.d
  %.022.lcssa49.i39 = phi i32 [ %spec.select.i35, %._crit_edge.i37 ], [ 0, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 1, ptr %i.x, align 8, !tbaa !30
  %i.y = add i32 %i.n, %i.b
  %i.z = add i32 %.022.lcssa49.i39, %.022.lcssa49.i
  br label %ft_stroke_border_get_counts.exit.thread

ft_stroke_border_get_counts.exit.thread:          ; preds = %.lr.ph.i, %.lr.ph.i24, %._crit_edge.i37, %._crit_edge.i, %bb.a, %bb.f
  %.012 = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i24 ], [ %i.y, %bb.f ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i37 ], [ 0, %.lr.ph.i ]
  %.011 = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i24 ], [ %i.z, %bb.f ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i37 ], [ 0, %.lr.ph.i ]
  %.0 = phi i32 [ 6, %bb.a ], [ 20, %.lr.ph.i24 ], [ 0, %bb.f ], [ 20, %._crit_edge.i ], [ 20, %._crit_edge.i37 ], [ 20, %.lr.ph.i ]
  %.not20 = icmp eq ptr %1, null
  br i1 %.not20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %ft_stroke_border_get_counts.exit.thread
  store i32 %.012, ptr %1, align 4, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %ft_stroke_border_get_counts.exit.thread
  %.not21 = icmp eq ptr %2, null
  br i1 %.not21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %.011, ptr %2, align 4, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret i32 %.0
}
end_hunk_0
