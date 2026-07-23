inline.NumInlined: 16097
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3A0x7ERuntime0x280x29:bb.a
  %i.xe = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.xf = zext i32 %.0.copyload.i1896 to i64
  %i.xg = getelementptr inbounds nuw [24 x i8], ptr %i.xe, i64 %i.xf ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !29 ; 2 uses
  %.not1573 = icmp eq ptr %i.xi, null
  br i1 %.not1573, label %.critedge1596, label %bb.ew, !prof !23

bb.ew:                                            ; preds = %bb.ev
  %i.xj = load ptr, ptr %i.xg, align 8, !tbaa !32 ; 4 uses
  %i.xk = icmp eq ptr %i.wo, %i.xj
  br i1 %i.xk, label %func_types_eq.exit1900.thread, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.xl = icmp ne ptr %i.xj, null
  %or.cond.i1897 = and i1 %i.wp, %i.xl
  br i1 %or.cond.i1897, label %func_types_eq.exit1900, label %.critedge1596, !prof !33

func_types_eq.exit1900:                           ; preds = %bb.ex
  %i.xm = load i128, ptr %i.wo, align 1
  %i.xn = load i128, ptr %i.xj, align 1
  %i.xo = xor i128 %i.xm, %i.xn
  %i.xp = getelementptr i8, ptr %i.wo, i64 16
  %i.xq = getelementptr i8, ptr %i.xj, i64 16
  %i.xr = load i128, ptr %i.xp, align 1
  %i.xs = load i128, ptr %i.xq, align 1
  %i.xt = xor i128 %i.xr, %i.xs
  %i.xu = or i128 %i.xo, %i.xt
  %i.xv = icmp ne i128 %i.xu, 0
  %i.xw = zext i1 %i.xv to i32
  %.not.i1899 = icmp eq i32 %i.xw, 0
  br i1 %.not.i1899, label %func_types_eq.exit1900.thread, label %.critedge1596, !prof !34

.critedge1596:                                    ; preds = %bb.ex, %bb.ev, %bb.eu, %func_types_eq.exit1900
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit1900.thread:                    ; preds = %bb.ew, %func_types_eq.exit1900
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !35
  tail call void %i.xi(ptr noundef %i.xy, i32 noundef %.13) #7
  br label %bb.ey

bb.ey:                                            ; preds = %bb.es, %func_types_eq.exit1900.thread
  %.not1574 = icmp eq i32 %i.wq, %.0.copyload.i1891
  br i1 %.not1574, label %bb.ez, label %bb.eq

bb.ez:                                            ; preds = %bb.ey
  %.val1604 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.xz = getelementptr inbounds nuw i8, ptr %.val1604, i64 %i.wj
  %.0.copyload.i1901 = load i32, ptr %i.xz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1901) #7, !srcloc !13
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ep
  %.14 = phi i32 [ %.0.copyload.i1901, %bb.ez ], [ %.0.copyload.i1891, %bb.ep ]
  %.val1721 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ya = getelementptr inbounds nuw i8, ptr %.val1721, i64 %i.b
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 5260
  store i32 %.0.copyload.i1891, ptr %i.yb, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.14) #7
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.eo
  %i.yc = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3A0x7EHadesGC0x280x29(ptr noundef nonnull %0, i32 noundef %i.f) #7 ; 0 uses
  %.val1603 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.yd = getelementptr inbounds nuw i8, ptr %.val1603, i64 %i.b
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 812
  %.0.copyload.i1902 = load i32, ptr %i.ye, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1902) #7, !srcloc !13
  %.not1575 = icmp eq i32 %.0.copyload.i1902, 0
  br i1 %.not1575, label %bb.fh, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.yf = zext i32 %.0.copyload.i1902 to i64      ; 2 uses
  %i.yg = add nuw nsw i64 %i.yf, 4                ; 2 uses
  %.val1602 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.yh = getelementptr inbounds nuw i8, ptr %.val1602, i64 %i.yg
  %.0.copyload.i1903 = load i32, ptr %i.yh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1903) #7, !srcloc !13
  %i.yi = add i32 %.0.copyload.i1903, -1
  %.val1720 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.yj = getelementptr inbounds nuw i8, ptr %.val1720, i64 %i.yg
  store i32 %i.yi, ptr %i.yj, align 1
  %.not1576 = icmp eq i32 %.0.copyload.i1903, 0
  br i1 %.not1576, label %bb.fd, label %bb.fh

bb.fd:                                            ; preds = %bb.fc
  %.val1601 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.yk = getelementptr inbounds nuw i8, ptr %.val1601, i64 %i.yf
  %.0.copyload.i1904 = load i32, ptr %i.yk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1904) #7, !srcloc !13
  %i.yl = zext i32 %.0.copyload.i1904 to i64
  %.val1600 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ym = getelementptr inbounds nuw i8, ptr %.val1600, i64 %i.yl
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %.0.copyload.i1905 = load i32, ptr %i.yn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1905) #7, !srcloc !13
  %i.yo = load i32, ptr %i.ab, align 4, !tbaa !26
  %i.yp = icmp ult i32 %.0.copyload.i1905, %i.yo
  br i1 %i.yp, label %bb.fe, label %.critedge1598, !prof !27

bb.fe:                                            ; preds = %bb.fd
  %i.yq = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.yr = zext i32 %.0.copyload.i1905 to i64
  %i.ys = getelementptr inbounds nuw [24 x i8], ptr %i.yq, i64 %i.yr ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !29 ; 2 uses
  %.not1577 = icmp eq ptr %i.yu, null
  br i1 %.not1577, label %.critedge1598, label %bb.ff, !prof !23

bb.ff:                                            ; preds = %bb.fe
  %i.yv = load ptr, ptr @w2c_hermes_t3, align 8, !tbaa !31 ; 4 uses
  %i.yw = load ptr, ptr %i.ys, align 8, !tbaa !32 ; 4 uses
  %i.yx = icmp eq ptr %i.yv, %i.yw
  br i1 %i.yx, label %func_types_eq.exit1909.thread, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.yy = icmp ne ptr %i.yv, null
  %i.yz = icmp ne ptr %i.yw, null
  %or.cond.i1906 = and i1 %i.yy, %i.yz
  br i1 %or.cond.i1906, label %func_types_eq.exit1909, label %.critedge1598, !prof !33

func_types_eq.exit1909:                           ; preds = %bb.fg
  %i.za = load i128, ptr %i.yv, align 1
  %i.zb = load i128, ptr %i.yw, align 1
  %i.zc = xor i128 %i.za, %i.zb
  %i.zd = getelementptr i8, ptr %i.yv, i64 16
  %i.ze = getelementptr i8, ptr %i.yw, i64 16
  %i.zf = load i128, ptr %i.zd, align 1
  %i.zg = load i128, ptr %i.ze, align 1
  %i.zh = xor i128 %i.zf, %i.zg
  %i.zi = or i128 %i.zc, %i.zh
  %i.zj = icmp ne i128 %i.zi, 0
  %i.zk = zext i1 %i.zj to i32
  %.not.i1908 = icmp eq i32 %i.zk, 0
  br i1 %.not.i1908, label %func_types_eq.exit1909.thread, label %.critedge1598, !prof !34

.critedge1598:                                    ; preds = %bb.fg, %bb.fe, %bb.fd, %func_types_eq.exit1909
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit1909.thread:                    ; preds = %bb.ff, %func_types_eq.exit1909
  %i.zl = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !35
  tail call void %i.yu(ptr noundef %i.zm, i32 noundef %.0.copyload.i1902) #7
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fshared_weak_count0x3A0x3A_0x5Frelease_weak0x280x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1902) #7
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fc, %bb.fb, %func_types_eq.exit1909.thread
  %.val1599 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.zn = getelementptr inbounds nuw i8, ptr %.val1599, i64 %i.b
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 744
  %.0.copyload.i1910 = load i32, ptr %i.zo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1910) #7, !srcloc !13
  %i.zp = add i32 %1, 756
  %.not1578 = icmp eq i32 %.0.copyload.i1910, %i.zp
  br i1 %.not1578, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1910) #7
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  ret i32 %1
}

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AfinalizeAll0x280x29(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntimeModule0x3A0x3AprepareForDestruction0x280x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val142 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val142, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !13
  %i.e = add nuw nsw i64 %i.b, 28                 ; 4 uses
  %.val141 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val141, i64 %i.e
  %.0.copyload.i146 = load i32, ptr %i.f, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i146) #7, !srcloc !13
  %i.g = sub i32 %.0.copyload.i, %.0.copyload.i146 ; 3 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @llvm.umax.i32(i32 %i.g, i32 7) ; 2 uses
  %i.j = icmp samesign ugt i32 %i.g, 7
  br i1 %i.j, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = lshr i32 %i.i, 2
  %i.l = and i32 %i.k, 536870910                  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %.0126 = phi i32 [ 0, %bb.c ], [ %i.ae, %bb.j ] ; 2 uses
  %i.m = shl nuw nsw i32 %.0126, 2                ; 2 uses
  %.val140 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.val140, i64 %i.e
  %.0.copyload.i147 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i147) #7, !srcloc !13
  %i.o = add i32 %.0.copyload.i147, %i.m
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.val139 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.val139, i64 %i.p
  %.0.copyload.i148 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i148) #7, !srcloc !13
  %.not = icmp eq i32 %.0.copyload.i148, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = zext i32 %.0.copyload.i148 to i64
  %.val138 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val138, i64 %i.r
  %.0.copyload.i149 = load i32, ptr %i.s, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i149) #7, !srcloc !13
  %i.t = icmp eq i32 %.0.copyload.i149, %1
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val145 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val145, i64 %i.p
  store i32 0, ptr %i.u, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %.val137 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val137, i64 %i.e
  %.0.copyload.i150 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i150) #7, !srcloc !13
  %i.w = or disjoint i32 %i.m, 4
  %i.x = add i32 %i.w, %.0.copyload.i150
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %.val136 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val136, i64 %i.y
  %.0.copyload.i151 = load i32, ptr %i.z, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i151) #7, !srcloc !13
  %.not129 = icmp eq i32 %.0.copyload.i151, 0
  br i1 %.not129, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = zext i32 %.0.copyload.i151 to i64
  %.val135 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val135, i64 %i.aa
  %.0.copyload.i152 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i152) #7, !srcloc !13
  %i.ac = icmp eq i32 %.0.copyload.i152, %1
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val144 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val144, i64 %i.y
  store i32 0, ptr %i.ad, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.i
  %i.ae = add nuw nsw i32 %.0126, 2               ; 2 uses
  %.not130 = icmp eq i32 %i.ae, %i.l
  br i1 %.not130, label %.loopexit.loopexit, label %bb.d

.loopexit.loopexit:                               ; preds = %bb.j
  %i.af = shl nuw nsw i32 %i.l, 2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %i.af, %.loopexit.loopexit ]
  %i.ag = and i32 %i.i, 4
  %.not131 = icmp eq i32 %i.ag, 0
  br i1 %.not131, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %.val134 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val134, i64 %i.e
  %.0.copyload.i153 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i153) #7, !srcloc !13
  %i.ai = add i32 %.0.copyload.i153, %.1
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %.val133 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val133, i64 %i.aj
  %.0.copyload.i154 = load i32, ptr %i.ak, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i154) #7, !srcloc !13
  %.not132 = icmp eq i32 %.0.copyload.i154, 0
  br i1 %.not132, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = zext i32 %.0.copyload.i154 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 %i.al
  %.0.copyload.i155 = load i32, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i155) #7, !srcloc !13
  %i.an = icmp eq i32 %.0.copyload.i155, %1
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val143 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val143, i64 %i.aj
  store i32 0, ptr %i.ao, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.k, %.loopexit, %bb.a, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntimeModule0x3A0x3A0x7ERuntimeModule0x280x29(ptr noundef %0, i32 noundef returned %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 38 uses
  %i.e = zext i32 %1 to i64                       ; 15 uses
  %i.f = add nuw nsw i64 %i.e, 40                 ; 2 uses
  %.val314 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val314, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !13
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.b, -8
  %i.i = zext i32 %.0.copyload.i to i64
  %.val313 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val313, i64 %i.i
  %.0.copyload.i321 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i321) #7, !srcloc !13
  %i.k = zext i32 %.0.copyload.i321 to i64
  %.val312 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %.val312, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %.0.copyload.i322 = load i32, ptr %i.m, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i322) #7, !srcloc !13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26
  %i.q = icmp ult i32 %.0.copyload.i322, %i.p
  br i1 %i.q, label %bb.c, label %.critedge, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.s = zext i32 %.0.copyload.i322 to i64
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 2 uses
  %.not265 = icmp eq ptr %i.v, null
  br i1 %.not265, label %.critedge, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr @w2c_hermes_t0, align 8, !tbaa !31 ; 8 uses
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !32   ; 4 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %func_types_eq.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = icmp ne ptr %i.w, null
  %i.aa = icmp ne ptr %i.x, null
  %or.cond.i = and i1 %i.z, %i.aa
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !33

func_types_eq.exit:                               ; preds = %bb.e
  %i.ab = load i128, ptr %i.w, align 1
  %i.ac = load i128, ptr %i.x, align 1
  %i.ad = xor i128 %i.ab, %i.ac
  %i.ae = getelementptr i8, ptr %i.w, i64 16
  %i.af = getelementptr i8, ptr %i.x, i64 16
  %i.ag = load i128, ptr %i.ae, align 1
  %i.ah = load i128, ptr %i.af, align 1
  %i.ai = xor i128 %i.ag, %i.ah
  %i.aj = or i128 %i.ad, %i.ai
  %i.ak = icmp ne i128 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !34

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.b, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.d, %func_types_eq.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35
  tail call void %i.v(ptr noundef %i.an, i32 noundef %i.h, i32 noundef %.0.copyload.i) #7
  %i.ao = zext i32 %i.c to i64
  %.val311 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val311, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %.0.copyload.i323 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i323) #7, !srcloc !13
  %.not266 = icmp eq i32 %.0.copyload.i323, 0
  br i1 %.not266, label %bb.j, label %bb.f

bb.f:                                             ; preds = %func_types_eq.exit.thread
  %.val310 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val310, i64 %i.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.0.copyload.i324 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i324) #7, !srcloc !13
  %i.at = zext i32 %.0.copyload.i324 to i64
  %.val309 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val309, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 5600
  %.0.copyload.i325 = load i32, ptr %i.av, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i325) #7, !srcloc !13
  %.val308 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %.val308, i64 %i.f
  %.0.copyload.i326 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i326) #7, !srcloc !13
  %i.ax = zext i32 %.0.copyload.i325 to i64
  %.val307 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val307, i64 %i.ax
  %.0.copyload.i327 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i327) #7, !srcloc !13
  %i.az = zext i32 %.0.copyload.i327 to i64
  %.val306 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val306, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %.0.copyload.i328 = load i32, ptr %i.bb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i328) #7, !srcloc !13
  %i.bc = load i32, ptr %i.o, align 4, !tbaa !26
  %i.bd = icmp ult i32 %.0.copyload.i328, %i.bc
  br i1 %i.bd, label %bb.g, label %.critedge279, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.bf = zext i32 %.0.copyload.i328 to i64
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !29 ; 2 uses
  %.not267 = icmp eq ptr %i.bi, null
  br i1 %.not267, label %.critedge279, label %bb.h, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !32 ; 4 uses
  %i.bk = icmp eq ptr %i.w, %i.bj
  br i1 %i.bk, label %func_types_eq.exit332.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = icmp ne ptr %i.w, null
  %i.bm = icmp ne ptr %i.bj, null
  %or.cond.i329 = and i1 %i.bl, %i.bm
  br i1 %or.cond.i329, label %func_types_eq.exit332, label %.critedge279, !prof !33

func_types_eq.exit332:                            ; preds = %bb.i
  %i.bn = load i128, ptr %i.w, align 1
  %i.bo = load i128, ptr %i.bj, align 1
  %i.bp = xor i128 %i.bn, %i.bo
  %i.bq = getelementptr i8, ptr %i.w, i64 16
  %i.br = getelementptr i8, ptr %i.bj, i64 16
  %i.bs = load i128, ptr %i.bq, align 1
  %i.bt = load i128, ptr %i.br, align 1
  %i.bu = xor i128 %i.bs, %i.bt
  %i.bv = or i128 %i.bp, %i.bu
  %i.bw = icmp ne i128 %i.bv, 0
  %i.bx = zext i1 %i.bw to i32
  %.not.i331 = icmp eq i32 %i.bx, 0
  br i1 %.not.i331, label %func_types_eq.exit332.thread, label %.critedge279, !prof !34
end_hunk_0
