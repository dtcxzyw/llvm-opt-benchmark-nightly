Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 370
begin_hunk_0_@AES_wrap_key:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.x = bitcast <2 x i64> %.sroa.0.0.copyload.i.i to <4 x i32>
  %i.y = lshr <4 x i32> %i.x, splat (i32 1)
  %i.z = bitcast <4 x i32> %i.y to <2 x i64>
  %i.aa = xor <2 x i64> %.sroa.0.0.copyload.i.i, %i.z
  %i.ab = and <2 x i64> %i.aa, splat (i64 6148914691236517205) ; 2 uses
  %i.ac = bitcast <2 x i64> %i.ab to <4 x i32>
  %i.ad = shl nuw <4 x i32> %i.ac, splat (i32 1)
  %i.ae = bitcast <4 x i32> %i.ad to <2 x i64>
  %i.af = xor <2 x i64> %.sroa.0.0.copyload.i.i, %i.ae ; 4 uses
  %i.ag = xor <2 x i64> %i.ab, %.sroa.0.0.copyload.i.i ; 4 uses
  %i.ah = bitcast <2 x i64> %i.af to <4 x i32>
  %i.ai = lshr <4 x i32> %i.ah, splat (i32 2)
  %i.aj = bitcast <4 x i32> %i.ai to <2 x i64>
  %i.ak = xor <2 x i64> %i.af, %i.aj
  %i.al = and <2 x i64> %i.ak, splat (i64 3689348814741910323) ; 2 uses
  %i.am = bitcast <2 x i64> %i.al to <4 x i32>
  %i.an = shl nuw <4 x i32> %i.am, splat (i32 2)
  %i.ao = bitcast <4 x i32> %i.an to <2 x i64>
  %i.ap = xor <2 x i64> %i.af, %i.ao              ; 4 uses
  %i.aq = xor <2 x i64> %i.al, %i.af              ; 4 uses
  %i.ar = bitcast <2 x i64> %i.ag to <4 x i32>
  %i.as = lshr <4 x i32> %i.ar, splat (i32 2)
  %i.at = bitcast <4 x i32> %i.as to <2 x i64>
  %i.au = xor <2 x i64> %i.ag, %i.at
  %i.av = and <2 x i64> %i.au, splat (i64 3689348814741910323) ; 2 uses
  %i.aw = bitcast <2 x i64> %i.av to <4 x i32>
  %i.ax = shl nuw <4 x i32> %i.aw, splat (i32 2)
  %i.ay = bitcast <4 x i32> %i.ax to <2 x i64>
  %i.az = xor <2 x i64> %i.ag, %i.ay              ; 4 uses
  %i.ba = xor <2 x i64> %i.av, %i.ag              ; 4 uses
  %i.bb = bitcast <2 x i64> %i.ap to <4 x i32>
  %i.bc = lshr <4 x i32> %i.bb, splat (i32 4)
  %i.bd = bitcast <4 x i32> %i.bc to <2 x i64>
  %i.be = xor <2 x i64> %i.ap, %i.bd
  %i.bf = and <2 x i64> %i.be, splat (i64 1085102592571150095) ; 2 uses
  %i.bg = bitcast <2 x i64> %i.bf to <4 x i32>
  %i.bh = shl nuw <4 x i32> %i.bg, splat (i32 4)
  %i.bi = bitcast <4 x i32> %i.bh to <2 x i64>
  %i.bj = xor <2 x i64> %i.ap, %i.bi
  store <2 x i64> %i.bj, ptr %i.p, align 16, !tbaa !80
  %i.bk = xor <2 x i64> %i.bf, %i.ap
  store <2 x i64> %i.bk, ptr %i.t, align 16, !tbaa !80
  %i.bl = bitcast <2 x i64> %i.az to <4 x i32>
  %i.bm = lshr <4 x i32> %i.bl, splat (i32 4)
  %i.bn = bitcast <4 x i32> %i.bm to <2 x i64>
  %i.bo = xor <2 x i64> %i.az, %i.bn
  %i.bp = and <2 x i64> %i.bo, splat (i64 1085102592571150095) ; 2 uses
  %i.bq = bitcast <2 x i64> %i.bp to <4 x i32>
  %i.br = shl nuw <4 x i32> %i.bq, splat (i32 4)
  %i.bs = bitcast <4 x i32> %i.br to <2 x i64>
  %i.bt = xor <2 x i64> %i.az, %i.bs
  store <2 x i64> %i.bt, ptr %i.q, align 16, !tbaa !80
  %i.bu = xor <2 x i64> %i.bp, %i.az
  store <2 x i64> %i.bu, ptr %i.u, align 16, !tbaa !80
  %i.bv = bitcast <2 x i64> %i.aq to <4 x i32>
  %i.bw = lshr <4 x i32> %i.bv, splat (i32 4)
  %i.bx = bitcast <4 x i32> %i.bw to <2 x i64>
  %i.by = xor <2 x i64> %i.aq, %i.bx
  %i.bz = and <2 x i64> %i.by, splat (i64 1085102592571150095) ; 2 uses
  %i.ca = bitcast <2 x i64> %i.bz to <4 x i32>
  %i.cb = shl nuw <4 x i32> %i.ca, splat (i32 4)
  %i.cc = bitcast <4 x i32> %i.cb to <2 x i64>
  %i.cd = xor <2 x i64> %i.aq, %i.cc
  store <2 x i64> %i.cd, ptr %i.r, align 16, !tbaa !80
  %i.ce = xor <2 x i64> %i.bz, %i.aq
  store <2 x i64> %i.ce, ptr %i.v, align 16, !tbaa !80
  %i.cf = bitcast <2 x i64> %i.ba to <4 x i32>
  %i.cg = lshr <4 x i32> %i.cf, splat (i32 4)
  %i.ch = bitcast <4 x i32> %i.cg to <2 x i64>
  %i.ci = xor <2 x i64> %i.ba, %i.ch
  %i.cj = and <2 x i64> %i.ci, splat (i64 1085102592571150095) ; 2 uses
  %i.ck = bitcast <2 x i64> %i.cj to <4 x i32>
  %i.cl = shl nuw <4 x i32> %i.ck, splat (i32 4)
  %i.cm = bitcast <4 x i32> %i.cl to <2 x i64>
  %i.cn = xor <2 x i64> %i.ba, %i.cm
  store <2 x i64> %i.cn, ptr %i.s, align 16, !tbaa !80
  %i.co = xor <2 x i64> %i.cj, %i.ba
  store <2 x i64> %i.co, ptr %i.w, align 16, !tbaa !80
  %i.cp = add nuw nsw i64 %.01113.i.i, 1
  %exitcond.not.i = icmp eq i64 %.01113.i.i, %i.n
  br i1 %exitcond.not.i, label %aes_nohw_encrypt.exit, label %.preheader.i.i, !llvm.loop !0

aes_nohw_encrypt.exit:                            ; preds = %.preheader.i.i
  %.sroa.0.8.vec.expand = shufflevector <8 x i8> %.sroa.0.8.copyload, <8 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %.sroa.0.8.vecblend = shufflevector <16 x i8> %.sroa.0.142, <16 x i8> %.sroa.0.8.vec.expand, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.cq = bitcast <16 x i8> %.sroa.0.8.vecblend to <2 x i64>
  %i.cr = bitcast <16 x i8> %.sroa.0.8.vecblend to <4 x i32> ; 3 uses
  %i.cs = lshr <4 x i32> %i.cr, splat (i32 1)
  %.inner = and <4 x i32> %i.cs, splat (i32 1431655765) ; 2 uses
  %i.ct = shl nuw <4 x i32> %.inner, splat (i32 1)
  %i.cu = bitcast <4 x i32> %i.ct to <2 x i64>
  %i.cv = xor <2 x i64> %i.cu, %i.cq              ; 2 uses
  %i.cw = bitcast <2 x i64> %i.cv to <4 x i32>    ; 2 uses
  %i.cx = lshr <4 x i32> %i.cw, splat (i32 2)
  %.inner52 = and <4 x i32> %i.cx, splat (i32 858993459) ; 2 uses
  %i.cy = shl nuw <4 x i32> %.inner52, splat (i32 2)
  %i.cz = bitcast <4 x i32> %i.cy to <2 x i64>
  %i.da = xor <2 x i64> %i.cv, %i.cz              ; 2 uses
  %i.db = lshr <4 x i32> %i.cr, splat (i32 3)
  %.inner53 = and <4 x i32> %i.db, splat (i32 286331153) ; 2 uses
  %i.dc = shl nuw nsw <4 x i32> %.inner53, splat (i32 2)
  %.inner54 = xor <4 x i32> %.inner, %i.dc        ; 2 uses
  %i.dd = bitcast <2 x i64> %i.da to <4 x i32>
  %i.de = lshr <4 x i32> %i.dd, splat (i32 4)
  %i.df = bitcast <4 x i32> %i.de to <2 x i64>
  %i.dg = and <2 x i64> %i.df, splat (i64 1085102592571150095) ; 2 uses
  %i.dh = bitcast <2 x i64> %i.dg to <4 x i32>
  %i.di = shl nuw <4 x i32> %i.dh, splat (i32 4)
  %i.dj = bitcast <4 x i32> %i.di to <2 x i64>
  %i.dk = xor <2 x i64> %i.da, %i.dj
  store <2 x i64> %i.dk, ptr %6, align 16, !tbaa !80
  store <2 x i64> %i.dg, ptr %.phi.trans.insert14.i.i, align 16, !tbaa !80
  %i.dl = lshr <4 x i32> %.inner54, splat (i32 4)
  %i.dm = bitcast <4 x i32> %i.dl to <2 x i64>
  %i.dn = and <2 x i64> %i.dm, splat (i64 361700864190383365) ; 2 uses
  %i.do = bitcast <2 x i64> %i.dn to <4 x i32>
  %i.dp = shl nuw nsw <4 x i32> %i.do, splat (i32 4)
  %.inner57 = xor <4 x i32> %.inner54, %i.dp
  store <4 x i32> %.inner57, ptr %.phi.trans.insert.i.i, align 16, !tbaa !80
  store <2 x i64> %i.dn, ptr %.phi.trans.insert16.i.i, align 16, !tbaa !80
  %i.dq = lshr <4 x i32> %i.cw, splat (i32 6)
  %i.dr = bitcast <4 x i32> %i.dq to <2 x i64>
  %i.ds = and <2 x i64> %i.dr, splat (i64 217020518514230019) ; 2 uses
  %i.dt = bitcast <2 x i64> %i.ds to <4 x i32>
  %i.du = shl nuw nsw <4 x i32> %i.dt, splat (i32 4)
  %.inner59 = xor <4 x i32> %.inner52, %i.du
  store <4 x i32> %.inner59, ptr %.phi.trans.insert10.i.i, align 16, !tbaa !80
  store <2 x i64> %i.ds, ptr %.phi.trans.insert18.i.i, align 16, !tbaa !80
  %i.dv = lshr <4 x i32> %i.cr, splat (i32 7)
  %i.dw = bitcast <4 x i32> %i.dv to <2 x i64>
  %i.dx = and <2 x i64> %i.dw, splat (i64 72340172838076673) ; 2 uses
  %i.dy = bitcast <2 x i64> %i.dx to <4 x i32>
  %i.dz = shl nuw nsw <4 x i32> %i.dy, splat (i32 4)
  %.inner61 = xor <4 x i32> %.inner53, %i.dz
  store <4 x i32> %.inner61, ptr %.phi.trans.insert12.i.i, align 16, !tbaa !80
  store <2 x i64> %i.dx, ptr %.phi.trans.insert20.i.i, align 16, !tbaa !80
  call fastcc void @_ZL22aes_nohw_encrypt_batchPK17AES_NOHW_SCHEDULEmP14AES_NOHW_BATCH(ptr noundef %5, i64 noundef %i.n, ptr noundef %6)
  %.sroa.0.i.sroa.0.0.copyload.i = load <2 x i64>, ptr %6, align 16
  %.sroa.0.i.sroa.6.0.copyload6.i = load <4 x i32>, ptr %.phi.trans.insert.i.i, align 16
  %.sroa.0.i.sroa.8.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert10.i.i, align 16
  %.sroa.0.i.sroa.10.0.copyload7.i = load <4 x i32>, ptr %.phi.trans.insert12.i.i, align 16
  %.sroa.0.i.sroa.12.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert14.i.i, align 16
  %.sroa.0.i.sroa.14.0.copyload8.i = load <4 x i32>, ptr %.phi.trans.insert16.i.i, align 16
  %.sroa.0.i.sroa.16.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert18.i.i, align 16
  %.sroa.0.i.sroa.18.0.copyload9.i = load <4 x i32>, ptr %.phi.trans.insert20.i.i, align 16, !tbaa !80
  %i.ea = shl <4 x i32> %.sroa.0.i.sroa.6.0.copyload6.i, splat (i32 1)
  %i.eb = bitcast <4 x i32> %i.ea to <2 x i64>
  %i.ec = and <2 x i64> %i.eb, splat (i64 -6148914691236517206)
  %i.ed = and <2 x i64> %.sroa.0.i.sroa.0.0.copyload.i, splat (i64 6148914691236517205)
  %i.ee = or disjoint <2 x i64> %i.ec, %i.ed      ; 2 uses
  %i.ef = shl <4 x i32> %.sroa.0.i.sroa.10.0.copyload7.i, splat (i32 1)
  %i.eg = bitcast <4 x i32> %i.ef to <2 x i64>
  %i.eh = and <2 x i64> %i.eg, splat (i64 2459565876494606882)
  %i.ei = and <2 x i64> %.sroa.0.i.sroa.8.0.copyload.i, splat (i64 1229782938247303441)
  %i.ej = or disjoint <2 x i64> %i.eh, %i.ei
  %i.ek = shl <4 x i32> %.sroa.0.i.sroa.14.0.copyload8.i, splat (i32 1)
  %i.el = bitcast <4 x i32> %i.ek to <2 x i64>
  %i.em = and <2 x i64> %i.el, splat (i64 -6148914691236517206)
  %i.en = and <2 x i64> %.sroa.0.i.sroa.12.0.copyload.i, splat (i64 6148914691236517205)
  %i.eo = or disjoint <2 x i64> %i.em, %i.en
  %i.ep = shl <4 x i32> %.sroa.0.i.sroa.18.0.copyload9.i, splat (i32 1)
  %i.eq = bitcast <4 x i32> %i.ep to <2 x i64>
  %i.er = and <2 x i64> %i.eq, splat (i64 2459565876494606882)
  %i.es = and <2 x i64> %.sroa.0.i.sroa.16.0.copyload.i, splat (i64 1229782938247303441)
  %i.et = or disjoint <2 x i64> %i.er, %i.es
  %i.eu = bitcast <2 x i64> %i.ee to <4 x i32>
  %i.ev = lshr <4 x i32> %i.eu, splat (i32 2)
  %i.ew = bitcast <4 x i32> %i.ev to <2 x i64>
  %.masked.i = and <2 x i64> %i.ew, splat (i64 3689348814741910323)
  %i.ex = xor <2 x i64> %.masked.i, %i.ej
  %i.ey = bitcast <2 x i64> %i.ex to <4 x i32>
  %i.ez = shl nuw <4 x i32> %i.ey, splat (i32 2)
  %i.fa = bitcast <4 x i32> %i.ez to <2 x i64>
  %i.fb = xor <2 x i64> %i.ee, %i.fa              ; 2 uses
  %i.fc = bitcast <2 x i64> %i.eo to <4 x i32>    ; 2 uses
  %i.fd = lshr <4 x i32> %i.fc, splat (i32 2)
  %i.fe = bitcast <4 x i32> %i.fd to <2 x i64>
  %.masked10.i = and <2 x i64> %i.fe, splat (i64 3689348814741910323)
  %i.ff = xor <2 x i64> %.masked10.i, %i.et
  %i.fg = bitcast <2 x i64> %i.ff to <4 x i32>
  %i.fh = shl <4 x i32> %i.fg, splat (i32 6)
  %i.fi = shl <4 x i32> %i.fc, splat (i32 4)
  %i.fj = bitcast <2 x i64> %i.fb to <4 x i32>
  %i.fk = xor <4 x i32> %i.fi, %i.fj
  %i.fl = xor <4 x i32> %i.fk, %i.fh
  %i.fm = bitcast <4 x i32> %i.fl to <2 x i64>
  %i.fn = and <2 x i64> %i.fm, splat (i64 -1085102592571150096)
  %i.fo = xor <2 x i64> %i.fn, %i.fb
  %i.fp = bitcast <2 x i64> %i.fo to <16 x i8>    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.fq = add nuw nsw i64 %.02943, %i.g
  %7 = shufflevector <16 x i8> %i.fp, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %8 = bitcast i64 %i.fq to <8 x i8>
  %9 = shufflevector <8 x i8> %8, <8 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.fr = xor <4 x i8> %7, %9
  %i.fs = shufflevector <4 x i8> %i.fr, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0.4.vec.insert51 = shufflevector <16 x i8> %i.fp, <16 x i8> %i.fs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 3 uses
  %.sroa.0.8.vec.extract = shufflevector <16 x i8> %i.fp, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i8> %.sroa.0.8.vec.extract, ptr %i.l, align 1
  %i.ft = add nuw nsw i64 %.02943, 1
  %exitcond.not = icmp eq i64 %.02943, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !496

bb.c:                                             ; preds = %bb.a, %.split.us
  %.0 = phi i32 [ %i.j, %.split.us ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 -2147483648, 2147483640) i32 @AES_unwrap_key(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = call fastcc noundef i32 @_ZL20aes_unwrap_key_innerPK10aes_key_stPhS2_PKhm(ptr noundef %0, ptr noundef %2, ptr noundef %i.a, ptr noundef %3, i64 noundef %4)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  %spec.store.select = select i1 %i.c, ptr @_ZL10kDefaultIV, ptr %1
  %i.d = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.a, ptr noundef nonnull %spec.store.select, i64 noundef 8) #36
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %4 to i32
  %i.f = add nsw i32 %i.e, -8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -1, %bb.a ], [ %i.f, %bb.c ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL20aes_unwrap_key_innerPK10aes_key_stPhS2_PKhm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.AES_NOHW_SCHEDULE, align 16 ; 4 uses
  %6 = alloca %struct.AES_NOHW_BATCH, align 16    ; 12 uses
  %i.a = add i64 %4, -24
  %or.cond = icmp ult i64 %i.a, 2147483624
  %i.b = and i64 %4, 7
  %.not = icmp eq i64 %i.b, 0
  %or.cond31 = and i1 %or.cond, %.not
  br i1 %or.cond31, label %_ZL15OPENSSL_memmovePvPKvm.exit, label %bb.c

_ZL15OPENSSL_memmovePvPKvm.exit:                  ; preds = %bb.a
  %.sroa.0.0.copyload = load <8 x i8>, ptr %3, align 1
  %.sroa.0.0.vec.expand = shufflevector <8 x i8> %.sroa.0.0.copyload, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0.0.vecblend = shufflevector <16 x i8> %.sroa.0.0.vec.expand, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = add nsw i64 %4, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 1 %i.c, i64 %i.d, i1 false)
  %i.e = lshr exact i64 %4, 3
  %i.f = add nsw i64 %i.e, -1                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %.phi.trans.insert10.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %.phi.trans.insert12.i.i = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %.phi.trans.insert14.i.i = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %.phi.trans.insert16.i.i = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %.phi.trans.insert18.i.i = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %.phi.trans.insert20.i.i = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %_ZL15OPENSSL_memmovePvPKvm.exit, %._crit_edge
  %indvars.iv = phi i64 [ 5, %_ZL15OPENSSL_memmovePvPKvm.exit ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.sroa.0.041 = phi <16 x i8> [ %.sroa.0.0.vecblend, %_ZL15OPENSSL_memmovePvPKvm.exit ], [ %i.fs, %._crit_edge ]
  %i.h = mul nuw nsw i64 %i.f, %indvars.iv
  br label %bb.b

.split.us:                                        ; preds = %._crit_edge
  %.sroa.0.0.vec.extract.extract = extractelement <2 x i64> %i.fr, i64 0
  store i64 %.sroa.0.0.vec.extract.extract, ptr %2, align 1
  br label %bb.c

._crit_edge:                                      ; preds = %aes_nohw_decrypt.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.i = icmp ult i64 %indvars.iv.next, 6
  br i1 %i.i, label %.preheader, label %.split.us, !llvm.loop !497

bb.b:                                             ; preds = %.preheader, %aes_nohw_decrypt.exit
  %.02740 = phi i64 [ %i.f, %.preheader ], [ %i.ft, %aes_nohw_decrypt.exit ] ; 3 uses
  %.sroa.0.139 = phi <16 x i8> [ %.sroa.0.041, %.preheader ], [ %i.fs, %aes_nohw_decrypt.exit ] ; 2 uses
  %i.j = shl i64 %.02740, 3
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -8       ; 2 uses
  %.sroa.0.8.copyload = load <8 x i8>, ptr %i.l, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.m = load i32, ptr %i.g, align 4, !tbaa !79
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %bb.b
  %.01113.i.i = phi i64 [ 0, %bb.b ], [ %i.cp, %.preheader.i.i ] ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %.01113.i.i, 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i
  %i.p = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %.01113.i.i ; 8 uses
  %.sroa.0.0.copyload.i.i = load <2 x i64>, ptr %i.o, align 4 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.x = bitcast <2 x i64> %.sroa.0.0.copyload.i.i to <4 x i32>
  %i.y = lshr <4 x i32> %i.x, splat (i32 1)
  %i.z = bitcast <4 x i32> %i.y to <2 x i64>
  %i.aa = xor <2 x i64> %.sroa.0.0.copyload.i.i, %i.z
  %i.ab = and <2 x i64> %i.aa, splat (i64 6148914691236517205) ; 2 uses
  %i.ac = bitcast <2 x i64> %i.ab to <4 x i32>
  %i.ad = shl nuw <4 x i32> %i.ac, splat (i32 1)
  %i.ae = bitcast <4 x i32> %i.ad to <2 x i64>
  %i.af = xor <2 x i64> %.sroa.0.0.copyload.i.i, %i.ae ; 4 uses
  %i.ag = xor <2 x i64> %i.ab, %.sroa.0.0.copyload.i.i ; 4 uses
  %i.ah = bitcast <2 x i64> %i.af to <4 x i32>
  %i.ai = lshr <4 x i32> %i.ah, splat (i32 2)
  %i.aj = bitcast <4 x i32> %i.ai to <2 x i64>
  %i.ak = xor <2 x i64> %i.af, %i.aj
  %i.al = and <2 x i64> %i.ak, splat (i64 3689348814741910323) ; 2 uses
  %i.am = bitcast <2 x i64> %i.al to <4 x i32>
  %i.an = shl nuw <4 x i32> %i.am, splat (i32 2)
  %i.ao = bitcast <4 x i32> %i.an to <2 x i64>
  %i.ap = xor <2 x i64> %i.af, %i.ao              ; 4 uses
  %i.aq = xor <2 x i64> %i.al, %i.af              ; 4 uses
  %i.ar = bitcast <2 x i64> %i.ag to <4 x i32>
  %i.as = lshr <4 x i32> %i.ar, splat (i32 2)
  %i.at = bitcast <4 x i32> %i.as to <2 x i64>
  %i.au = xor <2 x i64> %i.ag, %i.at
  %i.av = and <2 x i64> %i.au, splat (i64 3689348814741910323) ; 2 uses
  %i.aw = bitcast <2 x i64> %i.av to <4 x i32>
  %i.ax = shl nuw <4 x i32> %i.aw, splat (i32 2)
  %i.ay = bitcast <4 x i32> %i.ax to <2 x i64>
  %i.az = xor <2 x i64> %i.ag, %i.ay              ; 4 uses
  %i.ba = xor <2 x i64> %i.av, %i.ag              ; 4 uses
  %i.bb = bitcast <2 x i64> %i.ap to <4 x i32>
  %i.bc = lshr <4 x i32> %i.bb, splat (i32 4)
  %i.bd = bitcast <4 x i32> %i.bc to <2 x i64>
  %i.be = xor <2 x i64> %i.ap, %i.bd
  %i.bf = and <2 x i64> %i.be, splat (i64 1085102592571150095) ; 2 uses
  %i.bg = bitcast <2 x i64> %i.bf to <4 x i32>
  %i.bh = shl nuw <4 x i32> %i.bg, splat (i32 4)
  %i.bi = bitcast <4 x i32> %i.bh to <2 x i64>
  %i.bj = xor <2 x i64> %i.ap, %i.bi
  store <2 x i64> %i.bj, ptr %i.p, align 16, !tbaa !80
  %i.bk = xor <2 x i64> %i.bf, %i.ap
  store <2 x i64> %i.bk, ptr %i.t, align 16, !tbaa !80
  %i.bl = bitcast <2 x i64> %i.az to <4 x i32>
  %i.bm = lshr <4 x i32> %i.bl, splat (i32 4)
  %i.bn = bitcast <4 x i32> %i.bm to <2 x i64>
  %i.bo = xor <2 x i64> %i.az, %i.bn
  %i.bp = and <2 x i64> %i.bo, splat (i64 1085102592571150095) ; 2 uses
  %i.bq = bitcast <2 x i64> %i.bp to <4 x i32>
  %i.br = shl nuw <4 x i32> %i.bq, splat (i32 4)
  %i.bs = bitcast <4 x i32> %i.br to <2 x i64>
  %i.bt = xor <2 x i64> %i.az, %i.bs
  store <2 x i64> %i.bt, ptr %i.q, align 16, !tbaa !80
  %i.bu = xor <2 x i64> %i.bp, %i.az
  store <2 x i64> %i.bu, ptr %i.u, align 16, !tbaa !80
  %i.bv = bitcast <2 x i64> %i.aq to <4 x i32>
  %i.bw = lshr <4 x i32> %i.bv, splat (i32 4)
  %i.bx = bitcast <4 x i32> %i.bw to <2 x i64>
  %i.by = xor <2 x i64> %i.aq, %i.bx
  %i.bz = and <2 x i64> %i.by, splat (i64 1085102592571150095) ; 2 uses
  %i.ca = bitcast <2 x i64> %i.bz to <4 x i32>
  %i.cb = shl nuw <4 x i32> %i.ca, splat (i32 4)
  %i.cc = bitcast <4 x i32> %i.cb to <2 x i64>
  %i.cd = xor <2 x i64> %i.aq, %i.cc
  store <2 x i64> %i.cd, ptr %i.r, align 16, !tbaa !80
  %i.ce = xor <2 x i64> %i.bz, %i.aq
  store <2 x i64> %i.ce, ptr %i.v, align 16, !tbaa !80
  %i.cf = bitcast <2 x i64> %i.ba to <4 x i32>
  %i.cg = lshr <4 x i32> %i.cf, splat (i32 4)
  %i.ch = bitcast <4 x i32> %i.cg to <2 x i64>
  %i.ci = xor <2 x i64> %i.ba, %i.ch
  %i.cj = and <2 x i64> %i.ci, splat (i64 1085102592571150095) ; 2 uses
  %i.ck = bitcast <2 x i64> %i.cj to <4 x i32>
  %i.cl = shl nuw <4 x i32> %i.ck, splat (i32 4)
  %i.cm = bitcast <4 x i32> %i.cl to <2 x i64>
  %i.cn = xor <2 x i64> %i.ba, %i.cm
  store <2 x i64> %i.cn, ptr %i.s, align 16, !tbaa !80
  %i.co = xor <2 x i64> %i.cj, %i.ba
  store <2 x i64> %i.co, ptr %i.w, align 16, !tbaa !80
  %i.cp = add nuw nsw i64 %.01113.i.i, 1
  %exitcond.not.i = icmp eq i64 %.01113.i.i, %i.n
  br i1 %exitcond.not.i, label %aes_nohw_decrypt.exit, label %.preheader.i.i, !llvm.loop !0

aes_nohw_decrypt.exit:                            ; preds = %.preheader.i.i
  %i.cq = add nuw nsw i64 %.02740, %i.h
  %7 = shufflevector <16 x i8> %.sroa.0.139, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %8 = bitcast i64 %i.cq to <8 x i8>
  %9 = shufflevector <8 x i8> %8, <8 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cr = xor <4 x i8> %7, %9
  %i.cs = shufflevector <4 x i8> %i.cr, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0.4.vec.insert50 = shufflevector <16 x i8> %.sroa.0.139, <16 x i8> %i.cs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0.8.vec.expand = shufflevector <8 x i8> %.sroa.0.8.copyload, <8 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %.sroa.0.8.vecblend = shufflevector <16 x i8> %.sroa.0.4.vec.insert50, <16 x i8> %.sroa.0.8.vec.expand, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.ct = bitcast <16 x i8> %.sroa.0.8.vecblend to <2 x i64>
  %i.cu = bitcast <16 x i8> %.sroa.0.8.vecblend to <4 x i32> ; 3 uses
  %i.cv = lshr <4 x i32> %i.cu, splat (i32 1)
  %.inner = and <4 x i32> %i.cv, splat (i32 1431655765) ; 2 uses
  %i.cw = shl nuw <4 x i32> %.inner, splat (i32 1)
  %i.cx = bitcast <4 x i32> %i.cw to <2 x i64>
  %i.cy = xor <2 x i64> %i.cx, %i.ct              ; 2 uses
  %i.cz = bitcast <2 x i64> %i.cy to <4 x i32>    ; 2 uses
  %i.da = lshr <4 x i32> %i.cz, splat (i32 2)
  %.inner51 = and <4 x i32> %i.da, splat (i32 858993459) ; 2 uses
  %i.db = shl nuw <4 x i32> %.inner51, splat (i32 2)
  %i.dc = bitcast <4 x i32> %i.db to <2 x i64>
  %i.dd = xor <2 x i64> %i.cy, %i.dc              ; 2 uses
  %i.de = lshr <4 x i32> %i.cu, splat (i32 3)
  %.inner52 = and <4 x i32> %i.de, splat (i32 286331153) ; 2 uses
  %i.df = shl nuw nsw <4 x i32> %.inner52, splat (i32 2)
  %.inner53 = xor <4 x i32> %.inner, %i.df        ; 2 uses
  %i.dg = bitcast <2 x i64> %i.dd to <4 x i32>
  %i.dh = lshr <4 x i32> %i.dg, splat (i32 4)
  %i.di = bitcast <4 x i32> %i.dh to <2 x i64>
  %i.dj = and <2 x i64> %i.di, splat (i64 1085102592571150095) ; 2 uses
  %i.dk = bitcast <2 x i64> %i.dj to <4 x i32>
  %i.dl = shl nuw <4 x i32> %i.dk, splat (i32 4)
  %i.dm = bitcast <4 x i32> %i.dl to <2 x i64>
  %i.dn = xor <2 x i64> %i.dd, %i.dm
  store <2 x i64> %i.dn, ptr %6, align 16, !tbaa !80
  store <2 x i64> %i.dj, ptr %.phi.trans.insert14.i.i, align 16, !tbaa !80
  %i.do = lshr <4 x i32> %.inner53, splat (i32 4)
  %i.dp = bitcast <4 x i32> %i.do to <2 x i64>
  %i.dq = and <2 x i64> %i.dp, splat (i64 361700864190383365) ; 2 uses
  %i.dr = bitcast <2 x i64> %i.dq to <4 x i32>
  %i.ds = shl nuw nsw <4 x i32> %i.dr, splat (i32 4)
  %.inner56 = xor <4 x i32> %.inner53, %i.ds
  store <4 x i32> %.inner56, ptr %.phi.trans.insert.i.i, align 16, !tbaa !80
  store <2 x i64> %i.dq, ptr %.phi.trans.insert16.i.i, align 16, !tbaa !80
  %i.dt = lshr <4 x i32> %i.cz, splat (i32 6)
  %i.du = bitcast <4 x i32> %i.dt to <2 x i64>
  %i.dv = and <2 x i64> %i.du, splat (i64 217020518514230019) ; 2 uses
  %i.dw = bitcast <2 x i64> %i.dv to <4 x i32>
  %i.dx = shl nuw nsw <4 x i32> %i.dw, splat (i32 4)
  %.inner58 = xor <4 x i32> %.inner51, %i.dx
  store <4 x i32> %.inner58, ptr %.phi.trans.insert10.i.i, align 16, !tbaa !80
  store <2 x i64> %i.dv, ptr %.phi.trans.insert18.i.i, align 16, !tbaa !80
  %i.dy = lshr <4 x i32> %i.cu, splat (i32 7)
  %i.dz = bitcast <4 x i32> %i.dy to <2 x i64>
  %i.ea = and <2 x i64> %i.dz, splat (i64 72340172838076673) ; 2 uses
  %i.eb = bitcast <2 x i64> %i.ea to <4 x i32>
  %i.ec = shl nuw nsw <4 x i32> %i.eb, splat (i32 4)
  %.inner60 = xor <4 x i32> %.inner52, %i.ec
  store <4 x i32> %.inner60, ptr %.phi.trans.insert12.i.i, align 16, !tbaa !80
  store <2 x i64> %i.ea, ptr %.phi.trans.insert20.i.i, align 16, !tbaa !80
  call fastcc void @_ZL22aes_nohw_decrypt_batchPK17AES_NOHW_SCHEDULEmP14AES_NOHW_BATCH(ptr noundef %5, i64 noundef %i.n, ptr noundef %6)
  %.sroa.0.i.sroa.0.0.copyload.i = load <2 x i64>, ptr %6, align 16
  %.sroa.0.i.sroa.6.0.copyload6.i = load <4 x i32>, ptr %.phi.trans.insert.i.i, align 16
  %.sroa.0.i.sroa.8.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert10.i.i, align 16
  %.sroa.0.i.sroa.10.0.copyload7.i = load <4 x i32>, ptr %.phi.trans.insert12.i.i, align 16
  %.sroa.0.i.sroa.12.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert14.i.i, align 16
  %.sroa.0.i.sroa.14.0.copyload8.i = load <4 x i32>, ptr %.phi.trans.insert16.i.i, align 16
  %.sroa.0.i.sroa.16.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert18.i.i, align 16
  %.sroa.0.i.sroa.18.0.copyload9.i = load <4 x i32>, ptr %.phi.trans.insert20.i.i, align 16, !tbaa !80
  %i.ed = shl <4 x i32> %.sroa.0.i.sroa.6.0.copyload6.i, splat (i32 1)
  %i.ee = bitcast <4 x i32> %i.ed to <2 x i64>
  %i.ef = and <2 x i64> %i.ee, splat (i64 -6148914691236517206)
  %i.eg = and <2 x i64> %.sroa.0.i.sroa.0.0.copyload.i, splat (i64 6148914691236517205)
  %i.eh = or disjoint <2 x i64> %i.ef, %i.eg      ; 2 uses
  %i.ei = shl <4 x i32> %.sroa.0.i.sroa.10.0.copyload7.i, splat (i32 1)
  %i.ej = bitcast <4 x i32> %i.ei to <2 x i64>
  %i.ek = and <2 x i64> %i.ej, splat (i64 2459565876494606882)
  %i.el = and <2 x i64> %.sroa.0.i.sroa.8.0.copyload.i, splat (i64 1229782938247303441)
  %i.em = or disjoint <2 x i64> %i.ek, %i.el
  %i.en = shl <4 x i32> %.sroa.0.i.sroa.14.0.copyload8.i, splat (i32 1)
  %i.eo = bitcast <4 x i32> %i.en to <2 x i64>
  %i.ep = and <2 x i64> %i.eo, splat (i64 -6148914691236517206)
  %i.eq = and <2 x i64> %.sroa.0.i.sroa.12.0.copyload.i, splat (i64 6148914691236517205)
  %i.er = or disjoint <2 x i64> %i.ep, %i.eq
  %i.es = shl <4 x i32> %.sroa.0.i.sroa.18.0.copyload9.i, splat (i32 1)
  %i.et = bitcast <4 x i32> %i.es to <2 x i64>
  %i.eu = and <2 x i64> %i.et, splat (i64 2459565876494606882)
  %i.ev = and <2 x i64> %.sroa.0.i.sroa.16.0.copyload.i, splat (i64 1229782938247303441)
  %i.ew = or disjoint <2 x i64> %i.eu, %i.ev
  %i.ex = bitcast <2 x i64> %i.eh to <4 x i32>
  %i.ey = lshr <4 x i32> %i.ex, splat (i32 2)
  %i.ez = bitcast <4 x i32> %i.ey to <2 x i64>
  %.masked.i = and <2 x i64> %i.ez, splat (i64 3689348814741910323)
  %i.fa = xor <2 x i64> %.masked.i, %i.em
  %i.fb = bitcast <2 x i64> %i.fa to <4 x i32>
  %i.fc = shl nuw <4 x i32> %i.fb, splat (i32 2)
  %i.fd = bitcast <4 x i32> %i.fc to <2 x i64>
  %i.fe = xor <2 x i64> %i.eh, %i.fd              ; 2 uses
  %i.ff = bitcast <2 x i64> %i.er to <4 x i32>    ; 2 uses
  %i.fg = lshr <4 x i32> %i.ff, splat (i32 2)
  %i.fh = bitcast <4 x i32> %i.fg to <2 x i64>
  %.masked10.i = and <2 x i64> %i.fh, splat (i64 3689348814741910323)
  %i.fi = xor <2 x i64> %.masked10.i, %i.ew
  %i.fj = bitcast <2 x i64> %i.fi to <4 x i32>
  %i.fk = shl <4 x i32> %i.fj, splat (i32 6)
  %i.fl = shl <4 x i32> %i.ff, splat (i32 4)
  %i.fm = bitcast <2 x i64> %i.fe to <4 x i32>
  %i.fn = xor <4 x i32> %i.fl, %i.fm
  %i.fo = xor <4 x i32> %i.fn, %i.fk
  %i.fp = bitcast <4 x i32> %i.fo to <2 x i64>
  %i.fq = and <2 x i64> %i.fp, splat (i64 -1085102592571150096)
  %i.fr = xor <2 x i64> %i.fq, %i.fe              ; 2 uses
  %i.fs = bitcast <2 x i64> %i.fr to <16 x i8>    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %.sroa.0.8.vec.extract = shufflevector <16 x i8> %i.fs, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i8> %.sroa.0.8.vec.extract, ptr %i.l, align 1
  %i.ft = add nsw i64 %.02740, -1                 ; 2 uses
  %.not30 = icmp eq i64 %i.ft, 0
  br i1 %.not30, label %._crit_edge, label %bb.b, !llvm.loop !498

bb.c:                                             ; preds = %bb.a, %.split.us
  %.0 = phi i32 [ 1, %.split.us ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @AES_wrap_key_padded(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = add i64 %5, 7
  %i.c = and i64 %i.b, -8                         ; 4 uses
  store i64 0, ptr %2, align 8, !tbaa !96
  %i.d = add i64 %5, -4294967296
  %or.cond39 = icmp ult i64 %i.d, -4294967295
  %i.e = add nuw nsw i64 %i.c, 8
  %i.f = icmp ult i64 %3, %i.e
  %or.cond41 = select i1 %or.cond39, i1 true, i1 %i.f
  br i1 %or.cond41, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i32 -1504093786, ptr %i.a, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = trunc nuw i64 %5 to i32
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.h)
  store i32 %i.i, ptr %i.g, align 4
  %i.j = icmp samesign ult i64 %5, 9
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 1 %4, i64 %5, i1 false)
  call void @aes_nohw_encrypt(ptr noundef nonnull readonly %i.a, ptr noundef %1, ptr noundef readonly %0)
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.l = tail call ptr @OPENSSL_malloc(i64 noundef %i.c) #36 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  store i64 0, ptr %i.o, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %4, i64 %5, i1 false)
  %i.p = call i32 @AES_wrap_key(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.l, i64 noundef %i.c) ; 2 uses
  call void @OPENSSL_free(ptr noundef nonnull %i.l) #36
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = zext nneg i32 %i.p to i64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.f
  %.sink = phi i64 [ %i.r, %bb.f ], [ 16, %bb.c ]
  store i64 %.sink, ptr %2, align 8, !tbaa !96
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.d, %bb.e
  %.2 = phi i32 [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.3 = phi i32 [ %.2, %bb.g ], [ 0, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #7

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @AES_unwrap_key_padded(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  store i64 0, ptr %2, align 8, !tbaa !96
end_hunk_0
begin_hunk_1_@_ZL24aead_aes_ccm_open_gatherPK15evp_aead_ctx_stPhPKhmS4_mS4_mS4_m:bb.a
bb.l:                                             ; preds = %bb.g, %_ZL14ccm128_encryptPK14ccm128_contextP12ccm128_statePK10aes_key_stPhPKhm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 117, ptr noundef nonnull @.str.47, i32 noundef 341) #36
  br label %bb.o

bb.m:                                             ; preds = %bb.k, %._crit_edge55.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.ea = load i8, ptr %i.q, align 8, !tbaa !160
  %i.eb = zext i8 %i.ea to i64
  %i.ec = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.d, ptr noundef %6, i64 noundef %i.eb) #36
  %.not24 = icmp eq i32 %i.ec, 0
  br i1 %.not24, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.47, i32 noundef 346) #36
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %.0 = phi i32 [ 0, %bb.n ], [ 0, %bb.l ], [ 1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f, %bb.d, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ %.0, %bb.o ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL17ccm128_init_statePK14ccm128_contextP12ccm128_statePK10aes_key_stPKhmS8_mm(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef range(i64 0, 256) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !385    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !388  ; 8 uses
  %i.d = icmp ugt i32 %i.c, 7
  %i.e = shl nuw nsw i32 %i.c, 3
  %i.f = zext nneg i32 %i.e to i64
  %.highbits = lshr i64 %7, %i.f
  %i.g = icmp eq i64 %.highbits, 0
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  %i.i = sub i32 15, %i.c
  %i.j = zext i32 %i.i to i64
  %.not = icmp eq i64 %4, %i.j
  %or.cond = and i1 %.not, %i.h
  br i1 %or.cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !387
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.m, i8 0, i64 31, i1 false)
  %i.n = add i32 %i.c, 255
  %i.o = shl i32 %i.l, 2
  %i.p = and i32 %i.o, 248
  %i.q = add nuw nsw i32 %i.p, 248
  %i.r = or i32 %i.q, %i.n
  %i.s = trunc i32 %i.r to i8                     ; 2 uses
  %.not99 = icmp eq i64 %6, 0                     ; 2 uses
  %i.t = or i8 %i.s, 64
  %storemerge = select i1 %.not99, i8 %i.s, i8 %i.t
  store i8 %storemerge, ptr %1, align 16, !tbaa !80
  %i.u = icmp eq i64 %4, 0
  br i1 %i.u, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr readonly align 1 %3, i64 %4, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.b, %bb.c
  %.not112 = icmp eq i32 %i.c, 0
  br i1 %.not112, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  %wide.trip.count = zext i32 %i.c to i64         ; 5 uses
  %i.w = add i32 %i.c, -8
  %or.cond194 = icmp ult i32 %i.w, 9
  br i1 %or.cond194, label %vector.main.loop.iter.check, label %.lr.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check140.not = icmp eq i32 %i.c, 16
  br i1 %min.iters.check140.not, label %vector.body, label %vec.epilog.ph

vector.body:                                      ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %7, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.x = lshr <16 x i64> %broadcast.splat, <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56, i64 64, i64 72, i64 80, i64 88, i64 96, i64 104, i64 112, i64 120>
  %i.y = trunc <16 x i64> %i.x to <16 x i8>
  %reverse = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %1, align 16, !tbaa !80
  br label %._crit_edge

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec141 = and i64 %wide.trip.count, 24        ; 3 uses
  %broadcast.splatinsert142 = insertelement <8 x i64> poison, i64 %7, i64 0
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = shufflevector <8 x i64> %broadcast.splatinsert142, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.ab = lshr <8 x i64> %i.aa, <i64 56, i64 48, i64 40, i64 32, i64 24, i64 16, i64 8, i64 0>
  %reverse148 = trunc <8 x i64> %i.ab to <8 x i8>
  store <8 x i8> %reverse148, ptr %i.z, align 8, !tbaa !80
  %i.ac = icmp eq i64 %n.vec141, 8                ; 0 uses
  %cmp.n151 = icmp eq i64 %n.vec141, %wide.trip.count
  br i1 %cmp.n151, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.ph
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec141, %vec.epilog.ph ] ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ad = trunc i64 %7 to i8
  %i.ae = sub nsw i64 15, %indvars.iv.ph
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !80
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ah = add nsw i64 %wide.trip.count, -1
  %i.ai = icmp eq i64 %indvars.iv.ph, %i.ah
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vector.body, %vec.epilog.ph, %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  tail call void %i.a(ptr noundef nonnull %1, ptr noundef nonnull %i.aj, ptr noundef %2) #36
  br i1 %.not99, label %.loopexit, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ak = shl i64 %indvars.iv, 3
  %i.al = and i64 %i.ak, 4294967288
  %i.am = lshr i64 %7, %i.al
  %i.an = trunc i64 %i.am to i8
  %i.ao = sub nsw i64 15, %indvars.iv
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  store i8 %i.an, ptr %i.aq, align 1, !tbaa !80
  %indvars.iv.next = shl i64 %indvars.iv, 3
  %i.ar = add i64 %indvars.iv.next, 8
  %i.as = and i64 %i.ar, 4294967288
  %i.at = lshr i64 %7, %i.as
  %i.au = trunc i64 %i.at to i8
  %i.av = sub nsw i64 14, %indvars.iv
  %i.aw = and i64 %i.av, 4294967295
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !80
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1549

bb.d:                                             ; preds = %._crit_edge
  %i.ay = icmp ult i64 %6, 65280
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = lshr i64 %6, 8
  %i.ba = trunc nuw i64 %i.az to i8
  %i.bb = load i8, ptr %i.aj, align 16, !tbaa !80
  %i.bc = xor i8 %i.bb, %i.ba
  store i8 %i.bc, ptr %i.aj, align 16, !tbaa !80
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bd = icmp ult i64 %6, 4294967296
  %i.be = load i8, ptr %i.aj, align 16, !tbaa !80
  %i.bf = xor i8 %i.be, -1
  store i8 %i.bf, ptr %i.aj, align 16, !tbaa !80
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !80  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 4 uses
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = xor i8 %i.bh, -2
  store i8 %i.bj, ptr %i.bg, align 1, !tbaa !80
  %i.bk = lshr i64 %6, 24
  %i.bl = trunc nuw i64 %i.bk to i8
  %i.bm = load i8, ptr %i.bi, align 2, !tbaa !80
  %i.bn = xor i8 %i.bm, %i.bl
  store i8 %i.bn, ptr %i.bi, align 2, !tbaa !80
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 19 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !80
  %i.bq = lshr i64 %6, 16
  %i.br = trunc i64 %i.bq to i8
  %i.bs = xor i8 %i.bp, %i.br
  store i8 %i.bs, ptr %i.bo, align 1, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !80
  %i.bv = lshr i64 %6, 8
  %i.bw = trunc i64 %i.bv to i8
  %i.bx = xor i8 %i.bu, %i.bw
  store i8 %i.bx, ptr %i.bt, align 4, !tbaa !80
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.by = xor i8 %i.bh, -1
  store i8 %i.by, ptr %i.bg, align 1, !tbaa !80
  %i.bz = load <4 x i8>, ptr %i.bi, align 2, !tbaa !80
  %8 = bitcast i64 %6 to <8 x i8>
  %9 = shufflevector <8 x i8> %8, <8 x i8> poison, <4 x i32> <i32 7, i32 6, i32 5, i32 4>
  %i.ca = xor <4 x i8> %i.bz, %9
  store <4 x i8> %i.ca, ptr %i.bi, align 2, !tbaa !80
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !80
  %i.cd = lshr i64 %6, 24
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = xor i8 %i.cc, %i.ce
  store i8 %i.cf, ptr %i.cb, align 2, !tbaa !80
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 23 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !80
  %i.ci = lshr i64 %6, 16
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = xor i8 %i.ch, %i.cj
  store i8 %i.ck, ptr %i.cg, align 1, !tbaa !80
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !80
  %i.cn = lshr i64 %6, 8
  %i.co = trunc i64 %i.cn to i8
  %i.cp = xor i8 %i.cm, %i.co
  store i8 %i.cp, ptr %i.cl, align 8, !tbaa !80
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %.sink136 = phi i64 [ 21, %bb.g ], [ 25, %bb.h ], [ 17, %bb.e ]
  %.0 = phi i64 [ 6, %bb.g ], [ 10, %bb.h ], [ 2, %bb.e ]
  %i.cq = trunc i64 %6 to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %.sink136 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !80
  %i.ct = xor i8 %i.cs, %i.cq
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !80
  %scevgep = getelementptr i8, ptr %1, i64 16
  %scevgep153 = getelementptr i8, ptr %1, i64 17
  br label %iter.check173

iter.check173:                                    ; preds = %._crit_edge109, %bb.i
  %.093 = phi ptr [ %5, %bb.i ], [ %.lcssa138, %._crit_edge109 ] ; 8 uses
  %.091 = phi i64 [ %6, %bb.i ], [ %.lcssa137, %._crit_edge109 ] ; 8 uses
  %.086 = phi i64 [ 1, %bb.i ], [ %i.eb, %._crit_edge109 ]
  %.1 = phi i64 [ %.0, %bb.i ], [ 0, %._crit_edge109 ] ; 10 uses
  %i.cu = add i64 %.091, -1
  %i.cv = sub nsw i64 15, %.1
  %umin157 = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cv) ; 3 uses
  %i.cw = add nuw nsw i64 %umin157, 1             ; 5 uses
  %min.iters.check158 = icmp ult i64 %umin157, 3
  br i1 %min.iters.check158, label %.lr.ph108.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check173
  %scevgep152 = getelementptr i8, ptr %scevgep, i64 %.1
  %i.cx = add i64 %.091, -1
  %i.cy = sub nsw i64 15, %.1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 %i.cy) ; 2 uses
  %i.cz = getelementptr i8, ptr %scevgep153, i64 %.1
  %scevgep154 = getelementptr i8, ptr %i.cz, i64 %umin
  %scevgep155 = getelementptr i8, ptr %.093, i64 1
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %umin
  %bound0 = icmp ult ptr %scevgep152, %scevgep156
  %bound1 = icmp ult ptr %.093, %scevgep154
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph108.preheader, label %vector.main.loop.iter.check159

vector.main.loop.iter.check159:                   ; preds = %vector.memcheck
  %min.iters.check160 = icmp ult i64 %umin157, 15
  br i1 %min.iters.check160, label %vec.epilog.ph177, label %vector.ph161

vector.ph161:                                     ; preds = %vector.main.loop.iter.check159
  %n.vec162 = and i64 %i.cw, -16                  ; 5 uses
  %i.da = sub i64 %.091, %n.vec162                ; 3 uses
  %i.db = getelementptr i8, ptr %.093, i64 %n.vec162 ; 2 uses
  %wide.load = load <16 x i8>, ptr %.093, align 1, !tbaa !80, !alias.scope !1556
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.1 ; 2 uses
  %wide.load166 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !80, !alias.scope !1557, !noalias !1556
  %i.dd = xor <16 x i8> %wide.load166, %wide.load
  store <16 x i8> %i.dd, ptr %i.dc, align 1, !tbaa !80, !alias.scope !1557, !noalias !1556
  %i.de = icmp ne i64 %.091, 16
  %cmp.n168 = icmp eq i64 %i.cw, %n.vec162
  br i1 %cmp.n168, label %._crit_edge109, label %vec.epilog.iter.check175

vec.epilog.iter.check175:                         ; preds = %vector.ph161
  %i.df = add i64 %.1, %n.vec162
  %i.dg = and i64 %i.cw, 12
  %min.epilog.iters.check176 = icmp eq i64 %i.dg, 0
  br i1 %min.epilog.iters.check176, label %.lr.ph108.preheader, label %vec.epilog.ph177, !prof !107

vec.epilog.ph177:                                 ; preds = %vector.main.loop.iter.check159, %vec.epilog.iter.check175
  %vec.epilog.resume.val169 = phi i64 [ %n.vec162, %vec.epilog.iter.check175 ], [ 0, %vector.main.loop.iter.check159 ]
  %bc.resume.val171 = phi i64 [ %i.da, %vec.epilog.iter.check175 ], [ %.091, %vector.main.loop.iter.check159 ]
  %n.vec178 = and i64 %i.cw, -4                   ; 5 uses
  %i.dh = add i64 %.1, %n.vec178
  %i.di = sub i64 %.091, %n.vec178                ; 2 uses
  %i.dj = getelementptr i8, ptr %.093, i64 %n.vec178 ; 2 uses
  %i.dk = add i64 %bc.resume.val171, -3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.1
  br label %vec.epilog.vector.body181

vec.epilog.vector.body181:                        ; preds = %vec.epilog.vector.body181, %vec.epilog.ph177
  %index182 = phi i64 [ %vec.epilog.resume.val169, %vec.epilog.ph177 ], [ %index.next186, %vec.epilog.vector.body181 ] ; 3 uses
  %i.dm = phi i64 [ %i.dk, %vec.epilog.ph177 ], [ %i.dp, %vec.epilog.vector.body181 ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.093, i64 %index182
  %wide.load184 = load <4 x i8>, ptr %next.gep, align 1, !tbaa !80, !alias.scope !1556
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index182 ; 2 uses
  %wide.load185 = load <4 x i8>, ptr %i.dn, align 1, !tbaa !80, !alias.scope !1557, !noalias !1556
  %i.do = xor <4 x i8> %wide.load185, %wide.load184
  store <4 x i8> %i.do, ptr %i.dn, align 1, !tbaa !80, !alias.scope !1557, !noalias !1556
  %index.next186 = add nuw i64 %index182, 4       ; 2 uses
  %i.dp = add i64 %i.dm, -4
  %i.dq = icmp eq i64 %index.next186, %n.vec178
  br i1 %i.dq, label %vec.epilog.middle.block188, label %vec.epilog.vector.body181, !llvm.loop !1553

vec.epilog.middle.block188:                       ; preds = %vec.epilog.vector.body181
  %i.dr = icmp ne i64 %i.dm, 1
  %cmp.n189 = icmp eq i64 %i.cw, %n.vec178
  br i1 %cmp.n189, label %._crit_edge109, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %iter.check173, %vector.memcheck, %vec.epilog.iter.check175, %vec.epilog.middle.block188
  %indvars.iv119.ph = phi i64 [ %.1, %iter.check173 ], [ %.1, %vector.memcheck ], [ %i.df, %vec.epilog.iter.check175 ], [ %i.dh, %vec.epilog.middle.block188 ]
  %.192105.ph = phi i64 [ %.091, %iter.check173 ], [ %.091, %vector.memcheck ], [ %i.da, %vec.epilog.iter.check175 ], [ %i.di, %vec.epilog.middle.block188 ]
  %.194104.ph = phi ptr [ %.093, %iter.check173 ], [ %.093, %vector.memcheck ], [ %i.db, %vec.epilog.iter.check175 ], [ %i.dj, %vec.epilog.middle.block188 ]
  br label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %.lr.ph108 ], [ %indvars.iv119.ph, %.lr.ph108.preheader ] ; 3 uses
  %.192105 = phi i64 [ %i.dx, %.lr.ph108 ], [ %.192105.ph, %.lr.ph108.preheader ]
  %.194104 = phi ptr [ %i.dw, %.lr.ph108 ], [ %.194104.ph, %.lr.ph108.preheader ] ; 2 uses
  %i.ds = load i8, ptr %.194104, align 1, !tbaa !80
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv119 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !80
  %i.dv = xor i8 %i.du, %i.ds
  store i8 %i.dv, ptr %i.dt, align 1, !tbaa !80
  %i.dw = getelementptr inbounds nuw i8, ptr %.194104, i64 1 ; 2 uses
  %i.dx = add i64 %.192105, -1                    ; 3 uses
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %i.dy = icmp samesign ult i64 %indvars.iv119, 15
  %i.dz = icmp ne i64 %i.dx, 0                    ; 2 uses
  %i.ea = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %i.ea, label %.lr.ph108, label %._crit_edge109, !llvm.loop !1554

._crit_edge109:                                   ; preds = %.lr.ph108, %vec.epilog.middle.block188, %vector.ph161
  %.lcssa138 = phi ptr [ %i.dj, %vec.epilog.middle.block188 ], [ %i.db, %vector.ph161 ], [ %i.dw, %.lr.ph108 ]
  %.lcssa137 = phi i64 [ %i.di, %vec.epilog.middle.block188 ], [ %i.da, %vector.ph161 ], [ %i.dx, %.lr.ph108 ]
  %.lcssa = phi i1 [ %i.dr, %vec.epilog.middle.block188 ], [ %i.de, %vector.ph161 ], [ %i.dz, %.lr.ph108 ]
  tail call void %i.a(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.aj, ptr noundef %2) #36
  %i.eb = add i64 %.086, 1                        ; 2 uses
  br i1 %.lcssa, label %iter.check173, label %.loopexit, !llvm.loop !1555

.loopexit:                                        ; preds = %._crit_edge109, %._crit_edge
  %.187 = phi i64 [ 1, %._crit_edge ], [ %i.eb, %._crit_edge109 ] ; 2 uses
  %i.ec = icmp ugt i64 %7, -16
  br i1 %i.ec, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ed = add nuw i64 %7, 15
  %i.ee = lshr i64 %i.ed, 3
  %i.ef = or i64 %i.ee, 1
  %i.eg = add i64 %.187, %i.ef                    ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %.187
  %i.ei = icmp ugt i64 %i.eg, 2305843009213693952
  %or.cond101 = or i1 %i.eh, %i.ei
  br i1 %or.cond101, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ej = load i8, ptr %1, align 16, !tbaa !80
  %i.ek = and i8 %i.ej, 7
  store i8 %i.ek, ptr %1, align 16, !tbaa !80
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.loopexit, %bb.a
  %.190 = phi i32 [ 0, %bb.a ], [ 1, %bb.k ], [ 0, %bb.j ], [ 0, %.loopexit ]
  ret i32 %.190
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL29aead_aes_ccm_bluetooth_8_initP15evp_aead_ctx_stPKhmm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !156
  %i.b = load i8, ptr %i.a, align 8, !tbaa !150
  %i.c = zext i8 %i.b to i64
  %.not.i = icmp eq i64 %2, %i.c
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.47, i32 noundef 250) #36
  br label %_ZL17aead_aes_ccm_initP15evp_aead_ctx_stPKhmmjj.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %3, label %bb.d [
    i64 8, label %bb.e
    i64 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 116, ptr noundef nonnull @.str.47, i32 noundef 259) #36
  br label %_ZL17aead_aes_ccm_initP15evp_aead_ctx_stPKhmmjj.exit

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = shl nuw nsw i32 %i.e, 3
  %i.g = tail call i32 @aes_nohw_set_encrypt_key(ptr noundef readonly %1, i32 noundef %i.f, ptr noundef nonnull %i.d) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i8 8, ptr %i.h, align 8, !tbaa !160
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
end_hunk_1
