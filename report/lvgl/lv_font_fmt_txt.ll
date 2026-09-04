Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_font_fmt_txt?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@lv_font_get_bitmap_fmt_txt:bb.a
  %.7.lcssa = phi i32 [ %.6252, %bb.w ], [ %i.ep, %._crit_edge246.loopexit ]
  %.0154.lcssa = phi i16 [ %spec.select359, %bb.w ], [ %.1, %._crit_edge246.loopexit ]
  %narrow = select i1 %.not199, i16 0, i16 %.0154.lcssa
  %.11.idx = zext i16 %narrow to i64
  %.11 = getelementptr inbounds nuw i8, ptr %.9182.lcssa, i64 %.11.idx
  %.8 = select i1 %.not199, i32 %.7.lcssa, i32 0
  %i.eu = getelementptr inbounds nuw i8, ptr %.2171251, i64 %i.bn
  %i.ev = add nuw nsw i32 %.2253, 1               ; 2 uses
  %i.ew = zext i8 %i.et to i32
  %i.ex = icmp samesign ult i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.w, label %.loopexit, !llvm.loop !42

.lr.ph239.split:                                  ; preds = %.lr.ph239, %._crit_edge
  %i.ey = phi i8 [ %i.fh, %._crit_edge ], [ %i.at, %.lr.ph239 ]
  %i.ez = phi i8 [ %i.fi, %._crit_edge ], [ %.pre316, %.lr.ph239 ]
  %.3238 = phi i32 [ %i.fm, %._crit_edge ], [ 0, %.lr.ph239 ]
  %.3172236 = phi ptr [ %i.fj, %._crit_edge ], [ %i.s, %.lr.ph239 ] ; 2 uses
  %.12235 = phi ptr [ %i.fl, %._crit_edge ], [ %i.ar, %.lr.ph239 ] ; 2 uses
  %.not286 = icmp eq i8 %i.ez, 0
  br i1 %.not286, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph239.split, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph239.split ] ; 2 uses
  %.0232 = phi i16 [ %i.fc, %.lr.ph ], [ %i.ac, %.lr.ph239.split ]
  %.13229 = phi ptr [ %i.fd, %.lr.ph ], [ %.12235, %.lr.ph239.split ] ; 2 uses
  %i.fa = load i8, ptr %.13229, align 1, !tbaa !19
  %i.fb = getelementptr inbounds nuw i8, ptr %.3172236, i64 %indvars.iv
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !19
  %i.fc = add i16 %.0232, -1                      ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.13229, i64 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fe = load i8, ptr %i.t, align 4, !tbaa !23   ; 2 uses
  %i.ff = zext i8 %i.fe to i64
  %i.fg = icmp samesign ult i64 %indvars.iv.next, %i.ff
  br i1 %i.fg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !35

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre315 = load i8, ptr %i.w, align 1, !tbaa !49
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph239.split
  %i.fh = phi i8 [ %i.ey, %.lr.ph239.split ], [ %.pre315, %._crit_edge.loopexit ] ; 2 uses
  %i.fi = phi i8 [ 0, %.lr.ph239.split ], [ %i.fe, %._crit_edge.loopexit ]
  %.13.lcssa = phi ptr [ %.12235, %.lr.ph239.split ], [ %i.fd, %._crit_edge.loopexit ]
  %.0.lcssa = phi i16 [ %i.ac, %.lr.ph239.split ], [ %i.fc, %._crit_edge.loopexit ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.3172236, i64 %i.au
  %i.fk = zext i16 %.0.lcssa to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.13.lcssa, i64 %i.fk
  %i.fm = add nuw nsw i32 %.3238, 1               ; 2 uses
  %i.fn = zext i8 %i.fh to i32
  %i.fo = icmp samesign ult i32 %i.fm, %i.fn
  br i1 %i.fo, label %.lr.ph239.split, label %.loopexit, !llvm.loop !36

.lr.ph275.unreachabledefault:                     ; preds = %.lr.ph275
  unreachable

.lr.ph260.unreachabledefault:                     ; preds = %.lr.ph260
  unreachable

default.unreachable341:                           ; preds = %.split
  unreachable

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge.us, %._crit_edge246, %._crit_edge261, %._crit_edge276, %.preheader221, %.preheader219, %.preheader217, %.preheader, %bb.f
  tail call void @lv_draw_buf_flush_cache(ptr noundef %1, ptr noundef null) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.c, %.loopexit, %bb.e, %bb.d, %bb.a
  %.3187 = phi ptr [ null, %bb.a ], [ %i.q, %bb.c ], [ null, %bb.d ], [ %1, %.loopexit ], [ null, %bb.e ]
  ret ptr %.3187
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @lv_draw_buf_width_to_stride(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @lv_draw_buf_flush_cache(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @lv_font_get_glyph_dsc_fmt_txt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.kern_pair_ref_t, align 4    ; 5 uses
  %5 = alloca %struct.kern_pair_ref_t, align 4    ; 5 uses
  %i.a = icmp eq i32 %2, 9                        ; 3 uses
  %spec.select = select i1 %i.a, i32 32, i32 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 6 uses
  %i.d = tail call fastcc i32 @get_glyph_dsc_id(ptr noundef %0, i32 noundef %spec.select) ; 6 uses
  %.not = icmp ne i32 %i.d, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %.not58 = icmp eq ptr %i.f, null
  br i1 %.not58, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc i32 @get_glyph_dsc_id(ptr noundef nonnull %0, i32 noundef %3) ; 4 uses
  %.not59 = icmp eq i32 %i.g, 0
  br i1 %.not59, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 34
  %i.i = load i16, ptr %i.h, align 2
  %i.j = and i16 %i.i, 8192
  %i.k = icmp eq i16 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 9 uses
  br i1 %i.k, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8              ; 3 uses
  %i.p = lshr i32 %i.o, 30
  switch i32 %i.p, label %get_kern_value.exit [
    i32 0, label %bb.f
    i32 1, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store i32 %i.d, ptr %4, align 4, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.g, ptr %i.r, align 4, !tbaa !27
  %i.s = and i32 %i.o, 1073741823
  %i.t = zext nneg i32 %i.s to i64
  %i.u = call ptr @lv_utils_bsearch(ptr noundef nonnull %4, ptr noundef %i.q, i64 noundef %i.t, i64 noundef 2, ptr noundef nonnull @kern_pair_8_compare) #8 ; 2 uses
  %.not43.i = icmp eq ptr %i.u, null
  br i1 %.not43.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i8 [ %i.ac, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %get_kern_value.exit

bb.i:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !52  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store i32 %i.d, ptr %5, align 4, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.g, ptr %i.ae, align 4, !tbaa !27
  %i.af = and i32 %i.o, 1073741823
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = call ptr @lv_utils_bsearch(ptr noundef nonnull %5, ptr noundef %i.ad, i64 noundef %i.ag, i64 noundef 4, ptr noundef nonnull @kern_pair_16_compare) #8 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ad to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.i = phi i8 [ %i.ap, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %get_kern_value.exit

bb.l:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !55
  %i.as = zext i32 %i.d to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !19  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !56
  %i.ax = zext i32 %i.g to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !19  ; 2 uses
  %i.ba = icmp ne i8 %i.au, 0
  %i.bb = icmp ne i8 %i.az, 0
  %or.cond.i = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond.i, label %bb.m, label %get_kern_value.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = zext i8 %i.az to i64
  %i.bd = zext i8 %i.au to i64
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.bf = add nuw nsw i64 %i.bd, 4294967295
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 25
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !58
  %i.bi = zext i8 %i.bh to i64
  %i.bj = mul nuw nsw i64 %i.bf, %i.bi
  %6 = add nuw nsw i64 %i.bc, 4294967295
  %7 = add nuw nsw i64 %6, %i.bj
  %8 = and i64 %7, 4294967295
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %8
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !19
  br label %get_kern_value.exit

get_kern_value.exit:                              ; preds = %bb.e, %bb.h, %bb.k, %bb.l, %bb.m
  %.4.i = phi i8 [ 0, %bb.e ], [ %.0.i, %bb.h ], [ %.1.i, %bb.k ], [ %i.bl, %bb.m ], [ 0, %bb.l ]
  %i.bm = sext i8 %.4.i to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %get_kern_value.exit, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %i.bm, %get_kern_value.exit ], [ 0, %bb.c ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !21
  %i.bp = zext i32 %i.d to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !59
  %i.bt = zext i16 %i.bs to i32
  %i.bu = mul nsw i32 %.1, %i.bt
  %i.bv = lshr i32 %i.bu, 4
  %i.bw = load i32, ptr %i.bq, align 4
  %i.bx = lshr i32 %i.bw, 20
  %i.by = zext i1 %i.a to i32
  %spec.select60 = shl nuw nsw i32 %i.bx, %i.by
  %i.bz = add nuw nsw i32 %i.bv, 8
  %i.ca = add nuw nsw i32 %i.bz, %spec.select60
  %i.cb = lshr i32 %i.ca, 4
  %i.cc = trunc i32 %i.cb to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.cc, ptr %i.cd, align 8, !tbaa !60
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.cg = load <4 x i8>, ptr %i.ce, align 4, !tbaa !19 ; 2 uses
  %i.ch = load i8, ptr %i.ce, align 4, !tbaa !23  ; 2 uses
  %i.ci = zext <4 x i8> %i.cg to <4 x i16>
  %i.cj = sext <4 x i8> %i.cg to <4 x i16>
  %i.ck = shufflevector <4 x i16> %i.ci, <4 x i16> %i.cj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cl = zext i8 %i.ch to i16
  store <4 x i16> %i.ck, ptr %i.cf, align 2, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !61  ; 2 uses
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = zext i8 %i.cn to i32                    ; 2 uses
  %i.cq = zext i8 %i.ch to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 34
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = lshr i16 %i.cs, 9
  %i.cu = and i16 %i.ct, 15
  %i.cv = zext nneg i16 %i.cu to i32
  %i.cw = mul nuw nsw i32 %i.cv, %i.cq
  %i.cx = add nuw nsw i32 %i.cw, 7
  %i.cy = lshr i32 %i.cx, 3
  %i.cz = add nsw i32 %i.cp, -1
  %i.da = add nuw nsw i32 %i.cz, %i.cy
  %.fr = freeze i32 %i.da                         ; 2 uses
  %i.db = urem i32 %.fr, %i.cp
  %i.dc = sub nuw i32 %.fr, %i.db
  %i.dd = trunc i32 %i.dc to i16
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sink = phi i16 [ %i.dd, %bb.o ], [ 0, %bb.n ]
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %.sink, ptr %i.de, align 2, !tbaa !24
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 34
  %i.dg = load i16, ptr %i.df, align 2
  %i.dh = lshr i16 %i.dg, 9
  %i.di = and i16 %i.dh, 15
  %i.dj = zext nneg i16 %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !62
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 8
  %i.dn = and i8 %i.dm, -2
  store i8 %i.dn, ptr %i.dl, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.d, ptr %i.do, align 8, !tbaa !19
  br i1 %i.a, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dp = shl nuw nsw i16 %i.cl, 1
  store i16 %i.dp, ptr %i.cf, align 2, !tbaa !63
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.a
  ret i1 %.not
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_glyph_dsc_id(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %.thread96, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 34
  %i.g = load i16, ptr %i.f, align 2
  %i.h = and i16 %i.g, 511                        ; 2 uses
  %.not117 = icmp eq i16 %i.h, 0
  br i1 %.not117, label %.thread96, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65
  %wide.trip.count = zext nneg i16 %i.h to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.thread92
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread92 ] ; 4 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %indvars.iv ; 10 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !68   ; 2 uses
  %i.m = sub i32 %1, %i.l                         ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i16, ptr %i.n, align 4, !tbaa !69
  %i.p = zext i16 %i.o to i32
  %.not = icmp ult i32 %i.m, %i.p
  br i1 %.not, label %bb.d, label %.thread92

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !70
  switch i32 %i.r, label %.thread96 [
    i32 2, label %bb.e
    i32 0, label %bb.f
    i32 3, label %bb.h
    i32 1, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.t = load i16, ptr %i.s, align 2, !tbaa !71
  %i.u = zext i16 %i.t to i32
  %i.v = add nuw nsw i32 %i.m, %i.u
  br label %.thread96

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.y = zext nneg i32 %i.m to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !19   ; 2 uses
  %i.ab = icmp ne i8 %i.aa, 0
  %.not79 = icmp eq i32 %1, %i.l
  %or.cond = or i1 %.not79, %i.ab
  br i1 %or.cond, label %bb.g, label %.thread92

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !71
  %i.ae = zext i16 %i.ad to i32
  %i.af = zext i8 %i.aa to i32
  %i.ag = add nuw nsw i32 %i.ae, %i.af
  br label %.thread96

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ah = trunc nuw i32 %i.m to i16
  store i16 %i.ah, ptr %i.a, align 2, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !74
  %i.am = zext i16 %i.al to i64
  %i.an = call ptr @lv_utils_bsearch(ptr noundef nonnull %i.a, ptr noundef %i.aj, i64 noundef %i.am, i64 noundef 2, ptr noundef nonnull @unicode_list_compare) #8 ; 2 uses
  %.not78 = icmp eq ptr %i.an, null
  br i1 %.not78, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !65
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %indvars.iv ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = lshr exact i64 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !71
  %i.ay = zext i16 %i.ax to i32
  %i.az = trunc i64 %i.av to i32
  %i.ba = add i32 %i.az, %i.ay
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.166 = phi i32 [ %i.ba, %bb.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.thread96

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.bb = trunc nuw i32 %i.m to i16
  store i16 %i.bb, ptr %i.b, align 2, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !73
end_hunk_0
