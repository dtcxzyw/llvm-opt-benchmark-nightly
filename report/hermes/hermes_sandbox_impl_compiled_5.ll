inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmathHypot0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %.val491 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val491, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i32 %3, ptr %i.g, align 1
  %i.h = zext i32 %3 to i64
  %i.i = add nuw nsw i64 %i.h, 4                  ; 2 uses
  %.val508 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val508, i64 %i.i
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.k = add i32 %i.b, -28                        ; 2 uses
  %i.l = add i32 %i.b, -168                       ; 3 uses
  %i.m = zext i32 %i.k to i64
  %.val490 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val490, i64 %i.m
  store i32 %i.l, ptr %i.n, align 1
  %.val514 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val514, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 204
  store i64 17179869185, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %i.e, 200                ; 2 uses
  %.val489 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val489, i64 %i.q
  store i32 %i.k, ptr %i.r, align 1
  %.val488 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val488, i64 %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 68
  store i32 %.0.copyload.i, ptr %i.t, align 1
  %i.u = add nuw nsw i64 %i.e, 236                ; 3 uses
  %.val487 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val487, i64 %i.u
  store i32 0, ptr %i.v, align 1
  %i.w = add i32 %i.b, -40
  %i.x = add nuw nsw i64 %i.e, 232                ; 2 uses
  %.val486 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val486, i64 %i.x
  store i32 %i.w, ptr %i.y, align 1
  %i.z = add nuw nsw i64 %i.e, 228                ; 3 uses
  %.val485 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val485, i64 %i.z
  store i32 %i.l, ptr %i.aa, align 1
  %i.ab = add i32 %i.b, -176                      ; 2 uses
  %.val484 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val484, i64 %i.i
  store i32 %i.ab, ptr %i.ac, align 1
  %i.ad = add nuw nsw i64 %i.e, 20                ; 6 uses
  %.val513 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val513, i64 %i.ad
  store i64 17179869184, ptr %i.ae, align 1
  %i.af = add i32 %i.b, -208                      ; 4 uses
  %i.ag = add nuw nsw i64 %i.e, 16                ; 4 uses
  %.val483 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val483, i64 %i.ag
  store i32 %i.af, ptr %i.ah, align 1
  %i.ai = zext i32 %4 to i64                      ; 3 uses
  %.val507 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val507, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.0.copyload.i520 = load i32, ptr %i.ak, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i520) #8, !srcloc !19
  %i.al = icmp ugt i32 %.0.copyload.i520, 4
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.am = add i32 %i.b, -224                      ; 2 uses
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.am, i32 noundef %i.af, i32 noundef %.0.copyload.i520, i32 noundef 8) #8
  %.val506 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.val506, i64 %i.u
  %.0.copyload.i521 = load i32, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i521) #8, !srcloc !19
  %.val505 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val505, i64 %i.z
  %.0.copyload.i522 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i522) #8, !srcloc !19
  %.val504 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val504, i64 %i.ai
  %.0.copyload.i523 = load i32, ptr %i.ap, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i523) #8, !srcloc !19
  %i.aq = shl i32 %.0.copyload.i520, 3
  %i.ar = sub i32 %.0.copyload.i523, %i.aq
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %.0.copyload.i520, 0
  br i1 %.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val503 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val503, i64 %i.ai
  %.0.copyload.i524 = load i32, ptr %i.as, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i524) #8, !srcloc !19
  %i.at = shl nuw nsw i32 %.0.copyload.i520, 3
  %i.au = sub i32 %.0.copyload.i524, %i.at
  %.pre = add i32 %i.b, -224
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.pre-phi = phi i32 [ %.pre, %bb.d ], [ %i.am, %bb.b ]
  %.0456 = phi i32 [ %.0.copyload.i524, %bb.d ], [ %.0.copyload.i523, %bb.b ]
  %.0455 = phi i32 [ 0, %bb.d ], [ %.0.copyload.i521, %bb.b ] ; 2 uses
  %.0454 = phi i32 [ %i.l, %bb.d ], [ %.0.copyload.i522, %bb.b ]
  %.0446 = phi i32 [ %i.au, %bb.d ], [ %i.ar, %bb.b ]
  %i.av = shl i32 %.0455, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.e
  %.1457 = phi i32 [ %.0456, %bb.e ], [ %i.be, %bb.j ]
  %.0452 = phi i32 [ 0, %bb.e ], [ %i.bu, %bb.j ]
  %.0449 = phi double [ 0.000000e+00, %bb.e ], [ %i.ce, %bb.j ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.e ], [ %i.bt, %bb.j ]
  %.val502 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val502, i64 %i.q
  %.0.copyload.i525 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i525) #8, !srcloc !19
  %i.ax = add i32 %.0.copyload.i525, %i.av
  %i.ay = zext i32 %i.ax to i64
  %.val501 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val501, i64 %i.ay
  %.0.copyload.i526 = load i32, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i526) #8, !srcloc !19
  %.val482 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val482, i64 %i.u
  store i32 %.0455, ptr %i.ba, align 1
  %.val481 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val481, i64 %i.z
  store i32 %.0454, ptr %i.bb, align 1
  %i.bc = add i32 %.0.copyload.i526, 128
  %.val480 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val480, i64 %i.x
  store i32 %i.bc, ptr %i.bd, align 1
  %i.be = add i32 %.1457, -8                      ; 3 uses
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoNumber_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.c, i32 noundef %3, i32 noundef %i.be) #8
  %.val500 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val500, i64 %i.e
  %.0.copyload.i527 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i527) #8, !srcloc !19
  %.not465 = icmp eq i32 %.0.copyload.i527, 0
  br i1 %.not465, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = zext i32 %1 to i64
  %.val479 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val479, i64 %i.bg
  store i32 0, ptr %i.bh, align 1
  br label %bb.y

bb.h:                                             ; preds = %bb.f
  %.val519 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val519, i64 %i.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.0.copyload.i528 = load double, ptr %i.bj, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i528) #8, !srcloc !37
  %i.bk = fcmp uno double %.0.copyload.i528, 0.000000e+00
  %i.bl = zext i1 %i.bk to i32
  %i.bm = tail call noundef double @llvm.fabs.f64(double %.0.copyload.i528) ; 3 uses
  %i.bn = fcmp oeq double %i.bm, +inf
  %i.bo = zext i1 %i.bn to i32
  %.val499 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val499, i64 %i.ad
  %.0.copyload.i529 = load i32, ptr %i.bp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i529) #8, !srcloc !19
  %.val498 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val498, i64 %i.e
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.0.copyload.i530 = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i530) #8, !srcloc !19
  %.not466 = icmp ult i32 %.0.copyload.i529, %.0.copyload.i530
  br i1 %.not466, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.pre-phi, i32 noundef %i.af, i32 noundef 0, i32 noundef 8) #8
  %.val497 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val497, i64 %i.ad
  %.0.copyload.i531 = load i32, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i531) #8, !srcloc !19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0453 = phi i32 [ %.0.copyload.i531, %bb.i ], [ %.0.copyload.i529, %bb.h ]
  %i.bt = or i32 %.0, %i.bl                       ; 2 uses
  %i.bu = or i32 %.0452, %i.bo                    ; 2 uses
  %.val496 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val496, i64 %i.ag
  %.0.copyload.i532 = load i32, ptr %i.bv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i532) #8, !srcloc !19
  %i.bw = shl i32 %.0453, 3
  %i.bx = add i32 %.0.copyload.i532, %i.bw
  %i.by = zext i32 %i.bx to i64
  %.val515 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val515, i64 %i.by
  store double %.0.copyload.i528, ptr %i.bz, align 1
  %.val495 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val495, i64 %i.ad
  %.0.copyload.i533 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i533) #8, !srcloc !19
  %i.cb = add i32 %.0.copyload.i533, 1
  %.val478 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.val478, i64 %i.ad
  store i32 %i.cb, ptr %i.cc, align 1
  %i.cd = fcmp ogt double %.0449, %i.bm
  %i.ce = select i1 %i.cd, double %.0449, double %i.bm ; 5 uses
  %.not467 = icmp eq i32 %i.be, %.0446
  br i1 %.not467, label %bb.k, label %bb.f

bb.k:                                             ; preds = %bb.j
  %.not468 = icmp eq i32 %i.bu, 0
  br i1 %.not468, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = zext i32 %1 to i64                      ; 2 uses
  %.val512 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val512, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 9218868437227405312, ptr %i.ch, align 1
  %.val477 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val477, i64 %i.cf
  store i32 1, ptr %i.ci, align 1
  br label %bb.y

bb.m:                                             ; preds = %bb.k
  %.not469 = icmp eq i32 %i.bt, 0
  br i1 %.not469, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = zext i32 %1 to i64                      ; 2 uses
  %.val511 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val511, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 9221120237041090560, ptr %i.cl, align 1
  %.val476 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val476, i64 %i.cj
  store i32 1, ptr %i.cm, align 1
  br label %bb.y

bb.o:                                             ; preds = %bb.m
  %i.cn = fcmp une double %i.ce, 0.000000e+00
  br i1 %i.cn, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  %i.co = zext i32 %1 to i64                      ; 2 uses
  %.val510 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val510, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 0, ptr %i.cq, align 1
  %.val475 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val475, i64 %i.co
  store i32 1, ptr %i.cr, align 1
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %.val494 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val494, i64 %i.ad
  %.0.copyload.i534 = load i32, ptr %i.cs, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i534) #8, !srcloc !19
  %.not470 = icmp eq i32 %.0.copyload.i534, 0
  br i1 %.not470, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.q
  %i.ct = zext i32 %1 to i64                      ; 2 uses
  %.val541 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val541, i64 %i.ct
  store i32 1, ptr %i.cu, align 1
  br label %bb.x

bb.r:                                             ; preds = %bb.q
  %.val493 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val493, i64 %i.ag
  %.0.copyload.i535 = load i32, ptr %i.cv, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i535) #8, !srcloc !19
  %i.cw = and i32 %.0.copyload.i534, 1
  %.not471 = icmp eq i32 %i.cw, 0
  br i1 %.not471, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = zext i32 %.0.copyload.i535 to i64
  %.val518 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val518, i64 %i.cx
  %.0.copyload.i536 = load double, ptr %i.cy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i536) #8, !srcloc !37
  %i.cz = fdiv double %.0.copyload.i536, %i.ce    ; 2 uses
  %i.da = fmul double %i.cz, %i.cz                ; 3 uses
  %i.db = fsub double %i.da, %i.da
  %i.dc = add i32 %.0.copyload.i535, 8
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.0450 = phi double [ %i.da, %bb.s ], [ 0.000000e+00, %bb.r ] ; 2 uses
  %.0447 = phi double [ %i.db, %bb.s ], [ 0.000000e+00, %bb.r ]
  %.1 = phi i32 [ %i.dc, %bb.s ], [ %.0.copyload.i535, %bb.r ]
  %i.dd = and i32 %.0.copyload.i534, 536870911
  %.not472 = icmp eq i32 %i.dd, 1
  br i1 %.not472, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = shl i32 %.0.copyload.i534, 3
  %i.df = add i32 %.0.copyload.i535, %i.de
  %5 = insertelement <2 x double> poison, double %i.ce, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.2458 = phi i32 [ %.1, %bb.u ], [ %i.do, %bb.v ] ; 2 uses
  %.1451 = phi double [ %.0450, %bb.u ], [ %i.dl, %bb.v ] ; 2 uses
  %.1448 = phi double [ %.0447, %bb.u ], [ %i.dn, %bb.v ]
  %i.dg = zext i32 %.2458 to i64                  ; 2 uses
  %.val517 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %.val517, i64 %i.dg
  %.0.copyload.i537 = load double, ptr %i.dh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i537) #8, !srcloc !37
  %.val516 = load ptr, ptr %i.d, align 8, !tbaa !18
  %7 = getelementptr inbounds nuw i8, ptr %.val516, i64 %i.dg
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.0.copyload.i538 = load double, ptr %8, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i538) #8, !srcloc !37
  %9 = insertelement <2 x double> poison, double %.0.copyload.i537, i64 0
  %10 = insertelement <2 x double> %9, double %.0.copyload.i538, i64 1
  %11 = fdiv <2 x double> %10, %6                 ; 2 uses
  %12 = fmul <2 x double> %11, %11                ; 2 uses
  %13 = extractelement <2 x double> %12, i64 0
  %14 = fsub double %13, %.1448                   ; 2 uses
  %15 = fadd double %.1451, %14                   ; 3 uses
  %i.di = fsub double %.1451, %15
  %i.dj = fadd double %14, %i.di
  %16 = extractelement <2 x double> %12, i64 1
  %i.dk = fadd double %16, %i.dj                  ; 2 uses
  %i.dl = fadd double %15, %i.dk                  ; 3 uses
  %i.dm = fsub double %i.dl, %15
  %i.dn = fsub double %i.dm, %i.dk
  %i.do = add i32 %.2458, 16                      ; 2 uses
  %.not473 = icmp eq i32 %i.do, %i.df
  br i1 %.not473, label %.loopexit, label %bb.v

.loopexit:                                        ; preds = %bb.v, %bb.t
  %.2 = phi double [ %.0450, %bb.t ], [ %i.dl, %bb.v ] ; 3 uses
  %i.dp = zext i32 %1 to i64                      ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dp
  store i32 1, ptr %i.dq, align 1
  %i.dr = fcmp uno double %.2, 0.000000e+00
  br i1 %i.dr, label %bb.w, label %bb.x, !prof !43

bb.w:                                             ; preds = %.loopexit
  %i.ds = bitcast double %.2 to i64
  %i.dt = or i64 %i.ds, 9221120237041090560
  %i.du = bitcast i64 %i.dt to double
  br label %wasm_sqrt.exit

bb.x:                                             ; preds = %.thread, %.loopexit
  %i.dv = phi i64 [ %i.ct, %.thread ], [ %i.dp, %.loopexit ]
  %.2542 = phi double [ 0.000000e+00, %.thread ], [ %.2, %.loopexit ]
  %i.dw = tail call double @sqrt(double noundef %.2542) #8, !tbaa !3
  br label %wasm_sqrt.exit

wasm_sqrt.exit:                                   ; preds = %bb.w, %bb.x
  %i.dx = phi i64 [ %i.dp, %bb.w ], [ %i.dv, %bb.x ]
  %.0.i = phi double [ %i.du, %bb.w ], [ %i.dw, %bb.x ]
  %i.dy = fmul double %i.ce, %.0.i                ; 2 uses
  %i.dz = bitcast double %i.dy to i64
  %i.ea = fcmp uno double %i.dy, 0.000000e+00
  %i.eb = select i1 %i.ea, i64 9221120237041090560, i64 %i.dz
  %.val509 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %.val509, i64 %i.dx
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.eb, ptr %i.ed, align 1
  br label %bb.y

bb.y:                                             ; preds = %wasm_sqrt.exit, %bb.p, %bb.n, %bb.l, %bb.g
  %.val492 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %.val492, i64 %i.ag
  %.0.copyload.i539 = load i32, ptr %i.ee, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i539) #8, !srcloc !19
  %.not474 = icmp eq i32 %i.af, %.0.copyload.i539
  br i1 %.not474, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i539) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.ab) #8
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmathFround0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %.val56 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val56, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.g = add i32 %.0.copyload.i, -8
  %.val55 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val55, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i59 = load i32, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59) #8, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i59, 0
  %i.j = select i1 %.not, i32 70392, i32 %i.g
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoNumber_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %i.c, i32 noundef %3, i32 noundef %i.j) #8
  %i.k = zext i32 %i.c to i64                     ; 2 uses
  %.val54 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val54, i64 %i.k
  %.0.copyload.i60 = load i32, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i60) #8, !srcloc !19
  %.not53 = icmp eq i32 %.0.copyload.i60, 0
  br i1 %.not53, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = zext i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val58 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val58, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i61 = load double, ptr %i.n, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i61) #8, !srcloc !37
  %i.o = fcmp uno double %.0.copyload.i61, 0.000000e+00 ; 2 uses
  br i1 %i.o, label %wasm_quiet.exit.thread, label %wasm_quiet.exit, !prof !31

wasm_quiet.exit.thread:                           ; preds = %bb.b
  %i.p = bitcast double %.0.copyload.i61 to i64
  %i.q = or i64 %i.p, 9221120237041090560
  %i.r = bitcast i64 %i.q to double
  %i.s = fptrunc double %i.r to float
  %i.t = bitcast float %i.s to i32
  %i.u = or i32 %i.t, 2143289344
  %i.v = bitcast i32 %i.u to float
  br label %wasm_quietf.exit

wasm_quiet.exit:                                  ; preds = %bb.b
  %i.w = fptrunc double %.0.copyload.i61 to float
  br label %wasm_quietf.exit

wasm_quietf.exit:                                 ; preds = %wasm_quiet.exit, %wasm_quiet.exit.thread
  %.0.i62 = phi float [ %i.v, %wasm_quiet.exit.thread ], [ %i.w, %wasm_quiet.exit ]
  %i.x = fpext float %.0.i62 to double
  %i.y = bitcast double %i.x to i64
  %i.z = select i1 %i.o, i64 9221120237041090560, i64 %i.y
  %i.aa = zext i32 %1 to i64                      ; 2 uses
  %.val57 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val57, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.z, ptr %i.ac, align 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %wasm_quietf.exit
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.aa, %wasm_quietf.exit ]
  %.0 = phi i32 [ 0, %._crit_edge ], [ 1, %wasm_quietf.exit ]
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 %.pre-phi
  store i32 %.0, ptr %i.ad, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmathClz320x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %.val65 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val65, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.g = add i32 %.0.copyload.i, -8
  %.val64 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val64, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i68 = load i32, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i68) #8, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i68, 0
  %i.j = select i1 %.not, i32 70392, i32 %i.g
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoUInt32_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %i.c, i32 noundef %3, i32 noundef %i.j) #8
  %i.k = zext i32 %i.c to i64                     ; 2 uses
  %.val63 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val63, i64 %i.k
  %.0.copyload.i69 = load i32, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i69) #8, !srcloc !19
  %.not61 = icmp eq i32 %.0.copyload.i69, 0
  br i1 %.not61, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = zext i32 %1 to i64
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %.val67 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val67, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i70 = load double, ptr %i.n, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i70) #8, !srcloc !37
  %i.o = fcmp olt double %.0.copyload.i70, f0x41F0000000000000
  %i.p = fcmp oge double %.0.copyload.i70, 0.000000e+00
  %i.q = and i1 %i.o, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = fptoui double %.0.copyload.i70 to i32
  %i.s = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.r, i1 false)
  %i.t = uitofp nneg i32 %i.s to double
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi double [ %i.t, %bb.c ], [ 3.200000e+01, %bb.b ]
  %i.u = zext i32 %1 to i64                       ; 2 uses
  %.val66 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val66, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store double %.0, ptr %i.w, align 1
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.u, %bb.d ]
  %.060 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.d ]
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_0
