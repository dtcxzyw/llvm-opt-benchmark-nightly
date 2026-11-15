Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_5?download=true
inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpSourceGetter0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 23
  %.0.copyload.i1905 = load i8, ptr %i.en, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1905) #8, !srcloc !22
  %i.eo = icmp slt i8 %.0.copyload.i1905, 0
  %i.ep = select i1 %i.eo, i32 %.0.copyload.i1904, i32 %i.el
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread, %.thread1981, %bb.w, %bb.v
  %.01630 = phi i32 [ %.0.copyload.i1890, %bb.v ], [ %i.dn, %bb.w ], [ %i.ep, %bb.x ], [ %i.ct, %.thread1981 ], [ %i.dt, %.thread ]
  %.01623 = phi i32 [ %i.df, %bb.v ], [ %i.do, %bb.w ], [ %i.eb, %bb.x ], [ %i.cq, %.thread1981 ], [ %i.dq, %.thread ]
  %.01614 = phi i32 [ %i.dg, %bb.v ], [ %i.dp, %bb.w ], [ %i.ef, %bb.x ], [ %i.cs, %.thread1981 ], [ %i.ds, %.thread ]
  %.val1773 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %.val1773, i64 %i.bq
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 96
  %.0.copyload.i1906 = load i32, ptr %i.er, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1906) #8, !srcloc !19
  %i.es = add i32 %.01623, %.01630
  %i.et = add i32 %i.es, %.0.copyload.i1906
  br label %bb.ad

bb.z:                                             ; preds = %bb.s
  %i.eu = shl nuw nsw i32 %.0.copyload.i1889, 1
  %i.ev = add i32 %.0.copyload.i1890, %i.eu
  br label %bb.ac

bb.aa:                                            ; preds = %bb.t
  %.val1772 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ew = getelementptr inbounds nuw i8, ptr %.val1772, i64 %i.cw
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %.0.copyload.i1907 = load i32, ptr %i.ex, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1907) #8, !srcloc !19
  %i.ey = add i32 %.0.copyload.i1896, 12
  %.val1808 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %.val1808, i64 %i.cw
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 23
  %.0.copyload.i1908 = load i8, ptr %i.fa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1908) #8, !srcloc !22
  %i.fb = icmp slt i8 %.0.copyload.i1908, 0
  %i.fc = select i1 %i.fb, i32 %.0.copyload.i1907, i32 %i.ey ; 2 uses
  %i.fd = and i32 %.0.copyload.i1889, 1073741823  ; 2 uses
  %i.fe = shl nuw nsw i32 %i.fd, 1
  %i.ff = add i32 %i.fc, %i.fe
  br label %bb.ac

.thread1983:                                      ; preds = %bb.u
  %i.fg = and i32 %.0.copyload.i1889, 1073741823  ; 2 uses
  %i.fh = shl nuw nsw i32 %i.fg, 1
  %i.fi = add nuw i32 %i.fh, 8
  %i.fj = add i32 %i.fi, %.0.copyload.i1896
  %i.fk = add i32 %.0.copyload.i1896, 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.u
  %.val1778 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %.val1778, i64 %i.cw
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.0.copyload.i1898 = load i32, ptr %i.fm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1898) #8, !srcloc !19
  %i.fn = zext i32 %.0.copyload.i1898 to i64      ; 2 uses
  %.val1777 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %.val1777, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %.0.copyload.i1899 = load i32, ptr %i.fp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1899) #8, !srcloc !19
  %.val1811 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fq = getelementptr inbounds nuw i8, ptr %.val1811, i64 %i.fn
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 23
  %.0.copyload.i1900 = load i8, ptr %i.fr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1900) #8, !srcloc !22
  %i.fs = and i32 %.0.copyload.i1889, 1073741823  ; 2 uses
  %i.ft = icmp slt i8 %.0.copyload.i1900, 0
  %i.fu = add i32 %.0.copyload.i1898, 12
  %i.fv = select i1 %i.ft, i32 %.0.copyload.i1899, i32 %i.fu
  %i.fw = shl nuw nsw i32 %i.fs, 1
  %i.fx = add i32 %i.fv, %i.fw
  %.val1771 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1771, i64 %i.cw
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.0.copyload.i1909 = load i32, ptr %i.fz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1909) #8, !srcloc !19
  %i.ga = zext i32 %.0.copyload.i1909 to i64      ; 2 uses
  %.val1770 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1770, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  %.0.copyload.i1910 = load i32, ptr %i.gc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1910) #8, !srcloc !19
  %i.gd = add i32 %.0.copyload.i1909, 12
  %.val1807 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ge = getelementptr inbounds nuw i8, ptr %.val1807, i64 %i.ga
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 23
  %.0.copyload.i1911 = load i8, ptr %i.gf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1911) #8, !srcloc !22
  %i.gg = icmp slt i8 %.0.copyload.i1911, 0
  %i.gh = select i1 %i.gg, i32 %.0.copyload.i1910, i32 %i.gd
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread1983, %.thread1985, %bb.aa, %bb.z
  %.11631 = phi i32 [ %.0.copyload.i1890, %bb.z ], [ %i.fc, %bb.aa ], [ %i.gh, %bb.ab ], [ %i.de, %.thread1985 ], [ %i.fk, %.thread1983 ]
  %.11624 = phi i32 [ %.0.copyload.i1889, %bb.z ], [ %i.fd, %bb.aa ], [ %i.fs, %bb.ab ], [ %i.da, %.thread1985 ], [ %i.fg, %.thread1983 ]
  %.01611 = phi i32 [ %i.ev, %bb.z ], [ %i.ff, %bb.aa ], [ %i.fx, %bb.ab ], [ %i.dd, %.thread1985 ], [ %i.fj, %.thread1983 ]
  %.val1769 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gi = getelementptr inbounds nuw i8, ptr %.val1769, i64 %i.bq
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 96
  %.0.copyload.i1912 = load i32, ptr %i.gj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1912) #8, !srcloc !19
  %i.gk = add i32 %.0.copyload.i1912, %.11624
  %i.gl = shl i32 %i.gk, 1
  %i.gm = add i32 %i.gl, %.11631
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %.21632 = phi i32 [ %i.et, %bb.y ], [ 0, %bb.ac ]
  %.21625 = phi i32 [ 0, %bb.y ], [ %i.gm, %bb.ac ]
  %.11615 = phi i32 [ %.01614, %bb.y ], [ 0, %bb.ac ] ; 3 uses
  %.11612 = phi i32 [ 0, %bb.y ], [ %.01611, %bb.ac ] ; 2 uses
  %.not1684 = icmp eq i32 %.11615, 0              ; 6 uses
  %i.gn = select i1 %.not1684, i32 %.21625, i32 %.21632 ; 2 uses
  %i.go = select i1 %.not1684, i32 %.11612, i32 %.11615
  %i.gp = icmp eq i32 %i.gn, %i.go
  br i1 %i.gp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.val1768 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %.val1768, i64 %i.br
  %.0.copyload.i1913 = load i32, ptr %i.gq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1913) #8, !srcloc !19
  br label %.loopexit1988

bb.af:                                            ; preds = %bb.ad
  %i.gr = select i1 %.not1684, i32 2, i32 0
  %i.gs = add i32 %i.bo, -76                      ; 6 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.bn, %bb.af
  %.01645 = phi i32 [ %.11615, %bb.af ], [ %i.mu, %bb.bn ] ; 2 uses
  %.01641 = phi i1 [ true, %bb.af ], [ %.not1698, %bb.bn ] ; 13 uses
  %.21613 = phi i32 [ %.11612, %bb.af ], [ %i.mv, %bb.bn ] ; 2 uses
  %.01641.not = xor i1 %.01641, true
  %.val1847 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not1684, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gt = zext i32 %.01645 to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %.val1847, i64 %i.gt
  %.0.copyload.i1914 = load i8, ptr %i.gu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1914) #8, !srcloc !22
  %i.gv = sext i8 %.0.copyload.i1914 to i32
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.gw = zext i32 %.21613 to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %.val1847, i64 %i.gw
  %.0.copyload.i1915 = load i16, ptr %i.gx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1915) #8, !srcloc !24
  %i.gy = zext i16 %.0.copyload.i1915 to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0 = phi i32 [ %i.gv, %bb.ah ], [ %i.gy, %bb.ai ] ; 2 uses
  %i.gz = and i32 %.0, 65535                      ; 2 uses
  %trunc = trunc i32 %.0 to i16                   ; 2 uses
  switch i16 %trunc, label %bb.ak [
    i16 10, label %bb.aq
    i16 11, label %bb.bk
    i16 12, label %bb.bk
    i16 13, label %bb.av
    i16 8232, label %bb.ba
    i16 8233, label %bb.bf
  ]

bb.ak:                                            ; preds = %bb.aj
  %.not1692 = icmp eq i32 %i.gz, 47
  br i1 %.not1692, label %bb.al, label %bb.bk

bb.al:                                            ; preds = %bb.ak
  %i.ha = select i1 %.01641, i32 2, i32 1         ; 4 uses
  %.val1767 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hb = getelementptr inbounds nuw i8, ptr %.val1767, i64 %i.bq
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 108
  %.0.copyload.i1916 = load i32, ptr %i.hc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1916) #8, !srcloc !19
  %.val1766 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1766, i64 %i.br
  %.0.copyload.i1917 = load i32, ptr %i.hd, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1917) #8, !srcloc !19
  %i.he = sub i32 %.0.copyload.i1916, %.0.copyload.i1917
  %i.hf = icmp ugt i32 %i.ha, %i.he
  br i1 %i.hf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hg = add i32 %.0.copyload.i1917, %i.ha
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gs, i32 noundef %i.bt, i32 noundef %i.hg, i32 noundef 2) #8
  %.val1765 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %.val1765, i64 %i.br
  %.0.copyload.i1918 = load i32, ptr %i.hh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1918) #8, !srcloc !19
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.01617 = phi i32 [ %.0.copyload.i1918, %bb.am ], [ %.0.copyload.i1917, %bb.al ] ; 2 uses
  %5 = select i1 %.01641, i32 60247, i32 60248
  %.val1764 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.val1764, i64 %i.bu
  %.0.copyload.i1919 = load i32, ptr %i.hi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1919) #8, !srcloc !19
  %i.hj = shl i32 %.01617, 1
  %i.hk = add i32 %.0.copyload.i1919, %i.hj
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %.31633 = phi i32 [ %5, %bb.an ], [ %7, %bb.ao ] ; 2 uses
  %.31626 = phi i32 [ %i.hk, %bb.an ], [ %i.hp, %bb.ao ] ; 2 uses
  %.01620 = phi i32 [ 0, %bb.an ], [ %i.hq, %bb.ao ]
  %6 = zext i32 %.31633 to i64
  %.val1836 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %.val1836, i64 %6
  %.0.copyload.i1920 = load i8, ptr %i.hl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1920) #8, !srcloc !21
  %i.hm = zext i32 %.31626 to i64
  %.val1873 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hn = zext i8 %.0.copyload.i1920 to i16
  %i.ho = getelementptr inbounds nuw i8, ptr %.val1873, i64 %i.hm
  store i16 %i.hn, ptr %i.ho, align 1
  %i.hp = add i32 %.31626, 2
  %7 = add i32 %.31633, 1
  %i.hq = add i32 %.01620, 1                      ; 2 uses
  %.not1694 = icmp eq i32 %i.hq, %i.ha
  br i1 %.not1694, label %bb.ap, label %bb.ao

bb.ap:                                            ; preds = %bb.ao
  %i.hr = add i32 %.01617, %i.ha
  br label %bb.bn

bb.aq:                                            ; preds = %bb.aj
  %i.hs = select i1 %.01641, i32 2, i32 1         ; 4 uses
  %.val1763 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %.val1763, i64 %i.bq
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 108
  %.0.copyload.i1921 = load i32, ptr %i.hu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1921) #8, !srcloc !19
  %.val1762 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %.val1762, i64 %i.br
  %.0.copyload.i1922 = load i32, ptr %i.hv, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1922) #8, !srcloc !19
  %i.hw = sub i32 %.0.copyload.i1921, %.0.copyload.i1922
  %i.hx = icmp ugt i32 %i.hs, %i.hw
  br i1 %i.hx, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hy = add i32 %.0.copyload.i1922, %i.hs
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gs, i32 noundef %i.bt, i32 noundef %i.hy, i32 noundef 2) #8
  %.val1761 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %.val1761, i64 %i.br
  %.0.copyload.i1923 = load i32, ptr %i.hz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1923) #8, !srcloc !19
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.11618 = phi i32 [ %.0.copyload.i1923, %bb.ar ], [ %.0.copyload.i1922, %bb.aq ] ; 2 uses
  %8 = select i1 %.01641, i32 43017, i32 43018
  %.val1760 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ia = getelementptr inbounds nuw i8, ptr %.val1760, i64 %i.bu
  %.0.copyload.i1924 = load i32, ptr %i.ia, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1924) #8, !srcloc !19
  %i.ib = shl i32 %.11618, 1
  %i.ic = add i32 %.0.copyload.i1924, %i.ib
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %bb.as
  %.41634 = phi i32 [ %8, %bb.as ], [ %10, %bb.at ] ; 2 uses
  %.41627 = phi i32 [ %i.ic, %bb.as ], [ %i.ih, %bb.at ] ; 2 uses
  %.11621 = phi i32 [ 0, %bb.as ], [ %i.ii, %bb.at ]
  %9 = zext i32 %.41634 to i64
  %.val1835 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.val1835, i64 %9
  %.0.copyload.i1925 = load i8, ptr %i.id, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1925) #8, !srcloc !21
  %i.ie = zext i32 %.41627 to i64
  %.val1872 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.if = zext i8 %.0.copyload.i1925 to i16
  %i.ig = getelementptr inbounds nuw i8, ptr %.val1872, i64 %i.ie
  store i16 %i.if, ptr %i.ig, align 1
  %i.ih = add i32 %.41627, 2
  %10 = add i32 %.41634, 1
  %i.ii = add i32 %.11621, 1                      ; 2 uses
  %.not1688 = icmp eq i32 %i.ii, %i.hs
  br i1 %.not1688, label %bb.au, label %bb.at

bb.au:                                            ; preds = %bb.at
  %i.ij = add i32 %.11618, %i.hs
  br label %bb.bn

bb.av:                                            ; preds = %bb.aj
  %i.ik = select i1 %.01641, i32 2, i32 1         ; 4 uses
  %.val1759 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.il = getelementptr inbounds nuw i8, ptr %.val1759, i64 %i.bq
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 108
  %.0.copyload.i1926 = load i32, ptr %i.im, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1926) #8, !srcloc !19
  %.val1758 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.in = getelementptr inbounds nuw i8, ptr %.val1758, i64 %i.br
  %.0.copyload.i1927 = load i32, ptr %i.in, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1927) #8, !srcloc !19
  %i.io = sub i32 %.0.copyload.i1926, %.0.copyload.i1927
  %i.ip = icmp ugt i32 %i.ik, %i.io
  br i1 %i.ip, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.iq = add i32 %.0.copyload.i1927, %i.ik
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gs, i32 noundef %i.bt, i32 noundef %i.iq, i32 noundef 2) #8
  %.val1757 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ir = getelementptr inbounds nuw i8, ptr %.val1757, i64 %i.br
  %.0.copyload.i1928 = load i32, ptr %i.ir, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1928) #8, !srcloc !19
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.21619 = phi i32 [ %.0.copyload.i1928, %bb.aw ], [ %.0.copyload.i1927, %bb.av ] ; 2 uses
  %11 = select i1 %.01641, i32 39575, i32 39576
  %.val1756 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.is = getelementptr inbounds nuw i8, ptr %.val1756, i64 %i.bu
  %.0.copyload.i1929 = load i32, ptr %i.is, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1929) #8, !srcloc !19
  %i.it = shl i32 %.21619, 1
  %i.iu = add i32 %.0.copyload.i1929, %i.it
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.51635 = phi i32 [ %11, %bb.ax ], [ %13, %bb.ay ] ; 2 uses
  %.51628 = phi i32 [ %i.iu, %bb.ax ], [ %i.iz, %bb.ay ] ; 2 uses
  %.21622 = phi i32 [ 0, %bb.ax ], [ %i.ja, %bb.ay ]
  %12 = zext i32 %.51635 to i64
  %.val1834 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iv = getelementptr inbounds nuw i8, ptr %.val1834, i64 %12
  %.0.copyload.i1930 = load i8, ptr %i.iv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1930) #8, !srcloc !21
  %i.iw = zext i32 %.51628 to i64
  %.val1871 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ix = zext i8 %.0.copyload.i1930 to i16
  %i.iy = getelementptr inbounds nuw i8, ptr %.val1871, i64 %i.iw
  store i16 %i.ix, ptr %i.iy, align 1
  %i.iz = add i32 %.51628, 2
  %13 = add i32 %.51635, 1
  %i.ja = add i32 %.21622, 1                      ; 2 uses
  %.not1686 = icmp eq i32 %i.ja, %i.ik
  br i1 %.not1686, label %bb.az, label %bb.ay

bb.az:                                            ; preds = %bb.ay
  %i.jb = add i32 %.21619, %i.ik
  br label %bb.bn

bb.ba:                                            ; preds = %bb.aj
  %i.jc = select i1 %.01641, i64 59699, i64 59700 ; 5 uses
  %i.jd = select i1 %.01641, i32 6, i32 5         ; 3 uses
  %.val1755 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.je = getelementptr inbounds nuw i8, ptr %.val1755, i64 %i.bq
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 108
  %.0.copyload.i1931 = load i32, ptr %i.jf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1931) #8, !srcloc !19
  %.val1754 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jg = getelementptr inbounds nuw i8, ptr %.val1754, i64 %i.br
  %.0.copyload.i1932 = load i32, ptr %i.jg, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1932) #8, !srcloc !19
  %i.jh = sub i32 %.0.copyload.i1931, %.0.copyload.i1932
  %i.ji = icmp ult i32 %i.jh, %i.jd
  br i1 %i.ji, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jj = add i32 %.0.copyload.i1932, %i.jd
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gs, i32 noundef %i.bt, i32 noundef %i.jj, i32 noundef 2) #8
  %.val1753 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jk = getelementptr inbounds nuw i8, ptr %.val1753, i64 %i.br
  %.0.copyload.i1933 = load i32, ptr %i.jk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1933) #8, !srcloc !19
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.61629 = phi i32 [ %.0.copyload.i1933, %bb.bb ], [ %.0.copyload.i1932, %bb.ba ] ; 2 uses
  %.val1752 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jl = getelementptr inbounds nuw i8, ptr %.val1752, i64 %i.bu
  %.0.copyload.i1934 = load i32, ptr %i.jl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1934) #8, !srcloc !19
  %i.jm = shl i32 %.61629, 1
  %i.jn = add i32 %.0.copyload.i1934, %i.jm
  %.val1833 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jo = getelementptr inbounds nuw i8, ptr %.val1833, i64 %i.jc
  %.0.copyload.i1935 = load i8, ptr %i.jo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1935) #8, !srcloc !21
  %i.jp = zext i32 %i.jn to i64                   ; 6 uses
  %.val1870 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jq = zext i8 %.0.copyload.i1935 to i16
  %i.jr = getelementptr inbounds nuw i8, ptr %.val1870, i64 %i.jp
  store i16 %i.jq, ptr %i.jr, align 1
  %.val1832 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.js = getelementptr inbounds nuw i8, ptr %.val1832, i64 %i.jc
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %.0.copyload.i1936 = load i8, ptr %i.jt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1936) #8, !srcloc !21
  %.val1869 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ju = zext i8 %.0.copyload.i1936 to i16
  %i.jv = getelementptr inbounds nuw i8, ptr %.val1869, i64 %i.jp
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 2
  store i16 %i.ju, ptr %i.jw, align 1
  %.val1831 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jx = getelementptr inbounds nuw i8, ptr %.val1831, i64 %i.jc
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  %.0.copyload.i1937 = load i8, ptr %i.jy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1937) #8, !srcloc !21
  %.val1868 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jz = zext i8 %.0.copyload.i1937 to i16
  %i.ka = getelementptr inbounds nuw i8, ptr %.val1868, i64 %i.jp
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  store i16 %i.jz, ptr %i.kb, align 1
  %.val1830 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kc = getelementptr inbounds nuw i8, ptr %.val1830, i64 %i.jc
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 3
  %.0.copyload.i1938 = load i8, ptr %i.kd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1938) #8, !srcloc !21
  %.val1867 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ke = zext i8 %.0.copyload.i1938 to i16
  %i.kf = getelementptr inbounds nuw i8, ptr %.val1867, i64 %i.jp
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 6
  store i16 %i.ke, ptr %i.kg, align 1
  %.val1829 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kh = getelementptr inbounds nuw i8, ptr %.val1829, i64 %i.jc
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %.0.copyload.i1939 = load i8, ptr %i.ki, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1939) #8, !srcloc !21
  %.val1866 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kj = zext i8 %.0.copyload.i1939 to i16
  %i.kk = getelementptr inbounds nuw i8, ptr %.val1866, i64 %i.jp
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i16 %i.kj, ptr %i.kl, align 1
  br i1 %.01641, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %.val1828 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.km = getelementptr inbounds nuw i8, ptr %.val1828, i64 59704
  %.0.copyload.i1940 = load i8, ptr %i.km, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1940) #8, !srcloc !21
  %.val1865 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kn = zext i8 %.0.copyload.i1940 to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %.val1865, i64 %i.jp
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 10
  store i16 %i.kn, ptr %i.kp, align 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.kq = add i32 %.61629, %i.jd
  br label %bb.bn

bb.bf:                                            ; preds = %bb.aj
  %i.kr = select i1 %.01641, i64 59692, i64 59693 ; 5 uses
  %i.ks = select i1 %.01641, i32 6, i32 5         ; 3 uses
  %.val1751 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kt = getelementptr inbounds nuw i8, ptr %.val1751, i64 %i.bq
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 108
  %.0.copyload.i1941 = load i32, ptr %i.ku, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1941) #8, !srcloc !19
  %.val1750 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kv = getelementptr inbounds nuw i8, ptr %.val1750, i64 %i.br
  %.0.copyload.i1942 = load i32, ptr %i.kv, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1942) #8, !srcloc !19
  %i.kw = sub i32 %.0.copyload.i1941, %.0.copyload.i1942
  %i.kx = icmp ult i32 %i.kw, %i.ks
  br i1 %i.kx, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ky = add i32 %.0.copyload.i1942, %i.ks
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gs, i32 noundef %i.bt, i32 noundef %i.ky, i32 noundef 2) #8
  %.val1749 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kz = getelementptr inbounds nuw i8, ptr %.val1749, i64 %i.br
  %.0.copyload.i1943 = load i32, ptr %i.kz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1943) #8, !srcloc !19
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.7 = phi i32 [ %.0.copyload.i1943, %bb.bg ], [ %.0.copyload.i1942, %bb.bf ] ; 2 uses
  %.val1748 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.la = getelementptr inbounds nuw i8, ptr %.val1748, i64 %i.bu
  %.0.copyload.i1944 = load i32, ptr %i.la, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1944) #8, !srcloc !19
  %i.lb = shl i32 %.7, 1
  %i.lc = add i32 %.0.copyload.i1944, %i.lb
  %.val1827 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ld = getelementptr inbounds nuw i8, ptr %.val1827, i64 %i.kr
  %.0.copyload.i1945 = load i8, ptr %i.ld, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1945) #8, !srcloc !21
  %i.le = zext i32 %i.lc to i64                   ; 6 uses
  %.val1864 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lf = zext i8 %.0.copyload.i1945 to i16
  %i.lg = getelementptr inbounds nuw i8, ptr %.val1864, i64 %i.le
  store i16 %i.lf, ptr %i.lg, align 1
  %.val1826 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lh = getelementptr inbounds nuw i8, ptr %.val1826, i64 %i.kr
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 1
  %.0.copyload.i1946 = load i8, ptr %i.li, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1946) #8, !srcloc !21
  %.val1863 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lj = zext i8 %.0.copyload.i1946 to i16
  %i.lk = getelementptr inbounds nuw i8, ptr %.val1863, i64 %i.le
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 2
  store i16 %i.lj, ptr %i.ll, align 1
  %.val1825 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lm = getelementptr inbounds nuw i8, ptr %.val1825, i64 %i.kr
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 2
  %.0.copyload.i1947 = load i8, ptr %i.ln, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1947) #8, !srcloc !21
  %.val1862 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lo = zext i8 %.0.copyload.i1947 to i16
  %i.lp = getelementptr inbounds nuw i8, ptr %.val1862, i64 %i.le
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  store i16 %i.lo, ptr %i.lq, align 1
  %.val1824 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lr = getelementptr inbounds nuw i8, ptr %.val1824, i64 %i.kr
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 3
  %.0.copyload.i1948 = load i8, ptr %i.ls, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1948) #8, !srcloc !21
  %.val1861 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lt = zext i8 %.0.copyload.i1948 to i16
  %i.lu = getelementptr inbounds nuw i8, ptr %.val1861, i64 %i.le
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 6
  store i16 %i.lt, ptr %i.lv, align 1
  %.val1823 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lw = getelementptr inbounds nuw i8, ptr %.val1823, i64 %i.kr
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  %.0.copyload.i1949 = load i8, ptr %i.lx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1949) #8, !srcloc !21
  %.val1860 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ly = zext i8 %.0.copyload.i1949 to i16
  %i.lz = getelementptr inbounds nuw i8, ptr %.val1860, i64 %i.le
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store i16 %i.ly, ptr %i.ma, align 1
  br i1 %.01641, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %.val1822 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mb = getelementptr inbounds nuw i8, ptr %.val1822, i64 59697
  %.0.copyload.i1950 = load i8, ptr %i.mb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1950) #8, !srcloc !21
  %.val1859 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mc = zext i8 %.0.copyload.i1950 to i16
  %i.md = getelementptr inbounds nuw i8, ptr %.val1859, i64 %i.le
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 10
end_hunk_0
