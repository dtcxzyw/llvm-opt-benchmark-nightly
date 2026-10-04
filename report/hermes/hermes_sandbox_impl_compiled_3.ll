Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_3?download=true
inline.NumInlined: 12272
inline.NumDeleted: 21
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AMarkAcceptor0x3A0x3AdrainSomeWork0x28unsigned0x20long0x29:bb.a
  %i.hx = and i32 %i.hv, 268435455
  %i.hy = zext i32 %.0.copyload.i1794 to i64      ; 2 uses
  %.val1644 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hz = getelementptr inbounds nuw i8, ptr %.val1644, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 568
  %.0.copyload.i1801 = load i32, ptr %i.ia, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1801) #8, !srcloc !13
  %.not1566 = icmp ult i32 %i.hx, %.0.copyload.i1801
  br i1 %.not1566, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %.val1643 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ib = getelementptr inbounds nuw i8, ptr %.val1643, i64 %i.hy
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 560
  %.0.copyload.i1802 = load i32, ptr %i.ic, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1802) #8, !srcloc !13
  %i.id = lshr i32 %i.hv, 3
  %i.ie = and i32 %i.id, 33554428
  %i.if = add i32 %.0.copyload.i1802, %i.ie
  %i.ig = zext i32 %i.if to i64                   ; 2 uses
  %.val1642 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ih = getelementptr inbounds nuw i8, ptr %.val1642, i64 %i.ig
  %.0.copyload.i1803 = load i32, ptr %i.ih, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1803) #8, !srcloc !13
  %i.ii = and i32 %i.hv, 31
  %i.ij = shl nuw i32 1, %i.ii
  %i.ik = or i32 %.0.copyload.i1803, %i.ij
  %.val1699 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.il = getelementptr inbounds nuw i8, ptr %.val1699, i64 %i.ig
  store i32 %i.ik, ptr %i.il, align 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak, %bb.ap, %bb.al
  %.5 = phi i32 [ %.4, %bb.ak ], [ %i.hu, %bb.al ], [ %.4, %bb.am ], [ %.4, %bb.an ], [ %.4, %bb.ao ], [ %.4, %bb.ap ] ; 2 uses
  %indvars.iv.next1884 = add nuw nsw i64 %indvars.iv1883, 1 ; 3 uses
  %i.im = zext nneg i32 %.5 to i64
  %i.in = icmp samesign ult i64 %indvars.iv.next1884, %i.im
  br i1 %i.in, label %bb.ag, label %.loopexit1865.loopexit

.loopexit1865.loopexit:                           ; preds = %bb.aq
  %i.io = trunc nuw nsw i64 %indvars.iv.next1884 to i32
  br label %.loopexit1865

.loopexit1865:                                    ; preds = %.loopexit1865.loopexit, %.loopexit1866
  %.41493 = phi i32 [ %.21491, %.loopexit1866 ], [ %i.io, %.loopexit1865.loopexit ] ; 3 uses
  %i.ip = or disjoint i64 %i.eo, 2                ; 2 uses
  %.val1739 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.iq = getelementptr inbounds nuw i8, ptr %.val1739, i64 %i.ip
  %.0.copyload.i1804 = load i8, ptr %i.iq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1804) #8, !srcloc !21
  %i.ir = zext i8 %.0.copyload.i1804 to i32       ; 2 uses
  %i.is = icmp ult i32 %.41493, %i.ir
  br i1 %i.is, label %bb.ar, label %.loopexit1864

bb.ar:                                            ; preds = %.loopexit1865
  %i.it = zext nneg i32 %.41493 to i64
  %i.iu = zext nneg i32 %i.em to i64
  br label %bb.as

bb.as:                                            ; preds = %bb.bb, %bb.ar
  %indvars.iv1886 = phi i64 [ %indvars.iv.next1887, %bb.bb ], [ %i.it, %bb.ar ] ; 2 uses
  %.01487 = phi i32 [ %.11488, %bb.bb ], [ %i.ir, %bb.ar ] ; 4 uses
  %.val1641 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.iv = getelementptr inbounds nuw i8, ptr %.val1641, i64 %i.ed
  %.0.copyload.i1805 = load i32, ptr %i.iv, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1805) #8, !srcloc !13
  %.val1738 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.iw = getelementptr inbounds nuw i8, ptr %.val1738, i64 %indvars.iv1886
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iu
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 283000
  %.0.copyload.i1806 = load i8, ptr %i.iy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1806) #8, !srcloc !21
  %i.iz = zext i8 %.0.copyload.i1806 to i32
  %i.ja = add i32 %.0.copyload.i1783, %i.iz       ; 3 uses
  %i.jb = zext i32 %i.ja to i64
  %.val1640 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jc = getelementptr inbounds nuw i8, ptr %.val1640, i64 %i.jb
  %.0.copyload.i1807 = load i32, ptr %i.jc, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1807) #8, !srcloc !13
  %i.jd = and i32 %.0.copyload.i1807, 4
  %.not1569 = icmp eq i32 %i.jd, 0
  br i1 %.not1569, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.je = and i32 %.0.copyload.i1807, -8
  %i.jf = zext i32 %.0.copyload.i1805 to i64
  %.val1639 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jg = getelementptr inbounds nuw i8, ptr %.val1639, i64 %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %.0.copyload.i1808 = load i32, ptr %i.jh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1808) #8, !srcloc !13
  %i.ji = zext i32 %.0.copyload.i1808 to i64
  %.val1638 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jj = getelementptr inbounds nuw i8, ptr %.val1638, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4400
  %.0.copyload.i1809 = load i32, ptr %i.jk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1809) #8, !srcloc !13
  %i.jl = and i32 %.0.copyload.i1807, -4194304    ; 2 uses
  %.not1572 = icmp eq i32 %.0.copyload.i1809, %i.jl
  br i1 %.not1572, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.jm = and i32 %i.ja, -4194304                 ; 2 uses
  %i.jn = icmp eq i32 %.0.copyload.i1809, %i.jm
  br i1 %i.jn, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jo = lshr i32 %i.ja, 9
  %i.jp = and i32 %i.jo, 8191
  %i.jq = or disjoint i32 %i.jp, %i.jm
  %i.jr = zext i32 %i.jq to i64
  %.val1724 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.js = getelementptr inbounds nuw i8, ptr %.val1724, i64 %i.jr
  store i8 1, ptr %i.js, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.av
  %i.jt = or disjoint i32 %i.jl, 16384            ; 2 uses
  %i.ju = sub i32 %.0.copyload.i1807, %i.jt
  %i.jv = lshr i32 %i.ju, 6
  %i.jw = and i32 %i.jv, 67108860
  %i.jx = add i32 %i.jw, %i.jt
  %i.jy = zext i32 %i.jx to i64
  %.val1637 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jz = getelementptr inbounds nuw i8, ptr %.val1637, i64 %i.jy
  %.0.copyload.i1810 = load i32, ptr %i.jz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1810) #8, !srcloc !13
  %i.ka = lshr i32 %.0.copyload.i1807, 3
  %i.kb = and i32 %i.ka, 31
  %i.kc = shl nuw i32 1, %i.kb
  %i.kd = and i32 %.0.copyload.i1810, %i.kc
  %.not1573 = icmp eq i32 %i.kd, 0
  br i1 %.not1573, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AMarkAcceptor0x3A0x3Apush0x28hermes0x3A0x3Avm0x3A0x3AGCCell0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1805, i32 noundef %i.je)
  %.val1737 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ke = getelementptr inbounds nuw i8, ptr %.val1737, i64 %i.ip
  %.0.copyload.i1811 = load i8, ptr %i.ke, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1811) #8, !srcloc !21
  %i.kf = zext i8 %.0.copyload.i1811 to i32
  br label %bb.bb

bb.ay:                                            ; preds = %bb.as
  %i.kg = and i32 %.0.copyload.i1807, 7
  %.not1570 = icmp ne i32 %i.kg, 5
  %i.kh = icmp ugt i32 %.0.copyload.i1807, -17
  %or.cond1602 = or i1 %i.kh, %.not1570
  br i1 %or.cond1602, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ki = lshr i32 %.0.copyload.i1807, 3          ; 2 uses
  %i.kj = and i32 %i.ki, 268435455
  %i.kk = zext i32 %.0.copyload.i1805 to i64      ; 2 uses
  %.val1636 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kl = getelementptr inbounds nuw i8, ptr %.val1636, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 568
  %.0.copyload.i1812 = load i32, ptr %i.km, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1812) #8, !srcloc !13
  %.not1571 = icmp ult i32 %i.kj, %.0.copyload.i1812
  br i1 %.not1571, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %.val1635 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kn = getelementptr inbounds nuw i8, ptr %.val1635, i64 %i.kk
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 560
  %.0.copyload.i1813 = load i32, ptr %i.ko, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1813) #8, !srcloc !13
  %i.kp = lshr i32 %.0.copyload.i1807, 6
  %i.kq = and i32 %i.kp, 33554428
  %i.kr = add i32 %.0.copyload.i1813, %i.kq
  %i.ks = zext i32 %i.kr to i64                   ; 2 uses
  %.val1634 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kt = getelementptr inbounds nuw i8, ptr %.val1634, i64 %i.ks
  %.0.copyload.i1814 = load i32, ptr %i.kt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1814) #8, !srcloc !13
  %i.ku = and i32 %i.ki, 31
  %i.kv = shl nuw i32 1, %i.ku
  %i.kw = or i32 %.0.copyload.i1814, %i.kv
  %.val1698 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kx = getelementptr inbounds nuw i8, ptr %.val1698, i64 %i.ks
  store i32 %i.kw, ptr %i.kx, align 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ay, %bb.aw, %bb.ba, %bb.ax
  %.11488 = phi i32 [ %.01487, %bb.aw ], [ %i.kf, %bb.ax ], [ %.01487, %bb.ay ], [ %.01487, %bb.ba ], [ %.01487, %bb.az ] ; 2 uses
  %indvars.iv.next1887 = add nuw nsw i64 %indvars.iv1886, 1 ; 3 uses
  %i.ky = zext nneg i32 %.11488 to i64
  %i.kz = icmp samesign ult i64 %indvars.iv.next1887, %i.ky
  br i1 %i.kz, label %bb.as, label %.loopexit1864.loopexit

.loopexit1864.loopexit:                           ; preds = %bb.bb
  %i.la = trunc nuw nsw i64 %indvars.iv.next1887 to i32
  br label %.loopexit1864

.loopexit1864:                                    ; preds = %.loopexit1864.loopexit, %.loopexit1865
  %.6 = phi i32 [ %.41493, %.loopexit1865 ], [ %i.la, %.loopexit1864.loopexit ] ; 2 uses
  %.val1736 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lb = getelementptr inbounds nuw i8, ptr %.val1736, i64 %i.eo
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 3
  %.0.copyload.i1815 = load i8, ptr %i.lc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1815) #8, !srcloc !21
  %i.ld = zext i8 %.0.copyload.i1815 to i32
  %i.le = icmp ult i32 %.6, %i.ld
  br i1 %i.le, label %bb.bc, label %.loopexit1863

bb.bc:                                            ; preds = %.loopexit1864
  %i.lf = add nuw nsw i32 %i.em, 283000
  %.val1633 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lg = getelementptr inbounds nuw i8, ptr %.val1633, i64 %i.ed
  %.0.copyload.i1816 = load i32, ptr %i.lg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1816) #8, !srcloc !13
  %3 = zext i32 %.0.copyload.i1816 to i64         ; 2 uses
  %4 = zext nneg i32 %.6 to i64
  %i.lh = zext i8 %.0.copyload.i1815 to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bg, %bb.bc
  %indvars.iv1889 = phi i64 [ %indvars.iv.next1890, %bb.bg ], [ %4, %bb.bc ] ; 2 uses
  %5 = trunc nuw nsw i64 %indvars.iv1889 to i32
  %i.li = add i32 %i.lf, %5
  %i.lj = zext i32 %i.li to i64
  %.val1735 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lk = getelementptr inbounds nuw i8, ptr %.val1735, i64 %i.lj
  %.0.copyload.i1817 = load i8, ptr %i.lk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1817) #8, !srcloc !21
  %i.ll = zext i8 %.0.copyload.i1817 to i32
  %i.lm = add i32 %.0.copyload.i1783, %i.ll
  %i.ln = zext i32 %i.lm to i64
  %.val1632 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lo = getelementptr inbounds nuw i8, ptr %.val1632, i64 %i.ln
  %.0.copyload.i1818 = load i32, ptr %i.lo, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1818) #8, !srcloc !13
  %i.lp = icmp ugt i32 %.0.copyload.i1818, 536870909
  br i1 %i.lp, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lq = and i32 %.0.copyload.i1818, 268435455
  %.val1631 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lr = getelementptr inbounds nuw i8, ptr %.val1631, i64 %3
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 568
  %.0.copyload.i1819 = load i32, ptr %i.ls, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1819) #8, !srcloc !13
  %.not1574 = icmp ult i32 %i.lq, %.0.copyload.i1819
  br i1 %.not1574, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %.val1630 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lt = getelementptr inbounds nuw i8, ptr %.val1630, i64 %3
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 560
  %.0.copyload.i1820 = load i32, ptr %i.lu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1820) #8, !srcloc !13
  %i.lv = lshr i32 %.0.copyload.i1818, 3
  %i.lw = and i32 %i.lv, 33554428
  %i.lx = add i32 %.0.copyload.i1820, %i.lw
  %i.ly = zext i32 %i.lx to i64                   ; 2 uses
  %.val1629 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lz = getelementptr inbounds nuw i8, ptr %.val1629, i64 %i.ly
  %.0.copyload.i1821 = load i32, ptr %i.lz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1821) #8, !srcloc !13
  %i.ma = and i32 %.0.copyload.i1818, 31
  %i.mb = shl nuw i32 1, %i.ma
  %i.mc = or i32 %.0.copyload.i1821, %i.mb
  %.val1697 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.md = getelementptr inbounds nuw i8, ptr %.val1697, i64 %i.ly
  store i32 %i.mc, ptr %i.md, align 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bd, %bb.bf
  %indvars.iv.next1890 = add nuw nsw i64 %indvars.iv1889, 1 ; 2 uses
  %.not1575 = icmp eq i64 %indvars.iv.next1890, %i.lh
  br i1 %.not1575, label %.loopexit1863, label %bb.bd

.loopexit1863:                                    ; preds = %bb.bg, %.loopexit1864
  %.val1734 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.me = getelementptr inbounds nuw i8, ptr %.val1734, i64 %i.eo
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %.0.copyload.i1822 = load i8, ptr %i.mf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1822) #8, !srcloc !21
  %.not1576 = icmp eq i8 %.0.copyload.i1822, 0
  br i1 %.not1576, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %.loopexit1863
  %.val1628 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mg = getelementptr inbounds nuw i8, ptr %.val1628, i64 %i.ed
  %.0.copyload.i1823 = load i32, ptr %i.mg, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1823) #8, !srcloc !13
  %.val1733 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mh = getelementptr inbounds nuw i8, ptr %.val1733, i64 %i.eo
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 13
  %.0.copyload.i1824 = load i8, ptr %i.mi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1824) #8, !srcloc !21
  %i.mj = zext i8 %.0.copyload.i1824 to i32
  %i.mk = add i32 %.0.copyload.i1783, %i.mj       ; 4 uses
  %.val1732 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ml = getelementptr inbounds nuw i8, ptr %.val1732, i64 %i.eo
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 14
  %.0.copyload.i1825 = load i8, ptr %i.mm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1825) #8, !srcloc !21
  %i.mn = zext i8 %.0.copyload.i1825 to i32
  %i.mo = add i32 %.0.copyload.i1783, %i.mn
  %i.mp = zext i32 %i.mo to i64
  %.val1627 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mq = getelementptr inbounds nuw i8, ptr %.val1627, i64 %i.mp
  %.0.copyload.i1826 = load i32, ptr %i.mq, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1826) #8, !srcloc !13
  %.val1731 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mr = getelementptr inbounds nuw i8, ptr %.val1731, i64 %i.eo
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 15
  %.0.copyload.i1827 = load i8, ptr %i.ms, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1827) #8, !srcloc !21
  %i.mt = zext i8 %.0.copyload.i1827 to i32       ; 4 uses
  %.val1730 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mu = getelementptr inbounds nuw i8, ptr %.val1730, i64 %i.eo
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 12
  %.0.copyload.i1828 = load i8, ptr %i.mv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1828) #8, !srcloc !21
  switch i8 %.0.copyload.i1828, label %.loopexit [
    i8 0, label %bb.bi
    i8 1, label %bb.bq
    i8 2, label %bb.cc
    i8 3, label %bb.cn
  ]

bb.bi:                                            ; preds = %bb.bh
  %.not1594 = icmp eq i32 %.0.copyload.i1826, 0
  br i1 %.not1594, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.bi
  %i.mw = zext i32 %.0.copyload.i1823 to i64
  br label %bb.bj

bb.bj:                                            ; preds = %.preheader, %bb.bp
  %.8 = phi i32 [ %i.nx, %bb.bp ], [ %i.mk, %.preheader ] ; 4 uses
  %.21483 = phi i32 [ %i.ny, %bb.bp ], [ 0, %.preheader ]
  %i.mx = zext i32 %.8 to i64
  %.val1626 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.my = getelementptr inbounds nuw i8, ptr %.val1626, i64 %i.mx
  %.0.copyload.i1829 = load i32, ptr %i.my, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1829) #8, !srcloc !13
  %.not1595 = icmp eq i32 %.0.copyload.i1829, 0
  br i1 %.not1595, label %bb.bp, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.val1625 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mz = getelementptr inbounds nuw i8, ptr %.val1625, i64 %i.mw
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %.0.copyload.i1830 = load i32, ptr %i.na, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1830) #8, !srcloc !13
  %i.nb = zext i32 %.0.copyload.i1830 to i64
  %.val1624 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nc = getelementptr inbounds nuw i8, ptr %.val1624, i64 %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4400
  %.0.copyload.i1831 = load i32, ptr %i.nd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1831) #8, !srcloc !13
  %i.ne = and i32 %.0.copyload.i1829, -4194304    ; 2 uses
  %.not1596 = icmp eq i32 %.0.copyload.i1831, %i.ne
  br i1 %.not1596, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.nf = and i32 %.8, -4194304                   ; 2 uses
  %i.ng = icmp eq i32 %.0.copyload.i1831, %i.nf
  br i1 %i.ng, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nh = lshr i32 %.8, 9
  %i.ni = and i32 %i.nh, 8191
  %i.nj = or disjoint i32 %i.ni, %i.nf
  %i.nk = zext i32 %i.nj to i64
  %.val1723 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nl = getelementptr inbounds nuw i8, ptr %.val1723, i64 %i.nk
  store i8 1, ptr %i.nl, align 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bk, %bb.bm
  %i.nm = or disjoint i32 %i.ne, 16384            ; 2 uses
  %i.nn = sub i32 %.0.copyload.i1829, %i.nm
  %i.no = lshr i32 %i.nn, 6
  %i.np = and i32 %i.no, 67108860
  %i.nq = add i32 %i.np, %i.nm
  %i.nr = zext i32 %i.nq to i64
  %.val1623 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ns = getelementptr inbounds nuw i8, ptr %.val1623, i64 %i.nr
  %.0.copyload.i1832 = load i32, ptr %i.ns, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1832) #8, !srcloc !13
  %i.nt = lshr i32 %.0.copyload.i1829, 3
  %i.nu = and i32 %i.nt, 31
  %i.nv = shl nuw i32 1, %i.nu
  %i.nw = and i32 %.0.copyload.i1832, %i.nv
  %.not1597 = icmp eq i32 %i.nw, 0
  br i1 %.not1597, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AMarkAcceptor0x3A0x3Apush0x28hermes0x3A0x3Avm0x3A0x3AGCCell0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1823, i32 noundef %.0.copyload.i1829)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bj, %bb.bo
  %i.nx = add i32 %.8, %i.mt
  %i.ny = add nuw i32 %.21483, 1                  ; 2 uses
  %.not1598 = icmp eq i32 %i.ny, %.0.copyload.i1826
  br i1 %.not1598, label %.loopexit, label %bb.bj

bb.bq:                                            ; preds = %bb.bh
  %.not1587 = icmp eq i32 %.0.copyload.i1826, 0
  br i1 %.not1587, label %.loopexit, label %.preheader1858

.preheader1858:                                   ; preds = %bb.bq
  %i.nz = zext i32 %.0.copyload.i1823 to i64      ; 3 uses
  br label %bb.br

bb.br:                                            ; preds = %.preheader1858, %bb.cb
  %.9 = phi i32 [ %i.ps, %bb.cb ], [ %i.mk, %.preheader1858 ] ; 4 uses
  %.31484 = phi i32 [ %i.pt, %bb.cb ], [ 0, %.preheader1858 ]
  %i.oa = zext i32 %.9 to i64
  %.val1728 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ob = getelementptr inbounds nuw i8, ptr %.val1728, i64 %i.oa
  %.0.copyload.i1833 = load i64, ptr %i.ob, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1833) #8, !srcloc !22
  %i.oc = icmp ugt i64 %.0.copyload.i1833, -844424930131969
  br i1 %i.oc, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %.val1622 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.od = getelementptr inbounds nuw i8, ptr %.val1622, i64 %i.nz
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %.0.copyload.i1834 = load i32, ptr %i.oe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1834) #8, !srcloc !13
  %i.of = zext i32 %.0.copyload.i1834 to i64
  %.val1621 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.og = getelementptr inbounds nuw i8, ptr %.val1621, i64 %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 4400
  %.0.copyload.i1835 = load i32, ptr %i.oh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1835) #8, !srcloc !13
  %i.oi = trunc i64 %.0.copyload.i1833 to i32     ; 4 uses
  %i.oj = and i32 %i.oi, -4194304                 ; 2 uses
  %.not1591 = icmp eq i32 %.0.copyload.i1835, %i.oj
  br i1 %.not1591, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.ok = and i32 %.9, -4194304                   ; 2 uses
  %i.ol = icmp eq i32 %.0.copyload.i1835, %i.ok
  br i1 %i.ol, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.om = lshr i32 %.9, 9
  %i.on = and i32 %i.om, 8191
  %i.oo = or disjoint i32 %i.on, %i.ok
  %i.op = zext i32 %i.oo to i64
  %.val1722 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oq = getelementptr inbounds nuw i8, ptr %.val1722, i64 %i.op
  store i8 1, ptr %i.oq, align 1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bs, %bb.bu
  %i.or = or disjoint i32 %i.oj, 16384            ; 2 uses
  %i.os = sub i32 %i.oi, %i.or
  %i.ot = lshr i32 %i.os, 6
  %i.ou = and i32 %i.ot, 67108860
  %i.ov = add i32 %i.ou, %i.or
  %i.ow = zext i32 %i.ov to i64
  %.val1620 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ox = getelementptr inbounds nuw i8, ptr %.val1620, i64 %i.ow
  %.0.copyload.i1836 = load i32, ptr %i.ox, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1836) #8, !srcloc !13
  %i.oy = lshr i32 %i.oi, 3
  %i.oz = and i32 %i.oy, 31
  %i.pa = shl nuw i32 1, %i.oz
  %i.pb = and i32 %.0.copyload.i1836, %i.pa
  %.not1592 = icmp eq i32 %i.pb, 0
  br i1 %.not1592, label %bb.bw, label %bb.cb

end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AunmarkSymbols0x280x29:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = zext i32 %1 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.0.copyload.i = load i64, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #8, !srcloc !22
  %i.e = lshr i64 %.0.copyload.i, 32              ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = trunc i64 %.0.copyload.i to i32
  %i.h = shl i32 %i.f, 2
  %i.i = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.g, i32 noundef 0, i32 noundef %i.h) #8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3Areserve0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.b = zext i32 %1 to i64                       ; 8 uses
  %i.c = add nuw nsw i64 %i.b, 8                  ; 2 uses
  %.val261 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %.val261, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %.val260 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %.val260, i64 %i.b
  %.0.copyload.i268 = load i32, ptr %i.e, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i268) #8, !srcloc !13
  %i.f = sub i32 %.0.copyload.i, %.0.copyload.i268
  %i.g = sdiv i32 %i.f, 12
  %.not = icmp ult i32 %i.g, %2
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %2, 357913941
  br i1 %i.h, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw nsw i64 %i.b, 4                  ; 2 uses
  %.val259 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val259, i64 %i.i
  %.0.copyload.i269 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i269) #8, !srcloc !13
  %i.k = mul nuw i32 %2, 12                       ; 2 uses
  %i.l = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.k) #8 ; 3 uses
  %i.m = sub i32 %.0.copyload.i269, %.0.copyload.i268
  %.fr = freeze i32 %i.m                          ; 3 uses
  %i.n = srem i32 %.fr, 12
  %i.o = add i32 %i.l, %.fr
  %i.p = sub i32 %i.o, %i.n
  %i.q = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %.0.copyload.i268, i32 noundef %.fr) #8
  %i.r = add i32 %i.l, %i.k
  %.val267 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %.val267, i64 %i.c
  store i32 %i.r, ptr %i.s, align 1
  %.val266 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %.val266, i64 %i.i
  store i32 %i.p, ptr %i.t, align 1
  %.val265 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.val265, i64 %i.b
  store i32 %i.q, ptr %i.u, align 1
  %.not251 = icmp eq i32 %.0.copyload.i268, 0
  br i1 %.not251, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i268) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.val258 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.val258, i64 %i.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.0.copyload.i270 = load i32, ptr %i.w, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i270) #8, !srcloc !13
  %i.x = lshr i32 %.0.copyload.i270, 1
  %i.y = icmp ugt i32 %2, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = add i32 %1, 24
  %i.aa = shl i32 %2, 1
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr exact i64 %i.ab, 1
  %i.ad = or i64 %i.ac, %i.ab                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 2
  %i.af = or i64 %i.ae, %i.ad                     ; 2 uses
  %i.ag = lshr i64 %i.af, 4
  %i.ah = or i64 %i.ag, %i.af                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 8
  %i.aj = or i64 %i.ai, %i.ah                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 16
  %i.al = or i64 %i.ak, %i.aj
  %i.am = trunc nuw i64 %i.al to i32
  %i.an = add i32 %i.am, 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3AIdentifierHashTable0x3A0x3AgrowAndRehash0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.z, i32 noundef %i.an) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = add nuw nsw i64 %i.b, 16                ; 2 uses
  %.val257 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %.val257, i64 %i.ao
  %.0.copyload.i271 = load i32, ptr %i.ap, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i271) #8, !srcloc !13
  %i.aq = shl i32 %.0.copyload.i271, 5
  %.not252 = icmp ult i32 %i.aq, %2
  br i1 %.not252, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ar = add nuw nsw i64 %i.b, 12                ; 2 uses
  %.val256 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %.val256, i64 %i.ar
  %.0.copyload.i272 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i272) #8, !srcloc !13
  %i.at = add i32 %2, 31
  %i.au = lshr i32 %i.at, 5
  %i.av = shl i32 %.0.copyload.i271, 1
  %i.aw = tail call i32 @llvm.umax.i32(i32 %i.au, i32 %i.av) ; 4 uses
  %i.ax = shl i32 %i.aw, 2
  %i.ay = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i272, i32 noundef %i.ax) #8 ; 4 uses
  %.not253 = icmp eq i32 %i.ay, 0
  br i1 %.not253, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val264 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %.val264, i64 %i.ao
  store i32 %i.aw, ptr %i.az, align 1
  %.val263 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %.val263, i64 %i.ar
  store i32 %i.ay, ptr %i.ba, align 1
  %.val255 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %.val255, i64 %i.b
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %.0.copyload.i273 = load i32, ptr %i.bc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i273) #8, !srcloc !13
  %i.bd = add i32 %.0.copyload.i273, 31
  %i.be = lshr i32 %i.bd, 5                       ; 4 uses
  %i.bf = icmp ult i32 %i.be, %i.aw
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = shl nuw nsw i32 %i.be, 2
  %i.bh = add i32 %i.bg, %i.ay
  %i.bi = sub nuw i32 %i.aw, %i.be
  %i.bj = shl i32 %i.bi, 2
  %i.bk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.bh, i32 noundef 0, i32 noundef %i.bj) #8 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = and i32 %.0.copyload.i273, 31           ; 2 uses
  %.not254 = icmp eq i32 %i.bl, 0
  br i1 %.not254, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = shl nuw nsw i32 %i.be, 2
  %i.bn = add i32 %i.ay, -4
  %i.bo = add i32 %i.bn, %i.bm
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bp
  %.0.copyload.i274 = load i32, ptr %i.bq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i274) #8, !srcloc !13
  %i.br = shl nsw i32 -1, %i.bl
  %i.bs = xor i32 %i.br, -1
  %i.bt = and i32 %.0.copyload.i274, %i.bs
  %.val262 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %.val262, i64 %i.bp
  store i32 %i.bt, ptr %i.bu, align 1
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #8
  tail call void @wasm_rt_trap(i32 noundef 5) #9
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.g, %bb.l
  ret void
}

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3AIdentifierHashTable0x3A0x3AgrowAndRehash0x28unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_dlrealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AfreeUnmarkedSymbols0x28llvh0x3A0x3ABitVector0x20const0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AGCBase0x3A0x3AIDTracker0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, 12                           ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 111 uses
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 8                  ; 3 uses
  %.val1454 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %.val1454, i64 %i.d
  %.0.copyload.i = load i32, ptr %i.e, align 1    ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %i.f = zext i32 %1 to i64                       ; 7 uses
  %i.g = add nuw nsw i64 %i.f, 20                 ; 5 uses
  %.val1453 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %.val1453, i64 %i.g
  %.0.copyload.i1501 = load i32, ptr %i.h, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1501) #8, !srcloc !13
  %i.i = icmp ugt i32 %.0.copyload.i, %.0.copyload.i1501
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.a, i32 noundef %.0.copyload.i, i32 noundef 0) #8
  %.val1452 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val1452, i64 %i.d
  %.0.copyload.i1502 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1502) #8, !srcloc !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.01296 = phi i32 [ %.0.copyload.i1502, %bb.b ], [ %.0.copyload.i, %bb.a ]
  %i.k = add i32 %.01296, 31                      ; 2 uses
  %i.l = icmp ult i32 %i.k, 32
  br i1 %i.l, label %.loopexit1599, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i32 %i.k, 5                         ; 3 uses
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %i.o = zext i32 %i.a to i64
  %.val1451 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %.val1451, i64 %i.o
  %.0.copyload.i1503 = load i32, ptr %i.p, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1503) #8, !srcloc !13
  %.val1450 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.val1450, i64 %i.c
  %.0.copyload.i1504 = load i32, ptr %i.q, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1504) #8, !srcloc !13
  %i.r = add nsw i32 %i.m, -4
  %i.s = icmp ult i32 %i.r, -3
  br i1 %i.s, label %bb.e, label %.loopexit1600

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.m, 134217724                  ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.u = trunc nuw i64 %indvars.iv to i32
  %i.v = shl i32 %i.u, 2                          ; 5 uses
  %i.w = add i32 %i.v, %.0.copyload.i1503
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %.val1449 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %.val1449, i64 %i.x
  %.0.copyload.i1505 = load i32, ptr %i.y, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1505) #8, !srcloc !13
  %i.z = add i32 %i.v, %.0.copyload.i1504
  %i.aa = zext i32 %i.z to i64
  %.val1448 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1448, i64 %i.aa
  %.0.copyload.i1506 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1506) #8, !srcloc !13
  %i.ac = or i32 %.0.copyload.i1506, %.0.copyload.i1505
  %.val1475 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1475, i64 %i.x
  store i32 %i.ac, ptr %i.ad, align 1
  %i.ae = or disjoint i32 %i.v, 4                 ; 2 uses
  %i.af = add i32 %i.ae, %.0.copyload.i1503
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.val1447 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1447, i64 %i.ag
  %.0.copyload.i1507 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1507) #8, !srcloc !13
  %i.ai = add i32 %i.ae, %.0.copyload.i1504
  %i.aj = zext i32 %i.ai to i64
  %.val1446 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1446, i64 %i.aj
  %.0.copyload.i1508 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1508) #8, !srcloc !13
  %i.al = or i32 %.0.copyload.i1508, %.0.copyload.i1507
  %.val1474 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %.val1474, i64 %i.ag
  store i32 %i.al, ptr %i.am, align 1
  %i.an = or disjoint i32 %i.v, 8                 ; 2 uses
  %i.ao = add i32 %i.an, %.0.copyload.i1503
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %.val1445 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1445, i64 %i.ap
  %.0.copyload.i1509 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1509) #8, !srcloc !13
  %i.ar = add i32 %i.an, %.0.copyload.i1504
  %i.as = zext i32 %i.ar to i64
  %.val1444 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %.val1444, i64 %i.as
  %.0.copyload.i1510 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1510) #8, !srcloc !13
  %i.au = or i32 %.0.copyload.i1510, %.0.copyload.i1509
  %.val1473 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %.val1473, i64 %i.ap
  store i32 %i.au, ptr %i.av, align 1
  %i.aw = or disjoint i32 %i.v, 12                ; 2 uses
  %i.ax = add i32 %i.aw, %.0.copyload.i1503
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %.val1443 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %.val1443, i64 %i.ay
  %.0.copyload.i1511 = load i32, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1511) #8, !srcloc !13
  %i.ba = add i32 %i.aw, %.0.copyload.i1504
  %i.bb = zext i32 %i.ba to i64
  %.val1442 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1442, i64 %i.bb
  %.0.copyload.i1512 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1512) #8, !srcloc !13
  %i.bd = or i32 %.0.copyload.i1512, %.0.copyload.i1511
  %.val1472 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %.val1472, i64 %i.ay
  store i32 %i.bd, ptr %i.be, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars1632 = trunc i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.t, %indvars1632
  br i1 %.not, label %.loopexit1600.loopexit, label %bb.f

.loopexit1600.loopexit:                           ; preds = %bb.f
  %i.bf = zext nneg i32 %i.t to i64
  br label %.loopexit1600

.loopexit1600:                                    ; preds = %.loopexit1600.loopexit, %bb.d
  %.11320 = phi i64 [ 0, %bb.d ], [ %i.bf, %.loopexit1600.loopexit ]
  %.not1352 = icmp eq i32 %i.n, 0
  br i1 %.not1352, label %.loopexit1599, label %.preheader1598

.preheader1598:                                   ; preds = %.loopexit1600, %.preheader1598
  %indvars.iv1634 = phi i64 [ %indvars.iv.next1635, %.preheader1598 ], [ %.11320, %.loopexit1600 ] ; 2 uses
  %.01306 = phi i32 [ %i.bp, %.preheader1598 ], [ 0, %.loopexit1600 ]
  %indvars.iv1634.tr = trunc nuw nsw i64 %indvars.iv1634 to i32
  %i.bg = shl nuw nsw i32 %indvars.iv1634.tr, 2   ; 2 uses
  %i.bh = add i32 %i.bg, %.0.copyload.i1503
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %.val1441 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1441, i64 %i.bi
  %.0.copyload.i1513 = load i32, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1513) #8, !srcloc !13
  %i.bk = add i32 %i.bg, %.0.copyload.i1504
  %i.bl = zext i32 %i.bk to i64
  %.val1440 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1440, i64 %i.bl
  %.0.copyload.i1514 = load i32, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1514) #8, !srcloc !13
  %i.bn = or i32 %.0.copyload.i1514, %.0.copyload.i1513
  %.val1471 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1471, i64 %i.bi
  store i32 %i.bn, ptr %i.bo, align 1
  %indvars.iv.next1635 = add nuw nsw i64 %indvars.iv1634, 1
  %i.bp = add nuw nsw i32 %.01306, 1              ; 2 uses
  %.not1353 = icmp eq i32 %i.bp, %i.n
  br i1 %.not1353, label %.loopexit1599, label %.preheader1598

.loopexit1599:                                    ; preds = %.preheader1598, %.loopexit1600, %bb.c
  %.val1439 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %.val1439, i64 %i.g
  %.0.copyload.i1515 = load i32, ptr %i.bq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1515) #8, !srcloc !13
  %i.br = add i32 %.0.copyload.i1515, 31          ; 3 uses
  %i.bs = lshr i32 %i.br, 5                       ; 5 uses
  %i.bt = icmp ult i32 %i.br, 32
  br i1 %i.bt, label %.loopexit1596, label %bb.g

bb.g:                                             ; preds = %.loopexit1599
  %i.bu = icmp ult i32 %i.br, 64
  %i.bv = select i1 %i.bu, i32 1, i32 %i.bs       ; 3 uses
  %i.bw = and i32 %i.bv, 3                        ; 2 uses
  %i.bx = zext i32 %i.a to i64
  %.val1438 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %.val1438, i64 %i.bx
  %.0.copyload.i1516 = load i32, ptr %i.by, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1516) #8, !srcloc !13
  %i.bz = icmp samesign ugt i32 %i.bv, 3
  br i1 %i.bz, label %bb.h, label %.loopexit1597

bb.h:                                             ; preds = %bb.g
  %i.ca = and i32 %i.bv, 134217724                ; 2 uses
  %i.cb = add i32 %.0.copyload.i1516, 4
  %i.cc = add i32 %.0.copyload.i1516, 8
  %i.cd = add i32 %.0.copyload.i1516, 12
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv1637 = phi i64 [ %indvars.iv.next1638, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %indvars.iv1637.tr = trunc nuw nsw i64 %indvars.iv1637 to i32
  %i.ce = shl nuw nsw i32 %indvars.iv1637.tr, 2   ; 4 uses
  %i.cf = add i32 %i.ce, %.0.copyload.i1516
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %.val1437 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1437, i64 %i.cg
  %.0.copyload.i1517 = load i32, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1517) #8, !srcloc !13
  %i.ci = xor i32 %.0.copyload.i1517, -1
  %.val1470 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %.val1470, i64 %i.cg
  store i32 %i.ci, ptr %i.cj, align 1
  %i.ck = add i32 %i.cb, %i.ce
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %.val1436 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1436, i64 %i.cl
  %.0.copyload.i1518 = load i32, ptr %i.cm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1518) #8, !srcloc !13
  %i.cn = xor i32 %.0.copyload.i1518, -1
  %.val1469 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %.val1469, i64 %i.cl
  store i32 %i.cn, ptr %i.co, align 1
  %i.cp = add i32 %i.cc, %i.ce
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %.val1435 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1435, i64 %i.cq
  %.0.copyload.i1519 = load i32, ptr %i.cr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1519) #8, !srcloc !13
  %i.cs = xor i32 %.0.copyload.i1519, -1
  %.val1468 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1468, i64 %i.cq
  store i32 %i.cs, ptr %i.ct, align 1
  %i.cu = add i32 %i.cd, %i.ce
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %.val1434 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1434, i64 %i.cv
  %.0.copyload.i1520 = load i32, ptr %i.cw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1520) #8, !srcloc !13
  %i.cx = xor i32 %.0.copyload.i1520, -1
  %.val1467 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1467, i64 %i.cv
  store i32 %i.cx, ptr %i.cy, align 1
  %indvars.iv.next1638 = add nuw nsw i64 %indvars.iv1637, 4 ; 2 uses
  %indvars1640 = trunc i64 %indvars.iv.next1638 to i32
  %.not1354 = icmp eq i32 %i.ca, %indvars1640
  br i1 %.not1354, label %.loopexit1597.loopexit, label %bb.i

.loopexit1597.loopexit:                           ; preds = %bb.i
  %i.cz = zext nneg i32 %i.ca to i64
  br label %.loopexit1597

.loopexit1597:                                    ; preds = %.loopexit1597.loopexit, %bb.g
  %.41323 = phi i64 [ 0, %bb.g ], [ %i.cz, %.loopexit1597.loopexit ]
  %.not1355 = icmp eq i32 %i.bw, 0
  br i1 %.not1355, label %.loopexit1596, label %.preheader1595

.preheader1595:                                   ; preds = %.loopexit1597, %.preheader1595
  %indvars.iv1642 = phi i64 [ %indvars.iv.next1643, %.preheader1595 ], [ %.41323, %.loopexit1597 ] ; 2 uses
  %.01309 = phi i32 [ %i.dg, %.preheader1595 ], [ 0, %.loopexit1597 ]
  %indvars.iv1642.tr = trunc nuw nsw i64 %indvars.iv1642 to i32
  %i.da = shl nuw nsw i32 %indvars.iv1642.tr, 2
  %i.db = add i32 %i.da, %.0.copyload.i1516
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %.val1433 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %.val1433, i64 %i.dc
  %.0.copyload.i1521 = load i32, ptr %i.dd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1521) #8, !srcloc !13
  %i.de = xor i32 %.0.copyload.i1521, -1
  %.val1466 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %.val1466, i64 %i.dc
  store i32 %i.de, ptr %i.df, align 1
  %indvars.iv.next1643 = add nuw nsw i64 %indvars.iv1642, 1
  %i.dg = add nuw nsw i32 %.01309, 1              ; 2 uses
  %.not1356 = icmp eq i32 %i.dg, %i.bw
  br i1 %.not1356, label %.loopexit1596, label %.preheader1595

.loopexit1596:                                    ; preds = %.preheader1595, %.loopexit1597, %.loopexit1599
  %.val1432 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.dh = getelementptr inbounds nuw i8, ptr %.val1432, i64 %i.f
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.0.copyload.i1522 = load i32, ptr %i.di, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1522) #8, !srcloc !13
  %i.dj = icmp ult i32 %i.bs, %.0.copyload.i1522
  br i1 %i.dj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit1596
  %.val1431 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.dk = getelementptr inbounds nuw i8, ptr %.val1431, i64 %i.f
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %.0.copyload.i1523 = load i32, ptr %i.dl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1523) #8, !srcloc !13
  %i.dm = shl nuw nsw i32 %i.bs, 2
  %i.dn = add i32 %.0.copyload.i1523, %i.dm
  %i.do = sub nuw i32 %.0.copyload.i1522, %i.bs
  %i.dp = shl i32 %i.do, 2
  %i.dq = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.dn, i32 noundef 0, i32 noundef %i.dp) #8 ; 0 uses
  %.val1430 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.dr = getelementptr inbounds nuw i8, ptr %.val1430, i64 %i.g
  %.0.copyload.i1524 = load i32, ptr %i.dr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1524) #8, !srcloc !13
  br label %bb.k

bb.k:                                             ; preds = %.loopexit1596, %bb.j
  %.11297 = phi i32 [ %.0.copyload.i1524, %bb.j ], [ %.0.copyload.i1515, %.loopexit1596 ]
  %i.ds = and i32 %.11297, 31                     ; 2 uses
  %.not1357 = icmp eq i32 %i.ds, 0
  br i1 %.not1357, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dt = zext i32 %i.a to i64
  %.val1429 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.du = getelementptr inbounds nuw i8, ptr %.val1429, i64 %i.dt
  %.0.copyload.i1525 = load i32, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1525) #8, !srcloc !13
  %i.dv = shl nuw nsw i32 %i.bs, 2
  %i.dw = add nsw i32 %i.dv, -4
  %i.dx = add i32 %i.dw, %.0.copyload.i1525
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %.val1428 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %.val1428, i64 %i.dy
  %.0.copyload.i1526 = load i32, ptr %i.dz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1526) #8, !srcloc !13
  %i.ea = shl nsw i32 -1, %i.ds
  %i.eb = xor i32 %i.ea, -1
  %i.ec = and i32 %.0.copyload.i1526, %i.eb
  %.val1465 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %.val1465, i64 %i.dy
  store i32 %i.ec, ptr %i.ed, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ee = zext i32 %3 to i64                      ; 5 uses
  %.val1427 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ef = getelementptr inbounds nuw i8, ptr %.val1427, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  %.0.copyload.i1527 = load i32, ptr %i.eg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1527) #8, !srcloc !13
  %.not1358 = icmp eq i32 %.0.copyload.i1527, 0
  %.val1426 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.eh = getelementptr inbounds nuw i8, ptr %.val1426, i64 %i.g
  %.0.copyload.i1528 = load i32, ptr %i.eh, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1528) #8, !srcloc !13
  %.not1359 = icmp eq i32 %.0.copyload.i1528, 0
  br i1 %.not1359, label %..loopexit_crit_edge, label %bb.n

..loopexit_crit_edge:                             ; preds = %bb.m
  %.pre = zext i32 %i.a to i64
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  %.val1425 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ei = getelementptr inbounds nuw i8, ptr %.val1425, i64 %i.d
  %.0.copyload.i1529 = load i32, ptr %i.ei, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1529) #8, !srcloc !13
  %i.ej = sub i32 0, %.0.copyload.i1528
  %i.ek = and i32 %i.ej, 31
  %i.el = lshr i32 -1, %i.ek
  %i.em = add i32 %.0.copyload.i1528, -1
  %i.en = lshr i32 %i.em, 5
  %i.eo = zext i32 %i.a to i64                    ; 9 uses
  %.val1424 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %.val1424, i64 %i.eo
  %.0.copyload.i1530 = load i32, ptr %i.ep, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1530) #8, !srcloc !13
  %i.eq = zext nneg i32 %i.en to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %indvars.iv1645 = phi i64 [ %indvars.iv.next1646, %bb.p ], [ 0, %bb.n ] ; 4 uses
  %indvars.iv1645.tr = trunc nuw nsw i64 %indvars.iv1645 to i32
  %i.er = shl nuw nsw i32 %indvars.iv1645.tr, 2
  %i.es = add i32 %i.er, %.0.copyload.i1530
  %i.et = zext i32 %i.es to i64
  %.val1423 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.eu = getelementptr inbounds nuw i8, ptr %.val1423, i64 %i.et
  %.0.copyload.i1531 = load i32, ptr %i.eu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1531) #8, !srcloc !13
  %.not1385 = icmp eq i64 %indvars.iv1645, %i.eq  ; 2 uses
  %i.ev = select i1 %.not1385, i32 %i.el, i32 -1
  %i.ew = and i32 %.0.copyload.i1531, %i.ev       ; 2 uses
  %.not1360 = icmp eq i32 %i.ew, 0
  br i1 %.not1360, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next1646 = add nuw nsw i64 %indvars.iv1645, 1
  br i1 %.not1385, label %.loopexit, label %bb.o

bb.q:                                             ; preds = %bb.o
  %i.ex = trunc nuw nsw i64 %indvars.iv1645 to i32
  %i.ey = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ew, i1 true)
  %i.ez = shl i32 %i.ex, 5
  %i.fa = or disjoint i32 %i.ey, %i.ez            ; 3 uses
  %i.fb = icmp ne i32 %i.fa, -1
  %.not1361 = icmp ult i32 %i.fa, %.0.copyload.i1529
  %or.cond = select i1 %i.fb, i1 %.not1361, i1 false
  br i1 %or.cond, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.fc = add i32 %1, 24                          ; 3 uses
  %i.fd = add nuw nsw i64 %i.ee, 76               ; 2 uses
  %i.fe = add nuw nsw i64 %i.ee, 80               ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.fg = zext i32 %i.fc to i64                   ; 5 uses
  %i.fh = add nuw nsw i64 %i.fg, 16               ; 2 uses
  %i.fi = add nuw nsw i64 %i.f, 48                ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.bg, %bb.r
  %.71326 = phi i32 [ %i.fa, %bb.r ], [ %i.qa, %bb.bg ] ; 7 uses
  %.01303 = phi i32 [ %.0.copyload.i1528, %bb.r ], [ %.9, %bb.bg ] ; 2 uses
  %.val1422 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.fj = getelementptr inbounds nuw i8, ptr %.val1422, i64 %i.f
  %.0.copyload.i1532 = load i32, ptr %i.fj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1532) #8, !srcloc !13
  %i.fk = mul i32 %.71326, 12                     ; 4 uses
  %i.fl = add i32 %.0.copyload.i1532, %i.fk
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %.val1421 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.fn = getelementptr inbounds nuw i8, ptr %.val1421, i64 %i.fm
  %.0.copyload.i1533 = load i32, ptr %i.fn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1533) #8, !srcloc !13
  %.not1362 = icmp eq i32 %.0.copyload.i1533, 0
  br i1 %.not1362, label %bb.bb, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val1420 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %.val1420, i64 %i.fm
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %.0.copyload.i1534 = load i32, ptr %i.fp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1534) #8, !srcloc !13
  %i.fq = and i32 %.0.copyload.i1534, -4
  %.not1363 = icmp eq i32 %i.fq, -8
  br i1 %.not1363, label %bb.u, label %bb.bb

bb.u:                                             ; preds = %bb.t
  br i1 %.not1358, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1419 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.fr = getelementptr inbounds nuw i8, ptr %.val1419, i64 %i.ee
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 84
  %.0.copyload.i1535 = load i32, ptr %i.fs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1535) #8, !srcloc !13
  %.not1364 = icmp eq i32 %.0.copyload.i1535, 0
  br i1 %.not1364, label %.loopexit1591, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val1418 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ft = getelementptr inbounds nuw i8, ptr %.val1418, i64 %i.ee
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 72
  %.0.copyload.i1536 = load i32, ptr %i.fu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1536) #8, !srcloc !13
  %i.fv = add i32 %.0.copyload.i1535, -1          ; 2 uses
  %i.fw = mul i32 %.71326, 37
  %i.fx = and i32 %i.fv, %i.fw                    ; 2 uses
  %i.fy = shl i32 %i.fx, 3
  %i.fz = add i32 %.0.copyload.i1536, %i.fy
  %i.ga = zext i32 %i.fz to i64                   ; 2 uses
  %.val1417 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1417, i64 %i.ga
  %.0.copyload.i1537 = load i32, ptr %i.gb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1537) #8, !srcloc !13
  %.not1365 = icmp eq i32 %.71326, %.0.copyload.i1537
  br i1 %.not1365, label %.loopexit1592, label %.preheader1590

.preheader1590:                                   ; preds = %bb.w, %bb.x
  %.01328 = phi i32 [ %.0.copyload.i1538, %bb.x ], [ %.0.copyload.i1537, %bb.w ]
  %.21308 = phi i32 [ %i.ge, %bb.x ], [ 1, %bb.w ] ; 2 uses
  %.01300 = phi i32 [ %i.gf, %bb.x ], [ %i.fx, %bb.w ]
  %i.gc = icmp eq i32 %.01328, -1
  br i1 %i.gc, label %.loopexit1591, label %bb.x

bb.x:                                             ; preds = %.preheader1590
  %i.gd = add i32 %.01300, %.21308
  %i.ge = add i32 %.21308, 1
  %i.gf = and i32 %i.gd, %i.fv                    ; 2 uses
  %i.gg = shl i32 %i.gf, 3
  %i.gh = add i32 %i.gg, %.0.copyload.i1536
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %.val1416 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.gj = getelementptr inbounds nuw i8, ptr %.val1416, i64 %i.gi
  %.0.copyload.i1538 = load i32, ptr %i.gj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1538) #8, !srcloc !13
  %.not1366 = icmp eq i32 %.0.copyload.i1538, %.71326
  br i1 %.not1366, label %.loopexit1592, label %.preheader1590

.loopexit1592:                                    ; preds = %bb.x, %bb.w
  %.pre-phi = phi i64 [ %i.ga, %bb.w ], [ %i.gi, %bb.x ]
  %.val1464 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.gk = getelementptr inbounds nuw i8, ptr %.val1464, i64 %.pre-phi
  store i32 -2, ptr %i.gk, align 1
  %.val1415 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.gl = getelementptr inbounds nuw i8, ptr %.val1415, i64 %i.fd
  %.0.copyload.i1539 = load i32, ptr %i.gl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1539) #8, !srcloc !13
  %i.gm = add i32 %.0.copyload.i1539, -1
  %.val1463 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.gn = getelementptr inbounds nuw i8, ptr %.val1463, i64 %i.fd
  store i32 %i.gm, ptr %i.gn, align 1
  %.val1414 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.go = getelementptr inbounds nuw i8, ptr %.val1414, i64 %i.fe
  %.0.copyload.i1540 = load i32, ptr %i.go, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1540) #8, !srcloc !13
  %i.gp = add i32 %.0.copyload.i1540, 1
  %.val1462 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.gq = getelementptr inbounds nuw i8, ptr %.val1462, i64 %i.fe
  store i32 %i.gp, ptr %i.gq, align 1
  br label %.loopexit1591

.loopexit1591:                                    ; preds = %.preheader1590, %bb.v, %.loopexit1592
  %.val1413 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.gr = getelementptr inbounds nuw i8, ptr %.val1413, i64 %i.f
  %.0.copyload.i1541 = load i32, ptr %i.gr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1541) #8, !srcloc !13
  %i.gs = add i32 %.0.copyload.i1541, %i.fk
  %i.gt = zext i32 %i.gs to i64
  %.val1412 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.gu = getelementptr inbounds nuw i8, ptr %.val1412, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %.0.copyload.i1542 = load i32, ptr %i.gv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1542) #8, !srcloc !13
  br label %bb.y

bb.y:                                             ; preds = %.loopexit1591, %bb.u
  %.11329 = phi i32 [ %.0.copyload.i1541, %.loopexit1591 ], [ %.0.copyload.i1532, %bb.u ]
  %.11310 = phi i32 [ %.0.copyload.i1542, %.loopexit1591 ], [ %.0.copyload.i1534, %bb.u ] ; 2 uses
  %i.gw = and i32 %.11310, 2
  %.not1367 = icmp eq i32 %i.gw, 0
  %i.gx = add i32 %.11329, %i.fk
  %i.gy = zext i32 %i.gx to i64                   ; 2 uses
  br i1 %.not1367, label %bb.z, label %._crit_edge

bb.z:                                             ; preds = %bb.y
  %.val1411 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.gz = getelementptr inbounds nuw i8, ptr %.val1411, i64 %i.gy
  %.0.copyload.i1543 = load i32, ptr %i.gz, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1543) #8, !srcloc !13
  %i.ha = zext i32 %.0.copyload.i1543 to i64      ; 8 uses
  %i.hb = add nuw nsw i64 %i.ha, 4                ; 3 uses
  %.val1410 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.hc = getelementptr inbounds nuw i8, ptr %.val1410, i64 %i.hb
  %.0.copyload.i1544 = load i32, ptr %i.hc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1544) #8, !srcloc !13
  %i.hd = and i32 %.0.copyload.i1544, 2147483647
  %.val1461 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.he = getelementptr inbounds nuw i8, ptr %.val1461, i64 %i.hb
  store i32 %i.hd, ptr %i.he, align 1
  %i.hf = load i32, ptr %i.ff, align 8, !tbaa !19 ; 4 uses
  %i.hg = add i32 %i.hf, -32                      ; 3 uses
  store i32 %i.hg, ptr %i.ff, align 8, !tbaa !19
  %.val1409 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.hh = getelementptr inbounds nuw i8, ptr %.val1409, i64 %i.hb
  %.0.copyload.i1545 = load i32, ptr %i.hh, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1545) #8, !srcloc !13
  %.val1408 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.hi = getelementptr inbounds nuw i8, ptr %.val1408, i64 %i.ha
  %.0.copyload.i1546 = load i32, ptr %i.hi, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1546) #8, !srcloc !13
  %i.hj = and i32 %.0.copyload.i1546, 16777216
  %.not1368 = icmp eq i32 %i.hj, 0
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AfreeUnmarkedSymbols0x28llvh0x3A0x3ABitVector0x20const0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AGCBase0x3A0x3AIDTracker0x260x29:bb.a
  %i.lu = shl nuw nsw i64 %i.lt, 32
  %i.lv = or disjoint i64 %i.lu, %i.lr
  %i.lw = zext i32 %i.hg to i64                   ; 2 uses
  %i.lx = add nuw nsw i64 %i.lw, 24               ; 2 uses
  %.val1477 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ly = getelementptr inbounds nuw i8, ptr %.val1477, i64 %i.lx
  store i64 %i.lv, ptr %i.ly, align 1
  %.not1371 = icmp eq i32 %i.ls, 0
  br i1 %.not1371, label %.loopexit1588, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lz = add i32 %.0.copyload.i1545, 2147483647
  %i.ma = and i32 %i.lz, 2147483647               ; 2 uses
  %i.mb = add nuw i32 %i.ma, 1                    ; 2 uses
  %i.mc = and i32 %i.mb, 3                        ; 2 uses
  %i.md = icmp samesign ult i32 %i.ma, 3
  br i1 %i.md, label %.loopexit1589, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.me = and i32 %i.mb, -4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %bb.av
  %.51314 = phi i32 [ %.1, %bb.av ], [ %i.nh, %bb.aw ] ; 2 uses
  %.5 = phi i32 [ 0, %bb.av ], [ %i.ng, %bb.aw ]
  %.2 = phi i32 [ 0, %bb.av ], [ %i.ni, %bb.aw ]
  %i.mf = zext i32 %.51314 to i64                 ; 4 uses
  %.val1500 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.mg = getelementptr inbounds nuw i8, ptr %.val1500, i64 %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 6
  %.0.copyload.i1567 = load i16, ptr %i.mh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1567) #8, !srcloc !36
  %i.mi = zext i16 %.0.copyload.i1567 to i32
  %.val1499 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.mj = getelementptr inbounds nuw i8, ptr %.val1499, i64 %i.mf
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %.0.copyload.i1568 = load i16, ptr %i.mk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1568) #8, !srcloc !36
  %i.ml = zext i16 %.0.copyload.i1568 to i32
  %.val1498 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.mm = getelementptr inbounds nuw i8, ptr %.val1498, i64 %i.mf
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 2
  %.0.copyload.i1569 = load i16, ptr %i.mn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1569) #8, !srcloc !36
  %i.mo = zext i16 %.0.copyload.i1569 to i32
  %.val1497 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.mp = getelementptr inbounds nuw i8, ptr %.val1497, i64 %i.mf
  %.0.copyload.i1570 = load i16, ptr %i.mp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1570) #8, !srcloc !36
  %i.mq = zext i16 %.0.copyload.i1570 to i32
  %i.mr = add i32 %.5, %i.mq
  %i.ms = mul i32 %i.mr, 1025                     ; 2 uses
  %i.mt = lshr i32 %i.ms, 6
  %i.mu = xor i32 %i.mt, %i.ms
  %i.mv = add i32 %i.mu, %i.mo
  %i.mw = mul i32 %i.mv, 1025                     ; 2 uses
  %i.mx = lshr i32 %i.mw, 6
  %i.my = xor i32 %i.mx, %i.mw
  %i.mz = add i32 %i.my, %i.ml
  %i.na = mul i32 %i.mz, 1025                     ; 2 uses
  %i.nb = lshr i32 %i.na, 6
  %i.nc = xor i32 %i.nb, %i.na
  %i.nd = add i32 %i.nc, %i.mi
  %i.ne = mul i32 %i.nd, 1025                     ; 2 uses
  %i.nf = lshr i32 %i.ne, 6
  %i.ng = xor i32 %i.nf, %i.ne                    ; 2 uses
  %i.nh = add i32 %.51314, 8                      ; 2 uses
  %i.ni = add nuw i32 %.2, 4                      ; 2 uses
  %.not1372 = icmp eq i32 %i.ni, %i.me
  br i1 %.not1372, label %.loopexit1589, label %bb.aw

.loopexit1589:                                    ; preds = %bb.aw, %bb.au
  %.61315 = phi i32 [ %.1, %bb.au ], [ %i.nh, %bb.aw ]
  %.6 = phi i32 [ 0, %bb.au ], [ %i.ng, %bb.aw ]  ; 2 uses
  %.not1373 = icmp eq i32 %i.mc, 0
  br i1 %.not1373, label %.loopexit1588, label %.preheader1587

.preheader1587:                                   ; preds = %.loopexit1589, %.preheader1587
  %.71316 = phi i32 [ %i.nq, %.preheader1587 ], [ %.61315, %.loopexit1589 ] ; 2 uses
  %.7 = phi i32 [ %i.np, %.preheader1587 ], [ %.6, %.loopexit1589 ]
  %.21302 = phi i32 [ %i.nr, %.preheader1587 ], [ 0, %.loopexit1589 ]
  %i.nj = zext i32 %.71316 to i64
  %.val1496 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.nk = getelementptr inbounds nuw i8, ptr %.val1496, i64 %i.nj
  %.0.copyload.i1571 = load i16, ptr %i.nk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1571) #8, !srcloc !36
  %i.nl = zext i16 %.0.copyload.i1571 to i32
  %i.nm = add i32 %.7, %i.nl
  %i.nn = mul i32 %i.nm, 1025                     ; 2 uses
  %i.no = lshr i32 %i.nn, 6
  %i.np = xor i32 %i.no, %i.nn                    ; 2 uses
  %i.nq = add i32 %.71316, 2
  %i.nr = add nuw nsw i32 %.21302, 1              ; 2 uses
  %.not1374 = icmp eq i32 %i.nr, %i.mc
  br i1 %.not1374, label %.loopexit1588, label %.preheader1587

.loopexit1588:                                    ; preds = %.preheader1587, %.loopexit1589, %bb.at
  %.8 = phi i32 [ 0, %bb.at ], [ %.6, %.loopexit1589 ], [ %i.np, %.preheader1587 ]
  %.val1492 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ns = getelementptr inbounds nuw i8, ptr %.val1492, i64 %i.lx
  %.0.copyload.i1572 = load i64, ptr %i.ns, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1572) #8, !srcloc !22
  %.val1476 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.nt = getelementptr inbounds nuw i8, ptr %.val1476, i64 %i.lw
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  store i64 %.0.copyload.i1572, ptr %i.nu, align 1
  %i.nv = add i32 %i.hf, -16
  %i.nw = tail call i32 @w2c_hermes_unsigned0x20int0x20hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3AIdentifierHashTable0x3A0x3AlookupString0x3Cchar16_t0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20bool0x290x20const(ptr noundef nonnull %0, i32 noundef %i.fc, i32 noundef %i.nv, i32 noundef %.8, i32 noundef 0) #8 ; 3 uses
  %.val1397 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.nx = getelementptr inbounds nuw i8, ptr %.val1397, i64 %i.fg
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %.0.copyload.i1573 = load i32, ptr %i.ny, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1573) #8, !srcloc !13
  %.val1396 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.nz = getelementptr inbounds nuw i8, ptr %.val1396, i64 %i.fg
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %.0.copyload.i1574 = load i32, ptr %i.oa, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1574) #8
  switch i32 %.0.copyload.i1573, label %bb.ax [
    i32 1, label %bb.ay
    i32 2, label %bb.az
  ]

bb.ax:                                            ; preds = %.loopexit1588
  %i.ob = add i32 %.0.copyload.i1574, %i.nw
  %i.oc = zext i32 %i.ob to i64
  %.val1480 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.od = getelementptr inbounds nuw i8, ptr %.val1480, i64 %i.oc
  store i8 1, ptr %i.od, align 1
  br label %bb.ba

bb.ay:                                            ; preds = %.loopexit1588
  %i.oe = shl i32 %i.nw, 1
  %i.of = add i32 %.0.copyload.i1574, %i.oe
  %i.og = zext i32 %i.of to i64
  %.val1494 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.oh = getelementptr inbounds nuw i8, ptr %.val1494, i64 %i.og
  store i16 1, ptr %i.oh, align 1
  br label %bb.ba

bb.az:                                            ; preds = %.loopexit1588
  %i.oi = shl i32 %i.nw, 2
  %i.oj = add i32 %.0.copyload.i1574, %i.oi
  %i.ok = zext i32 %i.oj to i64
  %.val1459 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ol = getelementptr inbounds nuw i8, ptr %.val1459, i64 %i.ok
  store i32 1, ptr %i.ol, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.am, %bb.al, %bb.ak
  %.val1393 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.om = getelementptr inbounds nuw i8, ptr %.val1393, i64 %i.fh
  %.0.copyload.i1577 = load i32, ptr %i.om, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1577) #8, !srcloc !13
  %i.on = add i32 %.0.copyload.i1577, -1
  %.val1458 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.oo = getelementptr inbounds nuw i8, ptr %.val1458, i64 %i.fh
  store i32 %i.on, ptr %i.oo, align 1
  store i32 %i.hf, ptr %i.ff, align 8, !tbaa !19
  %.val1392 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.op = getelementptr inbounds nuw i8, ptr %.val1392, i64 %i.f
  %.0.copyload.i1578 = load i32, ptr %i.op, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1578) #8, !srcloc !13
  %i.oq = add i32 %.0.copyload.i1578, %i.fk
  %i.or = zext i32 %i.oq to i64                   ; 2 uses
  %.val1391 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.os = getelementptr inbounds nuw i8, ptr %.val1391, i64 %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %.0.copyload.i1579 = load i32, ptr %i.ot, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1579) #8, !srcloc !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.y, %bb.ba
  %.pre-phi1652 = phi i64 [ %i.or, %bb.ba ], [ %i.gy, %bb.y ] ; 2 uses
  %.81317 = phi i32 [ %.0.copyload.i1579, %bb.ba ], [ %.11310, %bb.y ]
  %.val1390 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ou = getelementptr inbounds nuw i8, ptr %.val1390, i64 %i.fi
  %.0.copyload.i1580 = load i32, ptr %i.ou, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1580) #8, !srcloc !13
  %.val1457 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ov = getelementptr inbounds nuw i8, ptr %.val1457, i64 %.pre-phi1652
  store i32 0, ptr %i.ov, align 1
  %i.ow = and i32 %.81317, 3
  %i.ox = shl i32 %.0.copyload.i1580, 2
  %i.oy = or disjoint i32 %i.ox, %i.ow
  %.val1456 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.oz = getelementptr inbounds nuw i8, ptr %.val1456, i64 %.pre-phi1652
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 4
  store i32 %i.oy, ptr %i.pa, align 1
  %.val1455 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.pb = getelementptr inbounds nuw i8, ptr %.val1455, i64 %i.fi
  store i32 %.71326, ptr %i.pb, align 1
  %.val1389 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.pc = getelementptr inbounds nuw i8, ptr %.val1389, i64 %i.g
  %.0.copyload.i1581 = load i32, ptr %i.pc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1581) #8, !srcloc !13
  br label %bb.bb

bb.bb:                                            ; preds = %bb.t, %bb.s, %._crit_edge
  %.9 = phi i32 [ %.01303, %bb.s ], [ %.01303, %bb.t ], [ %.0.copyload.i1581, %._crit_edge ] ; 4 uses
  %i.pd = add nuw i32 %.71326, 1                  ; 4 uses
  %i.pe = icmp eq i32 %i.pd, %.9
  br i1 %i.pe, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pf = lshr i32 %i.pd, 5                       ; 2 uses
  %i.pg = add i32 %.9, -1
  %i.ph = lshr i32 %i.pg, 5                       ; 3 uses
  %i.pi = icmp samesign ugt i32 %i.pf, %i.ph
  br i1 %i.pi, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pj = and i32 %i.pd, 31
  %i.pk = and i32 %.71326, 31
  %i.pl = xor i32 %i.pk, 31
  %i.pm = lshr i32 -1, %i.pl
  %i.pn = xor i32 %i.pm, -1
  %.not1381 = icmp ne i32 %i.pj, 0
  %i.po = sub i32 0, %.9
  %i.pp = and i32 %i.po, 31
  %4 = lshr i32 -1, %i.pp                         ; 2 uses
  %.val1388 = load ptr, ptr %i.b, align 8, !tbaa !12
  %5 = getelementptr inbounds nuw i8, ptr %.val1388, i64 %i.eo
  %.0.copyload.i1582 = load i32, ptr %5, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1582) #8, !srcloc !13
  %i.pq = lshr i32 %i.pd, 5                       ; 5 uses
  %6 = zext nneg i32 %i.ph to i64
  %7 = shl nuw nsw i32 %i.pq, 2
  %8 = add i32 %7, %.0.copyload.i1582
  %9 = zext i32 %8 to i64
  %.val1388.a = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.pr = getelementptr inbounds nuw i8, ptr %.val1388.a, i64 %9
  %.0.copyload.i1582.a = load i32, ptr %i.pr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1582.a) #8, !srcloc !13
  %.not1382.peel = icmp eq i32 %i.pf, %i.pq
  %10 = and i1 %.not1381, %.not1382.peel
  %11 = select i1 %10, i32 %i.pn, i32 -1
  %.not1384.peel = icmp eq i32 %i.pq, %i.ph       ; 2 uses
  %12 = select i1 %.not1384.peel, i32 %4, i32 -1
  %13 = and i32 %12, %11
  %14 = and i32 %13, %.0.copyload.i1582.a         ; 2 uses
  %.not1383.peel = icmp eq i32 %14, 0
  br i1 %.not1383.peel, label %15, label %bb.bg

15:                                               ; preds = %bb.bd
  br i1 %.not1384.peel, label %.loopexit, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %15
  %16 = zext nneg i32 %i.pq to i64
  br label %bb.be

bb.be:                                            ; preds = %.peel.next.preheader, %17
  %indvars.iv1648.in = phi i64 [ %indvars.iv1648, %17 ], [ %16, %.peel.next.preheader ]
  %indvars.iv1648 = add nuw nsw i64 %indvars.iv1648.in, 1 ; 4 uses
  %indvars.iv1648.tr = trunc nuw nsw i64 %indvars.iv1648 to i32
  %i.ps = shl nuw nsw i32 %indvars.iv1648.tr, 2
  %i.pt = add i32 %i.ps, %.0.copyload.i1582
  %i.pu = zext i32 %i.pt to i64
  %.val = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.pv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.pu
  %.0.copyload.i1583 = load i32, ptr %i.pv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1583) #8, !srcloc !13
  %.not1384 = icmp eq i64 %indvars.iv1648, %6     ; 2 uses
  %i.pw = select i1 %.not1384, i32 %4, i32 -1
  %i.px = and i32 %i.pw, %.0.copyload.i1583       ; 2 uses
  %.not1383 = icmp eq i32 %i.px, 0
  br i1 %.not1383, label %17, label %bb.bf

17:                                               ; preds = %bb.be
  br i1 %.not1384, label %.loopexit, label %bb.be, !llvm.loop !42

bb.bf:                                            ; preds = %bb.be
  %18 = trunc nuw nsw i64 %indvars.iv1648 to i32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  %.81327.lcssa.wide = phi i32 [ %i.pq, %bb.bd ], [ %18, %bb.bf ]
  %.lcssa1623 = phi i32 [ %14, %bb.bd ], [ %i.px, %bb.bf ]
  %i.py = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.lcssa1623, i1 true)
  %i.pz = shl i32 %.81327.lcssa.wide, 5
  %i.qa = or disjoint i32 %i.py, %i.pz            ; 3 uses
  %i.qb = icmp ne i32 %i.qa, -1
  %i.qc = icmp ult i32 %i.qa, %.0.copyload.i1529
  %or.cond1387 = select i1 %i.qb, i1 %i.qc, i1 false
  br i1 %or.cond1387, label %bb.s, label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.bg, %bb.bc, %bb.bb, %15, %17, %..loopexit_crit_edge, %bb.q
  %.pre-phi1653 = phi i64 [ %.pre, %..loopexit_crit_edge ], [ %i.eo, %bb.bg ], [ %i.eo, %17 ], [ %i.eo, %bb.q ], [ %i.eo, %15 ], [ %i.eo, %bb.bb ], [ %i.eo, %bb.bc ], [ %i.eo, %bb.p ]
  %.val1491 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.qd = getelementptr inbounds nuw i8, ptr %.val1491, i64 %.pre-phi1653
  %.0.copyload.i1584 = load i64, ptr %i.qd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1584) #8, !srcloc !22
  %i.qe = lshr i64 %.0.copyload.i1584, 32         ; 2 uses
  %.not1386 = icmp eq i64 %i.qe, 0
  br i1 %.not1386, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  %i.qf = trunc nuw i64 %i.qe to i32
  %i.qg = trunc i64 %.0.copyload.i1584 to i32
  %i.qh = shl i32 %i.qf, 2
  %i.qi = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.qg, i32 noundef 0, i32 noundef %i.qh) #8 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

declare i32 @w2c_hermes_unsigned0x20int0x20hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3AIdentifierHashTable0x3A0x3AlookupString0x3Cchar16_t0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20bool0x290x20const(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AcreateNotUniquedSymbol0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 6 uses
  %i.c = add i32 %i.b, -112                       ; 5 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 186 uses
  %i.e = zext i32 %2 to i64                       ; 7 uses
  %i.f = add nuw nsw i64 %i.e, 48                 ; 2 uses
  %.val1633 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %.val1633, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %i.h = icmp eq i32 %.0.copyload.i, 1073741823
  %.val1632 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %.val1632, i64 %i.e ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.0.copyload.i1756 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1756) #8, !srcloc !13
  %.val1631 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %.val1631, i64 %i.e
  %.0.copyload.i1757 = load i32, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1757) #8, !srcloc !13
  %i.l = sub i32 %.0.copyload.i1756, %.0.copyload.i1757
  %i.m = sdiv i32 %i.l, 12                        ; 3 uses
  %i.n = icmp ugt i32 %i.m, 1073741821
  br i1 %i.n, label %bb.bz, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AConservativeVector0x3Chermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3ALookupEntry0x3E0x3A0x3Aemplace_back0x280x29(ptr noundef nonnull %0, i32 noundef %2)
  %i.o = add i32 %2, 12                           ; 3 uses
  %i.p = add nuw nsw i64 %i.e, 20                 ; 2 uses
  %.val1630 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.val1630, i64 %i.p
  %.0.copyload.i1758 = load i32, ptr %i.q, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1758) #8, !srcloc !13
  %i.r = add i32 %.0.copyload.i1758, 1            ; 3 uses
  %.val1629 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %.val1629, i64 %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.0.copyload.i1759 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1759) #8, !srcloc !13
  %i.u = shl i32 %.0.copyload.i1759, 5
  %i.v = icmp ugt i32 %i.r, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.r, i32 noundef 0) #8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %.val1681 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val1681, i64 %i.p
  store i32 %i.r, ptr %i.w, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %.0.copyload.i1760 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1760) #8, !srcloc !13
  %i.x = mul i32 %.0.copyload.i, 12
  %i.y = add i32 %.0.copyload.i1760, %i.x
  %i.z = zext i32 %i.y to i64
  %.val1627 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1627, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.0.copyload.i1761 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1761) #8, !srcloc !13
  %i.ac = lshr i32 %.0.copyload.i1761, 2
  %.val1680 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1680, i64 %i.f
  store i32 %i.ac, ptr %i.ad, align 1
  %i.ae = add i32 %2, 12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.01514 = phi i32 [ %.0.copyload.i1758, %bb.d ], [ %.0.copyload.i1758, %bb.e ], [ %.0.copyload.i, %bb.f ] ; 2 uses
  %.01513 = phi i32 [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.ae, %bb.f ]
  %.01508 = phi i32 [ %i.m, %bb.d ], [ %i.m, %bb.e ], [ %.0.copyload.i, %bb.f ] ; 3 uses
  %i.af = zext i32 %.01513 to i64
  %.val1626 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1626, i64 %i.af
  %.0.copyload.i1762 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1762) #8, !srcloc !13
  %i.ah = lshr i32 %.01514, 3
  %i.ai = and i32 %i.ah, 536870908
  %i.aj = add i32 %.0.copyload.i1762, %i.ai
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %.val1625 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %.val1625, i64 %i.ak
  %.0.copyload.i1763 = load i32, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1763) #8, !srcloc !13
  %i.am = and i32 %.01514, 31
  %i.an = shl nuw i32 1, %i.am
  %i.ao = or i32 %.0.copyload.i1763, %i.an
  %.val1679 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %.val1679, i64 %i.ak
  store i32 %i.ao, ptr %i.ap, align 1
  %i.aq = add i32 %3, 1364
  %i.ar = zext i32 %i.aq to i64
  %.val1624 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %.val1624, i64 %i.ar
  %.0.copyload.i1764 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1764) #8, !srcloc !13
  %i.at = zext i32 %4 to i64                      ; 3 uses
  %.val1623 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %.val1623, i64 %i.at
  %.0.copyload.i1765 = load i32, ptr %i.au, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1765) #8, !srcloc !13
  %i.av = and i32 %.0.copyload.i1765, -4194304
  %i.aw = icmp eq i32 %.0.copyload.i1764, %i.av
  br i1 %i.aw, label %bb.h, label %bb.bt

bb.h:                                             ; preds = %bb.g
  %i.ax = zext i32 %.0.copyload.i1765 to i64      ; 8 uses
  %.val1622 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1622, i64 %i.ax
  %.0.copyload.i1766 = load i32, ptr %i.ay, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1766) #8, !srcloc !13
  %i.az = and i32 %.0.copyload.i1766, 16777216
  %.not1558 = icmp eq i32 %i.az, 0
  %.val1621 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1621, i64 %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %.0.copyload.i1767 = load i32, ptr %i.bb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1767) #8
  %i.bc = icmp ugt i32 %.0.copyload.i1766, 150994943 ; 2 uses
  br i1 %.not1558, label %bb.i, label %bb.al

bb.i:                                             ; preds = %bb.h
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val1620 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1620, i64 %i.ax
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %.0.copyload.i1768 = load i32, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1768) #8, !srcloc !13
  %i.bf = add i32 %.0.copyload.i1765, 12
  %.val1713 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1713, i64 %i.ax
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 23
  %.0.copyload.i1769 = load i8, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1769) #8, !srcloc !20
  %i.bi = icmp slt i8 %.0.copyload.i1769, 0
  %i.bj = select i1 %i.bi, i32 %.0.copyload.i1768, i32 %i.bf
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.bk = and i32 %.0.copyload.i1766, 234881024
  switch i32 %i.bk, label %bb.n [
    i32 67108864, label %bb.m
    i32 134217728, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bl = add i32 %.0.copyload.i1765, 12
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bm = add i32 %.0.copyload.i1765, 8
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %.val1619 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1619, i64 %i.ax
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.0.copyload.i1770 = load i32, ptr %i.bo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1770) #8, !srcloc !13
  %i.bp = zext i32 %.0.copyload.i1770 to i64      ; 2 uses
  %.val1618 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %.val1618, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %.0.copyload.i1771 = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1771) #8, !srcloc !13
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADecoratedObject0x3A0x3A_mallocSizeImpl0x28hermes0x3A0x3Avm0x3A0x3AGCCell0x2A0x29:bb.a
  %i.v = icmp ne ptr %i.s, null
  %i.w = icmp ne ptr %i.t, null
  %or.cond.i = and i1 %i.v, %i.w
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !32

func_types_eq.exit:                               ; preds = %bb.e
  %i.x = load i128, ptr %i.s, align 1
  %i.y = load i128, ptr %i.t, align 1
  %i.z = xor i128 %i.x, %i.y
  %i.aa = getelementptr i8, ptr %i.s, i64 16
  %i.ab = getelementptr i8, ptr %i.t, i64 16
  %i.ac = load i128, ptr %i.aa, align 1
  %i.ad = load i128, ptr %i.ab, align 1
  %i.ae = xor i128 %i.ac, %i.ad
  %i.af = or i128 %i.z, %i.ae
  %i.ag = icmp ne i128 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !33

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.b, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.d, %func_types_eq.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  %i.ak = tail call i32 %i.r(ptr noundef %i.aj, i32 noundef %.0.copyload.i) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %func_types_eq.exit.thread
  %.0 = phi i32 [ %i.ak, %func_types_eq.exit.thread ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADecoratedObject0x3A0x3A_finalizeImpl0x28hermes0x3A0x3Avm0x3A0x3AGCCell0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AHadesGC0x260x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = zext i32 %1 to i64
  %i.c = add nuw nsw i64 %i.b, 20                 ; 2 uses
  %.val29 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %.val29, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %.val30 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %.val30, i64 %i.c
  store i32 0, ptr %i.e, align 1
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %.0.copyload.i to i64
  %.val28 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %.val28, i64 %i.f
  %.0.copyload.i31 = load i32, ptr %i.g, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i31) #8, !srcloc !13
  %i.h = zext i32 %.0.copyload.i31 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.0.copyload.i32 = load i32, ptr %i.j, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i32) #8, !srcloc !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !24
  %i.m = icmp ult i32 %.0.copyload.i32, %i.l
  br i1 %i.m, label %bb.c, label %.critedge, !prof !25

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.p = zext i32 %.0.copyload.i32 to i64
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 2 uses
  %.not27 = icmp eq ptr %i.s, null
  br i1 %.not27, label %.critedge, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr @w2c_hermes_t3, align 8, !tbaa !30 ; 4 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !31   ; 4 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %func_types_eq.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ne ptr %i.t, null
  %i.x = icmp ne ptr %i.u, null
  %or.cond.i = and i1 %i.w, %i.x
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !32

func_types_eq.exit:                               ; preds = %bb.e
  %i.y = load i128, ptr %i.t, align 1
  %i.z = load i128, ptr %i.u, align 1
  %i.aa = xor i128 %i.y, %i.z
  %i.ab = getelementptr i8, ptr %i.t, i64 16
  %i.ac = getelementptr i8, ptr %i.u, i64 16
  %i.ad = load i128, ptr %i.ab, align 1
  %i.ae = load i128, ptr %i.ac, align 1
  %i.af = xor i128 %i.ad, %i.ae
  %i.ag = or i128 %i.aa, %i.af
  %i.ah = icmp ne i128 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !33

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.b, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.d, %func_types_eq.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34
  tail call void %i.s(ptr noundef %i.ak, i32 noundef %.0.copyload.i) #8
  br label %bb.f

bb.f:                                             ; preds = %func_types_eq.exit.thread, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = !{!"p1 omnipotent char", !7, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"_Bool", !4, i64 0}
!11 = !{!"", !8, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !10, i64 32}
!12 = !{!11, !8, i64 0}
!13 = !{i64 2151597171}
!14 = !{!"p1 _ZTS7w2c_env", !7, i64 0}
!15 = !{!"p1 _ZTS18w2c_hermes__import", !7, i64 0}
!16 = !{!"p1 _ZTS28w2c_wasi__snapshot__preview1", !7, i64 0}
!17 = !{!"", !7, i64 0, !5, i64 8, !5, i64 12}
!18 = !{!"w2c_hermes", !14, i64 0, !15, i64 8, !16, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !11, i64 40, !17, i64 80}
!19 = !{!18, !5, i64 24}
!20 = !{i64 2151598875}
!21 = !{i64 2151599727}
!22 = !{i64 2151597597}
!23 = !{i64 2151602729}
!24 = !{!18, !5, i64 92}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = !{!18, !7, i64 80}
!27 = !{!"", !8, i64 0, !7, i64 8, !7, i64 16}
!28 = !{!27, !7, i64 8}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = !{!8, !8, i64 0}
!31 = !{!27, !8, i64 0}
!32 = !{!"branch_weights", i32 4000000, i32 4001}
!33 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!34 = !{!27, !7, i64 16}
!35 = !{i64 2151598449}
!36 = !{i64 2151601439}
!37 = !{i64 2151600579}
!38 = !{i64 2151601869}
!39 = !{!"branch_weights", i32 4001, i32 4000000}
!40 = !{!"branch_weights", !"expected", i32 2147483112, i32 536}
!41 = !{ptr @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetOwnComputedDescriptor0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AComputedPropertyDescriptor0x260x29}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_3
