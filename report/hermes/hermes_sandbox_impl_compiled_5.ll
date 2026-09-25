Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_5?download=true
inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpPrototypeSymbolReplace0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.rn = getelementptr inbounds nuw i8, ptr %.val3389.a, i64 %i.hl
  %.0.copyload.i3510 = load i64, ptr %i.rn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3510) #8, !srcloc !20
  %.val3342.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ro = getelementptr inbounds nuw i8, ptr %.val3342.a, i64 %i.ds
  store i64 %.0.copyload.i3510, ptr %i.ro, align 1
  %i.rp = fcmp olt double %.0.copyload.i3508, f0x43F0000000000000
  %i.rq = fcmp oge double %.0.copyload.i3508, 0.000000e+00
  %i.rr = and i1 %i.rp, %i.rq
  %i.rs = fptoui double %.0.copyload.i3508 to i64
  %spec.select3610 = select i1 %i.rr, i64 %i.rs, i64 0 ; 2 uses
  %i.rt = and i64 %.0.copyload.i3510, 4294967295
  %.not3037 = icmp eq i64 %i.rt, 0
  br i1 %.not3037, label %bb.fj, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.val3388.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ru = getelementptr inbounds nuw i8, ptr %.val3388.a, i64 %i.dw
  %.0.copyload.i3511 = load i64, ptr %i.ru, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3511) #8, !srcloc !20
  %.val3237.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rv = getelementptr inbounds nuw i8, ptr %.val3237.a, i64 %i.i
  %.0.copyload.i3512 = load i32, ptr %i.rv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3512) #8, !srcloc !19
  %i.rw = zext i32 %.0.copyload.i3512 to i64      ; 2 uses
  %i.rx = add nuw nsw i64 %i.rw, 164              ; 2 uses
  %.val3236.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ry = getelementptr inbounds nuw i8, ptr %.val3236.a, i64 %i.rx
  %.0.copyload.i3513 = load i32, ptr %i.ry, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3513) #8, !srcloc !19
  %.val3235.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rz = getelementptr inbounds nuw i8, ptr %.val3235.a, i64 %i.rw
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 168
  %.0.copyload.i3514 = load i32, ptr %i.sa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3514) #8, !srcloc !19
  %i.sb = icmp ult i32 %.0.copyload.i3513, %.0.copyload.i3514
  br i1 %i.sb, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.sc = add i32 %.0.copyload.i3513, 8
  %.val3104.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sd = getelementptr inbounds nuw i8, ptr %.val3104.a, i64 %i.rx
  store i32 %i.sc, ptr %i.sd, align 1
  %i.se = zext i32 %.0.copyload.i3513 to i64
  %.val3341.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sf = getelementptr inbounds nuw i8, ptr %.val3341.a, i64 %i.se
  store i64 %.0.copyload.i3511, ptr %i.sf, align 1
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.sg = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3512, i64 noundef %.0.copyload.i3511) #8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.8 = phi i32 [ %.0.copyload.i3513, %bb.bx ], [ %i.sg, %bb.by ]
  %i.sh = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.8) #8 ; 2 uses
  %i.si = icmp eq i32 %i.sh, -1
  br i1 %i.si, label %bb.fj, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sj = zext i32 %i.sh to i64
  %i.sk = or disjoint i64 %i.sj, -844424930131968 ; 3 uses
  %.val3234.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sl = getelementptr inbounds nuw i8, ptr %.val3234.a, i64 %i.i
  %.0.copyload.i3515 = load i32, ptr %i.sl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3515) #8, !srcloc !19
  %i.sm = zext i32 %.0.copyload.i3515 to i64      ; 2 uses
  %i.sn = add nuw nsw i64 %i.sm, 164              ; 2 uses
  %.val3233.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.so = getelementptr inbounds nuw i8, ptr %.val3233.a, i64 %i.sn
  %.0.copyload.i3516 = load i32, ptr %i.so, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3516) #8, !srcloc !19
  %.val3232.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sp = getelementptr inbounds nuw i8, ptr %.val3232.a, i64 %i.sm
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 168
  %.0.copyload.i3517 = load i32, ptr %i.sq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3517) #8, !srcloc !19
  %i.sr = icmp ult i32 %.0.copyload.i3516, %.0.copyload.i3517
  br i1 %i.sr, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ss = add i32 %.0.copyload.i3516, 8
  %.val3103.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.st = getelementptr inbounds nuw i8, ptr %.val3103.a, i64 %i.sn
  store i32 %i.ss, ptr %i.st, align 1
  %i.su = zext i32 %.0.copyload.i3516 to i64
  %.val3340.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sv = getelementptr inbounds nuw i8, ptr %.val3340.a, i64 %i.su
  store i64 %i.sk, ptr %i.sv, align 1
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.sw = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3515, i64 noundef %i.sk) #8 ; 2 uses
  %i.sx = zext i32 %i.sw to i64
  %.val3387.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sy = getelementptr inbounds nuw i8, ptr %.val3387.a, i64 %i.sx
  %.0.copyload.i3518 = load i64, ptr %i.sy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3518) #8, !srcloc !20
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.02919 = phi i32 [ %.0.copyload.i3516, %bb.cb ], [ %i.sw, %bb.cc ] ; 2 uses
  %.2 = phi i64 [ %i.sk, %bb.cb ], [ %.0.copyload.i3518, %bb.cc ]
  %i.sz = and i64 %.2, 4294967295
  %.val3231.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ta = getelementptr inbounds nuw i8, ptr %.val3231.a, i64 %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 4
  %.0.copyload.i3519 = load i32, ptr %i.tb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3519) #8, !srcloc !19
  %.val3102.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tc = getelementptr inbounds nuw i8, ptr %.val3102.a, i64 %i.e
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 24
  store i32 0, ptr %i.td, align 1
  %.val3101.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.te = getelementptr inbounds nuw i8, ptr %.val3101.a, i64 %i.pg
  store i32 0, ptr %i.te, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyCacheEntry0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.hh, i32 noundef %.02935, i32 noundef %3, i32 noundef 329, i32 noundef %.02935, i32 noundef %i.ph, i32 noundef 0) #8
  %.val3386.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tf = getelementptr inbounds nuw i8, ptr %.val3386.a, i64 %i.pd
  %.0.copyload.i3520 = load i64, ptr %i.tf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3520) #8, !srcloc !20
  %.val3339.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tg = getelementptr inbounds nuw i8, ptr %.val3339.a, i64 %i.dw
  store i64 %.0.copyload.i3520, ptr %i.tg, align 1
  %.val3385.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.th = getelementptr inbounds nuw i8, ptr %.val3385.a, i64 %i.hl
  %.0.copyload.i3521 = load i64, ptr %i.th, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3521) #8, !srcloc !20
  %.val3338.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ti = getelementptr inbounds nuw i8, ptr %.val3338.a, i64 %i.ds
  store i64 %.0.copyload.i3521, ptr %i.ti, align 1
  %i.tj = and i64 %.0.copyload.i3521, 4294967295
  %.not3038 = icmp eq i64 %i.tj, 0
  br i1 %.not3038, label %bb.fj, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.val3384.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tk = getelementptr inbounds nuw i8, ptr %.val3384.a, i64 %i.dw
  %.0.copyload.i3522 = load i64, ptr %i.tk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3522) #8, !srcloc !20
  %.val3230.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tl = getelementptr inbounds nuw i8, ptr %.val3230.a, i64 %i.i
  %.0.copyload.i3523 = load i32, ptr %i.tl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3523) #8, !srcloc !19
  %i.tm = zext i32 %.0.copyload.i3523 to i64      ; 2 uses
  %i.tn = add nuw nsw i64 %i.tm, 164              ; 2 uses
  %.val3229.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.to = getelementptr inbounds nuw i8, ptr %.val3229.a, i64 %i.tn
  %.0.copyload.i3524 = load i32, ptr %i.to, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3524) #8, !srcloc !19
  %.val3228.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tp = getelementptr inbounds nuw i8, ptr %.val3228.a, i64 %i.tm
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 168
  %.0.copyload.i3525 = load i32, ptr %i.tq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3525) #8, !srcloc !19
  %i.tr = icmp ult i32 %.0.copyload.i3524, %.0.copyload.i3525
  br i1 %i.tr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ts = add i32 %.0.copyload.i3524, 8
  %.val3100.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tt = getelementptr inbounds nuw i8, ptr %.val3100.a, i64 %i.tn
  store i32 %i.ts, ptr %i.tt, align 1
  %i.tu = zext i32 %.0.copyload.i3524 to i64
  %.val3337.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tv = getelementptr inbounds nuw i8, ptr %.val3337.a, i64 %i.tu
  store i64 %.0.copyload.i3522, ptr %i.tv, align 1
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.tw = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3523, i64 noundef %.0.copyload.i3522) #8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.9 = phi i32 [ %.0.copyload.i3524, %bb.cf ], [ %i.tw, %bb.cg ]
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoIntegerOrInfinity0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.pi, i32 noundef %3, i32 noundef %.9) #8
  %.val3227.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tx = getelementptr inbounds nuw i8, ptr %.val3227.a, i64 %i.pg
  %.0.copyload.i3526 = load i32, ptr %i.tx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3526) #8, !srcloc !19
  %.not3039 = icmp eq i32 %.0.copyload.i3526, 0
  br i1 %.not3039, label %bb.fj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ty = tail call i64 @llvm.usub.sat.i64(i64 %spec.select3610, i64 1) ; 4 uses
  %i.tz = icmp ugt i64 %i.ty, 1027070
  %.val3416 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ua = getelementptr inbounds nuw i8, ptr %.val3416, i64 %i.e
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 128
  %.0.copyload.i3527 = load double, ptr %i.ub, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i3527) #8, !srcloc !37
  %i.uc = fcmp uno double %.0.copyload.i3527, 0.000000e+00
  br i1 %i.uc, label %bb.cm, label %bb.cj, !prof !31

bb.cj:                                            ; preds = %bb.ci
  %i.ud = fcmp oeq double %.0.copyload.i3527, 0.000000e+00
  %i.ue = select i1 %i.ud, i1 %i.pj, i1 false
  br i1 %i.ue, label %bb.ck, label %bb.cl, !prof !31

bb.ck:                                            ; preds = %bb.cj
  %5 = bitcast double %.0.copyload.i3527 to i64
  %6 = icmp slt i64 %5, 0
  %i.uf = select i1 %6, double %.0.copyload.i3527, double %i.oz
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.ug = fcmp olt double %.0.copyload.i3527, %i.oz
  %i.uh = select i1 %i.ug, double %.0.copyload.i3527, double %i.oz
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.ci
  %i.ui = phi double [ +qnan, %bb.ci ], [ %i.uh, %bb.cl ], [ %i.uf, %bb.ck ]
  %i.uj = select i1 %i.pl, double %.0.copyload.i3527, double %i.ui
  %i.uk = tail call double @llvm.fabs.f64(double %.0.copyload.i3527)
  %i.ul = bitcast double %i.uk to i64
  %i.um = icmp samesign ult i64 %i.ul, 9218868437227405313
  %i.un = select i1 %i.um, double %i.uj, double %i.oz ; 7 uses
  %i.uo = fcmp uno double %i.un, 0.000000e+00
  br i1 %i.uo, label %bb.cq, label %bb.cn, !prof !31

bb.cn:                                            ; preds = %bb.cm
  %i.up = fcmp oeq double %i.un, 0.000000e+00
  br i1 %i.up, label %bb.co, label %bb.cp, !prof !31

bb.co:                                            ; preds = %bb.cn
  %7 = bitcast double %i.un to i64
  %8 = icmp slt i64 %7, 0
  %i.uq = select i1 %8, double 0.000000e+00, double %i.un
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.ur = fcmp ogt double %i.un, 0.000000e+00
  %i.us = select i1 %i.ur, double %i.un, double 0.000000e+00
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cm
  %i.ut = phi double [ +qnan, %bb.cm ], [ %i.us, %bb.cp ], [ %i.uq, %bb.co ]
  %i.uu = tail call double @llvm.fabs.f64(double %i.un)
  %i.uv = bitcast double %i.uu to i64
  %i.uw = icmp samesign ult i64 %i.uv, 9218868437227405313
  %i.ux = select i1 %i.uw, double %i.ut, double 0.000000e+00 ; 4 uses
  %i.uy = tail call noundef double @llvm.fabs.f64(double %i.ux)
  %i.uz = fcmp olt double %i.uy, f0x43E0000000000000
  br i1 %i.uz, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  %i.va = fcmp ult double %i.ux, f0xC3E0000000000000
  %i.vb = fcmp uge double %i.ux, f0x43E0000000000000
  %.not3043 = or i1 %i.va, %i.vb
  br i1 %.not3043, label %bb.cs, label %bb.ct, !prof !31

bb.cs:                                            ; preds = %bb.cr
  tail call void @wasm_rt_trap(i32 noundef 2) #9
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.vc = fptosi double %i.ux to i64
  %i.vd = trunc i64 %i.vc to i32
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cq, %bb.ct
  %.1 = phi i32 [ %i.vd, %bb.ct ], [ 0, %bb.cq ]  ; 5 uses
  br i1 %i.tz, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %.val3099.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ve = getelementptr inbounds nuw i8, ptr %.val3099.a, i64 %i.e
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 112
  store i32 0, ptr %i.vf, align 1
  %.val3336.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vg = getelementptr inbounds nuw i8, ptr %.val3336.a, i64 %i.e
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 104
  store i64 141733920769, ptr %i.vh, align 1
  %.val3098.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vi = getelementptr inbounds nuw i8, ptr %.val3098.a, i64 %i.pd
  store i32 3, ptr %i.vi, align 1
  %.val3097.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vj = getelementptr inbounds nuw i8, ptr %.val3097.a, i64 %i.hl
  store i32 60634, ptr %i.vj, align 1
  %i.vk = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.hh) #8
  %.val3096.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vl = getelementptr inbounds nuw i8, ptr %.val3096.a, i64 %i.qb
  store i32 %i.vk, ptr %i.vl, align 1
  br label %bb.fk

bb.cw:                                            ; preds = %bb.cu
  %i.vm = trunc nuw nsw i64 %i.ty to i32
  %i.vn = shl nuw nsw i32 %i.vm, 2
  %i.vo = add nuw nsw i32 %i.vn, 12
  %i.vp = and i32 %i.vo, 8388600                  ; 4 uses
  %.val3226.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vq = getelementptr inbounds nuw i8, ptr %.val3226.a, i64 %i.h
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 1376
  %.0.copyload.i3528 = load i32, ptr %i.vr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3528) #8, !srcloc !19
  %.val3225.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vs = getelementptr inbounds nuw i8, ptr %.val3225.a, i64 %i.pm
  %.0.copyload.i3529 = load i32, ptr %i.vs, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3529) #8, !srcloc !19
  %i.vt = sub i32 %.0.copyload.i3528, %.0.copyload.i3529
  %i.vu = icmp ugt i32 %i.vp, %i.vt
  br i1 %i.vu, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.vv = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.hi, i32 noundef %i.vp) #8
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  %i.vw = add i32 %.0.copyload.i3529, %i.vp
  %.val3095.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vx = getelementptr inbounds nuw i8, ptr %.val3095.a, i64 %i.pm
  store i32 %i.vw, ptr %i.vx, align 1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.10 = phi i32 [ %i.vv, %bb.cx ], [ %.0.copyload.i3529, %bb.cy ]
  %i.vy = zext i32 %.10 to i64                    ; 3 uses
  %.val3335.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vz = getelementptr inbounds nuw i8, ptr %.val3335.a, i64 %i.vy
  store i64 0, ptr %i.vz, align 1
  %i.wa = or disjoint i32 %i.vp, 251658240
  %.val3094.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wb = getelementptr inbounds nuw i8, ptr %.val3094.a, i64 %i.vy
  store i32 %i.wa, ptr %i.wb, align 1
  %i.wc = or disjoint i64 %i.vy, -281474976710656 ; 2 uses
  %.val3224.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wd = getelementptr inbounds nuw i8, ptr %.val3224.a, i64 %i.i
  %.0.copyload.i3530 = load i32, ptr %i.wd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3530) #8, !srcloc !19
  %i.we = zext i32 %.0.copyload.i3530 to i64      ; 2 uses
  %i.wf = add nuw nsw i64 %i.we, 164              ; 2 uses
  %.val3223.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wg = getelementptr inbounds nuw i8, ptr %.val3223.a, i64 %i.wf
  %.0.copyload.i3531 = load i32, ptr %i.wg, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3531) #8, !srcloc !19
  %.val3222.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wh = getelementptr inbounds nuw i8, ptr %.val3222.a, i64 %i.we
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 168
  %.0.copyload.i3532 = load i32, ptr %i.wi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3532) #8, !srcloc !19
  %i.wj = icmp ult i32 %.0.copyload.i3531, %.0.copyload.i3532
  br i1 %i.wj, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.wk = add i32 %.0.copyload.i3531, 8
  %.val3093.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wl = getelementptr inbounds nuw i8, ptr %.val3093.a, i64 %i.wf
  store i32 %i.wk, ptr %i.wl, align 1
  %i.wm = zext i32 %.0.copyload.i3531 to i64
  %.val3334.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wn = getelementptr inbounds nuw i8, ptr %.val3334.a, i64 %i.wm
  store i64 %i.wc, ptr %i.wn, align 1
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.wo = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3530, i64 noundef %i.wc) #8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.11 = phi i32 [ %.0.copyload.i3531, %bb.da ], [ %i.wo, %bb.db ]
  %.val3092.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wp = getelementptr inbounds nuw i8, ptr %.val3092.a, i64 %i.pn
  store i32 %.11, ptr %i.wp, align 1
  %.val3221.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wq = getelementptr inbounds nuw i8, ptr %.val3221.a, i64 %i.i
  %.0.copyload.i3533 = load i32, ptr %i.wq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3533) #8, !srcloc !19
  %i.wr = zext i32 %.0.copyload.i3533 to i64      ; 2 uses
  %i.ws = add nuw nsw i64 %i.wr, 164              ; 2 uses
  %.val3220.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wt = getelementptr inbounds nuw i8, ptr %.val3220.a, i64 %i.ws
  %.0.copyload.i3534 = load i32, ptr %i.wt, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3534) #8, !srcloc !19
  %.val3219.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wu = getelementptr inbounds nuw i8, ptr %.val3219.a, i64 %i.wr
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 168
  %.0.copyload.i3535 = load i32, ptr %i.wv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3535) #8, !srcloc !19
  %i.ww = icmp ult i32 %.0.copyload.i3534, %.0.copyload.i3535
  br i1 %i.ww, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.wx = add i32 %.0.copyload.i3534, 8
  %.val3091.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wy = getelementptr inbounds nuw i8, ptr %.val3091.a, i64 %i.ws
  store i32 %i.wx, ptr %i.wy, align 1
  %i.wz = zext i32 %.0.copyload.i3534 to i64
  %.val3333.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xa = getelementptr inbounds nuw i8, ptr %.val3333.a, i64 %i.wz
  store i64 -1688849860263936, ptr %i.xa, align 1
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  %i.xb = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3533, i64 noundef -1688849860263936) #8
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.62934 = phi i32 [ %.0.copyload.i3534, %bb.dd ], [ %i.xb, %bb.de ] ; 3 uses
  %.val3218.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xc = getelementptr inbounds nuw i8, ptr %.val3218.a, i64 %i.i
  %.0.copyload.i3536 = load i32, ptr %i.xc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3536) #8, !srcloc !19
  %i.xd = add i32 %.0.copyload.i3536, 164         ; 2 uses
  %i.xe = zext i32 %.0.copyload.i3536 to i64      ; 2 uses
  %.val3217.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xf = getelementptr inbounds nuw i8, ptr %.val3217.a, i64 %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 164
  %.0.copyload.i3537 = load i32, ptr %i.xg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3537) #8, !srcloc !19
  %i.xh = icmp ugt i64 %spec.select3610, 1
  br i1 %i.xh, label %.preheader3611, label %.loopexit3612

.preheader3611:                                   ; preds = %bb.df
  %i.xi = zext i32 %.62934 to i64                 ; 2 uses
  br label %bb.dg

bb.dg:                                            ; preds = %.preheader3611, %bb.dq
  %.12 = phi i32 [ %.0.copyload.i3552, %bb.dq ], [ %.0.copyload.i3536, %.preheader3611 ]
  %.12951 = phi i32 [ %.0.copyload.i3553, %bb.dq ], [ %.0.copyload.i3537, %.preheader3611 ] ; 2 uses
  %.6 = phi i32 [ %i.zr, %bb.dq ], [ %i.xd, %.preheader3611 ] ; 2 uses
  %.3 = phi i64 [ %i.zw, %bb.dq ], [ 1, %.preheader3611 ] ; 3 uses
  %i.xj = zext i32 %.12 to i64                    ; 5 uses
  %i.xk = add nuw nsw i64 %i.xj, 172              ; 3 uses
  %.val3216.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xl = getelementptr inbounds nuw i8, ptr %.val3216.a, i64 %i.xk
  %.0.copyload.i3538 = load i32, ptr %i.xl, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3538) #8, !srcloc !19
  %i.xm = uitofp i64 %.3 to double
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AnumberPrototypeToPrecision0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.bb = zext i32 %.0.copyload.i1327 to i64
  %.val1293 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1293, i64 %i.bb
  store i64 %i.ap, ptr %i.bc, align 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bd = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1326, i64 noundef %i.ap) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.01137 = phi i32 [ %.0.copyload.i1327, %bb.k ], [ %i.bd, %bb.l ]
  %i.be = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.01137) #8 ; 2 uses
  %i.bf = icmp eq i32 %i.be, -1
  %i.bg = zext i32 %1 to i64                      ; 2 uses
  %.val1215 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1215, i64 %i.bg ; 2 uses
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bh, align 1
  br label %bb.bu

bb.o:                                             ; preds = %bb.m
  store i32 1, ptr %i.bh, align 1
  %i.bi = zext i32 %i.be to i64
  %i.bj = or disjoint i64 %i.bi, -844424930131968
  %.val1292 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1292, i64 %i.bg
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.bj, ptr %i.bl, align 1
  br label %bb.bu

bb.p:                                             ; preds = %bb.i
  %i.bm = add i32 %i.b, -16
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoIntegerOrInfinity0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.bm, i32 noundef %3, i32 noundef %i.ak) #8
  %i.bn = zext i32 %i.c to i64                    ; 50 uses
  %.val1262 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1262, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1440
  %.0.copyload.i1329 = load i32, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1329) #8, !srcloc !19
  %.not1163 = icmp eq i32 %.0.copyload.i1329, 0
  br i1 %.not1163, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = zext i32 %1 to i64
  %.val1213 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val1213, i64 %i.bq
  store i32 0, ptr %i.br, align 1
  br label %bb.bu

bb.r:                                             ; preds = %bb.p
  %i.bs = fcmp uno double %.0, 0.000000e+00
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bt = add i32 %3, 5476
  %i.bu = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetStringPrim0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29(ptr noundef nonnull %0, i32 noundef %i.bt, i32 noundef %3, i32 noundef 38) #8
  %i.bv = zext i32 %1 to i64                      ; 2 uses
  %.val1212 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val1212, i64 %i.bv
  store i32 1, ptr %i.bw, align 1
  %i.bx = zext i32 %i.bu to i64
  %i.by = or disjoint i64 %i.bx, -844424930131968
  %.val1291 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1291, i64 %i.bv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.by, ptr %i.ca, align 1
  br label %bb.bu

bb.t:                                             ; preds = %bb.r
  %i.cb = fcmp oeq double %.0, +inf
  br i1 %i.cb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cc = add i32 %3, 5476
  %i.cd = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetStringPrim0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29(ptr noundef nonnull %0, i32 noundef %i.cc, i32 noundef %3, i32 noundef 40) #8
  %i.ce = zext i32 %1 to i64                      ; 2 uses
  %.val1211 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val1211, i64 %i.ce
  store i32 1, ptr %i.cf, align 1
  %i.cg = zext i32 %i.cd to i64
  %i.ch = or disjoint i64 %i.cg, -844424930131968
  %.val1290 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val1290, i64 %i.ce
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.ch, ptr %i.cj, align 1
  br label %bb.bu

bb.v:                                             ; preds = %bb.t
  %i.ck = fcmp oeq double %.0, -inf
  br i1 %i.ck, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cl = add i32 %3, 5476
  %i.cm = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetStringPrim0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29(ptr noundef nonnull %0, i32 noundef %i.cl, i32 noundef %3, i32 noundef 42) #8
  %i.cn = zext i32 %1 to i64                      ; 2 uses
  %.val1210 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val1210, i64 %i.cn
  store i32 1, ptr %i.co, align 1
  %i.cp = zext i32 %i.cm to i64
  %i.cq = or disjoint i64 %i.cp, -844424930131968
  %.val1289 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1289, i64 %i.cn
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %i.cq, ptr %i.cs, align 1
  br label %bb.bu

bb.x:                                             ; preds = %bb.v
  %.val1318 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1318, i64 %i.bn
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1448
  %.0.copyload.i1330 = load double, ptr %i.cu, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1330) #8, !srcloc !37
  %i.cv = fcmp olt double %.0.copyload.i1330, 1.000000e+00
  %i.cw = fcmp ogt double %.0.copyload.i1330, 1.000000e+02
  %i.cx = or i1 %i.cv, %i.cw
  br i1 %i.cx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.val1209 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1209, i64 %i.bn
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 208
  store i32 0, ptr %i.cz, align 1
  %.val1288 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %.val1288, i64 %i.bn
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 200
  store i64 197568495617, ptr %i.db, align 1
  %.val1208 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %.val1208, i64 %i.bn
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 184
  store i32 3, ptr %i.dd, align 1
  %.val1207 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val1207, i64 %i.bn
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 176
  store i32 59980, ptr %i.df, align 1
  %i.dg = add i32 %i.b, -1280
  %i.dh = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.dg) #8
  %i.di = zext i32 %1 to i64
  %.val1206 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %.val1206, i64 %i.di
  store i32 %i.dh, ptr %i.dj, align 1
  br label %bb.bu

bb.z:                                             ; preds = %bb.x
  %i.dk = add i32 %i.b, -24
  %i.dl = zext i32 %i.dk to i64
  %.val1287 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val1287, i64 %i.dl
  store i64 0, ptr %i.dm, align 1
  %i.dn = add i32 %i.b, -32
  %i.do = zext i32 %i.dn to i64
  %.val1286 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.val1286, i64 %i.do
  store i64 0, ptr %i.dp, align 1
  %i.dq = add i32 %i.b, -40
  %i.dr = zext i32 %i.dq to i64
  %.val1285 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.val1285, i64 %i.dr
  store i64 0, ptr %i.ds, align 1
  %.val1284 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %.val1284, i64 %i.bn
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1408
  store i64 0, ptr %i.du, align 1
  %i.dv = add nuw nsw i64 %i.bn, 1400             ; 10 uses
  %.val1283 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %.val1283, i64 %i.dv
  store i64 137438953472, ptr %i.dw, align 1
  %i.dx = add i32 %i.b, -48                       ; 4 uses
  %i.dy = add nuw nsw i64 %i.bn, 1396             ; 12 uses
  %.val1205 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %.val1205, i64 %i.dy
  store i32 %i.dx, ptr %i.dz, align 1
  %i.ea = fneg double %.0
  %i.eb = fcmp olt double %.0, 0.000000e+00       ; 5 uses
  %i.ec = select i1 %i.eb, double %i.ea, double %.0
  %i.ed = fcmp oeq double %.0, 0.000000e+00       ; 2 uses
  %i.ee = tail call noundef double @llvm.fabs.f64(double %.0.copyload.i1330)
  %i.ef = fcmp olt double %i.ee, f0x41E0000000000000
  br i1 %i.ef, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.eg = fcmp ule double %.0.copyload.i1330, f0xC1E0000000200000
  %i.eh = fcmp uge double %.0.copyload.i1330, f0x41E0000000000000
  %.not1166 = or i1 %i.eg, %i.eh
  br i1 %.not1166, label %bb.ab, label %bb.ac, !prof !31

bb.ab:                                            ; preds = %bb.aa
  tail call void @wasm_rt_trap(i32 noundef 2) #9
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ei = fptosi double %.0.copyload.i1330 to i32 ; 4 uses
  br i1 %i.ed, label %bb.ad, label %bb.ai

.thread:                                          ; preds = %bb.z
  br i1 %i.ed, label %.thread1385, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %5 = icmp slt i32 %i.ei, 1
  br i1 %5, label %.thread1385, label %.preheader

.preheader:                                       ; preds = %bb.ad
  %i.ej = add i32 %i.b, -60
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader, %bb.ag
  %.11138 = phi i32 [ %i.es, %bb.ag ], [ 0, %.preheader ] ; 2 uses
  %.01134 = phi i32 [ %i.eu, %bb.ag ], [ 0, %.preheader ]
  %.val1261 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %.val1261, i64 %i.bn
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1404
  %.0.copyload.i1331 = load i32, ptr %i.el, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1331) #8, !srcloc !19
  %.not1178 = icmp ugt i32 %.0.copyload.i1331, %.11138
  br i1 %.not1178, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ej, i32 noundef %i.dx, i32 noundef 0, i32 noundef 1) #8
  %.val1260 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.em = getelementptr inbounds nuw i8, ptr %.val1260, i64 %i.dv
  %.0.copyload.i1332 = load i32, ptr %i.em, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1332) #8, !srcloc !19
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.2 = phi i32 [ %.0.copyload.i1332, %bb.af ], [ %.11138, %bb.ae ]
  %.val1259 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %.val1259, i64 %i.dy
  %.0.copyload.i1333 = load i32, ptr %i.en, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1333) #8, !srcloc !19
  %i.eo = add i32 %.0.copyload.i1333, %.2
  %i.ep = zext i32 %i.eo to i64
  %.val1317 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %.val1317, i64 %i.ep
  store i8 48, ptr %i.eq, align 1
  %.val1258 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.val1258, i64 %i.dv
  %.0.copyload.i1334 = load i32, ptr %i.er, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1334) #8, !srcloc !19
  %i.es = add i32 %.0.copyload.i1334, 1           ; 3 uses
  %.val1204 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val1204, i64 %i.dv
  store i32 %i.es, ptr %i.et, align 1
  %i.eu = add nuw nsw i32 %.01134, 1              ; 2 uses
  %.not1179 = icmp eq i32 %i.eu, %i.ei
  br i1 %.not1179, label %bb.ah, label %bb.ae

bb.ah:                                            ; preds = %bb.ag
  %.not1180 = icmp eq i32 %i.ei, 1
  br i1 %.not1180, label %bb.bo, label %.thread1385

bb.ai:                                            ; preds = %.thread, %bb.ac
  %.11383 = phi i32 [ -2147483648, %.thread ], [ %i.ei, %bb.ac ] ; 5 uses
  %i.ev = add i32 %i.b, -1280                     ; 12 uses
  %i.ew = tail call i32 @w2c_hermes_dtoa_alloc_init(ptr noundef nonnull %0, i32 noundef %i.ev) #8 ; 2 uses
  %i.ex = add nuw nsw i64 %i.bn, 1376             ; 3 uses
  %.val1203 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %.val1203, i64 %i.ex
  store i32 %i.ew, ptr %i.ey, align 1
  %i.ez = add i32 %i.b, -60                       ; 7 uses
  %i.fa = add i32 %i.b, -64
  %i.fb = add i32 %i.b, -68
  %i.fc = add i32 %i.b, -72
  %i.fd = tail call i32 @w2c_hermes_dtoa_fixedpoint(ptr noundef nonnull %0, i32 noundef %i.ew, double noundef %i.ec, i32 noundef 2, i32 noundef %.11383, i32 noundef %i.fa, i32 noundef %i.fb, i32 noundef %i.fc) #8 ; 2 uses
  %.val1257 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %.val1257, i64 %i.bn
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1384
  %.0.copyload.i1335 = load i32, ptr %i.ff, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1335) #8, !srcloc !19
  tail call void @w2c_hermes_void0x20llvh0x3A0x3ASmallString0x3C32u0x3E0x3A0x3Aappend0x3Cchar0x2A0x3E0x28char0x2A0x2C0x20char0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.ez, i32 noundef %i.fd, i32 noundef %.0.copyload.i1335) #8
  %.val1256 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %.val1256, i64 %i.ex
  %.0.copyload.i1336 = load i32, ptr %i.fg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1336) #8, !srcloc !19
  tail call void @w2c_hermes_g_freedtoa(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1336, i32 noundef %i.fd) #8
  %.val1255 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %.val1255, i64 %i.ex
  %.0.copyload.i1337 = load i32, ptr %i.fh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1337) #8, !srcloc !19
  tail call void @w2c_hermes_dalloc_done(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1337) #8
  %.val1254 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %.val1254, i64 %i.dv
  %.0.copyload.i1338 = load i32, ptr %i.fi, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1338) #8, !srcloc !19
  %i.fj = icmp ugt i32 %.11383, %.0.copyload.i1338
  br i1 %i.fj, label %.preheader1387, label %.loopexit1388

.preheader1387:                                   ; preds = %bb.ai, %bb.ak
  %.21139 = phi i32 [ %i.fs, %bb.ak ], [ %.0.copyload.i1338, %bb.ai ] ; 2 uses
  %.val1253 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %.val1253, i64 %i.bn
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1404
  %.0.copyload.i1339 = load i32, ptr %i.fl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1339) #8, !srcloc !19
  %.not1167 = icmp ugt i32 %.0.copyload.i1339, %.21139
  br i1 %.not1167, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.preheader1387
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ez, i32 noundef %i.dx, i32 noundef 0, i32 noundef 1) #8
  %.val1252 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %.val1252, i64 %i.dv
  %.0.copyload.i1340 = load i32, ptr %i.fm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1340) #8, !srcloc !19
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader1387, %bb.aj
  %.3 = phi i32 [ %.0.copyload.i1340, %bb.aj ], [ %.21139, %.preheader1387 ]
  %.val1251 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %.val1251, i64 %i.dy
  %.0.copyload.i1341 = load i32, ptr %i.fn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1341) #8, !srcloc !19
  %i.fo = add i32 %.0.copyload.i1341, %.3
  %i.fp = zext i32 %i.fo to i64
  %.val1316 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fq = getelementptr inbounds nuw i8, ptr %.val1316, i64 %i.fp
  store i8 48, ptr %i.fq, align 1
  %.val1250 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fr = getelementptr inbounds nuw i8, ptr %.val1250, i64 %i.dv
  %.0.copyload.i1342 = load i32, ptr %i.fr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1342) #8, !srcloc !19
  %i.fs = add i32 %.0.copyload.i1342, 1           ; 4 uses
  %.val1202 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %.val1202, i64 %i.dv
  store i32 %i.fs, ptr %i.ft, align 1
  %i.fu = icmp ult i32 %i.fs, %.11383
  br i1 %i.fu, label %.preheader1387, label %.loopexit1388

.loopexit1388:                                    ; preds = %bb.ak, %bb.ai
  %.31140 = phi i32 [ %.0.copyload.i1338, %bb.ai ], [ %i.fs, %bb.ak ] ; 2 uses
  %.val1249 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fv = getelementptr inbounds nuw i8, ptr %.val1249, i64 %i.bn
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1392
  %.0.copyload.i1343 = load i32, ptr %i.fw, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1343) #8, !srcloc !19
  %i.fx = add i32 %.0.copyload.i1343, -1          ; 3 uses
  %i.fy = icmp sgt i32 %.0.copyload.i1343, %.11383
  %i.fz = icmp slt i32 %.0.copyload.i1343, -5
  %.not1170 = or i1 %i.fy, %i.fz
  br i1 %.not1170, label %bb.al, label %bb.au

bb.al:                                            ; preds = %.loopexit1388
  %i.ga = icmp ugt i32 %.31140, 1
  br i1 %i.ga, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.val1248 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1248, i64 %i.dy
  %.0.copyload.i1344 = load i32, ptr %i.gb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1344) #8, !srcloc !19
  %.val1315 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %.val1315, i64 %i.bn
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 176
  store i8 46, ptr %i.gd, align 1
  %i.ge = add i32 %.0.copyload.i1344, 1
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorImpl0x3Cchar0x3E0x3A0x3Ainsert0x28char0x2A0x2C0x20char0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.ez, i32 noundef %i.ge, i32 noundef %i.ev) #8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.not1176 = icmp eq i32 %i.fx, 0
  %.val1201 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %.val1201, i64 %i.bn ; 2 uses
  br i1 %.not1176, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 172
  store i32 3, ptr %i.gg, align 1
  %i.gh = add nuw nsw i64 %i.bn, 168              ; 2 uses
  %.val1200 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gi = getelementptr inbounds nuw i8, ptr %.val1200, i64 %i.gh
  store i32 60167, ptr %i.gi, align 1
  %.val1304 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %.val1304, i64 %i.gh
  %.0.copyload.i1345 = load i64, ptr %i.gj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1345) #8, !srcloc !20
  %.val1282 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gk = getelementptr inbounds nuw i8, ptr %.val1282, i64 %i.bn
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  store i64 %.0.copyload.i1345, ptr %i.gl, align 1
  %i.gm = add i32 %i.b, -1432
  tail call void @w2c_hermes_llvh0x3A0x3ASmallString0x3C32u0x3E0x3A0x3Aappend0x28llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef %i.ez, i32 noundef %i.gm) #8
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 188
  store i64 4294967296, ptr %i.gn, align 1
  %.val1280 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %.val1280, i64 %i.bn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 180
  store i64 0, ptr %i.gp, align 1
  %.val1199 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %.val1199, i64 %i.bn
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 176
  store i32 261900, ptr %i.gr, align 1
  %.val1198 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %.val1198, i64 %i.bn
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 196
  store i32 %i.ez, ptr %i.gt, align 1
  tail call void @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3ASetBufferAndMode0x28char0x2A0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3Araw_ostream0x3A0x3ABufferKind0x29(ptr noundef nonnull %0, i32 noundef %i.ev) #8
  %.val1197 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %.val1197, i64 %i.bn
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 164
  store i32 %i.fx, ptr %i.gv, align 1
  %.val1196 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gw = getelementptr inbounds nuw i8, ptr %.val1196, i64 %i.bn
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 156
  store i32 269448, ptr %i.gx, align 1
  %.val1195 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gy = getelementptr inbounds nuw i8, ptr %.val1195, i64 %i.bn
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 160
  store i32 55674, ptr %i.gz, align 1
  %i.ha = add i32 %i.b, -1300
  tail call void @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Aoperator0x3C0x3C0x28llvh0x3A0x3Aformat_object_base0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.ev, i32 noundef %i.ha) #8
  %i.hb = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3A0x7Eraw_ostream0x280x290x2E1(ptr noundef nonnull %0, i32 noundef %i.ev) #8 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  br i1 %i.eb, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.val1247 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hc = getelementptr inbounds nuw i8, ptr %.val1247, i64 %i.dy
  %.0.copyload.i1346 = load i32, ptr %i.hc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1346) #8, !srcloc !19
  %.val1314 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1314, i64 %i.bn
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 176
  store i8 45, ptr %i.he, align 1
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorImpl0x3Cchar0x3E0x3A0x3Ainsert0x28char0x2A0x2C0x20char0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.ez, i32 noundef %.0.copyload.i1346, i32 noundef %i.ev) #8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.val1303 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hf = getelementptr inbounds nuw i8, ptr %.val1303, i64 %i.dy
  %.0.copyload.i1347 = load i64, ptr %i.hf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1347) #8, !srcloc !20
  %.val1279 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hg = getelementptr inbounds nuw i8, ptr %.val1279, i64 %i.bn
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 128
  store i64 %.0.copyload.i1347, ptr %i.hh, align 1
  %.val1278 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.val1278, i64 %i.bn
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store i64 %.0.copyload.i1347, ptr %i.hj, align 1
  %i.hk = add i32 %i.b, -1320
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AfunctionPrototypeBind0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.0.copyload.i104 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i104) #8, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABoundFunction0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x2C0x20unsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Areverse_iterator0x3Chermes0x3A0x3Avm0x3A0x3APinnedHermesValue0x20const0x2A0x3E0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef %.0, i32 noundef %.0.copyload.i104, i32 noundef %.0.copyload.i) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AfunctionPrototypeApply0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 10 uses
  %i.c = add i32 %i.b, -224                       ; 4 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 59 uses
  %i.e = zext i32 %i.c to i64                     ; 21 uses
  %.val467 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val467, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %3, ptr %i.g, align 1
  %i.h = zext i32 %3 to i64                       ; 6 uses
  %i.i = add nuw nsw i64 %i.h, 4                  ; 2 uses
  %.val486 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val486, i64 %i.i
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.k = add i32 %i.b, -28                        ; 2 uses
  %i.l = add i32 %i.b, -168                       ; 2 uses
  %i.m = zext i32 %i.k to i64
  %.val466 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val466, i64 %i.m
  store i32 %i.l, ptr %i.n, align 1
  %.val498 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val498, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 188
  store i64 17179869185, ptr %i.p, align 1
  %.val465 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val465, i64 %i.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  store i32 %i.k, ptr %i.r, align 1
  %.val464 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val464, i64 %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  store i32 %.0.copyload.i, ptr %i.t, align 1
  %.val463 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val463, i64 %i.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 220
  store i32 0, ptr %i.v, align 1
  %i.w = add i32 %i.b, -40
  %.val462 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val462, i64 %i.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  store i32 %i.w, ptr %i.y, align 1
  %.val461 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val461, i64 %i.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 212
  store i32 %i.l, ptr %i.aa, align 1
  %i.ab = add i32 %i.b, -176                      ; 2 uses
  %.val460 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val460, i64 %i.i
  store i32 %i.ab, ptr %i.ac, align 1
  %i.ad = zext i32 %4 to i64                      ; 2 uses
  %.val485 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val485, i64 %i.ad
  %.0.copyload.i507 = load i32, ptr %i.ae, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i507) #8, !srcloc !19
  %i.af = zext i32 %.0.copyload.i507 to i64
  %.val505 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val505, i64 %i.af
  %.0.copyload.i508 = load i64, ptr %i.ag, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i508) #8, !srcloc !20
  %i.ah = icmp ugt i64 %.0.copyload.i508, -844424930131969
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = and i64 %.0.copyload.i508, 4294967295   ; 2 uses
  %.val484 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val484, i64 %i.ai
  %.0.copyload.i509 = load i32, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i509) #8, !srcloc !19
  %i.ak = add i32 %.0.copyload.i509, -1140850688
  %i.al = icmp ult i32 %i.ak, 150994944
  br i1 %i.al, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.val504 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val504, i64 70384
  %.0.copyload.i510 = load i64, ptr %i.am, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i510) #8, !srcloc !20
  %i.an = icmp ugt i64 %.0.copyload.i510, -844424930131969
  br i1 %i.an, label %..thread_crit_edge, label %bb.d

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = and i64 %.0.copyload.i510, 4294967295
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.ai, %bb.b ] ; 2 uses
  %.0436535 = phi i32 [ 70384, %..thread_crit_edge ], [ %.0.copyload.i507, %bb.b ] ; 3 uses
  %.not = icmp eq i64 %.pre-phi, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread, %bb.c
  %.val459 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val459, i64 %i.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i32 0, ptr %i.ap, align 1
  %.val497 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val497, i64 %i.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i64 124554051585, ptr %i.ar, align 1
  %.val458 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val458, i64 %i.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i32 3, ptr %i.at, align 1
  %.val457 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val457, i64 %i.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 50664, ptr %i.av, align 1
  %i.aw = add i32 %i.b, -216
  %i.ax = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.aw) #8
  %i.ay = zext i32 %1 to i64
  br label %bb.v

bb.e:                                             ; preds = %.thread
  %.val483 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val483, i64 %i.ad
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.0.copyload.i511 = load i32, ptr %i.ba, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i511) #8, !srcloc !19
  %i.bb = icmp ugt i32 %.0.copyload.i511, 1
  br i1 %i.bb, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.bc = add i32 %.0.copyload.i507, -16          ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %.val503 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val503, i64 %i.bd
  %.0.copyload.i512 = load i64, ptr %i.be, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i512) #8, !srcloc !20
  %i.bf = ashr i64 %.0.copyload.i512, 47
  %i.bg = and i64 %i.bf, 4294967294
  %i.bh = icmp eq i64 %i.bg, 4294967284
  br i1 %i.bh, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = icmp ugt i64 %.0.copyload.i512, -844424930131969
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = and i64 %.0.copyload.i512, 4294967295
  %.val482 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val482, i64 %i.bj
  %.0.copyload.i513 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i513) #8, !srcloc !19
  %i.bl = add i32 %.0.copyload.i513, -1291845632
  %i.bm = icmp ult i32 %i.bl, -855638016
  %i.bn = select i1 %i.bm, i32 70384, i32 %i.bc
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0437 = phi i32 [ %i.bn, %bb.h ], [ 70384, %bb.g ] ; 2 uses
  %i.bo = zext i32 %.0437 to i64
  %.val502 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val502, i64 %i.bo
  %.0.copyload.i514 = load i64, ptr %i.bp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i514) #8, !srcloc !20
  %i.bq = icmp ugt i64 %.0.copyload.i514, -844424930131969
  %i.br = and i64 %.0.copyload.i514, 4294967295
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = and i1 %i.bq, %i.bs
  br i1 %i.bt, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val455 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val455, i64 %i.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i32 0, ptr %i.bv, align 1
  %.val496 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val496, i64 %i.e
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store i64 188978561025, ptr %i.bx, align 1
  %.val454 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val454, i64 %i.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i32 3, ptr %i.bz, align 1
  %.val453 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val453, i64 %i.e
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 20378, ptr %i.cb, align 1
  %i.cc = add i32 %i.b, -216
  %i.cd = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.cc) #8
  %i.ce = zext i32 %1 to i64
  br label %bb.v

bb.k:                                             ; preds = %bb.e
  %.not443 = icmp eq i32 %.0.copyload.i511, 1
  br i1 %.not443, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.cf = add i32 %.0.copyload.i507, -8
  %i.cg = zext i32 %i.cf to i64
  %.val501 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val501, i64 %i.cg
  %.0.copyload.i515 = load i64, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i515) #8, !srcloc !20
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.0 = phi i64 [ %.0.copyload.i515, %bb.l ], [ -1688849860263936, %bb.k ]
  %.val481 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val481, i64 %i.h
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 5592
  %.0.copyload.i516 = load i32, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i516) #8, !srcloc !19
  %i.ck = add nuw nsw i64 %i.h, 5596              ; 5 uses
  %.val480 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val480, i64 %i.ck
  %.0.copyload.i517 = load i32, ptr %i.cl, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i517) #8, !srcloc !19
  %i.cm = sub i32 %.0.copyload.i516, %.0.copyload.i517
  %i.cn = icmp ult i32 %i.cm, 312
  br i1 %i.cn, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = add i32 %3, 5616
  %i.cp = zext i32 %i.co to i64
  %.val479 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val479, i64 %i.cp
  %.0.copyload.i518 = load i32, ptr %i.cq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i518) #8, !srcloc !19
  %i.cr = add nuw nsw i64 %i.h, 5612              ; 2 uses
  %.val478 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val478, i64 %i.cr
  %.0.copyload.i519 = load i32, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i519) #8, !srcloc !19
  %i.ct = sub i32 %.0.copyload.i519, %i.c
  %i.cu = icmp ult i32 %.0.copyload.i518, %i.ct
  %i.cv = add i32 %i.b, -216                      ; 2 uses
  br i1 %i.cu, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %bb.n
  %i.cw = add i32 %3, 5620
  %i.cx = zext i32 %i.cw to i64
  %.val477 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val477, i64 %i.cx
  %.0.copyload.i520 = load i32, ptr %i.cy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i520) #8, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Aoscompat0x3A0x3Athread_stack_bounds0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.cv, i32 noundef %.0.copyload.i520) #8
  %.val476 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val476, i64 %i.e
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.0.copyload.i521 = load i32, ptr %i.da, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i521) #8, !srcloc !19
  %.val451 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val451, i64 %i.cr
  store i32 %.0.copyload.i521, ptr %i.db, align 1
  %.val475 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %.val475, i64 %i.e
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %.0.copyload.i522 = load i32, ptr %i.dd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i522) #8, !srcloc !19
  %.val450 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val450, i64 %i.h
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 5616
  store i32 %.0.copyload.i522, ptr %i.df, align 1
  %i.dg = sub i32 %.0.copyload.i521, %i.c
  %i.dh = icmp ugt i32 %i.dg, %.0.copyload.i522
  br i1 %i.dh, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val474 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val474, i64 %i.ck
  %.0.copyload.i523 = load i32, ptr %i.di, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i523) #8, !srcloc !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.n, %bb.p
  %.1 = phi i32 [ %.0.copyload.i523, %bb.p ], [ %.0.copyload.i517, %bb.n ] ; 2 uses
  %i.dj = add i32 %.1, 56
  %.val449 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val449, i64 %i.ck
  store i32 %i.dj, ptr %i.dk, align 1
  %.val506 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %.val506, i64 %i.h
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 5608
  %.0.copyload.i524 = load i32, ptr %i.dm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i524) #8, !srcloc !23
  %i.dn = zext i32 %.0.copyload.i524 to i64
  %i.do = zext i32 %.1 to i64                     ; 7 uses
  %.val495 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.val495, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store i64 0, ptr %i.dq, align 1
  %.val494 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %.val494, i64 %i.do
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  store i64 %i.dn, ptr %i.ds, align 1
  %.val493 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %.val493, i64 %i.do
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  store i64 0, ptr %i.du, align 1
  %.val492 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.val492, i64 %i.do
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store i64 -1125899906842624, ptr %i.dw, align 1
  %.val491 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.val491, i64 %i.do
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 -1688849860263936, ptr %i.dy, align 1
  %i.dz = or disjoint i64 %.pre-phi, -281474976710656
  %.val490 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %.val490, i64 %i.do
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 %i.dz, ptr %i.eb, align 1
  %.val489 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %.val489, i64 %i.do
  store i64 %.0, ptr %i.ec, align 1
  %i.ed = zext i32 %.0436535 to i64
  %.val473 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %.val473, i64 %i.ed
  %.0.copyload.i525 = load i32, ptr %i.ee, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i525) #8, !srcloc !19
  %i.ef = zext i32 %.0.copyload.i525 to i64
  %.val472 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eg = getelementptr inbounds nuw i8, ptr %.val472, i64 %i.ef
  %.0.copyload.i526 = load i32, ptr %i.eg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i526) #8, !srcloc !19
  %i.eh = lshr i32 %.0.copyload.i526, 22
  %i.ei = and i32 %i.eh, 1020
  %.val471 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %.val471, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 289808
  %.0.copyload.i527 = load i32, ptr %i.el, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i527) #8, !srcloc !19
  %i.em = zext i32 %.0.copyload.i527 to i64
  %.val470 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %.val470, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 60
  %.0.copyload.i528 = load i32, ptr %i.eo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i528) #8, !srcloc !19
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !26
  %i.er = icmp ult i32 %.0.copyload.i528, %i.eq
  br i1 %i.er, label %bb.q, label %.critedge, !prof !27

bb.q:                                             ; preds = %._crit_edge
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !28
  %i.eu = zext i32 %.0.copyload.i528 to i64
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.eu ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !30 ; 2 uses
  %.not444 = icmp eq ptr %i.ex, null
  br i1 %.not444, label %.critedge, label %bb.r, !prof !31

bb.r:                                             ; preds = %bb.q
  %i.ey = load ptr, ptr @w2c_hermes_t2, align 8, !tbaa !32 ; 4 uses
  %i.ez = load ptr, ptr %i.ev, align 8, !tbaa !33 ; 4 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %func_types_eq.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fb = icmp ne ptr %i.ey, null
  %i.fc = icmp ne ptr %i.ez, null
  %or.cond.i = and i1 %i.fb, %i.fc
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !34

func_types_eq.exit:                               ; preds = %bb.s
  %i.fd = load i128, ptr %i.ey, align 1
  %i.fe = load i128, ptr %i.ez, align 1
  %i.ff = xor i128 %i.fd, %i.fe
  %i.fg = getelementptr i8, ptr %i.ey, i64 16
  %i.fh = getelementptr i8, ptr %i.ez, i64 16
  %i.fi = load i128, ptr %i.fg, align 1
  %i.fj = load i128, ptr %i.fh, align 1
  %i.fk = xor i128 %i.fi, %i.fj
  %i.fl = or i128 %i.ff, %i.fk
  %i.fm = icmp ne i128 %i.fl, 0
  %i.fn = zext i1 %i.fm to i32
  %.not.i = icmp eq i32 %i.fn, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !35

.critedge:                                        ; preds = %bb.s, %bb.q, %._crit_edge, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.r, %func_types_eq.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !36
  tail call void %i.ex(ptr noundef %i.fp, i32 noundef %i.cv, i32 noundef %.0436535, i32 noundef %3) #8
  %.val469 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fq = getelementptr inbounds nuw i8, ptr %.val469, i64 %i.e
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.0.copyload.i529 = load i32, ptr %i.fr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i529) #8, !srcloc !19
  %.val500 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AdateTimeUTCString0x28double0x2C0x20double0x2C0x20llvh0x3A0x3ASmallVectorImpl0x3Cchar0x3E0x260x29:bb.a
  %i.ck = fadd double %.0.i, 4.000000e+00
  %i.cl = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.ck, double noundef 7.000000e+00) #8 ; 2 uses
  %i.cm = fcmp olt double %i.cl, 0.000000e+00
  %i.cn = select i1 %i.cm, double 7.000000e+00, double -0.000000e+00
  %i.co = fadd double %i.cl, %i.cn                ; 4 uses
  %i.cp = tail call noundef double @llvm.fabs.f64(double %i.co)
  %i.cq = fcmp olt double %i.cp, f0x41E0000000000000
  br i1 %i.cq, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cr = fcmp ule double %i.co, f0xC1E0000000200000
  %i.cs = fcmp uge double %i.co, f0x41E0000000000000
  %.not354 = or i1 %i.cr, %i.cs
  br i1 %.not354, label %bb.u, label %bb.v, !prof !31

bb.u:                                             ; preds = %bb.t
  tail call void @wasm_rt_trap(i32 noundef 2) #9
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ct = fptosi double %i.co to i32
  %i.cu = shl i32 %i.ct, 2
  %i.cv = add i32 %i.cu, 269472
  %i.cw = zext i32 %i.cv to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.v
  %.2 = phi i64 [ %i.cw, %bb.v ], [ 269472, %bb.s ]
  %.val375 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.val375, i64 %.2
  %.0.copyload.i389 = load i32, ptr %i.cx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i389) #8, !srcloc !19
  %.val367 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val367, i64 %i.e
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  store i32 %.0.copyload.i389, ptr %i.cz, align 1
  %i.da = add i32 %i.b, -24                       ; 4 uses
  tail call void @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Aoperator0x3C0x3C0x28llvh0x3A0x3Aformat_object_base0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef %i.da) #8
  %.val378 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val378, i64 %i.ce
  store i64 4294967296, ptr %i.db, align 1
  %.val377 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %.val377, i64 %i.ci
  store i64 0, ptr %i.dc, align 1
  %.val366 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %.val366, i64 %i.ad
  store i32 %3, ptr %i.dd, align 1
  %.val365 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val365, i64 %i.cg
  store i32 261900, ptr %i.de, align 1
  tail call void @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3ASetBufferAndMode0x28char0x2A0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3Araw_ostream0x3A0x3ABufferKind0x29(ptr noundef nonnull %0, i32 noundef %i.da) #8
  %i.df = fdiv double %1, 1.000000e+03            ; 3 uses
  %i.dg = fcmp uno double %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.x, label %bb.y, !prof !31

bb.x:                                             ; preds = %bb.w
  %i.dh = bitcast double %i.df to i64
  %i.di = or i64 %i.dh, 9221120237041090560
  %i.dj = bitcast i64 %i.di to double
  br label %wasm_floor.exit391

bb.y:                                             ; preds = %bb.w
  %i.dk = tail call double @llvm.floor.f64(double %i.df)
  br label %wasm_floor.exit391

wasm_floor.exit391:                               ; preds = %bb.x, %bb.y
  %.0.i390 = phi double [ %i.dj, %bb.x ], [ %i.dk, %bb.y ]
  %i.dl = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %.0.i390, double noundef 6.000000e+01) #8 ; 2 uses
  %i.dm = fcmp olt double %i.dl, 0.000000e+00
  %i.dn = select i1 %i.dm, double 6.000000e+01, double -0.000000e+00
  %i.do = fadd double %i.dl, %i.dn                ; 4 uses
  %i.dp = tail call noundef double @llvm.fabs.f64(double %i.do)
  %i.dq = fcmp olt double %i.dp, f0x41E0000000000000
  br i1 %i.dq, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %wasm_floor.exit391
  %i.dr = fcmp ule double %i.do, f0xC1E0000000200000
  %i.ds = fcmp uge double %i.do, f0x41E0000000000000
  %.not356 = or i1 %i.dr, %i.ds
  br i1 %.not356, label %bb.aa, label %bb.ab, !prof !31

bb.aa:                                            ; preds = %bb.z
  tail call void @wasm_rt_trap(i32 noundef 2) #9
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dt = fptosi double %i.do to i32
  br label %bb.ac

bb.ac:                                            ; preds = %wasm_floor.exit391, %bb.ab
  %.3 = phi i32 [ %i.dt, %bb.ab ], [ -2147483648, %wasm_floor.exit391 ]
  %.val364 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %.val364, i64 %i.e
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 52
  store i32 %.3, ptr %i.dv, align 1
  %i.dw = fdiv double %1, 6.000000e+04            ; 3 uses
  %i.dx = fcmp uno double %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.ad, label %bb.ae, !prof !31

bb.ad:                                            ; preds = %bb.ac
  %i.dy = bitcast double %i.dw to i64
  %i.dz = or i64 %i.dy, 9221120237041090560
  %i.ea = bitcast i64 %i.dz to double
  br label %wasm_floor.exit393

bb.ae:                                            ; preds = %bb.ac
  %i.eb = tail call double @llvm.floor.f64(double %i.dw)
  br label %wasm_floor.exit393

wasm_floor.exit393:                               ; preds = %bb.ad, %bb.ae
  %.0.i392 = phi double [ %i.ea, %bb.ad ], [ %i.eb, %bb.ae ]
  %i.ec = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %.0.i392, double noundef 6.000000e+01) #8 ; 2 uses
  %i.ed = fcmp olt double %i.ec, 0.000000e+00
  %i.ee = select i1 %i.ed, double 6.000000e+01, double -0.000000e+00
  %i.ef = fadd double %i.ec, %i.ee                ; 4 uses
  %i.eg = tail call noundef double @llvm.fabs.f64(double %i.ef)
  %i.eh = fcmp olt double %i.eg, f0x41E0000000000000
  br i1 %i.eh, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %wasm_floor.exit393
  %i.ei = fcmp ule double %i.ef, f0xC1E0000000200000
  %i.ej = fcmp uge double %i.ef, f0x41E0000000000000
  %.not358 = or i1 %i.ei, %i.ej
  br i1 %.not358, label %bb.ag, label %bb.ah, !prof !31

bb.ag:                                            ; preds = %bb.af
  tail call void @wasm_rt_trap(i32 noundef 2) #9
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ek = fptosi double %i.ef to i32
  br label %bb.ai

bb.ai:                                            ; preds = %wasm_floor.exit393, %bb.ah
  %.4 = phi i32 [ %i.ek, %bb.ah ], [ -2147483648, %wasm_floor.exit393 ]
  %.val363 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.val363, i64 %i.e
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  store i32 %.4, ptr %i.em, align 1
  %i.en = fdiv double %1, 3.600000e+06            ; 3 uses
  %i.eo = fcmp uno double %i.en, 0.000000e+00
  br i1 %i.eo, label %bb.aj, label %bb.ak, !prof !31

bb.aj:                                            ; preds = %bb.ai
  %i.ep = bitcast double %i.en to i64
  %i.eq = or i64 %i.ep, 9221120237041090560
  %i.er = bitcast i64 %i.eq to double
  br label %wasm_floor.exit395

bb.ak:                                            ; preds = %bb.ai
  %i.es = tail call double @llvm.floor.f64(double %i.en)
  br label %wasm_floor.exit395

wasm_floor.exit395:                               ; preds = %bb.aj, %bb.ak
  %.0.i394 = phi double [ %i.er, %bb.aj ], [ %i.es, %bb.ak ]
  %i.et = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %.0.i394, double noundef 2.400000e+01) #8 ; 2 uses
  %i.eu = fcmp olt double %i.et, 0.000000e+00
  %i.ev = select i1 %i.eu, double 2.400000e+01, double -0.000000e+00
  %i.ew = fadd double %i.et, %i.ev                ; 4 uses
  %i.ex = tail call noundef double @llvm.fabs.f64(double %i.ew)
  %i.ey = fcmp olt double %i.ex, f0x41E0000000000000
  br i1 %i.ey, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %wasm_floor.exit395
  %i.ez = fcmp ule double %i.ew, f0xC1E0000000200000
  %i.fa = fcmp uge double %i.ew, f0x41E0000000000000
  %.not360 = or i1 %i.ez, %i.fa
  br i1 %.not360, label %bb.am, label %bb.an, !prof !31

bb.am:                                            ; preds = %bb.al
  tail call void @wasm_rt_trap(i32 noundef 2) #9
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.fb = fptosi double %i.ew to i32
  br label %bb.ao

bb.ao:                                            ; preds = %wasm_floor.exit395, %bb.an
  %.5 = phi i32 [ %i.fb, %bb.an ], [ -2147483648, %wasm_floor.exit395 ]
  %.val362 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %.val362, i64 %i.e
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 44
  store i32 %.5, ptr %i.fd, align 1
  %.val361 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %.val361, i64 %i.e
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 36
  store i32 269632, ptr %i.ff, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  store i32 59110, ptr %i.fh, align 1
  %i.fi = add i32 %i.b, -44
  tail call void @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Aoperator0x3C0x3C0x28llvh0x3A0x3Aformat_object_base0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.da, i32 noundef %i.fi) #8
  %i.fj = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3A0x7Eraw_ostream0x280x290x2E1(ptr noundef nonnull %0, i32 noundef %i.da) #8 ; 0 uses
  %i.fk = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3A0x7Eraw_ostream0x280x290x2E1(ptr noundef nonnull %0, i32 noundef %i.n) #8 ; 0 uses
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!"p1 _ZTS7w2c_env", !7, i64 0}
!9 = !{!"p1 _ZTS18w2c_hermes__import", !7, i64 0}
!10 = !{!"p1 _ZTS28w2c_wasi__snapshot__preview1", !7, i64 0}
!11 = !{!"p1 omnipotent char", !7, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"_Bool", !4, i64 0}
!14 = !{!"", !11, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !13, i64 32}
!15 = !{!"", !7, i64 0, !5, i64 8, !5, i64 12}
!16 = !{!"w2c_hermes", !8, i64 0, !9, i64 8, !10, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !14, i64 40, !15, i64 80}
!17 = !{!16, !5, i64 24}
!18 = !{!14, !11, i64 0}
!19 = !{i64 2152821256}
!20 = !{i64 2152821682}
!21 = !{i64 2152823812}
!22 = !{i64 2152822960}
!23 = !{i64 2152826814}
!24 = !{i64 2152825524}
!25 = !{i64 2152824664}
!26 = !{!16, !5, i64 92}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!16, !7, i64 80}
!29 = !{!"", !11, i64 0, !7, i64 8, !7, i64 16}
!30 = !{!29, !7, i64 8}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = !{!11, !11, i64 0}
!33 = !{!29, !11, i64 0}
!34 = !{!"branch_weights", i32 4000000, i32 4001}
!35 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!36 = !{!29, !7, i64 16}
!37 = !{i64 2152822534}
!38 = !{!"llvm.loop.peeled.count", i32 1}
!39 = !{i64 2152824238}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!43 = distinct !{!43, !38}
!44 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
end_hunk_3
