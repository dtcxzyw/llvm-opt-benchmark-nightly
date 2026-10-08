Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/xxhash?download=true
inline.NumInlined: 910
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 57
begin_hunk_0_@ROCKSDB_XXH3_128bits_withSeed:bb.a
bb.l:                                             ; preds = %bb.k
  %i.dy = icmp samesign ugt i64 %1, 96
  br i1 %i.dy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -64
  %.val67 = load i64, ptr %i.dz, align 1, !tbaa !27 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val66 = load i64, ptr %i.ec, align 1, !tbaa !27 ; 2 uses
  %i.ed = add i64 %2, 4554437623014685352
  %i.ee = xor i64 %.val67, %i.ed
  %i.ef = sub i64 2111919702937427193, %2
  %i.eg = xor i64 %.val66, %i.ef
  %i.eh = zext i64 %i.ee to i128
  %i.ei = zext i64 %i.eg to i128
  %i.ej = mul nuw i128 %i.ei, %i.eh               ; 2 uses
  %i.ek = lshr i128 %i.ej, 64
  %i.el = xor i128 %i.ek, %i.ej
  %i.em = trunc i128 %i.el to i64
  %i.en = add i64 %i.dv, %i.em
  %.val63 = load i64, ptr %i.eb, align 1, !tbaa !27 ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.ea, i64 -56
  %.val62 = load i64, ptr %i.eo, align 1, !tbaa !27 ; 2 uses
  %i.ep = add i64 %.val62, %.val63
  %i.eq = xor i64 %i.en, %i.ep
  %i.er = add i64 %2, 3556072174620004746
  %i.es = xor i64 %.val63, %i.er
  %i.et = sub i64 7238261902898274248, %2
  %i.eu = xor i64 %.val62, %i.et
  %i.ev = zext i64 %i.es to i128
  %i.ew = zext i64 %i.eu to i128
  %i.ex = mul nuw i128 %i.ew, %i.ev               ; 2 uses
  %i.ey = lshr i128 %i.ex, 64
  %i.ez = xor i128 %i.ey, %i.ex
  %i.fa = trunc i128 %i.ez to i64
  %i.fb = add i64 %.val66, %.val67
  %i.fc = xor i64 %i.fb, %i.fa
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.015.0.i = phi i64 [ %i.eq, %bb.m ], [ %i.dv, %bb.l ]
  %.sroa.13.0.i = phi i64 [ %i.fc, %bb.m ], [ 0, %bb.l ]
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -48
  %.val55 = load i64, ptr %i.fd, align 1, !tbaa !27 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val54 = load i64, ptr %i.fg, align 1, !tbaa !27 ; 2 uses
  %i.fh = add i64 %2, -3818837453329782724
  %i.fi = xor i64 %.val55, %i.fh
  %i.fj = sub i64 -6688317018830679928, %2
  %i.fk = xor i64 %.val54, %i.fj
  %i.fl = zext i64 %i.fi to i128
  %i.fm = zext i64 %i.fk to i128
  %i.fn = mul nuw i128 %i.fm, %i.fl               ; 2 uses
  %i.fo = lshr i128 %i.fn, 64
  %i.fp = xor i128 %i.fo, %i.fn
  %i.fq = trunc i128 %i.fp to i64
  %i.fr = add i64 %.sroa.015.0.i, %i.fq
  %.val51 = load i64, ptr %i.ff, align 1, !tbaa !27 ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fe, i64 -40
  %.val50 = load i64, ptr %i.fs, align 1, !tbaa !27 ; 2 uses
  %i.ft = add i64 %.val50, %.val51
  %i.fu = xor i64 %i.fr, %i.ft
  %i.fv = add i64 %2, 5690594596133299313
  %i.fw = xor i64 %.val51, %i.fv
  %i.fx = sub i64 -2833645246901970632, %2
  %i.fy = xor i64 %.val50, %i.fx
  %i.fz = zext i64 %i.fw to i128
  %i.ga = zext i64 %i.fy to i128
  %i.gb = mul nuw i128 %i.ga, %i.fz               ; 2 uses
  %i.gc = lshr i128 %i.gb, 64
  %i.gd = xor i128 %i.gc, %i.gb
  %i.ge = trunc i128 %i.gd to i64
  %i.gf = add i64 %.sroa.13.0.i, %i.ge
  %i.gg = add i64 %.val54, %.val55
  %i.gh = xor i64 %i.gf, %i.gg
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.sroa.015.1.i = phi i64 [ %i.fu, %bb.n ], [ %i.dv, %bb.k ]
  %.sroa.13.1.i = phi i64 [ %i.gh, %bb.n ], [ 0, %bb.k ]
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -32
  %.val43 = load i64, ptr %i.gi, align 1, !tbaa !27 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val42 = load i64, ptr %i.gl, align 1, !tbaa !27 ; 2 uses
  %i.gm = add i64 %2, 8711581037947681227
  %i.gn = xor i64 %.val43, %i.gm
  %i.go = sub i64 2410270004345854594, %2
  %i.gp = xor i64 %.val42, %i.go
  %i.gq = zext i64 %i.gn to i128
  %i.gr = zext i64 %i.gp to i128
  %i.gs = mul nuw i128 %i.gr, %i.gq               ; 2 uses
  %i.gt = lshr i128 %i.gs, 64
  %i.gu = xor i128 %i.gt, %i.gs
  %i.gv = trunc i128 %i.gu to i64
  %i.gw = add i64 %.sroa.015.1.i, %i.gv
  %.val39 = load i64, ptr %i.gk, align 1, !tbaa !27 ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.gj, i64 -24
  %.val38 = load i64, ptr %i.gx, align 1, !tbaa !27 ; 2 uses
  %i.gy = add i64 %.val38, %.val39
  %i.gz = xor i64 %i.gw, %i.gy
  %i.ha = add i64 %2, -8204357891075471176
  %i.hb = xor i64 %.val39, %i.ha
  %i.hc = sub i64 5487137525590930912, %2
  %i.hd = xor i64 %.val38, %i.hc
  %i.he = zext i64 %i.hb to i128
  %i.hf = zext i64 %i.hd to i128
  %i.hg = mul nuw i128 %i.hf, %i.he               ; 2 uses
  %i.hh = lshr i128 %i.hg, 64
  %i.hi = xor i128 %i.hh, %i.hg
  %i.hj = trunc i128 %i.hi to i64
  %i.hk = add i64 %.sroa.13.1.i, %i.hj
  %i.hl = add i64 %.val42, %.val43
  %i.hm = xor i64 %i.hk, %i.hl
  br label %_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit

_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit:         ; preds = %bb.j, %bb.o
  %.sroa.015.2.i = phi i64 [ %i.gz, %bb.o ], [ %i.dv, %bb.j ]
  %.sroa.13.2.i = phi i64 [ %i.hm, %bb.o ], [ 0, %bb.j ]
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 -16
  %.val31 = load i64, ptr %0, align 1, !tbaa !27  ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val30 = load i64, ptr %i.hp, align 1, !tbaa !27 ; 2 uses
  %i.hq = add i64 %2, -4734510112055689544
  %i.hr = xor i64 %.val31, %i.hq
  %i.hs = sub i64 2066345149520216444, %2
  %i.ht = xor i64 %.val30, %i.hs
  %i.hu = zext i64 %i.hr to i128
  %i.hv = zext i64 %i.ht to i128
  %i.hw = mul nuw i128 %i.hv, %i.hu               ; 2 uses
  %i.hx = lshr i128 %i.hw, 64
  %i.hy = xor i128 %i.hx, %i.hw
  %i.hz = trunc i128 %i.hy to i64
  %i.ia = add i64 %.sroa.015.2.i, %i.hz
  %.val27 = load i64, ptr %i.ho, align 1, !tbaa !27 ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %i.hn, i64 -8
  %.val26 = load i64, ptr %i.ib, align 1, !tbaa !27 ; 2 uses
  %i.ic = add i64 %.val26, %.val27
  %i.id = xor i64 %i.ia, %i.ic                    ; 2 uses
  %i.ie = add i64 %2, -2623469361688619810
  %i.if = xor i64 %.val27, %i.ie
  %i.ig = sub i64 2262974939099578482, %2
  %i.ih = xor i64 %.val26, %i.ig
  %i.ii = zext i64 %i.if to i128
  %i.ij = zext i64 %i.ih to i128
  %i.ik = mul nuw i128 %i.ij, %i.ii               ; 2 uses
  %i.il = lshr i128 %i.ik, 64
  %i.im = xor i128 %i.il, %i.ik
  %i.in = trunc i128 %i.im to i64
  %i.io = add i64 %.sroa.13.2.i, %i.in
  %i.ip = add i64 %.val30, %.val31
  %i.iq = xor i64 %i.io, %i.ip                    ; 2 uses
  %i.ir = add i64 %i.iq, %i.id                    ; 2 uses
  %i.is = mul i64 %i.id, -7046029288634856825
  %i.it = mul i64 %i.iq, -8796714831421723037
  %i.iu = sub i64 %1, %2
  %i.iv = mul i64 %i.iu, -4417276706812531889
  %i.iw = add i64 %i.is, %i.iv
  %i.ix = add i64 %i.iw, %i.it                    ; 2 uses
  %i.iy = lshr i64 %i.ir, 37
  %i.iz = xor i64 %i.iy, %i.ir
  %i.ja = mul i64 %i.iz, 1609587791953885689      ; 2 uses
  %i.jb = lshr i64 %i.ja, 32
  %i.jc = xor i64 %i.jb, %i.ja
  %i.jd = lshr i64 %i.ix, 37
  %i.je = xor i64 %i.jd, %i.ix
  %i.jf = mul i64 %i.je, 1609587791953885689      ; 2 uses
  %i.jg = lshr i64 %i.jf, 32
  %i.jh = xor i64 %i.jg, %i.jf
  %i.ji = sub i64 0, %i.jh
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.jc, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %i.ji, 1
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

bb.p:                                             ; preds = %bb.i
  %i.jj = icmp ult i64 %1, 241
  br i1 %i.jj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.jk = tail call fastcc { i64, i64 } @_ZL22XXH3_len_129to240_128bPKhmS0_mm(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @_ZL12XXH3_kSecret, i64 noundef %2) #34
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

bb.r:                                             ; preds = %bb.p
  %i.jl = tail call fastcc { i64, i64 } @_ZL27XXH3_hashLong_128b_withSeedPKvmmS0_m(ptr noundef %0, i64 noundef %1, i64 noundef %2) #32
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit: ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit, %bb.q, %bb.r
  %.pn.i = phi { i64, i64 } [ %i.jl, %bb.r ], [ %.fca.1.insert.i, %_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit ], [ %i.jk, %bb.q ], [ %.fca.1.insert.i3, %bb.c ], [ %.fca.1.insert.i5, %bb.e ], [ %vec2struct8790, %bb.g ], [ %vec2struct93, %bb.h ]
  ret { i64, i64 } %.pn.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @_ZL27XXH3_hashLong_128b_withSeedPKvmmS0_m(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #15 {
bb.a:
  %i.a = alloca [192 x i8], align 64              ; 32 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %1, -1                           ; 4 uses
  %i.d = lshr i64 %i.c, 10                        ; 2 uses
  %.not67 = icmp eq i64 %i.d, 0
  br i1 %.not67, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.b, %.lr.ph58
  %.0.i.i11.i56 = phi i64 [ %i.ft, %.lr.ph58 ], [ 0, %bb.b ] ; 2 uses
  %.sroa.021.055 = phi <8 x i64> [ %i.fs, %.lr.ph58 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %bb.b ]
  %i.e = shl nuw i64 %.0.i.i11.i56, 10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 31 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr nonnull %i.g, i32 0, i32 3, i32 1)
  %i.h = load <8 x i64>, ptr %i.f, align 1, !tbaa !21 ; 2 uses
  %i.i = xor <8 x i64> %i.h, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912> ; 2 uses
  %i.j = lshr <8 x i64> %i.i, splat (i64 32)
  %i.k = and <8 x i64> %i.i, splat (i64 4294967295)
  %i.l = mul nuw <8 x i64> %i.k, %i.j
  %i.m = shufflevector <8 x i64> %i.h, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.n = add <8 x i64> %.sroa.021.055, %i.m
  %i.o = add <8 x i64> %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.q, i32 0, i32 3, i32 1)
  %i.r = load <8 x i64>, ptr %i.p, align 1, !tbaa !21 ; 2 uses
  %i.s = xor <8 x i64> %i.r, <i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724> ; 2 uses
  %i.t = lshr <8 x i64> %i.s, splat (i64 32)
  %i.u = and <8 x i64> %i.s, splat (i64 4294967295)
  %i.v = mul nuw <8 x i64> %i.u, %i.t
  %i.w = shufflevector <8 x i64> %i.r, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.x = add <8 x i64> %i.o, %i.w
  %i.y = add <8 x i64> %i.x, %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aa, i32 0, i32 3, i32 1)
  %i.ab = load <8 x i64>, ptr %i.z, align 1, !tbaa !21 ; 2 uses
  %i.ac = xor <8 x i64> %i.ab, <i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928> ; 2 uses
  %i.ad = lshr <8 x i64> %i.ac, splat (i64 32)
  %i.ae = and <8 x i64> %i.ac, splat (i64 4294967295)
  %i.af = mul nuw <8 x i64> %i.ae, %i.ad
  %i.ag = shufflevector <8 x i64> %i.ab, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ah = add <8 x i64> %i.y, %i.ag
  %i.ai = add <8 x i64> %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ak, i32 0, i32 3, i32 1)
  %i.al = load <8 x i64>, ptr %i.aj, align 1, !tbaa !21 ; 2 uses
  %i.am = xor <8 x i64> %i.al, <i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313> ; 2 uses
  %i.an = lshr <8 x i64> %i.am, splat (i64 32)
  %i.ao = and <8 x i64> %i.am, splat (i64 4294967295)
  %i.ap = mul nuw <8 x i64> %i.ao, %i.an
  %i.aq = shufflevector <8 x i64> %i.al, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ar = add <8 x i64> %i.ai, %i.aq
  %i.as = add <8 x i64> %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %i.au, i32 0, i32 3, i32 1)
  %i.av = load <8 x i64>, ptr %i.at, align 1, !tbaa !21 ; 2 uses
  %i.aw = xor <8 x i64> %i.av, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632> ; 2 uses
  %i.ax = lshr <8 x i64> %i.aw, splat (i64 32)
  %i.ay = and <8 x i64> %i.aw, splat (i64 4294967295)
  %i.az = mul nuw <8 x i64> %i.ay, %i.ax
  %i.ba = shufflevector <8 x i64> %i.av, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.bb = add <8 x i64> %i.as, %i.ba
  %i.bc = add <8 x i64> %i.bb, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bd, i32 0, i32 3, i32 1)
  %i.be = load <8 x i64>, ptr %i.g, align 1, !tbaa !21 ; 2 uses
  %i.bf = xor <8 x i64> %i.be, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352> ; 2 uses
  %i.bg = lshr <8 x i64> %i.bf, splat (i64 32)
  %i.bh = and <8 x i64> %i.bf, splat (i64 4294967295)
  %i.bi = mul nuw <8 x i64> %i.bh, %i.bg
  %i.bj = shufflevector <8 x i64> %i.be, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.bk = add <8 x i64> %i.bc, %i.bj
  %i.bl = add <8 x i64> %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 384
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bn, i32 0, i32 3, i32 1)
  %i.bo = load <8 x i64>, ptr %i.bm, align 1, !tbaa !21 ; 2 uses
  %i.bp = xor <8 x i64> %i.bo, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193> ; 2 uses
  %i.bq = lshr <8 x i64> %i.bp, splat (i64 32)
  %i.br = and <8 x i64> %i.bp, splat (i64 4294967295)
  %i.bs = mul nuw <8 x i64> %i.br, %i.bq
  %i.bt = shufflevector <8 x i64> %i.bo, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.bu = add <8 x i64> %i.bl, %i.bt
  %i.bv = add <8 x i64> %i.bu, %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bx, i32 0, i32 3, i32 1)
  %i.by = load <8 x i64>, ptr %i.bw, align 1, !tbaa !21 ; 2 uses
  %i.bz = xor <8 x i64> %i.by, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746> ; 2 uses
  %i.ca = lshr <8 x i64> %i.bz, splat (i64 32)
  %i.cb = and <8 x i64> %i.bz, splat (i64 4294967295)
  %i.cc = mul nuw <8 x i64> %i.cb, %i.ca
  %i.cd = shufflevector <8 x i64> %i.by, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ce = add <8 x i64> %i.bv, %i.cd
  %i.cf = add <8 x i64> %i.ce, %i.cc
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 512
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 832
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ch, i32 0, i32 3, i32 1)
  %i.ci = load <8 x i64>, ptr %i.cg, align 1, !tbaa !21 ; 2 uses
  %i.cj = xor <8 x i64> %i.ci, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248> ; 2 uses
  %i.ck = lshr <8 x i64> %i.cj, splat (i64 32)
  %i.cl = and <8 x i64> %i.cj, splat (i64 4294967295)
  %i.cm = mul nuw <8 x i64> %i.cl, %i.ck
  %i.cn = shufflevector <8 x i64> %i.ci, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.co = add <8 x i64> %i.cf, %i.cn
  %i.cp = add <8 x i64> %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 576
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 896
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cr, i32 0, i32 3, i32 1)
  %i.cs = load <8 x i64>, ptr %i.cq, align 1, !tbaa !21 ; 2 uses
  %i.ct = xor <8 x i64> %i.cs, <i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654> ; 2 uses
  %i.cu = lshr <8 x i64> %i.ct, splat (i64 32)
  %i.cv = and <8 x i64> %i.ct, splat (i64 4294967295)
  %i.cw = mul nuw <8 x i64> %i.cv, %i.cu
  %i.cx = shufflevector <8 x i64> %i.cs, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.cy = add <8 x i64> %i.cp, %i.cx
  %i.cz = add <8 x i64> %i.cy, %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 640
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 960
  tail call void @llvm.prefetch.p0(ptr nonnull %i.db, i32 0, i32 3, i32 1)
  %i.dc = load <8 x i64>, ptr %i.da, align 1, !tbaa !21 ; 2 uses
  %i.dd = xor <8 x i64> %i.dc, <i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907> ; 2 uses
  %i.de = lshr <8 x i64> %i.dd, splat (i64 32)
  %i.df = and <8 x i64> %i.dd, splat (i64 4294967295)
  %i.dg = mul nuw <8 x i64> %i.df, %i.de
  %i.dh = shufflevector <8 x i64> %i.dc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.di = add <8 x i64> %i.cz, %i.dh
  %i.dj = add <8 x i64> %i.di, %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 704
  %i.dl = getelementptr inbounds nuw i8, ptr %i.f, i64 1024
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dl, i32 0, i32 3, i32 1)
  %i.dm = load <8 x i64>, ptr %i.dk, align 1, !tbaa !21 ; 2 uses
  %i.dn = xor <8 x i64> %i.dm, <i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047> ; 2 uses
  %i.do = lshr <8 x i64> %i.dn, splat (i64 32)
  %i.dp = and <8 x i64> %i.dn, splat (i64 4294967295)
  %i.dq = mul nuw <8 x i64> %i.dp, %i.do
  %i.dr = shufflevector <8 x i64> %i.dm, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ds = add <8 x i64> %i.dj, %i.dr
  %i.dt = add <8 x i64> %i.ds, %i.dq
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 768
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 1088
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dv, i32 0, i32 3, i32 1)
  %i.dw = load <8 x i64>, ptr %i.du, align 1, !tbaa !21 ; 2 uses
  %i.dx = xor <8 x i64> %i.dw, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245> ; 2 uses
  %i.dy = lshr <8 x i64> %i.dx, splat (i64 32)
  %i.dz = and <8 x i64> %i.dx, splat (i64 4294967295)
  %i.ea = mul nuw <8 x i64> %i.dz, %i.dy
  %i.eb = shufflevector <8 x i64> %i.dw, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ec = add <8 x i64> %i.dt, %i.eb
  %i.ed = add <8 x i64> %i.ec, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 832
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 1152
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ef, i32 0, i32 3, i32 1)
  %i.eg = load <8 x i64>, ptr %i.ee, align 1, !tbaa !21 ; 2 uses
  %i.eh = xor <8 x i64> %i.eg, <i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509> ; 2 uses
  %i.ei = lshr <8 x i64> %i.eh, splat (i64 32)
  %i.ej = and <8 x i64> %i.eh, splat (i64 4294967295)
  %i.ek = mul nuw <8 x i64> %i.ej, %i.ei
  %i.el = shufflevector <8 x i64> %i.eg, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.em = add <8 x i64> %i.ed, %i.el
  %i.en = add <8 x i64> %i.em, %i.ek
  %i.eo = getelementptr inbounds nuw i8, ptr %i.f, i64 896
  %i.ep = getelementptr inbounds nuw i8, ptr %i.f, i64 1216
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ep, i32 0, i32 3, i32 1)
  %i.eq = load <8 x i64>, ptr %i.eo, align 1, !tbaa !21 ; 2 uses
  %i.er = xor <8 x i64> %i.eq, <i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737> ; 2 uses
  %i.es = lshr <8 x i64> %i.er, splat (i64 32)
  %i.et = and <8 x i64> %i.er, splat (i64 4294967295)
  %i.eu = mul nuw <8 x i64> %i.et, %i.es
  %i.ev = shufflevector <8 x i64> %i.eq, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ew = add <8 x i64> %i.en, %i.ev
  %i.ex = add <8 x i64> %i.ew, %i.eu
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 960
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 1280
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ez, i32 0, i32 3, i32 1)
  %i.fa = load <8 x i64>, ptr %i.ey, align 1, !tbaa !21 ; 2 uses
  %i.fb = xor <8 x i64> %i.fa, <i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253> ; 2 uses
  %i.fc = lshr <8 x i64> %i.fb, splat (i64 32)
  %i.fd = and <8 x i64> %i.fb, splat (i64 4294967295)
  %i.fe = mul nuw <8 x i64> %i.fd, %i.fc
  %i.ff = shufflevector <8 x i64> %i.fa, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fg = add <8 x i64> %i.ex, %i.ff
  %i.fh = add <8 x i64> %i.fg, %i.fe              ; 2 uses
  %i.fi = lshr <8 x i64> %i.fh, splat (i64 47)
  %i.fj = bitcast <8 x i64> %i.fh to <16 x i32>
  %i.fk = bitcast <8 x i64> %i.fi to <16 x i32>
  %i.fl = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> <i32 -2085829142, i32 -1007955148, i32 -6258235, i32 -345828358, i32 1373441303, i32 1239085239, i32 643110611, i32 -1637297111, i32 1488852523, i32 -56539267, i32 -776406897, i32 -835596166, i32 -1891972283, i32 671356565, i32 -889464913, i32 2118142907>, <16 x i32> %i.fj, <16 x i32> %i.fk, i32 150) ; 2 uses
  %i.fm = bitcast <16 x i32> %i.fl to <8 x i64>
  %i.fn = lshr <8 x i64> %i.fm, splat (i64 32)
  %i.fo = bitcast <16 x i32> %i.fl to <8 x i64>
  %i.fp = and <8 x i64> %i.fo, splat (i64 4294967295)
  %i.fq = mul nuw <8 x i64> %i.fp, splat (i64 2654435761)
  %i.fr = mul <8 x i64> %i.fn, splat (i64 -7046029290881679360)
  %i.fs = add <8 x i64> %i.fq, %i.fr              ; 2 uses
  %i.ft = add nuw nsw i64 %.0.i.i11.i56, 1        ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL27XXH3_hashLong_128b_withSeedPKvmmS0_m:bb.a
  %i.pg = add <8 x i64> %i.ox, %i.pf
  %i.ph = add <8 x i64> %i.pg, %i.pe
  %i.pi = getelementptr inbounds nuw i8, ptr %i.lx, i64 576
  %i.pj = getelementptr inbounds nuw i8, ptr %i.lx, i64 896
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pj, i32 0, i32 3, i32 1)
  %i.pk = load <8 x i64>, ptr %i.pi, align 1, !tbaa !21 ; 2 uses
  %i.pl = xor <8 x i64> %i.lj, %i.pk              ; 2 uses
  %i.pm = lshr <8 x i64> %i.pl, splat (i64 32)
  %i.pn = and <8 x i64> %i.pl, splat (i64 4294967295)
  %i.po = mul nuw <8 x i64> %i.pn, %i.pm
  %i.pp = shufflevector <8 x i64> %i.pk, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.pq = add <8 x i64> %i.ph, %i.pp
  %i.pr = add <8 x i64> %i.pq, %i.po
  %i.ps = getelementptr inbounds nuw i8, ptr %i.lx, i64 640
  %i.pt = getelementptr inbounds nuw i8, ptr %i.lx, i64 960
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pt, i32 0, i32 3, i32 1)
  %i.pu = load <8 x i64>, ptr %i.ps, align 1, !tbaa !21 ; 2 uses
  %i.pv = xor <8 x i64> %i.ll, %i.pu              ; 2 uses
  %i.pw = lshr <8 x i64> %i.pv, splat (i64 32)
  %i.px = and <8 x i64> %i.pv, splat (i64 4294967295)
  %i.py = mul nuw <8 x i64> %i.px, %i.pw
  %i.pz = shufflevector <8 x i64> %i.pu, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.qa = add <8 x i64> %i.pr, %i.pz
  %i.qb = add <8 x i64> %i.qa, %i.py
  %i.qc = getelementptr inbounds nuw i8, ptr %i.lx, i64 704
  %i.qd = getelementptr inbounds nuw i8, ptr %i.lx, i64 1024
  tail call void @llvm.prefetch.p0(ptr nonnull %i.qd, i32 0, i32 3, i32 1)
  %i.qe = load <8 x i64>, ptr %i.qc, align 1, !tbaa !21 ; 2 uses
  %i.qf = xor <8 x i64> %i.ln, %i.qe              ; 2 uses
  %i.qg = lshr <8 x i64> %i.qf, splat (i64 32)
  %i.qh = and <8 x i64> %i.qf, splat (i64 4294967295)
  %i.qi = mul nuw <8 x i64> %i.qh, %i.qg
  %i.qj = shufflevector <8 x i64> %i.qe, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.qk = add <8 x i64> %i.qb, %i.qj
  %i.ql = add <8 x i64> %i.qk, %i.qi
  %i.qm = getelementptr inbounds nuw i8, ptr %i.lx, i64 768
  %i.qn = getelementptr inbounds nuw i8, ptr %i.lx, i64 1088
  tail call void @llvm.prefetch.p0(ptr nonnull %i.qn, i32 0, i32 3, i32 1)
  %i.qo = load <8 x i64>, ptr %i.qm, align 1, !tbaa !21 ; 2 uses
  %i.qp = xor <8 x i64> %i.lp, %i.qo              ; 2 uses
  %i.qq = lshr <8 x i64> %i.qp, splat (i64 32)
  %i.qr = and <8 x i64> %i.qp, splat (i64 4294967295)
  %i.qs = mul nuw <8 x i64> %i.qr, %i.qq
  %i.qt = shufflevector <8 x i64> %i.qo, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.qu = add <8 x i64> %i.ql, %i.qt
  %i.qv = add <8 x i64> %i.qu, %i.qs
  %i.qw = getelementptr inbounds nuw i8, ptr %i.lx, i64 832
  %i.qx = getelementptr inbounds nuw i8, ptr %i.lx, i64 1152
  tail call void @llvm.prefetch.p0(ptr nonnull %i.qx, i32 0, i32 3, i32 1)
  %i.qy = load <8 x i64>, ptr %i.qw, align 1, !tbaa !21 ; 2 uses
  %i.qz = xor <8 x i64> %i.lr, %i.qy              ; 2 uses
  %i.ra = lshr <8 x i64> %i.qz, splat (i64 32)
  %i.rb = and <8 x i64> %i.qz, splat (i64 4294967295)
  %i.rc = mul nuw <8 x i64> %i.rb, %i.ra
  %i.rd = shufflevector <8 x i64> %i.qy, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.re = add <8 x i64> %i.qv, %i.rd
  %i.rf = add <8 x i64> %i.re, %i.rc
  %i.rg = getelementptr inbounds nuw i8, ptr %i.lx, i64 896
  %i.rh = getelementptr inbounds nuw i8, ptr %i.lx, i64 1216
  tail call void @llvm.prefetch.p0(ptr nonnull %i.rh, i32 0, i32 3, i32 1)
  %i.ri = load <8 x i64>, ptr %i.rg, align 1, !tbaa !21 ; 2 uses
  %i.rj = xor <8 x i64> %i.lt, %i.ri              ; 2 uses
  %i.rk = lshr <8 x i64> %i.rj, splat (i64 32)
  %i.rl = and <8 x i64> %i.rj, splat (i64 4294967295)
  %i.rm = mul nuw <8 x i64> %i.rl, %i.rk
  %i.rn = shufflevector <8 x i64> %i.ri, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ro = add <8 x i64> %i.rf, %i.rn
  %i.rp = add <8 x i64> %i.ro, %i.rm
  %i.rq = getelementptr inbounds nuw i8, ptr %i.lx, i64 960
  %i.rr = getelementptr inbounds nuw i8, ptr %i.lx, i64 1280
  tail call void @llvm.prefetch.p0(ptr nonnull %i.rr, i32 0, i32 3, i32 1)
  %i.rs = load <8 x i64>, ptr %i.rq, align 1, !tbaa !21 ; 2 uses
  %i.rt = xor <8 x i64> %i.lv, %i.rs              ; 2 uses
  %i.ru = lshr <8 x i64> %i.rt, splat (i64 32)
  %i.rv = and <8 x i64> %i.rt, splat (i64 4294967295)
  %i.rw = mul nuw <8 x i64> %i.rv, %i.ru
  %i.rx = shufflevector <8 x i64> %i.rs, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ry = add <8 x i64> %i.rp, %i.rx
  %i.rz = add <8 x i64> %i.ry, %i.rw              ; 2 uses
  %i.sa = lshr <8 x i64> %i.rz, splat (i64 47)
  %i.sb = bitcast <8 x i64> %i.rz to <16 x i32>
  %i.sc = bitcast <8 x i64> %i.sa to <16 x i32>
  %i.sd = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ko, <16 x i32> %i.sb, <16 x i32> %i.sc, i32 150) ; 2 uses
  %i.se = bitcast <16 x i32> %i.sd to <8 x i64>
  %i.sf = lshr <8 x i64> %i.se, splat (i64 32)
  %i.sg = bitcast <16 x i32> %i.sd to <8 x i64>
  %i.sh = and <8 x i64> %i.sg, splat (i64 4294967295)
  %i.si = mul nuw <8 x i64> %i.sh, splat (i64 2654435761)
  %i.sj = mul <8 x i64> %i.sf, splat (i64 -7046029290881679360)
  %i.sk = add <8 x i64> %i.si, %i.sj              ; 2 uses
  %i.sl = add nuw nsw i64 %.0.i.i.i47, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.sl, %i.kn
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit39.i.i.i, !llvm.loop !4

._crit_edge.loopexit:                             ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit39.i.i.i
  %i.sm = bitcast <8 x i64> %i.lt to i512
  %i.sn = lshr i512 %i.sm, 40
  %i.so = trunc i512 %i.sn to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.val9.i2 = phi i64 [ %i.kr, %bb.c ], [ %i.so, %._crit_edge.loopexit ]
  %.sroa.0.0.lcssa = phi <8 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %bb.c ], [ %i.sk, %._crit_edge.loopexit ] ; 3 uses
  %i.sp = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %i.sp)
  %i.sq = and i64 %i.km, -1024
  %i.sr = lshr i64 %i.km, 6                       ; 3 uses
  %i.ss = and i64 %i.sr, 15
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 %i.sq ; 3 uses
  switch i64 %i.ss, label %.lr.ph51.preheader.new [
    i64 0, label %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.i
    i64 1, label %.lr.ph51.epil.preheader
  ]

.lr.ph51.preheader.new:                           ; preds = %._crit_edge
  %unroll_iter = and i64 %i.sr, 14
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %.lr.ph51, %.lr.ph51.preheader.new
  %.0.i.i.i.i49 = phi i64 [ 0, %.lr.ph51.preheader.new ], [ %i.tx, %.lr.ph51 ] ; 4 uses
  %.sroa.0.248 = phi <8 x i64> [ %.sroa.0.0.lcssa, %.lr.ph51.preheader.new ], [ %i.tw, %.lr.ph51 ]
  %niter = phi i64 [ 0, %.lr.ph51.preheader.new ], [ %niter.next.1, %.lr.ph51 ]
  %i.su = shl nuw nsw i64 %.0.i.i.i.i49, 6
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.su ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.sw, i32 0, i32 3, i32 1)
  %i.sx = shl nuw nsw i64 %.0.i.i.i.i49, 3
  %i.sy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sx
  %i.sz = load <8 x i64>, ptr %i.sv, align 1, !tbaa !21 ; 2 uses
  %i.ta = load <8 x i64>, ptr %i.sy, align 16, !tbaa !21
  %i.tb = xor <8 x i64> %i.ta, %i.sz              ; 2 uses
  %i.tc = lshr <8 x i64> %i.tb, splat (i64 32)
  %i.td = and <8 x i64> %i.tb, splat (i64 4294967295)
  %i.te = mul nuw <8 x i64> %i.td, %i.tc
  %i.tf = shufflevector <8 x i64> %i.sz, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.tg = add <8 x i64> %.sroa.0.248, %i.tf
  %i.th = add <8 x i64> %i.tg, %i.te
  %i.ti = or disjoint i64 %.0.i.i.i.i49, 1        ; 2 uses
  %i.tj = shl nuw nsw i64 %i.ti, 6
  %i.tk = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.tj ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.tl, i32 0, i32 3, i32 1)
  %i.tm = shl nuw nsw i64 %i.ti, 3
  %i.tn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tm
  %i.to = load <8 x i64>, ptr %i.tk, align 1, !tbaa !21 ; 2 uses
  %i.tp = load <8 x i64>, ptr %i.tn, align 8, !tbaa !21
  %i.tq = xor <8 x i64> %i.tp, %i.to              ; 2 uses
  %i.tr = lshr <8 x i64> %i.tq, splat (i64 32)
  %i.ts = and <8 x i64> %i.tq, splat (i64 4294967295)
  %i.tt = mul nuw <8 x i64> %i.ts, %i.tr
  %i.tu = shufflevector <8 x i64> %i.to, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.tv = add <8 x i64> %i.th, %i.tu
  %i.tw = add <8 x i64> %i.tv, %i.tt              ; 3 uses
  %i.tx = add nuw nsw i64 %.0.i.i.i.i49, 2        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.i.loopexit.unr-lcssa, label %.lr.ph51, !llvm.loop !5

_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph51
  %i.ty = and i64 %i.km, 64
  %lcmp.mod.not = icmp eq i64 %i.ty, 0
  br i1 %lcmp.mod.not, label %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.i, label %.lr.ph51.epil.preheader

.lr.ph51.epil.preheader:                          ; preds = %._crit_edge, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.i.loopexit.unr-lcssa
  %.0.i.i.i.i49.epil.init = phi i64 [ 0, %._crit_edge ], [ %i.tx, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.248.epil.init = phi <8 x i64> [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.tw, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod9 = trunc i64 %i.sr to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.tz = shl nuw nsw i64 %.0.i.i.i.i49.epil.init, 6
  %i.ua = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.tz ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ub, i32 0, i32 3, i32 1)
  %i.uc = shl nuw nsw i64 %.0.i.i.i.i49.epil.init, 3
  %i.ud = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uc
  %i.ue = load <8 x i64>, ptr %i.ua, align 1, !tbaa !21 ; 2 uses
  %i.uf = load <8 x i64>, ptr %i.ud, align 8, !tbaa !21
  %i.ug = xor <8 x i64> %i.uf, %i.ue              ; 2 uses
  %i.uh = lshr <8 x i64> %i.ug, splat (i64 32)
  %i.ui = and <8 x i64> %i.ug, splat (i64 4294967295)
  %i.uj = mul nuw <8 x i64> %i.ui, %i.uh
  %i.uk = shufflevector <8 x i64> %i.ue, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ul = add <8 x i64> %.sroa.0.248.epil.init, %i.uk
  %i.um = add <8 x i64> %i.ul, %i.uj
  br label %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.i

_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.i: ; preds = %.lr.ph51.epil.preheader, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.i.loopexit.unr-lcssa, %._crit_edge
  %.sroa.0.2.lcssa = phi <8 x i64> [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.tw, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.i.loopexit.unr-lcssa ], [ %i.um, %.lr.ph51.epil.preheader ]
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.uo = getelementptr inbounds i8, ptr %i.un, i64 -64
  %i.up = getelementptr inbounds nuw i8, ptr %i.a, i64 121
  %i.uq = load <8 x i64>, ptr %i.uo, align 1, !tbaa !21 ; 2 uses
  %i.ur = load <8 x i64>, ptr %i.up, align 1      ; 2 uses
  %i.us = xor <8 x i64> %i.ur, %i.uq              ; 2 uses
  %i.ut = lshr <8 x i64> %i.us, splat (i64 32)
  %i.uu = and <8 x i64> %i.us, splat (i64 4294967295)
  %i.uv = mul nuw <8 x i64> %i.uu, %i.ut
  %i.uw = shufflevector <8 x i64> %i.uq, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ux = add <8 x i64> %.sroa.0.2.lcssa, %i.uw
  %i.uy = add <8 x i64> %i.ux, %i.uv              ; 8 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %.sroa.0.0.vec.extract = extractelement <8 x i64> %i.uy, i64 0 ; 2 uses
  %.val9.i = load i64, ptr %i.uz, align 1, !tbaa !27
  %3 = xor i64 %.sroa.0.0.vec.extract, %.val9.i
  %.sroa.0.8.vec.extract = extractelement <8 x i64> %i.uy, i64 1 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %.val.i = load i64, ptr %4, align 1, !tbaa !27
  %5 = xor i64 %.sroa.0.8.vec.extract, %.val.i
  %6 = zext i64 %3 to i128
  %7 = zext i64 %5 to i128
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  %.sroa.0.0.vec.extract.a = extractelement <8 x i64> %i.uy, i64 2 ; 2 uses
  %.val9.1.i = load i64, ptr %8, align 1, !tbaa !27
  %9 = xor i64 %.sroa.0.0.vec.extract.a, %.val9.1.i
  %.sroa.0.8.vec.extract.a = extractelement <8 x i64> %i.uy, i64 3 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 35
  %.val.1.i = load i64, ptr %10, align 1, !tbaa !27
  %11 = xor i64 %.sroa.0.8.vec.extract.a, %.val.1.i
  %12 = zext i64 %9 to i128
  %13 = zext i64 %11 to i128
  %i.va = getelementptr inbounds nuw i8, ptr %i.a, i64 43
  %i.vb = getelementptr inbounds nuw i8, ptr %i.a, i64 59
  %i.vc = insertelement <2 x i64> poison, i64 %1, i64 0
  %i.vd = shufflevector <2 x i64> %i.vc, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ve = mul <2 x i64> %i.vd, <i64 -7046029288634856825, i64 -4417276706812531889>
  %i.vf = xor i64 %.val9.i2, %.sroa.0.0.vec.extract
  %i.vg = bitcast <8 x i64> %i.ur to i512         ; 3 uses
  %i.vh = lshr i512 %i.vg, 32
  %i.vi = trunc i512 %i.vh to i64
  %i.vj = xor i64 %.sroa.0.8.vec.extract, %i.vi
  %i.vk = zext i64 %i.vf to i128
  %i.vl = zext i64 %i.vj to i128
  %14 = lshr i512 %i.vg, 96
  %15 = trunc i512 %14 to i64
  %16 = xor i64 %.sroa.0.0.vec.extract.a, %15
  %17 = lshr i512 %i.vg, 160
  %18 = trunc i512 %17 to i64
  %19 = xor i64 %.sroa.0.8.vec.extract.a, %18
  %20 = zext i64 %16 to i128
  %21 = zext i64 %19 to i128
  %i.vm = getelementptr inbounds nuw i8, ptr %i.a, i64 149
  %i.vn = getelementptr inbounds nuw i8, ptr %i.a, i64 165
  %i.vo = load <2 x i64>, ptr %i.va, align 1, !tbaa !27 ; 2 uses
  %i.vp = load <2 x i64>, ptr %i.vb, align 1, !tbaa !27 ; 2 uses
  %i.vq = xor <2 x i64> %i.ve, <i64 0, i64 -1>
  %22 = insertelement <2 x i128> poison, i128 %7, i64 0
  %i.vr = insertelement <2 x i128> %22, i128 %i.vl, i64 1
  %23 = insertelement <2 x i128> poison, i128 %6, i64 0
  %i.vs = insertelement <2 x i128> %23, i128 %i.vk, i64 1
  %i.vt = mul nuw <2 x i128> %i.vr, %i.vs         ; 2 uses
  %i.vu = lshr <2 x i128> %i.vt, splat (i128 64)
  %i.vv = xor <2 x i128> %i.vu, %i.vt
  %i.vw = trunc <2 x i128> %i.vv to <2 x i64>
  %i.vx = add <2 x i64> %i.vq, %i.vw
  %24 = insertelement <2 x i128> poison, i128 %13, i64 0
  %25 = insertelement <2 x i128> %24, i128 %21, i64 1
  %26 = insertelement <2 x i128> poison, i128 %12, i64 0
  %27 = insertelement <2 x i128> %26, i128 %20, i64 1
  %i.vy = mul nuw <2 x i128> %25, %27             ; 2 uses
  %i.vz = lshr <2 x i128> %i.vy, splat (i128 64)
  %i.wa = xor <2 x i128> %i.vz, %i.vy
  %i.wb = trunc <2 x i128> %i.wa to <2 x i64>
  %i.wc = add <2 x i64> %i.vx, %i.wb
  %i.wd = load <2 x i64>, ptr %i.vm, align 1, !tbaa !27 ; 2 uses
  %i.we = shufflevector <2 x i64> %i.vo, <2 x i64> %i.wd, <2 x i32> <i32 0, i32 2>
  %i.wf = shufflevector <8 x i64> %i.uy, <8 x i64> poison, <2 x i32> <i32 4, i32 4>
  %i.wg = xor <2 x i64> %i.we, %i.wf
  %i.wh = shufflevector <2 x i64> %i.vo, <2 x i64> %i.wd, <2 x i32> <i32 1, i32 3>
  %i.wi = shufflevector <8 x i64> %i.uy, <8 x i64> poison, <2 x i32> <i32 5, i32 5>
  %i.wj = xor <2 x i64> %i.wh, %i.wi
  %i.wk = zext <2 x i64> %i.wg to <2 x i128>
  %i.wl = zext <2 x i64> %i.wj to <2 x i128>
  %i.wm = mul nuw <2 x i128> %i.wl, %i.wk         ; 2 uses
  %i.wn = lshr <2 x i128> %i.wm, splat (i128 64)
  %i.wo = xor <2 x i128> %i.wn, %i.wm
  %i.wp = trunc <2 x i128> %i.wo to <2 x i64>
  %i.wq = add <2 x i64> %i.wc, %i.wp
  %i.wr = load <2 x i64>, ptr %i.vn, align 1, !tbaa !27 ; 2 uses
  %i.ws = shufflevector <2 x i64> %i.vp, <2 x i64> %i.wr, <2 x i32> <i32 0, i32 2>
  %i.wt = shufflevector <8 x i64> %i.uy, <8 x i64> poison, <2 x i32> <i32 6, i32 6>
  %i.wu = xor <2 x i64> %i.ws, %i.wt
  %i.wv = shufflevector <2 x i64> %i.vp, <2 x i64> %i.wr, <2 x i32> <i32 1, i32 3>
  %i.ww = shufflevector <8 x i64> %i.uy, <8 x i64> poison, <2 x i32> <i32 7, i32 7>
  %i.wx = xor <2 x i64> %i.wv, %i.ww
  %i.wy = zext <2 x i64> %i.wu to <2 x i128>
  %i.wz = zext <2 x i64> %i.wx to <2 x i128>
  %i.xa = mul nuw <2 x i128> %i.wz, %i.wy         ; 2 uses
  %i.xb = lshr <2 x i128> %i.xa, splat (i128 64)
  %i.xc = xor <2 x i128> %i.xb, %i.xa
  %i.xd = trunc <2 x i128> %i.xc to <2 x i64>
  %i.xe = add <2 x i64> %i.wq, %i.xd              ; 2 uses
  %i.xf = lshr <2 x i64> %i.xe, splat (i64 37)
  %i.xg = xor <2 x i64> %i.xf, %i.xe
  %i.xh = mul <2 x i64> %i.xg, splat (i64 1609587791953885689) ; 2 uses
  %i.xi = lshr <2 x i64> %i.xh, splat (i64 32)
  %i.xj = xor <2 x i64> %i.xi, %i.xh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %_ZL36XXH3_hashLong_128b_withSeed_internalPKvmmPFvPmPKhS3_mEPFvPvS0_EPFvS6_mE.exit

_ZL36XXH3_hashLong_128b_withSeed_internalPKvmmPFvPmPKhS3_mEPFvPvS0_EPFvS6_mE.exit: ; preds = %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit17.i, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.i
  %i.xk = phi <2 x i64> [ %i.kc, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit17.i ], [ %i.xj, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.i ] ; 2 uses
  %i.xl = extractelement <2 x i64> %i.xk, i64 0
  %.fca.0.insert.i13.i.pn = insertvalue { i64, i64 } poison, i64 %i.xl, 0
  %i.xm = extractelement <2 x i64> %i.xk, i64 1
  %.pn.i = insertvalue { i64, i64 } %.fca.0.insert.i13.i.pn, i64 %i.xm, 1
  ret { i64, i64 } %.pn.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define { i64, i64 } @ROCKSDB_XXH3_128bits_withSecretandSeed(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ult i64 %1, 241
  br i1 %i.a, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %1, 17
  br i1 %i.b, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %1, 8
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.d = sub i64 6455697860950631241, %4
  %i.e = add i64 %4, -4466874330221494952
  %.val80 = load i64, ptr %0, align 1, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.val79 = load i64, ptr %i.g, align 1, !tbaa !27 ; 2 uses
  %i.h = xor i64 %.val80, %i.d
  %i.i = xor i64 %i.h, %.val79
  %i.j = zext i64 %i.i to i128
  %i.k = mul nuw i128 %i.j, 11400714785074694791  ; 2 uses
  %i.l = trunc i128 %i.k to i64
  %i.m = lshr i128 %i.k, 64
  %i.n = trunc nuw i128 %i.m to i64
  %i.o = shl nuw nsw i64 %1, 54
  %i.p = add nsw i64 %i.o, -18014398509481984
  %i.q = add i64 %i.p, %i.l
  %i.r = xor i64 %.val79, %i.e                    ; 2 uses
  %i.s = and i64 %i.r, 4294967295
  %i.t = mul nuw i64 %i.s, 2246822518
  %i.u = add i64 %i.t, %i.r
  %i.v = add i64 %i.u, %i.n                       ; 2 uses
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 %i.v)
  %i.x = xor i64 %i.w, %i.q
  %i.y = zext i64 %i.x to i128
  %i.z = mul nuw i128 %i.y, 14029467366897019727  ; 2 uses
  %i.aa = trunc i128 %i.z to i64                  ; 2 uses
  %i.ab = lshr i128 %i.z, 64
  %i.ac = trunc nuw i128 %i.ab to i64
  %i.ad = mul i64 %i.v, -4417276706812531889
  %i.ae = add i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = lshr i64 %i.aa, 37
  %i.ag = xor i64 %i.af, %i.aa
  %i.ah = mul i64 %i.ag, 1609587791953885689      ; 2 uses
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = xor i64 %i.ai, %i.ah
  %i.ak = lshr i64 %i.ae, 37
  %i.al = xor i64 %i.ak, %i.ae
  %i.am = mul i64 %i.al, 1609587791953885689      ; 2 uses
  %i.an = lshr i64 %i.am, 32
  %i.ao = xor i64 %i.an, %i.am
  %.fca.0.insert.i9 = insertvalue { i64, i64 } poison, i64 %i.aj, 0
  %.fca.1.insert.i10 = insertvalue { i64, i64 } %.fca.0.insert.i9, i64 %i.ao, 1
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

bb.e:                                             ; preds = %bb.c
  %i.ap = icmp samesign ugt i64 %1, 3
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.aq = trunc i64 %4 to i32
  %i.ar = tail call noundef i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = zext i32 %i.ar to i64
  %i.at = shl nuw i64 %i.as, 32
  %i.au = xor i64 %i.at, %4
  %.val28 = load i32, ptr %0, align 1, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -4
  %.val27 = load i32, ptr %i.aw, align 1, !tbaa !17
  %i.ax = zext i32 %.val28 to i64
  %i.ay = zext i32 %.val27 to i64
  %i.az = shl nuw i64 %i.ay, 32
  %i.ba = or disjoint i64 %i.az, %i.ax
  %i.bb = add i64 %i.au, -4255862940314790740
  %i.bc = xor i64 %i.ba, %i.bb
  %i.bd = shl nuw nsw i64 %1, 2
  %i.be = add nuw nsw i64 %i.bd, -7046029288634856825
  %i.bf = zext i64 %i.bc to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bf, %i.bg               ; 2 uses
  %i.bi = trunc i128 %i.bh to i64                 ; 2 uses
  %i.bj = lshr i128 %i.bh, 64
  %i.bk = trunc nuw i128 %i.bj to i64
  %i.bl = shl i64 %i.bi, 1
  %i.bm = add i64 %i.bl, %i.bk                    ; 3 uses
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = xor i64 %i.bn, %i.bi                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 35
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = mul i64 %i.bq, -6939452855193903323     ; 2 uses
  %i.bs = lshr i64 %i.br, 28
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = lshr i64 %i.bm, 37
  %i.bv = xor i64 %i.bu, %i.bm
  %i.bw = mul i64 %i.bv, 1609587791953885689      ; 2 uses
  %i.bx = lshr i64 %i.bw, 32
  %i.by = xor i64 %i.bx, %i.bw
  %.fca.0.insert.i11 = insertvalue { i64, i64 } poison, i64 %i.bt, 0
  %.fca.1.insert.i12 = insertvalue { i64, i64 } %.fca.0.insert.i11, i64 %i.by, 1
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.bz = load i8, ptr %0, align 1, !tbaa !21
  %i.ca = lshr i64 %1, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !21
  %i.cd = getelementptr i8, ptr %0, i64 %1
  %i.ce = getelementptr i8, ptr %i.cd, i64 -1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !21
  %i.cg = zext i8 %i.bz to i32
  %i.ch = shl nuw nsw i32 %i.cg, 16
  %i.ci = zext i8 %i.cc to i32
  %i.cj = shl nuw i32 %i.ci, 24
  %i.ck = or disjoint i32 %i.cj, %i.ch
  %i.cl = zext i8 %i.cf to i32
  %i.cm = or disjoint i32 %i.ck, %i.cl
  %i.cn = trunc nuw nsw i64 %1 to i32
  %i.co = shl nuw nsw i32 %i.cn, 8
  %i.cp = or disjoint i32 %i.cm, %i.co            ; 2 uses
  %i.cq = tail call noundef i32 @llvm.bswap.i32(i32 %i.cp) ; 2 uses
  %i.cr = tail call i32 @llvm.fshl.i32(i32 %i.cq, i32 %i.cq, i32 13)
  %i.cs = insertelement <2 x i64> <i64 poison, i64 808198283>, i64 %4, i64 0
  %i.ct = insertelement <2 x i64> <i64 -2267503259, i64 poison>, i64 %4, i64 1
  %i.cu = sub <2 x i64> %i.cs, %i.ct              ; 2 uses
  %i.cv = zext i32 %i.cp to i64
  %i.cw = zext nneg i32 %i.cr to i64
  %i.cx = lshr <2 x i64> %i.cu, splat (i64 33)
  %i.cy = insertelement <2 x i64> poison, i64 %i.cv, i64 0
  %i.cz = insertelement <2 x i64> %i.cy, i64 %i.cw, i64 1
  %i.da = xor <2 x i64> %i.cx, %i.cz
  %i.db = xor <2 x i64> %i.da, %i.cu
  %i.dc = mul <2 x i64> %i.db, splat (i64 -4417276706812531889) ; 2 uses
  %i.dd = lshr <2 x i64> %i.dc, splat (i64 29)
  %i.de = xor <2 x i64> %i.dd, %i.dc
  %i.df = mul <2 x i64> %i.de, splat (i64 1609587929392839161) ; 2 uses
  %i.dg = lshr <2 x i64> %i.df, splat (i64 32)
  %i.dh = xor <2 x i64> %i.dg, %i.df              ; 2 uses
  %vec2struct.slot146.sroa.0.0.vec.extract = extractelement <2 x i64> %i.dh, i64 0
  %i.di = insertvalue { i64, i64 } poison, i64 %vec2struct.slot146.sroa.0.0.vec.extract, 0
  %vec2struct.slot146.sroa.0.8.vec.extract = extractelement <2 x i64> %i.dh, i64 1
end_hunk_1
