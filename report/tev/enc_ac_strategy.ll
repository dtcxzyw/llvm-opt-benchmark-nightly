Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_ac_strategy?download=true
inline.NumInlined: 2681
inline.NumDeleted: 850
loop-unroll.NumCompletelyUnrolled: 531
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 686
begin_hunk_0_@_ZN3jxl6N_AVX212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_:bb.a
  %.sroa.50.84.vec.insert954 = shufflevector <8 x float> %i.qp, <8 x float> %i.qq, <4 x i32> <i32 5, i32 13, i32 poison, i32 poison>
  %i.rb = extractelement <8 x float> %i.qq, i64 6
  %.sroa.59.100.vec.insert963 = insertelement <4 x float> %i.qw, float %i.rb, i64 1
  %i.rc = extractelement <8 x float> %i.qq, i64 7
  %.sroa.69.116.vec.insert972 = insertelement <4 x float> %i.qx, float %i.rc, i64 1
  %i.rd = shufflevector <8 x float> %i.qr, <8 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.0904.8.vec.insert = shufflevector <4 x float> %.sroa.0904.4.vec.insert909, <4 x float> %i.rd, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.re = shufflevector <8 x float> %i.qr, <8 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %.sroa.12.24.vec.insert920 = shufflevector <4 x float> %.sroa.12.20.vec.insert918, <4 x float> %i.re, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.rf = shufflevector <8 x float> %i.qr, <8 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %.sroa.21.40.vec.insert929 = shufflevector <4 x float> %.sroa.21.36.vec.insert927, <4 x float> %i.rf, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.rg = shufflevector <8 x float> %i.qr, <8 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %.sroa.31.56.vec.insert938 = shufflevector <4 x float> %.sroa.31.52.vec.insert936, <4 x float> %i.rg, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.rh = extractelement <8 x float> %i.qr, i64 4
  %.sroa.40.72.vec.insert947 = insertelement <4 x float> %.sroa.40.68.vec.insert945, float %i.rh, i64 2
  %i.ri = extractelement <8 x float> %i.qr, i64 5
  %.sroa.50.88.vec.insert956 = insertelement <4 x float> %.sroa.50.84.vec.insert954, float %i.ri, i64 2
  %i.rj = shufflevector <8 x float> %i.qr, <8 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 6, i32 poison>
  %.sroa.59.104.vec.insert965 = shufflevector <4 x float> %.sroa.59.100.vec.insert963, <4 x float> %i.rj, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.rk = extractelement <8 x float> %i.qr, i64 7
  %.sroa.69.120.vec.insert974 = insertelement <4 x float> %.sroa.69.116.vec.insert972, float %i.rk, i64 2
  %i.rl = shufflevector <8 x float> %i.qs, <8 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.0904.12.vec.insert = shufflevector <4 x float> %.sroa.0904.8.vec.insert, <4 x float> %i.rl, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.rm = shufflevector <8 x float> %i.qs, <8 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %.sroa.12.28.vec.insert922 = shufflevector <4 x float> %.sroa.12.24.vec.insert920, <4 x float> %i.rm, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.rn = shufflevector <8 x float> %i.qs, <8 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %.sroa.21.44.vec.insert931 = shufflevector <4 x float> %.sroa.21.40.vec.insert929, <4 x float> %i.rn, <4 x i32> <i32 0, i32 1, i32 2, i32 6> ; 2 uses
  %i.ro = shufflevector <8 x float> %i.qs, <8 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %.sroa.31.60.vec.insert940 = shufflevector <4 x float> %.sroa.31.56.vec.insert938, <4 x float> %i.ro, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.rp = load float, ptr %i.g, align 4, !tbaa !69, !alias.scope !1437
  %.sroa.40.76.vec.insert949 = insertelement <4 x float> %.sroa.40.72.vec.insert947, float %i.rp, i64 3 ; 2 uses
  %i.rq = load float, ptr %i.h, align 4, !tbaa !69, !alias.scope !1437
  %.sroa.50.92.vec.insert958 = insertelement <4 x float> %.sroa.50.88.vec.insert956, float %i.rq, i64 3 ; 2 uses
  %i.rr = load float, ptr %i.i, align 4, !tbaa !69, !alias.scope !1437
  %.sroa.59.108.vec.insert967 = insertelement <4 x float> %.sroa.59.104.vec.insert965, float %i.rr, i64 3 ; 2 uses
  %i.rs = load float, ptr %i.j, align 4, !tbaa !69, !alias.scope !1437
  %.sroa.69.124.vec.insert976 = insertelement <4 x float> %.sroa.69.120.vec.insert974, float %i.rs, i64 3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  %i.rt = fadd <4 x float> %.sroa.0904.12.vec.insert, %.sroa.69.124.vec.insert976 ; 2 uses
  %i.ru = fadd <4 x float> %.sroa.12.28.vec.insert922, %.sroa.59.108.vec.insert967 ; 2 uses
  %i.rv = fadd <4 x float> %.sroa.21.44.vec.insert931, %.sroa.50.92.vec.insert958 ; 2 uses
  %i.rw = fadd <4 x float> %.sroa.31.60.vec.insert940, %.sroa.40.76.vec.insert949 ; 2 uses
  %i.rx = fadd <4 x float> %i.rw, %i.rt           ; 2 uses
  %i.ry = fadd <4 x float> %i.rv, %i.ru           ; 2 uses
  %i.rz = fadd <4 x float> %i.ry, %i.rx           ; 3 uses
  %i.sa = fsub <4 x float> %i.rx, %i.ry           ; 3 uses
  %i.sb = fsub <4 x float> %i.rt, %i.rw
  %i.sc = fsub <4 x float> %i.ru, %i.rv
  %i.sd = fmul <4 x float> %i.sb, splat (float f0x3F0A8BD4) ; 2 uses
  %i.se = fmul <4 x float> %i.sc, splat (float f0x3FA73D75) ; 2 uses
  %i.sf = fadd <4 x float> %i.se, %i.sd
  %i.sg = fsub <4 x float> %i.sd, %i.se           ; 4 uses
  %i.sh = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sf, <4 x float> splat (float f0x3FB504F3), <4 x float> %i.sg) ; 3 uses
  %i.si = fsub <4 x float> %.sroa.0904.12.vec.insert, %.sroa.69.124.vec.insert976
  %i.sj = fsub <4 x float> %.sroa.12.28.vec.insert922, %.sroa.59.108.vec.insert967
  %i.sk = fsub <4 x float> %.sroa.21.44.vec.insert931, %.sroa.50.92.vec.insert958
  %i.sl = fsub <4 x float> %.sroa.31.60.vec.insert940, %.sroa.40.76.vec.insert949
  %i.sm = fmul <4 x float> %i.si, splat (float f0x3F0281F7) ; 2 uses
  %i.sn = fmul <4 x float> %i.sj, splat (float f0x3F19F1BD) ; 2 uses
  %i.so = fmul <4 x float> %i.sk, splat (float f0x3F6664D7) ; 2 uses
  %i.sp = fmul <4 x float> %i.sl, splat (float f0x402406CF) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  %i.sq = fadd <4 x float> %i.sp, %i.sm           ; 2 uses
  %i.sr = fadd <4 x float> %i.so, %i.sn           ; 2 uses
  %i.ss = fadd <4 x float> %i.sr, %i.sq           ; 2 uses
  %i.st = fsub <4 x float> %i.sq, %i.sr           ; 3 uses
  %i.su = fsub <4 x float> %i.sm, %i.sp
  %i.sv = fsub <4 x float> %i.sn, %i.so
  %i.sw = fmul <4 x float> %i.su, splat (float f0x3F0A8BD4) ; 2 uses
  %i.sx = fmul <4 x float> %i.sv, splat (float f0x3FA73D75) ; 2 uses
  %i.sy = fadd <4 x float> %i.sx, %i.sw
  %i.sz = fsub <4 x float> %i.sw, %i.sx           ; 6 uses
  %i.ta = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sy, <4 x float> splat (float f0x3FB504F3), <4 x float> %i.sz) ; 3 uses
  %i.tb = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ss, <4 x float> splat (float f0x3FB504F3), <4 x float> %i.ta) ; 3 uses
  %i.tc = fadd <4 x float> %i.st, %i.ta           ; 3 uses
  %i.td = fadd <4 x float> %i.st, %i.sz           ; 3 uses
  %i.te = fmul <4 x float> %i.rz, splat (float 1.250000e-01) ; 5 uses
  %i.tf = fmul <4 x float> %i.tb, splat (float 1.250000e-01) ; 5 uses
  %i.tg = fmul <4 x float> %i.sh, splat (float 1.250000e-01) ; 5 uses
  %i.th = fmul <4 x float> %i.tc, splat (float 1.250000e-01) ; 5 uses
  %i.ti = fmul <4 x float> %i.sa, splat (float 1.250000e-01) ; 5 uses
  %i.tj = fmul <4 x float> %i.td, splat (float 1.250000e-01) ; 5 uses
  %i.tk = fmul <4 x float> %i.sg, splat (float 1.250000e-01) ; 5 uses
  store <4 x float> %i.tk, ptr %i.d, align 4, !tbaa !66, !alias.scope !1423, !noalias !1424
  %i.tl = fmul <4 x float> %i.sz, splat (float 1.250000e-01) ; 4 uses
  store <4 x float> %i.tl, ptr %i.g, align 4, !tbaa !66, !alias.scope !1423, !noalias !1424
  %.sroa.0904.4.vec.insert = shufflevector <4 x float> %i.te, <4 x float> %i.tf, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %.sroa.21.36.vec.insert = shufflevector <4 x float> %i.te, <4 x float> %i.tf, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %.sroa.40.68.vec.insert = shufflevector <4 x float> %i.te, <4 x float> %i.tf, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %.sroa.59.100.vec.insert = shufflevector <4 x float> %i.te, <4 x float> %i.tf, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %.sroa.0904.8.vec.insert911 = shufflevector <4 x float> %.sroa.0904.4.vec.insert, <4 x float> %i.tg, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %.sroa.21.40.vec.insert = shufflevector <4 x float> %.sroa.21.36.vec.insert, <4 x float> %i.tg, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %.sroa.40.72.vec.insert = shufflevector <4 x float> %.sroa.40.68.vec.insert, <4 x float> %i.tg, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %.sroa.59.104.vec.insert = shufflevector <4 x float> %.sroa.59.100.vec.insert, <4 x float> %i.tg, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %.sroa.0904.12.vec.insert913 = shufflevector <4 x float> %.sroa.0904.8.vec.insert911, <4 x float> %i.th, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.21.44.vec.insert = shufflevector <4 x float> %.sroa.21.40.vec.insert, <4 x float> %i.th, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.40.76.vec.insert = shufflevector <4 x float> %.sroa.40.72.vec.insert, <4 x float> %i.th, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.59.108.vec.insert = shufflevector <4 x float> %.sroa.59.104.vec.insert, <4 x float> %i.th, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %.sroa.12.20.vec.insert = shufflevector <4 x float> %i.ti, <4 x float> %i.tj, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %.sroa.31.52.vec.insert = shufflevector <4 x float> %i.ti, <4 x float> %i.tj, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %.sroa.50.84.vec.insert = shufflevector <4 x float> %i.ti, <4 x float> %i.tj, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %.sroa.69.116.vec.insert = shufflevector <4 x float> %i.ti, <4 x float> %i.tj, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %.sroa.12.24.vec.insert = shufflevector <4 x float> %.sroa.12.20.vec.insert, <4 x float> %i.tk, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %.sroa.31.56.vec.insert = shufflevector <4 x float> %.sroa.31.52.vec.insert, <4 x float> %i.tk, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %.sroa.50.88.vec.insert = shufflevector <4 x float> %.sroa.50.84.vec.insert, <4 x float> %i.tk, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %.sroa.69.120.vec.insert = shufflevector <4 x float> %.sroa.69.116.vec.insert, <4 x float> %i.tk, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %.sroa.12.28.vec.insert = shufflevector <4 x float> %.sroa.12.24.vec.insert, <4 x float> %i.tl, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.31.60.vec.insert = shufflevector <4 x float> %.sroa.31.56.vec.insert, <4 x float> %i.tl, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.50.92.vec.insert = shufflevector <4 x float> %.sroa.50.88.vec.insert, <4 x float> %i.tl, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.tm = load float, ptr %i.j, align 4, !tbaa !69, !alias.scope !1437
  %.sroa.69.124.vec.insert = insertelement <4 x float> %.sroa.69.120.vec.insert, float %i.tm, i64 3
  %.idx279 = shl nuw nsw i64 %.0267787, 5
  %invariant.gep = getelementptr inbounds nuw i8, ptr %3, i64 %.idx279 ; 8 uses
  store <4 x float> %.sroa.0904.12.vec.insert913, ptr %invariant.gep, align 4, !tbaa !69
  %.sroa.12.0.invariant.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  store <4 x float> %.sroa.12.28.vec.insert, ptr %.sroa.12.0.invariant.gep.sroa_idx, align 4, !tbaa !69
  %gep763.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64
  store <4 x float> %.sroa.21.44.vec.insert, ptr %gep763.1, align 4, !tbaa !69
  %.sroa.31.32.gep763.1.sroa_idx = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80
  store <4 x float> %.sroa.31.60.vec.insert, ptr %.sroa.31.32.gep763.1.sroa_idx, align 4, !tbaa !69
  %gep763.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 128
  store <4 x float> %.sroa.40.76.vec.insert, ptr %gep763.2, align 4, !tbaa !69
  %.sroa.50.64.gep763.2.sroa_idx = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 144
  store <4 x float> %.sroa.50.92.vec.insert, ptr %.sroa.50.64.gep763.2.sroa_idx, align 4, !tbaa !69
  %gep763.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 192
  store <4 x float> %.sroa.59.108.vec.insert, ptr %gep763.3, align 4, !tbaa !69
  %.sroa.69.96.gep763.3.sroa_idx = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 208
  store <4 x float> %.sroa.69.124.vec.insert, ptr %.sroa.69.96.gep763.3.sroa_idx, align 4, !tbaa !69
  br i1 %i.pu, label %.preheader734, label %bb.b, !llvm.loop !1146

.preheader737:                                    ; preds = %bb.a
  %gep.3.i.i324 = getelementptr i8, ptr %4, i64 48 ; 5 uses
  %gep.2.i.i323 = getelementptr i8, ptr %4, i64 32 ; 4 uses
  %gep.1.i.i322 = getelementptr i8, ptr %4, i64 16 ; 8 uses
  %.idx2.i.i.i.i.i320 = mul i64 %2, 12            ; 4 uses
  %.idx.i.i.i.i.i319 = shl i64 %2, 3              ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  %i.tn = load <4 x float>, ptr %1, align 1, !tbaa !66, !alias.scope !1447, !noalias !1448 ; 2 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.tp = load <4 x float>, ptr %i.to, align 1, !tbaa !66, !alias.scope !1447, !noalias !1448 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i.i319
  %i.tr = load <4 x float>, ptr %i.tq, align 1, !tbaa !66, !alias.scope !1447, !noalias !1448 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 %.idx2.i.i.i.i.i320
  %i.tt = load <4 x float>, ptr %i.ts, align 1, !tbaa !66, !alias.scope !1447, !noalias !1448 ; 2 uses
  %i.tu = fadd <4 x float> %i.tn, %i.tt           ; 2 uses
  %i.tv = fadd <4 x float> %i.tp, %i.tr           ; 2 uses
  %i.tw = fadd <4 x float> %i.tv, %i.tu
  %i.tx = fsub <4 x float> %i.tu, %i.tv
  %i.ty = fsub <4 x float> %i.tn, %i.tt
  %i.tz = fsub <4 x float> %i.tp, %i.tr
  %i.ua = fmul <4 x float> %i.ty, splat (float f0x3F0A8BD4) ; 2 uses
  %i.ub = fmul <4 x float> %i.tz, splat (float f0x3FA73D75) ; 2 uses
  %i.uc = fadd <4 x float> %i.ub, %i.ua
  %i.ud = fsub <4 x float> %i.ua, %i.ub           ; 2 uses
  %i.ue = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.uc, <4 x float> splat (float f0x3FB504F3), <4 x float> %i.ud)
  %i.uf = fmul <4 x float> %i.tw, splat (float 2.500000e-01) ; 3 uses
  %i.ug = fmul <4 x float> %i.ue, splat (float 2.500000e-01) ; 3 uses
  %i.uh = fmul <4 x float> %i.tx, splat (float 2.500000e-01) ; 4 uses
  %i.ui = shufflevector <4 x float> %i.uh, <4 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uj = fmul <4 x float> %i.ud, splat (float 2.500000e-01) ; 4 uses
  %i.uk = shufflevector <4 x float> %i.uj, <4 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ul = shufflevector <4 x float> %i.uf, <4 x float> %i.ug, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.um = shufflevector <4 x float> %i.ul, <4 x float> %i.uh, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.un = shufflevector <4 x float> %i.um, <4 x float> %i.uj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x float> %i.un, ptr %4, align 4, !tbaa !69, !alias.scope !1446
  %i.uo = shufflevector <4 x float> %i.uf, <4 x float> %i.ug, <8 x i32> <i32 1, i32 5, i32 poison, i32 poison, i32 2, i32 6, i32 poison, i32 poison>
  %i.up = shufflevector <8 x float> %i.uo, <8 x float> %i.ui, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 4, i32 5, i32 poison, i32 poison>
  %i.uq = shufflevector <8 x float> %i.up, <8 x float> %i.uk, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.ur = shufflevector <4 x float> %i.uh, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.us = shufflevector <8 x float> %i.uq, <8 x float> %i.ur, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 10, i32 poison>
  %i.ut = shufflevector <4 x float> %i.uj, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uu = shufflevector <8 x float> %i.us, <8 x float> %i.ut, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 10>
  store <8 x float> %i.uu, ptr %gep.1.i.i322, align 4, !tbaa !69, !alias.scope !1446
  %i.uv = shufflevector <4 x float> %i.uf, <4 x float> %i.ug, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.uw = shufflevector <4 x float> %i.uv, <4 x float> %i.uh, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.ux = shufflevector <4 x float> %i.uw, <4 x float> %i.uj, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.ux, ptr %gep.3.i.i324, align 4, !tbaa !69, !alias.scope !1446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %i.uy = load <4 x float>, ptr %4, align 4, !tbaa !66, !alias.scope !1452, !noalias !1453 ; 2 uses
  %i.uz = load <4 x float>, ptr %gep.1.i.i322, align 4, !tbaa !66, !alias.scope !1452, !noalias !1453 ; 2 uses
  %i.va = load <4 x float>, ptr %gep.2.i.i323, align 4, !tbaa !66, !alias.scope !1452, !noalias !1453 ; 2 uses
  %i.vb = load <4 x float>, ptr %gep.3.i.i324, align 4, !tbaa !66, !alias.scope !1452, !noalias !1453 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  %i.vc = fadd <4 x float> %i.uy, %i.vb           ; 2 uses
  %i.vd = fadd <4 x float> %i.uz, %i.va           ; 2 uses
  %i.ve = fadd <4 x float> %i.vd, %i.vc
  %i.vf = fsub <4 x float> %i.vc, %i.vd
  %i.vg = fsub <4 x float> %i.uy, %i.vb
  %i.vh = fsub <4 x float> %i.uz, %i.va
  %i.vi = fmul <4 x float> %i.vg, splat (float f0x3F0A8BD4) ; 2 uses
  %i.vj = fmul <4 x float> %i.vh, splat (float f0x3FA73D75) ; 2 uses
  %i.vk = fadd <4 x float> %i.vj, %i.vi
  %i.vl = fsub <4 x float> %i.vi, %i.vj
  %gep743.1 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %gep743.2 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %gep743.3 = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  %i.vn = load <4 x float>, ptr %i.vm, align 1, !tbaa !66, !alias.scope !1447, !noalias !1457 ; 2 uses
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %2
  %i.vp = load <4 x float>, ptr %i.vo, align 1, !tbaa !66, !alias.scope !1447, !noalias !1457 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vm, i64 %.idx.i.i.i.i.i319
  %i.vr = load <4 x float>, ptr %i.vq, align 1, !tbaa !66, !alias.scope !1447, !noalias !1457 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vm, i64 %.idx2.i.i.i.i.i320
  %i.vt = load <4 x float>, ptr %i.vs, align 1, !tbaa !66, !alias.scope !1447, !noalias !1457 ; 2 uses
  %i.vu = fadd <4 x float> %i.vn, %i.vt           ; 2 uses
  %i.vv = fadd <4 x float> %i.vp, %i.vr           ; 2 uses
  %i.vw = fadd <4 x float> %i.vv, %i.vu
  %i.vx = fsub <4 x float> %i.vu, %i.vv
  %i.vy = fsub <4 x float> %i.vn, %i.vt
  %i.vz = fsub <4 x float> %i.vp, %i.vr
  %i.wa = fmul <4 x float> %i.vy, splat (float f0x3F0A8BD4) ; 2 uses
  %i.wb = fmul <4 x float> %i.vz, splat (float f0x3FA73D75) ; 2 uses
  %i.wc = fadd <4 x float> %i.wb, %i.wa
  %i.wd = fsub <4 x float> %i.wa, %i.wb           ; 2 uses
  %i.we = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.wc, <4 x float> splat (float f0x3FB504F3), <4 x float> %i.wd)
  %i.wf = fmul <4 x float> %i.vw, splat (float 2.500000e-01) ; 3 uses
  %i.wg = fmul <4 x float> %i.we, splat (float 2.500000e-01) ; 3 uses
  %i.wh = fmul <4 x float> %i.vx, splat (float 2.500000e-01) ; 4 uses
  %i.wi = shufflevector <4 x float> %i.wh, <4 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wj = fmul <4 x float> %i.wd, splat (float 2.500000e-01) ; 4 uses
  %i.wk = shufflevector <4 x float> %i.wj, <4 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wl = shufflevector <4 x float> %i.wf, <4 x float> %i.wg, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.wm = shufflevector <4 x float> %i.wl, <4 x float> %i.wh, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.wn = shufflevector <4 x float> %i.wm, <4 x float> %i.wj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x float> %i.wn, ptr %4, align 4, !tbaa !69, !alias.scope !1456
  %i.wo = shufflevector <4 x float> %i.wf, <4 x float> %i.wg, <8 x i32> <i32 1, i32 5, i32 poison, i32 poison, i32 2, i32 6, i32 poison, i32 poison>
  %i.wp = shufflevector <8 x float> %i.wo, <8 x float> %i.wi, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 4, i32 5, i32 poison, i32 poison>
  %i.wq = shufflevector <8 x float> %i.wp, <8 x float> %i.wk, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.wr = shufflevector <4 x float> %i.wh, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ws = shufflevector <8 x float> %i.wq, <8 x float> %i.wr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 10, i32 poison>
  %i.wt = shufflevector <4 x float> %i.wj, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wu = shufflevector <8 x float> %i.ws, <8 x float> %i.wt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 10>
  store <8 x float> %i.wu, ptr %gep.1.i.i322, align 4, !tbaa !69, !alias.scope !1456
  %i.wv = shufflevector <4 x float> %i.wf, <4 x float> %i.wg, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.ww = shufflevector <4 x float> %i.wv, <4 x float> %i.wh, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.wx = shufflevector <4 x float> %i.ww, <4 x float> %i.wj, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 3 uses
  store <4 x float> %i.wx, ptr %gep.3.i.i324, align 4, !tbaa !69, !alias.scope !1456
  %i.wy = load <4 x float>, ptr %4, align 4, !tbaa !66, !alias.scope !1458, !noalias !1459 ; 2 uses
  %i.wz = load <4 x float>, ptr %gep.1.i.i322, align 4, !tbaa !66, !alias.scope !1458, !noalias !1459 ; 2 uses
  %i.xa = load <4 x float>, ptr %gep.2.i.i323, align 4, !tbaa !66, !alias.scope !1458, !noalias !1459 ; 2 uses
  %i.xb = fadd <4 x float> %i.wy, %i.wx           ; 2 uses
  %i.xc = fadd <4 x float> %i.wz, %i.xa           ; 2 uses
  %i.xd = fadd <4 x float> %i.xc, %i.xb
  %i.xe = fsub <4 x float> %i.xb, %i.xc
  %i.xf = fsub <4 x float> %i.wy, %i.wx
  %i.xg = fsub <4 x float> %i.wz, %i.xa
  %i.xh = fmul <4 x float> %i.xf, splat (float f0x3F0A8BD4) ; 2 uses
  %i.xi = fmul <4 x float> %i.xg, splat (float f0x3FA73D75) ; 2 uses
  %i.xj = fadd <4 x float> %i.xi, %i.xh
  %i.xk = fsub <4 x float> %i.xh, %i.xi
  %i.xl = shufflevector <4 x float> %i.ve, <4 x float> %i.xd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.xm = fmul <8 x float> %i.xl, splat (float 2.500000e-01)
  store <8 x float> %i.xm, ptr %3, align 4, !tbaa !69
  %99 = shufflevector <4 x float> %i.vk, <4 x float> %i.xj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.xn = shufflevector <4 x float> %i.vl, <4 x float> %i.xk, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %100 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %99, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.xn)
  %i.xo = fmul <8 x float> %100, splat (float 2.500000e-01)
  store <8 x float> %i.xo, ptr %gep743.1, align 4, !tbaa !69
  %i.xp = shufflevector <4 x float> %i.vf, <4 x float> %i.xe, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.xq = fmul <8 x float> %i.xp, splat (float 2.500000e-01)
  store <8 x float> %i.xq, ptr %gep743.2, align 4, !tbaa !69
  %i.xr = fmul <8 x float> %i.xn, splat (float 2.500000e-01)
  store <8 x float> %i.xr, ptr %gep743.3, align 4, !tbaa !69
  %.idx1110 = shl i64 %2, 4
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 %.idx1110 ; 5 uses
  %invariant.gep740.1 = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  %i.xt = load <4 x float>, ptr %i.xs, align 1, !tbaa !66, !alias.scope !1447, !noalias !1461 ; 2 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %2
  %i.xv = load <4 x float>, ptr %i.xu, align 1, !tbaa !66, !alias.scope !1447, !noalias !1461 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xs, i64 %.idx.i.i.i.i.i319
  %i.xx = load <4 x float>, ptr %i.xw, align 1, !tbaa !66, !alias.scope !1447, !noalias !1461 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xs, i64 %.idx2.i.i.i.i.i320
  %i.xz = load <4 x float>, ptr %i.xy, align 1, !tbaa !66, !alias.scope !1447, !noalias !1461 ; 2 uses
  %i.ya = fadd <4 x float> %i.xt, %i.xz           ; 2 uses
  %i.yb = fadd <4 x float> %i.xv, %i.xx           ; 2 uses
  %i.yc = fadd <4 x float> %i.yb, %i.ya
  %i.yd = fsub <4 x float> %i.ya, %i.yb
  %i.ye = fsub <4 x float> %i.xt, %i.xz
  %i.yf = fsub <4 x float> %i.xv, %i.xx
  %i.yg = fmul <4 x float> %i.ye, splat (float f0x3F0A8BD4) ; 2 uses
  %i.yh = fmul <4 x float> %i.yf, splat (float f0x3FA73D75) ; 2 uses
  %i.yi = fadd <4 x float> %i.yh, %i.yg
  %i.yj = fsub <4 x float> %i.yg, %i.yh           ; 2 uses
  %i.yk = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.yi, <4 x float> splat (float f0x3FB504F3), <4 x float> %i.yj)
  %i.yl = fmul <4 x float> %i.yc, splat (float 2.500000e-01) ; 3 uses
  %i.ym = fmul <4 x float> %i.yk, splat (float 2.500000e-01) ; 3 uses
  %i.yn = fmul <4 x float> %i.yd, splat (float 2.500000e-01) ; 4 uses
  %i.yo = shufflevector <4 x float> %i.yn, <4 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yp = fmul <4 x float> %i.yj, splat (float 2.500000e-01) ; 4 uses
  %i.yq = shufflevector <4 x float> %i.yp, <4 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yr = shufflevector <4 x float> %i.yl, <4 x float> %i.ym, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ys = shufflevector <4 x float> %i.yr, <4 x float> %i.yn, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.yt = shufflevector <4 x float> %i.ys, <4 x float> %i.yp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x float> %i.yt, ptr %4, align 4, !tbaa !69, !alias.scope !1460
  %i.yu = shufflevector <4 x float> %i.yl, <4 x float> %i.ym, <8 x i32> <i32 1, i32 5, i32 poison, i32 poison, i32 2, i32 6, i32 poison, i32 poison>
  %i.yv = shufflevector <8 x float> %i.yu, <8 x float> %i.yo, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 4, i32 5, i32 poison, i32 poison>
  %i.yw = shufflevector <8 x float> %i.yv, <8 x float> %i.yq, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.yx = shufflevector <4 x float> %i.yn, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yy = shufflevector <8 x float> %i.yw, <8 x float> %i.yx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 10, i32 poison>
  %i.yz = shufflevector <4 x float> %i.yp, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.za = shufflevector <8 x float> %i.yy, <8 x float> %i.yz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 10>
  store <8 x float> %i.za, ptr %gep.1.i.i322, align 4, !tbaa !69, !alias.scope !1460
  %i.zb = shufflevector <4 x float> %i.yl, <4 x float> %i.ym, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.zc = shufflevector <4 x float> %i.zb, <4 x float> %i.yn, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.zd = shufflevector <4 x float> %i.zc, <4 x float> %i.yp, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 3 uses
  store <4 x float> %i.zd, ptr %gep.3.i.i324, align 4, !tbaa !69, !alias.scope !1460
  %i.ze = load <4 x float>, ptr %4, align 4, !tbaa !66, !alias.scope !1462, !noalias !1463 ; 2 uses
  %i.zf = load <4 x float>, ptr %gep.1.i.i322, align 4, !tbaa !66, !alias.scope !1462, !noalias !1463 ; 2 uses
  %i.zg = load <4 x float>, ptr %gep.2.i.i323, align 4, !tbaa !66, !alias.scope !1462, !noalias !1463 ; 2 uses
  %i.zh = fadd <4 x float> %i.ze, %i.zd           ; 2 uses
  %i.zi = fadd <4 x float> %i.zf, %i.zg           ; 2 uses
  %i.zj = fadd <4 x float> %i.zi, %i.zh
  %i.zk = fsub <4 x float> %i.zh, %i.zi
  %i.zl = fsub <4 x float> %i.ze, %i.zd
  %i.zm = fsub <4 x float> %i.zf, %i.zg
  %i.zn = fmul <4 x float> %i.zl, splat (float f0x3F0A8BD4) ; 2 uses
  %i.zo = fmul <4 x float> %i.zm, splat (float f0x3FA73D75) ; 2 uses
  %i.zp = fadd <4 x float> %i.zo, %i.zn
  %i.zq = fsub <4 x float> %i.zn, %i.zo
  %gep743.1.1 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %gep743.2.1 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %gep743.3.1 = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.zr = getelementptr inbounds nuw i8, ptr %i.xs, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  %i.zs = load <4 x float>, ptr %i.zr, align 1, !tbaa !66, !alias.scope !1447, !noalias !1465 ; 2 uses
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %2
  %i.zu = load <4 x float>, ptr %i.zt, align 1, !tbaa !66, !alias.scope !1447, !noalias !1465 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zr, i64 %.idx.i.i.i.i.i319
  %i.zw = load <4 x float>, ptr %i.zv, align 1, !tbaa !66, !alias.scope !1447, !noalias !1465 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zr, i64 %.idx2.i.i.i.i.i320
  %i.zy = load <4 x float>, ptr %i.zx, align 1, !tbaa !66, !alias.scope !1447, !noalias !1465 ; 2 uses
  %i.zz = fadd <4 x float> %i.zs, %i.zy           ; 2 uses
  %i.aaa = fadd <4 x float> %i.zu, %i.zw          ; 2 uses
  %i.aab = fadd <4 x float> %i.aaa, %i.zz
  %i.aac = fsub <4 x float> %i.zz, %i.aaa
  %i.aad = fsub <4 x float> %i.zs, %i.zy
  %i.aae = fsub <4 x float> %i.zu, %i.zw
  %i.aaf = fmul <4 x float> %i.aad, splat (float f0x3F0A8BD4) ; 2 uses
  %i.aag = fmul <4 x float> %i.aae, splat (float f0x3FA73D75) ; 2 uses
  %i.aah = fadd <4 x float> %i.aag, %i.aaf
  %i.aai = fsub <4 x float> %i.aaf, %i.aag        ; 2 uses
  %i.aaj = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aah, <4 x float> splat (float f0x3FB504F3), <4 x float> %i.aai)
  %i.aak = fmul <4 x float> %i.aab, splat (float 2.500000e-01) ; 3 uses
  %i.aal = fmul <4 x float> %i.aaj, splat (float 2.500000e-01) ; 3 uses
  %i.aam = fmul <4 x float> %i.aac, splat (float 2.500000e-01) ; 4 uses
  %i.aan = shufflevector <4 x float> %i.aam, <4 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aao = fmul <4 x float> %i.aai, splat (float 2.500000e-01) ; 4 uses
  %i.aap = shufflevector <4 x float> %i.aao, <4 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aaq = shufflevector <4 x float> %i.aak, <4 x float> %i.aal, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aar = shufflevector <4 x float> %i.aaq, <4 x float> %i.aam, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aas = shufflevector <4 x float> %i.aar, <4 x float> %i.aao, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x float> %i.aas, ptr %4, align 4, !tbaa !69, !alias.scope !1464
  %i.aat = shufflevector <4 x float> %i.aak, <4 x float> %i.aal, <8 x i32> <i32 1, i32 5, i32 poison, i32 poison, i32 2, i32 6, i32 poison, i32 poison>
  %i.aau = shufflevector <8 x float> %i.aat, <8 x float> %i.aan, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 4, i32 5, i32 poison, i32 poison>
  %i.aav = shufflevector <8 x float> %i.aau, <8 x float> %i.aap, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.aaw = shufflevector <4 x float> %i.aam, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aax = shufflevector <8 x float> %i.aav, <8 x float> %i.aaw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 10, i32 poison>
  %i.aay = shufflevector <4 x float> %i.aao, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aaz = shufflevector <8 x float> %i.aax, <8 x float> %i.aay, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 10>
  store <8 x float> %i.aaz, ptr %gep.1.i.i322, align 4, !tbaa !69, !alias.scope !1464
  %i.aba = shufflevector <4 x float> %i.aak, <4 x float> %i.aal, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.abb = shufflevector <4 x float> %i.aba, <4 x float> %i.aam, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.abc = shufflevector <4 x float> %i.abb, <4 x float> %i.aao, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 3 uses
  store <4 x float> %i.abc, ptr %gep.3.i.i324, align 4, !tbaa !69, !alias.scope !1464
  %i.abd = load <4 x float>, ptr %4, align 4, !tbaa !66, !alias.scope !1466, !noalias !1459 ; 2 uses
  %i.abe = load <4 x float>, ptr %gep.1.i.i322, align 4, !tbaa !66, !alias.scope !1466, !noalias !1459 ; 2 uses
  %i.abf = load <4 x float>, ptr %gep.2.i.i323, align 4, !tbaa !66, !alias.scope !1466, !noalias !1459 ; 2 uses
  %i.abg = fadd <4 x float> %i.abd, %i.abc        ; 2 uses
  %i.abh = fadd <4 x float> %i.abe, %i.abf        ; 2 uses
  %i.abi = fadd <4 x float> %i.abh, %i.abg        ; 3 uses
  %i.abj = fsub <4 x float> %i.abg, %i.abh        ; 3 uses
  %i.abk = fsub <4 x float> %i.abd, %i.abc
  %i.abl = fsub <4 x float> %i.abe, %i.abf
  %i.abm = fmul <4 x float> %i.abk, splat (float f0x3F0A8BD4) ; 2 uses
  %i.abn = fmul <4 x float> %i.abl, splat (float f0x3FA73D75) ; 2 uses
  %i.abo = fadd <4 x float> %i.abn, %i.abm        ; 2 uses
  %i.abp = fsub <4 x float> %i.abm, %i.abn        ; 4 uses
  %i.abq = shufflevector <4 x float> %i.zj, <4 x float> %i.abi, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.abr = fmul <8 x float> %i.abq, splat (float 2.500000e-01)
  store <8 x float> %i.abr, ptr %invariant.gep740.1, align 4, !tbaa !69
  %101 = shufflevector <4 x float> %i.zp, <4 x float> %i.abo, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.abs = shufflevector <4 x float> %i.zq, <4 x float> %i.abp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %102 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %101, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.abs)
  %i.abt = fmul <8 x float> %102, splat (float 2.500000e-01)
  store <8 x float> %i.abt, ptr %gep743.1.1, align 4, !tbaa !69
  %i.abu = shufflevector <4 x float> %i.zk, <4 x float> %i.abj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.abv = fmul <8 x float> %i.abu, splat (float 2.500000e-01)
  store <8 x float> %i.abv, ptr %gep743.2.1, align 4, !tbaa !69
  %103 = fmul <8 x float> %i.abs, splat (float 2.500000e-01)
  store <8 x float> %103, ptr %gep743.3.1, align 4, !tbaa !69
  %104 = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.abo, <4 x float> splat (float f0x3FB504F3), <4 x float> %i.abp) ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.abx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aby = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.abz = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.aca = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.acb = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.acc = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.acd = getelementptr inbounds nuw i8, ptr %4, i64 176
  store <4 x float> %i.abi, ptr %i.aca, align 16, !tbaa !66, !alias.scope !1467, !noalias !1454
  store <4 x float> %i.abj, ptr %i.acb, align 16, !tbaa !66, !alias.scope !1467, !noalias !1454
  store <4 x float> %i.abp, ptr %i.acd, align 16, !tbaa !66, !alias.scope !1468, !noalias !1454
  store <4 x float> %104, ptr %i.acc, align 16, !tbaa !66, !alias.scope !1469, !noalias !1454
  store <4 x float> %i.abi, ptr %i.abw, align 16, !tbaa !66, !alias.scope !1470, !noalias !1471
  store <4 x float> %i.abj, ptr %i.aby, align 16, !tbaa !66, !alias.scope !1470, !noalias !1471
  store <4 x float> %104, ptr %i.abx, align 16, !tbaa !66, !alias.scope !1470, !noalias !1471
  store <4 x float> %i.abp, ptr %i.abz, align 16, !tbaa !66, !alias.scope !1470, !noalias !1471
  %i.ace = load float, ptr %3, align 4, !tbaa !69 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !69 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.acj = fadd float %i.ace, %i.acg              ; 2 uses
  %i.ack = fsub float %i.ace, %i.acg              ; 2 uses
  %i.acl = load float, ptr %i.aci, align 4, !tbaa !69 ; 4 uses
  %i.acm = load float, ptr %i.ach, align 4, !tbaa !69 ; 4 uses
  %i.acn = fsub float %i.acj, %i.acm
  %i.aco = fadd float %i.acj, %i.acm
  %i.acp = fsub float %i.acn, %i.acl
  %i.acq = fadd float %i.aco, %i.acl
  %i.acr = insertelement <2 x float> poison, float %i.acq, i64 0
  %i.acs = insertelement <2 x float> %i.acr, float %i.acp, i64 1
  %i.act = fmul <2 x float> %i.acs, splat (float 2.500000e-01)
  store <2 x float> %i.act, ptr %3, align 4, !tbaa !69
  %i.acu = fsub float %i.ack, %i.acm
  %i.acv = fadd float %i.ack, %i.acm
  %i.acw = fadd float %i.acu, %i.acl
  %i.acx = fsub float %i.acv, %i.acl
  %i.acy = insertelement <2 x float> poison, float %i.acx, i64 0
  %i.acz = insertelement <2 x float> %i.acy, float %i.acw, i64 1
  %i.ada = fmul <2 x float> %i.acz, splat (float 2.500000e-01)
  store <2 x float> %i.ada, ptr %i.ach, align 4, !tbaa !69
  br label %bb.y

vector.ph:                                        ; preds = %bb.a
  %.idx = shl i64 %2, 3
  %i.adb = getelementptr i8, ptr %1, i64 %.idx    ; 8 uses
  %.idx1071 = shl i64 %2, 4
  %i.adc = getelementptr i8, ptr %1, i64 %.idx1071 ; 8 uses
  %.idx1072 = mul i64 %2, 24
  %i.add = getelementptr i8, ptr %1, i64 %.idx1072 ; 8 uses
  %i.ade = getelementptr [4 x i8], ptr %1, i64 %2 ; 8 uses
  %.idx1073 = mul i64 %2, 12
  %i.adf = getelementptr i8, ptr %1, i64 %.idx1073 ; 8 uses
  %.idx1074 = mul i64 %2, 20
  %i.adg = getelementptr i8, ptr %1, i64 %.idx1074 ; 8 uses
  %.idx1075 = mul i64 %2, 28
  %i.adh = getelementptr i8, ptr %1, i64 %.idx1075 ; 8 uses
  %i.adi = load float, ptr %1, align 4, !tbaa !69
  %i.adj = load float, ptr %i.adb, align 4, !tbaa !69
  %i.adk = load float, ptr %i.adc, align 4, !tbaa !69
  %i.adl = load float, ptr %i.add, align 4, !tbaa !69
  %i.adm = insertelement <4 x float> poison, float %i.adi, i64 0
  %i.adn = insertelement <4 x float> %i.adm, float %i.adj, i64 1
  %i.ado = insertelement <4 x float> %i.adn, float %i.adk, i64 2
  %i.adp = insertelement <4 x float> %i.ado, float %i.adl, i64 3 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adb, i64 4
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adc, i64 4
  %i.adt = getelementptr inbounds nuw i8, ptr %i.add, i64 4
  %i.adu = load float, ptr %i.adq, align 4, !tbaa !69
  %i.adv = load float, ptr %i.adr, align 4, !tbaa !69
  %i.adw = load float, ptr %i.ads, align 4, !tbaa !69
  %i.adx = load float, ptr %i.adt, align 4, !tbaa !69
  %i.ady = insertelement <4 x float> poison, float %i.adu, i64 0
  %i.adz = insertelement <4 x float> %i.ady, float %i.adv, i64 1
  %i.aea = insertelement <4 x float> %i.adz, float %i.adw, i64 2
  %i.aeb = insertelement <4 x float> %i.aea, float %i.adx, i64 3 ; 2 uses
  %i.aec = load float, ptr %i.ade, align 4, !tbaa !69
  %i.aed = load float, ptr %i.adf, align 4, !tbaa !69
  %i.aee = load float, ptr %i.adg, align 4, !tbaa !69
  %i.aef = load float, ptr %i.adh, align 4, !tbaa !69
  %i.aeg = insertelement <4 x float> poison, float %i.aec, i64 0
  %i.aeh = insertelement <4 x float> %i.aeg, float %i.aed, i64 1
  %i.aei = insertelement <4 x float> %i.aeh, float %i.aee, i64 2
  %i.aej = insertelement <4 x float> %i.aei, float %i.aef, i64 3 ; 4 uses
  %i.aek = getelementptr i8, ptr %i.ade, i64 4
  %i.ael = getelementptr i8, ptr %i.adf, i64 4
  %i.aem = getelementptr i8, ptr %i.adg, i64 4
  %i.aen = getelementptr i8, ptr %i.adh, i64 4
  %i.aeo = load float, ptr %i.aek, align 4, !tbaa !69
  %i.aep = load float, ptr %i.ael, align 4, !tbaa !69
  %i.aeq = load float, ptr %i.aem, align 4, !tbaa !69
  %i.aer = load float, ptr %i.aen, align 4, !tbaa !69
  %i.aes = insertelement <4 x float> poison, float %i.aeo, i64 0
  %i.aet = insertelement <4 x float> %i.aes, float %i.aep, i64 1
  %i.aeu = insertelement <4 x float> %i.aet, float %i.aeq, i64 2
  %i.aev = insertelement <4 x float> %i.aeu, float %i.aer, i64 3 ; 4 uses
  %i.aew = fadd <4 x float> %i.adp, %i.aeb        ; 2 uses
  %i.aex = fadd <4 x float> %i.aew, %i.aej
  %i.aey = fadd <4 x float> %i.aex, %i.aev
  %i.aez = fsub <4 x float> %i.aew, %i.aej
  %i.afa = fsub <4 x float> %i.aez, %i.aev
  %i.afb = fsub <4 x float> %i.adp, %i.aeb        ; 2 uses
  %i.afc = fadd <4 x float> %i.afb, %i.aej
  %i.afd = fsub <4 x float> %i.afc, %i.aev
  %i.afe = fsub <4 x float> %i.afb, %i.aej
  %i.aff = fadd <4 x float> %i.afe, %i.aev
  %i.afg = getelementptr i8, ptr %1, i64 8
  %i.afh = getelementptr i8, ptr %i.adb, i64 8
  %i.afi = getelementptr i8, ptr %i.adc, i64 8
  %i.afj = getelementptr i8, ptr %i.add, i64 8
  %i.afk = load float, ptr %i.afg, align 4, !tbaa !69
  %i.afl = load float, ptr %i.afh, align 4, !tbaa !69
  %i.afm = load float, ptr %i.afi, align 4, !tbaa !69
  %i.afn = load float, ptr %i.afj, align 4, !tbaa !69
  %i.afo = insertelement <4 x float> poison, float %i.afk, i64 0
  %i.afp = insertelement <4 x float> %i.afo, float %i.afl, i64 1
  %i.afq = insertelement <4 x float> %i.afp, float %i.afm, i64 2
  %i.afr = insertelement <4 x float> %i.afq, float %i.afn, i64 3 ; 2 uses
  %i.afs = getelementptr i8, ptr %1, i64 12
  %i.aft = getelementptr i8, ptr %i.adb, i64 12
  %i.afu = getelementptr i8, ptr %i.adc, i64 12
  %i.afv = getelementptr i8, ptr %i.add, i64 12
  %i.afw = load float, ptr %i.afs, align 4, !tbaa !69
  %i.afx = load float, ptr %i.aft, align 4, !tbaa !69
  %i.afy = load float, ptr %i.afu, align 4, !tbaa !69
  %i.afz = load float, ptr %i.afv, align 4, !tbaa !69
  %i.aga = insertelement <4 x float> poison, float %i.afw, i64 0
  %i.agb = insertelement <4 x float> %i.aga, float %i.afx, i64 1
  %i.agc = insertelement <4 x float> %i.agb, float %i.afy, i64 2
  %i.agd = insertelement <4 x float> %i.agc, float %i.afz, i64 3 ; 2 uses
  %i.age = getelementptr i8, ptr %i.ade, i64 8
  %i.agf = getelementptr i8, ptr %i.adf, i64 8
  %i.agg = getelementptr i8, ptr %i.adg, i64 8
  %i.agh = getelementptr i8, ptr %i.adh, i64 8
  %i.agi = load float, ptr %i.age, align 4, !tbaa !69
  %i.agj = load float, ptr %i.agf, align 4, !tbaa !69
  %i.agk = load float, ptr %i.agg, align 4, !tbaa !69
  %i.agl = load float, ptr %i.agh, align 4, !tbaa !69
  %i.agm = insertelement <4 x float> poison, float %i.agi, i64 0
  %i.agn = insertelement <4 x float> %i.agm, float %i.agj, i64 1
  %i.ago = insertelement <4 x float> %i.agn, float %i.agk, i64 2
  %i.agp = insertelement <4 x float> %i.ago, float %i.agl, i64 3 ; 4 uses
  %i.agq = getelementptr i8, ptr %i.ade, i64 12
  %i.agr = getelementptr i8, ptr %i.adf, i64 12
  %i.ags = getelementptr i8, ptr %i.adg, i64 12
  %i.agt = getelementptr i8, ptr %i.adh, i64 12
  %i.agu = load float, ptr %i.agq, align 4, !tbaa !69
  %i.agv = load float, ptr %i.agr, align 4, !tbaa !69
  %i.agw = load float, ptr %i.ags, align 4, !tbaa !69
  %i.agx = load float, ptr %i.agt, align 4, !tbaa !69
  %i.agy = insertelement <4 x float> poison, float %i.agu, i64 0
  %i.agz = insertelement <4 x float> %i.agy, float %i.agv, i64 1
  %i.aha = insertelement <4 x float> %i.agz, float %i.agw, i64 2
  %i.ahb = insertelement <4 x float> %i.aha, float %i.agx, i64 3 ; 4 uses
  %i.ahc = fadd <4 x float> %i.afr, %i.agd        ; 2 uses
  %i.ahd = fadd <4 x float> %i.ahc, %i.agp
  %i.ahe = fadd <4 x float> %i.ahd, %i.ahb
  %i.ahf = fsub <4 x float> %i.ahc, %i.agp
  %i.ahg = fsub <4 x float> %i.ahf, %i.ahb
  %i.ahh = fsub <4 x float> %i.afr, %i.agd        ; 2 uses
  %i.ahi = fadd <4 x float> %i.ahh, %i.agp
  %i.ahj = fsub <4 x float> %i.ahi, %i.ahb
  %i.ahk = fsub <4 x float> %i.ahh, %i.agp
  %i.ahl = fadd <4 x float> %i.ahk, %i.ahb
  %i.ahm = getelementptr i8, ptr %1, i64 16
  %i.ahn = getelementptr i8, ptr %i.adb, i64 16
  %i.aho = getelementptr i8, ptr %i.adc, i64 16
  %i.ahp = getelementptr i8, ptr %i.add, i64 16
  %i.ahq = load float, ptr %i.ahm, align 4, !tbaa !69
  %i.ahr = load float, ptr %i.ahn, align 4, !tbaa !69
  %i.ahs = load float, ptr %i.aho, align 4, !tbaa !69
  %i.aht = load float, ptr %i.ahp, align 4, !tbaa !69
  %i.ahu = insertelement <4 x float> poison, float %i.ahq, i64 0
  %i.ahv = insertelement <4 x float> %i.ahu, float %i.ahr, i64 1
  %i.ahw = insertelement <4 x float> %i.ahv, float %i.ahs, i64 2
  %i.ahx = insertelement <4 x float> %i.ahw, float %i.aht, i64 3 ; 2 uses
  %i.ahy = getelementptr i8, ptr %1, i64 20
  %i.ahz = getelementptr i8, ptr %i.adb, i64 20
  %i.aia = getelementptr i8, ptr %i.adc, i64 20
  %i.aib = getelementptr i8, ptr %i.add, i64 20
  %i.aic = load float, ptr %i.ahy, align 4, !tbaa !69
  %i.aid = load float, ptr %i.ahz, align 4, !tbaa !69
  %i.aie = load float, ptr %i.aia, align 4, !tbaa !69
  %i.aif = load float, ptr %i.aib, align 4, !tbaa !69
  %i.aig = insertelement <4 x float> poison, float %i.aic, i64 0
  %i.aih = insertelement <4 x float> %i.aig, float %i.aid, i64 1
  %i.aii = insertelement <4 x float> %i.aih, float %i.aie, i64 2
  %i.aij = insertelement <4 x float> %i.aii, float %i.aif, i64 3 ; 2 uses
  %i.aik = getelementptr i8, ptr %i.ade, i64 16
  %i.ail = getelementptr i8, ptr %i.adf, i64 16
  %i.aim = getelementptr i8, ptr %i.adg, i64 16
  %i.ain = getelementptr i8, ptr %i.adh, i64 16
  %i.aio = load float, ptr %i.aik, align 4, !tbaa !69
  %i.aip = load float, ptr %i.ail, align 4, !tbaa !69
  %i.aiq = load float, ptr %i.aim, align 4, !tbaa !69
  %i.air = load float, ptr %i.ain, align 4, !tbaa !69
  %i.ais = insertelement <4 x float> poison, float %i.aio, i64 0
  %i.ait = insertelement <4 x float> %i.ais, float %i.aip, i64 1
  %i.aiu = insertelement <4 x float> %i.ait, float %i.aiq, i64 2
  %i.aiv = insertelement <4 x float> %i.aiu, float %i.air, i64 3 ; 4 uses
  %i.aiw = getelementptr i8, ptr %i.ade, i64 20
  %i.aix = getelementptr i8, ptr %i.adf, i64 20
  %i.aiy = getelementptr i8, ptr %i.adg, i64 20
  %i.aiz = getelementptr i8, ptr %i.adh, i64 20
  %i.aja = load float, ptr %i.aiw, align 4, !tbaa !69
  %i.ajb = load float, ptr %i.aix, align 4, !tbaa !69
  %i.ajc = load float, ptr %i.aiy, align 4, !tbaa !69
  %i.ajd = load float, ptr %i.aiz, align 4, !tbaa !69
  %i.aje = insertelement <4 x float> poison, float %i.aja, i64 0
  %i.ajf = insertelement <4 x float> %i.aje, float %i.ajb, i64 1
  %i.ajg = insertelement <4 x float> %i.ajf, float %i.ajc, i64 2
  %i.ajh = insertelement <4 x float> %i.ajg, float %i.ajd, i64 3 ; 4 uses
  %i.aji = fadd <4 x float> %i.ahx, %i.aij        ; 2 uses
  %i.ajj = fadd <4 x float> %i.aji, %i.aiv
end_hunk_0
