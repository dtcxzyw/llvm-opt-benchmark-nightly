Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/zip?download=true
inline.NumInlined: 193
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 57
begin_hunk_0_@tinfl_decompress:bb.a
  br i1 %i.ez, label %bb.ao, label %.loopexit2074

.loopexit2074:                                    ; preds = %bb.aq, %bb.an
  %.171388 = phi i64 [ %.141385, %bb.an ], [ %.161387.ph, %bb.aq ]
  %.171290 = phi ptr [ %.141287, %bb.an ], [ %.161289.ph, %bb.aq ]
  %.201201 = phi ptr [ %.171198, %bb.an ], [ %i.es, %bb.aq ]
  %.211110 = phi i64 [ %.181107, %bb.an ], [ %i.ex, %bb.aq ] ; 2 uses
  %.211029 = phi i32 [ %.181026, %bb.an ], [ %.201028.ph, %bb.aq ]
  %.21940 = phi i32 [ %.18937, %bb.an ], [ %.20939.ph, %bb.aq ]
  %.21 = phi i32 [ %.18, %bb.an ], [ %i.ey, %bb.aq ]
  %i.fa = trunc i64 %.211110 to i32
  %i.fb = and i32 %i.fa, 255
  %i.fc = lshr i64 %.211110, 8
  %i.fd = add i32 %.21, -8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.g, %.loopexit2074
  %.181389 = phi i64 [ %.171388, %.loopexit2074 ], [ %i.aq, %bb.g ] ; 2 uses
  %.181291 = phi ptr [ %.171290, %.loopexit2074 ], [ %4, %bb.g ] ; 4 uses
  %.211202 = phi ptr [ %.201201, %.loopexit2074 ], [ %1, %bb.g ] ; 2 uses
  %.221111 = phi i64 [ %i.fc, %.loopexit2074 ], [ %i.ai, %bb.g ] ; 2 uses
  %.221030 = phi i32 [ %.211029, %.loopexit2074 ], [ %i.ao, %bb.g ] ; 2 uses
  %.22941 = phi i32 [ %.21940, %.loopexit2074 ], [ %i.am, %bb.g ] ; 2 uses
  %.21861 = phi i32 [ %i.fb, %.loopexit2074 ], [ %i.ak, %bb.g ] ; 3 uses
  %.22 = phi i32 [ %i.fd, %.loopexit2074 ], [ %.84.fr2003, %bb.g ] ; 2 uses
  %.not1608 = icmp ult ptr %.181291, %i.j
  br i1 %.not1608, label %bb.as, label %bb.fo

bb.as:                                            ; preds = %bb.ar
  %i.fe = trunc i32 %.21861 to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %.181291, i64 1
  store i8 %i.fe, ptr %.181291, align 1
  %i.fg = add i32 %.22941, -1
  br label %bb.am

bb.at:                                            ; preds = %bb.am, %bb.ax
  %.191390 = phi i64 [ %.141385, %bb.am ], [ %.211392, %bb.ax ] ; 2 uses
  %.191292 = phi ptr [ %.141287, %bb.am ], [ %i.fr, %bb.ax ] ; 2 uses
  %.221203 = phi ptr [ %.171198, %bb.am ], [ %i.fq, %bb.ax ] ; 2 uses
  %.231112 = phi i64 [ %.181107, %bb.am ], [ %.251114, %bb.ax ] ; 2 uses
  %.231031 = phi i32 [ %.181026, %bb.am ], [ %.251033, %bb.ax ] ; 2 uses
  %.23942 = phi i32 [ %.18937, %bb.am ], [ %i.ft, %bb.ax ] ; 2 uses
  %.22862 = phi i32 [ %.18858, %bb.am ], [ %.24864, %bb.ax ] ; 2 uses
  %.23 = phi i32 [ %.18, %bb.am ], [ %.25, %bb.ax ] ; 2 uses
  %.not1596 = icmp eq i32 %.23942, 0
  br i1 %.not1596, label %bb.ey, label %bb.au

bb.au:                                            ; preds = %bb.g, %bb.at
  %.201391 = phi i64 [ %.191390, %bb.at ], [ %i.aq, %bb.g ] ; 2 uses
  %.201293 = phi ptr [ %.191292, %bb.at ], [ %4, %bb.g ] ; 3 uses
  %.231204 = phi ptr [ %.221203, %bb.at ], [ %1, %bb.g ] ; 2 uses
  %.241113 = phi i64 [ %.231112, %bb.at ], [ %i.ai, %bb.g ] ; 2 uses
  %.241032 = phi i32 [ %.231031, %bb.at ], [ %i.ao, %bb.g ] ; 2 uses
  %.24943 = phi i32 [ %.23942, %bb.at ], [ %i.am, %bb.g ] ; 2 uses
  %.23863 = phi i32 [ %.22862, %bb.at ], [ %i.ak, %bb.g ] ; 2 uses
  %.24 = phi i32 [ %.23, %bb.at ], [ %.84.fr2003, %bb.g ] ; 2 uses
  %.not1604 = icmp ult ptr %.201293, %i.j
  br i1 %.not1604, label %bb.av, label %bb.fo

bb.av:                                            ; preds = %bb.g, %bb.au
  %.211392 = phi i64 [ %.201391, %bb.au ], [ %i.aq, %bb.g ] ; 2 uses
  %.211294 = phi ptr [ %.201293, %bb.au ], [ %4, %bb.g ] ; 4 uses
  %.241205 = phi ptr [ %.231204, %bb.au ], [ %1, %bb.g ] ; 5 uses
  %.251114 = phi i64 [ %.241113, %bb.au ], [ %i.ai, %bb.g ] ; 2 uses
  %.251033 = phi i32 [ %.241032, %bb.au ], [ %i.ao, %bb.g ] ; 2 uses
  %.25944 = phi i32 [ %.24943, %bb.au ], [ %i.am, %bb.g ] ; 3 uses
  %.24864 = phi i32 [ %.23863, %bb.au ], [ %i.ak, %bb.g ] ; 2 uses
  %.25 = phi i32 [ %.24, %bb.au ], [ %.84.fr2003, %bb.g ] ; 2 uses
  %.not1605 = icmp ult ptr %.241205, %i.g
  br i1 %.not1605, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fh = and i32 %6, 2
  %.not1606 = icmp eq i32 %i.fh, 0
  store i32 38, ptr %0, align 8
  %spec.select1689 = select i1 %.not1606, i32 -4, i32 1
  br label %.thread1657

bb.ax:                                            ; preds = %bb.av
  %i.fi = ptrtoint ptr %i.j to i64
  %i.fj = ptrtoint ptr %.211294 to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = ptrtoint ptr %i.g to i64
  %i.fm = ptrtoint ptr %.241205 to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %. = tail call i64 @llvm.umin.i64(i64 %i.fk, i64 %i.fn)
  %i.fo = zext i32 %.25944 to i64
  %i.fp = tail call i64 @llvm.umin.i64(i64 %., i64 %i.fo) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.211294, ptr align 1 %.241205, i64 %i.fp, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %.241205, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %.211294, i64 %i.fp
  %i.fs = trunc nuw i64 %i.fp to i32
  %i.ft = sub i32 %.25944, %i.fs
  br label %bb.at

.lr.ph1763.preheader:                             ; preds = %.loopexit2175
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 288, ptr %i.fu, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 32, ptr %i.fv, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ab, i8 5, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.aa, i8 8, i64 144, i1 false)
  %scevgep = getelementptr i8, ptr %0, i64 7716
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %scevgep, i8 9, i64 112, i1 false)
  %scevgep1882 = getelementptr i8, ptr %0, i64 7828
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %scevgep1882, i8 7, i64 24, i1 false)
  %scevgep1883 = getelementptr i8, ptr %0, i64 7852
  store i64 578721382704613384, ptr %scevgep1883, align 4
  br label %.loopexit1734

default.unreachable:                              ; preds = %.loopexit2175
  unreachable

bb.ay:                                            ; preds = %.loopexit2175, %.loopexit2156
  %.231394 = phi i64 [ %.261397, %.loopexit2156 ], [ %.31374, %.loopexit2175 ] ; 3 uses
  %.231296 = phi ptr [ %.261299, %.loopexit2156 ], [ %.31276, %.loopexit2175 ] ; 3 uses
  %.261207 = phi ptr [ %.291210, %.loopexit2156 ], [ %.61187, %.loopexit2175 ] ; 3 uses
  %.271116 = phi i64 [ %i.gx, %.loopexit2156 ], [ %i.ct, %.loopexit2175 ] ; 3 uses
  %.271035 = phi i32 [ %.301038, %.loopexit2156 ], [ %.71015, %.loopexit2175 ] ; 3 uses
  %.27946 = phi i32 [ %i.hd, %.loopexit2156 ], [ 0, %.loopexit2175 ] ; 4 uses
  %.26866 = phi i32 [ %.29869, %.loopexit2156 ], [ %.7847, %.loopexit2175 ] ; 3 uses
  %.27 = phi i32 [ %i.gy, %.loopexit2156 ], [ %i.cu, %.loopexit2175 ] ; 4 uses
  %i.fw = icmp ult i32 %.27946, 3
  br i1 %i.fw, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.fx = zext nneg i32 %.27946 to i64            ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr @.str.12, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1             ; 2 uses
  %i.ga = sext i8 %i.fz to i32                    ; 2 uses
  %i.gb = icmp ult i32 %.27, %i.ga
  br i1 %i.gb, label %.preheader2155, label %.loopexit2156

.preheader2155:                                   ; preds = %bb.g, %bb.az
  %.251396.ph = phi i64 [ %.231394, %bb.az ], [ %i.aq, %bb.g ] ; 2 uses
  %.251298.ph = phi ptr [ %.231296, %bb.az ], [ %4, %bb.g ] ; 2 uses
  %.281209.ph = phi ptr [ %.261207, %bb.az ], [ %1, %bb.g ]
  %.291118.ph = phi i64 [ %.271116, %bb.az ], [ %i.ai, %bb.g ]
  %.291037.ph = phi i32 [ %.271035, %bb.az ], [ %i.ao, %bb.g ] ; 2 uses
  %.29948.ph = phi i32 [ %.27946, %bb.az ], [ %i.am, %bb.g ] ; 3 uses
  %.28868.ph = phi i32 [ %.26866, %bb.az ], [ %i.ak, %bb.g ] ; 2 uses
  %.29.ph = phi i32 [ %.27, %bb.az ], [ %.84.fr2003, %bb.g ]
  %i.gc = zext i32 %.29948.ph to i64              ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr @.str.12, i64 %i.gc
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader2155, %bb.bc
  %.281209 = phi ptr [ %i.gf, %bb.bc ], [ %.281209.ph, %.preheader2155 ] ; 4 uses
  %.291118 = phi i64 [ %i.gk, %bb.bc ], [ %.291118.ph, %.preheader2155 ] ; 2 uses
  %.29 = phi i32 [ %i.gl, %bb.bc ], [ %.29.ph, %.preheader2155 ] ; 3 uses
  %.not1558 = icmp ult ptr %.281209, %i.g
  br i1 %.not1558, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ge = and i32 %6, 2
  %.not1559 = icmp eq i32 %i.ge, 0
  store i32 11, ptr %0, align 8
  %spec.select1691 = select i1 %.not1559, i32 -4, i32 1
  br label %.thread1657

bb.bc:                                            ; preds = %bb.ba
  %i.gf = getelementptr inbounds nuw i8, ptr %.281209, i64 1 ; 2 uses
  %i.gg = load i8, ptr %.281209, align 1
  %i.gh = zext i8 %i.gg to i64
  %i.gi = zext nneg i32 %.29 to i64
  %i.gj = shl i64 %i.gh, %i.gi
  %i.gk = or i64 %i.gj, %.291118                  ; 2 uses
  %i.gl = add i32 %.29, 8                         ; 3 uses
  %i.gm = load i8, ptr %i.gd, align 1             ; 2 uses
  %i.gn = sext i8 %i.gm to i32                    ; 2 uses
  %i.go = icmp ult i32 %i.gl, %i.gn
  br i1 %i.go, label %bb.ba, label %.loopexit2156

.loopexit2156:                                    ; preds = %bb.bc, %bb.az
  %.pre-phi1937 = phi i32 [ %i.ga, %bb.az ], [ %i.gn, %bb.bc ] ; 2 uses
  %i.gp = phi i8 [ %i.fz, %bb.az ], [ %i.gm, %bb.bc ]
  %.pre-phi = phi i64 [ %i.fx, %bb.az ], [ %i.gc, %bb.bc ] ; 2 uses
  %.261397 = phi i64 [ %.231394, %bb.az ], [ %.251396.ph, %bb.bc ]
  %.261299 = phi ptr [ %.231296, %bb.az ], [ %.251298.ph, %bb.bc ]
  %.291210 = phi ptr [ %.261207, %bb.az ], [ %i.gf, %bb.bc ]
  %.301119 = phi i64 [ %.271116, %bb.az ], [ %i.gk, %bb.bc ] ; 2 uses
  %.301038 = phi i32 [ %.271035, %bb.az ], [ %.291037.ph, %bb.bc ]
  %.30949 = phi i32 [ %.27946, %bb.az ], [ %.29948.ph, %bb.bc ]
  %.29869 = phi i32 [ %.26866, %bb.az ], [ %.28868.ph, %bb.bc ]
  %.30 = phi i32 [ %.27, %bb.az ], [ %i.gl, %bb.bc ]
  %i.gq = zext nneg i8 %i.gp to i32
  %notmask = shl nsw i32 -1, %i.gq
  %i.gr = xor i32 %notmask, -1
  %i.gs = trunc i64 %.301119 to i32
  %i.gt = and i32 %i.gr, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.pre-phi
  %i.gw = zext nneg i32 %.pre-phi1937 to i64
  %i.gx = lshr i64 %.301119, %i.gw
  %i.gy = sub i32 %.30, %.pre-phi1937
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr @tinfl_decompress.s_min_table_sizes, i64 %.pre-phi
  %i.ha = load i16, ptr %i.gz, align 2
  %i.hb = zext i16 %i.ha to i32
  %i.hc = add nuw i32 %i.gt, %i.hb
  store i32 %i.hc, ptr %i.gv, align 4
  %i.hd = add nuw i32 %.30949, 1
  br label %bb.ay

bb.bd:                                            ; preds = %bb.ay
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(19) %i.ad, i8 0, i64 19, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %.loopexit2167, %bb.bd
  %.271398 = phi i64 [ %.231394, %bb.bd ], [ %.301401, %.loopexit2167 ] ; 3 uses
  %.271300 = phi ptr [ %.231296, %bb.bd ], [ %.301303, %.loopexit2167 ] ; 3 uses
  %.301211 = phi ptr [ %.261207, %bb.bd ], [ %.331214, %.loopexit2167 ] ; 3 uses
  %.311120 = phi i64 [ %.271116, %bb.bd ], [ %i.ia, %.loopexit2167 ] ; 3 uses
  %.311039 = phi i32 [ %.271035, %bb.bd ], [ %.341042, %.loopexit2167 ] ; 3 uses
  %.31950 = phi i32 [ 0, %bb.bd ], [ %i.ih, %.loopexit2167 ] ; 4 uses
  %.30870 = phi i32 [ %.26866, %bb.bd ], [ %.33873, %.loopexit2167 ] ; 3 uses
  %.31 = phi i32 [ %.27, %bb.bd ], [ %i.ib, %.loopexit2167 ] ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = icmp ult i32 %.31950, %i.hf
  br i1 %i.hg, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.hh = icmp ult i32 %.31, 3
  br i1 %i.hh, label %.preheader2166, label %.loopexit2167

.preheader2166:                                   ; preds = %bb.bf, %bb.g
  %.291400.ph = phi i64 [ %.271398, %bb.bf ], [ %i.aq, %bb.g ] ; 3 uses
  %.291302.ph = phi ptr [ %.271300, %bb.bf ], [ %4, %bb.g ] ; 3 uses
  %.321213.ph = phi ptr [ %.301211, %bb.bf ], [ %1, %bb.g ] ; 5 uses
  %.331122.ph = phi i64 [ %.311120, %bb.bf ], [ %i.ai, %bb.g ] ; 3 uses
  %.331041.ph = phi i32 [ %.311039, %bb.bf ], [ %i.ao, %bb.g ] ; 3 uses
  %.33952.ph = phi i32 [ %.31950, %bb.bf ], [ %i.am, %bb.g ] ; 3 uses
  %.32872.ph = phi i32 [ %.30870, %bb.bf ], [ %i.ak, %bb.g ] ; 3 uses
  %.33.ph = phi i32 [ %.31, %bb.bf ], [ %.84.fr2003, %bb.g ] ; 4 uses
  %.not1556 = icmp ult ptr %.321213.ph, %i.g
  br i1 %.not1556, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %.preheader2166
  %.321213.lcssa = phi ptr [ %.321213.ph, %.preheader2166 ], [ %i.hj, %bb.bi ]
  %.331122.lcssa = phi i64 [ %.331122.ph, %.preheader2166 ], [ %i.ho, %bb.bi ]
  %.33.lcssa = phi i32 [ %.33.ph, %.preheader2166 ], [ %i.hp, %bb.bi ]
  %i.hi = and i32 %6, 2
  %.not1557 = icmp eq i32 %i.hi, 0
  store i32 14, ptr %0, align 8
  %spec.select1693 = select i1 %.not1557, i32 -4, i32 1
  br label %.thread1657

bb.bh:                                            ; preds = %.preheader2166
  %i.hj = getelementptr inbounds nuw i8, ptr %.321213.ph, i64 1 ; 4 uses
  %i.hk = load i8, ptr %.321213.ph, align 1
  %i.hl = zext i8 %i.hk to i64
  %i.hm = zext nneg i32 %.33.ph to i64
  %i.hn = shl i64 %i.hl, %i.hm
  %i.ho = or i64 %i.hn, %.331122.ph               ; 2 uses
  %i.hp = add i32 %.33.ph, 8                      ; 4 uses
  %i.hq = icmp ult i32 %i.hp, 3
  br i1 %i.hq, label %bb.bi, label %.loopexit2167

bb.bi:                                            ; preds = %bb.bh
  %.not1556.1 = icmp ult ptr %i.hj, %i.g
  br i1 %.not1556.1, label %bb.bj, label %bb.bg

bb.bj:                                            ; preds = %bb.bi
  %i.hr = getelementptr inbounds nuw i8, ptr %.321213.ph, i64 2
  %i.hs = load i8, ptr %i.hj, align 1
  %i.ht = zext i8 %i.hs to i64
  %i.hu = zext nneg i32 %i.hp to i64
  %i.hv = shl nuw nsw i64 %i.ht, %i.hu
  %i.hw = or i64 %i.hv, %.331122.ph
  %i.hx = add nsw i32 %.33.ph, 16
  br label %.loopexit2167

.loopexit2167:                                    ; preds = %bb.bh, %bb.bj, %bb.bf
  %.301401 = phi i64 [ %.271398, %bb.bf ], [ %.291400.ph, %bb.bj ], [ %.291400.ph, %bb.bh ]
  %.301303 = phi ptr [ %.271300, %bb.bf ], [ %.291302.ph, %bb.bj ], [ %.291302.ph, %bb.bh ]
  %.331214 = phi ptr [ %.301211, %bb.bf ], [ %i.hj, %bb.bh ], [ %i.hr, %bb.bj ]
  %.341123 = phi i64 [ %.311120, %bb.bf ], [ %i.ho, %bb.bh ], [ %i.hw, %bb.bj ] ; 2 uses
  %.341042 = phi i32 [ %.311039, %bb.bf ], [ %.331041.ph, %bb.bj ], [ %.331041.ph, %bb.bh ]
  %.34953 = phi i32 [ %.31950, %bb.bf ], [ %.33952.ph, %bb.bj ], [ %.33952.ph, %bb.bh ] ; 2 uses
  %.33873 = phi i32 [ %.30870, %bb.bf ], [ %.32872.ph, %bb.bj ], [ %.32872.ph, %bb.bh ]
  %.34 = phi i32 [ %.31, %bb.bf ], [ %i.hp, %bb.bh ], [ %i.hx, %bb.bj ]
  %i.hy = trunc i64 %.341123 to i8
  %i.hz = and i8 %i.hy, 7
  %i.ia = lshr i64 %.341123, 3
  %i.ib = add i32 %.34, -3
  %i.ic = zext i32 %.34953 to i64
  %i.id = getelementptr inbounds nuw i8, ptr @s_tdefl_packed_code_size_syms_swizzle, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1
  %i.if = zext i8 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.if
  store i8 %i.hz, ptr %i.ig, align 1
  %i.ih = add nuw i32 %.34953, 1
  br label %bb.be

bb.bk:                                            ; preds = %bb.be
  store i32 19, ptr %i.he, align 4
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 8
  br label %.loopexit1734

.loopexit1734:                                    ; preds = %bb.bk, %.lr.ph1763.preheader, %bb.cx
  %i.ii = phi i32 [ %i.vf, %bb.cx ], [ %.pre.pre, %bb.bk ], [ 1, %.lr.ph1763.preheader ] ; 3 uses
  %.321403 = phi i64 [ %.431414, %bb.cx ], [ %.271398, %bb.bk ], [ %.31374, %.lr.ph1763.preheader ] ; 4 uses
  %.321305 = phi ptr [ %.431316, %bb.cx ], [ %.271300, %bb.bk ], [ %.31276, %.lr.ph1763.preheader ] ; 4 uses
  %.351216 = phi ptr [ %.461227, %bb.cx ], [ %.301211, %bb.bk ], [ %.61187, %.lr.ph1763.preheader ] ; 4 uses
  %.361125 = phi i64 [ %.471136, %bb.cx ], [ %.311120, %bb.bk ], [ %i.ct, %.lr.ph1763.preheader ] ; 4 uses
  %.361044 = phi i32 [ %.471055, %bb.cx ], [ %.311039, %bb.bk ], [ %.71015, %.lr.ph1763.preheader ] ; 4 uses
  %.36955 = phi i32 [ %.47966, %bb.cx ], [ %.31950, %bb.bk ], [ %.8927, %.lr.ph1763.preheader ] ; 3 uses
  %.35875 = phi i32 [ %.45885, %bb.cx ], [ %.30870, %bb.bk ], [ %.7847, %.lr.ph1763.preheader ] ; 4 uses
  %.36 = phi i32 [ %.47, %bb.cx ], [ %.31, %bb.bk ], [ %i.cu, %.lr.ph1763.preheader ] ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ik = icmp sgt i32 %i.ii, -1
  br i1 %i.ik, label %bb.bl, label %.preheader2129

bb.bl:                                            ; preds = %.loopexit1734
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.im = zext nneg i32 %i.ii to i64              ; 4 uses
  %i.in = getelementptr inbounds nuw [2048 x i8], ptr %i.il, i64 %i.im ; 3 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.im
  %i.ip = load ptr, ptr %i.io, align 8            ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.im
  %i.ir = load ptr, ptr %i.iq, align 8            ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.in, i8 0, i64 2048, i1 false)
  switch i32 %i.ii, label %bb.bo [
    i32 0, label %bb.bm
    i32 1, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1152) %i.v, i8 0, i64 1152, i1 false)
  br label %tinfl_clear_tree.exit

bb.bn:                                            ; preds = %bb.bl
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.w, i8 0, i64 128, i1 false)
  br label %tinfl_clear_tree.exit

bb.bo:                                            ; preds = %bb.bl
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %i.y, i8 0, i64 76, i1 false)
  br label %tinfl_clear_tree.exit

tinfl_clear_tree.exit:                            ; preds = %bb.bm, %bb.bn, %bb.bo
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.im
  %i.iu = load i32, ptr %i.it, align 4            ; 3 uses
  %.not1839 = icmp eq i32 %i.iu, 0
  br i1 %.not1839, label %._crit_edge1773, label %.lr.ph1772.preheader

.lr.ph1772.preheader:                             ; preds = %tinfl_clear_tree.exit
  %wide.trip.count = zext i32 %i.iu to i64        ; 2 uses
  %xtraiter2182 = and i64 %wide.trip.count, 3     ; 3 uses
  %i.iv = icmp ult i32 %i.iu, 4
  br i1 %i.iv, label %.lr.ph1772.epil.preheader, label %.lr.ph1772.preheader.new

.lr.ph1772.preheader.new:                         ; preds = %.lr.ph1772.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph1772

.lr.ph1772:                                       ; preds = %.lr.ph1772, %.lr.ph1772.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph1772.preheader.new ], [ %indvars.iv.next.3, %.lr.ph1772 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1772.preheader.new ], [ %niter.next.3, %.lr.ph1772 ]
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 %indvars.iv
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = zext i8 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.iy ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4
  %i.jb = add i32 %i.ja, 1
  store i32 %i.jb, ptr %i.iz, align 4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ir, i64 %indvars.iv
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 1
  %i.je = load i8, ptr %i.jd, align 1
  %i.jf = zext i8 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.jf ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4
  %i.ji = add i32 %i.jh, 1
  store i32 %i.ji, ptr %i.jg, align 4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ir, i64 %indvars.iv
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.jl = load i8, ptr %i.jk, align 1
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.jm ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4
  %i.jp = add i32 %i.jo, 1
  store i32 %i.jp, ptr %i.jn, align 4
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ir, i64 %indvars.iv
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 3
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = zext i8 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.jt ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4
  %i.jw = add i32 %i.jv, 1
  store i32 %i.jw, ptr %i.ju, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1773.loopexit.unr-lcssa, label %.lr.ph1772

._crit_edge1773.loopexit.unr-lcssa:               ; preds = %.lr.ph1772
  %lcmp.mod2183.not = icmp eq i64 %xtraiter2182, 0
  br i1 %lcmp.mod2183.not, label %._crit_edge1773.loopexit, label %.lr.ph1772.epil.preheader

.lr.ph1772.epil.preheader:                        ; preds = %._crit_edge1773.loopexit.unr-lcssa, %.lr.ph1772.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph1772.preheader ], [ %indvars.iv.next.3, %._crit_edge1773.loopexit.unr-lcssa ]
  %lcmp.mod2184 = icmp ne i64 %xtraiter2182, 0
  tail call void @llvm.assume(i1 %lcmp.mod2184)
  br label %.lr.ph1772.epil

.lr.ph1772.epil:                                  ; preds = %.lr.ph1772.epil, %.lr.ph1772.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph1772.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph1772.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1772.epil.preheader ], [ %epil.iter.next, %.lr.ph1772.epil ]
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ir, i64 %indvars.iv.epil
  %i.jy = load i8, ptr %i.jx, align 1
  %i.jz = zext i8 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.jz ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4
  %i.kc = add i32 %i.kb, 1
  store i32 %i.kc, ptr %i.ka, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2182
  br i1 %epil.iter.cmp.not, label %._crit_edge1773.loopexit, label %.lr.ph1772.epil, !llvm.loop !17

._crit_edge1773.loopexit:                         ; preds = %.lr.ph1772.epil, %._crit_edge1773.loopexit.unr-lcssa
  %.phi.trans.insert1905 = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.pre1906 = load i32, ptr %.phi.trans.insert1905, align 4
  %.phi.trans.insert1907 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre1908 = load i32, ptr %.phi.trans.insert1907, align 8
  %.phi.trans.insert1909 = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.pre1910 = load i32, ptr %.phi.trans.insert1909, align 4
  %.phi.trans.insert1911 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre1912 = load i32, ptr %.phi.trans.insert1911, align 16
  %.phi.trans.insert1913 = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.pre1914 = load i32, ptr %.phi.trans.insert1913, align 4
  %.phi.trans.insert1915 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.pre1916 = load i32, ptr %.phi.trans.insert1915, align 8
  %.phi.trans.insert1917 = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %.pre1918 = load i32, ptr %.phi.trans.insert1917, align 4
  %.phi.trans.insert1919 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.pre1920 = load i32, ptr %.phi.trans.insert1919, align 16
  %.phi.trans.insert1921 = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %.pre1922 = load i32, ptr %.phi.trans.insert1921, align 4
  %.phi.trans.insert1923 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.pre1924 = load i32, ptr %.phi.trans.insert1923, align 8
  %.phi.trans.insert1925 = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %.pre1926 = load i32, ptr %.phi.trans.insert1925, align 4
  %.phi.trans.insert1927 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.pre1928 = load i32, ptr %.phi.trans.insert1927, align 16
  %.phi.trans.insert1929 = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %.pre1930 = load i32, ptr %.phi.trans.insert1929, align 4
  %.phi.trans.insert1931 = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.pre1932 = load i32, ptr %.phi.trans.insert1931, align 8
  br label %._crit_edge1773

._crit_edge1773:                                  ; preds = %._crit_edge1773.loopexit, %tinfl_clear_tree.exit
  %i.kd = phi i32 [ %.pre1932, %._crit_edge1773.loopexit ], [ 0, %tinfl_clear_tree.exit ] ; 2 uses
  %i.ke = phi i32 [ %.pre1930, %._crit_edge1773.loopexit ], [ 0, %tinfl_clear_tree.exit ] ; 2 uses
  %i.kf = phi i32 [ %.pre1928, %._crit_edge1773.loopexit ], [ 0, %tinfl_clear_tree.exit ] ; 2 uses
  %i.kg = phi i32 [ %.pre1926, %._crit_edge1773.loopexit ], [ 0, %tinfl_clear_tree.exit ] ; 2 uses
  %i.kh = phi i32 [ %.pre1924, %._crit_edge1773.loopexit ], [ 0, %tinfl_clear_tree.exit ] ; 2 uses
  %i.ki = phi i32 [ %.pre1922, %._crit_edge1773.loopexit ], [ 0, %tinfl_clear_tree.exit ] ; 2 uses
  %i.kj = phi i32 [ %.pre1920, %._crit_edge1773.loopexit ], [ 0, %tinfl_clear_tree.exit ] ; 2 uses
  %i.kk = phi i32 [ %.pre1918, %._crit_edge1773.loopexit ], [ 0, %tinfl_clear_tree.exit ] ; 2 uses
  %i.kl = phi i32 [ %.pre1916, %._crit_edge1773.loopexit ], [ 0, %tinfl_clear_tree.exit ] ; 2 uses
  %i.km = phi i32 [ %.pre1914, %._crit_edge1773.loopexit ], [ 0, %tinfl_clear_tree.exit ] ; 2 uses
  %i.kn = phi i32 [ %.pre1912, %._crit_edge1773.loopexit ], [ 0, %tinfl_clear_tree.exit ] ; 2 uses
  %i.ko = phi i32 [ %.pre1910, %._crit_edge1773.loopexit ], [ 0, %tinfl_clear_tree.exit ] ; 2 uses
  %i.kp = phi i32 [ %.pre1908, %._crit_edge1773.loopexit ], [ 0, %tinfl_clear_tree.exit ] ; 2 uses
  %i.kq = phi i32 [ %.pre1906, %._crit_edge1773.loopexit ], [ 0, %tinfl_clear_tree.exit ] ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.kr, align 4
  store i32 0, ptr %i.d, align 16
  %i.ks = shl i32 %i.kq, 1                        ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.ks, ptr %i.kt, align 8
  %i.ku = add i32 %i.kp, %i.kq
  %i.kv = add i32 %i.kp, %i.ks
  %i.kw = shl i32 %i.kv, 1                        ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.kw, ptr %i.kx, align 4
  %i.ky = add i32 %i.ko, %i.ku
  %i.kz = add i32 %i.ko, %i.kw
  %i.la = shl i32 %i.kz, 1                        ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.la, ptr %i.lb, align 16
  %i.lc = add i32 %i.kn, %i.ky
  %i.ld = add i32 %i.kn, %i.la
  %i.le = shl i32 %i.ld, 1                        ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %i.le, ptr %i.lf, align 4
  %i.lg = add i32 %i.km, %i.lc
  %i.lh = add i32 %i.km, %i.le
  %i.li = shl i32 %i.lh, 1                        ; 2 uses
end_hunk_0
begin_hunk_1_@zip_entries_deletebyindex:bb.a
.lr.ph.i.i.epil.preheader:                        ; preds = %zip_entry_setbyindex.exit.loopexit.unr-lcssa, %.preheader.i.i
  %.15685.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %i.bp, %zip_entry_setbyindex.exit.loopexit.unr-lcssa ]
  %lcmp.mod91 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod91)
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.15685.i.i.epil.init ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = icmp ugt i64 %i.bs, %.052.lcssa.i.i
  br i1 %i.bt, label %bb.p, label %zip_entry_setbyindex.exit

bb.p:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8
  %.not67.i.i.epil = icmp eq i32 %i.bv, 1
  %spec.store.select.epil = select i1 %.not67.i.i.epil, i32 1, i32 2
  store i32 %spec.store.select.epil, ptr %i.bu, align 8
  br label %zip_entry_setbyindex.exit

zip_entry_setbyindex.exit:                        ; preds = %zip_entry_setbyindex.exit.loopexit.unr-lcssa, %bb.p, %.lr.ph.i.i.epil.preheader, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.bw = call fastcc i32 @zip_entry_finalize(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i64 noundef range(i64 -1, 4294967296) %i.g) ; 2 uses
  %spec.select.i = sext i32 %i.bw to i64
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %zip_entry_setbyindex.exit
  %i.by = call fastcc i64 @zip_entries_delete_mark(ptr noundef %0, ptr noundef %i.h, i32 noundef %i.f)
  br label %.sink.split

.sink.split:                                      ; preds = %zip_entry_setbyindex.exit, %zip_entry_markbyindex.exit.thread13.i, %bb.d, %bb.q
  %.0.ph = phi i64 [ %i.by, %bb.q ], [ %spec.select.i, %zip_entry_setbyindex.exit ], [ -1, %bb.d ], [ %.259.i.ph.i, %zip_entry_markbyindex.exit.thread13.i ]
  call void @free(ptr noundef nonnull %i.h) #36
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %zip_entries_total.exit, %bb.c, %bb.a, %bb.b
  %.0 = phi i64 [ 0, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ], [ -21, %zip_entries_total.exit ], [ %.0.ph, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -25, 1) i32 @zip_stream_extract(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #9 {
bb.a:
  %5 = alloca %struct.mz_zip_archive, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %5, i8 0, i64 112, i1 false)
  %i.c = call i32 @mz_zip_reader_init_mem(ptr noundef nonnull %5, ptr noundef nonnull %0, i64 noundef %1, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call fastcc i32 @zip_archive_extract(ptr noundef %5, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -25, 1) i32 @zip_archive_extract(ptr nofree noundef nonnull captures(address_is_null) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) unnamed_addr #9 {
bb.a:
  %i.a = alloca [513 x i8], align 16              ; 7 uses
  %i.b = alloca [513 x i8], align 16              ; 12 uses
  %i.c = alloca [513 x i8], align 16              ; 6 uses
  %4 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(513) %i.b, i8 0, i64 513, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(513) %i.c, i8 0, i64 513, i1 false)
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39 ; 4 uses
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %i.f = icmp ugt i64 %i.e, 512
  br i1 %i.f, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1112) %4, i8 0, i64 1112, i1 false)
  %i.g = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %1) #36 ; 0 uses
  %i.h = getelementptr i8, ptr %i.b, i64 %i.d     ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %bb.c [
    i8 47, label %bb.d
    i8 92, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store i8 47, ptr %i.h, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.034 = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = sub nsw i64 512, %.034
  %spec.select = call i64 @llvm.umin.i64(i64 %i.k, i64 512)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8              ; 3 uses
  %.not94 = icmp eq i32 %i.m, 0
  br i1 %.not94, label %zip_name_normalize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %.034
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.not53 = icmp eq ptr %2, null
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %.03574 = phi i32 [ 0, %.lr.ph ], [ %.03574.be, %.backedge.backedge ] ; 9 uses
  %i.v = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not10.i.i = icmp eq ptr %i.v, null
  br i1 %.not10.i.i, label %mz_zip_reader_file_stat.exit, label %bb.e

bb.e:                                             ; preds = %.backedge
  %i.w = load i32, ptr %i.l, align 8
  %.not11.i.i = icmp ult i32 %.03574, %i.w
  br i1 %.not11.i.i, label %bb.f, label %mz_zip_reader_file_stat.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = zext i32 %.03574 to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ad
  br label %mz_zip_reader_file_stat.exit

mz_zip_reader_file_stat.exit:                     ; preds = %.backedge, %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.ae, %bb.f ], [ null, %bb.e ], [ null, %.backedge ]
  %i.af = call fastcc range(i32 0, 2) i32 @mz_zip_file_stat_internal(ptr noundef nonnull %0, i32 noundef %.03574, ptr noundef %.0.i.i, ptr noundef nonnull %4, ptr noundef null)
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %zip_name_normalize.exit, label %bb.g

bb.g:                                             ; preds = %mz_zip_reader_file_stat.exit
  %i.ag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #39 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %zip_name_normalize.exit, label %.preheader66.i

.preheader66.i:                                   ; preds = %bb.g, %.critedge.i
  %.045.i = phi ptr [ %i.aj, %.critedge.i ], [ %i.o, %bb.g ] ; 3 uses
  %i.ai = load i8, ptr %.045.i, align 1
  switch i8 %i.ai, label %.preheader.i [
    i8 47, label %.critedge.i
    i8 92, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %.preheader66.i, %.preheader66.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.045.i, i64 1
  br label %.preheader66.i

.preheader.i:                                     ; preds = %.preheader66.i, %bb.j
  %.069.i = phi i64 [ %.1.i, %bb.j ], [ 0, %.preheader66.i ] ; 4 uses
  %.04168.i = phi i64 [ %.2.i, %bb.j ], [ 0, %.preheader66.i ] ; 7 uses
  %.04367.i = phi i64 [ %i.az, %bb.j ], [ 0, %.preheader66.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.045.i, i64 %.04367.i
  %i.al = load i8, ptr %i.ak, align 1             ; 3 uses
  switch i8 %i.al, label %bb.i [
    i8 47, label %bb.h
    i8 92, label %bb.h
  ]

bb.h:                                             ; preds = %.preheader.i, %.preheader.i
  %.not50.i = icmp eq i64 %.069.i, 0
  br i1 %.not50.i, label %bb.j, label %sub_0.i

sub_0.i:                                          ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 %.04168.i ; 3 uses
  %i.an = load i8, ptr %i.am, align 1
  %.not70.i = icmp eq i8 %i.an, 46
  br i1 %.not70.i, label %.tail.i, label %.tail53.thread.i

.tail.i:                                          ; preds = %sub_0.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ap = load i8, ptr %i.ao, align 1
  switch i8 %i.ap, label %.tail53.thread.i [
    i8 0, label %bb.j
    i8 46, label %.tail53.i
  ]

.tail53.i:                                        ; preds = %.tail.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.j, label %.tail53.thread.i

.tail53.thread.i:                                 ; preds = %.tail.i, %.tail53.i, %sub_0.i
  %i.at = add i64 %.04168.i, %.069.i              ; 2 uses
  %i.au = add nuw nsw i64 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.at
  store i8 %i.al, ptr %i.av, align 1
  br label %bb.j

bb.i:                                             ; preds = %.preheader.i
  %i.aw = getelementptr i8, ptr %i.o, i64 %.04168.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 %.069.i
  store i8 %i.al, ptr %i.ax, align 1
  %i.ay = add i64 %.069.i, 1
  br label %bb.j

bb.j:                                             ; preds = %.tail.i, %bb.i, %.tail53.thread.i, %.tail53.i, %bb.h
  %.2.i = phi i64 [ %.04168.i, %bb.i ], [ %i.au, %.tail53.thread.i ], [ %.04168.i, %.tail53.i ], [ %.04168.i, %.tail.i ], [ %.04168.i, %bb.h ] ; 3 uses
  %.1.i = phi i64 [ %i.ay, %bb.i ], [ 0, %.tail53.thread.i ], [ 0, %.tail53.i ], [ 0, %.tail.i ], [ 0, %bb.h ] ; 2 uses
  %i.az = add nuw i64 %.04367.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.az, %i.ag
  br i1 %exitcond.not.i, label %bb.k, label %.preheader.i

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp eq i64 %.1.i, 0
  br i1 %i.ba, label %bb.l, label %sub_058.i

sub_058.i:                                        ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 %.2.i ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1
  %.not73.i = icmp eq i8 %i.bc, 46
  br i1 %.not73.i, label %.tail57.i, label %bb.m

.tail57.i:                                        ; preds = %sub_058.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.be = load i8, ptr %i.bd, align 1
  switch i8 %i.be, label %bb.m [
    i8 0, label %bb.l
    i8 46, label %.tail61.i
  ]

.tail61.i:                                        ; preds = %.tail57.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.tail57.i, %.tail61.i, %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 %.2.i
  store i8 0, ptr %i.bi, align 1
  br label %bb.m

bb.m:                                             ; preds = %.tail57.i, %bb.l, %.tail61.i, %sub_058.i
  %i.bj = call ptr @strncpy(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, i64 noundef %spec.select) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(513) %i.a, i8 0, i64 513, i1 false)
  %i.bk = load i8, ptr %i.b, align 16             ; 2 uses
  %.not29.i = icmp eq i8 %i.bk, 0
  br i1 %.not29.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  store i8 %i.bk, ptr %i.a, align 16
  %i.bl = load i8, ptr %i.q, align 1              ; 2 uses
  %.not.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 1, %.lr.ph.preheader.i ] ; 3 uses
  %i.bm = phi i8 [ %i.bu, %bb.q ], [ %i.bl, %.lr.ph.preheader.i ]
  %.02125.i = phi ptr [ %i.bt, %bb.q ], [ %i.q, %.lr.ph.preheader.i ] ; 3 uses
  switch i8 %i.bm, label %bb.q [
    i8 92, label %bb.n
    i8 47, label %bb.o
  ]

bb.n:                                             ; preds = %.lr.ph.i
  store i8 47, ptr %.02125.i, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %i.bn = call i32 @mkdir(ptr noundef nonnull %i.a, i32 noundef 493) #36
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = tail call ptr @__errno_location() #41
  %i.bq = load i32, ptr %i.bp, align 4
  %.not24.i = icmp eq i32 %i.bq, 17
  br i1 %.not24.i, label %bb.q, label %zip_mkpath.exit

bb.q:                                             ; preds = %bb.p, %bb.o, %.lr.ph.i
  %i.br = load i8, ptr %.02125.i, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.02125.i, i64 1 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1             ; 2 uses
  %i.bv = icmp ne i8 %i.bu, 0
  %i.bw = icmp samesign ult i64 %indvars.iv.i, 511
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %i.bx, label %.lr.ph.i, label %.loopexit, !llvm.loop !30

zip_mkpath.exit:                                  ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %zip_name_normalize.exit

.loopexit:                                        ; preds = %bb.q, %bb.m, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.by = load i16, ptr %i.r, align 8
  %i.bz = lshr i16 %i.by, 8
  %trunc = trunc nuw i16 %i.bz to i8
  switch i8 %trunc, label %bb.v [
    i8 3, label %bb.r
    i8 19, label %bb.r
  ]

bb.r:                                             ; preds = %.loopexit, %.loopexit
  %i.ca = load i32, ptr %i.s, align 4
  %i.cb = and i32 %i.ca, 536870912
  %.not47 = icmp eq i32 %i.cb, 0
  br i1 %.not47, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = load i64, ptr %i.t, align 8             ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, 512
  br i1 %i.cd, label %zip_name_normalize.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = call fastcc range(i32 0, 2) i32 @mz_zip_reader_extract_to_mem_no_alloc1(ptr noundef nonnull %0, i32 noundef %.03574, ptr noundef nonnull %i.c, i64 noundef 512, i32 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null)
  %.not51 = icmp eq i32 %i.ce, 0
  br i1 %.not51, label %zip_name_normalize.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cc
  store i8 0, ptr %i.cf, align 1
  %i.cg = call i32 @symlink(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #36
  %.not52 = icmp eq i32 %i.cg, 0
  br i1 %.not52, label %bb.ab, label %zip_name_normalize.exit

bb.v:                                             ; preds = %.loopexit, %bb.r
  %i.ch = load ptr, ptr %i.n, align 8             ; 3 uses
  %.not10.i.i56 = icmp eq ptr %i.ch, null
  br i1 %.not10.i.i56, label %mz_zip_reader_is_file_a_directory.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = load i32, ptr %i.l, align 8
  %.not11.i.i57 = icmp ult i32 %.03574, %i.ci
  br i1 %.not11.i.i57, label %mz_zip_get_cdh.exit.i, label %mz_zip_reader_is_file_a_directory.exit.thread

mz_zip_get_cdh.exit.i:                            ; preds = %bb.w
  %i.cj = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = zext i32 %.03574 to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cp ; 3 uses
  %.not.i58 = icmp eq ptr %i.cj, null
  br i1 %.not.i58, label %mz_zip_reader_is_file_a_directory.exit.thread, label %bb.x

mz_zip_reader_is_file_a_directory.exit.thread:    ; preds = %bb.v, %bb.w, %mz_zip_get_cdh.exit.i
  store i32 24, ptr %i.u, align 4
  br label %bb.z

bb.x:                                             ; preds = %mz_zip_get_cdh.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.cs = load i16, ptr %i.cr, align 1            ; 2 uses
  %.not18.i = icmp eq i16 %i.cs, 0
  br i1 %.not18.i, label %mz_zip_reader_is_file_a_directory.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = zext i16 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 45
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = icmp eq i8 %i.cw, 47
  br i1 %i.cx, label %mz_zip_reader_is_file_a_directory.exit.thread68, label %mz_zip_reader_is_file_a_directory.exit

mz_zip_reader_is_file_a_directory.exit:           ; preds = %bb.x, %bb.y
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 38
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = and i8 %i.cz, 16
  %.not48 = icmp eq i8 %i.da, 0
  br i1 %.not48, label %bb.z, label %mz_zip_reader_is_file_a_directory.exit.thread68

bb.z:                                             ; preds = %mz_zip_reader_is_file_a_directory.exit.thread, %mz_zip_reader_is_file_a_directory.exit
  %i.db = call i32 @mz_zip_reader_extract_to_file(ptr noundef nonnull %0, i32 noundef %.03574, ptr noundef nonnull %i.b, i32 noundef 0)
  %.not49 = icmp eq i32 %i.db, 0
  br i1 %.not49, label %zip_name_normalize.exit, label %mz_zip_reader_is_file_a_directory.exit.thread68

mz_zip_reader_is_file_a_directory.exit.thread68:  ; preds = %bb.y, %bb.z, %mz_zip_reader_is_file_a_directory.exit
  %i.dc = load i32, ptr %i.s, align 4
  %i.dd = lshr i32 %i.dc, 16                      ; 2 uses
  %.not50 = icmp eq i32 %i.dd, 0
  br i1 %.not50, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %mz_zip_reader_is_file_a_directory.exit.thread68
  %i.de = call i32 @chmod(ptr noundef nonnull %i.b, i32 noundef %i.dd) #36
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %zip_name_normalize.exit, label %bb.ab

bb.ab:                                            ; preds = %mz_zip_reader_is_file_a_directory.exit.thread68, %bb.aa, %bb.u
  br i1 %.not53, label %bb.ad, label %bb.ac

end_hunk_1
begin_hunk_2_@zip_create:bb.a
    i8 92, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.115.i = phi ptr [ %i.bb, %bb.u ], [ %.014.i, %bb.t ]
  %.1.i = phi i32 [ %.0.i, %bb.u ], [ 0, %bb.t ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  br label %bb.t

bb.w:                                             ; preds = %bb.t
  %i.bd = trunc i32 %i.az to i16                  ; 2 uses
  %i.be = and i16 %i.bd, 4095
  %i.bf = and i32 %i.az, 61440                    ; 7 uses
  %i.bg = icmp eq i32 %i.bf, 16384                ; 2 uses
  %spec.select = select i1 %i.bg, i16 %i.bd, i16 %i.be ; 2 uses
  %i.bh = icmp eq i32 %i.bf, 32768
  %i.bi = or i16 %spec.select, -32768
  %.1 = select i1 %i.bh, i16 %i.bi, i16 %spec.select ; 2 uses
  %i.bj = icmp eq i32 %i.bf, 40960
  %i.bk = or i16 %.1, -24576
  %.2 = select i1 %i.bj, i16 %i.bk, i16 %.1       ; 2 uses
  %i.bl = icmp eq i32 %i.bf, 24576
  %i.bm = or i16 %.2, 24576
  %.3 = select i1 %i.bl, i16 %i.bm, i16 %.2       ; 2 uses
  %i.bn = icmp eq i32 %i.bf, 8192
  %i.bo = or i16 %.3, 8192
  %.4 = select i1 %i.bn, i16 %i.bo, i16 %.3       ; 2 uses
  %i.bp = icmp eq i32 %i.bf, 4096
  %i.bq = or i16 %.4, 4096
  %.5 = select i1 %i.bp, i16 %i.bq, i16 %.4       ; 2 uses
  %i.br = icmp eq i32 %i.bf, 49152
  %i.bs = or i16 %.5, -16384
  %.6 = select i1 %i.br, i16 %i.bs, i16 %.5
  %i.bt = zext i16 %.6 to i32
  %i.bu = shl nuw i32 %i.bt, 16
  %i.bv = lshr i32 %i.az, 7
  %.lobit = and i32 %i.bv, 1
  %i.bw = or disjoint i32 %i.bu, %.lobit
  %i.bx = xor i32 %i.bw, 1                        ; 2 uses
  %i.by = or disjoint i32 %i.bx, 16
  %.025 = select i1 %i.bg, i32 %i.by, i32 %i.bx
  %i.bz = load i8, ptr %.014.i, align 1
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.x, label %zip_basename.exit

bb.x:                                             ; preds = %bb.w
  %i.cb = load i8, ptr %i.ax, align 1             ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 47
  br i1 %i.cc, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = icmp eq i8 %i.cb, 92
  %i.ce = icmp ne i32 %.0.i, 0
  %or.cond.i = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond.i, label %bb.aa, label %zip_basename.exit

bb.z:                                             ; preds = %bb.x
  %.old1.not.i = icmp eq i32 %.0.i, 0
  br i1 %.old1.not.i, label %zip_basename.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cf = getelementptr inbounds i8, ptr %.014.i, i64 -1
  br label %zip_basename.exit

zip_basename.exit:                                ; preds = %bb.w, %bb.y, %bb.z, %bb.aa
  %.2.i = phi ptr [ %i.cf, %bb.aa ], [ %.014.i, %bb.z ], [ %.014.i, %bb.y ], [ %.014.i, %bb.w ]
  %i.cg = call i32 @mz_zip_writer_add_file(ptr noundef nonnull %3, ptr noundef nonnull %.2.i, ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.1, i16 noundef zeroext 0, i32 noundef 6, i32 noundef %.025)
  %.not37 = icmp eq i32 %i.cg, 0
  br i1 %.not37, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.p, %bb.q, %bb.r, %zip_basename.exit, %bb.o
  %.229 = phi i32 [ 0, %bb.o ], [ 0, %bb.p ], [ -19, %zip_basename.exit ], [ -19, %bb.r ], [ -2, %bb.q ] ; 6 uses
  %i.ch = call i32 @mz_zip_writer_finalize_archive(ptr noundef nonnull %3) ; 0 uses
  %i.ci = load ptr, ptr %i.f, align 8             ; 10 uses
  %.not38.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.h, align 8
  %.not39.i = icmp eq ptr %i.cj, null
  %or.cond66 = select i1 %.not38.i, i1 true, i1 %.not39.i
  br i1 %or.cond66, label %mz_zip_writer_end_internal.exit, label %bb.ab

bb.ab:                                            ; preds = %.thread
  %i.ck = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not40.i = icmp eq ptr %i.ck, null
  br i1 %.not40.i, label %mz_zip_writer_end_internal.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i32, ptr %i.g, align 4
  %i.cm = and i32 %i.cl, -2
  %switch.i = icmp eq i32 %i.cm, 2
  br i1 %switch.i, label %bb.ad, label %mz_zip_writer_end_internal.exit

bb.ad:                                            ; preds = %bb.ac
  store ptr null, ptr %i.f, align 8
  %i.cn = load ptr, ptr %i.k, align 8
  %i.co = load ptr, ptr %i.ci, align 8
  call void %i.ck(ptr noundef %i.cn, ptr noundef %i.co) #36, !inline_history !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i8 0, i64 32, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 32 ; 2 uses
  %i.cq = load ptr, ptr %i.i, align 8
  %i.cr = load ptr, ptr %i.k, align 8
  %i.cs = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef %i.cr, ptr noundef %i.cs) #36, !inline_history !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i8 0, i64 32, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 64 ; 2 uses
  %i.cu = load ptr, ptr %i.i, align 8
  %i.cv = load ptr, ptr %i.k, align 8
  %i.cw = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef %i.cv, ptr noundef %i.cw) #36, !inline_history !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i8 0, i64 32, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ci, i64 112 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not43.i42 = icmp eq ptr %i.cy, null
  br i1 %.not43.i42, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = load i32, ptr %i.b, align 8
  %i.da = icmp eq i32 %i.cz, 4
  br i1 %i.da, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.db = call i32 @fclose(ptr noundef nonnull %i.cy)
  %i.dc = icmp eq i32 %i.db, -1
  br i1 %i.dc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 21, ptr %i.dd, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  store ptr null, ptr %i.cx, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad
  %i.de = load ptr, ptr %i.c, align 8
  %i.df = icmp eq ptr %i.de, @mz_zip_heap_write_func
  br i1 %i.df, label %bb.aj, label %mz_zip_writer_end_internal.exit.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ci, i64 128 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %.not45.i = icmp eq ptr %i.dh, null
  br i1 %.not45.i, label %mz_zip_writer_end_internal.exit.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = load ptr, ptr %i.i, align 8
  %i.dj = load ptr, ptr %i.k, align 8
  call void %i.di(ptr noundef %i.dj, ptr noundef nonnull %i.dh) #36, !inline_history !10
  store ptr null, ptr %i.dg, align 8
  br label %mz_zip_writer_end_internal.exit.sink.split

mz_zip_writer_end_internal.exit.sink.split:       ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.l, %bb.m, %bb.n
  %.sink92 = phi ptr [ %i.r, %bb.l ], [ %i.r, %bb.n ], [ %i.r, %bb.m ], [ %i.ci, %bb.ak ], [ %i.ci, %bb.aj ], [ %i.ci, %bb.ai ]
  %.030.ph = phi i32 [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %bb.m ], [ %.229, %bb.ak ], [ %.229, %bb.aj ], [ %.229, %bb.ai ]
  %i.dk = load ptr, ptr %i.i, align 8
  %i.dl = load ptr, ptr %i.k, align 8
  call void %i.dk(ptr noundef %i.dl, ptr noundef nonnull %.sink92) #36
  br label %mz_zip_writer_end_internal.exit

mz_zip_writer_end_internal.exit:                  ; preds = %mz_zip_writer_end_internal.exit.sink.split, %.thread, %bb.ab, %bb.ac, %bb.f, %bb.e, %mz_zip_set_error.exit48.i, %bb.c, %bb.a, %bb.b
  %.030 = phi i32 [ -22, %bb.a ], [ %.229, %bb.ab ], [ -22, %bb.b ], [ %.229, %.thread ], [ -1, %bb.c ], [ -1, %mz_zip_set_error.exit48.i ], [ -1, %bb.e ], [ -1, %bb.f ], [ %.229, %bb.ac ], [ %.030.ph, %mz_zip_writer_end_internal.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i32 %.030
}

; Function Attrs: nounwind uwtable
define range(i32 -25, 1) i32 @zip_extract(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #9 {
bb.a:
  %4 = alloca %struct.mz_zip_archive, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %4, i8 0, i64 112, i1 false)
  %i.c = call range(i32 0, 2) i32 @mz_zip_reader_init_file_v2(ptr noundef nonnull %4, ptr noundef nonnull readonly %0, i32 noundef 0, i64 noundef 0, i64 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call fastcc i32 @zip_archive_extract(ptr noundef %4, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ -22, %bb.a ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tdefl_compress_block(ptr nofree noundef nonnull %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #15 {
bb.a:
  %i.a = alloca [320 x i8], align 16              ; 5 uses
  %i.b = alloca [320 x i8], align 16              ; 24 uses
  %i.c = alloca [33 x i32], align 16              ; 49 uses
  %i.d = alloca [33 x i32], align 16              ; 18 uses
  %i.e = alloca [33 x i32], align 16              ; 21 uses
  %i.f = alloca [33 x i32], align 16              ; 18 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 36682      ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.g, i8 8, i64 144, i1 false)
  %scevgep.i = getelementptr i8, ptr %0, i64 36826
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %scevgep.i, i8 9, i64 112, i1 false)
  %scevgep73.i = getelementptr i8, ptr %0, i64 36938
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %scevgep73.i, i8 7, i64 24, i1 false)
  %scevgep74.i = getelementptr i8, ptr %0, i64 36962
  store i64 578721382704613384, ptr %scevgep74.i, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36970 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.h, i8 5, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.e, i8 0, i64 132, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.i.3, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 288
  br i1 %exitcond.not.i.i.3, label %.loopexit.loopexit.i.i, label %bb.c

.loopexit.loopexit.i.i:                           ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = shl i32 %i.al, 1                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = add nsw i32 %i.ap, %i.am
  %i.ar = shl i32 %i.aq, 1                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.au = load i32, ptr %i.at, align 4
  %i.av = add nsw i32 %i.au, %i.ar
  %i.aw = shl i32 %i.av, 1                        ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.aw, ptr %i.ax, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.az = load i32, ptr %i.ay, align 16
  %i.ba = add nsw i32 %i.az, %i.aw
  %i.bb = shl i32 %i.ba, 1                        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.bb, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add nsw i32 %i.be, %i.bb
  %i.bg = shl i32 %i.bf, 1                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.bg, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = add nsw i32 %i.bj, %i.bg
  %i.bl = shl i32 %i.bk, 1                        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 %i.bl, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add nsw i32 %i.bo, %i.bl
  %i.bq = shl i32 %i.bp, 1                        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.bq, ptr %i.br, align 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bt = load i32, ptr %i.bs, align 16
  %i.bu = add nsw i32 %i.bt, %i.bq
  %i.bv = shl i32 %i.bu, 1                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 %i.bv, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = add nsw i32 %i.by, %i.bv
  %i.ca = shl i32 %i.bz, 1                        ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = add nsw i32 %i.cd, %i.ca
  %i.cf = shl i32 %i.ce, 1                        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 %i.cf, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = add nsw i32 %i.ci, %i.cf
  %i.ck = shl i32 %i.cj, 1                        ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %i.ck, ptr %i.cl, align 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cn = load i32, ptr %i.cm, align 16
  %i.co = add nsw i32 %i.cn, %i.ck
  %i.cp = shl i32 %i.co, 1                        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i32 %i.cp, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = add nsw i32 %i.cs, %i.cp
  %i.cu = shl i32 %i.ct, 1                        ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = add nsw i32 %i.cx, %i.cu
  %i.cz = shl i32 %i.cy, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i32 %i.cz, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 34954
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.loopexit.loopexit.i.i
  %indvars.iv147.i.i = phi i64 [ 0, %.loopexit.loopexit.i.i ], [ %indvars.iv.next148.i.i, %bb.h ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv147.i.i
  %i.dd = load i8, ptr %i.dc, align 1             ; 4 uses
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.df = zext i8 %i.dd to i32                    ; 2 uses
  %i.dg = zext i8 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4            ; 3 uses
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4
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
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.f

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.e
  %.0115.i.i.epil.init = phi i32 [ %i.di, %bb.e ], [ %i.dy, %.unr-lcssa ]
  %.067114.i.i.epil.init = phi i32 [ 0, %bb.e ], [ %i.dx, %.unr-lcssa ]
end_hunk_2
begin_hunk_3_@tdefl_compress_block:bb.a
  %.not.28.i = icmp eq i8 %i.sm, 0
  %spec.select.i = select i1 %.not.28.i, i32 257, i32 258
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.0282.lcssa.i = phi i32 [ 286, %bb.q ], [ 268, %bb.ai ], [ 285, %bb.r ], [ %spec.select.i, %bb.as ], [ 284, %bb.s ], [ 271, %bb.af ], [ 283, %bb.t ], [ 259, %bb.ar ], [ 282, %bb.u ], [ 265, %bb.al ], [ 281, %bb.v ], [ 260, %bb.aq ], [ 280, %bb.w ], [ 270, %bb.ag ], [ 279, %bb.x ], [ 261, %bb.ap ], [ 278, %bb.y ], [ 267, %bb.aj ], [ 277, %bb.z ], [ 262, %bb.ao ], [ 276, %bb.aa ], [ 269, %bb.ah ], [ 275, %bb.ab ], [ 263, %bb.an ], [ 274, %bb.ac ], [ 266, %bb.ak ], [ 273, %bb.ad ], [ 264, %bb.am ], [ 272, %bb.ae ] ; 3 uses
  %i.sn = getelementptr i8, ptr %0, i64 36999
  %i.so = load i8, ptr %i.sn, align 1
  %.not297.i = icmp eq i8 %i.so, 0
  br i1 %.not297.i, label %bb.au, label %.lr.ph.i

bb.au:                                            ; preds = %bb.at
  %i.sp = getelementptr i8, ptr %0, i64 36998
  %i.sq = load i8, ptr %i.sp, align 2
  %.not297.1.i = icmp eq i8 %i.sq, 0
  br i1 %.not297.1.i, label %bb.av, label %.lr.ph.i

bb.av:                                            ; preds = %bb.au
  %i.sr = getelementptr i8, ptr %0, i64 36997
  %i.ss = load i8, ptr %i.sr, align 1
  %.not297.2.i = icmp eq i8 %i.ss, 0
  br i1 %.not297.2.i, label %bb.aw, label %.lr.ph.i

bb.aw:                                            ; preds = %bb.av
  %i.st = getelementptr i8, ptr %0, i64 36996
  %i.su = load i8, ptr %i.st, align 2
  %.not297.3.i = icmp eq i8 %i.su, 0
  br i1 %.not297.3.i, label %bb.ax, label %.lr.ph.i

bb.ax:                                            ; preds = %bb.aw
  %i.sv = getelementptr i8, ptr %0, i64 36995
  %i.sw = load i8, ptr %i.sv, align 1
  %.not297.4.i = icmp eq i8 %i.sw, 0
  br i1 %.not297.4.i, label %bb.ay, label %.lr.ph.i

bb.ay:                                            ; preds = %bb.ax
  %i.sx = getelementptr i8, ptr %0, i64 36994
  %i.sy = load i8, ptr %i.sx, align 2
  %.not297.5.i = icmp eq i8 %i.sy, 0
  br i1 %.not297.5.i, label %bb.az, label %.lr.ph.i

bb.az:                                            ; preds = %bb.ay
  %i.sz = getelementptr i8, ptr %0, i64 36993
  %i.ta = load i8, ptr %i.sz, align 1
  %.not297.6.i = icmp eq i8 %i.ta, 0
  br i1 %.not297.6.i, label %bb.ba, label %.lr.ph.i

bb.ba:                                            ; preds = %bb.az
  %i.tb = getelementptr i8, ptr %0, i64 36992
  %i.tc = load i8, ptr %i.tb, align 2
  %.not297.7.i = icmp eq i8 %i.tc, 0
  br i1 %.not297.7.i, label %bb.bb, label %.lr.ph.i

bb.bb:                                            ; preds = %bb.ba
  %i.td = getelementptr i8, ptr %0, i64 36991
  %i.te = load i8, ptr %i.td, align 1
  %.not297.8.i = icmp eq i8 %i.te, 0
  br i1 %.not297.8.i, label %bb.bc, label %.lr.ph.i

bb.bc:                                            ; preds = %bb.bb
  %i.tf = getelementptr i8, ptr %0, i64 36990
  %i.tg = load i8, ptr %i.tf, align 2
  %.not297.9.i = icmp eq i8 %i.tg, 0
  br i1 %.not297.9.i, label %bb.bd, label %.lr.ph.i

bb.bd:                                            ; preds = %bb.bc
  %i.th = getelementptr i8, ptr %0, i64 36989
  %i.ti = load i8, ptr %i.th, align 1
  %.not297.10.i = icmp eq i8 %i.ti, 0
  br i1 %.not297.10.i, label %bb.be, label %.lr.ph.i

bb.be:                                            ; preds = %bb.bd
  %i.tj = getelementptr i8, ptr %0, i64 36988
  %i.tk = load i8, ptr %i.tj, align 2
  %.not297.11.i = icmp eq i8 %i.tk, 0
  br i1 %.not297.11.i, label %bb.bf, label %.lr.ph.i

bb.bf:                                            ; preds = %bb.be
  %i.tl = getelementptr i8, ptr %0, i64 36987
  %i.tm = load i8, ptr %i.tl, align 1
  %.not297.12.i = icmp eq i8 %i.tm, 0
  br i1 %.not297.12.i, label %bb.bg, label %.lr.ph.i

bb.bg:                                            ; preds = %bb.bf
  %i.tn = getelementptr i8, ptr %0, i64 36986
  %i.to = load i8, ptr %i.tn, align 2
  %.not297.13.i = icmp eq i8 %i.to, 0
  br i1 %.not297.13.i, label %bb.bh, label %.lr.ph.i

bb.bh:                                            ; preds = %bb.bg
  %i.tp = getelementptr i8, ptr %0, i64 36985
  %i.tq = load i8, ptr %i.tp, align 1
  %.not297.14.i = icmp eq i8 %i.tq, 0
  br i1 %.not297.14.i, label %bb.bi, label %.lr.ph.i

bb.bi:                                            ; preds = %bb.bh
  %i.tr = getelementptr i8, ptr %0, i64 36984
  %i.ts = load i8, ptr %i.tr, align 2
  %.not297.15.i = icmp eq i8 %i.ts, 0
  br i1 %.not297.15.i, label %bb.bj, label %.lr.ph.i

bb.bj:                                            ; preds = %bb.bi
  %i.tt = getelementptr i8, ptr %0, i64 36983
  %i.tu = load i8, ptr %i.tt, align 1
  %.not297.16.i = icmp eq i8 %i.tu, 0
  br i1 %.not297.16.i, label %bb.bk, label %.lr.ph.i

bb.bk:                                            ; preds = %bb.bj
  %i.tv = getelementptr i8, ptr %0, i64 36982
  %i.tw = load i8, ptr %i.tv, align 2
  %.not297.17.i = icmp eq i8 %i.tw, 0
  br i1 %.not297.17.i, label %bb.bl, label %.lr.ph.i

bb.bl:                                            ; preds = %bb.bk
  %i.tx = getelementptr i8, ptr %0, i64 36981
  %i.ty = load i8, ptr %i.tx, align 1
  %.not297.18.i = icmp eq i8 %i.ty, 0
  br i1 %.not297.18.i, label %bb.bm, label %.lr.ph.i

bb.bm:                                            ; preds = %bb.bl
  %i.tz = getelementptr i8, ptr %0, i64 36980
  %i.ua = load i8, ptr %i.tz, align 2
  %.not297.19.i = icmp eq i8 %i.ua, 0
  br i1 %.not297.19.i, label %bb.bn, label %.lr.ph.i

bb.bn:                                            ; preds = %bb.bm
  %i.ub = getelementptr i8, ptr %0, i64 36979
  %i.uc = load i8, ptr %i.ub, align 1
  %.not297.20.i = icmp eq i8 %i.uc, 0
  br i1 %.not297.20.i, label %bb.bo, label %.lr.ph.i

bb.bo:                                            ; preds = %bb.bn
  %i.ud = getelementptr i8, ptr %0, i64 36978
  %i.ue = load i8, ptr %i.ud, align 2
  %.not297.21.i = icmp eq i8 %i.ue, 0
  br i1 %.not297.21.i, label %bb.bp, label %.lr.ph.i

bb.bp:                                            ; preds = %bb.bo
  %i.uf = getelementptr i8, ptr %0, i64 36977
  %i.ug = load i8, ptr %i.uf, align 1
  %.not297.22.i = icmp eq i8 %i.ug, 0
  br i1 %.not297.22.i, label %bb.bq, label %.lr.ph.i

bb.bq:                                            ; preds = %bb.bp
  %i.uh = getelementptr i8, ptr %0, i64 36976
  %i.ui = load i8, ptr %i.uh, align 2
  %.not297.23.i = icmp eq i8 %i.ui, 0
  br i1 %.not297.23.i, label %bb.br, label %.lr.ph.i

bb.br:                                            ; preds = %bb.bq
  %i.uj = getelementptr i8, ptr %0, i64 36975
  %i.uk = load i8, ptr %i.uj, align 1
  %.not297.24.i = icmp eq i8 %i.uk, 0
  br i1 %.not297.24.i, label %bb.bs, label %.lr.ph.i

bb.bs:                                            ; preds = %bb.br
  %i.ul = getelementptr i8, ptr %0, i64 36974
  %i.um = load i8, ptr %i.ul, align 2
  %.not297.25.i = icmp eq i8 %i.um, 0
  br i1 %.not297.25.i, label %bb.bt, label %.lr.ph.i

bb.bt:                                            ; preds = %bb.bs
  %i.un = getelementptr i8, ptr %0, i64 36973
  %i.uo = load i8, ptr %i.un, align 1
  %.not297.26.i = icmp eq i8 %i.uo, 0
  br i1 %.not297.26.i, label %bb.bu, label %.lr.ph.i

bb.bu:                                            ; preds = %bb.bt
  %i.up = getelementptr i8, ptr %0, i64 36972
  %i.uq = load i8, ptr %i.up, align 2
  %.not297.27.i = icmp eq i8 %i.uq, 0
  br i1 %.not297.27.i, label %bb.bv, label %.lr.ph.i

bb.bv:                                            ; preds = %bb.bu
  %i.ur = getelementptr i8, ptr %0, i64 36971
  %i.us = load i8, ptr %i.ur, align 1
  %.not297.28.i = icmp eq i8 %i.us, 0
  %spec.select480.i = select i1 %.not297.28.i, i32 1, i32 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at
  %.0281.lcssa.i = phi i32 [ 30, %bb.at ], [ 12, %bb.bl ], [ 29, %bb.au ], [ %spec.select480.i, %bb.bv ], [ 28, %bb.av ], [ 15, %bb.bi ], [ 27, %bb.aw ], [ 3, %bb.bu ], [ 26, %bb.ax ], [ 9, %bb.bo ], [ 25, %bb.ay ], [ 4, %bb.bt ], [ 24, %bb.az ], [ 14, %bb.bj ], [ 23, %bb.ba ], [ 5, %bb.bs ], [ 22, %bb.bb ], [ 11, %bb.bm ], [ 21, %bb.bc ], [ 6, %bb.br ], [ 20, %bb.bd ], [ 13, %bb.bk ], [ 19, %bb.be ], [ 7, %bb.bq ], [ 18, %bb.bf ], [ 10, %bb.bn ], [ 17, %bb.bg ], [ 8, %bb.bp ], [ 16, %bb.bh ] ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.uu = zext nneg i32 %.0282.lcssa.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 2 dereferenceable(1) %i.ut, i64 %i.uu, i1 false)
  %i.uv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 36970
  %i.ux = zext nneg i32 %.0281.lcssa.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.uv, ptr noundef nonnull align 2 dereferenceable(1) %i.uw, i64 %i.ux, i1 false)
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 34378 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %i.uy, i8 0, i64 38, i1 false)
  %i.uz = add nuw nsw i32 %.0281.lcssa.i, %.0282.lcssa.i
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 34414 ; 6 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 34412 ; 4 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 34410 ; 8 uses
  %wide.trip.count.i = zext nneg i32 %i.uz to i64
  br label %bb.bw

bb.bw:                                            ; preds = %bb.cn, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.cn ] ; 2 uses
  %.0337.i = phi i8 [ -1, %.lr.ph.i ], [ %i.ve, %bb.cn ] ; 5 uses
  %.0262336.i = phi i32 [ 0, %.lr.ph.i ], [ %.6.i, %bb.cn ] ; 13 uses
  %.0264335.i = phi i32 [ 0, %.lr.ph.i ], [ %.4268.i, %bb.cn ] ; 8 uses
  %.0270334.i = phi i32 [ 0, %.lr.ph.i ], [ %.14.i, %bb.cn ] ; 12 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.ve = load i8, ptr %i.vd, align 1             ; 7 uses
  %.not310.i = icmp eq i8 %i.ve, 0
  br i1 %.not310.i, label %bb.bx, label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  %.not311.i = icmp eq i32 %.0262336.i, 0
  br i1 %.not311.i, label %.loopexit322.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.vf = icmp ult i32 %.0262336.i, 3
  br i1 %i.vf, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.vg = zext i8 %.0337.i to i64
  %i.vh = getelementptr inbounds nuw [2 x i8], ptr %i.uy, i64 %i.vg ; 2 uses
  %i.vi = load i16, ptr %i.vh, align 2
  %i.vj = trunc nuw nsw i32 %.0262336.i to i16
  %i.vk = add i16 %i.vi, %i.vj
  store i16 %i.vk, ptr %i.vh, align 2
  %i.vl = zext i32 %.0270334.i to i64
  %i.vm = getelementptr i8, ptr %i.b, i64 %i.vl
  %2 = zext nneg i32 %.0262336.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.vm, i8 %.0337.i, i64 %2, i1 false)
  %3 = add i32 %.0270334.i, %.0262336.i
  br label %.loopexit322.i

bb.ca:                                            ; preds = %bb.by
  %i.vn = load i16, ptr %i.vc, align 2
  %i.vo = add i16 %i.vn, 1
  store i16 %i.vo, ptr %i.vc, align 2
  %i.vp = add nuw i32 %.0270334.i, 1
  %i.vq = zext i32 %.0270334.i to i64
  %i.vr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vq
  store i8 16, ptr %i.vr, align 1
  %i.vs = trunc i32 %.0262336.i to i8
  %i.vt = add i8 %i.vs, -3
  %i.vu = add nuw i32 %.0270334.i, 2
  %i.vv = zext i32 %i.vp to i64
  %i.vw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vv
  store i8 %i.vt, ptr %i.vw, align 1
  br label %.loopexit322.i

.loopexit322.i:                                   ; preds = %bb.ca, %bb.bz, %bb.bx
  %.3273.i = phi i32 [ %.0270334.i, %bb.bx ], [ %i.vu, %bb.ca ], [ %3, %bb.bz ] ; 4 uses
  %i.vx = add i32 %.0264335.i, 1                  ; 2 uses
  %i.vy = icmp eq i32 %i.vx, 138
  br i1 %i.vy, label %bb.cb, label %bb.cn

bb.cb:                                            ; preds = %.loopexit322.i
  %i.vz = load i16, ptr %i.va, align 2
  %i.wa = add i16 %i.vz, 1
  store i16 %i.wa, ptr %i.va, align 2
  %i.wb = add nuw i32 %.3273.i, 1
  %i.wc = zext i32 %.3273.i to i64
  %i.wd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wc
  store i8 18, ptr %i.wd, align 1
  %i.we = add nuw i32 %.3273.i, 2
  %i.wf = zext i32 %i.wb to i64
  %i.wg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wf
  store i8 127, ptr %i.wg, align 1
  br label %bb.cn

bb.cc:                                            ; preds = %bb.bw
  %.not313.i = icmp eq i32 %.0264335.i, 0
  br i1 %.not313.i, label %.loopexit324.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wh = icmp ult i32 %.0264335.i, 3
  br i1 %i.wh, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.wi = load i16, ptr %i.uy, align 2
  %i.wj = trunc nuw nsw i32 %.0264335.i to i16
  %i.wk = add i16 %i.wi, %i.wj
  store i16 %i.wk, ptr %i.uy, align 2
  %i.wl = zext i32 %.0270334.i to i64
  %i.wm = getelementptr i8, ptr %i.b, i64 %i.wl
  %4 = zext nneg i32 %.0264335.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.wm, i8 0, i64 %4, i1 false)
  %5 = add i32 %.0270334.i, %.0264335.i
  br label %.loopexit324.i

bb.cf:                                            ; preds = %bb.cd
  %i.wn = icmp ult i32 %.0264335.i, 11
  %i.wo = add nuw i32 %.0270334.i, 1
  %i.wp = zext i32 %.0270334.i to i64
  %i.wq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wp ; 2 uses
  %i.wr = trunc i32 %.0264335.i to i8             ; 2 uses
  %i.ws = add nuw i32 %.0270334.i, 2              ; 2 uses
  %i.wt = zext i32 %i.wo to i64
  %i.wu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wt ; 2 uses
  br i1 %i.wn, label %bb.cg, label %.loopexit324.sink.split.i

bb.cg:                                            ; preds = %bb.cf
  %i.wv = load i16, ptr %i.vb, align 2
  %i.ww = add i16 %i.wv, 1
  store i16 %i.ww, ptr %i.vb, align 2
  store i8 17, ptr %i.wq, align 1
  %6 = add nsw i8 %i.wr, -3
  store i8 %6, ptr %i.wu, align 1
  br label %.loopexit324.i

.loopexit324.sink.split.i:                        ; preds = %bb.cf
  %7 = load i16, ptr %i.va, align 2
  %8 = add i16 %7, 1
  store i16 %8, ptr %i.va, align 2
  store i8 18, ptr %i.wq, align 1
  %i.wx = add i8 %i.wr, -11
  store i8 %i.wx, ptr %i.wu, align 1
  br label %.loopexit324.i

.loopexit324.i:                                   ; preds = %.loopexit324.sink.split.i, %bb.cg, %bb.ce, %bb.cc
  %.8.i = phi i32 [ %.0270334.i, %bb.cc ], [ %i.ws, %.loopexit324.sink.split.i ], [ %i.ws, %bb.cg ], [ %5, %bb.ce ] ; 10 uses
  %.not315.i = icmp eq i8 %i.ve, %.0337.i
  br i1 %.not315.i, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %.loopexit324.i
  %.not316.i = icmp eq i32 %.0262336.i, 0
  br i1 %.not316.i, label %.loopexit323.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.wy = icmp ult i32 %.0262336.i, 3
  br i1 %i.wy, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.wz = zext i8 %.0337.i to i64
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.uy, i64 %i.wz ; 2 uses
  %i.xb = load i16, ptr %i.xa, align 2
  %i.xc = trunc nuw nsw i32 %.0262336.i to i16
  %i.xd = add i16 %i.xb, %i.xc
  store i16 %i.xd, ptr %i.xa, align 2
  %i.xe = zext i32 %.8.i to i64
  %i.xf = getelementptr i8, ptr %i.b, i64 %i.xe
  %9 = zext nneg i32 %.0262336.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.xf, i8 %.0337.i, i64 %9, i1 false)
  %10 = add i32 %.8.i, %.0262336.i
  br label %.loopexit323.i

bb.ck:                                            ; preds = %bb.ci
  %i.xg = load i16, ptr %i.vc, align 2
  %i.xh = add i16 %i.xg, 1
  store i16 %i.xh, ptr %i.vc, align 2
  %i.xi = add nuw i32 %.8.i, 1
  %i.xj = zext i32 %.8.i to i64
  %i.xk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xj
  store i8 16, ptr %i.xk, align 1
  %i.xl = trunc i32 %.0262336.i to i8
  %i.xm = add i8 %i.xl, -3
  %i.xn = add nuw i32 %.8.i, 2
  %i.xo = zext i32 %i.xi to i64
  %i.xp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xo
  store i8 %i.xm, ptr %i.xp, align 1
  br label %.loopexit323.i

.loopexit323.i:                                   ; preds = %bb.ck, %bb.cj, %bb.ch
  %.11.i = phi i32 [ %.8.i, %bb.ch ], [ %i.xn, %bb.ck ], [ %10, %bb.cj ] ; 2 uses
  %i.xq = zext i8 %i.ve to i64
  %i.xr = getelementptr inbounds nuw [2 x i8], ptr %i.uy, i64 %i.xq ; 2 uses
  %i.xs = load i16, ptr %i.xr, align 2
  %i.xt = add i16 %i.xs, 1
  store i16 %i.xt, ptr %i.xr, align 2
  %i.xu = add nuw i32 %.11.i, 1
  %i.xv = zext i32 %.11.i to i64
  %i.xw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xv
  store i8 %i.ve, ptr %i.xw, align 1
  br label %bb.cn

bb.cl:                                            ; preds = %.loopexit324.i
  %i.xx = add i32 %.0262336.i, 1                  ; 2 uses
  %i.xy = icmp eq i32 %i.xx, 6
  br i1 %i.xy, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.xz = load i16, ptr %i.vc, align 2
  %i.ya = add i16 %i.xz, 1
  store i16 %i.ya, ptr %i.vc, align 2
  %i.yb = add nuw i32 %.8.i, 1
  %i.yc = zext i32 %.8.i to i64
  %i.yd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yc
  store i8 16, ptr %i.yd, align 1
  %i.ye = zext i32 %i.yb to i64
  %i.yf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ye
  store i8 3, ptr %i.yf, align 1
  %i.yg = add nuw i32 %.8.i, 2
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %.loopexit323.i, %bb.cb, %.loopexit322.i
  %.14.i = phi i32 [ %i.xu, %.loopexit323.i ], [ %i.yg, %bb.cm ], [ %.8.i, %bb.cl ], [ %i.we, %bb.cb ], [ %.3273.i, %.loopexit322.i ] ; 12 uses
  %.4268.i = phi i32 [ 0, %.loopexit323.i ], [ 0, %bb.cm ], [ 0, %bb.cl ], [ 0, %bb.cb ], [ %i.vx, %.loopexit322.i ] ; 8 uses
  %.6.i = phi i32 [ 0, %.loopexit323.i ], [ 0, %bb.cm ], [ %i.xx, %bb.cl ], [ 0, %bb.cb ], [ 0, %.loopexit322.i ] ; 7 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.bw

._crit_edge.i:                                    ; preds = %bb.cn
  %.not298.i = icmp eq i32 %.6.i, 0
  br i1 %.not298.i, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %._crit_edge.i
  %i.yh = icmp ult i32 %.6.i, 3
  br i1 %i.yh, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.yi = zext i8 %i.ve to i64
  %i.yj = getelementptr inbounds nuw [2 x i8], ptr %i.uy, i64 %i.yi ; 2 uses
  %i.yk = load i16, ptr %i.yj, align 2
  %i.yl = trunc nuw nsw i32 %.6.i to i16
  %i.ym = add i16 %i.yk, %i.yl
  store i16 %i.ym, ptr %i.yj, align 2
  %i.yn = zext i32 %.14.i to i64
  %i.yo = getelementptr i8, ptr %i.b, i64 %i.yn
  %11 = zext nneg i32 %.6.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.yo, i8 %i.ve, i64 %11, i1 false)
  %12 = add i32 %.6.i, %.14.i
  br label %.loopexit320.i

bb.cq:                                            ; preds = %bb.co
  %i.yp = load i16, ptr %i.vc, align 2
  %i.yq = add i16 %i.yp, 1
  store i16 %i.yq, ptr %i.vc, align 2
  %i.yr = add nuw i32 %.14.i, 1
  %i.ys = zext i32 %.14.i to i64
  %i.yt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ys
  store i8 16, ptr %i.yt, align 1
  %i.yu = trunc i32 %.6.i to i8
  %i.yv = add i8 %i.yu, -3
  %i.yw = add nuw i32 %.14.i, 2
  %i.yx = zext i32 %i.yr to i64
  %i.yy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yx
  store i8 %i.yv, ptr %i.yy, align 1
  br label %.loopexit320.i

bb.cr:                                            ; preds = %._crit_edge.i
  %.not299.i = icmp eq i32 %.4268.i, 0
  br i1 %.not299.i, label %.loopexit320.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yz = icmp ult i32 %.4268.i, 3
  br i1 %i.yz, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.za = load i16, ptr %i.uy, align 2
  %i.zb = trunc nuw nsw i32 %.4268.i to i16
  %i.zc = add i16 %i.za, %i.zb
  store i16 %i.zc, ptr %i.uy, align 2
  %i.zd = zext i32 %.14.i to i64
  %i.ze = getelementptr i8, ptr %i.b, i64 %i.zd
  %13 = zext nneg i32 %.4268.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.ze, i8 0, i64 %13, i1 false)
  %14 = add i32 %.4268.i, %.14.i
  br label %.loopexit320.i

bb.cu:                                            ; preds = %bb.cs
  %i.zf = icmp ult i32 %.4268.i, 11
  %i.zg = add nuw i32 %.14.i, 1
  %i.zh = zext i32 %.14.i to i64
  %i.zi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zh ; 2 uses
  %i.zj = trunc i32 %.4268.i to i8                ; 2 uses
  %i.zk = add nuw i32 %.14.i, 2                   ; 2 uses
  %i.zl = zext i32 %i.zg to i64
  %i.zm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zl ; 2 uses
  br i1 %i.zf, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.zn = load i16, ptr %i.vb, align 2
  %i.zo = add i16 %i.zn, 1
  store i16 %i.zo, ptr %i.vb, align 2
  store i8 17, ptr %i.zi, align 1
  %i.zp = add nsw i8 %i.zj, -3
  store i8 %i.zp, ptr %i.zm, align 1
  br label %.loopexit320.i

bb.cw:                                            ; preds = %bb.cu
  %i.zq = load i16, ptr %i.va, align 2
  %i.zr = add i16 %i.zq, 1
  store i16 %i.zr, ptr %i.va, align 2
  store i8 18, ptr %i.zi, align 1
  %i.zs = add i8 %i.zj, -11
  store i8 %i.zs, ptr %i.zm, align 1
  br label %.loopexit320.i

.loopexit320.i:                                   ; preds = %bb.cw, %bb.cv, %bb.ct, %bb.cr, %bb.cq, %bb.cp
  %.19.i = phi i32 [ %i.yw, %bb.cq ], [ %.14.i, %bb.cr ], [ %14, %bb.ct ], [ %i.zk, %bb.cw ], [ %i.zk, %bb.cv ], [ %12, %bb.cp ] ; 2 uses
  tail call fastcc void @tdefl_optimize_huffman_table(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 19, i32 noundef 7, i32 noundef 0)
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 25 uses
  %i.zu = load i32, ptr %i.zt, align 4            ; 2 uses
  %i.zv = shl i32 2, %i.zu
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 25 uses
  %i.zx = load i32, ptr %i.zw, align 8
  %i.zy = or i32 %i.zx, %i.zv                     ; 3 uses
  store i32 %i.zy, ptr %i.zw, align 8
  %i.zz = add i32 %i.zu, 2                        ; 4 uses
  store i32 %i.zz, ptr %i.zt, align 4
  %i.aaa = icmp ugt i32 %i.zz, 7
  br i1 %i.aaa, label %.lr.ph346.i, label %._crit_edge347.i

.lr.ph346.i:                                      ; preds = %.loopexit320.i
  %i.aab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cz, %.lr.ph346.i
  %i.aad = phi i32 [ %i.zz, %.lr.ph346.i ], [ %i.aan, %bb.cz ]
  %i.aae = phi i32 [ %i.zy, %.lr.ph346.i ], [ %i.aam, %bb.cz ] ; 2 uses
  %i.aaf = load ptr, ptr %i.aab, align 8          ; 3 uses
  %i.aag = load ptr, ptr %i.aac, align 8
  %i.aah = icmp ult ptr %i.aaf, %i.aag
  br i1 %i.aah, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.aai = trunc i32 %i.aae to i8
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aaf, i64 1
  store ptr %i.aaj, ptr %i.aab, align 8
  store i8 %i.aai, ptr %i.aaf, align 1
  %.pre.i3 = load i32, ptr %i.zw, align 8
  %.pre405.i = load i32, ptr %i.zt, align 4
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.aak = phi i32 [ %.pre405.i, %bb.cy ], [ %i.aad, %bb.cx ]
  %i.aal = phi i32 [ %.pre.i3, %bb.cy ], [ %i.aae, %bb.cx ]
  %i.aam = lshr i32 %i.aal, 8                     ; 3 uses
  store i32 %i.aam, ptr %i.zw, align 8
  %i.aan = add i32 %i.aak, -8                     ; 4 uses
  store i32 %i.aan, ptr %i.zt, align 4
  %i.aao = icmp ugt i32 %i.aan, 7
  br i1 %i.aao, label %bb.cx, label %._crit_edge347.i

._crit_edge347.i:                                 ; preds = %bb.cz, %.loopexit320.i
  %i.aap = phi i32 [ %i.zy, %.loopexit320.i ], [ %i.aam, %bb.cz ]
  %storemerge.lcssa.i = phi i32 [ %i.zz, %.loopexit320.i ], [ %i.aan, %bb.cz ] ; 3 uses
  %i.aaq = add nsw i32 %.0282.lcssa.i, -257
  %i.aar = shl nuw nsw i32 %i.aaq, %storemerge.lcssa.i
  %i.aas = or i32 %i.aar, %i.aap                  ; 3 uses
  store i32 %i.aas, ptr %i.zw, align 8
  %i.aat = add nuw nsw i32 %storemerge.lcssa.i, 5 ; 3 uses
  store i32 %i.aat, ptr %i.zt, align 4
  %i.aau = icmp samesign ugt i32 %storemerge.lcssa.i, 2
  br i1 %i.aau, label %.lr.ph350.i, label %._crit_edge351.i

.lr.ph350.i:                                      ; preds = %._crit_edge347.i
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.da

bb.da:                                            ; preds = %bb.dc, %.lr.ph350.i
  %i.aax = phi i32 [ %i.aat, %.lr.ph350.i ], [ %i.abh, %bb.dc ]
  %i.aay = phi i32 [ %i.aas, %.lr.ph350.i ], [ %i.abg, %bb.dc ] ; 2 uses
  %i.aaz = load ptr, ptr %i.aav, align 8          ; 3 uses
  %i.aba = load ptr, ptr %i.aaw, align 8
  %i.abb = icmp ult ptr %i.aaz, %i.aba
  br i1 %i.abb, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.abc = trunc i32 %i.aay to i8
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaz, i64 1
  store ptr %i.abd, ptr %i.aav, align 8
  store i8 %i.abc, ptr %i.aaz, align 1
  %.pre406.i = load i32, ptr %i.zw, align 8
  %.pre407.i = load i32, ptr %i.zt, align 4
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.abe = phi i32 [ %.pre407.i, %bb.db ], [ %i.aax, %bb.da ]
  %i.abf = phi i32 [ %.pre406.i, %bb.db ], [ %i.aay, %bb.da ]
  %i.abg = lshr i32 %i.abf, 8                     ; 3 uses
  store i32 %i.abg, ptr %i.zw, align 8
  %i.abh = add i32 %i.abe, -8                     ; 4 uses
  store i32 %i.abh, ptr %i.zt, align 4
  %i.abi = icmp ugt i32 %i.abh, 7
  br i1 %i.abi, label %bb.da, label %._crit_edge351.i

._crit_edge351.i:                                 ; preds = %bb.dc, %._crit_edge347.i
  %i.abj = phi i32 [ %i.aas, %._crit_edge347.i ], [ %i.abg, %bb.dc ]
  %storemerge302.lcssa.i = phi i32 [ %i.aat, %._crit_edge347.i ], [ %i.abh, %bb.dc ] ; 3 uses
  %i.abk = add nsw i32 %.0281.lcssa.i, -1
  %i.abl = shl nuw nsw i32 %i.abk, %storemerge302.lcssa.i
  %i.abm = or i32 %i.abl, %i.abj                  ; 3 uses
  store i32 %i.abm, ptr %i.zw, align 8
  %i.abn = add nuw nsw i32 %storemerge302.lcssa.i, 5 ; 3 uses
  store i32 %i.abn, ptr %i.zt, align 4
  %i.abo = icmp samesign ugt i32 %storemerge302.lcssa.i, 2
  br i1 %i.abo, label %.lr.ph354.i, label %.preheader319.i

.lr.ph354.i:                                      ; preds = %._crit_edge351.i
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.dd

.preheader319.i:                                  ; preds = %bb.df, %._crit_edge351.i
  %i.abr = phi i32 [ %i.abm, %._crit_edge351.i ], [ %i.ace, %bb.df ]
  %storemerge303.lcssa.i = phi i32 [ %i.abn, %._crit_edge351.i ], [ %i.acf, %bb.df ] ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 37258 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 37273
  %i.abu = load i8, ptr %i.abt, align 1
  %.not304.i = icmp eq i8 %i.abu, 0
  br i1 %.not304.i, label %bb.dg, label %bb.du

bb.dd:                                            ; preds = %bb.df, %.lr.ph354.i
  %i.abv = phi i32 [ %i.abn, %.lr.ph354.i ], [ %i.acf, %bb.df ]
  %i.abw = phi i32 [ %i.abm, %.lr.ph354.i ], [ %i.ace, %bb.df ] ; 2 uses
  %i.abx = load ptr, ptr %i.abp, align 8          ; 3 uses
  %i.aby = load ptr, ptr %i.abq, align 8
  %i.abz = icmp ult ptr %i.abx, %i.aby
  br i1 %i.abz, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.aca = trunc i32 %i.abw to i8
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abx, i64 1
  store ptr %i.acb, ptr %i.abp, align 8
  store i8 %i.aca, ptr %i.abx, align 1
  %.pre408.i = load i32, ptr %i.zw, align 8
  %.pre409.i = load i32, ptr %i.zt, align 4
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.acc = phi i32 [ %.pre409.i, %bb.de ], [ %i.abv, %bb.dd ]
  %i.acd = phi i32 [ %.pre408.i, %bb.de ], [ %i.abw, %bb.dd ]
  %i.ace = lshr i32 %i.acd, 8                     ; 3 uses
  store i32 %i.ace, ptr %i.zw, align 8
  %i.acf = add i32 %i.acc, -8                     ; 4 uses
  store i32 %i.acf, ptr %i.zt, align 4
  %i.acg = icmp ugt i32 %i.acf, 7
  br i1 %i.acg, label %bb.dd, label %.preheader319.i

bb.dg:                                            ; preds = %.preheader319.i
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 37259
  %i.aci = load i8, ptr %i.ach, align 1
  %.not304.1.i = icmp eq i8 %i.aci, 0
  br i1 %.not304.1.i, label %bb.dh, label %bb.du

bb.dh:                                            ; preds = %bb.dg
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 37272
  %i.ack = load i8, ptr %i.acj, align 8
  %.not304.2.i = icmp eq i8 %i.ack, 0
  br i1 %.not304.2.i, label %bb.di, label %bb.du

bb.di:                                            ; preds = %bb.dh
  %i.acl = getelementptr inbounds nuw i8, ptr %0, i64 37260
  %i.acm = load i8, ptr %i.acl, align 4
  %.not304.3.i = icmp eq i8 %i.acm, 0
  br i1 %.not304.3.i, label %bb.dj, label %bb.du

bb.dj:                                            ; preds = %bb.di
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 37271
  %i.aco = load i8, ptr %i.acn, align 1
  %.not304.4.i = icmp eq i8 %i.aco, 0
  br i1 %.not304.4.i, label %bb.dk, label %bb.du

bb.dk:                                            ; preds = %bb.dj
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 37261
  %i.acq = load i8, ptr %i.acp, align 1
  %.not304.5.i = icmp eq i8 %i.acq, 0
  br i1 %.not304.5.i, label %bb.dl, label %bb.du

bb.dl:                                            ; preds = %bb.dk
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 37270
  %i.acs = load i8, ptr %i.acr, align 2
  %.not304.6.i = icmp eq i8 %i.acs, 0
  br i1 %.not304.6.i, label %bb.dm, label %bb.du

bb.dm:                                            ; preds = %bb.dl
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 37262
  %i.acu = load i8, ptr %i.act, align 2
  %.not304.7.i = icmp eq i8 %i.acu, 0
  br i1 %.not304.7.i, label %bb.dn, label %bb.du

bb.dn:                                            ; preds = %bb.dm
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 37269
  %i.acw = load i8, ptr %i.acv, align 1
  %.not304.8.i = icmp eq i8 %i.acw, 0
  br i1 %.not304.8.i, label %bb.do, label %bb.du

bb.do:                                            ; preds = %bb.dn
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 37263
  %i.acy = load i8, ptr %i.acx, align 1
  %.not304.9.i = icmp eq i8 %i.acy, 0
  br i1 %.not304.9.i, label %bb.dp, label %bb.du

bb.dp:                                            ; preds = %bb.do
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 37268
  %i.ada = load i8, ptr %i.acz, align 4
  %.not304.10.i = icmp eq i8 %i.ada, 0
end_hunk_3
begin_hunk_4_@tdefl_compress_block:bb.a
bb.dw:                                            ; preds = %bb.dv
  %i.aea = trunc i32 %i.adw to i8
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adx, i64 1
  store ptr %i.aeb, ptr %i.ado, align 8
  store i8 %i.aea, ptr %i.adx, align 1
  %.pre410.i = load i32, ptr %i.zw, align 8
  %.pre411.i = load i32, ptr %i.zt, align 4
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.aec = phi i32 [ %.pre411.i, %bb.dw ], [ %i.adv, %bb.dv ]
  %i.aed = phi i32 [ %.pre410.i, %bb.dw ], [ %i.adw, %bb.dv ]
  %i.aee = lshr i32 %i.aed, 8                     ; 3 uses
  store i32 %i.aee, ptr %i.zw, align 8
  %i.aef = add i32 %i.aec, -8                     ; 4 uses
  store i32 %i.aef, ptr %i.zt, align 4
  %i.aeg = icmp ugt i32 %i.aef, 7
  br i1 %i.aeg, label %bb.dv, label %.preheader318.i

.preheader.i:                                     ; preds = %._crit_edge361.i
  %.not383.i = icmp eq i32 %.19.i, 0
  br i1 %.not383.i, label %tdefl_start_dynamic_block.exit, label %.lr.ph380.i

.lr.ph380.i:                                      ; preds = %.preheader.i
  %i.aeh = getelementptr inbounds nuw i8, ptr %0, i64 36106
  br label %bb.eb

bb.dy:                                            ; preds = %._crit_edge361.i, %.preheader318.i
  %i.aei = phi i32 [ %i.adq, %.preheader318.i ], [ %i.afo, %._crit_edge361.i ]
  %i.aej = phi i32 [ %i.adr, %.preheader318.i ], [ %i.afp, %._crit_edge361.i ] ; 3 uses
  %indvars.iv400.i = phi i64 [ 0, %.preheader318.i ], [ %indvars.iv.next401.i, %._crit_edge361.i ] ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr @s_tdefl_packed_code_size_syms_swizzle, i64 %indvars.iv400.i
  %i.ael = load i8, ptr %i.aek, align 1
  %i.aem = zext i8 %i.ael to i64
  %i.aen = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.aem
  %i.aeo = load i8, ptr %i.aen, align 1
  %i.aep = zext i8 %i.aeo to i32
  %i.aeq = shl nuw nsw i32 %i.aep, %i.aej
  %i.aer = or i32 %i.aeq, %i.aei                  ; 4 uses
  store i32 %i.aer, ptr %i.zw, align 8
  %i.aes = add nuw nsw i32 %i.aej, 3              ; 4 uses
  store i32 %i.aes, ptr %i.zt, align 4
  %i.aet = icmp samesign ugt i32 %i.aej, 4
  br i1 %i.aet, label %.lr.ph360.i, label %._crit_edge361.i

.lr.ph360.i:                                      ; preds = %bb.dy
  %i.aeu = load ptr, ptr %i.ads, align 8
  %i.aev = load ptr, ptr %i.adt, align 8
  %i.aew = icmp ult ptr %i.aeu, %i.aev
  br i1 %i.aew, label %.lr.ph360.split.i, label %.lr.ph360.split.us.i

.lr.ph360.split.us.i:                             ; preds = %.lr.ph360.i, %.lr.ph360.split.us.i
  %i.aex = phi i32 [ %i.afa, %.lr.ph360.split.us.i ], [ %i.aes, %.lr.ph360.i ]
  %i.aey = phi i32 [ %i.aez, %.lr.ph360.split.us.i ], [ %i.aer, %.lr.ph360.i ]
  %i.aez = lshr i32 %i.aey, 8                     ; 3 uses
  %i.afa = add i32 %i.aex, -8                     ; 4 uses
  %i.afb = icmp ugt i32 %i.afa, 7
  br i1 %i.afb, label %.lr.ph360.split.us.i, label %._crit_edge361.split.us.i

._crit_edge361.split.us.i:                        ; preds = %.lr.ph360.split.us.i
  store i32 %i.aez, ptr %i.zw, align 8
  store i32 %i.afa, ptr %i.zt, align 4
  br label %._crit_edge361.i

.lr.ph360.split.i:                                ; preds = %.lr.ph360.i, %bb.ea
  %i.afc = phi i32 [ %i.afm, %bb.ea ], [ %i.aes, %.lr.ph360.i ]
  %i.afd = phi i32 [ %i.afl, %bb.ea ], [ %i.aer, %.lr.ph360.i ] ; 2 uses
  %i.afe = load ptr, ptr %i.ads, align 8          ; 3 uses
  %i.aff = load ptr, ptr %i.adt, align 8
  %i.afg = icmp ult ptr %i.afe, %i.aff
  br i1 %i.afg, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %.lr.ph360.split.i
  %i.afh = trunc i32 %i.afd to i8
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afe, i64 1
  store ptr %i.afi, ptr %i.ads, align 8
  store i8 %i.afh, ptr %i.afe, align 1
  %.pre412.i = load i32, ptr %i.zw, align 8
  %.pre413.i = load i32, ptr %i.zt, align 4
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %.lr.ph360.split.i
  %i.afj = phi i32 [ %.pre413.i, %bb.dz ], [ %i.afc, %.lr.ph360.split.i ]
  %i.afk = phi i32 [ %.pre412.i, %bb.dz ], [ %i.afd, %.lr.ph360.split.i ]
  %i.afl = lshr i32 %i.afk, 8                     ; 3 uses
  store i32 %i.afl, ptr %i.zw, align 8
  %i.afm = add i32 %i.afj, -8                     ; 4 uses
  store i32 %i.afm, ptr %i.zt, align 4
  %i.afn = icmp ugt i32 %i.afm, 7
  br i1 %i.afn, label %.lr.ph360.split.i, label %._crit_edge361.i, !llvm.loop !34

._crit_edge361.i:                                 ; preds = %bb.ea, %._crit_edge361.split.us.i, %bb.dy
  %i.afo = phi i32 [ %i.aer, %bb.dy ], [ %i.aez, %._crit_edge361.split.us.i ], [ %i.afl, %bb.ea ] ; 3 uses
  %i.afp = phi i32 [ %i.aes, %bb.dy ], [ %i.afa, %._crit_edge361.split.us.i ], [ %i.afm, %bb.ea ] ; 3 uses
  %indvars.iv.next401.i = add nuw nsw i64 %indvars.iv400.i, 1 ; 2 uses
  %exitcond404.not.i = icmp eq i64 %indvars.iv.next401.i, %wide.trip.count403.i
  br i1 %exitcond404.not.i, label %.preheader.i, label %bb.dy

bb.eb:                                            ; preds = %.loopexit.i, %.lr.ph380.i
  %i.afq = phi i32 [ %i.afo, %.lr.ph380.i ], [ %i.aiz, %.loopexit.i ]
  %i.afr = phi i32 [ %i.afp, %.lr.ph380.i ], [ %i.aja, %.loopexit.i ] ; 3 uses
  %.0261379.i = phi i32 [ 0, %.lr.ph380.i ], [ %.1.i, %.loopexit.i ] ; 3 uses
  %i.afs = add nuw i32 %.0261379.i, 1             ; 2 uses
  %i.aft = zext i32 %.0261379.i to i64
  %i.afu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aft
  %i.afv = load i8, ptr %i.afu, align 1           ; 2 uses
  %i.afw = zext i8 %i.afv to i64                  ; 3 uses
  %i.afx = getelementptr inbounds nuw [2 x i8], ptr %i.aeh, i64 %i.afw
  %i.afy = load i16, ptr %i.afx, align 2
  %i.afz = zext i16 %i.afy to i32
  %i.aga = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.afw
  %i.agb = load i8, ptr %i.aga, align 1
  %i.agc = zext i8 %i.agb to i32                  ; 2 uses
  %i.agd = shl nuw nsw i32 %i.afz, %i.afr
  %i.age = or i32 %i.agd, %i.afq                  ; 4 uses
  store i32 %i.age, ptr %i.zw, align 8
  %i.agf = add nuw nsw i32 %i.afr, %i.agc         ; 6 uses
  store i32 %i.agf, ptr %i.zt, align 4
  %i.agg = icmp samesign ugt i32 %i.agf, 7
  br i1 %i.agg, label %.lr.ph366.i, label %._crit_edge367.i

.lr.ph366.i:                                      ; preds = %bb.eb
  %i.agh = load ptr, ptr %i.ads, align 8
  %i.agi = load ptr, ptr %i.adt, align 8
  %i.agj = icmp ult ptr %i.agh, %i.agi
  br i1 %i.agj, label %.lr.ph366.split.i, label %.lr.ph366.split.us.i.preheader

.lr.ph366.split.us.i.preheader:                   ; preds = %.lr.ph366.i
  %i.agk = add i32 %i.afr, -8
  %i.agl = add i32 %i.agk, %i.agc                 ; 2 uses
  %i.agm = lshr i32 %i.agl, 3
  %i.agn = add nuw nsw i32 %i.agm, 1
  %xtraiter332 = and i32 %i.agn, 7                ; 2 uses
  %lcmp.mod333.not = icmp eq i32 %xtraiter332, 0
  br i1 %lcmp.mod333.not, label %.lr.ph366.split.us.i.prol.loopexit, label %.lr.ph366.split.us.i.prol

.lr.ph366.split.us.i.prol:                        ; preds = %.lr.ph366.split.us.i.preheader, %.lr.ph366.split.us.i.prol
  %i.ago = phi i32 [ %i.agr, %.lr.ph366.split.us.i.prol ], [ %i.agf, %.lr.ph366.split.us.i.preheader ]
  %i.agp = phi i32 [ %i.agq, %.lr.ph366.split.us.i.prol ], [ %i.age, %.lr.ph366.split.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph366.split.us.i.prol ], [ 0, %.lr.ph366.split.us.i.preheader ]
  %i.agq = lshr i32 %i.agp, 8                     ; 2 uses
  %i.agr = add i32 %i.ago, -8                     ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter332
  br i1 %prol.iter.cmp.not, label %.lr.ph366.split.us.i.prol.loopexit, label %.lr.ph366.split.us.i.prol, !llvm.loop !35

.lr.ph366.split.us.i.prol.loopexit:               ; preds = %.lr.ph366.split.us.i.prol, %.lr.ph366.split.us.i.preheader
  %.unr = phi i32 [ %i.agf, %.lr.ph366.split.us.i.preheader ], [ %i.agr, %.lr.ph366.split.us.i.prol ]
  %.lcssa285.unr = phi i32 [ poison, %.lr.ph366.split.us.i.preheader ], [ %i.agq, %.lr.ph366.split.us.i.prol ]
  %.lcssa284.unr = phi i32 [ poison, %.lr.ph366.split.us.i.preheader ], [ %i.agr, %.lr.ph366.split.us.i.prol ]
  %i.ags = icmp ult i32 %i.agl, 56
  br i1 %i.ags, label %._crit_edge367.split.us.i, label %.lr.ph366.split.us.i

.lr.ph366.split.us.i:                             ; preds = %.lr.ph366.split.us.i.prol.loopexit, %.lr.ph366.split.us.i
  %i.agt = phi i32 [ %i.agu, %.lr.ph366.split.us.i ], [ %.unr, %.lr.ph366.split.us.i.prol.loopexit ]
  %i.agu = add i32 %i.agt, -64                    ; 3 uses
  %i.agv = icmp ugt i32 %i.agu, 7
  br i1 %i.agv, label %.lr.ph366.split.us.i, label %._crit_edge367.split.us.i

._crit_edge367.split.us.i:                        ; preds = %.lr.ph366.split.us.i, %.lr.ph366.split.us.i.prol.loopexit
  %.lcssa285 = phi i32 [ %.lcssa285.unr, %.lr.ph366.split.us.i.prol.loopexit ], [ 0, %.lr.ph366.split.us.i ] ; 2 uses
  %.lcssa284 = phi i32 [ %.lcssa284.unr, %.lr.ph366.split.us.i.prol.loopexit ], [ %i.agu, %.lr.ph366.split.us.i ] ; 2 uses
  store i32 %.lcssa285, ptr %i.zw, align 8
  store i32 %.lcssa284, ptr %i.zt, align 4
  br label %._crit_edge367.i

.lr.ph366.split.i:                                ; preds = %.lr.ph366.i, %bb.ed
  %i.agw = phi i32 [ %i.ahg, %bb.ed ], [ %i.agf, %.lr.ph366.i ]
  %i.agx = phi i32 [ %i.ahf, %bb.ed ], [ %i.age, %.lr.ph366.i ] ; 2 uses
  %i.agy = load ptr, ptr %i.ads, align 8          ; 3 uses
  %i.agz = load ptr, ptr %i.adt, align 8
  %i.aha = icmp ult ptr %i.agy, %i.agz
  br i1 %i.aha, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %.lr.ph366.split.i
  %i.ahb = trunc i32 %i.agx to i8
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agy, i64 1
  store ptr %i.ahc, ptr %i.ads, align 8
  store i8 %i.ahb, ptr %i.agy, align 1
  %.pre414.i = load i32, ptr %i.zw, align 8
  %.pre415.i = load i32, ptr %i.zt, align 4
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %.lr.ph366.split.i
  %i.ahd = phi i32 [ %.pre415.i, %bb.ec ], [ %i.agw, %.lr.ph366.split.i ]
  %i.ahe = phi i32 [ %.pre414.i, %bb.ec ], [ %i.agx, %.lr.ph366.split.i ]
  %i.ahf = lshr i32 %i.ahe, 8                     ; 3 uses
  store i32 %i.ahf, ptr %i.zw, align 8
  %i.ahg = add i32 %i.ahd, -8                     ; 4 uses
  store i32 %i.ahg, ptr %i.zt, align 4
  %i.ahh = icmp ugt i32 %i.ahg, 7
  br i1 %i.ahh, label %.lr.ph366.split.i, label %._crit_edge367.i, !llvm.loop !36

._crit_edge367.i:                                 ; preds = %bb.ed, %._crit_edge367.split.us.i, %bb.eb
  %i.ahi = phi i32 [ %i.age, %bb.eb ], [ %.lcssa285, %._crit_edge367.split.us.i ], [ %i.ahf, %bb.ed ] ; 2 uses
  %i.ahj = phi i32 [ %i.agf, %bb.eb ], [ %.lcssa284, %._crit_edge367.split.us.i ], [ %i.ahg, %bb.ed ] ; 4 uses
  %i.ahk = icmp ugt i8 %i.afv, 15
  br i1 %i.ahk, label %bb.ee, label %.loopexit.i

bb.ee:                                            ; preds = %._crit_edge367.i
  %i.ahl = add nuw i32 %.0261379.i, 2             ; 3 uses
  %i.ahm = zext i32 %i.afs to i64
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ahm
  %i.aho = load i8, ptr %i.ahn, align 1
  %i.ahp = zext i8 %i.aho to i32
  %i.ahq = getelementptr i8, ptr @.str.13, i64 %i.afw
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 -16
  %i.ahs = load i8, ptr %i.ahr, align 1
  %i.aht = sext i8 %i.ahs to i32                  ; 2 uses
  %i.ahu = shl nuw nsw i32 %i.ahp, %i.ahj
  %i.ahv = or i32 %i.ahu, %i.ahi                  ; 4 uses
  store i32 %i.ahv, ptr %i.zw, align 8
  %i.ahw = add nsw i32 %i.ahj, %i.aht             ; 6 uses
  store i32 %i.ahw, ptr %i.zt, align 4
  %i.ahx = icmp ugt i32 %i.ahw, 7
  br i1 %i.ahx, label %.lr.ph374.i, label %.loopexit.i

.lr.ph374.i:                                      ; preds = %bb.ee
  %i.ahy = load ptr, ptr %i.ads, align 8
  %i.ahz = load ptr, ptr %i.adt, align 8
  %i.aia = icmp ult ptr %i.ahy, %i.ahz
  br i1 %i.aia, label %.lr.ph374.split.i, label %.lr.ph374.split.us.i.preheader

.lr.ph374.split.us.i.preheader:                   ; preds = %.lr.ph374.i
  %i.aib = add i32 %i.ahj, -8
  %i.aic = add i32 %i.aib, %i.aht                 ; 2 uses
  %i.aid = lshr i32 %i.aic, 3
  %i.aie = add nuw nsw i32 %i.aid, 1
  %xtraiter335 = and i32 %i.aie, 7                ; 2 uses
  %lcmp.mod336.not = icmp eq i32 %xtraiter335, 0
  br i1 %lcmp.mod336.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol

.lr.ph374.split.us.i.prol:                        ; preds = %.lr.ph374.split.us.i.preheader, %.lr.ph374.split.us.i.prol
  %i.aif = phi i32 [ %i.aii, %.lr.ph374.split.us.i.prol ], [ %i.ahw, %.lr.ph374.split.us.i.preheader ]
  %i.aig = phi i32 [ %i.aih, %.lr.ph374.split.us.i.prol ], [ %i.ahv, %.lr.ph374.split.us.i.preheader ]
  %prol.iter337 = phi i32 [ %prol.iter337.next, %.lr.ph374.split.us.i.prol ], [ 0, %.lr.ph374.split.us.i.preheader ]
  %i.aih = lshr i32 %i.aig, 8                     ; 2 uses
  %i.aii = add i32 %i.aif, -8                     ; 3 uses
  %prol.iter337.next = add i32 %prol.iter337, 1   ; 2 uses
  %prol.iter337.cmp.not = icmp eq i32 %prol.iter337.next, %xtraiter335
  br i1 %prol.iter337.cmp.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol, !llvm.loop !37

.lr.ph374.split.us.i.prol.loopexit:               ; preds = %.lr.ph374.split.us.i.prol, %.lr.ph374.split.us.i.preheader
  %.unr338 = phi i32 [ %i.ahw, %.lr.ph374.split.us.i.preheader ], [ %i.aii, %.lr.ph374.split.us.i.prol ]
  %.lcssa289.unr = phi i32 [ poison, %.lr.ph374.split.us.i.preheader ], [ %i.aih, %.lr.ph374.split.us.i.prol ]
  %.lcssa288.unr = phi i32 [ poison, %.lr.ph374.split.us.i.preheader ], [ %i.aii, %.lr.ph374.split.us.i.prol ]
  %i.aij = icmp ult i32 %i.aic, 56
  br i1 %i.aij, label %..loopexit_crit_edge.split.us.i, label %.lr.ph374.split.us.i

.lr.ph374.split.us.i:                             ; preds = %.lr.ph374.split.us.i.prol.loopexit, %.lr.ph374.split.us.i
  %i.aik = phi i32 [ %i.ail, %.lr.ph374.split.us.i ], [ %.unr338, %.lr.ph374.split.us.i.prol.loopexit ]
  %i.ail = add i32 %i.aik, -64                    ; 3 uses
  %i.aim = icmp ugt i32 %i.ail, 7
  br i1 %i.aim, label %.lr.ph374.split.us.i, label %..loopexit_crit_edge.split.us.i

..loopexit_crit_edge.split.us.i:                  ; preds = %.lr.ph374.split.us.i, %.lr.ph374.split.us.i.prol.loopexit
  %.lcssa289 = phi i32 [ %.lcssa289.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ 0, %.lr.ph374.split.us.i ] ; 2 uses
  %.lcssa288 = phi i32 [ %.lcssa288.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ %i.ail, %.lr.ph374.split.us.i ] ; 2 uses
  store i32 %.lcssa289, ptr %i.zw, align 8
  store i32 %.lcssa288, ptr %i.zt, align 4
  br label %.loopexit.i

.lr.ph374.split.i:                                ; preds = %.lr.ph374.i, %bb.eg
  %i.ain = phi i32 [ %i.aix, %bb.eg ], [ %i.ahw, %.lr.ph374.i ]
  %i.aio = phi i32 [ %i.aiw, %bb.eg ], [ %i.ahv, %.lr.ph374.i ] ; 2 uses
  %i.aip = load ptr, ptr %i.ads, align 8          ; 3 uses
  %i.aiq = load ptr, ptr %i.adt, align 8
  %i.air = icmp ult ptr %i.aip, %i.aiq
  br i1 %i.air, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.lr.ph374.split.i
  %i.ais = trunc i32 %i.aio to i8
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aip, i64 1
  store ptr %i.ait, ptr %i.ads, align 8
  store i8 %i.ais, ptr %i.aip, align 1
  %.pre416.i = load i32, ptr %i.zw, align 8
  %.pre417.i = load i32, ptr %i.zt, align 4
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %.lr.ph374.split.i
  %i.aiu = phi i32 [ %.pre417.i, %bb.ef ], [ %i.ain, %.lr.ph374.split.i ]
  %i.aiv = phi i32 [ %.pre416.i, %bb.ef ], [ %i.aio, %.lr.ph374.split.i ]
  %i.aiw = lshr i32 %i.aiv, 8                     ; 3 uses
  store i32 %i.aiw, ptr %i.zw, align 8
  %i.aix = add i32 %i.aiu, -8                     ; 4 uses
  store i32 %i.aix, ptr %i.zt, align 4
  %i.aiy = icmp ugt i32 %i.aix, 7
  br i1 %i.aiy, label %.lr.ph374.split.i, label %.loopexit.i, !llvm.loop !38

.loopexit.i:                                      ; preds = %bb.eg, %..loopexit_crit_edge.split.us.i, %bb.ee, %._crit_edge367.i
  %i.aiz = phi i32 [ %i.ahi, %._crit_edge367.i ], [ %.lcssa289, %..loopexit_crit_edge.split.us.i ], [ %i.ahv, %bb.ee ], [ %i.aiw, %bb.eg ] ; 2 uses
  %i.aja = phi i32 [ %i.ahj, %._crit_edge367.i ], [ %.lcssa288, %..loopexit_crit_edge.split.us.i ], [ %i.ahw, %bb.ee ], [ %i.aix, %bb.eg ] ; 2 uses
  %.1.i = phi i32 [ %i.afs, %._crit_edge367.i ], [ %i.ahl, %..loopexit_crit_edge.split.us.i ], [ %i.ahl, %bb.ee ], [ %i.ahl, %bb.eg ] ; 2 uses
  %i.ajb = icmp ult i32 %.1.i, %.19.i
  br i1 %i.ajb, label %bb.eb, label %tdefl_start_dynamic_block.exit

tdefl_start_dynamic_block.exit:                   ; preds = %.loopexit.i, %.preheader.i
  %.pre168.i103 = phi i32 [ %i.afo, %.preheader.i ], [ %i.aiz, %.loopexit.i ]
  %.pre166.i101 = phi i32 [ %i.afp, %.preheader.i ], [ %i.aja, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %tdefl_start_static_block.exit

tdefl_start_static_block.exit:                    ; preds = %bb.p, %tdefl_optimize_huffman_table.exit47.i, %tdefl_start_dynamic_block.exit
  %.pre168.i = phi i32 [ %.pre168.i103, %tdefl_start_dynamic_block.exit ], [ %i.pp, %tdefl_optimize_huffman_table.exit47.i ], [ %i.qd, %bb.p ] ; 2 uses
  %.pre166.i = phi i32 [ %.pre166.i101, %tdefl_start_dynamic_block.exit ], [ %i.pq, %tdefl_optimize_huffman_table.exit47.i ], [ %i.qe, %bb.p ] ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %0, i64 37546 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aje = load ptr, ptr %i.ajd, align 8
  %i.ajf = icmp ult ptr %i.ajc, %i.aje
  br i1 %i.ajf, label %.lr.ph145.i, label %._crit_edge146.i

.lr.ph145.i:                                      ; preds = %tdefl_start_static_block.exit
  %i.ajg = getelementptr inbounds nuw i8, ptr %0, i64 34954 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 36682 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 15 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 15 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %0, i64 35530
  %i.ajn = getelementptr inbounds nuw i8, ptr %0, i64 36970
  br label %bb.eh

bb.eh:                                            ; preds = %.loopexit.i7, %.lr.ph145.i
  %i.ajo = phi i32 [ %.pre168.i, %.lr.ph145.i ], [ %i.apa, %.loopexit.i7 ] ; 2 uses
  %i.ajp = phi i32 [ %.pre166.i, %.lr.ph145.i ], [ %i.apb, %.loopexit.i7 ] ; 4 uses
  %.0111143.i = phi ptr [ %i.ajc, %.lr.ph145.i ], [ %.2.i, %.loopexit.i7 ] ; 3 uses
  %.0112142.i = phi i32 [ 1, %.lr.ph145.i ], [ %i.apc, %.loopexit.i7 ] ; 2 uses
  %i.ajq = icmp eq i32 %.0112142.i, 1
  br i1 %i.ajq, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.ajr = getelementptr inbounds nuw i8, ptr %.0111143.i, i64 1
  %i.ajs = load i8, ptr %.0111143.i, align 1
  %i.ajt = zext i8 %i.ajs to i32
  %i.aju = or disjoint i32 %i.ajt, 256
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.1113.i = phi i32 [ %i.aju, %bb.ei ], [ %.0112142.i, %bb.eh ] ; 2 uses
  %.1.i4 = phi ptr [ %i.ajr, %bb.ei ], [ %.0111143.i, %bb.eh ] ; 5 uses
  %i.ajv = and i32 %.1113.i, 1
  %.not.i5 = icmp eq i32 %i.ajv, 0
  br i1 %.not.i5, label %bb.et, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ajw = load i8, ptr %.1.i4, align 1           ; 2 uses
  %i.ajx = zext i8 %i.ajw to i32
  %i.ajy = getelementptr inbounds nuw i8, ptr %.1.i4, i64 1
  %i.ajz = load i16, ptr %i.ajy, align 1          ; 4 uses
  %i.aka = zext i16 %i.ajz to i32
  %i.akb = lshr i16 %i.ajz, 8
  %i.akc = zext nneg i16 %i.akb to i64            ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %.1.i4, i64 3 ; 2 uses
  %i.ake = zext i8 %i.ajw to i64                  ; 2 uses
  %i.akf = getelementptr inbounds nuw [2 x i8], ptr @s_tdefl_len_sym, i64 %i.ake
  %i.akg = load i16, ptr %i.akf, align 2
  %i.akh = zext i16 %i.akg to i64                 ; 2 uses
  %i.aki = getelementptr inbounds nuw [2 x i8], ptr %i.ajg, i64 %i.akh
  %i.akj = load i16, ptr %i.aki, align 2
  %i.akk = zext i16 %i.akj to i32
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ajh, i64 %i.akh
  %i.akm = load i8, ptr %i.akl, align 1
  %i.akn = zext i8 %i.akm to i32
  %i.ako = shl nuw nsw i32 %i.akk, %i.ajp
  %i.akp = or i32 %i.ajo, %i.ako                  ; 3 uses
  store i32 %i.akp, ptr %i.ajj, align 8
  %i.akq = add nuw nsw i32 %i.ajp, %i.akn         ; 4 uses
  store i32 %i.akq, ptr %i.aji, align 4
  %i.akr = icmp samesign ugt i32 %i.akq, 7
  br i1 %i.akr, label %.lr.ph.i8, label %._crit_edge.i6

.lr.ph.i8:                                        ; preds = %bb.ek, %bb.em
  %i.aks = phi i32 [ %i.alc, %bb.em ], [ %i.akq, %bb.ek ]
  %i.akt = phi i32 [ %i.alb, %bb.em ], [ %i.akp, %bb.ek ] ; 2 uses
  %i.aku = load ptr, ptr %i.ajk, align 8          ; 3 uses
  %i.akv = load ptr, ptr %i.ajl, align 8
  %i.akw = icmp ult ptr %i.aku, %i.akv
  br i1 %i.akw, label %bb.el, label %bb.em

bb.el:                                            ; preds = %.lr.ph.i8
  %i.akx = trunc i32 %i.akt to i8
  %i.aky = getelementptr inbounds nuw i8, ptr %i.aku, i64 1
  store ptr %i.aky, ptr %i.ajk, align 8
  store i8 %i.akx, ptr %i.aku, align 1
  %.pre.i9 = load i32, ptr %i.ajj, align 8
  %.pre157.i = load i32, ptr %i.aji, align 4
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %.lr.ph.i8
  %i.akz = phi i32 [ %.pre157.i, %bb.el ], [ %i.aks, %.lr.ph.i8 ]
  %i.ala = phi i32 [ %.pre.i9, %bb.el ], [ %i.akt, %.lr.ph.i8 ]
  %i.alb = lshr i32 %i.ala, 8                     ; 3 uses
  store i32 %i.alb, ptr %i.ajj, align 8
  %i.alc = add i32 %i.akz, -8                     ; 4 uses
  store i32 %i.alc, ptr %i.aji, align 4
  %i.ald = icmp ugt i32 %i.alc, 7
  br i1 %i.ald, label %.lr.ph.i8, label %._crit_edge.i6

._crit_edge.i6:                                   ; preds = %bb.em, %bb.ek
  %i.ale = phi i32 [ %i.akp, %bb.ek ], [ %i.alb, %bb.em ]
end_hunk_4
