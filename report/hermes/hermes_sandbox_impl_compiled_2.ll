Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_2?download=true
inline.NumInlined: 21302
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Aregex0x3A0x3AMatchCharNode0x3A0x3AemitStep0x28hermes0x3A0x3Aregex0x3A0x3ARegexBytecodeStream0x260x29:bb.a
  %.val1706 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1706, i64 %i.br
  store i8 11, ptr %i.bs, align 1
  %i.bt = sub i32 %.11605, %.2
  %.not1661 = icmp ugt i32 %i.bt, %i.aj
  br i1 %.not1661, label %bb.y, label %.loopexit

bb.p:                                             ; preds = %.preheader1904
  br i1 %i.am, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %.val1749 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1749, i64 %i.o
  %.0.copyload.i1850 = load i32, ptr %i.bu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1850) #7, !srcloc !19
  %i.bv = sub i32 %.0.copyload.i1850, %.0.copyload.i1843
  %i.bw = icmp ugt i32 %i.bv, 1
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bx = zext i32 %.0.copyload.i1843 to i64
  %.val1831 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val1831, i64 %i.bx
  store i16 0, ptr %i.by, align 1
  %i.bz = add i32 %.0.copyload.i1843, 2           ; 2 uses
  %.val1812 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val1812, i64 %i.n
  store i32 %i.bz, ptr %i.ca, align 1
  %.val1748 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1748, i64 %i.m
  %.0.copyload.i1851 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1851) #7, !srcloc !19
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.cc = add nuw i32 %i.aj, 2                    ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = sub i32 %.0.copyload.i1850, %.0.copyload.i1844 ; 2 uses
  %i.cf = shl i32 %i.ce, 1
  %i.cg = tail call i32 @llvm.umax.i32(i32 %i.cc, i32 %i.cf)
  %i.ch = icmp ugt i32 %i.ce, 1073741822
  %i.ci = select i1 %i.ch, i32 2147483647, i32 %i.cg ; 2 uses
  %i.cj = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ci) #7 ; 2 uses
  %i.ck = add i32 %i.cj, %i.aj                    ; 2 uses
  %i.cl = zext i32 %i.ck to i64
  %.val1830 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1830, i64 %i.cl
  store i16 0, ptr %i.cm, align 1
  %i.cn = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.cj, i32 noundef %.0.copyload.i1844, i32 noundef %i.aj) #7 ; 2 uses
  %i.co = add i32 %i.cn, %i.ci
  %.val1811 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val1811, i64 %i.o
  store i32 %i.co, ptr %i.cp, align 1
  %i.cq = add i32 %i.ck, 2                        ; 2 uses
  %.val1810 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1810, i64 %i.n
  store i32 %i.cq, ptr %i.cr, align 1
  %.val1809 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1809, i64 %i.m
  store i32 %i.cn, ptr %i.cs, align 1
  %.not1658 = icmp eq i32 %.0.copyload.i1844, 0
  br i1 %.not1658, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1844) #7
  %.val1747 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1747, i64 %i.n
  %.0.copyload.i1852 = load i32, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1852) #7, !srcloc !19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.21606 = phi i32 [ %.0.copyload.i1852, %bb.u ], [ %i.cq, %bb.t ]
  %.val1746 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1746, i64 %i.m
  %.0.copyload.i1853 = load i32, ptr %i.cu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1853) #7, !srcloc !19
  br label %bb.x

bb.w:                                             ; preds = %bb.p
  %i.cv = add i32 %.0.copyload.i1843, 2           ; 2 uses
  %.val1808 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1808, i64 %i.n
  store i32 %i.cv, ptr %i.cw, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.r
  %.31607 = phi i32 [ %i.bz, %bb.r ], [ %.21606, %bb.v ], [ %i.cv, %bb.w ]
  %.3 = phi i32 [ %.0.copyload.i1851, %bb.r ], [ %.0.copyload.i1853, %bb.v ], [ %.0.copyload.i1844, %bb.w ] ; 2 uses
  %i.cx = add i32 %.3, %i.aj                      ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %.val1705 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val1705, i64 %i.cy
  store i8 10, ptr %i.cz, align 1
  %i.da = sub i32 %.31607, %.3
  %.not1659 = icmp ugt i32 %i.da, %i.aj
  br i1 %.not1659, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x, %bb.o
  %.01580.in = phi i32 [ %i.bq, %bb.o ], [ %i.cx, %bb.x ]
  %.01580 = add i32 %.01580.in, 1
  %i.db = tail call i32 @llvm.umin.i32(i32 %.01582, i32 255) ; 3 uses
  %i.dc = shl nuw nsw i32 %i.db, 2
  %i.dd = add i32 %i.dc, %.11586                  ; 3 uses
  %i.de = zext i32 %.01580 to i64
  %.val1704 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.df = trunc nuw i32 %i.db to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %.val1704, i64 %i.de
  store i8 %i.df, ptr %i.dg, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.ag
  %.01593 = phi i32 [ %.11586, %bb.y ], [ %i.el, %bb.ag ] ; 2 uses
  %i.dh = zext i32 %.01593 to i64
  %.val1745 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val1745, i64 %i.dh
  %.0.copyload.i1854 = load i32, ptr %i.di, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1854) #7, !srcloc !19
  %.val1744 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %.val1744, i64 %i.n
  %.0.copyload.i1855 = load i32, ptr %i.dj, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1855) #7, !srcloc !19
  %.val1743 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val1743, i64 %i.o
  %.0.copyload.i1856 = load i32, ptr %i.dk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1856) #7, !srcloc !19
  %i.dl = icmp ult i32 %.0.copyload.i1855, %.0.copyload.i1856
  br i1 %i.dl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dm = zext i32 %.0.copyload.i1855 to i64
  %.val1703 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dn = trunc i32 %.0.copyload.i1854 to i8
  %i.do = getelementptr inbounds nuw i8, ptr %.val1703, i64 %i.dm
  store i8 %i.dn, ptr %i.do, align 1
  %i.dp = add nuw i32 %.0.copyload.i1855, 1
  %.val1807 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val1807, i64 %i.n
  store i32 %i.dp, ptr %i.dq, align 1
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %.val1742 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %.val1742, i64 %i.m
  %.0.copyload.i1857 = load i32, ptr %i.dr, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1857) #7, !srcloc !19
  %i.ds = sub i32 %.0.copyload.i1855, %.0.copyload.i1857 ; 3 uses
  %i.dt = add i32 %i.ds, 1                        ; 2 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = sub i32 %.0.copyload.i1856, %.0.copyload.i1857 ; 2 uses
  %i.dw = shl i32 %i.dv, 1
  %i.dx = tail call i32 @llvm.umax.i32(i32 %i.dt, i32 %i.dw)
  %i.dy = icmp ugt i32 %i.dv, 1073741822
  %i.dz = select i1 %i.dy, i32 2147483647, i32 %i.dx ; 3 uses
  %.not1662 = icmp eq i32 %i.dz, 0
  br i1 %.not1662, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.dz) #7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.0 = phi i32 [ %i.ea, %bb.ad ], [ 0, %bb.ac ]  ; 2 uses
  %i.eb = add i32 %.0, %i.ds                      ; 2 uses
  %i.ec = zext i32 %i.eb to i64
  %.val1702 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = trunc i32 %.0.copyload.i1854 to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %.val1702, i64 %i.ec
  store i8 %i.ed, ptr %i.ee, align 1
  %i.ef = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef %.0.copyload.i1857, i32 noundef %i.ds) #7 ; 2 uses
  %i.eg = add i32 %i.ef, %i.dz
  %.val1806 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %.val1806, i64 %i.o
  store i32 %i.eg, ptr %i.eh, align 1
  %i.ei = add i32 %i.eb, 1
  %.val1805 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %.val1805, i64 %i.n
  store i32 %i.ei, ptr %i.ej, align 1
  %.val1804 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %.val1804, i64 %i.m
  store i32 %i.ef, ptr %i.ek, align 1
  %.not1663 = icmp eq i32 %.0.copyload.i1857, 0
  br i1 %.not1663, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1857) #7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.aa
  %i.el = add i32 %.01593, 4                      ; 2 uses
  %.not1664 = icmp eq i32 %i.el, %i.dd
  br i1 %.not1664, label %bb.ah, label %bb.z

bb.ah:                                            ; preds = %bb.ag
  %i.em = sub nuw i32 %.01582, %i.db              ; 3 uses
  %i.en = icmp ugt i32 %i.em, 2
  br i1 %i.en, label %.preheader1904, label %.loopexit1906

.loopexit1906:                                    ; preds = %bb.ah, %bb.f
  %.4 = phi i32 [ %.0.copyload.i1841, %bb.f ], [ %i.dd, %bb.ah ] ; 2 uses
  %.11583 = phi i32 [ %.0.copyload.i1842, %bb.f ], [ %i.em, %bb.ah ] ; 2 uses
  %.not1665 = icmp eq i32 %.11583, 0
  br i1 %.not1665, label %.loopexit1903, label %bb.ai

bb.ai:                                            ; preds = %.loopexit1906
  %i.eo = shl nuw nsw i32 %.11583, 2
  %i.ep = add i32 %i.eo, %.4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.bc, %bb.ai
  %.5 = phi i32 [ %.4, %bb.ai ], [ %i.hp, %bb.bc ] ; 2 uses
  %.val1741 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %.val1741, i64 %i.n
  %.0.copyload.i1858 = load i32, ptr %i.eq, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1858) #7, !srcloc !19
  %.val1740 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.val1740, i64 %i.m
  %.0.copyload.i1859 = load i32, ptr %i.er, align 1 ; 12 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1859) #7, !srcloc !19
  %i.es = sub i32 %.0.copyload.i1858, %.0.copyload.i1859 ; 11 uses
  %i.et = zext i32 %.5 to i64
  %.val1739 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %.val1739, i64 %i.et
  %.0.copyload.i1860 = load i32, ptr %i.eu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1860) #7, !srcloc !19
  %.val1764 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.val1764, i64 %i.e
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 36
  %.0.copyload.i1861 = load i8, ptr %i.ew, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1861) #7, !srcloc !20
  %.not1666 = icmp eq i8 %.0.copyload.i1861, 0
  %i.ex = icmp ult i32 %i.es, -2                  ; 2 uses
  br i1 %.not1666, label %bb.at, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ex, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %.val1738 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %.val1738, i64 %i.o
  %.0.copyload.i1862 = load i32, ptr %i.ey, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1862) #7, !srcloc !19
  %i.ez = sub i32 %.0.copyload.i1862, %.0.copyload.i1858
  %i.fa = icmp ugt i32 %i.ez, 1
  br i1 %i.fa, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fb = zext i32 %.0.copyload.i1858 to i64
  %.val1829 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %.val1829, i64 %i.fb
  store i16 0, ptr %i.fc, align 1
  %i.fd = add i32 %.0.copyload.i1858, 2           ; 2 uses
  %.val1803 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %.val1803, i64 %i.n
  store i32 %i.fd, ptr %i.fe, align 1
  %.val1737 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %.val1737, i64 %i.m
  %.0.copyload.i1863 = load i32, ptr %i.ff, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1863) #7, !srcloc !19
  br label %bb.as

bb.an:                                            ; preds = %bb.al
  %i.fg = add nuw i32 %i.es, 2                    ; 2 uses
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fi = sub i32 %.0.copyload.i1862, %.0.copyload.i1859 ; 2 uses
  %i.fj = shl i32 %i.fi, 1
  %i.fk = tail call i32 @llvm.umax.i32(i32 %i.fg, i32 %i.fj)
  %i.fl = icmp ugt i32 %i.fi, 1073741822
  %i.fm = select i1 %i.fl, i32 2147483647, i32 %i.fk ; 2 uses
  %i.fn = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.fm) #7 ; 2 uses
  %i.fo = add i32 %i.fn, %i.es                    ; 2 uses
  %i.fp = zext i32 %i.fo to i64
  %.val1828 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fq = getelementptr inbounds nuw i8, ptr %.val1828, i64 %i.fp
  store i16 0, ptr %i.fq, align 1
  %i.fr = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.fn, i32 noundef %.0.copyload.i1859, i32 noundef %i.es) #7 ; 2 uses
  %i.fs = add i32 %i.fr, %i.fm
  %.val1802 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %.val1802, i64 %i.o
  store i32 %i.fs, ptr %i.ft, align 1
  %i.fu = add i32 %i.fo, 2                        ; 2 uses
  %.val1801 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fv = getelementptr inbounds nuw i8, ptr %.val1801, i64 %i.n
  store i32 %i.fu, ptr %i.fv, align 1
  %.val1800 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %.val1800, i64 %i.m
  store i32 %i.fr, ptr %i.fw, align 1
  %.not1669 = icmp eq i32 %.0.copyload.i1859, 0
  br i1 %.not1669, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1859) #7
  %.val1736 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %.val1736, i64 %i.n
  %.0.copyload.i1864 = load i32, ptr %i.fx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1864) #7, !srcloc !19
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.41608 = phi i32 [ %.0.copyload.i1864, %bb.ap ], [ %i.fu, %bb.ao ]
  %.val1735 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1735, i64 %i.m
  %.0.copyload.i1865 = load i32, ptr %i.fy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1865) #7, !srcloc !19
  br label %bb.as

bb.ar:                                            ; preds = %bb.ak
  %i.fz = add i32 %.0.copyload.i1858, 2           ; 2 uses
  %.val1799 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %.val1799, i64 %i.n
  store i32 %i.fz, ptr %i.ga, align 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.am
  %.51609 = phi i32 [ %i.fd, %bb.am ], [ %.41608, %bb.aq ], [ %i.fz, %bb.ar ]
  %.11594 = phi i32 [ %.0.copyload.i1863, %bb.am ], [ %.0.copyload.i1865, %bb.aq ], [ %.0.copyload.i1859, %bb.ar ] ; 2 uses
  %i.gb = add i32 %.11594, %i.es                  ; 2 uses
  %i.gc = zext i32 %i.gb to i64
  %.val1701 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.val1701, i64 %i.gc
  store i8 12, ptr %i.gd, align 1
  %i.ge = sub i32 %.51609, %.11594
  %.not1670 = icmp ugt i32 %i.ge, %i.es
  br i1 %.not1670, label %bb.bc, label %.loopexit

bb.at:                                            ; preds = %bb.aj
  br i1 %i.ex, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %.val1734 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %.val1734, i64 %i.o
  %.0.copyload.i1866 = load i32, ptr %i.gf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1866) #7, !srcloc !19
  %i.gg = sub i32 %.0.copyload.i1866, %.0.copyload.i1858
  %i.gh = icmp ugt i32 %i.gg, 1
  br i1 %i.gh, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gi = zext i32 %.0.copyload.i1858 to i64
  %.val1827 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %.val1827, i64 %i.gi
  store i16 0, ptr %i.gj, align 1
  %i.gk = add i32 %.0.copyload.i1858, 2           ; 2 uses
  %.val1798 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %.val1798, i64 %i.n
  store i32 %i.gk, ptr %i.gl, align 1
  %.val1733 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %.val1733, i64 %i.m
  %.0.copyload.i1867 = load i32, ptr %i.gm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1867) #7, !srcloc !19
  br label %bb.bb

bb.aw:                                            ; preds = %bb.au
  %i.gn = add nuw i32 %i.es, 2                    ; 2 uses
  %i.go = icmp slt i32 %i.gn, 0
  br i1 %i.go, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gp = sub i32 %.0.copyload.i1866, %.0.copyload.i1859 ; 2 uses
  %i.gq = shl i32 %i.gp, 1
  %i.gr = tail call i32 @llvm.umax.i32(i32 %i.gn, i32 %i.gq)
  %i.gs = icmp ugt i32 %i.gp, 1073741822
  %i.gt = select i1 %i.gs, i32 2147483647, i32 %i.gr ; 2 uses
  %i.gu = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gt) #7 ; 2 uses
  %i.gv = add i32 %i.gu, %i.es                    ; 2 uses
  %i.gw = zext i32 %i.gv to i64
  %.val1826 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val1826, i64 %i.gw
  store i16 0, ptr %i.gx, align 1
  %i.gy = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.gu, i32 noundef %.0.copyload.i1859, i32 noundef %i.es) #7 ; 2 uses
  %i.gz = add i32 %i.gy, %i.gt
  %.val1797 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ha = getelementptr inbounds nuw i8, ptr %.val1797, i64 %i.o
  store i32 %i.gz, ptr %i.ha, align 1
  %i.hb = add i32 %i.gv, 2                        ; 2 uses
  %.val1796 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hc = getelementptr inbounds nuw i8, ptr %.val1796, i64 %i.n
  store i32 %i.hb, ptr %i.hc, align 1
  %.val1795 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1795, i64 %i.m
  store i32 %i.gy, ptr %i.hd, align 1
  %.not1667 = icmp eq i32 %.0.copyload.i1859, 0
  br i1 %.not1667, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1859) #7
  %.val1732 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw i8, ptr %.val1732, i64 %i.n
  %.0.copyload.i1868 = load i32, ptr %i.he, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1868) #7, !srcloc !19
  br label %bb.az

end_hunk_0
