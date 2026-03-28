begin_hunk_0

bb.bd:                                            ; preds = %func_types_eq.exit2483.thread, %bb.bc
  %.12063 = phi i32 [ %.0.copyload.i2488, %bb.bc ], [ %.0.copyload.i2486, %func_types_eq.exit2483.thread ]
  %i.my = add i32 %.12063, 31                     ; 3 uses
  %i.mz = icmp ult i32 %i.my, 32
  br i1 %i.mz, label %.loopexit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.na = lshr i32 %i.my, 5                       ; 2 uses
  %i.nb = and i32 %i.na, 3                        ; 2 uses
  %.val2251 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nc = getelementptr inbounds nuw i8, ptr %.val2251, i64 %i.mr
end_hunk_0
begin_hunk_1
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 572
  %.0.copyload.i2490 = load i32, ptr %i.nf, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2490) #9, !srcloc !13
  %2 = icmp ugt i32 %i.my, 127
  br i1 %2, label %bb.bf, label %.loopexit2610

bb.bf:                                            ; preds = %bb.be
  %i.ng = and i32 %i.na, 134217724                ; 2 uses
end_hunk_1
begin_hunk_2

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %indvars.iv2623 = phi i64 [ %indvars.iv.next2624, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %3 = shl i64 %indvars.iv2623, 2                 ; 4 uses
  %4 = trunc nuw nsw i64 %3 to i32                ; 2 uses
  %i.nh = add i32 %.0.copyload.i2489, %4
  %i.ni = zext i32 %i.nh to i64                   ; 2 uses
  %.val2249 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nj = getelementptr inbounds nuw i8, ptr %.val2249, i64 %i.ni
  %.0.copyload.i2491 = load i32, ptr %i.nj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2491) #9, !srcloc !13
  %i.nk = add i32 %.0.copyload.i2490, %4
  %i.nl = zext i32 %i.nk to i64
  %.val2248 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nm = getelementptr inbounds nuw i8, ptr %.val2248, i64 %i.nl
end_hunk_2
begin_hunk_3
  %.val2339 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.no = getelementptr inbounds nuw i8, ptr %.val2339, i64 %i.ni
  store i32 %i.nn, ptr %i.no, align 1
  %5 = trunc i64 %3 to i32
  %i.np = or disjoint i32 %5, 4                   ; 2 uses
  %i.nq = add i32 %i.np, %.0.copyload.i2489
  %i.nr = zext i32 %i.nq to i64                   ; 2 uses
end_hunk_3
begin_hunk_4
  %.val2338 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nx = getelementptr inbounds nuw i8, ptr %.val2338, i64 %i.nr
  store i32 %i.nw, ptr %i.nx, align 1
  %6 = trunc i64 %3 to i32
  %i.ny = or disjoint i32 %6, 8                   ; 2 uses
  %i.nz = add i32 %i.ny, %.0.copyload.i2489
  %i.oa = zext i32 %i.nz to i64                   ; 2 uses
  %.val2245 = load ptr, ptr %i.d, align 8, !tbaa !7
end_hunk_4
begin_hunk_5
  %.val2337 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.og = getelementptr inbounds nuw i8, ptr %.val2337, i64 %i.oa
  store i32 %i.of, ptr %i.og, align 1
  %7 = trunc i64 %3 to i32
  %i.oh = or disjoint i32 %7, 12                  ; 2 uses
  %i.oi = add i32 %i.oh, %.0.copyload.i2489
  %i.oj = zext i32 %i.oi to i64                   ; 2 uses
  %.val2243 = load ptr, ptr %i.d, align 8, !tbaa !7
end_hunk_5
begin_hunk_6

bb.c:                                             ; preds = %bb.a, %bb.b
  %.01296 = phi i32 [ %.0.copyload.i1502, %bb.b ], [ %.0.copyload.i, %bb.a ]
  %i.k = add i32 %.01296, 31                      ; 3 uses
  %i.l = icmp ult i32 %i.k, 32
  br i1 %i.l, label %.loopexit1599, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i32 %i.k, 5                         ; 2 uses
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %i.o = zext i32 %i.a to i64
  %.val1451 = load ptr, ptr %i.b, align 8, !tbaa !7
end_hunk_6
begin_hunk_7
  %i.q = getelementptr inbounds nuw i8, ptr %.val1450, i64 %i.c
  %.0.copyload.i1504 = load i32, ptr %i.q, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1504) #9, !srcloc !13
  %4 = icmp ugt i32 %i.k, 127
  br i1 %4, label %bb.e, label %.loopexit1600

bb.e:                                             ; preds = %bb.d
  %i.r = and i32 %i.m, 134217724                  ; 2 uses
end_hunk_7
begin_hunk_8

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %5 = shl i64 %indvars.iv, 2                     ; 4 uses
  %6 = trunc nuw nsw i64 %5 to i32                ; 2 uses
  %i.s = add i32 %.0.copyload.i1503, %6
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %.val1449 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val1449, i64 %i.t
  %.0.copyload.i1505 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1505) #9, !srcloc !13
  %i.v = add i32 %.0.copyload.i1504, %6
  %i.w = zext i32 %i.v to i64
  %.val1448 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val1448, i64 %i.w
end_hunk_8
begin_hunk_9
  %.val1475 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val1475, i64 %i.t
  store i32 %i.y, ptr %i.z, align 1
  %7 = trunc i64 %5 to i32
  %i.aa = or disjoint i32 %7, 4                   ; 2 uses
  %i.ab = add i32 %i.aa, %.0.copyload.i1503
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
end_hunk_9
begin_hunk_10
  %.val1474 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1474, i64 %i.ac
  store i32 %i.ah, ptr %i.ai, align 1
  %8 = trunc i64 %5 to i32
  %i.aj = or disjoint i32 %8, 8                   ; 2 uses
  %i.ak = add i32 %i.aj, %.0.copyload.i1503
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %.val1445 = load ptr, ptr %i.b, align 8, !tbaa !7
end_hunk_10
begin_hunk_11
  %.val1473 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1473, i64 %i.al
  store i32 %i.aq, ptr %i.ar, align 1
  %9 = trunc i64 %5 to i32
  %i.as = or disjoint i32 %9, 12                  ; 2 uses
  %i.at = add i32 %i.as, %.0.copyload.i1503
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %.val1443 = load ptr, ptr %i.b, align 8, !tbaa !7
end_hunk_11
