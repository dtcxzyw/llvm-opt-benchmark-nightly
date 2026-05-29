inline.NumInlined: 116
inline.NumDeleted: 70
begin_hunk_0_@_ZN8ultrahdr17JpegDecoderHelper6decodeEPKvmNS_13decode_mode_tE:bb.a
  store i64 -1, ptr %i.al, align 8, !tbaa !70
  %.not31.i94 = icmp eq ptr %.02130.i93.pr, null
  br i1 %.not31.i94, label %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit122, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit, %bb.k
  %.02133.i96 = phi ptr [ %.021.i98, %bb.k ], [ %.02130.i93.pr, %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit ] ; 7 uses
  %.02232.i97 = phi i32 [ %i.bn, %bb.k ], [ 2, %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit ]
  %i.am = add i32 %.02232.i97, 4                  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02133.i96, i64 8
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !71
  %i.ap = icmp eq i8 %i.ao, -31
  br i1 %i.ap, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.lr.ph.i95
  %i.aq = getelementptr inbounds nuw i8, ptr %.02133.i96, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !73 ; 2 uses
  %i.as = icmp ugt i32 %i.ar, 6
  br i1 %i.as, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.02133.i96, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !74 ; 2 uses
  %i.av = load i32, ptr %i.au, align 1
  %i.aw = xor i32 %i.av, 1718188101
  %i.ax = getelementptr i8, ptr %i.au, i64 4
  %i.ay = load i16, ptr %i.ax, align 1
  %i.az = zext i16 %i.ay to i32
  %i.ba = or i32 %i.aw, %i.az
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %.not25.i101 = icmp eq i32 %i.bc, 0
  br i1 %.not25.i101, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.02133.i96, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.02133.i96, i64 24
  %i.bf = zext i32 %i.ar to i64
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %i.bf)
  %i.bg = load ptr, ptr %i.ak, align 8, !tbaa !53
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !74
  %i.bi = load i32, ptr %i.bd, align 8, !tbaa !73
  %i.bj = zext i32 %i.bi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.bh, i64 %i.bj, i1 false)
  %i.bk = zext i32 %i.am to i64
  store i64 %i.bk, ptr %i.al, align 8, !tbaa !70
  %.02130.i103.pr.pre = load ptr, ptr %i.l, align 8, !tbaa !69
  br label %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit102

bb.k:                                             ; preds = %bb.i, %bb.h, %.lr.ph.i95
  %i.bl = getelementptr inbounds nuw i8, ptr %.02133.i96, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !77
  %i.bn = add i32 %i.bm, %i.am
  %.021.i98 = load ptr, ptr %.02133.i96, align 8, !tbaa !69 ; 2 uses
  %.not.i99 = icmp eq ptr %.021.i98, null
  br i1 %.not.i99, label %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit102, label %.lr.ph.i95, !llvm.loop !75

_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit102: ; preds = %bb.k, %bb.j
  %.02130.i103.pr = phi ptr [ %.02130.i103.pr.pre, %bb.j ], [ %.02130.i93.pr, %bb.k ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.not31.i104 = icmp eq ptr %.02130.i103.pr, null
  br i1 %.not31.i104, label %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit122, label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit102, %bb.o
  %.02133.i106 = phi ptr [ %.021.i108, %bb.o ], [ %.02130.i103.pr, %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit102 ] ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.02133.i106, i64 8
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !71
  %i.br = icmp eq i8 %i.bq, -30
  br i1 %i.br, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph.i105
  %i.bs = getelementptr inbounds nuw i8, ptr %.02133.i106, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !73 ; 2 uses
  %i.bu = icmp ugt i32 %i.bt, 12
  br i1 %i.bu, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.02133.i106, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !74 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 1
  %i.by = xor i64 %i.bx, 5066358610964202313
  %i.bz = getelementptr i8, ptr %i.bw, i64 8
  %i.ca = load i32, ptr %i.bz, align 1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = xor i64 %i.cb, 4541513
  %i.cd = or i64 %i.by, %i.cc
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %.not25.i111 = icmp eq i32 %i.cf, 0
  br i1 %.not25.i111, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %.02133.i106, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.02133.i106, i64 24
  %i.ci = zext i32 %i.bt to i64
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef %i.ci)
  %i.cj = load ptr, ptr %i.bo, align 8, !tbaa !53
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cl = load i32, ptr %i.cg, align 8, !tbaa !73
  %i.cm = zext i32 %i.cl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.ck, i64 %i.cm, i1 false)
  %.02130.i113.pr.pr.pre = load ptr, ptr %i.l, align 8, !tbaa !69
  br label %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit112

bb.o:                                             ; preds = %bb.m, %bb.l, %.lr.ph.i105
  %.021.i108 = load ptr, ptr %.02133.i106, align 8, !tbaa !69 ; 2 uses
  %.not.i109 = icmp eq ptr %.021.i108, null
  br i1 %.not.i109, label %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit112, label %.lr.ph.i105, !llvm.loop !75

_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit112: ; preds = %bb.o, %bb.n
  %.02130.i113.pr.pr = phi ptr [ %.02130.i113.pr.pr.pre, %bb.n ], [ %.02130.i103.pr, %bb.o ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %.not31.i114 = icmp eq ptr %.02130.i113.pr.pr, null
  br i1 %.not31.i114, label %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit122, label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit112, %bb.s
  %.02133.i116 = phi ptr [ %.021.i118, %bb.s ], [ %.02130.i113.pr.pr, %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit112 ] ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.02133.i116, i64 8
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !71
  %i.cq = icmp eq i8 %i.cp, -30
  br i1 %i.cq, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.lr.ph.i115
  %i.cr = getelementptr inbounds nuw i8, ptr %.02133.i116, i64 16
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !73 ; 2 uses
  %i.ct = icmp ugt i32 %i.cs, 28
  br i1 %i.ct, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %.02133.i116, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !74 ; 2 uses
  %i.cw = load i128, ptr %i.cv, align 1
  %i.cx = xor i128 %i.cw, 77673909520955543506739665176171016821
  %i.cy = getelementptr i8, ptr %i.cv, i64 12
  %i.cz = load i128, ptr %i.cy, align 1
  %i.da = xor i128 %i.cz, 255339866515142478936220972983743337
  %i.db = or i128 %i.cx, %i.da
  %i.dc = icmp ne i128 %i.db, 0
  %i.dd = zext i1 %i.dc to i32
  %.not25.i121 = icmp eq i32 %i.dd, 0
  br i1 %.not25.i121, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.de = getelementptr inbounds nuw i8, ptr %.02133.i116, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %.02133.i116, i64 24
  %i.dg = zext i32 %i.cs to i64
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 noundef %i.dg)
  %i.dh = load ptr, ptr %i.cn, align 8, !tbaa !53
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !74
  %i.dj = load i32, ptr %i.de, align 8, !tbaa !73
  %i.dk = zext i32 %i.dj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.di, i64 %i.dk, i1 false)
  br label %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit122

bb.s:                                             ; preds = %bb.q, %bb.p, %.lr.ph.i115
  %.021.i118 = load ptr, ptr %.02133.i116, align 8, !tbaa !69 ; 2 uses
  %.not.i119 = icmp eq ptr %.021.i118, null
  br i1 %.not.i119, label %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit122, label %.lr.ph.i115, !llvm.loop !75

_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit122: ; preds = %bb.s, %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit.thread, %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit, %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit102, %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit112, %bb.r
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !78 ; 7 uses
  %i.dn = icmp eq i32 %i.dm, 0
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.dp = load i32, ptr %i.do, align 4            ; 7 uses
  %i.dq = icmp eq i32 %i.dp, 0
  %or.cond = select i1 %i.dn, i1 true, i1 %i.dq
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit122
  store i32 1, ptr %0, align 4, !tbaa !49
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.dr, align 4, !tbaa !52
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ds, i64 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %i.dm, i32 noundef %i.dp) #24 ; 0 uses
  br label %.critedge92

bb.u:                                             ; preds = %_ZN8ultrahdrL27jpeg_extract_marker_payloadEP22jpeg_decompress_structjPKhjRSt6vectorIhSaIhEERl.exit122
  %i.du = icmp sgt i32 %i.dm, 8192
  %i.dv = icmp sgt i32 %i.dp, 8192
  %or.cond6 = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond6, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 1, ptr %0, align 4, !tbaa !49
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.dw, align 4, !tbaa !52
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dx, i64 noundef 256, ptr noundef nonnull @.str.4, i32 noundef 8192, i32 noundef 8192, i32 noundef %i.dm, i32 noundef %i.dp) #24 ; 0 uses
  br label %.critedge92

bb.w:                                             ; preds = %bb.u
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !79 ; 9 uses
  %i.eb = and i32 %i.ea, -3
  %or.cond9.not = icmp eq i32 %i.eb, 1
  br i1 %or.cond9.not, label %.lr.ph, label %bb.x

.lr.ph:                                           ; preds = %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 304
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !80
  %wide.trip.count = zext nneg i32 %i.ea to i64   ; 3 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 1, ptr %0, align 4, !tbaa !49
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ee, align 4, !tbaa !52
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ef, i64 noundef 256, ptr noundef nonnull @.str.5, i32 noundef %i.ea) #24 ; 0 uses
  br label %.critedge92

bb.y:                                             ; preds = %.lr.ph, %bb.ae
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ae ] ; 4 uses
  %.066164 = phi i32 [ 0, %.lr.ph ], [ %i.ex, %bb.ae ]
  %i.eh = getelementptr inbounds nuw [96 x i8], ptr %i.ed, i64 %indvars.iv ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !81 ; 3 uses
  %i.ek = add i32 %i.ej, -5
  %or.cond85 = icmp ult i32 %i.ek, -4
  br i1 %or.cond85, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.el = trunc nuw nsw i64 %indvars.iv to i32
  store i32 1, ptr %0, align 4, !tbaa !49
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.em, align 4, !tbaa !52
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.en, i64 noundef 256, ptr noundef nonnull @.str.6, i32 noundef %i.el, i32 noundef %i.ej) #24 ; 0 uses
  br label %.critedge92

bb.aa:                                            ; preds = %bb.y
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !83 ; 3 uses
  %i.er = add i32 %i.eq, -5
  %or.cond86 = icmp ult i32 %i.er, -4
  br i1 %or.cond86, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.es = trunc nuw nsw i64 %indvars.iv to i32
  store i32 1, ptr %0, align 4, !tbaa !49
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.et, align 4, !tbaa !52
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.eu, i64 noundef 256, ptr noundef nonnull @.str.7, i32 noundef %i.es, i32 noundef %i.eq) #24 ; 0 uses
  br label %.critedge92

bb.ac:                                            ; preds = %bb.aa
  %i.ew = mul nuw nsw i32 %i.eq, %i.ej
  %i.ex = add nuw nsw i32 %i.ew, %.066164         ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 10
  br i1 %i.ey, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr %0, align 4, !tbaa !49
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ez, align 4, !tbaa !52
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(126) %i.fa, ptr noundef nonnull align 1 dereferenceable(126) @.str.8, i64 126, i1 false)
  br label %.critedge92

bb.ae:                                            ; preds = %bb.ac
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph166, label %bb.y, !llvm.loop !84

.lr.ph166:                                        ; preds = %bb.ae
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 148
  store i32 %i.ea, ptr %i.fb, align 4, !tbaa !62
  %i.fc = uitofp i32 %i.dm to float               ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 304
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !80 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 408
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !85
  %i.fh = sitofp i32 %i.fg to float               ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.fk = uitofp i32 %i.dp to float               ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 412
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !86
  %i.fn = sitofp i32 %i.fm to float               ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 164 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 188 ; 2 uses
  %wide.trip.count198 = zext nneg i32 %i.ea to i64 ; 2 uses
  %min.iters.check = icmp ult i32 %i.ea, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph166
  %indvars.iv195.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph166 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph166
  %i.fq = shl nuw nsw i64 %wide.trip.count, 2
  %i.fr = getelementptr i8, ptr %1, i64 %i.fq
  %scevgep275 = getelementptr i8, ptr %i.fr, i64 188
  %scevgep276 = getelementptr nuw i8, ptr %i.fe, i64 8
  %i.fs = mul nuw nsw i64 %wide.trip.count, 96
  %i.ft = getelementptr i8, ptr %i.fe, i64 %i.fs
  %scevgep277 = getelementptr i8, ptr %i.ft, i64 -80
  %bound0 = icmp ult ptr %i.fi, %scevgep277
  %bound1 = icmp ult ptr %scevgep276, %scevgep275
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = add nsw i64 %wide.trip.count198, -1    ; 2 uses
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.fc, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert278 = insertelement <2 x float> poison, float %i.fh, i64 0
  %broadcast.splat279 = shufflevector <2 x float> %broadcast.splatinsert278, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert280 = insertelement <2 x float> poison, float %i.fk, i64 0
  %broadcast.splat281 = shufflevector <2 x float> %broadcast.splatinsert280, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert282 = insertelement <2 x float> poison, float %i.fn, i64 0
  %broadcast.splat283 = shufflevector <2 x float> %broadcast.splatinsert282, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.fu = getelementptr inbounds nuw [96 x i8], ptr %i.fe, i64 %index ; 2 uses
  %i.fv = getelementptr inbounds nuw [96 x i8], ptr %i.fe, i64 %index ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 104
  %i.fy = load i32, ptr %i.fw, align 8, !tbaa !81, !alias.scope !87
  %i.fz = load i32, ptr %i.fx, align 8, !tbaa !81, !alias.scope !87
  %i.ga = insertelement <2 x i32> poison, i32 %i.fy, i64 0
  %i.gb = insertelement <2 x i32> %i.ga, i32 %i.fz, i64 1
  %i.gc = sitofp <2 x i32> %i.gb to <2 x float>
  %i.gd = fmul nnan contract <2 x float> %broadcast.splat, %i.gc
  %i.ge = fdiv contract <2 x float> %i.gd, %broadcast.splat279
  %i.gf = call contract <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ge)
  %i.gg = fptoui <2 x float> %i.gf to <2 x i32>   ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index
  store <2 x i32> %i.gg, ptr %i.gh, align 8, !tbaa !3, !alias.scope !90, !noalias !87
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %index
  store <2 x i32> %i.gg, ptr %i.gi, align 8, !tbaa !3, !alias.scope !90, !noalias !87
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fv, i64 108
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !83, !alias.scope !87
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !83, !alias.scope !87
  %i.gn = insertelement <2 x i32> poison, i32 %i.gl, i64 0
  %i.go = insertelement <2 x i32> %i.gn, i32 %i.gm, i64 1
  %i.gp = sitofp <2 x i32> %i.go to <2 x float>
  %i.gq = fmul nnan contract <2 x float> %broadcast.splat281, %i.gp
  %i.gr = fdiv contract <2 x float> %i.gq, %broadcast.splat283
  %i.gs = call contract <2 x float> @llvm.ceil.v2f32(<2 x float> %i.gr)
  %i.gt = fptoui <2 x float> %i.gs to <2 x i32>   ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %index
  store <2 x i32> %i.gt, ptr %i.gu, align 4, !tbaa !3, !alias.scope !90, !noalias !87
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %index
  store <2 x i32> %i.gt, ptr %i.gv, align 4, !tbaa !3, !alias.scope !90, !noalias !87
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gw = icmp eq i64 %index.next, %n.vec
  br i1 %i.gw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !92

._crit_edge:                                      ; preds = %scalar.ph
  %i.gx = icmp eq i32 %i.ea, 3
  br i1 %i.gx, label %bb.af, label %bb.ak

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %scalar.ph ], [ %indvars.iv195.ph, %scalar.ph.preheader ] ; 6 uses
  %i.gy = getelementptr inbounds nuw [96 x i8], ptr %i.fe, i64 %indvars.iv195 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !81
  %i.hb = sitofp i32 %i.ha to float
  %i.hc = fmul nnan contract float %i.fc, %i.hb
  %i.hd = fdiv contract float %i.hc, %i.fh
  %i.he = call contract noundef float @llvm.ceil.f32(float %i.hd)
  %i.hf = fptoui float %i.he to i32               ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv195
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !3
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv195
  store i32 %i.hf, ptr %i.hh, align 4, !tbaa !3
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !83
  %i.hk = sitofp i32 %i.hj to float
  %i.hl = fmul nnan contract float %i.fk, %i.hk
  %i.hm = fdiv contract float %i.hl, %i.fn
  %i.hn = call contract noundef float @llvm.ceil.f32(float %i.hm)
  %i.ho = fptoui float %i.hn to i32               ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv195
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !3
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv195
  store i32 %i.ho, ptr %i.hq, align 4, !tbaa !3
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %._crit_edge, label %scalar.ph, !llvm.loop !95

bb.af:                                            ; preds = %._crit_edge
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !3  ; 4 uses
  %i.hu = load i32, ptr %i.hr, align 8, !tbaa !3  ; 2 uses
  %i.hv = icmp ugt i32 %i.ht, %i.hu
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 164 ; 2 uses
  br i1 %i.hv, label %._crit_edge212, label %bb.ag

._crit_edge212:                                   ; preds = %bb.af
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  %.phi.trans.insert213 = getelementptr inbounds nuw i8, ptr %1, i64 172
  %.pre214 = load i32, ptr %.phi.trans.insert213, align 4, !tbaa !3
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !3  ; 4 uses
  %i.hy = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3 ; 2 uses
  %i.hz = icmp ugt i32 %i.hx, %i.hy
  br i1 %i.hz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge212, %bb.ag
  %i.ia = phi i32 [ %.pre214, %._crit_edge212 ], [ %i.hx, %bb.ag ]
  %i.ib = phi i32 [ %.pre, %._crit_edge212 ], [ %i.hy, %bb.ag ]
  store i32 1, ptr %0, align 4, !tbaa !49
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ic, align 4, !tbaa !52
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !3
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !3
  %i.ii = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.id, i64 noundef 256, ptr noundef nonnull @.str.9, i32 noundef %i.hu, i32 noundef %i.ib, i32 noundef %i.ht, i32 noundef %i.if, i32 noundef %i.ih, i32 noundef %i.ia) #24 ; 0 uses
  br label %.critedge92

bb.ai:                                            ; preds = %bb.ag
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !3  ; 2 uses
  %.not81 = icmp eq i32 %i.ht, %i.ik
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.im = load i32, ptr %i.il, align 8            ; 2 uses
  %.not82 = icmp eq i32 %i.im, %i.hx
  %or.cond88 = select i1 %.not81, i1 %.not82, i1 false
  br i1 %or.cond88, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 1, ptr %0, align 4, !tbaa !49
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.in, align 4, !tbaa !52
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ip = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.io, i64 noundef 256, ptr noundef nonnull @.str.10, i32 noundef %i.ht, i32 noundef %i.im, i32 noundef %i.ik, i32 noundef %i.hx) #24 ; 0 uses
  br label %.critedge92

bb.ak:                                            ; preds = %bb.ai, %._crit_edge
  switch i32 %4, label %bb.aq [
    i32 1, label %.critedge92
    i32 65536, label %bb.al
    i32 262144, label %.thread
    i32 131072, label %.thread130
  ]

bb.al:                                            ; preds = %bb.ak
  %i.iq = icmp eq i32 %i.ea, 1
  br i1 %i.iq, label %.thread130, label %.thread

.thread:                                          ; preds = %bb.ak, %bb.al
  %i.ir = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !96 ; 2 uses
  %i.it = add i32 %i.is, -4
  %or.cond12 = icmp ult i32 %i.it, -2
  br i1 %or.cond12, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.thread
  store i32 1, ptr %0, align 4, !tbaa !49
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.iu, align 4, !tbaa !52
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.iv, i64 noundef 256, ptr noundef nonnull @.str.11, i32 noundef %i.is) #24 ; 0 uses
  br label %.critedge92

bb.an:                                            ; preds = %.thread
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i32 %i.dm, ptr %i.ix, align 8, !tbaa !3
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 188
  store i32 %i.dp, ptr %i.iy, align 4, !tbaa !3
  %scevgep = getelementptr inbounds nuw i8, ptr %1, i64 180
  store i64 0, ptr %scevgep, align 4
  %scevgep200 = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %scevgep200, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ja = zext i32 %i.dm to i64
  %i.jb = zext i32 %i.dp to i64
  %i.jc = shl nuw nsw i64 %i.ja, 2
  %i.jd = mul i64 %i.jc, %i.jb
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.iz, i64 noundef %i.jd)
  %i.je = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 12, ptr %i.je, align 8, !tbaa !97
  br label %bb.aq

.thread130:                                       ; preds = %bb.ak, %bb.al
  %i.jf = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !96 ; 2 uses
  %i.jh = and i32 %i.jg, -3
  %or.cond15.not = icmp eq i32 %i.jh, 1
  br i1 %or.cond15.not, label %.lr.ph170, label %bb.ao

.lr.ph170:                                        ; preds = %.thread130
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.jj = getelementptr inbounds nuw i8, ptr %6, i64 408
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !85 ; 2 uses
  %invariant.op = add i32 %i.jk, -1
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.jn = getelementptr inbounds nuw i8, ptr %6, i64 412
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !86 ; 2 uses
  %invariant.op172 = add i32 %i.jo, -1
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 188
  %wide.trip.count207 = zext nneg i32 %i.ea to i64
end_hunk_0
