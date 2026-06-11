inline.NumInlined: 40
inline.NumDeleted: 16
begin_hunk_0_@JPEGPreDecode:bb.a
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !148
  %i.dk = add nsw i32 %i.da, -1
  %i.dl = add i32 %i.dk, %i.dj
  %i.dm = udiv i32 %i.dl, %i.da
  %i.dn = zext i32 %i.dm to i64
  %i.do = shl nuw nsw i64 %i.dh, 7
  %i.dp = mul i64 %i.do, %i.dn
  %i.dq = add i64 %i.dp, %.0153196
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.1154 = phi i64 [ %i.dq, %bb.ai ], [ %.0153196, %bb.ah ], [ %.0153196, %bb.ag ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ag

._crit_edge:                                      ; preds = %bb.aj, %.preheader194
  %.0153.lcssa = phi i64 [ 1048576, %.preheader194 ], [ %.1154, %bb.aj ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !21
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 88
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !71 ; 3 uses
  %i.dv = icmp sgt i64 %i.du, 0
  %i.dw = icmp ugt i64 %.0153.lcssa, %i.du
  %or.cond189 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond189, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %._crit_edge
  %i.dx = tail call ptr @getenv(ptr noundef nonnull @.str.21) #16
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %.critedge, label %bb.al

.critedge:                                        ; preds = %bb.ak
  %i.dz = add i64 %.0153.lcssa, 999999
  %i.ea = udiv i64 %i.dz, 1000000
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @JPEGPreDecode.module, ptr noundef nonnull @.str.22, i64 noundef %.0153.lcssa, i64 noundef %i.du, i64 noundef %i.ea) #16
  br label %bb.bb

bb.al:                                            ; preds = %bb.ak, %._crit_edge, %bb.af
  %i.eb = load i16, ptr %i.aj, align 2, !tbaa !75
  %i.ec = icmp eq i16 %i.eb, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !21 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !144 ; 3 uses
  br i1 %i.ec, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 1170
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !80
  %i.ej = zext i16 %i.ei to i32                   ; 2 uses
  %.not180 = icmp eq i32 %i.eg, %i.ej
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !146 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 1172
  %i.en = load i16, ptr %i.em, align 4, !tbaa !81
  %i.eo = zext i16 %i.en to i32                   ; 2 uses
  %.not181 = icmp eq i32 %i.el, %i.eo
  %or.cond230 = select i1 %.not180, i1 %.not181, i1 false
  br i1 %or.cond230, label %.preheader, label %._crit_edge211

.preheader:                                       ; preds = %bb.am
  %i.ep = load i32, ptr %i.bz, align 8, !tbaa !21 ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 1
  br i1 %i.eq, label %.lr.ph198.preheader, label %._crit_edge199

.lr.ph198.preheader:                              ; preds = %.preheader
  %wide.trip.count204 = zext nneg i32 %i.ep to i64
  br label %.lr.ph198

._crit_edge211:                                   ; preds = %bb.am
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGPreDecode.module, ptr noundef nonnull @.str.23, i32 noundef %i.eg, i32 noundef %i.el, i32 noundef %i.ej, i32 noundef %i.eo) #16
  br label %bb.bb

bb.an:                                            ; preds = %bb.ao
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next202, %wide.trip.count204
  br i1 %exitcond205.not, label %._crit_edge199, label %.lr.ph198

.lr.ph198:                                        ; preds = %.lr.ph198.preheader, %bb.an
  %indvars.iv201 = phi i64 [ 1, %.lr.ph198.preheader ], [ %indvars.iv.next202, %bb.an ] ; 2 uses
  %i.er = getelementptr inbounds nuw [96 x i8], ptr %i.ee, i64 %indvars.iv201 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i32, ptr %i.es, align 8, !tbaa !144
  %.not187 = icmp eq i32 %i.et, 1
  br i1 %.not187, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph198
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !146
  %.not188 = icmp eq i32 %i.ev, 1
  br i1 %.not188, label %bb.an, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph198
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @JPEGPreDecode.module, ptr noundef nonnull @.str.24) #16
  br label %bb.bb

bb.aq:                                            ; preds = %bb.al
  %.not178 = icmp eq i32 %i.eg, 1
  br i1 %.not178, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !146
  %.not179 = icmp eq i32 %i.ex, 1
  br i1 %.not179, label %.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGPreDecode.module, ptr noundef nonnull @.str.24) #16
  br label %bb.bb

._crit_edge199:                                   ; preds = %bb.an, %.preheader
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  %i.ez = load i16, ptr %i.ey, align 8, !tbaa !74
  %i.fa = icmp eq i16 %i.ez, 6
  br i1 %i.fa, label %bb.at, label %.thread

bb.at:                                            ; preds = %._crit_edge199
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 1328
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !77
  %i.fd = icmp eq i32 %i.fc, 1
  br i1 %i.fd, label %bb.au, label %.thread

bb.au:                                            ; preds = %bb.at
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 3, ptr %i.fe, align 4, !tbaa !21
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 2, ptr %i.ff, align 8, !tbaa !21
  br label %bb.ay

.thread:                                          ; preds = %bb.ar, %bb.at, %._crit_edge199
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 0, ptr %i.fg, align 4, !tbaa !21
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 0, ptr %i.fh, align 8, !tbaa !21
  %i.fi = load i16, ptr %i.aj, align 2, !tbaa !75
  %i.fj = icmp eq i16 %i.fi, 1
  br i1 %i.fj, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %.thread
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 1170
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !80
  %.not182 = icmp eq i16 %i.fl, 1
  br i1 %.not182, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 1172
  %i.fn = load i16, ptr %i.fm, align 4, !tbaa !81
  %.not183 = icmp eq i16 %i.fn, 1
  br i1 %.not183, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 1, ptr %i.fo, align 4, !tbaa !21
  br label %bb.ay

bb.ay:                                            ; preds = %.thread, %bb.aw, %bb.au, %bb.ax
  %.sink237 = phi i64 [ 100, %bb.ax ], [ 92, %bb.au ], [ 92, %bb.aw ], [ 92, %.thread ]
  %JPEGDecode.sink234 = phi ptr [ @DecodeRowError, %bb.ax ], [ @JPEGDecode, %bb.au ], [ @JPEGDecode, %bb.aw ], [ @JPEGDecode, %.thread ]
  %JPEGDecode.sink232 = phi ptr [ @JPEGDecodeRaw, %bb.ax ], [ @JPEGDecode, %bb.au ], [ @JPEGDecode, %bb.aw ], [ @JPEGDecode, %.thread ] ; 2 uses
  %.not184192 = phi i1 [ false, %bb.ax ], [ true, %bb.au ], [ true, %bb.aw ], [ true, %.thread ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink237
  store i32 0, ptr %i.fp, align 4, !tbaa !21
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %JPEGDecode.sink234, ptr %i.fq, align 8, !tbaa !54
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr %JPEGDecode.sink232, ptr %i.fr, align 8, !tbaa !55
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr %JPEGDecode.sink232, ptr %i.fs, align 8, !tbaa !56
  %i.ft = tail call fastcc i32 @TIFFjpeg_start_decompress(ptr noundef nonnull %i.b)
  %.not185 = icmp eq i32 %i.ft, 0                 ; 2 uses
  %brmerge = or i1 %.not184192, %.not185
  %not..not185 = xor i1 %.not185, true
  %.mux = zext i1 %not..not185 to i32
  br i1 %brmerge, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !21
  %i.fw = load i32, ptr %i.bz, align 8, !tbaa !21
  %.val = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.fx = tail call fastcc i32 @alloc_downsampled_buffers(ptr %.val, ptr noundef %i.fv, i32 noundef %i.fw)
  %.not186 = icmp eq i32 %i.fx, 0
  br i1 %.not186, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 1264
  store i32 8, ptr %i.fy, align 8, !tbaa !149
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ay, %bb.ba, %bb.az, %.critedge, %bb.d, %bb.c, %bb.as, %bb.ap, %._crit_edge211, %bb.ab, %bb.z, %._crit_edge208, %bb.k
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %bb.k ], [ 0, %._crit_edge208 ], [ 0, %bb.z ], [ 0, %bb.ab ], [ 0, %._crit_edge211 ], [ 0, %bb.ap ], [ 0, %bb.az ], [ %.mux, %bb.ay ], [ 0, %bb.d ], [ 0, %bb.as ], [ 0, %.critedge ], [ 1, %bb.ba ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @JPEGDecode(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !139
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1104 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !100
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1112 ; 2 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1176 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !142  ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %2, i1 false)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.m = sdiv i64 %2, %i.k
  %i.n = srem i64 %2, %i.k
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !150
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef %i.o, ptr noundef nonnull @.str.33) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21
  %i.r = zext i32 %i.q to i64
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %i.r) ; 4 uses
  %.not78 = icmp eq i64 %spec.select, 0
  br i1 %.not78, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 296 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !21
  %i.u = icmp eq i32 %i.t, 12
  br i1 %i.u, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 844
  br label %.split89.thread

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !21
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul i64 %i.z, %i.ac
  %i.ae = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.ad) #16 ; 4 uses
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !151
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 844 ; 3 uses
  %4 = icmp eq ptr %i.ae, null
  br i1 %4, label %.split89.thread, label %.split

.split89.thread:                                  ; preds = %bb.g, %.thread
  %i.ai = phi ptr [ %i.v, %.thread ], [ %i.ah, %bb.g ] ; 2 uses
  %.promoted = load i32, ptr %i.ai, align 4, !tbaa !141
  %i.aj = trunc i64 %spec.select to i32
  %i.ak = add i32 %.promoted, %i.aj
  %i.al = add i32 %i.ak, 1
  %smin100 = tail call i64 @llvm.smin.i64(i64 %spec.select, i64 1)
  %i.am = trunc i64 %smin100 to i32
  %i.an = sub i32 %i.al, %i.am
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !141
  br label %bb.n

.split:                                           ; preds = %bb.g, %.loopexit
  %5 = phi ptr [ %7, %.loopexit ], [ %i.ae, %bb.g ]
  %6 = phi ptr [ %8, %.loopexit ], [ %i.ae, %bb.g ]
  %.067.a = phi i64 [ %i.dd, %.loopexit ], [ %spec.select, %bb.g ] ; 2 uses
  %.067 = phi i64 [ %i.dc, %.loopexit ], [ %2, %bb.g ] ; 2 uses
  %.066 = phi ptr [ %i.db, %.loopexit ], [ %1, %bb.g ] ; 12 uses
  %.not79 = icmp eq ptr %6, null
  br i1 %.not79, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.split
  %i.ao = call fastcc i32 @TIFFjpeg_read_scanlines(ptr noundef nonnull %i.c, ptr noundef %i.a)
  %.not80 = icmp eq i32 %i.ao, 1
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !151 ; 26 uses
  br i1 %.not80, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr align 1 %.066, i8 0, i64 %.067, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %i.s, align 8, !tbaa !21
  switch i32 %i.ap, label %.loopexit [
    i32 12, label %bb.j
    i32 8, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.af, align 8, !tbaa !21
  %i.ar = load i32, ptr %i.ag, align 8, !tbaa !21
  %i.as = mul i32 %i.ar, %i.aq
  %i.at = lshr i32 %i.as, 1                       ; 2 uses
  %.not90 = icmp eq i32 %i.at, 0
  br i1 %.not90, label %.loopexit, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.j
  %wide.trip.count98 = zext nneg i32 %i.at to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph87, %bb.k
  %indvars.iv95 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next96, %bb.k ] ; 3 uses
  %i.au = mul nuw nsw i64 %indvars.iv95, 3
  %i.av = getelementptr inbounds nuw i8, ptr %.066, i64 %i.au ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv95, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx ; 3 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !79
  %i.ay = lshr i16 %i.ax, 4
  %i.az = trunc i16 %i.ay to i8
  store i8 %i.az, ptr %i.av, align 1, !tbaa !21
  %i.ba = load i16, ptr %i.aw, align 2, !tbaa !79
  %i.bb = shl i16 %i.ba, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 2 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !79
  %i.be = lshr i16 %i.bd, 8
  %i.bf = and i16 %i.be, 15
  %i.bg = or disjoint i16 %i.bf, %i.bb
  %i.bh = trunc i16 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !21
  %i.bj = load i16, ptr %i.bc, align 2, !tbaa !79
  %i.bk = trunc i16 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !21
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %.loopexit, label %bb.k

bb.l:                                             ; preds = %bb.i
  %i.bm = load i32, ptr %i.af, align 8, !tbaa !21
  %i.bn = load i32, ptr %i.ag, align 8, !tbaa !21
  %i.bo = mul i32 %i.bn, %i.bm                    ; 4 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.l
  %wide.trip.count = zext nneg i32 %i.bo to i64   ; 10 uses
  %min.iters.check = icmp ult i32 %i.bo, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.066, i64 %wide.trip.count
  %i.bq = shl nuw nsw i64 %wide.trip.count, 1
  %scevgep111 = getelementptr i8, ptr %.pre, i64 %i.bq
  %bound0 = icmp ult ptr %.066, %scevgep111
  %bound1 = icmp ult ptr %.pre, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check112 = icmp ult i32 %i.bo, 16
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load = load <8 x i16>, ptr %i.br, align 2, !tbaa !79, !alias.scope !152
  %wide.load113 = load <8 x i16>, ptr %i.bs, align 2, !tbaa !79, !alias.scope !152
  %i.bt = trunc <8 x i16> %wide.load to <8 x i8>
  %i.bu = trunc <8 x i16> %wide.load113 to <8 x i8>
  %i.bv = getelementptr inbounds nuw i8, ptr %.066, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store <8 x i8> %i.bt, ptr %i.bv, align 1, !tbaa !21, !alias.scope !155, !noalias !152
  store <8 x i8> %i.bu, ptr %i.bw, align 1, !tbaa !21, !alias.scope !155, !noalias !152
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !160

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec115 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index116 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next118, %vec.epilog.vector.body ] ; 3 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %index116
  %wide.load117 = load <4 x i16>, ptr %i.by, align 2, !tbaa !79, !alias.scope !152
  %i.bz = trunc <4 x i16> %wide.load117 to <4 x i8>
  %i.ca = getelementptr inbounds nuw i8, ptr %.066, i64 %index116
  store <4 x i8> %i.bz, ptr %i.ca, align 1, !tbaa !21, !alias.scope !155, !noalias !152
  %index.next118 = add nuw i64 %index116, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next118, %n.vec115
  br i1 %i.cb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !161

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n119 = icmp eq i64 %n.vec115, %wide.trip.count
  br i1 %cmp.n119, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec115, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %indvars.iv.prol
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !79
  %i.ce = trunc i16 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %.066, i64 %indvars.iv.prol
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !21
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !162

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.cg = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %indvars.iv
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !79
  %i.ck = trunc i16 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %.066, i64 %indvars.iv
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %indvars.iv.next
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !79
  %i.co = trunc i16 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.066, i64 %indvars.iv.next
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %indvars.iv.next.1
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !79
  %i.cs = trunc i16 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.066, i64 %indvars.iv.next.1
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !21
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %indvars.iv.next.2
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !79
  %i.cw = trunc i16 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %.066, i64 %indvars.iv.next.2
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !164

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %bb.k, %middle.block, %vec.epilog.middle.block, %bb.l, %bb.j, %bb.i, %.split
  %7 = phi ptr [ %.pre, %middle.block ], [ %5, %.split ], [ %.pre, %bb.l ], [ %.pre, %bb.j ], [ %.pre, %bb.i ], [ %.pre, %bb.k ], [ %.pre, %vec.epilog.middle.block ], [ %.pre, %vec.epilog.scalar.ph ], [ %.pre, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %8 = phi ptr [ %.pre, %middle.block ], [ null, %.split ], [ %.pre, %bb.l ], [ %.pre, %bb.j ], [ %.pre, %bb.i ], [ %.pre, %bb.k ], [ %.pre, %vec.epilog.middle.block ], [ %.pre, %vec.epilog.scalar.ph ], [ %.pre, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.cy = load i32, ptr %i.ah, align 4, !tbaa !141
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.ah, align 4, !tbaa !141
  %i.da = load i64, ptr %i.j, align 8, !tbaa !142 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.066, i64 %i.da
  %i.dc = sub nsw i64 %.067, %i.da
  %i.dd = add nsw i64 %.067.a, -1
  %i.de = icmp sgt i64 %.067.a, 1
  br i1 %i.de, label %.split, label %.split89, !llvm.loop !165

.split89:                                         ; preds = %.loopexit
  %.not81 = icmp eq ptr %7, null
  br i1 %.not81, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split89
  call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %7) #16
  br label %bb.n

bb.n:                                             ; preds = %.split89.thread, %.split89, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  %i.df = load ptr, ptr %i.f, align 8, !tbaa !99
  store ptr %i.df, ptr %i.d, align 8, !tbaa !139
  %i.dg = load i64, ptr %i.i, align 8, !tbaa !101
  store i64 %i.dg, ptr %i.g, align 8, !tbaa !100
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !21
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !21
  %i.dl = icmp ult i32 %i.di, %i.dk
  br i1 %i.dl, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = call fastcc i32 @TIFFjpeg_finish_decompress(ptr noundef nonnull %i.c)
  %i.dn = icmp ne i32 %i.dm, 0
  %i.do = zext i1 %i.dn to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %.critedge, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %.critedge ], [ 1, %bb.o ], [ %i.do, %bb.p ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @JPEGPreEncode(ptr noundef %0, i16 noundef zeroext %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 40 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !66
  %i.k = and i32 %i.j, 1024
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.m = load i32, ptr %i.l, align 4, !tbaa !85
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i32, ptr %i.n, align 8, !tbaa !84
  %i.p = tail call i64 @TIFFTileRowSize(ptr noundef nonnull %0) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !140
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.t = load i32, ptr %i.s, align 4, !tbaa !87
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.v = load i32, ptr %i.u, align 4, !tbaa !141
  %i.w = sub i32 %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.y = load i32, ptr %i.x, align 4, !tbaa !86
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.y)
  %i.z = tail call i64 @TIFFScanlineSize(ptr noundef nonnull %0) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ %i.z, %bb.e ], [ %i.p, %bb.d ]
  %.0101 = phi i32 [ %i.r, %bb.e ], [ %i.m, %bb.d ] ; 3 uses
  %.1100 = phi i32 [ %spec.select, %bb.e ], [ %i.o, %bb.d ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1176
  store i64 %.sink, ptr %i.aa, align 8, !tbaa !142
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 170 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !75
  %i.ad = icmp eq i16 %i.ac, 2
  %i.ae = zext i16 %1 to i32
  %i.af = icmp ne i16 %1, 0                       ; 2 uses
  %or.cond = and i1 %i.af, %i.ad
  br i1 %or.cond, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 1170
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !80 ; 2 uses
  %i.ai = zext i16 %i.ah to i32                   ; 3 uses
  %i.aj = icmp eq i16 %i.ah, 0
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 1172
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !81 ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGPreEncode.module, ptr noundef nonnull @.str.14) #16
  br label %alloc_downsampled_buffers.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.an = sub nsw i32 0, %i.ai
  %i.ao = icmp ult i32 %.0101, %i.an
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = add i32 %.0101, -1
  %i.aq = add i32 %i.ap, %i.ai
  %i.ar = udiv i32 %i.aq, %i.ai
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.as = phi i32 [ %i.ar, %bb.k ], [ 0, %bb.j ]  ; 2 uses
  %i.at = zext i16 %i.al to i32                   ; 3 uses
  %i.au = sub nsw i32 0, %i.at
  %i.av = icmp ult i32 %.1100, %i.au
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = add i32 %.1100, -1
  %i.ax = add i32 %i.aw, %i.at
  %i.ay = udiv i32 %i.ax, %i.at
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.f
  %.1102 = phi i32 [ %.0101, %bb.f ], [ %i.as, %bb.l ], [ %i.as, %bb.m ] ; 2 uses
  %.2 = phi i32 [ %.1100, %bb.f ], [ 0, %bb.l ], [ %i.ay, %bb.m ] ; 2 uses
  %i.az = icmp ugt i32 %.1102, 65500
  %i.ba = icmp ugt i32 %.2, 65500
  %or.cond4 = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond4, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGPreEncode.module, ptr noundef nonnull @.str.34, i32 noundef 65500) #16
  br label %alloc_downsampled_buffers.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %.1102, ptr %i.bb, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 %.2, ptr %i.bc, align 4, !tbaa !21
  %i.bd = load i16, ptr %i.ab, align 2, !tbaa !75
  %i.be = icmp eq i16 %i.bd, 1
  br i1 %i.be, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !76
  %i.bh = zext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !74
  %i.bl = icmp eq i16 %i.bk, 6
  br i1 %i.bl, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 1328
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !77
  %.not109 = icmp eq i32 %i.bn, 1
  br i1 %.not109, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 1170
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !80
  %.not110 = icmp eq i16 %i.bp, 1
  br i1 %.not110, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 1172
  %i.br = load i16, ptr %i.bq, align 4, !tbaa !81
  %.not111 = icmp eq i16 %i.br, 1
  br i1 %.not111, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.r
  %i.bs = phi i1 [ false, %bb.u ], [ true, %bb.t ], [ true, %bb.r ]
  %i.bt = tail call fastcc i32 @TIFFjpeg_set_colorspace(ptr noundef nonnull %i.b, i32 noundef 3)
  %.not112 = icmp eq i32 %i.bt, 0
  br i1 %.not112, label %alloc_downsampled_buffers.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 1170
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !80
  %i.bw = zext i16 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %i.bw, ptr %i.bz, align 8, !tbaa !144
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 1172
  %i.cb = load i16, ptr %i.ca, align 4, !tbaa !81
  %i.cc = zext i16 %i.cb to i32
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !21
end_hunk_0
