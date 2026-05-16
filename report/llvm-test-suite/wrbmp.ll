inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@jinit_write_bmp:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 0, ptr %i.ah, align 4, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58 ; 2 uses
  %.not44 = icmp eq ptr %i.aj, null
  br i1 %.not44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 36 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !59
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62
  %i.aq = tail call ptr %i.ap(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.x, i32 noundef 1) #7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 1, ptr %i.as, align 8, !tbaa !64
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @start_output_bmp(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_output_bmp(ptr noundef %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca [14 x i8], align 1                ; 11 uses
  %i.b = alloca [40 x i8], align 16               ; 16 uses
  %i.c = alloca [14 x i8], align 1                ; 11 uses
  %i.d = alloca [12 x i8], align 1                ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !41
  %.not = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.l = load i32, ptr %i.k, align 8, !tbaa !42
  %i.m = icmp eq i32 %i.l, 2
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.o = load i32, ptr %i.n, align 4, !tbaa !44
  %.not.i = icmp ne i32 %i.o, 0                   ; 3 uses
  %..i = select i1 %.not.i, i8 8, i8 24
  %.35.i = select i1 %.not.i, i32 256, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.031.i = phi i8 [ %..i, %bb.c ], [ 8, %bb.b ]
  %i.p = phi i1 [ %.not.i, %bb.c ], [ true, %bb.b ]
  %.0.i = phi i32 [ %.35.i, %bb.c ], [ 256, %bb.b ] ; 2 uses
  %i.q = mul nuw nsw i32 %.0.i, 3                 ; 2 uses
  %i.r = or disjoint i32 %i.q, 26
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.v = load i32, ptr %i.u, align 4, !tbaa !55   ; 2 uses
  %i.w = mul i32 %i.v, %i.t
  %i.x = add i32 %i.r, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i32 0, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 0, ptr %i.z, align 1
  store i8 66, ptr %i.c, align 1, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 77, ptr %i.aa, align 1, !tbaa !66
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i32 %i.x, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i8 26, ptr %i.ac, align 1, !tbaa !66
  %i.ad = lshr exact i32 %i.q, 8
  %i.ae = trunc nuw nsw i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i8 0, ptr %i.ag, align 1, !tbaa !66
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  store i8 0, ptr %i.ah, align 1, !tbaa !66
  store i8 12, ptr %i.d, align 1, !tbaa !66
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 0, ptr %i.ai, align 1, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.am = trunc i32 %i.ak to i16
  store i16 %i.am, ptr %i.al, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.ao = trunc i32 %i.v to i16
  store i16 %i.ao, ptr %i.an, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 1, ptr %i.ap, align 1, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 0, ptr %i.aq, align 1, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  store i8 %.031.i, ptr %i.ar, align 1, !tbaa !66
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  store i8 0, ptr %i.as, align 1, !tbaa !66
  %i.at = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 14, ptr noundef %i.f)
  %.not32.i = icmp eq i64 %i.at, 14
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i32 36, ptr %i.av, align 8, !tbaa !46
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !48
  tail call void %i.aw(ptr noundef nonnull %0) #7, !inline_history !67
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.ay = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 12, ptr noundef %i.ax)
  %.not33.i = icmp eq i64 %i.ay, 12
  br i1 %.not33.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store i32 36, ptr %i.ba, align 8, !tbaa !46
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !48
  tail call void %i.bb(ptr noundef nonnull %0) #7, !inline_history !67
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %i.p, label %bb.i, label %write_os2_header.exit

bb.i:                                             ; preds = %bb.h
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !65
  tail call fastcc void @write_colormap(ptr noundef nonnull %0, ptr %.val.i, i32 noundef %.0.i, i32 noundef 3)
  br label %write_os2_header.exit

write_os2_header.exit:                            ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.bc = load i32, ptr %i.k, align 8, !tbaa !42
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !44
  %.not.i46 = icmp ne i32 %i.bf, 0                ; 3 uses
  %..i47 = select i1 %.not.i46, i8 8, i8 24
  %.50.i = select i1 %.not.i46, i32 256, i32 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.046.i = phi i8 [ %..i47, %bb.k ], [ 8, %bb.j ]
  %i.bg = phi i1 [ %.not.i46, %bb.k ], [ true, %bb.j ]
  %.0.i44 = phi i32 [ %.50.i, %bb.k ], [ 256, %bb.j ] ; 4 uses
  %i.bh = shl nuw nsw i32 %.0.i44, 2
  %i.bi = or disjoint i32 %i.bh, 54
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !52
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i32 0, ptr %i.bm, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  store i8 66, ptr %i.a, align 1, !tbaa !66
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 77, ptr %i.bn, align 1, !tbaa !66
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 54, ptr %i.bp, align 1, !tbaa !66
  %i.bq = lshr exact i32 %.0.i44, 6
  %i.br = trunc nuw nsw i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !66
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 0, ptr %i.bt, align 1, !tbaa !66
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 0, ptr %i.bu, align 1, !tbaa !66
  store i8 40, ptr %i.b, align 16, !tbaa !66
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bx = load i32, ptr %i.bl, align 4, !tbaa !55
  %i.by = load <2 x i32>, ptr %i.bv, align 8, !tbaa !4
  %i.bz = mul i32 %i.bx, %i.bk
  %i.ca = add i32 %i.bi, %i.bz
  store i32 %i.ca, ptr %i.bo, align 1
  store <2 x i32> %i.by, ptr %i.bw, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 1, ptr %i.cb, align 4, !tbaa !66
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 %.046.i, ptr %i.cc, align 2, !tbaa !66
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !68
  %i.cf = icmp eq i8 %i.ce, 2
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 370
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !69 ; 3 uses
  %i.ci = trunc i16 %i.ch to i8
  %i.cj = mul i8 %i.ci, 100
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 %i.cj, ptr %i.ck, align 8, !tbaa !66
  %i.cl = mul i16 %i.ch, 100
  %i.cm = lshr i16 %i.cl, 8
  %i.cn = trunc nuw i16 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !66
  %i.cp = zext i16 %i.ch to i32
  %i.cq = mul nuw nsw i32 %i.cp, 100
  %i.cr = lshr i32 %i.cq, 16
  %i.cs = trunc nuw nsw i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 %i.cs, ptr %i.ct, align 2, !tbaa !66
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.cv = load i16, ptr %i.cu, align 4, !tbaa !70 ; 3 uses
  %i.cw = trunc i16 %i.cv to i8
  %i.cx = mul i8 %i.cw, 100
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i8 %i.cx, ptr %i.cy, align 4, !tbaa !66
  %i.cz = mul i16 %i.cv, 100
  %i.da = lshr i16 %i.cz, 8
  %i.db = trunc nuw i16 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !66
  %i.dd = zext i16 %i.cv to i32
  %i.de = mul nuw nsw i32 %i.dd, 100
  %i.df = lshr i32 %i.de, 16
  %i.dg = trunc nuw nsw i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i8 %i.dg, ptr %i.dh, align 2, !tbaa !66
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %i.di, align 16, !tbaa !66
  %i.dj = lshr exact i32 %.0.i44, 8
  %i.dk = trunc nuw nsw i32 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !66
  %i.dm = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 14, ptr noundef %i.f)
  %.not47.i = icmp eq i64 %i.dm, 14
  br i1 %.not47.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dn = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  store i32 36, ptr %i.do, align 8, !tbaa !46
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !48
  tail call void %i.dp(ptr noundef nonnull %0) #7, !inline_history !71
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dq = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.dr = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 40, ptr noundef %i.dq)
  %.not48.i = icmp eq i64 %i.dr, 40
  br i1 %.not48.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  store i32 36, ptr %i.dt, align 8, !tbaa !46
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !48
  tail call void %i.du(ptr noundef nonnull %0) #7, !inline_history !71
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %i.bg, label %bb.s, label %write_bmp_header.exit

bb.s:                                             ; preds = %bb.r
  %.val.i45 = load ptr, ptr %i.e, align 8, !tbaa !65
  tail call fastcc void @write_colormap(ptr noundef nonnull %0, ptr %.val.i45, i32 noundef %.0.i44, i32 noundef 4)
  br label %write_bmp_header.exit

write_bmp_header.exit:                            ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.t

bb.t:                                             ; preds = %write_bmp_header.exit, %write_os2_header.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !55 ; 3 uses
  %.not3951 = icmp eq i32 %i.dw, 0
  br i1 %.not3951, label %._crit_edge, label %.lr.ph53

.lr.ph53:                                         ; preds = %bb.t
  %.not42 = icmp eq ptr %i.h, null
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  br i1 %.not42, label %.lr.ph53.split.us, label %.lr.ph53.split

.lr.ph53.split.us:                                ; preds = %.lr.ph53, %.loopexit.us
  %.03752.us = phi i32 [ %i.eg, %.loopexit.us ], [ %i.dw, %.lr.ph53 ]
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !72
  %i.ef = load ptr, ptr %i.ea, align 8, !tbaa !56
  %i.eg = add i32 %.03752.us, -1                  ; 3 uses
  %i.eh = tail call ptr %i.ee(ptr noundef nonnull %0, ptr noundef %i.ef, i32 noundef %i.eg, i32 noundef 1, i32 noundef 0) #7
  %i.ei = load i32, ptr %i.eb, align 4, !tbaa !52 ; 2 uses
  %.not4348.us = icmp eq i32 %i.ei, 0
  br i1 %.not4348.us, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph53.split.us
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !73
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.050.us = phi ptr [ %i.en, %.lr.ph.us ], [ %i.ej, %.lr.ph.us.preheader ] ; 2 uses
  %.03649.us = phi i32 [ %i.eo, %.lr.ph.us ], [ %i.ei, %.lr.ph.us.preheader ]
  %i.ek = load i8, ptr %.050.us, align 1, !tbaa !66
  %i.el = zext i8 %i.ek to i32
  %i.em = tail call i32 @putc(i32 noundef %i.el, ptr noundef %i.f) ; 0 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.050.us, i64 1
  %i.eo = add i32 %.03649.us, -1                  ; 2 uses
  %.not43.us = icmp eq i32 %i.eo, 0
  br i1 %.not43.us, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !74

.loopexit.us:                                     ; preds = %.lr.ph.us, %.lr.ph53.split.us
  %.not39.us = icmp eq i32 %i.eg, 0
  br i1 %.not39.us, label %._crit_edge, label %.lr.ph53.split.us, !llvm.loop !76

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph53.split
  %.not39 = icmp eq i32 %i.ey, 0
  br i1 %.not39, label %._crit_edge.thread, label %.lr.ph53.split, !llvm.loop !76

.lr.ph53.split:                                   ; preds = %.lr.ph53, %.loopexit
  %.03752 = phi i32 [ %i.ey, %.loopexit ], [ %i.dw, %.lr.ph53 ] ; 2 uses
  %i.ep = load i32, ptr %i.dv, align 4, !tbaa !55 ; 2 uses
  %i.eq = sub i32 %i.ep, %.03752
  %i.er = zext i32 %i.eq to i64
  store i64 %i.er, ptr %i.dx, align 8, !tbaa !77
  %i.es = zext i32 %i.ep to i64
  store i64 %i.es, ptr %i.dy, align 8, !tbaa !78
  %i.et = load ptr, ptr %i.h, align 8, !tbaa !79
  tail call void %i.et(ptr noundef nonnull %0) #7
  %i.eu = load ptr, ptr %i.dz, align 8, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !72
  %i.ex = load ptr, ptr %i.ea, align 8, !tbaa !56
  %i.ey = add i32 %.03752, -1                     ; 3 uses
  %i.ez = tail call ptr %i.ew(ptr noundef nonnull %0, ptr noundef %i.ex, i32 noundef %i.ey, i32 noundef 1, i32 noundef 0) #7
  %i.fa = load i32, ptr %i.eb, align 4, !tbaa !52 ; 2 uses
  %.not4348 = icmp eq i32 %i.fa, 0
  br i1 %.not4348, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph53.split
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !73
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.050 = phi ptr [ %i.ff, %.lr.ph ], [ %i.fb, %.lr.ph.preheader ] ; 2 uses
  %.03649 = phi i32 [ %i.fg, %.lr.ph ], [ %i.fa, %.lr.ph.preheader ]
  %i.fc = load i8, ptr %.050, align 1, !tbaa !66
  %i.fd = zext i8 %i.fc to i32
  %i.fe = tail call i32 @putc(i32 noundef %i.fd, ptr noundef %i.f) ; 0 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.050, i64 1
  %i.fg = add i32 %.03649, -1                     ; 2 uses
  %.not43 = icmp eq i32 %i.fg, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %.loopexit.us, %bb.t
  %.not40 = icmp eq ptr %i.h, null
  br i1 %.not40, label %bb.u, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.loopexit, %._crit_edge
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !80
  %i.fj = add nsw i32 %i.fi, 1
  store i32 %i.fj, ptr %i.fh, align 8, !tbaa !80
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.fk = tail call i32 @fflush(ptr noundef %i.f) ; 0 uses
  %i.fl = tail call i32 @ferror(ptr noundef %i.f) #7
  %.not41 = icmp eq i32 %i.fl, 0
  br i1 %.not41, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fm = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
end_hunk_0
