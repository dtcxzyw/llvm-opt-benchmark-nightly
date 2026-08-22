Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/zip?download=true
inline.NumInlined: 193
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 62
begin_hunk_0_@tinfl_decompress:bb.a
  %.141195 = phi ptr [ %.101191, %bb.ac ], [ %1, %bb.g ] ; 4 uses
  %.151104 = phi i64 [ %.111100, %bb.ac ], [ %i.ai, %bb.g ] ; 2 uses
  %.151023 = phi i32 [ %.111019, %bb.ac ], [ %i.ao, %bb.g ] ; 2 uses
  %.15934 = phi i32 [ %.11930, %bb.ac ], [ %i.am, %bb.g ] ; 3 uses
  %.15855 = phi i32 [ %.11851, %bb.ac ], [ %i.ak, %bb.g ] ; 2 uses
  %.15 = phi i32 [ 0, %bb.ac ], [ %.84.fr2003, %bb.g ] ; 2 uses
  %.not1611 = icmp ult ptr %.141195, %i.g
  br i1 %.not1611, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = and i32 %6, 2
  %.not1612 = icmp eq i32 %i.ea, 0
  store i32 7, ptr %0, align 8
  %spec.select1685 = select i1 %.not1612, i32 -4, i32 1
  br label %.thread1657

bb.aj:                                            ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %.141195, i64 1
  %i.ec = load i8, ptr %.141195, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 7911
  %i.ee = zext i32 %.15934 to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  store i8 %i.ec, ptr %i.ef, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit2066, %bb.aj
  %.121383 = phi i64 [ %.101381, %.loopexit2066 ], [ %.111382, %bb.aj ]
  %.121285 = phi ptr [ %.101283, %.loopexit2066 ], [ %.111284, %bb.aj ]
  %.151196 = phi ptr [ %.131194, %.loopexit2066 ], [ %i.eb, %bb.aj ]
  %.161105 = phi i64 [ %i.dy, %.loopexit2066 ], [ %.151104, %bb.aj ]
  %.161024 = phi i32 [ %.141022, %.loopexit2066 ], [ %.151023, %bb.aj ]
  %.16935 = phi i32 [ %.14933, %.loopexit2066 ], [ %.15934, %bb.aj ]
  %.16856 = phi i32 [ %.14854, %.loopexit2066 ], [ %.15855, %bb.aj ]
  %.16 = phi i32 [ %i.dz, %.loopexit2066 ], [ %.15, %bb.aj ]
  %i.eg = add i32 %.16935, 1
  br label %bb.ab

bb.al:                                            ; preds = %bb.ab
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 7911
  %i.ei = load i16, ptr %i.eh, align 1            ; 2 uses
  %i.ej = zext i16 %i.ei to i32                   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 7913
  %i.el = load i16, ptr %i.ek, align 1
  %i.em = xor i16 %i.el, %i.ei
  %.not1595 = icmp eq i16 %i.em, -1
  br i1 %.not1595, label %bb.am, label %bb.fo

bb.am:                                            ; preds = %bb.al, %bb.as
  %.141385 = phi i64 [ %.71378, %bb.al ], [ %.181389, %bb.as ] ; 3 uses
  %.141287 = phi ptr [ %.71280, %bb.al ], [ %i.ff, %bb.as ] ; 3 uses
  %.171198 = phi ptr [ %.101191, %bb.al ], [ %.211202, %bb.as ] ; 3 uses
  %.181107 = phi i64 [ %.111100, %bb.al ], [ %.221111, %bb.as ] ; 3 uses
  %.181026 = phi i32 [ %.111019, %bb.al ], [ %.221030, %bb.as ] ; 3 uses
  %.18937 = phi i32 [ %i.ej, %bb.al ], [ %i.fg, %bb.as ] ; 4 uses
  %.18858 = phi i32 [ %.11851, %bb.al ], [ %.21861, %bb.as ] ; 2 uses
  %.18 = phi i32 [ %.11, %bb.al ], [ %.22, %bb.as ] ; 5 uses
  %i.en = icmp ne i32 %.18937, 0
  %i.eo = icmp ne i32 %.18, 0
  %i.ep = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %i.ep, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.eq = icmp ult i32 %.18, 8
  br i1 %i.eq, label %.preheader2073, label %.loopexit2074

.preheader2073:                                   ; preds = %bb.g, %bb.an
  %.161387.ph = phi i64 [ %.141385, %bb.an ], [ %i.aq, %bb.g ] ; 2 uses
  %.161289.ph = phi ptr [ %.141287, %bb.an ], [ %4, %bb.g ] ; 2 uses
  %.191200.ph = phi ptr [ %.171198, %bb.an ], [ %1, %bb.g ]
  %.201109.ph = phi i64 [ %.181107, %bb.an ], [ %i.ai, %bb.g ]
  %.201028.ph = phi i32 [ %.181026, %bb.an ], [ %i.ao, %bb.g ] ; 2 uses
  %.20939.ph = phi i32 [ %.18937, %bb.an ], [ %i.am, %bb.g ] ; 2 uses
  %.20860.ph = phi i32 [ %.18858, %bb.an ], [ %i.ak, %bb.g ]
  %.20.ph = phi i32 [ %.18, %bb.an ], [ %.84.fr2003, %bb.g ]
  br label %bb.ao

bb.ao:                                            ; preds = %.preheader2073, %bb.aq
  %.191200 = phi ptr [ %i.es, %bb.aq ], [ %.191200.ph, %.preheader2073 ] ; 4 uses
  %.201109 = phi i64 [ %i.ex, %bb.aq ], [ %.201109.ph, %.preheader2073 ] ; 2 uses
  %.20 = phi i32 [ %i.ey, %bb.aq ], [ %.20.ph, %.preheader2073 ] ; 4 uses
  %.not1607 = icmp ult ptr %.191200, %i.g
  br i1 %.not1607, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.er = and i32 %6, 2
  %.not1609 = icmp eq i32 %i.er, 0
  store i32 51, ptr %0, align 8
  %spec.select1687 = select i1 %.not1609, i32 -4, i32 1
  br label %.thread1657

bb.aq:                                            ; preds = %bb.ao
  %i.es = getelementptr inbounds nuw i8, ptr %.191200, i64 1 ; 2 uses
  %i.et = load i8, ptr %.191200, align 1
  %i.eu = zext i8 %i.et to i64
  %i.ev = zext nneg i32 %.20 to i64
  %i.ew = shl i64 %i.eu, %i.ev
  %i.ex = or i64 %i.ew, %.201109                  ; 2 uses
  %i.ey = add i32 %.20, 8                         ; 2 uses
  %i.ez = icmp ugt i32 %.20, -9
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.aa, i8 8, i64 144, i1 false)
  %scevgep = getelementptr i8, ptr %0, i64 7716
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %scevgep, i8 9, i64 112, i1 false)
  %scevgep1882 = getelementptr i8, ptr %0, i64 7828
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %scevgep1882, i8 7, i64 24, i1 false)
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
  %i.hd = add i32 %.30949, 1
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
  %i.ih = add i32 %.34953, 1
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
end_hunk_0
begin_hunk_1_@tdefl_compress_block:bb.a
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
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.g, !llvm.loop !30

.epilog-lcssa:                                    ; preds = %bb.g, %.unr-lcssa
  %.lcssa318 = phi i32 [ %i.dx, %.unr-lcssa ], [ %i.eb, %bb.g ]
  %i.ed = trunc i32 %.lcssa318 to i16
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %indvars.iv147.i.i
  store i16 %i.ed, ptr %i.ee, align 2
  br label %bb.h

bb.h:                                             ; preds = %.epilog-lcssa, %bb.d
  %indvars.iv.next148.i.i = add nuw nsw i64 %indvars.iv147.i.i, 1 ; 2 uses
  %exitcond151.not.i.i = icmp eq i64 %indvars.iv.next148.i.i, 288
  br i1 %exitcond151.not.i.i, label %tdefl_optimize_huffman_table.exit.i, label %bb.d

tdefl_optimize_huffman_table.exit.i:              ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.c, i8 0, i64 132, i1 false)
  %i.ef = load i8, ptr %i.h, align 1
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 36971
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 36972
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 36973
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 36974
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 36975
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fl, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 36976
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = add nsw i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 36977
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 4
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 36978
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = add nsw i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 36979
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 4
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 36980
  %i.gn = load i8, ptr %i.gm, align 1
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 36981
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 4
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 36982
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = add nsw i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 36983
  %i.hf = load i8, ptr %i.he, align 1
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 36984
  %i.hl = load i8, ptr %i.hk, align 1
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hm ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = add nsw i32 %i.ho, 1
  store i32 %i.hp, ptr %i.hn, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 36985
  %i.hr = load i8, ptr %i.hq, align 1
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hs ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.ht, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 36986
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hy ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hz, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 36987
  %i.id = load i8, ptr %i.ic, align 1
  %i.ie = zext i8 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ie ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = add nsw i32 %i.ig, 1
  store i32 %i.ih, ptr %i.if, align 4
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 36988
  %i.ij = load i8, ptr %i.ii, align 1
  %i.ik = zext i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ik ; 2 uses
  %i.im = load i32, ptr %i.il, align 4
  %i.in = add nsw i32 %i.im, 1
  store i32 %i.in, ptr %i.il, align 4
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 36989
  %i.ip = load i8, ptr %i.io, align 1
  %i.iq = zext i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iq ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %i.ir, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 36990
  %i.iv = load i8, ptr %i.iu, align 1
  %i.iw = zext i8 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iw ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = add nsw i32 %i.iy, 1
  store i32 %i.iz, ptr %i.ix, align 4
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 36991
  %i.jb = load i8, ptr %i.ja, align 1
  %i.jc = zext i8 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jc ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = add nsw i32 %i.je, 1
  store i32 %i.jf, ptr %i.jd, align 4
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 36992
  %i.jh = load i8, ptr %i.jg, align 1
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ji ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = add nsw i32 %i.jk, 1
  store i32 %i.jl, ptr %i.jj, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 36993
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = zext i8 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jo ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4
  %i.jr = add nsw i32 %i.jq, 1
  store i32 %i.jr, ptr %i.jp, align 4
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 36994
  %i.jt = load i8, ptr %i.js, align 1
  %i.ju = zext i8 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ju ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4
  %i.jx = add nsw i32 %i.jw, 1
  store i32 %i.jx, ptr %i.jv, align 4
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 36995
  %i.jz = load i8, ptr %i.jy, align 1
  %i.ka = zext i8 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ka ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4
  %i.kd = add nsw i32 %i.kc, 1
  store i32 %i.kd, ptr %i.kb, align 4
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 36996
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = zext i8 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 36997
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = zext i8 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.km ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4
  %i.kp = add nsw i32 %i.ko, 1
  store i32 %i.kp, ptr %i.kn, align 4
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 36998
  %i.kr = load i8, ptr %i.kq, align 1
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ks ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4
  %i.kv = add nsw i32 %i.ku, 1
  store i32 %i.kv, ptr %i.kt, align 4
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 36999
  %i.kx = load i8, ptr %i.kw, align 1
  %i.ky = zext i8 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.kz, align 4
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 37000
  %i.ld = load i8, ptr %i.lc, align 1
  %i.le = zext i8 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.le ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 37001
  %i.lj = load i8, ptr %i.li, align 1
  %i.lk = zext i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lk ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4
  %i.ln = add nsw i32 %i.lm, 1
  store i32 %i.ln, ptr %i.ll, align 4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.lo, align 4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.lq = load i32, ptr %i.lp, align 4
  %i.lr = shl i32 %i.lq, 1                        ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.lr, ptr %i.ls, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.lu = load i32, ptr %i.lt, align 8
  %i.lv = add nsw i32 %i.lu, %i.lr
  %i.lw = shl i32 %i.lv, 1                        ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.lw, ptr %i.lx, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.lz = load i32, ptr %i.ly, align 4
  %i.ma = add nsw i32 %i.lz, %i.lw
  %i.mb = shl i32 %i.ma, 1                        ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.mb, ptr %i.mc, align 16
  %i.md = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.me = load i32, ptr %i.md, align 16
  %i.mf = add nsw i32 %i.me, %i.mb
  %i.mg = shl i32 %i.mf, 1                        ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %i.mg, ptr %i.mh, align 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.mj = load i32, ptr %i.mi, align 4
  %i.mk = add nsw i32 %i.mj, %i.mg
  %i.ml = shl i32 %i.mk, 1                        ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.ml, ptr %i.mm, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.mo = load i32, ptr %i.mn, align 8
  %i.mp = add nsw i32 %i.mo, %i.ml
  %i.mq = shl i32 %i.mp, 1                        ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %i.mq, ptr %i.mr, align 4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.mt = load i32, ptr %i.ms, align 4
  %i.mu = add nsw i32 %i.mt, %i.mq
  %i.mv = shl i32 %i.mu, 1                        ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.mv, ptr %i.mw, align 16
  %i.mx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.my = load i32, ptr %i.mx, align 16
  %i.mz = add nsw i32 %i.my, %i.mv
  %i.na = shl i32 %i.mz, 1                        ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %i.na, ptr %i.nb, align 4
  %i.nc = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.nd = load i32, ptr %i.nc, align 4
  %i.ne = add nsw i32 %i.nd, %i.na
  %i.nf = shl i32 %i.ne, 1                        ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.nf, ptr %i.ng, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ni = load i32, ptr %i.nh, align 8
  %i.nj = add nsw i32 %i.ni, %i.nf
  %i.nk = shl i32 %i.nj, 1                        ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.nk, ptr %i.nl, align 4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.nn = load i32, ptr %i.nm, align 4
  %i.no = add nsw i32 %i.nn, %i.nk
  %i.np = shl i32 %i.no, 1                        ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.np, ptr %i.nq, align 16
  %i.nr = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ns = load i32, ptr %i.nr, align 16
  %i.nt = add nsw i32 %i.ns, %i.np
  %i.nu = shl i32 %i.nt, 1                        ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 %i.nu, ptr %i.nv, align 4
  %i.nw = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.nx = load i32, ptr %i.nw, align 4
  %i.ny = add nsw i32 %i.nx, %i.nu
  %i.nz = shl i32 %i.ny, 1                        ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.nz, ptr %i.oa, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.oc = load i32, ptr %i.ob, align 8
  %i.od = add nsw i32 %i.oc, %i.nz
  %i.oe = shl i32 %i.od, 1
  %i.of = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.oe, ptr %i.of, align 4
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 35530
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %tdefl_optimize_huffman_table.exit.i
  %indvars.iv147.i41.i = phi i64 [ 0, %tdefl_optimize_huffman_table.exit.i ], [ %indvars.iv.next148.i45.i, %bb.m ] ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv147.i41.i
  %i.oi = load i8, ptr %i.oh, align 1             ; 4 uses
  %i.oj = icmp eq i8 %i.oi, 0
  br i1 %i.oj, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ok = zext i8 %i.oi to i32                    ; 2 uses
  %i.ol = zext i8 %i.oi to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ol ; 2 uses
  %i.on = load i32, ptr %i.om, align 4            ; 3 uses
  %i.oo = add i32 %i.on, 1
  store i32 %i.oo, ptr %i.om, align 4
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
  %niter331.next.3 = add i32 %niter331, 4         ; 2 uses
  %niter331.ncmp.3.not = icmp eq i32 %niter331.next.3, %unroll_iter330
  br i1 %niter331.ncmp.3.not, label %.unr-lcssa322, label %bb.k

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
  br i1 %epil.iter325.cmp.not, label %.epilog-lcssa327, label %bb.l, !llvm.loop !31

.epilog-lcssa327:                                 ; preds = %bb.l, %.unr-lcssa322
  %.lcssa317 = phi i32 [ %i.pc, %.unr-lcssa322 ], [ %i.pg, %bb.l ]
  %i.pi = trunc i32 %.lcssa317 to i16
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %indvars.iv147.i41.i
  store i16 %i.pi, ptr %i.pj, align 2
  br label %bb.m

bb.m:                                             ; preds = %.epilog-lcssa327, %bb.i
  %indvars.iv.next148.i45.i = add nuw nsw i64 %indvars.iv147.i41.i, 1 ; 2 uses
  %exitcond151.not.i46.i = icmp eq i64 %indvars.iv.next148.i45.i, 32
  br i1 %exitcond151.not.i46.i, label %tdefl_optimize_huffman_table.exit47.i, label %bb.i

tdefl_optimize_huffman_table.exit47.i:            ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.pl = load i32, ptr %i.pk, align 4            ; 2 uses
  %i.pm = shl nuw i32 1, %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.po = load i32, ptr %i.pn, align 8
  %i.pp = or i32 %i.po, %i.pm                     ; 3 uses
  store i32 %i.pp, ptr %i.pn, align 8
  %i.pq = add i32 %i.pl, 2                        ; 4 uses
  store i32 %i.pq, ptr %i.pk, align 4
  %i.pr = icmp ugt i32 %i.pq, 7
  br i1 %i.pr, label %.lr.ph64.i, label %tdefl_start_static_block.exit

.lr.ph64.i:                                       ; preds = %tdefl_optimize_huffman_table.exit47.i
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph64.i
end_hunk_1
begin_hunk_2_@tdefl_optimize_huffman_table:bb.a
tdefl_radix_sort_syms.exit:                       ; preds = %._crit_edge.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  switch i32 %.1.lcssa, label %bb.k [
    i32 0, label %tdefl_huffman_enforce_max_code_size.exit
    i32 1, label %tdefl_calculate_minimum_redundancy.exit.thread166
  ]

tdefl_calculate_minimum_redundancy.exit.thread166: ; preds = %tdefl_radix_sort_syms.exit
  store i16 1, ptr %.03953.us.i, align 2
  br label %.lr.ph.preheader

bb.k:                                             ; preds = %tdefl_radix_sort_syms.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %.03953.us.i, i64 4
  %i.fw = load i16, ptr %i.fv, align 2
  %i.fx = load i16, ptr %.03953.us.i, align 2
  %i.fy = add i16 %i.fx, %i.fw
  store i16 %i.fy, ptr %.03953.us.i, align 2
  %i.fz = add i32 %.1.lcssa, -1                   ; 2 uses
  %i.ga = icmp sgt i32 %.1.lcssa, 2
  br i1 %i.ga, label %.lr.ph.preheader.i82, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.k
  %i.gb = add nsw i32 %.1.lcssa, -2               ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gc
  store i16 0, ptr %i.gd, align 2
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
  %i.gg = load i16, ptr %i.gf, align 2            ; 2 uses
  br i1 %.not.i86, label %bb.l, label %.lr.ph._crit_edge.i

bb.l:                                             ; preds = %.lr.ph.i84
  %i.gh = sext i32 %.07992.i to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2            ; 2 uses
  %i.gk = icmp ult i16 %i.gg, %i.gj
  br i1 %i.gk, label %.lr.ph._crit_edge.i, label %bb.m

.lr.ph._crit_edge.i:                              ; preds = %bb.l, %.lr.ph.i84
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.gg, ptr %i.gl, align 2
  %i.gm = trunc i64 %indvars.iv.i85 to i16
  %i.gn = add nsw i32 %.08291.i, 1                ; 2 uses
  store i16 %i.gm, ptr %i.gf, align 2
  %.pre = sext i32 %i.gn to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.go = add nsw i32 %.07992.i, 1
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.gj, ptr %i.gp, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph._crit_edge.i
  %.pre-phi = phi i64 [ %i.ge, %bb.m ], [ %.pre, %.lr.ph._crit_edge.i ] ; 4 uses
  %.183.i = phi i32 [ %.08291.i, %bb.m ], [ %i.gn, %.lr.ph._crit_edge.i ] ; 2 uses
  %.180.i = phi i32 [ %i.go, %bb.m ], [ %.07992.i, %.lr.ph._crit_edge.i ] ; 5 uses
  %.not88.i = icmp slt i32 %.180.i, %.1.lcssa
  br i1 %.not88.i, label %bb.o, label %._crit_edge127.i

._crit_edge127.i:                                 ; preds = %bb.n
  %.phi.trans.insert129.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %.pre130.i = load i16, ptr %.phi.trans.insert129.i, align 2
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.gq = icmp sgt i64 %indvars.iv.i85, %.pre-phi
  br i1 %i.gq, label %bb.p, label %._crit_edge123.i

._crit_edge123.i:                                 ; preds = %bb.o
  %.phi.trans.insert124.i = sext i32 %.180.i to i64
  %.phi.trans.insert125.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.phi.trans.insert124.i
  %.pre126.i = load i16, ptr %.phi.trans.insert125.i, align 2
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gr = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.gs = load i16, ptr %i.gr, align 2            ; 2 uses
  %i.gt = sext i32 %.180.i to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2            ; 2 uses
  %i.gw = icmp ult i16 %i.gs, %i.gv
  br i1 %i.gw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %._crit_edge127.i
  %i.gx = phi i16 [ %.pre130.i, %._crit_edge127.i ], [ %i.gs, %bb.p ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.hb = add i16 %i.gz, %i.gx
  store i16 %i.hb, ptr %i.gy, align 2
  %i.hc = trunc i64 %indvars.iv.i85 to i16
  %i.hd = add nsw i32 %.183.i, 1
  store i16 %i.hc, ptr %i.ha, align 2
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %._crit_edge123.i
  %i.he = phi i16 [ %.pre126.i, %._crit_edge123.i ], [ %i.gv, %bb.p ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.hg = load i16, ptr %i.hf, align 2
  %i.hh = add nsw i32 %.180.i, 1
  %i.hi = add i16 %i.hg, %i.he
  store i16 %i.hi, ptr %i.hf, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.284.i = phi i32 [ %i.hd, %bb.q ], [ %.183.i, %bb.r ]
  %.281.i = phi i32 [ %.180.i, %bb.q ], [ %i.hh, %bb.r ]
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond.not.i88, label %._crit_edge.i, label %.lr.ph.i84

._crit_edge.i:                                    ; preds = %bb.s
  %i.hj = add nsw i32 %.1.lcssa, -2               ; 3 uses
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hk
  store i16 0, ptr %i.hl, align 2
  %i.hm = add nsw i32 %.1.lcssa, -3               ; 2 uses
  %i.hn = zext i32 %i.hm to i64                   ; 3 uses
  %i.ho = add nuw nsw i64 %i.hn, 1
  %xtraiter209 = and i64 %i.ho, 3                 ; 2 uses
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol

.lr.ph96.i.prol:                                  ; preds = %._crit_edge.i, %.lr.ph96.i.prol
  %indvars.iv115.i.prol = phi i64 [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ], [ %i.hn, %._crit_edge.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.i.prol ], [ 0, %._crit_edge.i ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i.prol ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 2
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = add i16 %i.ht, 1
  store i16 %i.hu, ptr %i.hp, align 2
  %indvars.iv.next116.i.prol = add nsw i64 %indvars.iv115.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter209
  br i1 %prol.iter.cmp.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol, !llvm.loop !39

.lr.ph96.i.prol.loopexit:                         ; preds = %.lr.ph96.i.prol, %._crit_edge.i
  %indvars.iv115.i.unr = phi i64 [ %i.hn, %._crit_edge.i ], [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ]
  %i.hv = icmp ult i32 %i.hm, 3
  br i1 %i.hv, label %.preheader.i81.preheader, label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i.3, %.lr.ph96.i ], [ %indvars.iv115.i.unr, %.lr.ph96.i.prol.loopexit ] ; 5 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2
  %i.hy = zext i16 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2
  %i.ib = add i16 %i.ia, 1
  store i16 %i.ib, ptr %i.hw, align 2
  %i.ic = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
  %i.id = getelementptr i8, ptr %i.ic, i64 -4     ; 2 uses
  %i.ie = load i16, ptr %i.id, align 2
  %i.if = zext i16 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2
  %i.ii = add i16 %i.ih, 1
  store i16 %i.ii, ptr %i.id, align 2
  %i.ij = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
  %i.ik = getelementptr i8, ptr %i.ij, i64 -8     ; 2 uses
  %i.il = load i16, ptr %i.ik, align 2
  %i.im = zext i16 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.im
  %i.io = load i16, ptr %i.in, align 2
  %i.ip = add i16 %i.io, 1
  store i16 %i.ip, ptr %i.ik, align 2
  %indvars.iv.next116.i.2 = add nsw i64 %indvars.iv115.i, -3 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.next116.i.2 ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2
  %i.is = zext i16 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2
  %i.iv = add i16 %i.iu, 1
  store i16 %i.iv, ptr %i.iq, align 2
  %indvars.iv.next116.i.3 = add nsw i64 %indvars.iv115.i, -4
  %.not140.i.3 = icmp eq i64 %indvars.iv.next116.i.2, 0
  br i1 %.not140.i.3, label %.preheader.i81.preheader, label %.lr.ph96.i

.preheader.i81.preheader:                         ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i, %._crit_edge.thread.i
  %.385110.i.ph = phi i32 [ %i.gb, %._crit_edge.thread.i ], [ %i.hj, %.lr.ph96.i ], [ %i.hj, %.lr.ph96.i.prol.loopexit ]
  br label %.preheader.i81

.preheader.i81:                                   ; preds = %.preheader.i81.preheader, %._crit_edge108.i
  %.0113.i = phi i32 [ %i.jw, %._crit_edge108.i ], [ 0, %.preheader.i81.preheader ] ; 3 uses
  %.075112.i = phi i32 [ %i.jv, %._crit_edge108.i ], [ 1, %.preheader.i81.preheader ] ; 5 uses
  %.2111.i = phi i32 [ %.3.lcssa.i, %._crit_edge108.i ], [ %i.fz, %.preheader.i81.preheader ] ; 2 uses
  %.385110.i = phi i32 [ %.4.lcssa.i, %._crit_edge108.i ], [ %.385110.i.ph, %.preheader.i81.preheader ] ; 5 uses
  %i.iw = icmp sgt i32 %.385110.i, -1
  br i1 %i.iw, label %.lr.ph99.preheader.i, label %.critedge.i

.lr.ph99.preheader.i:                             ; preds = %.preheader.i81
  %i.ix = add nuw i32 %.385110.i, 1
  br label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %bb.t, %.lr.ph99.preheader.i
  %.198.i = phi i32 [ %i.jc, %bb.t ], [ 0, %.lr.ph99.preheader.i ] ; 3 uses
  %.497.i = phi i32 [ %8, %bb.t ], [ %.385110.i, %.lr.ph99.preheader.i ] ; 3 uses
  %7 = zext nneg i32 %.497.i to i64
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %7
  %i.iz = load i16, ptr %i.iy, align 2
  %i.ja = zext i16 %i.iz to i32
  %i.jb = icmp eq i32 %.0113.i, %i.ja
  br i1 %i.jb, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph99.i
  %i.jc = add nuw i32 %.198.i, 1
  %8 = add nsw i32 %.497.i, -1
  %exitcond118.not.i = icmp eq i32 %.198.i, %.385110.i
  br i1 %exitcond118.not.i, label %.critedge.i, label %.lr.ph99.i

.critedge.i:                                      ; preds = %bb.t, %.lr.ph99.i, %.preheader.i81
  %.4.lcssa.i = phi i32 [ %.385110.i, %.preheader.i81 ], [ %.497.i, %.lr.ph99.i ], [ -1, %bb.t ]
  %.1.lcssa.i = phi i32 [ 0, %.preheader.i81 ], [ %.198.i, %.lr.ph99.i ], [ %i.ix, %bb.t ] ; 6 uses
  %i.jd = icmp sgt i32 %.075112.i, %.1.lcssa.i
  br i1 %i.jd, label %.lr.ph107.i, label %._crit_edge108.i

.lr.ph107.i:                                      ; preds = %.critedge.i
  %i.je = trunc i32 %.0113.i to i16               ; 5 uses
  %i.jf = sext i32 %.2111.i to i64                ; 2 uses
  %i.jg = sub i32 %.075112.i, %.1.lcssa.i
  %xtraiter211 = and i32 %i.jg, 3                 ; 2 uses
  %lcmp.mod212.not = icmp eq i32 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph107.i, %.prol.preheader
  %indvars.iv119.i.prol = phi i64 [ %indvars.iv.next120.i.prol, %.prol.preheader ], [ %i.jf, %.lr.ph107.i ] ; 2 uses
  %.176106.i.prol = phi i32 [ %i.ji, %.prol.preheader ], [ %.075112.i, %.lr.ph107.i ]
  %prol.iter213 = phi i32 [ %prol.iter213.next, %.prol.preheader ], [ 0, %.lr.ph107.i ]
  %indvars.iv.next120.i.prol = add nsw i64 %indvars.iv119.i.prol, -1 ; 3 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i.prol
  store i16 %i.je, ptr %i.jh, align 2
  %i.ji = add nsw i32 %.176106.i.prol, -1         ; 2 uses
  %prol.iter213.next = add i32 %prol.iter213, 1   ; 2 uses
  %prol.iter213.cmp.not = icmp eq i32 %prol.iter213.next, %xtraiter211
  br i1 %prol.iter213.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !40

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph107.i
  %indvars.iv119.i.unr = phi i64 [ %i.jf, %.lr.ph107.i ], [ %indvars.iv.next120.i.prol, %.prol.preheader ]
  %.176106.i.unr = phi i32 [ %.075112.i, %.lr.ph107.i ], [ %i.ji, %.prol.preheader ]
  %indvars.iv.next120.i.lcssa.unr = phi i64 [ poison, %.lr.ph107.i ], [ %indvars.iv.next120.i.prol, %.prol.preheader ]
  %i.jj = sub i32 %.1.lcssa.i, %.075112.i
  %i.jk = icmp ugt i32 %i.jj, -4
  br i1 %i.jk, label %._crit_edge108.loopexit.i, label %.lr.ph107.i.new

.lr.ph107.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph107.i.new
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ], [ %indvars.iv119.i.unr, %.prol.loopexit ] ; 5 uses
  %.176106.i = phi i32 [ %i.js, %.lr.ph107.i.new ], [ %.176106.i.unr, %.prol.loopexit ]
  %i.jl = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  store i16 %i.je, ptr %i.jl, align 2
  %i.jm = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jn = getelementptr i8, ptr %i.jm, i64 -4
  store i16 %i.je, ptr %i.jn, align 2
  %i.jo = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jp = getelementptr i8, ptr %i.jo, i64 -8
  store i16 %i.je, ptr %i.jp, align 2
  %indvars.iv.next120.i.3 = add nsw i64 %indvars.iv119.i, -4 ; 2 uses
  %i.jq = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jr = getelementptr i8, ptr %i.jq, i64 -12
  store i16 %i.je, ptr %i.jr, align 2
  %i.js = add nsw i32 %.176106.i, -4              ; 2 uses
  %i.jt = icmp sgt i32 %i.js, %.1.lcssa.i
  br i1 %i.jt, label %.lr.ph107.i.new, label %._crit_edge108.loopexit.i

._crit_edge108.loopexit.i:                        ; preds = %.lr.ph107.i.new, %.prol.loopexit
  %indvars.iv.next120.i.lcssa = phi i64 [ %indvars.iv.next120.i.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ]
  %i.ju = trunc nsw i64 %indvars.iv.next120.i.lcssa to i32
  br label %._crit_edge108.i

._crit_edge108.i:                                 ; preds = %._crit_edge108.loopexit.i, %.critedge.i
  %.3.lcssa.i = phi i32 [ %.2111.i, %.critedge.i ], [ %i.ju, %._crit_edge108.loopexit.i ]
  %i.jv = shl nuw nsw i32 %.1.lcssa.i, 1
  %i.jw = add nuw nsw i32 %.0113.i, 1
  %.not89.i = icmp eq i32 %.1.lcssa.i, 0
  br i1 %.not89.i, label %tdefl_calculate_minimum_redundancy.exit, label %.preheader.i81

tdefl_calculate_minimum_redundancy.exit:          ; preds = %._crit_edge108.i
  %i.jx = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.jx, label %.lr.ph.preheader, label %tdefl_huffman_enforce_max_code_size.exit

.lr.ph.preheader:                                 ; preds = %tdefl_calculate_minimum_redundancy.exit.thread166, %tdefl_calculate_minimum_redundancy.exit
  %xtraiter214 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.jy = icmp ult i32 %.1.lcssa, 4
  br i1 %i.jy, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter218 = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next129.3, %.lr.ph ] ; 5 uses
  %niter219 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter219.next.3, %.lr.ph ]
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.ka = load i16, ptr %i.jz, align 2
  %i.kb = zext i16 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kb ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4
  %i.ke = add nsw i32 %i.kd, 1
  store i32 %i.ke, ptr %i.kc, align 4
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kh = load i16, ptr %i.kg, align 2
  %i.ki = zext i16 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ki ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4
  %i.kl = add nsw i32 %i.kk, 1
  store i32 %i.kl, ptr %i.kj, align 4
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load i16, ptr %i.kn, align 2
  %i.kp = zext i16 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kp ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4
  %i.ks = add nsw i32 %i.kr, 1
  store i32 %i.ks, ptr %i.kq, align 4
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 12
  %i.kv = load i16, ptr %i.ku, align 2
  %i.kw = zext i16 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kw ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4
  %i.kz = add nsw i32 %i.ky, 1
  store i32 %i.kz, ptr %i.kx, align 4
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %niter219.next.3 = add i64 %niter219, 4         ; 2 uses
  %niter219.ncmp.3 = icmp eq i64 %niter219.next.3, %unroll_iter218
  br i1 %niter219.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

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
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128.epil
  %i.lb = load i16, ptr %i.la, align 2
  %i.lc = zext i16 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lc ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4
  %i.lf = add nsw i32 %i.le, 1
  store i32 %i.lf, ptr %i.ld, align 4
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter215.next = add i64 %epil.iter215, 1   ; 2 uses
  %epil.iter215.cmp.not = icmp eq i64 %epil.iter215.next, %xtraiter214
  br i1 %epil.iter215.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.lg = icmp eq i32 %.1.lcssa, 1
  br i1 %i.lg, label %tdefl_huffman_enforce_max_code_size.exit, label %.preheader35.i

.preheader35.i:                                   ; preds = %._crit_edge
  %i.lh = zext nneg i32 %3 to i64                 ; 11 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lh ; 5 uses
  %i.lj = sub nuw nsw i64 32, %i.lh               ; 2 uses
  %n.vec = and i64 %i.lj, 56                      ; 4 uses
  %i.lk = add nuw nsw i64 %n.vec, %i.lh
  %.promoted.i = load i32, ptr %i.li, align 4
  %i.ll = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted.i, i64 0
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lh ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 20
  %wide.load = load <4 x i32>, ptr %i.ln, align 4
  %wide.load180 = load <4 x i32>, ptr %i.lo, align 4 ; 2 uses
  %i.lp = add <4 x i32> %wide.load, %i.ll         ; 2 uses
  %i.lq = icmp eq i64 %n.vec, 8
  br i1 %i.lq, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %.preheader35.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.lh ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 20
  %wide.load.1 = load <4 x i32>, ptr %i.lt, align 4
  %wide.load180.1 = load <4 x i32>, ptr %i.lu, align 4
  %i.lv = add <4 x i32> %wide.load.1, %i.lp       ; 2 uses
  %i.lw = add <4 x i32> %wide.load180.1, %wide.load180 ; 2 uses
  %i.lx = icmp eq i64 %n.vec, 16
  br i1 %i.lx, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.lh ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 20
  %wide.load.2 = load <4 x i32>, ptr %i.ma, align 4
  %wide.load180.2 = load <4 x i32>, ptr %i.mb, align 4
  %i.mc = add <4 x i32> %wide.load.2, %i.lv
  %i.md = add <4 x i32> %wide.load180.2, %i.lw
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %.preheader35.i
  %.lcssa187 = phi <4 x i32> [ %i.lp, %.preheader35.i ], [ %i.lv, %vector.body.1 ], [ %i.mc, %vector.body.2 ]
  %.lcssa186 = phi <4 x i32> [ %wide.load180, %.preheader35.i ], [ %i.lw, %vector.body.1 ], [ %i.md, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa186, %.lcssa187
  %i.me = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.me, ptr %i.li, align 4
  %cmp.n = icmp eq i64 %i.lj, %n.vec
  br i1 %cmp.n, label %.preheader34.i.preheader, label %scalar.ph

.preheader34.i.preheader:                         ; preds = %scalar.ph, %middle.block
  %xtraiter220 = and i64 %i.lh, 3                 ; 3 uses
  %unroll_iter225 = and i64 %i.lh, 12
  br label %.preheader34.i

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90, %scalar.ph ], [ %i.lk, %middle.block ]
  %i.mf = phi i32 [ %i.mi, %scalar.ph ], [ %i.me, %middle.block ]
end_hunk_2
