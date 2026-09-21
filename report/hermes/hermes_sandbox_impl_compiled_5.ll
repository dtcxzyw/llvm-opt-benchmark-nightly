Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_5?download=true
inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmathSign0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i89) #8, !srcloc !37
  %i.q = fcmp uno double %.0.copyload.i89, 0.000000e+00
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = zext i32 %1 to i64                       ; 2 uses
  %.val83 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val83, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 9221120237041090560, ptr %i.t, align 1
  %.val78 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val78, i64 %i.r
  store i32 1, ptr %i.u, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.v = fcmp oeq double %.0.copyload.i89, 0.000000e+00
  %i.w = zext i32 %1 to i64                       ; 3 uses
  %.val85 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val85, i64 %i.w ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store double %.0.copyload.i89, ptr %i.y, align 1
  %.val77 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val77, i64 %i.w
  store i32 1, ptr %i.z, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 1, ptr %i.x, align 1
  %i.aa = tail call double @llvm.copysign.f64(double 1.000000e+00, double %.0.copyload.i89)
  %.val84 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val84, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store double %i.aa, ptr %i.ac, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmathRandom0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 26 uses
  %i.e = zext i32 %3 to i64
  %.val314 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val314, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 5552
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.h = zext i32 %.0.copyload.i to i64           ; 4 uses
  %i.i = add nuw nsw i64 %i.h, 2504               ; 2 uses
  %.val328 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val328, i64 %i.i
  %.0.copyload.i332 = load i8, ptr %i.j, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i332) #8, !srcloc !21
  %.not = icmp eq i8 %.0.copyload.i332, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 16) #8 ; 2 uses
  %i.l = zext i32 %i.c to i64                     ; 3 uses
  %i.m = add nuw nsw i64 %i.l, 4                  ; 2 uses
  %.val310 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val310, i64 %i.m
  store i32 %i.k, ptr %i.n, align 1
  %.val322 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val322, i64 %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 -9223371968135299060, ptr %i.p, align 1
  %.val313 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val313, i64 43061
  %.0.copyload.i333 = load i32, ptr %i.q, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i333) #8, !srcloc !19
  %i.r = zext i32 %i.k to i64                     ; 3 uses
  %.val309 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val309, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %.0.copyload.i333, ptr %i.t, align 1
  %.val327 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val327, i64 43053
  %.0.copyload.i334 = load i64, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i334) #8, !srcloc !20
  %.val321 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val321, i64 %i.r
  store i64 %.0.copyload.i334, ptr %i.v, align 1
  %.val330 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val330, i64 %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i8 0, ptr %i.x, align 1
  %i.y = add i32 %i.b, -13
  %i.z = add i32 %i.b, -12
  %i.aa = tail call i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Arandom_device0x3A0x3Arandom_device0x28std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.y, i32 noundef %i.z) #8 ; 0 uses
  %.val323 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val323, i64 %i.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 15
  %.0.copyload.i335 = load i8, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i335) #8, !srcloc !22
  %i.ad = icmp slt i8 %.0.copyload.i335, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val312 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val312, i64 %i.m
  %.0.copyload.i336 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i336) #8, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i336) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.af = tail call i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Arandom_device0x3A0x3Aoperator0x280x290x280x29(ptr noundef nonnull %0) #8
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw i64 %i.ag, 32
  %i.ai = tail call i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Arandom_device0x3A0x3Aoperator0x280x290x280x29(ptr noundef nonnull %0) #8
  %i.aj = zext i32 %i.ai to i64
  %i.ak = or disjoint i64 %i.ah, %i.aj            ; 2 uses
  %.val320 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val320, i64 %i.h
  store i64 %i.ak, ptr %i.al, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0304 = phi i64 [ 1, %bb.d ], [ %i.bz, %bb.f ] ; 6 uses
  %.0 = phi i64 [ %i.ak, %bb.d ], [ %i.bw, %bb.f ] ; 2 uses
  %i.am = trunc i64 %.0304 to i32
  %i.an = shl i32 %i.am, 3
  %i.ao = add i32 %i.an, %.0.copyload.i
  %i.ap = lshr i64 %.0, 62
  %i.aq = xor i64 %i.ap, %.0
  %i.ar = mul i64 %i.aq, 6364136223846793005
  %i.as = add i64 %i.ar, %.0304                   ; 3 uses
  %i.at = zext i32 %i.ao to i64
  %.val319 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val319, i64 %i.at
  store i64 %i.as, ptr %i.au, align 1
  %i.av = add nuw nsw i64 %.0304, 1               ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = shl i32 %i.aw, 3
  %i.ay = add i32 %i.ax, %.0.copyload.i
  %i.az = lshr i64 %i.as, 62
  %i.ba = xor i64 %i.az, %i.as
  %i.bb = mul i64 %i.ba, 6364136223846793005
  %i.bc = add i64 %i.bb, %i.av                    ; 3 uses
  %i.bd = zext i32 %i.ay to i64
  %.val318 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val318, i64 %i.bd
  store i64 %i.bc, ptr %i.be, align 1
  %i.bf = add nuw nsw i64 %.0304, 2               ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = shl i32 %i.bg, 3
  %i.bi = add i32 %i.bh, %.0.copyload.i
  %i.bj = lshr i64 %i.bc, 62
  %i.bk = xor i64 %i.bj, %i.bc
  %i.bl = mul i64 %i.bk, 6364136223846793005
  %i.bm = add i64 %i.bl, %i.bf                    ; 3 uses
  %i.bn = zext i32 %i.bi to i64
  %.val317 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val317, i64 %i.bn
  store i64 %i.bm, ptr %i.bo, align 1
  %i.bp = add nuw nsw i64 %.0304, 3               ; 3 uses
  %.not306 = icmp eq i64 %i.bp, 312
  br i1 %.not306, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = trunc i64 %i.bp to i32
  %i.br = shl i32 %i.bq, 3
  %i.bs = add i32 %i.br, %.0.copyload.i
  %i.bt = lshr i64 %i.bm, 62
  %i.bu = xor i64 %i.bt, %i.bm
  %i.bv = mul i64 %i.bu, 6364136223846793005
  %i.bw = add i64 %i.bv, %i.bp                    ; 2 uses
  %i.bx = zext i32 %i.bs to i64
  %.val316 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val316, i64 %i.bx
  store i64 %i.bw, ptr %i.by, align 1
  %i.bz = add nuw nsw i64 %.0304, 4
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %.val329 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val329, i64 %i.i
  store i8 1, ptr %i.ca, align 1
  %.val308 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val308, i64 %i.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2496
  store i32 0, ptr %i.cc, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %i.cd = add nuw nsw i64 %i.h, 2496              ; 2 uses
  %.val311 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val311, i64 %i.cd
  %.0.copyload.i337 = load i32, ptr %i.ce, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i337) #8, !srcloc !19
  %.val326 = load ptr, ptr %i.d, align 8, !tbaa !18
  %5 = shl i32 %.0.copyload.i337, 3
  %i.cf = add i32 %5, %.0.copyload.i
  %6 = insertelement <2 x i32> poison, i32 %.0.copyload.i337, i64 0
  %7 = shufflevector <2 x i32> %6, <2 x i32> poison, <2 x i32> zeroinitializer
  %8 = add <2 x i32> %7, <i32 156, i32 1>
  %9 = urem <2 x i32> %8, splat (i32 312)         ; 2 uses
  %10 = extractelement <2 x i32> %9, i64 0
  %11 = shl nuw nsw i32 %10, 3
  %12 = add i32 %11, %.0.copyload.i
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds nuw i8, ptr %.val326, i64 %13
  %.0.copyload.i338 = load i64, ptr %14, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i338) #8, !srcloc !20
  %15 = extractelement <2 x i32> %9, i64 1        ; 2 uses
  %i.cg = shl nuw nsw i32 %15, 3
  %i.ch = add i32 %i.cg, %.0.copyload.i
  %i.ci = zext i32 %i.ch to i64
  %.val325 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val325, i64 %i.ci
  %.0.copyload.i339 = load i64, ptr %i.cj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i339) #8, !srcloc !20
  %i.ck = and i64 %.0.copyload.i339, 2147483646
  %i.cl = zext i32 %i.cf to i64                   ; 2 uses
  %.val324 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val324, i64 %i.cl
  %.0.copyload.i340 = load i64, ptr %i.cm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i340) #8, !srcloc !20
  %i.cn = and i64 %.0.copyload.i340, -2147483648
  %i.co = or disjoint i64 %i.cn, %i.ck
  %i.cp = lshr exact i64 %i.co, 1
  %i.cq = and i64 %.0.copyload.i339, 1
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = select i1 %i.cr, i64 0, i64 -5403634167711393303
  %i.ct = xor i64 %i.cs, %i.cp
  %i.cu = xor i64 %i.ct, %.0.copyload.i338        ; 3 uses
  %.val315 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val315, i64 %i.cl
  store i64 %i.cu, ptr %i.cv, align 1
  %.val307 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val307, i64 %i.cd
  store i32 %15, ptr %i.cw, align 1
  %i.cx = zext i32 %1 to i64                      ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cx
  store i32 1, ptr %i.cy, align 1
  %i.cz = lshr i64 %i.cu, 29
  %i.da = and i64 %i.cz, 22906492245
  %i.db = xor i64 %i.da, %i.cu                    ; 2 uses
  %i.dc = shl i64 %i.db, 17
  %i.dd = and i64 %i.dc, 8202884508482404352
  %i.de = xor i64 %i.dd, %i.db                    ; 2 uses
  %i.df = shl i64 %i.de, 37
  %i.dg = and i64 %i.df, -2270628950310912
  %i.dh = xor i64 %i.dg, %i.de                    ; 2 uses
  %i.di = lshr i64 %i.dh, 43
  %i.dj = xor i64 %i.di, %i.dh
  %i.dk = uitofp i64 %i.dj to double
  %i.dl = fmul nnan double %i.dk, f0x3BF0000000000000
  %.val331 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val331, i64 %i.cx
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store double %i.dl, ptr %i.dn, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

declare i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Arandom_device0x3A0x3Arandom_device0x28std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x20const0x260x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Arandom_device0x3A0x3Aoperator0x280x290x280x29(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmathPow0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = add i32 %i.b, -32                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = add i32 %i.b, -16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.f = zext i32 %4 to i64                       ; 2 uses
  %.val121 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val121, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.h = add i32 %.0.copyload.i, -8
  %.val120 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val120, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.0.copyload.i125 = load i32, ptr %i.j, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i125) #8, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i125, 0
  %i.k = select i1 %.not, i32 70392, i32 %i.h
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoNumber_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %i.d, i32 noundef %3, i32 noundef %i.k) #8
  %i.l = zext i32 %i.c to i64                     ; 4 uses
  %.val119 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val119, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.0.copyload.i126 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i126) #8, !srcloc !19
  %.not114 = icmp eq i32 %.0.copyload.i126, 0
  br i1 %.not114, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = zext i32 %1 to i64
  %.val117 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val117, i64 %i.o
  store i32 0, ptr %i.p, align 1
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.val124 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val124, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.0.copyload.i127 = load double, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i127) #8, !srcloc !37
  %i.s = add i32 %.0.copyload.i, -16
  %i.t = icmp ult i32 %.0.copyload.i125, 2
  %i.u = select i1 %i.t, i32 70392, i32 %i.s
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoNumber_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.c, i32 noundef %3, i32 noundef %i.u) #8
  %.val118 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val118, i64 %i.l
  %.0.copyload.i128 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i128) #8, !srcloc !19
  %.not115 = icmp eq i32 %.0.copyload.i128, 0
  br i1 %.not115, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = zext i32 %1 to i64
  %.val116 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val116, i64 %i.w
  store i32 0, ptr %i.x, align 1
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %.val123 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val123, i64 %i.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.0.copyload.i129 = load double, ptr %i.z, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i129) #8, !srcloc !37
  %i.aa = fcmp uno double %.0.copyload.i129, 0.000000e+00
  br i1 %i.aa, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = fcmp oeq double %.0.copyload.i129, 0.000000e+00
  br i1 %i.ab, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call noundef double @llvm.fabs.f64(double %.0.copyload.i127)
  %i.ad = fcmp oeq double %i.ac, 1.000000e+00
  %i.ae = tail call double @llvm.fabs.f64(double %.0.copyload.i129)
  %i.af = fcmp oeq double %i.ae, +inf
  %or.cond = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call double @w2c_hermes_pow(ptr noundef nonnull %0, double noundef %.0.copyload.i127, double noundef %.0.copyload.i129) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.h
  %.0 = phi double [ +qnan, %bb.e ], [ 1.000000e+00, %bb.f ], [ +qnan, %bb.g ], [ %i.ag, %bb.h ] ; 2 uses
  %i.ah = zext i32 %1 to i64                      ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ah
  store i32 1, ptr %i.ai, align 1
  %i.aj = bitcast double %.0 to i64
  %i.ak = fcmp uno double %.0, 0.000000e+00
  %i.al = select i1 %i.ak, i64 9221120237041090560, i64 %i.aj
  %.val122 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val122, i64 %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.al, ptr %i.an, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

declare double @w2c_hermes_pow(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmathMin0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 20 uses
  %i.e = zext i32 %3 to i64
  %.val190 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.h = zext i32 %.0.copyload.i to i64           ; 6 uses
  %i.i = add nuw nsw i64 %i.h, 172                ; 3 uses
  %.val189 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.i
  %.0.copyload.i193 = load i32, ptr %i.j, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i193) #8, !srcloc !19
  %i.k = add nuw nsw i64 %i.h, 164                ; 3 uses
  %.val188 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.k
  %.0.copyload.i194 = load i32, ptr %i.l, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i194) #8, !srcloc !19
  %i.m = zext i32 %4 to i64                       ; 2 uses
  %.val187 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.0.copyload.i195 = load i32, ptr %i.o, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i195) #8, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i195, 0
  br i1 %.not, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.pre204 = shl i32 %.0.copyload.i193, 2
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.val186 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.m
  %.0.copyload.i196 = load i32, ptr %i.p, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i196) #8, !srcloc !19
  %i.q = shl i32 %.0.copyload.i195, 3
  %i.r = sub i32 %.0.copyload.i196, %i.q
  %i.s = shl i32 %.0.copyload.i193, 2             ; 3 uses
  %i.t = zext i32 %i.c to i64                     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.0170 = phi i32 [ %.0.copyload.i196, %bb.b ], [ %i.ae, %bb.i ]
  %.0 = phi double [ +inf, %bb.b ], [ %.1, %bb.i ] ; 5 uses
  %.val185 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val185, i64 %i.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %.0.copyload.i197 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i197) #8, !srcloc !19
  %i.w = add i32 %.0.copyload.i197, %i.s
  %i.x = zext i32 %i.w to i64
  %.val184 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val184, i64 %i.x
end_hunk_0
