Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 549
begin_hunk_0_@AES_wrap_key:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.ae = bitcast <2 x i64> %.sroa.0.0.copyload.i.i to <4 x i32>
  %i.af = lshr <4 x i32> %i.ae, splat (i32 1)
  %i.ag = bitcast <4 x i32> %i.af to <2 x i64>
  %i.ah = xor <2 x i64> %.sroa.0.0.copyload.i.i, %i.ag
  %i.ai = and <2 x i64> %i.ah, splat (i64 6148914691236517205) ; 2 uses
  %i.aj = bitcast <2 x i64> %i.ai to <4 x i32>
  %i.ak = shl nuw <4 x i32> %i.aj, splat (i32 1)
  %i.al = bitcast <4 x i32> %i.ak to <2 x i64>
  %i.am = xor <2 x i64> %.sroa.0.0.copyload.i.i, %i.al ; 4 uses
  %i.an = xor <2 x i64> %i.ai, %.sroa.0.0.copyload.i.i ; 4 uses
  %i.ao = bitcast <2 x i64> %i.am to <4 x i32>
  %i.ap = lshr <4 x i32> %i.ao, splat (i32 2)
  %i.aq = bitcast <4 x i32> %i.ap to <2 x i64>
  %i.ar = xor <2 x i64> %i.am, %i.aq
  %i.as = and <2 x i64> %i.ar, splat (i64 3689348814741910323) ; 2 uses
  %i.at = bitcast <2 x i64> %i.as to <4 x i32>
  %i.au = shl nuw <4 x i32> %i.at, splat (i32 2)
  %i.av = bitcast <4 x i32> %i.au to <2 x i64>
  %i.aw = xor <2 x i64> %i.am, %i.av              ; 4 uses
  %i.ax = xor <2 x i64> %i.as, %i.am              ; 4 uses
  %i.ay = bitcast <2 x i64> %i.an to <4 x i32>
  %i.az = lshr <4 x i32> %i.ay, splat (i32 2)
  %i.ba = bitcast <4 x i32> %i.az to <2 x i64>
  %i.bb = xor <2 x i64> %i.an, %i.ba
  %i.bc = and <2 x i64> %i.bb, splat (i64 3689348814741910323) ; 2 uses
  %i.bd = bitcast <2 x i64> %i.bc to <4 x i32>
  %i.be = shl nuw <4 x i32> %i.bd, splat (i32 2)
  %i.bf = bitcast <4 x i32> %i.be to <2 x i64>
  %i.bg = xor <2 x i64> %i.an, %i.bf              ; 4 uses
  %i.bh = xor <2 x i64> %i.bc, %i.an              ; 4 uses
  %i.bi = bitcast <2 x i64> %i.aw to <4 x i32>
  %i.bj = lshr <4 x i32> %i.bi, splat (i32 4)
  %i.bk = bitcast <4 x i32> %i.bj to <2 x i64>
  %i.bl = xor <2 x i64> %i.aw, %i.bk
  %i.bm = and <2 x i64> %i.bl, splat (i64 1085102592571150095) ; 2 uses
  %i.bn = bitcast <2 x i64> %i.bm to <4 x i32>
  %i.bo = shl nuw <4 x i32> %i.bn, splat (i32 4)
  %i.bp = bitcast <4 x i32> %i.bo to <2 x i64>
  %i.bq = xor <2 x i64> %i.aw, %i.bp
  store <2 x i64> %i.bq, ptr %i.w, align 16, !tbaa !76
  %i.br = xor <2 x i64> %i.bm, %i.aw
  store <2 x i64> %i.br, ptr %i.aa, align 16, !tbaa !76
  %i.bs = bitcast <2 x i64> %i.bg to <4 x i32>
  %i.bt = lshr <4 x i32> %i.bs, splat (i32 4)
  %i.bu = bitcast <4 x i32> %i.bt to <2 x i64>
  %i.bv = xor <2 x i64> %i.bg, %i.bu
  %i.bw = and <2 x i64> %i.bv, splat (i64 1085102592571150095) ; 2 uses
  %i.bx = bitcast <2 x i64> %i.bw to <4 x i32>
  %i.by = shl nuw <4 x i32> %i.bx, splat (i32 4)
  %i.bz = bitcast <4 x i32> %i.by to <2 x i64>
  %i.ca = xor <2 x i64> %i.bg, %i.bz
  store <2 x i64> %i.ca, ptr %i.x, align 16, !tbaa !76
  %i.cb = xor <2 x i64> %i.bw, %i.bg
  store <2 x i64> %i.cb, ptr %i.ab, align 16, !tbaa !76
  %i.cc = bitcast <2 x i64> %i.ax to <4 x i32>
  %i.cd = lshr <4 x i32> %i.cc, splat (i32 4)
  %i.ce = bitcast <4 x i32> %i.cd to <2 x i64>
  %i.cf = xor <2 x i64> %i.ax, %i.ce
  %i.cg = and <2 x i64> %i.cf, splat (i64 1085102592571150095) ; 2 uses
  %i.ch = bitcast <2 x i64> %i.cg to <4 x i32>
  %i.ci = shl nuw <4 x i32> %i.ch, splat (i32 4)
  %i.cj = bitcast <4 x i32> %i.ci to <2 x i64>
  %i.ck = xor <2 x i64> %i.ax, %i.cj
  store <2 x i64> %i.ck, ptr %i.y, align 16, !tbaa !76
  %i.cl = xor <2 x i64> %i.cg, %i.ax
  store <2 x i64> %i.cl, ptr %i.ac, align 16, !tbaa !76
  %i.cm = bitcast <2 x i64> %i.bh to <4 x i32>
  %i.cn = lshr <4 x i32> %i.cm, splat (i32 4)
  %i.co = bitcast <4 x i32> %i.cn to <2 x i64>
  %i.cp = xor <2 x i64> %i.bh, %i.co
  %i.cq = and <2 x i64> %i.cp, splat (i64 1085102592571150095) ; 2 uses
  %i.cr = bitcast <2 x i64> %i.cq to <4 x i32>
  %i.cs = shl nuw <4 x i32> %i.cr, splat (i32 4)
  %i.ct = bitcast <4 x i32> %i.cs to <2 x i64>
  %i.cu = xor <2 x i64> %i.bh, %i.ct
  store <2 x i64> %i.cu, ptr %i.z, align 16, !tbaa !76
  %i.cv = xor <2 x i64> %i.cq, %i.bh
  store <2 x i64> %i.cv, ptr %i.ad, align 16, !tbaa !76
  %i.cw = add nuw nsw i64 %.01113.i.i, 1
  %exitcond.not.i = icmp eq i64 %.01113.i.i, %i.u
  br i1 %exitcond.not.i, label %aes_nohw_encrypt.exit, label %.preheader.i.i, !llvm.loop !0

aes_nohw_encrypt.exit:                            ; preds = %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %.sroa.0.0.copyload.i4.i = load <2 x i64>, ptr %i.a, align 16 ; 2 uses
  %i.cx = bitcast <2 x i64> %.sroa.0.0.copyload.i4.i to <4 x i32> ; 3 uses
  %i.cy = lshr <4 x i32> %i.cx, splat (i32 1)
  %.inner = and <4 x i32> %i.cy, splat (i32 1431655765) ; 2 uses
  %i.cz = shl nuw <4 x i32> %.inner, splat (i32 1)
  %i.da = bitcast <4 x i32> %i.cz to <2 x i64>
  %i.db = xor <2 x i64> %.sroa.0.0.copyload.i4.i, %i.da ; 2 uses
  %i.dc = bitcast <2 x i64> %i.db to <4 x i32>    ; 2 uses
  %i.dd = lshr <4 x i32> %i.dc, splat (i32 2)
  %.inner42 = and <4 x i32> %i.dd, splat (i32 858993459) ; 2 uses
  %i.de = shl nuw <4 x i32> %.inner42, splat (i32 2)
  %i.df = bitcast <4 x i32> %i.de to <2 x i64>
  %i.dg = xor <2 x i64> %i.db, %i.df              ; 2 uses
  %i.dh = lshr <4 x i32> %i.cx, splat (i32 3)
  %.inner43 = and <4 x i32> %i.dh, splat (i32 286331153) ; 2 uses
  %i.di = shl nuw nsw <4 x i32> %.inner43, splat (i32 2)
  %.inner44 = xor <4 x i32> %.inner, %i.di        ; 2 uses
  %i.dj = bitcast <2 x i64> %i.dg to <4 x i32>
  %i.dk = lshr <4 x i32> %i.dj, splat (i32 4)
  %i.dl = bitcast <4 x i32> %i.dk to <2 x i64>
  %i.dm = and <2 x i64> %i.dl, splat (i64 1085102592571150095) ; 2 uses
  %i.dn = bitcast <2 x i64> %i.dm to <4 x i32>
  %i.do = shl nuw <4 x i32> %i.dn, splat (i32 4)
  %i.dp = bitcast <4 x i32> %i.do to <2 x i64>
  %i.dq = xor <2 x i64> %i.dg, %i.dp
  store <2 x i64> %i.dq, ptr %6, align 16, !tbaa !76
  store <2 x i64> %i.dm, ptr %.phi.trans.insert14.i.i, align 16, !tbaa !76
  %i.dr = lshr <4 x i32> %.inner44, splat (i32 4)
  %i.ds = bitcast <4 x i32> %i.dr to <2 x i64>
  %i.dt = and <2 x i64> %i.ds, splat (i64 361700864190383365) ; 2 uses
  %i.du = bitcast <2 x i64> %i.dt to <4 x i32>
  %i.dv = shl nuw nsw <4 x i32> %i.du, splat (i32 4)
  %.inner47 = xor <4 x i32> %.inner44, %i.dv
  store <4 x i32> %.inner47, ptr %.phi.trans.insert.i.i, align 16, !tbaa !76
  store <2 x i64> %i.dt, ptr %.phi.trans.insert16.i.i, align 16, !tbaa !76
  %i.dw = lshr <4 x i32> %i.dc, splat (i32 6)
  %i.dx = bitcast <4 x i32> %i.dw to <2 x i64>
  %i.dy = and <2 x i64> %i.dx, splat (i64 217020518514230019) ; 2 uses
  %i.dz = bitcast <2 x i64> %i.dy to <4 x i32>
  %i.ea = shl nuw nsw <4 x i32> %i.dz, splat (i32 4)
  %.inner49 = xor <4 x i32> %.inner42, %i.ea
  store <4 x i32> %.inner49, ptr %.phi.trans.insert10.i.i, align 16, !tbaa !76
  store <2 x i64> %i.dy, ptr %.phi.trans.insert18.i.i, align 16, !tbaa !76
  %i.eb = lshr <4 x i32> %i.cx, splat (i32 7)
  %i.ec = bitcast <4 x i32> %i.eb to <2 x i64>
  %i.ed = and <2 x i64> %i.ec, splat (i64 72340172838076673) ; 2 uses
  %i.ee = bitcast <2 x i64> %i.ed to <4 x i32>
  %i.ef = shl nuw nsw <4 x i32> %i.ee, splat (i32 4)
  %.inner51 = xor <4 x i32> %.inner43, %i.ef
  store <4 x i32> %.inner51, ptr %.phi.trans.insert12.i.i, align 16, !tbaa !76
  store <2 x i64> %i.ed, ptr %.phi.trans.insert20.i.i, align 16, !tbaa !76
  call fastcc void @aes_nohw_encrypt_batch(ptr noundef %5, i64 noundef %i.u, ptr noundef %6)
  %.sroa.0.i.sroa.0.0.copyload.i = load <2 x i64>, ptr %6, align 16
  %.sroa.0.i.sroa.6.0.copyload6.i = load <4 x i32>, ptr %.phi.trans.insert.i.i, align 16
  %.sroa.0.i.sroa.8.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert10.i.i, align 16
  %.sroa.0.i.sroa.10.0.copyload7.i = load <4 x i32>, ptr %.phi.trans.insert12.i.i, align 16
  %.sroa.0.i.sroa.12.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert14.i.i, align 16
  %.sroa.0.i.sroa.14.0.copyload8.i = load <4 x i32>, ptr %.phi.trans.insert16.i.i, align 16
  %.sroa.0.i.sroa.16.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert18.i.i, align 16
  %.sroa.0.i.sroa.18.0.copyload9.i = load <4 x i32>, ptr %.phi.trans.insert20.i.i, align 16, !tbaa !76
  %i.eg = shl <4 x i32> %.sroa.0.i.sroa.6.0.copyload6.i, splat (i32 1)
  %i.eh = bitcast <4 x i32> %i.eg to <2 x i64>
  %i.ei = and <2 x i64> %i.eh, splat (i64 -6148914691236517206)
  %i.ej = and <2 x i64> %.sroa.0.i.sroa.0.0.copyload.i, splat (i64 6148914691236517205)
  %i.ek = or disjoint <2 x i64> %i.ei, %i.ej      ; 2 uses
  %i.el = shl <4 x i32> %.sroa.0.i.sroa.10.0.copyload7.i, splat (i32 1)
  %i.em = bitcast <4 x i32> %i.el to <2 x i64>
  %i.en = and <2 x i64> %i.em, splat (i64 2459565876494606882)
  %i.eo = and <2 x i64> %.sroa.0.i.sroa.8.0.copyload.i, splat (i64 1229782938247303441)
  %i.ep = or disjoint <2 x i64> %i.en, %i.eo
  %i.eq = shl <4 x i32> %.sroa.0.i.sroa.14.0.copyload8.i, splat (i32 1)
  %i.er = bitcast <4 x i32> %i.eq to <2 x i64>
  %i.es = and <2 x i64> %i.er, splat (i64 -6148914691236517206)
  %i.et = and <2 x i64> %.sroa.0.i.sroa.12.0.copyload.i, splat (i64 6148914691236517205)
  %i.eu = or disjoint <2 x i64> %i.es, %i.et
  %i.ev = shl <4 x i32> %.sroa.0.i.sroa.18.0.copyload9.i, splat (i32 1)
  %i.ew = bitcast <4 x i32> %i.ev to <2 x i64>
  %i.ex = and <2 x i64> %i.ew, splat (i64 2459565876494606882)
  %i.ey = and <2 x i64> %.sroa.0.i.sroa.16.0.copyload.i, splat (i64 1229782938247303441)
  %i.ez = or disjoint <2 x i64> %i.ex, %i.ey
  %i.fa = bitcast <2 x i64> %i.ek to <4 x i32>
  %i.fb = lshr <4 x i32> %i.fa, splat (i32 2)
  %i.fc = bitcast <4 x i32> %i.fb to <2 x i64>
  %.masked.i = and <2 x i64> %i.fc, splat (i64 3689348814741910323)
  %i.fd = xor <2 x i64> %.masked.i, %i.ep
  %i.fe = bitcast <2 x i64> %i.fd to <4 x i32>
  %i.ff = shl nuw <4 x i32> %i.fe, splat (i32 2)
  %i.fg = bitcast <4 x i32> %i.ff to <2 x i64>
  %i.fh = xor <2 x i64> %i.ek, %i.fg              ; 2 uses
  %i.fi = bitcast <2 x i64> %i.eu to <4 x i32>    ; 2 uses
  %i.fj = lshr <4 x i32> %i.fi, splat (i32 2)
  %i.fk = bitcast <4 x i32> %i.fj to <2 x i64>
  %.masked10.i = and <2 x i64> %i.fk, splat (i64 3689348814741910323)
  %i.fl = xor <2 x i64> %.masked10.i, %i.ez
  %i.fm = bitcast <2 x i64> %i.fl to <4 x i32>
  %i.fn = shl <4 x i32> %i.fm, splat (i32 6)
  %i.fo = shl <4 x i32> %i.fi, splat (i32 4)
  %i.fp = bitcast <2 x i64> %i.fh to <4 x i32>
  %i.fq = xor <4 x i32> %i.fo, %i.fp
  %i.fr = xor <4 x i32> %i.fq, %i.fn
  %i.fs = bitcast <4 x i32> %i.fr to <2 x i64>
  %i.ft = and <2 x i64> %i.fs, splat (i64 -1085102592571150096)
  %i.fu = xor <2 x i64> %i.ft, %i.fh
  store <2 x i64> %i.fu, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %AES_encrypt.exit

AES_encrypt.exit:                                 ; preds = %bb.c, %bb.e, %aes_nohw_encrypt.exit
  %i.fv = add nuw nsw i64 %.02936, %i.k
  %i.fw = load <4 x i8>, ptr %i.j, align 4, !tbaa !76
  %7 = bitcast i64 %i.fv to <8 x i8>
  %8 = shufflevector <8 x i8> %7, <8 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.fx = xor <4 x i8> %i.fw, %8
  store <4 x i8> %i.fx, ptr %i.j, align 4, !tbaa !76
  %i.fy = load i64, ptr %i.h, align 8
  store i64 %i.fy, ptr %i.o, align 1
  %i.fz = add nuw nsw i64 %.02936, 1
  %exitcond.not = icmp eq i64 %.02936, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !653

bb.g:                                             ; preds = %bb.a, %.split
  %.0 = phi i32 [ %i.m, %.split ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 2147483640) i32 @AES_unwrap_key(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = call fastcc i32 @aes_unwrap_key_inner(ptr noundef %0, ptr noundef %2, ptr noundef %i.a, ptr noundef %3, i64 noundef %4)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  %spec.store.select = select i1 %i.c, ptr @kDefaultIV, ptr %1
  %i.d = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.a, ptr noundef nonnull %spec.store.select, i64 noundef 8) #46
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %4 to i32
  %i.f = add nsw i32 %i.e, -8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -1, %bb.a ], [ %i.f, %bb.c ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @aes_unwrap_key_inner(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.AES_NOHW_SCHEDULE, align 16 ; 4 uses
  %6 = alloca %struct.AES_NOHW_BATCH, align 16    ; 12 uses
  %i.a = alloca [16 x i8], align 16               ; 12 uses
  %i.b = add i64 %4, -24
  %or.cond = icmp ult i64 %i.b, 2147483624
  %i.c = and i64 %4, 7
  %.not = icmp eq i64 %i.c, 0
  %or.cond31 = and i1 %or.cond, %.not
  br i1 %or.cond31, label %OPENSSL_memmove.exit, label %bb.g

OPENSSL_memmove.exit:                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.d = load i64, ptr %3, align 1
  store i64 %i.d, ptr %i.a, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = add nsw i64 %4, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 1 %i.e, i64 %i.f, i1 false)
  %i.g = lshr exact i64 %4, 3
  %i.h = add nsw i64 %i.g, -1                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %.phi.trans.insert10.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %.phi.trans.insert12.i.i = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %.phi.trans.insert14.i.i = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %.phi.trans.insert16.i.i = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %.phi.trans.insert18.i.i = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %.phi.trans.insert20.i.i = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %OPENSSL_memmove.exit, %._crit_edge
  %indvars.iv = phi i64 [ 5, %OPENSSL_memmove.exit ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.l = mul nuw nsw i64 %i.h, %indvars.iv
  br label %bb.b

.split.loopexit:                                  ; preds = %._crit_edge
  %.pre = load i64, ptr %i.a, align 16
  store i64 %.pre, ptr %2, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.g

._crit_edge:                                      ; preds = %AES_decrypt.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.m = icmp ult i64 %indvars.iv.next, 6
  br i1 %i.m, label %.preheader, label %.split.loopexit, !llvm.loop !654

bb.b:                                             ; preds = %.preheader, %AES_decrypt.exit
  %.02733 = phi i64 [ %i.h, %.preheader ], [ %i.ga, %AES_decrypt.exit ] ; 3 uses
  %i.n = add nuw nsw i64 %.02733, %i.l
  %i.o = load <4 x i8>, ptr %i.i, align 4, !tbaa !76
  %7 = bitcast i64 %i.n to <8 x i8>
  %8 = shufflevector <8 x i8> %7, <8 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.p = xor <4 x i8> %i.o, %8
  store <4 x i8> %i.p, ptr %i.i, align 4, !tbaa !76
  %i.q = shl i64 %.02733, 3
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -8       ; 2 uses
  %i.t = load i64, ptr %i.s, align 1
  store i64 %i.t, ptr %i.j, align 8
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.v = and i32 %i.u, 33554432
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @aes_hw_decrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #46
  br label %AES_decrypt.exit

bb.d:                                             ; preds = %bb.b
  %i.w = and i32 %i.u, 512
  %.not9.i = icmp eq i32 %i.w, 0
  br i1 %.not9.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @vpaes_decrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #46
  br label %AES_decrypt.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.x = load i32, ptr %i.k, align 4, !tbaa !75
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %bb.f
  %.01113.i.i = phi i64 [ 0, %bb.f ], [ %i.da, %.preheader.i.i ] ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %.01113.i.i, 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %.01113.i.i ; 8 uses
  %.sroa.0.0.copyload.i.i = load <2 x i64>, ptr %i.z, align 4 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.ai = bitcast <2 x i64> %.sroa.0.0.copyload.i.i to <4 x i32>
  %i.aj = lshr <4 x i32> %i.ai, splat (i32 1)
  %i.ak = bitcast <4 x i32> %i.aj to <2 x i64>
  %i.al = xor <2 x i64> %.sroa.0.0.copyload.i.i, %i.ak
  %i.am = and <2 x i64> %i.al, splat (i64 6148914691236517205) ; 2 uses
  %i.an = bitcast <2 x i64> %i.am to <4 x i32>
  %i.ao = shl nuw <4 x i32> %i.an, splat (i32 1)
  %i.ap = bitcast <4 x i32> %i.ao to <2 x i64>
  %i.aq = xor <2 x i64> %.sroa.0.0.copyload.i.i, %i.ap ; 4 uses
  %i.ar = xor <2 x i64> %i.am, %.sroa.0.0.copyload.i.i ; 4 uses
  %i.as = bitcast <2 x i64> %i.aq to <4 x i32>
  %i.at = lshr <4 x i32> %i.as, splat (i32 2)
  %i.au = bitcast <4 x i32> %i.at to <2 x i64>
  %i.av = xor <2 x i64> %i.aq, %i.au
  %i.aw = and <2 x i64> %i.av, splat (i64 3689348814741910323) ; 2 uses
  %i.ax = bitcast <2 x i64> %i.aw to <4 x i32>
  %i.ay = shl nuw <4 x i32> %i.ax, splat (i32 2)
  %i.az = bitcast <4 x i32> %i.ay to <2 x i64>
  %i.ba = xor <2 x i64> %i.aq, %i.az              ; 4 uses
  %i.bb = xor <2 x i64> %i.aw, %i.aq              ; 4 uses
  %i.bc = bitcast <2 x i64> %i.ar to <4 x i32>
  %i.bd = lshr <4 x i32> %i.bc, splat (i32 2)
  %i.be = bitcast <4 x i32> %i.bd to <2 x i64>
  %i.bf = xor <2 x i64> %i.ar, %i.be
  %i.bg = and <2 x i64> %i.bf, splat (i64 3689348814741910323) ; 2 uses
  %i.bh = bitcast <2 x i64> %i.bg to <4 x i32>
  %i.bi = shl nuw <4 x i32> %i.bh, splat (i32 2)
  %i.bj = bitcast <4 x i32> %i.bi to <2 x i64>
  %i.bk = xor <2 x i64> %i.ar, %i.bj              ; 4 uses
  %i.bl = xor <2 x i64> %i.bg, %i.ar              ; 4 uses
  %i.bm = bitcast <2 x i64> %i.ba to <4 x i32>
  %i.bn = lshr <4 x i32> %i.bm, splat (i32 4)
  %i.bo = bitcast <4 x i32> %i.bn to <2 x i64>
  %i.bp = xor <2 x i64> %i.ba, %i.bo
  %i.bq = and <2 x i64> %i.bp, splat (i64 1085102592571150095) ; 2 uses
  %i.br = bitcast <2 x i64> %i.bq to <4 x i32>
  %i.bs = shl nuw <4 x i32> %i.br, splat (i32 4)
  %i.bt = bitcast <4 x i32> %i.bs to <2 x i64>
  %i.bu = xor <2 x i64> %i.ba, %i.bt
  store <2 x i64> %i.bu, ptr %i.aa, align 16, !tbaa !76
  %i.bv = xor <2 x i64> %i.bq, %i.ba
  store <2 x i64> %i.bv, ptr %i.ae, align 16, !tbaa !76
  %i.bw = bitcast <2 x i64> %i.bk to <4 x i32>
  %i.bx = lshr <4 x i32> %i.bw, splat (i32 4)
  %i.by = bitcast <4 x i32> %i.bx to <2 x i64>
  %i.bz = xor <2 x i64> %i.bk, %i.by
  %i.ca = and <2 x i64> %i.bz, splat (i64 1085102592571150095) ; 2 uses
  %i.cb = bitcast <2 x i64> %i.ca to <4 x i32>
  %i.cc = shl nuw <4 x i32> %i.cb, splat (i32 4)
  %i.cd = bitcast <4 x i32> %i.cc to <2 x i64>
  %i.ce = xor <2 x i64> %i.bk, %i.cd
  store <2 x i64> %i.ce, ptr %i.ab, align 16, !tbaa !76
  %i.cf = xor <2 x i64> %i.ca, %i.bk
  store <2 x i64> %i.cf, ptr %i.af, align 16, !tbaa !76
  %i.cg = bitcast <2 x i64> %i.bb to <4 x i32>
  %i.ch = lshr <4 x i32> %i.cg, splat (i32 4)
  %i.ci = bitcast <4 x i32> %i.ch to <2 x i64>
  %i.cj = xor <2 x i64> %i.bb, %i.ci
  %i.ck = and <2 x i64> %i.cj, splat (i64 1085102592571150095) ; 2 uses
  %i.cl = bitcast <2 x i64> %i.ck to <4 x i32>
  %i.cm = shl nuw <4 x i32> %i.cl, splat (i32 4)
  %i.cn = bitcast <4 x i32> %i.cm to <2 x i64>
  %i.co = xor <2 x i64> %i.bb, %i.cn
  store <2 x i64> %i.co, ptr %i.ac, align 16, !tbaa !76
  %i.cp = xor <2 x i64> %i.ck, %i.bb
  store <2 x i64> %i.cp, ptr %i.ag, align 16, !tbaa !76
  %i.cq = bitcast <2 x i64> %i.bl to <4 x i32>
  %i.cr = lshr <4 x i32> %i.cq, splat (i32 4)
  %i.cs = bitcast <4 x i32> %i.cr to <2 x i64>
  %i.ct = xor <2 x i64> %i.bl, %i.cs
  %i.cu = and <2 x i64> %i.ct, splat (i64 1085102592571150095) ; 2 uses
  %i.cv = bitcast <2 x i64> %i.cu to <4 x i32>
  %i.cw = shl nuw <4 x i32> %i.cv, splat (i32 4)
  %i.cx = bitcast <4 x i32> %i.cw to <2 x i64>
  %i.cy = xor <2 x i64> %i.bl, %i.cx
  store <2 x i64> %i.cy, ptr %i.ad, align 16, !tbaa !76
  %i.cz = xor <2 x i64> %i.cu, %i.bl
  store <2 x i64> %i.cz, ptr %i.ah, align 16, !tbaa !76
  %i.da = add nuw nsw i64 %.01113.i.i, 1
  %exitcond.not.i = icmp eq i64 %.01113.i.i, %i.y
  br i1 %exitcond.not.i, label %aes_nohw_decrypt.exit, label %.preheader.i.i, !llvm.loop !0

aes_nohw_decrypt.exit:                            ; preds = %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %.sroa.0.0.copyload.i4.i = load <2 x i64>, ptr %i.a, align 16 ; 2 uses
  %i.db = bitcast <2 x i64> %.sroa.0.0.copyload.i4.i to <4 x i32> ; 3 uses
  %i.dc = lshr <4 x i32> %i.db, splat (i32 1)
  %.inner = and <4 x i32> %i.dc, splat (i32 1431655765) ; 2 uses
  %i.dd = shl nuw <4 x i32> %.inner, splat (i32 1)
  %i.de = bitcast <4 x i32> %i.dd to <2 x i64>
  %i.df = xor <2 x i64> %.sroa.0.0.copyload.i4.i, %i.de ; 2 uses
  %i.dg = bitcast <2 x i64> %i.df to <4 x i32>    ; 2 uses
  %i.dh = lshr <4 x i32> %i.dg, splat (i32 2)
  %.inner39 = and <4 x i32> %i.dh, splat (i32 858993459) ; 2 uses
  %i.di = shl nuw <4 x i32> %.inner39, splat (i32 2)
  %i.dj = bitcast <4 x i32> %i.di to <2 x i64>
  %i.dk = xor <2 x i64> %i.df, %i.dj              ; 2 uses
  %i.dl = lshr <4 x i32> %i.db, splat (i32 3)
  %.inner40 = and <4 x i32> %i.dl, splat (i32 286331153) ; 2 uses
  %i.dm = shl nuw nsw <4 x i32> %.inner40, splat (i32 2)
  %.inner41 = xor <4 x i32> %.inner, %i.dm        ; 2 uses
  %i.dn = bitcast <2 x i64> %i.dk to <4 x i32>
  %i.do = lshr <4 x i32> %i.dn, splat (i32 4)
  %i.dp = bitcast <4 x i32> %i.do to <2 x i64>
  %i.dq = and <2 x i64> %i.dp, splat (i64 1085102592571150095) ; 2 uses
  %i.dr = bitcast <2 x i64> %i.dq to <4 x i32>
  %i.ds = shl nuw <4 x i32> %i.dr, splat (i32 4)
  %i.dt = bitcast <4 x i32> %i.ds to <2 x i64>
  %i.du = xor <2 x i64> %i.dk, %i.dt
  store <2 x i64> %i.du, ptr %6, align 16, !tbaa !76
  store <2 x i64> %i.dq, ptr %.phi.trans.insert14.i.i, align 16, !tbaa !76
  %i.dv = lshr <4 x i32> %.inner41, splat (i32 4)
  %i.dw = bitcast <4 x i32> %i.dv to <2 x i64>
  %i.dx = and <2 x i64> %i.dw, splat (i64 361700864190383365) ; 2 uses
  %i.dy = bitcast <2 x i64> %i.dx to <4 x i32>
  %i.dz = shl nuw nsw <4 x i32> %i.dy, splat (i32 4)
  %.inner44 = xor <4 x i32> %.inner41, %i.dz
  store <4 x i32> %.inner44, ptr %.phi.trans.insert.i.i, align 16, !tbaa !76
  store <2 x i64> %i.dx, ptr %.phi.trans.insert16.i.i, align 16, !tbaa !76
  %i.ea = lshr <4 x i32> %i.dg, splat (i32 6)
  %i.eb = bitcast <4 x i32> %i.ea to <2 x i64>
  %i.ec = and <2 x i64> %i.eb, splat (i64 217020518514230019) ; 2 uses
  %i.ed = bitcast <2 x i64> %i.ec to <4 x i32>
  %i.ee = shl nuw nsw <4 x i32> %i.ed, splat (i32 4)
  %.inner46 = xor <4 x i32> %.inner39, %i.ee
  store <4 x i32> %.inner46, ptr %.phi.trans.insert10.i.i, align 16, !tbaa !76
  store <2 x i64> %i.ec, ptr %.phi.trans.insert18.i.i, align 16, !tbaa !76
  %i.ef = lshr <4 x i32> %i.db, splat (i32 7)
  %i.eg = bitcast <4 x i32> %i.ef to <2 x i64>
  %i.eh = and <2 x i64> %i.eg, splat (i64 72340172838076673) ; 2 uses
  %i.ei = bitcast <2 x i64> %i.eh to <4 x i32>
  %i.ej = shl nuw nsw <4 x i32> %i.ei, splat (i32 4)
  %.inner48 = xor <4 x i32> %.inner40, %i.ej
  store <4 x i32> %.inner48, ptr %.phi.trans.insert12.i.i, align 16, !tbaa !76
  store <2 x i64> %i.eh, ptr %.phi.trans.insert20.i.i, align 16, !tbaa !76
  call fastcc void @aes_nohw_decrypt_batch(ptr noundef %5, i64 noundef %i.y, ptr noundef %6)
  %.sroa.0.i.sroa.0.0.copyload.i = load <2 x i64>, ptr %6, align 16
  %.sroa.0.i.sroa.6.0.copyload6.i = load <4 x i32>, ptr %.phi.trans.insert.i.i, align 16
  %.sroa.0.i.sroa.8.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert10.i.i, align 16
  %.sroa.0.i.sroa.10.0.copyload7.i = load <4 x i32>, ptr %.phi.trans.insert12.i.i, align 16
  %.sroa.0.i.sroa.12.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert14.i.i, align 16
  %.sroa.0.i.sroa.14.0.copyload8.i = load <4 x i32>, ptr %.phi.trans.insert16.i.i, align 16
  %.sroa.0.i.sroa.16.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert18.i.i, align 16
  %.sroa.0.i.sroa.18.0.copyload9.i = load <4 x i32>, ptr %.phi.trans.insert20.i.i, align 16, !tbaa !76
  %i.ek = shl <4 x i32> %.sroa.0.i.sroa.6.0.copyload6.i, splat (i32 1)
  %i.el = bitcast <4 x i32> %i.ek to <2 x i64>
  %i.em = and <2 x i64> %i.el, splat (i64 -6148914691236517206)
  %i.en = and <2 x i64> %.sroa.0.i.sroa.0.0.copyload.i, splat (i64 6148914691236517205)
  %i.eo = or disjoint <2 x i64> %i.em, %i.en      ; 2 uses
  %i.ep = shl <4 x i32> %.sroa.0.i.sroa.10.0.copyload7.i, splat (i32 1)
  %i.eq = bitcast <4 x i32> %i.ep to <2 x i64>
  %i.er = and <2 x i64> %i.eq, splat (i64 2459565876494606882)
  %i.es = and <2 x i64> %.sroa.0.i.sroa.8.0.copyload.i, splat (i64 1229782938247303441)
  %i.et = or disjoint <2 x i64> %i.er, %i.es
  %i.eu = shl <4 x i32> %.sroa.0.i.sroa.14.0.copyload8.i, splat (i32 1)
  %i.ev = bitcast <4 x i32> %i.eu to <2 x i64>
  %i.ew = and <2 x i64> %i.ev, splat (i64 -6148914691236517206)
end_hunk_0
begin_hunk_1_@RSAZ_mod_exp_avx512_x2:bb.a
  call void %.0200.i(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx38.i = mul nuw nsw i64 %i.bp, 272
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx38.i
  call void %.0200.i(ptr noundef nonnull %i.co, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx39.i = mul nuw nsw i64 %i.bp, 288
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx39.i ; 2 uses
  %.idx40.i = mul nuw nsw i64 %i.bm, 72
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx40.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx41.i = mul nuw nsw i64 %i.bp, 304
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx41.i
  call void %.0200.i(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx42.i = mul nuw nsw i64 %i.bp, 320
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx42.i ; 2 uses
  %.idx43.i = mul nuw nsw i64 %i.bm, 80
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx43.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.cs, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx44.i = mul nuw nsw i64 %i.bp, 336
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx44.i
  call void %.0200.i(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx45.i = mul nuw nsw i64 %i.bp, 352
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx45.i ; 2 uses
  %.idx46.i = mul nuw nsw i64 %i.bm, 88
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx46.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx47.i = mul nuw nsw i64 %i.bp, 368
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx47.i
  call void %.0200.i(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx48.i = mul nuw nsw i64 %i.bp, 384
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx48.i ; 2 uses
  %.idx49.i = mul nuw nsw i64 %i.bm, 96
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx49.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx50.i = mul nuw nsw i64 %i.bp, 400
  %i.da = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx50.i
  call void %.0200.i(ptr noundef nonnull %i.da, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx51.i = mul nuw nsw i64 %i.bp, 416
  %i.db = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx51.i ; 2 uses
  %.idx52.i = mul nuw nsw i64 %i.bm, 104
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx52.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.db, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx53.i = mul nuw nsw i64 %i.bp, 432
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx53.i
  call void %.0200.i(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.db, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx54.i = mul nuw nsw i64 %i.bp, 448
  %i.de = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx54.i ; 2 uses
  %.idx55.i = mul nuw nsw i64 %i.bm, 112
  %i.df = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx55.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.de, ptr noundef nonnull %i.df, ptr noundef nonnull %i.df, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx56.i = mul nuw nsw i64 %i.bp, 464
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx56.i
  call void %.0200.i(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.de, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx57.i = mul nuw nsw i64 %i.bp, 480
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx57.i ; 2 uses
  %.idx58.i = mul nuw nsw i64 %i.bm, 120
  %i.di = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx58.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, ptr noundef nonnull %i.di, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx59.i = mul nuw nsw i64 %i.bp, 496
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx59.i
  call void %.0200.i(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %i.dk = shl nuw nsw i32 %.0204.i, 6
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.dl ; 11 uses
  %i.dn = zext nneg i32 %.0203.i to i64           ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dm, ptr noundef nonnull readonly align 8 dereferenceable(1) %2, i64 %i.do, i1 false)
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dn
  store i64 0, ptr %i.dp, align 8, !tbaa !80
  %i.dq = zext nneg i32 %i.ba to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dr, ptr noundef nonnull readonly align 8 dereferenceable(1) %8, i64 %i.do, i1 false)
  %i.ds = zext nneg i32 %i.bb to i64
  %i.dt = getelementptr [8 x i8], ptr %i.dm, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 -8
  store i64 0, ptr %i.du, align 8, !tbaa !80
  %.lhs.trunc.i = trunc nuw nsw i32 %12 to i16
  %i.dv = urem i16 %.lhs.trunc.i, 5
  %.zext.i = zext nneg i16 %i.dv to i32
  %i.dw = sub nuw nsw i32 %12, %.zext.i           ; 3 uses
  %i.dx = lshr i32 %i.dw, 6                       ; 2 uses
  %.zext63.i = and i32 %i.dw, 63
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !80
  %i.eb = add nuw nsw i32 %i.ba, %i.dx
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !80
  %i.ef = zext nneg i32 %.zext63.i to i64         ; 2 uses
  %i.eg = lshr i64 %i.ea, %i.ef
  %i.eh = lshr i64 %i.ee, %i.ef
  %i.ei = trunc i64 %i.eg to i32
  %i.ej = trunc i64 %i.eh to i32
  call void %.0199.i(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bo, i32 noundef %i.ei, i32 noundef %i.ej) #46, !callees !1263, !inline_history !1243
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.019812.in.i = phi i32 [ %.019812.i, %bb.j ], [ %i.dw, %.lr.ph.preheader.i ] ; 2 uses
  %.019812.i = add nsw i32 %.019812.in.i, -5      ; 3 uses
  %i.ek = lshr i32 %.019812.i, 6                  ; 4 uses
  %i.el = and i32 %.019812.i, 63                  ; 3 uses
  %i.em = zext nneg i32 %i.ek to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !80
  %i.ep = zext nneg i32 %i.el to i64              ; 3 uses
  %i.eq = lshr i64 %i.eo, %i.ep                   ; 2 uses
  %i.er = icmp samesign ugt i32 %i.el, 59
  br i1 %i.er, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.es = add nuw nsw i32 %i.ek, %i.ba
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !80
  %i.ew = lshr i64 %i.ev, %i.ep
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.ex = add nuw nsw i32 %i.ek, 1                ; 2 uses
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !80
  %i.fb = sub nuw nsw i32 64, %i.el
  %i.fc = zext nneg i32 %i.fb to i64              ; 2 uses
  %i.fd = shl i64 %i.fa, %i.fc
  %i.fe = xor i64 %i.fd, %i.eq
  %i.ff = add nuw nsw i32 %i.ek, %i.ba
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !80
  %i.fj = lshr i64 %i.fi, %i.ep
  %i.fk = add nuw nsw i32 %i.ex, %i.ba
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !80
  %i.fo = shl i64 %i.fn, %i.fc
  %i.fp = xor i64 %i.fo, %i.fj
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.01972.i = phi i64 [ %i.fe, %bb.i ], [ %i.eq, %bb.h ]
  %.0.i = phi i64 [ %i.fp, %bb.i ], [ %i.ew, %bb.h ]
  %i.fq = trunc i64 %.01972.i to i32
  %i.fr = and i32 %i.fq, 31
  %i.fs = trunc i64 %.0.i to i32
  %i.ft = and i32 %i.fs, 31
  call void %.0199.i(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bo, i32 noundef %i.fr, i32 noundef %i.ft) #46, !callees !1263, !inline_history !1243
  call void %.0200.i(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  call void %.0200.i(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  call void %.0200.i(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  call void %.0200.i(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  call void %.0200.i(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  call void %.0200.i(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %i.fu = icmp samesign ugt i32 %.019812.in.i, 9
  br i1 %i.fu, label %.lr.ph.i, label %bb.k, !llvm.loop !1244

bb.k:                                             ; preds = %bb.j
  %i.fv = shl nuw nsw i64 %i.bm, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, i8 0, i64 %i.fv, i1 false)
  store i64 1, ptr %i.bn, align 8, !tbaa !80
  store i64 1, ptr %i.bq, align 8, !tbaa !80
  call void %.0200.i(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.bf, i64 noundef %i.be) #46
  call void @OPENSSL_free(ptr noundef nonnull %i.bf) #46
  %i.fw = add nsw i32 %12, 63
  %i.fx = ashr i32 %i.fw, 6                       ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, 0                   ; 2 uses
  br i1 %i.fy, label %.lr.ph.preheader.i113, label %.preheader.i

.lr.ph.preheader.i113:                            ; preds = %bb.k
  %i.fz = zext nneg i32 %i.fx to i64
  %i.ga = shl nuw nsw i64 %i.fz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.ga, i1 false), !tbaa !80
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i113, %bb.k
  %i.gb = icmp sgt i32 %12, 103                   ; 2 uses
  br i1 %i.gb, label %.lr.ph48.i, label %._crit_edge.i112

.lr.ph48.i:                                       ; preds = %.preheader.i, %.lr.ph48.i
  %.047.i = phi i32 [ %i.gk, %.lr.ph48.i ], [ %12, %.preheader.i ] ; 2 uses
  %.03046.i = phi ptr [ %i.gj, %.lr.ph48.i ], [ %0, %.preheader.i ] ; 3 uses
  %.03245.i = phi ptr [ %i.gl, %.lr.ph48.i ], [ %i.ad, %.preheader.i ] ; 3 uses
  %i.gc = load i64, ptr %.03245.i, align 8, !tbaa !80 ; 2 uses
  store i64 %i.gc, ptr %.03046.i, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %.03046.i, i64 6
  %i.ge = lshr i64 %i.gc, 48
  %i.gf = getelementptr inbounds nuw i8, ptr %.03245.i, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !80
  %i.gh = shl i64 %i.gg, 4
  %i.gi = or i64 %i.gh, %i.ge
  store i64 %i.gi, ptr %i.gd, align 1
  %i.gj = getelementptr inbounds nuw i8, ptr %.03046.i, i64 13 ; 2 uses
  %i.gk = add nsw i32 %.047.i, -104               ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.03245.i, i64 16 ; 2 uses
  %i.gm = icmp samesign ugt i32 %.047.i, 207
  br i1 %i.gm, label %.lr.ph48.i, label %._crit_edge.i112, !llvm.loop !1245

._crit_edge.i112:                                 ; preds = %.lr.ph48.i, %.preheader.i
  %.032.lcssa.i = phi ptr [ %i.ad, %.preheader.i ], [ %i.gl, %.lr.ph48.i ] ; 4 uses
  %.030.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.gj, %.lr.ph48.i ] ; 6 uses
  %.0.lcssa.i = phi i32 [ %12, %.preheader.i ], [ %i.gk, %.lr.ph48.i ] ; 4 uses
  %i.gn = icmp sgt i32 %.0.lcssa.i, 52
  br i1 %i.gn, label %.lr.ph.i.i, label %bb.l

.lr.ph.i.i:                                       ; preds = %._crit_edge.i112
  %i.go = load i64, ptr %.032.lcssa.i, align 8, !tbaa !80 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 4
  %13 = bitcast i64 %i.go to <8 x i8>
  %14 = shufflevector <8 x i8> %13, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %14, ptr %.030.lcssa.i, align 1, !tbaa !76
  %i.gq = lshr i64 %i.go, 32
  %i.gr = trunc i64 %i.gq to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 5
  store i8 %i.gr, ptr %i.gp, align 1, !tbaa !76
  %i.gt = lshr i64 %i.go, 40
  %i.gu = trunc i64 %i.gt to i8
  %i.gv = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 6 ; 3 uses
  store i8 %i.gu, ptr %i.gs, align 1, !tbaa !76
  %i.gw = lshr i64 %i.go, 48
  %i.gx = trunc i64 %i.gw to i8
  store i8 %i.gx, ptr %i.gv, align 1, !tbaa !76
  %i.gy = add nsw i32 %.0.lcssa.i, -45
  %i.gz = lshr i32 %i.gy, 3                       ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.032.lcssa.i, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !80
  %i.hc = shl i64 %i.hb, 4
  %i.hd = load i64, ptr %.032.lcssa.i, align 8, !tbaa !80
  %i.he = lshr i64 %i.hd, 48
  %i.hf = or i64 %i.he, %i.hc                     ; 2 uses
  %i.hg = add nsw i32 %i.gz, -1
  %xtraiter223 = and i32 %i.gz, 7                 ; 2 uses
  %lcmp.mod224.not = icmp eq i32 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol

.lr.ph.i33.i.prol:                                ; preds = %.lr.ph.i.i, %.lr.ph.i33.i.prol
  %.08.i34.i.prol = phi i64 [ %i.hj, %.lr.ph.i33.i.prol ], [ %i.hf, %.lr.ph.i.i ] ; 2 uses
  %.047.i35.i.prol = phi i32 [ %i.hk, %.lr.ph.i33.i.prol ], [ %i.gz, %.lr.ph.i.i ]
  %.056.i36.i.prol = phi ptr [ %i.hi, %.lr.ph.i33.i.prol ], [ %i.gv, %.lr.ph.i.i ] ; 2 uses
  %prol.iter225 = phi i32 [ %prol.iter225.next, %.lr.ph.i33.i.prol ], [ 0, %.lr.ph.i.i ]
  %i.hh = trunc i64 %.08.i34.i.prol to i8
  %i.hi = getelementptr inbounds nuw i8, ptr %.056.i36.i.prol, i64 1 ; 2 uses
  store i8 %i.hh, ptr %.056.i36.i.prol, align 1, !tbaa !76
  %i.hj = lshr i64 %.08.i34.i.prol, 8             ; 2 uses
  %i.hk = add nsw i32 %.047.i35.i.prol, -1        ; 2 uses
  %prol.iter225.next = add i32 %prol.iter225, 1   ; 2 uses
  %prol.iter225.cmp.not = icmp eq i32 %prol.iter225.next, %xtraiter223
  br i1 %prol.iter225.cmp.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol, !llvm.loop !1246

.lr.ph.i33.i.prol.loopexit:                       ; preds = %.lr.ph.i33.i.prol, %.lr.ph.i.i
  %.08.i34.i.unr = phi i64 [ %i.hf, %.lr.ph.i.i ], [ %i.hj, %.lr.ph.i33.i.prol ]
  %.047.i35.i.unr = phi i32 [ %i.gz, %.lr.ph.i.i ], [ %i.hk, %.lr.ph.i33.i.prol ]
  %.056.i36.i.unr = phi ptr [ %i.gv, %.lr.ph.i.i ], [ %i.hi, %.lr.ph.i33.i.prol ]
  %i.hl = icmp ult i32 %i.hg, 7
  br i1 %i.hl, label %from_words52.exit, label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i
  %.08.i34.i = phi i64 [ 0, %.lr.ph.i33.i ], [ %.08.i34.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 8 uses
  %.047.i35.i = phi i32 [ %i.ij, %.lr.ph.i33.i ], [ %.047.i35.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 2 uses
  %.056.i36.i = phi ptr [ %i.ii, %.lr.ph.i33.i ], [ %.056.i36.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 9 uses
  %i.hm = trunc i64 %.08.i34.i to i8
  %i.hn = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 1
  store i8 %i.hm, ptr %.056.i36.i, align 1, !tbaa !76
  %i.ho = lshr i64 %.08.i34.i, 8
  %i.hp = trunc i64 %i.ho to i8
  %i.hq = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 2
  store i8 %i.hp, ptr %i.hn, align 1, !tbaa !76
  %i.hr = lshr i64 %.08.i34.i, 16
  %i.hs = trunc i64 %i.hr to i8
  %i.ht = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 3
  store i8 %i.hs, ptr %i.hq, align 1, !tbaa !76
  %i.hu = lshr i64 %.08.i34.i, 24
  %i.hv = trunc i64 %i.hu to i8
  %i.hw = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 4
  store i8 %i.hv, ptr %i.ht, align 1, !tbaa !76
  %i.hx = lshr i64 %.08.i34.i, 32
  %i.hy = trunc i64 %i.hx to i8
  %i.hz = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 5
  store i8 %i.hy, ptr %i.hw, align 1, !tbaa !76
  %i.ia = lshr i64 %.08.i34.i, 40
  %i.ib = trunc i64 %i.ia to i8
  %i.ic = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 6
  store i8 %i.ib, ptr %i.hz, align 1, !tbaa !76
  %i.id = lshr i64 %.08.i34.i, 48
  %i.ie = trunc i64 %i.id to i8
  %i.if = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 7
  store i8 %i.ie, ptr %i.ic, align 1, !tbaa !76
  %i.ig = lshr i64 %.08.i34.i, 56
  %i.ih = trunc nuw i64 %i.ig to i8
  %i.ii = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 8
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !76
  %i.ij = add nsw i32 %.047.i35.i, -8
  %i.ik = icmp sgt i32 %.047.i35.i, 8
  br i1 %i.ik, label %.lr.ph.i33.i, label %from_words52.exit, !llvm.loop !1247

bb.l:                                             ; preds = %._crit_edge.i112
  %.not.i = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i, label %from_words52.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.il = add nsw i32 %.0.lcssa.i, 7
  %i.im = ashr i32 %i.il, 3                       ; 5 uses
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %.lr.ph.i38.preheader.i, label %from_words52.exit

.lr.ph.i38.preheader.i:                           ; preds = %bb.m
  %i.io = load i64, ptr %.032.lcssa.i, align 8, !tbaa !80 ; 2 uses
  %xtraiter = and i32 %i.im, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i38.i.prol.loopexit, label %.lr.ph.i38.i.prol

.lr.ph.i38.i.prol:                                ; preds = %.lr.ph.i38.preheader.i, %.lr.ph.i38.i.prol
  %.08.i39.i.prol = phi i64 [ %i.ir, %.lr.ph.i38.i.prol ], [ %i.io, %.lr.ph.i38.preheader.i ] ; 2 uses
  %.047.i40.i.prol = phi i32 [ %i.is, %.lr.ph.i38.i.prol ], [ %i.im, %.lr.ph.i38.preheader.i ]
  %.056.i41.i.prol = phi ptr [ %i.iq, %.lr.ph.i38.i.prol ], [ %.030.lcssa.i, %.lr.ph.i38.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i38.i.prol ], [ 0, %.lr.ph.i38.preheader.i ]
  %i.ip = trunc i64 %.08.i39.i.prol to i8
  %i.iq = getelementptr inbounds nuw i8, ptr %.056.i41.i.prol, i64 1 ; 2 uses
  store i8 %i.ip, ptr %.056.i41.i.prol, align 1, !tbaa !76
  %i.ir = lshr i64 %.08.i39.i.prol, 8             ; 2 uses
  %i.is = add nsw i32 %.047.i40.i.prol, -1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i38.i.prol.loopexit, label %.lr.ph.i38.i.prol, !llvm.loop !1248

.lr.ph.i38.i.prol.loopexit:                       ; preds = %.lr.ph.i38.i.prol, %.lr.ph.i38.preheader.i
  %.08.i39.i.unr = phi i64 [ %i.io, %.lr.ph.i38.preheader.i ], [ %i.ir, %.lr.ph.i38.i.prol ]
  %.047.i40.i.unr = phi i32 [ %i.im, %.lr.ph.i38.preheader.i ], [ %i.is, %.lr.ph.i38.i.prol ]
  %.056.i41.i.unr = phi ptr [ %.030.lcssa.i, %.lr.ph.i38.preheader.i ], [ %i.iq, %.lr.ph.i38.i.prol ]
  %i.it = icmp ult i32 %i.im, 8
  br i1 %i.it, label %from_words52.exit, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.prol.loopexit, %.lr.ph.i38.i
  %.08.i39.i = phi i64 [ 0, %.lr.ph.i38.i ], [ %.08.i39.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 8 uses
  %.047.i40.i = phi i32 [ %i.jr, %.lr.ph.i38.i ], [ %.047.i40.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 2 uses
  %.056.i41.i = phi ptr [ %i.jq, %.lr.ph.i38.i ], [ %.056.i41.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 9 uses
  %i.iu = trunc i64 %.08.i39.i to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 1
  store i8 %i.iu, ptr %.056.i41.i, align 1, !tbaa !76
  %i.iw = lshr i64 %.08.i39.i, 8
  %i.ix = trunc i64 %i.iw to i8
  %i.iy = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 2
  store i8 %i.ix, ptr %i.iv, align 1, !tbaa !76
  %i.iz = lshr i64 %.08.i39.i, 16
  %i.ja = trunc i64 %i.iz to i8
  %i.jb = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 3
  store i8 %i.ja, ptr %i.iy, align 1, !tbaa !76
  %i.jc = lshr i64 %.08.i39.i, 24
  %i.jd = trunc i64 %i.jc to i8
  %i.je = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 4
  store i8 %i.jd, ptr %i.jb, align 1, !tbaa !76
  %i.jf = lshr i64 %.08.i39.i, 32
  %i.jg = trunc i64 %i.jf to i8
  %i.jh = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 5
  store i8 %i.jg, ptr %i.je, align 1, !tbaa !76
  %i.ji = lshr i64 %.08.i39.i, 40
  %i.jj = trunc i64 %i.ji to i8
  %i.jk = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 6
  store i8 %i.jj, ptr %i.jh, align 1, !tbaa !76
  %i.jl = lshr i64 %.08.i39.i, 48
  %i.jm = trunc i64 %i.jl to i8
  %i.jn = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 7
  store i8 %i.jm, ptr %i.jk, align 1, !tbaa !76
  %i.jo = lshr i64 %.08.i39.i, 56
  %i.jp = trunc nuw i64 %i.jo to i8
  %i.jq = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 8
  store i8 %i.jp, ptr %i.jn, align 1, !tbaa !76
  %i.jr = add nsw i32 %.047.i40.i, -8
  %i.js = icmp sgt i32 %.047.i40.i, 8
  br i1 %i.js, label %.lr.ph.i38.i, label %from_words52.exit, !llvm.loop !1247

from_words52.exit:                                ; preds = %.lr.ph.i38.i.prol.loopexit, %.lr.ph.i38.i, %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i, %bb.l, %bb.m
  br i1 %i.fy, label %.lr.ph.preheader.i134, label %.preheader.i114

.lr.ph.preheader.i134:                            ; preds = %from_words52.exit
  %i.jt = zext nneg i32 %i.fx to i64
  %i.ju = shl nuw nsw i64 %i.jt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %i.ju, i1 false), !tbaa !80
  br label %.preheader.i114

.preheader.i114:                                  ; preds = %.lr.ph.preheader.i134, %from_words52.exit
  br i1 %i.gb, label %.lr.ph48.i130, label %._crit_edge.i115

.lr.ph48.i130:                                    ; preds = %.preheader.i114, %.lr.ph48.i130
  %.047.i131 = phi i32 [ %i.kd, %.lr.ph48.i130 ], [ %12, %.preheader.i114 ] ; 2 uses
  %.03046.i132 = phi ptr [ %i.kc, %.lr.ph48.i130 ], [ %6, %.preheader.i114 ] ; 3 uses
  %.03245.i133 = phi ptr [ %i.ke, %.lr.ph48.i130 ], [ %i.ag, %.preheader.i114 ] ; 3 uses
  %i.jv = load i64, ptr %.03245.i133, align 8, !tbaa !80 ; 2 uses
  store i64 %i.jv, ptr %.03046.i132, align 1
  %i.jw = getelementptr inbounds nuw i8, ptr %.03046.i132, i64 6
  %i.jx = lshr i64 %i.jv, 48
  %i.jy = getelementptr inbounds nuw i8, ptr %.03245.i133, i64 8
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !80
  %i.ka = shl i64 %i.jz, 4
  %i.kb = or i64 %i.ka, %i.jx
  store i64 %i.kb, ptr %i.jw, align 1
  %i.kc = getelementptr inbounds nuw i8, ptr %.03046.i132, i64 13 ; 2 uses
  %i.kd = add nsw i32 %.047.i131, -104            ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.03245.i133, i64 16 ; 2 uses
  %i.kf = icmp samesign ugt i32 %.047.i131, 207
  br i1 %i.kf, label %.lr.ph48.i130, label %._crit_edge.i115, !llvm.loop !1245

._crit_edge.i115:                                 ; preds = %.lr.ph48.i130, %.preheader.i114
  %.032.lcssa.i116 = phi ptr [ %i.ag, %.preheader.i114 ], [ %i.ke, %.lr.ph48.i130 ] ; 4 uses
  %.030.lcssa.i117 = phi ptr [ %6, %.preheader.i114 ], [ %i.kc, %.lr.ph48.i130 ] ; 6 uses
  %.0.lcssa.i118 = phi i32 [ %12, %.preheader.i114 ], [ %i.kd, %.lr.ph48.i130 ] ; 4 uses
  %i.kg = icmp sgt i32 %.0.lcssa.i118, 52
  br i1 %i.kg, label %.lr.ph.i.i125, label %bb.n

.lr.ph.i.i125:                                    ; preds = %._crit_edge.i115
  %i.kh = load i64, ptr %.032.lcssa.i116, align 8, !tbaa !80 ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.030.lcssa.i117, i64 4
  %15 = bitcast i64 %i.kh to <8 x i8>
  %16 = shufflevector <8 x i8> %15, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %16, ptr %.030.lcssa.i117, align 1, !tbaa !76
  %i.kj = lshr i64 %i.kh, 32
  %i.kk = trunc i64 %i.kj to i8
  %i.kl = getelementptr inbounds nuw i8, ptr %.030.lcssa.i117, i64 5
  store i8 %i.kk, ptr %i.ki, align 1, !tbaa !76
  %i.km = lshr i64 %i.kh, 40
  %i.kn = trunc i64 %i.km to i8
  %i.ko = getelementptr inbounds nuw i8, ptr %.030.lcssa.i117, i64 6 ; 3 uses
  store i8 %i.kn, ptr %i.kl, align 1, !tbaa !76
  %i.kp = lshr i64 %i.kh, 48
  %i.kq = trunc i64 %i.kp to i8
  store i8 %i.kq, ptr %i.ko, align 1, !tbaa !76
  %i.kr = add nsw i32 %.0.lcssa.i118, -45
  %i.ks = lshr i32 %i.kr, 3                       ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.032.lcssa.i116, i64 8
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !80
  %i.kv = shl i64 %i.ku, 4
  %i.kw = load i64, ptr %.032.lcssa.i116, align 8, !tbaa !80
  %i.kx = lshr i64 %i.kw, 48
  %i.ky = or i64 %i.kx, %i.kv                     ; 2 uses
  %i.kz = add nsw i32 %i.ks, -1
  %xtraiter229 = and i32 %i.ks, 7                 ; 2 uses
  %lcmp.mod230.not = icmp eq i32 %xtraiter229, 0
  br i1 %lcmp.mod230.not, label %.lr.ph.i33.i126.prol.loopexit, label %.lr.ph.i33.i126.prol

.lr.ph.i33.i126.prol:                             ; preds = %.lr.ph.i.i125, %.lr.ph.i33.i126.prol
  %.08.i34.i127.prol = phi i64 [ %i.lc, %.lr.ph.i33.i126.prol ], [ %i.ky, %.lr.ph.i.i125 ] ; 2 uses
  %.047.i35.i128.prol = phi i32 [ %i.ld, %.lr.ph.i33.i126.prol ], [ %i.ks, %.lr.ph.i.i125 ]
  %.056.i36.i129.prol = phi ptr [ %i.lb, %.lr.ph.i33.i126.prol ], [ %i.ko, %.lr.ph.i.i125 ] ; 2 uses
  %prol.iter231 = phi i32 [ %prol.iter231.next, %.lr.ph.i33.i126.prol ], [ 0, %.lr.ph.i.i125 ]
  %i.la = trunc i64 %.08.i34.i127.prol to i8
  %i.lb = getelementptr inbounds nuw i8, ptr %.056.i36.i129.prol, i64 1 ; 2 uses
  store i8 %i.la, ptr %.056.i36.i129.prol, align 1, !tbaa !76
  %i.lc = lshr i64 %.08.i34.i127.prol, 8          ; 2 uses
  %i.ld = add nsw i32 %.047.i35.i128.prol, -1     ; 2 uses
  %prol.iter231.next = add i32 %prol.iter231, 1   ; 2 uses
  %prol.iter231.cmp.not = icmp eq i32 %prol.iter231.next, %xtraiter229
  br i1 %prol.iter231.cmp.not, label %.lr.ph.i33.i126.prol.loopexit, label %.lr.ph.i33.i126.prol, !llvm.loop !1249

.lr.ph.i33.i126.prol.loopexit:                    ; preds = %.lr.ph.i33.i126.prol, %.lr.ph.i.i125
  %.08.i34.i127.unr = phi i64 [ %i.ky, %.lr.ph.i.i125 ], [ %i.lc, %.lr.ph.i33.i126.prol ]
  %.047.i35.i128.unr = phi i32 [ %i.ks, %.lr.ph.i.i125 ], [ %i.ld, %.lr.ph.i33.i126.prol ]
  %.056.i36.i129.unr = phi ptr [ %i.ko, %.lr.ph.i.i125 ], [ %i.lb, %.lr.ph.i33.i126.prol ]
  %i.le = icmp ult i32 %i.kz, 7
  br i1 %i.le, label %from_words52.exit135, label %.lr.ph.i33.i126

.lr.ph.i33.i126:                                  ; preds = %.lr.ph.i33.i126.prol.loopexit, %.lr.ph.i33.i126
  %.08.i34.i127 = phi i64 [ 0, %.lr.ph.i33.i126 ], [ %.08.i34.i127.unr, %.lr.ph.i33.i126.prol.loopexit ] ; 8 uses
  %.047.i35.i128 = phi i32 [ %i.mc, %.lr.ph.i33.i126 ], [ %.047.i35.i128.unr, %.lr.ph.i33.i126.prol.loopexit ] ; 2 uses
  %.056.i36.i129 = phi ptr [ %i.mb, %.lr.ph.i33.i126 ], [ %.056.i36.i129.unr, %.lr.ph.i33.i126.prol.loopexit ] ; 9 uses
  %i.lf = trunc i64 %.08.i34.i127 to i8
  %i.lg = getelementptr inbounds nuw i8, ptr %.056.i36.i129, i64 1
  store i8 %i.lf, ptr %.056.i36.i129, align 1, !tbaa !76
  %i.lh = lshr i64 %.08.i34.i127, 8
  %i.li = trunc i64 %i.lh to i8
  %i.lj = getelementptr inbounds nuw i8, ptr %.056.i36.i129, i64 2
  store i8 %i.li, ptr %i.lg, align 1, !tbaa !76
  %i.lk = lshr i64 %.08.i34.i127, 16
  %i.ll = trunc i64 %i.lk to i8
  %i.lm = getelementptr inbounds nuw i8, ptr %.056.i36.i129, i64 3
  store i8 %i.ll, ptr %i.lj, align 1, !tbaa !76
  %i.ln = lshr i64 %.08.i34.i127, 24
  %i.lo = trunc i64 %i.ln to i8
  %i.lp = getelementptr inbounds nuw i8, ptr %.056.i36.i129, i64 4
  store i8 %i.lo, ptr %i.lm, align 1, !tbaa !76
  %i.lq = lshr i64 %.08.i34.i127, 32
  %i.lr = trunc i64 %i.lq to i8
  %i.ls = getelementptr inbounds nuw i8, ptr %.056.i36.i129, i64 5
  store i8 %i.lr, ptr %i.lp, align 1, !tbaa !76
  %i.lt = lshr i64 %.08.i34.i127, 40
  %i.lu = trunc i64 %i.lt to i8
  %i.lv = getelementptr inbounds nuw i8, ptr %.056.i36.i129, i64 6
  store i8 %i.lu, ptr %i.ls, align 1, !tbaa !76
  %i.lw = lshr i64 %.08.i34.i127, 48
  %i.lx = trunc i64 %i.lw to i8
  %i.ly = getelementptr inbounds nuw i8, ptr %.056.i36.i129, i64 7
  store i8 %i.lx, ptr %i.lv, align 1, !tbaa !76
  %i.lz = lshr i64 %.08.i34.i127, 56
  %i.ma = trunc nuw i64 %i.lz to i8
  %i.mb = getelementptr inbounds nuw i8, ptr %.056.i36.i129, i64 8
  store i8 %i.ma, ptr %i.ly, align 1, !tbaa !76
  %i.mc = add nsw i32 %.047.i35.i128, -8
  %i.md = icmp sgt i32 %.047.i35.i128, 8
  br i1 %i.md, label %.lr.ph.i33.i126, label %from_words52.exit135, !llvm.loop !1247

bb.n:                                             ; preds = %._crit_edge.i115
  %.not.i119 = icmp eq i32 %.0.lcssa.i118, 0
  br i1 %.not.i119, label %from_words52.exit135, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.me = add nsw i32 %.0.lcssa.i118, 7
  %i.mf = ashr i32 %i.me, 3                       ; 5 uses
  %i.mg = icmp sgt i32 %i.mf, 0
  br i1 %i.mg, label %.lr.ph.i38.preheader.i120, label %from_words52.exit135

.lr.ph.i38.preheader.i120:                        ; preds = %bb.o
  %i.mh = load i64, ptr %.032.lcssa.i116, align 8, !tbaa !80 ; 2 uses
  %xtraiter226 = and i32 %i.mf, 7                 ; 2 uses
  %lcmp.mod227.not = icmp eq i32 %xtraiter226, 0
  br i1 %lcmp.mod227.not, label %.lr.ph.i38.i121.prol.loopexit, label %.lr.ph.i38.i121.prol

.lr.ph.i38.i121.prol:                             ; preds = %.lr.ph.i38.preheader.i120, %.lr.ph.i38.i121.prol
  %.08.i39.i122.prol = phi i64 [ %i.mk, %.lr.ph.i38.i121.prol ], [ %i.mh, %.lr.ph.i38.preheader.i120 ] ; 2 uses
  %.047.i40.i123.prol = phi i32 [ %i.ml, %.lr.ph.i38.i121.prol ], [ %i.mf, %.lr.ph.i38.preheader.i120 ]
  %.056.i41.i124.prol = phi ptr [ %i.mj, %.lr.ph.i38.i121.prol ], [ %.030.lcssa.i117, %.lr.ph.i38.preheader.i120 ] ; 2 uses
  %prol.iter228 = phi i32 [ %prol.iter228.next, %.lr.ph.i38.i121.prol ], [ 0, %.lr.ph.i38.preheader.i120 ]
  %i.mi = trunc i64 %.08.i39.i122.prol to i8
  %i.mj = getelementptr inbounds nuw i8, ptr %.056.i41.i124.prol, i64 1 ; 2 uses
  store i8 %i.mi, ptr %.056.i41.i124.prol, align 1, !tbaa !76
  %i.mk = lshr i64 %.08.i39.i122.prol, 8          ; 2 uses
  %i.ml = add nsw i32 %.047.i40.i123.prol, -1     ; 2 uses
  %prol.iter228.next = add i32 %prol.iter228, 1   ; 2 uses
  %prol.iter228.cmp.not = icmp eq i32 %prol.iter228.next, %xtraiter226
  br i1 %prol.iter228.cmp.not, label %.lr.ph.i38.i121.prol.loopexit, label %.lr.ph.i38.i121.prol, !llvm.loop !1250

.lr.ph.i38.i121.prol.loopexit:                    ; preds = %.lr.ph.i38.i121.prol, %.lr.ph.i38.preheader.i120
  %.08.i39.i122.unr = phi i64 [ %i.mh, %.lr.ph.i38.preheader.i120 ], [ %i.mk, %.lr.ph.i38.i121.prol ]
  %.047.i40.i123.unr = phi i32 [ %i.mf, %.lr.ph.i38.preheader.i120 ], [ %i.ml, %.lr.ph.i38.i121.prol ]
  %.056.i41.i124.unr = phi ptr [ %.030.lcssa.i117, %.lr.ph.i38.preheader.i120 ], [ %i.mj, %.lr.ph.i38.i121.prol ]
  %i.mm = icmp ult i32 %i.mf, 8
  br i1 %i.mm, label %from_words52.exit135, label %.lr.ph.i38.i121

.lr.ph.i38.i121:                                  ; preds = %.lr.ph.i38.i121.prol.loopexit, %.lr.ph.i38.i121
  %.08.i39.i122 = phi i64 [ 0, %.lr.ph.i38.i121 ], [ %.08.i39.i122.unr, %.lr.ph.i38.i121.prol.loopexit ] ; 8 uses
  %.047.i40.i123 = phi i32 [ %i.nk, %.lr.ph.i38.i121 ], [ %.047.i40.i123.unr, %.lr.ph.i38.i121.prol.loopexit ] ; 2 uses
  %.056.i41.i124 = phi ptr [ %i.nj, %.lr.ph.i38.i121 ], [ %.056.i41.i124.unr, %.lr.ph.i38.i121.prol.loopexit ] ; 9 uses
  %i.mn = trunc i64 %.08.i39.i122 to i8
  %i.mo = getelementptr inbounds nuw i8, ptr %.056.i41.i124, i64 1
  store i8 %i.mn, ptr %.056.i41.i124, align 1, !tbaa !76
  %i.mp = lshr i64 %.08.i39.i122, 8
  %i.mq = trunc i64 %i.mp to i8
  %i.mr = getelementptr inbounds nuw i8, ptr %.056.i41.i124, i64 2
  store i8 %i.mq, ptr %i.mo, align 1, !tbaa !76
  %i.ms = lshr i64 %.08.i39.i122, 16
  %i.mt = trunc i64 %i.ms to i8
  %i.mu = getelementptr inbounds nuw i8, ptr %.056.i41.i124, i64 3
  store i8 %i.mt, ptr %i.mr, align 1, !tbaa !76
  %i.mv = lshr i64 %.08.i39.i122, 24
  %i.mw = trunc i64 %i.mv to i8
  %i.mx = getelementptr inbounds nuw i8, ptr %.056.i41.i124, i64 4
  store i8 %i.mw, ptr %i.mu, align 1, !tbaa !76
  %i.my = lshr i64 %.08.i39.i122, 32
  %i.mz = trunc i64 %i.my to i8
  %i.na = getelementptr inbounds nuw i8, ptr %.056.i41.i124, i64 5
  store i8 %i.mz, ptr %i.mx, align 1, !tbaa !76
  %i.nb = lshr i64 %.08.i39.i122, 40
  %i.nc = trunc i64 %i.nb to i8
  %i.nd = getelementptr inbounds nuw i8, ptr %.056.i41.i124, i64 6
  store i8 %i.nc, ptr %i.na, align 1, !tbaa !76
  %i.ne = lshr i64 %.08.i39.i122, 48
  %i.nf = trunc i64 %i.ne to i8
  %i.ng = getelementptr inbounds nuw i8, ptr %.056.i41.i124, i64 7
  store i8 %i.nf, ptr %i.nd, align 1, !tbaa !76
  %i.nh = lshr i64 %.08.i39.i122, 56
  %i.ni = trunc nuw i64 %i.nh to i8
  %i.nj = getelementptr inbounds nuw i8, ptr %.056.i41.i124, i64 8
  store i8 %i.ni, ptr %i.ng, align 1, !tbaa !76
  %i.nk = add nsw i32 %.047.i40.i123, -8
  %i.nl = icmp sgt i32 %.047.i40.i123, 8
  br i1 %i.nl, label %.lr.ph.i38.i121, label %from_words52.exit135, !llvm.loop !1247

from_words52.exit135:                             ; preds = %.lr.ph.i38.i121.prol.loopexit, %.lr.ph.i38.i121, %.lr.ph.i33.i126.prol.loopexit, %.lr.ph.i33.i126, %bb.n, %bb.o
  %i.nm = ashr i32 %12, 6                         ; 4 uses
  %i.nn = sext i32 %i.nm to i64                   ; 12 uses
  %i.no = icmp eq i32 %i.nm, 0
  br i1 %i.no, label %rsaz_mod_exp_x2_ifma256.exit.thread, label %.lr.ph.i.i136

.lr.ph.i.i136:                                    ; preds = %from_words52.exit135
  %i.np = call { i64, i64, i64 } asm sideeffect "\09subq\09$0,$0\09\09\0A\09jmp\091f\09\09\0A.p2align 4\09\09\09\0A1:\09movq\09($4,$2,8),$0\09\0A\09sbbq\09($5,$2,8),$0\09\0A\09movq\09$0,($3,$2,8)\09\0A\09lea\091($2),$2\09\0A\09dec\09$1\09\09\0A\09jnz\091b\09\09\0A\09sbbq\09$0,$0\09\09\0A", "=&r,=&{cx},=&r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.n, ptr %0, ptr %3, i64 %i.nn, i64 0) #46, !srcloc !97
  %i.nq = extractvalue { i64, i64, i64 } %i.np, 0
  %i.nr = and i64 %i.nq, 1                        ; 2 uses
  %i.ns = sub nsw i64 0, %i.nr
  %i.nt = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ns) #47, !srcloc !81 ; 4 uses
  %i.nu = add nsw i64 %i.nr, -1
  %i.nv = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.nu) #47, !srcloc !81 ; 4 uses
  %min.iters.check = icmp ult i32 %i.nm, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i136
  %i.nw = shl nsw i64 %i.nn, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.nw
  %scevgep186 = getelementptr i8, ptr %i.n, i64 %i.nw
  %bound0 = icmp ult ptr %0, %scevgep186
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.nn, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.nt, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert187 = insertelement <2 x i64> poison, i64 %i.nv, i64 0
  %broadcast.splat188 = shufflevector <2 x i64> %broadcast.splatinsert187, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.nx, align 8, !tbaa !80, !alias.scope !1264, !noalias !1265
  %wide.load189 = load <2 x i64>, ptr %i.ny, align 8, !tbaa !80, !alias.scope !1264, !noalias !1265
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %wide.load190 = load <2 x i64>, ptr %i.nz, align 8, !tbaa !80, !alias.scope !1265
  %wide.load191 = load <2 x i64>, ptr %i.oa, align 8, !tbaa !80, !alias.scope !1265
end_hunk_1
begin_hunk_2_@x25519_public_from_private_s2n_bignum:bb.a
  call void @curve25519_x25519base_byte(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.a) #46
  br label %curve25519_x25519base_byte_selector.exit

curve25519_x25519base_byte_selector.exit:         ; preds = %bb.b, %bb.c
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define void @X25519_keypair(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  tail call fastcc void @rand_bytes_impl(i32 noundef 5, ptr noundef %1, i64 noundef 32, ptr noundef nonnull @RAND_bytes.kZeroPredResistance, i32 noundef 0)
  %i.b = load i8, ptr %1, align 1, !tbaa !76
  %i.c = or i8 %i.b, 7
  store i8 %i.c, ptr %1, align 1, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !76
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128
  store i8 %i.g, ptr %i.d, align 1, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.h = load i8, ptr %i.a, align 16, !tbaa !76
  %i.i = and i8 %i.h, -8
  store i8 %i.i, ptr %i.a, align 16, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 31 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !76
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, 64
  store i8 %i.m, ptr %i.j, align 1, !tbaa !76
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.o = and i32 %i.n, 524544
  %.not.i.i.i = icmp eq i32 %i.o, 524544
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @curve25519_x25519base_byte_alt(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.a) #46
  br label %X25519_public_from_private.exit

bb.c:                                             ; preds = %bb.a
  call void @curve25519_x25519base_byte(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.a) #46
  br label %X25519_public_from_private.exit

X25519_public_from_private.exit:                  ; preds = %bb.b, %bb.c
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X25519(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = load i8, ptr %i.a, align 16, !tbaa !76
  %i.c = and i8 %i.b, -8
  store i8 %i.c, ptr %i.a, align 16, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 31 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !76
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, 64
  store i8 %i.g, ptr %i.d, align 1, !tbaa !76
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.i = and i32 %i.h, 524544
  %.not.i.i = icmp eq i32 %i.i, 524544
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @curve25519_x25519_byte_alt(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.a, ptr noundef nonnull align 1 dereferenceable(32) %2) #46
  br label %x25519_scalar_mult_generic_s2n_bignum.exit

bb.c:                                             ; preds = %bb.a
  call void @curve25519_x25519_byte(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.a, ptr noundef nonnull align 1 dereferenceable(32) %2) #46
  br label %x25519_scalar_mult_generic_s2n_bignum.exit

x25519_scalar_mult_generic_s2n_bignum.exit:       ; preds = %bb.b, %bb.c
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.j = call i32 @CRYPTO_memcmp(ptr noundef nonnull @X25519.kZeros, ptr noundef nonnull %0, i64 noundef 32) #46
  %i.k = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.j) #47, !srcloc !120
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define hidden void @x25519_scalar_mult_generic_s2n_bignum(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = load i8, ptr %i.a, align 16, !tbaa !76
  %i.c = and i8 %i.b, -8
  store i8 %i.c, ptr %i.a, align 16, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 31 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !76
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, 64
  store i8 %i.g, ptr %i.d, align 1, !tbaa !76
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.i = and i32 %i.h, 524544
  %.not.i = icmp eq i32 %i.i, 524544
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @curve25519_x25519_byte_alt(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.a, ptr noundef nonnull align 1 dereferenceable(32) %2) #46
  br label %curve25519_x25519_byte_selector.exit

bb.c:                                             ; preds = %bb.a
  call void @curve25519_x25519_byte(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.a, ptr noundef nonnull align 1 dereferenceable(32) %2) #46
  br label %curve25519_x25519_byte_selector.exit

curve25519_x25519_byte_selector.exit:             ; preds = %bb.b, %bb.c
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define hidden void @x25519_ge_tobytes(ptr nofree noundef captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %2 = alloca %struct.fe_loose, align 8           ; 4 uses
  %3 = alloca %struct.fe, align 8                 ; 5 uses
  %4 = alloca %struct.fe, align 8                 ; 4 uses
  %5 = alloca %struct.fe, align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull readonly align 1 dereferenceable(40) %i.b, i64 40, i1 false)
  call fastcc void @fe_loose_invert(ptr noundef nonnull %3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call fastcc void @fe_mul_impl(ptr noundef nonnull %4, ptr noundef readonly %1, ptr noundef nonnull readonly %3)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  call fastcc void @fe_mul_impl(ptr noundef nonnull %5, ptr noundef nonnull readonly %i.c, ptr noundef nonnull readonly %3)
  call fastcc void @fe_tobytes(ptr noundef %0, ptr noundef nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @fe_tobytes(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %4)
  %i.d = load i8, ptr %i.a, align 16, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !76
  %i.g = shl i8 %i.d, 7
  %i.h = xor i8 %i.f, %i.g
  store i8 %i.h, ptr %i.e, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @fe_tobytes(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !80
  %i.b = add i64 %i.a, -2251799813685229          ; 2 uses
  %i.c = lshr i64 %i.b, 51
  %i.d = and i64 %i.b, 2251799813685247
  %i.e = sub nsw i64 0, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !80
  %i.h = and i64 %i.e, 255
  %.neg159.i = add i64 %i.g, -2251799813685247
  %i.i = sub i64 %.neg159.i, %i.h                 ; 2 uses
  %i.j = lshr i64 %i.i, 51
  %i.k = and i64 %i.i, 2251799813685247
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !80
  %i.o = and i64 %i.l, 255
  %.neg161.i = add i64 %i.n, -2251799813685247
  %i.p = sub i64 %.neg161.i, %i.o                 ; 2 uses
  %i.q = lshr i64 %i.p, 51
  %i.r = and i64 %i.p, 2251799813685247
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !80
  %i.v = and i64 %i.s, 255
  %.neg163.i = add i64 %i.u, -2251799813685247
  %i.w = sub i64 %.neg163.i, %i.v                 ; 2 uses
  %i.x = lshr i64 %i.w, 51
  %i.y = and i64 %i.w, 2251799813685247
  %i.z = sub nsw i64 0, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !80
  %i.ac = and i64 %i.z, 255
  %.neg165.i = add i64 %i.ab, -2251799813685247
  %i.ad = sub i64 %.neg165.i, %i.ac               ; 2 uses
  %i.ae = and i64 %i.ad, 574208952489738240
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = sext i1 %i.af to i64                    ; 2 uses
  %i.ah = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ag) #47, !srcloc !1602 ; 3 uses
  %i.ai = xor i64 %i.ag, -1
  %i.aj = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ai) #47, !srcloc !1602 ; 0 uses
  %i.ak = and i64 %i.ah, 2251799813685229
  %i.al = add nuw nsw i64 %i.ak, %i.d             ; 5 uses
  %i.am = lshr i64 %i.al, 51
  %i.an = and i64 %i.ah, 2251799813685247         ; 3 uses
  %i.ao = add nuw nsw i64 %i.an, %i.k
  %i.ap = add nuw nsw i64 %i.ao, %i.am            ; 8 uses
  %i.aq = lshr i64 %i.ap, 51
  %i.ar = add nuw nsw i64 %i.r, %i.an
  %i.as = add nuw nsw i64 %i.ar, %i.aq            ; 9 uses
  %i.at = lshr i64 %i.as, 51
  %i.au = add nuw nsw i64 %i.y, %i.an
  %i.av = add nuw nsw i64 %i.au, %i.at            ; 8 uses
  %i.aw = lshr i64 %i.av, 51
  %i.ax = add i64 %i.ad, %i.ah
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = shl i64 %i.ay, 4                        ; 7 uses
  %i.ba = shl nuw nsw i64 %i.av, 1
  %i.bb = shl nuw nsw i64 %i.as, 6
  %i.bc = shl nuw nsw i64 %i.ap, 3
  %i.bd = lshr i64 %i.al, 32
  %i.be = trunc i64 %i.bd to i8
  %i.bf = lshr i64 %i.al, 40
  %i.bg = trunc i64 %i.bf to i8
  %i.bh = lshr i64 %i.al, 48
  %i.bi = and i64 %i.bh, 7
  %i.bj = or disjoint i64 %i.bc, %i.bi
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = lshr i64 %i.ap, 5
  %i.bm = trunc i64 %i.bl to i8
  %i.bn = lshr i64 %i.ap, 13
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = lshr i64 %i.ap, 21
  %i.bq = trunc i64 %i.bp to i8
  %i.br = lshr i64 %i.ap, 29
  %i.bs = trunc i64 %i.br to i8
  %i.bt = lshr i64 %i.ap, 37
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = lshr i64 %i.ap, 45
  %i.bw = and i64 %i.bv, 63
  %i.bx = or disjoint i64 %i.bb, %i.bw
  %i.by = trunc i64 %i.bx to i8
  %i.bz = lshr i64 %i.as, 2
  %i.ca = trunc i64 %i.bz to i8
  %i.cb = lshr i64 %i.as, 10
  %i.cc = trunc i64 %i.cb to i8
  %i.cd = lshr i64 %i.as, 18
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = lshr i64 %i.as, 26
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = lshr i64 %i.as, 34
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = lshr i64 %i.as, 42
  %i.ck = trunc i64 %i.cj to i8
  %i.cl = lshr i64 %i.as, 50
  %i.cm = and i64 %i.cl, 1
  %i.cn = or disjoint i64 %i.ba, %i.cm
  %i.co = trunc i64 %i.cn to i8
  %i.cp = lshr i64 %i.av, 7
  %i.cq = trunc i64 %i.cp to i8
  %i.cr = lshr i64 %i.av, 15
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = lshr i64 %i.av, 23
  %i.cu = trunc i64 %i.ct to i8
  %i.cv = lshr i64 %i.av, 31
  %i.cw = trunc i64 %i.cv to i8
  %i.cx = lshr i64 %i.av, 39
  %i.cy = trunc i64 %i.cx to i8
  %i.cz = lshr i64 %i.av, 47
  %i.da = and i64 %i.cz, 15
  %i.db = or disjoint i64 %i.az, %i.da
  %i.dc = trunc i64 %i.db to i8
  %i.dd = lshr i64 %i.az, 8
  %i.de = trunc i64 %i.dd to i8
  %i.df = lshr i64 %i.az, 16
  %i.dg = trunc i64 %i.df to i8
  %i.dh = lshr i64 %i.az, 24
  %i.di = trunc i64 %i.dh to i8
  %i.dj = lshr i64 %i.az, 32
  %i.dk = trunc i64 %i.dj to i8
  %i.dl = lshr i64 %i.az, 40
  %i.dm = trunc i64 %i.dl to i8
  %i.dn = lshr i64 %i.az, 48
  %i.do = trunc i64 %i.dn to i8
  %i.dp = and i8 %i.do, 127
  %2 = bitcast i64 %i.al to <8 x i8>
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %3, ptr %0, align 1, !tbaa !76
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.be, ptr %i.dq, align 1, !tbaa !76
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.bg, ptr %i.dr, align 1, !tbaa !76
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.bk, ptr %i.ds, align 1, !tbaa !76
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.bm, ptr %i.dt, align 1, !tbaa !76
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.bo, ptr %i.du, align 1, !tbaa !76
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.bq, ptr %i.dv, align 1, !tbaa !76
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.bs, ptr %i.dw, align 1, !tbaa !76
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.bu, ptr %i.dx, align 1, !tbaa !76
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.by, ptr %i.dy, align 1, !tbaa !76
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.ca, ptr %i.dz, align 1, !tbaa !76
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.cc, ptr %i.ea, align 1, !tbaa !76
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.ce, ptr %i.eb, align 1, !tbaa !76
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.cg, ptr %i.ec, align 1, !tbaa !76
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ci, ptr %i.ed, align 1, !tbaa !76
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.ck, ptr %i.ee, align 1, !tbaa !76
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.co, ptr %i.ef, align 1, !tbaa !76
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.cq, ptr %i.eg, align 1, !tbaa !76
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.cs, ptr %i.eh, align 1, !tbaa !76
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.cu, ptr %i.ei, align 1, !tbaa !76
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.cw, ptr %i.ej, align 1, !tbaa !76
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.cy, ptr %i.ek, align 1, !tbaa !76
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.dc, ptr %i.el, align 1, !tbaa !76
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.de, ptr %i.em, align 1, !tbaa !76
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.dg, ptr %i.en, align 1, !tbaa !76
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.di, ptr %i.eo, align 1, !tbaa !76
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.dk, ptr %i.ep, align 1, !tbaa !76
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.dm, ptr %i.eq, align 1, !tbaa !76
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.dp, ptr %i.er, align 1, !tbaa !76
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @x25519_ge_frombytes_vartime(ptr nofree noundef captures(none) initializes((40, 120)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %2 = alloca %struct.fe, align 8                 ; 8 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %3 = alloca %struct.fe, align 8                 ; 8 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %4 = alloca %struct.fe, align 8                 ; 27 uses
  %5 = alloca %struct.fe, align 8                 ; 31 uses
  %6 = alloca %struct.fe, align 8                 ; 10 uses
  %7 = alloca %struct.fe, align 8                 ; 9 uses
  %8 = alloca %struct.fe_loose, align 16          ; 7 uses
  %9 = alloca %struct.fe, align 8                 ; 12 uses
  %10 = alloca %struct.fe, align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 7
  %.sroa.7.0.copyload.i = load i8, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9
  %.sroa.9.0.copyload.i = load i8, ptr %.sroa.9.0..sroa_idx.i, align 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.sroa.10.0.copyload.i = load i8, ptr %.sroa.10.0..sroa_idx.i, align 1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 11
  %.sroa.11.0.copyload.i = load i8, ptr %.sroa.11.0..sroa_idx.i, align 1
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.12.0.copyload.i = load i8, ptr %.sroa.12.0..sroa_idx.i, align 1
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 13
  %.sroa.13.0.copyload.i = load i8, ptr %.sroa.13.0..sroa_idx.i, align 1
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 14
  %.sroa.14.0.copyload.i = load i8, ptr %.sroa.14.0..sroa_idx.i, align 1
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 15
  %.sroa.15.0.copyload.i = load i8, ptr %.sroa.15.0..sroa_idx.i, align 1
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.16.0.copyload.i = load i32, ptr %.sroa.16.0..sroa_idx.i, align 1
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.17.0.copyload.i = load i8, ptr %.sroa.17.0..sroa_idx.i, align 1
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 21
  %.sroa.18.0.copyload.i = load i8, ptr %.sroa.18.0..sroa_idx.i, align 1
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 22
  %.sroa.19.0.copyload.i = load i32, ptr %.sroa.19.0..sroa_idx.i, align 1
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 26
  %.sroa.20.0.copyload.i = load i8, ptr %.sroa.20.0..sroa_idx.i, align 1
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 27
  %.sroa.21.0.copyload.i = load i8, ptr %.sroa.21.0..sroa_idx.i, align 1
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 1
  %.sroa.22.31.insert.insert.i = and i32 %.sroa.22.0.copyload.i, 2147483647
  %i.e = zext nneg i32 %.sroa.22.31.insert.insert.i to i64
  %i.f = shl nuw nsw i64 %i.e, 20
  %i.g = zext i8 %.sroa.21.0.copyload.i to i64
  %i.h = shl nuw nsw i64 %i.g, 12
  %i.i = zext i8 %.sroa.20.0.copyload.i to i64
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = zext i32 %.sroa.19.0.copyload.i to i64   ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 23
  %i.m = zext i8 %.sroa.18.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %i.m, 15
  %i.o = zext i8 %.sroa.17.0.copyload.i to i64
  %i.p = shl nuw nsw i64 %i.o, 7
  %i.q = zext i32 %.sroa.16.0.copyload.i to i64   ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 26
  %i.s = zext i8 %.sroa.15.0.copyload.i to i64
  %i.t = shl nuw nsw i64 %i.s, 18
  %i.u = zext i8 %.sroa.14.0.copyload.i to i64
  %i.v = shl nuw nsw i64 %i.u, 10
  %i.w = zext i8 %.sroa.13.0.copyload.i to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = zext i8 %.sroa.12.0.copyload.i to i64    ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 45
  %i.aa = zext i8 %.sroa.11.0.copyload.i to i64
  %i.ab = shl nuw nsw i64 %i.aa, 37
  %i.ac = zext i8 %.sroa.10.0.copyload.i to i64
  %i.ad = shl nuw nsw i64 %i.ac, 29
  %i.ae = zext i8 %.sroa.9.0.copyload.i to i64
  %i.af = shl nuw nsw i64 %i.ae, 21
  %i.ag = zext i8 %.sroa.8.0.copyload.i to i64
  %i.ah = shl nuw nsw i64 %i.ag, 13
  %i.ai = zext i8 %.sroa.7.0.copyload.i to i64
  %i.aj = shl nuw nsw i64 %i.ai, 5
  %i.ak = zext i8 %.sroa.6.0.copyload.i to i64    ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 48
  %i.am = zext i8 %.sroa.5.0.copyload.i to i64
  %i.an = shl nuw nsw i64 %i.am, 40
  %i.ao = zext i8 %.sroa.4.0.copyload.i to i64
  %i.ap = shl nuw nsw i64 %i.ao, 32
  %i.aq = zext i32 %.sroa.0.0.copyload.i to i64
  %.masked.i.i.i = and i64 %i.al, 1970324836974592
  %i.ar = or disjoint i64 %.masked.i.i.i, %i.an
  %i.as = or disjoint i64 %i.ar, %i.aq
  %i.at = or disjoint i64 %i.as, %i.ap            ; 2 uses
  %i.au = lshr i64 %i.ak, 3
  %.masked116.i.i.i = and i64 %i.z, 2216615441596416
  %.masked115.i.i.i = or disjoint i64 %.masked116.i.i.i, %i.ab
  %.masked114.i.i.i = or disjoint i64 %.masked115.i.i.i, %i.ad
  %.masked113.i.i.i = or disjoint i64 %.masked114.i.i.i, %i.af
  %.masked112.i.i.i = or disjoint i64 %.masked113.i.i.i, %i.ah
  %.masked111.i.i.i = or disjoint i64 %.masked112.i.i.i, %i.aj
  %i.av = or disjoint i64 %.masked111.i.i.i, %i.au ; 3 uses
  %i.aw = lshr i64 %i.y, 6
  %.masked5.i.i = and i64 %i.r, 2251799746576384
  %.masked4.i.i = or disjoint i64 %.masked5.i.i, %i.t
  %.masked3.i.i = or disjoint i64 %.masked4.i.i, %i.v
  %.masked.i.i = or disjoint i64 %.masked3.i.i, %i.x
  %i.ax = or disjoint i64 %.masked.i.i, %i.aw     ; 3 uses
  %i.ay = lshr i64 %i.q, 25
  %.masked8.i.i = and i64 %i.l, 2251799805296640
  %.masked7.i.i = or disjoint i64 %.masked8.i.i, %i.n
  %.masked6.i.i = or disjoint i64 %.masked7.i.i, %i.p
  %i.az = or disjoint i64 %.masked6.i.i, %i.ay    ; 5 uses
  %i.ba = lshr i64 %i.k, 28
  %i.bb = or disjoint i64 %i.f, %i.h
  %i.bc = or disjoint i64 %i.bb, %i.j
  %i.bd = or disjoint i64 %i.bc, %i.ba            ; 5 uses
  store i64 %i.at, ptr %i.d, align 8, !tbaa !80
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.av, ptr %i.be, align 8, !tbaa !80
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ax, ptr %i.bf, align 8, !tbaa !80
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.az, ptr %i.bg, align 8, !tbaa !80
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.bd, ptr %i.bh, align 8, !tbaa !80
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.bi, align 8, !tbaa !80
  %i.bk = mul nuw nsw i64 %i.bd, 19
  %i.bl = mul nuw nsw i64 %i.bd, 38
end_hunk_2
begin_hunk_3_@aead_aes_ccm_init:bb.a
  %.023 = phi ptr [ @aes_nohw_encrypt_wrapper, %bb.i ], [ @vpaes_encrypt_wrapper, %bb.h ], [ @aes_hw_encrypt_wrapper, %bb.f ]
  %.0.i = phi ptr [ @aes_nohw_ctr32_encrypt_blocks_wrapper, %bb.i ], [ @vpaes_ctr32_encrypt_blocks_wrapper, %bb.h ], [ @aes_hw_ctr32_encrypt_blocks_wrapper, %bb.f ]
  %i.q = trunc nuw nsw i32 %4 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 577
  store i8 %i.q, ptr %i.r, align 1, !tbaa !153
  %i.s = trunc i32 %4 to i1
  br i1 %i.s, label %bb.k, label %CRYPTO_ccm128_init.exit

CRYPTO_ccm128_init.exit:                          ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %.023, ptr %i.t, align 8, !tbaa !588
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %.0.i, ptr %i.u, align 8, !tbaa !590
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %4, ptr %i.v, align 8, !tbaa !589
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 2, ptr %i.w, align 4, !tbaa !587
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str.62, i32 noundef 302) #46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %CRYPTO_ccm128_init.exit, %bb.d, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.k ], [ 1, %CRYPTO_ccm128_init.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ccm128_init_state(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef range(i64 0, 4294967296) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !588    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !587  ; 8 uses
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
  %i.l = load i32, ptr %i.k, align 8, !tbaa !589
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.m, i8 0, i64 31, i1 false)
  %i.n = add i32 %i.c, 255
  %i.o = shl i32 %i.l, 2
  %i.p = and i32 %i.o, 248
  %i.q = add nuw nsw i32 %i.p, 248
  %i.r = or i32 %i.q, %i.n
  %i.s = trunc i32 %i.r to i8                     ; 2 uses
  %.not100 = icmp eq i64 %6, 0                    ; 2 uses
  %i.t = or i8 %i.s, 64
  %storemerge = select i1 %.not100, i8 %i.s, i8 %i.t
  store i8 %storemerge, ptr %1, align 16, !tbaa !76
  %i.u = icmp eq i64 %4, 0
  br i1 %i.u, label %OPENSSL_memcpy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr readonly align 1 %3, i64 %4, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.b, %bb.c
  %.not113 = icmp eq i32 %i.c, 0
  br i1 %.not113, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %OPENSSL_memcpy.exit
  %wide.trip.count = zext i32 %i.c to i64         ; 5 uses
  %i.w = add i32 %i.c, -8
  %or.cond195 = icmp ult i32 %i.w, 9
  br i1 %or.cond195, label %vector.main.loop.iter.check, label %.lr.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check141.not = icmp eq i32 %i.c, 16
  br i1 %min.iters.check141.not, label %vector.body, label %vec.epilog.ph

vector.body:                                      ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %7, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.x = lshr <16 x i64> %broadcast.splat, <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56, i64 64, i64 72, i64 80, i64 88, i64 96, i64 104, i64 112, i64 120>
  %i.y = trunc <16 x i64> %i.x to <16 x i8>
  %reverse = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %1, align 16, !tbaa !76
  br label %._crit_edge

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec142 = and i64 %wide.trip.count, 24        ; 3 uses
  %broadcast.splatinsert143 = insertelement <8 x i64> poison, i64 %7, i64 0
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = shufflevector <8 x i64> %broadcast.splatinsert143, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.ab = lshr <8 x i64> %i.aa, <i64 56, i64 48, i64 40, i64 32, i64 24, i64 16, i64 8, i64 0>
  %reverse149 = trunc <8 x i64> %i.ab to <8 x i8>
  store <8 x i8> %reverse149, ptr %i.z, align 8, !tbaa !76
  %i.ac = icmp eq i64 %n.vec142, 8                ; 0 uses
  %cmp.n152 = icmp eq i64 %n.vec142, %wide.trip.count
  br i1 %cmp.n152, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.ph
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec142, %vec.epilog.ph ] ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ad = trunc i64 %7 to i8
  %i.ae = sub nsw i64 15, %indvars.iv.ph
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !76
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ah = add nsw i64 %wide.trip.count, -1
  %i.ai = icmp eq i64 %indvars.iv.ph, %i.ah
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vector.body, %vec.epilog.ph, %OPENSSL_memcpy.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  tail call void %i.a(ptr noundef nonnull %1, ptr noundef nonnull %i.aj, ptr noundef %2) #46
  br i1 %.not100, label %.loopexit, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ak = shl i64 %indvars.iv, 3
  %i.al = and i64 %i.ak, 4294967288
  %i.am = lshr i64 %7, %i.al
  %i.an = trunc i64 %i.am to i8
  %i.ao = sub nsw i64 15, %indvars.iv
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  store i8 %i.an, ptr %i.aq, align 1, !tbaa !76
  %indvars.iv.next = shl i64 %indvars.iv, 3
  %i.ar = add i64 %indvars.iv.next, 8
  %i.as = and i64 %i.ar, 4294967288
  %i.at = lshr i64 %7, %i.as
  %i.au = trunc i64 %i.at to i8
  %i.av = sub nsw i64 14, %indvars.iv
  %i.aw = and i64 %i.av, 4294967295
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !76
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !2597

bb.d:                                             ; preds = %._crit_edge
  %i.ay = icmp ult i64 %6, 65280
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = lshr i64 %6, 8
  %i.ba = trunc nuw i64 %i.az to i8
  %i.bb = load i8, ptr %i.aj, align 16, !tbaa !76
  %i.bc = xor i8 %i.bb, %i.ba
  store i8 %i.bc, ptr %i.aj, align 16, !tbaa !76
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bd = icmp ult i64 %6, 4294967296
  %i.be = load i8, ptr %i.aj, align 16, !tbaa !76
  %i.bf = xor i8 %i.be, -1
  store i8 %i.bf, ptr %i.aj, align 16, !tbaa !76
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !76  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 4 uses
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = xor i8 %i.bh, -2
  store i8 %i.bj, ptr %i.bg, align 1, !tbaa !76
  %i.bk = lshr i64 %6, 24
  %i.bl = trunc nuw i64 %i.bk to i8
  %i.bm = load i8, ptr %i.bi, align 2, !tbaa !76
  %i.bn = xor i8 %i.bm, %i.bl
  store i8 %i.bn, ptr %i.bi, align 2, !tbaa !76
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 19 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !76
  %i.bq = lshr i64 %6, 16
  %i.br = trunc i64 %i.bq to i8
  %i.bs = xor i8 %i.bp, %i.br
  store i8 %i.bs, ptr %i.bo, align 1, !tbaa !76
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !76
  %i.bv = lshr i64 %6, 8
  %i.bw = trunc i64 %i.bv to i8
  %i.bx = xor i8 %i.bu, %i.bw
  store i8 %i.bx, ptr %i.bt, align 4, !tbaa !76
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.by = xor i8 %i.bh, -1
  store i8 %i.by, ptr %i.bg, align 1, !tbaa !76
  %i.bz = load <4 x i8>, ptr %i.bi, align 2, !tbaa !76
  %8 = bitcast i64 %6 to <8 x i8>
  %9 = shufflevector <8 x i8> %8, <8 x i8> poison, <4 x i32> <i32 7, i32 6, i32 5, i32 4>
  %i.ca = xor <4 x i8> %i.bz, %9
  store <4 x i8> %i.ca, ptr %i.bi, align 2, !tbaa !76
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !76
  %i.cd = lshr i64 %6, 24
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = xor i8 %i.cc, %i.ce
  store i8 %i.cf, ptr %i.cb, align 2, !tbaa !76
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 23 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !76
  %i.ci = lshr i64 %6, 16
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = xor i8 %i.ch, %i.cj
  store i8 %i.ck, ptr %i.cg, align 1, !tbaa !76
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !76
  %i.cn = lshr i64 %6, 8
  %i.co = trunc i64 %i.cn to i8
  %i.cp = xor i8 %i.cm, %i.co
  store i8 %i.cp, ptr %i.cl, align 8, !tbaa !76
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %.sink137 = phi i64 [ 21, %bb.g ], [ 25, %bb.h ], [ 17, %bb.e ]
  %.0 = phi i64 [ 6, %bb.g ], [ 10, %bb.h ], [ 2, %bb.e ]
  %i.cq = trunc i64 %6 to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %.sink137 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !76
  %i.ct = xor i8 %i.cs, %i.cq
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !76
  %scevgep = getelementptr i8, ptr %1, i64 16
  %scevgep154 = getelementptr i8, ptr %1, i64 17
  br label %iter.check174

iter.check174:                                    ; preds = %._crit_edge110, %bb.i
  %.094 = phi ptr [ %5, %bb.i ], [ %.lcssa139, %._crit_edge110 ] ; 8 uses
  %.092 = phi i64 [ %6, %bb.i ], [ %.lcssa138, %._crit_edge110 ] ; 8 uses
  %.087 = phi i64 [ 1, %bb.i ], [ %i.eb, %._crit_edge110 ]
  %.1 = phi i64 [ %.0, %bb.i ], [ 0, %._crit_edge110 ] ; 10 uses
  %i.cu = add i64 %.092, -1
  %i.cv = sub nsw i64 15, %.1
  %umin158 = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cv) ; 3 uses
  %i.cw = add nuw nsw i64 %umin158, 1             ; 5 uses
  %min.iters.check159 = icmp ult i64 %umin158, 3
  br i1 %min.iters.check159, label %.lr.ph109.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check174
  %scevgep153 = getelementptr i8, ptr %scevgep, i64 %.1
  %i.cx = add i64 %.092, -1
  %i.cy = sub nsw i64 15, %.1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 %i.cy) ; 2 uses
  %i.cz = getelementptr i8, ptr %scevgep154, i64 %.1
  %scevgep155 = getelementptr i8, ptr %i.cz, i64 %umin
  %scevgep156 = getelementptr i8, ptr %.094, i64 1
  %scevgep157 = getelementptr i8, ptr %scevgep156, i64 %umin
  %bound0 = icmp ult ptr %scevgep153, %scevgep157
  %bound1 = icmp ult ptr %.094, %scevgep155
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph109.preheader, label %vector.main.loop.iter.check160

vector.main.loop.iter.check160:                   ; preds = %vector.memcheck
  %min.iters.check161 = icmp ult i64 %umin158, 15
  br i1 %min.iters.check161, label %vec.epilog.ph178, label %vector.ph162

vector.ph162:                                     ; preds = %vector.main.loop.iter.check160
  %n.vec163 = and i64 %i.cw, -16                  ; 5 uses
  %i.da = sub i64 %.092, %n.vec163                ; 3 uses
  %i.db = getelementptr i8, ptr %.094, i64 %n.vec163 ; 2 uses
  %wide.load = load <16 x i8>, ptr %.094, align 1, !tbaa !76, !alias.scope !2604
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.1 ; 2 uses
  %wide.load167 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !76, !alias.scope !2605, !noalias !2604
  %i.dd = xor <16 x i8> %wide.load167, %wide.load
  store <16 x i8> %i.dd, ptr %i.dc, align 1, !tbaa !76, !alias.scope !2605, !noalias !2604
  %i.de = icmp ne i64 %.092, 16
  %cmp.n169 = icmp eq i64 %i.cw, %n.vec163
  br i1 %cmp.n169, label %._crit_edge110, label %vec.epilog.iter.check176

vec.epilog.iter.check176:                         ; preds = %vector.ph162
  %i.df = add i64 %.1, %n.vec163
  %i.dg = and i64 %i.cw, 12
  %min.epilog.iters.check177 = icmp eq i64 %i.dg, 0
  br i1 %min.epilog.iters.check177, label %.lr.ph109.preheader, label %vec.epilog.ph178, !prof !471

vec.epilog.ph178:                                 ; preds = %vector.main.loop.iter.check160, %vec.epilog.iter.check176
  %vec.epilog.resume.val170 = phi i64 [ %n.vec163, %vec.epilog.iter.check176 ], [ 0, %vector.main.loop.iter.check160 ]
  %bc.resume.val172 = phi i64 [ %i.da, %vec.epilog.iter.check176 ], [ %.092, %vector.main.loop.iter.check160 ]
  %n.vec179 = and i64 %i.cw, -4                   ; 5 uses
  %i.dh = add i64 %.1, %n.vec179
  %i.di = sub i64 %.092, %n.vec179                ; 2 uses
  %i.dj = getelementptr i8, ptr %.094, i64 %n.vec179 ; 2 uses
  %i.dk = add i64 %bc.resume.val172, -3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.1
  br label %vec.epilog.vector.body182

vec.epilog.vector.body182:                        ; preds = %vec.epilog.vector.body182, %vec.epilog.ph178
  %index183 = phi i64 [ %vec.epilog.resume.val170, %vec.epilog.ph178 ], [ %index.next187, %vec.epilog.vector.body182 ] ; 3 uses
  %i.dm = phi i64 [ %i.dk, %vec.epilog.ph178 ], [ %i.dp, %vec.epilog.vector.body182 ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.094, i64 %index183
  %wide.load185 = load <4 x i8>, ptr %next.gep, align 1, !tbaa !76, !alias.scope !2604
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index183 ; 2 uses
  %wide.load186 = load <4 x i8>, ptr %i.dn, align 1, !tbaa !76, !alias.scope !2605, !noalias !2604
  %i.do = xor <4 x i8> %wide.load186, %wide.load185
  store <4 x i8> %i.do, ptr %i.dn, align 1, !tbaa !76, !alias.scope !2605, !noalias !2604
  %index.next187 = add nuw i64 %index183, 4       ; 2 uses
  %i.dp = add i64 %i.dm, -4
  %i.dq = icmp eq i64 %index.next187, %n.vec179
  br i1 %i.dq, label %vec.epilog.middle.block189, label %vec.epilog.vector.body182, !llvm.loop !2601

vec.epilog.middle.block189:                       ; preds = %vec.epilog.vector.body182
  %i.dr = icmp ne i64 %i.dm, 1
  %cmp.n190 = icmp eq i64 %i.cw, %n.vec179
  br i1 %cmp.n190, label %._crit_edge110, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %iter.check174, %vector.memcheck, %vec.epilog.iter.check176, %vec.epilog.middle.block189
  %indvars.iv120.ph = phi i64 [ %.1, %iter.check174 ], [ %.1, %vector.memcheck ], [ %i.df, %vec.epilog.iter.check176 ], [ %i.dh, %vec.epilog.middle.block189 ]
  %.193106.ph = phi i64 [ %.092, %iter.check174 ], [ %.092, %vector.memcheck ], [ %i.da, %vec.epilog.iter.check176 ], [ %i.di, %vec.epilog.middle.block189 ]
  %.195105.ph = phi ptr [ %.094, %iter.check174 ], [ %.094, %vector.memcheck ], [ %i.db, %vec.epilog.iter.check176 ], [ %i.dj, %vec.epilog.middle.block189 ]
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %.lr.ph109
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %.lr.ph109 ], [ %indvars.iv120.ph, %.lr.ph109.preheader ] ; 3 uses
  %.193106 = phi i64 [ %i.dx, %.lr.ph109 ], [ %.193106.ph, %.lr.ph109.preheader ]
  %.195105 = phi ptr [ %i.dw, %.lr.ph109 ], [ %.195105.ph, %.lr.ph109.preheader ] ; 2 uses
  %i.ds = load i8, ptr %.195105, align 1, !tbaa !76
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv120 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !76
  %i.dv = xor i8 %i.du, %i.ds
  store i8 %i.dv, ptr %i.dt, align 1, !tbaa !76
  %i.dw = getelementptr inbounds nuw i8, ptr %.195105, i64 1 ; 2 uses
  %i.dx = add i64 %.193106, -1                    ; 3 uses
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %i.dy = icmp samesign ult i64 %indvars.iv120, 15
  %i.dz = icmp ne i64 %i.dx, 0                    ; 2 uses
  %i.ea = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %i.ea, label %.lr.ph109, label %._crit_edge110, !llvm.loop !2602

._crit_edge110:                                   ; preds = %.lr.ph109, %vec.epilog.middle.block189, %vector.ph162
  %.lcssa139 = phi ptr [ %i.dj, %vec.epilog.middle.block189 ], [ %i.db, %vector.ph162 ], [ %i.dw, %.lr.ph109 ]
  %.lcssa138 = phi i64 [ %i.di, %vec.epilog.middle.block189 ], [ %i.da, %vector.ph162 ], [ %i.dx, %.lr.ph109 ]
  %.lcssa = phi i1 [ %i.dr, %vec.epilog.middle.block189 ], [ %i.de, %vector.ph162 ], [ %i.dz, %.lr.ph109 ]
  tail call void %i.a(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.aj, ptr noundef %2) #46
  %i.eb = add i64 %.087, 1                        ; 2 uses
  br i1 %.lcssa, label %iter.check174, label %.loopexit, !llvm.loop !2603

.loopexit:                                        ; preds = %._crit_edge110, %._crit_edge
  %.188 = phi i64 [ 1, %._crit_edge ], [ %i.eb, %._crit_edge110 ] ; 2 uses
  %i.ec = icmp ugt i64 %7, -16
  br i1 %i.ec, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ed = add nuw i64 %7, 15
  %i.ee = lshr i64 %i.ed, 3
  %i.ef = or i64 %i.ee, 1
  %i.eg = add i64 %.188, %i.ef                    ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %.188
  %i.ei = icmp ugt i64 %i.eg, 2305843009213693952
  %or.cond102 = or i1 %i.eh, %i.ei
  br i1 %or.cond102, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ej = load i8, ptr %1, align 16, !tbaa !76
  %i.ek = and i8 %i.ej, 7
  store i8 %i.ek, ptr %1, align 16, !tbaa !76
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.loopexit, %bb.a
  %.191 = phi i32 [ 0, %bb.a ], [ 1, %bb.k ], [ 0, %bb.j ], [ 0, %.loopexit ]
  ret i32 %.191
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aead_aes_ccm_bluetooth_8_init(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @aead_aes_ccm_init(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef 8)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aead_aes_ccm_matter_init(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @aead_aes_ccm_init(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef 16)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @cipher_aes_ccm_init(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !166 ; 2 uses
  %i.b = ptrtoint ptr %.val to i64
  %i.c = and i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %i.c ; 16 uses
  %i.e = icmp ne ptr %2, null                     ; 2 uses
  %i.f = icmp ne ptr %1, null                     ; 2 uses
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
end_hunk_3
