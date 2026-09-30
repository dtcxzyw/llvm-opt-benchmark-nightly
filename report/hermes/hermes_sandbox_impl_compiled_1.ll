Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_1?download=true
inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ALowerArgumentsArray0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  %.val1675 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wl = getelementptr inbounds nuw i8, ptr %.val1675, i64 %i.h
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 200
  %.0.copyload.i1982 = load i32, ptr %i.wm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1982) #7, !srcloc !19
  %i.wn = shl nuw i32 %.12, 1                     ; 2 uses
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AsetOperand0x28hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %.7, i32 noundef %.0.copyload.i1982, i32 noundef %i.wn)
  %i.wo = or disjoint i32 %i.wn, 1
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AsetOperand0x28hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %.7, i32 noundef %i.vg, i32 noundef %i.wo)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.preheader
  %i.wp = add nuw nsw i32 %.12, 1                 ; 2 uses
  %.not1655 = icmp eq i32 %i.wp, %i.vs
  br i1 %.not1655, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.bp, %bb.bn
  %.val1674 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wq = getelementptr inbounds nuw i8, ptr %.val1674, i64 %i.vn
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 4
  %.0.copyload.i1984 = load i32, ptr %i.wr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1984) #7, !srcloc !19
  %.not1656 = icmp eq i32 %.0.copyload.i1984, %i.vl
  br i1 %.not1656, label %.loopexit2001, label %.preheader2000

.loopexit2001:                                    ; preds = %.loopexit, %bb.bm, %.preheader2000, %bb.bl
  %i.ws = tail call i32 @w2c_hermes_hermes0x3A0x3ABasicBlock0x3A0x3AgetTerminator0x280x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1967) #7 ; 2 uses
  %i.wt = zext i32 %i.ws to i64                   ; 2 uses
  %.val1673 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wu = getelementptr inbounds nuw i8, ptr %.val1673, i64 %i.wt
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 44
  %.0.copyload.i1985 = load i32, ptr %i.wv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1985) #7, !srcloc !19
  %i.ww = icmp slt i32 %.0.copyload.i1985, 1
  br i1 %i.ww, label %.loopexit1999, label %bb.bq

bb.bq:                                            ; preds = %.loopexit2001
  %i.wx = add i32 %.0.copyload.i1966, 8
  %.not1657 = icmp eq i32 %.0.copyload.i1966, 0
  %i.wy = select i1 %.not1657, i32 0, i32 %i.wx
  br label %bb.br

bb.br:                                            ; preds = %bb.bt, %bb.bq
  %.13 = phi i32 [ 0, %bb.bq ], [ %i.xg, %bb.bt ] ; 3 uses
  %.val1672 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wz = getelementptr inbounds nuw i8, ptr %.val1672, i64 %i.wt
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 40
  %.0.copyload.i1986 = load i32, ptr %i.xa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1986) #7, !srcloc !19
  %i.xb = shl i32 %.13, 3
  %i.xc = add i32 %.0.copyload.i1986, %i.xb
  %i.xd = zext i32 %i.xc to i64
  %.val1671 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xe = getelementptr inbounds nuw i8, ptr %.val1671, i64 %i.xd
  %.0.copyload.i1987 = load i32, ptr %i.xe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1987) #7, !srcloc !19
  %i.xf = icmp eq i32 %i.wy, %.0.copyload.i1987
  br i1 %i.xf, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AsetOperand0x28hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.ws, i32 noundef %i.vg, i32 noundef %.13)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.xg = add nuw nsw i32 %.13, 1                 ; 2 uses
  %.not1658 = icmp eq i32 %i.xg, %.0.copyload.i1985
  br i1 %.not1658, label %.loopexit1999, label %bb.br

.loopexit1999:                                    ; preds = %bb.bt, %.loopexit2001, %.preheader2002
  %i.xh = add nuw nsw i32 %.11558, 1              ; 2 uses
  %.not1659 = icmp eq i32 %i.xh, %i.ty
  br i1 %.not1659, label %.loopexit2003, label %.preheader2002

bb.bu:                                            ; preds = %bb.bj
  %i.xi = add i8 %.0.copyload.i1960, -109
  %i.xj = icmp ult i8 %i.xi, -107
  br i1 %i.xj, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.val1749 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xk = getelementptr inbounds nuw i8, ptr %.val1749, i64 %i.bx
  store i32 %i.tr, ptr %i.xk, align 1
  %i.xl = zext i32 %i.tr to i64                   ; 5 uses
  %.val1670 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xm = getelementptr inbounds nuw i8, ptr %.val1670, i64 %i.xl
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 36
  %.0.copyload.i1988 = load i32, ptr %i.xn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1988) #7, !srcloc !19
  %.val1748 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xo = getelementptr inbounds nuw i8, ptr %.val1748, i64 %i.cb
  store i32 %.0.copyload.i1988, ptr %i.xo, align 1
  %.val1669 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xp = getelementptr inbounds nuw i8, ptr %.val1669, i64 %i.xl
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 72
  %.0.copyload.i1989 = load i32, ptr %i.xq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1989) #7, !srcloc !19
  %.val1747 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xr = getelementptr inbounds nuw i8, ptr %.val1747, i64 %i.i
  store i32 %.0.copyload.i1989, ptr %i.xr, align 1
  %.val1668 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xs = getelementptr inbounds nuw i8, ptr %.val1668, i64 %i.xl
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 68
  %.0.copyload.i1990 = load i32, ptr %i.xt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1990) #7, !srcloc !19
  %.val1746 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xu = getelementptr inbounds nuw i8, ptr %.val1746, i64 %i.h
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 196
  store i32 %.0.copyload.i1990, ptr %i.xv, align 1
  tail call void @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateHBCReifyArgumentsInst0x28hermes0x3A0x3AAllocStackInst0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.bv, i32 noundef %i.cl) #7
  %i.xw = tail call i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateLoadStackInst0x28hermes0x3A0x3AAllocStackInst0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.bv, i32 noundef %i.cl) #7 ; 2 uses
  %.val1667 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xx = getelementptr inbounds nuw i8, ptr %.val1667, i64 %i.xl
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 44
  %.0.copyload.i1991 = load i32, ptr %i.xy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1991) #7, !srcloc !19
  %i.xz = icmp slt i32 %.0.copyload.i1991, 1
  br i1 %i.xz, label %.loopexit2003, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ya = add i32 %i.xw, 8
  %.not1647 = icmp eq i32 %i.xw, 0
  %i.yb = select i1 %.not1647, i32 0, i32 %i.ya
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %bb.bw
  %.14 = phi i32 [ 0, %bb.bw ], [ %i.yj, %bb.bz ] ; 3 uses
  %.val1666 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yc = getelementptr inbounds nuw i8, ptr %.val1666, i64 %i.xl
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 40
  %.0.copyload.i1992 = load i32, ptr %i.yd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1992) #7, !srcloc !19
  %i.ye = shl i32 %.14, 3
  %i.yf = add i32 %.0.copyload.i1992, %i.ye
  %i.yg = zext i32 %i.yf to i64
  %.val1665 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yh = getelementptr inbounds nuw i8, ptr %.val1665, i64 %i.yg
  %.0.copyload.i1993 = load i32, ptr %i.yh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1993) #7, !srcloc !19
  %i.yi = icmp eq i32 %i.dn, %.0.copyload.i1993
  br i1 %i.yi, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AsetOperand0x28hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.tr, i32 noundef %i.yb, i32 noundef %.14)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.yj = add nuw nsw i32 %.14, 1                 ; 2 uses
  %.not1648 = icmp eq i32 %i.yj, %.0.copyload.i1991
  br i1 %.not1648, label %.loopexit2003, label %bb.bx

.loopexit2003:                                    ; preds = %bb.bz, %.loopexit1999, %bb.bv, %bb.bk
  %i.yk = add i32 %.21556, 4                      ; 2 uses
  %.not1660 = icmp eq i32 %i.yk, %i.ti
  br i1 %.not1660, label %.loopexit2005, label %bb.bj

bb.ca:                                            ; preds = %bb.bu
  tail call void @w2c_hermes_hermes0x3A0x3Ahermes_fatal0x28char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef 61010)
  unreachable

.loopexit2005:                                    ; preds = %.loopexit2003, %.loopexit2009
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AeraseFromParent0x280x29(ptr noundef nonnull %0, i32 noundef %.2)
  %.val1664 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yl = getelementptr inbounds nuw i8, ptr %.val1664, i64 %i.dg
  %.0.copyload.i1994 = load i32, ptr %i.yl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1994) #7, !srcloc !19
  %.not1661 = icmp eq i32 %i.df, %.0.copyload.i1994
  br i1 %.not1661, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.loopexit2005
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1994) #7
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.loopexit2005
  %.val1842 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ym = getelementptr inbounds nuw i8, ptr %.val1842, i64 %i.dk
  %.0.copyload.i1995 = load i8, ptr %i.ym, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1995) #7, !srcloc !21
  %i.yn = and i8 %.0.copyload.i1995, 1
  %.not1662 = icmp eq i8 %i.yn, 0
  br i1 %.not1662, label %bb.cd, label %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread

bb.cd:                                            ; preds = %bb.cc
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yo = getelementptr inbounds nuw i8, ptr %.val, i64 %i.di
  %.0.copyload.i1996 = load i32, ptr %i.yo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1996) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1996) #7
  br label %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread

w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread: ; preds = %.preheader2019._crit_edge, %.loopexit2018, %bb.c, %bb.c, %bb.cc, %bb.i, %bb.cd
  %.8 = phi i32 [ 0, %.loopexit2018 ], [ 1, %bb.cc ], [ 1, %bb.cd ], [ 0, %bb.c ], [ 0, %bb.i ], [ 0, %bb.c ], [ 0, %.preheader2019._crit_edge ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %.8
}

declare void @w2c_hermes_void0x20llvh0x3A0x3ASetVector0x3Chermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3ASmallVector0x3Chermes0x3A0x3AInstruction0x2A0x2C0x2016u0x3E0x2C0x20llvh0x3A0x3ASmallDenseSet0x3Chermes0x3A0x3AInstruction0x2A0x2C0x2016u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AInstruction0x2A0x3E0x3E0x3E0x3A0x3Ainsert0x3Chermes0x3A0x3AInstruction0x2A0x20const0x2A0x3E0x28hermes0x3A0x3AInstruction0x2A0x20const0x2A0x2C0x20hermes0x3A0x3AInstruction0x2A0x20const0x2A0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateHBCReifyArgumentsInst0x28hermes0x3A0x3AAllocStackInst0x2A0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ALoadParameters0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 59 uses
  %i.e = zext i32 %2 to i64                       ; 6 uses
  %.val339 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val339, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.h = zext i32 %i.c to i64                     ; 5 uses
  %i.i = add nuw nsw i64 %i.h, 24                 ; 2 uses
  %.val363 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val363, i64 %i.i
  store i64 0, ptr %i.j, align 1
  %i.k = add nuw nsw i64 %i.h, 16                 ; 3 uses
  %.val362 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val362, i64 %i.k
  store i64 0, ptr %i.l, align 1
  %.val355 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val355, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %.0.copyload.i, ptr %i.n, align 1
  %.val338 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val338, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %.0.copyload.i366 = load i32, ptr %i.p, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i366) #7, !srcloc !19
  %i.q = zext i32 %.0.copyload.i366 to i64
  %.val337 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val337, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.0.copyload.i367 = load i32, ptr %i.s, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i367) #7, !srcloc !19
  %i.t = add i32 %.0.copyload.i366, 36            ; 3 uses
  %i.u = icmp eq i32 %.0.copyload.i367, %i.t
  br i1 %i.u, label %.loopexit414, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.0306 = phi i32 [ %.0.copyload.i369, %bb.b ], [ %.0.copyload.i367, %bb.a ] ; 2 uses
  %i.v = zext i32 %.0306 to i64                   ; 2 uses
  %.val365 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val365, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.copyload.i368 = load i8, ptr %i.x, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i368) #7, !srcloc !21
  %.not = icmp eq i8 %.0.copyload.i368, 8
  br i1 %.not, label %bb.b, label %.loopexit414

bb.b:                                             ; preds = %.preheader
  %.val336 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val336, i64 %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.0.copyload.i369 = load i32, ptr %i.z, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i369) #7, !srcloc !19
  %.not315 = icmp eq i32 %.0.copyload.i369, %i.t
  br i1 %.not315, label %.loopexit414, label %.preheader

.loopexit414:                                     ; preds = %.preheader, %bb.b, %bb.a
  %.0305 = phi i32 [ %.0.copyload.i367, %bb.a ], [ %.0306, %.preheader ], [ %i.t, %bb.b ] ; 2 uses
  %.val354 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val354, i64 %i.k
  store i32 %.0305, ptr %i.aa, align 1
  %i.ab = zext i32 %.0305 to i64
  %.val335 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val335, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %.0.copyload.i370 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i370) #7, !srcloc !19
  %i.ae = add nuw nsw i64 %i.h, 20                ; 2 uses
  %.val353 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val353, i64 %i.ae
  store i32 %.0.copyload.i370, ptr %i.af, align 1
  %.val334 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val334, i64 %i.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  %.0.copyload.i371 = load i32, ptr %i.ah, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i371) #7, !srcloc !19
  %i.ai = icmp ne i32 %.0.copyload.i371, 0        ; 3 uses
  br i1 %i.ai, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.loopexit414
  %.val333 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val333, i64 %i.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %.0.copyload.i372 = load i32, ptr %i.ak, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i372) #7, !srcloc !19
  %i.al = shl i32 %.0.copyload.i371, 2
  %i.am = add i32 %.0.copyload.i372, %i.al
  %i.an = add i32 %i.b, -20                       ; 2 uses
  %i.ao = zext i32 %i.an to i64
  br label %bb.d

bb.d:                                             ; preds = %w2c_hermes_hermes0x3A0x3AValue0x3A0x3AreplaceAllUsesWith0x28hermes0x3A0x3AValue0x2A0x29.exit, %bb.c
  %.1307 = phi i32 [ %.0.copyload.i372, %bb.c ], [ %i.bx, %w2c_hermes_hermes0x3A0x3AValue0x3A0x3AreplaceAllUsesWith0x28hermes0x3A0x3AValue0x2A0x29.exit ] ; 2 uses
  %.1 = phi i32 [ 1, %bb.c ], [ %i.bw, %w2c_hermes_hermes0x3A0x3AValue0x3A0x3AreplaceAllUsesWith0x28hermes0x3A0x3AValue0x2A0x29.exit ] ; 2 uses
  %i.ap = zext i32 %.1307 to i64
  %.val332 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val332, i64 %i.ap
  %.0.copyload.i373 = load i32, ptr %i.aq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i373) #7, !srcloc !19
  %i.ar = uitofp nneg i32 %.1 to double
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ao
  %.0.copyload.i.i = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #7, !srcloc !19
  %i.at = tail call i32 @w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i.i, double noundef %i.ar)
  %i.au = tail call i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateHBCLoadParamInst0x28hermes0x3A0x3ALiteralNumber0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.an, i32 noundef %i.at) #7 ; 2 uses
  %i.av = add i32 %i.au, 8
  %.not316 = icmp eq i32 %i.au, 0
  %i.aw = select i1 %.not316, i32 0, i32 %i.av    ; 2 uses
  %i.ax = icmp eq i32 %.0.copyload.i373, %i.aw
  br i1 %i.ax, label %w2c_hermes_hermes0x3A0x3AValue0x3A0x3AreplaceAllUsesWith0x28hermes0x3A0x3AValue0x2A0x29.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = zext i32 %.0.copyload.i373 to i64       ; 2 uses
  %i.az = add nuw nsw i64 %i.ay, 12               ; 2 uses
  %.val79.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val79.i, i64 %i.az
  %.0.copyload.i.i374 = load i32, ptr %i.ba, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i374) #7, !srcloc !19
  %.not.i = icmp eq i32 %.0.copyload.i.i374, 0
  br i1 %.not.i, label %w2c_hermes_hermes0x3A0x3AValue0x3A0x3AreplaceAllUsesWith0x28hermes0x3A0x3AValue0x2A0x29.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %.loopexit.i
  %.0.i = phi i32 [ %.1.i, %.loopexit.i ], [ %.0.copyload.i.i374, %bb.e ] ; 3 uses
  %.val78.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val78.i, i64 %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.0.copyload.i80.i = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i80.i) #7, !srcloc !19
  %i.bd = shl i32 %.0.i, 2
  %i.be = add i32 %i.bd, -4
  %i.bf = add i32 %i.be, %.0.copyload.i80.i
  %i.bg = zext i32 %i.bf to i64
  %.val77.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val77.i, i64 %i.bg
  %.0.copyload.i81.i = load i32, ptr %i.bh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i81.i) #7, !srcloc !19
  %i.bi = zext i32 %.0.copyload.i81.i to i64      ; 2 uses
  %.val76.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val76.i, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 44
  %.0.copyload.i82.i = load i32, ptr %i.bk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i82.i) #7, !srcloc !19
  %i.bl = icmp slt i32 %.0.copyload.i82.i, 1
  br i1 %i.bl, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %.val75.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val75.i, i64 %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %.0.copyload.i83.i = load i32, ptr %i.bn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i83.i) #7, !srcloc !19
  %i.bo = zext nneg i32 %.0.copyload.i82.i to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %i.bp = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.bq = shl i32 %i.bp, 3
  %i.br = add i32 %i.bq, %.0.copyload.i83.i
  %i.bs = zext i32 %i.br to i64
  %.val74.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val74.i, i64 %i.bs
  %.0.copyload.i84.i = load i32, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i84.i) #7, !srcloc !19
  %i.bu = icmp eq i32 %.0.copyload.i373, %.0.copyload.i84.i
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AsetOperand0x28hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i81.i, i32 noundef %i.aw, i32 noundef %i.bp)
  %.val.i375 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i375, i64 %i.az
  %.0.copyload.i85.i = load i32, ptr %i.bv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i85.i) #7, !srcloc !19
  br label %.loopexit.i

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not72.i = icmp eq i64 %indvars.iv.next.i, %i.bo
  br i1 %.not72.i, label %.loopexit.i, label %bb.g

.loopexit.i:                                      ; preds = %bb.i, %bb.h, %.preheader.i
  %.1.i = phi i32 [ %.0.i, %.preheader.i ], [ %.0.copyload.i85.i, %bb.h ], [ %.0.i, %bb.i ] ; 2 uses
  %.not73.i = icmp eq i32 %.1.i, 0
  br i1 %.not73.i, label %w2c_hermes_hermes0x3A0x3AValue0x3A0x3AreplaceAllUsesWith0x28hermes0x3A0x3AValue0x2A0x29.exit, label %.preheader.i

w2c_hermes_hermes0x3A0x3AValue0x3A0x3AreplaceAllUsesWith0x28hermes0x3A0x3AValue0x2A0x29.exit: ; preds = %.loopexit.i, %bb.d, %bb.e
  %i.bw = add nuw nsw i32 %.1, 1
  %i.bx = add i32 %.1307, 4                       ; 2 uses
  %.not317 = icmp eq i32 %i.bx, %i.am
  br i1 %.not317, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %w2c_hermes_hermes0x3A0x3AValue0x3A0x3AreplaceAllUsesWith0x28hermes0x3A0x3AValue0x2A0x29.exit, %.loopexit414
  %.val331 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val331, i64 %i.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 128
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ALoadConstantValueNumbering0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  %i.kr = xor i32 %.0.copyload.i1090, -1
  %i.ks = add i32 %.0874, %i.kr
  %.val954 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kt = getelementptr inbounds nuw i8, ptr %.val954, i64 %i.m
  %.0.copyload.i1091 = load i32, ptr %i.kt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1091) #7, !srcloc !19
  %i.ku = sub i32 %i.ks, %.0.copyload.i1091
  %i.kv = lshr i32 %.0874, 3
  %i.kw = icmp ugt i32 %i.ku, %i.kv
  br i1 %i.kw, label %.loopexit1121, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.4878 = phi i32 [ %i.kq, %bb.au ], [ %.0874, %bb.av ]
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3AInstruction0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.c, i32 noundef %.4878) #7
  %.val953 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kx = getelementptr inbounds nuw i8, ptr %.val953, i64 %i.p
  %.0.copyload.i1092 = load i32, ptr %i.kx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1092) #7, !srcloc !19
  %.not924 = icmp eq i32 %.0.copyload.i1092, 0
  br i1 %.not924, label %.loopexit1121, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.val952 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ky = getelementptr inbounds nuw i8, ptr %.val952, i64 %i.j
  %.0.copyload.i1093 = load i32, ptr %i.ky, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1093) #7, !srcloc !19
  %i.kz = add i32 %.0.copyload.i1092, -1          ; 2 uses
  %i.la = mul i32 %.0.copyload.i146.i, 37
  %i.lb = and i32 %i.kz, %i.la                    ; 2 uses
  %i.lc = shl i32 %i.lb, 3
  %i.ld = add i32 %.0.copyload.i1093, %i.lc       ; 3 uses
  %i.le = zext i32 %i.ld to i64
  %.val951 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lf = getelementptr inbounds nuw i8, ptr %.val951, i64 %i.le
  %.0.copyload.i1094 = load i32, ptr %i.lf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1094) #7, !srcloc !19
  %i.lg = icmp eq i32 %.0.copyload.i146.i, %.0.copyload.i1094
  br i1 %i.lg, label %.loopexit1121, label %.preheader1120

.preheader1120:                                   ; preds = %bb.ax, %bb.az
  %.5879 = phi i32 [ %.0.copyload.i1095, %bb.az ], [ %.0.copyload.i1094, %bb.ax ] ; 2 uses
  %.5 = phi i32 [ %i.lq, %bb.az ], [ %i.ld, %bb.ax ] ; 2 uses
  %.4865 = phi i32 [ %i.ll, %bb.az ], [ 0, %bb.ax ] ; 3 uses
  %.2860 = phi i32 [ %i.ln, %bb.az ], [ 1, %bb.ax ] ; 2 uses
  %.4857 = phi i32 [ %i.lo, %bb.az ], [ %i.lb, %bb.ax ]
  %i.lh = icmp eq i32 %.5879, -1
  %.not927 = icmp eq i32 %.4865, 0                ; 2 uses
  br i1 %i.lh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.preheader1120
  %i.li = select i1 %.not927, i32 %.5, i32 %.4865
  br label %.loopexit1121

bb.az:                                            ; preds = %.preheader1120
  %i.lj = icmp eq i32 %.5879, -2
  %i.lk = select i1 %i.lj, i1 %.not927, i1 false
  %i.ll = select i1 %i.lk, i32 %.5, i32 %.4865
  %i.lm = add i32 %.4857, %.2860
  %i.ln = add i32 %.2860, 1
  %i.lo = and i32 %i.lm, %i.kz                    ; 2 uses
  %i.lp = shl i32 %i.lo, 3
  %i.lq = add i32 %i.lp, %.0.copyload.i1093       ; 3 uses
  %i.lr = zext i32 %i.lq to i64
  %.val950 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ls = getelementptr inbounds nuw i8, ptr %.val950, i64 %i.lr
  %.0.copyload.i1095 = load i32, ptr %i.ls, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1095) #7, !srcloc !19
  %.not926 = icmp eq i32 %.0.copyload.i146.i, %.0.copyload.i1095
  br i1 %.not926, label %.loopexit1121, label %.preheader1120

.loopexit1121:                                    ; preds = %bb.az, %bb.aw, %bb.ax, %bb.av, %bb.ay
  %.6 = phi i32 [ %.4873, %bb.av ], [ %i.ld, %bb.ax ], [ %i.li, %bb.ay ], [ 0, %bb.aw ], [ %i.lq, %bb.az ]
  %.val949 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lt = getelementptr inbounds nuw i8, ptr %.val949, i64 %i.r
  %.0.copyload.i1096 = load i32, ptr %i.lt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1096) #7, !srcloc !19
  %i.lu = add i32 %.0.copyload.i1096, 1
  %.val995 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lv = getelementptr inbounds nuw i8, ptr %.val995, i64 %i.r
  store i32 %i.lu, ptr %i.lv, align 1
  %i.lw = zext i32 %.6 to i64                     ; 4 uses
  %.val948 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lx = getelementptr inbounds nuw i8, ptr %.val948, i64 %i.lw
  %.0.copyload.i1097 = load i32, ptr %i.lx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1097) #7, !srcloc !19
  %.not928 = icmp eq i32 %.0.copyload.i1097, -1
  br i1 %.not928, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.loopexit1121
  %.val947 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ly = getelementptr inbounds nuw i8, ptr %.val947, i64 %i.m
  %.0.copyload.i1098 = load i32, ptr %i.ly, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1098) #7, !srcloc !19
  %i.lz = add i32 %.0.copyload.i1098, -1
  %.val994 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ma = getelementptr inbounds nuw i8, ptr %.val994, i64 %i.m
  store i32 %i.lz, ptr %i.ma, align 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.loopexit1121
  %.val993 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mb = getelementptr inbounds nuw i8, ptr %.val993, i64 %i.lw
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  store i32 0, ptr %i.mc, align 1
  %.val992 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.md = getelementptr inbounds nuw i8, ptr %.val992, i64 %i.lw
  store i32 %.0.copyload.i146.i, ptr %i.md, align 1
  br label %.loopexit1123

.loopexit1123:                                    ; preds = %bb.ae, %bb.ac, %bb.bb
  %.pre-phi1164 = phi i64 [ %i.lw, %bb.bb ], [ %i.gc, %bb.ac ], [ %i.gp, %bb.ae ]
  %.val991 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.me = getelementptr inbounds nuw i8, ptr %.val991, i64 %.pre-phi1164
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  store i32 %.0851, ptr %i.mf, align 1
  br label %.loopexit1117

.loopexit1117:                                    ; preds = %bb.as, %.loopexit, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit.thread, %.loopexit1123, %bb.ab
  %.2 = phi i32 [ %.1846, %.loopexit1123 ], [ 1, %bb.ab ], [ %.1846, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit.thread ], [ %.1846, %.loopexit ], [ %.1846, %bb.as ] ; 2 uses
  %.val946 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mg = getelementptr inbounds nuw i8, ptr %.val946, i64 %i.aa
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %.0.copyload.i1099 = load i32, ptr %i.mh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1099) #7, !srcloc !19
  %.not936 = icmp eq i32 %.0.copyload.i1099, %i.z
  br i1 %.not936, label %bb.bc, label %.preheader1128

bb.bc:                                            ; preds = %.loopexit1117
  %.val945 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mi = getelementptr inbounds nuw i8, ptr %.val945, i64 %i.j
  %.0.copyload.i1100 = load i32, ptr %i.mi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1100) #7, !srcloc !19
  br label %bb.bd

bb.bd:                                            ; preds = %bb.c, %bb.bc
  %.3 = phi i32 [ %.2, %bb.bc ], [ %.0845, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %.0.copyload.i1100, %bb.bc ], [ 0, %bb.c ]
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.1) #7
  %.val944 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mj = getelementptr inbounds nuw i8, ptr %.val944, i64 %i.l
  %.0.copyload.i1101 = load i32, ptr %i.mj, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1101) #7, !srcloc !19
  %.val943 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mk = getelementptr inbounds nuw i8, ptr %.val943, i64 %i.k
  %.0.copyload.i1102 = load i32, ptr %i.mk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1102) #7, !srcloc !19
  %.not937 = icmp eq i32 %.0.copyload.i1102, 0
  br i1 %.not937, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ml = shl i32 %.0.copyload.i1102, 2
  %i.mm = add i32 %i.ml, %.0.copyload.i1101
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %bb.be
  %.6880 = phi i32 [ %.0.copyload.i1101, %bb.be ], [ %i.mp, %bb.bf ] ; 2 uses
  %i.mn = zext i32 %.6880 to i64
  %.val942 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mo = getelementptr inbounds nuw i8, ptr %.val942, i64 %i.mn
  %.0.copyload.i1103 = load i32, ptr %i.mo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1103) #7, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AeraseFromParent0x280x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1103)
  %i.mp = add i32 %.6880, 4                       ; 2 uses
  %.not938 = icmp eq i32 %i.mp, %i.mm
  br i1 %.not938, label %bb.bg, label %bb.bf

bb.bg:                                            ; preds = %bb.bf
  %.val941 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mq = getelementptr inbounds nuw i8, ptr %.val941, i64 %i.l
  %.0.copyload.i1104 = load i32, ptr %i.mq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1104) #7, !srcloc !19
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bd
  %.7881 = phi i32 [ %.0.copyload.i1104, %bb.bg ], [ %.0.copyload.i1101, %bb.bd ] ; 2 uses
  %.not939 = icmp eq i32 %.7881, %i.i
  br i1 %.not939, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.7881) #7
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mr = getelementptr inbounds nuw i8, ptr %.val, i64 %i.w
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %.0.copyload.i1105 = load i32, ptr %i.ms, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1105) #7, !srcloc !19
  %.not940 = icmp eq i32 %.0.copyload.i1105, %i.h
  br i1 %.not940, label %.loopexit1129, label %bb.c

.loopexit1129:                                    ; preds = %bb.bj, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ %.3, %bb.bj ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %.4
}

declare void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3AInstruction0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AInsertProfilePoint0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 39 uses
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %.val286 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val286, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.h = zext i32 %i.c to i64                     ; 3 uses
  %.val310 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val310, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %i.j, align 1
  %.val309 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val309, i64 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %i.l, align 1
  %.val302 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val302, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %.0.copyload.i, ptr %i.n, align 1
  %.val285 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val285, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.0.copyload.i313 = load i32, ptr %i.p, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i313) #7, !srcloc !19
  %i.q = add i32 %2, 48                           ; 2 uses
  %i.r = icmp ne i32 %.0.copyload.i313, %i.q      ; 2 uses
  br i1 %i.r, label %.preheader328, label %.loopexit329

.preheader328:                                    ; preds = %bb.a
  %i.s = add i32 %i.b, -20
  %i.t = zext i32 %i.s to i64                     ; 4 uses
  %i.u = add nuw nsw i64 %i.t, 4                  ; 2 uses
  %i.v = add nuw nsw i64 %i.t, 8                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader328, %bb.h
  %.0257 = phi i32 [ %.0.copyload.i327, %bb.h ], [ %.0.copyload.i313, %.preheader328 ] ; 2 uses
  %.0256 = phi i32 [ %i.cz, %bb.h ], [ 1, %.preheader328 ] ; 3 uses
  %i.w = zext i32 %.0257 to i64                   ; 2 uses
  %.val284 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val284, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.0.copyload.i314 = load i32, ptr %i.y, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i314) #7, !srcloc !19
  %i.z = add i32 %.0257, 36                       ; 3 uses
  %i.aa = icmp eq i32 %.0.copyload.i314, %i.z
  br i1 %i.aa, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.d
  %.0258 = phi i32 [ %.0.copyload.i316, %bb.d ], [ %.0.copyload.i314, %bb.b ] ; 3 uses
  %i.ab = zext i32 %.0258 to i64                  ; 2 uses
  %.val311 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val311, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.0.copyload.i315 = load i8, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i315) #7, !srcloc !21
  %i.ae = zext i8 %.0.copyload.i315 to i32
  %i.af = add nsw i32 %i.ae, -33                  ; 2 uses
  %i.ag = icmp ugt i32 %i.af, 27
  br i1 %i.ag, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ah = shl nuw nsw i32 1, %i.af
  %i.ai = and i32 %i.ah, 142606337
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val283 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val283, i64 %i.ab
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.0.copyload.i316 = load i32, ptr %i.ak, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i316) #7, !srcloc !19
  %.not270 = icmp eq i32 %.0.copyload.i316, %i.z
  br i1 %.not270, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.d, %bb.b
  %.0259 = phi i32 [ %.0.copyload.i314, %bb.b ], [ %.0258, %bb.c ], [ %.0258, %.preheader ], [ %i.z, %bb.d ] ; 2 uses
  %.val301 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val301, i64 %i.u
  store i32 %.0259, ptr %i.al, align 1
  %i.am = zext i32 %.0259 to i64
  %.val282 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.val282, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 36
  %.0.copyload.i317 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i317) #7, !srcloc !19
  %.val300 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val300, i64 %i.v
  store i32 %.0.copyload.i317, ptr %i.ap, align 1
  %i.aq = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 84) #7 ; 5 uses
  %i.ar = zext i32 %i.aq to i64                   ; 14 uses
  %i.as = add nuw nsw i64 %i.ar, 68               ; 2 uses
  %.val308 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val308, i64 %i.as
  store i64 0, ptr %i.at, align 1
  %i.au = add nuw nsw i64 %i.ar, 36               ; 2 uses
  %.val299 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val299, i64 %i.au
  store i32 0, ptr %i.av, align 1
  %.val304 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val304, i64 %i.ar
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i8 107, ptr %i.ax, align 1
  %.val307 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val307, i64 %i.ar
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  store i64 8589934592, ptr %i.az, align 1
  %.val298 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val298, i64 %i.ar
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  store i32 459775, ptr %i.bb, align 1
  %.val306 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val306, i64 %i.ar
  store i64 0, ptr %i.bc, align 1
  %i.bd = and i32 %.0256, 65535
  %.val312 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.be = trunc i32 %.0256 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %.val312, i64 %i.ar
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  store i16 %i.be, ptr %i.bg, align 1
  %.val305 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val305, i64 %i.ar
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 44
  store i64 8589934592, ptr %i.bi, align 1
  %i.bj = add i32 %i.aq, 52
  %.val297 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val297, i64 %i.ar
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store i32 %i.bj, ptr %i.bl, align 1
  %i.bm = add i32 %i.aq, 28
  %.val296 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val296, i64 %i.ar
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i32 %i.bm, ptr %i.bo, align 1
  %i.bp = add nuw nsw i64 %i.ar, 76               ; 2 uses
  %.val295 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val295, i64 %i.bp
  store i32 0, ptr %i.bq, align 1
  %.val281 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val281, i64 %i.v
  %.0.copyload.i318 = load i32, ptr %i.br, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i318) #7, !srcloc !19
  %i.bs = zext i32 %.0.copyload.i318 to i64
  %.val280 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val280, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 44
  %.0.copyload.i319 = load i32, ptr %i.bu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i319) #7, !srcloc !19
  %i.bv = zext i32 %.0.copyload.i319 to i64
  %.val303 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val303, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 136
  %.0.copyload.i320 = load i64, ptr %i.bx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i320) #7, !srcloc !20
  %i.by = and i64 %.0.copyload.i320, 1095216660480
  %.not271 = icmp eq i64 %i.by, 0
  %.val278 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val278, i64 %i.u
  %.0.copyload.i322 = load i32, ptr %i.bz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i322) #7
  br i1 %.not271, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ca = trunc i64 %.0.copyload.i320 to i32
  br label %bb.h

bb.f:                                             ; preds = %.loopexit
  %i.cb = add i32 %.0.copyload.i318, 36
  %i.cc = icmp eq i32 %.0.copyload.i322, %i.cb
  br i1 %i.cc, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = zext i32 %.0.copyload.i322 to i64
  %.val277 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val277, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 76
  %.0.copyload.i323 = load i32, ptr %i.cf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i323) #7, !srcloc !19
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.0 = phi i32 [ %i.ca, %bb.e ], [ 0, %bb.f ], [ %.0.copyload.i323, %bb.g ]
  %.val294 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val294, i64 %i.bp
  store i32 %.0, ptr %i.cg, align 1
  %.val276 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val276, i64 %i.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %.0.copyload.i324 = load i32, ptr %i.ci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i324) #7, !srcloc !19
  %.val293 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val293, i64 %i.ar
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
end_hunk_1
