inline.NumInlined: 16097
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayPrototypeSplice0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %.val1876 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nf = getelementptr inbounds nuw i8, ptr %.val1876, i64 %i.e
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 96
  store i64 %.0.copyload.i2129, ptr %i.ng, align 1
  %.val1875 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nh = getelementptr inbounds nuw i8, ptr %.val1875, i64 %i.e
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  store i64 %.0.copyload.i2129, ptr %i.ni, align 1
  %.val1912 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nj = getelementptr inbounds nuw i8, ptr %.val1912, i64 %i.hm
  %.0.copyload.i2130 = load i32, ptr %i.nj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2130) #7, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedPropertyValue_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AComputedPropertyDescriptor0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.ml, i32 noundef %.01807, i32 noundef %3, i32 noundef %.0.copyload.i2130, i32 noundef %i.mm, i32 noundef %.11809) #7
  %.val1911 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nk = getelementptr inbounds nuw i8, ptr %.val1911, i64 %i.bc
  %.0.copyload.i2131 = load i32, ptr %i.nk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2131) #7, !srcloc !13
  %.not1849 = icmp eq i32 %.0.copyload.i2131, 0
  br i1 %.not1849, label %bb.cp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.val2053 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nl = getelementptr inbounds nuw i8, ptr %.val2053, i64 %i.e
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 128
  %.0.copyload.i2132 = load i64, ptr %i.nm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2132) #7, !srcloc !21
  %.mask1851 = and i64 %.0.copyload.i2132, -140737488355328
  %.not1850 = icmp eq i64 %.mask1851, -1970324836974592
  %.val1991 = load ptr, ptr %i.d, align 8, !tbaa !7 ; 2 uses
  br i1 %.not1850, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nn = getelementptr inbounds nuw i8, ptr %.val1991, i64 %i.mn
  store i64 %.0.copyload.i2132, ptr %i.nn, align 1
  %.val1993 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.no = getelementptr inbounds nuw i8, ptr %.val1993, i64 %i.e
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 20
  store i32 1, ptr %i.np, align 1
  %.val1992 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nq = getelementptr inbounds nuw i8, ptr %.val1992, i64 %i.e
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 428
  store i32 1, ptr %i.nr, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AputComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.mo, i32 noundef %.01807, i32 noundef %3, i32 noundef %.01806, i32 noundef %.01805, i32 noundef %.01807, i32 noundef %i.mp) #7
  %.val2047 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ns = getelementptr inbounds nuw i8, ptr %.val2047, i64 %i.e
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 92
  %.0.copyload.i2133 = load i8, ptr %i.nt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2133) #7, !srcloc !14
  %.not1853 = icmp eq i8 %.0.copyload.i2133, 0
  br i1 %.not1853, label %bb.cp, label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.nu = getelementptr inbounds nuw i8, ptr %.val1991, i64 %i.e
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 88
  store i32 1, ptr %i.nv, align 1
  %.val1990 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nw = getelementptr inbounds nuw i8, ptr %.val1990, i64 %i.e
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  store i32 1, ptr %i.nx, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdeleteComputed0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.mq, i32 noundef %.01807, i32 noundef %3, i32 noundef %.01806, i32 noundef %i.mr) #7
  %.val2046 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ny = getelementptr inbounds nuw i8, ptr %.val2046, i64 %i.e
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 428
  %.0.copyload.i2134 = load i8, ptr %i.nz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2134) #7, !srcloc !14
  %.not1852 = icmp eq i8 %.0.copyload.i2134, 0
  br i1 %.not1852, label %bb.cp, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.val1910 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.oa = getelementptr inbounds nuw i8, ptr %.val1910, i64 %i.q
  %.0.copyload.i2135 = load i32, ptr %i.oa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2135) #7, !srcloc !13
  %i.ob = add i32 %.0.copyload.i2135, %i.mg
  %i.oc = zext i32 %i.ob to i64
  %.val1909 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.od = getelementptr inbounds nuw i8, ptr %.val1909, i64 %i.oc
  %.0.copyload.i2136 = load i32, ptr %i.od, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2136) #7, !srcloc !13
  %.val1989 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.oe = getelementptr inbounds nuw i8, ptr %.val1989, i64 %i.u
  store i32 %.0.copyload.i2113, ptr %i.oe, align 1
  %.val1988 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.of = getelementptr inbounds nuw i8, ptr %.val1988, i64 %i.z
  store i32 %.0.copyload.i2114, ptr %i.of, align 1
  %i.og = add i32 %.0.copyload.i2136, 128
  %.val1987 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.oh = getelementptr inbounds nuw i8, ptr %.val1987, i64 %i.x
  store i32 %i.og, ptr %i.oh, align 1
  %i.oi = fadd double %.01800, 1.000000e+00       ; 2 uses
  %i.oj = fcmp olt double %i.oi, %i.me
  br i1 %i.oj, label %bb.bn, label %.loopexit2164

.loopexit2164:                                    ; preds = %bb.br, %bb.bl
  %i.ok = fadd double %i.cf, -1.000000e+00        ; 2 uses
  %i.ol = zext i32 %.01804 to i64                 ; 3 uses
  %.val2066 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.om = getelementptr inbounds nuw i8, ptr %.val2066, i64 %i.ol
  store double %i.ok, ptr %i.om, align 1
  %i.on = fadd double %i.me, %i.md
  %i.oo = fadd double %i.on, -1.000000e+00        ; 2 uses
  %i.op = fcmp uge double %i.oo, %i.ok
  br i1 %i.op, label %.loopexit2163, label %bb.bs

bb.bs:                                            ; preds = %.loopexit2164
  %i.oq = shl i32 %.0.copyload.i2113, 2
  %i.or = add i32 %i.b, -312
  %i.os = add i32 %i.b, -420
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %bb.bs
  %.val1986 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ot = getelementptr inbounds nuw i8, ptr %.val1986, i64 %i.e
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 84
  store i32 1, ptr %i.ou, align 1
  %.val1985 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ov = getelementptr inbounds nuw i8, ptr %.val1985, i64 %i.e
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 12
  store i32 1, ptr %i.ow, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdeleteComputed0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.or, i32 noundef %.01807, i32 noundef %3, i32 noundef %.01804, i32 noundef %i.os) #7
  %.val2045 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ox = getelementptr inbounds nuw i8, ptr %.val2045, i64 %i.bc
  %.0.copyload.i2137 = load i8, ptr %i.ox, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2137) #7, !srcloc !14
  %.not1854 = icmp eq i8 %.0.copyload.i2137, 0
  br i1 %.not1854, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.oy = zext i32 %1 to i64
  %.val1984 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.oz = getelementptr inbounds nuw i8, ptr %.val1984, i64 %i.oy
  store i32 0, ptr %i.oz, align 1
  br label %bb.cq

bb.bv:                                            ; preds = %bb.bt
  %.val2062 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pa = getelementptr inbounds nuw i8, ptr %.val2062, i64 %i.ol
  %.0.copyload.i2138 = load double, ptr %i.pa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i2138) #7, !srcloc !36
  %i.pb = fadd double %.0.copyload.i2138, -1.000000e+00 ; 2 uses
  %i.pc = bitcast double %i.pb to i64
  %i.pd = fcmp uno double %i.pb, 0.000000e+00
  %i.pe = select i1 %i.pd, i64 9221120237041090560, i64 %i.pc ; 2 uses
  %.val1873 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pf = getelementptr inbounds nuw i8, ptr %.val1873, i64 %i.ol
  store i64 %i.pe, ptr %i.pf, align 1
  %.val1908 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pg = getelementptr inbounds nuw i8, ptr %.val1908, i64 %i.q
  %.0.copyload.i2139 = load i32, ptr %i.pg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2139) #7, !srcloc !13
  %i.ph = add i32 %.0.copyload.i2139, %i.oq
  %i.pi = zext i32 %i.ph to i64
  %.val1907 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pj = getelementptr inbounds nuw i8, ptr %.val1907, i64 %i.pi
  %.0.copyload.i2140 = load i32, ptr %i.pj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2140) #7, !srcloc !13
  %.val1983 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pk = getelementptr inbounds nuw i8, ptr %.val1983, i64 %i.u
  store i32 %.0.copyload.i2113, ptr %i.pk, align 1
  %.val1982 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pl = getelementptr inbounds nuw i8, ptr %.val1982, i64 %i.z
  store i32 %.0.copyload.i2114, ptr %i.pl, align 1
  %i.pm = add i32 %.0.copyload.i2140, 128
  %.val1981 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pn = getelementptr inbounds nuw i8, ptr %.val1981, i64 %i.x
  store i32 %i.pm, ptr %i.pn, align 1
  %i.po = bitcast i64 %i.pe to double
  %i.pp = fcmp olt double %i.oo, %i.po
  br i1 %i.pp, label %bb.bt, label %.loopexit2163

bb.bw:                                            ; preds = %bb.ax
  %i.pq = zext i32 %1 to i64
  %.val1980 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pr = getelementptr inbounds nuw i8, ptr %.val1980, i64 %i.pq
  store i32 0, ptr %i.pr, align 1
  br label %bb.cq

bb.bx:                                            ; preds = %bb.bk
  %.not1855 = icmp samesign ult i64 %.01802216021782181, %i.mc
  br i1 %.not1855, label %bb.by, label %.loopexit2163

bb.by:                                            ; preds = %bb.bx
  %i.ps = fsub double %i.cf, %i.fi                ; 2 uses
  %i.pt = fcmp ule double %i.ps, %.0.copyload.i2089
  br i1 %i.pt, label %.loopexit2163, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pu = uitofp i32 %i.mb to double
  %i.pv = shl i32 %.0.copyload.i2113, 2
  %i.pw = zext i32 %.11809 to i64
  %i.px = zext i32 %.01806 to i64
  %i.py = add i32 %i.b, -320
  %i.pz = add i32 %i.b, -316
  %i.qa = add i32 %i.b, -312
  %i.qb = add i32 %i.b, -392
  %i.qc = zext i32 %.01805 to i64
  %i.qd = add i32 %i.b, -340
  %i.qe = add i32 %i.b, -396
  %i.qf = add i32 %i.b, -4
  %i.qg = add i32 %i.b, -400
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ce, %bb.bz
  %.1 = phi double [ %i.ps, %bb.bz ], [ %i.rp, %bb.ce ] ; 3 uses
  %5 = fadd double %.1, %i.fi
  %6 = fadd double %5, -1.000000e+00              ; 2 uses
  %7 = bitcast double %6 to i64
  %8 = fcmp uno double %6, 0.000000e+00
  %9 = select i1 %8, i64 9221120237041090560, i64 %7
  %.val1872 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qh = getelementptr inbounds nuw i8, ptr %.val1872, i64 %i.pw
  store i64 %9, ptr %i.qh, align 1
  %10 = fadd double %.1, %i.pu
  %11 = fadd double %10, -1.000000e+00            ; 2 uses
  %12 = bitcast double %11 to i64
  %13 = fcmp uno double %11, 0.000000e+00
  %14 = select i1 %13, i64 9221120237041090560, i64 %12
  %.val1871 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qi = getelementptr inbounds nuw i8, ptr %.val1871, i64 %i.px
  store i64 %14, ptr %i.qi, align 1
  %.val1870 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qj = getelementptr inbounds nuw i8, ptr %.val1870, i64 %i.ld
  store i64 -4294967296, ptr %i.qj, align 1
  %i.qk = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedPrimitiveDescriptor0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AComputedPropertyDescriptor0x260x29(ptr noundef nonnull %0, i32 noundef %.01807, i32 noundef %3, i32 noundef %.11809, i32 noundef %i.py, i32 noundef %i.pz, i32 noundef %i.lb) #7 ; 0 uses
  %.val2052 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ql = getelementptr inbounds nuw i8, ptr %.val2052, i64 %i.ld
  %.0.copyload.i2141 = load i64, ptr %i.ql, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2141) #7, !srcloc !21
  %.val1869 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qm = getelementptr inbounds nuw i8, ptr %.val1869, i64 %i.e
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 72
  store i64 %.0.copyload.i2141, ptr %i.qn, align 1
  %.val1868 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qo = getelementptr inbounds nuw i8, ptr %.val1868, i64 %i.e
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 40
  store i64 %.0.copyload.i2141, ptr %i.qp, align 1
  %.val1906 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qq = getelementptr inbounds nuw i8, ptr %.val1906, i64 %i.hm
  %.0.copyload.i2142 = load i32, ptr %i.qq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2142) #7, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedPropertyValue_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AComputedPropertyDescriptor0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.qa, i32 noundef %.01807, i32 noundef %3, i32 noundef %.0.copyload.i2142, i32 noundef %i.qb, i32 noundef %.11809) #7
  %.val1905 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qr = getelementptr inbounds nuw i8, ptr %.val1905, i64 %i.bc
  %.0.copyload.i2143 = load i32, ptr %i.qr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2143) #7, !srcloc !13
  %.not1856 = icmp eq i32 %.0.copyload.i2143, 0
  br i1 %.not1856, label %bb.co, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.val2051 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qs = getelementptr inbounds nuw i8, ptr %.val2051, i64 %i.e
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 128
  %.0.copyload.i2144 = load i64, ptr %i.qt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2144) #7, !srcloc !21
  %.mask1858 = and i64 %.0.copyload.i2144, -140737488355328
  %.not1857 = icmp eq i64 %.mask1858, -1970324836974592
  %.val1977 = load ptr, ptr %i.d, align 8, !tbaa !7 ; 2 uses
  br i1 %.not1857, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qu = getelementptr inbounds nuw i8, ptr %.val1977, i64 %i.qc
  store i64 %.0.copyload.i2144, ptr %i.qu, align 1
  %.val1979 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qv = getelementptr inbounds nuw i8, ptr %.val1979, i64 %i.e
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 36
  store i32 1, ptr %i.qw, align 1
  %.val1978 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qx = getelementptr inbounds nuw i8, ptr %.val1978, i64 %i.e
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 428
  store i32 1, ptr %i.qy, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AputComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.qd, i32 noundef %.01807, i32 noundef %3, i32 noundef %.01806, i32 noundef %.01805, i32 noundef %.01807, i32 noundef %i.qe) #7
  %.val2044 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qz = getelementptr inbounds nuw i8, ptr %.val2044, i64 %i.e
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 92
  %.0.copyload.i2145 = load i8, ptr %i.ra, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2145) #7, !srcloc !14
  %.not1860 = icmp eq i8 %.0.copyload.i2145, 0
  br i1 %.not1860, label %bb.co, label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.rb = getelementptr inbounds nuw i8, ptr %.val1977, i64 %i.e
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 68
  store i32 1, ptr %i.rc, align 1
  %.val1976 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rd = getelementptr inbounds nuw i8, ptr %.val1976, i64 %i.e
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 32
  store i32 1, ptr %i.re, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdeleteComputed0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.qf, i32 noundef %.01807, i32 noundef %3, i32 noundef %.01806, i32 noundef %i.qg) #7
  %.val2043 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rf = getelementptr inbounds nuw i8, ptr %.val2043, i64 %i.e
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 428
  %.0.copyload.i2146 = load i8, ptr %i.rg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2146) #7, !srcloc !14
  %.not1859 = icmp eq i8 %.0.copyload.i2146, 0
  br i1 %.not1859, label %bb.co, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.val1904 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rh = getelementptr inbounds nuw i8, ptr %.val1904, i64 %i.q
  %.0.copyload.i2147 = load i32, ptr %i.rh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2147) #7, !srcloc !13
  %i.ri = add i32 %.0.copyload.i2147, %i.pv
  %i.rj = zext i32 %i.ri to i64
  %.val1903 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rk = getelementptr inbounds nuw i8, ptr %.val1903, i64 %i.rj
  %.0.copyload.i2148 = load i32, ptr %i.rk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2148) #7, !srcloc !13
  %.val1975 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rl = getelementptr inbounds nuw i8, ptr %.val1975, i64 %i.u
  store i32 %.0.copyload.i2113, ptr %i.rl, align 1
  %.val1974 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rm = getelementptr inbounds nuw i8, ptr %.val1974, i64 %i.z
  store i32 %.0.copyload.i2114, ptr %i.rm, align 1
  %i.rn = add i32 %.0.copyload.i2148, 128
  %.val1973 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ro = getelementptr inbounds nuw i8, ptr %.val1973, i64 %i.x
  store i32 %i.rn, ptr %i.ro, align 1
  %i.rp = fadd double %.1, -1.000000e+00          ; 2 uses
  %i.rq = fcmp ogt double %i.rp, %.0.copyload.i2089
  br i1 %i.rq, label %bb.ca, label %.loopexit2163

.loopexit2163:                                    ; preds = %bb.ce, %bb.bv, %bb.by, %bb.bx, %.loopexit2164
  %i.rr = bitcast double %.0.copyload.i2089 to i64
  %i.rs = fcmp uno double %.0.copyload.i2089, 0.000000e+00
  %i.rt = select i1 %i.rs, i64 9221120237041090560, i64 %i.rr
  %i.ru = zext i32 %.01803 to i64                 ; 3 uses
  %.val1866 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rv = getelementptr inbounds nuw i8, ptr %.val1866, i64 %i.ru
  store i64 %i.rt, ptr %i.rv, align 1
  %i.rw = icmp ugt i32 %.0.copyload.i2086, 2
  br i1 %i.rw, label %bb.cf, label %.loopexit

bb.cf:                                            ; preds = %.loopexit2163
  %i.rx = shl i32 %.0.copyload.i2113, 2
  %i.ry = add i32 %i.b, -424
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ci, %bb.cf
  %.2 = phi i32 [ 2, %bb.cf ], [ %i.sv, %bb.ci ]  ; 2 uses
  %.val1972 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rz = getelementptr inbounds nuw i8, ptr %.val1972, i64 %i.e
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store i32 1, ptr %i.sa, align 1
  %.val1971 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sb = getelementptr inbounds nuw i8, ptr %.val1971, i64 %i.bc
  store i32 1, ptr %i.sb, align 1
  %i.sc = shl i32 %.2, 3
  %i.sd = sub i32 %i.cj, %i.sc
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AputComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.lb, i32 noundef %.01807, i32 noundef %3, i32 noundef %.01803, i32 noundef %i.sd, i32 noundef %.01807, i32 noundef %i.ry) #7
  %.val2042 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.se = getelementptr inbounds nuw i8, ptr %.val2042, i64 %i.ld
  %.0.copyload.i2149 = load i8, ptr %i.se, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2149) #7, !srcloc !14
  %.not1862 = icmp eq i8 %.0.copyload.i2149, 0
  br i1 %.not1862, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.sf = zext i32 %1 to i64
  %.val1970 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sg = getelementptr inbounds nuw i8, ptr %.val1970, i64 %i.sf
  store i32 0, ptr %i.sg, align 1
  br label %bb.cq

bb.ci:                                            ; preds = %bb.cg
  %.val2061 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sh = getelementptr inbounds nuw i8, ptr %.val2061, i64 %i.ru
  %.0.copyload.i2150 = load double, ptr %i.sh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i2150) #7, !srcloc !36
  %i.si = fadd double %.0.copyload.i2150, 1.000000e+00 ; 2 uses
  %i.sj = bitcast double %i.si to i64
  %i.sk = fcmp uno double %i.si, 0.000000e+00
  %i.sl = select i1 %i.sk, i64 9221120237041090560, i64 %i.sj
  %.val1865 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sm = getelementptr inbounds nuw i8, ptr %.val1865, i64 %i.ru
  store i64 %i.sl, ptr %i.sm, align 1
  %.val1902 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sn = getelementptr inbounds nuw i8, ptr %.val1902, i64 %i.q
  %.0.copyload.i2151 = load i32, ptr %i.sn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2151) #7, !srcloc !13
  %i.so = add i32 %.0.copyload.i2151, %i.rx
  %i.sp = zext i32 %i.so to i64
  %.val1901 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sq = getelementptr inbounds nuw i8, ptr %.val1901, i64 %i.sp
  %.0.copyload.i2152 = load i32, ptr %i.sq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2152) #7, !srcloc !13
  %.val1969 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sr = getelementptr inbounds nuw i8, ptr %.val1969, i64 %i.u
  store i32 %.0.copyload.i2113, ptr %i.sr, align 1
  %.val1968 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ss = getelementptr inbounds nuw i8, ptr %.val1968, i64 %i.z
  store i32 %.0.copyload.i2114, ptr %i.ss, align 1
  %i.st = add i32 %.0.copyload.i2152, 128
  %.val1967 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.su = getelementptr inbounds nuw i8, ptr %.val1967, i64 %i.x
  store i32 %i.st, ptr %i.su, align 1
  %i.sv = add nuw i32 %.2, 1                      ; 2 uses
  %.not1863 = icmp eq i32 %i.sv, %.0.copyload.i2086
  br i1 %.not1863, label %.loopexit, label %bb.cg

.loopexit:                                        ; preds = %bb.ci, %.loopexit2163
  %i.sw = fsub double %i.cf, %i.fi
  %i.sx = uitofp i32 %i.mb to double
  %i.sy = fadd double %i.sw, %i.sx                ; 2 uses
  %.val1900 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sz = getelementptr inbounds nuw i8, ptr %.val1900, i64 %i.i
  %.0.copyload.i2153 = load i32, ptr %i.sz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2153) #7, !srcloc !13
  %i.ta = zext i32 %.0.copyload.i2153 to i64      ; 2 uses
  %i.tb = add nuw nsw i64 %i.ta, 164              ; 2 uses
  %.val1899 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tc = getelementptr inbounds nuw i8, ptr %.val1899, i64 %i.tb
  %.0.copyload.i2154 = load i32, ptr %i.tc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2154) #7, !srcloc !13
  %.val1898 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.td = getelementptr inbounds nuw i8, ptr %.val1898, i64 %i.ta
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 168
  %.0.copyload.i2155 = load i32, ptr %i.te, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2155) #7, !srcloc !13
  %i.tf = icmp ult i32 %.0.copyload.i2154, %.0.copyload.i2155
  br i1 %i.tf, label %bb.cj, label %bb.ck
end_hunk_0
