inline.NumInlined: 10
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@do_open:bb.a
.preheader.25:                                    ; preds = %.preheader.24
  %i.be = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 1800), align 8, !tbaa !39, !range !31, !noundef !32
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.preheader.26, label %.loopexit

.preheader.26:                                    ; preds = %.preheader.25
  %i.bg = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 1872), align 16, !tbaa !39, !range !31, !noundef !32
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.preheader.27, label %.loopexit

.preheader.27:                                    ; preds = %.preheader.26
  %i.bi = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 1944), align 8, !tbaa !39, !range !31, !noundef !32
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %.preheader.28, label %.loopexit

.preheader.28:                                    ; preds = %.preheader.27
  %i.bk = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 2016), align 16, !tbaa !39, !range !31, !noundef !32
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.preheader.29, label %.loopexit

.preheader.29:                                    ; preds = %.preheader.28
  %i.bm = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 2088), align 8, !tbaa !39, !range !31, !noundef !32
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %.preheader.30, label %.loopexit

.preheader.30:                                    ; preds = %.preheader.29
  %i.bo = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 2160), align 16, !tbaa !39, !range !31, !noundef !32
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %.preheader.31, label %.loopexit

.preheader.31:                                    ; preds = %.preheader.30
  %i.bq = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 2232), align 8, !tbaa !39, !range !31, !noundef !32
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %.preheader.32, label %.loopexit

.preheader.32:                                    ; preds = %.preheader.31
  %i.bs = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 2304), align 16, !tbaa !39, !range !31, !noundef !32
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %.preheader.33, label %.loopexit

.preheader.33:                                    ; preds = %.preheader.32
  %i.bu = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 2376), align 8, !tbaa !39, !range !31, !noundef !32
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %.preheader.34, label %.loopexit

.preheader.34:                                    ; preds = %.preheader.33
  %i.bw = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 2448), align 16, !tbaa !39, !range !31, !noundef !32
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %.preheader.35, label %.loopexit

.preheader.35:                                    ; preds = %.preheader.34
  %i.by = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 2520), align 8, !tbaa !39, !range !31, !noundef !32
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.preheader.36, label %.loopexit

.preheader.36:                                    ; preds = %.preheader.35
  %i.ca = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 2592), align 16, !tbaa !39, !range !31, !noundef !32
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %.preheader.37, label %.loopexit

.preheader.37:                                    ; preds = %.preheader.36
  %i.cc = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 2664), align 8, !tbaa !39, !range !31, !noundef !32
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %.preheader.38, label %.loopexit

.preheader.38:                                    ; preds = %.preheader.37
  %i.ce = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 2736), align 16, !tbaa !39, !range !31, !noundef !32
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %.preheader.39, label %.loopexit

.preheader.39:                                    ; preds = %.preheader.38
  %i.cg = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 2808), align 8, !tbaa !39, !range !31, !noundef !32
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %.preheader.40, label %.loopexit

.preheader.40:                                    ; preds = %.preheader.39
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 2880), align 16, !tbaa !39, !range !31, !noundef !32
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.preheader.41, label %.loopexit

.preheader.41:                                    ; preds = %.preheader.40
  %i.ck = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 2952), align 8, !tbaa !39, !range !31, !noundef !32
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %.preheader.42, label %.loopexit

.preheader.42:                                    ; preds = %.preheader.41
  %i.cm = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 3024), align 16, !tbaa !39, !range !31, !noundef !32
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %.preheader.43, label %.loopexit

.preheader.43:                                    ; preds = %.preheader.42
  %i.co = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 3096), align 8, !tbaa !39, !range !31, !noundef !32
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %.preheader.44, label %.loopexit

.preheader.44:                                    ; preds = %.preheader.43
  %i.cq = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 3168), align 16, !tbaa !39, !range !31, !noundef !32
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %.preheader.45, label %.loopexit

.preheader.45:                                    ; preds = %.preheader.44
  %i.cs = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 3240), align 8, !tbaa !39, !range !31, !noundef !32
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %.preheader.46, label %.loopexit

.preheader.46:                                    ; preds = %.preheader.45
  %i.cu = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 3312), align 16, !tbaa !39, !range !31, !noundef !32
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %.preheader.47, label %.loopexit

.preheader.47:                                    ; preds = %.preheader.46
  %i.cw = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 3384), align 8, !tbaa !39, !range !31, !noundef !32
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %.preheader.48, label %.loopexit

.preheader.48:                                    ; preds = %.preheader.47
  %i.cy = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 3456), align 16, !tbaa !39, !range !31, !noundef !32
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %.preheader.49, label %.loopexit

.preheader.49:                                    ; preds = %.preheader.48
  %i.da = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 3528), align 8, !tbaa !39, !range !31, !noundef !32
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %.preheader.50, label %.loopexit

.preheader.50:                                    ; preds = %.preheader.49
  %i.dc = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 3600), align 16, !tbaa !39, !range !31, !noundef !32
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %.preheader.51, label %.loopexit

.preheader.51:                                    ; preds = %.preheader.50
  %i.de = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 3672), align 8, !tbaa !39, !range !31, !noundef !32
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %.preheader.52, label %.loopexit

.preheader.52:                                    ; preds = %.preheader.51
  %i.dg = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 3744), align 16, !tbaa !39, !range !31, !noundef !32
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %.preheader.53, label %.loopexit

.preheader.53:                                    ; preds = %.preheader.52
  %i.di = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 3816), align 8, !tbaa !39, !range !31, !noundef !32
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %.preheader.54, label %.loopexit

.preheader.54:                                    ; preds = %.preheader.53
  %i.dk = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 3888), align 16, !tbaa !39, !range !31, !noundef !32
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %.preheader.55, label %.loopexit

.preheader.55:                                    ; preds = %.preheader.54
  %i.dm = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 3960), align 8, !tbaa !39, !range !31, !noundef !32
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %.preheader.56, label %.loopexit

.preheader.56:                                    ; preds = %.preheader.55
  %i.do = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 4032), align 16, !tbaa !39, !range !31, !noundef !32
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %.preheader.57, label %.loopexit

.preheader.57:                                    ; preds = %.preheader.56
  %i.dq = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 4104), align 8, !tbaa !39, !range !31, !noundef !32
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %.preheader.58, label %.loopexit

.preheader.58:                                    ; preds = %.preheader.57
  %i.ds = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 4176), align 16, !tbaa !39, !range !31, !noundef !32
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %.preheader.59, label %.loopexit

.preheader.59:                                    ; preds = %.preheader.58
  %i.du = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 4248), align 8, !tbaa !39, !range !31, !noundef !32
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %.preheader.60, label %.loopexit

.preheader.60:                                    ; preds = %.preheader.59
  %i.dw = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 4320), align 16, !tbaa !39, !range !31, !noundef !32
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %.preheader.61, label %.loopexit

.preheader.61:                                    ; preds = %.preheader.60
  %i.dy = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 4392), align 8, !tbaa !39, !range !31, !noundef !32
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %.preheader.62, label %.loopexit

.preheader.62:                                    ; preds = %.preheader.61
  %i.ea = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 4464), align 16, !tbaa !39, !range !31, !noundef !32
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %.preheader.63, label %.loopexit

.preheader.63:                                    ; preds = %.preheader.62
  %i.ec = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_output_info, i64 4536), align 8, !tbaa !39, !range !31, !noundef !32
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %.thread, label %.loopexit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @free_descriptor(i32 noundef %0)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %.preheader.10, %.preheader.11, %.preheader.12, %.preheader.13, %.preheader.14, %.preheader.15, %.preheader.16, %.preheader.17, %.preheader.18, %.preheader.19, %.preheader.20, %.preheader.21, %.preheader.22, %.preheader.23, %.preheader.24, %.preheader.25, %.preheader.26, %.preheader.27, %.preheader.28, %.preheader.29, %.preheader.30, %.preheader.31, %.preheader.32, %.preheader.33, %.preheader.34, %.preheader.35, %.preheader.36, %.preheader.37, %.preheader.38, %.preheader.39, %.preheader.40, %.preheader.41, %.preheader.42, %.preheader.43, %.preheader.44, %.preheader.45, %.preheader.46, %.preheader.47, %.preheader.48, %.preheader.49, %.preheader.50, %.preheader.51, %.preheader.52, %.preheader.53, %.preheader.54, %.preheader.55, %.preheader.56, %.preheader.57, %.preheader.58, %.preheader.59, %.preheader.60, %.preheader.61, %.preheader.62, %.preheader.63, %bb.f
  %.1 = phi i32 [ %0, %bb.f ], [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ], [ 2, %.preheader.2 ], [ 3, %.preheader.3 ], [ 4, %.preheader.4 ], [ 5, %.preheader.5 ], [ 6, %.preheader.6 ], [ 7, %.preheader.7 ], [ 8, %.preheader.8 ], [ 9, %.preheader.9 ], [ 10, %.preheader.10 ], [ 11, %.preheader.11 ], [ 12, %.preheader.12 ], [ 13, %.preheader.13 ], [ 14, %.preheader.14 ], [ 15, %.preheader.15 ], [ 16, %.preheader.16 ], [ 17, %.preheader.17 ], [ 18, %.preheader.18 ], [ 19, %.preheader.19 ], [ 20, %.preheader.20 ], [ 21, %.preheader.21 ], [ 22, %.preheader.22 ], [ 23, %.preheader.23 ], [ 24, %.preheader.24 ], [ 25, %.preheader.25 ], [ 26, %.preheader.26 ], [ 27, %.preheader.27 ], [ 28, %.preheader.28 ], [ 29, %.preheader.29 ], [ 30, %.preheader.30 ], [ 31, %.preheader.31 ], [ 32, %.preheader.32 ], [ 33, %.preheader.33 ], [ 34, %.preheader.34 ], [ 35, %.preheader.35 ], [ 36, %.preheader.36 ], [ 37, %.preheader.37 ], [ 38, %.preheader.38 ], [ 39, %.preheader.39 ], [ 40, %.preheader.40 ], [ 41, %.preheader.41 ], [ 42, %.preheader.42 ], [ 43, %.preheader.43 ], [ 44, %.preheader.44 ], [ 45, %.preheader.45 ], [ 46, %.preheader.46 ], [ 47, %.preheader.47 ], [ 48, %.preheader.48 ], [ 49, %.preheader.49 ], [ 50, %.preheader.50 ], [ 51, %.preheader.51 ], [ 52, %.preheader.52 ], [ 53, %.preheader.53 ], [ 54, %.preheader.54 ], [ 55, %.preheader.55 ], [ 56, %.preheader.56 ], [ 57, %.preheader.57 ], [ 58, %.preheader.58 ], [ 59, %.preheader.59 ], [ 60, %.preheader.60 ], [ 61, %.preheader.61 ], [ 62, %.preheader.62 ], [ 63, %.preheader.63 ] ; 3 uses
  %i.ee = icmp eq ptr %1, null
  %spec.store.select = select i1 %i.ee, ptr @verbose, ptr %1 ; 9 uses
  %i.ef = sext i32 %.1 to i64
  %i.eg = getelementptr inbounds [72 x i8], ptr @pmix_output_info, i64 %i.ef ; 21 uses
  store i8 1, ptr %i.eg, align 8, !tbaa !39
  %i.eh = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 152
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !50, !range !31, !noundef !32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.ek = xor i8 %i.ei, 1
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !41
  %i.el = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 120
  %i.em = load i32, ptr %i.el, align 8, !tbaa !51
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store i32 %i.em, ptr %i.en, align 4, !tbaa !52
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i8 0, ptr %i.eo, align 8, !tbaa !42
  %i.ep = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 136
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !53 ; 3 uses
  %.not = icmp eq ptr %i.eq, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.er = tail call noalias ptr @strdup(ptr noundef nonnull %i.eq) #20
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store ptr %i.er, ptr %i.es, align 8, !tbaa !54
  %i.et = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eq) #21
  %i.eu = trunc i64 %i.et to i32
  br label %bb.i

bb.h:                                             ; preds = %.loopexit
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store ptr null, ptr %i.ev, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i32 [ 0, %bb.h ], [ %i.eu, %bb.g ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  store i32 %.sink, ptr %i.ew, align 8, !tbaa !55
  %i.ex = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 144
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !56 ; 3 uses
  %.not65 = icmp eq ptr %i.ey, null
  br i1 %.not65, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ez = tail call noalias ptr @strdup(ptr noundef nonnull %i.ey) #20
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !57
  %i.fb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ey) #21
  %i.fc = trunc i64 %i.fb to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  store ptr null, ptr %i.fd, align 8, !tbaa !57
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink72 = phi i32 [ 0, %bb.k ], [ %i.fc, %bb.j ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  store i32 %.sink72, ptr %i.fe, align 8, !tbaa !58
  %i.ff = load i8, ptr @pmix_output_redirected_to_syslog, align 1, !tbaa !19, !range !31, !noundef !32
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 52
  store i8 0, ptr %i.fh, align 4, !tbaa !59
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eg, i64 53
  store i8 0, ptr %i.fi, align 1, !tbaa !60
  %2 = getelementptr inbounds nuw i8, ptr %i.eg, i64 54
  store i8 0, ptr %2, align 2, !tbaa !43
  %3 = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  store i32 -1, ptr %3, align 8, !tbaa !46
  br label %.thread

bb.n:                                             ; preds = %bb.l
  br i1 %.057, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fj = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 154
  %i.fk = load i8, ptr %i.fj, align 2, !tbaa !37, !range !31, !noundef !32
  %i.fl = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 155
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !36, !range !31, !noundef !32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  store i32 -1, ptr %i.fn, align 8, !tbaa !46
  %i.fo = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 156
  %i.fp = load i8, ptr %i.fo, align 4, !tbaa !61, !range !31, !noundef !32
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sink75 = phi i8 [ %i.fk, %bb.o ], [ 0, %bb.n ]
  %.sink74 = phi i8 [ %i.fm, %bb.o ], [ 0, %bb.n ]
  %.sink73 = phi i8 [ %i.fp, %bb.o ], [ 1, %bb.n ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eg, i64 52
  store i8 %.sink75, ptr %i.fq, align 4, !tbaa !59
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eg, i64 53
  store i8 %.sink74, ptr %i.fr, align 1, !tbaa !60
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eg, i64 54
  store i8 %.sink73, ptr %i.fs, align 2, !tbaa !43
  %.not66 = icmp eq ptr %i.e, null
  br i1 %.not66, label %bb.q, label %.sink.split

bb.q:                                             ; preds = %bb.p
  %i.ft = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 160
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !8  ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.r, label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.p
  %.sink84.a = phi ptr [ %i.e, %bb.p ], [ %i.fu, %bb.q ]
  %i.fw = tail call noalias ptr @strdup(ptr noundef nonnull %.sink84.a) #20
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.q
  %.sink82 = phi ptr [ null, %bb.q ], [ %i.fw, %.sink.split ]
  %4 = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  store ptr %.sink82, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 157
  %6 = load i8, ptr %5, align 1, !tbaa !62, !range !31, !noundef !32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eg, i64 55
  store i8 %6, ptr %i.fx, align 1, !tbaa !45
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eg, i64 68
  store i32 0, ptr %i.fy, align 4, !tbaa !47
  br label %.thread

.thread:                                          ; preds = %.preheader.63, %bb.m, %bb.r
  %.0 = phi i32 [ %.1, %bb.m ], [ %.1, %bb.r ], [ -29, %.preheader.63 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, -1) i32 @pmix_output_reopen(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @do_open(i32 noundef %0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define zeroext i1 @pmix_output_switch(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %.b = load i1, ptr @initialized, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @pmix_output_init() ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %or.cond = icmp ult i32 %0, 64
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !41, !range !31, !noundef !32
  store i8 %i.a, ptr %i.e, align 1, !tbaa !41
  %i.g = trunc nuw i8 %i.f to i1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ %i.g, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define void @pmix_output_reopen_all() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.a, i8 0, i64 65, i1 false)
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.1) #20 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 10) #20, !inline_history !17
  %i.d = trunc i64 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i32 [ %i.d, %bb.b ], [ -1, %bb.a ]
  store i32 %storemerge, ptr @default_stderr_fd, align 4, !tbaa !18
  %i.e = call i32 @gethostname(ptr noundef nonnull %i.a, i64 noundef 65) #20 ; 0 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @verbose, i64 136), align 8, !tbaa !53 ; 2 uses
  %.not3 = icmp eq ptr %i.f, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef nonnull %i.f) #20
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @verbose, i64 136), align 8, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = call i32 @getpid() #20
  %i.h = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @verbose, i64 136), ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a, i32 noundef %i.g) #20
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @verbose, i64 136), align 8, !tbaa !53
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @pmix_output_close(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %.b = load i1, ptr @initialized, align 1
  %or.cond = icmp ult i32 %0, 64
  %or.cond11 = and i1 %or.cond, %.b
  br i1 %or.cond11, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.a ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !39, !range !31, !noundef !32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !41, !range !31, !noundef !32
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.c
  tail call fastcc void @free_descriptor(i32 noundef %0)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_descriptor(i32 noundef range(i32 0, -1) %0) unnamed_addr #2 {
bb.a:
  %or.cond = icmp ult i32 %0, 64
  br i1 %or.cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.a ; 8 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !39, !range !31, !noundef !32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !41, !range !31, !noundef !32
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq i32 %i.i, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @close(i32 noundef %i.i) #20 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i8 0, ptr %i.b, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54   ; 2 uses
  %.not25 = icmp eq ptr %i.l, null
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.l) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.k, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57   ; 2 uses
  %.not26 = icmp eq ptr %i.n, null
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.n) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr null, ptr %i.m, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44   ; 2 uses
  %.not27 = icmp eq ptr %i.p, null
  br i1 %.not27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.p) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr null, ptr %i.o, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63   ; 2 uses
  %.not28 = icmp eq ptr %i.r, null
  br i1 %.not28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.r) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr null, ptr %i.q, align 8, !tbaa !63
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @pmix_output(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca [8192 x i8], align 16             ; 7 uses
end_hunk_0
