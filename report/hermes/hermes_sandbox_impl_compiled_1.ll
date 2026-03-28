begin_hunk_0

bb.asl:                                           ; preds = %.preheader54638, %bb.ask
  %.1843147 = phi i32 [ %.0.copyload.i52773, %bb.ask ], [ %.0.copyload.i52771, %.preheader54638 ]
  %i.klg = add i32 %.1843147, 31                  ; 2 uses
  %i.klh = icmp ult i32 %i.klg, 32
  br i1 %i.klh, label %.loopexit54587, label %bb.asm

bb.asm:                                           ; preds = %bb.asl
  %i.kli = lshr i32 %i.klg, 5                     ; 3 uses
  %i.klj = and i32 %i.kli, 3                      ; 2 uses
  %.val48065 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.klk = getelementptr inbounds nuw i8, ptr %.val48065, i64 %i.kky
end_hunk_0
begin_hunk_1
  %i.kln = getelementptr inbounds nuw i8, ptr %i.klm, i64 4
  %.0.copyload.i52775 = load i32, ptr %i.kln, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52775) #8, !srcloc !19
  %6 = add nsw i32 %i.kli, -4
  %7 = icmp ult i32 %6, -3
  br i1 %7, label %bb.asn, label %.loopexit54588

bb.asn:                                           ; preds = %bb.asm
  %i.klo = and i32 %i.kli, 134217724              ; 2 uses
end_hunk_1
begin_hunk_2

bb.aso:                                           ; preds = %bb.aso, %bb.asn
  %indvars.iv55656 = phi i64 [ %indvars.iv.next55657, %bb.aso ], [ 0, %bb.asn ] ; 2 uses
  %8 = trunc nuw i64 %indvars.iv55656 to i32
  %9 = shl i32 %8, 2                              ; 5 uses
  %i.klp = add i32 %9, %.0.copyload.i52774
  %i.klq = zext i32 %i.klp to i64                 ; 2 uses
  %.val48063 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.klr = getelementptr inbounds nuw i8, ptr %.val48063, i64 %i.klq
  %.0.copyload.i52776 = load i32, ptr %i.klr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52776) #8, !srcloc !19
  %i.kls = add i32 %9, %.0.copyload.i52775
  %i.klt = zext i32 %i.kls to i64
  %.val48062 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.klu = getelementptr inbounds nuw i8, ptr %.val48062, i64 %i.klt
end_hunk_2
begin_hunk_3
  %.val49820 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.klw = getelementptr inbounds nuw i8, ptr %.val49820, i64 %i.klq
  store i32 %i.klv, ptr %i.klw, align 1
  %i.klx = or disjoint i32 %9, 4                  ; 2 uses
  %i.kly = add i32 %i.klx, %.0.copyload.i52774
  %i.klz = zext i32 %i.kly to i64                 ; 2 uses
end_hunk_3
begin_hunk_4
  %.val49819 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kmf = getelementptr inbounds nuw i8, ptr %.val49819, i64 %i.klz
  store i32 %i.kme, ptr %i.kmf, align 1
  %i.kmg = or disjoint i32 %9, 8                  ; 2 uses
  %i.kmh = add i32 %i.kmg, %.0.copyload.i52774
  %i.kmi = zext i32 %i.kmh to i64                 ; 2 uses
  %.val48059 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_4
begin_hunk_5
  %.val49818 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kmo = getelementptr inbounds nuw i8, ptr %.val49818, i64 %i.kmi
  store i32 %i.kmn, ptr %i.kmo, align 1
  %i.kmp = or disjoint i32 %9, 12                 ; 2 uses
  %i.kmq = add i32 %i.kmp, %.0.copyload.i52774
  %i.kmr = zext i32 %i.kmq to i64                 ; 2 uses
  %.val48057 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_5
begin_hunk_6
bb.awu:                                           ; preds = %bb.avz, %bb.awt
  %.122 = phi i32 [ %.4644043, %bb.awt ], [ %.121, %bb.avz ]
  %.2243151 = phi i32 [ %.0.copyload.i52906, %bb.awt ], [ %.0.copyload.i52889, %bb.avz ]
  %i.lpx = add i32 %.2243151, 31                  ; 2 uses
  %i.lpy = icmp ult i32 %i.lpx, 32
  br i1 %i.lpy, label %.loopexit54520, label %bb.awv

bb.awv:                                           ; preds = %bb.awu
  %i.lpz = lshr i32 %i.lpx, 5                     ; 3 uses
  %i.lqa = and i32 %i.lpz, 3                      ; 2 uses
  %.val47934 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqb = getelementptr inbounds nuw i8, ptr %.val47934, i64 %.pre-phi55801
end_hunk_6
begin_hunk_7
  %i.lqe = getelementptr inbounds nuw i8, ptr %i.lqd, i64 4
  %.0.copyload.i52908 = load i32, ptr %i.lqe, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52908) #8, !srcloc !19
  %10 = add nsw i32 %i.lpz, -4
  %11 = icmp ult i32 %10, -3
  br i1 %11, label %bb.aww, label %.loopexit54521

bb.aww:                                           ; preds = %bb.awv
  %i.lqf = and i32 %i.lpz, 134217724              ; 2 uses
end_hunk_7
begin_hunk_8

bb.awx:                                           ; preds = %bb.awx, %bb.aww
  %indvars.iv55685 = phi i64 [ %indvars.iv.next55686, %bb.awx ], [ 0, %bb.aww ] ; 2 uses
  %12 = trunc nuw i64 %indvars.iv55685 to i32
  %13 = shl i32 %12, 2                            ; 5 uses
  %i.lqg = add i32 %13, %.0.copyload.i52907
  %i.lqh = zext i32 %i.lqg to i64                 ; 2 uses
  %.val47932 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqi = getelementptr inbounds nuw i8, ptr %.val47932, i64 %i.lqh
  %.0.copyload.i52909 = load i32, ptr %i.lqi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52909) #8, !srcloc !19
  %i.lqj = add i32 %13, %.0.copyload.i52908
  %i.lqk = zext i32 %i.lqj to i64
  %.val47931 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lql = getelementptr inbounds nuw i8, ptr %.val47931, i64 %i.lqk
end_hunk_8
begin_hunk_9
  %.val49758 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqn = getelementptr inbounds nuw i8, ptr %.val49758, i64 %i.lqh
  store i32 %i.lqm, ptr %i.lqn, align 1
  %i.lqo = or disjoint i32 %13, 4                 ; 2 uses
  %i.lqp = add i32 %i.lqo, %.0.copyload.i52907
  %i.lqq = zext i32 %i.lqp to i64                 ; 2 uses
  %.val47930 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_9
begin_hunk_10
  %.val49757 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqw = getelementptr inbounds nuw i8, ptr %.val49757, i64 %i.lqq
  store i32 %i.lqv, ptr %i.lqw, align 1
  %i.lqx = or disjoint i32 %13, 8                 ; 2 uses
  %i.lqy = add i32 %i.lqx, %.0.copyload.i52907
  %i.lqz = zext i32 %i.lqy to i64                 ; 2 uses
  %.val47928 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_10
begin_hunk_11
  %.val49756 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrf = getelementptr inbounds nuw i8, ptr %.val49756, i64 %i.lqz
  store i32 %i.lre, ptr %i.lrf, align 1
  %i.lrg = or disjoint i32 %13, 12                ; 2 uses
  %i.lrh = add i32 %i.lrg, %.0.copyload.i52907
  %i.lri = zext i32 %i.lrh to i64                 ; 2 uses
  %.val47926 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_11
begin_hunk_12
bb.ag:                                            ; preds = %bb.q
  %i.eo = zext i32 %3 to i64                      ; 9 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val1156, i64 %i.eo
  %.0.copyload.i1250 = load i8, ptr %i.ep, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1250) #8, !srcloc !21
  %5 = zext i8 %.0.copyload.i1250 to i32          ; 2 uses
  switch i8 %.0.copyload.i1250, label %bb.ay [
    i8 111, label %bb.at
    i8 112, label %bb.av
end_hunk_12
begin_hunk_13
  br label %bb.bv

bb.ay:                                            ; preds = %bb.ag
  %6 = add nuw nsw i32 %5, 254
  %7 = and i32 %6, 255
  %i.ip = icmp samesign ult i32 %7, 107
  br i1 %i.ip, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
end_hunk_13
begin_hunk_14
  br label %bb.bv

bb.bi:                                            ; preds = %bb.ba
  %8 = add nuw nsw i32 %5, 123
  %9 = and i32 %8, 254
  %10 = icmp samesign ugt i32 %9, 249
  br i1 %10, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lj = zext i32 %1 to i64                      ; 2 uses
end_hunk_14
