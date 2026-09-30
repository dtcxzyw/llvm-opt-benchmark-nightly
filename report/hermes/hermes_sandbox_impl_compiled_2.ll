Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_2?download=true
inline.NumInlined: 21302
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AparseFunctionHelper0x28hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AParam0x2C0x20bool0x2C0x20bool0x29:bb.a
  store i64 0, ptr %i.qn, align 1
  %.val1531 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qo = getelementptr inbounds nuw i8, ptr %.val1531, i64 %i.qc
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 33
  store i64 0, ptr %i.qp, align 1
  %i.qq = add i32 %.5, 48                         ; 5 uses
  %.val1468 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qr = getelementptr inbounds nuw i8, ptr %.val1468, i64 %i.qc
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 52
  store i32 %i.qq, ptr %i.qs, align 1
  %.val1467 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qt = getelementptr inbounds nuw i8, ptr %.val1467, i64 %i.qc
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 48
  store i32 %i.qq, ptr %i.qu, align 1
  %i.qv = icmp eq i32 %i.qq, %i.by
  br i1 %i.qv, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.qw = zext i32 %i.by to i64                   ; 3 uses
  %.val1383 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qx = getelementptr inbounds nuw i8, ptr %.val1383, i64 %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  %.0.copyload.i1629 = load i32, ptr %i.qy, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1629) #7, !srcloc !19
  %i.qz = icmp eq i32 %.0.copyload.i1629, %i.by
  br i1 %i.qz, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.val1382 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ra = getelementptr inbounds nuw i8, ptr %.val1382, i64 %i.qw
  %.0.copyload.i1630 = load i32, ptr %i.ra, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1630) #7, !srcloc !19
  %i.rb = zext i32 %.0.copyload.i1629 to i64      ; 2 uses
  %.val1381 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rc = getelementptr inbounds nuw i8, ptr %.val1381, i64 %i.rb
  %.0.copyload.i1631 = load i32, ptr %i.rc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1631) #7, !srcloc !19
  %i.rd = zext i32 %.0.copyload.i1631 to i64
  %.val1466 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.re = getelementptr inbounds nuw i8, ptr %.val1466, i64 %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  store i32 %i.by, ptr %i.rf, align 1
  %.val1465 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rg = getelementptr inbounds nuw i8, ptr %.val1465, i64 %i.qw
  store i32 %.0.copyload.i1631, ptr %i.rg, align 1
  %i.rh = zext i32 %i.qq to i64                   ; 2 uses
  %.val1380 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ri = getelementptr inbounds nuw i8, ptr %.val1380, i64 %i.rh
  %.0.copyload.i1632 = load i32, ptr %i.ri, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1632) #7, !srcloc !19
  %i.rj = zext i32 %.0.copyload.i1630 to i64
  %.val1464 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rk = getelementptr inbounds nuw i8, ptr %.val1464, i64 %i.rj
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 4
  store i32 %i.qq, ptr %i.rl, align 1
  %.val1463 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rm = getelementptr inbounds nuw i8, ptr %.val1463, i64 %i.rb
  store i32 %.0.copyload.i1632, ptr %i.rm, align 1
  %i.rn = zext i32 %.0.copyload.i1632 to i64
  %.val1462 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ro = getelementptr inbounds nuw i8, ptr %.val1462, i64 %i.rn
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  store i32 %.0.copyload.i1629, ptr %i.rp, align 1
  %.val1461 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rq = getelementptr inbounds nuw i8, ptr %.val1461, i64 %i.rh
  store i32 %.0.copyload.i1630, ptr %i.rq, align 1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bn, %bb.bp
  %.val1361 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rr = getelementptr inbounds nuw i8, ptr %.val1361, i64 %i.qc
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 73
  store i8 %i.ak, ptr %i.rs, align 1
  %.val1360 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rt = getelementptr inbounds nuw i8, ptr %.val1360, i64 %i.qc
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 72
  store i8 %i.af, ptr %i.ru, align 1
  %.val1460 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rv = getelementptr inbounds nuw i8, ptr %.val1460, i64 %i.qc
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 68
  store i32 0, ptr %i.rw, align 1
  %.val1459 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rx = getelementptr inbounds nuw i8, ptr %.val1459, i64 %i.qc
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 64
  store i32 0, ptr %i.ry, align 1
  %.val1458 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rz = getelementptr inbounds nuw i8, ptr %.val1458, i64 %i.qc
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 60
  store i32 0, ptr %i.sa, align 1
  %.val1457 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sb = getelementptr inbounds nuw i8, ptr %.val1457, i64 %i.qc
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 56
  store i32 %.0.copyload.i1620, ptr %i.sc, align 1
  br label %bb.bs

bb.br:                                            ; preds = %bb.bm
  %i.sd = tail call i32 @w2c_hermes_hermes0x3A0x3AESTree0x3A0x3AFunctionExpressionNode0x3A0x3AFunctionExpressionNode0x28hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20llvh0x3A0x3Asimple_ilist0x3Chermes0x3A0x3AESTree0x3A0x3ANode0x3E0x260x260x2C0x20hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20bool0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %.5, i32 noundef %i.qb, i32 noundef %i.by, i32 noundef %.0.copyload.i1620, i32 noundef %i.aa, i32 noundef %.01299) #7 ; 0 uses
  %.pre = zext i32 %.5 to i64
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pre-phi1641 = phi i64 [ %.pre, %bb.br ], [ %i.qc, %bb.bq ] ; 3 uses
  %.val1456 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.se = getelementptr inbounds nuw i8, ptr %.val1456, i64 %.pre-phi1641
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  store i32 %.0.copyload.i1554, ptr %i.sf, align 1
  %i.sg = zext i32 %.0.copyload.i1620 to i64
  %.val1379 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sh = getelementptr inbounds nuw i8, ptr %.val1379, i64 %i.sg
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 20
  %.0.copyload.i1633 = load i32, ptr %i.si, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1633) #7, !srcloc !19
  %.val1455 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sj = getelementptr inbounds nuw i8, ptr %.val1455, i64 %.pre-phi1641
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 24
  store i32 %.0.copyload.i1554, ptr %i.sk, align 1
  %.val1454 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sl = getelementptr inbounds nuw i8, ptr %.val1454, i64 %.pre-phi1641
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 20
  store i32 %.0.copyload.i1633, ptr %i.sm, align 1
  %i.sn = zext i32 %1 to i64                      ; 2 uses
  %.val1453 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.so = getelementptr inbounds nuw i8, ptr %.val1453, i64 %i.sn
  store i32 %.5, ptr %i.so, align 1
  %.val1359 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sp = getelementptr inbounds nuw i8, ptr %.val1359, i64 %i.sn
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  store i8 1, ptr %i.sq, align 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bi, %bb.bg
  %.val1358 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sr = getelementptr inbounds nuw i8, ptr %.val1358, i64 %i.di
  store i8 %.0.copyload.i1569, ptr %i.sr, align 1
  %.val1378 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ss = getelementptr inbounds nuw i8, ptr %.val1378, i64 %i.dg
  %.0.copyload.i1634 = load i32, ptr %i.ss, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1634) #7, !srcloc !19
  %i.st = icmp ugt i32 %.0.copyload.i1634, %.0.copyload.i1568
  br i1 %i.st, label %bb.bz, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not1352 = icmp ult i32 %.0.copyload.i1634, %.0.copyload.i1568
  br i1 %.not1352, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.su = add i32 %2, 884                         ; 2 uses
  %.val1377 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sv = getelementptr inbounds nuw i8, ptr %.val1377, i64 %i.e
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 892
  %.0.copyload.i1635 = load i32, ptr %i.sw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1635) #7, !srcloc !19
  %i.sx = icmp ugt i32 %.0.copyload.i1568, %.0.copyload.i1635
  br i1 %i.sx, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.sy = add i32 %2, 896
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.su, i32 noundef %i.sy, i32 noundef %.0.copyload.i1568, i32 noundef 4) #7
  %.val1376 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sz = getelementptr inbounds nuw i8, ptr %.val1376, i64 %i.dg
  %.0.copyload.i1636 = load i32, ptr %i.sz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1636) #7, !srcloc !19
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.41306 = phi i32 [ %.0.copyload.i1636, %bb.bw ], [ %.0.copyload.i1634, %bb.bv ] ; 3 uses
  %i.ta = icmp eq i32 %.41306, %.0.copyload.i1568
  br i1 %i.ta, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.tb = zext i32 %i.su to i64
  %.val1375 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tc = getelementptr inbounds nuw i8, ptr %.val1375, i64 %i.tb
  %.0.copyload.i1637 = load i32, ptr %i.tc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1637) #7, !srcloc !19
  %i.td = shl i32 %.41306, 2
  %i.te = add i32 %.0.copyload.i1637, %i.td
  %i.tf = sub i32 %.0.copyload.i1568, %.41306
  %i.tg = shl i32 %i.tf, 2
  %i.th = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.te, i32 noundef 0, i32 noundef %i.tg) #7 ; 0 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.bt, %bb.by
  %.val1452 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ti = getelementptr inbounds nuw i8, ptr %.val1452, i64 %i.dg
  store i32 %.0.copyload.i1568, ptr %i.ti, align 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bu, %bb.bz, %bb.p, %bb.n, %bb.l, %bb.j
  %.val1357 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tj = getelementptr inbounds nuw i8, ptr %.val1357, i64 %i.ad
  store i8 %.0.copyload.i1556, ptr %i.tj, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tk = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ai
  store i8 %.0.copyload.i1557, ptr %i.tk, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AvalidateBindingIdentifier0x28hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AParam0x2C0x20llvh0x3A0x3ASMRange0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20hermes0x3A0x3Aparser0x3A0x3ATokenKind0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 7 uses
  %i.c = add i32 %i.b, -48                        ; 5 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 25 uses
  %i.e = zext i32 %1 to i64                       ; 10 uses
  %.val184 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val184, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 984
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i, %3
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.val188 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.0.copyload.i204 = load i8, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i204) #7, !srcloc !20
  %.val187 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 881
  %.0.copyload.i205 = load i8, ptr %i.k, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i205) #7, !srcloc !20
  %i.l = or i8 %.0.copyload.i205, %.0.copyload.i204
  %.not175 = icmp eq i8 %i.l, 0
  br i1 %.not175, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i32 %2 to i64
  %.val197 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.m
  %.0.copyload.i206 = load i64, ptr %i.n, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i206) #7, !srcloc !22
  %i.o = zext i32 %i.c to i64                     ; 4 uses
  %.val191 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i32 38097, ptr %i.q, align 1
  %.val194 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  store i16 259, ptr %i.s, align 1
  %.val183 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val183, i64 %i.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.0.copyload.i207 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i207) #7, !srcloc !19
  %.val203 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val203, i64 %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.0.copyload.i206, ptr %i.w, align 1
  %.val202 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val202, i64 %i.o
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i64 %.0.copyload.i206, ptr %i.y, align 1
  %i.z = add i32 %i.b, -32
  %i.aa = add i32 %i.b, -20
  tail call void @w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3Amessage0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ADiagKind0x2C0x20llvh0x3A0x3ASMRange0x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20hermes0x3A0x3ASubsystem0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i207, i32 noundef 0, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef 2) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.val182 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val182, i64 %i.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1016
  %.0.copyload.i208 = load i32, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i208) #7, !srcloc !19
  %.not176 = icmp eq i32 %.0.copyload.i208, %3
  br i1 %.not176, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.val186 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 882
  %.0.copyload.i209 = load i8, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i209) #7, !srcloc !20
  %.not177 = icmp eq i8 %.0.copyload.i209, 0
  br i1 %.not177, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = zext i32 %2 to i64
  %.val196 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.af
  %.0.copyload.i210 = load i64, ptr %i.ag, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i210) #7, !srcloc !22
  %i.ah = zext i32 %i.c to i64                    ; 4 uses
  %.val190 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 38052, ptr %i.aj, align 1
  %.val193 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store i16 259, ptr %i.al, align 1
  %.val181 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val181, i64 %i.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.0.copyload.i211 = load i32, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i211) #7, !srcloc !19
  %.val201 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val201, i64 %i.ah
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %.0.copyload.i210, ptr %i.ap, align 1
  %.val200 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.ah
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i64 %.0.copyload.i210, ptr %i.ar, align 1
  %i.as = add i32 %i.b, -40
  %i.at = add i32 %i.b, -20
  tail call void @w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3Amessage0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ADiagKind0x2C0x20llvh0x3A0x3ASMRange0x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20hermes0x3A0x3ASubsystem0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i211, i32 noundef 0, i32 noundef %i.as, i32 noundef %i.at, i32 noundef 2) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %.val185 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val185, i64 %i.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %.0.copyload.i212 = load i8, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i212) #7, !srcloc !20
  %.not178 = icmp eq i8 %.0.copyload.i212, 0
  br i1 %.not178, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val180 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val180, i64 %i.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 932
  %.0.copyload.i213 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i213) #7, !srcloc !19
  %.not179 = icmp eq i32 %.0.copyload.i213, %3
  br i1 %.not179, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = zext i32 %2 to i64
  %.val195 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.ay
  %.0.copyload.i214 = load i64, ptr %i.az, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i214) #7, !srcloc !22
  %i.ba = zext i32 %i.c to i64                    ; 4 uses
  %.val189 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  store i32 38181, ptr %i.bc, align 1
  %.val192 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 36
  store i16 259, ptr %i.be, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %.0.copyload.i215 = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i215) #7, !srcloc !19
  %.val199 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.ba
  store i64 %.0.copyload.i214, ptr %i.bh, align 1
  %.val198 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.ba
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store i64 %.0.copyload.i214, ptr %i.bj, align 1
  %i.bk = add i32 %i.b, -20
  tail call void @w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3Amessage0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ADiagKind0x2C0x20llvh0x3A0x3ASMRange0x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20hermes0x3A0x3ASubsystem0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i215, i32 noundef 0, i32 noundef %i.c, i32 noundef %i.bk, i32 noundef 2) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.i
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  %i.bl = icmp eq i32 %4, 1
  %i.bm = icmp eq i32 %4, 47
  %i.bn = or i1 %i.bl, %i.bm
  %i.bo = zext i1 %i.bn to i32
  ret i32 %i.bo
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Asem0x3A0x3ASemanticValidator0x3A0x3AvalidateDeclarationNames0x28hermes0x3A0x3AJavaScriptDeclKind0x2C0x20hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20llvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Asem0x3A0x3AFunctionInfo0x3A0x3AVarDecl0x2C0x204u0x3E0x2A0x2C0x20llvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Asem0x3A0x3AFunctionInfo0x3A0x3AVarDecl0x2C0x204u0x3E0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 7 uses
  %i.c = add i32 %i.b, -64                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.loopexit, label %.preheader523

.preheader523:                                    ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 53 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader523, %bb.v
  %.0407 = phi i32 [ %.0.copyload.i514, %bb.v ], [ %3, %.preheader523 ] ; 4 uses
  %i.e = zext i32 %.0407 to i64                   ; 8 uses
  %.val460 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val460, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  switch i32 %.0.copyload.i, label %bb.x [
    i32 63, label %bb.c
    i32 0, label %.loopexit
    i32 94, label %bb.v
    i32 93, label %bb.v
    i32 92, label %bb.u
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Aregex0x3A0x3AParser0x3Chermes0x3A0x3Aregex0x3A0x3ARegex0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x2C0x20char16_t0x20const0x2A0x3E0x3A0x3AtryConsumeBracketClassAtom0x280x29:bb.a
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  store i8 1, ptr %i.fy, align 1
  br label %bb.an

bb.ad:                                            ; preds = %bb.i
  %i.fz = add i32 %.0.copyload.i, 4
  %.val693 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %.val693, i64 %i.f
  store i32 %i.fz, ptr %i.ga, align 1
  %i.gb = zext i32 %1 to i64                      ; 4 uses
  %.val646 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %.val646, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 20
  store i8 0, ptr %i.gd, align 1
  %.val645 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ge = getelementptr inbounds nuw i8, ptr %.val645, i64 %i.gb
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 6
  store i8 0, ptr %i.gf, align 1
  %.val692 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw i8, ptr %.val692, i64 %i.gb
  store i32 8, ptr %i.gg, align 1
  %.val644 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %.val644, i64 %i.gb
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  store i8 1, ptr %i.gi, align 1
  br label %bb.an

bb.ae:                                            ; preds = %bb.i
  %.val683 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %.val683, i64 %i.e
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %.0.copyload.i760 = load i8, ptr %i.gk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i760) #7, !srcloc !20
  %i.gl = and i8 %.0.copyload.i760, 8
  %.not628 = icmp eq i8 %i.gl, 0
  br i1 %.not628, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gm = add i32 %.0.copyload.i, 4
  %.val691 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %.val691, i64 %i.f
  store i32 %i.gm, ptr %i.gn, align 1
  %i.go = zext i32 %1 to i64                      ; 4 uses
  %.val643 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gp = getelementptr inbounds nuw i8, ptr %.val643, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 20
  store i8 0, ptr %i.gq, align 1
  %.val642 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gr = getelementptr inbounds nuw i8, ptr %.val642, i64 %i.go
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 6
  store i8 0, ptr %i.gs, align 1
  %.val690 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gt = getelementptr inbounds nuw i8, ptr %.val690, i64 %i.go
  store i32 45, ptr %i.gt, align 1
  %.val641 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %.val641, i64 %i.go
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store i8 1, ptr %i.gv, align 1
  br label %bb.an

bb.ag:                                            ; preds = %bb.ae, %bb.i
  %i.gw = tail call i32 @w2c_hermes_hermes0x3A0x3Aregex0x3A0x3AParser0x3Chermes0x3A0x3Aregex0x3A0x3ARegex0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x2C0x20char16_t0x20const0x2A0x3E0x3A0x3AconsumeCharacterEscape0x280x29(ptr noundef nonnull %0, i32 noundef %2)
  %i.gx = zext i32 %1 to i64                      ; 4 uses
  %.val640 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gy = getelementptr inbounds nuw i8, ptr %.val640, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 20
  store i8 0, ptr %i.gz, align 1
  %.val639 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ha = getelementptr inbounds nuw i8, ptr %.val639, i64 %i.gx
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 6
  store i8 0, ptr %i.hb, align 1
  %.val689 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hc = getelementptr inbounds nuw i8, ptr %.val689, i64 %i.gx
  store i32 %i.gw, ptr %i.hc, align 1
  %.val638 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %.val638, i64 %i.gx
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  store i8 1, ptr %i.he, align 1
  br label %bb.an

bb.ah:                                            ; preds = %bb.c
  %.val682 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hf = getelementptr inbounds nuw i8, ptr %.val682, i64 %i.e
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %.0.copyload.i761 = load i8, ptr %i.hg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i761) #7, !srcloc !20
  %i.hh = and i8 %.0.copyload.i761, 8
  %.not630 = icmp eq i8 %i.hh, 0
  br i1 %.not630, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hi = and i32 %i.p, 64512
  %i.hj = icmp eq i32 %i.hi, 55296                ; 2 uses
  %i.hk = select i1 %i.hj, i32 2, i32 0
  %i.hl = add i32 %i.hk, %.0.copyload.i           ; 3 uses
  %i.hm = icmp eq i32 %.0.copyload.i736, %i.hl
  br i1 %i.hm, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hn = zext i32 %i.hl to i64
  %.val732 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ho = getelementptr inbounds nuw i8, ptr %.val732, i64 %i.hn
  %.0.copyload.i762 = load i16, ptr %i.ho, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i762) #7, !srcloc !23
  %i.hp = zext i16 %.0.copyload.i762 to i32       ; 2 uses
  %i.hq = and i32 %i.hp, 64512
  %.not631 = icmp eq i32 %i.hq, 56320
  br i1 %.not631, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.hr = add i32 %i.hl, 2
  %.val688 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hs = getelementptr inbounds nuw i8, ptr %.val688, i64 %i.f
  store i32 %i.hr, ptr %i.hs, align 1
  br i1 %i.hj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ht = zext i32 %1 to i64                      ; 4 uses
  %.val637 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %.val637, i64 %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 20
  store i8 0, ptr %i.hv, align 1
  %.val636 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hw = getelementptr inbounds nuw i8, ptr %.val636, i64 %i.ht
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 6
  store i8 0, ptr %i.hx, align 1
  %.val635 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hy = getelementptr inbounds nuw i8, ptr %.val635, i64 %i.ht
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  store i8 1, ptr %i.hz, align 1
  %i.ia = shl nuw nsw i32 %i.p, 10
  %i.ib = add nsw i32 %i.ia, -56613888
  %i.ic = add nuw nsw i32 %i.ib, %i.hp
  %.val687 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.val687, i64 %i.ht
  store i32 %i.ic, ptr %i.id, align 1
  br label %bb.an

bb.am:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.ie = add i32 %.0.copyload.i, 2
  %.val686 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.if = getelementptr inbounds nuw i8, ptr %.val686, i64 %i.f
  store i32 %i.ie, ptr %i.if, align 1
  %i.ig = zext i32 %1 to i64                      ; 4 uses
  %.val634 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ih = getelementptr inbounds nuw i8, ptr %.val634, i64 %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 20
  store i8 0, ptr %i.ii, align 1
  %.val633 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ij = getelementptr inbounds nuw i8, ptr %.val633, i64 %i.ig
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 6
  store i8 0, ptr %i.ik, align 1
  %.val685 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.il = getelementptr inbounds nuw i8, ptr %.val685, i64 %i.ig
  store i32 %i.p, ptr %i.il, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.im = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ig
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  store i8 1, ptr %i.in, align 1
  br label %bb.an

bb.an:                                            ; preds = %bb.aa, %bb.am, %bb.al, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.l, %bb.k, %bb.j, %bb.h, %bb.d, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @w2c_hermes_hermes0x3A0x3Aregex0x3A0x3AMatchAnyNode0x3A0x3AmatchConstraints0x280x290x20const(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Aregex0x3A0x3AMarkedSubexpressionNode0x3A0x3AgetChildren0x280x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = zext i32 %1 to i64                       ; 3 uses
  %.val18 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val18, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i64 4294967297, ptr %i.d, align 1
  %i.e = add i32 %2, 4
  %.val17 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val17, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.e, ptr %i.g, align 1
  %i.h = add i32 %1, 12
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  store i32 %i.h, ptr %i.i, align 1
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3AStackOverflowGuard0x3A0x3AisStackOverflowingSlowPath0x280x29(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_bool0x20hermes0x3A0x3Aregex0x3A0x3AbracketMatchesChar0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x28hermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x20const0x260x2C0x20hermes0x3A0x3Aregex0x3A0x3ABracketInsn0x20const0x2A0x2C0x20hermes0x3A0x3Aregex0x3A0x3ABracketRange320x20const0x2A0x2C0x20hermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3A0x3ACodePoint0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_bool0x20hermes0x3A0x3Aregex0x3A0x3AbracketMatchesChar0x3Chermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3E0x28hermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3E0x20const0x260x2C0x20hermes0x3A0x3Aregex0x3A0x3ABracketInsn0x20const0x2A0x2C0x20hermes0x3A0x3Aregex0x3A0x3ABracketRange320x20const0x2A0x2C0x20hermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3A0x3ACodePoint0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3Aneed0x28hermes0x3A0x3Aparser0x3A0x3ATokenKind0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x2C0x20llvh0x3A0x3ASMLoc0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.e = zext i32 %1 to i64
  %.val57 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val57, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 864
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.h = zext i32 %.0.copyload.i to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %.0.copyload.i63 = load i32, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i63) #7, !srcloc !19
  %i.j = icmp eq i32 %.0.copyload.i63, 49         ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = zext i32 %i.c to i64                     ; 4 uses
  %.val60 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val60, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 1, ptr %i.m, align 1
  %.val59 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val59, i64 %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  store i32 49, ptr %i.o, align 1
  %i.p = add i32 %i.b, -4
  %i.q = add nuw nsw i64 %i.k, 20                 ; 2 uses
  %.val58 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val58, i64 %i.q
  store i32 %i.p, ptr %i.r, align 1
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val61, i64 %i.q
  %.0.copyload.i64 = load i64, ptr %i.s, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i64) #7, !srcloc !22
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val62, i64 %i.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.0.copyload.i64, ptr %i.u, align 1
  %i.v = add i32 %i.b, -24
  tail call void @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AerrorExpected0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3Aparser0x3A0x3ATokenKind0x3E0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x2C0x20llvh0x3A0x3ASMLoc0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.v, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.w = zext i1 %i.j to i32
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %i.w
}

; Function Attrs: nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3Aeat0x28hermes0x3A0x3Aparser0x3A0x3ATokenKind0x2C0x20hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AGrammarContext0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x2C0x20llvh0x3A0x3ASMLoc0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.e = zext i32 %1 to i64
  %i.f = add nuw nsw i64 %i.e, 864                ; 2 uses
  %.val69 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val69, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.h = zext i32 %.0.copyload.i to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %.0.copyload.i76 = load i32, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i76) #7, !srcloc !19
  %i.j = icmp eq i32 %.0.copyload.i76, %2         ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = zext i32 %i.c to i64                     ; 4 uses
  %.val73 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val73, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 1, ptr %i.m, align 1
  %.val72 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val72, i64 %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  store i32 %2, ptr %i.o, align 1
  %i.p = add i32 %i.b, -4
  %i.q = add nuw nsw i64 %i.k, 20                 ; 2 uses
  %.val71 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val71, i64 %i.q
  store i32 %i.p, ptr %i.r, align 1
  %.val74 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val74, i64 %i.q
  %.0.copyload.i77 = load i64, ptr %i.s, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i77) #7, !srcloc !22
  %.val75 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val75, i64 %i.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.0.copyload.i77, ptr %i.u, align 1
  %i.v = add i32 %i.b, -24
  tail call void @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AerrorExpected0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3Aparser0x3A0x3ATokenKind0x3E0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x2C0x20llvh0x3A0x3ASMLoc0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.v, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.w = add i32 %1, 8
  %i.x = tail call i32 @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3Aadvance0x28hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AGrammarContext0x29(ptr noundef nonnull %0, i32 noundef %i.w, i32 noundef 0)
  %.val70 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val70, i64 %i.f
  store i32 %i.x, ptr %i.y, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = zext i1 %i.j to i32
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %i.z
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AparseProgram0x280x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 56 uses
  %i.e = zext i32 %2 to i64                       ; 5 uses
  %i.f = add nuw nsw i64 %i.e, 888                ; 4 uses
  %.val415 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val415, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.h = add nuw nsw i64 %i.e, 28                 ; 2 uses
  %.val416 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val416, i64 %i.h
  %.0.copyload.i446 = load i8, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i446) #7, !srcloc !20
  %i.j = add nuw nsw i64 %i.e, 864                ; 3 uses
  %.val414 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.j
  %.0.copyload.i447 = load i32, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i447) #7, !srcloc !19
  %i.l = zext i32 %.0.copyload.i447 to i64        ; 2 uses
  %.val413 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.0.copyload.i448 = load i32, ptr %i.n, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i448) #7, !srcloc !19
  %i.o = add i32 %i.b, -8                         ; 8 uses
  %i.p = zext i32 %i.c to i64                     ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 12                 ; 2 uses
  %.val440 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val440, i64 %i.q
  store i32 %i.o, ptr %i.r, align 1
  %i.s = add nuw nsw i64 %i.p, 8                  ; 6 uses
  %.val439 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val439, i64 %i.s
  store i32 %i.o, ptr %i.t, align 1
  %.val412 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.l
  %.0.copyload.i449 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i449) #7, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i449, 112
  br i1 %.not, label %.preheader, label %.loopexit.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %i.v = tail call i32 @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AparseDirective0x280x29(ptr noundef nonnull %0, i32 noundef %2) ; 4 uses
  %.not386 = icmp eq i32 %i.v, 0
  br i1 %.not386, label %.loopexit.preheader, label %bb.b

bb.b:                                             ; preds = %.preheader
  %.val411 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val411, i64 %i.s
  %.0.copyload.i450 = load i32, ptr %i.w, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i450) #7, !srcloc !19
  %i.x = zext i32 %i.v to i64                     ; 2 uses
  %.val438 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val438, i64 %i.x
  store i32 %.0.copyload.i450, ptr %i.y, align 1
  %.val437 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val437, i64 %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.o, ptr %i.aa, align 1
  %i.ab = zext i32 %.0.copyload.i450 to i64
  %.val436 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val436, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %i.v, ptr %i.ad, align 1
  %.val435 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val435, i64 %i.s
  store i32 %i.v, ptr %i.ae, align 1
  %.val410 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.j
  %.0.copyload.i451 = load i32, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i451) #7, !srcloc !19
  %i.ag = zext i32 %.0.copyload.i451 to i64
  %.val409 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.ag
  %.0.copyload.i452 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i452) #7, !srcloc !19
  %i.ai = icmp eq i32 %.0.copyload.i452, 112
  br i1 %i.ai, label %.preheader, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %bb.b, %.preheader, %bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader, %bb.c
  %.val408 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val408, i64 %i.j
  %.0.copyload.i453 = load i32, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i453) #7, !srcloc !19
  %i.ak = zext i32 %.0.copyload.i453 to i64
  %.val407 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val407, i64 %i.ak
  %.0.copyload.i454 = load i32, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i454) #7, !srcloc !19
  %i.am = icmp eq i32 %.0.copyload.i454, 120
  br i1 %i.am, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.an = tail call i32 @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AparseStatementListItem0x28hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AParam0x2C0x20hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AAllowImportExport0x2C0x20llvh0x3A0x3Asimple_ilist0x3Chermes0x3A0x3AESTree0x3A0x3ANode0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0, i32 noundef 1, i32 noundef %i.o)
  %.not387 = icmp eq i32 %i.an, 0
  br i1 %.not387, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ao = zext i32 %1 to i64
  br label %bb.n

bb.e:                                             ; preds = %.loopexit
  %.val406 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val406, i64 %i.s
  %.0.copyload.i455 = load i32, ptr %i.ap, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i455) #7, !srcloc !19
  %.not388 = icmp eq i32 %.0.copyload.i455, %i.o
  br i1 %.not388, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = zext i32 %.0.copyload.i455 to i64
  %.val405 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val405, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %.0.copyload.i456 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i456) #7, !srcloc !19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %.0.copyload.i456, %bb.f ], [ %.0.copyload.i448, %bb.e ]
  %.val404 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val404, i64 %i.e
  %.0.copyload.i457 = load i32, ptr %i.at, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i457) #7, !srcloc !19
  %i.au = zext i32 %.0.copyload.i457 to i64       ; 2 uses
  %.val403 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val403, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %.0.copyload.i458 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i458) #7, !srcloc !19
end_hunk_1
