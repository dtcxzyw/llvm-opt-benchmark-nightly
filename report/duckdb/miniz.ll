inline.NumInlined: 93
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_j:bb.a
  %.pre-phi = phi i64 [ %i.fi, %bb.bb ], [ %i.fn, %bb.bf ] ; 2 uses
  %.261392 = phi i64 [ %.231389, %bb.bb ], [ %.251391.ph, %bb.bf ]
  %.261286 = phi ptr [ %.231283, %bb.bb ], [ %.251285.ph, %bb.bf ]
  %.291197 = phi ptr [ %.261194, %bb.bb ], [ %i.fq, %bb.bf ]
  %.301106 = phi i64 [ %.271103, %bb.bb ], [ %i.fv, %bb.bf ] ; 2 uses
  %.301025 = phi i32 [ %.271022, %bb.bb ], [ %.291024.ph, %bb.bf ]
  %.30936 = phi i32 [ %.27933, %bb.bb ], [ %.29935.ph, %bb.bf ]
  %.29856 = phi i32 [ %.26853, %bb.bb ], [ %.28855.ph, %bb.bf ]
  %.30 = phi i32 [ %.27, %bb.bb ], [ %i.fw, %bb.bf ]
  %i.gb = zext nneg i8 %i.ga to i32
  %notmask = shl nsw i32 -1, %i.gb
  %i.gc = xor i32 %notmask, -1
  %i.gd = trunc i64 %.301106 to i32
  %i.ge = and i32 %i.gc, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %.pre-phi
  %i.gh = zext nneg i32 %.pre-phi1920 to i64
  %i.gi = lshr i64 %.301106, %i.gh
  %i.gj = sub i32 %.30, %.pre-phi1920
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_jE17s_min_table_sizes, i64 %.pre-phi
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3
  %i.gm = add i32 %i.ge, %i.gl
  store i32 %i.gm, ptr %i.gg, align 4, !tbaa !3
  %i.gn = add i32 %.30936, 1
  br label %bb.ba, !llvm.loop !111

bb.bg:                                            ; preds = %bb.ba
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 7048
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.go, i8 0, i64 288, i1 false)
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit2156, %bb.bg
  %.271393 = phi i64 [ %.231389, %bb.bg ], [ %.301396, %.loopexit2156 ] ; 3 uses
  %.271287 = phi ptr [ %.231283, %bb.bg ], [ %.301290, %.loopexit2156 ] ; 3 uses
  %.301198 = phi ptr [ %.261194, %bb.bg ], [ %.331201, %.loopexit2156 ] ; 3 uses
  %.311107 = phi i64 [ %.271103, %bb.bg ], [ %i.hl, %.loopexit2156 ] ; 3 uses
  %.311026 = phi i32 [ %.271022, %bb.bg ], [ %.341029, %.loopexit2156 ] ; 3 uses
  %.31937 = phi i32 [ 0, %bb.bg ], [ %i.ht, %.loopexit2156 ] ; 4 uses
  %.30857 = phi i32 [ %.26853, %bb.bg ], [ %.33860, %.loopexit2156 ] ; 3 uses
  %.31 = phi i32 [ %.27, %bb.bg ], [ %i.hm, %.loopexit2156 ] ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !3
  %i.gr = icmp ult i32 %.31937, %i.gq
  br i1 %i.gr, label %bb.bi, label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  %i.gs = icmp ult i32 %.31, 3
  br i1 %i.gs, label %.preheader2155, label %.loopexit2156

.preheader2155:                                   ; preds = %bb.bi, %bb.bk
  %.291395.ph = phi i64 [ %.271393, %bb.bi ], [ %i.ac, %bb.bk ] ; 3 uses
  %.291289.ph = phi ptr [ %.271287, %bb.bi ], [ %4, %bb.bk ] ; 3 uses
  %.321200.ph = phi ptr [ %.301198, %bb.bi ], [ %1, %bb.bk ] ; 5 uses
  %.331109.ph = phi i64 [ %.311107, %bb.bi ], [ %i.u, %bb.bk ] ; 3 uses
  %.331028.ph = phi i32 [ %.311026, %bb.bi ], [ %i.aa, %bb.bk ] ; 3 uses
  %.33939.ph = phi i32 [ %.31937, %bb.bi ], [ %i.y, %bb.bk ] ; 3 uses
  %.32859.ph = phi i32 [ %.30857, %bb.bi ], [ %i.w, %bb.bk ] ; 3 uses
  %.33.ph = phi i32 [ %.31, %bb.bi ], [ %.84.fr1986, %bb.bk ] ; 4 uses
  %.not1543 = icmp ult ptr %.321200.ph, %i.e
  br i1 %.not1543, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bm, %.preheader2155
  %.321200.lcssa = phi ptr [ %.321200.ph, %.preheader2155 ], [ %i.gu, %bb.bm ]
  %.331109.lcssa = phi i64 [ %.331109.ph, %.preheader2155 ], [ %i.gz, %bb.bm ]
  %.33.lcssa = phi i32 [ %.33.ph, %.preheader2155 ], [ %i.ha, %bb.bm ]
  %i.gt = and i32 %6, 2
  %.not1544 = icmp eq i32 %i.gt, 0
  store i32 14, ptr %0, align 8, !tbaa !87
  %spec.select1681 = select i1 %.not1544, i32 -4, i32 1
  br label %.thread1645

bb.bk:                                            ; preds = %bb.c
  br label %.preheader2155, !llvm.loop !112

bb.bl:                                            ; preds = %.preheader2155
  %i.gu = getelementptr inbounds nuw i8, ptr %.321200.ph, i64 1 ; 4 uses
  %i.gv = load i8, ptr %.321200.ph, align 1, !tbaa !7
  %i.gw = zext i8 %i.gv to i64
  %i.gx = zext nneg i32 %.33.ph to i64
  %i.gy = shl i64 %i.gw, %i.gx
  %i.gz = or i64 %i.gy, %.331109.ph               ; 2 uses
  %i.ha = add i32 %.33.ph, 8                      ; 4 uses
  %i.hb = icmp ult i32 %i.ha, 3
  br i1 %i.hb, label %bb.bm, label %.loopexit2156

bb.bm:                                            ; preds = %bb.bl
  %.not1543.1 = icmp ult ptr %i.gu, %i.e
  br i1 %.not1543.1, label %bb.bn, label %bb.bj

bb.bn:                                            ; preds = %bb.bm
  %i.hc = getelementptr inbounds nuw i8, ptr %.321200.ph, i64 2
  %i.hd = load i8, ptr %i.gu, align 1, !tbaa !7
  %i.he = zext i8 %i.hd to i64
  %i.hf = zext nneg i32 %i.ha to i64
  %i.hg = shl nuw nsw i64 %i.he, %i.hf
  %i.hh = or i64 %i.hg, %.331109.ph
  %i.hi = add nsw i32 %.33.ph, 16
  br label %.loopexit2156

.loopexit2156:                                    ; preds = %bb.bl, %bb.bn, %bb.bi
  %.301396 = phi i64 [ %.271393, %bb.bi ], [ %.291395.ph, %bb.bn ], [ %.291395.ph, %bb.bl ]
  %.301290 = phi ptr [ %.271287, %bb.bi ], [ %.291289.ph, %bb.bn ], [ %.291289.ph, %bb.bl ]
  %.331201 = phi ptr [ %.301198, %bb.bi ], [ %i.gu, %bb.bl ], [ %i.hc, %bb.bn ]
  %.341110 = phi i64 [ %.311107, %bb.bi ], [ %i.gz, %bb.bl ], [ %i.hh, %bb.bn ] ; 2 uses
  %.341029 = phi i32 [ %.311026, %bb.bi ], [ %.331028.ph, %bb.bn ], [ %.331028.ph, %bb.bl ]
  %.34940 = phi i32 [ %.31937, %bb.bi ], [ %.33939.ph, %bb.bn ], [ %.33939.ph, %bb.bl ] ; 2 uses
  %.33860 = phi i32 [ %.30857, %bb.bi ], [ %.32859.ph, %bb.bn ], [ %.32859.ph, %bb.bl ]
  %.34 = phi i32 [ %.31, %bb.bi ], [ %i.ha, %bb.bl ], [ %i.hi, %bb.bn ]
  %i.hj = trunc i64 %.341110 to i8
  %i.hk = and i8 %i.hj, 7
  %i.hl = lshr i64 %.341110, 3
  %i.hm = add i32 %.34, -3
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 7048
  %i.ho = zext i32 %.34940 to i64
  %i.hp = getelementptr inbounds nuw i8, ptr @_ZN12duckdb_minizL37s_tdefl_packed_code_size_syms_swizzleE, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !7
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hr
  store i8 %i.hk, ptr %i.hs, align 1, !tbaa !7
  %i.ht = add i32 %.34940, 1
  br label %bb.bh, !llvm.loop !113

bb.bo:                                            ; preds = %bb.bh
  store i32 19, ptr %i.gp, align 4, !tbaa !3
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !97
  br label %.loopexit1720

.loopexit1720:                                    ; preds = %bb.bo, %.lr.ph1748.preheader, %bb.dc
  %i.hu = phi i32 [ %i.uh, %bb.dc ], [ %.pre.pre, %bb.bo ], [ 1, %.lr.ph1748.preheader ] ; 3 uses
  %.321398 = phi i64 [ %.431409, %bb.dc ], [ %.271393, %bb.bo ], [ %.31369, %.lr.ph1748.preheader ] ; 4 uses
  %.321292 = phi ptr [ %.431303, %bb.dc ], [ %.271287, %bb.bo ], [ %.31263, %.lr.ph1748.preheader ] ; 4 uses
  %.351203 = phi ptr [ %.461214, %bb.dc ], [ %.301198, %bb.bo ], [ %.61174, %.lr.ph1748.preheader ] ; 4 uses
  %.361112 = phi i64 [ %.471123, %bb.dc ], [ %.311107, %bb.bo ], [ %i.cc, %.lr.ph1748.preheader ] ; 4 uses
  %.361031 = phi i32 [ %.471042, %bb.dc ], [ %.311026, %bb.bo ], [ %.71002, %.lr.ph1748.preheader ] ; 4 uses
  %.36942 = phi i32 [ %.47953, %bb.dc ], [ %.31937, %bb.bo ], [ %.8914, %.lr.ph1748.preheader ] ; 3 uses
  %.35862 = phi i32 [ %.45872, %bb.dc ], [ %.30857, %bb.bo ], [ %.7834, %.lr.ph1748.preheader ] ; 4 uses
  %.36 = phi i32 [ %.47, %bb.dc ], [ %.31, %bb.bo ], [ %i.cd, %.lr.ph1748.preheader ] ; 4 uses
  %i.hv = icmp sgt i32 %i.hu, -1
  br i1 %i.hv, label %bb.bp, label %.preheader2118

bb.bp:                                            ; preds = %.loopexit1720
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hx = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.hy = getelementptr inbounds nuw [3488 x i8], ptr %i.hw, i64 %i.hx ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 288 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 2336 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.hx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(3200) %i.hz, i8 0, i64 3200, i1 false)
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !3  ; 4 uses
  %.not1824 = icmp eq i32 %i.id, 0                ; 2 uses
  br i1 %.not1824, label %._crit_edge1759, label %.lr.ph1758.preheader

.lr.ph1758.preheader:                             ; preds = %bb.bp
  %wide.trip.count = zext i32 %i.id to i64        ; 2 uses
  %xtraiter2171 = and i64 %wide.trip.count, 3     ; 3 uses
  %i.ie = icmp ult i32 %i.id, 4
  br i1 %i.ie, label %.lr.ph1758.epil.preheader, label %.lr.ph1758.preheader.new

.lr.ph1758.preheader.new:                         ; preds = %.lr.ph1758.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph1758

.lr.ph1758:                                       ; preds = %.lr.ph1758, %.lr.ph1758.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph1758.preheader.new ], [ %indvars.iv.next.3, %.lr.ph1758 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1758.preheader.new ], [ %niter.next.3, %.lr.ph1758 ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 %indvars.iv
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !7
  %i.ih = zext i8 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ih ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !3
  %i.il = getelementptr inbounds nuw i8, ptr %i.hy, i64 %indvars.iv
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  %i.in = load i8, ptr %i.im, align 1, !tbaa !7
  %i.io = zext i8 %i.in to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.io ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !3
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !3
  %i.is = getelementptr inbounds nuw i8, ptr %i.hy, i64 %indvars.iv
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 2
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !7
  %i.iv = zext i8 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iv ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = add i32 %i.ix, 1
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !3
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %indvars.iv
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 3
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !7
  %i.jc = zext i8 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jc ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !3
  %i.jf = add i32 %i.je, 1
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1759.loopexit.unr-lcssa, label %.lr.ph1758, !llvm.loop !114

._crit_edge1759.loopexit.unr-lcssa:               ; preds = %.lr.ph1758
  %lcmp.mod2172.not = icmp eq i64 %xtraiter2171, 0
  br i1 %lcmp.mod2172.not, label %._crit_edge1759.loopexit, label %.lr.ph1758.epil.preheader

.lr.ph1758.epil.preheader:                        ; preds = %._crit_edge1759.loopexit.unr-lcssa, %.lr.ph1758.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph1758.preheader ], [ %indvars.iv.next.3, %._crit_edge1759.loopexit.unr-lcssa ]
  %lcmp.mod2173 = icmp ne i64 %xtraiter2171, 0
  tail call void @llvm.assume(i1 %lcmp.mod2173)
  br label %.lr.ph1758.epil

.lr.ph1758.epil:                                  ; preds = %.lr.ph1758.epil, %.lr.ph1758.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph1758.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph1758.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1758.epil.preheader ], [ %epil.iter.next, %.lr.ph1758.epil ]
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hy, i64 %indvars.iv.epil
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !7
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ji ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !3
  %i.jl = add i32 %i.jk, 1
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2171
  br i1 %epil.iter.cmp.not, label %._crit_edge1759.loopexit, label %.lr.ph1758.epil, !llvm.loop !115

._crit_edge1759.loopexit:                         ; preds = %.lr.ph1758.epil, %._crit_edge1759.loopexit.unr-lcssa
  %.phi.trans.insert1891 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre1892 = load i32, ptr %.phi.trans.insert1891, align 4, !tbaa !3
  %.phi.trans.insert1893 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre1894 = load i32, ptr %.phi.trans.insert1893, align 8, !tbaa !3
  %.phi.trans.insert1895 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.pre1896 = load i32, ptr %.phi.trans.insert1895, align 4, !tbaa !3
  %.phi.trans.insert1897 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre1898 = load i32, ptr %.phi.trans.insert1897, align 16, !tbaa !3
  %.phi.trans.insert1899 = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.pre1900 = load i32, ptr %.phi.trans.insert1899, align 4, !tbaa !3
  %.phi.trans.insert1901 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.pre1902 = load i32, ptr %.phi.trans.insert1901, align 8, !tbaa !3
  %.phi.trans.insert1903 = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.pre1904 = load i32, ptr %.phi.trans.insert1903, align 4, !tbaa !3
  %.phi.trans.insert1905 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.pre1906 = load i32, ptr %.phi.trans.insert1905, align 16, !tbaa !3
  %.phi.trans.insert1907 = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %.pre1908 = load i32, ptr %.phi.trans.insert1907, align 4, !tbaa !3
  %.phi.trans.insert1909 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.pre1910 = load i32, ptr %.phi.trans.insert1909, align 8, !tbaa !3
  %.phi.trans.insert1911 = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %.pre1912 = load i32, ptr %.phi.trans.insert1911, align 4, !tbaa !3
  %.phi.trans.insert1913 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.pre1914 = load i32, ptr %.phi.trans.insert1913, align 16, !tbaa !3
  %.phi.trans.insert1915 = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %.pre1916 = load i32, ptr %.phi.trans.insert1915, align 4, !tbaa !3
  %.phi.trans.insert1917 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.pre1918 = load i32, ptr %.phi.trans.insert1917, align 8, !tbaa !3
  br label %._crit_edge1759

._crit_edge1759:                                  ; preds = %._crit_edge1759.loopexit, %bb.bp
  %i.jm = phi i32 [ %.pre1918, %._crit_edge1759.loopexit ], [ 0, %bb.bp ] ; 2 uses
  %i.jn = phi i32 [ %.pre1916, %._crit_edge1759.loopexit ], [ 0, %bb.bp ] ; 2 uses
  %i.jo = phi i32 [ %.pre1914, %._crit_edge1759.loopexit ], [ 0, %bb.bp ] ; 2 uses
  %i.jp = phi i32 [ %.pre1912, %._crit_edge1759.loopexit ], [ 0, %bb.bp ] ; 2 uses
  %i.jq = phi i32 [ %.pre1910, %._crit_edge1759.loopexit ], [ 0, %bb.bp ] ; 2 uses
  %i.jr = phi i32 [ %.pre1908, %._crit_edge1759.loopexit ], [ 0, %bb.bp ] ; 2 uses
  %i.js = phi i32 [ %.pre1906, %._crit_edge1759.loopexit ], [ 0, %bb.bp ] ; 2 uses
  %i.jt = phi i32 [ %.pre1904, %._crit_edge1759.loopexit ], [ 0, %bb.bp ] ; 2 uses
  %i.ju = phi i32 [ %.pre1902, %._crit_edge1759.loopexit ], [ 0, %bb.bp ] ; 2 uses
  %i.jv = phi i32 [ %.pre1900, %._crit_edge1759.loopexit ], [ 0, %bb.bp ] ; 2 uses
  %i.jw = phi i32 [ %.pre1898, %._crit_edge1759.loopexit ], [ 0, %bb.bp ] ; 2 uses
  %i.jx = phi i32 [ %.pre1896, %._crit_edge1759.loopexit ], [ 0, %bb.bp ] ; 2 uses
  %i.jy = phi i32 [ %.pre1894, %._crit_edge1759.loopexit ], [ 0, %bb.bp ] ; 2 uses
  %i.jz = phi i32 [ %.pre1892, %._crit_edge1759.loopexit ], [ 0, %bb.bp ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.ka, align 4, !tbaa !3
  store i32 0, ptr %i.b, align 16, !tbaa !3
  %i.kb = shl i32 %i.jz, 1                        ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.kb, ptr %i.kc, align 8, !tbaa !3
  %i.kd = add i32 %i.jy, %i.jz
  %i.ke = add i32 %i.jy, %i.kb
  %i.kf = shl i32 %i.ke, 1                        ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !3
  %i.kh = add i32 %i.jx, %i.kd
  %i.ki = add i32 %i.jx, %i.kf
  %i.kj = shl i32 %i.ki, 1                        ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.kj, ptr %i.kk, align 16, !tbaa !3
  %i.kl = add i32 %i.jw, %i.kh
  %i.km = add i32 %i.jw, %i.kj
  %i.kn = shl i32 %i.km, 1                        ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !3
  %i.kp = add i32 %i.jv, %i.kl
  %i.kq = add i32 %i.jv, %i.kn
  %i.kr = shl i32 %i.kq, 1                        ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.kr, ptr %i.ks, align 8, !tbaa !3
  %i.kt = add i32 %i.ju, %i.kp
  %i.ku = add i32 %i.ju, %i.kr
  %i.kv = shl i32 %i.ku, 1                        ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.kv, ptr %i.kw, align 4, !tbaa !3
  %i.kx = add i32 %i.jt, %i.kt
  %i.ky = add i32 %i.jt, %i.kv
  %i.kz = shl i32 %i.ky, 1                        ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.kz, ptr %i.la, align 16, !tbaa !3
  %i.lb = add i32 %i.js, %i.kx
  %i.lc = add i32 %i.js, %i.kz
  %i.ld = shl i32 %i.lc, 1                        ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.ld, ptr %i.le, align 4, !tbaa !3
  %i.lf = add i32 %i.jr, %i.lb
  %i.lg = add i32 %i.jr, %i.ld
  %i.lh = shl i32 %i.lg, 1                        ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.lh, ptr %i.li, align 8, !tbaa !3
  %i.lj = add i32 %i.jq, %i.lf
  %i.lk = add i32 %i.jq, %i.lh
  %i.ll = shl i32 %i.lk, 1                        ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.ll, ptr %i.lm, align 4, !tbaa !3
  %i.ln = add i32 %i.jp, %i.lj
  %i.lo = add i32 %i.jp, %i.ll
  %i.lp = shl i32 %i.lo, 1                        ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.lp, ptr %i.lq, align 16, !tbaa !3
  %i.lr = add i32 %i.jo, %i.ln
  %i.ls = add i32 %i.jo, %i.lp
  %i.lt = shl i32 %i.ls, 1                        ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 %i.lt, ptr %i.lu, align 4, !tbaa !3
  %i.lv = add i32 %i.jn, %i.lr
  %i.lw = add i32 %i.jn, %i.lt
  %i.lx = shl i32 %i.lw, 1                        ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %i.lx, ptr %i.ly, align 8, !tbaa !3
  %i.lz = add i32 %i.jm, %i.lv
  %i.ma = add i32 %i.jm, %i.lx
  %i.mb = shl i32 %i.ma, 1                        ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %i.mb, ptr %i.mc, align 4, !tbaa !3
  %i.md = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.me = load i32, ptr %i.md, align 4, !tbaa !3  ; 2 uses
  %i.mf = add i32 %i.me, %i.lz
  %i.mg = add i32 %i.me, %i.mb
  %i.mh = shl i32 %i.mg, 1                        ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 %i.mh, ptr %i.mi, align 16, !tbaa !3
  %i.mj = icmp ne i32 %i.mh, 65536
  %i.mk = icmp ugt i32 %i.mf, 1
  %or.cond = select i1 %i.mj, i1 %i.mk, i1 false
  br i1 %or.cond, label %bb.gf, label %.preheader1707

.preheader1707:                                   ; preds = %._crit_edge1759
  br i1 %.not1824, label %._crit_edge1783, label %.lr.ph1782.preheader

.lr.ph1782.preheader:                             ; preds = %.preheader1707
  %wide.trip.count1879 = zext i32 %i.id to i64
  br label %.lr.ph1782

.lr.ph1782:                                       ; preds = %.lr.ph1782.preheader, %.loopexit1706
  %indvars.iv1876 = phi i64 [ 0, %.lr.ph1782.preheader ], [ %indvars.iv.next1877, %.loopexit1706 ] ; 4 uses
  %.013611780 = phi i32 [ -1, %.lr.ph1782.preheader ], [ %.41365, %.loopexit1706 ] ; 7 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.hy, i64 %indvars.iv1876
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !7   ; 6 uses
  %i.mn = zext i8 %i.mm to i32                    ; 5 uses
  %.not1577 = icmp eq i8 %i.mm, 0
  br i1 %.not1577, label %.loopexit1706, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph1782
  %i.mo = zext i8 %i.mm to i64
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.mo ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !3  ; 3 uses
  %i.mr = add i32 %i.mq, 1
  store i32 %i.mr, ptr %i.mp, align 4, !tbaa !3
  %xtraiter2175 = and i32 %i.mn, 3                ; 3 uses
  %i.ms = icmp ult i8 %i.mm, 4
  br i1 %i.ms, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.bq
  %unroll_iter2182 = and i32 %i.mn, 252
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.new
  %.013471766 = phi i32 [ %i.mq, %.new ], [ %i.ng, %bb.br ] ; 5 uses
  %.013491764 = phi i32 [ 0, %.new ], [ %i.nf, %bb.br ]
  %niter2183 = phi i32 [ 0, %.new ], [ %niter2183.next.3, %bb.br ]
  %i.mt = shl i32 %.013491764, 3
  %i.mu = shl i32 %.013471766, 2
  %i.mv = and i32 %i.mu, 4
  %i.mw = or disjoint i32 %i.mt, %i.mv
  %i.mx = and i32 %.013471766, 2
  %i.my = or disjoint i32 %i.mx, %i.mw
  %i.mz = lshr i32 %.013471766, 2
  %i.na = and i32 %i.mz, 1
  %i.nb = or disjoint i32 %i.na, %i.my
  %i.nc = lshr i32 %.013471766, 3                 ; 2 uses
  %i.nd = shl i32 %i.nb, 1                        ; 2 uses
  %i.ne = and i32 %i.nc, 1
  %i.nf = or disjoint i32 %i.ne, %i.nd            ; 3 uses
  %i.ng = lshr i32 %.013471766, 4                 ; 2 uses
  %niter2183.next.3 = add nuw i32 %niter2183, 4   ; 2 uses
  %niter2183.ncmp.3 = icmp eq i32 %niter2183.next.3, %unroll_iter2182
  br i1 %niter2183.ncmp.3, label %.unr-lcssa, label %bb.br, !llvm.loop !116

.unr-lcssa:                                       ; preds = %bb.br
  %lcmp.mod2177.not = icmp eq i32 %xtraiter2175, 0
  br i1 %lcmp.mod2177.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.bq
  %.013471766.epil.init = phi i32 [ %i.mq, %bb.bq ], [ %i.ng, %.unr-lcssa ]
  %.013491764.epil.init = phi i32 [ 0, %bb.bq ], [ %i.nf, %.unr-lcssa ]
  %lcmp.mod2181 = icmp ne i32 %xtraiter2175, 0
  tail call void @llvm.assume(i1 %lcmp.mod2181)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.epil.preheader
  %.013471766.epil = phi i32 [ %.013471766.epil.init, %.epil.preheader ], [ %i.nk, %bb.bs ] ; 3 uses
  %.013491764.epil = phi i32 [ %.013491764.epil.init, %.epil.preheader ], [ %i.nj, %bb.bs ]
  %epil.iter2176 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter2176.next, %bb.bs ]
  %i.nh = shl i32 %.013491764.epil, 1             ; 2 uses
  %i.ni = and i32 %.013471766.epil, 1
  %i.nj = or disjoint i32 %i.ni, %i.nh            ; 2 uses
  %i.nk = lshr i32 %.013471766.epil, 1
  %epil.iter2176.next = add i32 %epil.iter2176, 1 ; 2 uses
  %epil.iter2176.cmp.not = icmp eq i32 %epil.iter2176.next, %xtraiter2175
  br i1 %epil.iter2176.cmp.not, label %.epilog-lcssa, label %bb.bs, !llvm.loop !117

.epilog-lcssa:                                    ; preds = %bb.bs, %.unr-lcssa
  %.013471766.lcssa = phi i32 [ %i.nc, %.unr-lcssa ], [ %.013471766.epil, %bb.bs ]
  %.lcssa2091 = phi i32 [ %i.nd, %.unr-lcssa ], [ %i.nh, %bb.bs ] ; 3 uses
  %.lcssa2090 = phi i32 [ %i.nf, %.unr-lcssa ], [ %i.nj, %bb.bs ]
  %i.nl = icmp ult i8 %i.mm, 11
  br i1 %i.nl, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %.epilog-lcssa
  %i.nm = shl nuw nsw i32 %i.mn, 9
  %i.nn = trunc nuw i64 %indvars.iv1876 to i32
  %i.no = or i32 %i.nm, %i.nn
  %i.np = trunc i32 %i.no to i16
  %i.nq = icmp ult i32 %.lcssa2091, 1024
  br i1 %i.nq, label %iter.check, label %.loopexit1706

iter.check:                                       ; preds = %bb.bt
  %i.nr = shl nuw nsw i32 1, %i.mn
  %i.ns = and i32 %.013471766.lcssa, 1
  %i.nt = or disjoint i32 %.lcssa2091, %i.ns
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = zext nneg i32 %i.nr to i64
  br label %bb.bu

bb.bu:                                            ; preds = %iter.check, %bb.bu
  %indvars.iv1873 = phi i64 [ %i.nu, %iter.check ], [ %indvars.iv.next1874, %bb.bu ] ; 2 uses
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %indvars.iv1873
  store i16 %i.np, ptr %i.nw, align 2, !tbaa !118
  %indvars.iv.next1874 = add nuw nsw i64 %indvars.iv1873, %i.nv ; 2 uses
  %i.nx = icmp samesign ult i64 %indvars.iv.next1874, 1024
  br i1 %i.nx, label %bb.bu, label %.loopexit1706, !llvm.loop !120

bb.bv:                                            ; preds = %.epilog-lcssa
  %i.ny = and i32 %.lcssa2090, 1023
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.nz ; 2 uses
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !118 ; 2 uses
  %i.oc = sext i16 %i.ob to i32
  %i.od = icmp eq i16 %i.ob, 0
  br i1 %i.od, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.oe = trunc i32 %.013611780 to i16
  store i16 %i.oe, ptr %i.oa, align 2, !tbaa !118
  %i.of = add nsw i32 %.013611780, -2
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.11362 = phi i32 [ %i.of, %bb.bw ], [ %.013611780, %bb.bv ] ; 2 uses
  %.01358 = phi i32 [ %.013611780, %bb.bw ], [ %i.oc, %bb.bv ] ; 2 uses
  %i.og = lshr i32 %.lcssa2091, 9                 ; 2 uses
  %.not1826 = icmp eq i8 %i.mm, 11
  br i1 %.not1826, label %._crit_edge1773, label %.lr.ph1772

.lr.ph1772:                                       ; preds = %bb.bx, %bb.ca
  %.213511770 = phi i32 [ %i.oh, %bb.ca ], [ %i.og, %bb.bx ]
  %.013551769 = phi i32 [ %i.or, %bb.ca ], [ %i.mn, %bb.bx ]
  %.113591768 = phi i32 [ %.21360, %bb.ca ], [ %.01358, %bb.bx ]
  %.213631767 = phi i32 [ %.31364, %bb.ca ], [ %.11362, %bb.bx ] ; 4 uses
  %i.oh = lshr i32 %.213511770, 1                 ; 3 uses
  %i.oi = and i32 %i.oh, 1
  %i.oj = xor i32 %.113591768, -1
  %i.ok = add i32 %i.oi, %i.oj
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds [2 x i8], ptr %i.ia, i64 %i.ol ; 2 uses
  %i.on = load i16, ptr %i.om, align 2, !tbaa !118 ; 2 uses
  %.not1581 = icmp eq i16 %i.on, 0
  br i1 %.not1581, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph1772
  %i.oo = trunc i32 %.213631767 to i16
  store i16 %i.oo, ptr %i.om, align 2, !tbaa !118
  %i.op = add nsw i32 %.213631767, -2
  br label %bb.ca

bb.bz:                                            ; preds = %.lr.ph1772
  %i.oq = sext i16 %i.on to i32
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz
  %.31364 = phi i32 [ %.213631767, %bb.bz ], [ %i.op, %bb.by ] ; 2 uses
  %.21360 = phi i32 [ %i.oq, %bb.bz ], [ %.213631767, %bb.by ] ; 2 uses
  %i.or = add nsw i32 %.013551769, -1             ; 2 uses
  %i.os = icmp ugt i32 %i.or, 11
  br i1 %i.os, label %.lr.ph1772, label %._crit_edge1773, !llvm.loop !122

._crit_edge1773:                                  ; preds = %bb.ca, %bb.bx
  %.21363.lcssa = phi i32 [ %.11362, %bb.bx ], [ %.31364, %bb.ca ]
  %.11359.lcssa = phi i32 [ %.01358, %bb.bx ], [ %.21360, %bb.ca ]
  %.21351.lcssa = phi i32 [ %i.og, %bb.bx ], [ %i.oh, %bb.ca ]
  %i.ot = lshr i32 %.21351.lcssa, 1
  %.neg = and i32 %i.ot, 1
  %i.ou = trunc i64 %indvars.iv1876 to i16
  %i.ov = xor i32 %.11359.lcssa, -1
  %i.ow = add i32 %.neg, %i.ov
  %i.ox = sext i32 %i.ow to i64
  %i.oy = getelementptr inbounds [2 x i8], ptr %i.ia, i64 %i.ox
  store i16 %i.ou, ptr %i.oy, align 2, !tbaa !118
  br label %.loopexit1706

.loopexit1706:                                    ; preds = %bb.bu, %bb.bt, %.lr.ph1782, %._crit_edge1773
  %.41365 = phi i32 [ %.013611780, %.lr.ph1782 ], [ %.21363.lcssa, %._crit_edge1773 ], [ %.013611780, %bb.bt ], [ %.013611780, %bb.bu ]
  %indvars.iv.next1877 = add nuw nsw i64 %indvars.iv1876, 1 ; 2 uses
  %exitcond1880.not = icmp eq i64 %indvars.iv.next1877, %wide.trip.count1879
  br i1 %exitcond1880.not, label %._crit_edge1783, label %.lr.ph1782, !llvm.loop !123

._crit_edge1783:                                  ; preds = %.loopexit1706, %.preheader1707
  %i.oz = icmp eq i32 %i.hu, 2
  br i1 %i.oz, label %bb.cb, label %bb.dc

bb.cb:                                            ; preds = %._crit_edge1783, %bb.cz, %bb.cr
  %.341400 = phi i64 [ %.411407, %bb.cz ], [ %.371403, %bb.cr ], [ %.321398, %._crit_edge1783 ] ; 5 uses
  %.341294 = phi ptr [ %.411301, %bb.cz ], [ %.371297, %bb.cr ], [ %.321292, %._crit_edge1783 ] ; 5 uses
  %.371205 = phi ptr [ %.441212, %bb.cz ], [ %.401208, %bb.cr ], [ %.351203, %._crit_edge1783 ] ; 8 uses
  %.381114 = phi i64 [ %i.tg, %bb.cz ], [ %i.sd, %bb.cr ], [ %.361112, %._crit_edge1783 ] ; 5 uses
  %.381033 = phi i32 [ %.451040, %bb.cz ], [ %.411036, %bb.cr ], [ %.361031, %._crit_edge1783 ] ; 5 uses
  %.38944 = phi i32 [ %i.ty, %bb.cz ], [ %i.si, %bb.cr ], [ 0, %._crit_edge1783 ] ; 7 uses
  %.37864 = phi i32 [ %.43870, %bb.cz ], [ %.21346, %bb.cr ], [ %.35862, %._crit_edge1783 ] ; 3 uses
  %.38 = phi i32 [ %i.th, %bb.cz ], [ %i.se, %bb.cr ], [ %.36, %._crit_edge1783 ] ; 8 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !3  ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !3  ; 2 uses
  %i.pe = add i32 %i.pd, %i.pb                    ; 2 uses
  %i.pf = icmp ult i32 %.38944, %i.pe
  br i1 %i.pf, label %bb.cc, label %bb.da

bb.cc:                                            ; preds = %bb.cb
  %i.pg = icmp ult i32 %.38, 15
  br i1 %i.pg, label %bb.cd, label %bb.co

bb.cd:                                            ; preds = %bb.cc
  %i.ph = ptrtoint ptr %i.e to i64
  %i.pi = ptrtoint ptr %.371205 to i64
  %i.pj = sub i64 %i.ph, %i.pi
  %i.pk = icmp slt i64 %i.pj, 2
  br i1 %i.pk, label %bb.ce, label %bb.cn

bb.ce:                                            ; preds = %bb.cd, %bb.cm
  %.351401 = phi i64 [ %.341400, %bb.cd ], [ %.361402, %bb.cm ] ; 5 uses
  %.351295 = phi ptr [ %.341294, %bb.cd ], [ %.361296, %bb.cm ] ; 5 uses
  %.381206 = phi ptr [ %.371205, %bb.cd ], [ %i.qm, %bb.cm ] ; 5 uses
  %.391115 = phi i64 [ %.381114, %bb.cd ], [ %i.qr, %bb.cm ] ; 7 uses
  %.391034 = phi i32 [ %.381033, %bb.cd ], [ %.401035, %bb.cm ] ; 5 uses
  %.39945 = phi i32 [ %.38944, %bb.cd ], [ %.40946, %bb.cm ] ; 5 uses
  %.38865 = phi i32 [ %.37864, %bb.cd ], [ %.39866, %bb.cm ] ; 3 uses
  %.39 = phi i32 [ %.38, %bb.cd ], [ %i.qs, %bb.cm ]
  %i.pl = freeze i32 %.39                         ; 8 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 7336
  %i.pn = and i64 %.391115, 1023
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %i.pm, i64 %i.pn
  %i.pp = load i16, ptr %i.po, align 2, !tbaa !118 ; 2 uses
  %i.pq = sext i16 %i.pp to i32                   ; 2 uses
  %i.pr = icmp sgt i16 %i.pp, -1
  br i1 %i.pr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ps = lshr i32 %i.pq, 9
  %i.pt = add nsw i32 %i.ps, -1
  %or.cond1613.not = icmp ult i32 %i.pt, %i.pl
  br i1 %or.cond1613.not, label %bb.co, label %bb.cj

bb.cg:                                            ; preds = %bb.ce
  %i.pu = icmp samesign ugt i32 %i.pl, 10
  br i1 %i.pu, label %.preheader1705, label %bb.cj

.preheader1705:                                   ; preds = %bb.cg
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 9384
  br label %bb.ch

bb.ch:                                            ; preds = %.preheader1705, %bb.ch
  %.01344 = phi i32 [ %i.qf, %bb.ch ], [ %i.pq, %.preheader1705 ]
  %.01341 = phi i32 [ %i.py, %bb.ch ], [ 10, %.preheader1705 ] ; 3 uses
  %i.pw = xor i32 %.01344, -1
  %i.px = zext nneg i32 %i.pw to i64
end_hunk_0
begin_hunk_1_@_ZN12duckdb_minizL21tdefl_compress_normalEPNS_16tdefl_compressorE:bb.a
  %i.ac = load i32, ptr %i.h, align 4, !tbaa !65  ; 3 uses
  %i.ad = add i32 %i.ac, %i.ab
  %i.ae = icmp ugt i32 %i.ad, 1
  br i1 %i.ae, label %bb.d, label %.critedge4

.critedge.thread:                                 ; preds = %select.unfold
  %.pre = load i32, ptr %i.g, align 8, !tbaa !64  ; 4 uses
  %i.af = load i32, ptr %i.h, align 4, !tbaa !65  ; 5 uses
  %i.ag = add i32 %i.af, %.pre
  %i.ah = icmp ugt i32 %i.ag, 1
  br i1 %i.ah, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.thread
  %umax = tail call i32 @llvm.umax.i32(i32 %.pre, i32 258) ; 3 uses
  br label %bb.g

bb.d:                                             ; preds = %.critedge.thread, %.critedge
  %i.ai = phi i32 [ %i.af, %.critedge.thread ], [ %i.ac, %.critedge ] ; 2 uses
  %.promoted380 = phi i32 [ %.pre, %.critedge.thread ], [ %i.ab, %.critedge ] ; 3 uses
  %i.aj = load i32, ptr %i.i, align 4, !tbaa !165
  %i.ak = add i32 %i.aj, %.promoted380            ; 3 uses
  %i.al = add i32 %i.ak, -2                       ; 2 uses
  %i.am = and i32 %i.al, 32767
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !7
  %i.aq = add i32 %i.ak, 32767
  %i.ar = and i32 %i.aq, 32767
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !7
  %i.av = sub i32 258, %.promoted380
  %i.aw = zext i32 %i.av to i64
  %i.ax = tail call i64 @llvm.umin.i64(i64 %.0178, i64 %i.aw) ; 4 uses
  %i.ay = trunc nuw i64 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %.0169, i64 %i.ax ; 2 uses
  %i.ba = sub i64 %.0178, %i.ax                   ; 2 uses
  %i.bb = add i32 %.promoted380, %i.ay            ; 3 uses
  store i32 %i.bb, ptr %i.g, align 8, !tbaa !64
  %.not199282 = icmp samesign eq i64 %i.ax, 0
  br i1 %.not199282, label %.critedge4, label %.lr.ph287.preheader

.lr.ph287.preheader:                              ; preds = %bb.d
  %i.bc = zext i8 %i.ap to i32
  %i.bd = shl nuw nsw i32 %i.bc, 5
  %i.be = zext i8 %i.au to i32
  %i.bf = xor i32 %i.bd, %i.be
  br label %.lr.ph287

.lr.ph287:                                        ; preds = %.lr.ph287.preheader, %bb.f
  %.0176286.in = phi i32 [ %i.bw, %bb.f ], [ %i.ak, %.lr.ph287.preheader ]
  %.1170285 = phi ptr [ %i.bg, %bb.f ], [ %.0169, %.lr.ph287.preheader ] ; 2 uses
  %.0174284 = phi i32 [ %i.bo, %bb.f ], [ %i.bf, %.lr.ph287.preheader ]
  %.0175283 = phi i32 [ %i.bx, %bb.f ], [ %i.al, %.lr.ph287.preheader ] ; 3 uses
  %.0176286 = and i32 %.0176286.in, 32767         ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.1170285, i64 1 ; 2 uses
  %i.bh = load i8, ptr %.1170285, align 1, !tbaa !7 ; 3 uses
  %i.bi = zext nneg i32 %.0176286 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bi ; 2 uses
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !7
  %i.bk = icmp samesign ult i32 %.0176286, 257
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph287
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32768
  store i8 %i.bh, ptr %i.bl, align 1, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph287
  %i.bm = shl nuw nsw i32 %.0174284, 5
  %i.bn = zext i8 %i.bh to i32
  %.masked212 = and i32 %i.bm, 32736
  %i.bo = xor i32 %.masked212, %i.bn              ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bp ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !118
  %i.bs = and i32 %.0175283, 32767
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.bt
  store i16 %i.br, ptr %i.bu, align 2, !tbaa !118
  %i.bv = trunc i32 %.0175283 to i16
  store i16 %i.bv, ptr %i.bq, align 2, !tbaa !118
  %i.bw = add nuw nsw i32 %.0176286, 1
  %i.bx = add i32 %.0175283, 1
  %.not199 = icmp eq ptr %i.bg, %i.az
  br i1 %.not199, label %.critedge4, label %.lr.ph287, !llvm.loop !166

bb.g:                                             ; preds = %.lr.ph, %bb.l
  %i.by = phi i32 [ %.pre, %.lr.ph ], [ %i.ck, %bb.l ] ; 3 uses
  %.2171280 = phi ptr [ %.0169, %.lr.ph ], [ %i.ca, %bb.l ] ; 3 uses
  %.1179279 = phi i64 [ %.0178, %.lr.ph ], [ %i.cf, %bb.l ] ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %umax
  br i1 %exitcond.not, label %.critedge4.thread, label %bb.h

.critedge4.thread:                                ; preds = %bb.g
  %i.bz = sub i32 32768, %umax
  %.386 = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 %i.af) ; 2 uses
  store i32 %.386, ptr %i.h, align 4, !tbaa !65
  br label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %.2171280, i64 1 ; 2 uses
  %i.cb = load i8, ptr %.2171280, align 1, !tbaa !7 ; 3 uses
  %i.cc = load i32, ptr %i.i, align 4, !tbaa !165
  %i.cd = add i32 %i.cc, %i.by                    ; 3 uses
  %i.ce = and i32 %i.cd, 32767                    ; 2 uses
  %i.cf = add i64 %.1179279, -1                   ; 2 uses
  %i.cg = zext nneg i32 %i.ce to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cg ; 2 uses
  store i8 %i.cb, ptr %i.ch, align 1, !tbaa !7
  %i.ci = icmp samesign ult i32 %i.ce, 257
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 32768
  store i8 %i.cb, ptr %i.cj, align 1, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ck = add nuw nsw i32 %i.by, 1                ; 4 uses
  store i32 %i.ck, ptr %i.g, align 8, !tbaa !64
  %i.cl = add i32 %i.ck, %i.af
  %i.cm = icmp ugt i32 %i.cl, 2
  br i1 %i.cm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cn = add i32 %i.cd, -2                       ; 2 uses
  %i.co = and i32 %i.cn, 32767
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !7
  %i.cs = zext i8 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, 10
  %i.cu = add i32 %i.cd, 32767
  %i.cv = and i32 %i.cu, 32767
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !7
  %i.cz = zext i8 %i.cy to i64
  %i.da = shl nuw nsw i64 %i.cz, 5
  %i.db = zext i8 %i.cb to i64
  %.masked198 = and i64 %i.ct, 31744
  %.masked = xor i64 %i.da, %i.db
  %i.dc = xor i64 %.masked, %.masked198
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.dc ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !118
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.cp
  store i16 %i.de, ptr %i.df, align 2, !tbaa !118
  %i.dg = trunc i32 %i.cn to i16
  store i16 %i.dg, ptr %i.dd, align 2, !tbaa !118
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not197 = icmp eq i64 %i.cf, 0
  br i1 %.not197, label %.critedge4, label %bb.g, !llvm.loop !167

.critedge4:                                       ; preds = %bb.l, %bb.f, %.critedge, %bb.d
  %i.dh = phi i32 [ %i.ac, %.critedge ], [ %i.ai, %bb.d ], [ %i.ai, %bb.f ], [ %i.af, %bb.l ]
  %i.di = phi i32 [ %i.ab, %.critedge ], [ %i.bb, %bb.d ], [ %i.bb, %bb.f ], [ %i.ck, %bb.l ] ; 3 uses
  %.2180 = phi i64 [ 0, %.critedge ], [ %i.ba, %bb.d ], [ %i.ba, %bb.f ], [ 0, %bb.l ] ; 2 uses
  %.3172 = phi ptr [ %.0169, %.critedge ], [ %.0169, %bb.d ], [ %i.az, %bb.f ], [ %i.ca, %bb.l ] ; 2 uses
  %i.dj = sub i32 32768, %i.di
  %. = tail call i32 @llvm.umin.i32(i32 %i.dj, i32 %i.dh) ; 2 uses
  store i32 %., ptr %i.h, align 4, !tbaa !65
  %i.dk = icmp ult i32 %i.di, 258
  %or.cond265 = select i1 %.not195, i1 %i.dk, i1 false
  br i1 %or.cond265, label %.critedge2, label %bb.m

bb.m:                                             ; preds = %.critedge4.thread, %.critedge4
  %.390 = phi i32 [ %.386, %.critedge4.thread ], [ %., %.critedge4 ] ; 4 uses
  %.3172389 = phi ptr [ %.2171280, %.critedge4.thread ], [ %.3172, %.critedge4 ] ; 2 uses
  %.2180388 = phi i64 [ %.1179279, %.critedge4.thread ], [ %.2180, %.critedge4 ] ; 2 uses
  %i.dl = phi i32 [ %umax, %.critedge4.thread ], [ %i.di, %.critedge4 ] ; 8 uses
  %i.dm = load i32, ptr %i.m, align 8, !tbaa !41  ; 6 uses
  %.not201 = icmp eq i32 %i.dm, 0                 ; 3 uses
  %spec.select = select i1 %.not201, i32 2, i32 %i.dm ; 8 uses
  %i.dn = load i32, ptr %i.i, align 4, !tbaa !165 ; 3 uses
  %i.do = and i32 %i.dn, 32767                    ; 9 uses
  %i.dp = load i32, ptr %i.n, align 8, !tbaa !28  ; 4 uses
  %i.dq = and i32 %i.dp, 589824
  %.not202 = icmp eq i32 %i.dq, 0
  br i1 %.not202, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not203 = icmp ne i32 %.390, 0
  %i.dr = and i32 %i.dp, 524288
  %.not204 = icmp eq i32 %i.dr, 0
  %or.cond213 = and i1 %.not203, %.not204
  br i1 %or.cond213, label %bb.o, label %_ZN12duckdb_minizL16tdefl_find_matchEPNS_16tdefl_compressorEjjjPjS2_.exit

bb.o:                                             ; preds = %bb.n
  %i.ds = add i32 %i.dn, 32767
  %i.dt = and i32 %i.ds, 32767
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !7
  %.not333 = icmp eq i32 %i.dl, 0
  br i1 %.not333, label %._crit_edge, label %.lr.ph290.preheader

.lr.ph290.preheader:                              ; preds = %bb.o
  %1 = zext nneg i32 %i.do to i64
  %wide.trip.count = zext i32 %i.dl to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.j, i64 %1
  br label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph290.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph290.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !7
  %.not205 = icmp eq i8 %i.dy, %i.dw
  br i1 %.not205, label %bb.p, label %._crit_edge.loopexit.split.loop.exit

bb.p:                                             ; preds = %.lr.ph290
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond347.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond347.not, label %._crit_edge, label %.lr.ph290, !llvm.loop !168

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph290
  %2 = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %._crit_edge.loopexit.split.loop.exit, %bb.o
  %storemerge.lcssa = phi i32 [ 0, %bb.o ], [ %2, %._crit_edge.loopexit.split.loop.exit ], [ %i.dl, %bb.p ] ; 2 uses
  %i.dz = icmp ugt i32 %storemerge.lcssa, 2       ; 2 uses
  %spec.select266 = zext i1 %i.dz to i32
  %spec.select267 = select i1 %i.dz, i32 %storemerge.lcssa, i32 0
  br label %_ZN12duckdb_minizL16tdefl_find_matchEPNS_16tdefl_compressorEjjjPjS2_.exit

bb.q:                                             ; preds = %bb.m
  %i.ea = zext nneg i32 %i.do to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ea
  %i.ec = add i32 %i.do, %spec.select             ; 2 uses
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !7
  %i.eg = add i32 %i.ec, -1
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !7
  %.not.i = icmp ugt i32 %i.dl, %spec.select
  br i1 %.not.i, label %.preheader, label %_ZN12duckdb_minizL16tdefl_find_matchEPNS_16tdefl_compressorEjjjPjS2_.exit

.preheader:                                       ; preds = %bb.q
  %i.ek = icmp ugt i32 %spec.select, 31
  %i.el = zext i1 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3
  %i.eo = add i32 %i.en, -1                       ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %_ZN12duckdb_minizL16tdefl_find_matchEPNS_16tdefl_compressorEjjjPjS2_.exit, label %.lr.ph296.lr.ph

.lr.ph296.lr.ph:                                  ; preds = %.preheader
  %i.eq = trunc i32 %i.dn to i16                  ; 3 uses
  br label %.lr.ph296

.lr.ph296:                                        ; preds = %.lr.ph296.lr.ph, %bb.al
  %i.er = phi i32 [ %i.eo, %.lr.ph296.lr.ph ], [ %i.ho, %bb.al ]
  %.0.i328 = phi i8 [ %i.ej, %.lr.ph296.lr.ph ], [ %.1.i, %bb.al ] ; 4 uses
  %.082.i327 = phi i8 [ %i.ef, %.lr.ph296.lr.ph ], [ %.183.i, %bb.al ] ; 4 uses
  %.089.i326 = phi i32 [ %i.do, %.lr.ph296.lr.ph ], [ %.2.i, %bb.al ]
  %.091.i325 = phi i32 [ %spec.select, %.lr.ph296.lr.ph ], [ %.192.i, %bb.al ] ; 5 uses
  %.2324 = phi i32 [ %spec.select, %.lr.ph296.lr.ph ], [ %.3239, %bb.al ] ; 9 uses
  %.2243323 = phi i32 [ 0, %.lr.ph296.lr.ph ], [ %.3244, %bb.al ] ; 9 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph296, %bb.ad
  %i.es = phi i32 [ %i.er, %.lr.ph296 ], [ %i.gv, %bb.ad ] ; 2 uses
  %.190.i294 = phi i32 [ %.089.i326, %.lr.ph296 ], [ %i.gk, %bb.ad ]
  %i.et = zext nneg i32 %.190.i294 to i64
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.et
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !118 ; 3 uses
  %.not103.i = icmp eq i16 %i.ev, 0
  br i1 %.not103.i, label %_ZN12duckdb_minizL16tdefl_find_matchEPNS_16tdefl_compressorEjjjPjS2_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ew = sub i16 %i.eq, %i.ev
  %i.ex = zext i16 %i.ew to i32                   ; 2 uses
  %i.ey = icmp ult i32 %.390, %i.ex
  br i1 %i.ey, label %_ZN12duckdb_minizL16tdefl_find_matchEPNS_16tdefl_compressorEjjjPjS2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ez = and i16 %i.ev, 32767                    ; 2 uses
  %i.fa = zext nneg i16 %i.ez to i32              ; 2 uses
  %i.fb = add i32 %.091.i325, %i.fa               ; 2 uses
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !7
  %i.ff = icmp eq i8 %i.fe, %.082.i327
  br i1 %i.ff, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fg = add i32 %i.fb, -1
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !7
  %i.fk = icmp eq i8 %i.fj, %.0.i328
  br i1 %i.fk, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fl = zext nneg i16 %i.ez to i64
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !118 ; 3 uses
  %.not104.i = icmp eq i16 %i.fn, 0
  br i1 %.not104.i, label %_ZN12duckdb_minizL16tdefl_find_matchEPNS_16tdefl_compressorEjjjPjS2_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fo = sub i16 %i.eq, %i.fn
  %i.fp = zext i16 %i.fo to i32                   ; 2 uses
  %i.fq = icmp ult i32 %.390, %i.fp
  br i1 %i.fq, label %_ZN12duckdb_minizL16tdefl_find_matchEPNS_16tdefl_compressorEjjjPjS2_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fr = and i16 %i.fn, 32767                    ; 2 uses
  %i.fs = zext nneg i16 %i.fr to i32              ; 2 uses
  %i.ft = add i32 %.091.i325, %i.fs               ; 2 uses
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !7
  %i.fx = icmp eq i8 %i.fw, %.082.i327
  br i1 %i.fx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fy = add i32 %i.ft, -1
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !7
  %i.gc = icmp eq i8 %i.gb, %.0.i328
  br i1 %i.gc, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gd = zext nneg i16 %i.fr to i64
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.gd
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !118 ; 3 uses
  %.not105.i = icmp eq i16 %i.gf, 0
  br i1 %.not105.i, label %_ZN12duckdb_minizL16tdefl_find_matchEPNS_16tdefl_compressorEjjjPjS2_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gg = sub i16 %i.eq, %i.gf
  %i.gh = zext i16 %i.gg to i32                   ; 2 uses
  %i.gi = icmp ult i32 %.390, %i.gh
  br i1 %i.gi, label %_ZN12duckdb_minizL16tdefl_find_matchEPNS_16tdefl_compressorEjjjPjS2_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gj = and i16 %i.gf, 32767
  %i.gk = zext nneg i16 %i.gj to i32              ; 3 uses
  %i.gl = add i32 %.091.i325, %i.gk               ; 2 uses
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !7
  %i.gp = icmp eq i8 %i.go, %.082.i327
  br i1 %i.gp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gq = add i32 %i.gl, -1
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !7
  %i.gu = icmp eq i8 %i.gt, %.0.i328
  br i1 %i.gu, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gv = add i32 %i.es, -1                       ; 2 uses
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %_ZN12duckdb_minizL16tdefl_find_matchEPNS_16tdefl_compressorEjjjPjS2_.exit, label %bb.r, !llvm.loop !169

bb.ae:                                            ; preds = %bb.ac, %bb.y, %bb.u
  %.093.i = phi i32 [ %i.ex, %bb.u ], [ %i.fp, %bb.y ], [ %i.gh, %bb.ac ] ; 3 uses
  %.2.i = phi i32 [ %i.fa, %bb.u ], [ %i.fs, %bb.y ], [ %i.gk, %bb.ac ] ; 2 uses
  %.not106.i = icmp eq i32 %.093.i, 0
  br i1 %.not106.i, label %_ZN12duckdb_minizL16tdefl_find_matchEPNS_16tdefl_compressorEjjjPjS2_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gx = zext nneg i32 %.2.i to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gx
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ah
  %.084.i322 = phi ptr [ %i.gy, %bb.af ], [ %i.hb, %bb.ah ] ; 2 uses
  %.085.i321 = phi ptr [ %i.eb, %bb.af ], [ %i.hc, %bb.ah ] ; 2 uses
  %.088.i320 = phi i32 [ 0, %bb.af ], [ %i.hd, %bb.ah ] ; 2 uses
  %i.gz = load i8, ptr %.085.i321, align 1, !tbaa !7
  %i.ha = load i8, ptr %.084.i322, align 1, !tbaa !7
  %.not107.i = icmp eq i8 %i.gz, %i.ha
  br i1 %.not107.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hb = getelementptr inbounds nuw i8, ptr %.084.i322, i64 1
  %i.hc = getelementptr inbounds nuw i8, ptr %.085.i321, i64 1
  %i.hd = add nuw i32 %.088.i320, 1               ; 2 uses
  %exitcond348.not = icmp eq i32 %i.hd, %i.dl
  br i1 %exitcond348.not, label %bb.ai, label %bb.ag, !llvm.loop !170

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.088.i.lcssa = phi i32 [ %.088.i320, %bb.ag ], [ %i.dl, %bb.ah ] ; 5 uses
  %i.he = icmp ugt i32 %.088.i.lcssa, %.091.i325
  br i1 %i.he, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.hf = icmp eq i32 %.088.i.lcssa, %i.dl
  br i1 %i.hf, label %_ZN12duckdb_minizL16tdefl_find_matchEPNS_16tdefl_compressorEjjjPjS2_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hg = add i32 %.088.i.lcssa, %i.do            ; 2 uses
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !7
  %i.hk = add i32 %i.hg, -1
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !7
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.3244 = phi i32 [ %.093.i, %bb.ak ], [ %.2243323, %bb.ai ] ; 2 uses
  %.3239 = phi i32 [ %.088.i.lcssa, %bb.ak ], [ %.2324, %bb.ai ] ; 2 uses
  %.192.i = phi i32 [ %.088.i.lcssa, %bb.ak ], [ %.091.i325, %bb.ai ]
  %.183.i = phi i8 [ %i.hj, %bb.ak ], [ %.082.i327, %bb.ai ]
  %.1.i = phi i8 [ %i.hn, %bb.ak ], [ %.0.i328, %bb.ai ]
  %i.ho = add i32 %i.es, -1                       ; 2 uses
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %_ZN12duckdb_minizL16tdefl_find_matchEPNS_16tdefl_compressorEjjjPjS2_.exit, label %.lr.ph296, !llvm.loop !171

_ZN12duckdb_minizL16tdefl_find_matchEPNS_16tdefl_compressorEjjjPjS2_.exit: ; preds = %bb.aj, %bb.ae, %bb.al, %bb.ad, %bb.r, %bb.s, %bb.v, %bb.w, %bb.z, %bb.aa, %.preheader, %._crit_edge, %bb.q, %bb.n
end_hunk_1
begin_hunk_2_@_ZN12duckdb_miniz10mz_zip_endEPNS_14mz_zip_archiveE:bb.a

_ZN12duckdb_miniz17mz_zip_reader_endEPNS_14mz_zip_archiveE.exit: ; preds = %bb.o, %bb.l, %bb.g, %bb.f, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.g ], [ 0, %bb.a ], [ 0, %bb.f ], [ 1, %bb.o ], [ 0, %bb.l ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN12duckdb_minizL20tdefl_compress_blockEPNS_16tdefl_compressorEi(ptr nofree noundef nonnull %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #13 {
bb.a:
  %i.a = alloca [320 x i8], align 16              ; 5 uses
  %i.b = alloca [320 x i8], align 16              ; 29 uses
  %i.c = alloca [33 x i32], align 16              ; 49 uses
  %i.d = alloca [33 x i32], align 16              ; 18 uses
  %i.e = alloca [33 x i32], align 16              ; 21 uses
  %i.f = alloca [33 x i32], align 16              ; 18 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 36682      ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.g, i8 8, i64 144, i1 false), !tbaa !7
  %scevgep.i = getelementptr i8, ptr %0, i64 36826
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %scevgep.i, i8 9, i64 112, i1 false), !tbaa !7
  %scevgep73.i = getelementptr i8, ptr %0, i64 36938
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %scevgep73.i, i8 7, i64 24, i1 false), !tbaa !7
  %scevgep74.i = getelementptr i8, ptr %0, i64 36962
  store i64 578721382704613384, ptr %scevgep74.i, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36970 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.h, i8 5, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.e, i8 0, i64 132, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.i.3, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !7
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !7
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !7
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !3
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 288
  br i1 %exitcond.not.i.i.3, label %.loopexit.loopexit.i.i, label %bb.c, !llvm.loop !322

.loopexit.loopexit.i.i:                           ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.aj, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = shl i32 %i.al, 1                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.am, ptr %i.an, align 8, !tbaa !3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !3
  %i.aq = add nsw i32 %i.ap, %i.am
  %i.ar = shl i32 %i.aq, 1                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = add nsw i32 %i.au, %i.ar
  %i.aw = shl i32 %i.av, 1                        ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.aw, ptr %i.ax, align 16, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.az = load i32, ptr %i.ay, align 16, !tbaa !3
  %i.ba = add nsw i32 %i.az, %i.aw
  %i.bb = shl i32 %i.ba, 1                        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = add nsw i32 %i.be, %i.bb
  %i.bg = shl i32 %i.bf, 1                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !3
  %i.bk = add nsw i32 %i.bj, %i.bg
  %i.bl = shl i32 %i.bk, 1                        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = add nsw i32 %i.bo, %i.bl
  %i.bq = shl i32 %i.bp, 1                        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.bq, ptr %i.br, align 16, !tbaa !3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bt = load i32, ptr %i.bs, align 16, !tbaa !3
  %i.bu = add nsw i32 %i.bt, %i.bq
  %i.bv = shl i32 %i.bu, 1                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = add nsw i32 %i.by, %i.bv
  %i.ca = shl i32 %i.bz, 1                        ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !3
  %i.ce = add nsw i32 %i.cd, %i.ca
  %i.cf = shl i32 %i.ce, 1                        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = add nsw i32 %i.ci, %i.cf
  %i.ck = shl i32 %i.cj, 1                        ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %i.ck, ptr %i.cl, align 16, !tbaa !3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cn = load i32, ptr %i.cm, align 16, !tbaa !3
  %i.co = add nsw i32 %i.cn, %i.ck
  %i.cp = shl i32 %i.co, 1                        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = add nsw i32 %i.cs, %i.cp
  %i.cu = shl i32 %i.ct, 1                        ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !3
  %i.cy = add nsw i32 %i.cx, %i.cu
  %i.cz = shl i32 %i.cy, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !3
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 34954
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.loopexit.loopexit.i.i
  %indvars.iv147.i.i = phi i64 [ 0, %.loopexit.loopexit.i.i ], [ %indvars.iv.next148.i.i, %bb.h ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv147.i.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !7   ; 4 uses
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.df = zext i8 %i.dd to i32                    ; 2 uses
  %i.dg = zext i8 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3  ; 3 uses
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !3
  %xtraiter = and i32 %i.df, 3                    ; 3 uses
  %i.dk = icmp ult i8 %i.dd, 4
  br i1 %i.dk, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i32 %i.df, 252
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %.0115.i.i = phi i32 [ %i.di, %.new ], [ %i.dy, %bb.f ] ; 5 uses
  %.067114.i.i = phi i32 [ 0, %.new ], [ %i.dx, %bb.f ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.f ]
  %i.dl = shl i32 %.067114.i.i, 3
  %i.dm = shl i32 %.0115.i.i, 2
  %i.dn = and i32 %i.dm, 4
  %i.do = or disjoint i32 %i.dl, %i.dn
  %i.dp = and i32 %.0115.i.i, 2
  %i.dq = or disjoint i32 %i.do, %i.dp
  %i.dr = lshr i32 %.0115.i.i, 2
  %i.ds = and i32 %i.dr, 1
  %i.dt = or disjoint i32 %i.dq, %i.ds
  %i.du = lshr i32 %.0115.i.i, 3
  %i.dv = shl i32 %i.dt, 1
  %i.dw = and i32 %i.du, 1
  %i.dx = or disjoint i32 %i.dv, %i.dw            ; 3 uses
  %i.dy = lshr i32 %.0115.i.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.f, !llvm.loop !323

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.e
  %.0115.i.i.epil.init = phi i32 [ %i.di, %bb.e ], [ %i.dy, %.unr-lcssa ]
  %.067114.i.i.epil.init = phi i32 [ 0, %bb.e ], [ %i.dx, %.unr-lcssa ]
  %lcmp.mod320 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod320)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.0115.i.i.epil = phi i32 [ %.0115.i.i.epil.init, %.epil.preheader ], [ %i.ec, %bb.g ] ; 2 uses
  %.067114.i.i.epil = phi i32 [ %.067114.i.i.epil.init, %.epil.preheader ], [ %i.eb, %bb.g ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.dz = shl i32 %.067114.i.i.epil, 1
  %i.ea = and i32 %.0115.i.i.epil, 1
  %i.eb = or disjoint i32 %i.dz, %i.ea            ; 2 uses
  %i.ec = lshr i32 %.0115.i.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.g, !llvm.loop !324

.epilog-lcssa:                                    ; preds = %bb.g, %.unr-lcssa
  %.lcssa318 = phi i32 [ %i.dx, %.unr-lcssa ], [ %i.eb, %bb.g ]
  %i.ed = trunc i32 %.lcssa318 to i16
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %indvars.iv147.i.i
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !118
  br label %bb.h

bb.h:                                             ; preds = %.epilog-lcssa, %bb.d
  %indvars.iv.next148.i.i = add nuw nsw i64 %indvars.iv147.i.i, 1 ; 2 uses
  %exitcond151.not.i.i = icmp eq i64 %indvars.iv.next148.i.i, 288
  br i1 %exitcond151.not.i.i, label %_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii.exit.i, label %bb.d, !llvm.loop !325

_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.c, i8 0, i64 132, i1 false)
  %i.ef = load i8, ptr %i.h, align 1, !tbaa !7
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !3
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 36971
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !7
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !3
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 36972
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !7
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !3
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 36973
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !7
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !3
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 36974
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !7
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !3
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 36975
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !7
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !3
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 36976
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !7
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = add nsw i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !3
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 36977
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !7
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !3
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 36978
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !7
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3
  %i.gf = add nsw i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !3
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 36979
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !7
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !3
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 36980
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !7
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !3
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !3
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 36981
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !7
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !3
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 36982
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !7
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3
  %i.hd = add nsw i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !3
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 36983
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !7
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !3
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 36984
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !7
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hm ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3
  %i.hp = add nsw i32 %i.ho, 1
  store i32 %i.hp, ptr %i.hn, align 4, !tbaa !3
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 36985
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !7
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hs ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !3
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !3
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 36986
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !7
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hy ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !3
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !3
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 36987
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !7
  %i.ie = zext i8 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ie ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !3
  %i.ih = add nsw i32 %i.ig, 1
  store i32 %i.ih, ptr %i.if, align 4, !tbaa !3
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 36988
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !7
  %i.ik = zext i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ik ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  %i.in = add nsw i32 %i.im, 1
  store i32 %i.in, ptr %i.il, align 4, !tbaa !3
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 36989
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !7
  %i.iq = zext i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iq ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %i.ir, align 4, !tbaa !3
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 36990
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !7
  %i.iw = zext i8 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iw ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !3
  %i.iz = add nsw i32 %i.iy, 1
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !3
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 36991
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !7
  %i.jc = zext i8 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jc ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !3
  %i.jf = add nsw i32 %i.je, 1
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !3
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 36992
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !7
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ji ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !3
  %i.jl = add nsw i32 %i.jk, 1
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !3
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 36993
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !7
  %i.jo = zext i8 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jo ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !3
  %i.jr = add nsw i32 %i.jq, 1
  store i32 %i.jr, ptr %i.jp, align 4, !tbaa !3
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 36994
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !7
  %i.ju = zext i8 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ju ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !3
  %i.jx = add nsw i32 %i.jw, 1
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !3
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 36995
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !7
  %i.ka = zext i8 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ka ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !3
  %i.kd = add nsw i32 %i.kc, 1
  store i32 %i.kd, ptr %i.kb, align 4, !tbaa !3
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 36996
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !7
  %i.kg = zext i8 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4, !tbaa !3
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 36997
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !7
  %i.km = zext i8 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.km ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !3
  %i.kp = add nsw i32 %i.ko, 1
  store i32 %i.kp, ptr %i.kn, align 4, !tbaa !3
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 36998
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !7
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ks ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !3
  %i.kv = add nsw i32 %i.ku, 1
  store i32 %i.kv, ptr %i.kt, align 4, !tbaa !3
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 36999
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !7
  %i.ky = zext i8 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !3
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.kz, align 4, !tbaa !3
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 37000
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !7
  %i.le = zext i8 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.le ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !3
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !3
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 37001
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !7
  %i.lk = zext i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lk ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !3
  %i.ln = add nsw i32 %i.lm, 1
  store i32 %i.ln, ptr %i.ll, align 4, !tbaa !3
  %i.lo = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.lo, align 4, !tbaa !3
  %i.lp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !3
  %i.lr = shl i32 %i.lq, 1                        ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.lr, ptr %i.ls, align 8, !tbaa !3
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !3
  %i.lv = add nsw i32 %i.lu, %i.lr
  %i.lw = shl i32 %i.lv, 1                        ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !3
  %i.ly = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !3
  %i.ma = add nsw i32 %i.lz, %i.lw
  %i.mb = shl i32 %i.ma, 1                        ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.mb, ptr %i.mc, align 16, !tbaa !3
  %i.md = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.me = load i32, ptr %i.md, align 16, !tbaa !3
  %i.mf = add nsw i32 %i.me, %i.mb
  %i.mg = shl i32 %i.mf, 1                        ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !3
  %i.mi = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !3
  %i.mk = add nsw i32 %i.mj, %i.mg
  %i.ml = shl i32 %i.mk, 1                        ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.ml, ptr %i.mm, align 8, !tbaa !3
  %i.mn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !3
  %i.mp = add nsw i32 %i.mo, %i.ml
  %i.mq = shl i32 %i.mp, 1                        ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !3
  %i.ms = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !3
  %i.mu = add nsw i32 %i.mt, %i.mq
  %i.mv = shl i32 %i.mu, 1                        ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.mv, ptr %i.mw, align 16, !tbaa !3
  %i.mx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.my = load i32, ptr %i.mx, align 16, !tbaa !3
  %i.mz = add nsw i32 %i.my, %i.mv
  %i.na = shl i32 %i.mz, 1                        ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !3
  %i.nc = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !3
  %i.ne = add nsw i32 %i.nd, %i.na
  %i.nf = shl i32 %i.ne, 1                        ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.nf, ptr %i.ng, align 8, !tbaa !3
  %i.nh = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !3
  %i.nj = add nsw i32 %i.ni, %i.nf
  %i.nk = shl i32 %i.nj, 1                        ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.nk, ptr %i.nl, align 4, !tbaa !3
  %i.nm = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !3
  %i.no = add nsw i32 %i.nn, %i.nk
  %i.np = shl i32 %i.no, 1                        ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.np, ptr %i.nq, align 16, !tbaa !3
  %i.nr = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ns = load i32, ptr %i.nr, align 16, !tbaa !3
  %i.nt = add nsw i32 %i.ns, %i.np
  %i.nu = shl i32 %i.nt, 1                        ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 %i.nu, ptr %i.nv, align 4, !tbaa !3
  %i.nw = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !3
  %i.ny = add nsw i32 %i.nx, %i.nu
  %i.nz = shl i32 %i.ny, 1                        ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.nz, ptr %i.oa, align 8, !tbaa !3
  %i.ob = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !3
  %i.od = add nsw i32 %i.oc, %i.nz
  %i.oe = shl i32 %i.od, 1
  %i.of = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.oe, ptr %i.of, align 4, !tbaa !3
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 35530
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii.exit.i
  %indvars.iv147.i41.i = phi i64 [ 0, %_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii.exit.i ], [ %indvars.iv.next148.i45.i, %bb.m ] ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv147.i41.i
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !7   ; 4 uses
  %i.oj = icmp eq i8 %i.oi, 0
  br i1 %i.oj, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ok = zext i8 %i.oi to i32                    ; 2 uses
  %i.ol = zext i8 %i.oi to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ol ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !3  ; 3 uses
  %i.oo = add i32 %i.on, 1
  store i32 %i.oo, ptr %i.om, align 4, !tbaa !3
  %xtraiter324 = and i32 %i.ok, 3                 ; 3 uses
  %i.op = icmp ult i8 %i.oi, 4
  br i1 %i.op, label %.epil.preheader323, label %.new321

.new321:                                          ; preds = %bb.j
  %unroll_iter330 = and i32 %i.ok, 252
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.new321
  %.0115.i42.i = phi i32 [ %i.on, %.new321 ], [ %i.pd, %bb.k ] ; 5 uses
  %.067114.i43.i = phi i32 [ 0, %.new321 ], [ %i.pc, %bb.k ]
  %niter331 = phi i32 [ 0, %.new321 ], [ %niter331.next.3, %bb.k ]
  %i.oq = shl i32 %.067114.i43.i, 3
  %i.or = shl i32 %.0115.i42.i, 2
  %i.os = and i32 %i.or, 4
  %i.ot = or disjoint i32 %i.oq, %i.os
  %i.ou = and i32 %.0115.i42.i, 2
  %i.ov = or disjoint i32 %i.ot, %i.ou
  %i.ow = lshr i32 %.0115.i42.i, 2
  %i.ox = and i32 %i.ow, 1
  %i.oy = or disjoint i32 %i.ov, %i.ox
  %i.oz = lshr i32 %.0115.i42.i, 3
  %i.pa = shl i32 %i.oy, 1
  %i.pb = and i32 %i.oz, 1
  %i.pc = or disjoint i32 %i.pa, %i.pb            ; 3 uses
  %i.pd = lshr i32 %.0115.i42.i, 4                ; 2 uses
  %niter331.next.3 = add nuw i32 %niter331, 4     ; 2 uses
  %niter331.ncmp.3.not = icmp eq i32 %niter331.next.3, %unroll_iter330
  br i1 %niter331.ncmp.3.not, label %.unr-lcssa322, label %bb.k, !llvm.loop !323

.unr-lcssa322:                                    ; preds = %bb.k
  %lcmp.mod326.not = icmp eq i32 %xtraiter324, 0
  br i1 %lcmp.mod326.not, label %.epilog-lcssa327, label %.epil.preheader323

.epil.preheader323:                               ; preds = %.unr-lcssa322, %bb.j
  %.0115.i42.i.epil.init = phi i32 [ %i.on, %bb.j ], [ %i.pd, %.unr-lcssa322 ]
  %.067114.i43.i.epil.init = phi i32 [ 0, %bb.j ], [ %i.pc, %.unr-lcssa322 ]
  %lcmp.mod329 = icmp ne i32 %xtraiter324, 0
  tail call void @llvm.assume(i1 %lcmp.mod329)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader323
  %.0115.i42.i.epil = phi i32 [ %.0115.i42.i.epil.init, %.epil.preheader323 ], [ %i.ph, %bb.l ] ; 2 uses
  %.067114.i43.i.epil = phi i32 [ %.067114.i43.i.epil.init, %.epil.preheader323 ], [ %i.pg, %bb.l ]
  %epil.iter325 = phi i32 [ 0, %.epil.preheader323 ], [ %epil.iter325.next, %bb.l ]
  %i.pe = shl i32 %.067114.i43.i.epil, 1
  %i.pf = and i32 %.0115.i42.i.epil, 1
  %i.pg = or disjoint i32 %i.pe, %i.pf            ; 2 uses
  %i.ph = lshr i32 %.0115.i42.i.epil, 1
  %epil.iter325.next = add i32 %epil.iter325, 1   ; 2 uses
  %epil.iter325.cmp.not = icmp eq i32 %epil.iter325.next, %xtraiter324
  br i1 %epil.iter325.cmp.not, label %.epilog-lcssa327, label %bb.l, !llvm.loop !326

.epilog-lcssa327:                                 ; preds = %bb.l, %.unr-lcssa322
  %.lcssa317 = phi i32 [ %i.pc, %.unr-lcssa322 ], [ %i.pg, %bb.l ]
  %i.pi = trunc i32 %.lcssa317 to i16
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %indvars.iv147.i41.i
  store i16 %i.pi, ptr %i.pj, align 2, !tbaa !118
  br label %bb.m

bb.m:                                             ; preds = %.epilog-lcssa327, %bb.i
  %indvars.iv.next148.i45.i = add nuw nsw i64 %indvars.iv147.i41.i, 1 ; 2 uses
  %exitcond151.not.i46.i = icmp eq i64 %indvars.iv.next148.i45.i, 32
  br i1 %exitcond151.not.i46.i, label %_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii.exit47.i, label %bb.i, !llvm.loop !325

_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii.exit47.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !175 ; 2 uses
  %i.pm = shl nuw i32 1, %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !176
  %i.pp = or i32 %i.po, %i.pm                     ; 3 uses
  store i32 %i.pp, ptr %i.pn, align 8, !tbaa !176
  %i.pq = add i32 %i.pl, 2                        ; 4 uses
  store i32 %i.pq, ptr %i.pk, align 4, !tbaa !175
  %i.pr = icmp ugt i32 %i.pq, 7
  br i1 %i.pr, label %.lr.ph64.i, label %_ZN12duckdb_minizL24tdefl_start_static_blockEPNS_16tdefl_compressorE.exit

.lr.ph64.i:                                       ; preds = %_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii.exit47.i
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph64.i
  %i.pu = phi i32 [ %i.pq, %.lr.ph64.i ], [ %i.qe, %bb.p ]
  %i.pv = phi i32 [ %i.pp, %.lr.ph64.i ], [ %i.qd, %bb.p ] ; 2 uses
  %i.pw = load ptr, ptr %i.ps, align 8, !tbaa !37 ; 3 uses
  %i.px = load ptr, ptr %i.pt, align 8, !tbaa !38
  %i.py = icmp ult ptr %i.pw, %i.px
  br i1 %i.py, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.pz = trunc i32 %i.pv to i8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pw, i64 1
  store ptr %i.qa, ptr %i.ps, align 8, !tbaa !37
  store i8 %i.pz, ptr %i.pw, align 1, !tbaa !7
  %.pre.i = load i32, ptr %i.pn, align 8, !tbaa !176
  %.pre75.i = load i32, ptr %i.pk, align 4, !tbaa !175
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.qb = phi i32 [ %.pre75.i, %bb.o ], [ %i.pu, %bb.n ]
  %i.qc = phi i32 [ %.pre.i, %bb.o ], [ %i.pv, %bb.n ]
  %i.qd = lshr i32 %i.qc, 8                       ; 3 uses
  store i32 %i.qd, ptr %i.pn, align 8, !tbaa !176
  %i.qe = add i32 %i.qb, -8                       ; 4 uses
  store i32 %i.qe, ptr %i.pk, align 4, !tbaa !175
  %i.qf = icmp ugt i32 %i.qe, 7
  br i1 %i.qf, label %bb.n, label %_ZN12duckdb_minizL24tdefl_start_static_blockEPNS_16tdefl_compressorE.exit, !llvm.loop !327

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 33738
  store i16 1, ptr %i.qg, align 2, !tbaa !118
  tail call fastcc void @_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 288, i32 noundef 15, i32 noundef 0)
  tail call fastcc void @_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 32, i32 noundef 15, i32 noundef 0)
  %i.qh = getelementptr i8, ptr %0, i64 36967
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !7
  %.not.i = icmp eq i8 %i.qi, 0
  br i1 %.not.i, label %bb.r, label %bb.at

bb.r:                                             ; preds = %bb.q
  %i.qj = getelementptr i8, ptr %0, i64 36966
  %i.qk = load i8, ptr %i.qj, align 2, !tbaa !7
  %.not.1.i = icmp eq i8 %i.qk, 0
  br i1 %.not.1.i, label %bb.s, label %bb.at

bb.s:                                             ; preds = %bb.r
  %i.ql = getelementptr i8, ptr %0, i64 36965
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !7
  %.not.2.i = icmp eq i8 %i.qm, 0
  br i1 %.not.2.i, label %bb.t, label %bb.at

bb.t:                                             ; preds = %bb.s
  %i.qn = getelementptr i8, ptr %0, i64 36964
  %i.qo = load i8, ptr %i.qn, align 2, !tbaa !7
  %.not.3.i = icmp eq i8 %i.qo, 0
  br i1 %.not.3.i, label %bb.u, label %bb.at

bb.u:                                             ; preds = %bb.t
  %i.qp = getelementptr i8, ptr %0, i64 36963
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !7
  %.not.4.i = icmp eq i8 %i.qq, 0
  br i1 %.not.4.i, label %bb.v, label %bb.at

bb.v:                                             ; preds = %bb.u
  %i.qr = getelementptr i8, ptr %0, i64 36962
  %i.qs = load i8, ptr %i.qr, align 2, !tbaa !7
  %.not.5.i = icmp eq i8 %i.qs, 0
  br i1 %.not.5.i, label %bb.w, label %bb.at

bb.w:                                             ; preds = %bb.v
  %i.qt = getelementptr i8, ptr %0, i64 36961
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !7
  %.not.6.i = icmp eq i8 %i.qu, 0
  br i1 %.not.6.i, label %bb.x, label %bb.at

bb.x:                                             ; preds = %bb.w
  %i.qv = getelementptr i8, ptr %0, i64 36960
  %i.qw = load i8, ptr %i.qv, align 2, !tbaa !7
  %.not.7.i = icmp eq i8 %i.qw, 0
  br i1 %.not.7.i, label %bb.y, label %bb.at

bb.y:                                             ; preds = %bb.x
  %i.qx = getelementptr i8, ptr %0, i64 36959
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !7
  %.not.8.i = icmp eq i8 %i.qy, 0
  br i1 %.not.8.i, label %bb.z, label %bb.at

bb.z:                                             ; preds = %bb.y
  %i.qz = getelementptr i8, ptr %0, i64 36958
  %i.ra = load i8, ptr %i.qz, align 2, !tbaa !7
  %.not.9.i = icmp eq i8 %i.ra, 0
  br i1 %.not.9.i, label %bb.aa, label %bb.at

bb.aa:                                            ; preds = %bb.z
  %i.rb = getelementptr i8, ptr %0, i64 36957
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !7
  %.not.10.i = icmp eq i8 %i.rc, 0
  br i1 %.not.10.i, label %bb.ab, label %bb.at

bb.ab:                                            ; preds = %bb.aa
  %i.rd = getelementptr i8, ptr %0, i64 36956
  %i.re = load i8, ptr %i.rd, align 2, !tbaa !7
  %.not.11.i = icmp eq i8 %i.re, 0
  br i1 %.not.11.i, label %bb.ac, label %bb.at

bb.ac:                                            ; preds = %bb.ab
  %i.rf = getelementptr i8, ptr %0, i64 36955
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !7
  %.not.12.i = icmp eq i8 %i.rg, 0
  br i1 %.not.12.i, label %bb.ad, label %bb.at

bb.ad:                                            ; preds = %bb.ac
  %i.rh = getelementptr i8, ptr %0, i64 36954
  %i.ri = load i8, ptr %i.rh, align 2, !tbaa !7
  %.not.13.i = icmp eq i8 %i.ri, 0
  br i1 %.not.13.i, label %bb.ae, label %bb.at

bb.ae:                                            ; preds = %bb.ad
  %i.rj = getelementptr i8, ptr %0, i64 36953
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !7
  %.not.14.i = icmp eq i8 %i.rk, 0
  br i1 %.not.14.i, label %bb.af, label %bb.at

bb.af:                                            ; preds = %bb.ae
  %i.rl = getelementptr i8, ptr %0, i64 36952
  %i.rm = load i8, ptr %i.rl, align 2, !tbaa !7
  %.not.15.i = icmp eq i8 %i.rm, 0
  br i1 %.not.15.i, label %bb.ag, label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.rn = getelementptr i8, ptr %0, i64 36951
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !7
  %.not.16.i = icmp eq i8 %i.ro, 0
  br i1 %.not.16.i, label %bb.ah, label %bb.at

bb.ah:                                            ; preds = %bb.ag
  %i.rp = getelementptr i8, ptr %0, i64 36950
  %i.rq = load i8, ptr %i.rp, align 2, !tbaa !7
  %.not.17.i = icmp eq i8 %i.rq, 0
  br i1 %.not.17.i, label %bb.ai, label %bb.at

bb.ai:                                            ; preds = %bb.ah
end_hunk_2
begin_hunk_3_@_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii:bb.a
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !7
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !7
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !322

.new:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 33226
  %i.aj = zext nneg i32 %1 to i64                 ; 3 uses
  %i.ak = getelementptr inbounds nuw [576 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %wide.trip.count126 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter190 = and i64 %wide.trip.count126, 1
  %unroll_iter195 = and i64 %wide.trip.count126, 510
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %indvars.iv123 = phi i64 [ 0, %.new ], [ %indvars.iv.next124.1, %bb.g ] ; 4 uses
  %.068102 = phi i32 [ 0, %.new ], [ %.1.1, %bb.g ] ; 3 uses
  %niter196 = phi i64 [ 0, %.new ], [ %niter196.next.1, %bb.g ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv123
  %i.am = load i16, ptr %i.al, align 2, !tbaa !118 ; 2 uses
  %.not79 = icmp eq i16 %i.am, 0
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = sext i32 %.068102 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %5, i64 %i.an ; 2 uses
  store i16 %i.am, ptr %i.ao, align 4, !tbaa !352
  %i.ap = trunc i64 %indvars.iv123 to i16
  %i.aq = add nsw i32 %.068102, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i16 %i.ap, ptr %i.ar, align 2, !tbaa !354
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.aq, %bb.d ], [ %.068102, %bb.c ] ; 3 uses
  %indvars.iv.next124 = or disjoint i64 %indvars.iv123, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next124
  %i.at = load i16, ptr %i.as, align 2, !tbaa !118 ; 2 uses
  %.not79.1 = icmp eq i16 %i.at, 0
  br i1 %.not79.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = sext i32 %.1 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %5, i64 %i.au ; 2 uses
  store i16 %i.at, ptr %i.av, align 4, !tbaa !352
  %i.aw = trunc i64 %indvars.iv.next124 to i16
  %i.ax = add nsw i32 %.1, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.aw, ptr %i.ay, align 2, !tbaa !354
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.ax, %bb.f ], [ %.1, %bb.e ] ; 5 uses
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 3 uses
  %niter196.next.1 = add nuw nsw i64 %niter196, 2 ; 2 uses
  %niter196.ncmp.1 = icmp eq i64 %niter196.next.1, %unroll_iter195
  br i1 %niter196.ncmp.1, label %.unr-lcssa, label %bb.c, !llvm.loop !355

.unr-lcssa:                                       ; preds = %bb.g
  %lcmp.mod192.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod192.not, label %.epilog-lcssa, label %.epil.preheader189

.epil.preheader189:                               ; preds = %.unr-lcssa
  %lcmp.mod194 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next124.1
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !118 ; 2 uses
  %.not79.epil = icmp eq i16 %i.ba, 0
  br i1 %.not79.epil, label %.epilog-lcssa, label %bb.h

bb.h:                                             ; preds = %.epil.preheader189
  %i.bb = sext i32 %.1.1 to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bb ; 2 uses
  store i16 %i.ba, ptr %i.bc, align 4, !tbaa !352
  %i.bd = trunc i64 %indvars.iv.next124.1 to i16
  %i.be = add nsw i32 %.1.1, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 %i.bd, ptr %i.bf, align 2, !tbaa !354
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader189, %bb.h, %.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %.unr-lcssa ], [ %i.be, %bb.h ], [ %.1.1, %.epil.preheader189 ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %.not.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not.i, label %.critedge.preheader.split55.i.preheader, label %.lr.ph.preheader.i

.critedge.preheader.split55.i.preheader:          ; preds = %.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  br label %bb.j

.lr.ph.preheader.i:                               ; preds = %.epilog-lcssa
  %wide.trip.count.i = zext i32 %.1.lcssa to i64  ; 7 uses
  %i.bg = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter197 = and i64 %wide.trip.count.i, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter201 = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.preheader45.i.unr-lcssa:                         ; preds = %.lr.ph.i
  %lcmp.mod199.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod199.not, label %.preheader45.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader45.i.unr-lcssa ]
  %lcmp.mod200 = trunc i32 %.1.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod200)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i.epil.init
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !352
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !3
  %i.bq = lshr i32 %i.bk, 8
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1024 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !3
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 16
  %i.bw = freeze i32 %.pre.i
  %i.bx = icmp eq i32 %.1.lcssa, %i.bw
  %spec.select.i = select i1 %i.bx, i64 1, i64 2
  %xtraiter203 = and i64 %wide.trip.count.i, 1
  %i.by = icmp eq i64 %i.bg, 0
  %unroll_iter207 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod205.not = icmp eq i64 %xtraiter203, 0
  %lcmp.mod206 = trunc i32 %.1.lcssa to i1
  br label %.critedge.preheader.split55.us.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %niter202 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter202.next.1, %.lr.ph.i ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.ca = load i16, ptr %i.bz, align 8, !tbaa !352
  %i.cb = zext i16 %i.ca to i32                   ; 2 uses
  %i.cc = and i32 %i.cb, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !3
  %i.ch = lshr i32 %i.cb, 8
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1024 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !3
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i16, ptr %i.co, align 4, !tbaa !352
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = and i32 %i.cq, 255
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !3
  %i.cw = lshr i32 %i.cq, 8
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1024 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter202.next.1 = add nuw i64 %niter202, 2     ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %.preheader45.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !356

.critedge.preheader.split55.us.i:                 ; preds = %._crit_edge.us.i, %.preheader45.i
  %indvars.iv70.i = phi i64 [ 0, %.preheader45.i ], [ %indvars.iv.next71.i, %._crit_edge.us.i ] ; 2 uses
  %.03854.us.i = phi i32 [ 0, %.preheader45.i ], [ %i.fe, %._crit_edge.us.i ] ; 4 uses
  %.03953.us.i = phi ptr [ %6, %.preheader45.i ], [ %.04052.us.i, %._crit_edge.us.i ] ; 47 uses
  %.04052.us.i = phi ptr [ %5, %.preheader45.i ], [ %.03953.us.i, %._crit_edge.us.i ] ; 4 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv70.i, 10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.critedge.preheader.split55.us.i
  %indvars.iv61.i = phi i64 [ 0, %.critedge.preheader.split55.us.i ], [ %indvars.iv.next62.i.3, %bb.i ] ; 6 uses
  %.03748.us.i = phi i32 [ 0, %.critedge.preheader.split55.us.i ], [ %i.ds, %bb.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv61.i
  store i32 %.03748.us.i, ptr %i.dd, align 16, !tbaa !3
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv61.i
  %i.df = load i32, ptr %i.de, align 16, !tbaa !3
  %i.dg = add i32 %i.df, %.03748.us.i             ; 2 uses
  %indvars.iv.next62.i = or disjoint i64 %indvars.iv61.i, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !3
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = add i32 %i.dj, %i.dg                    ; 2 uses
  %indvars.iv.next62.i.1 = or disjoint i64 %indvars.iv61.i, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i.1
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !3
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i.1
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !3
  %i.do = add i32 %i.dn, %i.dk                    ; 2 uses
  %indvars.iv.next62.i.2 = or disjoint i64 %indvars.iv61.i, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i.2
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !3
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i.2
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = add i32 %i.dr, %i.do
  %indvars.iv.next62.i.3 = add nuw nsw i64 %indvars.iv61.i, 4 ; 2 uses
  %exitcond64.not.i.3 = icmp eq i64 %indvars.iv.next62.i.3, 256
  br i1 %exitcond64.not.i.3, label %.preheader.us.i.preheader, label %bb.i, !llvm.loop !357

.preheader.us.i.preheader:                        ; preds = %bb.i
  br i1 %i.by, label %.preheader.us.i.epil.preheader, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %.preheader.us.i
  %indvars.iv65.i = phi i64 [ %indvars.iv.next66.i.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %niter208 = phi i64 [ %niter208.next.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv65.i ; 2 uses
  %i.du = load i16, ptr %i.dt, align 8, !tbaa !352
  %i.dv = zext i16 %i.du to i32
  %i.dw = lshr i32 %i.dv, %.03854.us.i
  %i.dx = and i32 %i.dw, 255
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3  ; 2 uses
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !3
  %i.ec = zext i32 %i.ea to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.ec
  %i.ee = load i32, ptr %i.dt, align 8
  store i32 %i.ee, ptr %i.ed, align 4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv65.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 4, !tbaa !352
  %i.ei = zext i16 %i.eh to i32
  %i.ej = lshr i32 %i.ei, %.03854.us.i
  %i.ek = and i32 %i.ej, 255
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3  ; 2 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !3
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.ep
  %i.er = load i32, ptr %i.eg, align 4
  store i32 %i.er, ptr %i.eq, align 4
  %indvars.iv.next66.i.1 = add nuw nsw i64 %indvars.iv65.i, 2 ; 2 uses
  %niter208.next.1 = add nuw i64 %niter208, 2     ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i, !llvm.loop !358

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i
  br i1 %lcmp.mod205.not, label %._crit_edge.us.i, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.preheader
  %indvars.iv65.i.epil.init = phi i64 [ 0, %.preheader.us.i.preheader ], [ %indvars.iv.next66.i.1, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv65.i.epil.init ; 2 uses
  %i.et = load i16, ptr %i.es, align 4, !tbaa !352
  %i.eu = zext i16 %i.et to i32
  %i.ev = lshr i32 %i.eu, %.03854.us.i
  %i.ew = and i32 %i.ev, 255
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3  ; 2 uses
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !3
  %i.fb = zext i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.fb
  %i.fd = load i32, ptr %i.es, align 4
  store i32 %i.fd, ptr %i.fc, align 4
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %i.fe = add nuw nsw i32 %.03854.us.i, 8
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %spec.select.i
  br i1 %exitcond74.not.i, label %_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit, label %.critedge.preheader.split55.us.i, !llvm.loop !359

_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN12duckdb_minizL35tdefl_huffman_enforce_max_code_sizeEPiii.exit

bb.j:                                             ; preds = %bb.j, %.critedge.preheader.split55.i.preheader
  %indvars.iv75.i = phi i64 [ 0, %.critedge.preheader.split55.i.preheader ], [ %indvars.iv.next76.i.3, %bb.j ] ; 6 uses
  %.03748.i = phi i32 [ 0, %.critedge.preheader.split55.i.preheader ], [ %i.fu, %bb.j ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv75.i
  store i32 %.03748.i, ptr %i.ff, align 16, !tbaa !3
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv75.i
  %i.fh = load i32, ptr %i.fg, align 16, !tbaa !3
  %i.fi = add i32 %i.fh, %.03748.i                ; 2 uses
  %indvars.iv.next76.i = or disjoint i64 %indvars.iv75.i, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !3
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = add i32 %i.fl, %i.fi                    ; 2 uses
  %indvars.iv.next76.i.1 = or disjoint i64 %indvars.iv75.i, 2 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i.1
  store i32 %i.fm, ptr %i.fn, align 8, !tbaa !3
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i.1
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !3
  %i.fq = add i32 %i.fp, %i.fm                    ; 2 uses
  %indvars.iv.next76.i.2 = or disjoint i64 %indvars.iv75.i, 3 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i.2
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !3
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i.2
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3
  %i.fu = add i32 %i.ft, %i.fq
  %indvars.iv.next76.i.3 = add nuw nsw i64 %indvars.iv75.i, 4 ; 2 uses
  %exitcond78.not.i.3 = icmp eq i64 %indvars.iv.next76.i.3, 256
  br i1 %exitcond78.not.i.3, label %_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit.thread, label %bb.j, !llvm.loop !357

_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit: ; preds = %._crit_edge.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  switch i32 %.1.lcssa, label %bb.k [
    i32 0, label %_ZN12duckdb_minizL35tdefl_huffman_enforce_max_code_sizeEPiii.exit
    i32 1, label %_ZN12duckdb_minizL34tdefl_calculate_minimum_redundancyEPNS_14tdefl_sym_freqEi.exit.thread166
  ]

_ZN12duckdb_minizL34tdefl_calculate_minimum_redundancyEPNS_14tdefl_sym_freqEi.exit.thread166: ; preds = %_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit
  store i16 1, ptr %.03953.us.i, align 2, !tbaa !352
  br label %.lr.ph.preheader

bb.k:                                             ; preds = %_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %.03953.us.i, i64 4
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !352
  %i.fx = load i16, ptr %.03953.us.i, align 2, !tbaa !352
  %i.fy = add i16 %i.fx, %i.fw
  store i16 %i.fy, ptr %.03953.us.i, align 2, !tbaa !352
  %i.fz = add i32 %.1.lcssa, -1                   ; 2 uses
  %i.ga = icmp sgt i32 %.1.lcssa, 2
  br i1 %i.ga, label %.lr.ph.preheader.i82, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.k
  %i.gb = add nsw i32 %.1.lcssa, -2               ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gc
  store i16 0, ptr %i.gd, align 2, !tbaa !352
  br label %.preheader.i81.preheader

.lr.ph.preheader.i82:                             ; preds = %bb.k
  %wide.trip.count.i83 = zext nneg i32 %i.fz to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.s, %.lr.ph.preheader.i82
  %indvars.iv.i85 = phi i64 [ 1, %.lr.ph.preheader.i82 ], [ %indvars.iv.next.i87, %bb.s ] ; 8 uses
  %.07992.i = phi i32 [ 2, %.lr.ph.preheader.i82 ], [ %.281.i, %bb.s ] ; 4 uses
  %.08291.i = phi i32 [ 0, %.lr.ph.preheader.i82 ], [ %.284.i, %bb.s ] ; 3 uses
  %.not.i86 = icmp slt i32 %.07992.i, %.1.lcssa
  %i.ge = sext i32 %.08291.i to i64               ; 2 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.ge ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !352 ; 2 uses
  br i1 %.not.i86, label %bb.l, label %.lr.ph._crit_edge.i

bb.l:                                             ; preds = %.lr.ph.i84
  %i.gh = sext i32 %.07992.i to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !352 ; 2 uses
  %i.gk = icmp ult i16 %i.gg, %i.gj
  br i1 %i.gk, label %.lr.ph._crit_edge.i, label %bb.m

.lr.ph._crit_edge.i:                              ; preds = %bb.l, %.lr.ph.i84
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.gg, ptr %i.gl, align 2, !tbaa !352
  %i.gm = trunc i64 %indvars.iv.i85 to i16
  %i.gn = add nsw i32 %.08291.i, 1                ; 2 uses
  store i16 %i.gm, ptr %i.gf, align 2, !tbaa !352
  %.pre = sext i32 %i.gn to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.go = add nsw i32 %.07992.i, 1
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.gj, ptr %i.gp, align 2, !tbaa !352
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph._crit_edge.i
  %.pre-phi = phi i64 [ %i.ge, %bb.m ], [ %.pre, %.lr.ph._crit_edge.i ] ; 4 uses
  %.183.i = phi i32 [ %.08291.i, %bb.m ], [ %i.gn, %.lr.ph._crit_edge.i ] ; 2 uses
  %.180.i = phi i32 [ %i.go, %bb.m ], [ %.07992.i, %.lr.ph._crit_edge.i ] ; 5 uses
  %.not88.i = icmp slt i32 %.180.i, %.1.lcssa
  br i1 %.not88.i, label %bb.o, label %._crit_edge127.i

._crit_edge127.i:                                 ; preds = %bb.n
  %.phi.trans.insert129.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %.pre130.i = load i16, ptr %.phi.trans.insert129.i, align 2, !tbaa !352
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.gq = icmp sgt i64 %indvars.iv.i85, %.pre-phi
  br i1 %i.gq, label %bb.p, label %._crit_edge123.i

._crit_edge123.i:                                 ; preds = %bb.o
  %.phi.trans.insert124.i = sext i32 %.180.i to i64
  %.phi.trans.insert125.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.phi.trans.insert124.i
  %.pre126.i = load i16, ptr %.phi.trans.insert125.i, align 2, !tbaa !352
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gr = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !352 ; 2 uses
  %i.gt = sext i32 %.180.i to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !352 ; 2 uses
  %i.gw = icmp ult i16 %i.gs, %i.gv
  br i1 %i.gw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %._crit_edge127.i
  %i.gx = phi i16 [ %.pre130.i, %._crit_edge127.i ], [ %i.gs, %bb.p ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !352
  %i.ha = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.hb = add i16 %i.gz, %i.gx
  store i16 %i.hb, ptr %i.gy, align 2, !tbaa !352
  %i.hc = trunc i64 %indvars.iv.i85 to i16
  %i.hd = add nsw i32 %.183.i, 1
  store i16 %i.hc, ptr %i.ha, align 2, !tbaa !352
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %._crit_edge123.i
  %i.he = phi i16 [ %.pre126.i, %._crit_edge123.i ], [ %i.gv, %bb.p ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !352
  %i.hh = add nsw i32 %.180.i, 1
  %i.hi = add i16 %i.hg, %i.he
  store i16 %i.hi, ptr %i.hf, align 2, !tbaa !352
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.284.i = phi i32 [ %i.hd, %bb.q ], [ %.183.i, %bb.r ]
  %.281.i = phi i32 [ %.180.i, %bb.q ], [ %i.hh, %bb.r ]
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond.not.i88, label %._crit_edge.i, label %.lr.ph.i84, !llvm.loop !360

._crit_edge.i:                                    ; preds = %bb.s
  %i.hj = add nsw i32 %.1.lcssa, -2               ; 3 uses
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hk
  store i16 0, ptr %i.hl, align 2, !tbaa !352
  %i.hm = add nsw i32 %.1.lcssa, -3               ; 2 uses
  %i.hn = zext i32 %i.hm to i64                   ; 3 uses
  %i.ho = add nuw nsw i64 %i.hn, 1
  %xtraiter209 = and i64 %i.ho, 3                 ; 2 uses
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
end_hunk_3
begin_hunk_4_@_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii:bb.a
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.i.prol ], [ 0, %._crit_edge.i ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i.prol ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !352
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !352
  %i.hu = add i16 %i.ht, 1
  store i16 %i.hu, ptr %i.hp, align 2, !tbaa !352
  %indvars.iv.next116.i.prol = add nsw i64 %indvars.iv115.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter209
  br i1 %prol.iter.cmp.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol, !llvm.loop !361

.lr.ph96.i.prol.loopexit:                         ; preds = %.lr.ph96.i.prol, %._crit_edge.i
  %indvars.iv115.i.unr = phi i64 [ %i.hn, %._crit_edge.i ], [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ]
  %i.hv = icmp ult i32 %i.hm, 3
  br i1 %i.hv, label %.preheader.i81.preheader, label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i.3, %.lr.ph96.i ], [ %indvars.iv115.i.unr, %.lr.ph96.i.prol.loopexit ] ; 5 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !352
  %i.hy = zext i16 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !352
  %i.ib = add i16 %i.ia, 1
  store i16 %i.ib, ptr %i.hw, align 2, !tbaa !352
  %i.ic = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
  %i.id = getelementptr i8, ptr %i.ic, i64 -4     ; 2 uses
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !352
  %i.if = zext i16 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !352
  %i.ii = add i16 %i.ih, 1
  store i16 %i.ii, ptr %i.id, align 2, !tbaa !352
  %i.ij = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
  %i.ik = getelementptr i8, ptr %i.ij, i64 -8     ; 2 uses
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !352
  %i.im = zext i16 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.im
  %i.io = load i16, ptr %i.in, align 2, !tbaa !352
  %i.ip = add i16 %i.io, 1
  store i16 %i.ip, ptr %i.ik, align 2, !tbaa !352
  %indvars.iv.next116.i.2 = add nsw i64 %indvars.iv115.i, -3 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.next116.i.2 ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !352
  %i.is = zext i16 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !352
  %i.iv = add i16 %i.iu, 1
  store i16 %i.iv, ptr %i.iq, align 2, !tbaa !352
  %indvars.iv.next116.i.3 = add nsw i64 %indvars.iv115.i, -4
  %.not140.i.3 = icmp eq i64 %indvars.iv.next116.i.2, 0
  br i1 %.not140.i.3, label %.preheader.i81.preheader, label %.lr.ph96.i, !llvm.loop !362

.preheader.i81.preheader:                         ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i, %._crit_edge.thread.i
  %.385110.i.ph = phi i32 [ %i.gb, %._crit_edge.thread.i ], [ %i.hj, %.lr.ph96.i ], [ %i.hj, %.lr.ph96.i.prol.loopexit ]
  br label %.preheader.i81

.preheader.i81:                                   ; preds = %.preheader.i81.preheader, %._crit_edge108.i
  %.0113.i = phi i32 [ %i.jy, %._crit_edge108.i ], [ 0, %.preheader.i81.preheader ] ; 3 uses
  %.075112.i = phi i32 [ %i.jx, %._crit_edge108.i ], [ 1, %.preheader.i81.preheader ] ; 5 uses
  %.2111.i = phi i32 [ %.3.lcssa.i, %._crit_edge108.i ], [ %i.fz, %.preheader.i81.preheader ] ; 2 uses
  %.385110.i = phi i32 [ %.4.lcssa.i, %._crit_edge108.i ], [ %.385110.i.ph, %.preheader.i81.preheader ] ; 5 uses
  %i.iw = icmp sgt i32 %.385110.i, -1
  br i1 %i.iw, label %.lr.ph99.preheader.i, label %.critedge.i

.lr.ph99.preheader.i:                             ; preds = %.preheader.i81
  %i.ix = add nuw i32 %.385110.i, 1
  br label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %bb.t, %.lr.ph99.preheader.i
  %.198.i = phi i32 [ %i.jd, %bb.t ], [ 0, %.lr.ph99.preheader.i ] ; 3 uses
  %.497.i = phi i32 [ %i.je, %bb.t ], [ %.385110.i, %.lr.ph99.preheader.i ] ; 3 uses
  %i.iy = zext nneg i32 %.497.i to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !352
  %i.jb = zext i16 %i.ja to i32
  %i.jc = icmp eq i32 %.0113.i, %i.jb
  br i1 %i.jc, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph99.i
  %i.jd = add nuw i32 %.198.i, 1
  %i.je = add nsw i32 %.497.i, -1
  %exitcond118.not.i = icmp eq i32 %.198.i, %.385110.i
  br i1 %exitcond118.not.i, label %.critedge.i, label %.lr.ph99.i, !llvm.loop !363

.critedge.i:                                      ; preds = %bb.t, %.lr.ph99.i, %.preheader.i81
  %.4.lcssa.i = phi i32 [ %.385110.i, %.preheader.i81 ], [ %.497.i, %.lr.ph99.i ], [ -1, %bb.t ]
  %.1.lcssa.i = phi i32 [ 0, %.preheader.i81 ], [ %.198.i, %.lr.ph99.i ], [ %i.ix, %bb.t ] ; 6 uses
  %i.jf = icmp sgt i32 %.075112.i, %.1.lcssa.i
  br i1 %i.jf, label %.lr.ph107.i, label %._crit_edge108.i

.lr.ph107.i:                                      ; preds = %.critedge.i
  %i.jg = trunc i32 %.0113.i to i16               ; 5 uses
  %i.jh = sext i32 %.2111.i to i64                ; 2 uses
  %i.ji = sub i32 %.075112.i, %.1.lcssa.i
  %xtraiter211 = and i32 %i.ji, 3                 ; 2 uses
  %lcmp.mod212.not = icmp eq i32 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph107.i, %.prol.preheader
  %indvars.iv119.i.prol = phi i64 [ %indvars.iv.next120.i.prol, %.prol.preheader ], [ %i.jh, %.lr.ph107.i ] ; 2 uses
  %.176106.i.prol = phi i32 [ %i.jk, %.prol.preheader ], [ %.075112.i, %.lr.ph107.i ]
  %prol.iter213 = phi i32 [ %prol.iter213.next, %.prol.preheader ], [ 0, %.lr.ph107.i ]
  %indvars.iv.next120.i.prol = add nsw i64 %indvars.iv119.i.prol, -1 ; 3 uses
  %i.jj = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i.prol
  store i16 %i.jg, ptr %i.jj, align 2, !tbaa !352
  %i.jk = add nsw i32 %.176106.i.prol, -1         ; 2 uses
  %prol.iter213.next = add i32 %prol.iter213, 1   ; 2 uses
  %prol.iter213.cmp.not = icmp eq i32 %prol.iter213.next, %xtraiter211
  br i1 %prol.iter213.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !364

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph107.i
  %indvars.iv119.i.unr = phi i64 [ %i.jh, %.lr.ph107.i ], [ %indvars.iv.next120.i.prol, %.prol.preheader ]
  %.176106.i.unr = phi i32 [ %.075112.i, %.lr.ph107.i ], [ %i.jk, %.prol.preheader ]
  %indvars.iv.next120.i.lcssa.unr = phi i64 [ poison, %.lr.ph107.i ], [ %indvars.iv.next120.i.prol, %.prol.preheader ]
  %i.jl = sub i32 %.1.lcssa.i, %.075112.i
  %i.jm = icmp ugt i32 %i.jl, -4
  br i1 %i.jm, label %._crit_edge108.loopexit.i, label %.lr.ph107.i.new

.lr.ph107.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph107.i.new
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ], [ %indvars.iv119.i.unr, %.prol.loopexit ] ; 5 uses
  %.176106.i = phi i32 [ %i.ju, %.lr.ph107.i.new ], [ %.176106.i.unr, %.prol.loopexit ]
  %i.jn = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  store i16 %i.jg, ptr %i.jn, align 2, !tbaa !352
  %i.jo = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jp = getelementptr i8, ptr %i.jo, i64 -4
  store i16 %i.jg, ptr %i.jp, align 2, !tbaa !352
  %i.jq = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jr = getelementptr i8, ptr %i.jq, i64 -8
  store i16 %i.jg, ptr %i.jr, align 2, !tbaa !352
  %indvars.iv.next120.i.3 = add nsw i64 %indvars.iv119.i, -4 ; 2 uses
  %i.js = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jt = getelementptr i8, ptr %i.js, i64 -12
  store i16 %i.jg, ptr %i.jt, align 2, !tbaa !352
  %i.ju = add nsw i32 %.176106.i, -4              ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, %.1.lcssa.i
  br i1 %i.jv, label %.lr.ph107.i.new, label %._crit_edge108.loopexit.i, !llvm.loop !365

._crit_edge108.loopexit.i:                        ; preds = %.lr.ph107.i.new, %.prol.loopexit
  %indvars.iv.next120.i.lcssa = phi i64 [ %indvars.iv.next120.i.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ]
  %i.jw = trunc nsw i64 %indvars.iv.next120.i.lcssa to i32
  br label %._crit_edge108.i

._crit_edge108.i:                                 ; preds = %._crit_edge108.loopexit.i, %.critedge.i
  %.3.lcssa.i = phi i32 [ %.2111.i, %.critedge.i ], [ %i.jw, %._crit_edge108.loopexit.i ]
  %i.jx = shl nuw nsw i32 %.1.lcssa.i, 1
  %i.jy = add nuw nsw i32 %.0113.i, 1
  %.not89.i = icmp eq i32 %.1.lcssa.i, 0
  br i1 %.not89.i, label %_ZN12duckdb_minizL34tdefl_calculate_minimum_redundancyEPNS_14tdefl_sym_freqEi.exit, label %.preheader.i81, !llvm.loop !366

_ZN12duckdb_minizL34tdefl_calculate_minimum_redundancyEPNS_14tdefl_sym_freqEi.exit: ; preds = %._crit_edge108.i
  %i.jz = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.jz, label %.lr.ph.preheader, label %_ZN12duckdb_minizL35tdefl_huffman_enforce_max_code_sizeEPiii.exit

.lr.ph.preheader:                                 ; preds = %_ZN12duckdb_minizL34tdefl_calculate_minimum_redundancyEPNS_14tdefl_sym_freqEi.exit.thread166, %_ZN12duckdb_minizL34tdefl_calculate_minimum_redundancyEPNS_14tdefl_sym_freqEi.exit
  %xtraiter214 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ka = icmp ult i32 %.1.lcssa, 4
  br i1 %i.ka, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter218 = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next129.3, %.lr.ph ] ; 5 uses
  %niter219 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter219.next.3, %.lr.ph ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !352
  %i.kd = zext i16 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kd ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !3
  %i.kg = add nsw i32 %i.kf, 1
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !3
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !352
  %i.kk = zext i16 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kk ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !3
  %i.kn = add nsw i32 %i.km, 1
  store i32 %i.kn, ptr %i.kl, align 4, !tbaa !3
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !352
  %i.kr = zext i16 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kr ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !3
  %i.ku = add nsw i32 %i.kt, 1
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !3
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !352
  %i.ky = zext i16 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !3
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.kz, align 4, !tbaa !3
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %niter219.next.3 = add nuw i64 %niter219, 4     ; 2 uses
  %niter219.ncmp.3 = icmp eq i64 %niter219.next.3, %unroll_iter218
  br i1 %niter219.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !367

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod216.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod216.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next129.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod217 = icmp ne i64 %xtraiter214, 0
  tail call void @llvm.assume(i1 %lcmp.mod217)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next129.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter215 = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter215.next, %.lr.ph.epil ]
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128.epil
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !352
  %i.le = zext i16 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.le ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !3
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !3
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter215.next = add i64 %epil.iter215, 1   ; 2 uses
  %epil.iter215.cmp.not = icmp eq i64 %epil.iter215.next, %xtraiter214
  br i1 %epil.iter215.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !368

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.li = icmp eq i32 %.1.lcssa, 1
  br i1 %i.li, label %_ZN12duckdb_minizL35tdefl_huffman_enforce_max_code_sizeEPiii.exit, label %.preheader35.i

.preheader35.i:                                   ; preds = %._crit_edge
  %i.lj = zext nneg i32 %3 to i64                 ; 11 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lj ; 5 uses
  %i.ll = sub nuw nsw i64 32, %i.lj               ; 2 uses
  %n.vec = and i64 %i.ll, 56                      ; 4 uses
  %i.lm = add nuw nsw i64 %n.vec, %i.lj
  %.promoted.i = load i32, ptr %i.lk, align 4, !tbaa !3
  %i.ln = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted.i, i64 0
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lj ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 20
  %wide.load = load <4 x i32>, ptr %i.lp, align 4, !tbaa !3
  %wide.load180 = load <4 x i32>, ptr %i.lq, align 4, !tbaa !3 ; 2 uses
  %i.lr = add <4 x i32> %wide.load, %i.ln         ; 2 uses
  %i.ls = icmp eq i64 %n.vec, 8
  br i1 %i.ls, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %.preheader35.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lj ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 20
  %wide.load.1 = load <4 x i32>, ptr %i.lv, align 4, !tbaa !3
  %wide.load180.1 = load <4 x i32>, ptr %i.lw, align 4, !tbaa !3
  %i.lx = add <4 x i32> %wide.load.1, %i.lr       ; 2 uses
  %i.ly = add <4 x i32> %wide.load180.1, %wide.load180 ; 2 uses
  %i.lz = icmp eq i64 %n.vec, 16
  br i1 %i.lz, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ma = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.lj ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 20
  %wide.load.2 = load <4 x i32>, ptr %i.mc, align 4, !tbaa !3
  %wide.load180.2 = load <4 x i32>, ptr %i.md, align 4, !tbaa !3
  %i.me = add <4 x i32> %wide.load.2, %i.lx
  %i.mf = add <4 x i32> %wide.load180.2, %i.ly
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %.preheader35.i
  %.lcssa187 = phi <4 x i32> [ %i.lr, %.preheader35.i ], [ %i.lx, %vector.body.1 ], [ %i.me, %vector.body.2 ]
  %.lcssa186 = phi <4 x i32> [ %wide.load180, %.preheader35.i ], [ %i.ly, %vector.body.1 ], [ %i.mf, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa186, %.lcssa187
  %i.mg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.mg, ptr %i.lk, align 4, !tbaa !3
  %cmp.n = icmp eq i64 %i.ll, %n.vec
  br i1 %cmp.n, label %.preheader34.i.preheader, label %scalar.ph

.preheader34.i.preheader:                         ; preds = %scalar.ph, %middle.block
  %xtraiter220 = and i64 %i.lj, 3                 ; 3 uses
  %unroll_iter225 = and i64 %i.lj, 12
  br label %.preheader34.i

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90, %scalar.ph ], [ %i.lm, %middle.block ]
  %i.mh = phi i32 [ %i.mk, %scalar.ph ], [ %i.mg, %middle.block ]
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i89, 1 ; 3 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i90
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !3
  %i.mk = add nsw i32 %i.mj, %i.mh                ; 2 uses
  store i32 %i.mk, ptr %i.lk, align 4, !tbaa !3
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next.i90, 32
  br i1 %exitcond.not.i91, label %.preheader34.i.preheader, label %scalar.ph, !llvm.loop !369

.preheader.i92.unr-lcssa:                         ; preds = %.preheader34.i
  %lcmp.mod222.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod222.not, label %.preheader.i92, label %.preheader34.i.epil.preheader

.preheader34.i.epil.preheader:                    ; preds = %.preheader.i92.unr-lcssa
  %lcmp.mod224 = icmp ne i64 %xtraiter220, 0
  tail call void @llvm.assume(i1 %lcmp.mod224)
  br label %.preheader34.i.epil

.preheader34.i.epil:                              ; preds = %.preheader34.i.epil, %.preheader34.i.epil.preheader
  %indvars.iv48.i.epil = phi i64 [ %indvars.iv.next49.i.epil, %.preheader34.i.epil ], [ %indvars.iv.next49.i.3, %.preheader34.i.epil.preheader ] ; 3 uses
  %.040.i.epil = phi i32 [ %i.mq, %.preheader34.i.epil ], [ %i.nq, %.preheader34.i.epil.preheader ]
  %epil.iter221 = phi i64 [ %epil.iter221.next, %.preheader34.i.epil ], [ 0, %.preheader34.i.epil.preheader ]
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i.epil
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !3
  %i.mn = trunc i64 %indvars.iv48.i.epil to i32
  %i.mo = sub i32 %3, %i.mn
  %i.mp = shl i32 %i.mm, %i.mo
  %i.mq = add i32 %i.mp, %.040.i.epil             ; 2 uses
  %indvars.iv.next49.i.epil = add nsw i64 %indvars.iv48.i.epil, -1
  %epil.iter221.next = add i64 %epil.iter221, 1   ; 2 uses
  %epil.iter221.cmp.not = icmp eq i64 %epil.iter221.next, %xtraiter220
  br i1 %epil.iter221.cmp.not, label %.preheader.i92, label %.preheader34.i.epil, !llvm.loop !371

.preheader.i92:                                   ; preds = %.preheader34.i.epil, %.preheader.i92.unr-lcssa
  %.lcssa185 = phi i32 [ %i.nq, %.preheader.i92.unr-lcssa ], [ %i.mq, %.preheader34.i.epil ] ; 2 uses
  %i.mr = shl nuw nsw i64 1, %i.lj                ; 2 uses
  %i.ms = zext i32 %.lcssa185 to i64
  %.not42.i = icmp eq i64 %i.mr, %i.ms
  br i1 %.not42.i, label %_ZN12duckdb_minizL35tdefl_huffman_enforce_max_code_sizeEPiii.exit, label %.lr.ph.i93

.preheader34.i:                                   ; preds = %.preheader34.i, %.preheader34.i.preheader
  %indvars.iv48.i = phi i64 [ %i.lj, %.preheader34.i.preheader ], [ %indvars.iv.next49.i.3, %.preheader34.i ] ; 6 uses
  %.040.i = phi i32 [ 0, %.preheader34.i.preheader ], [ %i.nq, %.preheader34.i ]
  %niter226 = phi i64 [ 0, %.preheader34.i.preheader ], [ %niter226.next.3, %.preheader34.i ]
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !3
  %i.mv = trunc i64 %indvars.iv48.i to i32
  %i.mw = sub nsw i32 %3, %i.mv
  %i.mx = shl i32 %i.mu, %i.mw
  %i.my = add i32 %i.mx, %.040.i
  %indvars.iv.next49.i = add nsw i64 %indvars.iv48.i, -1 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !3
  %i.nb = trunc i64 %indvars.iv.next49.i to i32
  %i.nc = sub nsw i32 %3, %i.nb
  %i.nd = shl i32 %i.na, %i.nc
  %i.ne = add i32 %i.nd, %i.my
  %indvars.iv.next49.i.1 = add nsw i64 %indvars.iv48.i, -2 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.1
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !3
  %i.nh = trunc i64 %indvars.iv.next49.i.1 to i32
  %i.ni = sub nsw i32 %3, %i.nh
  %i.nj = shl i32 %i.ng, %i.ni
  %i.nk = add i32 %i.nj, %i.ne
  %indvars.iv.next49.i.2 = add nsw i64 %indvars.iv48.i, -3 ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.2
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !3
  %i.nn = trunc i64 %indvars.iv.next49.i.2 to i32
  %i.no = sub nsw i32 %3, %i.nn
  %i.np = shl i32 %i.nm, %i.no
  %i.nq = add i32 %i.np, %i.nk                    ; 3 uses
  %indvars.iv.next49.i.3 = add nsw i64 %indvars.iv48.i, -4 ; 2 uses
  %niter226.next.3 = add nuw nsw i64 %niter226, 4 ; 2 uses
  %niter226.ncmp.3.not = icmp eq i64 %niter226.next.3, %unroll_iter225
  br i1 %niter226.ncmp.3.not, label %.preheader.i92.unr-lcssa, label %.preheader34.i, !llvm.loop !372

.lr.ph.i93:                                       ; preds = %.preheader.i92, %.loopexit.i
  %.143.i = phi i32 [ %i.ob, %.loopexit.i ], [ %.lcssa185, %.preheader.i92 ]
  %i.nr = load i32, ptr %i.lk, align 4, !tbaa !3
  %i.ns = add nsw i32 %i.nr, -1
  store i32 %i.ns, ptr %i.lk, align 4, !tbaa !3
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.nt = icmp sgt i64 %indvars.iv51.i178, 2
  br i1 %i.nt, label %bb.v, label %.loopexit.i, !llvm.loop !373

bb.v:                                             ; preds = %.lr.ph.i93, %bb.u
  %indvars.iv51.i178 = phi i64 [ %i.lj, %.lr.ph.i93 ], [ %indvars.iv.next52.i, %bb.u ] ; 3 uses
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i178, -1 ; 3 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !3  ; 2 uses
  %.not32.i = icmp eq i32 %i.nv, 0
  br i1 %.not32.i, label %bb.u, label %bb.w, !llvm.loop !373

bb.w:                                             ; preds = %bb.v
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nx = add nsw i32 %i.nv, -1
  store i32 %i.nx, ptr %i.nw, align 4, !tbaa !3
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv51.i178 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !3
  %i.oa = add nsw i32 %i.nz, 2
  store i32 %i.oa, ptr %i.ny, align 4, !tbaa !3
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.u, %bb.w
  %i.ob = add i32 %.143.i, -1                     ; 2 uses
  %i.oc = zext i32 %i.ob to i64
  %.not.i94 = icmp eq i64 %i.mr, %i.oc
  br i1 %.not.i94, label %_ZN12duckdb_minizL35tdefl_huffman_enforce_max_code_sizeEPiii.exit, label %.lr.ph.i93, !llvm.loop !374

_ZN12duckdb_minizL35tdefl_huffman_enforce_max_code_sizeEPiii.exit: ; preds = %.loopexit.i, %_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit, %_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit.thread, %_ZN12duckdb_minizL34tdefl_calculate_minimum_redundancyEPNS_14tdefl_sym_freqEi.exit, %._crit_edge, %.preheader.i92
end_hunk_4
begin_hunk_5_@_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii:bb.a
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ox
  store i8 %i.ol, ptr %i.oy, align 1, !tbaa !7
  %i.oz = getelementptr [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv134
  %i.pa = getelementptr i8, ptr %i.oz, i64 -6
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !354
  %i.pc = zext i16 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.pc
  store i8 %i.ol, ptr %i.pd, align 1, !tbaa !7
  %i.pe = getelementptr [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv134
  %i.pf = getelementptr i8, ptr %i.pe, i64 -10
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !354
  %i.ph = zext i16 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ph
  store i8 %i.ol, ptr %i.pi, align 1, !tbaa !7
  %indvars.iv.next135.3 = add nsw i64 %indvars.iv134, -4 ; 3 uses
  %i.pj = getelementptr inbounds [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv.next135.3
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 2
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !354
  %i.pm = zext i16 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.pm
  store i8 %i.ol, ptr %i.pn, align 1, !tbaa !7
  %i.po = add nsw i32 %.069105, -4
  %i.pp = icmp sgt i32 %.069105, 4
  br i1 %i.pp, label %.lr.ph107.new, label %._crit_edge108.loopexit, !llvm.loop !376

._crit_edge108.loopexit:                          ; preds = %.lr.ph107.new, %.prol.loopexit228
  %indvars.iv.next135.lcssa = phi i64 [ %indvars.iv.next135.lcssa.unr, %.prol.loopexit228 ], [ %indvars.iv.next135.3, %.lr.ph107.new ]
  %i.pq = trunc nsw i64 %indvars.iv.next135.lcssa to i32
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %bb.x
  %.172.lcssa = phi i32 [ %.071110, %bb.x ], [ %i.pq, %._crit_edge108.loopexit ]
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %bb.y, label %bb.x, !llvm.loop !377

bb.y:                                             ; preds = %._crit_edge108
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod188 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod188)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.3, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.z ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.z ]
  %i.pr = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.epil
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !7
  %i.pt = zext i8 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !3
  %i.pw = add nsw i32 %i.pv, 1
  store i32 %i.pw, ptr %i.pu, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %bb.z, !llvm.loop !378

.loopexit.loopexit:                               ; preds = %bb.z, %.loopexit.loopexit.unr-lcssa
  %.pre152 = add nuw nsw i32 %3, 1
  %.pre154 = zext nneg i32 %.pre152 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.y
  %wide.trip.count145.pre-phi = phi i64 [ %.pre154, %.loopexit.loopexit ], [ %wide.trip.count140, %bb.y ] ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.px, align 4, !tbaa !3
  %i.py = add nsw i64 %wide.trip.count145.pre-phi, -2 ; 2 uses
  %i.pz = add nsw i64 %wide.trip.count145.pre-phi, -3
  %xtraiter233 = and i64 %i.py, 3                 ; 3 uses
  %i.qa = icmp ult i64 %i.pz, 3
  br i1 %i.qa, label %.epil.preheader232, label %.loopexit.new

.loopexit.new:                                    ; preds = %.loopexit
  %unroll_iter237 = and i64 %i.py, -4
  br label %bb.ab

.preheader.unr-lcssa:                             ; preds = %bb.ab
  %lcmp.mod235.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod235.not, label %.preheader, label %.epil.preheader232

.epil.preheader232:                               ; preds = %.preheader.unr-lcssa, %.loopexit
  %indvars.iv142.epil.init = phi i64 [ 2, %.loopexit ], [ %indvars.iv.next143.3, %.preheader.unr-lcssa ]
  %.2112.epil.init = phi i32 [ 0, %.loopexit ], [ %i.ri, %.preheader.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter233, 0
  tail call void @llvm.assume(i1 %lcmp.mod236)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader232
  %indvars.iv142.epil = phi i64 [ %indvars.iv142.epil.init, %.epil.preheader232 ], [ %indvars.iv.next143.epil, %bb.aa ] ; 3 uses
  %.2112.epil = phi i32 [ %.2112.epil.init, %.epil.preheader232 ], [ %i.qf, %bb.aa ]
  %epil.iter234 = phi i64 [ 0, %.epil.preheader232 ], [ %epil.iter234.next, %bb.aa ]
  %i.qb = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv142.epil
  %i.qc = getelementptr i8, ptr %i.qb, i64 -4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !3
  %i.qe = add nsw i32 %i.qd, %.2112.epil
  %i.qf = shl i32 %i.qe, 1                        ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142.epil
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !3
  %indvars.iv.next143.epil = add nuw nsw i64 %indvars.iv142.epil, 1
  %epil.iter234.next = add i64 %epil.iter234, 1   ; 2 uses
  %epil.iter234.cmp.not = icmp eq i64 %epil.iter234.next, %xtraiter233
  br i1 %epil.iter234.cmp.not, label %.preheader, label %bb.aa, !llvm.loop !379

.preheader:                                       ; preds = %bb.aa, %.preheader.unr-lcssa
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.qi = zext nneg i32 %1 to i64                 ; 2 uses
  %i.qj = getelementptr inbounds nuw [288 x i8], ptr %i.qh, i64 %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 34954
  %i.ql = getelementptr inbounds nuw [576 x i8], ptr %i.qk, i64 %i.qi
  %wide.trip.count150 = zext nneg i32 %2 to i64
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ab, %.loopexit.new
  %indvars.iv142 = phi i64 [ 2, %.loopexit.new ], [ %indvars.iv.next143.3, %bb.ab ] ; 6 uses
  %.2112 = phi i32 [ 0, %.loopexit.new ], [ %i.ri, %bb.ab ]
  %niter238 = phi i64 [ 0, %.loopexit.new ], [ %niter238.next.3, %bb.ab ]
  %i.qm = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv142
  %i.qn = getelementptr i8, ptr %i.qm, i64 -4
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !3
  %i.qp = add nsw i32 %i.qo, %.2112
  %i.qq = shl i32 %i.qp, 1                        ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142
  store i32 %i.qq, ptr %i.qr, align 8, !tbaa !3
  %indvars.iv.next143 = or disjoint i64 %indvars.iv142, 1 ; 2 uses
  %i.qs = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next143
  %i.qt = getelementptr i8, ptr %i.qs, i64 -4
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !3
  %i.qv = add nsw i32 %i.qu, %i.qq
  %i.qw = shl i32 %i.qv, 1                        ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next143
  store i32 %i.qw, ptr %i.qx, align 4, !tbaa !3
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %i.qy = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next143.1
  %i.qz = getelementptr i8, ptr %i.qy, i64 -4
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !3
  %i.rb = add nsw i32 %i.ra, %i.qw
  %i.rc = shl i32 %i.rb, 1                        ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next143.1
  store i32 %i.rc, ptr %i.rd, align 8, !tbaa !3
  %indvars.iv.next143.2 = add nuw nsw i64 %indvars.iv142, 3 ; 2 uses
  %i.re = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next143.2
  %i.rf = getelementptr i8, ptr %i.re, i64 -4
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !3
  %i.rh = add nsw i32 %i.rg, %i.rc
  %i.ri = shl i32 %i.rh, 1                        ; 3 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next143.2
  store i32 %i.ri, ptr %i.rj, align 4, !tbaa !3
  %indvars.iv.next143.3 = add nuw nsw i64 %indvars.iv142, 4 ; 2 uses
  %niter238.next.3 = add nuw i64 %niter238, 4     ; 2 uses
  %niter238.ncmp.3 = icmp eq i64 %niter238.next.3, %unroll_iter237
  br i1 %niter238.ncmp.3, label %.preheader.unr-lcssa, label %bb.ab, !llvm.loop !380

bb.ac:                                            ; preds = %.preheader, %bb.ag
  %indvars.iv147 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next148, %bb.ag ] ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qj, i64 %indvars.iv147
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !7   ; 4 uses
  %i.rm = icmp eq i8 %i.rl, 0
  br i1 %i.rm, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.rn = zext i8 %i.rl to i32                    ; 2 uses
  %i.ro = zext i8 %i.rl to i64
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ro ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !3  ; 3 uses
  %i.rr = add i32 %i.rq, 1
  store i32 %i.rr, ptr %i.rp, align 4, !tbaa !3
  %xtraiter242 = and i32 %i.rn, 3                 ; 3 uses
  %i.rs = icmp ult i8 %i.rl, 4
  br i1 %i.rs, label %.epil.preheader241, label %.new239

.new239:                                          ; preds = %bb.ad
  %unroll_iter248 = and i32 %i.rn, 252
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.new239
  %.0115 = phi i32 [ %i.rq, %.new239 ], [ %i.sg, %bb.ae ] ; 5 uses
  %.067114 = phi i32 [ 0, %.new239 ], [ %i.sf, %bb.ae ]
  %niter249 = phi i32 [ 0, %.new239 ], [ %niter249.next.3, %bb.ae ]
  %i.rt = shl i32 %.067114, 3
  %i.ru = shl i32 %.0115, 2
  %i.rv = and i32 %i.ru, 4
  %i.rw = or disjoint i32 %i.rt, %i.rv
  %i.rx = and i32 %.0115, 2
  %i.ry = or disjoint i32 %i.rx, %i.rw
  %i.rz = lshr i32 %.0115, 2
  %i.sa = and i32 %i.rz, 1
  %i.sb = or disjoint i32 %i.sa, %i.ry
  %i.sc = lshr i32 %.0115, 3
  %i.sd = shl i32 %i.sb, 1
  %i.se = and i32 %i.sc, 1
  %i.sf = or disjoint i32 %i.se, %i.sd            ; 3 uses
  %i.sg = lshr i32 %.0115, 4                      ; 2 uses
  %niter249.next.3 = add nuw i32 %niter249, 4     ; 2 uses
  %niter249.ncmp.3.not = icmp eq i32 %niter249.next.3, %unroll_iter248
  br i1 %niter249.ncmp.3.not, label %.unr-lcssa240, label %bb.ae, !llvm.loop !323

.unr-lcssa240:                                    ; preds = %bb.ae
  %lcmp.mod244.not = icmp eq i32 %xtraiter242, 0
  br i1 %lcmp.mod244.not, label %.epilog-lcssa245, label %.epil.preheader241

.epil.preheader241:                               ; preds = %.unr-lcssa240, %bb.ad
  %.0115.epil.init = phi i32 [ %i.rq, %bb.ad ], [ %i.sg, %.unr-lcssa240 ]
  %.067114.epil.init = phi i32 [ 0, %bb.ad ], [ %i.sf, %.unr-lcssa240 ]
  %lcmp.mod247 = icmp ne i32 %xtraiter242, 0
  tail call void @llvm.assume(i1 %lcmp.mod247)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader241
  %.0115.epil = phi i32 [ %.0115.epil.init, %.epil.preheader241 ], [ %i.sk, %bb.af ] ; 2 uses
  %.067114.epil = phi i32 [ %.067114.epil.init, %.epil.preheader241 ], [ %i.sj, %bb.af ]
  %epil.iter243 = phi i32 [ 0, %.epil.preheader241 ], [ %epil.iter243.next, %bb.af ]
  %i.sh = shl i32 %.067114.epil, 1
  %i.si = and i32 %.0115.epil, 1
  %i.sj = or disjoint i32 %i.si, %i.sh            ; 2 uses
  %i.sk = lshr i32 %.0115.epil, 1
  %epil.iter243.next = add i32 %epil.iter243, 1   ; 2 uses
  %epil.iter243.cmp.not = icmp eq i32 %epil.iter243.next, %xtraiter242
  br i1 %epil.iter243.cmp.not, label %.epilog-lcssa245, label %bb.af, !llvm.loop !381

.epilog-lcssa245:                                 ; preds = %bb.af, %.unr-lcssa240
  %.lcssa = phi i32 [ %i.sf, %.unr-lcssa240 ], [ %i.sj, %bb.af ]
  %i.sl = trunc i32 %.lcssa to i16
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %i.ql, i64 %indvars.iv147
  store i16 %i.sl, ptr %i.sm, align 2, !tbaa !118
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %.epilog-lcssa245
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %bb.ah, label %bb.ac, !llvm.loop !325

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN12duckdb_minizL50mz_zip_reader_sort_central_dir_offsets_by_filenameEPNS_14mz_zip_archiveE(i32 %.16.val, ptr nofree readonly captures(none) %.104.val) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.104.val, i64 32 ; 2 uses
  %i.b = icmp ult i32 %.16.val, 2
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.104.val, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !242  ; 11 uses
  %i.e = add i32 %.16.val, -2
  %i.f = zext i32 %.16.val to i64                 ; 3 uses
  %i.g = lshr i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN12duckdb_minizL27mz_zip_reader_filename_lessEPKNS_12mz_zip_arrayES2_jj.exit118._crit_edge, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN12duckdb_minizL27mz_zip_reader_filename_lessEPKNS_12mz_zip_arrayES2_jj.exit118._crit_edge ], [ %i.h, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.j = or disjoint i64 %i.i, 1                  ; 2 uses
  %.not22 = icmp samesign ult i64 %i.j, %i.f
  br i1 %.not22, label %.lr.ph24, label %_ZN12duckdb_minizL27mz_zip_reader_filename_lessEPKNS_12mz_zip_arrayES2_jj.exit118._crit_edge

.lr.ph24:                                         ; preds = %bb.c
  %i.k = load ptr, ptr %.104.val, align 8, !tbaa !215 ; 4 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !215  ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph24, %bb.i
  %i.m = phi i64 [ %i.j, %.lr.ph24 ], [ %i.ck, %bb.i ] ; 2 uses
  %i.n = phi i64 [ %i.i, %.lr.ph24 ], [ %i.cj, %bb.i ]
  %.07523 = phi i64 [ %indvars.iv, %.lr.ph24 ], [ %i.ba, %bb.i ]
  %i.o = add nuw nsw i64 %i.n, 2                  ; 2 uses
  %i.p = icmp samesign ult i64 %i.o, %i.f
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.o
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = zext i32 %i.r to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.x ; 2 uses
  %i.z = zext i32 %i.t to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.af = load i16, ptr %i.ae, align 1            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.ah = load i16, ptr %i.ag, align 1            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 46 ; 3 uses
  %i.aj = icmp ult i16 %i.af, %i.ah
  %i.ak = tail call i16 @llvm.umin.i16(i16 %i.af, i16 %i.ah) ; 2 uses
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 2 uses
  %.not56 = icmp eq i16 %i.ak, 0
  br i1 %.not56, label %_ZN12duckdb_minizL27mz_zip_reader_filename_lessEPKNS_12mz_zip_arrayES2_jj.exit132, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 46
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.040.i1205 = phi ptr [ %i.at, %bb.f ], [ %i.an, %.lr.ph.preheader ] ; 2 uses
  %.041.i1194 = phi ptr [ %i.as, %bb.f ], [ %i.ai, %.lr.ph.preheader ] ; 3 uses
  %i.ao = load i8, ptr %.041.i1194, align 1, !tbaa !7 ; 3 uses
  %i.ap = add i8 %i.ao, -65
  %or.cond.i125 = icmp ult i8 %i.ap, 26
  %narrow.i131 = add nuw nsw i8 %i.ao, 32
  %spec.select = select i1 %or.cond.i125, i8 %narrow.i131, i8 %i.ao ; 3 uses
  %i.aq = load i8, ptr %.040.i1205, align 1, !tbaa !7 ; 3 uses
  %i.ar = add i8 %i.aq, -65
  %or.cond46.i127 = icmp ult i8 %i.ar, 26
  %narrow44.i130 = add nuw nsw i8 %i.aq, 32
  %.in45.i128 = select i1 %or.cond46.i127, i8 %narrow44.i130, i8 %i.aq ; 2 uses
  %.not.i129 = icmp eq i8 %spec.select, %.in45.i128
  br i1 %.not.i129, label %bb.f, label %_ZN12duckdb_minizL27mz_zip_reader_filename_lessEPKNS_12mz_zip_arrayES2_jj.exit132.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.041.i1194, i64 1 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.040.i1205, i64 1
  %i.au = icmp ult ptr %i.as, %i.am
  br i1 %i.au, label %.lr.ph, label %_ZN12duckdb_minizL27mz_zip_reader_filename_lessEPKNS_12mz_zip_arrayES2_jj.exit132.loopexit, !llvm.loop !382

_ZN12duckdb_minizL27mz_zip_reader_filename_lessEPKNS_12mz_zip_arrayES2_jj.exit132.loopexit: ; preds = %bb.f, %.lr.ph
  %.in45.i128.lcssa = phi i8 [ %spec.select, %bb.f ], [ %.in45.i128, %.lr.ph ]
  %.041.i119.lcssa.ph = phi ptr [ %i.as, %bb.f ], [ %.041.i1194, %.lr.ph ]
  %i.av = icmp ult i8 %spec.select, %.in45.i128.lcssa
  br label %_ZN12duckdb_minizL27mz_zip_reader_filename_lessEPKNS_12mz_zip_arrayES2_jj.exit132

_ZN12duckdb_minizL27mz_zip_reader_filename_lessEPKNS_12mz_zip_arrayES2_jj.exit132: ; preds = %_ZN12duckdb_minizL27mz_zip_reader_filename_lessEPKNS_12mz_zip_arrayES2_jj.exit132.loopexit, %bb.e
  %.041.i119.lcssa = phi ptr [ %i.ai, %bb.e ], [ %.041.i119.lcssa.ph, %_ZN12duckdb_minizL27mz_zip_reader_filename_lessEPKNS_12mz_zip_arrayES2_jj.exit132.loopexit ]
  %.139.i123 = phi i1 [ false, %bb.e ], [ %i.av, %_ZN12duckdb_minizL27mz_zip_reader_filename_lessEPKNS_12mz_zip_arrayES2_jj.exit132.loopexit ]
  %i.aw = icmp eq ptr %.041.i119.lcssa, %i.am
  %i.ax = select i1 %i.aw, i1 %i.aj, i1 %.139.i123
  %i.ay = zext i1 %i.ax to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZN12duckdb_minizL27mz_zip_reader_filename_lessEPKNS_12mz_zip_arrayES2_jj.exit132, %bb.d
  %i.az = phi i64 [ 0, %bb.d ], [ %i.ay, %_ZN12duckdb_minizL27mz_zip_reader_filename_lessEPKNS_12mz_zip_arrayES2_jj.exit132 ]
  %i.ba = add nuw nsw i64 %i.az, %i.m             ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.07523 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3  ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ba ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3  ; 2 uses
  %i.bf = zext i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bi ; 2 uses
  %i.bk = zext i32 %i.be to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  %i.bq = load i16, ptr %i.bp, align 1            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.bs = load i16, ptr %i.br, align 1            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 46 ; 3 uses
  %i.bu = icmp uge i16 %i.bq, %i.bs
  %i.bv = tail call i16 @llvm.umin.i16(i16 %i.bq, i16 %i.bs) ; 2 uses
  %i.bw = zext i16 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bw ; 2 uses
  %.not57 = icmp eq i16 %i.bv, 0
  br i1 %.not57, label %_ZN12duckdb_minizL27mz_zip_reader_filename_lessEPKNS_12mz_zip_arrayES2_jj.exit118, label %.lr.ph14.preheader

.lr.ph14.preheader:                               ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 46
  br label %.lr.ph14

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %bb.h
  %.040.i10613 = phi ptr [ %i.ce, %bb.h ], [ %i.by, %.lr.ph14.preheader ] ; 2 uses
  %.041.i10512 = phi ptr [ %i.cd, %bb.h ], [ %i.bt, %.lr.ph14.preheader ] ; 3 uses
  %i.bz = load i8, ptr %.041.i10512, align 1, !tbaa !7 ; 3 uses
  %i.ca = add i8 %i.bz, -65
  %or.cond.i111 = icmp ult i8 %i.ca, 26
  %narrow.i117 = add nuw nsw i8 %i.bz, 32
  %spec.select1 = select i1 %or.cond.i111, i8 %narrow.i117, i8 %i.bz ; 3 uses
  %i.cb = load i8, ptr %.040.i10613, align 1, !tbaa !7 ; 3 uses
  %i.cc = add i8 %i.cb, -65
  %or.cond46.i113 = icmp ult i8 %i.cc, 26
  %narrow44.i116 = add nuw nsw i8 %i.cb, 32
  %.in45.i114 = select i1 %or.cond46.i113, i8 %narrow44.i116, i8 %i.cb ; 2 uses
  %.not.i115 = icmp eq i8 %spec.select1, %.in45.i114
  br i1 %.not.i115, label %bb.h, label %_ZN12duckdb_minizL27mz_zip_reader_filename_lessEPKNS_12mz_zip_arrayES2_jj.exit118.loopexit

bb.h:                                             ; preds = %.lr.ph14
  %i.cd = getelementptr inbounds nuw i8, ptr %.041.i10512, i64 1 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.040.i10613, i64 1
  %i.cf = icmp ult ptr %i.cd, %i.bx
end_hunk_5
