Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/xxhash?download=true
inline.NumInlined: 910
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZL25XXH3_hashLong_64b_defaultPKvmmPKhm:bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 1024
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dj, i32 0, i32 3, i32 1)
  %i.dk = load <8 x i64>, ptr %i.di, align 1, !tbaa !21 ; 2 uses
  %i.dl = xor <8 x i64> %i.dk, <i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047> ; 2 uses
  %i.dm = lshr <8 x i64> %i.dl, splat (i64 32)
  %i.dn = and <8 x i64> %i.dl, splat (i64 4294967295)
  %i.do = mul nuw <8 x i64> %i.dn, %i.dm
  %i.dp = shufflevector <8 x i64> %i.dk, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.dq = add <8 x i64> %i.dh, %i.dp
  %i.dr = add <8 x i64> %i.dq, %i.do
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 768
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 1088
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dt, i32 0, i32 3, i32 1)
  %i.du = load <8 x i64>, ptr %i.ds, align 1, !tbaa !21 ; 2 uses
  %i.dv = xor <8 x i64> %i.du, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245> ; 2 uses
  %i.dw = lshr <8 x i64> %i.dv, splat (i64 32)
  %i.dx = and <8 x i64> %i.dv, splat (i64 4294967295)
  %i.dy = mul nuw <8 x i64> %i.dx, %i.dw
  %i.dz = shufflevector <8 x i64> %i.du, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ea = add <8 x i64> %i.dr, %i.dz
  %i.eb = add <8 x i64> %i.ea, %i.dy
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 1152
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ed, i32 0, i32 3, i32 1)
  %i.ee = load <8 x i64>, ptr %i.ec, align 1, !tbaa !21 ; 2 uses
  %i.ef = xor <8 x i64> %i.ee, <i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509> ; 2 uses
  %i.eg = lshr <8 x i64> %i.ef, splat (i64 32)
  %i.eh = and <8 x i64> %i.ef, splat (i64 4294967295)
  %i.ei = mul nuw <8 x i64> %i.eh, %i.eg
  %i.ej = shufflevector <8 x i64> %i.ee, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ek = add <8 x i64> %i.eb, %i.ej
  %i.el = add <8 x i64> %i.ek, %i.ei
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 896
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 1216
  tail call void @llvm.prefetch.p0(ptr nonnull %i.en, i32 0, i32 3, i32 1)
  %i.eo = load <8 x i64>, ptr %i.em, align 1, !tbaa !21 ; 2 uses
  %i.ep = xor <8 x i64> %i.eo, <i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737> ; 2 uses
  %i.eq = lshr <8 x i64> %i.ep, splat (i64 32)
  %i.er = and <8 x i64> %i.ep, splat (i64 4294967295)
  %i.es = mul nuw <8 x i64> %i.er, %i.eq
  %i.et = shufflevector <8 x i64> %i.eo, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.eu = add <8 x i64> %i.el, %i.et
  %i.ev = add <8 x i64> %i.eu, %i.es
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 960
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 1280
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ex, i32 0, i32 3, i32 1)
  %i.ey = load <8 x i64>, ptr %i.ew, align 1, !tbaa !21 ; 2 uses
  %i.ez = xor <8 x i64> %i.ey, <i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253> ; 2 uses
  %i.fa = lshr <8 x i64> %i.ez, splat (i64 32)
  %i.fb = and <8 x i64> %i.ez, splat (i64 4294967295)
  %i.fc = mul nuw <8 x i64> %i.fb, %i.fa
  %i.fd = shufflevector <8 x i64> %i.ey, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fe = add <8 x i64> %i.ev, %i.fd
  %i.ff = add <8 x i64> %i.fe, %i.fc              ; 2 uses
  %i.fg = lshr <8 x i64> %i.ff, splat (i64 47)
  %i.fh = bitcast <8 x i64> %i.ff to <16 x i32>
  %i.fi = bitcast <8 x i64> %i.fg to <16 x i32>
  %i.fj = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> <i32 -2085829142, i32 -1007955148, i32 -6258235, i32 -345828358, i32 1373441303, i32 1239085239, i32 643110611, i32 -1637297111, i32 1488852523, i32 -56539267, i32 -776406897, i32 -835596166, i32 -1891972283, i32 671356565, i32 -889464913, i32 2118142907>, <16 x i32> %i.fh, <16 x i32> %i.fi, i32 150) ; 2 uses
  %i.fk = bitcast <16 x i32> %i.fj to <8 x i64>
  %i.fl = lshr <8 x i64> %i.fk, splat (i64 32)
  %i.fm = bitcast <16 x i32> %i.fj to <8 x i64>
  %i.fn = and <8 x i64> %i.fm, splat (i64 4294967295)
  %i.fo = mul nuw <8 x i64> %i.fn, splat (i64 2654435761)
  %i.fp = mul <8 x i64> %i.fl, splat (i64 -7046029290881679360)
  %i.fq = add <8 x i64> %i.fo, %i.fp              ; 2 uses
  %i.fr = add nuw nsw i64 %.0.i8, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.fr, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi <8 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %bb.a ], [ %i.fq, %.lr.ph ] ; 3 uses
  %i.fs = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = and i64 %i.a, -1024
  %i.fu = lshr i64 %i.a, 6                        ; 3 uses
  %i.fv = and i64 %i.fu, 15
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 %i.ft ; 3 uses
  switch i64 %i.fv, label %.lr.ph12.preheader.new [
    i64 0, label %_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit
    i64 1, label %.lr.ph12.epil.preheader
  ]

.lr.ph12.preheader.new:                           ; preds = %._crit_edge
  %unroll_iter = and i64 %i.fu, 14
  br label %.lr.ph12

.lr.ph12:                                         ; preds = %.lr.ph12, %.lr.ph12.preheader.new
  %.0.i.i10 = phi i64 [ 0, %.lr.ph12.preheader.new ], [ %i.ha, %.lr.ph12 ] ; 4 uses
  %.sroa.0.29 = phi <8 x i64> [ %.sroa.0.0.lcssa, %.lr.ph12.preheader.new ], [ %i.gz, %.lr.ph12 ]
  %niter = phi i64 [ 0, %.lr.ph12.preheader.new ], [ %niter.next.1, %.lr.ph12 ]
  %i.fx = shl nuw nsw i64 %.0.i.i10, 6
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fz, i32 0, i32 3, i32 1)
  %i.ga = shl nuw nsw i64 %.0.i.i10, 3
  %i.gb = getelementptr inbounds nuw i8, ptr @_ZL12XXH3_kSecret, i64 %i.ga
  %i.gc = load <8 x i64>, ptr %i.fy, align 1, !tbaa !21 ; 2 uses
  %i.gd = load <8 x i64>, ptr %i.gb, align 16, !tbaa !21
  %i.ge = xor <8 x i64> %i.gd, %i.gc              ; 2 uses
  %i.gf = lshr <8 x i64> %i.ge, splat (i64 32)
  %i.gg = and <8 x i64> %i.ge, splat (i64 4294967295)
  %i.gh = mul nuw <8 x i64> %i.gg, %i.gf
  %i.gi = shufflevector <8 x i64> %i.gc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.gj = add <8 x i64> %.sroa.0.29, %i.gi
  %i.gk = add <8 x i64> %i.gj, %i.gh
  %i.gl = or disjoint i64 %.0.i.i10, 1            ; 2 uses
  %i.gm = shl nuw nsw i64 %i.gl, 6
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.go, i32 0, i32 3, i32 1)
  %i.gp = shl nuw nsw i64 %i.gl, 3
  %i.gq = getelementptr inbounds nuw i8, ptr @_ZL12XXH3_kSecret, i64 %i.gp
  %i.gr = load <8 x i64>, ptr %i.gn, align 1, !tbaa !21 ; 2 uses
  %i.gs = load <8 x i64>, ptr %i.gq, align 8, !tbaa !21
  %i.gt = xor <8 x i64> %i.gs, %i.gr              ; 2 uses
  %i.gu = lshr <8 x i64> %i.gt, splat (i64 32)
  %i.gv = and <8 x i64> %i.gt, splat (i64 4294967295)
  %i.gw = mul nuw <8 x i64> %i.gv, %i.gu
  %i.gx = shufflevector <8 x i64> %i.gr, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.gy = add <8 x i64> %i.gk, %i.gx
  %i.gz = add <8 x i64> %i.gy, %i.gw              ; 3 uses
  %i.ha = add nuw nsw i64 %.0.i.i10, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, label %.lr.ph12, !llvm.loop !5

_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph12
  %i.hb = and i64 %i.a, 64
  %lcmp.mod.not = icmp eq i64 %i.hb, 0
  br i1 %lcmp.mod.not, label %_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, label %.lr.ph12.epil.preheader

.lr.ph12.epil.preheader:                          ; preds = %._crit_edge, %_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa
  %.0.i.i10.epil.init = phi i64 [ 0, %._crit_edge ], [ %i.ha, %_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.29.epil.init = phi <8 x i64> [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.gz, %_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.fu to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.hc = shl nuw nsw i64 %.0.i.i10.epil.init, 6
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.hc ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.he, i32 0, i32 3, i32 1)
  %i.hf = shl nuw nsw i64 %.0.i.i10.epil.init, 3
  %i.hg = getelementptr inbounds nuw i8, ptr @_ZL12XXH3_kSecret, i64 %i.hf
  %i.hh = load <8 x i64>, ptr %i.hd, align 1, !tbaa !21 ; 2 uses
  %i.hi = load <8 x i64>, ptr %i.hg, align 8, !tbaa !21
  %i.hj = xor <8 x i64> %i.hi, %i.hh              ; 2 uses
  %i.hk = lshr <8 x i64> %i.hj, splat (i64 32)
  %i.hl = and <8 x i64> %i.hj, splat (i64 4294967295)
  %i.hm = mul nuw <8 x i64> %i.hl, %i.hk
  %i.hn = shufflevector <8 x i64> %i.hh, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ho = add <8 x i64> %.sroa.0.29.epil.init, %i.hn
  %i.hp = add <8 x i64> %i.ho, %i.hm
  br label %_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit

_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit: ; preds = %.lr.ph12.epil.preheader, %_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, %._crit_edge
  %.sroa.0.2.lcssa = phi <8 x i64> [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.gz, %_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ], [ %i.hp, %.lr.ph12.epil.preheader ]
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -64
  %i.hs = load <8 x i64>, ptr %i.hr, align 1, !tbaa !21 ; 2 uses
  %i.ht = xor <8 x i64> %i.hs, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491, i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077> ; 2 uses
  %i.hu = lshr <8 x i64> %i.ht, splat (i64 32)
  %i.hv = and <8 x i64> %i.ht, splat (i64 4294967295)
  %i.hw = mul nuw <8 x i64> %i.hv, %i.hu
  %i.hx = shufflevector <8 x i64> %i.hs, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.hy = add <8 x i64> %.sroa.0.2.lcssa, %i.hx
  %i.hz = add <8 x i64> %i.hy, %i.hw              ; 2 uses
  %i.ia = mul i64 %1, -7046029288634856825
  %i.ib = shufflevector <8 x i64> %i.hz, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ic = xor <4 x i64> %i.ib, <i64 7914194659941938988, i64 -1839215637059881052, i64 5046485836271438973, i64 5920048007935066598>
  %i.id = shufflevector <8 x i64> %i.hz, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ie = xor <4 x i64> %i.id, <i64 -6611157965513653271, i64 -3433288310154277810, i64 -8055285457383852172, i64 7336514198459093435>
  %i.if = zext <4 x i64> %i.ic to <4 x i128>
  %i.ig = zext <4 x i64> %i.ie to <4 x i128>
  %i.ih = mul nuw <4 x i128> %i.ig, %i.if         ; 2 uses
  %i.ii = lshr <4 x i128> %i.ih, splat (i128 64)
  %i.ij = xor <4 x i128> %i.ii, %i.ih
  %i.ik = trunc <4 x i128> %i.ij to <4 x i64>
  %i.il = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ik)
  %op.rdx = add i64 %i.il, %i.ia                  ; 2 uses
  %i.im = lshr i64 %op.rdx, 37
  %i.in = xor i64 %i.im, %op.rdx
  %i.io = mul i64 %i.in, 1609587791953885689      ; 2 uses
  %i.ip = lshr i64 %i.io, 32
  %i.iq = xor i64 %i.ip, %i.io
  ret i64 %i.iq
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define i64 @ROCKSDB_XXH3_64bits_withSecret(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp ugt i64 %3, 135
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i64 %1, 17
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 8
  br i1 %i.c, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0), "nonnull"(ptr %2) ]
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val48 = load i64, ptr %i.d, align 1, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val47 = load i64, ptr %i.e, align 1, !tbaa !27
  %i.f = xor i64 %.val47, %.val48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val46 = load i64, ptr %i.g, align 1, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val45 = load i64, ptr %i.h, align 1, !tbaa !27
  %i.i = xor i64 %.val45, %.val46
  %.val44 = load i64, ptr %0, align 1, !tbaa !27
  %i.j = xor i64 %i.f, %.val44                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %.val43 = load i64, ptr %i.l, align 1, !tbaa !27
  %i.m = xor i64 %i.i, %.val43                    ; 2 uses
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.j)
  %i.o = add i64 %i.n, %1
  %i.p = add i64 %i.o, %i.m
  %i.q = zext i64 %i.j to i128
  %i.r = zext i64 %i.m to i128
  %i.s = mul nuw i128 %i.r, %i.q                  ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = xor i128 %i.t, %i.s
  %i.v = trunc i128 %i.u to i64
  %i.w = add i64 %i.p, %i.v                       ; 2 uses
  %i.x = lshr i64 %i.w, 37
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, 1609587791953885689        ; 2 uses
  %i.aa = lshr i64 %i.z, 32
  %i.ab = xor i64 %i.aa, %i.z
  br label %_ZL20XXH3_64bits_internalPKvmmS0_mPFmS0_mmPKhmE.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = icmp samesign ugt i64 %1, 3
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !30

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0), "nonnull"(ptr %2) ]
  %.val8 = load i32, ptr %0, align 1, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %.val7 = load i32, ptr %i.ae, align 1, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val42 = load i64, ptr %i.af, align 1, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val41 = load i64, ptr %i.ag, align 1, !tbaa !27
  %i.ah = xor i64 %.val41, %.val42
  %i.ai = zext i32 %.val7 to i64
  %i.aj = zext i32 %.val8 to i64
  %i.ak = shl nuw i64 %i.aj, 32
  %i.al = or disjoint i64 %i.ak, %i.ai
  %i.am = xor i64 %i.ah, %i.al                    ; 5 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 49)
  %i.ao = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 24)
  %i.ap = xor i64 %i.an, %i.ao
  %i.aq = xor i64 %i.ap, %i.am
  %i.ar = mul i64 %i.aq, -6939452855193903323     ; 2 uses
  %i.as = lshr i64 %i.ar, 35
  %i.at = add nuw nsw i64 %i.as, %1
  %i.au = xor i64 %i.at, %i.ar
  %i.av = mul i64 %i.au, -6939452855193903323     ; 2 uses
  %i.aw = lshr i64 %i.av, 28
  %i.ax = xor i64 %i.aw, %i.av
  br label %_ZL20XXH3_64bits_internalPKvmmS0_mPFmS0_mmPKhmE.exit

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0), "nonnull"(ptr %2) ]
  %i.ay = load i8, ptr %0, align 1, !tbaa !21
  %i.az = lshr i64 %1, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !21
  %i.bc = getelementptr i8, ptr %0, i64 %1
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !21
  %i.bf = zext i8 %i.ay to i64
  %i.bg = shl nuw nsw i64 %i.bf, 16
  %i.bh = zext i8 %i.bb to i64
  %i.bi = shl nuw nsw i64 %i.bh, 24
  %i.bj = or disjoint i64 %i.bi, %i.bg
  %i.bk = zext i8 %i.be to i64
  %i.bl = or disjoint i64 %i.bj, %i.bk
  %i.bm = shl nuw nsw i64 %1, 8
  %i.bn = or disjoint i64 %i.bl, %i.bm
  %.val6 = load i32, ptr %2, align 1, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val = load i32, ptr %i.bo, align 1, !tbaa !17
  %i.bp = xor i32 %.val, %.val6
  %i.bq = zext i32 %i.bp to i64
  %i.br = xor i64 %i.bn, %i.bq
  %i.bs = mul i64 %i.br, -4417276706812531889     ; 2 uses
  %i.bt = lshr i64 %i.bs, 29
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = mul i64 %i.bu, 1609587929392839161      ; 2 uses
  %i.bw = lshr i64 %i.bv, 32
  %i.bx = xor i64 %i.bw, %i.bv
  br label %_ZL20XXH3_64bits_internalPKvmmS0_mPFmS0_mmPKhmE.exit

bb.h:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val50 = load i64, ptr %i.by, align 1, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.val49 = load i64, ptr %i.bz, align 1, !tbaa !27
  %i.ca = xor i64 %.val49, %.val50                ; 2 uses
  %i.cb = lshr i64 %i.ca, 33
  %i.cc = xor i64 %i.cb, %i.ca
  %i.cd = mul i64 %i.cc, -4417276706812531889     ; 2 uses
  %i.ce = lshr i64 %i.cd, 29
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = mul i64 %i.cf, 1609587929392839161      ; 2 uses
  %i.ch = lshr i64 %i.cg, 32
  %i.ci = xor i64 %i.ch, %i.cg
  br label %_ZL20XXH3_64bits_internalPKvmmS0_mPFmS0_mmPKhmE.exit

bb.i:                                             ; preds = %bb.a
  %i.cj = icmp ult i64 %1, 129
  br i1 %i.cj, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ck = mul i64 %1, -7046029288634856825
  %i.cl = load <2 x i64>, ptr %0, align 1, !tbaa !27
  %i.cm = load <2 x i64>, ptr %2, align 1, !tbaa !27
  %i.cn = xor <2 x i64> %i.cm, %i.cl              ; 2 uses
  %i.co = extractelement <2 x i64> %i.cn, i64 0
  %i.cp = zext i64 %i.co to i128
  %i.cq = extractelement <2 x i64> %i.cn, i64 1
  %i.cr = zext i64 %i.cq to i128
  %i.cs = mul nuw i128 %i.cr, %i.cp               ; 2 uses
  %i.ct = lshr i128 %i.cs, 64
  %i.cu = xor i128 %i.ct, %i.cs
  %i.cv = trunc i128 %i.cu to i64
  %i.cw = add i64 %i.ck, %i.cv                    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -16
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.da = load <2 x i64>, ptr %i.cy, align 1, !tbaa !27
  %i.db = load <2 x i64>, ptr %i.cz, align 1, !tbaa !27
  %i.dc = xor <2 x i64> %i.db, %i.da              ; 2 uses
  %i.dd = extractelement <2 x i64> %i.dc, i64 0
  %i.de = zext i64 %i.dd to i128
  %i.df = extractelement <2 x i64> %i.dc, i64 1
  %i.dg = zext i64 %i.df to i128
  %i.dh = mul nuw i128 %i.dg, %i.de               ; 2 uses
  %i.di = lshr i128 %i.dh, 64
  %i.dj = xor i128 %i.di, %i.dh
  %i.dk = trunc i128 %i.dj to i64                 ; 2 uses
  %i.dl = icmp samesign ugt i64 %1, 32
  br i1 %i.dl, label %bb.k, label %_ZL20XXH3_len_17to128_64bPKhmS0_mm.exit

bb.k:                                             ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.do = load <2 x i64>, ptr %i.dm, align 1, !tbaa !27
  %i.dp = load <2 x i64>, ptr %i.dn, align 1, !tbaa !27
  %i.dq = xor <2 x i64> %i.dp, %i.do              ; 2 uses
  %i.dr = extractelement <2 x i64> %i.dq, i64 0
  %i.ds = zext i64 %i.dr to i128
  %i.dt = extractelement <2 x i64> %i.dq, i64 1
  %i.du = zext i64 %i.dt to i128
  %i.dv = mul nuw i128 %i.du, %i.ds               ; 2 uses
  %i.dw = lshr i128 %i.dv, 64
  %i.dx = xor i128 %i.dw, %i.dv
  %i.dy = trunc i128 %i.dx to i64
  %i.dz = add i64 %i.cw, %i.dy                    ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.cx, i64 -32
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ec = load <2 x i64>, ptr %i.ea, align 1, !tbaa !27
  %i.ed = load <2 x i64>, ptr %i.eb, align 1, !tbaa !27
  %i.ee = xor <2 x i64> %i.ed, %i.ec              ; 2 uses
  %i.ef = extractelement <2 x i64> %i.ee, i64 0
  %i.eg = zext i64 %i.ef to i128
  %i.eh = extractelement <2 x i64> %i.ee, i64 1
  %i.ei = zext i64 %i.eh to i128
  %i.ej = mul nuw i128 %i.ei, %i.eg               ; 2 uses
  %i.ek = lshr i128 %i.ej, 64
  %i.el = xor i128 %i.ek, %i.ej
  %i.em = trunc i128 %i.el to i64
  %i.en = add i64 %i.em, %i.dk                    ; 2 uses
  %i.eo = icmp samesign ugt i64 %1, 64
  br i1 %i.eo, label %bb.l, label %_ZL20XXH3_len_17to128_64bPKhmS0_mm.exit

bb.l:                                             ; preds = %bb.k
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.er = load <2 x i64>, ptr %i.ep, align 1, !tbaa !27
  %i.es = load <2 x i64>, ptr %i.eq, align 1, !tbaa !27
  %i.et = xor <2 x i64> %i.es, %i.er              ; 2 uses
  %i.eu = extractelement <2 x i64> %i.et, i64 0
  %i.ev = zext i64 %i.eu to i128
  %i.ew = extractelement <2 x i64> %i.et, i64 1
  %i.ex = zext i64 %i.ew to i128
  %i.ey = mul nuw i128 %i.ex, %i.ev               ; 2 uses
  %i.ez = lshr i128 %i.ey, 64
  %i.fa = xor i128 %i.ez, %i.ey
  %i.fb = trunc i128 %i.fa to i64
  %i.fc = add i64 %i.dz, %i.fb                    ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.cx, i64 -48
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ff = load <2 x i64>, ptr %i.fd, align 1, !tbaa !27
  %i.fg = load <2 x i64>, ptr %i.fe, align 1, !tbaa !27
  %i.fh = xor <2 x i64> %i.fg, %i.ff              ; 2 uses
  %i.fi = extractelement <2 x i64> %i.fh, i64 0
  %i.fj = zext i64 %i.fi to i128
  %i.fk = extractelement <2 x i64> %i.fh, i64 1
  %i.fl = zext i64 %i.fk to i128
  %i.fm = mul nuw i128 %i.fl, %i.fj               ; 2 uses
  %i.fn = lshr i128 %i.fm, 64
  %i.fo = xor i128 %i.fn, %i.fm
  %i.fp = trunc i128 %i.fo to i64
  %i.fq = add i64 %i.en, %i.fp                    ; 2 uses
  %i.fr = icmp samesign ugt i64 %1, 96
  br i1 %i.fr, label %bb.m, label %_ZL20XXH3_len_17to128_64bPKhmS0_mm.exit

bb.m:                                             ; preds = %bb.l
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.fu = load <2 x i64>, ptr %i.fs, align 1, !tbaa !27
  %i.fv = load <2 x i64>, ptr %i.ft, align 1, !tbaa !27
  %i.fw = xor <2 x i64> %i.fv, %i.fu              ; 2 uses
  %i.fx = extractelement <2 x i64> %i.fw, i64 0
  %i.fy = zext i64 %i.fx to i128
  %i.fz = extractelement <2 x i64> %i.fw, i64 1
  %i.ga = zext i64 %i.fz to i128
  %i.gb = mul nuw i128 %i.ga, %i.fy               ; 2 uses
  %i.gc = lshr i128 %i.gb, 64
  %i.gd = xor i128 %i.gc, %i.gb
  %i.ge = trunc i128 %i.gd to i64
  %i.gf = add i64 %i.fc, %i.ge
  %i.gg = getelementptr inbounds i8, ptr %i.cx, i64 -64
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.gi = load <2 x i64>, ptr %i.gg, align 1, !tbaa !27
  %i.gj = load <2 x i64>, ptr %i.gh, align 1, !tbaa !27
  %i.gk = xor <2 x i64> %i.gj, %i.gi              ; 2 uses
  %i.gl = extractelement <2 x i64> %i.gk, i64 0
  %i.gm = zext i64 %i.gl to i128
  %i.gn = extractelement <2 x i64> %i.gk, i64 1
  %i.go = zext i64 %i.gn to i128
  %i.gp = mul nuw i128 %i.go, %i.gm               ; 2 uses
  %i.gq = lshr i128 %i.gp, 64
  %i.gr = xor i128 %i.gq, %i.gp
  %i.gs = trunc i128 %i.gr to i64
  %i.gt = add i64 %i.fq, %i.gs
  br label %_ZL20XXH3_len_17to128_64bPKhmS0_mm.exit

_ZL20XXH3_len_17to128_64bPKhmS0_mm.exit:          ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.044.i = phi i64 [ %i.gf, %bb.m ], [ %i.fc, %bb.l ], [ %i.dz, %bb.k ], [ %i.cw, %bb.j ]
  %.0.i4 = phi i64 [ %i.gt, %bb.m ], [ %i.fq, %bb.l ], [ %i.en, %bb.k ], [ %i.dk, %bb.j ]
  %i.gu = add i64 %.0.i4, %.044.i                 ; 2 uses
  %i.gv = lshr i64 %i.gu, 37
  %i.gw = xor i64 %i.gv, %i.gu
  %i.gx = mul i64 %i.gw, 1609587791953885689      ; 2 uses
  %i.gy = lshr i64 %i.gx, 32
  %i.gz = xor i64 %i.gy, %i.gx
  br label %_ZL20XXH3_64bits_internalPKvmmS0_mPFmS0_mmPKhmE.exit

bb.n:                                             ; preds = %bb.i
  %i.ha = icmp ult i64 %1, 241
  br i1 %i.ha, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hb = tail call fastcc noundef i64 @_ZL21XXH3_len_129to240_64bPKhmS0_mm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 0) #34
  br label %_ZL20XXH3_64bits_internalPKvmmS0_mPFmS0_mmPKhmE.exit

bb.p:                                             ; preds = %bb.n
  %i.hc = add i64 %3, -64
  %i.hd = lshr i64 %i.hc, 3                       ; 4 uses
  %i.he = shl i64 %i.hd, 6                        ; 5 uses
  %i.hf = add i64 %1, -1                          ; 3 uses
end_hunk_0
begin_hunk_1_@ROCKSDB_XXH3_64bits_withSecretandSeed:bb.a
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 %i.kw
  %i.ky = load <8 x i64>, ptr %i.ku, align 1, !tbaa !21 ; 2 uses
  %i.kz = load <8 x i64>, ptr %i.kx, align 1, !tbaa !21
  %i.la = xor <8 x i64> %i.kz, %i.ky              ; 2 uses
  %i.lb = lshr <8 x i64> %i.la, splat (i64 32)
  %i.lc = and <8 x i64> %i.la, splat (i64 4294967295)
  %i.ld = mul nuw <8 x i64> %i.lc, %i.lb
  %i.le = shufflevector <8 x i64> %i.ky, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.lf = add <8 x i64> %.sroa.0.167.epil.init, %i.le
  %i.lg = add <8 x i64> %i.lf, %i.ld
  br label %_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit

_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit: ; preds = %.lr.ph.epil.preheader, %_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, %._crit_edge
  %.sroa.0.1.lcssa = phi <8 x i64> [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.kq, %_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ], [ %i.lg, %.lr.ph.epil.preheader ]
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 -64
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 -71
  %i.ll = load <8 x i64>, ptr %i.li, align 1, !tbaa !21 ; 2 uses
  %i.lm = load <8 x i64>, ptr %i.lk, align 1, !tbaa !21
  %i.ln = xor <8 x i64> %i.lm, %i.ll              ; 2 uses
  %i.lo = lshr <8 x i64> %i.ln, splat (i64 32)
  %i.lp = and <8 x i64> %i.ln, splat (i64 4294967295)
  %i.lq = mul nuw <8 x i64> %i.lp, %i.lo
  %i.lr = shufflevector <8 x i64> %i.ll, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ls = add <8 x i64> %.sroa.0.1.lcssa, %i.lr
  %i.lt = add <8 x i64> %i.ls, %i.lq              ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.lv = mul i64 %1, -7046029288634856825
  %i.lw = load <8 x i64>, ptr %i.lu, align 1, !tbaa !27 ; 2 uses
  %i.lx = shufflevector <8 x i64> %i.lt, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ly = shufflevector <8 x i64> %i.lw, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.lz = xor <4 x i64> %i.lx, %i.ly
  %i.ma = shufflevector <8 x i64> %i.lt, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.mb = shufflevector <8 x i64> %i.lw, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.mc = xor <4 x i64> %i.ma, %i.mb
  %i.md = zext <4 x i64> %i.lz to <4 x i128>
  %i.me = zext <4 x i64> %i.mc to <4 x i128>
  %i.mf = mul nuw <4 x i128> %i.me, %i.md         ; 2 uses
  %i.mg = lshr <4 x i128> %i.mf, splat (i128 64)
  %i.mh = xor <4 x i128> %i.mg, %i.mf
  %i.mi = trunc <4 x i128> %i.mh to <4 x i64>
  %i.mj = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.mi)
  %op.rdx = add i64 %i.mj, %i.lv                  ; 2 uses
  %i.mk = lshr i64 %op.rdx, 37
  %i.ml = xor i64 %i.mk, %op.rdx
  %i.mm = mul i64 %i.ml, 1609587791953885689      ; 2 uses
  %i.mn = lshr i64 %i.mm, 32
  %i.mo = xor i64 %i.mn, %i.mm
  br label %_ZL20XXH3_64bits_internalPKvmmS0_mPFmS0_mmPKhmE.exit

_ZL20XXH3_64bits_internalPKvmmS0_mPFmS0_mmPKhmE.exit: ; preds = %bb.o, %_ZL20XXH3_len_17to128_64bPKhmS0_mm.exit, %bb.d, %bb.f, %bb.h, %bb.i, %_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit
  %.0 = phi i64 [ %i.mo, %_ZL27XXH3_hashLong_internal_loopPmPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ], [ %i.cf, %bb.i ], [ %i.gp, %_ZL20XXH3_len_17to128_64bPKhmS0_mm.exit ], [ %i.gq, %bb.o ], [ %i.x, %bb.d ], [ %i.aw, %bb.f ], [ %i.bw, %bb.h ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias ptr @ROCKSDB_XXH3_createState() local_unnamed_addr #16 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(640) ptr @malloc(i64 noundef 640) #33 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZL17XXH_alignedMallocmm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 63
  %i.d = sub nuw nsw i64 64, %i.c                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.e, i64 64) ]
  %i.f = trunc nuw nsw i64 %i.d to i8
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 552
  store i64 0, ptr %i.h, align 8, !tbaa !34
  br label %_ZL17XXH_alignedMallocmm.exit.thread

_ZL17XXH_alignedMallocmm.exit.thread:             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i32 @ROCKSDB_XXH3_freeState(ptr noundef captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL15XXH_alignedFreePv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21
  %i.c = zext i8 %i.b to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  tail call void @free(ptr noundef nonnull %i.e) #32
  br label %_ZL15XXH_alignedFreePv.exit

_ZL15XXH_alignedFreePv.exit:                      ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ROCKSDB_XXH3_copyState(ptr nofree noundef writeonly captures(none) initializes((0, 576)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(576) %0, ptr noundef nonnull readonly align 1 dereferenceable(576) %1, i64 576, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_64bits_reset(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.c, align 32, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr @_ZL12XXH3_kSecret, ptr %i.e, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %i.f, align 32, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %i.g, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_64bits_reset_withSecret(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.c, align 32, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %1, ptr %i.e, align 8, !tbaa !35
  %i.f = icmp ugt i64 %2, 135
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add i64 %2, -64                          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.g, ptr %i.h, align 32, !tbaa !36
  %i.i = lshr i64 %i.g, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.i, ptr %i.j, align 8, !tbaa !37
  %i.k = icmp eq ptr %1, null
  %spec.select = zext i1 %i.k to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_64bits_reset_withSeed(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %ROCKSDB_XXH3_64bits_reset.exit, label %bb.c

ROCKSDB_XXH3_64bits_reset.exit:                   ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.d, align 32, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %i.e, align 8, !tbaa !34
  br label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !34
  %.not = icmp eq i64 %1, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %.not12 = icmp eq ptr %i.i, null
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = insertelement <8 x i64> poison, i64 %1, i64 0
  %i.k = shufflevector <8 x i64> %i.j, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.l = sub <8 x i64> <i64 poison, i64 0, i64 poison, i64 0, i64 poison, i64 0, i64 poison, i64 0>, %i.k
  %i.m = shufflevector <8 x i64> %i.k, <8 x i64> %i.l, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 3 uses
  %i.n = add <8 x i64> %i.m, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  store <8 x i64> %i.n, ptr %2, align 64, !tbaa !21
  %i.o = add <8 x i64> %i.m, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %i.o, ptr %i.p, align 64, !tbaa !21
  %i.q = add <8 x i64> %i.m, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <8 x i64> %i.q, ptr %i.r, align 64, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.t, align 32, !tbaa !27
  store i64 %1, ptr %i.f, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 1, ptr %i.u, align 4, !tbaa !38
  br label %.sink.split

.sink.split:                                      ; preds = %ROCKSDB_XXH3_64bits_reset.exit, %bb.f
  %.sink = phi ptr [ null, %bb.f ], [ @_ZL12XXH3_kSecret, %ROCKSDB_XXH3_64bits_reset.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %.sink, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %i.w, align 32, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %i.x, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_64bits_reset_withSecretandSeed(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp ult i64 %2, 136
  %or.cond11 = or i1 %or.cond, %i.c
  br i1 %or.cond11, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.e, align 32, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %3, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %1, ptr %i.h, align 8, !tbaa !35
  %i.i = add i64 %2, -64                          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.i, ptr %i.j, align 32, !tbaa !36
  %i.k = lshr i64 %i.i, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.k, ptr %i.l, align 8, !tbaa !37
  store i32 1, ptr %i.g, align 4, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef i32 @ROCKSDB_XXH3_64bits_update(ptr nofree noundef captures(address) %0, ptr noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %i.b)
  br label %_ZL11XXH3_updateP12XXH3_state_sPKhmPFvPmS2_S2_mEPFvPvPKvE.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = select i1 %i.f, ptr %i.g, ptr %i.e       ; 18 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.j = load i64, ptr %i.i, align 16, !tbaa !39
  %i.k = add i64 %i.j, %2
  store i64 %i.k, ptr %i.i, align 16, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.m = load i32, ptr %i.l, align 64, !tbaa !40  ; 4 uses
  %i.n = icmp ult i32 %i.m, 257
  tail call void @llvm.assume(i1 %i.n)
  %i.o = zext nneg i32 %i.m to i64                ; 3 uses
  %i.p = add i64 %2, %i.o
  %i.q = icmp ult i64 %i.p, 257
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.t = trunc i64 %2 to i32
  %i.u = load i32, ptr %i.l, align 64, !tbaa !40
  %i.v = add i32 %i.u, %i.t
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 536
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !37
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.w = sub nuw nsw i32 256, %i.m
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %1, i64 %i.x, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !37 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.af = load i64, ptr %i.ae, align 32, !tbaa !36
  %i.ag = icmp ugt i64 %i.ad, 3
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !27 ; 5 uses
  %i.ai = icmp ult i64 %i.ah, %i.ad
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = sub nuw i64 %i.ad, %i.ah                ; 7 uses
  %.not.i8 = icmp ugt i64 %i.aj, 4
  %i.ak = shl i64 %i.ah, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ak ; 8 uses
  %.promoted21 = load <8 x i64>, ptr %0, align 64, !tbaa !21 ; 2 uses
  br i1 %.not.i8, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15, label %.preheader85

.preheader85:                                     ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %i.am, i32 0, i32 3, i32 1)
  %i.an = load <8 x i64>, ptr %i.y, align 64, !tbaa !21 ; 2 uses
  %i.ao = load <8 x i64>, ptr %i.al, align 1, !tbaa !21
  %i.ap = xor <8 x i64> %i.ao, %i.an              ; 2 uses
  %i.aq = lshr <8 x i64> %i.ap, splat (i64 32)
  %i.ar = and <8 x i64> %i.ap, splat (i64 4294967295)
  %i.as = mul nuw <8 x i64> %i.ar, %i.aq
  %i.at = shufflevector <8 x i64> %i.an, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.au = add <8 x i64> %.promoted21, %i.at
  %i.av = add <8 x i64> %i.au, %i.as              ; 3 uses
  store <8 x i64> %i.av, ptr %0, align 64, !tbaa !21
  %exitcond.not = icmp eq i64 %i.aj, 1
  br i1 %exitcond.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, label %.preheader85.1

.preheader85.1:                                   ; preds = %.preheader85
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ax, i32 0, i32 3, i32 1)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.az = load <8 x i64>, ptr %i.aw, align 64, !tbaa !21 ; 2 uses
  %i.ba = load <8 x i64>, ptr %i.ay, align 1, !tbaa !21
  %i.bb = xor <8 x i64> %i.ba, %i.az              ; 2 uses
  %i.bc = lshr <8 x i64> %i.bb, splat (i64 32)
  %i.bd = and <8 x i64> %i.bb, splat (i64 4294967295)
  %i.be = mul nuw <8 x i64> %i.bd, %i.bc
  %i.bf = shufflevector <8 x i64> %i.az, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.bg = add <8 x i64> %i.av, %i.bf
  %i.bh = add <8 x i64> %i.bg, %i.be              ; 3 uses
  store <8 x i64> %i.bh, ptr %0, align 64, !tbaa !21
  %exitcond.not.1 = icmp eq i64 %i.aj, 2
  br i1 %exitcond.not.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, label %.preheader85.2

.preheader85.2:                                   ; preds = %.preheader85.1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bj, i32 0, i32 3, i32 1)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bl = load <8 x i64>, ptr %i.bi, align 64, !tbaa !21 ; 2 uses
  %i.bm = load <8 x i64>, ptr %i.bk, align 1, !tbaa !21
  %i.bn = xor <8 x i64> %i.bm, %i.bl              ; 2 uses
  %i.bo = lshr <8 x i64> %i.bn, splat (i64 32)
  %i.bp = and <8 x i64> %i.bn, splat (i64 4294967295)
  %i.bq = mul nuw <8 x i64> %i.bp, %i.bo
  %i.br = shufflevector <8 x i64> %i.bl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.bs = add <8 x i64> %i.bh, %i.br
  %i.bt = add <8 x i64> %i.bs, %i.bq              ; 3 uses
  store <8 x i64> %i.bt, ptr %0, align 64, !tbaa !21
  %exitcond.not.2 = icmp eq i64 %i.aj, 3
  br i1 %exitcond.not.2, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, label %.preheader85.3

.preheader85.3:                                   ; preds = %.preheader85.2
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bv, i32 0, i32 3, i32 1)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bx = load <8 x i64>, ptr %i.bu, align 64, !tbaa !21 ; 2 uses
  %i.by = load <8 x i64>, ptr %i.bw, align 1, !tbaa !21
  %i.bz = xor <8 x i64> %i.by, %i.bx              ; 2 uses
  %i.ca = lshr <8 x i64> %i.bz, splat (i64 32)
  %i.cb = and <8 x i64> %i.bz, splat (i64 4294967295)
  %i.cc = mul nuw <8 x i64> %i.cb, %i.ca
  %i.cd = shufflevector <8 x i64> %i.bx, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ce = add <8 x i64> %i.bt, %i.cd
  %i.cf = add <8 x i64> %i.ce, %i.cc              ; 2 uses
  store <8 x i64> %i.cf, ptr %0, align 64, !tbaa !21
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10:  ; preds = %.preheader85.3, %.preheader85.2, %.preheader85.1, %.preheader85
  %.lcssa102 = phi <8 x i64> [ %i.av, %.preheader85 ], [ %i.bh, %.preheader85.1 ], [ %i.bt, %.preheader85.2 ], [ %i.cf, %.preheader85.3 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.cg = sub nsw i64 4, %i.aj                    ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.af
  %i.ci = lshr <8 x i64> %.lcssa102, splat (i64 47)
  %i.cj = load <16 x i32>, ptr %i.ch, align 1, !tbaa !21
  %i.ck = bitcast <8 x i64> %.lcssa102 to <16 x i32>
  %i.cl = bitcast <8 x i64> %i.ci to <16 x i32>
  %i.cm = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cj, <16 x i32> %i.ck, <16 x i32> %i.cl, i32 150) ; 2 uses
  %i.cn = bitcast <16 x i32> %i.cm to <8 x i64>
  %i.co = lshr <8 x i64> %i.cn, splat (i64 32)
  %i.cp = bitcast <16 x i32> %i.cm to <8 x i64>
  %i.cq = and <8 x i64> %i.cp, splat (i64 4294967295)
  %i.cr = mul nuw <8 x i64> %i.cq, splat (i64 2654435761)
  %i.cs = mul <8 x i64> %i.co, splat (i64 -7046029290881679360)
  %i.ct = add <8 x i64> %i.cr, %i.cs              ; 3 uses
  store <8 x i64> %i.ct, ptr %0, align 64, !tbaa !21
  %i.cu = shl nuw nsw i64 %i.aj, 6
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cu ; 3 uses
  %.not = icmp eq i64 %i.aj, 4
  br i1 %.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.cw = add i64 %i.ah, 3
  %xtraiter = and i64 %i.cg, 1
  %i.cx = icmp eq i64 %i.cw, %i.ad
  br i1 %i.cx, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cg, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %i.cy = phi <8 x i64> [ %i.ct, %.lr.ph.new ], [ %i.eb, %bb.g ]
  %.0.i37.i1119 = phi i64 [ 0, %.lr.ph.new ], [ %i.ec, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.cz = shl nuw nsw i64 %.0.i37.i1119, 6
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.db, i32 0, i32 3, i32 1)
  %i.dc = shl nuw nsw i64 %.0.i37.i1119, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dc
  %i.de = load <8 x i64>, ptr %i.da, align 64, !tbaa !21 ; 2 uses
  %i.df = load <8 x i64>, ptr %i.dd, align 1, !tbaa !21
  %i.dg = xor <8 x i64> %i.df, %i.de              ; 2 uses
  %i.dh = lshr <8 x i64> %i.dg, splat (i64 32)
  %i.di = and <8 x i64> %i.dg, splat (i64 4294967295)
  %i.dj = mul nuw <8 x i64> %i.di, %i.dh
  %i.dk = shufflevector <8 x i64> %i.de, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.dl = add <8 x i64> %i.cy, %i.dk
  %i.dm = add <8 x i64> %i.dl, %i.dj              ; 2 uses
  store <8 x i64> %i.dm, ptr %0, align 64, !tbaa !21
  %i.dn = or disjoint i64 %.0.i37.i1119, 1        ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 6
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dq, i32 0, i32 3, i32 1)
  %i.dr = shl nuw nsw i64 %i.dn, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dr
  %i.dt = load <8 x i64>, ptr %i.dp, align 64, !tbaa !21 ; 2 uses
  %i.du = load <8 x i64>, ptr %i.ds, align 1, !tbaa !21
  %i.dv = xor <8 x i64> %i.du, %i.dt              ; 2 uses
  %i.dw = lshr <8 x i64> %i.dv, splat (i64 32)
  %i.dx = and <8 x i64> %i.dv, splat (i64 4294967295)
  %i.dy = mul nuw <8 x i64> %i.dx, %i.dw
  %i.dz = shufflevector <8 x i64> %i.dt, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ea = add <8 x i64> %i.dm, %i.dz
  %i.eb = add <8 x i64> %i.ea, %i.dy              ; 3 uses
  store <8 x i64> %i.eb, ptr %0, align 64, !tbaa !21
  %i.ec = add nuw nsw i64 %.0.i37.i1119, 2        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, label %bb.g, !llvm.loop !5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15:    ; preds = %bb.f
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ed, i32 0, i32 3, i32 1)
  %i.ee = load <8 x i64>, ptr %i.y, align 64, !tbaa !21 ; 2 uses
  %i.ef = load <8 x i64>, ptr %i.al, align 1, !tbaa !21
  %i.eg = xor <8 x i64> %i.ef, %i.ee              ; 2 uses
  %i.eh = lshr <8 x i64> %i.eg, splat (i64 32)
  %i.ei = and <8 x i64> %i.eg, splat (i64 4294967295)
  %i.ej = mul nuw <8 x i64> %i.ei, %i.eh
  %i.ek = shufflevector <8 x i64> %i.ee, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.el = add <8 x i64> %.promoted21, %i.ek
  %i.em = add <8 x i64> %i.el, %i.ej              ; 2 uses
  store <8 x i64> %i.em, ptr %0, align 64, !tbaa !21
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %i.eo, i32 0, i32 3, i32 1)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.eq = load <8 x i64>, ptr %i.en, align 64, !tbaa !21 ; 2 uses
  %i.er = load <8 x i64>, ptr %i.ep, align 1, !tbaa !21
  %i.es = xor <8 x i64> %i.er, %i.eq              ; 2 uses
  %i.et = lshr <8 x i64> %i.es, splat (i64 32)
  %i.eu = and <8 x i64> %i.es, splat (i64 4294967295)
  %i.ev = mul nuw <8 x i64> %i.eu, %i.et
  %i.ew = shufflevector <8 x i64> %i.eq, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ex = add <8 x i64> %i.em, %i.ew
  %i.ey = add <8 x i64> %i.ex, %i.ev              ; 2 uses
  store <8 x i64> %i.ey, ptr %0, align 64, !tbaa !21
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fa, i32 0, i32 3, i32 1)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.fc = load <8 x i64>, ptr %i.ez, align 64, !tbaa !21 ; 2 uses
  %i.fd = load <8 x i64>, ptr %i.fb, align 1, !tbaa !21
  %i.fe = xor <8 x i64> %i.fd, %i.fc              ; 2 uses
  %i.ff = lshr <8 x i64> %i.fe, splat (i64 32)
  %i.fg = and <8 x i64> %i.fe, splat (i64 4294967295)
  %i.fh = mul nuw <8 x i64> %i.fg, %i.ff
  %i.fi = shufflevector <8 x i64> %i.fc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fj = add <8 x i64> %i.ey, %i.fi
  %i.fk = add <8 x i64> %i.fj, %i.fh              ; 2 uses
  store <8 x i64> %i.fk, ptr %0, align 64, !tbaa !21
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fm, i32 0, i32 3, i32 1)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.fo = load <8 x i64>, ptr %i.fl, align 64, !tbaa !21 ; 2 uses
  %i.fp = load <8 x i64>, ptr %i.fn, align 1, !tbaa !21
  %i.fq = xor <8 x i64> %i.fp, %i.fo              ; 2 uses
  %i.fr = lshr <8 x i64> %i.fq, splat (i64 32)
  %i.fs = and <8 x i64> %i.fq, splat (i64 4294967295)
  %i.ft = mul nuw <8 x i64> %i.fs, %i.fr
  %i.fu = shufflevector <8 x i64> %i.fo, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fv = add <8 x i64> %i.fk, %i.fu
  %i.fw = add <8 x i64> %i.fv, %i.ft
  store <8 x i64> %i.fw, ptr %0, align 64, !tbaa !21
  %i.fx = add i64 %i.ah, 4
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi <8 x i64> [ %i.ct, %.lr.ph ], [ %i.eb, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ]
  %.0.i37.i1119.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ec, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod103 = trunc i64 %i.cg to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.fy = shl nuw nsw i64 %.0.i37.i1119.epil.init, 6
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ga, i32 0, i32 3, i32 1)
  %i.gb = shl nuw nsw i64 %.0.i37.i1119.epil.init, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gb
  %i.gd = load <8 x i64>, ptr %i.fz, align 64, !tbaa !21 ; 2 uses
  %i.ge = load <8 x i64>, ptr %i.gc, align 1, !tbaa !21
  %i.gf = xor <8 x i64> %i.ge, %i.gd              ; 2 uses
  %i.gg = lshr <8 x i64> %i.gf, splat (i64 32)
  %i.gh = and <8 x i64> %i.gf, splat (i64 4294967295)
  %i.gi = mul nuw <8 x i64> %i.gh, %i.gg
  %i.gj = shufflevector <8 x i64> %i.gd, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.gk = add <8 x i64> %.epil.init, %i.gj
  %i.gl = add <8 x i64> %i.gk, %i.gi
  store <8 x i64> %i.gl, ptr %0, align 64, !tbaa !21
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16: ; preds = %.epil.preheader, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15
  %storemerge.i13 = phi i64 [ %i.fx, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15 ], [ 0, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10 ], [ %i.cg, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ], [ %i.cg, %.epil.preheader ]
  store i64 %storemerge.i13, ptr %i.ab, align 8, !tbaa !27
  store i32 0, ptr %i.l, align 64, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16
  %i.gm = phi i64 [ %i.ad, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16 ], [ %.pre, %._crit_edge ] ; 17 uses
  %.0125.i = phi ptr [ %i.aa, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16 ], [ %1, %._crit_edge ] ; 8 uses
  %i.gn = icmp ult ptr %.0125.i, %i.c
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = ptrtoint ptr %i.c to i64                ; 3 uses
  %i.gp = ptrtoint ptr %.0125.i to i64            ; 2 uses
  %i.gq = sub i64 %i.go, %i.gp                    ; 3 uses
  %i.gr = shl i64 %i.gm, 6                        ; 2 uses
  %i.gs = icmp ugt i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.gt = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.gp
  %i.gw = lshr i64 %i.gv, 6                       ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !41 ; 5 uses
  %i.gz = icmp uge i64 %i.gm, %i.gy
  tail call void @llvm.assume(i1 %i.gz)
  %i.ha = sub nuw i64 %i.gm, %i.gy                ; 6 uses
  %i.hb = icmp ule i64 %i.ha, %i.gw
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = shl i64 %i.gy, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hc ; 3 uses
  %.not46 = icmp eq i64 %i.gm, %i.gy
  %.pre60 = load <8 x i64>, ptr %0, align 64, !tbaa !21 ; 3 uses
  br i1 %.not46, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %.neg = add i64 %i.gy, 1
  %xtraiter113 = and i64 %i.ha, 1
  %i.he = icmp eq i64 %i.gm, %.neg
  br i1 %i.he, label %.epil.preheader112, label %.lr.ph33.new

.lr.ph33.new:                                     ; preds = %.lr.ph33
  %unroll_iter119 = and i64 %i.ha, -2
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph33.new
  %i.hf = phi <8 x i64> [ %.pre60, %.lr.ph33.new ], [ %i.ii, %bb.j ]
  %.0.i432 = phi i64 [ 0, %.lr.ph33.new ], [ %i.ij, %bb.j ] ; 4 uses
  %niter120 = phi i64 [ 0, %.lr.ph33.new ], [ %niter120.next.1, %bb.j ]
  %i.hg = shl i64 %.0.i432, 6
  %i.hh = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hi, i32 0, i32 3, i32 1)
  %i.hj = shl i64 %.0.i432, 3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hj
  %i.hl = load <8 x i64>, ptr %i.hh, align 1, !tbaa !21 ; 2 uses
  %i.hm = load <8 x i64>, ptr %i.hk, align 1, !tbaa !21
  %i.hn = xor <8 x i64> %i.hm, %i.hl              ; 2 uses
  %i.ho = lshr <8 x i64> %i.hn, splat (i64 32)
  %i.hp = and <8 x i64> %i.hn, splat (i64 4294967295)
  %i.hq = mul nuw <8 x i64> %i.hp, %i.ho
  %i.hr = shufflevector <8 x i64> %i.hl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.hs = add <8 x i64> %i.hf, %i.hr
  %i.ht = add <8 x i64> %i.hs, %i.hq              ; 2 uses
  store <8 x i64> %i.ht, ptr %0, align 64, !tbaa !21
  %i.hu = or disjoint i64 %.0.i432, 1             ; 2 uses
  %i.hv = shl i64 %i.hu, 6
  %i.hw = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.hv ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hx, i32 0, i32 3, i32 1)
  %i.hy = shl i64 %i.hu, 3
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hy
  %i.ia = load <8 x i64>, ptr %i.hw, align 1, !tbaa !21 ; 2 uses
  %i.ib = load <8 x i64>, ptr %i.hz, align 1, !tbaa !21
  %i.ic = xor <8 x i64> %i.ib, %i.ia              ; 2 uses
  %i.id = lshr <8 x i64> %i.ic, splat (i64 32)
  %i.ie = and <8 x i64> %i.ic, splat (i64 4294967295)
  %i.if = mul nuw <8 x i64> %i.ie, %i.id
  %i.ig = shufflevector <8 x i64> %i.ia, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ih = add <8 x i64> %i.ht, %i.ig
  %i.ii = add <8 x i64> %i.ih, %i.if              ; 4 uses
  store <8 x i64> %i.ii, ptr %0, align 64, !tbaa !21
  %i.ij = add nuw i64 %.0.i432, 2                 ; 2 uses
  %niter120.next.1 = add i64 %niter120, 2         ; 2 uses
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119
  br i1 %niter120.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, label %bb.j, !llvm.loop !5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod116.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod116.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5, label %.epil.preheader112

.epil.preheader112:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, %.lr.ph33
  %.epil.init115 = phi <8 x i64> [ %.pre60, %.lr.ph33 ], [ %i.ii, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ]
  %.0.i432.epil.init = phi i64 [ 0, %.lr.ph33 ], [ %i.ij, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod118 = trunc i64 %i.ha to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.ik = shl i64 %.0.i432.epil.init, 6
  %i.il = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.ik ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.im, i32 0, i32 3, i32 1)
  %i.in = shl i64 %.0.i432.epil.init, 3
  %i.io = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.in
  %i.ip = load <8 x i64>, ptr %i.il, align 1, !tbaa !21 ; 2 uses
  %i.iq = load <8 x i64>, ptr %i.io, align 1, !tbaa !21
  %i.ir = xor <8 x i64> %i.iq, %i.ip              ; 2 uses
  %i.is = lshr <8 x i64> %i.ir, splat (i64 32)
  %i.it = and <8 x i64> %i.ir, splat (i64 4294967295)
  %i.iu = mul nuw <8 x i64> %i.it, %i.is
  %i.iv = shufflevector <8 x i64> %i.ip, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.iw = add <8 x i64> %.epil.init115, %i.iv
  %i.ix = add <8 x i64> %i.iw, %i.iu              ; 2 uses
  store <8 x i64> %i.ix, ptr %0, align 64, !tbaa !21
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5:       ; preds = %.epil.preheader112, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, %bb.i
  %i.iy = phi <8 x i64> [ %.pre60, %bb.i ], [ %i.ii, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ], [ %i.ix, %.epil.preheader112 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ja = load i64, ptr %i.iz, align 32, !tbaa !36
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ja ; 2 uses
  %i.jc = lshr <8 x i64> %i.iy, splat (i64 47)
  %i.jd = load <16 x i32>, ptr %i.jb, align 1, !tbaa !21
  %i.je = bitcast <8 x i64> %i.iy to <16 x i32>
  %i.jf = bitcast <8 x i64> %i.jc to <16 x i32>
  %i.jg = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.jd, <16 x i32> %i.je, <16 x i32> %i.jf, i32 150) ; 2 uses
  %i.jh = bitcast <16 x i32> %i.jg to <8 x i64>
  %i.ji = lshr <8 x i64> %i.jh, splat (i64 32)
  %i.jj = bitcast <16 x i32> %i.jg to <8 x i64>
  %i.jk = and <8 x i64> %i.jj, splat (i64 4294967295)
  %i.jl = mul nuw <8 x i64> %i.jk, splat (i64 2654435761)
  %i.jm = mul <8 x i64> %i.ji, splat (i64 -7046029290881679360)
  %i.jn = add <8 x i64> %i.jl, %i.jm              ; 3 uses
  store <8 x i64> %i.jn, ptr %0, align 64, !tbaa !21
  store i64 0, ptr %i.gx, align 8, !tbaa !41
  %i.jo = shl nuw i64 %i.ha, 6
  %i.jp = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.jo ; 2 uses
  %i.jq = sub nuw nsw i64 %i.gw, %i.ha            ; 3 uses
  %.not133.i38 = icmp ult i64 %i.jq, %i.gm
  br i1 %.not133.i38, label %.preheader, label %.preheader17.lr.ph

.preheader17.lr.ph:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %.not47 = icmp eq i64 %i.gm, 0
  %xtraiter122 = and i64 %i.gm, 1
  %i.jr = icmp eq i64 %i.gm, 1
  %unroll_iter128 = and i64 %i.gm, -2
  %lcmp.mod125.not = icmp eq i64 %xtraiter122, 0
  %lcmp.mod127 = trunc i64 %i.gm to i1
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.lr.ph, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3
  %.promoted37 = phi <8 x i64> [ %i.jn, %.preheader17.lr.ph ], [ %i.ly, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 3 uses
  %.0124.i40 = phi i64 [ %i.jq, %.preheader17.lr.ph ], [ %i.ma, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ]
  %.1126.i39 = phi ptr [ %i.jp, %.preheader17.lr.ph ], [ %i.lz, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 4 uses
  br i1 %.not47, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, label %.lr.ph36

.lr.ph36:                                         ; preds = %.preheader17
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  br i1 %i.jr, label %.epil.preheader121, label %.lr.ph36.new

.preheader:                                       ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5
  %.promoted44 = phi <8 x i64> [ %i.jn, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.ly, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 2 uses
  %.1126.i.lcssa = phi ptr [ %i.jp, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.lz, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 4 uses
  %.0124.i.lcssa = phi i64 [ %i.jq, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.ma, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 7 uses
  %.not48 = icmp eq i64 %.0124.i.lcssa, 0
  br i1 %.not48, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %xtraiter131 = and i64 %.0124.i.lcssa, 1
  %i.js = icmp eq i64 %.0124.i.lcssa, 1
  br i1 %i.js, label %.epil.preheader130, label %.lr.ph43.new

.lr.ph43.new:                                     ; preds = %.lr.ph43
  %unroll_iter136 = and i64 %.0124.i.lcssa, -2
  br label %bb.k

.lr.ph36.new:                                     ; preds = %.lr.ph36, %.lr.ph36.new
  %i.jt = phi <8 x i64> [ %i.kw, %.lr.ph36.new ], [ %.promoted37, %.lr.ph36 ]
  %.0.i235 = phi i64 [ %i.kx, %.lr.ph36.new ], [ 0, %.lr.ph36 ] ; 4 uses
  %niter129 = phi i64 [ %niter129.next.1, %.lr.ph36.new ], [ 0, %.lr.ph36 ]
  %i.ju = shl i64 %.0.i235, 6
  %i.jv = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.ju ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.jw, i32 0, i32 3, i32 1)
  %i.jx = shl i64 %.0.i235, 3
  %i.jy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.jx
  %i.jz = load <8 x i64>, ptr %i.jv, align 1, !tbaa !21 ; 2 uses
  %i.ka = load <8 x i64>, ptr %i.jy, align 1, !tbaa !21
  %i.kb = xor <8 x i64> %i.ka, %i.jz              ; 2 uses
  %i.kc = lshr <8 x i64> %i.kb, splat (i64 32)
  %i.kd = and <8 x i64> %i.kb, splat (i64 4294967295)
  %i.ke = mul nuw <8 x i64> %i.kd, %i.kc
  %i.kf = shufflevector <8 x i64> %i.jz, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.kg = add <8 x i64> %i.jt, %i.kf
  %i.kh = add <8 x i64> %i.kg, %i.ke              ; 2 uses
  store <8 x i64> %i.kh, ptr %0, align 64, !tbaa !21
  %i.ki = or disjoint i64 %.0.i235, 1             ; 2 uses
  %i.kj = shl i64 %i.ki, 6
  %i.kk = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.kl, i32 0, i32 3, i32 1)
  %i.km = shl i64 %i.ki, 3
  %i.kn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.km
  %i.ko = load <8 x i64>, ptr %i.kk, align 1, !tbaa !21 ; 2 uses
  %i.kp = load <8 x i64>, ptr %i.kn, align 1, !tbaa !21
  %i.kq = xor <8 x i64> %i.kp, %i.ko              ; 2 uses
  %i.kr = lshr <8 x i64> %i.kq, splat (i64 32)
  %i.ks = and <8 x i64> %i.kq, splat (i64 4294967295)
  %i.kt = mul nuw <8 x i64> %i.ks, %i.kr
  %i.ku = shufflevector <8 x i64> %i.ko, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.kv = add <8 x i64> %i.kh, %i.ku
  %i.kw = add <8 x i64> %i.kv, %i.kt              ; 4 uses
  store <8 x i64> %i.kw, ptr %0, align 64, !tbaa !21
  %i.kx = add nuw i64 %.0.i235, 2                 ; 2 uses
  %niter129.next.1 = add nuw i64 %niter129, 2     ; 2 uses
  %niter129.ncmp.1 = icmp eq i64 %niter129.next.1, %unroll_iter128
  br i1 %niter129.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, label %.lr.ph36.new, !llvm.loop !5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa: ; preds = %.lr.ph36.new
  br i1 %lcmp.mod125.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, label %.epil.preheader121

.epil.preheader121:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, %.lr.ph36
  %.epil.init124 = phi <8 x i64> [ %.promoted37, %.lr.ph36 ], [ %i.kw, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ]
  %.0.i235.epil.init = phi i64 [ 0, %.lr.ph36 ], [ %i.kx, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.ky = shl i64 %.0.i235.epil.init, 6
  %i.kz = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.la, i32 0, i32 3, i32 1)
  %i.lb = shl i64 %.0.i235.epil.init, 3
  %i.lc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.lb
  %i.ld = load <8 x i64>, ptr %i.kz, align 1, !tbaa !21 ; 2 uses
  %i.le = load <8 x i64>, ptr %i.lc, align 1, !tbaa !21
  %i.lf = xor <8 x i64> %i.le, %i.ld              ; 2 uses
  %i.lg = lshr <8 x i64> %i.lf, splat (i64 32)
  %i.lh = and <8 x i64> %i.lf, splat (i64 4294967295)
  %i.li = mul nuw <8 x i64> %i.lh, %i.lg
  %i.lj = shufflevector <8 x i64> %i.ld, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.lk = add <8 x i64> %.epil.init124, %i.lj
  %i.ll = add <8 x i64> %i.lk, %i.li              ; 2 uses
  store <8 x i64> %i.ll, ptr %0, align 64, !tbaa !21
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3:       ; preds = %.epil.preheader121, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, %.preheader17
  %i.lm = phi <8 x i64> [ %.promoted37, %.preheader17 ], [ %i.kw, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ], [ %i.ll, %.epil.preheader121 ] ; 2 uses
  %i.ln = lshr <8 x i64> %i.lm, splat (i64 47)
  %i.lo = load <16 x i32>, ptr %i.jb, align 1, !tbaa !21
  %i.lp = bitcast <8 x i64> %i.lm to <16 x i32>
  %i.lq = bitcast <8 x i64> %i.ln to <16 x i32>
  %i.lr = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.lo, <16 x i32> %i.lp, <16 x i32> %i.lq, i32 150) ; 2 uses
  %i.ls = bitcast <16 x i32> %i.lr to <8 x i64>
  %i.lt = lshr <8 x i64> %i.ls, splat (i64 32)
  %i.lu = bitcast <16 x i32> %i.lr to <8 x i64>
  %i.lv = and <8 x i64> %i.lu, splat (i64 4294967295)
  %i.lw = mul nuw <8 x i64> %i.lv, splat (i64 2654435761)
  %i.lx = mul <8 x i64> %i.lt, splat (i64 -7046029290881679360)
  %i.ly = add <8 x i64> %i.lw, %i.lx              ; 3 uses
  store <8 x i64> %i.ly, ptr %0, align 64, !tbaa !21
  %i.lz = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.gr ; 2 uses
  %i.ma = sub nuw nsw i64 %.0124.i40, %i.gm       ; 3 uses
  %.not133.i = icmp ult i64 %i.ma, %i.gm
  br i1 %.not133.i, label %.preheader, label %.preheader17, !llvm.loop !6

bb.k:                                             ; preds = %bb.k, %.lr.ph43.new
  %i.mb = phi <8 x i64> [ %.promoted44, %.lr.ph43.new ], [ %i.ne, %bb.k ]
  %.0.i42 = phi i64 [ 0, %.lr.ph43.new ], [ %i.nf, %bb.k ] ; 4 uses
  %niter137 = phi i64 [ 0, %.lr.ph43.new ], [ %niter137.next.1, %bb.k ]
  %i.mc = shl i64 %.0.i42, 6
  %i.md = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.mc ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.me, i32 0, i32 3, i32 1)
  %i.mf = shl i64 %.0.i42, 3
  %i.mg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mf
  %i.mh = load <8 x i64>, ptr %i.md, align 1, !tbaa !21 ; 2 uses
  %i.mi = load <8 x i64>, ptr %i.mg, align 1, !tbaa !21
  %i.mj = xor <8 x i64> %i.mi, %i.mh              ; 2 uses
  %i.mk = lshr <8 x i64> %i.mj, splat (i64 32)
  %i.ml = and <8 x i64> %i.mj, splat (i64 4294967295)
  %i.mm = mul nuw <8 x i64> %i.ml, %i.mk
  %i.mn = shufflevector <8 x i64> %i.mh, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.mo = add <8 x i64> %i.mb, %i.mn
  %i.mp = add <8 x i64> %i.mo, %i.mm              ; 2 uses
  store <8 x i64> %i.mp, ptr %0, align 64, !tbaa !21
  %i.mq = or disjoint i64 %.0.i42, 1              ; 2 uses
  %i.mr = shl i64 %i.mq, 6
  %i.ms = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.mr ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.mt, i32 0, i32 3, i32 1)
  %i.mu = shl i64 %i.mq, 3
  %i.mv = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mu
  %i.mw = load <8 x i64>, ptr %i.ms, align 1, !tbaa !21 ; 2 uses
  %i.mx = load <8 x i64>, ptr %i.mv, align 1, !tbaa !21
  %i.my = xor <8 x i64> %i.mx, %i.mw              ; 2 uses
  %i.mz = lshr <8 x i64> %i.my, splat (i64 32)
  %i.na = and <8 x i64> %i.my, splat (i64 4294967295)
  %i.nb = mul nuw <8 x i64> %i.na, %i.mz
  %i.nc = shufflevector <8 x i64> %i.mw, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.nd = add <8 x i64> %i.mp, %i.nc
  %i.ne = add <8 x i64> %i.nd, %i.nb              ; 3 uses
  store <8 x i64> %i.ne, ptr %0, align 64, !tbaa !21
  %i.nf = add nuw i64 %.0.i42, 2                  ; 2 uses
  %niter137.next.1 = add nuw i64 %niter137, 2     ; 2 uses
  %niter137.ncmp.1 = icmp eq i64 %niter137.next.1, %unroll_iter136
  br i1 %niter137.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod134.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod134.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit, label %.epil.preheader130

.epil.preheader130:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, %.lr.ph43
  %.epil.init133 = phi <8 x i64> [ %.promoted44, %.lr.ph43 ], [ %i.ne, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa ]
  %.0.i42.epil.init = phi i64 [ 0, %.lr.ph43 ], [ %i.nf, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod135 = trunc i64 %.0124.i.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod135)
  %i.ng = shl i64 %.0.i42.epil.init, 6
  %i.nh = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.ng ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ni, i32 0, i32 3, i32 1)
  %i.nj = shl i64 %.0.i42.epil.init, 3
  %i.nk = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nj
  %i.nl = load <8 x i64>, ptr %i.nh, align 1, !tbaa !21 ; 2 uses
  %i.nm = load <8 x i64>, ptr %i.nk, align 1, !tbaa !21
  %i.nn = xor <8 x i64> %i.nm, %i.nl              ; 2 uses
  %i.no = lshr <8 x i64> %i.nn, splat (i64 32)
  %i.np = and <8 x i64> %i.nn, splat (i64 4294967295)
  %i.nq = mul nuw <8 x i64> %i.np, %i.no
  %i.nr = shufflevector <8 x i64> %i.nl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ns = add <8 x i64> %.epil.init133, %i.nr
  %i.nt = add <8 x i64> %i.ns, %i.nq
  store <8 x i64> %i.nt, ptr %0, align 64, !tbaa !21
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit:        ; preds = %.epil.preheader130, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, %.preheader
  %i.nu = shl nuw i64 %.0124.i.lcssa, 6
  %i.nv = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.nu ; 4 uses
  %i.nw = icmp ult ptr %i.nv, %i.c
  tail call void @llvm.assume(i1 %i.nw)
  store i64 %.0124.i.lcssa, ptr %i.gx, align 8, !tbaa !41
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ny = getelementptr inbounds i8, ptr %i.nv, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.nx, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.ny, i64 64, i1 false)
  %i.nz = ptrtoint ptr %i.nv to i64
  %i.oa = sub i64 %i.go, %i.nz                    ; 2 uses
  %i.ob = icmp slt i64 %i.oa, 65
  tail call void @llvm.assume(i1 %i.ob)
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  %i.oc = icmp sgt i64 %i.gq, 256
  br i1 %i.oc, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.od = getelementptr inbounds i8, ptr %i.c, i64 -256
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.og = load i64, ptr %i.of, align 32, !tbaa !36
  %i.oh = icmp ugt i64 %i.gm, 3
  tail call void @llvm.assume(i1 %i.oh)
  %.promoted30 = load i64, ptr %i.oe, align 8, !tbaa !27
  %i.oi = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.og
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  br label %bb.n

bb.n:                                             ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, %bb.m
  %storemerge.i731 = phi i64 [ %.promoted30, %bb.m ], [ %storemerge.i7, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ] ; 5 uses
  %.2.i = phi ptr [ %.0125.i, %bb.m ], [ %i.uk, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ] ; 19 uses
  %i.oj = icmp ult i64 %storemerge.i731, %i.gm
  tail call void @llvm.assume(i1 %i.oj)
  %i.ok = sub nuw i64 %i.gm, %storemerge.i731     ; 7 uses
  %.not.i6 = icmp ugt i64 %i.ok, 4
  %i.ol = shl i64 %storemerge.i731, 3
  %i.om = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ol ; 8 uses
  %.promoted28 = load <8 x i64>, ptr %0, align 64, !tbaa !21 ; 2 uses
  br i1 %.not.i6, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i, label %.preheader84

.preheader84:                                     ; preds = %bb.n
  %i.on = getelementptr inbounds nuw i8, ptr %.2.i, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.on, i32 0, i32 3, i32 1)
  %i.oo = load <8 x i64>, ptr %.2.i, align 1, !tbaa !21 ; 2 uses
  %i.op = load <8 x i64>, ptr %i.om, align 1, !tbaa !21
  %i.oq = xor <8 x i64> %i.op, %i.oo              ; 2 uses
  %i.or = lshr <8 x i64> %i.oq, splat (i64 32)
  %i.os = and <8 x i64> %i.oq, splat (i64 4294967295)
  %i.ot = mul nuw <8 x i64> %i.os, %i.or
  %i.ou = shufflevector <8 x i64> %i.oo, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ov = add <8 x i64> %.promoted28, %i.ou
  %i.ow = add <8 x i64> %i.ov, %i.ot              ; 3 uses
  store <8 x i64> %i.ow, ptr %0, align 64, !tbaa !21
  %exitcond53.not = icmp eq i64 %i.ok, 1
  br i1 %exitcond53.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, label %.preheader84.1

.preheader84.1:                                   ; preds = %.preheader84
  %i.ox = getelementptr inbounds nuw i8, ptr %.2.i, i64 64
  %i.oy = getelementptr inbounds nuw i8, ptr %.2.i, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.oy, i32 0, i32 3, i32 1)
  %i.oz = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.pa = load <8 x i64>, ptr %i.ox, align 1, !tbaa !21 ; 2 uses
  %i.pb = load <8 x i64>, ptr %i.oz, align 1, !tbaa !21
  %i.pc = xor <8 x i64> %i.pb, %i.pa              ; 2 uses
  %i.pd = lshr <8 x i64> %i.pc, splat (i64 32)
  %i.pe = and <8 x i64> %i.pc, splat (i64 4294967295)
  %i.pf = mul nuw <8 x i64> %i.pe, %i.pd
  %i.pg = shufflevector <8 x i64> %i.pa, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ph = add <8 x i64> %i.ow, %i.pg
  %i.pi = add <8 x i64> %i.ph, %i.pf              ; 3 uses
  store <8 x i64> %i.pi, ptr %0, align 64, !tbaa !21
  %exitcond53.not.1 = icmp eq i64 %i.ok, 2
  br i1 %exitcond53.not.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, label %.preheader84.2

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.pj = getelementptr inbounds nuw i8, ptr %.2.i, i64 128
  %i.pk = getelementptr inbounds nuw i8, ptr %.2.i, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pk, i32 0, i32 3, i32 1)
  %i.pl = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.pm = load <8 x i64>, ptr %i.pj, align 1, !tbaa !21 ; 2 uses
  %i.pn = load <8 x i64>, ptr %i.pl, align 1, !tbaa !21
  %i.po = xor <8 x i64> %i.pn, %i.pm              ; 2 uses
  %i.pp = lshr <8 x i64> %i.po, splat (i64 32)
  %i.pq = and <8 x i64> %i.po, splat (i64 4294967295)
  %i.pr = mul nuw <8 x i64> %i.pq, %i.pp
  %i.ps = shufflevector <8 x i64> %i.pm, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.pt = add <8 x i64> %i.pi, %i.ps
  %i.pu = add <8 x i64> %i.pt, %i.pr              ; 3 uses
  store <8 x i64> %i.pu, ptr %0, align 64, !tbaa !21
  %exitcond53.not.2 = icmp eq i64 %i.ok, 3
  br i1 %exitcond53.not.2, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, label %.preheader84.3

.preheader84.3:                                   ; preds = %.preheader84.2
  %i.pv = getelementptr inbounds nuw i8, ptr %.2.i, i64 192
  %i.pw = getelementptr inbounds nuw i8, ptr %.2.i, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pw, i32 0, i32 3, i32 1)
  %i.px = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  %i.py = load <8 x i64>, ptr %i.pv, align 1, !tbaa !21 ; 2 uses
  %i.pz = load <8 x i64>, ptr %i.px, align 1, !tbaa !21
  %i.qa = xor <8 x i64> %i.pz, %i.py              ; 2 uses
  %i.qb = lshr <8 x i64> %i.qa, splat (i64 32)
  %i.qc = and <8 x i64> %i.qa, splat (i64 4294967295)
  %i.qd = mul nuw <8 x i64> %i.qc, %i.qb
  %i.qe = shufflevector <8 x i64> %i.py, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.qf = add <8 x i64> %i.pu, %i.qe
  %i.qg = add <8 x i64> %i.qf, %i.qd              ; 2 uses
  store <8 x i64> %i.qg, ptr %0, align 64, !tbaa !21
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i:    ; preds = %.preheader84.3, %.preheader84.2, %.preheader84.1, %.preheader84
  %.lcssa100 = phi <8 x i64> [ %i.ow, %.preheader84 ], [ %i.pi, %.preheader84.1 ], [ %i.pu, %.preheader84.2 ], [ %i.qg, %.preheader84.3 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %3 = sub nsw i64 4, %i.ok                       ; 5 uses
  %i.qh = lshr <8 x i64> %.lcssa100, splat (i64 47)
  %i.qi = load <16 x i32>, ptr %i.oi, align 1, !tbaa !21
  %i.qj = bitcast <8 x i64> %.lcssa100 to <16 x i32>
  %i.qk = bitcast <8 x i64> %i.qh to <16 x i32>
  %i.ql = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.qi, <16 x i32> %i.qj, <16 x i32> %i.qk, i32 150) ; 2 uses
  %i.qm = bitcast <16 x i32> %i.ql to <8 x i64>
  %i.qn = lshr <8 x i64> %i.qm, splat (i64 32)
  %i.qo = bitcast <16 x i32> %i.ql to <8 x i64>
  %i.qp = and <8 x i64> %i.qo, splat (i64 4294967295)
  %i.qq = mul nuw <8 x i64> %i.qp, splat (i64 2654435761)
  %i.qr = mul <8 x i64> %i.qn, splat (i64 -7046029290881679360)
  %i.qs = add <8 x i64> %i.qq, %i.qr              ; 3 uses
  store <8 x i64> %i.qs, ptr %0, align 64, !tbaa !21
  %i.qt = shl nuw nsw i64 %i.ok, 6
  %i.qu = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.qt ; 3 uses
  %.not45 = icmp eq i64 %i.ok, 4
  br i1 %.not45, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %reass.sub = sub i64 %storemerge.i731, %i.gm
  %xtraiter105 = and i64 %3, 1
  %i.qv = icmp eq i64 %reass.sub, -3
  br i1 %i.qv, label %.epil.preheader104, label %.lr.ph26.new

.lr.ph26.new:                                     ; preds = %.lr.ph26
  %unroll_iter110 = and i64 %3, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph26.new
  %i.qw = phi <8 x i64> [ %i.qs, %.lr.ph26.new ], [ %i.rz, %bb.o ]
  %.0.i37.i25 = phi i64 [ 0, %.lr.ph26.new ], [ %i.sa, %bb.o ] ; 4 uses
  %niter111 = phi i64 [ 0, %.lr.ph26.new ], [ %niter111.next.1, %bb.o ]
  %i.qx = shl nuw nsw i64 %.0.i37.i25, 6
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qx ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.qz, i32 0, i32 3, i32 1)
  %i.ra = shl nuw nsw i64 %.0.i37.i25, 3
  %i.rb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ra
  %i.rc = load <8 x i64>, ptr %i.qy, align 1, !tbaa !21 ; 2 uses
  %i.rd = load <8 x i64>, ptr %i.rb, align 1, !tbaa !21
  %i.re = xor <8 x i64> %i.rd, %i.rc              ; 2 uses
  %i.rf = lshr <8 x i64> %i.re, splat (i64 32)
  %i.rg = and <8 x i64> %i.re, splat (i64 4294967295)
  %i.rh = mul nuw <8 x i64> %i.rg, %i.rf
  %i.ri = shufflevector <8 x i64> %i.rc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.rj = add <8 x i64> %i.qw, %i.ri
  %i.rk = add <8 x i64> %i.rj, %i.rh              ; 2 uses
  store <8 x i64> %i.rk, ptr %0, align 64, !tbaa !21
  %i.rl = or disjoint i64 %.0.i37.i25, 1          ; 2 uses
  %i.rm = shl nuw nsw i64 %i.rl, 6
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.rm ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ro, i32 0, i32 3, i32 1)
  %i.rp = shl nuw nsw i64 %i.rl, 3
  %i.rq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.rp
  %i.rr = load <8 x i64>, ptr %i.rn, align 1, !tbaa !21 ; 2 uses
  %i.rs = load <8 x i64>, ptr %i.rq, align 1, !tbaa !21
  %i.rt = xor <8 x i64> %i.rs, %i.rr              ; 2 uses
  %i.ru = lshr <8 x i64> %i.rt, splat (i64 32)
  %i.rv = and <8 x i64> %i.rt, splat (i64 4294967295)
  %i.rw = mul nuw <8 x i64> %i.rv, %i.ru
  %i.rx = shufflevector <8 x i64> %i.rr, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ry = add <8 x i64> %i.rk, %i.rx
  %i.rz = add <8 x i64> %i.ry, %i.rw              ; 3 uses
  store <8 x i64> %i.rz, ptr %0, align 64, !tbaa !21
  %i.sa = add nuw nsw i64 %.0.i37.i25, 2          ; 2 uses
  %niter111.next.1 = add i64 %niter111, 2         ; 2 uses
  %niter111.ncmp.1 = icmp eq i64 %niter111.next.1, %unroll_iter110
  br i1 %niter111.ncmp.1, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, label %bb.o, !llvm.loop !5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i:      ; preds = %bb.n
  %i.sb = getelementptr inbounds nuw i8, ptr %.2.i, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.sb, i32 0, i32 3, i32 1)
  %i.sc = load <8 x i64>, ptr %.2.i, align 1, !tbaa !21 ; 2 uses
  %i.sd = load <8 x i64>, ptr %i.om, align 1, !tbaa !21
  %i.se = xor <8 x i64> %i.sd, %i.sc              ; 2 uses
  %i.sf = lshr <8 x i64> %i.se, splat (i64 32)
  %i.sg = and <8 x i64> %i.se, splat (i64 4294967295)
  %i.sh = mul nuw <8 x i64> %i.sg, %i.sf
  %i.si = shufflevector <8 x i64> %i.sc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.sj = add <8 x i64> %.promoted28, %i.si
  %i.sk = add <8 x i64> %i.sj, %i.sh              ; 2 uses
  store <8 x i64> %i.sk, ptr %0, align 64, !tbaa !21
  %i.sl = getelementptr inbounds nuw i8, ptr %.2.i, i64 64
  %i.sm = getelementptr inbounds nuw i8, ptr %.2.i, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.sm, i32 0, i32 3, i32 1)
  %i.sn = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.so = load <8 x i64>, ptr %i.sl, align 1, !tbaa !21 ; 2 uses
  %i.sp = load <8 x i64>, ptr %i.sn, align 1, !tbaa !21
  %i.sq = xor <8 x i64> %i.sp, %i.so              ; 2 uses
  %i.sr = lshr <8 x i64> %i.sq, splat (i64 32)
  %i.ss = and <8 x i64> %i.sq, splat (i64 4294967295)
  %i.st = mul nuw <8 x i64> %i.ss, %i.sr
  %i.su = shufflevector <8 x i64> %i.so, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.sv = add <8 x i64> %i.sk, %i.su
  %i.sw = add <8 x i64> %i.sv, %i.st              ; 2 uses
  store <8 x i64> %i.sw, ptr %0, align 64, !tbaa !21
  %i.sx = getelementptr inbounds nuw i8, ptr %.2.i, i64 128
  %i.sy = getelementptr inbounds nuw i8, ptr %.2.i, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %i.sy, i32 0, i32 3, i32 1)
  %i.sz = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.ta = load <8 x i64>, ptr %i.sx, align 1, !tbaa !21 ; 2 uses
  %i.tb = load <8 x i64>, ptr %i.sz, align 1, !tbaa !21
  %i.tc = xor <8 x i64> %i.tb, %i.ta              ; 2 uses
  %i.td = lshr <8 x i64> %i.tc, splat (i64 32)
  %i.te = and <8 x i64> %i.tc, splat (i64 4294967295)
  %i.tf = mul nuw <8 x i64> %i.te, %i.td
  %i.tg = shufflevector <8 x i64> %i.ta, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.th = add <8 x i64> %i.sw, %i.tg
  %i.ti = add <8 x i64> %i.th, %i.tf              ; 2 uses
  store <8 x i64> %i.ti, ptr %0, align 64, !tbaa !21
  %i.tj = getelementptr inbounds nuw i8, ptr %.2.i, i64 192
  %i.tk = getelementptr inbounds nuw i8, ptr %.2.i, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %i.tk, i32 0, i32 3, i32 1)
  %i.tl = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  %i.tm = load <8 x i64>, ptr %i.tj, align 1, !tbaa !21 ; 2 uses
  %i.tn = load <8 x i64>, ptr %i.tl, align 1, !tbaa !21
  %i.to = xor <8 x i64> %i.tn, %i.tm              ; 2 uses
  %i.tp = lshr <8 x i64> %i.to, splat (i64 32)
  %i.tq = and <8 x i64> %i.to, splat (i64 4294967295)
  %i.tr = mul nuw <8 x i64> %i.tq, %i.tp
  %i.ts = shufflevector <8 x i64> %i.tm, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.tt = add <8 x i64> %i.ti, %i.ts
  %i.tu = add <8 x i64> %i.tt, %i.tr
  store <8 x i64> %i.tu, ptr %0, align 64, !tbaa !21
  %i.tv = add i64 %storemerge.i731, 4
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa: ; preds = %bb.o
  %lcmp.mod108.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod108.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, label %.epil.preheader104

.epil.preheader104:                               ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, %.lr.ph26
  %.epil.init107 = phi <8 x i64> [ %i.qs, %.lr.ph26 ], [ %i.rz, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ]
  %.0.i37.i25.epil.init = phi i64 [ 0, %.lr.ph26 ], [ %i.sa, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod109 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod109)
  %i.tw = shl nuw nsw i64 %.0.i37.i25.epil.init, 6
  %i.tx = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.tw ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ty, i32 0, i32 3, i32 1)
  %i.tz = shl nuw nsw i64 %.0.i37.i25.epil.init, 3
  %i.ua = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.tz
  %i.ub = load <8 x i64>, ptr %i.tx, align 1, !tbaa !21 ; 2 uses
  %i.uc = load <8 x i64>, ptr %i.ua, align 1, !tbaa !21
  %i.ud = xor <8 x i64> %i.uc, %i.ub              ; 2 uses
  %i.ue = lshr <8 x i64> %i.ud, splat (i64 32)
  %i.uf = and <8 x i64> %i.ud, splat (i64 4294967295)
  %i.ug = mul nuw <8 x i64> %i.uf, %i.ue
  %i.uh = shufflevector <8 x i64> %i.ub, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ui = add <8 x i64> %.epil.init107, %i.uh
  %i.uj = add <8 x i64> %i.ui, %i.ug
  store <8 x i64> %i.uj, ptr %0, align 64, !tbaa !21
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit: ; preds = %.epil.preheader104, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i
  %storemerge.i7 = phi i64 [ %i.tv, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i ], [ 0, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i ], [ %3, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ], [ %3, %.epil.preheader104 ] ; 2 uses
  store i64 %storemerge.i7, ptr %i.oe, align 8, !tbaa !27
  %i.uk = getelementptr inbounds nuw i8, ptr %.2.i, i64 256 ; 4 uses
  %i.ul = icmp ult ptr %i.uk, %i.od
  br i1 %i.ul, label %bb.n, label %bb.p, !llvm.loop !7

bb.p:                                             ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.un = getelementptr inbounds nuw i8, ptr %.2.i, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.um, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.un, i64 64, i1 false)
  %.pre63 = ptrtoint ptr %i.uk to i64
  %.pre64 = sub i64 %i.go, %.pre63
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit
  %.pre-phi65 = phi i64 [ %.pre64, %bb.p ], [ %i.gq, %bb.l ], [ %i.oa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit ] ; 3 uses
  %.3.i = phi ptr [ %i.uk, %bb.p ], [ %.0125.i, %bb.l ], [ %i.nv, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit ] ; 2 uses
  %i.uo = icmp ult ptr %.3.i, %i.c
  tail call void @llvm.assume(i1 %i.uo)
  %i.up = icmp slt i64 %.pre-phi65, 257
  tail call void @llvm.assume(i1 %i.up)
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.uq, ptr readonly align 1 %.3.i, i64 %.pre-phi65, i1 false)
  %i.ur = trunc i64 %.pre-phi65 to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.d
  %storemerge.i = phi i32 [ %i.ur, %bb.q ], [ %i.v, %bb.d ]
  store i32 %storemerge.i, ptr %i.l, align 64, !tbaa !40
  br label %_ZL11XXH3_updateP12XXH3_state_sPKhmPFvPmS2_S2_mEPFvPvPKvE.exit

_ZL11XXH3_updateP12XXH3_state_sPKhmPFvPmS2_S2_mEPFvPvPKvE.exit: ; preds = %bb.b, %bb.r
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define i64 @ROCKSDB_XXH3_64bits_digest(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_1
begin_hunk_2_@_ZL26XXH3_hashLong_128b_defaultPKvmmS0_m:bb.a
  %i.er = and <8 x i64> %i.ep, splat (i64 4294967295)
  %i.es = mul nuw <8 x i64> %i.er, %i.eq
  %i.et = shufflevector <8 x i64> %i.eo, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.eu = add <8 x i64> %i.el, %i.et
  %i.ev = add <8 x i64> %i.eu, %i.es
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 960
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 1280
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ex, i32 0, i32 3, i32 1)
  %i.ey = load <8 x i64>, ptr %i.ew, align 1, !tbaa !21 ; 2 uses
  %i.ez = xor <8 x i64> %i.ey, <i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253> ; 2 uses
  %i.fa = lshr <8 x i64> %i.ez, splat (i64 32)
  %i.fb = and <8 x i64> %i.ez, splat (i64 4294967295)
  %i.fc = mul nuw <8 x i64> %i.fb, %i.fa
  %i.fd = shufflevector <8 x i64> %i.ey, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fe = add <8 x i64> %i.ev, %i.fd
  %i.ff = add <8 x i64> %i.fe, %i.fc              ; 2 uses
  %i.fg = lshr <8 x i64> %i.ff, splat (i64 47)
  %i.fh = bitcast <8 x i64> %i.ff to <16 x i32>
  %i.fi = bitcast <8 x i64> %i.fg to <16 x i32>
  %i.fj = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> <i32 -2085829142, i32 -1007955148, i32 -6258235, i32 -345828358, i32 1373441303, i32 1239085239, i32 643110611, i32 -1637297111, i32 1488852523, i32 -56539267, i32 -776406897, i32 -835596166, i32 -1891972283, i32 671356565, i32 -889464913, i32 2118142907>, <16 x i32> %i.fh, <16 x i32> %i.fi, i32 150) ; 2 uses
  %i.fk = bitcast <16 x i32> %i.fj to <8 x i64>
  %i.fl = lshr <8 x i64> %i.fk, splat (i64 32)
  %i.fm = bitcast <16 x i32> %i.fj to <8 x i64>
  %i.fn = and <8 x i64> %i.fm, splat (i64 4294967295)
  %i.fo = mul nuw <8 x i64> %i.fn, splat (i64 2654435761)
  %i.fp = mul <8 x i64> %i.fl, splat (i64 -7046029290881679360)
  %i.fq = add <8 x i64> %i.fo, %i.fp              ; 2 uses
  %i.fr = add nuw nsw i64 %.0.i.i24, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.fr, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi <8 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %bb.a ], [ %i.fq, %.lr.ph ] ; 3 uses
  %i.fs = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = and i64 %i.a, -1024
  %i.fu = lshr i64 %i.a, 6                        ; 3 uses
  %i.fv = and i64 %i.fu, 15
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 %i.ft ; 3 uses
  switch i64 %i.fv, label %.lr.ph28.preheader.new [
    i64 0, label %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit
    i64 1, label %.lr.ph28.epil.preheader
  ]

.lr.ph28.preheader.new:                           ; preds = %._crit_edge
  %unroll_iter = and i64 %i.fu, 14
  br label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28, %.lr.ph28.preheader.new
  %.0.i.i.i26 = phi i64 [ 0, %.lr.ph28.preheader.new ], [ %i.ha, %.lr.ph28 ] ; 4 uses
  %.sroa.0.225 = phi <8 x i64> [ %.sroa.0.0.lcssa, %.lr.ph28.preheader.new ], [ %i.gz, %.lr.ph28 ]
  %niter = phi i64 [ 0, %.lr.ph28.preheader.new ], [ %niter.next.1, %.lr.ph28 ]
  %i.fx = shl nuw nsw i64 %.0.i.i.i26, 6
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fz, i32 0, i32 3, i32 1)
  %i.ga = shl nuw nsw i64 %.0.i.i.i26, 3
  %i.gb = getelementptr inbounds nuw i8, ptr @_ZL12XXH3_kSecret, i64 %i.ga
  %i.gc = load <8 x i64>, ptr %i.fy, align 1, !tbaa !21 ; 2 uses
  %i.gd = load <8 x i64>, ptr %i.gb, align 16, !tbaa !21
  %i.ge = xor <8 x i64> %i.gd, %i.gc              ; 2 uses
  %i.gf = lshr <8 x i64> %i.ge, splat (i64 32)
  %i.gg = and <8 x i64> %i.ge, splat (i64 4294967295)
  %i.gh = mul nuw <8 x i64> %i.gg, %i.gf
  %i.gi = shufflevector <8 x i64> %i.gc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.gj = add <8 x i64> %.sroa.0.225, %i.gi
  %i.gk = add <8 x i64> %i.gj, %i.gh
  %i.gl = or disjoint i64 %.0.i.i.i26, 1          ; 2 uses
  %i.gm = shl nuw nsw i64 %i.gl, 6
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.go, i32 0, i32 3, i32 1)
  %i.gp = shl nuw nsw i64 %i.gl, 3
  %i.gq = getelementptr inbounds nuw i8, ptr @_ZL12XXH3_kSecret, i64 %i.gp
  %i.gr = load <8 x i64>, ptr %i.gn, align 1, !tbaa !21 ; 2 uses
  %i.gs = load <8 x i64>, ptr %i.gq, align 8, !tbaa !21
  %i.gt = xor <8 x i64> %i.gs, %i.gr              ; 2 uses
  %i.gu = lshr <8 x i64> %i.gt, splat (i64 32)
  %i.gv = and <8 x i64> %i.gt, splat (i64 4294967295)
  %i.gw = mul nuw <8 x i64> %i.gv, %i.gu
  %i.gx = shufflevector <8 x i64> %i.gr, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.gy = add <8 x i64> %i.gk, %i.gx
  %i.gz = add <8 x i64> %i.gy, %i.gw              ; 3 uses
  %i.ha = add nuw nsw i64 %.0.i.i.i26, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.loopexit.unr-lcssa, label %.lr.ph28, !llvm.loop !5

_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.loopexit.unr-lcssa: ; preds = %.lr.ph28
  %i.hb = and i64 %i.a, 64
  %lcmp.mod.not = icmp eq i64 %i.hb, 0
  br i1 %lcmp.mod.not, label %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit, label %.lr.ph28.epil.preheader

.lr.ph28.epil.preheader:                          ; preds = %._crit_edge, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.loopexit.unr-lcssa
  %.0.i.i.i26.epil.init = phi i64 [ 0, %._crit_edge ], [ %i.ha, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.225.epil.init = phi <8 x i64> [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.gz, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.loopexit.unr-lcssa ]
  %lcmp.mod7 = trunc i64 %i.fu to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %i.hc = shl nuw nsw i64 %.0.i.i.i26.epil.init, 6
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.hc ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.he, i32 0, i32 3, i32 1)
  %i.hf = shl nuw nsw i64 %.0.i.i.i26.epil.init, 3
  %i.hg = getelementptr inbounds nuw i8, ptr @_ZL12XXH3_kSecret, i64 %i.hf
  %i.hh = load <8 x i64>, ptr %i.hd, align 1, !tbaa !21 ; 2 uses
  %i.hi = load <8 x i64>, ptr %i.hg, align 8, !tbaa !21
  %i.hj = xor <8 x i64> %i.hi, %i.hh              ; 2 uses
  %i.hk = lshr <8 x i64> %i.hj, splat (i64 32)
  %i.hl = and <8 x i64> %i.hj, splat (i64 4294967295)
  %i.hm = mul nuw <8 x i64> %i.hl, %i.hk
  %i.hn = shufflevector <8 x i64> %i.hh, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ho = add <8 x i64> %.sroa.0.225.epil.init, %i.hn
  %i.hp = add <8 x i64> %i.ho, %i.hm
  br label %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit

_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit: ; preds = %.lr.ph28.epil.preheader, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.loopexit.unr-lcssa, %._crit_edge
  %.sroa.0.2.lcssa = phi <8 x i64> [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.gz, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit.loopexit.unr-lcssa ], [ %i.hp, %.lr.ph28.epil.preheader ]
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -64
  %i.hs = load <8 x i64>, ptr %i.hr, align 1, !tbaa !21 ; 2 uses
  %i.ht = xor <8 x i64> %i.hs, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491, i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077> ; 2 uses
  %i.hu = lshr <8 x i64> %i.ht, splat (i64 32)
  %i.hv = and <8 x i64> %i.ht, splat (i64 4294967295)
  %i.hw = mul nuw <8 x i64> %i.hv, %i.hu
  %i.hx = shufflevector <8 x i64> %i.hs, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.hy = add <8 x i64> %.sroa.0.2.lcssa, %i.hx
  %i.hz = add <8 x i64> %i.hy, %i.hw              ; 8 uses
  %i.ia = insertelement <2 x i64> poison, i64 %1, i64 0
  %i.ib = shufflevector <2 x i64> %i.ia, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ic = mul <2 x i64> %i.ib, <i64 -7046029288634856825, i64 -4417276706812531889>
  %i.id = shufflevector <8 x i64> %i.hz, <8 x i64> poison, <2 x i32> zeroinitializer
  %i.ie = xor <2 x i64> %i.id, <i64 7914194659941938988, i64 -2753530472436770380>
  %i.if = shufflevector <8 x i64> %i.hz, <8 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.ig = xor <2 x i64> %i.if, <i64 -6611157965513653271, i64 3784058077962335096>
  %i.ih = shufflevector <8 x i64> %i.hz, <8 x i64> poison, <2 x i32> <i32 2, i32 2>
  %i.ii = xor <2 x i64> %i.ih, <i64 -1839215637059881052, i64 -360392965937173549>
  %i.ij = shufflevector <8 x i64> %i.hz, <8 x i64> poison, <2 x i32> <i32 3, i32 3>
  %i.ik = xor <2 x i64> %i.ij, <i64 -3433288310154277810, i64 -5237161843349560557>
  %i.il = xor <2 x i64> %i.ic, <i64 0, i64 -1>
  %i.im = zext <2 x i64> %i.ig to <2 x i128>
  %i.in = zext <2 x i64> %i.ie to <2 x i128>
  %i.io = mul nuw <2 x i128> %i.im, %i.in         ; 2 uses
  %i.ip = lshr <2 x i128> %i.io, splat (i128 64)
  %i.iq = xor <2 x i128> %i.ip, %i.io
  %i.ir = trunc <2 x i128> %i.iq to <2 x i64>
  %i.is = add <2 x i64> %i.il, %i.ir
  %i.it = zext <2 x i64> %i.ik to <2 x i128>
  %i.iu = zext <2 x i64> %i.ii to <2 x i128>
  %i.iv = mul nuw <2 x i128> %i.it, %i.iu         ; 2 uses
  %i.iw = lshr <2 x i128> %i.iv, splat (i128 64)
  %i.ix = xor <2 x i128> %i.iw, %i.iv
  %i.iy = trunc <2 x i128> %i.ix to <2 x i64>
  %i.iz = add <2 x i64> %i.is, %i.iy
  %i.ja = shufflevector <8 x i64> %i.hz, <8 x i64> poison, <2 x i32> <i32 4, i32 4>
  %i.jb = xor <2 x i64> %i.ja, <i64 5046485836271438973, i64 2965150961192524528>
  %i.jc = shufflevector <8 x i64> %i.hz, <8 x i64> poison, <2 x i32> <i32 5, i32 5>
  %i.jd = xor <2 x i64> %i.jc, <i64 -8055285457383852172, i64 9032178055121889492>
  %i.je = zext <2 x i64> %i.jb to <2 x i128>
  %i.jf = zext <2 x i64> %i.jd to <2 x i128>
  %i.jg = mul nuw <2 x i128> %i.jf, %i.je         ; 2 uses
  %i.jh = lshr <2 x i128> %i.jg, splat (i128 64)
  %i.ji = xor <2 x i128> %i.jh, %i.jg
  %i.jj = trunc <2 x i128> %i.ji to <2 x i64>
  %i.jk = add <2 x i64> %i.iz, %i.jj
  %i.jl = shufflevector <8 x i64> %i.hz, <8 x i64> poison, <2 x i32> <i32 6, i32 6>
  %i.jm = xor <2 x i64> %i.jl, <i64 5920048007935066598, i64 8850058120466833735>
  %i.jn = shufflevector <8 x i64> %i.hz, <8 x i64> poison, <2 x i32> <i32 7, i32 7>
  %i.jo = xor <2 x i64> %i.jn, <i64 7336514198459093435, i64 -7669846995664752176>
  %i.jp = zext <2 x i64> %i.jm to <2 x i128>
  %i.jq = zext <2 x i64> %i.jo to <2 x i128>
  %i.jr = mul nuw <2 x i128> %i.jq, %i.jp         ; 2 uses
  %i.js = lshr <2 x i128> %i.jr, splat (i128 64)
  %i.jt = xor <2 x i128> %i.js, %i.jr
  %i.ju = trunc <2 x i128> %i.jt to <2 x i64>
  %i.jv = add <2 x i64> %i.jk, %i.ju              ; 2 uses
  %i.jw = lshr <2 x i64> %i.jv, splat (i64 37)
  %i.jx = xor <2 x i64> %i.jw, %i.jv
  %i.jy = mul <2 x i64> %i.jx, splat (i64 1609587791953885689) ; 2 uses
  %i.jz = lshr <2 x i64> %i.jy, splat (i64 32)
  %i.ka = xor <2 x i64> %i.jz, %i.jy              ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %i.ka, i64 0
  %i.kb = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %i.ka, i64 1
  %vec2struct4 = insertvalue { i64, i64 } %i.kb, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { i64, i64 } %vec2struct4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define { i64, i64 } @ROCKSDB_XXH3_128bits_withSecret(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ugt i64 %3, 135
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i64 %1, 17
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 8
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0), "nonnull"(ptr %2) ]
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val79 = load i64, ptr %i.d, align 1, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val78 = load i64, ptr %i.e, align 1, !tbaa !27
  %i.f = xor i64 %.val78, %.val79
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val77 = load i64, ptr %i.g, align 1, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val76 = load i64, ptr %i.h, align 1, !tbaa !27
  %i.i = xor i64 %.val76, %.val77
  %.val75 = load i64, ptr %0, align 1, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  %.val74 = load i64, ptr %i.k, align 1, !tbaa !27 ; 2 uses
  %i.l = xor i64 %i.f, %.val75
  %i.m = xor i64 %i.l, %.val74
  %i.n = zext i64 %i.m to i128
  %i.o = mul nuw i128 %i.n, 11400714785074694791  ; 2 uses
  %i.p = trunc i128 %i.o to i64
  %i.q = lshr i128 %i.o, 64
  %i.r = trunc nuw i128 %i.q to i64
  %i.s = shl nuw nsw i64 %1, 54
  %i.t = add nsw i64 %i.s, -18014398509481984
  %i.u = add i64 %i.t, %i.p
  %i.v = xor i64 %i.i, %.val74                    ; 2 uses
  %i.w = and i64 %i.v, 4294967295
  %i.x = mul nuw i64 %i.w, 2246822518
  %i.y = add i64 %i.x, %i.v
  %i.z = add i64 %i.y, %i.r                       ; 2 uses
  %i.aa = tail call noundef i64 @llvm.bswap.i64(i64 %i.z)
  %i.ab = xor i64 %i.aa, %i.u
  %i.ac = zext i64 %i.ab to i128
  %i.ad = mul nuw i128 %i.ac, 14029467366897019727 ; 2 uses
  %i.ae = trunc i128 %i.ad to i64                 ; 2 uses
  %i.af = lshr i128 %i.ad, 64
  %i.ag = trunc nuw i128 %i.af to i64
  %i.ah = mul i64 %i.z, -4417276706812531889
  %i.ai = add i64 %i.ah, %i.ag                    ; 2 uses
  %i.aj = lshr i64 %i.ae, 37
  %i.ak = xor i64 %i.aj, %i.ae
  %i.al = mul i64 %i.ak, 1609587791953885689      ; 2 uses
  %i.am = lshr i64 %i.al, 32
  %i.an = xor i64 %i.am, %i.al
  %i.ao = lshr i64 %i.ai, 37
  %i.ap = xor i64 %i.ao, %i.ai
  %i.aq = mul i64 %i.ap, 1609587791953885689      ; 2 uses
  %i.ar = lshr i64 %i.aq, 32
  %i.as = xor i64 %i.ar, %i.aq
  %.fca.0.insert.i3 = insertvalue { i64, i64 } poison, i64 %i.an, 0
  %.fca.1.insert.i4 = insertvalue { i64, i64 } %.fca.0.insert.i3, i64 %i.as, 1
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

bb.d:                                             ; preds = %bb.b
  %i.at = icmp samesign ugt i64 %1, 3
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0), "nonnull"(ptr %2) ]
  %.val23 = load i32, ptr %0, align 1, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4
  %.val22 = load i32, ptr %i.av, align 1, !tbaa !17
  %i.aw = zext i32 %.val23 to i64
  %i.ax = zext i32 %.val22 to i64
  %i.ay = shl nuw i64 %i.ax, 32
  %i.az = or disjoint i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val73 = load i64, ptr %i.ba, align 1, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val72 = load i64, ptr %i.bb, align 1, !tbaa !27
  %i.bc = xor i64 %.val72, %.val73
  %i.bd = xor i64 %i.bc, %i.az
  %i.be = shl nuw nsw i64 %1, 2
  %i.bf = add nuw nsw i64 %i.be, -7046029288634856825
  %i.bg = zext i64 %i.bd to i128
  %i.bh = zext i64 %i.bf to i128
  %i.bi = mul nuw i128 %i.bg, %i.bh               ; 2 uses
  %i.bj = trunc i128 %i.bi to i64                 ; 2 uses
  %i.bk = lshr i128 %i.bi, 64
  %i.bl = trunc nuw i128 %i.bk to i64
  %i.bm = shl i64 %i.bj, 1
  %i.bn = add i64 %i.bm, %i.bl                    ; 3 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = xor i64 %i.bo, %i.bj                    ; 2 uses
  %i.bq = lshr i64 %i.bp, 35
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = mul i64 %i.br, -6939452855193903323     ; 2 uses
  %i.bt = lshr i64 %i.bs, 28
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = lshr i64 %i.bn, 37
  %i.bw = xor i64 %i.bv, %i.bn
  %i.bx = mul i64 %i.bw, 1609587791953885689      ; 2 uses
  %i.by = lshr i64 %i.bx, 32
  %i.bz = xor i64 %i.by, %i.bx
  %.fca.0.insert.i5 = insertvalue { i64, i64 } poison, i64 %i.bu, 0
  %.fca.1.insert.i6 = insertvalue { i64, i64 } %.fca.0.insert.i5, i64 %i.bz, 1
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0), "nonnull"(ptr %2) ]
  %i.ca = load i8, ptr %0, align 1, !tbaa !21
  %i.cb = lshr i64 %1, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !21
  %i.ce = getelementptr i8, ptr %0, i64 %1
  %i.cf = getelementptr i8, ptr %i.ce, i64 -1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !21
  %i.ch = zext i8 %i.ca to i32
  %i.ci = shl nuw nsw i32 %i.ch, 16
  %i.cj = zext i8 %i.cd to i32
  %i.ck = shl nuw i32 %i.cj, 24
  %i.cl = or disjoint i32 %i.ck, %i.ci
  %i.cm = zext i8 %i.cg to i32
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = trunc nuw nsw i64 %1 to i32
  %i.cp = shl nuw nsw i32 %i.co, 8
  %i.cq = or disjoint i32 %i.cn, %i.cp            ; 2 uses
  %i.cr = tail call noundef i32 @llvm.bswap.i32(i32 %i.cq) ; 2 uses
  %i.cs = tail call i32 @llvm.fshl.i32(i32 %i.cr, i32 %i.cr, i32 13)
  %i.ct = load <4 x i32>, ptr %2, align 1, !tbaa !17 ; 2 uses
  %i.cu = shufflevector <4 x i32> %i.ct, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.cv = shufflevector <4 x i32> %i.ct, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.cw = xor <2 x i32> %i.cu, %i.cv
  %i.cx = insertelement <2 x i32> poison, i32 %i.cq, i64 0
  %i.cy = insertelement <2 x i32> %i.cx, i32 %i.cs, i64 1
  %i.cz = xor <2 x i32> %i.cw, %i.cy
  %i.da = zext <2 x i32> %i.cz to <2 x i64>
  %i.db = mul <2 x i64> %i.da, splat (i64 -4417276706812531889) ; 2 uses
  %i.dc = lshr <2 x i64> %i.db, splat (i64 29)
  %i.dd = xor <2 x i64> %i.dc, %i.db
  %i.de = mul <2 x i64> %i.dd, splat (i64 1609587929392839161) ; 2 uses
  %i.df = lshr <2 x i64> %i.de, splat (i64 32)
  %i.dg = xor <2 x i64> %i.df, %i.de              ; 2 uses
  %vec2struct.slot141.sroa.0.0.vec.extract = extractelement <2 x i64> %i.dg, i64 0
  %i.dh = insertvalue { i64, i64 } poison, i64 %vec2struct.slot141.sroa.0.0.vec.extract, 0
  %vec2struct.slot141.sroa.0.8.vec.extract = extractelement <2 x i64> %i.dg, i64 1
  %vec2struct142150 = insertvalue { i64, i64 } %i.dh, i64 %vec2struct.slot141.sroa.0.8.vec.extract, 1
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

bb.h:                                             ; preds = %bb.f
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dj = load <4 x i64>, ptr %i.di, align 1, !tbaa !27 ; 2 uses
  %i.dk = shufflevector <4 x i64> %i.dj, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.dl = shufflevector <4 x i64> %i.dj, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.dm = xor <2 x i64> %i.dk, %i.dl              ; 2 uses
  %i.dn = lshr <2 x i64> %i.dm, splat (i64 33)
  %i.do = xor <2 x i64> %i.dn, %i.dm
  %i.dp = mul <2 x i64> %i.do, splat (i64 -4417276706812531889) ; 2 uses
  %i.dq = lshr <2 x i64> %i.dp, splat (i64 29)
  %i.dr = xor <2 x i64> %i.dq, %i.dp
  %i.ds = mul <2 x i64> %i.dr, splat (i64 1609587929392839161) ; 2 uses
  %i.dt = lshr <2 x i64> %i.ds, splat (i64 32)
  %i.du = xor <2 x i64> %i.dt, %i.ds              ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %i.du, i64 0
  %i.dv = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %i.du, i64 1
  %vec2struct153 = insertvalue { i64, i64 } %i.dv, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

bb.i:                                             ; preds = %bb.a
  %i.dw = icmp ult i64 %1, 129
  br i1 %i.dw, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.dx = mul i64 %1, -7046029288634856825        ; 4 uses
  %i.dy = icmp samesign ugt i64 %1, 32
  br i1 %i.dy, label %bb.k, label %_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit

bb.k:                                             ; preds = %bb.j
  %i.dz = icmp samesign ugt i64 %1, 64
  br i1 %i.dz, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ea = icmp samesign ugt i64 %1, 96
  br i1 %i.ea, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -64
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.val71 = load i64, ptr %i.eb, align 1, !tbaa !27 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val70 = load i64, ptr %i.ef, align 1, !tbaa !27 ; 2 uses
  %.val69 = load i64, ptr %i.ee, align 1, !tbaa !27
  %i.eg = xor i64 %.val69, %.val71
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.val68 = load i64, ptr %i.eh, align 1, !tbaa !27
  %i.ei = xor i64 %.val68, %.val70
  %i.ej = zext i64 %i.eg to i128
  %i.ek = zext i64 %i.ei to i128
  %i.el = mul nuw i128 %i.ek, %i.ej               ; 2 uses
  %i.em = lshr i128 %i.el, 64
  %i.en = xor i128 %i.em, %i.el
  %i.eo = trunc i128 %i.en to i64
  %i.ep = add i64 %i.dx, %i.eo
  %.val67 = load i64, ptr %i.ed, align 1, !tbaa !27 ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.ec, i64 -56
  %.val66 = load i64, ptr %i.eq, align 1, !tbaa !27 ; 2 uses
  %i.er = add i64 %.val66, %.val67
  %i.es = xor i64 %i.ep, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.val63 = load i64, ptr %i.et, align 1, !tbaa !27
  %i.eu = xor i64 %.val63, %.val67
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 120
  %.val62 = load i64, ptr %i.ev, align 1, !tbaa !27
  %i.ew = xor i64 %.val62, %.val66
  %i.ex = zext i64 %i.eu to i128
  %i.ey = zext i64 %i.ew to i128
  %i.ez = mul nuw i128 %i.ey, %i.ex               ; 2 uses
  %i.fa = lshr i128 %i.ez, 64
  %i.fb = xor i128 %i.fa, %i.ez
  %i.fc = trunc i128 %i.fb to i64
  %i.fd = add i64 %.val70, %.val71
  %i.fe = xor i64 %i.fd, %i.fc
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.015.0.i = phi i64 [ %i.es, %bb.m ], [ %i.dx, %bb.l ]
  %.sroa.13.0.i = phi i64 [ %i.fe, %bb.m ], [ 0, %bb.l ]
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -48
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.val59 = load i64, ptr %i.ff, align 1, !tbaa !27 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val58 = load i64, ptr %i.fj, align 1, !tbaa !27 ; 2 uses
  %.val57 = load i64, ptr %i.fi, align 1, !tbaa !27
  %i.fk = xor i64 %.val57, %.val59
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.val56 = load i64, ptr %i.fl, align 1, !tbaa !27
  %i.fm = xor i64 %.val56, %.val58
  %i.fn = zext i64 %i.fk to i128
  %i.fo = zext i64 %i.fm to i128
  %i.fp = mul nuw i128 %i.fo, %i.fn               ; 2 uses
  %i.fq = lshr i128 %i.fp, 64
  %i.fr = xor i128 %i.fq, %i.fp
  %i.fs = trunc i128 %i.fr to i64
  %i.ft = add i64 %.sroa.015.0.i, %i.fs
  %.val55 = load i64, ptr %i.fh, align 1, !tbaa !27 ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.fg, i64 -40
  %.val54 = load i64, ptr %i.fu, align 1, !tbaa !27 ; 2 uses
  %i.fv = add i64 %.val54, %.val55
  %i.fw = xor i64 %i.ft, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.val51 = load i64, ptr %i.fx, align 1, !tbaa !27
  %i.fy = xor i64 %.val51, %.val55
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.val50 = load i64, ptr %i.fz, align 1, !tbaa !27
  %i.ga = xor i64 %.val50, %.val54
  %i.gb = zext i64 %i.fy to i128
  %i.gc = zext i64 %i.ga to i128
  %i.gd = mul nuw i128 %i.gc, %i.gb               ; 2 uses
  %i.ge = lshr i128 %i.gd, 64
  %i.gf = xor i128 %i.ge, %i.gd
  %i.gg = trunc i128 %i.gf to i64
  %i.gh = add i64 %.sroa.13.0.i, %i.gg
  %i.gi = add i64 %.val58, %.val59
  %i.gj = xor i64 %i.gh, %i.gi
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.sroa.015.1.i = phi i64 [ %i.fw, %bb.n ], [ %i.dx, %bb.k ]
  %.sroa.13.1.i = phi i64 [ %i.gj, %bb.n ], [ 0, %bb.k ]
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 -32
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val47 = load i64, ptr %i.gk, align 1, !tbaa !27 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val46 = load i64, ptr %i.go, align 1, !tbaa !27 ; 2 uses
  %.val45 = load i64, ptr %i.gn, align 1, !tbaa !27
  %i.gp = xor i64 %.val45, %.val47
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val44 = load i64, ptr %i.gq, align 1, !tbaa !27
  %i.gr = xor i64 %.val44, %.val46
  %i.gs = zext i64 %i.gp to i128
  %i.gt = zext i64 %i.gr to i128
  %i.gu = mul nuw i128 %i.gt, %i.gs               ; 2 uses
  %i.gv = lshr i128 %i.gu, 64
  %i.gw = xor i128 %i.gv, %i.gu
  %i.gx = trunc i128 %i.gw to i64
  %i.gy = add i64 %.sroa.015.1.i, %i.gx
  %.val43 = load i64, ptr %i.gm, align 1, !tbaa !27 ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gl, i64 -24
  %.val42 = load i64, ptr %i.gz, align 1, !tbaa !27 ; 2 uses
  %i.ha = add i64 %.val42, %.val43
  %i.hb = xor i64 %i.gy, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val39 = load i64, ptr %i.hc, align 1, !tbaa !27
  %i.hd = xor i64 %.val39, %.val43
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val38 = load i64, ptr %i.he, align 1, !tbaa !27
  %i.hf = xor i64 %.val38, %.val42
  %i.hg = zext i64 %i.hd to i128
  %i.hh = zext i64 %i.hf to i128
  %i.hi = mul nuw i128 %i.hh, %i.hg               ; 2 uses
  %i.hj = lshr i128 %i.hi, 64
  %i.hk = xor i128 %i.hj, %i.hi
  %i.hl = trunc i128 %i.hk to i64
end_hunk_2
begin_hunk_3_@ROCKSDB_XXH3_128bits_withSecretandSeed:bb.a
  %i.om = add <8 x i64> %.sroa.0.1.lcssa, %i.ol
  %i.on = add <8 x i64> %i.om, %i.ok              ; 9 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 11
  %.sroa.0.0.vec.extract = extractelement <8 x i64> %i.on, i64 0
  %.sroa.0.8.vec.extract = extractelement <8 x i64> %i.on, i64 1
  %.sroa.0.16.vec.extract = extractelement <8 x i64> %i.on, i64 2
  %.sroa.0.24.vec.extract = extractelement <8 x i64> %i.on, i64 3
  %i.op = load <4 x i64>, ptr %i.oo, align 1, !tbaa !27
  %i.oq = shufflevector <8 x i64> %i.on, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.or = xor <4 x i64> %i.oq, %i.op
  %i.os = zext <4 x i64> %i.or to <4 x i128>      ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 43
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 59
  %i.ov = getelementptr inbounds i8, ptr %i.od, i64 -75
  %i.ow = insertelement <2 x i64> poison, i64 %1, i64 0
  %i.ox = shufflevector <2 x i64> %i.ow, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.oy = mul <2 x i64> %i.ox, <i64 -7046029288634856825, i64 -4417276706812531889>
  %.val9.i95 = load i64, ptr %i.ov, align 1, !tbaa !27
  %i.oz = xor i64 %.val9.i95, %.sroa.0.0.vec.extract
  %i.pa = bitcast <8 x i64> %i.og to i512         ; 3 uses
  %i.pb = lshr i512 %i.pa, 32
  %i.pc = trunc i512 %i.pb to i64
  %i.pd = xor i64 %.sroa.0.8.vec.extract, %i.pc
  %i.pe = zext i64 %i.oz to i128
  %i.pf = zext i64 %i.pd to i128
  %i.pg = lshr i512 %i.pa, 96
  %i.ph = trunc i512 %i.pg to i64
  %i.pi = xor i64 %.sroa.0.16.vec.extract, %i.ph
  %i.pj = lshr i512 %i.pa, 160
  %i.pk = trunc i512 %i.pj to i64
  %i.pl = xor i64 %.sroa.0.24.vec.extract, %i.pk
  %i.pm = zext i64 %i.pi to i128
  %i.pn = zext i64 %i.pl to i128
  %i.po = getelementptr inbounds i8, ptr %i.od, i64 -43
  %i.pp = getelementptr inbounds i8, ptr %i.od, i64 -27
  %i.pq = load <2 x i64>, ptr %i.ot, align 1, !tbaa !27 ; 2 uses
  %i.pr = load <2 x i64>, ptr %i.ou, align 1, !tbaa !27 ; 2 uses
  %i.ps = xor <2 x i64> %i.oy, <i64 0, i64 -1>
  %i.pt = shufflevector <4 x i128> %i.os, <4 x i128> poison, <2 x i32> <i32 1, i32 poison>
  %i.pu = insertelement <2 x i128> %i.pt, i128 %i.pf, i64 1
  %i.pv = shufflevector <4 x i128> %i.os, <4 x i128> poison, <2 x i32> <i32 0, i32 poison>
  %i.pw = insertelement <2 x i128> %i.pv, i128 %i.pe, i64 1
  %i.px = mul nuw <2 x i128> %i.pu, %i.pw         ; 2 uses
  %i.py = lshr <2 x i128> %i.px, splat (i128 64)
  %i.pz = xor <2 x i128> %i.py, %i.px
  %i.qa = trunc <2 x i128> %i.pz to <2 x i64>
  %i.qb = add <2 x i64> %i.ps, %i.qa
  %i.qc = shufflevector <4 x i128> %i.os, <4 x i128> poison, <2 x i32> <i32 3, i32 poison>
  %i.qd = insertelement <2 x i128> %i.qc, i128 %i.pn, i64 1
  %i.qe = shufflevector <4 x i128> %i.os, <4 x i128> poison, <2 x i32> <i32 2, i32 poison>
  %i.qf = insertelement <2 x i128> %i.qe, i128 %i.pm, i64 1
  %i.qg = mul nuw <2 x i128> %i.qd, %i.qf         ; 2 uses
  %i.qh = lshr <2 x i128> %i.qg, splat (i128 64)
  %i.qi = xor <2 x i128> %i.qh, %i.qg
  %i.qj = trunc <2 x i128> %i.qi to <2 x i64>
  %i.qk = add <2 x i64> %i.qb, %i.qj
  %i.ql = load <2 x i64>, ptr %i.po, align 1, !tbaa !27 ; 2 uses
  %i.qm = shufflevector <2 x i64> %i.pq, <2 x i64> %i.ql, <2 x i32> <i32 0, i32 2>
  %i.qn = shufflevector <8 x i64> %i.on, <8 x i64> poison, <2 x i32> <i32 4, i32 4>
  %i.qo = xor <2 x i64> %i.qm, %i.qn
  %i.qp = shufflevector <2 x i64> %i.pq, <2 x i64> %i.ql, <2 x i32> <i32 1, i32 3>
  %i.qq = shufflevector <8 x i64> %i.on, <8 x i64> poison, <2 x i32> <i32 5, i32 5>
  %i.qr = xor <2 x i64> %i.qp, %i.qq
  %i.qs = zext <2 x i64> %i.qo to <2 x i128>
  %i.qt = zext <2 x i64> %i.qr to <2 x i128>
  %i.qu = mul nuw <2 x i128> %i.qt, %i.qs         ; 2 uses
  %i.qv = lshr <2 x i128> %i.qu, splat (i128 64)
  %i.qw = xor <2 x i128> %i.qv, %i.qu
  %i.qx = trunc <2 x i128> %i.qw to <2 x i64>
  %i.qy = add <2 x i64> %i.qk, %i.qx
  %i.qz = load <2 x i64>, ptr %i.pp, align 1, !tbaa !27 ; 2 uses
  %i.ra = shufflevector <2 x i64> %i.pr, <2 x i64> %i.qz, <2 x i32> <i32 0, i32 2>
  %i.rb = shufflevector <8 x i64> %i.on, <8 x i64> poison, <2 x i32> <i32 6, i32 6>
  %i.rc = xor <2 x i64> %i.ra, %i.rb
  %i.rd = shufflevector <2 x i64> %i.pr, <2 x i64> %i.qz, <2 x i32> <i32 1, i32 3>
  %i.re = shufflevector <8 x i64> %i.on, <8 x i64> poison, <2 x i32> <i32 7, i32 7>
  %i.rf = xor <2 x i64> %i.rd, %i.re
  %i.rg = zext <2 x i64> %i.rc to <2 x i128>
  %i.rh = zext <2 x i64> %i.rf to <2 x i128>
  %i.ri = mul nuw <2 x i128> %i.rh, %i.rg         ; 2 uses
  %i.rj = lshr <2 x i128> %i.ri, splat (i128 64)
  %i.rk = xor <2 x i128> %i.rj, %i.ri
  %i.rl = trunc <2 x i128> %i.rk to <2 x i64>
  %i.rm = add <2 x i64> %i.qy, %i.rl              ; 2 uses
  %i.rn = lshr <2 x i64> %i.rm, splat (i64 37)
  %i.ro = xor <2 x i64> %i.rn, %i.rm
  %i.rp = mul <2 x i64> %i.ro, splat (i64 1609587791953885689) ; 2 uses
  %i.rq = lshr <2 x i64> %i.rp, splat (i64 32)
  %i.rr = xor <2 x i64> %i.rq, %i.rp              ; 2 uses
  %vec2struct.slot148.sroa.0.0.vec.extract = extractelement <2 x i64> %i.rr, i64 0
  %i.rs = insertvalue { i64, i64 } poison, i64 %vec2struct.slot148.sroa.0.0.vec.extract, 0
  %vec2struct.slot148.sroa.0.8.vec.extract = extractelement <2 x i64> %i.rr, i64 1
  %vec2struct149152 = insertvalue { i64, i64 } %i.rs, i64 %vec2struct.slot148.sroa.0.8.vec.extract, 1
  br label %_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit

_ZL21XXH3_128bits_internalPKvmmS0_mPF13XXH128_hash_tS0_mmS0_mE.exit: ; preds = %bb.q, %_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit, %bb.d, %bb.f, %bb.h, %bb.i, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit
  %.pn = phi { i64, i64 } [ %vec2struct149152, %_ZL27XXH3_hashLong_128b_internalPKvmPKhmPFvPmS2_S2_mEPFvPvS0_E.exit ], [ %vec2struct158, %bb.i ], [ %.fca.1.insert.i, %_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit ], [ %i.jk, %bb.q ], [ %.fca.1.insert.i10, %bb.d ], [ %.fca.1.insert.i12, %bb.f ], [ %vec2struct147155, %bb.h ]
  ret { i64, i64 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define { i64, i64 } @ROCKSDB_XXH128(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #19 {
bb.a:
  %i.a = tail call { i64, i64 } @ROCKSDB_XXH3_128bits_withSeed(ptr noundef captures(address) %0, i64 noundef %1, i64 noundef %2) #34
  ret { i64, i64 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_128bits_reset(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ROCKSDB_XXH3_64bits_reset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.c, align 32, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr @_ZL12XXH3_kSecret, ptr %i.e, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %i.f, align 32, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %i.g, align 8, !tbaa !37
  br label %ROCKSDB_XXH3_64bits_reset.exit

ROCKSDB_XXH3_64bits_reset.exit:                   ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_128bits_reset_withSecret(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ROCKSDB_XXH3_64bits_reset_withSecret.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.c, align 32, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %1, ptr %i.e, align 8, !tbaa !35
  %i.f = icmp ugt i64 %2, 135
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add i64 %2, -64                          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.g, ptr %i.h, align 32, !tbaa !36
  %i.i = lshr i64 %i.g, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.i, ptr %i.j, align 8, !tbaa !37
  %i.k = icmp eq ptr %1, null
  %spec.select.i = zext i1 %i.k to i32
  br label %ROCKSDB_XXH3_64bits_reset_withSecret.exit

ROCKSDB_XXH3_64bits_reset_withSecret.exit:        ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %spec.select.i, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_128bits_reset_withSeed(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ROCKSDB_XXH3_64bits_reset_withSeed.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %ROCKSDB_XXH3_64bits_reset.exit.i, label %bb.c

ROCKSDB_XXH3_64bits_reset.exit.i:                 ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.d, align 32, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %i.e, align 8, !tbaa !34
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !34
  %.not.i = icmp eq i64 %1, %i.g
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %.not12.i = icmp eq ptr %i.i, null
  br i1 %.not12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = insertelement <8 x i64> poison, i64 %1, i64 0
  %i.k = shufflevector <8 x i64> %i.j, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.l = sub <8 x i64> <i64 poison, i64 0, i64 poison, i64 0, i64 poison, i64 0, i64 poison, i64 0>, %i.k
  %i.m = shufflevector <8 x i64> %i.k, <8 x i64> %i.l, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 3 uses
  %i.n = add <8 x i64> %i.m, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  store <8 x i64> %i.n, ptr %2, align 64, !tbaa !21
  %i.o = add <8 x i64> %i.m, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %i.o, ptr %i.p, align 64, !tbaa !21
  %i.q = add <8 x i64> %i.m, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <8 x i64> %i.q, ptr %i.r, align 64, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.t, align 32, !tbaa !27
  store i64 %1, ptr %i.f, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 1, ptr %i.u, align 4, !tbaa !38
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %ROCKSDB_XXH3_64bits_reset.exit.i
  %.sink.i = phi ptr [ null, %bb.f ], [ @_ZL12XXH3_kSecret, %ROCKSDB_XXH3_64bits_reset.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %.sink.i, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %i.w, align 32, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %i.x, align 8, !tbaa !37
  br label %ROCKSDB_XXH3_64bits_reset_withSeed.exit

ROCKSDB_XXH3_64bits_reset_withSeed.exit:          ; preds = %bb.a, %.sink.split.i
  %.0.i = phi i32 [ 1, %bb.a ], [ 0, %.sink.split.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_128bits_reset_withSecretandSeed(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  %i.c = icmp ult i64 %2, 136
  %or.cond11.i = or i1 %or.cond.i, %i.c
  br i1 %or.cond11.i, label %ROCKSDB_XXH3_64bits_reset_withSecretandSeed.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.e, align 32, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %3, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %1, ptr %i.h, align 8, !tbaa !35
  %i.i = add i64 %2, -64                          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.i, ptr %i.j, align 32, !tbaa !36
  %i.k = lshr i64 %i.i, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.k, ptr %i.l, align 8, !tbaa !37
  store i32 1, ptr %i.g, align 4, !tbaa !38
  br label %ROCKSDB_XXH3_64bits_reset_withSecretandSeed.exit

ROCKSDB_XXH3_64bits_reset_withSecretandSeed.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef i32 @ROCKSDB_XXH3_128bits_update(ptr nofree noundef captures(address) %0, ptr noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %i.b)
  br label %_ZL11XXH3_updateP12XXH3_state_sPKhmPFvPmS2_S2_mEPFvPvPKvE.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = select i1 %i.f, ptr %i.g, ptr %i.e       ; 18 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.j = load i64, ptr %i.i, align 16, !tbaa !39
  %i.k = add i64 %i.j, %2
  store i64 %i.k, ptr %i.i, align 16, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.m = load i32, ptr %i.l, align 64, !tbaa !40  ; 4 uses
  %i.n = icmp ult i32 %i.m, 257
  tail call void @llvm.assume(i1 %i.n)
  %i.o = zext nneg i32 %i.m to i64                ; 3 uses
  %i.p = add i64 %2, %i.o
  %i.q = icmp ult i64 %i.p, 257
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.t = trunc i64 %2 to i32
  %i.u = load i32, ptr %i.l, align 64, !tbaa !40
  %i.v = add i32 %i.u, %i.t
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 536
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !37
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.w = sub nuw nsw i32 256, %i.m
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %1, i64 %i.x, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !37 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.af = load i64, ptr %i.ae, align 32, !tbaa !36
  %i.ag = icmp ugt i64 %i.ad, 3
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !27 ; 5 uses
  %i.ai = icmp ult i64 %i.ah, %i.ad
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = sub nuw i64 %i.ad, %i.ah                ; 7 uses
  %.not.i8 = icmp ugt i64 %i.aj, 4
  %i.ak = shl i64 %i.ah, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ak ; 8 uses
  %.promoted21 = load <8 x i64>, ptr %0, align 64, !tbaa !21 ; 2 uses
  br i1 %.not.i8, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15, label %.preheader85

.preheader85:                                     ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %i.am, i32 0, i32 3, i32 1)
  %i.an = load <8 x i64>, ptr %i.y, align 64, !tbaa !21 ; 2 uses
  %i.ao = load <8 x i64>, ptr %i.al, align 1, !tbaa !21
  %i.ap = xor <8 x i64> %i.ao, %i.an              ; 2 uses
  %i.aq = lshr <8 x i64> %i.ap, splat (i64 32)
  %i.ar = and <8 x i64> %i.ap, splat (i64 4294967295)
  %i.as = mul nuw <8 x i64> %i.ar, %i.aq
  %i.at = shufflevector <8 x i64> %i.an, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.au = add <8 x i64> %.promoted21, %i.at
  %i.av = add <8 x i64> %i.au, %i.as              ; 3 uses
  store <8 x i64> %i.av, ptr %0, align 64, !tbaa !21
  %exitcond.not = icmp eq i64 %i.aj, 1
  br i1 %exitcond.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, label %.preheader85.1

.preheader85.1:                                   ; preds = %.preheader85
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ax, i32 0, i32 3, i32 1)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.az = load <8 x i64>, ptr %i.aw, align 64, !tbaa !21 ; 2 uses
  %i.ba = load <8 x i64>, ptr %i.ay, align 1, !tbaa !21
  %i.bb = xor <8 x i64> %i.ba, %i.az              ; 2 uses
  %i.bc = lshr <8 x i64> %i.bb, splat (i64 32)
  %i.bd = and <8 x i64> %i.bb, splat (i64 4294967295)
  %i.be = mul nuw <8 x i64> %i.bd, %i.bc
  %i.bf = shufflevector <8 x i64> %i.az, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.bg = add <8 x i64> %i.av, %i.bf
  %i.bh = add <8 x i64> %i.bg, %i.be              ; 3 uses
  store <8 x i64> %i.bh, ptr %0, align 64, !tbaa !21
  %exitcond.not.1 = icmp eq i64 %i.aj, 2
  br i1 %exitcond.not.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, label %.preheader85.2

.preheader85.2:                                   ; preds = %.preheader85.1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bj, i32 0, i32 3, i32 1)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bl = load <8 x i64>, ptr %i.bi, align 64, !tbaa !21 ; 2 uses
  %i.bm = load <8 x i64>, ptr %i.bk, align 1, !tbaa !21
  %i.bn = xor <8 x i64> %i.bm, %i.bl              ; 2 uses
  %i.bo = lshr <8 x i64> %i.bn, splat (i64 32)
  %i.bp = and <8 x i64> %i.bn, splat (i64 4294967295)
  %i.bq = mul nuw <8 x i64> %i.bp, %i.bo
  %i.br = shufflevector <8 x i64> %i.bl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.bs = add <8 x i64> %i.bh, %i.br
  %i.bt = add <8 x i64> %i.bs, %i.bq              ; 3 uses
  store <8 x i64> %i.bt, ptr %0, align 64, !tbaa !21
  %exitcond.not.2 = icmp eq i64 %i.aj, 3
  br i1 %exitcond.not.2, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, label %.preheader85.3

.preheader85.3:                                   ; preds = %.preheader85.2
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bv, i32 0, i32 3, i32 1)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bx = load <8 x i64>, ptr %i.bu, align 64, !tbaa !21 ; 2 uses
  %i.by = load <8 x i64>, ptr %i.bw, align 1, !tbaa !21
  %i.bz = xor <8 x i64> %i.by, %i.bx              ; 2 uses
  %i.ca = lshr <8 x i64> %i.bz, splat (i64 32)
  %i.cb = and <8 x i64> %i.bz, splat (i64 4294967295)
  %i.cc = mul nuw <8 x i64> %i.cb, %i.ca
  %i.cd = shufflevector <8 x i64> %i.bx, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ce = add <8 x i64> %i.bt, %i.cd
  %i.cf = add <8 x i64> %i.ce, %i.cc              ; 2 uses
  store <8 x i64> %i.cf, ptr %0, align 64, !tbaa !21
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10:  ; preds = %.preheader85.3, %.preheader85.2, %.preheader85.1, %.preheader85
  %.lcssa102 = phi <8 x i64> [ %i.av, %.preheader85 ], [ %i.bh, %.preheader85.1 ], [ %i.bt, %.preheader85.2 ], [ %i.cf, %.preheader85.3 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.cg = sub nsw i64 4, %i.aj                    ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.af
  %i.ci = lshr <8 x i64> %.lcssa102, splat (i64 47)
  %i.cj = load <16 x i32>, ptr %i.ch, align 1, !tbaa !21
  %i.ck = bitcast <8 x i64> %.lcssa102 to <16 x i32>
  %i.cl = bitcast <8 x i64> %i.ci to <16 x i32>
  %i.cm = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cj, <16 x i32> %i.ck, <16 x i32> %i.cl, i32 150) ; 2 uses
  %i.cn = bitcast <16 x i32> %i.cm to <8 x i64>
  %i.co = lshr <8 x i64> %i.cn, splat (i64 32)
  %i.cp = bitcast <16 x i32> %i.cm to <8 x i64>
  %i.cq = and <8 x i64> %i.cp, splat (i64 4294967295)
  %i.cr = mul nuw <8 x i64> %i.cq, splat (i64 2654435761)
  %i.cs = mul <8 x i64> %i.co, splat (i64 -7046029290881679360)
  %i.ct = add <8 x i64> %i.cr, %i.cs              ; 3 uses
  store <8 x i64> %i.ct, ptr %0, align 64, !tbaa !21
  %i.cu = shl nuw nsw i64 %i.aj, 6
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cu ; 3 uses
  %.not = icmp eq i64 %i.aj, 4
  br i1 %.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.cw = add i64 %i.ah, 3
  %xtraiter = and i64 %i.cg, 1
  %i.cx = icmp eq i64 %i.cw, %i.ad
  br i1 %i.cx, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cg, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %i.cy = phi <8 x i64> [ %i.ct, %.lr.ph.new ], [ %i.eb, %bb.g ]
  %.0.i37.i1119 = phi i64 [ 0, %.lr.ph.new ], [ %i.ec, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.cz = shl nuw nsw i64 %.0.i37.i1119, 6
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.db, i32 0, i32 3, i32 1)
  %i.dc = shl nuw nsw i64 %.0.i37.i1119, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dc
  %i.de = load <8 x i64>, ptr %i.da, align 64, !tbaa !21 ; 2 uses
  %i.df = load <8 x i64>, ptr %i.dd, align 1, !tbaa !21
  %i.dg = xor <8 x i64> %i.df, %i.de              ; 2 uses
  %i.dh = lshr <8 x i64> %i.dg, splat (i64 32)
  %i.di = and <8 x i64> %i.dg, splat (i64 4294967295)
  %i.dj = mul nuw <8 x i64> %i.di, %i.dh
  %i.dk = shufflevector <8 x i64> %i.de, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.dl = add <8 x i64> %i.cy, %i.dk
  %i.dm = add <8 x i64> %i.dl, %i.dj              ; 2 uses
  store <8 x i64> %i.dm, ptr %0, align 64, !tbaa !21
  %i.dn = or disjoint i64 %.0.i37.i1119, 1        ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 6
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dq, i32 0, i32 3, i32 1)
  %i.dr = shl nuw nsw i64 %i.dn, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dr
  %i.dt = load <8 x i64>, ptr %i.dp, align 64, !tbaa !21 ; 2 uses
  %i.du = load <8 x i64>, ptr %i.ds, align 1, !tbaa !21
  %i.dv = xor <8 x i64> %i.du, %i.dt              ; 2 uses
  %i.dw = lshr <8 x i64> %i.dv, splat (i64 32)
  %i.dx = and <8 x i64> %i.dv, splat (i64 4294967295)
  %i.dy = mul nuw <8 x i64> %i.dx, %i.dw
  %i.dz = shufflevector <8 x i64> %i.dt, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ea = add <8 x i64> %i.dm, %i.dz
  %i.eb = add <8 x i64> %i.ea, %i.dy              ; 3 uses
  store <8 x i64> %i.eb, ptr %0, align 64, !tbaa !21
  %i.ec = add nuw nsw i64 %.0.i37.i1119, 2        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, label %bb.g, !llvm.loop !5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15:    ; preds = %bb.f
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ed, i32 0, i32 3, i32 1)
  %i.ee = load <8 x i64>, ptr %i.y, align 64, !tbaa !21 ; 2 uses
  %i.ef = load <8 x i64>, ptr %i.al, align 1, !tbaa !21
  %i.eg = xor <8 x i64> %i.ef, %i.ee              ; 2 uses
  %i.eh = lshr <8 x i64> %i.eg, splat (i64 32)
  %i.ei = and <8 x i64> %i.eg, splat (i64 4294967295)
  %i.ej = mul nuw <8 x i64> %i.ei, %i.eh
  %i.ek = shufflevector <8 x i64> %i.ee, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.el = add <8 x i64> %.promoted21, %i.ek
  %i.em = add <8 x i64> %i.el, %i.ej              ; 2 uses
  store <8 x i64> %i.em, ptr %0, align 64, !tbaa !21
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %i.eo, i32 0, i32 3, i32 1)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.eq = load <8 x i64>, ptr %i.en, align 64, !tbaa !21 ; 2 uses
  %i.er = load <8 x i64>, ptr %i.ep, align 1, !tbaa !21
  %i.es = xor <8 x i64> %i.er, %i.eq              ; 2 uses
  %i.et = lshr <8 x i64> %i.es, splat (i64 32)
  %i.eu = and <8 x i64> %i.es, splat (i64 4294967295)
  %i.ev = mul nuw <8 x i64> %i.eu, %i.et
  %i.ew = shufflevector <8 x i64> %i.eq, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ex = add <8 x i64> %i.em, %i.ew
  %i.ey = add <8 x i64> %i.ex, %i.ev              ; 2 uses
  store <8 x i64> %i.ey, ptr %0, align 64, !tbaa !21
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fa, i32 0, i32 3, i32 1)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.fc = load <8 x i64>, ptr %i.ez, align 64, !tbaa !21 ; 2 uses
  %i.fd = load <8 x i64>, ptr %i.fb, align 1, !tbaa !21
  %i.fe = xor <8 x i64> %i.fd, %i.fc              ; 2 uses
  %i.ff = lshr <8 x i64> %i.fe, splat (i64 32)
  %i.fg = and <8 x i64> %i.fe, splat (i64 4294967295)
  %i.fh = mul nuw <8 x i64> %i.fg, %i.ff
  %i.fi = shufflevector <8 x i64> %i.fc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fj = add <8 x i64> %i.ey, %i.fi
  %i.fk = add <8 x i64> %i.fj, %i.fh              ; 2 uses
  store <8 x i64> %i.fk, ptr %0, align 64, !tbaa !21
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fm, i32 0, i32 3, i32 1)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.fo = load <8 x i64>, ptr %i.fl, align 64, !tbaa !21 ; 2 uses
  %i.fp = load <8 x i64>, ptr %i.fn, align 1, !tbaa !21
  %i.fq = xor <8 x i64> %i.fp, %i.fo              ; 2 uses
  %i.fr = lshr <8 x i64> %i.fq, splat (i64 32)
  %i.fs = and <8 x i64> %i.fq, splat (i64 4294967295)
  %i.ft = mul nuw <8 x i64> %i.fs, %i.fr
  %i.fu = shufflevector <8 x i64> %i.fo, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fv = add <8 x i64> %i.fk, %i.fu
  %i.fw = add <8 x i64> %i.fv, %i.ft
  store <8 x i64> %i.fw, ptr %0, align 64, !tbaa !21
  %i.fx = add i64 %i.ah, 4
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi <8 x i64> [ %i.ct, %.lr.ph ], [ %i.eb, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ]
  %.0.i37.i1119.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ec, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod103 = trunc i64 %i.cg to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.fy = shl nuw nsw i64 %.0.i37.i1119.epil.init, 6
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ga, i32 0, i32 3, i32 1)
  %i.gb = shl nuw nsw i64 %.0.i37.i1119.epil.init, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gb
  %i.gd = load <8 x i64>, ptr %i.fz, align 64, !tbaa !21 ; 2 uses
  %i.ge = load <8 x i64>, ptr %i.gc, align 1, !tbaa !21
  %i.gf = xor <8 x i64> %i.ge, %i.gd              ; 2 uses
  %i.gg = lshr <8 x i64> %i.gf, splat (i64 32)
  %i.gh = and <8 x i64> %i.gf, splat (i64 4294967295)
  %i.gi = mul nuw <8 x i64> %i.gh, %i.gg
  %i.gj = shufflevector <8 x i64> %i.gd, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.gk = add <8 x i64> %.epil.init, %i.gj
  %i.gl = add <8 x i64> %i.gk, %i.gi
  store <8 x i64> %i.gl, ptr %0, align 64, !tbaa !21
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16: ; preds = %.epil.preheader, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15
  %storemerge.i13 = phi i64 [ %i.fx, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15 ], [ 0, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10 ], [ %i.cg, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ], [ %i.cg, %.epil.preheader ]
  store i64 %storemerge.i13, ptr %i.ab, align 8, !tbaa !27
  store i32 0, ptr %i.l, align 64, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16
  %i.gm = phi i64 [ %i.ad, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16 ], [ %.pre, %._crit_edge ] ; 17 uses
  %.0125.i = phi ptr [ %i.aa, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16 ], [ %1, %._crit_edge ] ; 8 uses
  %i.gn = icmp ult ptr %.0125.i, %i.c
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = ptrtoint ptr %i.c to i64                ; 3 uses
  %i.gp = ptrtoint ptr %.0125.i to i64            ; 2 uses
  %i.gq = sub i64 %i.go, %i.gp                    ; 3 uses
  %i.gr = shl i64 %i.gm, 6                        ; 2 uses
  %i.gs = icmp ugt i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.gt = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.gp
  %i.gw = lshr i64 %i.gv, 6                       ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !41 ; 5 uses
  %i.gz = icmp uge i64 %i.gm, %i.gy
  tail call void @llvm.assume(i1 %i.gz)
  %i.ha = sub nuw i64 %i.gm, %i.gy                ; 6 uses
  %i.hb = icmp ule i64 %i.ha, %i.gw
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = shl i64 %i.gy, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hc ; 3 uses
  %.not46 = icmp eq i64 %i.gm, %i.gy
  %.pre60 = load <8 x i64>, ptr %0, align 64, !tbaa !21 ; 3 uses
  br i1 %.not46, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %.neg = add i64 %i.gy, 1
  %xtraiter113 = and i64 %i.ha, 1
  %i.he = icmp eq i64 %i.gm, %.neg
  br i1 %i.he, label %.epil.preheader112, label %.lr.ph33.new

.lr.ph33.new:                                     ; preds = %.lr.ph33
  %unroll_iter119 = and i64 %i.ha, -2
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph33.new
  %i.hf = phi <8 x i64> [ %.pre60, %.lr.ph33.new ], [ %i.ii, %bb.j ]
  %.0.i432 = phi i64 [ 0, %.lr.ph33.new ], [ %i.ij, %bb.j ] ; 4 uses
  %niter120 = phi i64 [ 0, %.lr.ph33.new ], [ %niter120.next.1, %bb.j ]
  %i.hg = shl i64 %.0.i432, 6
  %i.hh = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hi, i32 0, i32 3, i32 1)
  %i.hj = shl i64 %.0.i432, 3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hj
  %i.hl = load <8 x i64>, ptr %i.hh, align 1, !tbaa !21 ; 2 uses
  %i.hm = load <8 x i64>, ptr %i.hk, align 1, !tbaa !21
  %i.hn = xor <8 x i64> %i.hm, %i.hl              ; 2 uses
  %i.ho = lshr <8 x i64> %i.hn, splat (i64 32)
  %i.hp = and <8 x i64> %i.hn, splat (i64 4294967295)
  %i.hq = mul nuw <8 x i64> %i.hp, %i.ho
  %i.hr = shufflevector <8 x i64> %i.hl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.hs = add <8 x i64> %i.hf, %i.hr
  %i.ht = add <8 x i64> %i.hs, %i.hq              ; 2 uses
  store <8 x i64> %i.ht, ptr %0, align 64, !tbaa !21
  %i.hu = or disjoint i64 %.0.i432, 1             ; 2 uses
  %i.hv = shl i64 %i.hu, 6
  %i.hw = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.hv ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hx, i32 0, i32 3, i32 1)
  %i.hy = shl i64 %i.hu, 3
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hy
  %i.ia = load <8 x i64>, ptr %i.hw, align 1, !tbaa !21 ; 2 uses
  %i.ib = load <8 x i64>, ptr %i.hz, align 1, !tbaa !21
  %i.ic = xor <8 x i64> %i.ib, %i.ia              ; 2 uses
  %i.id = lshr <8 x i64> %i.ic, splat (i64 32)
  %i.ie = and <8 x i64> %i.ic, splat (i64 4294967295)
  %i.if = mul nuw <8 x i64> %i.ie, %i.id
  %i.ig = shufflevector <8 x i64> %i.ia, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ih = add <8 x i64> %i.ht, %i.ig
  %i.ii = add <8 x i64> %i.ih, %i.if              ; 4 uses
  store <8 x i64> %i.ii, ptr %0, align 64, !tbaa !21
  %i.ij = add nuw i64 %.0.i432, 2                 ; 2 uses
  %niter120.next.1 = add i64 %niter120, 2         ; 2 uses
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119
  br i1 %niter120.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, label %bb.j, !llvm.loop !5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod116.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod116.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5, label %.epil.preheader112

.epil.preheader112:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, %.lr.ph33
  %.epil.init115 = phi <8 x i64> [ %.pre60, %.lr.ph33 ], [ %i.ii, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ]
  %.0.i432.epil.init = phi i64 [ 0, %.lr.ph33 ], [ %i.ij, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod118 = trunc i64 %i.ha to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.ik = shl i64 %.0.i432.epil.init, 6
  %i.il = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.ik ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.im, i32 0, i32 3, i32 1)
  %i.in = shl i64 %.0.i432.epil.init, 3
  %i.io = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.in
  %i.ip = load <8 x i64>, ptr %i.il, align 1, !tbaa !21 ; 2 uses
  %i.iq = load <8 x i64>, ptr %i.io, align 1, !tbaa !21
  %i.ir = xor <8 x i64> %i.iq, %i.ip              ; 2 uses
  %i.is = lshr <8 x i64> %i.ir, splat (i64 32)
  %i.it = and <8 x i64> %i.ir, splat (i64 4294967295)
  %i.iu = mul nuw <8 x i64> %i.it, %i.is
  %i.iv = shufflevector <8 x i64> %i.ip, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.iw = add <8 x i64> %.epil.init115, %i.iv
  %i.ix = add <8 x i64> %i.iw, %i.iu              ; 2 uses
  store <8 x i64> %i.ix, ptr %0, align 64, !tbaa !21
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5:       ; preds = %.epil.preheader112, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, %bb.i
  %i.iy = phi <8 x i64> [ %.pre60, %bb.i ], [ %i.ii, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ], [ %i.ix, %.epil.preheader112 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ja = load i64, ptr %i.iz, align 32, !tbaa !36
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ja ; 2 uses
  %i.jc = lshr <8 x i64> %i.iy, splat (i64 47)
  %i.jd = load <16 x i32>, ptr %i.jb, align 1, !tbaa !21
  %i.je = bitcast <8 x i64> %i.iy to <16 x i32>
  %i.jf = bitcast <8 x i64> %i.jc to <16 x i32>
  %i.jg = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.jd, <16 x i32> %i.je, <16 x i32> %i.jf, i32 150) ; 2 uses
  %i.jh = bitcast <16 x i32> %i.jg to <8 x i64>
  %i.ji = lshr <8 x i64> %i.jh, splat (i64 32)
  %i.jj = bitcast <16 x i32> %i.jg to <8 x i64>
  %i.jk = and <8 x i64> %i.jj, splat (i64 4294967295)
  %i.jl = mul nuw <8 x i64> %i.jk, splat (i64 2654435761)
  %i.jm = mul <8 x i64> %i.ji, splat (i64 -7046029290881679360)
  %i.jn = add <8 x i64> %i.jl, %i.jm              ; 3 uses
  store <8 x i64> %i.jn, ptr %0, align 64, !tbaa !21
  store i64 0, ptr %i.gx, align 8, !tbaa !41
  %i.jo = shl nuw i64 %i.ha, 6
  %i.jp = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.jo ; 2 uses
  %i.jq = sub nuw nsw i64 %i.gw, %i.ha            ; 3 uses
  %.not133.i38 = icmp ult i64 %i.jq, %i.gm
  br i1 %.not133.i38, label %.preheader, label %.preheader17.lr.ph

.preheader17.lr.ph:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %.not47 = icmp eq i64 %i.gm, 0
  %xtraiter122 = and i64 %i.gm, 1
  %i.jr = icmp eq i64 %i.gm, 1
  %unroll_iter128 = and i64 %i.gm, -2
  %lcmp.mod125.not = icmp eq i64 %xtraiter122, 0
  %lcmp.mod127 = trunc i64 %i.gm to i1
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.lr.ph, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3
  %.promoted37 = phi <8 x i64> [ %i.jn, %.preheader17.lr.ph ], [ %i.ly, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 3 uses
  %.0124.i40 = phi i64 [ %i.jq, %.preheader17.lr.ph ], [ %i.ma, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ]
  %.1126.i39 = phi ptr [ %i.jp, %.preheader17.lr.ph ], [ %i.lz, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 4 uses
  br i1 %.not47, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, label %.lr.ph36

.lr.ph36:                                         ; preds = %.preheader17
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  br i1 %i.jr, label %.epil.preheader121, label %.lr.ph36.new

.preheader:                                       ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5
  %.promoted44 = phi <8 x i64> [ %i.jn, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.ly, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 2 uses
  %.1126.i.lcssa = phi ptr [ %i.jp, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.lz, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 4 uses
  %.0124.i.lcssa = phi i64 [ %i.jq, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.ma, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 7 uses
  %.not48 = icmp eq i64 %.0124.i.lcssa, 0
  br i1 %.not48, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %xtraiter131 = and i64 %.0124.i.lcssa, 1
  %i.js = icmp eq i64 %.0124.i.lcssa, 1
  br i1 %i.js, label %.epil.preheader130, label %.lr.ph43.new

.lr.ph43.new:                                     ; preds = %.lr.ph43
  %unroll_iter136 = and i64 %.0124.i.lcssa, -2
  br label %bb.k

.lr.ph36.new:                                     ; preds = %.lr.ph36, %.lr.ph36.new
  %i.jt = phi <8 x i64> [ %i.kw, %.lr.ph36.new ], [ %.promoted37, %.lr.ph36 ]
  %.0.i235 = phi i64 [ %i.kx, %.lr.ph36.new ], [ 0, %.lr.ph36 ] ; 4 uses
  %niter129 = phi i64 [ %niter129.next.1, %.lr.ph36.new ], [ 0, %.lr.ph36 ]
  %i.ju = shl i64 %.0.i235, 6
  %i.jv = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.ju ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.jw, i32 0, i32 3, i32 1)
  %i.jx = shl i64 %.0.i235, 3
  %i.jy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.jx
  %i.jz = load <8 x i64>, ptr %i.jv, align 1, !tbaa !21 ; 2 uses
  %i.ka = load <8 x i64>, ptr %i.jy, align 1, !tbaa !21
  %i.kb = xor <8 x i64> %i.ka, %i.jz              ; 2 uses
  %i.kc = lshr <8 x i64> %i.kb, splat (i64 32)
  %i.kd = and <8 x i64> %i.kb, splat (i64 4294967295)
  %i.ke = mul nuw <8 x i64> %i.kd, %i.kc
  %i.kf = shufflevector <8 x i64> %i.jz, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.kg = add <8 x i64> %i.jt, %i.kf
  %i.kh = add <8 x i64> %i.kg, %i.ke              ; 2 uses
  store <8 x i64> %i.kh, ptr %0, align 64, !tbaa !21
  %i.ki = or disjoint i64 %.0.i235, 1             ; 2 uses
  %i.kj = shl i64 %i.ki, 6
  %i.kk = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.kl, i32 0, i32 3, i32 1)
  %i.km = shl i64 %i.ki, 3
  %i.kn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.km
  %i.ko = load <8 x i64>, ptr %i.kk, align 1, !tbaa !21 ; 2 uses
  %i.kp = load <8 x i64>, ptr %i.kn, align 1, !tbaa !21
  %i.kq = xor <8 x i64> %i.kp, %i.ko              ; 2 uses
  %i.kr = lshr <8 x i64> %i.kq, splat (i64 32)
  %i.ks = and <8 x i64> %i.kq, splat (i64 4294967295)
  %i.kt = mul nuw <8 x i64> %i.ks, %i.kr
  %i.ku = shufflevector <8 x i64> %i.ko, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.kv = add <8 x i64> %i.kh, %i.ku
  %i.kw = add <8 x i64> %i.kv, %i.kt              ; 4 uses
  store <8 x i64> %i.kw, ptr %0, align 64, !tbaa !21
  %i.kx = add nuw i64 %.0.i235, 2                 ; 2 uses
  %niter129.next.1 = add nuw i64 %niter129, 2     ; 2 uses
  %niter129.ncmp.1 = icmp eq i64 %niter129.next.1, %unroll_iter128
  br i1 %niter129.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, label %.lr.ph36.new, !llvm.loop !5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa: ; preds = %.lr.ph36.new
  br i1 %lcmp.mod125.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, label %.epil.preheader121

.epil.preheader121:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, %.lr.ph36
  %.epil.init124 = phi <8 x i64> [ %.promoted37, %.lr.ph36 ], [ %i.kw, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ]
  %.0.i235.epil.init = phi i64 [ 0, %.lr.ph36 ], [ %i.kx, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.ky = shl i64 %.0.i235.epil.init, 6
  %i.kz = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.la, i32 0, i32 3, i32 1)
  %i.lb = shl i64 %.0.i235.epil.init, 3
  %i.lc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.lb
  %i.ld = load <8 x i64>, ptr %i.kz, align 1, !tbaa !21 ; 2 uses
  %i.le = load <8 x i64>, ptr %i.lc, align 1, !tbaa !21
  %i.lf = xor <8 x i64> %i.le, %i.ld              ; 2 uses
  %i.lg = lshr <8 x i64> %i.lf, splat (i64 32)
  %i.lh = and <8 x i64> %i.lf, splat (i64 4294967295)
  %i.li = mul nuw <8 x i64> %i.lh, %i.lg
  %i.lj = shufflevector <8 x i64> %i.ld, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.lk = add <8 x i64> %.epil.init124, %i.lj
  %i.ll = add <8 x i64> %i.lk, %i.li              ; 2 uses
  store <8 x i64> %i.ll, ptr %0, align 64, !tbaa !21
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3:       ; preds = %.epil.preheader121, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, %.preheader17
  %i.lm = phi <8 x i64> [ %.promoted37, %.preheader17 ], [ %i.kw, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ], [ %i.ll, %.epil.preheader121 ] ; 2 uses
  %i.ln = lshr <8 x i64> %i.lm, splat (i64 47)
  %i.lo = load <16 x i32>, ptr %i.jb, align 1, !tbaa !21
  %i.lp = bitcast <8 x i64> %i.lm to <16 x i32>
  %i.lq = bitcast <8 x i64> %i.ln to <16 x i32>
  %i.lr = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.lo, <16 x i32> %i.lp, <16 x i32> %i.lq, i32 150) ; 2 uses
  %i.ls = bitcast <16 x i32> %i.lr to <8 x i64>
  %i.lt = lshr <8 x i64> %i.ls, splat (i64 32)
  %i.lu = bitcast <16 x i32> %i.lr to <8 x i64>
  %i.lv = and <8 x i64> %i.lu, splat (i64 4294967295)
  %i.lw = mul nuw <8 x i64> %i.lv, splat (i64 2654435761)
  %i.lx = mul <8 x i64> %i.lt, splat (i64 -7046029290881679360)
  %i.ly = add <8 x i64> %i.lw, %i.lx              ; 3 uses
  store <8 x i64> %i.ly, ptr %0, align 64, !tbaa !21
  %i.lz = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.gr ; 2 uses
  %i.ma = sub nuw nsw i64 %.0124.i40, %i.gm       ; 3 uses
  %.not133.i = icmp ult i64 %i.ma, %i.gm
  br i1 %.not133.i, label %.preheader, label %.preheader17, !llvm.loop !6

bb.k:                                             ; preds = %bb.k, %.lr.ph43.new
  %i.mb = phi <8 x i64> [ %.promoted44, %.lr.ph43.new ], [ %i.ne, %bb.k ]
  %.0.i42 = phi i64 [ 0, %.lr.ph43.new ], [ %i.nf, %bb.k ] ; 4 uses
  %niter137 = phi i64 [ 0, %.lr.ph43.new ], [ %niter137.next.1, %bb.k ]
  %i.mc = shl i64 %.0.i42, 6
  %i.md = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.mc ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.me, i32 0, i32 3, i32 1)
  %i.mf = shl i64 %.0.i42, 3
  %i.mg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mf
  %i.mh = load <8 x i64>, ptr %i.md, align 1, !tbaa !21 ; 2 uses
  %i.mi = load <8 x i64>, ptr %i.mg, align 1, !tbaa !21
  %i.mj = xor <8 x i64> %i.mi, %i.mh              ; 2 uses
  %i.mk = lshr <8 x i64> %i.mj, splat (i64 32)
  %i.ml = and <8 x i64> %i.mj, splat (i64 4294967295)
  %i.mm = mul nuw <8 x i64> %i.ml, %i.mk
  %i.mn = shufflevector <8 x i64> %i.mh, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.mo = add <8 x i64> %i.mb, %i.mn
  %i.mp = add <8 x i64> %i.mo, %i.mm              ; 2 uses
  store <8 x i64> %i.mp, ptr %0, align 64, !tbaa !21
  %i.mq = or disjoint i64 %.0.i42, 1              ; 2 uses
  %i.mr = shl i64 %i.mq, 6
  %i.ms = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.mr ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.mt, i32 0, i32 3, i32 1)
  %i.mu = shl i64 %i.mq, 3
  %i.mv = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mu
  %i.mw = load <8 x i64>, ptr %i.ms, align 1, !tbaa !21 ; 2 uses
  %i.mx = load <8 x i64>, ptr %i.mv, align 1, !tbaa !21
  %i.my = xor <8 x i64> %i.mx, %i.mw              ; 2 uses
  %i.mz = lshr <8 x i64> %i.my, splat (i64 32)
  %i.na = and <8 x i64> %i.my, splat (i64 4294967295)
  %i.nb = mul nuw <8 x i64> %i.na, %i.mz
  %i.nc = shufflevector <8 x i64> %i.mw, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.nd = add <8 x i64> %i.mp, %i.nc
  %i.ne = add <8 x i64> %i.nd, %i.nb              ; 3 uses
  store <8 x i64> %i.ne, ptr %0, align 64, !tbaa !21
  %i.nf = add nuw i64 %.0.i42, 2                  ; 2 uses
  %niter137.next.1 = add nuw i64 %niter137, 2     ; 2 uses
  %niter137.ncmp.1 = icmp eq i64 %niter137.next.1, %unroll_iter136
  br i1 %niter137.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod134.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod134.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit, label %.epil.preheader130

.epil.preheader130:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, %.lr.ph43
  %.epil.init133 = phi <8 x i64> [ %.promoted44, %.lr.ph43 ], [ %i.ne, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa ]
  %.0.i42.epil.init = phi i64 [ 0, %.lr.ph43 ], [ %i.nf, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod135 = trunc i64 %.0124.i.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod135)
  %i.ng = shl i64 %.0.i42.epil.init, 6
  %i.nh = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.ng ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ni, i32 0, i32 3, i32 1)
  %i.nj = shl i64 %.0.i42.epil.init, 3
  %i.nk = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nj
  %i.nl = load <8 x i64>, ptr %i.nh, align 1, !tbaa !21 ; 2 uses
  %i.nm = load <8 x i64>, ptr %i.nk, align 1, !tbaa !21
  %i.nn = xor <8 x i64> %i.nm, %i.nl              ; 2 uses
  %i.no = lshr <8 x i64> %i.nn, splat (i64 32)
  %i.np = and <8 x i64> %i.nn, splat (i64 4294967295)
  %i.nq = mul nuw <8 x i64> %i.np, %i.no
  %i.nr = shufflevector <8 x i64> %i.nl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ns = add <8 x i64> %.epil.init133, %i.nr
  %i.nt = add <8 x i64> %i.ns, %i.nq
  store <8 x i64> %i.nt, ptr %0, align 64, !tbaa !21
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit:        ; preds = %.epil.preheader130, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, %.preheader
  %i.nu = shl nuw i64 %.0124.i.lcssa, 6
  %i.nv = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.nu ; 4 uses
  %i.nw = icmp ult ptr %i.nv, %i.c
  tail call void @llvm.assume(i1 %i.nw)
  store i64 %.0124.i.lcssa, ptr %i.gx, align 8, !tbaa !41
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ny = getelementptr inbounds i8, ptr %i.nv, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.nx, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.ny, i64 64, i1 false)
  %i.nz = ptrtoint ptr %i.nv to i64
  %i.oa = sub i64 %i.go, %i.nz                    ; 2 uses
  %i.ob = icmp slt i64 %i.oa, 65
  tail call void @llvm.assume(i1 %i.ob)
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  %i.oc = icmp sgt i64 %i.gq, 256
  br i1 %i.oc, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.od = getelementptr inbounds i8, ptr %i.c, i64 -256
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.og = load i64, ptr %i.of, align 32, !tbaa !36
  %i.oh = icmp ugt i64 %i.gm, 3
  tail call void @llvm.assume(i1 %i.oh)
  %.promoted30 = load i64, ptr %i.oe, align 8, !tbaa !27
  %i.oi = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.og
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  br label %bb.n

bb.n:                                             ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, %bb.m
  %storemerge.i731 = phi i64 [ %.promoted30, %bb.m ], [ %storemerge.i7, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ] ; 5 uses
  %.2.i = phi ptr [ %.0125.i, %bb.m ], [ %i.uk, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ] ; 19 uses
  %i.oj = icmp ult i64 %storemerge.i731, %i.gm
  tail call void @llvm.assume(i1 %i.oj)
  %i.ok = sub nuw i64 %i.gm, %storemerge.i731     ; 7 uses
  %.not.i6 = icmp ugt i64 %i.ok, 4
  %i.ol = shl i64 %storemerge.i731, 3
  %i.om = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ol ; 8 uses
  %.promoted28 = load <8 x i64>, ptr %0, align 64, !tbaa !21 ; 2 uses
  br i1 %.not.i6, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i, label %.preheader84

.preheader84:                                     ; preds = %bb.n
  %i.on = getelementptr inbounds nuw i8, ptr %.2.i, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.on, i32 0, i32 3, i32 1)
  %i.oo = load <8 x i64>, ptr %.2.i, align 1, !tbaa !21 ; 2 uses
  %i.op = load <8 x i64>, ptr %i.om, align 1, !tbaa !21
  %i.oq = xor <8 x i64> %i.op, %i.oo              ; 2 uses
  %i.or = lshr <8 x i64> %i.oq, splat (i64 32)
  %i.os = and <8 x i64> %i.oq, splat (i64 4294967295)
  %i.ot = mul nuw <8 x i64> %i.os, %i.or
  %i.ou = shufflevector <8 x i64> %i.oo, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ov = add <8 x i64> %.promoted28, %i.ou
  %i.ow = add <8 x i64> %i.ov, %i.ot              ; 3 uses
  store <8 x i64> %i.ow, ptr %0, align 64, !tbaa !21
  %exitcond53.not = icmp eq i64 %i.ok, 1
  br i1 %exitcond53.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, label %.preheader84.1

.preheader84.1:                                   ; preds = %.preheader84
  %i.ox = getelementptr inbounds nuw i8, ptr %.2.i, i64 64
  %i.oy = getelementptr inbounds nuw i8, ptr %.2.i, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.oy, i32 0, i32 3, i32 1)
  %i.oz = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.pa = load <8 x i64>, ptr %i.ox, align 1, !tbaa !21 ; 2 uses
  %i.pb = load <8 x i64>, ptr %i.oz, align 1, !tbaa !21
  %i.pc = xor <8 x i64> %i.pb, %i.pa              ; 2 uses
  %i.pd = lshr <8 x i64> %i.pc, splat (i64 32)
  %i.pe = and <8 x i64> %i.pc, splat (i64 4294967295)
  %i.pf = mul nuw <8 x i64> %i.pe, %i.pd
  %i.pg = shufflevector <8 x i64> %i.pa, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ph = add <8 x i64> %i.ow, %i.pg
  %i.pi = add <8 x i64> %i.ph, %i.pf              ; 3 uses
  store <8 x i64> %i.pi, ptr %0, align 64, !tbaa !21
  %exitcond53.not.1 = icmp eq i64 %i.ok, 2
  br i1 %exitcond53.not.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, label %.preheader84.2

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.pj = getelementptr inbounds nuw i8, ptr %.2.i, i64 128
  %i.pk = getelementptr inbounds nuw i8, ptr %.2.i, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pk, i32 0, i32 3, i32 1)
  %i.pl = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.pm = load <8 x i64>, ptr %i.pj, align 1, !tbaa !21 ; 2 uses
  %i.pn = load <8 x i64>, ptr %i.pl, align 1, !tbaa !21
  %i.po = xor <8 x i64> %i.pn, %i.pm              ; 2 uses
  %i.pp = lshr <8 x i64> %i.po, splat (i64 32)
  %i.pq = and <8 x i64> %i.po, splat (i64 4294967295)
  %i.pr = mul nuw <8 x i64> %i.pq, %i.pp
  %i.ps = shufflevector <8 x i64> %i.pm, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.pt = add <8 x i64> %i.pi, %i.ps
  %i.pu = add <8 x i64> %i.pt, %i.pr              ; 3 uses
  store <8 x i64> %i.pu, ptr %0, align 64, !tbaa !21
  %exitcond53.not.2 = icmp eq i64 %i.ok, 3
  br i1 %exitcond53.not.2, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, label %.preheader84.3

.preheader84.3:                                   ; preds = %.preheader84.2
  %i.pv = getelementptr inbounds nuw i8, ptr %.2.i, i64 192
  %i.pw = getelementptr inbounds nuw i8, ptr %.2.i, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pw, i32 0, i32 3, i32 1)
  %i.px = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  %i.py = load <8 x i64>, ptr %i.pv, align 1, !tbaa !21 ; 2 uses
  %i.pz = load <8 x i64>, ptr %i.px, align 1, !tbaa !21
  %i.qa = xor <8 x i64> %i.pz, %i.py              ; 2 uses
  %i.qb = lshr <8 x i64> %i.qa, splat (i64 32)
  %i.qc = and <8 x i64> %i.qa, splat (i64 4294967295)
  %i.qd = mul nuw <8 x i64> %i.qc, %i.qb
  %i.qe = shufflevector <8 x i64> %i.py, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.qf = add <8 x i64> %i.pu, %i.qe
  %i.qg = add <8 x i64> %i.qf, %i.qd              ; 2 uses
  store <8 x i64> %i.qg, ptr %0, align 64, !tbaa !21
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i:    ; preds = %.preheader84.3, %.preheader84.2, %.preheader84.1, %.preheader84
  %.lcssa100 = phi <8 x i64> [ %i.ow, %.preheader84 ], [ %i.pi, %.preheader84.1 ], [ %i.pu, %.preheader84.2 ], [ %i.qg, %.preheader84.3 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %3 = sub nsw i64 4, %i.ok                       ; 5 uses
  %i.qh = lshr <8 x i64> %.lcssa100, splat (i64 47)
  %i.qi = load <16 x i32>, ptr %i.oi, align 1, !tbaa !21
  %i.qj = bitcast <8 x i64> %.lcssa100 to <16 x i32>
  %i.qk = bitcast <8 x i64> %i.qh to <16 x i32>
  %i.ql = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.qi, <16 x i32> %i.qj, <16 x i32> %i.qk, i32 150) ; 2 uses
  %i.qm = bitcast <16 x i32> %i.ql to <8 x i64>
  %i.qn = lshr <8 x i64> %i.qm, splat (i64 32)
  %i.qo = bitcast <16 x i32> %i.ql to <8 x i64>
  %i.qp = and <8 x i64> %i.qo, splat (i64 4294967295)
  %i.qq = mul nuw <8 x i64> %i.qp, splat (i64 2654435761)
  %i.qr = mul <8 x i64> %i.qn, splat (i64 -7046029290881679360)
  %i.qs = add <8 x i64> %i.qq, %i.qr              ; 3 uses
  store <8 x i64> %i.qs, ptr %0, align 64, !tbaa !21
  %i.qt = shl nuw nsw i64 %i.ok, 6
  %i.qu = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.qt ; 3 uses
  %.not45 = icmp eq i64 %i.ok, 4
  br i1 %.not45, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %reass.sub = sub i64 %storemerge.i731, %i.gm
  %xtraiter105 = and i64 %3, 1
  %i.qv = icmp eq i64 %reass.sub, -3
  br i1 %i.qv, label %.epil.preheader104, label %.lr.ph26.new

.lr.ph26.new:                                     ; preds = %.lr.ph26
  %unroll_iter110 = and i64 %3, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph26.new
  %i.qw = phi <8 x i64> [ %i.qs, %.lr.ph26.new ], [ %i.rz, %bb.o ]
  %.0.i37.i25 = phi i64 [ 0, %.lr.ph26.new ], [ %i.sa, %bb.o ] ; 4 uses
  %niter111 = phi i64 [ 0, %.lr.ph26.new ], [ %niter111.next.1, %bb.o ]
  %i.qx = shl nuw nsw i64 %.0.i37.i25, 6
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qx ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.qz, i32 0, i32 3, i32 1)
  %i.ra = shl nuw nsw i64 %.0.i37.i25, 3
  %i.rb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ra
  %i.rc = load <8 x i64>, ptr %i.qy, align 1, !tbaa !21 ; 2 uses
  %i.rd = load <8 x i64>, ptr %i.rb, align 1, !tbaa !21
  %i.re = xor <8 x i64> %i.rd, %i.rc              ; 2 uses
  %i.rf = lshr <8 x i64> %i.re, splat (i64 32)
  %i.rg = and <8 x i64> %i.re, splat (i64 4294967295)
  %i.rh = mul nuw <8 x i64> %i.rg, %i.rf
  %i.ri = shufflevector <8 x i64> %i.rc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.rj = add <8 x i64> %i.qw, %i.ri
  %i.rk = add <8 x i64> %i.rj, %i.rh              ; 2 uses
  store <8 x i64> %i.rk, ptr %0, align 64, !tbaa !21
  %i.rl = or disjoint i64 %.0.i37.i25, 1          ; 2 uses
  %i.rm = shl nuw nsw i64 %i.rl, 6
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.rm ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ro, i32 0, i32 3, i32 1)
  %i.rp = shl nuw nsw i64 %i.rl, 3
  %i.rq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.rp
  %i.rr = load <8 x i64>, ptr %i.rn, align 1, !tbaa !21 ; 2 uses
  %i.rs = load <8 x i64>, ptr %i.rq, align 1, !tbaa !21
  %i.rt = xor <8 x i64> %i.rs, %i.rr              ; 2 uses
  %i.ru = lshr <8 x i64> %i.rt, splat (i64 32)
  %i.rv = and <8 x i64> %i.rt, splat (i64 4294967295)
  %i.rw = mul nuw <8 x i64> %i.rv, %i.ru
  %i.rx = shufflevector <8 x i64> %i.rr, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ry = add <8 x i64> %i.rk, %i.rx
  %i.rz = add <8 x i64> %i.ry, %i.rw              ; 3 uses
  store <8 x i64> %i.rz, ptr %0, align 64, !tbaa !21
  %i.sa = add nuw nsw i64 %.0.i37.i25, 2          ; 2 uses
  %niter111.next.1 = add i64 %niter111, 2         ; 2 uses
  %niter111.ncmp.1 = icmp eq i64 %niter111.next.1, %unroll_iter110
  br i1 %niter111.ncmp.1, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, label %bb.o, !llvm.loop !5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i:      ; preds = %bb.n
  %i.sb = getelementptr inbounds nuw i8, ptr %.2.i, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.sb, i32 0, i32 3, i32 1)
  %i.sc = load <8 x i64>, ptr %.2.i, align 1, !tbaa !21 ; 2 uses
  %i.sd = load <8 x i64>, ptr %i.om, align 1, !tbaa !21
  %i.se = xor <8 x i64> %i.sd, %i.sc              ; 2 uses
  %i.sf = lshr <8 x i64> %i.se, splat (i64 32)
  %i.sg = and <8 x i64> %i.se, splat (i64 4294967295)
  %i.sh = mul nuw <8 x i64> %i.sg, %i.sf
  %i.si = shufflevector <8 x i64> %i.sc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.sj = add <8 x i64> %.promoted28, %i.si
  %i.sk = add <8 x i64> %i.sj, %i.sh              ; 2 uses
  store <8 x i64> %i.sk, ptr %0, align 64, !tbaa !21
  %i.sl = getelementptr inbounds nuw i8, ptr %.2.i, i64 64
  %i.sm = getelementptr inbounds nuw i8, ptr %.2.i, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.sm, i32 0, i32 3, i32 1)
  %i.sn = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.so = load <8 x i64>, ptr %i.sl, align 1, !tbaa !21 ; 2 uses
  %i.sp = load <8 x i64>, ptr %i.sn, align 1, !tbaa !21
  %i.sq = xor <8 x i64> %i.sp, %i.so              ; 2 uses
  %i.sr = lshr <8 x i64> %i.sq, splat (i64 32)
  %i.ss = and <8 x i64> %i.sq, splat (i64 4294967295)
  %i.st = mul nuw <8 x i64> %i.ss, %i.sr
  %i.su = shufflevector <8 x i64> %i.so, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.sv = add <8 x i64> %i.sk, %i.su
  %i.sw = add <8 x i64> %i.sv, %i.st              ; 2 uses
  store <8 x i64> %i.sw, ptr %0, align 64, !tbaa !21
  %i.sx = getelementptr inbounds nuw i8, ptr %.2.i, i64 128
  %i.sy = getelementptr inbounds nuw i8, ptr %.2.i, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %i.sy, i32 0, i32 3, i32 1)
  %i.sz = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.ta = load <8 x i64>, ptr %i.sx, align 1, !tbaa !21 ; 2 uses
  %i.tb = load <8 x i64>, ptr %i.sz, align 1, !tbaa !21
  %i.tc = xor <8 x i64> %i.tb, %i.ta              ; 2 uses
  %i.td = lshr <8 x i64> %i.tc, splat (i64 32)
  %i.te = and <8 x i64> %i.tc, splat (i64 4294967295)
  %i.tf = mul nuw <8 x i64> %i.te, %i.td
  %i.tg = shufflevector <8 x i64> %i.ta, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.th = add <8 x i64> %i.sw, %i.tg
  %i.ti = add <8 x i64> %i.th, %i.tf              ; 2 uses
  store <8 x i64> %i.ti, ptr %0, align 64, !tbaa !21
  %i.tj = getelementptr inbounds nuw i8, ptr %.2.i, i64 192
  %i.tk = getelementptr inbounds nuw i8, ptr %.2.i, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %i.tk, i32 0, i32 3, i32 1)
  %i.tl = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  %i.tm = load <8 x i64>, ptr %i.tj, align 1, !tbaa !21 ; 2 uses
  %i.tn = load <8 x i64>, ptr %i.tl, align 1, !tbaa !21
  %i.to = xor <8 x i64> %i.tn, %i.tm              ; 2 uses
  %i.tp = lshr <8 x i64> %i.to, splat (i64 32)
  %i.tq = and <8 x i64> %i.to, splat (i64 4294967295)
  %i.tr = mul nuw <8 x i64> %i.tq, %i.tp
  %i.ts = shufflevector <8 x i64> %i.tm, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.tt = add <8 x i64> %i.ti, %i.ts
  %i.tu = add <8 x i64> %i.tt, %i.tr
  store <8 x i64> %i.tu, ptr %0, align 64, !tbaa !21
  %i.tv = add i64 %storemerge.i731, 4
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa: ; preds = %bb.o
  %lcmp.mod108.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod108.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, label %.epil.preheader104

.epil.preheader104:                               ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, %.lr.ph26
  %.epil.init107 = phi <8 x i64> [ %i.qs, %.lr.ph26 ], [ %i.rz, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ]
  %.0.i37.i25.epil.init = phi i64 [ 0, %.lr.ph26 ], [ %i.sa, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod109 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod109)
  %i.tw = shl nuw nsw i64 %.0.i37.i25.epil.init, 6
  %i.tx = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.tw ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ty, i32 0, i32 3, i32 1)
  %i.tz = shl nuw nsw i64 %.0.i37.i25.epil.init, 3
  %i.ua = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.tz
  %i.ub = load <8 x i64>, ptr %i.tx, align 1, !tbaa !21 ; 2 uses
  %i.uc = load <8 x i64>, ptr %i.ua, align 1, !tbaa !21
  %i.ud = xor <8 x i64> %i.uc, %i.ub              ; 2 uses
  %i.ue = lshr <8 x i64> %i.ud, splat (i64 32)
  %i.uf = and <8 x i64> %i.ud, splat (i64 4294967295)
  %i.ug = mul nuw <8 x i64> %i.uf, %i.ue
  %i.uh = shufflevector <8 x i64> %i.ub, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ui = add <8 x i64> %.epil.init107, %i.uh
  %i.uj = add <8 x i64> %i.ui, %i.ug
  store <8 x i64> %i.uj, ptr %0, align 64, !tbaa !21
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit: ; preds = %.epil.preheader104, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i
  %storemerge.i7 = phi i64 [ %i.tv, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i ], [ 0, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i ], [ %3, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ], [ %3, %.epil.preheader104 ] ; 2 uses
  store i64 %storemerge.i7, ptr %i.oe, align 8, !tbaa !27
  %i.uk = getelementptr inbounds nuw i8, ptr %.2.i, i64 256 ; 4 uses
  %i.ul = icmp ult ptr %i.uk, %i.od
  br i1 %i.ul, label %bb.n, label %bb.p, !llvm.loop !7

bb.p:                                             ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.un = getelementptr inbounds nuw i8, ptr %.2.i, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.um, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.un, i64 64, i1 false)
  %.pre63 = ptrtoint ptr %i.uk to i64
  %.pre64 = sub i64 %i.go, %.pre63
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit
  %.pre-phi65 = phi i64 [ %.pre64, %bb.p ], [ %i.gq, %bb.l ], [ %i.oa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit ] ; 3 uses
  %.3.i = phi ptr [ %i.uk, %bb.p ], [ %.0125.i, %bb.l ], [ %i.nv, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit ] ; 2 uses
  %i.uo = icmp ult ptr %.3.i, %i.c
  tail call void @llvm.assume(i1 %i.uo)
  %i.up = icmp slt i64 %.pre-phi65, 257
  tail call void @llvm.assume(i1 %i.up)
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.uq, ptr readonly align 1 %.3.i, i64 %.pre-phi65, i1 false)
  %i.ur = trunc i64 %.pre-phi65 to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.d
  %storemerge.i = phi i32 [ %i.ur, %bb.q ], [ %i.v, %bb.d ]
  store i32 %storemerge.i, ptr %i.l, align 64, !tbaa !40
  br label %_ZL11XXH3_updateP12XXH3_state_sPKhmPFvPmS2_S2_mEPFvPvPKvE.exit

_ZL11XXH3_updateP12XXH3_state_sPKhmPFvPmS2_S2_mEPFvPvPKvE.exit: ; preds = %bb.b, %bb.r
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, target_mem: none) uwtable
define { i64, i64 } @ROCKSDB_XXH3_128bits_digest(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #21 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_3
begin_hunk_4_@ROCKSDB_XXH128_cmp:bb.a
bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !27
  %.sroa.04.0.copyload = load i64, ptr %0, align 8, !tbaa !27
  %i.b = tail call i32 @llvm.ucmp.i32.i64(i64 %.sroa.04.0.copyload, i64 %.sroa.0.0.copyload)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ROCKSDB_XXH128_canonicalFromHash(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i64 %1, i64 %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %i.a, ptr %0, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.c, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @ROCKSDB_XXH128_hashFromCanonical(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %.val2 = load i64, ptr %0, align 1, !tbaa !27
  %i.a = tail call noundef i64 @llvm.bswap.i64(i64 %.val2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.b, align 1, !tbaa !27
  %i.c = tail call noundef i64 @llvm.bswap.i64(i64 %.val)
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.a, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: none) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_generateSecret(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #22 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ult i64 %1, 136
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0                        ; 2 uses
  %spec.select = select i1 %i.c, i64 192, i64 %3  ; 2 uses
  %spec.select41 = select i1 %i.c, ptr @_ZL12XXH3_kSecret, ptr %2 ; 3 uses
  %i.d = icmp eq ptr %spec.select41, null
  br i1 %i.d, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.03650 = phi i64 [ %i.h, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %i.e = sub nuw i64 %1, %.03650
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %spec.select) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.03650
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull align 1 %spec.select41, i64 %i.f, i1 false)
  %i.h = add i64 %i.f, %.03650                    ; 2 uses
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %.lr.ph, label %.lr.ph53, !llvm.loop !55

.lr.ph53:                                         ; preds = %.lr.ph
  %i.j = lshr i64 %1, 4                           ; 3 uses
  %i.k = tail call { i64, i64 } @ROCKSDB_XXH3_128bits_withSeed(ptr noundef nonnull readonly captures(address) %spec.select41, i64 noundef %spec.select, i64 noundef 0) #34 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.k, 1        ; 2 uses
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.l) ; 3 uses
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.m) ; 2 uses
  %min.iters.check = icmp ult i64 %1, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph53
  %n.vec = and i64 %i.j, 1152921504606846972      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert59 = insertelement <4 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat60 = shufflevector <4 x i64> %broadcast.splatinsert59, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.op = xor <4 x i64> %broadcast.splat60, %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.p = sub nuw nsw <4 x i64> splat (i64 6455697860950631241), %vec.ind
  %i.q = add nuw nsw <4 x i64> %vec.ind, splat (i64 -4466874330221494952)
  %.reass62 = xor <4 x i64> %i.p, %invariant.op
  %i.r = zext <4 x i64> %.reass62 to <4 x i128>
  %i.s = mul nuw <4 x i128> %i.r, splat (i128 11400714785074694791) ; 2 uses
  %i.t = trunc <4 x i128> %i.s to <4 x i64>
  %i.u = lshr <4 x i128> %i.s, splat (i128 64)
  %i.v = trunc nuw <4 x i128> %i.u to <4 x i64>
  %i.w = add <4 x i64> %i.t, splat (i64 270215977642229760)
  %i.x = xor <4 x i64> %i.q, %broadcast.splat     ; 2 uses
  %i.y = and <4 x i64> %i.x, splat (i64 4294967295)
  %i.z = mul nuw <4 x i64> %i.y, splat (i64 2246822518)
  %i.aa = add <4 x i64> %i.z, %i.x
  %i.ab = add <4 x i64> %i.aa, %i.v               ; 2 uses
  %i.ac = tail call <4 x i64> @llvm.bswap.v4i64(<4 x i64> %i.ab)
  %i.ad = xor <4 x i64> %i.ac, %i.w
  %i.ae = zext <4 x i64> %i.ad to <4 x i128>
  %i.af = mul nuw <4 x i128> %i.ae, splat (i128 14029467366897019727) ; 2 uses
  %i.ag = trunc <4 x i128> %i.af to <4 x i64>     ; 2 uses
  %i.ah = lshr <4 x i128> %i.af, splat (i128 64)
  %i.ai = trunc nuw <4 x i128> %i.ah to <4 x i64>
  %i.aj = mul <4 x i64> %i.ab, splat (i64 -4417276706812531889)
  %i.ak = add <4 x i64> %i.aj, %i.ai              ; 2 uses
  %i.al = lshr <4 x i64> %i.ag, splat (i64 37)
  %i.am = xor <4 x i64> %i.al, %i.ag
  %i.an = mul <4 x i64> %i.am, splat (i64 1609587791953885689) ; 2 uses
  %i.ao = lshr <4 x i64> %i.an, splat (i64 32)
  %i.ap = lshr <4 x i64> %i.ak, splat (i64 37)
  %i.aq = xor <4 x i64> %i.ap, %i.ak
  %i.ar = mul <4 x i64> %i.aq, splat (i64 1609587791953885689) ; 2 uses
  %i.as = lshr <4 x i64> %i.ar, splat (i64 32)
  %i.at = shl nuw i64 %index, 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at ; 2 uses
  %wide.vec = load <8 x i64>, ptr %i.au, align 1, !tbaa !27 ; 2 uses
  %strided.vec = shufflevector <8 x i64> %wide.vec, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec61 = shufflevector <8 x i64> %wide.vec, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.av = xor <4 x i64> %i.ao, %strided.vec
  %i.aw = xor <4 x i64> %i.av, %i.an
  %i.ax = xor <4 x i64> %i.as, %strided.vec61
  %i.ay = xor <4 x i64> %i.ax, %i.ar
  %interleaved.vec = shufflevector <4 x i64> %i.aw, <4 x i64> %i.ay, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i64> %interleaved.vec, ptr %i.au, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge54, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph53, %middle.block
  %.03751.ph = phi i64 [ 0, %.lr.ph53 ], [ %n.vec, %middle.block ]
  %invariant.op63 = xor i64 %i.o, %i.n
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03751 = phi i64 [ %i.ch, %scalar.ph ], [ %.03751.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ba = sub nuw nsw i64 6455697860950631241, %.03751
  %i.bb = add nuw nsw i64 %.03751, -4466874330221494952
  %.reass.reass = xor i64 %i.ba, %invariant.op63
  %i.bc = zext i64 %.reass.reass to i128
  %i.bd = mul nuw i128 %i.bc, 11400714785074694791 ; 2 uses
  %i.be = trunc i128 %i.bd to i64
  %i.bf = lshr i128 %i.bd, 64
  %i.bg = trunc nuw i128 %i.bf to i64
  %i.bh = add i64 %i.be, 270215977642229760
  %i.bi = xor i64 %i.bb, %i.n                     ; 2 uses
  %i.bj = and i64 %i.bi, 4294967295
  %i.bk = mul nuw i64 %i.bj, 2246822518
  %i.bl = add i64 %i.bk, %i.bi
  %i.bm = add i64 %i.bl, %i.bg                    ; 2 uses
  %i.bn = tail call noundef i64 @llvm.bswap.i64(i64 %i.bm)
  %i.bo = xor i64 %i.bn, %i.bh
  %i.bp = zext i64 %i.bo to i128
  %i.bq = mul nuw i128 %i.bp, 14029467366897019727 ; 2 uses
  %i.br = trunc i128 %i.bq to i64
  %i.bs = lshr i128 %i.bq, 64
  %i.bt = trunc nuw i128 %i.bs to i64
  %i.bu = mul i64 %i.bm, -4417276706812531889
  %i.bv = add i64 %i.bu, %i.bt
  %i.bw = shl nuw i64 %.03751, 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bw ; 2 uses
  %i.by = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %i.bz = insertelement <2 x i64> %i.by, i64 %i.bv, i64 1 ; 2 uses
  %i.ca = lshr <2 x i64> %i.bz, splat (i64 37)
  %i.cb = xor <2 x i64> %i.ca, %i.bz
  %i.cc = mul <2 x i64> %i.cb, splat (i64 1609587791953885689) ; 2 uses
  %i.cd = lshr <2 x i64> %i.cc, splat (i64 32)
  %i.ce = load <2 x i64>, ptr %i.bx, align 1, !tbaa !27
  %i.cf = xor <2 x i64> %i.cd, %i.ce
  %i.cg = xor <2 x i64> %i.cf, %i.cc
  store <2 x i64> %i.cg, ptr %i.bx, align 1
  %i.ch = add nuw nsw i64 %.03751, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ch, %i.j
  br i1 %exitcond.not, label %._crit_edge54, label %scalar.ph, !llvm.loop !57

._crit_edge54:                                    ; preds = %scalar.ph, %middle.block
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -16 ; 2 uses
  %i.ck = load <2 x i64>, ptr %i.cj, align 1, !tbaa !27
  %i.cl = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.cm = insertelement <2 x i64> %i.cl, i64 %i.m, i64 1
  %i.cn = xor <2 x i64> %i.ck, %i.cm
  store <2 x i64> %i.cn, ptr %i.cj, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge54
  %.0 = phi i32 [ 0, %._crit_edge54 ], [ 1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define void @ROCKSDB_XXH3_generateSecret_fromSeed(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #23 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.a = insertelement <8 x i64> poison, i64 %1, i64 0
  %i.b = shufflevector <8 x i64> %i.a, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.c = sub <8 x i64> <i64 poison, i64 0, i64 poison, i64 0, i64 poison, i64 0, i64 poison, i64 0>, %i.b
  %i.d = shufflevector <8 x i64> %i.b, <8 x i64> %i.c, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 3 uses
  %i.e = add <8 x i64> %i.d, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %i.f = add <8 x i64> %i.d, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %i.g = add <8 x i64> %i.d, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  store <8 x i64> %i.e, ptr %0, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %i.f, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %i.g, ptr %.sroa.5.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read) uwtable
define internal fastcc noundef i64 @_ZL21XXH3_len_129to240_64bPKhmS0_mm(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 129, 241) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #26 {
bb.a:
  %i.a = mul i64 %1, -7046029288634856825
  %i.b = load <16 x i64>, ptr %0, align 1, !tbaa !27 ; 2 uses
  %i.c = load <16 x i64>, ptr %2, align 1, !tbaa !27 ; 2 uses
  %i.d = shufflevector <16 x i64> %i.c, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.e = insertelement <8 x i64> poison, i64 %3, i64 0
  %i.f = shufflevector <8 x i64> %i.e, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.g = add <8 x i64> %i.d, %i.f
  %i.h = shufflevector <16 x i64> %i.b, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.i = xor <8 x i64> %i.g, %i.h
  %i.j = shufflevector <16 x i64> %i.c, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.k = sub <8 x i64> %i.j, %i.f
  %i.l = shufflevector <16 x i64> %i.b, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.m = xor <8 x i64> %i.k, %i.l
  %i.n = zext <8 x i64> %i.i to <8 x i128>
  %i.o = zext <8 x i64> %i.m to <8 x i128>
  %i.p = mul nuw <8 x i128> %i.o, %i.n            ; 2 uses
  %i.q = lshr <8 x i128> %i.p, splat (i128 64)
  %i.r = xor <8 x i128> %i.q, %i.p
  %i.s = trunc <8 x i128> %i.r to <8 x i64>
  %i.t = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.s)
  %op.rdx = add i64 %i.t, %i.a                    ; 2 uses
  %i.u = trunc nuw nsw i64 %1 to i32
  %i.v = lshr i32 %i.u, 4                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 119
  %.val44 = load i64, ptr %i.x, align 1, !tbaa !27
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.val43 = load i64, ptr %i.z, align 1, !tbaa !27
  %.val42 = load i64, ptr %i.y, align 1, !tbaa !27
  %i.aa = add i64 %.val42, %3
  %i.ab = xor i64 %i.aa, %.val44
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 127
  %.val41 = load i64, ptr %i.ac, align 1, !tbaa !27
  %i.ad = sub i64 %.val41, %3
  %i.ae = xor i64 %i.ad, %.val43
  %i.af = zext i64 %i.ab to i128
  %i.ag = zext i64 %i.ae to i128
  %i.ah = mul nuw i128 %i.ag, %i.af               ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = xor i128 %i.ai, %i.ah
  %i.ak = trunc i128 %i.aj to i64                 ; 2 uses
  %i.al = lshr i64 %op.rdx, 37
  %i.am = xor i64 %i.al, %op.rdx
  %i.an = mul i64 %i.am, 1609587791953885689      ; 2 uses
  %i.ao = lshr i64 %i.an, 32
  %i.ap = xor i64 %i.ao, %i.an                    ; 2 uses
  %.not = icmp eq i32 %i.v, 8
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.v to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.03552 = phi i64 [ %i.ak, %.lr.ph.preheader ], [ %i.bh, %.lr.ph ]
  %.13751 = phi i64 [ %i.ap, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.aq = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.13751) #32, !srcloc !61 ; 2 uses
  %i.ar = shl nuw nsw i64 %indvars.iv, 4          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %2, i64 %i.ar     ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -125
  %.val48 = load i64, ptr %i.as, align 1, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val47 = load i64, ptr %i.av, align 1, !tbaa !27
  %.val46 = load i64, ptr %i.au, align 1, !tbaa !27
  %i.aw = add i64 %.val46, %3
  %i.ax = xor i64 %i.aw, %.val48
  %i.ay = getelementptr i8, ptr %i.at, i64 -117
  %.val45 = load i64, ptr %i.ay, align 1, !tbaa !27
  %i.az = sub i64 %.val45, %3
  %i.ba = xor i64 %i.az, %.val47
  %i.bb = zext i64 %i.ax to i128
  %i.bc = zext i64 %i.ba to i128
  %i.bd = mul nuw i128 %i.bc, %i.bb               ; 2 uses
  %i.be = lshr i128 %i.bd, 64
  %i.bf = xor i128 %i.be, %i.bd
  %i.bg = trunc i128 %i.bf to i64
  %i.bh = add i64 %.03552, %i.bg                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.137.lcssa = phi i64 [ %i.ap, %bb.a ], [ %i.aq, %.lr.ph ]
  %.035.lcssa = phi i64 [ %i.ak, %bb.a ], [ %i.bh, %.lr.ph ]
  %i.bi = add i64 %.035.lcssa, %.137.lcssa        ; 2 uses
  %i.bj = lshr i64 %i.bi, 37
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = mul i64 %i.bk, 1609587791953885689      ; 2 uses
  %i.bm = lshr i64 %i.bl, 32
  %i.bn = xor i64 %i.bm, %i.bl
  ret i64 %i.bn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i32 immarg) #28

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @_ZL22XXH3_len_129to240_128bPKhmS0_mm(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 129, 241) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #29 {
bb.a:
  %i.a = mul i64 %1, -7046029288634856825
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val71 = load i64, ptr %0, align 1, !tbaa !27  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val70 = load i64, ptr %i.c, align 1, !tbaa !27 ; 2 uses
  %.val69 = load i64, ptr %2, align 1, !tbaa !27
  %i.d = add i64 %.val69, %3
  %i.e = xor i64 %i.d, %.val71
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val68 = load i64, ptr %i.f, align 1, !tbaa !27
  %i.g = sub i64 %.val68, %3
  %i.h = xor i64 %i.g, %.val70
  %i.i = zext i64 %i.e to i128
  %i.j = zext i64 %i.h to i128
  %i.k = mul nuw i128 %i.j, %i.i                  ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = xor i128 %i.l, %i.k
  %i.n = trunc i128 %i.m to i64
  %i.o = add i64 %i.a, %i.n
  %.val67 = load i64, ptr %i.b, align 1, !tbaa !27 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val66 = load i64, ptr %i.p, align 1, !tbaa !27 ; 2 uses
  %i.q = add i64 %.val66, %.val67
  %i.r = xor i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val63 = load i64, ptr %i.s, align 1, !tbaa !27
  %i.t = add i64 %.val63, %3
  %i.u = xor i64 %i.t, %.val67
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val62 = load i64, ptr %i.v, align 1, !tbaa !27
  %i.w = sub i64 %.val62, %3
  %i.x = xor i64 %i.w, %.val66
  %i.y = zext i64 %i.u to i128
  %i.z = zext i64 %i.x to i128
  %i.aa = mul nuw i128 %i.z, %i.y                 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64
  %i.ae = add i64 %.val70, %.val71
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val71.1 = load i64, ptr %i.ag, align 1, !tbaa !27 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val70.1 = load i64, ptr %i.aj, align 1, !tbaa !27 ; 2 uses
  %.val69.1 = load i64, ptr %i.ai, align 1, !tbaa !27
  %i.ak = add i64 %.val69.1, %3
  %i.al = xor i64 %i.ak, %.val71.1
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val68.1 = load i64, ptr %i.am, align 1, !tbaa !27
  %i.an = sub i64 %.val68.1, %3
  %i.ao = xor i64 %i.an, %.val70.1
  %i.ap = zext i64 %i.al to i128
  %i.aq = zext i64 %i.ao to i128
  %i.ar = mul nuw i128 %i.aq, %i.ap               ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64
  %i.av = add i64 %i.r, %i.au
  %.val67.1 = load i64, ptr %i.ah, align 1, !tbaa !27 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val66.1 = load i64, ptr %i.aw, align 1, !tbaa !27 ; 2 uses
  %i.ax = add i64 %.val66.1, %.val67.1
  %i.ay = xor i64 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val63.1 = load i64, ptr %i.az, align 1, !tbaa !27
  %i.ba = add i64 %.val63.1, %3
  %i.bb = xor i64 %i.ba, %.val67.1
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val62.1 = load i64, ptr %i.bc, align 1, !tbaa !27
  %i.bd = sub i64 %.val62.1, %3
  %i.be = xor i64 %i.bd, %.val66.1
  %i.bf = zext i64 %i.bb to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
end_hunk_4
