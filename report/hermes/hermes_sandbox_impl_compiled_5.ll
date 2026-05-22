inline.NumInlined: 16806
inline.NumDeleted: 26
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3Arequire0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
bb.bd:                                            ; preds = %bb.az
  %.val3183.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.or = getelementptr inbounds nuw i8, ptr %.val3183.a, i64 %i.oa
  %.0.copyload.i3462 = load i32, ptr %i.or, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3462) #8, !srcloc !19
  %i.os = zext i32 %.0.copyload.i3462 to i64      ; 2 uses
  %.val3182.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ot = getelementptr inbounds nuw i8, ptr %.val3182.a, i64 %i.os
  %.0.copyload.i3463 = load i32, ptr %i.ot, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3463) #8, !srcloc !19
  %.val3181.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ou = getelementptr inbounds nuw i8, ptr %.val3181.a, i64 %i.os
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  %.0.copyload.i3464 = load i32, ptr %i.ov, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3464) #8, !srcloc !19
  br label %bb.bg

bb.be:                                            ; preds = %bb.az
  %.val3180.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ow = getelementptr inbounds nuw i8, ptr %.val3180.a, i64 %i.oa
  %.0.copyload.i3465 = load i32, ptr %i.ow, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3465) #8, !srcloc !19
  %i.ox = zext i32 %.0.copyload.i3465 to i64      ; 2 uses
  %.val3179.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oy = getelementptr inbounds nuw i8, ptr %.val3179.a, i64 %i.ox
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 4
  %.0.copyload.i3466 = load i32, ptr %i.oz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3466) #8, !srcloc !19
  %.val3178.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pa = getelementptr inbounds nuw i8, ptr %.val3178.a, i64 %i.ox
  %.0.copyload.i3467 = load i32, ptr %i.pa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3467) #8, !srcloc !19
  br label %bb.bg

bb.bf:                                            ; preds = %bb.az, %bb.ay
  %i.pb = add i32 %i.nr, -140
  tail call void @w2c_hermes_llvh0x3A0x3ATwine0x3A0x3AtoVector0x28llvh0x3A0x3ASmallVectorImpl0x3Cchar0x3E0x260x290x20const(ptr noundef nonnull %0, i32 noundef %i.nz, i32 noundef %i.pb) #8
  %.val3177.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pc = getelementptr inbounds nuw i8, ptr %.val3177.a, i64 %i.nu
  %.0.copyload.i3468 = load i32, ptr %i.pc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3468) #8, !srcloc !19
  %.val3176.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pd = getelementptr inbounds nuw i8, ptr %.val3176.a, i64 %i.nx
  %.0.copyload.i3469 = load i32, ptr %i.pd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3469) #8, !srcloc !19
  br label %bb.bg

bb.bg:                                            ; preds = %bb.ba, %bb.az, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb
  %.02892 = phi i32 [ %.0.copyload.i3469, %bb.bf ], [ 0, %bb.az ], [ %.0.copyload.i3467, %bb.be ], [ %.0.copyload.i3463, %bb.bd ], [ %.0.copyload.i3457, %bb.bb ], [ %i.oq, %bb.bc ], [ 0, %bb.ba ]
  %.02876 = phi i32 [ %.0.copyload.i3468, %bb.bf ], [ 0, %bb.az ], [ %.0.copyload.i3466, %bb.be ], [ %.0.copyload.i3464, %bb.bd ], [ %i.og, %bb.bb ], [ %i.oo, %bb.bc ], [ 0, %bb.ba ]
  %.val3051.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pe = getelementptr inbounds nuw i8, ptr %.val3051.a, i64 %i.nt
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 20
  store i32 %.02876, ptr %i.pf, align 1
  %i.pg = add nuw nsw i64 %i.nt, 16               ; 2 uses
  %.val3050.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ph = getelementptr inbounds nuw i8, ptr %.val3050.a, i64 %i.pg
  store i32 %.02892, ptr %i.ph, align 1
  %.val3315.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pi = getelementptr inbounds nuw i8, ptr %.val3315.a, i64 %i.pg
  %.0.copyload.i3470 = load i64, ptr %i.pi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3470) #8, !srcloc !20
  %i.pj = add nuw nsw i64 %i.nt, 8                ; 2 uses
  %.val3254.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pk = getelementptr inbounds nuw i8, ptr %.val3254.a, i64 %i.pj
  store i64 %.0.copyload.i3470, ptr %i.pk, align 1
  %i.pl = load i32, ptr %i.a, align 8, !tbaa !7   ; 4 uses
  %i.pm = add i32 %i.pl, -64                      ; 3 uses
  store i32 %i.pm, ptr %i.a, align 8, !tbaa !7
  %.val3314.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pn = getelementptr inbounds nuw i8, ptr %.val3314.a, i64 %i.pj
  %.0.copyload.i3471 = load i64, ptr %i.pn, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3471) #8, !srcloc !20
  %i.po = zext i32 %i.pm to i64                   ; 9 uses
  %.val3253.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pp = getelementptr inbounds nuw i8, ptr %.val3253.a, i64 %i.po
  store i64 %.0.copyload.i3471, ptr %i.pp, align 1
  %.val3252.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pq = getelementptr inbounds nuw i8, ptr %.val3252.a, i64 %i.po
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 32
  store i64 %.0.copyload.i3471, ptr %i.pr, align 1
  %i.ps = add i32 %i.pl, -24
  tail call void @w2c_hermes_llvh0x3A0x3Asys0x3A0x3Apath0x3A0x3Abegin0x28llvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Asys0x3A0x3Apath0x3A0x3AStyle0x29(ptr noundef nonnull %0, i32 noundef %i.ps, i32 noundef %i.pm) #8
  %i.pt = add nuw nsw i64 %i.po, 56               ; 2 uses
  %.val3313.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pu = getelementptr inbounds nuw i8, ptr %.val3313.a, i64 %i.pt
  %.0.copyload.i3472 = load i64, ptr %i.pu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3472) #8, !srcloc !20
  %.val3251.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pv = getelementptr inbounds nuw i8, ptr %.val3251.a, i64 %i.po
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  store i64 %.0.copyload.i3472, ptr %i.pw, align 1
  %i.px = add nuw nsw i64 %i.po, 48               ; 4 uses
  %.val3312.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.py = getelementptr inbounds nuw i8, ptr %.val3312.a, i64 %i.px
  %.0.copyload.i3473 = load i64, ptr %i.py, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3473) #8, !srcloc !20
  %.val3250.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pz = getelementptr inbounds nuw i8, ptr %.val3250.a, i64 %i.po
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  store i64 %.0.copyload.i3473, ptr %i.qa, align 1
  %i.qb = add nuw nsw i64 %i.po, 40               ; 2 uses
  %.val3311.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qc = getelementptr inbounds nuw i8, ptr %.val3311.a, i64 %i.qb
  %.0.copyload.i3474 = load i64, ptr %i.qc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3474) #8, !srcloc !20
  %.val3249.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qd = getelementptr inbounds nuw i8, ptr %.val3249.a, i64 %i.po
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  store i64 %.0.copyload.i3474, ptr %i.qe, align 1
  %i.qf = lshr i64 %.0.copyload.i3471, 32
  %i.qg = trunc nuw i64 %i.qf to i32              ; 2 uses
  %i.qh = trunc i64 %.0.copyload.i3471 to i32     ; 2 uses
  %.val3175.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qi = getelementptr inbounds nuw i8, ptr %.val3175.a, i64 %i.qb
  %.0.copyload.i3475 = load i32, ptr %i.qi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3475) #8, !srcloc !19
  %i.qj = icmp eq i32 %.0.copyload.i3475, %i.qh
  br i1 %i.qj, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %.val3174.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qk = getelementptr inbounds nuw i8, ptr %.val3174.a, i64 %i.pt
  %.0.copyload.i3476 = load i32, ptr %i.qk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3476) #8, !srcloc !19
  %i.ql = icmp eq i32 %.0.copyload.i3476, %i.qg
  br i1 %i.ql, label %bb.bq, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.val3173.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qm = getelementptr inbounds nuw i8, ptr %.val3173.a, i64 %i.po
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 52
  %.0.copyload.i3477 = load i32, ptr %i.qn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3477) #8, !srcloc !19
  %i.qo = icmp ult i32 %.0.copyload.i3477, 3
  br i1 %i.qo, label %.critedge, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.val3172.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qp = getelementptr inbounds nuw i8, ptr %.val3172.a, i64 %i.px
  %.0.copyload.i3478 = load i32, ptr %i.qp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3478) #8, !srcloc !19
  %i.qq = zext i32 %.0.copyload.i3478 to i64      ; 2 uses
  %.val3349.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qr = getelementptr inbounds nuw i8, ptr %.val3349.a, i64 %i.qq
  %.0.copyload.i3479 = load i8, ptr %i.qr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3479) #8, !srcloc !21
  %.not2963 = icmp eq i8 %.0.copyload.i3479, 47
  br i1 %.not2963, label %bb.bk, label %.critedge

bb.bk:                                            ; preds = %bb.bj
  %.val3348.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qs = getelementptr inbounds nuw i8, ptr %.val3348.a, i64 %i.qq
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 1
  %.0.copyload.i3480 = load i8, ptr %i.qt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3480) #8, !srcloc !21
  %.not3615 = icmp eq i8 %.0.copyload.i3480, 47
  br i1 %.not3615, label %bb.bl, label %.critedge

bb.bl:                                            ; preds = %bb.bk
  %i.qu = add i32 %i.pl, -56
  %i.qv = tail call i32 @w2c_hermes_llvh0x3A0x3Asys0x3A0x3Apath0x3A0x3Aconst_iterator0x3A0x3Aoperator0x2B0x2B0x280x29(ptr noundef nonnull %0, i32 noundef %i.qu) #8
  %i.qw = zext i32 %i.qv to i64                   ; 3 uses
  %.val3171.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qx = getelementptr inbounds nuw i8, ptr %.val3171.a, i64 %i.qw
  %.0.copyload.i3481 = load i32, ptr %i.qx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3481) #8, !srcloc !19
  %i.qy = icmp eq i32 %.0.copyload.i3481, %i.qh
  br i1 %i.qy, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %.val3170.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qz = getelementptr inbounds nuw i8, ptr %.val3170.a, i64 %i.qw
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %.0.copyload.i3482 = load i32, ptr %i.ra, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3482) #8, !srcloc !19
  %i.rb = icmp eq i32 %.0.copyload.i3482, %i.qg
  br i1 %i.rb, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.rc = add nuw nsw i64 %i.qw, 8                ; 2 uses
  %.val3169.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rd = getelementptr inbounds nuw i8, ptr %.val3169.a, i64 %i.rc
  %.0.copyload.i3483 = load i32, ptr %i.rd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3483) #8, !srcloc !19
  %i.re = zext i32 %.0.copyload.i3483 to i64
  %.val3347.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rf = getelementptr inbounds nuw i8, ptr %.val3347.a, i64 %i.re
  %.0.copyload.i3484 = load i8, ptr %i.rf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3484) #8, !srcloc !21
  %.not2965 = icmp eq i8 %.0.copyload.i3484, 47
  br i1 %.not2965, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %.val3310.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rg = getelementptr inbounds nuw i8, ptr %.val3310.a, i64 %i.rc
  %.0.copyload.i3485 = load i64, ptr %i.rg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3485) #8, !srcloc !20
  br label %bb.bq

.critedge:                                        ; preds = %bb.bj, %bb.bi, %bb.bk
  %.val3168.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rh = getelementptr inbounds nuw i8, ptr %.val3168.a, i64 %i.px
  %.0.copyload.i3486 = load i32, ptr %i.rh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3486) #8, !srcloc !19
  %i.ri = zext i32 %.0.copyload.i3486 to i64
  %.val3346.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rj = getelementptr inbounds nuw i8, ptr %.val3346.a, i64 %i.ri
  %.0.copyload.i3487 = load i8, ptr %i.rj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3487) #8, !srcloc !21
  %.not2966 = icmp eq i8 %.0.copyload.i3487, 47
  br i1 %.not2966, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.critedge
  %.val3309.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rk = getelementptr inbounds nuw i8, ptr %.val3309.a, i64 %i.px
  %.0.copyload.i3488 = load i64, ptr %i.rk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3488) #8, !srcloc !20
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bm, %bb.bn, %.critedge, %bb.bh, %bb.bp, %bb.bo
  %.12870 = phi i64 [ 0, %bb.bh ], [ %.0.copyload.i3485, %bb.bo ], [ 0, %.critedge ], [ %.0.copyload.i3488, %bb.bp ], [ 0, %bb.bn ], [ 0, %bb.bm ]
  %.val3248.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rl = getelementptr inbounds nuw i8, ptr %.val3248.a, i64 %i.nt
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 28
  store i64 %.12870, ptr %i.rm, align 1
  store i32 %i.pl, ptr %i.a, align 8, !tbaa !7
  %.val3167.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rn = getelementptr inbounds nuw i8, ptr %.val3167.a, i64 %i.nt
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  %.0.copyload.i3489 = load i32, ptr %i.ro, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3489) #8, !srcloc !19
  %.val3166.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rp = getelementptr inbounds nuw i8, ptr %.val3166.a, i64 %i.nx
  %.0.copyload.i3490 = load i32, ptr %i.rp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3490) #8, !srcloc !19
  %.not2967 = icmp eq i32 %i.nw, %.0.copyload.i3490
  br i1 %.not2967, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3490) #8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  store i32 %i.nr, ptr %i.a, align 8, !tbaa !7
  %.val3165.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rq = getelementptr inbounds nuw i8, ptr %.val3165.a, i64 %i.lu
  %.0.copyload.i3491 = load i32, ptr %i.rq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3491) #8, !srcloc !19
  %.not2968 = icmp eq i32 %i.lt, %.0.copyload.i3491
  br i1 %.not2968, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3491) #8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  store i32 %i.lo, ptr %i.a, align 8, !tbaa !7
  %.not2969 = icmp eq i32 %.0.copyload.i3489, 0
  br i1 %.not2969, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu, %bb.aj, %bb.ai, %.backedge
  %.val3164.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rr = getelementptr inbounds nuw i8, ptr %.val3164.a, i64 %i.ji
  %.0.copyload.i3492 = load i32, ptr %i.rr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3492) #8, !srcloc !19
  %.val3163.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rs = getelementptr inbounds nuw i8, ptr %.val3163.a, i64 %i.jf
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 412
  %.0.copyload.i3493 = load i32, ptr %i.rt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3493) #8, !srcloc !19
  %.not2971 = icmp ult i32 %.0.copyload.i3492, %.0.copyload.i3493
  br i1 %.not2971, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.kp, i32 noundef %i.jk, i32 noundef 0, i32 noundef 8) #8
  %.val3162.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ru = getelementptr inbounds nuw i8, ptr %.val3162.a, i64 %i.ji
  %.0.copyload.i3494 = load i32, ptr %i.ru, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3494) #8, !srcloc !19
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.12877 = phi i32 [ %.0.copyload.i3494, %bb.bw ], [ %.0.copyload.i3492, %bb.bv ]
  %.val3161.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rv = getelementptr inbounds nuw i8, ptr %.val3161.a, i64 %i.jl
  %.0.copyload.i3495 = load i32, ptr %i.rv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3495) #8, !srcloc !19
  %i.rw = shl i32 %.12877, 3
  %i.rx = add i32 %.0.copyload.i3495, %i.rw
  %i.ry = zext i32 %i.rx to i64
  %.val3247.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rz = getelementptr inbounds nuw i8, ptr %.val3247.a, i64 %i.ry
  store i64 %.0.copyload.i3436, ptr %i.rz, align 1
  %.val3160.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sa = getelementptr inbounds nuw i8, ptr %.val3160.a, i64 %i.ji
  %.0.copyload.i3496 = load i32, ptr %i.sa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3496) #8, !srcloc !19
  %i.sb = add i32 %.0.copyload.i3496, 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.an
  %.1 = phi i32 [ %i.sb, %bb.bx ], [ %i.lk, %bb.an ]
  %.val3049.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sc = getelementptr inbounds nuw i8, ptr %.val3049.a, i64 %i.ji
  store i32 %.1, ptr %i.sc, align 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bu, %bb.ai, %bb.by
  %i.sd = tail call i32 @w2c_hermes_llvh0x3A0x3Asys0x3A0x3Apath0x3A0x3Aconst_iterator0x3A0x3Aoperator0x2B0x2B0x280x29(ptr noundef nonnull %0, i32 noundef %i.jr) #8
  %i.se = zext i32 %i.sd to i64
  %.val3159.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sf = getelementptr inbounds nuw i8, ptr %.val3159.a, i64 %i.se
  %.0.copyload.i3497 = load i32, ptr %i.sf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3497) #8, !srcloc !19
  %.not2972 = icmp eq i32 %.0.copyload.i3497, %i.jz
  br i1 %.not2972, label %bb.ca, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.bz, %bb.ca
  br label %.backedge

bb.ca:                                            ; preds = %bb.bz
  %.val3158.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sg = getelementptr inbounds nuw i8, ptr %.val3158.a, i64 %i.jf
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 48
  %.0.copyload.i3498 = load i32, ptr %i.sh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3498) #8, !srcloc !19
  %.not2973 = icmp eq i32 %.0.copyload.i3498, %i.jw
  br i1 %.not2973, label %.loopexit3622, label %.backedge.backedge

.loopexit3622:                                    ; preds = %bb.ca, %bb.ag
  %.val3308.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.si = getelementptr inbounds nuw i8, ptr %.val3308.a, i64 %i.jg
  %.0.copyload.i3499 = load i64, ptr %i.si, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3499) #8, !srcloc !20
  %.val3246.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sj = getelementptr inbounds nuw i8, ptr %.val3246.a, i64 %i.jf
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 360
  store i64 %.0.copyload.i3499, ptr %i.sk, align 1
  %.val3245.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sl = getelementptr inbounds nuw i8, ptr %.val3245.a, i64 %i.jf
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  store i64 %.0.copyload.i3499, ptr %i.sm, align 1
  %i.sn = add i32 %i.iv, -176
  %i.so = add i32 %i.iv, -536
  tail call void @w2c_hermes_llvh0x3A0x3Asys0x3A0x3Apath0x3A0x3Aroot_path0x28llvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Asys0x3A0x3Apath0x3A0x3AStyle0x29(ptr noundef nonnull %0, i32 noundef %i.sn, i32 noundef %i.so) #8
  %.val3244.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sp = getelementptr inbounds nuw i8, ptr %.val3244.a, i64 %i.jt
  store i64 1099511627776, ptr %i.sp, align 1
  %i.sq = add i32 %i.iv, -500                     ; 6 uses
  %.val3048.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sr = getelementptr inbounds nuw i8, ptr %.val3048.a, i64 %i.kg
  store i32 %i.sq, ptr %i.sr, align 1
  %.val3157.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ss = getelementptr inbounds nuw i8, ptr %.val3157.a, i64 %i.jf
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 368
  %.0.copyload.i3500 = load i32, ptr %i.st, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3500) #8, !srcloc !19
  %.val3156.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.su = getelementptr inbounds nuw i8, ptr %.val3156.a, i64 %i.jf
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 372
  %.0.copyload.i3501 = load i32, ptr %i.sv, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3501) #8, !srcloc !19
  %i.sw = icmp ugt i32 %.0.copyload.i3501, 256
  br i1 %i.sw, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.loopexit3622
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.jr, i32 noundef %i.sq, i32 noundef %.0.copyload.i3501, i32 noundef 1) #8
  %.val3155.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sx = getelementptr inbounds nuw i8, ptr %.val3155.a, i64 %i.jt
  %.0.copyload.i3502 = load i32, ptr %i.sx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3502) #8, !srcloc !19
  %.val3154.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sy = getelementptr inbounds nuw i8, ptr %.val3154.a, i64 %i.kg
  %.0.copyload.i3503 = load i32, ptr %i.sy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3503) #8, !srcloc !19
  br label %bb.cd

bb.cc:                                            ; preds = %.loopexit3622
  %.not2974 = icmp eq i32 %.0.copyload.i3501, 0
  br i1 %.not2974, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.02884 = phi i32 [ %.0.copyload.i3503, %bb.cb ], [ %i.sq, %bb.cc ]
  %.22878 = phi i32 [ %.0.copyload.i3502, %bb.cb ], [ 0, %bb.cc ]
  %i.sz = add i32 %.22878, %.02884
  %i.ta = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.sz, i32 noundef %.0.copyload.i3500, i32 noundef %.0.copyload.i3501) #8 ; 0 uses
  %.val3153.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tb = getelementptr inbounds nuw i8, ptr %.val3153.a, i64 %i.jt
  %.0.copyload.i3504 = load i32, ptr %i.tb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3504) #8, !srcloc !19
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %.2 = phi i32 [ %.0.copyload.i3504, %bb.cd ], [ 0, %bb.cc ]
  %i.tc = add i32 %.2, %.0.copyload.i3501
  %.val3047.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.td = getelementptr inbounds nuw i8, ptr %.val3047.a, i64 %i.jt
  store i32 %i.tc, ptr %i.td, align 1
  %.val3152.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.te = getelementptr inbounds nuw i8, ptr %.val3152.a, i64 %i.jl
end_hunk_0
