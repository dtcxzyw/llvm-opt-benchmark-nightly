Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 549
begin_hunk_0_@AES_wrap_key:bb.a
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
  %i.fv = add nuw nsw i64 %.02936, %i.k           ; 4 uses
  %7 = lshr i64 %i.fv, 8
  %i.fw = lshr i64 %i.fv, 16
  %i.fx = lshr i64 %i.fv, 24
  %8 = trunc i64 %i.fv to i8
  %i.fy = trunc i64 %7 to i8
  %i.fz = trunc i64 %i.fw to i8
  %i.ga = trunc i64 %i.fx to i8
  %9 = load <4 x i8>, ptr %i.j, align 4, !tbaa !76
  %i.gb = insertelement <4 x i8> poison, i8 %i.ga, i64 0
  %i.gc = insertelement <4 x i8> %i.gb, i8 %i.fz, i64 1
  %i.gd = insertelement <4 x i8> %i.gc, i8 %i.fy, i64 2
  %i.ge = insertelement <4 x i8> %i.gd, i8 %8, i64 3
  %i.gf = xor <4 x i8> %9, %i.ge
  store <4 x i8> %i.gf, ptr %i.j, align 4, !tbaa !76
  %i.gg = load i64, ptr %i.h, align 8
  store i64 %i.gg, ptr %i.o, align 1
  %i.gh = add nuw nsw i64 %.02936, 1
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
  %.02733 = phi i64 [ %i.h, %.preheader ], [ %i.gi, %AES_decrypt.exit ] ; 3 uses
  %i.n = add nuw nsw i64 %.02733, %i.l            ; 4 uses
  %7 = lshr i64 %i.n, 8
  %i.o = lshr i64 %i.n, 16
  %i.p = lshr i64 %i.n, 24
  %8 = trunc i64 %i.n to i8
  %i.q = trunc i64 %7 to i8
  %i.r = trunc i64 %i.o to i8
  %i.s = trunc i64 %i.p to i8
  %9 = load <4 x i8>, ptr %i.i, align 4, !tbaa !76
  %i.t = insertelement <4 x i8> poison, i8 %i.s, i64 0
  %i.u = insertelement <4 x i8> %i.t, i8 %i.r, i64 1
  %i.v = insertelement <4 x i8> %i.u, i8 %i.q, i64 2
  %i.w = insertelement <4 x i8> %i.v, i8 %8, i64 3
  %i.x = xor <4 x i8> %9, %i.w
  store <4 x i8> %i.x, ptr %i.i, align 4, !tbaa !76
  %i.y = shl i64 %.02733, 3
  %i.z = getelementptr i8, ptr %1, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -8      ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 1
  store i64 %i.ab, ptr %i.j, align 8
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.ad = and i32 %i.ac, 33554432
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @aes_hw_decrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #46
  br label %AES_decrypt.exit

bb.d:                                             ; preds = %bb.b
  %i.ae = and i32 %i.ac, 512
  %.not9.i = icmp eq i32 %i.ae, 0
  br i1 %.not9.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @vpaes_decrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #46
  br label %AES_decrypt.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.af = load i32, ptr %i.k, align 4, !tbaa !75
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %bb.f
  %.01113.i.i = phi i64 [ 0, %bb.f ], [ %i.di, %.preheader.i.i ] ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %.01113.i.i, 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %.01113.i.i ; 8 uses
  %.sroa.0.0.copyload.i.i = load <2 x i64>, ptr %i.ah, align 4 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  %i.aq = bitcast <2 x i64> %.sroa.0.0.copyload.i.i to <4 x i32>
  %i.ar = lshr <4 x i32> %i.aq, splat (i32 1)
  %i.as = bitcast <4 x i32> %i.ar to <2 x i64>
  %i.at = xor <2 x i64> %.sroa.0.0.copyload.i.i, %i.as
  %i.au = and <2 x i64> %i.at, splat (i64 6148914691236517205) ; 2 uses
  %i.av = bitcast <2 x i64> %i.au to <4 x i32>
  %i.aw = shl nuw <4 x i32> %i.av, splat (i32 1)
  %i.ax = bitcast <4 x i32> %i.aw to <2 x i64>
  %i.ay = xor <2 x i64> %.sroa.0.0.copyload.i.i, %i.ax ; 4 uses
  %i.az = xor <2 x i64> %i.au, %.sroa.0.0.copyload.i.i ; 4 uses
  %i.ba = bitcast <2 x i64> %i.ay to <4 x i32>
  %i.bb = lshr <4 x i32> %i.ba, splat (i32 2)
  %i.bc = bitcast <4 x i32> %i.bb to <2 x i64>
  %i.bd = xor <2 x i64> %i.ay, %i.bc
  %i.be = and <2 x i64> %i.bd, splat (i64 3689348814741910323) ; 2 uses
  %i.bf = bitcast <2 x i64> %i.be to <4 x i32>
  %i.bg = shl nuw <4 x i32> %i.bf, splat (i32 2)
  %i.bh = bitcast <4 x i32> %i.bg to <2 x i64>
  %i.bi = xor <2 x i64> %i.ay, %i.bh              ; 4 uses
  %i.bj = xor <2 x i64> %i.be, %i.ay              ; 4 uses
  %i.bk = bitcast <2 x i64> %i.az to <4 x i32>
  %i.bl = lshr <4 x i32> %i.bk, splat (i32 2)
  %i.bm = bitcast <4 x i32> %i.bl to <2 x i64>
  %i.bn = xor <2 x i64> %i.az, %i.bm
  %i.bo = and <2 x i64> %i.bn, splat (i64 3689348814741910323) ; 2 uses
  %i.bp = bitcast <2 x i64> %i.bo to <4 x i32>
  %i.bq = shl nuw <4 x i32> %i.bp, splat (i32 2)
  %i.br = bitcast <4 x i32> %i.bq to <2 x i64>
  %i.bs = xor <2 x i64> %i.az, %i.br              ; 4 uses
  %i.bt = xor <2 x i64> %i.bo, %i.az              ; 4 uses
  %i.bu = bitcast <2 x i64> %i.bi to <4 x i32>
  %i.bv = lshr <4 x i32> %i.bu, splat (i32 4)
  %i.bw = bitcast <4 x i32> %i.bv to <2 x i64>
  %i.bx = xor <2 x i64> %i.bi, %i.bw
  %i.by = and <2 x i64> %i.bx, splat (i64 1085102592571150095) ; 2 uses
  %i.bz = bitcast <2 x i64> %i.by to <4 x i32>
  %i.ca = shl nuw <4 x i32> %i.bz, splat (i32 4)
  %i.cb = bitcast <4 x i32> %i.ca to <2 x i64>
  %i.cc = xor <2 x i64> %i.bi, %i.cb
  store <2 x i64> %i.cc, ptr %i.ai, align 16, !tbaa !76
  %i.cd = xor <2 x i64> %i.by, %i.bi
  store <2 x i64> %i.cd, ptr %i.am, align 16, !tbaa !76
  %i.ce = bitcast <2 x i64> %i.bs to <4 x i32>
  %i.cf = lshr <4 x i32> %i.ce, splat (i32 4)
  %i.cg = bitcast <4 x i32> %i.cf to <2 x i64>
  %i.ch = xor <2 x i64> %i.bs, %i.cg
  %i.ci = and <2 x i64> %i.ch, splat (i64 1085102592571150095) ; 2 uses
  %i.cj = bitcast <2 x i64> %i.ci to <4 x i32>
  %i.ck = shl nuw <4 x i32> %i.cj, splat (i32 4)
  %i.cl = bitcast <4 x i32> %i.ck to <2 x i64>
  %i.cm = xor <2 x i64> %i.bs, %i.cl
  store <2 x i64> %i.cm, ptr %i.aj, align 16, !tbaa !76
  %i.cn = xor <2 x i64> %i.ci, %i.bs
  store <2 x i64> %i.cn, ptr %i.an, align 16, !tbaa !76
  %i.co = bitcast <2 x i64> %i.bj to <4 x i32>
  %i.cp = lshr <4 x i32> %i.co, splat (i32 4)
  %i.cq = bitcast <4 x i32> %i.cp to <2 x i64>
  %i.cr = xor <2 x i64> %i.bj, %i.cq
  %i.cs = and <2 x i64> %i.cr, splat (i64 1085102592571150095) ; 2 uses
  %i.ct = bitcast <2 x i64> %i.cs to <4 x i32>
  %i.cu = shl nuw <4 x i32> %i.ct, splat (i32 4)
  %i.cv = bitcast <4 x i32> %i.cu to <2 x i64>
  %i.cw = xor <2 x i64> %i.bj, %i.cv
  store <2 x i64> %i.cw, ptr %i.ak, align 16, !tbaa !76
  %i.cx = xor <2 x i64> %i.cs, %i.bj
  store <2 x i64> %i.cx, ptr %i.ao, align 16, !tbaa !76
  %i.cy = bitcast <2 x i64> %i.bt to <4 x i32>
  %i.cz = lshr <4 x i32> %i.cy, splat (i32 4)
  %i.da = bitcast <4 x i32> %i.cz to <2 x i64>
  %i.db = xor <2 x i64> %i.bt, %i.da
  %i.dc = and <2 x i64> %i.db, splat (i64 1085102592571150095) ; 2 uses
  %i.dd = bitcast <2 x i64> %i.dc to <4 x i32>
  %i.de = shl nuw <4 x i32> %i.dd, splat (i32 4)
  %i.df = bitcast <4 x i32> %i.de to <2 x i64>
  %i.dg = xor <2 x i64> %i.bt, %i.df
  store <2 x i64> %i.dg, ptr %i.al, align 16, !tbaa !76
  %i.dh = xor <2 x i64> %i.dc, %i.bt
  store <2 x i64> %i.dh, ptr %i.ap, align 16, !tbaa !76
  %i.di = add nuw nsw i64 %.01113.i.i, 1
  %exitcond.not.i = icmp eq i64 %.01113.i.i, %i.ag
  br i1 %exitcond.not.i, label %aes_nohw_decrypt.exit, label %.preheader.i.i, !llvm.loop !0

aes_nohw_decrypt.exit:                            ; preds = %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %.sroa.0.0.copyload.i4.i = load <2 x i64>, ptr %i.a, align 16 ; 2 uses
  %i.dj = bitcast <2 x i64> %.sroa.0.0.copyload.i4.i to <4 x i32> ; 3 uses
  %i.dk = lshr <4 x i32> %i.dj, splat (i32 1)
  %.inner = and <4 x i32> %i.dk, splat (i32 1431655765) ; 2 uses
  %i.dl = shl nuw <4 x i32> %.inner, splat (i32 1)
  %i.dm = bitcast <4 x i32> %i.dl to <2 x i64>
  %i.dn = xor <2 x i64> %.sroa.0.0.copyload.i4.i, %i.dm ; 2 uses
  %i.do = bitcast <2 x i64> %i.dn to <4 x i32>    ; 2 uses
  %i.dp = lshr <4 x i32> %i.do, splat (i32 2)
  %.inner39 = and <4 x i32> %i.dp, splat (i32 858993459) ; 2 uses
  %i.dq = shl nuw <4 x i32> %.inner39, splat (i32 2)
  %i.dr = bitcast <4 x i32> %i.dq to <2 x i64>
  %i.ds = xor <2 x i64> %i.dn, %i.dr              ; 2 uses
  %i.dt = lshr <4 x i32> %i.dj, splat (i32 3)
  %.inner40 = and <4 x i32> %i.dt, splat (i32 286331153) ; 2 uses
  %i.du = shl nuw nsw <4 x i32> %.inner40, splat (i32 2)
  %.inner41 = xor <4 x i32> %.inner, %i.du        ; 2 uses
  %i.dv = bitcast <2 x i64> %i.ds to <4 x i32>
  %i.dw = lshr <4 x i32> %i.dv, splat (i32 4)
  %i.dx = bitcast <4 x i32> %i.dw to <2 x i64>
  %i.dy = and <2 x i64> %i.dx, splat (i64 1085102592571150095) ; 2 uses
  %i.dz = bitcast <2 x i64> %i.dy to <4 x i32>
  %i.ea = shl nuw <4 x i32> %i.dz, splat (i32 4)
  %i.eb = bitcast <4 x i32> %i.ea to <2 x i64>
  %i.ec = xor <2 x i64> %i.ds, %i.eb
  store <2 x i64> %i.ec, ptr %6, align 16, !tbaa !76
  store <2 x i64> %i.dy, ptr %.phi.trans.insert14.i.i, align 16, !tbaa !76
  %i.ed = lshr <4 x i32> %.inner41, splat (i32 4)
  %i.ee = bitcast <4 x i32> %i.ed to <2 x i64>
  %i.ef = and <2 x i64> %i.ee, splat (i64 361700864190383365) ; 2 uses
  %i.eg = bitcast <2 x i64> %i.ef to <4 x i32>
  %i.eh = shl nuw nsw <4 x i32> %i.eg, splat (i32 4)
  %.inner44 = xor <4 x i32> %.inner41, %i.eh
  store <4 x i32> %.inner44, ptr %.phi.trans.insert.i.i, align 16, !tbaa !76
  store <2 x i64> %i.ef, ptr %.phi.trans.insert16.i.i, align 16, !tbaa !76
  %i.ei = lshr <4 x i32> %i.do, splat (i32 6)
  %i.ej = bitcast <4 x i32> %i.ei to <2 x i64>
  %i.ek = and <2 x i64> %i.ej, splat (i64 217020518514230019) ; 2 uses
  %i.el = bitcast <2 x i64> %i.ek to <4 x i32>
  %i.em = shl nuw nsw <4 x i32> %i.el, splat (i32 4)
  %.inner46 = xor <4 x i32> %.inner39, %i.em
  store <4 x i32> %.inner46, ptr %.phi.trans.insert10.i.i, align 16, !tbaa !76
  store <2 x i64> %i.ek, ptr %.phi.trans.insert18.i.i, align 16, !tbaa !76
  %i.en = lshr <4 x i32> %i.dj, splat (i32 7)
  %i.eo = bitcast <4 x i32> %i.en to <2 x i64>
  %i.ep = and <2 x i64> %i.eo, splat (i64 72340172838076673) ; 2 uses
  %i.eq = bitcast <2 x i64> %i.ep to <4 x i32>
  %i.er = shl nuw nsw <4 x i32> %i.eq, splat (i32 4)
  %.inner48 = xor <4 x i32> %.inner40, %i.er
  store <4 x i32> %.inner48, ptr %.phi.trans.insert12.i.i, align 16, !tbaa !76
  store <2 x i64> %i.ep, ptr %.phi.trans.insert20.i.i, align 16, !tbaa !76
  call fastcc void @aes_nohw_decrypt_batch(ptr noundef %5, i64 noundef %i.ag, ptr noundef %6)
  %.sroa.0.i.sroa.0.0.copyload.i = load <2 x i64>, ptr %6, align 16
  %.sroa.0.i.sroa.6.0.copyload6.i = load <4 x i32>, ptr %.phi.trans.insert.i.i, align 16
  %.sroa.0.i.sroa.8.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert10.i.i, align 16
  %.sroa.0.i.sroa.10.0.copyload7.i = load <4 x i32>, ptr %.phi.trans.insert12.i.i, align 16
  %.sroa.0.i.sroa.12.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert14.i.i, align 16
  %.sroa.0.i.sroa.14.0.copyload8.i = load <4 x i32>, ptr %.phi.trans.insert16.i.i, align 16
  %.sroa.0.i.sroa.16.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert18.i.i, align 16
  %.sroa.0.i.sroa.18.0.copyload9.i = load <4 x i32>, ptr %.phi.trans.insert20.i.i, align 16, !tbaa !76
  %i.es = shl <4 x i32> %.sroa.0.i.sroa.6.0.copyload6.i, splat (i32 1)
  %i.et = bitcast <4 x i32> %i.es to <2 x i64>
  %i.eu = and <2 x i64> %i.et, splat (i64 -6148914691236517206)
  %i.ev = and <2 x i64> %.sroa.0.i.sroa.0.0.copyload.i, splat (i64 6148914691236517205)
  %i.ew = or disjoint <2 x i64> %i.eu, %i.ev      ; 2 uses
  %i.ex = shl <4 x i32> %.sroa.0.i.sroa.10.0.copyload7.i, splat (i32 1)
  %i.ey = bitcast <4 x i32> %i.ex to <2 x i64>
  %i.ez = and <2 x i64> %i.ey, splat (i64 2459565876494606882)
  %i.fa = and <2 x i64> %.sroa.0.i.sroa.8.0.copyload.i, splat (i64 1229782938247303441)
  %i.fb = or disjoint <2 x i64> %i.ez, %i.fa
  %i.fc = shl <4 x i32> %.sroa.0.i.sroa.14.0.copyload8.i, splat (i32 1)
  %i.fd = bitcast <4 x i32> %i.fc to <2 x i64>
  %i.fe = and <2 x i64> %i.fd, splat (i64 -6148914691236517206)
end_hunk_0
begin_hunk_1_@aead_aes_ccm_init:bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = trunc nuw nsw i64 %2 to i32
  %i.j = shl nuw nsw i32 %i.i, 3
  %i.k = tail call i32 @aes_hw_set_encrypt_key(ptr noundef %1, i32 noundef %i.j, ptr noundef nonnull %i.f) #46 ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.l = and i32 %i.g, 512
  %.not28.i = icmp eq i32 %i.l, 0
  %i.m = trunc nuw nsw i64 %2 to i32
  %i.n = shl nuw nsw i32 %i.m, 3                  ; 2 uses
  br i1 %.not28.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @vpaes_set_encrypt_key(ptr noundef %1, i32 noundef %i.n, ptr noundef nonnull %i.f) #46 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.p = tail call i32 @aes_nohw_set_encrypt_key(ptr noundef %1, i32 noundef %i.n, ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
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
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 19 ; 2 uses
  %i.bj = xor i8 %i.bh, -2
  store i8 %i.bj, ptr %i.bg, align 1, !tbaa !76
  %i.bk = lshr i64 %6, 24
  %i.bl = trunc nuw i64 %i.bk to i8
  %i.bm = load i8, ptr %i.bi, align 2, !tbaa !76
  %i.bn = xor i8 %i.bm, %i.bl
  store i8 %i.bn, ptr %i.bi, align 2, !tbaa !76
  %i.bo = lshr i64 %6, 16
  %i.bp = trunc i64 %i.bo to i8
  %10 = load i8, ptr %9, align 1, !tbaa !76
  %11 = xor i8 %10, %i.bp
  store i8 %11, ptr %9, align 1, !tbaa !76
  %i.bq = lshr i64 %6, 8
  %i.br = trunc i64 %i.bq to i8
  %12 = load i8, ptr %8, align 4, !tbaa !76
  %i.bs = xor i8 %12, %i.br
  store i8 %i.bs, ptr %8, align 4, !tbaa !76
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bt = xor i8 %i.bh, -1
  store i8 %i.bt, ptr %i.bg, align 1, !tbaa !76
  %i.bu = lshr i64 %6, 56
  %i.bv = lshr i64 %6, 48
  %i.bw = lshr i64 %6, 40
  %i.bx = lshr i64 %6, 32
  %i.by = trunc i64 %i.bx to i8
  %i.bz = trunc i64 %i.bw to i8
  %i.ca = trunc i64 %i.bv to i8
  %i.cb = trunc nuw i64 %i.bu to i8
  %i.cc = load <4 x i8>, ptr %i.bi, align 2, !tbaa !76
  %i.cd = insertelement <4 x i8> poison, i8 %i.cb, i64 0
  %i.ce = insertelement <4 x i8> %i.cd, i8 %i.ca, i64 1
  %i.cf = insertelement <4 x i8> %i.ce, i8 %i.bz, i64 2
  %i.cg = insertelement <4 x i8> %i.cf, i8 %i.by, i64 3
  %i.ch = xor <4 x i8> %i.cc, %i.cg
  store <4 x i8> %i.ch, ptr %i.bi, align 2, !tbaa !76
  %13 = lshr i64 %6, 24
  %14 = trunc i64 %13 to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 2, !tbaa !76
  %15 = xor i8 %i.cj, %14
  store i8 %15, ptr %i.ci, align 2, !tbaa !76
  %16 = lshr i64 %6, 16
  %17 = trunc i64 %16 to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 23 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !76
  %18 = xor i8 %i.cl, %17
  store i8 %18, ptr %i.ck, align 1, !tbaa !76
  %19 = lshr i64 %6, 8
  %20 = trunc i64 %19 to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !76
  %i.co = xor i8 %i.cn, %20
  store i8 %i.co, ptr %i.cm, align 8, !tbaa !76
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %.sink137 = phi i64 [ 21, %bb.g ], [ 25, %bb.h ], [ 17, %bb.e ]
  %.0 = phi i64 [ 6, %bb.g ], [ 10, %bb.h ], [ 2, %bb.e ]
  %i.cp = trunc i64 %6 to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %.sink137 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !76
  %i.cs = xor i8 %i.cr, %i.cp
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !76
  %scevgep = getelementptr i8, ptr %1, i64 16
  %scevgep154 = getelementptr i8, ptr %1, i64 17
  br label %iter.check174

iter.check174:                                    ; preds = %._crit_edge110, %bb.i
  %.094 = phi ptr [ %5, %bb.i ], [ %.lcssa139, %._crit_edge110 ] ; 8 uses
  %.092 = phi i64 [ %6, %bb.i ], [ %.lcssa138, %._crit_edge110 ] ; 8 uses
  %.087 = phi i64 [ 1, %bb.i ], [ %i.ea, %._crit_edge110 ]
  %.1 = phi i64 [ %.0, %bb.i ], [ 0, %._crit_edge110 ] ; 10 uses
  %i.ct = add i64 %.092, -1
  %i.cu = sub nsw i64 15, %.1
  %umin158 = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.cu) ; 3 uses
  %i.cv = add nuw nsw i64 %umin158, 1             ; 5 uses
  %min.iters.check159 = icmp ult i64 %umin158, 3
  br i1 %min.iters.check159, label %.lr.ph109.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check174
  %scevgep153 = getelementptr i8, ptr %scevgep, i64 %.1
  %i.cw = add i64 %.092, -1
  %i.cx = sub nsw i64 15, %.1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 %i.cx) ; 2 uses
  %i.cy = getelementptr i8, ptr %scevgep154, i64 %.1
  %scevgep155 = getelementptr i8, ptr %i.cy, i64 %umin
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
  %n.vec163 = and i64 %i.cv, -16                  ; 5 uses
  %i.cz = sub i64 %.092, %n.vec163                ; 3 uses
  %i.da = getelementptr i8, ptr %.094, i64 %n.vec163 ; 2 uses
  %wide.load = load <16 x i8>, ptr %.094, align 1, !tbaa !76, !alias.scope !2604
  %i.db = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.1 ; 2 uses
  %wide.load167 = load <16 x i8>, ptr %i.db, align 1, !tbaa !76, !alias.scope !2605, !noalias !2604
  %i.dc = xor <16 x i8> %wide.load167, %wide.load
  store <16 x i8> %i.dc, ptr %i.db, align 1, !tbaa !76, !alias.scope !2605, !noalias !2604
  %i.dd = icmp ne i64 %.092, 16
  %cmp.n169 = icmp eq i64 %i.cv, %n.vec163
  br i1 %cmp.n169, label %._crit_edge110, label %vec.epilog.iter.check176

vec.epilog.iter.check176:                         ; preds = %vector.ph162
  %i.de = add i64 %.1, %n.vec163
  %i.df = and i64 %i.cv, 12
  %min.epilog.iters.check177 = icmp eq i64 %i.df, 0
  br i1 %min.epilog.iters.check177, label %.lr.ph109.preheader, label %vec.epilog.ph178, !prof !471

vec.epilog.ph178:                                 ; preds = %vector.main.loop.iter.check160, %vec.epilog.iter.check176
  %vec.epilog.resume.val170 = phi i64 [ %n.vec163, %vec.epilog.iter.check176 ], [ 0, %vector.main.loop.iter.check160 ]
  %bc.resume.val172 = phi i64 [ %i.cz, %vec.epilog.iter.check176 ], [ %.092, %vector.main.loop.iter.check160 ]
  %n.vec179 = and i64 %i.cv, -4                   ; 5 uses
  %i.dg = add i64 %.1, %n.vec179
  %i.dh = sub i64 %.092, %n.vec179                ; 2 uses
  %i.di = getelementptr i8, ptr %.094, i64 %n.vec179 ; 2 uses
  %i.dj = add i64 %bc.resume.val172, -3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.1
  br label %vec.epilog.vector.body182

vec.epilog.vector.body182:                        ; preds = %vec.epilog.vector.body182, %vec.epilog.ph178
  %index183 = phi i64 [ %vec.epilog.resume.val170, %vec.epilog.ph178 ], [ %index.next187, %vec.epilog.vector.body182 ] ; 3 uses
  %i.dl = phi i64 [ %i.dj, %vec.epilog.ph178 ], [ %i.do, %vec.epilog.vector.body182 ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.094, i64 %index183
  %wide.load185 = load <4 x i8>, ptr %next.gep, align 1, !tbaa !76, !alias.scope !2604
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index183 ; 2 uses
  %wide.load186 = load <4 x i8>, ptr %i.dm, align 1, !tbaa !76, !alias.scope !2605, !noalias !2604
  %i.dn = xor <4 x i8> %wide.load186, %wide.load185
  store <4 x i8> %i.dn, ptr %i.dm, align 1, !tbaa !76, !alias.scope !2605, !noalias !2604
  %index.next187 = add nuw i64 %index183, 4       ; 2 uses
  %i.do = add i64 %i.dl, -4
  %i.dp = icmp eq i64 %index.next187, %n.vec179
  br i1 %i.dp, label %vec.epilog.middle.block189, label %vec.epilog.vector.body182, !llvm.loop !2601

vec.epilog.middle.block189:                       ; preds = %vec.epilog.vector.body182
  %i.dq = icmp ne i64 %i.dl, 1
  %cmp.n190 = icmp eq i64 %i.cv, %n.vec179
  br i1 %cmp.n190, label %._crit_edge110, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %vector.memcheck, %iter.check174, %vec.epilog.iter.check176, %vec.epilog.middle.block189
  %indvars.iv120.ph = phi i64 [ %.1, %iter.check174 ], [ %.1, %vector.memcheck ], [ %i.de, %vec.epilog.iter.check176 ], [ %i.dg, %vec.epilog.middle.block189 ]
  %.193106.ph = phi i64 [ %.092, %iter.check174 ], [ %.092, %vector.memcheck ], [ %i.cz, %vec.epilog.iter.check176 ], [ %i.dh, %vec.epilog.middle.block189 ]
  %.195105.ph = phi ptr [ %.094, %iter.check174 ], [ %.094, %vector.memcheck ], [ %i.da, %vec.epilog.iter.check176 ], [ %i.di, %vec.epilog.middle.block189 ]
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %.lr.ph109
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %.lr.ph109 ], [ %indvars.iv120.ph, %.lr.ph109.preheader ] ; 3 uses
  %.193106 = phi i64 [ %i.dw, %.lr.ph109 ], [ %.193106.ph, %.lr.ph109.preheader ]
  %.195105 = phi ptr [ %i.dv, %.lr.ph109 ], [ %.195105.ph, %.lr.ph109.preheader ] ; 2 uses
  %i.dr = load i8, ptr %.195105, align 1, !tbaa !76
  %i.ds = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv120 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !76
  %i.du = xor i8 %i.dt, %i.dr
  store i8 %i.du, ptr %i.ds, align 1, !tbaa !76
  %i.dv = getelementptr inbounds nuw i8, ptr %.195105, i64 1 ; 2 uses
  %i.dw = add i64 %.193106, -1                    ; 3 uses
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %i.dx = icmp samesign ult i64 %indvars.iv120, 15
  %i.dy = icmp ne i64 %i.dw, 0                    ; 2 uses
  %i.dz = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %i.dz, label %.lr.ph109, label %._crit_edge110, !llvm.loop !2602

._crit_edge110:                                   ; preds = %.lr.ph109, %vec.epilog.middle.block189, %vector.ph162
  %.lcssa139 = phi ptr [ %i.di, %vec.epilog.middle.block189 ], [ %i.da, %vector.ph162 ], [ %i.dv, %.lr.ph109 ]
  %.lcssa138 = phi i64 [ %i.dh, %vec.epilog.middle.block189 ], [ %i.cz, %vector.ph162 ], [ %i.dw, %.lr.ph109 ]
  %.lcssa = phi i1 [ %i.dq, %vec.epilog.middle.block189 ], [ %i.dd, %vector.ph162 ], [ %i.dy, %.lr.ph109 ]
  tail call void %i.a(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.aj, ptr noundef %2) #46
  %i.ea = add i64 %.087, 1                        ; 2 uses
  br i1 %.lcssa, label %iter.check174, label %.loopexit, !llvm.loop !2603

.loopexit:                                        ; preds = %._crit_edge110, %._crit_edge
  %.188 = phi i64 [ 1, %._crit_edge ], [ %i.ea, %._crit_edge110 ] ; 2 uses
  %i.eb = icmp ugt i64 %7, -16
  br i1 %i.eb, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ec = add nuw i64 %7, 15
  %i.ed = lshr i64 %i.ec, 3
  %i.ee = or i64 %i.ed, 1
  %i.ef = add i64 %.188, %i.ee                    ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %.188
  %i.eh = icmp ugt i64 %i.ef, 2305843009213693952
  %or.cond102 = or i1 %i.eg, %i.eh
  br i1 %or.cond102, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ei = load i8, ptr %1, align 16, !tbaa !76
  %i.ej = and i8 %i.ei, 7
  store i8 %i.ej, ptr %1, align 16, !tbaa !76
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !173  ; 2 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.j = and i32 %i.i, 33554432
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = shl nsw i32 %i.h, 3
  %i.l = tail call i32 @aes_hw_set_encrypt_key(ptr noundef nonnull %1, i32 noundef %i.k, ptr noundef %i.d) #46 ; 0 uses
  br label %aes_ctr_set_key.exit

bb.e:                                             ; preds = %bb.c
  %i.m = and i32 %i.i, 512
  %.not28.i = icmp eq i32 %i.m, 0
  %i.n = shl nsw i32 %i.h, 3                      ; 2 uses
  br i1 %.not28.i, label %bb.g, label %bb.f
end_hunk_1
begin_hunk_2_@mlkem1024_indcpa_enc:bb.a
  %i.ur = getelementptr inbounds nuw i8, ptr %11, i64 160
  %i.us = getelementptr inbounds nuw i8, ptr %11, i64 176
  %wide.load51.5 = load <8 x i16>, ptr %i.ur, align 32, !tbaa !131
  %wide.load52.5 = load <8 x i16>, ptr %i.us, align 16, !tbaa !131
  %i.ut = add <8 x i16> %wide.load51.5, %wide.load49.5
  %i.uu = add <8 x i16> %wide.load52.5, %wide.load50.5
  store <8 x i16> %i.ut, ptr %i.up, align 32, !tbaa !131
  store <8 x i16> %i.uu, ptr %i.uq, align 16, !tbaa !131
  %i.uv = getelementptr inbounds nuw i8, ptr %10, i64 192 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %10, i64 208 ; 2 uses
  %wide.load49.6 = load <8 x i16>, ptr %i.uv, align 32, !tbaa !131
  %wide.load50.6 = load <8 x i16>, ptr %i.uw, align 16, !tbaa !131
  %i.ux = getelementptr inbounds nuw i8, ptr %11, i64 192
  %i.uy = getelementptr inbounds nuw i8, ptr %11, i64 208
  %wide.load51.6 = load <8 x i16>, ptr %i.ux, align 32, !tbaa !131
  %wide.load52.6 = load <8 x i16>, ptr %i.uy, align 16, !tbaa !131
  %i.uz = add <8 x i16> %wide.load51.6, %wide.load49.6
  %i.va = add <8 x i16> %wide.load52.6, %wide.load50.6
  store <8 x i16> %i.uz, ptr %i.uv, align 32, !tbaa !131
  store <8 x i16> %i.va, ptr %i.uw, align 16, !tbaa !131
  %i.vb = getelementptr inbounds nuw i8, ptr %10, i64 224 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %10, i64 240 ; 2 uses
  %wide.load49.7 = load <8 x i16>, ptr %i.vb, align 32, !tbaa !131
  %wide.load50.7 = load <8 x i16>, ptr %i.vc, align 16, !tbaa !131
  %i.vd = getelementptr inbounds nuw i8, ptr %11, i64 224
  %i.ve = getelementptr inbounds nuw i8, ptr %11, i64 240
  %wide.load51.7 = load <8 x i16>, ptr %i.vd, align 32, !tbaa !131
  %wide.load52.7 = load <8 x i16>, ptr %i.ve, align 16, !tbaa !131
  %i.vf = add <8 x i16> %wide.load51.7, %wide.load49.7
  %i.vg = add <8 x i16> %wide.load52.7, %wide.load50.7
  store <8 x i16> %i.vf, ptr %i.vb, align 32, !tbaa !131
  store <8 x i16> %i.vg, ptr %i.vc, align 16, !tbaa !131
  %i.vh = getelementptr inbounds nuw i8, ptr %10, i64 256 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %10, i64 272 ; 2 uses
  %wide.load49.8 = load <8 x i16>, ptr %i.vh, align 32, !tbaa !131
  %wide.load50.8 = load <8 x i16>, ptr %i.vi, align 16, !tbaa !131
  %i.vj = getelementptr inbounds nuw i8, ptr %11, i64 256
  %i.vk = getelementptr inbounds nuw i8, ptr %11, i64 272
  %wide.load51.8 = load <8 x i16>, ptr %i.vj, align 32, !tbaa !131
  %wide.load52.8 = load <8 x i16>, ptr %i.vk, align 16, !tbaa !131
  %i.vl = add <8 x i16> %wide.load51.8, %wide.load49.8
  %i.vm = add <8 x i16> %wide.load52.8, %wide.load50.8
  store <8 x i16> %i.vl, ptr %i.vh, align 32, !tbaa !131
  store <8 x i16> %i.vm, ptr %i.vi, align 16, !tbaa !131
  %i.vn = getelementptr inbounds nuw i8, ptr %10, i64 288 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %10, i64 304 ; 2 uses
  %wide.load49.9 = load <8 x i16>, ptr %i.vn, align 32, !tbaa !131
  %wide.load50.9 = load <8 x i16>, ptr %i.vo, align 16, !tbaa !131
  %i.vp = getelementptr inbounds nuw i8, ptr %11, i64 288
  %i.vq = getelementptr inbounds nuw i8, ptr %11, i64 304
  %wide.load51.9 = load <8 x i16>, ptr %i.vp, align 32, !tbaa !131
  %wide.load52.9 = load <8 x i16>, ptr %i.vq, align 16, !tbaa !131
  %i.vr = add <8 x i16> %wide.load51.9, %wide.load49.9
  %i.vs = add <8 x i16> %wide.load52.9, %wide.load50.9
  store <8 x i16> %i.vr, ptr %i.vn, align 32, !tbaa !131
  store <8 x i16> %i.vs, ptr %i.vo, align 16, !tbaa !131
  %i.vt = getelementptr inbounds nuw i8, ptr %10, i64 320 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %10, i64 336 ; 2 uses
  %wide.load49.10 = load <8 x i16>, ptr %i.vt, align 32, !tbaa !131
  %wide.load50.10 = load <8 x i16>, ptr %i.vu, align 16, !tbaa !131
  %i.vv = getelementptr inbounds nuw i8, ptr %11, i64 320
  %i.vw = getelementptr inbounds nuw i8, ptr %11, i64 336
  %wide.load51.10 = load <8 x i16>, ptr %i.vv, align 32, !tbaa !131
  %wide.load52.10 = load <8 x i16>, ptr %i.vw, align 16, !tbaa !131
  %i.vx = add <8 x i16> %wide.load51.10, %wide.load49.10
  %i.vy = add <8 x i16> %wide.load52.10, %wide.load50.10
  store <8 x i16> %i.vx, ptr %i.vt, align 32, !tbaa !131
  store <8 x i16> %i.vy, ptr %i.vu, align 16, !tbaa !131
  %i.vz = getelementptr inbounds nuw i8, ptr %10, i64 352 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %10, i64 368 ; 2 uses
  %wide.load49.11 = load <8 x i16>, ptr %i.vz, align 32, !tbaa !131
  %wide.load50.11 = load <8 x i16>, ptr %i.wa, align 16, !tbaa !131
  %i.wb = getelementptr inbounds nuw i8, ptr %11, i64 352
  %i.wc = getelementptr inbounds nuw i8, ptr %11, i64 368
  %wide.load51.11 = load <8 x i16>, ptr %i.wb, align 32, !tbaa !131
  %wide.load52.11 = load <8 x i16>, ptr %i.wc, align 16, !tbaa !131
  %i.wd = add <8 x i16> %wide.load51.11, %wide.load49.11
  %i.we = add <8 x i16> %wide.load52.11, %wide.load50.11
  store <8 x i16> %i.wd, ptr %i.vz, align 32, !tbaa !131
  store <8 x i16> %i.we, ptr %i.wa, align 16, !tbaa !131
  %i.wf = getelementptr inbounds nuw i8, ptr %10, i64 384 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %10, i64 400 ; 2 uses
  %wide.load49.12 = load <8 x i16>, ptr %i.wf, align 32, !tbaa !131
  %wide.load50.12 = load <8 x i16>, ptr %i.wg, align 16, !tbaa !131
  %i.wh = getelementptr inbounds nuw i8, ptr %11, i64 384
  %i.wi = getelementptr inbounds nuw i8, ptr %11, i64 400
  %wide.load51.12 = load <8 x i16>, ptr %i.wh, align 32, !tbaa !131
  %wide.load52.12 = load <8 x i16>, ptr %i.wi, align 16, !tbaa !131
  %i.wj = add <8 x i16> %wide.load51.12, %wide.load49.12
  %i.wk = add <8 x i16> %wide.load52.12, %wide.load50.12
  store <8 x i16> %i.wj, ptr %i.wf, align 32, !tbaa !131
  store <8 x i16> %i.wk, ptr %i.wg, align 16, !tbaa !131
  %i.wl = getelementptr inbounds nuw i8, ptr %10, i64 416 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %10, i64 432 ; 2 uses
  %wide.load49.13 = load <8 x i16>, ptr %i.wl, align 32, !tbaa !131
  %wide.load50.13 = load <8 x i16>, ptr %i.wm, align 16, !tbaa !131
  %i.wn = getelementptr inbounds nuw i8, ptr %11, i64 416
  %i.wo = getelementptr inbounds nuw i8, ptr %11, i64 432
  %wide.load51.13 = load <8 x i16>, ptr %i.wn, align 32, !tbaa !131
  %wide.load52.13 = load <8 x i16>, ptr %i.wo, align 16, !tbaa !131
  %i.wp = add <8 x i16> %wide.load51.13, %wide.load49.13
  %i.wq = add <8 x i16> %wide.load52.13, %wide.load50.13
  store <8 x i16> %i.wp, ptr %i.wl, align 32, !tbaa !131
  store <8 x i16> %i.wq, ptr %i.wm, align 16, !tbaa !131
  %i.wr = getelementptr inbounds nuw i8, ptr %10, i64 448 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %10, i64 464 ; 2 uses
  %wide.load49.14 = load <8 x i16>, ptr %i.wr, align 32, !tbaa !131
  %wide.load50.14 = load <8 x i16>, ptr %i.ws, align 16, !tbaa !131
  %i.wt = getelementptr inbounds nuw i8, ptr %11, i64 448
  %i.wu = getelementptr inbounds nuw i8, ptr %11, i64 464
  %wide.load51.14 = load <8 x i16>, ptr %i.wt, align 32, !tbaa !131
  %wide.load52.14 = load <8 x i16>, ptr %i.wu, align 16, !tbaa !131
  %i.wv = add <8 x i16> %wide.load51.14, %wide.load49.14
  %i.ww = add <8 x i16> %wide.load52.14, %wide.load50.14
  store <8 x i16> %i.wv, ptr %i.wr, align 32, !tbaa !131
  store <8 x i16> %i.ww, ptr %i.ws, align 16, !tbaa !131
  %i.wx = getelementptr inbounds nuw i8, ptr %10, i64 480 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %10, i64 496 ; 2 uses
  %wide.load49.15 = load <8 x i16>, ptr %i.wx, align 32, !tbaa !131
  %wide.load50.15 = load <8 x i16>, ptr %i.wy, align 16, !tbaa !131
  %i.wz = getelementptr inbounds nuw i8, ptr %11, i64 480
  %i.xa = getelementptr inbounds nuw i8, ptr %11, i64 496
  %wide.load51.15 = load <8 x i16>, ptr %i.wz, align 32, !tbaa !131
  %wide.load52.15 = load <8 x i16>, ptr %i.xa, align 16, !tbaa !131
  %i.xb = add <8 x i16> %wide.load51.15, %wide.load49.15
  %i.xc = add <8 x i16> %wide.load52.15, %wide.load50.15
  store <8 x i16> %i.xb, ptr %i.wx, align 32, !tbaa !131
  store <8 x i16> %i.xc, ptr %i.wy, align 16, !tbaa !131
  call fastcc void @mlkem1024_polyvec_reduce(ptr noundef %9)
  %i.xd = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.xe = and i32 %i.xd, 32
  %.not.i.i = icmp eq i32 %i.xe, 0
  br i1 %.not.i.i, label %mlk_poly_reduce_native.exit.i, label %mlk_poly_reduce_native.exit.thread.i

mlk_poly_reduce_native.exit.thread.i:             ; preds = %mlk_enc_getnoise_eta1_eta21024.exit
  call void @mlkem_reduce_avx2_asm(ptr noundef nonnull %10) #46
  br label %mlkem_poly_reduce.exit.preheader

mlk_poly_reduce_native.exit.i:                    ; preds = %mlk_enc_getnoise_eta1_eta21024.exit, %mlk_poly_reduce_native.exit.i
  %indvars.iv.i.i66 = phi i64 [ %indvars.iv.next.i.i67, %mlk_poly_reduce_native.exit.i ], [ 0, %mlk_enc_getnoise_eta1_eta21024.exit ] ; 2 uses
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %indvars.iv.i.i66 ; 2 uses
  %i.xg = load i16, ptr %i.xf, align 2, !tbaa !131 ; 2 uses
  %i.xh = sext i16 %i.xg to i32
  %i.xi = mul nsw i32 %i.xh, 20159
  %i.xj = add nsw i32 %i.xi, 33554432
  %i.xk = ashr i32 %i.xj, 26
  %i.xl = trunc nsw i32 %i.xk to i16
  %i.xm = mul i16 %i.xl, -3329
  %i.xn = add i16 %i.xm, %i.xg                    ; 4 uses
  %i.xo = add i16 %i.xn, 3329
  %i.xp = sext i16 %i.xn to i32
  %i.xq = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.xp) #46, !srcloc !458
  %i.xr = lshr i32 %i.xq, 16
  %i.xs = sub nsw i32 0, %i.xr
  %i.xt = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.xs) #46, !srcloc !458
  %i.xu = lshr i32 %i.xt, 16
  %i.xv = trunc nuw i32 %i.xu to i16
  %i.xw = xor i16 %i.xo, %i.xn
  %i.xx = and i16 %i.xw, %i.xv
  %i.xy = xor i16 %i.xx, %i.xn
  store i16 %i.xy, ptr %i.xf, align 2, !tbaa !131
  %indvars.iv.next.i.i67 = add nuw nsw i64 %indvars.iv.i.i66, 1 ; 2 uses
  %exitcond.not.i.i68 = icmp eq i64 %indvars.iv.next.i.i67, 256
  br i1 %exitcond.not.i.i68, label %mlkem_poly_reduce.exit.preheader, label %mlk_poly_reduce_native.exit.i, !llvm.loop !44

mlkem_poly_reduce.exit.preheader:                 ; preds = %mlk_poly_reduce_native.exit.i, %mlk_poly_reduce_native.exit.thread.i
  br label %mlkem_poly_reduce.exit

mlkem_poly_reduce.exit:                           ; preds = %mlkem_poly_reduce.exit.preheader, %mlkem1024_poly_compress_du.exit.i.i
  %indvars.iv.i.i69 = phi i64 [ %indvars.iv.next.i.i70, %mlkem1024_poly_compress_du.exit.i.i ], [ 0, %mlkem_poly_reduce.exit.preheader ] ; 3 uses
  %i.xz = mul nuw nsw i64 %indvars.iv.i.i69, 352
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 %i.xz ; 2 uses
  %i.yb = getelementptr inbounds nuw [512 x i8], ptr %9, i64 %indvars.iv.i.i69 ; 2 uses
  %i.yc = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.yd = and i32 %i.yc, 32
  %.not.i.i.i.i.i = icmp eq i32 %i.yd, 0
  br i1 %.not.i.i.i.i.i, label %mlk_poly_compress_d11_native.exit.i.i.i.i, label %mlk_poly_compress_d11_native.exit.thread.i.i.i.i

mlk_poly_compress_d11_native.exit.thread.i.i.i.i: ; preds = %mlkem_poly_reduce.exit
  call void @mlkem_poly_compress_d11_avx2_asm(ptr noundef %i.ya, ptr noundef nonnull %i.yb, ptr noundef nonnull @mlkem_compress_d11_data) #46
  br label %mlkem1024_poly_compress_du.exit.i.i

mlk_poly_compress_d11_native.exit.i.i.i.i:        ; preds = %mlkem_poly_reduce.exit, %mlk_poly_compress_d11_native.exit.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %mlk_poly_compress_d11_native.exit.i.i.i.i ], [ 0, %mlkem_poly_reduce.exit ] ; 3 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %indvars.iv.i.i.i.i.i, 4
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yb, i64 %.idx.i.i.i.i ; 8 uses
  %i.yf = load i16, ptr %i.ye, align 16, !tbaa !131
  %i.yg = sext i16 %i.yf to i64
  %i.yh = mul nsw i64 %i.yg, 5284526080
  %i.yi = add nsw i64 %i.yh, 4294967296           ; 2 uses
  %i.yj = lshr i64 %i.yi, 33
  %i.yk = getelementptr inbounds nuw i8, ptr %i.ye, i64 2
  %i.yl = load i16, ptr %i.yk, align 2, !tbaa !131
  %i.ym = sext i16 %i.yl to i64
  %i.yn = mul nsw i64 %i.ym, 5284526080
  %i.yo = add nsw i64 %i.yn, 4294967296           ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ye, i64 4
  %i.yq = load i16, ptr %i.yp, align 4, !tbaa !131
  %i.yr = sext i16 %i.yq to i64
  %i.ys = mul nsw i64 %i.yr, 5284526080
  %i.yt = add nsw i64 %i.ys, 4294967296           ; 3 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ye, i64 6
  %i.yv = load i16, ptr %i.yu, align 2, !tbaa !131
  %i.yw = sext i16 %i.yv to i64
  %i.yx = mul nsw i64 %i.yw, 5284526080
  %i.yy = add nsw i64 %i.yx, 4294967296           ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.za = load i16, ptr %i.yz, align 8, !tbaa !131
  %i.zb = sext i16 %i.za to i64
  %i.zc = mul nsw i64 %i.zb, 5284526080
  %i.zd = add nsw i64 %i.zc, 4294967296           ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.ye, i64 10
  %i.zf = load i16, ptr %i.ze, align 2, !tbaa !131
  %i.zg = sext i16 %i.zf to i64
  %i.zh = mul nsw i64 %i.zg, 5284526080
  %i.zi = add nsw i64 %i.zh, 4294967296           ; 3 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.ye, i64 12
  %i.zk = load i16, ptr %i.zj, align 4, !tbaa !131
  %i.zl = sext i16 %i.zk to i64
  %i.zm = mul nsw i64 %i.zl, 5284526080
  %i.zn = add nsw i64 %i.zm, 4294967296           ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ye, i64 14
  %i.zp = load i16, ptr %i.zo, align 2, !tbaa !131
  %i.zq = sext i16 %i.zp to i64
  %i.zr = mul nsw i64 %i.zq, 5284526080
  %i.zs = add nsw i64 %i.zr, 4294967296           ; 2 uses
  %i.zt = trunc i64 %i.yj to i8
  %i.zu = mul nuw nsw i64 %indvars.iv.i.i.i.i.i, 11
  %i.zv = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.zu ; 11 uses
  store i8 %i.zt, ptr %i.zv, align 1, !tbaa !76
  %i.zw = lshr i64 %i.yi, 41
  %i.zx = trunc i64 %i.zw to i8
  %i.zy = and i8 %i.zx, 7
  %sh.diff.i.i.i.i = lshr i64 %i.yo, 30
  %tr.sh.diff.i.i.i.i = trunc i64 %sh.diff.i.i.i.i to i8
  %i.zz = and i8 %tr.sh.diff.i.i.i.i, -8
  %i.aaa = or disjoint i8 %i.zz, %i.zy
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zv, i64 1
  store i8 %i.aaa, ptr %i.aab, align 1, !tbaa !76
  %i.aac = lshr i64 %i.yo, 38
  %i.aad = trunc i64 %i.aac to i8
  %i.aae = and i8 %i.aad, 63
  %sh.diff5.i.i.i.i = lshr i64 %i.yt, 27
  %i.aaf = trunc i64 %sh.diff5.i.i.i.i to i8
  %14 = and i8 %i.aaf, -64
  %i.aag = or disjoint i8 %14, %i.aae
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zv, i64 2
  store i8 %i.aag, ptr %i.aah, align 1, !tbaa !76
  %i.aai = lshr i64 %i.yt, 35
  %i.aaj = trunc i64 %i.aai to i8
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zv, i64 3
  store i8 %i.aaj, ptr %i.aak, align 1, !tbaa !76
  %15 = lshr i64 %i.yt, 43
  %i.aal = trunc i64 %15 to i8
  %i.aam = and i8 %i.aal, 1
  %sh.diff5.i.i.i.i.a = lshr i64 %i.yy, 32
  %tr.sh.diff6.i.i.i.i = trunc i64 %sh.diff5.i.i.i.i.a to i8
  %i.aan = and i8 %tr.sh.diff6.i.i.i.i, -2
  %i.aao = or disjoint i8 %i.aan, %i.aam
  %i.aap = getelementptr inbounds nuw i8, ptr %i.zv, i64 4
  store i8 %i.aao, ptr %i.aap, align 1, !tbaa !76
  %i.aaq = lshr i64 %i.yy, 40
  %i.aar = trunc i64 %i.aaq to i8
  %i.aas = and i8 %i.aar, 15
  %sh.diff7.i.i.i.i = lshr i64 %i.zd, 29
  %tr.sh.diff8.i.i.i.i = trunc i64 %sh.diff7.i.i.i.i to i8
  %i.aat = and i8 %tr.sh.diff8.i.i.i.i, -16
  %i.aau = or disjoint i8 %i.aat, %i.aas
  %i.aav = getelementptr inbounds nuw i8, ptr %i.zv, i64 5
  store i8 %i.aau, ptr %i.aav, align 1, !tbaa !76
  %i.aaw = lshr i64 %i.zd, 37
  %i.aax = trunc i64 %i.aaw to i8
  %i.aay = and i8 %i.aax, 127
  %sh.diff11.i.i.i.i = lshr i64 %i.zi, 26
  %i.aaz = trunc i64 %sh.diff11.i.i.i.i to i8
  %16 = and i8 %i.aaz, -128
  %i.aba = or disjoint i8 %16, %i.aay
  %i.abb = getelementptr inbounds nuw i8, ptr %i.zv, i64 6
  store i8 %i.aba, ptr %i.abb, align 1, !tbaa !76
  %i.abc = lshr i64 %i.zi, 34
  %i.abd = trunc i64 %i.abc to i8
  %i.abe = getelementptr inbounds nuw i8, ptr %i.zv, i64 7
  store i8 %i.abd, ptr %i.abe, align 1, !tbaa !76
  %17 = lshr i64 %i.zi, 42
  %i.abf = trunc i64 %17 to i8
  %i.abg = and i8 %i.abf, 3
  %sh.diff9.i.i.i.i = lshr i64 %i.zn, 31
  %tr.sh.diff10.i.i.i.i = trunc i64 %sh.diff9.i.i.i.i to i8
  %i.abh = and i8 %tr.sh.diff10.i.i.i.i, -4
  %i.abi = or disjoint i8 %i.abh, %i.abg
  %i.abj = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  store i8 %i.abi, ptr %i.abj, align 1, !tbaa !76
  %i.abk = lshr i64 %i.zn, 39
  %i.abl = trunc i64 %i.abk to i8
  %i.abm = and i8 %i.abl, 31
  %sh.diff11.i.i.i.i.a = lshr i64 %i.zs, 28
  %tr.sh.diff12.i.i.i.i = trunc i64 %sh.diff11.i.i.i.i.a to i8
  %i.abn = and i8 %tr.sh.diff12.i.i.i.i, -32
  %i.abo = or disjoint i8 %i.abn, %i.abm
  %i.abp = getelementptr inbounds nuw i8, ptr %i.zv, i64 9
  store i8 %i.abo, ptr %i.abp, align 1, !tbaa !76
  %i.abq = lshr i64 %i.zs, 36
  %i.abr = trunc i64 %i.abq to i8
  %i.abs = getelementptr inbounds nuw i8, ptr %i.zv, i64 10
  store i8 %i.abr, ptr %i.abs, align 1, !tbaa !76
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, 32
  br i1 %exitcond.not.i.i.i.i.i, label %mlkem1024_poly_compress_du.exit.i.i, label %mlk_poly_compress_d11_native.exit.i.i.i.i, !llvm.loop !2932

mlkem1024_poly_compress_du.exit.i.i:              ; preds = %mlk_poly_compress_d11_native.exit.i.i.i.i, %mlk_poly_compress_d11_native.exit.thread.i.i.i.i
  %indvars.iv.next.i.i70 = add nuw nsw i64 %indvars.iv.i.i69, 1 ; 2 uses
  %exitcond.not.i.i71 = icmp eq i64 %indvars.iv.next.i.i70, 4
  br i1 %exitcond.not.i.i71, label %mlkem1024_polyvec_compress_du.exit.i, label %mlkem_poly_reduce.exit, !llvm.loop !2933

mlkem1024_polyvec_compress_du.exit.i:             ; preds = %mlkem1024_poly_compress_du.exit.i.i
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.abu = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.abv = and i32 %i.abu, 32
  %.not.i.i.i.i = icmp eq i32 %i.abv, 0
  br i1 %.not.i.i.i.i, label %mlk_poly_compress_d5_native.exit.i.i.i, label %mlk_poly_compress_d5_native.exit.thread.i.i.i

mlk_poly_compress_d5_native.exit.thread.i.i.i:    ; preds = %mlkem1024_polyvec_compress_du.exit.i
  call void @mlkem_poly_compress_d5_avx2_asm(ptr noundef nonnull %i.abt, ptr noundef nonnull %10, ptr noundef nonnull @mlkem_compress_d5_data) #46
  br label %mlk_pack_ciphertext1024.exit

mlk_poly_compress_d5_native.exit.i.i.i:           ; preds = %mlkem1024_polyvec_compress_du.exit.i, %mlk_poly_compress_d5_native.exit.i.i.i
  %indvars.iv.i.i.i.i72 = phi i64 [ %indvars.iv.next.i.i.i.i74, %mlk_poly_compress_d5_native.exit.i.i.i ], [ 0, %mlkem1024_polyvec_compress_du.exit.i ] ; 3 uses
  %.idx.i.i.i73 = shl nuw nsw i64 %indvars.iv.i.i.i.i72, 4
  %i.abw = getelementptr inbounds nuw i8, ptr %10, i64 %.idx.i.i.i73 ; 8 uses
  %i.abx = load i16, ptr %i.abw, align 16, !tbaa !131
  %i.aby = sext i16 %i.abx to i32
  %i.abz = mul i32 %i.aby, 1290176
  %i.aca = add i32 %i.abz, 67108864
  %i.acb = lshr i32 %i.aca, 27
  %i.acc = trunc nuw nsw i32 %i.acb to i8
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abw, i64 2
  %i.ace = load i16, ptr %i.acd, align 2, !tbaa !131
  %i.acf = sext i16 %i.ace to i32
  %i.acg = mul i32 %i.acf, 1290176
  %i.ach = add i32 %i.acg, 67108864
  %i.aci = lshr i32 %i.ach, 27
  %i.acj = trunc nuw nsw i32 %i.aci to i8         ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abw, i64 4
  %i.acl = load i16, ptr %i.ack, align 4, !tbaa !131
  %i.acm = sext i16 %i.acl to i32
  %i.acn = mul i32 %i.acm, 1290176
  %i.aco = add i32 %i.acn, 67108864
  %i.acp = getelementptr inbounds nuw i8, ptr %i.abw, i64 6
  %i.acq = load i16, ptr %i.acp, align 2, !tbaa !131
  %i.acr = sext i16 %i.acq to i32
  %i.acs = mul i32 %i.acr, 1290176
  %i.act = add i32 %i.acs, 67108864
  %i.acu = lshr i32 %i.act, 27
  %i.acv = trunc nuw nsw i32 %i.acu to i8         ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  %i.acx = load i16, ptr %i.acw, align 8, !tbaa !131
  %i.acy = sext i16 %i.acx to i32
  %i.acz = mul i32 %i.acy, 1290176
  %i.ada = add i32 %i.acz, 67108864
  %i.adb = lshr i32 %i.ada, 27
  %i.adc = trunc nuw nsw i32 %i.adb to i8         ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.abw, i64 10
  %i.ade = load i16, ptr %i.add, align 2, !tbaa !131
  %i.adf = sext i16 %i.ade to i32
  %i.adg = mul i32 %i.adf, 1290176
  %i.adh = add i32 %i.adg, 67108864
  %i.adi = getelementptr inbounds nuw i8, ptr %i.abw, i64 12
  %i.adj = load i16, ptr %i.adi, align 4, !tbaa !131
  %i.adk = sext i16 %i.adj to i32
  %i.adl = mul i32 %i.adk, 1290176
  %i.adm = add i32 %i.adl, 67108864
  %i.adn = lshr i32 %i.adm, 27
  %i.ado = trunc nuw nsw i32 %i.adn to i8         ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.abw, i64 14
  %i.adq = load i16, ptr %i.adp, align 2, !tbaa !131
  %i.adr = sext i16 %i.adq to i32
  %i.ads = mul i32 %i.adr, 1290176
  %i.adt = add i32 %i.ads, 67108864
  %.tr.i.i.i.i = shl i8 %i.acj, 5
  %.narrow.i.i.i.i = or disjoint i8 %.tr.i.i.i.i, %i.acc
  %i.adu = mul nuw nsw i64 %indvars.iv.i.i.i.i72, 5
  %i.adv = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.adu ; 5 uses
  store i8 %.narrow.i.i.i.i, ptr %i.adv, align 1, !tbaa !76
  %i.adw = lshr i8 %i.acj, 3
  %sh.diff.i.i.i4.i = lshr i32 %i.aco, 25
  %tr.sh.diff.i.i.i5.i = trunc nuw nsw i32 %sh.diff.i.i.i4.i to i8
  %i.adx = and i8 %tr.sh.diff.i.i.i5.i, 124
  %i.ady = or disjoint i8 %i.adw, %i.adx
  %i.adz = shl i8 %i.acv, 7
  %i.aea = or disjoint i8 %i.ady, %i.adz
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adv, i64 1
  store i8 %i.aea, ptr %i.aeb, align 1, !tbaa !76
  %i.aec = lshr i8 %i.acv, 1
  %.tr18.i.i.i.i = shl i8 %i.adc, 4
  %.narrow19.i.i.i.i = or disjoint i8 %.tr18.i.i.i.i, %i.aec
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adv, i64 2
  store i8 %.narrow19.i.i.i.i, ptr %i.aed, align 1, !tbaa !76
  %i.aee = lshr i8 %i.adc, 4
  %sh.diff26.i.i.i.i = lshr i32 %i.adh, 26
  %tr.sh.diff27.i.i.i.i = trunc nuw nsw i32 %sh.diff26.i.i.i.i to i8
  %i.aef = and i8 %tr.sh.diff27.i.i.i.i, 62
  %i.aeg = or disjoint i8 %i.aee, %i.aef
  %i.aeh = shl i8 %i.ado, 6
  %i.aei = or disjoint i8 %i.aeg, %i.aeh
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adv, i64 3
  store i8 %i.aei, ptr %i.aej, align 1, !tbaa !76
  %i.aek = lshr i8 %i.ado, 2
  %sh.diff28.i.i.i.i = lshr i32 %i.adt, 24
  %tr.sh.diff29.i.i.i.i = trunc nuw i32 %sh.diff28.i.i.i.i to i8
  %.tr20.i.i.i.i = and i8 %tr.sh.diff29.i.i.i.i, -8
  %.narrow21.i.i.i.i = or disjoint i8 %.tr20.i.i.i.i, %i.aek
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adv, i64 4
  store i8 %.narrow21.i.i.i.i, ptr %i.ael, align 1, !tbaa !76
  %indvars.iv.next.i.i.i.i74 = add nuw nsw i64 %indvars.iv.i.i.i.i72, 1 ; 2 uses
  %exitcond.not.i.i.i.i75 = icmp eq i64 %indvars.iv.next.i.i.i.i74, 32
  br i1 %exitcond.not.i.i.i.i75, label %mlk_pack_ciphertext1024.exit, label %mlk_poly_compress_d5_native.exit.i.i.i, !llvm.loop !2934

mlk_pack_ciphertext1024.exit:                     ; preds = %mlk_poly_compress_d5_native.exit.i.i.i, %mlk_poly_compress_d5_native.exit.thread.i.i.i
  call void @OPENSSL_cleanse(ptr noundef nonnull %13, i64 noundef 1024) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %12, i64 noundef 512) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %11, i64 noundef 512) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %10, i64 noundef 512) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %9, i64 noundef 2048) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %8, i64 noundef 2048) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %7, i64 noundef 2048) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %6, i64 noundef 2048) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %5, i64 noundef 8192) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mlkem1024_polyvec_frombytes(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73 ; 3 uses
  %i.b = and i32 %i.a, 32
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %vector.memcheck, label %mlk_poly_frombytes_native.exit.thread.i

vector.memcheck:                                  ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 512
  %scevgep9 = getelementptr i8, ptr %1, i64 384
  %bound0 = icmp ult ptr %0, %scevgep9
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %mlk_poly_frombytes_native.exit.i, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.c = mul nuw nsw i64 %index, 3
  %i.d = mul nuw i64 %index, 3
  %i.e = mul nuw i64 %index, 3
  %i.f = mul nuw i64 %index, 3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %i.n = load i8, ptr %i.g, align 1, !tbaa !76, !alias.scope !2955
  %i.o = load i8, ptr %i.i, align 1, !tbaa !76, !alias.scope !2955
  %i.p = load i8, ptr %i.k, align 1, !tbaa !76, !alias.scope !2955
  %i.q = load i8, ptr %i.m, align 1, !tbaa !76, !alias.scope !2955
  %i.r = insertelement <4 x i8> poison, i8 %i.n, i64 0
  %i.s = insertelement <4 x i8> %i.r, i8 %i.o, i64 1
  %i.t = insertelement <4 x i8> %i.s, i8 %i.p, i64 2
  %i.u = insertelement <4 x i8> %i.t, i8 %i.q, i64 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.z = load i8, ptr %i.v, align 1, !tbaa !76, !alias.scope !2955
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !76, !alias.scope !2955
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !76, !alias.scope !2955
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !76, !alias.scope !2955
  %i.ad = insertelement <4 x i8> poison, i8 %i.z, i64 0
  %i.ae = insertelement <4 x i8> %i.ad, i8 %i.aa, i64 1
  %i.af = insertelement <4 x i8> %i.ae, i8 %i.ab, i64 2
  %i.ag = insertelement <4 x i8> %i.af, i8 %i.ac, i64 3 ; 2 uses
end_hunk_2
