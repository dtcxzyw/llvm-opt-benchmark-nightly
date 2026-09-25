Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/xxhash?download=true
inline.NumInlined: 910
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 57
begin_hunk_0_@ROCKSDB_XXH3_128bits_withSecret:bb.a
  %i.pl = zext i64 %i.ph to i128
  %i.pm = zext i64 %i.pk to i128
  %i.pn = getelementptr inbounds i8, ptr %i.oc, i64 -43
  %i.po = getelementptr inbounds i8, ptr %i.oc, i64 -27
  %i.pp = load <2 x i64>, ptr %i.os, align 1, !tbaa !27 ; 2 uses
  %i.pq = load <2 x i64>, ptr %i.ot, align 1, !tbaa !27 ; 2 uses
  %i.pr = xor <2 x i64> %i.ox, <i64 0, i64 -1>
  %i.ps = shufflevector <4 x i128> %i.or, <4 x i128> poison, <2 x i32> <i32 1, i32 poison>
  %i.pt = insertelement <2 x i128> %i.ps, i128 %i.pe, i64 1
  %i.pu = shufflevector <4 x i128> %i.or, <4 x i128> poison, <2 x i32> <i32 0, i32 poison>
  %i.pv = insertelement <2 x i128> %i.pu, i128 %i.pd, i64 1
  %i.pw = mul nuw <2 x i128> %i.pt, %i.pv         ; 2 uses
  %i.px = lshr <2 x i128> %i.pw, splat (i128 64)
  %i.py = xor <2 x i128> %i.px, %i.pw
  %i.pz = trunc <2 x i128> %i.py to <2 x i64>
  %i.qa = add <2 x i64> %i.pr, %i.pz
  %i.qb = shufflevector <4 x i128> %i.or, <4 x i128> poison, <2 x i32> <i32 3, i32 poison>
  %i.qc = insertelement <2 x i128> %i.qb, i128 %i.pm, i64 1
  %i.qd = shufflevector <4 x i128> %i.or, <4 x i128> poison, <2 x i32> <i32 2, i32 poison>
  %i.qe = insertelement <2 x i128> %i.qd, i128 %i.pl, i64 1
  %i.qf = mul nuw <2 x i128> %i.qc, %i.qe         ; 2 uses
  %i.qg = lshr <2 x i128> %i.qf, splat (i128 64)
  %i.qh = xor <2 x i128> %i.qg, %i.qf
  %i.qi = trunc <2 x i128> %i.qh to <2 x i64>
  %i.qj = add <2 x i64> %i.qa, %i.qi
  %i.qk = load <2 x i64>, ptr %i.pn, align 1, !tbaa !27 ; 2 uses
  %i.ql = shufflevector <2 x i64> %i.pp, <2 x i64> %i.qk, <2 x i32> <i32 0, i32 2>
  %i.qm = shufflevector <8 x i64> %i.om, <8 x i64> poison, <2 x i32> <i32 4, i32 4>
  %i.qn = xor <2 x i64> %i.ql, %i.qm
  %i.qo = shufflevector <2 x i64> %i.pp, <2 x i64> %i.qk, <2 x i32> <i32 1, i32 3>
  %i.qp = shufflevector <8 x i64> %i.om, <8 x i64> poison, <2 x i32> <i32 5, i32 5>
  %i.qq = xor <2 x i64> %i.qo, %i.qp
  %i.qr = zext <2 x i64> %i.qn to <2 x i128>
  %i.qs = zext <2 x i64> %i.qq to <2 x i128>
  %i.qt = mul nuw <2 x i128> %i.qs, %i.qr         ; 2 uses
  %i.qu = lshr <2 x i128> %i.qt, splat (i128 64)
  %i.qv = xor <2 x i128> %i.qu, %i.qt
  %i.qw = trunc <2 x i128> %i.qv to <2 x i64>
  %i.qx = add <2 x i64> %i.qj, %i.qw
  %i.qy = load <2 x i64>, ptr %i.po, align 1, !tbaa !27 ; 2 uses
  %i.qz = shufflevector <2 x i64> %i.pq, <2 x i64> %i.qy, <2 x i32> <i32 0, i32 2>
  %i.ra = shufflevector <8 x i64> %i.om, <8 x i64> poison, <2 x i32> <i32 6, i32 6>
  %i.rb = xor <2 x i64> %i.qz, %i.ra
  %i.rc = shufflevector <2 x i64> %i.pq, <2 x i64> %i.qy, <2 x i32> <i32 1, i32 3>
  %i.rd = shufflevector <8 x i64> %i.om, <8 x i64> poison, <2 x i32> <i32 7, i32 7>
  %i.re = xor <2 x i64> %i.rc, %i.rd
  %i.rf = zext <2 x i64> %i.rb to <2 x i128>
  %i.rg = zext <2 x i64> %i.re to <2 x i128>
  %i.rh = mul nuw <2 x i128> %i.rg, %i.rf         ; 2 uses
  %i.ri = lshr <2 x i128> %i.rh, splat (i128 64)
  %i.rj = xor <2 x i128> %i.ri, %i.rh
  %i.rk = trunc <2 x i128> %i.rj to <2 x i64>
  %i.rl = add <2 x i64> %i.qx, %i.rk              ; 2 uses
  %i.rm = lshr <2 x i64> %i.rl, splat (i64 37)
  %i.rn = xor <2 x i64> %i.rm, %i.rl
  %i.ro = mul <2 x i64> %i.rn, splat (i64 1609587791953885689) ; 2 uses
  %i.rp = lshr <2 x i64> %i.ro, splat (i64 32)
  %i.rq = xor <2 x i64> %i.rp, %i.ro              ; 2 uses
  %vec2struct.slot143.sroa.0.0.vec.extract = extractelement <2 x i64> %i.rq, i64 0
  %i.rr = insertvalue { i64, i64 } poison, i64 %vec2struct.slot143.sroa.0.0.vec.extract, 0
  %vec2struct.slot143.sroa.0.8.vec.extract = extractelement <2 x i64> %i.rq, i64 1
  %vec2struct144147 = insertvalue { i64, i64 } %i.rr, i64 %vec2struct.slot143.sroa.0.8.vec.extract, 1
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit: ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit, %bb.q, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit
  %.pn.i = phi { i64, i64 } [ %vec2struct144147, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit ], [ %.fca.1.insert.i, %_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit ], [ %i.jk, %bb.q ], [ %.fca.1.insert.i4, %bb.c ], [ %.fca.1.insert.i6, %bb.e ], [ %vec2struct142150, %bb.g ], [ %vec2struct153, %bb.h ]
  ret { i64, i64 } %.pn.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define { i64, i64 } @ROCKSDB_XXH3_128bits_withSeed(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp ult i64 %1, 17
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %1, 8
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.c = sub i64 6455697860950631241, %2
  %i.d = add i64 %2, -4466874330221494952
  %.val71 = load i64, ptr %0, align 1, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %.val70 = load i64, ptr %i.f, align 1, !tbaa !27 ; 2 uses
  %i.g = xor i64 %.val71, %i.c
  %i.h = xor i64 %i.g, %.val70
  %i.i = zext i64 %i.h to i128
  %i.j = mul nuw i128 %i.i, 11400714785074694791  ; 2 uses
  %i.k = trunc i128 %i.j to i64
  %i.l = lshr i128 %i.j, 64
  %i.m = trunc nuw i128 %i.l to i64
  %i.n = shl nuw nsw i64 %1, 54
  %i.o = add nsw i64 %i.n, -18014398509481984
  %i.p = add i64 %i.o, %i.k
  %i.q = xor i64 %.val70, %i.d                    ; 2 uses
  %i.r = and i64 %i.q, 4294967295
  %i.s = mul nuw i64 %i.r, 2246822518
  %i.t = add i64 %i.s, %i.q
  %i.u = add i64 %i.t, %i.m                       ; 2 uses
  %i.v = tail call noundef i64 @llvm.bswap.i64(i64 %i.u)
  %i.w = xor i64 %i.v, %i.p
  %i.x = zext i64 %i.w to i128
  %i.y = mul nuw i128 %i.x, 14029467366897019727  ; 2 uses
  %i.z = trunc i128 %i.y to i64                   ; 2 uses
  %i.aa = lshr i128 %i.y, 64
  %i.ab = trunc nuw i128 %i.aa to i64
  %i.ac = mul i64 %i.u, -4417276706812531889
  %i.ad = add i64 %i.ac, %i.ab                    ; 2 uses
  %i.ae = lshr i64 %i.z, 37
  %i.af = xor i64 %i.ae, %i.z
  %i.ag = mul i64 %i.af, 1609587791953885689      ; 2 uses
  %i.ah = lshr i64 %i.ag, 32
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = lshr i64 %i.ad, 37
  %i.ak = xor i64 %i.aj, %i.ad
  %i.al = mul i64 %i.ak, 1609587791953885689      ; 2 uses
  %i.am = lshr i64 %i.al, 32
  %i.an = xor i64 %i.am, %i.al
  %.fca.0.insert.i2 = insertvalue { i64, i64 } poison, i64 %i.ai, 0
  %.fca.1.insert.i3 = insertvalue { i64, i64 } %.fca.0.insert.i2, i64 %i.an, 1
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

bb.d:                                             ; preds = %bb.b
  %i.ao = icmp samesign ugt i64 %1, 3
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.ap = trunc i64 %2 to i32
  %i.aq = tail call noundef i32 @llvm.bswap.i32(i32 %i.ap)
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw i64 %i.ar, 32
  %i.at = xor i64 %i.as, %2
  %.val19 = load i32, ptr %0, align 1, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4
  %.val18 = load i32, ptr %i.av, align 1, !tbaa !17
  %i.aw = zext i32 %.val19 to i64
  %i.ax = zext i32 %.val18 to i64
  %i.ay = shl nuw i64 %i.ax, 32
  %i.az = or disjoint i64 %i.ay, %i.aw
  %i.ba = add i64 %i.at, -4255862940314790740
  %i.bb = xor i64 %i.az, %i.ba
  %i.bc = shl nuw nsw i64 %1, 2
  %i.bd = add nuw nsw i64 %i.bc, -7046029288634856825
  %i.be = zext i64 %i.bb to i128
  %i.bf = zext i64 %i.bd to i128
  %i.bg = mul nuw i128 %i.be, %i.bf               ; 2 uses
  %i.bh = trunc i128 %i.bg to i64                 ; 2 uses
  %i.bi = lshr i128 %i.bg, 64
  %i.bj = trunc nuw i128 %i.bi to i64
  %i.bk = shl i64 %i.bh, 1
  %i.bl = add i64 %i.bk, %i.bj                    ; 3 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = xor i64 %i.bm, %i.bh                    ; 2 uses
  %i.bo = lshr i64 %i.bn, 35
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = mul i64 %i.bp, -6939452855193903323     ; 2 uses
  %i.br = lshr i64 %i.bq, 28
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = lshr i64 %i.bl, 37
  %i.bu = xor i64 %i.bt, %i.bl
  %i.bv = mul i64 %i.bu, 1609587791953885689      ; 2 uses
  %i.bw = lshr i64 %i.bv, 32
  %i.bx = xor i64 %i.bw, %i.bv
  %.fca.0.insert.i4 = insertvalue { i64, i64 } poison, i64 %i.bs, 0
  %.fca.1.insert.i5 = insertvalue { i64, i64 } %.fca.0.insert.i4, i64 %i.bx, 1
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.by = load i8, ptr %0, align 1, !tbaa !21
  %i.bz = lshr i64 %1, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !21
  %i.cc = getelementptr i8, ptr %0, i64 %1
  %i.cd = getelementptr i8, ptr %i.cc, i64 -1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !21
  %i.cf = zext i8 %i.by to i32
  %i.cg = shl nuw nsw i32 %i.cf, 16
  %i.ch = zext i8 %i.cb to i32
  %i.ci = shl nuw i32 %i.ch, 24
  %i.cj = or disjoint i32 %i.ci, %i.cg
  %i.ck = zext i8 %i.ce to i32
  %i.cl = or disjoint i32 %i.cj, %i.ck
  %i.cm = trunc nuw nsw i64 %1 to i32
  %i.cn = shl nuw nsw i32 %i.cm, 8
  %i.co = or disjoint i32 %i.cl, %i.cn            ; 2 uses
  %i.cp = tail call noundef i32 @llvm.bswap.i32(i32 %i.co) ; 2 uses
  %i.cq = tail call i32 @llvm.fshl.i32(i32 %i.cp, i32 %i.cp, i32 13)
  %i.cr = insertelement <2 x i64> <i64 poison, i64 808198283>, i64 %2, i64 0
  %i.cs = insertelement <2 x i64> <i64 -2267503259, i64 poison>, i64 %2, i64 1
  %i.ct = sub <2 x i64> %i.cr, %i.cs              ; 2 uses
  %i.cu = zext nneg i32 %i.cq to i64
  %i.cv = zext i32 %i.co to i64
  %i.cw = lshr <2 x i64> %i.ct, splat (i64 33)
  %i.cx = insertelement <2 x i64> poison, i64 %i.cv, i64 0
  %i.cy = insertelement <2 x i64> %i.cx, i64 %i.cu, i64 1
  %i.cz = xor <2 x i64> %i.cw, %i.cy
  %i.da = xor <2 x i64> %i.cz, %i.ct
  %i.db = mul <2 x i64> %i.da, splat (i64 -4417276706812531889) ; 2 uses
  %i.dc = lshr <2 x i64> %i.db, splat (i64 29)
  %i.dd = xor <2 x i64> %i.dc, %i.db
  %i.de = mul <2 x i64> %i.dd, splat (i64 1609587929392839161) ; 2 uses
  %i.df = lshr <2 x i64> %i.de, splat (i64 32)
  %i.dg = xor <2 x i64> %i.df, %i.de              ; 2 uses
  %vec2struct.slot86.sroa.0.0.vec.extract = extractelement <2 x i64> %i.dg, i64 0
  %i.dh = insertvalue { i64, i64 } poison, i64 %vec2struct.slot86.sroa.0.0.vec.extract, 0
  %vec2struct.slot86.sroa.0.8.vec.extract = extractelement <2 x i64> %i.dg, i64 1
  %vec2struct8790 = insertvalue { i64, i64 } %i.dh, i64 %vec2struct.slot86.sroa.0.8.vec.extract, 1
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

bb.h:                                             ; preds = %bb.f
  %i.di = insertelement <2 x i64> poison, i64 %2, i64 0
  %i.dj = shufflevector <2 x i64> %i.di, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dk = xor <2 x i64> %i.dj, <i64 7507096552062056628, i64 -7613947547284439735> ; 2 uses
  %i.dl = lshr <2 x i64> %i.dk, splat (i64 33)
  %i.dm = xor <2 x i64> %i.dl, %i.dk
  %i.dn = mul <2 x i64> %i.dm, splat (i64 -4417276706812531889) ; 2 uses
  %i.do = lshr <2 x i64> %i.dn, splat (i64 29)
  %i.dp = xor <2 x i64> %i.do, %i.dn
  %i.dq = mul <2 x i64> %i.dp, splat (i64 1609587929392839161) ; 2 uses
  %i.dr = lshr <2 x i64> %i.dq, splat (i64 32)
  %i.ds = xor <2 x i64> %i.dr, %i.dq              ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %i.ds, i64 0
  %i.dt = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %i.ds, i64 1
  %vec2struct93 = insertvalue { i64, i64 } %i.dt, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

bb.i:                                             ; preds = %bb.a
  %i.du = icmp ult i64 %1, 129
  br i1 %i.du, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.dv = mul i64 %1, -7046029288634856825        ; 4 uses
  %i.dw = icmp samesign ugt i64 %1, 32
  br i1 %i.dw, label %bb.k, label %_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit

bb.k:                                             ; preds = %bb.j
  %i.dx = icmp samesign ugt i64 %1, 64
  br i1 %i.dx, label %bb.l, label %bb.o

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
end_hunk_0
begin_hunk_1_@_ZL27XXH3_hashLong_128b_withSeedPKvmmS0_m:bb.a
  %i.wa = load <2 x i64>, ptr %i.vf, align 1, !tbaa !27 ; 2 uses
  %i.wb = xor <2 x i64> %i.vi, <i64 0, i64 -1>
  %i.wc = shufflevector <4 x i128> %i.vd, <4 x i128> poison, <2 x i32> <i32 1, i32 poison>
  %i.wd = insertelement <2 x i128> %i.wc, i128 %i.vp, i64 1
  %i.we = shufflevector <4 x i128> %i.vd, <4 x i128> poison, <2 x i32> <i32 0, i32 poison>
  %i.wf = insertelement <2 x i128> %i.we, i128 %i.vo, i64 1
  %i.wg = mul nuw <2 x i128> %i.wd, %i.wf         ; 2 uses
  %i.wh = lshr <2 x i128> %i.wg, splat (i128 64)
  %i.wi = xor <2 x i128> %i.wh, %i.wg
  %i.wj = trunc <2 x i128> %i.wi to <2 x i64>
  %i.wk = add <2 x i64> %i.wb, %i.wj
  %i.wl = shufflevector <4 x i128> %i.vd, <4 x i128> poison, <2 x i32> <i32 3, i32 poison>
  %i.wm = shufflevector <2 x i128> %i.wl, <2 x i128> %i.vw, <2 x i32> <i32 0, i32 3>
  %i.wn = shufflevector <4 x i128> %i.vd, <4 x i128> poison, <2 x i32> <i32 2, i32 poison>
  %i.wo = shufflevector <2 x i128> %i.wn, <2 x i128> %i.vw, <2 x i32> <i32 0, i32 2>
  %i.wp = mul nuw <2 x i128> %i.wm, %i.wo         ; 2 uses
  %i.wq = lshr <2 x i128> %i.wp, splat (i128 64)
  %i.wr = xor <2 x i128> %i.wq, %i.wp
  %i.ws = trunc <2 x i128> %i.wr to <2 x i64>
  %i.wt = add <2 x i64> %i.wk, %i.ws
  %i.wu = load <2 x i64>, ptr %i.vx, align 1, !tbaa !27 ; 2 uses
  %i.wv = shufflevector <2 x i64> %i.vz, <2 x i64> %i.wu, <2 x i32> <i32 0, i32 2>
  %i.ww = shufflevector <8 x i64> %i.uy, <8 x i64> poison, <2 x i32> <i32 4, i32 4>
  %i.wx = xor <2 x i64> %i.wv, %i.ww
  %i.wy = shufflevector <2 x i64> %i.vz, <2 x i64> %i.wu, <2 x i32> <i32 1, i32 3>
  %i.wz = shufflevector <8 x i64> %i.uy, <8 x i64> poison, <2 x i32> <i32 5, i32 5>
  %i.xa = xor <2 x i64> %i.wy, %i.wz
  %i.xb = zext <2 x i64> %i.wx to <2 x i128>
  %i.xc = zext <2 x i64> %i.xa to <2 x i128>
  %i.xd = mul nuw <2 x i128> %i.xc, %i.xb         ; 2 uses
  %i.xe = lshr <2 x i128> %i.xd, splat (i128 64)
  %i.xf = xor <2 x i128> %i.xe, %i.xd
  %i.xg = trunc <2 x i128> %i.xf to <2 x i64>
  %i.xh = add <2 x i64> %i.wt, %i.xg
  %i.xi = load <2 x i64>, ptr %i.vy, align 1, !tbaa !27 ; 2 uses
  %i.xj = shufflevector <2 x i64> %i.wa, <2 x i64> %i.xi, <2 x i32> <i32 0, i32 2>
  %i.xk = shufflevector <8 x i64> %i.uy, <8 x i64> poison, <2 x i32> <i32 6, i32 6>
  %i.xl = xor <2 x i64> %i.xj, %i.xk
  %i.xm = shufflevector <2 x i64> %i.wa, <2 x i64> %i.xi, <2 x i32> <i32 1, i32 3>
  %i.xn = shufflevector <8 x i64> %i.uy, <8 x i64> poison, <2 x i32> <i32 7, i32 7>
  %i.xo = xor <2 x i64> %i.xm, %i.xn
  %i.xp = zext <2 x i64> %i.xl to <2 x i128>
  %i.xq = zext <2 x i64> %i.xo to <2 x i128>
  %i.xr = mul nuw <2 x i128> %i.xq, %i.xp         ; 2 uses
  %i.xs = lshr <2 x i128> %i.xr, splat (i128 64)
  %i.xt = xor <2 x i128> %i.xs, %i.xr
  %i.xu = trunc <2 x i128> %i.xt to <2 x i64>
  %i.xv = add <2 x i64> %i.xh, %i.xu              ; 2 uses
  %i.xw = lshr <2 x i64> %i.xv, splat (i64 37)
  %i.xx = xor <2 x i64> %i.xw, %i.xv
  %i.xy = mul <2 x i64> %i.xx, splat (i64 1609587791953885689) ; 2 uses
  %i.xz = lshr <2 x i64> %i.xy, splat (i64 32)
  %i.ya = xor <2 x i64> %i.xz, %i.xy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %_ZL36XXH3_hashLong_128b_withSeed_internalPKvmmPFvPmPKhS3_mEPFvPvS0_EPFvS6_mE.exit

_ZL36XXH3_hashLong_128b_withSeed_internalPKvmmPFvPmPKhS3_mEPFvPvS0_EPFvS6_mE.exit: ; preds = %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit17.i, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.i
  %i.yb = phi <2 x i64> [ %i.kc, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit17.i ], [ %i.ya, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.i ] ; 2 uses
  %i.yc = extractelement <2 x i64> %i.yb, i64 0
  %.fca.0.insert.i13.i.pn = insertvalue { i64, i64 } poison, i64 %i.yc, 0
  %i.yd = extractelement <2 x i64> %i.yb, i64 1
  %.pn.i = insertvalue { i64, i64 } %.fca.0.insert.i13.i.pn, i64 %i.yd, 1
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
  %i.cv = zext nneg i32 %i.cr to i64
  %i.cw = zext i32 %i.cp to i64
  %i.cx = lshr <2 x i64> %i.cu, splat (i64 33)
  %i.cy = insertelement <2 x i64> poison, i64 %i.cw, i64 0
  %i.cz = insertelement <2 x i64> %i.cy, i64 %i.cv, i64 1
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
  %vec2struct147155 = insertvalue { i64, i64 } %i.di, i64 %vec2struct.slot146.sroa.0.8.vec.extract, 1
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

bb.i:                                             ; preds = %bb.g
  %i.dj = insertelement <2 x i64> poison, i64 %4, i64 0
  %i.dk = shufflevector <2 x i64> %i.dj, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dl = xor <2 x i64> %i.dk, <i64 7507096552062056628, i64 -7613947547284439735> ; 2 uses
  %i.dm = lshr <2 x i64> %i.dl, splat (i64 33)
  %i.dn = xor <2 x i64> %i.dm, %i.dl
  %i.do = mul <2 x i64> %i.dn, splat (i64 -4417276706812531889) ; 2 uses
  %i.dp = lshr <2 x i64> %i.do, splat (i64 29)
  %i.dq = xor <2 x i64> %i.dp, %i.do
  %i.dr = mul <2 x i64> %i.dq, splat (i64 1609587929392839161) ; 2 uses
  %i.ds = lshr <2 x i64> %i.dr, splat (i64 32)
  %i.dt = xor <2 x i64> %i.ds, %i.dr              ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %i.dt, i64 0
  %i.du = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %i.dt, i64 1
  %vec2struct158 = insertvalue { i64, i64 } %i.du, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

bb.j:                                             ; preds = %bb.b
  %i.dv = icmp samesign ult i64 %1, 129
  br i1 %i.dv, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.dw = mul i64 %1, -7046029288634856825        ; 4 uses
  %i.dx = icmp samesign ugt i64 %1, 32
  br i1 %i.dx, label %bb.l, label %_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit

bb.l:                                             ; preds = %bb.k
  %i.dy = icmp samesign ugt i64 %1, 64
  br i1 %i.dy, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.dz = icmp samesign ugt i64 %1, 96
  br i1 %i.dz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -64
  %.val76 = load i64, ptr %i.ea, align 1, !tbaa !27 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val75 = load i64, ptr %i.ed, align 1, !tbaa !27 ; 2 uses
  %i.ee = add i64 %4, 4554437623014685352
  %i.ef = xor i64 %.val76, %i.ee
  %i.eg = sub i64 2111919702937427193, %4
  %i.eh = xor i64 %.val75, %i.eg
  %i.ei = zext i64 %i.ef to i128
  %i.ej = zext i64 %i.eh to i128
  %i.ek = mul nuw i128 %i.ej, %i.ei               ; 2 uses
  %i.el = lshr i128 %i.ek, 64
  %i.em = xor i128 %i.el, %i.ek
  %i.en = trunc i128 %i.em to i64
  %i.eo = add i64 %i.dw, %i.en
  %.val72 = load i64, ptr %i.ec, align 1, !tbaa !27 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.eb, i64 -56
  %.val71 = load i64, ptr %i.ep, align 1, !tbaa !27 ; 2 uses
  %i.eq = add i64 %.val71, %.val72
  %i.er = xor i64 %i.eo, %i.eq
  %i.es = add i64 %4, 3556072174620004746
  %i.et = xor i64 %.val72, %i.es
  %i.eu = sub i64 7238261902898274248, %4
  %i.ev = xor i64 %.val71, %i.eu
  %i.ew = zext i64 %i.et to i128
  %i.ex = zext i64 %i.ev to i128
  %i.ey = mul nuw i128 %i.ex, %i.ew               ; 2 uses
  %i.ez = lshr i128 %i.ey, 64
  %i.fa = xor i128 %i.ez, %i.ey
  %i.fb = trunc i128 %i.fa to i64
  %i.fc = add i64 %.val75, %.val76
  %i.fd = xor i64 %i.fc, %i.fb
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.015.0.i = phi i64 [ %i.er, %bb.n ], [ %i.dw, %bb.m ]
  %.sroa.13.0.i = phi i64 [ %i.fd, %bb.n ], [ 0, %bb.m ]
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -48
  %.val64 = load i64, ptr %i.fe, align 1, !tbaa !27 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val63 = load i64, ptr %i.fh, align 1, !tbaa !27 ; 2 uses
  %i.fi = add i64 %4, -3818837453329782724
  %i.fj = xor i64 %.val64, %i.fi
  %i.fk = sub i64 -6688317018830679928, %4
  %i.fl = xor i64 %.val63, %i.fk
  %i.fm = zext i64 %i.fj to i128
  %i.fn = zext i64 %i.fl to i128
  %i.fo = mul nuw i128 %i.fn, %i.fm               ; 2 uses
  %i.fp = lshr i128 %i.fo, 64
  %i.fq = xor i128 %i.fp, %i.fo
  %i.fr = trunc i128 %i.fq to i64
  %i.fs = add i64 %.sroa.015.0.i, %i.fr
  %.val60 = load i64, ptr %i.fg, align 1, !tbaa !27 ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %i.ff, i64 -40
  %.val59 = load i64, ptr %i.ft, align 1, !tbaa !27 ; 2 uses
  %i.fu = add i64 %.val59, %.val60
  %i.fv = xor i64 %i.fs, %i.fu
  %i.fw = add i64 %4, 5690594596133299313
  %i.fx = xor i64 %.val60, %i.fw
  %i.fy = sub i64 -2833645246901970632, %4
  %i.fz = xor i64 %.val59, %i.fy
  %i.ga = zext i64 %i.fx to i128
  %i.gb = zext i64 %i.fz to i128
  %i.gc = mul nuw i128 %i.gb, %i.ga               ; 2 uses
  %i.gd = lshr i128 %i.gc, 64
  %i.ge = xor i128 %i.gd, %i.gc
  %i.gf = trunc i128 %i.ge to i64
  %i.gg = add i64 %.sroa.13.0.i, %i.gf
  %i.gh = add i64 %.val63, %.val64
  %i.gi = xor i64 %i.gg, %i.gh
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sroa.015.1.i = phi i64 [ %i.fv, %bb.o ], [ %i.dw, %bb.l ]
  %.sroa.13.1.i = phi i64 [ %i.gi, %bb.o ], [ 0, %bb.l ]
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 -32
  %.val52 = load i64, ptr %i.gj, align 1, !tbaa !27 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val51 = load i64, ptr %i.gm, align 1, !tbaa !27 ; 2 uses
  %i.gn = add i64 %4, 8711581037947681227
  %i.go = xor i64 %.val52, %i.gn
  %i.gp = sub i64 2410270004345854594, %4
  %i.gq = xor i64 %.val51, %i.gp
  %i.gr = zext i64 %i.go to i128
  %i.gs = zext i64 %i.gq to i128
  %i.gt = mul nuw i128 %i.gs, %i.gr               ; 2 uses
  %i.gu = lshr i128 %i.gt, 64
  %i.gv = xor i128 %i.gu, %i.gt
  %i.gw = trunc i128 %i.gv to i64
  %i.gx = add i64 %.sroa.015.1.i, %i.gw
  %.val48 = load i64, ptr %i.gl, align 1, !tbaa !27 ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.gk, i64 -24
  %.val47 = load i64, ptr %i.gy, align 1, !tbaa !27 ; 2 uses
  %i.gz = add i64 %.val47, %.val48
  %i.ha = xor i64 %i.gx, %i.gz
  %i.hb = add i64 %4, -8204357891075471176
  %i.hc = xor i64 %.val48, %i.hb
  %i.hd = sub i64 5487137525590930912, %4
  %i.he = xor i64 %.val47, %i.hd
  %i.hf = zext i64 %i.hc to i128
  %i.hg = zext i64 %i.he to i128
  %i.hh = mul nuw i128 %i.hg, %i.hf               ; 2 uses
  %i.hi = lshr i128 %i.hh, 64
  %i.hj = xor i128 %i.hi, %i.hh
  %i.hk = trunc i128 %i.hj to i64
  %i.hl = add i64 %.sroa.13.1.i, %i.hk
  %i.hm = add i64 %.val51, %.val52
  %i.hn = xor i64 %i.hl, %i.hm
  br label %_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit

_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit:         ; preds = %bb.k, %bb.p
  %.sroa.015.2.i = phi i64 [ %i.ha, %bb.p ], [ %i.dw, %bb.k ]
  %.sroa.13.2.i = phi i64 [ %i.hn, %bb.p ], [ 0, %bb.k ]
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -16
  %.val40 = load i64, ptr %0, align 1, !tbaa !27  ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val39 = load i64, ptr %i.hq, align 1, !tbaa !27 ; 2 uses
  %i.hr = add i64 %4, -4734510112055689544
  %i.hs = xor i64 %.val40, %i.hr
  %i.ht = sub i64 2066345149520216444, %4
  %i.hu = xor i64 %.val39, %i.ht
  %i.hv = zext i64 %i.hs to i128
  %i.hw = zext i64 %i.hu to i128
  %i.hx = mul nuw i128 %i.hw, %i.hv               ; 2 uses
  %i.hy = lshr i128 %i.hx, 64
  %i.hz = xor i128 %i.hy, %i.hx
  %i.ia = trunc i128 %i.hz to i64
  %i.ib = add i64 %.sroa.015.2.i, %i.ia
  %.val36 = load i64, ptr %i.hp, align 1, !tbaa !27 ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %i.ho, i64 -8
  %.val35 = load i64, ptr %i.ic, align 1, !tbaa !27 ; 2 uses
  %i.id = add i64 %.val35, %.val36
  %i.ie = xor i64 %i.ib, %i.id                    ; 2 uses
  %i.if = add i64 %4, -2623469361688619810
  %i.ig = xor i64 %.val36, %i.if
  %i.ih = sub i64 2262974939099578482, %4
  %i.ii = xor i64 %.val35, %i.ih
  %i.ij = zext i64 %i.ig to i128
  %i.ik = zext i64 %i.ii to i128
  %i.il = mul nuw i128 %i.ik, %i.ij               ; 2 uses
  %i.im = lshr i128 %i.il, 64
  %i.in = xor i128 %i.im, %i.il
  %i.io = trunc i128 %i.in to i64
end_hunk_1
