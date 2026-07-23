inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mbedtls_gcm_finish:bb.a
  %i.c = shl i64 %i.b, 3                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.f = shl i64 %i.e, 3                          ; 2 uses
  %i.g = icmp ne i64 %i.b, 0
  %i.h = and i64 %i.e, 15
  %.not = icmp eq i64 %i.h, 0
  %or.cond37 = select i1 %i.g, i1 true, i1 %.not
  br i1 %or.cond37, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %cond.i = icmp eq i8 %i.k, 0
  br i1 %cond.i, label %bb.c, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 407
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15    ; 2 uses
  %i.o = lshr i8 %i.n, 4
  %i.p = zext nneg i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.r, align 1
  %i.s = and i8 %i.n, 15
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !7    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !7    ; 2 uses
  %i.y = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.x, i64 60)
  %i.z = xor i64 %i.y, %.0.copyload.i.1.i.i
  %.0.copyload.i.i.i = load i64, ptr %i.q, align 1
  %i.aa = and i64 %i.x, 15
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !29
  %i.ad = zext i16 %i.ac to i64
  %i.ae = shl nuw i64 %i.ad, 48
  %i.af = lshr i64 %i.v, 4
  %i.ag = xor i64 %.0.copyload.i.i.i, %i.af
  %i.ah = xor i64 %i.ag, %i.ae
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i:       ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, %bb.c
  %.sroa.17.0.i.i = phi i64 [ %i.z, %bb.c ], [ %i.bl, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.ah, %bb.c ], [ %i.bj, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 14, %bb.c ], [ %indvars.iv.next.i.i, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !15  ; 2 uses
  %i.ak = and i8 %i.aj, 15
  %i.al = and i64 %.sroa.17.0.i.i, 15
  %i.am = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.17.0.i.i, i64 60)
  %i.an = lshr i64 %.sroa.0.0.i.i, 4
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.al
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !29
  %i.aq = zext i16 %i.ap to i64
  %i.ar = shl nuw i64 %i.aq, 48
  %i.as = zext nneg i8 %i.ak to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.as ; 2 uses
  %.0.copyload.i37.i.i = load i64, ptr %i.at, align 1
  %i.au = xor i64 %.0.copyload.i37.i.i, %i.an     ; 2 uses
  %i.av = xor i64 %i.au, %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.0.copyload.i37.1.i.i = load i64, ptr %i.aw, align 1
  %i.ax = xor i64 %.0.copyload.i37.1.i.i, %i.am   ; 2 uses
  %i.ay = lshr i8 %i.aj, 4
  %i.az = and i64 %i.ax, 15
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.au, i64 %i.ax, i64 60)
  %i.bb = lshr i64 %i.av, 4
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.az
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !29
  %i.be = zext i16 %i.bd to i64
  %i.bf = shl nuw i64 %i.be, 48
  %i.bg = zext nneg i8 %i.ay to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.bg ; 2 uses
  %.0.copyload.i39.i.i = load i64, ptr %i.bh, align 1
  %i.bi = xor i64 %i.bb, %.0.copyload.i39.i.i
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.0.copyload.i39.1.i.i = load i64, ptr %i.bk, align 1
  %i.bl = xor i64 %.0.copyload.i39.1.i.i, %i.ba   ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not.i.i, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, !llvm.loop !31

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i:        ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i
  %i.bm = tail call i64 @llvm.bswap.i64(i64 %i.bj)
  store i64 %i.bm, ptr %i.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bo = tail call i64 @llvm.bswap.i64(i64 %i.bl)
  store i64 %i.bo, ptr %i.bn, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit:     ; preds = %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, %bb.b, %bb.a
  %i.bp = add i64 %5, -17
  %or.cond = icmp ult i64 %i.bp, -13
  br i1 %or.cond, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit
  %i.bq = and i64 %i.b, 15
  %.not36 = icmp eq i64 %i.bq, 0
  br i1 %.not36, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit59, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9
  %cond.i45 = icmp eq i8 %i.bt, 0
  br i1 %cond.i45, label %bb.f, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit59

bb.f:                                             ; preds = %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 407
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !15  ; 2 uses
  %i.bx = lshr i8 %i.bw, 4
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.0.copyload.i.1.i.i46 = load i64, ptr %i.ca, align 1
  %i.cb = and i8 %i.bw, 15
  %i.cc = zext nneg i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.cc ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !7  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !7  ; 2 uses
  %i.ch = tail call i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.cg, i64 60)
  %i.ci = xor i64 %i.ch, %.0.copyload.i.1.i.i46
  %.0.copyload.i.i.i47 = load i64, ptr %i.bz, align 1
  %i.cj = and i64 %i.cg, 15
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !29
  %i.cm = zext i16 %i.cl to i64
  %i.cn = shl nuw i64 %i.cm, 48
  %i.co = lshr i64 %i.ce, 4
  %i.cp = xor i64 %.0.copyload.i.i.i47, %i.co
  %i.cq = xor i64 %i.cp, %i.cn
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i48

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i48:     ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i48, %bb.f
  %.sroa.17.0.i.i49 = phi i64 [ %i.ci, %bb.f ], [ %i.du, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i48 ] ; 2 uses
  %.sroa.0.0.i.i50 = phi i64 [ %i.cq, %bb.f ], [ %i.ds, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i48 ] ; 2 uses
  %indvars.iv.i.i51 = phi i64 [ 14, %bb.f ], [ %indvars.iv.next.i.i56, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i48 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv.i.i51
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !15  ; 2 uses
  %i.ct = and i8 %i.cs, 15
  %i.cu = and i64 %.sroa.17.0.i.i49, 15
  %i.cv = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i50, i64 %.sroa.17.0.i.i49, i64 60)
  %i.cw = lshr i64 %.sroa.0.0.i.i50, 4
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.cu
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !29
  %i.cz = zext i16 %i.cy to i64
  %i.da = shl nuw i64 %i.cz, 48
  %i.db = zext nneg i8 %i.ct to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.db ; 2 uses
  %.0.copyload.i37.i.i52 = load i64, ptr %i.dc, align 1
  %i.dd = xor i64 %.0.copyload.i37.i.i52, %i.cw   ; 2 uses
  %i.de = xor i64 %i.dd, %i.da
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.0.copyload.i37.1.i.i53 = load i64, ptr %i.df, align 1
  %i.dg = xor i64 %.0.copyload.i37.1.i.i53, %i.cv ; 2 uses
  %i.dh = lshr i8 %i.cs, 4
  %i.di = and i64 %i.dg, 15
  %i.dj = tail call i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dg, i64 60)
  %i.dk = lshr i64 %i.de, 4
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.di
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !29
  %i.dn = zext i16 %i.dm to i64
  %i.do = shl nuw i64 %i.dn, 48
  %i.dp = zext nneg i8 %i.dh to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.dp ; 2 uses
  %.0.copyload.i39.i.i54 = load i64, ptr %i.dq, align 1
  %i.dr = xor i64 %i.dk, %.0.copyload.i39.i.i54
  %i.ds = xor i64 %i.dr, %i.do                    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.0.copyload.i39.1.i.i55 = load i64, ptr %i.dt, align 1
  %i.du = xor i64 %.0.copyload.i39.1.i.i55, %i.dj ; 2 uses
  %indvars.iv.next.i.i56 = add nsw i64 %indvars.iv.i.i51, -1
  %.not.i.i57 = icmp eq i64 %indvars.iv.i.i51, 0
  br i1 %.not.i.i57, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i58, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i48, !llvm.loop !31

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i58:      ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i48
  %i.dv = tail call i64 @llvm.bswap.i64(i64 %i.ds)
  store i64 %i.dv, ptr %i.br, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.dx = tail call i64 @llvm.bswap.i64(i64 %i.du)
  store i64 %i.dx, ptr %i.dw, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit59

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit59:   ; preds = %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i58, %bb.e, %bb.d
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr nonnull align 8 %i.dy, i64 %5, i1 false)
  %i.dz = icmp ne i64 %i.c, 0
  %i.ea = icmp ne i64 %i.f, 0
  %or.cond3 = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond3, label %_ZL11mbedtls_xorPhPKhS1_m.exit41, label %_ZL11mbedtls_xorPhPKhS1_m.exit

_ZL11mbedtls_xorPhPKhS1_m.exit41:                 ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit59
  %.sroa.6.12.insert.insert = tail call i64 @llvm.bswap.i64(i64 %i.c)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 16 uses
  %.0.copyload.i42 = load i64, ptr %i.eb, align 8
  %.sroa.0.sroa.0.0.insert.insert = tail call i64 @llvm.bswap.i64(i64 %i.f)
  %i.ec = xor i64 %.sroa.0.sroa.0.0.insert.insert, %.0.copyload.i42
  store i64 %i.ec, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %.0.copyload.i42.1 = load i64, ptr %i.ed, align 8
  %i.ee = xor i64 %.sroa.6.12.insert.insert, %.0.copyload.i42.1 ; 3 uses
  store i64 %i.ee, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9
  %cond.i60 = icmp eq i8 %i.eg, 0
  br i1 %cond.i60, label %bb.g, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit74

bb.g:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit41
  %i.eh = lshr i64 %i.ee, 56
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ej = lshr i64 %i.ee, 60
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.0.copyload.i.1.i.i61 = load i64, ptr %i.el, align 1
  %i.em = and i64 %i.eh, 15
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.em ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !7  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !7  ; 2 uses
  %i.er = tail call i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eq, i64 60)
  %i.es = xor i64 %i.er, %.0.copyload.i.1.i.i61
  %.0.copyload.i.i.i62 = load i64, ptr %i.ek, align 1
  %i.et = and i64 %i.eq, 15
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.et
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !29
  %i.ew = zext i16 %i.ev to i64
  %i.ex = shl nuw i64 %i.ew, 48
  %i.ey = lshr i64 %i.eo, 4
  %i.ez = xor i64 %.0.copyload.i.i.i62, %i.ey
  %i.fa = xor i64 %i.ez, %i.ex
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i63

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i63:     ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i63, %bb.g
  %.sroa.17.0.i.i64 = phi i64 [ %i.es, %bb.g ], [ %i.ge, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i63 ] ; 2 uses
  %.sroa.0.0.i.i65 = phi i64 [ %i.fa, %bb.g ], [ %i.gc, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i63 ] ; 2 uses
  %indvars.iv.i.i66 = phi i64 [ 14, %bb.g ], [ %indvars.iv.next.i.i71, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i63 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv.i.i66
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !15  ; 2 uses
  %i.fd = and i8 %i.fc, 15
  %i.fe = and i64 %.sroa.17.0.i.i64, 15
  %i.ff = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i65, i64 %.sroa.17.0.i.i64, i64 60)
  %i.fg = lshr i64 %.sroa.0.0.i.i65, 4
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.fe
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !29
  %i.fj = zext i16 %i.fi to i64
  %i.fk = shl nuw i64 %i.fj, 48
  %i.fl = zext nneg i8 %i.fd to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.fl ; 2 uses
  %.0.copyload.i37.i.i67 = load i64, ptr %i.fm, align 1
  %i.fn = xor i64 %.0.copyload.i37.i.i67, %i.fg   ; 2 uses
  %i.fo = xor i64 %i.fn, %i.fk
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.0.copyload.i37.1.i.i68 = load i64, ptr %i.fp, align 1
  %i.fq = xor i64 %.0.copyload.i37.1.i.i68, %i.ff ; 2 uses
  %i.fr = lshr i8 %i.fc, 4
  %i.fs = and i64 %i.fq, 15
  %i.ft = tail call i64 @llvm.fshl.i64(i64 %i.fn, i64 %i.fq, i64 60)
  %i.fu = lshr i64 %i.fo, 4
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.fs
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !29
  %i.fx = zext i16 %i.fw to i64
  %i.fy = shl nuw i64 %i.fx, 48
  %i.fz = zext nneg i8 %i.fr to i64
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.fz ; 2 uses
  %.0.copyload.i39.i.i69 = load i64, ptr %i.ga, align 1
  %i.gb = xor i64 %i.fu, %.0.copyload.i39.i.i69
  %i.gc = xor i64 %i.gb, %i.fy                    ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.0.copyload.i39.1.i.i70 = load i64, ptr %i.gd, align 1
  %i.ge = xor i64 %.0.copyload.i39.1.i.i70, %i.ft ; 2 uses
  %indvars.iv.next.i.i71 = add nsw i64 %indvars.iv.i.i66, -1
  %.not.i.i72 = icmp eq i64 %indvars.iv.i.i66, 0
  br i1 %.not.i.i72, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i73, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i63, !llvm.loop !31

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i73:      ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i63
  %i.gf = tail call i64 @llvm.bswap.i64(i64 %i.gc)
  store i64 %i.gf, ptr %i.eb, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.gh = tail call i64 @llvm.bswap.i64(i64 %i.ge)
  store i64 %i.gh, ptr %i.gg, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit74

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit74:   ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit41, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i73
  %.not.i83 = icmp samesign ult i64 %5, 8
  br i1 %.not.i83, label %.preheader, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit74
  %i.gi = add nsw i64 %5, -8                      ; 2 uses
  %i.gj = lshr i64 %i.gi, 3
  %i.gk = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gi, 104
  br i1 %min.iters.check, label %.lr.ph85.preheader144, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph85.preheader
  %i.gl = and i64 %5, 24                          ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.gl
  %i.gm = getelementptr i8, ptr %0, i64 %i.gl
  %scevgep107 = getelementptr i8, ptr %i.gm, i64 392
  %bound0 = icmp ult ptr %4, %scevgep107
  %bound1 = icmp ult ptr %i.eb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph85.preheader144, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gk, 4611686018427387900     ; 3 uses
  %i.gn = shl i64 %n.vec, 3                       ; 3 uses
  %i.go = or disjoint i64 %i.gn, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gp = shl i64 %index, 3                       ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 %i.gp ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.gq, align 1, !alias.scope !76, !noalias !79
  %wide.load108 = load <2 x i64>, ptr %i.gr, align 1, !alias.scope !76, !noalias !79
  %i.gs = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.gp ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %wide.load109 = load <2 x i64>, ptr %i.gs, align 1, !alias.scope !79
  %wide.load110 = load <2 x i64>, ptr %i.gt, align 1, !alias.scope !79
  %i.gu = xor <2 x i64> %wide.load109, %wide.load
  %i.gv = xor <2 x i64> %wide.load110, %wide.load108
  store <2 x i64> %i.gu, ptr %i.gq, align 1, !alias.scope !76, !noalias !79
  store <2 x i64> %i.gv, ptr %i.gr, align 1, !alias.scope !76, !noalias !79
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gw = icmp eq i64 %index.next, %n.vec
  br i1 %i.gw, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gk, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph85.preheader144

.lr.ph85.preheader144:                            ; preds = %vector.memcheck, %.lr.ph85.preheader, %middle.block
  %.ph = phi i64 [ 8, %vector.memcheck ], [ 8, %.lr.ph85.preheader ], [ %i.go, %middle.block ]
  %.0.i84.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph85.preheader ], [ %i.gn, %middle.block ]
  br label %.lr.ph85

.preheader:                                       ; preds = %.lr.ph85, %middle.block, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit74
  %.0.i.lcssa = phi i64 [ 0, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit74 ], [ %i.gn, %middle.block ], [ %i.hx, %.lr.ph85 ] ; 12 uses
  %i.gx = icmp samesign ult i64 %.0.i.lcssa, %5
  br i1 %i.gx, label %iter.check, label %_ZL11mbedtls_xorPhPKhS1_m.exit

iter.check:                                       ; preds = %.preheader
  %i.gy = sub nuw i64 %5, %.0.i.lcssa             ; 4 uses
  %min.iters.check121 = icmp ult i64 %i.gy, 8
  br i1 %min.iters.check121, label %.lr.ph87.preheader, label %vector.memcheck112

vector.memcheck112:                               ; preds = %iter.check
  %scevgep113 = getelementptr i8, ptr %4, i64 %.0.i.lcssa
  %scevgep114 = getelementptr i8, ptr %4, i64 %5
  %i.gz = getelementptr i8, ptr %0, i64 %.0.i.lcssa
  %scevgep115 = getelementptr i8, ptr %i.gz, i64 392
  %i.ha = getelementptr i8, ptr %0, i64 %5
  %scevgep116 = getelementptr i8, ptr %i.ha, i64 392
  %bound0117 = icmp ult ptr %scevgep113, %scevgep116
  %bound1118 = icmp ult ptr %scevgep115, %scevgep114
  %found.conflict119 = and i1 %bound0117, %bound1118
  br i1 %found.conflict119, label %.lr.ph87.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck112
  %min.iters.check122 = icmp ult i64 %i.gy, 32
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.body126

vector.body126:                                   ; preds = %vector.main.loop.iter.check, %vector.body126
  %index127 = phi i64 [ %index.next132, %vector.body126 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.hb = add i64 %.0.i.lcssa, %index127          ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 %i.hb ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 2 uses
  %wide.load128 = load <16 x i8>, ptr %i.hc, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  %wide.load129 = load <16 x i8>, ptr %i.hd, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  %i.he = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.hb ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %wide.load130 = load <16 x i8>, ptr %i.he, align 1, !tbaa !15, !alias.scope !85
  %wide.load131 = load <16 x i8>, ptr %i.hf, align 1, !tbaa !15, !alias.scope !85
  %i.hg = xor <16 x i8> %wide.load130, %wide.load128
  %i.hh = xor <16 x i8> %wide.load131, %wide.load129
  store <16 x i8> %i.hg, ptr %i.hc, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  store <16 x i8> %i.hh, ptr %i.hd, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  %index.next132 = add nuw i64 %index127, 32
  br label %vector.body126, !llvm.loop !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec137 = and i64 %i.gy, 24                   ; 4 uses
  %i.hi = add i64 %.0.i.lcssa, %n.vec137
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 %.0.i.lcssa ; 2 uses
  %wide.load139 = load <8 x i8>, ptr %6, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  %7 = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.0.i.lcssa
  %wide.load140 = load <8 x i8>, ptr %7, align 1, !tbaa !15, !alias.scope !85
  %8 = xor <8 x i8> %wide.load140, %wide.load139
  store <8 x i8> %8, ptr %6, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  %9 = icmp eq i64 %n.vec137, 8
  br i1 %9, label %vec.epilog.middle.block, label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.ph
  %i.hj = add i64 %.0.i.lcssa, 8                  ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 %i.hj ; 2 uses
  %wide.load139.a = load <8 x i8>, ptr %i.hk, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  %i.hl = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.hj
  %wide.load140.a = load <8 x i8>, ptr %i.hl, align 1, !tbaa !15, !alias.scope !85
  %i.hm = xor <8 x i8> %wide.load140.a, %wide.load139.a
  store <8 x i8> %i.hm, ptr %i.hk, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  %i.hn = icmp eq i64 %n.vec137, 16
  br i1 %i.hn, label %vec.epilog.middle.block, label %vec.epilog.vector.body.2

vec.epilog.vector.body.2:                         ; preds = %vec.epilog.vector.body
  %10 = add i64 %.0.i.lcssa, 16                   ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 %10 ; 2 uses
  %wide.load139.2 = load <8 x i8>, ptr %11, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  %12 = getelementptr inbounds nuw i8, ptr %i.eb, i64 %10
  %wide.load140.2 = load <8 x i8>, ptr %12, align 1, !tbaa !15, !alias.scope !85
  %13 = xor <8 x i8> %wide.load140.2, %wide.load139.2
  store <8 x i8> %13, ptr %11, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  br label %vec.epilog.middle.block

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.2, %vec.epilog.vector.body, %vec.epilog.ph
  %cmp.n142 = icmp eq i64 %i.gy, %n.vec137
  br i1 %cmp.n142, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %vector.memcheck112, %iter.check, %vec.epilog.middle.block
  %.1.i86.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck112 ], [ %.0.i.lcssa, %iter.check ], [ %i.hi, %vec.epilog.middle.block ] ; 4 uses
  %i.ho = sub i64 %5, %.1.i86.ph
  %xtraiter = and i64 %i.ho, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol

.lr.ph87.prol:                                    ; preds = %.lr.ph87.preheader, %.lr.ph87.prol
  %.1.i86.prol = phi i64 [ %i.hu, %.lr.ph87.prol ], [ %.1.i86.ph, %.lr.ph87.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph87.prol ], [ 0, %.lr.ph87.preheader ]
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i86.prol ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !15
  %i.hr = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.1.i86.prol
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !15
  %i.ht = xor i8 %i.hs, %i.hq
  store i8 %i.ht, ptr %i.hp, align 1, !tbaa !15
  %i.hu = add nuw i64 %.1.i86.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol, !llvm.loop !88

.lr.ph87.prol.loopexit:                           ; preds = %.lr.ph87.prol, %.lr.ph87.preheader
  %.1.i86.unr = phi i64 [ %.1.i86.ph, %.lr.ph87.preheader ], [ %i.hu, %.lr.ph87.prol ]
  %i.hv = sub i64 %.1.i86.ph, %5
  %i.hw = icmp ugt i64 %i.hv, -4
  br i1 %i.hw, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph87

.lr.ph85:                                         ; preds = %.lr.ph85.preheader144, %.lr.ph85
  %i.hx = phi i64 [ %i.ib, %.lr.ph85 ], [ %.ph, %.lr.ph85.preheader144 ] ; 3 uses
  %.0.i84 = phi i64 [ %i.hx, %.lr.ph85 ], [ %.0.i84.ph, %.lr.ph85.preheader144 ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 %.0.i84 ; 2 uses
  %.0.copyload.i44 = load i64, ptr %i.hy, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.0.i84
  %.0.copyload.i43 = load i64, ptr %i.hz, align 1
  %i.ia = xor i64 %.0.copyload.i43, %.0.copyload.i44
  store i64 %i.ia, ptr %i.hy, align 1
  %i.ib = add nuw nsw i64 %i.hx, 8                ; 2 uses
  %.not.i = icmp ugt i64 %i.ib, %5
  br i1 %.not.i, label %.preheader, label %.lr.ph85, !llvm.loop !89

.lr.ph87:                                         ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87
  %.1.i86 = phi i64 [ %i.iz, %.lr.ph87 ], [ %.1.i86.unr, %.lr.ph87.prol.loopexit ] ; 6 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i86 ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !15
  %i.ie = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.1.i86
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !15
  %i.ig = xor i8 %i.if, %i.id
  store i8 %i.ig, ptr %i.ic, align 1, !tbaa !15
  %i.ih = add nuw i64 %.1.i86, 1                  ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 %i.ih ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !15
  %i.ik = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ih
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !15
  %i.im = xor i8 %i.il, %i.ij
  store i8 %i.im, ptr %i.ii, align 1, !tbaa !15
  %i.in = add nuw i64 %.1.i86, 2                  ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %4, i64 %i.in ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !15
  %i.iq = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.in
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !15
  %i.is = xor i8 %i.ir, %i.ip
  store i8 %i.is, ptr %i.io, align 1, !tbaa !15
  %i.it = add nuw i64 %.1.i86, 3                  ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 %i.it ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !15
  %i.iw = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.it
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !15
  %i.iy = xor i8 %i.ix, %i.iv
  store i8 %i.iy, ptr %i.iu, align 1, !tbaa !15
  %i.iz = add nuw i64 %.1.i86, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.iz, %5
  br i1 %exitcond.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph87, !llvm.loop !90

_ZL11mbedtls_xorPhPKhS1_m.exit:                   ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87, %vec.epilog.middle.block, %.preheader, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit59, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit
  %.0 = phi i32 [ -20, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ], [ 0, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit59 ], [ 0, %.preheader ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph87 ], [ 0, %.lr.ph87.prol.loopexit ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_gcm_crypt_and_tag(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9, ptr nofree noundef captures(none) %10) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call i32 @mbedtls_gcm_starts(ptr noundef %0, i32 noundef %1, ptr noundef %3, i64 noundef %4) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @mbedtls_gcm_update_ad(ptr noundef %0, ptr noundef %5, i64 noundef %6) ; 2 uses
  %.not23 = icmp eq i32 %i.c, 0
  br i1 %.not23, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @mbedtls_gcm_update(ptr noundef %0, ptr noundef %7, i64 noundef %2, ptr noundef %8, i64 noundef %2, ptr noundef nonnull %i.a) ; 2 uses
  %.not24 = icmp eq i32 %i.d, 0
  br i1 %.not24, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @mbedtls_gcm_finish(ptr noundef %0, ptr poison, i64 poison, ptr noundef nonnull %i.a, ptr noundef %10, i64 noundef %9)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.c ], [ %i.b, %bb.a ], [ %i.c, %bb.b ], [ %i.e, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_gcm_auth_decrypt(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.c = tail call i32 @mbedtls_gcm_starts(ptr noundef %0, i32 noundef 0, ptr noundef readonly %2, i64 noundef %3) ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %mbedtls_gcm_crypt_and_tag.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @mbedtls_gcm_update_ad(ptr noundef %0, ptr noundef readonly %4, i64 noundef %5) ; 2 uses
  %.not23.i = icmp eq i32 %i.d, 0
  br i1 %.not23.i, label %bb.c, label %mbedtls_gcm_crypt_and_tag.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @mbedtls_gcm_update(ptr noundef %0, ptr noundef %8, i64 noundef %1, ptr noundef %9, i64 noundef %1, ptr noundef nonnull %i.a) ; 2 uses
  %.not24.i = icmp eq i32 %i.e, 0
  br i1 %.not24.i, label %mbedtls_gcm_crypt_and_tag.exit, label %mbedtls_gcm_crypt_and_tag.exit.thread

mbedtls_gcm_crypt_and_tag.exit.thread:            ; preds = %bb.c, %bb.a, %bb.b
  %.0.i.ph = phi i32 [ %i.d, %bb.b ], [ %i.c, %bb.a ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.f

mbedtls_gcm_crypt_and_tag.exit:                   ; preds = %bb.c
  %i.f = call i32 @mbedtls_gcm_finish(ptr noundef %0, ptr poison, i64 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %mbedtls_gcm_crypt_and_tag.exit
  %i.g = call noundef i32 @_Z17mbedtls_ct_memcmpPKvS0_m(ptr noundef %6, ptr noundef nonnull %i.b, i64 noundef %7)
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @mbedtls_platform_zeroize(ptr noundef %9, i64 noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %mbedtls_gcm_crypt_and_tag.exit.thread, %bb.d, %mbedtls_gcm_crypt_and_tag.exit, %bb.e
  %.0 = phi i32 [ %i.f, %mbedtls_gcm_crypt_and_tag.exit ], [ -18, %bb.e ], [ 0, %bb.d ], [ %.0.i.ph, %mbedtls_gcm_crypt_and_tag.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %.0
}

declare noundef i32 @_Z17mbedtls_ct_memcmpPKvS0_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @mbedtls_gcm_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mbedtls_cipher_free(ptr noundef nonnull %0)
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 416)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !5, i64 409}
!10 = !{!"_ZTS19mbedtls_gcm_context", !11, i64 0, !5, i64 88, !8, i64 344, !8, i64 352, !5, i64 360, !5, i64 376, !5, i64 392, !5, i64 408, !5, i64 409}
!11 = !{!"_ZTS24mbedtls_cipher_context_t", !12, i64 0, !4, i64 8, !14, i64 12, !13, i64 16, !13, i64 24, !5, i64 32, !8, i64 48, !5, i64 56, !8, i64 72, !13, i64 80}
!12 = !{!"p1 _ZTS21mbedtls_cipher_info_t", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"_ZTS19mbedtls_operation_t", !5, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!10, !5, i64 408}
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !23, !24, !25}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !23, !24}
!29 = !{!30, !30, i64 0}
!30 = !{!"short", !5, i64 0}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !23}
!33 = !{!10, !8, i64 352}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !23, !24, !25}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !23, !24}
!42 = distinct !{!42, !23}
!43 = !{!44}
!44 = distinct !{!44, !45}
!45 = distinct !{!45, !"LVerDomain"}
!46 = !{!47}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !23, !24, !25}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !23, !24}
!51 = !{!10, !8, i64 344}
!52 = distinct !{!52, !23}
!53 = !{!54}
!54 = distinct !{!54, !55}
!55 = distinct !{!55, !"LVerDomain"}
!56 = !{!57}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !23, !24, !25}
!59 = !{!"branch_weights", i32 8, i32 24}
!60 = distinct !{!60, !23, !24, !25}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !23, !24}
!63 = distinct !{!63, !23, !24, !25}
!64 = distinct !{!64, !23, !24, !25}
!65 = distinct !{!65, !27}
!66 = distinct !{!66, !23, !24}
!67 = !{!68}
!68 = distinct !{!68, !69}
!69 = distinct !{!69, !"LVerDomain"}
!70 = !{!71}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !23, !24, !25}
!73 = distinct !{!73, !23, !24, !25}
!74 = distinct !{!74, !27}
!75 = distinct !{!75, !23, !24}
!76 = !{!77}
!77 = distinct !{!77, !78}
!78 = distinct !{!78, !"LVerDomain"}
!79 = !{!80}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !23, !24, !25}
!82 = !{!83}
!83 = distinct !{!83, !84}
!84 = distinct !{!84, !"LVerDomain"}
!85 = !{!86}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !23, !24, !25}
!88 = distinct !{!88, !27}
!89 = distinct !{!89, !23, !24}
!90 = distinct !{!90, !23, !24}
end_hunk_0
