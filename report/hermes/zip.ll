Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/zip?download=true
inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 52
begin_hunk_0_@tinfl_decompress:bb.a
  %.231182 = phi i64 [ %.171176, %bb.ar ], [ %.251184, %bb.bi ] ; 2 uses
  %.281082 = phi i32 [ %.221076, %bb.ar ], [ %i.fu, %bb.bi ] ; 2 uses
  %.28977 = phi i32 [ %.23972, %bb.ar ], [ %.30979, %bb.bi ] ; 2 uses
  %.29 = phi i32 [ %.23, %bb.ar ], [ %.31, %bb.bi ] ; 2 uses
  %.not1837 = icmp eq i32 %.281082, 0
  br i1 %.not1837, label %bb.gh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.bd
  %.301580 = phi i32 [ %.291579, %bb.bb ], [ %i.z, %bb.bd ] ; 2 uses
  %.301479 = phi i64 [ %.291478, %bb.bb ], [ %i.t, %bb.bd ] ; 2 uses
  %.291379 = phi ptr [ %.281378, %bb.bb ], [ %1, %bb.bd ] ; 2 uses
  %.241274 = phi ptr [ %.231273, %bb.bb ], [ %4, %bb.bd ] ; 3 uses
  %.241183 = phi i64 [ %.231182, %bb.bb ], [ %i.ab, %bb.bd ] ; 2 uses
  %.291083 = phi i32 [ %.281082, %bb.bb ], [ %i.x, %bb.bd ] ; 2 uses
  %.29978 = phi i32 [ %.28977, %bb.bb ], [ %i.v, %bb.bd ] ; 2 uses
  %.30 = phi i32 [ %.29, %bb.bb ], [ %i.r, %bb.bd ] ; 2 uses
  %.not1845 = icmp ult ptr %.241274, %i.f
  br i1 %.not1845, label %bb.be, label %.sink.split2211

bb.bd:                                            ; preds = %bb.c
  br label %bb.bc, !llvm.loop !200

bb.be:                                            ; preds = %bb.bc, %bb.bh
  %.311581 = phi i32 [ %.301580, %bb.bc ], [ %i.z, %bb.bh ] ; 3 uses
  %.311480 = phi i64 [ %.301479, %bb.bc ], [ %i.t, %bb.bh ] ; 3 uses
  %.301380 = phi ptr [ %.291379, %bb.bc ], [ %1, %bb.bh ] ; 6 uses
  %.251275 = phi ptr [ %.241274, %bb.bc ], [ %4, %bb.bh ] ; 5 uses
  %.251184 = phi i64 [ %.241183, %bb.bc ], [ %i.ab, %bb.bh ] ; 3 uses
  %.301084 = phi i32 [ %.291083, %bb.bc ], [ %i.x, %bb.bh ] ; 4 uses
  %.30979 = phi i32 [ %.29978, %bb.bc ], [ %i.v, %bb.bh ] ; 3 uses
  %.31 = phi i32 [ %.30, %bb.bc ], [ %i.r, %bb.bh ] ; 3 uses
  %.not1846 = icmp ult ptr %.301380, %i.d
  br i1 %.not1846, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fi = and i32 %6, 2
  %.not1847 = icmp eq i32 %i.fi, 0
  br i1 %.not1847, label %bb.bg, label %.sink.split2211

bb.bg:                                            ; preds = %bb.c, %bb.bf
  %.321582 = phi i32 [ %.311581, %bb.bf ], [ %i.z, %bb.c ]
  %.321481 = phi i64 [ %.311480, %bb.bf ], [ %i.t, %bb.c ]
  %.311381 = phi ptr [ %.301380, %bb.bf ], [ %1, %bb.c ]
  %.261276 = phi ptr [ %.251275, %bb.bf ], [ %4, %bb.c ]
  %.261185 = phi i64 [ %.251184, %bb.bf ], [ %i.ab, %bb.c ]
  %.311085 = phi i32 [ %.301084, %bb.bf ], [ %i.x, %bb.c ]
  %.31980 = phi i32 [ %.30979, %bb.bf ], [ %i.v, %bb.c ]
  %.32 = phi i32 [ %.31, %bb.bf ], [ %i.r, %bb.c ]
  br label %.sink.split2211

bb.bh:                                            ; preds = %bb.c
  br label %bb.be, !llvm.loop !201

bb.bi:                                            ; preds = %bb.be
  %i.fj = ptrtoint ptr %i.f to i64
  %i.fk = ptrtoint ptr %.251275 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = ptrtoint ptr %i.d to i64
  %i.fn = ptrtoint ptr %.301380 to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %. = tail call i64 @llvm.umin.i64(i64 %i.fl, i64 %i.fo)
  %i.fp = zext i32 %.301084 to i64
  %i.fq = tail call i64 @llvm.umin.i64(i64 %., i64 %i.fp) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.251275, ptr align 1 %.301380, i64 %i.fq, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %.301380, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %.251275, i64 %i.fq
  %i.ft = trunc nuw i64 %i.fq to i32
  %i.fu = sub i32 %.301084, %i.ft
  br label %bb.bb, !llvm.loop !202

.lr.ph1960.preheader:                             ; preds = %bb.u
  %i.fv = getelementptr i8, ptr %0, i64 72
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 288, ptr %i.fw, align 4, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 32, ptr %i.fx, align 8, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 3560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fy, i8 5, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.fv, i8 8, i64 144, i1 false), !tbaa !19
  %scevgep = getelementptr i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %scevgep, i8 9, i64 112, i1 false), !tbaa !19
  %scevgep2054 = getelementptr i8, ptr %0, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep2054, i8 7, i64 24, i1 false), !tbaa !19
  %scevgep2055 = getelementptr i8, ptr %0, i64 352
  store i64 578721382704613384, ptr %scevgep2055, align 8
  br label %.loopexit1927

default.unreachable:                              ; preds = %bb.u
  unreachable

bb.bj:                                            ; preds = %bb.u, %bb.bp
  %.341584 = phi i32 [ %.381588, %bb.bp ], [ %.101560, %bb.u ] ; 3 uses
  %.341483 = phi i64 [ %i.ha, %bb.bp ], [ %i.by, %bb.u ] ; 3 uses
  %.331383 = phi ptr [ %.371387, %bb.bp ], [ %.91359, %bb.u ] ; 3 uses
  %.281278 = phi ptr [ %.321282, %bb.bp ], [ %.41254, %bb.u ] ; 3 uses
  %.281187 = phi i64 [ %.321191, %bb.bp ], [ %.41163, %bb.u ] ; 3 uses
  %.331087 = phi i32 [ %i.hf, %bb.bp ], [ 0, %bb.u ] ; 4 uses
  %.33982 = phi i32 [ %.37986, %bb.bp ], [ %.10959, %bb.u ] ; 3 uses
  %.34 = phi i32 [ %i.hb, %bb.bp ], [ %i.bz, %bb.u ] ; 4 uses
  %i.fz = icmp ult i32 %.331087, 3
  br i1 %i.fz, label %bb.bk, label %bb.bq

bb.bk:                                            ; preds = %bb.bj
  %i.ga = zext nneg i32 %.331087 to i64           ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr @.str.11, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !19  ; 2 uses
  %i.gd = sext i8 %i.gc to i32                    ; 2 uses
  %i.ge = icmp ult i32 %.34, %i.gd
  br i1 %i.ge, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk, %bb.bo
  %.351585 = phi i32 [ %.341584, %bb.bk ], [ %.371587, %bb.bo ] ; 2 uses
  %.351484 = phi i64 [ %.341483, %bb.bk ], [ %i.gl, %bb.bo ] ; 2 uses
  %.341384 = phi ptr [ %.331383, %bb.bk ], [ %.361386, %bb.bo ] ; 3 uses
  %.291279 = phi ptr [ %.281278, %bb.bk ], [ %.311281, %bb.bo ] ; 2 uses
  %.291188 = phi i64 [ %.281187, %bb.bk ], [ %.311190, %bb.bo ] ; 2 uses
  %.341088 = phi i32 [ %.331087, %bb.bk ], [ %.361090, %bb.bo ] ; 2 uses
  %.34983 = phi i32 [ %.33982, %bb.bk ], [ %.36985, %bb.bo ] ; 2 uses
  %.35 = phi i32 [ %.34, %bb.bk ], [ %i.gm, %bb.bo ] ; 2 uses
  %.not1798 = icmp ult ptr %.341384, %i.d
  br i1 %.not1798, label %.sink.split2187, label %bb.bm

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  %.361586 = phi i32 [ %.351585, %bb.bl ], [ %i.z, %bb.bn ] ; 2 uses
  %.361485 = phi i64 [ %.351484, %bb.bl ], [ %i.t, %bb.bn ] ; 2 uses
  %.351385 = phi ptr [ %.341384, %bb.bl ], [ %1, %bb.bn ] ; 2 uses
  %.301280 = phi ptr [ %.291279, %bb.bl ], [ %4, %bb.bn ] ; 2 uses
  %.301189 = phi i64 [ %.291188, %bb.bl ], [ %i.ab, %bb.bn ] ; 2 uses
  %.351089 = phi i32 [ %.341088, %bb.bl ], [ %i.x, %bb.bn ] ; 2 uses
  %.35984 = phi i32 [ %.34983, %bb.bl ], [ %i.v, %bb.bn ] ; 2 uses
  %.36 = phi i32 [ %.35, %bb.bl ], [ %i.r, %bb.bn ] ; 2 uses
  %i.gf = and i32 %6, 2
  %.not1799 = icmp eq i32 %i.gf, 0
  br i1 %.not1799, label %bb.bo, label %.sink.split2211

bb.bn:                                            ; preds = %bb.c
  %.not1777 = icmp eq i64 %i.c, 0
  br i1 %.not1777, label %bb.bm, label %.sink.split2187

.sink.split2187:                                  ; preds = %bb.bl, %bb.bn
  %.sink2189 = phi ptr [ %1, %bb.bn ], [ %.341384, %bb.bl ] ; 2 uses
  %.371587.ph = phi i32 [ %i.z, %bb.bn ], [ %.351585, %bb.bl ]
  %.371486.ph = phi i64 [ %i.t, %bb.bn ], [ %.351484, %bb.bl ]
  %.311281.ph = phi ptr [ %4, %bb.bn ], [ %.291279, %bb.bl ]
  %.311190.ph = phi i64 [ %i.ab, %bb.bn ], [ %.291188, %bb.bl ]
  %.361090.ph = phi i32 [ %i.x, %bb.bn ], [ %.341088, %bb.bl ]
  %.36985.ph = phi i32 [ %i.v, %bb.bn ], [ %.34983, %bb.bl ]
  %.37.ph = phi i32 [ %i.r, %bb.bn ], [ %.35, %bb.bl ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.sink2189, i64 1
  %i.gh = load i8, ptr %.sink2189, align 1, !tbaa !19
  %i.gi = zext i8 %i.gh to i64
  br label %bb.bo

bb.bo:                                            ; preds = %.sink.split2187, %bb.bm
  %.371587 = phi i32 [ %.361586, %bb.bm ], [ %.371587.ph, %.sink.split2187 ] ; 2 uses
  %.371486 = phi i64 [ %.361485, %bb.bm ], [ %.371486.ph, %.sink.split2187 ]
  %.361386 = phi ptr [ %.351385, %bb.bm ], [ %i.gg, %.sink.split2187 ] ; 2 uses
  %.311281 = phi ptr [ %.301280, %bb.bm ], [ %.311281.ph, %.sink.split2187 ] ; 2 uses
  %.311190 = phi i64 [ %.301189, %bb.bm ], [ %.311190.ph, %.sink.split2187 ] ; 2 uses
  %.361090 = phi i32 [ %.351089, %bb.bm ], [ %.361090.ph, %.sink.split2187 ] ; 3 uses
  %.01045.shrunk = phi i64 [ 0, %bb.bm ], [ %i.gi, %.sink.split2187 ]
  %.36985 = phi i32 [ %.35984, %bb.bm ], [ %.36985.ph, %.sink.split2187 ] ; 2 uses
  %.37 = phi i32 [ %.36, %bb.bm ], [ %.37.ph, %.sink.split2187 ] ; 2 uses
  %i.gj = zext nneg i32 %.37 to i64
  %i.gk = shl i64 %.01045.shrunk, %i.gj
  %i.gl = or i64 %i.gk, %.371486                  ; 2 uses
  %i.gm = add i32 %.37, 8                         ; 3 uses
  %i.gn = zext i32 %.361090 to i64                ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr @.str.11, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !19  ; 2 uses
  %i.gq = sext i8 %i.gp to i32                    ; 2 uses
  %i.gr = icmp ult i32 %i.gm, %i.gq
  br i1 %i.gr, label %bb.bl, label %bb.bp, !llvm.loop !203

bb.bp:                                            ; preds = %bb.bo, %bb.bk
  %.pre-phi2103 = phi i32 [ %i.gq, %bb.bo ], [ %i.gd, %bb.bk ] ; 2 uses
  %i.gs = phi i8 [ %i.gp, %bb.bo ], [ %i.gc, %bb.bk ]
  %.pre-phi = phi i64 [ %i.gn, %bb.bo ], [ %i.ga, %bb.bk ] ; 2 uses
  %.381588 = phi i32 [ %.371587, %bb.bo ], [ %.341584, %bb.bk ]
  %.381487 = phi i64 [ %i.gl, %bb.bo ], [ %.341483, %bb.bk ] ; 2 uses
  %.371387 = phi ptr [ %.361386, %bb.bo ], [ %.331383, %bb.bk ]
  %.321282 = phi ptr [ %.311281, %bb.bo ], [ %.281278, %bb.bk ]
  %.321191 = phi i64 [ %.311190, %bb.bo ], [ %.281187, %bb.bk ]
  %.371091 = phi i32 [ %.361090, %bb.bo ], [ %.331087, %bb.bk ]
  %.37986 = phi i32 [ %.36985, %bb.bo ], [ %.33982, %bb.bk ]
  %.38 = phi i32 [ %i.gm, %bb.bo ], [ %.34, %bb.bk ]
  %i.gt = zext nneg i8 %i.gs to i32
  %notmask = shl nsw i32 -1, %i.gt
  %i.gu = xor i32 %notmask, -1
  %i.gv = trunc i64 %.381487 to i32
  %i.gw = and i32 %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %.pre-phi
  %i.gz = zext nneg i32 %.pre-phi2103 to i64
  %i.ha = lshr i64 %.381487, %i.gz
  %i.hb = sub i32 %.38, %.pre-phi2103
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr @tinfl_decompress.s_min_table_sizes, i64 %.pre-phi
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !18
  %i.he = add i32 %i.gw, %i.hd
  store i32 %i.he, ptr %i.gy, align 4, !tbaa !18
  %i.hf = add i32 %.371091, 1
  br label %bb.bj, !llvm.loop !204

bb.bq:                                            ; preds = %bb.bj
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 7048
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.hg, i8 0, i64 288, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %bb.bx, %bb.bq
  %.391589 = phi i32 [ %.341584, %bb.bq ], [ %.431593, %bb.bx ] ; 3 uses
  %.391488 = phi i64 [ %.341483, %bb.bq ], [ %i.hw, %bb.bx ] ; 3 uses
  %.381388 = phi ptr [ %.331383, %bb.bq ], [ %.421392, %bb.bx ] ; 3 uses
  %.331283 = phi ptr [ %.281278, %bb.bq ], [ %.371287, %bb.bx ] ; 3 uses
  %.331192 = phi i64 [ %.281187, %bb.bq ], [ %.371196, %bb.bx ] ; 3 uses
  %.381092 = phi i32 [ 0, %bb.bq ], [ %i.ie, %bb.bx ] ; 4 uses
  %.38987 = phi i32 [ %.33982, %bb.bq ], [ %.42991, %bb.bx ] ; 3 uses
  %.39 = phi i32 [ %.34, %bb.bq ], [ %i.hx, %bb.bx ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !18
  %i.hj = icmp ult i32 %.381092, %i.hi
  br i1 %i.hj, label %bb.bs, label %bb.by

bb.bs:                                            ; preds = %bb.br
  %i.hk = icmp ult i32 %.39, 3
  br i1 %i.hk, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs, %bb.bw
  %.401590 = phi i32 [ %.391589, %bb.bs ], [ %.421592, %bb.bw ] ; 2 uses
  %.401489 = phi i64 [ %.391488, %bb.bs ], [ %i.hr, %bb.bw ] ; 2 uses
  %.391389 = phi ptr [ %.381388, %bb.bs ], [ %.411391, %bb.bw ] ; 3 uses
  %.341284 = phi ptr [ %.331283, %bb.bs ], [ %.361286, %bb.bw ] ; 2 uses
  %.341193 = phi i64 [ %.331192, %bb.bs ], [ %.361195, %bb.bw ] ; 2 uses
  %.391093 = phi i32 [ %.381092, %bb.bs ], [ %.411095, %bb.bw ] ; 2 uses
  %.39988 = phi i32 [ %.38987, %bb.bs ], [ %.41990, %bb.bw ] ; 2 uses
  %.40 = phi i32 [ %.39, %bb.bs ], [ %i.hs, %bb.bw ] ; 2 uses
  %.not1796 = icmp ult ptr %.391389, %i.d
  br i1 %.not1796, label %.sink.split2190, label %bb.bu

bb.bu:                                            ; preds = %bb.bv, %bb.bt
  %.411591 = phi i32 [ %.401590, %bb.bt ], [ %i.z, %bb.bv ] ; 2 uses
  %.411490 = phi i64 [ %.401489, %bb.bt ], [ %i.t, %bb.bv ] ; 2 uses
  %.401390 = phi ptr [ %.391389, %bb.bt ], [ %1, %bb.bv ] ; 2 uses
  %.351285 = phi ptr [ %.341284, %bb.bt ], [ %4, %bb.bv ] ; 2 uses
  %.351194 = phi i64 [ %.341193, %bb.bt ], [ %i.ab, %bb.bv ] ; 2 uses
  %.401094 = phi i32 [ %.391093, %bb.bt ], [ %i.x, %bb.bv ] ; 2 uses
  %.40989 = phi i32 [ %.39988, %bb.bt ], [ %i.v, %bb.bv ] ; 2 uses
  %.41 = phi i32 [ %.40, %bb.bt ], [ %i.r, %bb.bv ] ; 2 uses
  %i.hl = and i32 %6, 2
  %.not1797 = icmp eq i32 %i.hl, 0
  br i1 %.not1797, label %bb.bw, label %.sink.split2211

bb.bv:                                            ; preds = %bb.c
  %.not1776 = icmp eq i64 %i.c, 0
  br i1 %.not1776, label %bb.bu, label %.sink.split2190

.sink.split2190:                                  ; preds = %bb.bt, %bb.bv
  %.sink2192 = phi ptr [ %1, %bb.bv ], [ %.391389, %bb.bt ] ; 2 uses
  %.421592.ph = phi i32 [ %i.z, %bb.bv ], [ %.401590, %bb.bt ]
  %.421491.ph = phi i64 [ %i.t, %bb.bv ], [ %.401489, %bb.bt ]
  %.361286.ph = phi ptr [ %4, %bb.bv ], [ %.341284, %bb.bt ]
  %.361195.ph = phi i64 [ %i.ab, %bb.bv ], [ %.341193, %bb.bt ]
  %.411095.ph = phi i32 [ %i.x, %bb.bv ], [ %.391093, %bb.bt ]
  %.41990.ph = phi i32 [ %i.v, %bb.bv ], [ %.39988, %bb.bt ]
  %.42.ph = phi i32 [ %i.r, %bb.bv ], [ %.40, %bb.bt ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.sink2192, i64 1
  %i.hn = load i8, ptr %.sink2192, align 1, !tbaa !19
  %i.ho = zext i8 %i.hn to i64
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split2190, %bb.bu
  %.421592 = phi i32 [ %.411591, %bb.bu ], [ %.421592.ph, %.sink.split2190 ] ; 2 uses
  %.421491 = phi i64 [ %.411490, %bb.bu ], [ %.421491.ph, %.sink.split2190 ]
  %.411391 = phi ptr [ %.401390, %bb.bu ], [ %i.hm, %.sink.split2190 ] ; 2 uses
  %.361286 = phi ptr [ %.351285, %bb.bu ], [ %.361286.ph, %.sink.split2190 ] ; 2 uses
  %.361195 = phi i64 [ %.351194, %bb.bu ], [ %.361195.ph, %.sink.split2190 ] ; 2 uses
  %.411095 = phi i32 [ %.401094, %bb.bu ], [ %.411095.ph, %.sink.split2190 ] ; 2 uses
  %.41990 = phi i32 [ %.40989, %bb.bu ], [ %.41990.ph, %.sink.split2190 ] ; 2 uses
  %.0948.shrunk = phi i64 [ 0, %bb.bu ], [ %i.ho, %.sink.split2190 ]
  %.42 = phi i32 [ %.41, %bb.bu ], [ %.42.ph, %.sink.split2190 ] ; 2 uses
  %i.hp = zext nneg i32 %.42 to i64
  %i.hq = shl i64 %.0948.shrunk, %i.hp
  %i.hr = or i64 %i.hq, %.421491                  ; 2 uses
  %i.hs = add i32 %.42, 8                         ; 3 uses
  %i.ht = icmp ult i32 %i.hs, 3
  br i1 %i.ht, label %bb.bt, label %bb.bx, !llvm.loop !205

bb.bx:                                            ; preds = %bb.bw, %bb.bs
  %.431593 = phi i32 [ %.421592, %bb.bw ], [ %.391589, %bb.bs ]
  %.431492 = phi i64 [ %i.hr, %bb.bw ], [ %.391488, %bb.bs ] ; 2 uses
  %.421392 = phi ptr [ %.411391, %bb.bw ], [ %.381388, %bb.bs ]
  %.371287 = phi ptr [ %.361286, %bb.bw ], [ %.331283, %bb.bs ]
  %.371196 = phi i64 [ %.361195, %bb.bw ], [ %.331192, %bb.bs ]
  %.421096 = phi i32 [ %.411095, %bb.bw ], [ %.381092, %bb.bs ] ; 2 uses
  %.42991 = phi i32 [ %.41990, %bb.bw ], [ %.38987, %bb.bs ]
  %.43 = phi i32 [ %i.hs, %bb.bw ], [ %.39, %bb.bs ]
  %i.hu = trunc i64 %.431492 to i8
  %i.hv = and i8 %i.hu, 7
  %i.hw = lshr i64 %.431492, 3
  %i.hx = add i32 %.43, -3
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 7048
  %i.hz = zext i32 %.421096 to i64
  %i.ia = getelementptr inbounds nuw i8, ptr @s_tdefl_packed_code_size_syms_swizzle, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !19
  %i.ic = zext i8 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ic
  store i8 %i.hv, ptr %i.id, align 1, !tbaa !19
  %i.ie = add i32 %.421096, 1
  br label %bb.br, !llvm.loop !206

bb.by:                                            ; preds = %bb.br
  store i32 19, ptr %i.hh, align 4, !tbaa !18
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !257
  br label %.loopexit1927

.loopexit1927:                                    ; preds = %bb.by, %.lr.ph1960.preheader, %bb.dn
  %i.if = phi i32 [ %i.us, %bb.dn ], [ %.pre.pre, %bb.by ], [ 1, %.lr.ph1960.preheader ] ; 3 uses
  %.451595 = phi i32 [ %.581608, %bb.dn ], [ %.391589, %bb.by ], [ %.101560, %.lr.ph1960.preheader ] ; 4 uses
  %.451494 = phi i64 [ %.581507, %bb.dn ], [ %.391488, %bb.by ], [ %i.by, %.lr.ph1960.preheader ] ; 4 uses
  %.441394 = phi ptr [ %.571407, %bb.dn ], [ %.381388, %bb.by ], [ %.91359, %.lr.ph1960.preheader ] ; 4 uses
  %.391289 = phi ptr [ %.521302, %bb.dn ], [ %.331283, %bb.by ], [ %.41254, %.lr.ph1960.preheader ] ; 4 uses
  %.391198 = phi i64 [ %.521211, %bb.dn ], [ %.331192, %bb.by ], [ %.41163, %.lr.ph1960.preheader ] ; 4 uses
  %.441098 = phi i32 [ %.571111, %bb.dn ], [ %.381092, %bb.by ], [ %.101064, %.lr.ph1960.preheader ] ; 3 uses
  %.44993 = phi i32 [ %.561005, %bb.dn ], [ %.38987, %bb.by ], [ %.10959, %.lr.ph1960.preheader ] ; 4 uses
  %.45 = phi i32 [ %.58, %bb.dn ], [ %.39, %bb.by ], [ %i.bz, %.lr.ph1960.preheader ] ; 4 uses
  %i.ig = icmp sgt i32 %i.if, -1
  br i1 %i.ig, label %bb.bz, label %.preheader2305

bb.bz:                                            ; preds = %.loopexit1927
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ii = zext nneg i32 %i.if to i64              ; 2 uses
  %i.ij = getelementptr inbounds nuw [3488 x i8], ptr %i.ih, i64 %i.ii ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 288 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 2336 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.ii
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(3200) %i.ik, i8 0, i64 3200, i1 false)
  %i.io = load i32, ptr %i.in, align 4, !tbaa !18 ; 4 uses
  %.not2014 = icmp eq i32 %i.io, 0                ; 2 uses
  br i1 %.not2014, label %._crit_edge, label %.lr.ph1962.preheader

.lr.ph1962.preheader:                             ; preds = %bb.bz
  %wide.trip.count = zext i32 %i.io to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ip = icmp ult i32 %i.io, 4
  br i1 %i.ip, label %.lr.ph1962.epil.preheader, label %.lr.ph1962.preheader.new

.lr.ph1962.preheader.new:                         ; preds = %.lr.ph1962.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph1962

.lr.ph1962:                                       ; preds = %.lr.ph1962, %.lr.ph1962.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph1962.preheader.new ], [ %indvars.iv.next.3, %.lr.ph1962 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1962.preheader.new ], [ %niter.next.3, %.lr.ph1962 ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !19
  %i.is = zext i8 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.is ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !18
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !19
  %i.iz = zext i8 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.iz ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !18
  %i.jc = add i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !18
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 2
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !19
  %i.jg = zext i8 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jg ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !18
  %i.jj = add i32 %i.ji, 1
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !18
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 3
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !19
  %i.jn = zext i8 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jn ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !18
  %i.jq = add i32 %i.jp, 1
  store i32 %i.jq, ptr %i.jo, align 4, !tbaa !18
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph1962, !llvm.loop !207

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph1962
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph1962.epil.preheader

.lr.ph1962.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph1962.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph1962.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod2331 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2331)
  br label %.lr.ph1962.epil

.lr.ph1962.epil:                                  ; preds = %.lr.ph1962.epil, %.lr.ph1962.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph1962.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph1962.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1962.epil.preheader ], [ %epil.iter.next, %.lr.ph1962.epil ]
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv.epil
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !19
  %i.jt = zext i8 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jt ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !18
  %i.jw = add i32 %i.jv, 1
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !18
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph1962.epil, !llvm.loop !208

._crit_edge.loopexit:                             ; preds = %.lr.ph1962.epil, %._crit_edge.loopexit.unr-lcssa
  %.phi.trans.insert2074 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre2075 = load i32, ptr %.phi.trans.insert2074, align 4, !tbaa !18
  %.phi.trans.insert2076 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre2077 = load i32, ptr %.phi.trans.insert2076, align 8, !tbaa !18
  %.phi.trans.insert2078 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.pre2079 = load i32, ptr %.phi.trans.insert2078, align 4, !tbaa !18
  %.phi.trans.insert2080 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre2081 = load i32, ptr %.phi.trans.insert2080, align 16, !tbaa !18
  %.phi.trans.insert2082 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.pre2083 = load i32, ptr %.phi.trans.insert2082, align 4, !tbaa !18
  %.phi.trans.insert2084 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.pre2085 = load i32, ptr %.phi.trans.insert2084, align 8, !tbaa !18
  %.phi.trans.insert2086 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.pre2087 = load i32, ptr %.phi.trans.insert2086, align 4, !tbaa !18
  %.phi.trans.insert2088 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.pre2089 = load i32, ptr %.phi.trans.insert2088, align 16, !tbaa !18
  %.phi.trans.insert2090 = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %.pre2091 = load i32, ptr %.phi.trans.insert2090, align 4, !tbaa !18
  %.phi.trans.insert2092 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.pre2093 = load i32, ptr %.phi.trans.insert2092, align 8, !tbaa !18
  %.phi.trans.insert2094 = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.pre2095 = load i32, ptr %.phi.trans.insert2094, align 4, !tbaa !18
  %.phi.trans.insert2096 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre2097 = load i32, ptr %.phi.trans.insert2096, align 16, !tbaa !18
  %.phi.trans.insert2098 = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.pre2099 = load i32, ptr %.phi.trans.insert2098, align 4, !tbaa !18
  %.phi.trans.insert2100 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.pre2101 = load i32, ptr %.phi.trans.insert2100, align 8, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.bz
  %i.jx = phi i32 [ %.pre2101, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.jy = phi i32 [ %.pre2099, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.jz = phi i32 [ %.pre2097, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.ka = phi i32 [ %.pre2095, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kb = phi i32 [ %.pre2093, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kc = phi i32 [ %.pre2091, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kd = phi i32 [ %.pre2089, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.ke = phi i32 [ %.pre2087, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kf = phi i32 [ %.pre2085, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kg = phi i32 [ %.pre2083, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kh = phi i32 [ %.pre2081, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.ki = phi i32 [ %.pre2079, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kj = phi i32 [ %.pre2077, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kk = phi i32 [ %.pre2075, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.kl, align 4, !tbaa !18
  store i32 0, ptr %i.a, align 16, !tbaa !18
  %i.km = shl i32 %i.kk, 1                        ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.km, ptr %i.kn, align 8, !tbaa !18
  %i.ko = add i32 %i.kj, %i.kk
  %i.kp = add i32 %i.kj, %i.km
  %i.kq = shl i32 %i.kp, 1                        ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !18
  %i.ks = add i32 %i.ki, %i.ko
  %i.kt = add i32 %i.ki, %i.kq
  %i.ku = shl i32 %i.kt, 1                        ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.ku, ptr %i.kv, align 16, !tbaa !18
  %i.kw = add i32 %i.kh, %i.ks
  %i.kx = add i32 %i.kh, %i.ku
  %i.ky = shl i32 %i.kx, 1                        ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !18
  %i.la = add i32 %i.kg, %i.kw
  %i.lb = add i32 %i.kg, %i.ky
  %i.lc = shl i32 %i.lb, 1                        ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.lc, ptr %i.ld, align 8, !tbaa !18
  %i.le = add i32 %i.kf, %i.la
  %i.lf = add i32 %i.kf, %i.lc
  %i.lg = shl i32 %i.lf, 1                        ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !18
  %i.li = add i32 %i.ke, %i.le
  %i.lj = add i32 %i.ke, %i.lg
  %i.lk = shl i32 %i.lj, 1                        ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.lk, ptr %i.ll, align 16, !tbaa !18
  %i.lm = add i32 %i.kd, %i.li
  %i.ln = add i32 %i.kd, %i.lk
  %i.lo = shl i32 %i.ln, 1                        ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %i.lo, ptr %i.lp, align 4, !tbaa !18
  %i.lq = add i32 %i.kc, %i.lm
  %i.lr = add i32 %i.kc, %i.lo
  %i.ls = shl i32 %i.lr, 1                        ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.a, i64 40
end_hunk_0
begin_hunk_1_@zip_entries_delete:bb.a
.sink.split.i.i.i:                                ; preds = %bb.z, %bb.y, %bb.x, %.lr.ph.i.i33
  %.0.ph.i.i.i = phi i64 [ -27, %bb.y ], [ -28, %bb.x ], [ -27, %.lr.ph.i.i33 ], [ -29, %bb.z ]
  %i.in = call i32 @fclose(ptr noundef %i.ie)     ; 0 uses
  br label %zip_file_move.exit.thread.i.i

zip_file_move.exit.i.i:                           ; preds = %bb.z
  %i.io = add i64 %.02634.i.i, %i.ii
  %i.ip = add i64 %i.ii, %.02535.i.i
  %i.iq = sub nuw nsw i64 %.02436.i.i, %i.ii      ; 2 uses
  %i.ir = add nuw nsw i64 %i.ii, %.037.i.i        ; 2 uses
  %.not.i.i35 = icmp eq i64 %i.iq, 0
  br i1 %.not.i.i35, label %zip_file_move.exit.thread.i.i, label %.lr.ph.i.i33, !llvm.loop !328

zip_file_move.exit.thread.i.i:                    ; preds = %zip_file_move.exit.i.i, %.sink.split.i.i.i, %.preheader.i.i32
  %.1.i.i = phi i64 [ %.0.ph.i.i.i, %.sink.split.i.i.i ], [ 0, %.preheader.i.i32 ], [ %i.ir, %zip_file_move.exit.i.i ]
  call void @free(ptr noundef %i.if) #33
  br label %zip_files_move.exit.i

zip_files_move.exit.i:                            ; preds = %zip_file_move.exit.thread.i.i, %._crit_edge.i
  %.027.i.i = phi i64 [ %.1.i.i, %zip_file_move.exit.thread.i.i ], [ -21, %._crit_edge.i ] ; 2 uses
  %sext.i = shl i64 %.027.i.i, 32
  %i.is = ashr exact i64 %sext.i, 32
  %.not101.i = icmp eq i64 %i.is, %.189.lcssa.i
  br i1 %.not101.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %zip_files_move.exit.i
  %i.it = trunc i64 %.027.i.i to i32
  br label %.thread.sink.split.i

bb.ab:                                            ; preds = %zip_files_move.exit.i
  %i.iu = add i64 %.189.lcssa.i, %.196.lcssa.i
  %i.iv = add i64 %.189.lcssa.i, %.294.lcssa.i
  %i.iw = icmp slt i32 %.386.lcssa.i, %i.f
  br i1 %i.iw, label %.preheader108.i, label %._crit_edge141.i, !llvm.loop !329

._crit_edge141.i:                                 ; preds = %bb.ab, %.preheader109.i
  %.090.lcssa.i = phi i64 [ 0, %.preheader109.i ], [ %.191.lcssa.i, %bb.ab ]
  %.081.lcssa.i = phi i32 [ 0, %.preheader109.i ], [ %.182.lcssa.i, %bb.ab ] ; 2 uses
  %i.ix = load i64, ptr %0, align 8, !tbaa !175
  %i.iy = sub i64 %i.ix, %.090.lcssa.i
  store i64 %i.iy, ptr %0, align 8, !tbaa !175
  %i.iz = sub nsw i32 %i.f, %.081.lcssa.i
  store i32 %i.iz, ptr %i.e, align 8, !tbaa !174
  call fastcc void @zip_central_dir_delete(ptr noundef %i.fs, ptr noundef nonnull %i.fp, i32 noundef %i.f)
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %bb.v, %._crit_edge141.i, %bb.aa, %bb.u
  %.4.ph.i = phi i32 [ %i.it, %bb.aa ], [ %.081.lcssa.i, %._crit_edge141.i ], [ -3, %bb.u ], [ -3, %bb.v ]
  call void @free(ptr noundef nonnull %i.fp) #33
  br label %.sink.split

.sink.split:                                      ; preds = %.thread.sink.split.i, %.loopexit, %.loopexit.thread.i, %.loopexit.i, %zip_entry_finalize.exit.thread23.i, %bb.d, %zip_entry_mark.exit.thread19.i
  %.0.ph = phi i32 [ %.364.i.ph.i, %zip_entry_mark.exit.thread19.i ], [ -21, %.loopexit.thread.i ], [ -21, %.loopexit.i ], [ -21, %zip_entry_finalize.exit.thread23.i ], [ -1, %bb.d ], [ -21, %.loopexit ], [ %.4.ph.i, %.thread.sink.split.i ]
  call void @free(ptr noundef %i.h) #33
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %zip_entries_total.exit, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ], [ -21, %zip_entries_total.exit ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -25, 1) i32 @zip_stream_extract(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.mz_zip_archive, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
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
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -25, 1) i32 @zip_archive_extract(ptr nofree noundef nonnull captures(address_is_null) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.utimbuf, align 8            ; 5 uses
  %5 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 5 uses
  %i.a = alloca [32768 x i8], align 16            ; 7 uses
  %i.b = alloca [32768 x i8], align 16            ; 13 uses
  %i.c = alloca [32768 x i8], align 16            ; 6 uses
  %6 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32768) %i.b, i8 0, i64 32768, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32768) %i.c, i8 0, i64 32768, i1 false)
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36 ; 4 uses
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %i.f = icmp ugt i64 %i.e, 32767
  br i1 %i.f, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %6, i8 0, i64 584, i1 false)
  %i.g = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %1) #33 ; 0 uses
  %i.h = getelementptr i8, ptr %i.b, i64 %i.d     ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !19
  switch i8 %i.j, label %bb.c [
    i8 47, label %bb.d
    i8 92, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store i8 47, ptr %i.h, align 1, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !112  ; 3 uses
  %.not84 = icmp eq i32 %i.l, 0
  br i1 %.not84, label %zip_name_normalize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0
  %i.o = sub nsw i64 32767, %.0
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not46 = icmp eq ptr %2, null
  %i.x = call i32 @mz_zip_reader_file_stat(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %6)
  %.not102 = icmp eq i32 %i.x, 0
  br i1 %.not102, label %zip_name_normalize.exit, label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph, %.backedge
  %.02967103 = phi i32 [ %.02967.be, %.backedge ], [ 0, %.lr.ph ] ; 7 uses
  %i.y = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #36 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %zip_name_normalize.exit, label %.preheader66.i

.preheader66.i:                                   ; preds = %.lr.ph106, %.critedge.i
  %.045.i = phi ptr [ %i.ab, %.critedge.i ], [ %i.m, %.lr.ph106 ] ; 3 uses
  %i.aa = load i8, ptr %.045.i, align 1, !tbaa !19
  switch i8 %i.aa, label %.preheader.i [
    i8 47, label %.critedge.i
    i8 92, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %.preheader66.i, %.preheader66.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.045.i, i64 1
  br label %.preheader66.i, !llvm.loop !336

.preheader.i:                                     ; preds = %.preheader66.i, %bb.g
  %.069.i = phi i64 [ %.1.i, %bb.g ], [ 0, %.preheader66.i ] ; 4 uses
  %.04168.i = phi i64 [ %.2.i, %bb.g ], [ 0, %.preheader66.i ] ; 7 uses
  %.04367.i = phi i64 [ %i.ar, %bb.g ], [ 0, %.preheader66.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.045.i, i64 %.04367.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !19  ; 3 uses
  switch i8 %i.ad, label %bb.f [
    i8 47, label %bb.e
    i8 92, label %bb.e
  ]

bb.e:                                             ; preds = %.preheader.i, %.preheader.i
  %.not50.i = icmp eq i64 %.069.i, 0
  br i1 %.not50.i, label %bb.g, label %sub_0.i

sub_0.i:                                          ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 %.04168.i ; 3 uses
  %i.af = load i8, ptr %i.ae, align 1
  %.not70.i = icmp eq i8 %i.af, 46
  br i1 %.not70.i, label %.tail.i, label %.tail53.thread.i

.tail.i:                                          ; preds = %sub_0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  switch i8 %i.ah, label %.tail53.thread.i [
    i8 0, label %bb.g
    i8 46, label %.tail53.i
  ]

.tail53.i:                                        ; preds = %.tail.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %.tail53.thread.i

.tail53.thread.i:                                 ; preds = %.tail.i, %.tail53.i, %sub_0.i
  %i.al = add i64 %.04168.i, %.069.i              ; 2 uses
  %i.am = add i64 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.al
  store i8 %i.ad, ptr %i.an, align 1, !tbaa !19
  br label %bb.g

bb.f:                                             ; preds = %.preheader.i
  %i.ao = getelementptr i8, ptr %i.m, i64 %.04168.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 %.069.i
  store i8 %i.ad, ptr %i.ap, align 1, !tbaa !19
  %i.aq = add i64 %.069.i, 1
  br label %bb.g

bb.g:                                             ; preds = %.tail.i, %bb.f, %.tail53.thread.i, %.tail53.i, %bb.e
  %.2.i = phi i64 [ %.04168.i, %bb.f ], [ %i.am, %.tail53.thread.i ], [ %.04168.i, %.tail53.i ], [ %.04168.i, %.tail.i ], [ %.04168.i, %bb.e ] ; 3 uses
  %.1.i = phi i64 [ %i.aq, %bb.f ], [ 0, %.tail53.thread.i ], [ 0, %.tail53.i ], [ 0, %.tail.i ], [ 0, %bb.e ] ; 2 uses
  %i.ar = add nuw i64 %.04367.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ar, %i.y
  br i1 %exitcond.not.i, label %bb.h, label %.preheader.i, !llvm.loop !337

bb.h:                                             ; preds = %bb.g
  %i.as = icmp eq i64 %.1.i, 0
  br i1 %i.as, label %bb.i, label %sub_058.i

sub_058.i:                                        ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 %.2.i ; 3 uses
  %i.au = load i8, ptr %i.at, align 1
  %.not73.i = icmp eq i8 %i.au, 46
  br i1 %.not73.i, label %.tail57.i, label %bb.j

.tail57.i:                                        ; preds = %sub_058.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.av, align 1
  switch i8 %i.aw, label %bb.j [
    i8 0, label %bb.i
    i8 46, label %.tail61.i
  ]

.tail61.i:                                        ; preds = %.tail57.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.tail57.i, %.tail61.i, %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 %.2.i
  store i8 0, ptr %i.ba, align 1, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %.tail57.i, %bb.i, %.tail61.i, %sub_058.i
  %i.bb = call ptr @strncpy(ptr noundef nonnull %i.n, ptr noundef nonnull %i.m, i64 noundef %i.o) #33 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32768) %i.a, i8 0, i64 32768, i1 false)
  %i.bc = load i8, ptr %i.b, align 16, !tbaa !19  ; 2 uses
  %.not29.i = icmp eq i8 %i.bc, 0
  br i1 %.not29.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  store i8 %i.bc, ptr %i.a, align 16, !tbaa !19
  %i.bd = load i8, ptr %i.p, align 1, !tbaa !19   ; 2 uses
  %.not.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %bb.n
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ 1, %.lr.ph.preheader.i ] ; 3 uses
  %i.be = phi i8 [ %i.bm, %bb.n ], [ %i.bd, %.lr.ph.preheader.i ]
  %.02125.i = phi ptr [ %i.bl, %bb.n ], [ %i.p, %.lr.ph.preheader.i ] ; 3 uses
  switch i8 %i.be, label %bb.n [
    i8 92, label %bb.k
    i8 47, label %bb.l
  ]

bb.k:                                             ; preds = %.lr.ph.i
  store i8 47, ptr %.02125.i, align 1, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.bf = call i32 @mkdir(ptr noundef nonnull %i.a, i32 noundef 493) #33
  %i.bg = icmp eq i32 %i.bf, -1
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = tail call ptr @__errno_location() #38
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !18
  %.not24.i = icmp eq i32 %i.bi, 17
  br i1 %.not24.i, label %bb.n, label %zip_mkpath.exit

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph.i
  %i.bj = load i8, ptr %.02125.i, align 1, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %.02125.i, i64 1 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19  ; 2 uses
  %i.bn = icmp ne i8 %i.bm, 0
  %i.bo = icmp samesign ult i64 %indvars.iv.i, 32766
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %.lr.ph.i, label %.loopexit, !llvm.loop !338

zip_mkpath.exit:                                  ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %zip_name_normalize.exit

.loopexit:                                        ; preds = %bb.n, %bb.j, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.bq = load i16, ptr %i.q, align 8, !tbaa !125
  %i.br = lshr i16 %i.bq, 8
  %trunc = trunc nuw i16 %i.br to i8
  switch i8 %trunc, label %bb.s [
    i8 3, label %bb.o
    i8 19, label %bb.o
  ]

bb.o:                                             ; preds = %.loopexit, %.loopexit
  %i.bs = load i32, ptr %i.r, align 4, !tbaa !138
  %i.bt = and i32 %i.bs, 536870912
  %.not40 = icmp eq i32 %i.bt, 0
  br i1 %.not40, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = load i64, ptr %i.s, align 8, !tbaa !142 ; 2 uses
  %i.bv = icmp ugt i64 %i.bu, 32767
  br i1 %i.bv, label %zip_name_normalize.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = call i32 @mz_zip_reader_extract_to_mem_no_alloc(ptr noundef nonnull %0, i32 noundef %.02967103, ptr noundef nonnull %i.c, i64 noundef 32767, i32 noundef 0, ptr noundef null, i64 noundef 0)
  %.not44 = icmp eq i32 %i.bw, 0
  br i1 %.not44, label %zip_name_normalize.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bu
  store i8 0, ptr %i.bx, align 1, !tbaa !19
  %i.by = call i32 @symlink(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #33
  %.not45 = icmp eq i32 %i.by, 0
  br i1 %.not45, label %bb.aa, label %zip_name_normalize.exit

bb.s:                                             ; preds = %.loopexit, %bb.o
  %i.bz = load ptr, ptr %i.t, align 8, !tbaa !94  ; 3 uses
  %.not11.i.i = icmp eq ptr %i.bz, null
  br i1 %.not11.i.i, label %mz_zip_reader_is_file_a_directory.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = load i32, ptr %i.k, align 8, !tbaa !112
  %.not12.i.i = icmp ult i32 %.02967103, %i.ca
  br i1 %.not12.i.i, label %bb.u, label %mz_zip_reader_is_file_a_directory.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cb = load i32, ptr %i.u, align 4, !tbaa !95
  %.not13.i.i = icmp eq i32 %i.cb, 1
  br i1 %.not13.i.i, label %mz_zip_reader_get_cdh.exit.i, label %mz_zip_reader_is_file_a_directory.exit.thread

mz_zip_reader_get_cdh.exit.i:                     ; preds = %bb.u
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !118 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !119
  %i.cf = zext i32 %.02967103 to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !18
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ci ; 3 uses
  %.not.i48 = icmp eq ptr %i.cc, null
  br i1 %.not.i48, label %mz_zip_reader_is_file_a_directory.exit.thread, label %bb.v

bb.v:                                             ; preds = %mz_zip_reader_get_cdh.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 28
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !78 ; 2 uses
  %.not11.i = icmp eq i16 %i.cl, 0
  br i1 %.not11.i, label %mz_zip_reader_is_file_a_directory.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = zext i16 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 45
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !19
  %i.cq = icmp eq i8 %i.cp, 47
  br i1 %i.cq, label %mz_zip_reader_is_file_a_directory.exit.thread60, label %mz_zip_reader_is_file_a_directory.exit

mz_zip_reader_is_file_a_directory.exit:           ; preds = %bb.v, %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 38
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !18
  %i.ct = and i32 %i.cs, 16
  %.not41 = icmp eq i32 %i.ct, 0
  br i1 %.not41, label %mz_zip_reader_is_file_a_directory.exit.thread, label %mz_zip_reader_is_file_a_directory.exit.thread60

mz_zip_reader_is_file_a_directory.exit.thread:    ; preds = %bb.s, %bb.t, %bb.u, %mz_zip_reader_get_cdh.exit.i, %mz_zip_reader_is_file_a_directory.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.cu = call i32 @mz_zip_reader_file_stat(ptr noundef nonnull readonly %0, i32 noundef %.02967103, ptr noundef nonnull %5)
  %.not.i49 = icmp eq i32 %i.cu, 0
  br i1 %.not.i49, label %mz_zip_reader_extract_to_file.exit.thread, label %bb.x

bb.x:                                             ; preds = %mz_zip_reader_is_file_a_directory.exit.thread
  %i.cv = call noalias ptr @fopen(ptr noundef nonnull readonly %i.b, ptr noundef nonnull @.str.16) ; 3 uses
  %.not13.i = icmp eq ptr %i.cv, null
  br i1 %.not13.i, label %mz_zip_reader_extract_to_file.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = call i32 @mz_zip_reader_extract_to_callback(ptr noundef nonnull readonly %0, i32 noundef %.02967103, ptr noundef nonnull @mz_zip_file_write_callback, ptr noundef nonnull %i.cv, i32 noundef 0)
  %i.cx = call i32 @fclose(ptr noundef nonnull %i.cv)
  %i.cy = icmp eq i32 %i.cx, -1
  %.not14.i = icmp eq i32 %i.cw, 0
  %or.cond.i = select i1 %i.cy, i1 true, i1 %.not14.i
  br i1 %or.cond.i, label %mz_zip_reader_extract_to_file.exit.thread, label %mz_zip_reader_extract_to_file.exit
end_hunk_1
begin_hunk_2_@zip_create:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !95
  %.not39.i = icmp eq i32 %i.ac, 2
  br i1 %.not39.i, label %bb.r, label %mz_zip_writer_finalize_archive.exit

bb.r:                                             ; preds = %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !112 ; 2 uses
  %i.af = icmp ugt i32 %i.ae, 65535
  br i1 %i.af, label %mz_zip_writer_finalize_archive.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = load i64, ptr %3, align 8, !tbaa !106   ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !154 ; 5 uses
  %i.aj = add i64 %i.ag, -4294967274
  %i.ak = add i64 %i.aj, %i.ai
  %i.al = icmp ult i64 %i.ak, -4294967296
  br i1 %i.al, label %mz_zip_writer_finalize_archive.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not40.i = icmp eq i32 %i.ae, 0
  br i1 %.not40.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ag, ptr %i.am, align 8, !tbaa !113
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !146
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !110
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !118
  %i.as = call i64 %i.ao(ptr noundef %i.aq, i64 noundef %i.ag, ptr noundef %i.ar, i64 noundef %i.ai) #33, !inline_history !159
  %.not41.i = icmp eq i64 %i.as, %i.ai
  br i1 %.not41.i, label %bb.v, label %mz_zip_writer_finalize_archive.exit

bb.v:                                             ; preds = %bb.u
  %i.at = load i64, ptr %3, align 8, !tbaa !106
  %i.au = add i64 %i.at, %i.ai                    ; 2 uses
  store i64 %i.au, ptr %3, align 8, !tbaa !106
  %i.av = trunc i64 %i.ai to i32
  %i.aw = trunc i64 %i.ag to i32
  %.pre.i = load i32, ptr %i.ad, align 8, !tbaa !112
  %i.ax = trunc i32 %.pre.i to i16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.ay = phi i64 [ %i.au, %bb.v ], [ %i.ag, %bb.t ]
  %i.az = phi i16 [ %i.ax, %bb.v ], [ 0, %bb.t ]  ; 2 uses
  %.031.i = phi i32 [ %i.aw, %bb.v ], [ 0, %bb.t ]
  %.0.i31 = phi i32 [ %i.av, %bb.v ], [ 0, %bb.t ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %i.a, i8 0, i64 22, i1 false)
  store i32 101010256, ptr %i.a, align 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.az, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.az, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.0.i31, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.031.i, ptr %i.bd, align 16
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !146
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !110
  %i.bi = call i64 %i.bf(ptr noundef %i.bh, i64 noundef %i.ay, ptr noundef nonnull %i.a, i64 noundef 22) #33, !inline_history !159
  %.not42.i = icmp eq i64 %i.bi, 22
  br i1 %.not42.i, label %bb.x, label %mz_zip_writer_finalize_archive.exit

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %.not43.i = icmp eq ptr %i.bk, null
  br i1 %.not43.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = call i32 @fflush(ptr noundef nonnull %i.bk)
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %mz_zip_writer_finalize_archive.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bn = load i64, ptr %3, align 8, !tbaa !106
  %i.bo = add i64 %i.bn, 22
  store i64 %i.bo, ptr %3, align 8, !tbaa !106
  store i32 3, ptr %i.ab, align 4, !tbaa !95
  br label %mz_zip_writer_finalize_archive.exit

mz_zip_writer_finalize_archive.exit:              ; preds = %bb.q, %bb.r, %bb.s, %bb.u, %bb.w, %bb.y, %bb.z
  %.pr = load ptr, ptr %i.z, align 8, !tbaa !94   ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %.not32.i = icmp eq ptr %.pr, null
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8
  %.not33.i = icmp eq ptr %i.bq, null
  %or.cond = select i1 %.not32.i, i1 true, i1 %.not33.i
  br i1 %or.cond, label %mz_zip_writer_end.exit, label %bb.aa

bb.aa:                                            ; preds = %mz_zip_writer_finalize_archive.exit
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !97 ; 2 uses
  %.not34.i = icmp eq ptr %i.bs, null
  br i1 %.not34.i, label %mz_zip_writer_end.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bt = load i32, ptr %i.ab, align 4, !tbaa !95
  %i.bu = and i32 %i.bt, -2
  %switch.i = icmp eq i32 %i.bu, 2
  br i1 %switch.i, label %bb.ac, label %mz_zip_writer_end.exit

bb.ac:                                            ; preds = %bb.ab
  store ptr null, ptr %i.z, align 8, !tbaa !94
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !99
  %i.bx = load ptr, ptr %.pr, align 8, !tbaa !107
  call void %i.bs(ptr noundef %i.bw, ptr noundef %i.bx) #33, !inline_history !160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.pr, i8 0, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %.pr, i64 32 ; 2 uses
  %i.bz = load ptr, ptr %i.br, align 8, !tbaa !97
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !99
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !107
  call void %i.bz(ptr noundef %i.ca, ptr noundef %i.cb) #33, !inline_history !160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, i8 0, i64 32, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %.pr, i64 64 ; 2 uses
  %i.cd = load ptr, ptr %i.br, align 8, !tbaa !97
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !99
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !107
  call void %i.cd(ptr noundef %i.ce, ptr noundef %i.cf) #33, !inline_history !160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i8 0, i64 32, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %.pr, i64 112 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !109 ; 2 uses
  %.not37.i = icmp eq ptr %i.ch, null
  br i1 %.not37.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = call i32 @fclose(ptr noundef nonnull %i.ch) ; 0 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !109
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !146
  %i.cl = icmp eq ptr %i.ck, @mz_zip_heap_write_func
  br i1 %i.cl, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.cm = getelementptr inbounds nuw i8, ptr %.pr, i64 128 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !121 ; 2 uses
  %.not38.i33 = icmp eq ptr %i.cn, null
  br i1 %.not38.i33, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.co = load ptr, ptr %i.br, align 8, !tbaa !97
  %i.cp = load ptr, ptr %i.bv, align 8, !tbaa !99
  call void %i.co(ptr noundef %i.cp, ptr noundef nonnull %i.cn) #33, !inline_history !160
  store ptr null, ptr %i.cm, align 8, !tbaa !121
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.cq = load ptr, ptr %i.br, align 8, !tbaa !97
  %i.cr = load ptr, ptr %i.bv, align 8, !tbaa !99
  call void %i.cq(ptr noundef %i.cr, ptr noundef nonnull %.pr) #33, !inline_history !160
  br label %mz_zip_writer_end.exit

mz_zip_writer_end.exit:                           ; preds = %bb.ah, %bb.ab, %bb.aa, %mz_zip_writer_finalize_archive.exit, %mz_zip_writer_finalize_archive.exit.thread, %bb.c, %bb.a, %bb.b
  %.022 = phi i32 [ -22, %bb.a ], [ -1, %bb.c ], [ -22, %bb.b ], [ %.221, %mz_zip_writer_finalize_archive.exit.thread ], [ %.221, %mz_zip_writer_finalize_archive.exit ], [ %.221, %bb.ah ], [ %.221, %bb.aa ], [ %.221, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -25, 1) i32 @zip_extract(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.mz_zip_archive, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %4, i8 0, i64 112, i1 false)
  %i.c = call i32 @mz_zip_reader_init_file(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call fastcc i32 @zip_archive_extract(ptr noundef %4, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ -22, %bb.a ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tdefl_compress_block(ptr nofree noundef nonnull %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #11 {
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.g, i8 8, i64 144, i1 false), !tbaa !19
  %scevgep.i = getelementptr i8, ptr %0, i64 36826
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %scevgep.i, i8 9, i64 112, i1 false), !tbaa !19
  %scevgep73.i = getelementptr i8, ptr %0, i64 36938
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %scevgep73.i, i8 7, i64 24, i1 false), !tbaa !19
  %scevgep74.i = getelementptr i8, ptr %0, i64 36962
  store i64 578721382704613384, ptr %scevgep74.i, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36970 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.h, i8 5, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.e, i8 0, i64 132, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.i.3, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !19
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !18
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !18
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !19
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !18
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !18
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 288
  br i1 %exitcond.not.i.i.3, label %.loopexit.loopexit.i.i, label %bb.c, !llvm.loop !9

.loopexit.loopexit.i.i:                           ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.aj, align 4, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !18
  %i.am = shl i32 %i.al, 1                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.am, ptr %i.an, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !18
  %i.aq = add nsw i32 %i.ap, %i.am
  %i.ar = shl i32 %i.aq, 1                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !18
  %i.av = add nsw i32 %i.au, %i.ar
  %i.aw = shl i32 %i.av, 1                        ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.aw, ptr %i.ax, align 16, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.az = load i32, ptr %i.ay, align 16, !tbaa !18
  %i.ba = add nsw i32 %i.az, %i.aw
  %i.bb = shl i32 %i.ba, 1                        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18
  %i.bf = add nsw i32 %i.be, %i.bb
  %i.bg = shl i32 %i.bf, 1                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !18
  %i.bk = add nsw i32 %i.bj, %i.bg
  %i.bl = shl i32 %i.bk, 1                        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !18
  %i.bp = add nsw i32 %i.bo, %i.bl
  %i.bq = shl i32 %i.bp, 1                        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.bq, ptr %i.br, align 16, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bt = load i32, ptr %i.bs, align 16, !tbaa !18
  %i.bu = add nsw i32 %i.bt, %i.bq
  %i.bv = shl i32 %i.bu, 1                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !18
  %i.bz = add nsw i32 %i.by, %i.bv
  %i.ca = shl i32 %i.bz, 1                        ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !18
  %i.ce = add nsw i32 %i.cd, %i.ca
  %i.cf = shl i32 %i.ce, 1                        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !18
  %i.cj = add nsw i32 %i.ci, %i.cf
  %i.ck = shl i32 %i.cj, 1                        ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %i.ck, ptr %i.cl, align 16, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cn = load i32, ptr %i.cm, align 16, !tbaa !18
  %i.co = add nsw i32 %i.cn, %i.ck
  %i.cp = shl i32 %i.co, 1                        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !18
  %i.ct = add nsw i32 %i.cs, %i.cp
  %i.cu = shl i32 %i.ct, 1                        ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !18
  %i.cy = add nsw i32 %i.cx, %i.cu
  %i.cz = shl i32 %i.cy, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 34954
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.loopexit.loopexit.i.i
  %indvars.iv147.i.i = phi i64 [ 0, %.loopexit.loopexit.i.i ], [ %indvars.iv.next148.i.i, %bb.h ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv147.i.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !19  ; 4 uses
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.df = zext i8 %i.dd to i32                    ; 2 uses
  %i.dg = zext i8 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !18 ; 3 uses
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !18
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
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.f, !llvm.loop !10

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
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !19
  %.not297.i = icmp eq i8 %i.so, 0
  br i1 %.not297.i, label %bb.au, label %.lr.ph.i

bb.au:                                            ; preds = %bb.at
  %i.sp = getelementptr i8, ptr %0, i64 36998
  %i.sq = load i8, ptr %i.sp, align 2, !tbaa !19
  %.not297.1.i = icmp eq i8 %i.sq, 0
  br i1 %.not297.1.i, label %bb.av, label %.lr.ph.i

bb.av:                                            ; preds = %bb.au
  %i.sr = getelementptr i8, ptr %0, i64 36997
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !19
  %.not297.2.i = icmp eq i8 %i.ss, 0
  br i1 %.not297.2.i, label %bb.aw, label %.lr.ph.i

bb.aw:                                            ; preds = %bb.av
  %i.st = getelementptr i8, ptr %0, i64 36996
  %i.su = load i8, ptr %i.st, align 2, !tbaa !19
  %.not297.3.i = icmp eq i8 %i.su, 0
  br i1 %.not297.3.i, label %bb.ax, label %.lr.ph.i

bb.ax:                                            ; preds = %bb.aw
  %i.sv = getelementptr i8, ptr %0, i64 36995
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !19
  %.not297.4.i = icmp eq i8 %i.sw, 0
  br i1 %.not297.4.i, label %bb.ay, label %.lr.ph.i

bb.ay:                                            ; preds = %bb.ax
  %i.sx = getelementptr i8, ptr %0, i64 36994
  %i.sy = load i8, ptr %i.sx, align 2, !tbaa !19
  %.not297.5.i = icmp eq i8 %i.sy, 0
  br i1 %.not297.5.i, label %bb.az, label %.lr.ph.i

bb.az:                                            ; preds = %bb.ay
  %i.sz = getelementptr i8, ptr %0, i64 36993
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !19
  %.not297.6.i = icmp eq i8 %i.ta, 0
  br i1 %.not297.6.i, label %bb.ba, label %.lr.ph.i

bb.ba:                                            ; preds = %bb.az
  %i.tb = getelementptr i8, ptr %0, i64 36992
  %i.tc = load i8, ptr %i.tb, align 2, !tbaa !19
  %.not297.7.i = icmp eq i8 %i.tc, 0
  br i1 %.not297.7.i, label %bb.bb, label %.lr.ph.i

bb.bb:                                            ; preds = %bb.ba
  %i.td = getelementptr i8, ptr %0, i64 36991
  %i.te = load i8, ptr %i.td, align 1, !tbaa !19
  %.not297.8.i = icmp eq i8 %i.te, 0
  br i1 %.not297.8.i, label %bb.bc, label %.lr.ph.i

bb.bc:                                            ; preds = %bb.bb
  %i.tf = getelementptr i8, ptr %0, i64 36990
  %i.tg = load i8, ptr %i.tf, align 2, !tbaa !19
  %.not297.9.i = icmp eq i8 %i.tg, 0
  br i1 %.not297.9.i, label %bb.bd, label %.lr.ph.i

bb.bd:                                            ; preds = %bb.bc
  %i.th = getelementptr i8, ptr %0, i64 36989
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !19
  %.not297.10.i = icmp eq i8 %i.ti, 0
  br i1 %.not297.10.i, label %bb.be, label %.lr.ph.i

bb.be:                                            ; preds = %bb.bd
  %i.tj = getelementptr i8, ptr %0, i64 36988
  %i.tk = load i8, ptr %i.tj, align 2, !tbaa !19
  %.not297.11.i = icmp eq i8 %i.tk, 0
  br i1 %.not297.11.i, label %bb.bf, label %.lr.ph.i

bb.bf:                                            ; preds = %bb.be
  %i.tl = getelementptr i8, ptr %0, i64 36987
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !19
  %.not297.12.i = icmp eq i8 %i.tm, 0
  br i1 %.not297.12.i, label %bb.bg, label %.lr.ph.i

bb.bg:                                            ; preds = %bb.bf
  %i.tn = getelementptr i8, ptr %0, i64 36986
  %i.to = load i8, ptr %i.tn, align 2, !tbaa !19
  %.not297.13.i = icmp eq i8 %i.to, 0
  br i1 %.not297.13.i, label %bb.bh, label %.lr.ph.i

bb.bh:                                            ; preds = %bb.bg
  %i.tp = getelementptr i8, ptr %0, i64 36985
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !19
  %.not297.14.i = icmp eq i8 %i.tq, 0
  br i1 %.not297.14.i, label %bb.bi, label %.lr.ph.i

bb.bi:                                            ; preds = %bb.bh
  %i.tr = getelementptr i8, ptr %0, i64 36984
  %i.ts = load i8, ptr %i.tr, align 2, !tbaa !19
  %.not297.15.i = icmp eq i8 %i.ts, 0
  br i1 %.not297.15.i, label %bb.bj, label %.lr.ph.i

bb.bj:                                            ; preds = %bb.bi
  %i.tt = getelementptr i8, ptr %0, i64 36983
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !19
  %.not297.16.i = icmp eq i8 %i.tu, 0
  br i1 %.not297.16.i, label %bb.bk, label %.lr.ph.i

bb.bk:                                            ; preds = %bb.bj
  %i.tv = getelementptr i8, ptr %0, i64 36982
  %i.tw = load i8, ptr %i.tv, align 2, !tbaa !19
  %.not297.17.i = icmp eq i8 %i.tw, 0
  br i1 %.not297.17.i, label %bb.bl, label %.lr.ph.i

bb.bl:                                            ; preds = %bb.bk
  %i.tx = getelementptr i8, ptr %0, i64 36981
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !19
  %.not297.18.i = icmp eq i8 %i.ty, 0
  br i1 %.not297.18.i, label %bb.bm, label %.lr.ph.i

bb.bm:                                            ; preds = %bb.bl
  %i.tz = getelementptr i8, ptr %0, i64 36980
  %i.ua = load i8, ptr %i.tz, align 2, !tbaa !19
  %.not297.19.i = icmp eq i8 %i.ua, 0
  br i1 %.not297.19.i, label %bb.bn, label %.lr.ph.i

bb.bn:                                            ; preds = %bb.bm
  %i.ub = getelementptr i8, ptr %0, i64 36979
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !19
  %.not297.20.i = icmp eq i8 %i.uc, 0
  br i1 %.not297.20.i, label %bb.bo, label %.lr.ph.i

bb.bo:                                            ; preds = %bb.bn
  %i.ud = getelementptr i8, ptr %0, i64 36978
  %i.ue = load i8, ptr %i.ud, align 2, !tbaa !19
  %.not297.21.i = icmp eq i8 %i.ue, 0
  br i1 %.not297.21.i, label %bb.bp, label %.lr.ph.i

bb.bp:                                            ; preds = %bb.bo
  %i.uf = getelementptr i8, ptr %0, i64 36977
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !19
  %.not297.22.i = icmp eq i8 %i.ug, 0
  br i1 %.not297.22.i, label %bb.bq, label %.lr.ph.i

bb.bq:                                            ; preds = %bb.bp
  %i.uh = getelementptr i8, ptr %0, i64 36976
  %i.ui = load i8, ptr %i.uh, align 2, !tbaa !19
  %.not297.23.i = icmp eq i8 %i.ui, 0
  br i1 %.not297.23.i, label %bb.br, label %.lr.ph.i

bb.br:                                            ; preds = %bb.bq
  %i.uj = getelementptr i8, ptr %0, i64 36975
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !19
  %.not297.24.i = icmp eq i8 %i.uk, 0
  br i1 %.not297.24.i, label %bb.bs, label %.lr.ph.i

bb.bs:                                            ; preds = %bb.br
  %i.ul = getelementptr i8, ptr %0, i64 36974
  %i.um = load i8, ptr %i.ul, align 2, !tbaa !19
  %.not297.25.i = icmp eq i8 %i.um, 0
  br i1 %.not297.25.i, label %bb.bt, label %.lr.ph.i

bb.bt:                                            ; preds = %bb.bs
  %i.un = getelementptr i8, ptr %0, i64 36973
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !19
  %.not297.26.i = icmp eq i8 %i.uo, 0
  br i1 %.not297.26.i, label %bb.bu, label %.lr.ph.i

bb.bu:                                            ; preds = %bb.bt
  %i.up = getelementptr i8, ptr %0, i64 36972
  %i.uq = load i8, ptr %i.up, align 2, !tbaa !19
  %.not297.27.i = icmp eq i8 %i.uq, 0
  br i1 %.not297.27.i, label %bb.bv, label %.lr.ph.i

bb.bv:                                            ; preds = %bb.bu
  %i.ur = getelementptr i8, ptr %0, i64 36971
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !19
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
  %.0337.i = phi i8 [ -1, %.lr.ph.i ], [ %i.ve, %bb.cn ] ; 7 uses
  %.0262336.i = phi i32 [ 0, %.lr.ph.i ], [ %.6.i, %bb.cn ] ; 11 uses
  %.0264335.i = phi i32 [ 0, %.lr.ph.i ], [ %.4268.i, %bb.cn ] ; 7 uses
  %.0270334.i = phi i32 [ 0, %.lr.ph.i ], [ %.14.i, %bb.cn ] ; 14 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !19  ; 8 uses
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
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !78
  %i.vj = trunc nuw nsw i32 %.0262336.i to i16
  %i.vk = add i16 %i.vi, %i.vj
  store i16 %i.vk, ptr %i.vh, align 2, !tbaa !78
  %2 = add i32 %.0270334.i, 1                     ; 2 uses
  %i.vl = zext i32 %.0270334.i to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vl
  store i8 %.0337.i, ptr %i.vm, align 1, !tbaa !19
  %.not312.i = icmp eq i32 %.0262336.i, 1
  br i1 %.not312.i, label %.loopexit322.i, label %3

3:                                                ; preds = %bb.bz
  %4 = add i32 %.0270334.i, 2
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 %5
  store i8 %.0337.i, ptr %6, align 1, !tbaa !19
  br label %.loopexit322.i

bb.ca:                                            ; preds = %bb.by
  %i.vn = load i16, ptr %i.vc, align 2, !tbaa !78
  %i.vo = add i16 %i.vn, 1
  store i16 %i.vo, ptr %i.vc, align 2, !tbaa !78
  %i.vp = add i32 %.0270334.i, 1
  %i.vq = zext i32 %.0270334.i to i64
  %i.vr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vq
  store i8 16, ptr %i.vr, align 1, !tbaa !19
  %i.vs = trunc i32 %.0262336.i to i8
  %i.vt = add i8 %i.vs, -3
  %i.vu = add i32 %.0270334.i, 2
  %i.vv = zext i32 %i.vp to i64
  %i.vw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vv
  store i8 %i.vt, ptr %i.vw, align 1, !tbaa !19
  br label %.loopexit322.i

.loopexit322.i:                                   ; preds = %bb.bz, %3, %bb.ca, %bb.bx
  %.3273.i = phi i32 [ %.0270334.i, %bb.bx ], [ %i.vu, %bb.ca ], [ %2, %bb.bz ], [ %4, %3 ] ; 4 uses
  %i.vx = add i32 %.0264335.i, 1                  ; 2 uses
  %i.vy = icmp eq i32 %i.vx, 138
  br i1 %i.vy, label %bb.cb, label %bb.cn

bb.cb:                                            ; preds = %.loopexit322.i
  %i.vz = load i16, ptr %i.va, align 2, !tbaa !78
  %i.wa = add i16 %i.vz, 1
  store i16 %i.wa, ptr %i.va, align 2, !tbaa !78
  %i.wb = add i32 %.3273.i, 1
  %i.wc = zext i32 %.3273.i to i64
  %i.wd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wc
  store i8 18, ptr %i.wd, align 1, !tbaa !19
  %i.we = add i32 %.3273.i, 2
  %i.wf = zext i32 %i.wb to i64
  %i.wg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wf
  store i8 127, ptr %i.wg, align 1, !tbaa !19
  br label %bb.cn

bb.cc:                                            ; preds = %bb.bw
  %.not313.i = icmp eq i32 %.0264335.i, 0
  br i1 %.not313.i, label %.loopexit324.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wh = icmp ult i32 %.0264335.i, 3
  br i1 %i.wh, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.wi = load i16, ptr %i.uy, align 2, !tbaa !78
  %i.wj = trunc nuw nsw i32 %.0264335.i to i16
  %i.wk = add i16 %i.wi, %i.wj
  store i16 %i.wk, ptr %i.uy, align 2, !tbaa !78
  %7 = add i32 %.0270334.i, 1                     ; 2 uses
  %i.wl = zext i32 %.0270334.i to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wl
  store i8 0, ptr %i.wm, align 1, !tbaa !19
  %.not314.i = icmp eq i32 %.0264335.i, 1
  br i1 %.not314.i, label %.loopexit324.i, label %8

8:                                                ; preds = %bb.ce
  %9 = add i32 %.0270334.i, 2
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds nuw i8, ptr %i.b, i64 %10
  store i8 0, ptr %11, align 1, !tbaa !19
  br label %.loopexit324.i

bb.cf:                                            ; preds = %bb.cd
  %i.wn = icmp ult i32 %.0264335.i, 11
  %i.wo = add i32 %.0270334.i, 1
  %i.wp = zext i32 %.0270334.i to i64
  %i.wq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wp
  %i.wr = trunc i32 %.0264335.i to i8
  %i.ws = add i32 %.0270334.i, 2
  %i.wt = zext i32 %i.wo to i64
  %i.wu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wt
  br i1 %i.wn, label %12, label %bb.cg

12:                                               ; preds = %bb.cf
  %13 = load i16, ptr %i.vb, align 2, !tbaa !78
  %14 = add i16 %13, 1
  store i16 %14, ptr %i.vb, align 2, !tbaa !78
  br label %.loopexit324.sink.split.i

bb.cg:                                            ; preds = %bb.cf
  %i.wv = load i16, ptr %i.va, align 2, !tbaa !78
  %i.ww = add i16 %i.wv, 1
  store i16 %i.ww, ptr %i.va, align 2, !tbaa !78
  br label %.loopexit324.sink.split.i

.loopexit324.sink.split.i:                        ; preds = %bb.cg, %12
  %.sink.i = phi i8 [ 18, %bb.cg ], [ 17, %12 ]
  %.sink481.i = phi i8 [ -11, %bb.cg ], [ -3, %12 ]
  store i8 %.sink.i, ptr %i.wq, align 1, !tbaa !19
  %i.wx = add i8 %.sink481.i, %i.wr
  store i8 %i.wx, ptr %i.wu, align 1, !tbaa !19
  br label %.loopexit324.i

.loopexit324.i:                                   ; preds = %bb.ce, %8, %.loopexit324.sink.split.i, %bb.cc
  %.8.i = phi i32 [ %.0270334.i, %bb.cc ], [ %i.ws, %.loopexit324.sink.split.i ], [ %7, %bb.ce ], [ %9, %8 ] ; 11 uses
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
  %i.xb = load i16, ptr %i.xa, align 2, !tbaa !78
  %i.xc = trunc nuw nsw i32 %.0262336.i to i16
  %i.xd = add i16 %i.xb, %i.xc
  store i16 %i.xd, ptr %i.xa, align 2, !tbaa !78
  %15 = add i32 %.8.i, 1                          ; 2 uses
  %i.xe = zext i32 %.8.i to i64
  %i.xf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xe
  store i8 %.0337.i, ptr %i.xf, align 1, !tbaa !19
  %.not317.i = icmp eq i32 %.0262336.i, 1
  br i1 %.not317.i, label %.loopexit323.i, label %16

16:                                               ; preds = %bb.cj
  %17 = add i32 %.8.i, 2
  %18 = zext i32 %15 to i64
  %19 = getelementptr inbounds nuw i8, ptr %i.b, i64 %18
  store i8 %.0337.i, ptr %19, align 1, !tbaa !19
  br label %.loopexit323.i

bb.ck:                                            ; preds = %bb.ci
  %i.xg = load i16, ptr %i.vc, align 2, !tbaa !78
  %i.xh = add i16 %i.xg, 1
  store i16 %i.xh, ptr %i.vc, align 2, !tbaa !78
  %i.xi = add i32 %.8.i, 1
  %i.xj = zext i32 %.8.i to i64
  %i.xk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xj
  store i8 16, ptr %i.xk, align 1, !tbaa !19
  %i.xl = trunc i32 %.0262336.i to i8
  %i.xm = add i8 %i.xl, -3
  %i.xn = add i32 %.8.i, 2
  %i.xo = zext i32 %i.xi to i64
  %i.xp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xo
  store i8 %i.xm, ptr %i.xp, align 1, !tbaa !19
  br label %.loopexit323.i

.loopexit323.i:                                   ; preds = %bb.cj, %16, %bb.ck, %bb.ch
  %.11.i = phi i32 [ %.8.i, %bb.ch ], [ %i.xn, %bb.ck ], [ %15, %bb.cj ], [ %17, %16 ] ; 2 uses
  %i.xq = zext i8 %i.ve to i64
  %i.xr = getelementptr inbounds nuw [2 x i8], ptr %i.uy, i64 %i.xq ; 2 uses
  %i.xs = load i16, ptr %i.xr, align 2, !tbaa !78
  %i.xt = add i16 %i.xs, 1
  store i16 %i.xt, ptr %i.xr, align 2, !tbaa !78
  %i.xu = add i32 %.11.i, 1
  %i.xv = zext i32 %.11.i to i64
  %i.xw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xv
  store i8 %i.ve, ptr %i.xw, align 1, !tbaa !19
  br label %bb.cn

bb.cl:                                            ; preds = %.loopexit324.i
  %i.xx = add i32 %.0262336.i, 1                  ; 2 uses
  %i.xy = icmp eq i32 %i.xx, 6
  br i1 %i.xy, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.xz = load i16, ptr %i.vc, align 2, !tbaa !78
  %i.ya = add i16 %i.xz, 1
  store i16 %i.ya, ptr %i.vc, align 2, !tbaa !78
  %i.yb = add i32 %.8.i, 1
  %i.yc = zext i32 %.8.i to i64
  %i.yd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yc
  store i8 16, ptr %i.yd, align 1, !tbaa !19
  %i.ye = zext i32 %i.yb to i64
  %i.yf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ye
  store i8 3, ptr %i.yf, align 1, !tbaa !19
  %i.yg = add i32 %.8.i, 2
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %.loopexit323.i, %bb.cb, %.loopexit322.i
  %.14.i = phi i32 [ %i.xu, %.loopexit323.i ], [ %i.yg, %bb.cm ], [ %.8.i, %bb.cl ], [ %i.we, %bb.cb ], [ %.3273.i, %.loopexit322.i ] ; 14 uses
  %.4268.i = phi i32 [ 0, %.loopexit323.i ], [ 0, %bb.cm ], [ 0, %bb.cl ], [ 0, %bb.cb ], [ %i.vx, %.loopexit322.i ] ; 7 uses
  %.6.i = phi i32 [ 0, %.loopexit323.i ], [ 0, %bb.cm ], [ %i.xx, %bb.cl ], [ 0, %bb.cb ], [ 0, %.loopexit322.i ] ; 6 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.bw, !llvm.loop !346

._crit_edge.i:                                    ; preds = %bb.cn
  %.not298.i = icmp eq i32 %.6.i, 0
  br i1 %.not298.i, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %._crit_edge.i
  %i.yh = icmp ult i32 %.6.i, 3
  br i1 %i.yh, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.yi = zext i8 %i.ve to i64
  %i.yj = getelementptr inbounds nuw [2 x i8], ptr %i.uy, i64 %i.yi ; 2 uses
  %i.yk = load i16, ptr %i.yj, align 2, !tbaa !78
  %i.yl = trunc nuw nsw i32 %.6.i to i16
  %i.ym = add i16 %i.yk, %i.yl
  store i16 %i.ym, ptr %i.yj, align 2, !tbaa !78
  %20 = add i32 %.14.i, 1                         ; 2 uses
  %i.yn = zext i32 %.14.i to i64
  %i.yo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yn
  store i8 %i.ve, ptr %i.yo, align 1, !tbaa !19
  %.not301.i = icmp eq i32 %.6.i, 1
  br i1 %.not301.i, label %.loopexit320.i, label %21

21:                                               ; preds = %bb.cp
  %22 = add i32 %.14.i, 2
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds nuw i8, ptr %i.b, i64 %23
  store i8 %i.ve, ptr %24, align 1, !tbaa !19
  br label %.loopexit320.i

bb.cq:                                            ; preds = %bb.co
  %i.yp = load i16, ptr %i.vc, align 2, !tbaa !78
  %i.yq = add i16 %i.yp, 1
  store i16 %i.yq, ptr %i.vc, align 2, !tbaa !78
  %i.yr = add i32 %.14.i, 1
  %i.ys = zext i32 %.14.i to i64
  %i.yt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ys
  store i8 16, ptr %i.yt, align 1, !tbaa !19
  %i.yu = trunc i32 %.6.i to i8
  %i.yv = add i8 %i.yu, -3
  %i.yw = add i32 %.14.i, 2
  %i.yx = zext i32 %i.yr to i64
  %i.yy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yx
  store i8 %i.yv, ptr %i.yy, align 1, !tbaa !19
  br label %.loopexit320.i

bb.cr:                                            ; preds = %._crit_edge.i
  %.not299.i = icmp eq i32 %.4268.i, 0
  br i1 %.not299.i, label %.loopexit320.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yz = icmp ult i32 %.4268.i, 3
  br i1 %i.yz, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.za = load i16, ptr %i.uy, align 2, !tbaa !78
  %i.zb = trunc nuw nsw i32 %.4268.i to i16
  %i.zc = add i16 %i.za, %i.zb
  store i16 %i.zc, ptr %i.uy, align 2, !tbaa !78
  %25 = add i32 %.14.i, 1                         ; 2 uses
  %i.zd = zext i32 %.14.i to i64
  %i.ze = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zd
  store i8 0, ptr %i.ze, align 1, !tbaa !19
  %.not300.i = icmp eq i32 %.4268.i, 1
  br i1 %.not300.i, label %.loopexit320.i, label %26

26:                                               ; preds = %bb.ct
  %27 = add i32 %.14.i, 2
  %28 = zext i32 %25 to i64
  %29 = getelementptr inbounds nuw i8, ptr %i.b, i64 %28
  store i8 0, ptr %29, align 1, !tbaa !19
  br label %.loopexit320.i

bb.cu:                                            ; preds = %bb.cs
  %i.zf = icmp ult i32 %.4268.i, 11
  %i.zg = add i32 %.14.i, 1
  %i.zh = zext i32 %.14.i to i64
  %i.zi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zh ; 2 uses
  %i.zj = trunc i32 %.4268.i to i8                ; 2 uses
  %i.zk = add i32 %.14.i, 2                       ; 2 uses
  %i.zl = zext i32 %i.zg to i64
  %i.zm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zl ; 2 uses
  br i1 %i.zf, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.zn = load i16, ptr %i.vb, align 2, !tbaa !78
  %i.zo = add i16 %i.zn, 1
  store i16 %i.zo, ptr %i.vb, align 2, !tbaa !78
  store i8 17, ptr %i.zi, align 1, !tbaa !19
  %i.zp = add nsw i8 %i.zj, -3
  store i8 %i.zp, ptr %i.zm, align 1, !tbaa !19
  br label %.loopexit320.i

bb.cw:                                            ; preds = %bb.cu
  %i.zq = load i16, ptr %i.va, align 2, !tbaa !78
  %i.zr = add i16 %i.zq, 1
  store i16 %i.zr, ptr %i.va, align 2, !tbaa !78
  store i8 18, ptr %i.zi, align 1, !tbaa !19
  %i.zs = add i8 %i.zj, -11
  store i8 %i.zs, ptr %i.zm, align 1, !tbaa !19
  br label %.loopexit320.i

.loopexit320.i:                                   ; preds = %bb.cp, %21, %bb.ct, %26, %bb.cw, %bb.cv, %bb.cr, %bb.cq
  %.19.i = phi i32 [ %i.yw, %bb.cq ], [ %.14.i, %bb.cr ], [ %27, %26 ], [ %i.zk, %bb.cw ], [ %i.zk, %bb.cv ], [ %25, %bb.ct ], [ %20, %bb.cp ], [ %22, %21 ] ; 2 uses
  tail call fastcc void @tdefl_optimize_huffman_table(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 19, i32 noundef 7, i32 noundef 0)
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 25 uses
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !83 ; 2 uses
  %i.zv = shl i32 2, %i.zu
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 25 uses
  %i.zx = load i32, ptr %i.zw, align 8, !tbaa !84
  %i.zy = or i32 %i.zx, %i.zv                     ; 3 uses
  store i32 %i.zy, ptr %i.zw, align 8, !tbaa !84
  %i.zz = add i32 %i.zu, 2                        ; 4 uses
  store i32 %i.zz, ptr %i.zt, align 4, !tbaa !83
  %i.aaa = icmp ugt i32 %i.zz, 7
  br i1 %i.aaa, label %.lr.ph346.i, label %._crit_edge347.i

.lr.ph346.i:                                      ; preds = %.loopexit320.i
  %i.aab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cz, %.lr.ph346.i
  %i.aad = phi i32 [ %i.zz, %.lr.ph346.i ], [ %i.aan, %bb.cz ]
  %i.aae = phi i32 [ %i.zy, %.lr.ph346.i ], [ %i.aam, %bb.cz ] ; 2 uses
  %i.aaf = load ptr, ptr %i.aab, align 8, !tbaa !42 ; 3 uses
  %i.aag = load ptr, ptr %i.aac, align 8, !tbaa !43
  %i.aah = icmp ult ptr %i.aaf, %i.aag
  br i1 %i.aah, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.aai = trunc i32 %i.aae to i8
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aaf, i64 1
  store ptr %i.aaj, ptr %i.aab, align 8, !tbaa !42
  store i8 %i.aai, ptr %i.aaf, align 1, !tbaa !19
  %.pre.i3 = load i32, ptr %i.zw, align 8, !tbaa !84
  %.pre405.i = load i32, ptr %i.zt, align 4, !tbaa !83
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.aak = phi i32 [ %.pre405.i, %bb.cy ], [ %i.aad, %bb.cx ]
  %i.aal = phi i32 [ %.pre.i3, %bb.cy ], [ %i.aae, %bb.cx ]
  %i.aam = lshr i32 %i.aal, 8                     ; 3 uses
  store i32 %i.aam, ptr %i.zw, align 8, !tbaa !84
  %i.aan = add i32 %i.aak, -8                     ; 4 uses
  store i32 %i.aan, ptr %i.zt, align 4, !tbaa !83
  %i.aao = icmp ugt i32 %i.aan, 7
  br i1 %i.aao, label %bb.cx, label %._crit_edge347.i, !llvm.loop !347

._crit_edge347.i:                                 ; preds = %bb.cz, %.loopexit320.i
  %i.aap = phi i32 [ %i.zy, %.loopexit320.i ], [ %i.aam, %bb.cz ]
  %storemerge.lcssa.i = phi i32 [ %i.zz, %.loopexit320.i ], [ %i.aan, %bb.cz ] ; 3 uses
  %i.aaq = add nsw i32 %.0282.lcssa.i, -257
  %i.aar = shl nuw nsw i32 %i.aaq, %storemerge.lcssa.i
  %i.aas = or i32 %i.aar, %i.aap                  ; 3 uses
  store i32 %i.aas, ptr %i.zw, align 8, !tbaa !84
  %i.aat = add nuw nsw i32 %storemerge.lcssa.i, 5 ; 3 uses
  store i32 %i.aat, ptr %i.zt, align 4, !tbaa !83
  %i.aau = icmp samesign ugt i32 %storemerge.lcssa.i, 2
  br i1 %i.aau, label %.lr.ph350.i, label %._crit_edge351.i

.lr.ph350.i:                                      ; preds = %._crit_edge347.i
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.da

bb.da:                                            ; preds = %bb.dc, %.lr.ph350.i
  %i.aax = phi i32 [ %i.aat, %.lr.ph350.i ], [ %i.abh, %bb.dc ]
  %i.aay = phi i32 [ %i.aas, %.lr.ph350.i ], [ %i.abg, %bb.dc ] ; 2 uses
  %i.aaz = load ptr, ptr %i.aav, align 8, !tbaa !42 ; 3 uses
  %i.aba = load ptr, ptr %i.aaw, align 8, !tbaa !43
  %i.abb = icmp ult ptr %i.aaz, %i.aba
  br i1 %i.abb, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.abc = trunc i32 %i.aay to i8
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaz, i64 1
  store ptr %i.abd, ptr %i.aav, align 8, !tbaa !42
  store i8 %i.abc, ptr %i.aaz, align 1, !tbaa !19
  %.pre406.i = load i32, ptr %i.zw, align 8, !tbaa !84
  %.pre407.i = load i32, ptr %i.zt, align 4, !tbaa !83
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.abe = phi i32 [ %.pre407.i, %bb.db ], [ %i.aax, %bb.da ]
  %i.abf = phi i32 [ %.pre406.i, %bb.db ], [ %i.aay, %bb.da ]
  %i.abg = lshr i32 %i.abf, 8                     ; 3 uses
  store i32 %i.abg, ptr %i.zw, align 8, !tbaa !84
  %i.abh = add i32 %i.abe, -8                     ; 4 uses
  store i32 %i.abh, ptr %i.zt, align 4, !tbaa !83
  %i.abi = icmp ugt i32 %i.abh, 7
  br i1 %i.abi, label %bb.da, label %._crit_edge351.i, !llvm.loop !348

._crit_edge351.i:                                 ; preds = %bb.dc, %._crit_edge347.i
  %i.abj = phi i32 [ %i.aas, %._crit_edge347.i ], [ %i.abg, %bb.dc ]
  %storemerge302.lcssa.i = phi i32 [ %i.aat, %._crit_edge347.i ], [ %i.abh, %bb.dc ] ; 3 uses
  %i.abk = add nsw i32 %.0281.lcssa.i, -1
  %i.abl = shl nuw nsw i32 %i.abk, %storemerge302.lcssa.i
  %i.abm = or i32 %i.abl, %i.abj                  ; 3 uses
  store i32 %i.abm, ptr %i.zw, align 8, !tbaa !84
  %i.abn = add nuw nsw i32 %storemerge302.lcssa.i, 5 ; 3 uses
  store i32 %i.abn, ptr %i.zt, align 4, !tbaa !83
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
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !19
  %.not304.i = icmp eq i8 %i.abu, 0
  br i1 %.not304.i, label %bb.dg, label %bb.du

bb.dd:                                            ; preds = %bb.df, %.lr.ph354.i
  %i.abv = phi i32 [ %i.abn, %.lr.ph354.i ], [ %i.acf, %bb.df ]
  %i.abw = phi i32 [ %i.abm, %.lr.ph354.i ], [ %i.ace, %bb.df ] ; 2 uses
  %i.abx = load ptr, ptr %i.abp, align 8, !tbaa !42 ; 3 uses
  %i.aby = load ptr, ptr %i.abq, align 8, !tbaa !43
  %i.abz = icmp ult ptr %i.abx, %i.aby
  br i1 %i.abz, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.aca = trunc i32 %i.abw to i8
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abx, i64 1
  store ptr %i.acb, ptr %i.abp, align 8, !tbaa !42
  store i8 %i.aca, ptr %i.abx, align 1, !tbaa !19
  %.pre408.i = load i32, ptr %i.zw, align 8, !tbaa !84
  %.pre409.i = load i32, ptr %i.zt, align 4, !tbaa !83
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.acc = phi i32 [ %.pre409.i, %bb.de ], [ %i.abv, %bb.dd ]
  %i.acd = phi i32 [ %.pre408.i, %bb.de ], [ %i.abw, %bb.dd ]
  %i.ace = lshr i32 %i.acd, 8                     ; 3 uses
  store i32 %i.ace, ptr %i.zw, align 8, !tbaa !84
  %i.acf = add i32 %i.acc, -8                     ; 4 uses
  store i32 %i.acf, ptr %i.zt, align 4, !tbaa !83
  %i.acg = icmp ugt i32 %i.acf, 7
  br i1 %i.acg, label %bb.dd, label %.preheader319.i, !llvm.loop !349

bb.dg:                                            ; preds = %.preheader319.i
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 37259
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !19
  %.not304.1.i = icmp eq i8 %i.aci, 0
  br i1 %.not304.1.i, label %bb.dh, label %bb.du

bb.dh:                                            ; preds = %bb.dg
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 37272
  %i.ack = load i8, ptr %i.acj, align 8, !tbaa !19
  %.not304.2.i = icmp eq i8 %i.ack, 0
  br i1 %.not304.2.i, label %bb.di, label %bb.du

bb.di:                                            ; preds = %bb.dh
  %i.acl = getelementptr inbounds nuw i8, ptr %0, i64 37260
  %i.acm = load i8, ptr %i.acl, align 4, !tbaa !19
  %.not304.3.i = icmp eq i8 %i.acm, 0
  br i1 %.not304.3.i, label %bb.dj, label %bb.du

bb.dj:                                            ; preds = %bb.di
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 37271
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !19
  %.not304.4.i = icmp eq i8 %i.aco, 0
  br i1 %.not304.4.i, label %bb.dk, label %bb.du

bb.dk:                                            ; preds = %bb.dj
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 37261
  %i.acq = load i8, ptr %i.acp, align 1, !tbaa !19
  %.not304.5.i = icmp eq i8 %i.acq, 0
  br i1 %.not304.5.i, label %bb.dl, label %bb.du

bb.dl:                                            ; preds = %bb.dk
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 37270
  %i.acs = load i8, ptr %i.acr, align 2, !tbaa !19
  %.not304.6.i = icmp eq i8 %i.acs, 0
  br i1 %.not304.6.i, label %bb.dm, label %bb.du

bb.dm:                                            ; preds = %bb.dl
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 37262
  %i.acu = load i8, ptr %i.act, align 2, !tbaa !19
  %.not304.7.i = icmp eq i8 %i.acu, 0
  br i1 %.not304.7.i, label %bb.dn, label %bb.du

bb.dn:                                            ; preds = %bb.dm
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 37269
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !19
  %.not304.8.i = icmp eq i8 %i.acw, 0
  br i1 %.not304.8.i, label %bb.do, label %bb.du

bb.do:                                            ; preds = %bb.dn
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 37263
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !19
  %.not304.9.i = icmp eq i8 %i.acy, 0
  br i1 %.not304.9.i, label %bb.dp, label %bb.du

bb.dp:                                            ; preds = %bb.do
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 37268
  %i.ada = load i8, ptr %i.acz, align 4, !tbaa !19
  %.not304.10.i = icmp eq i8 %i.ada, 0
end_hunk_3
begin_hunk_4_@tdefl_compress_block:bb.a
bb.dw:                                            ; preds = %bb.dv
  %i.aea = trunc i32 %i.adw to i8
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adx, i64 1
  store ptr %i.aeb, ptr %i.ado, align 8, !tbaa !42
  store i8 %i.aea, ptr %i.adx, align 1, !tbaa !19
  %.pre410.i = load i32, ptr %i.zw, align 8, !tbaa !84
  %.pre411.i = load i32, ptr %i.zt, align 4, !tbaa !83
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.aec = phi i32 [ %.pre411.i, %bb.dw ], [ %i.adv, %bb.dv ]
  %i.aed = phi i32 [ %.pre410.i, %bb.dw ], [ %i.adw, %bb.dv ]
  %i.aee = lshr i32 %i.aed, 8                     ; 3 uses
  store i32 %i.aee, ptr %i.zw, align 8, !tbaa !84
  %i.aef = add i32 %i.aec, -8                     ; 4 uses
  store i32 %i.aef, ptr %i.zt, align 4, !tbaa !83
  %i.aeg = icmp ugt i32 %i.aef, 7
  br i1 %i.aeg, label %bb.dv, label %.preheader318.i, !llvm.loop !350

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
  %i.ael = load i8, ptr %i.aek, align 1, !tbaa !19
  %i.aem = zext i8 %i.ael to i64
  %i.aen = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.aem
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !19
  %i.aep = zext i8 %i.aeo to i32
  %i.aeq = shl nuw nsw i32 %i.aep, %i.aej
  %i.aer = or i32 %i.aeq, %i.aei                  ; 4 uses
  store i32 %i.aer, ptr %i.zw, align 8, !tbaa !84
  %i.aes = add nuw nsw i32 %i.aej, 3              ; 4 uses
  store i32 %i.aes, ptr %i.zt, align 4, !tbaa !83
  %i.aet = icmp samesign ugt i32 %i.aej, 4
  br i1 %i.aet, label %.lr.ph360.i, label %._crit_edge361.i

.lr.ph360.i:                                      ; preds = %bb.dy
  %i.aeu = load ptr, ptr %i.ads, align 8, !tbaa !42
  %i.aev = load ptr, ptr %i.adt, align 8, !tbaa !43
  %i.aew = icmp ult ptr %i.aeu, %i.aev
  br i1 %i.aew, label %.lr.ph360.split.i, label %.lr.ph360.split.us.i

.lr.ph360.split.us.i:                             ; preds = %.lr.ph360.i, %.lr.ph360.split.us.i
  %i.aex = phi i32 [ %i.afa, %.lr.ph360.split.us.i ], [ %i.aes, %.lr.ph360.i ]
  %i.aey = phi i32 [ %i.aez, %.lr.ph360.split.us.i ], [ %i.aer, %.lr.ph360.i ]
  %i.aez = lshr i32 %i.aey, 8                     ; 3 uses
  %i.afa = add i32 %i.aex, -8                     ; 4 uses
  %i.afb = icmp ugt i32 %i.afa, 7
  br i1 %i.afb, label %.lr.ph360.split.us.i, label %._crit_edge361.split.us.i, !llvm.loop !351

._crit_edge361.split.us.i:                        ; preds = %.lr.ph360.split.us.i
  store i32 %i.aez, ptr %i.zw, align 8, !tbaa !84
  store i32 %i.afa, ptr %i.zt, align 4, !tbaa !83
  br label %._crit_edge361.i

.lr.ph360.split.i:                                ; preds = %.lr.ph360.i, %bb.ea
  %i.afc = phi i32 [ %i.afm, %bb.ea ], [ %i.aes, %.lr.ph360.i ]
  %i.afd = phi i32 [ %i.afl, %bb.ea ], [ %i.aer, %.lr.ph360.i ] ; 2 uses
  %i.afe = load ptr, ptr %i.ads, align 8, !tbaa !42 ; 3 uses
  %i.aff = load ptr, ptr %i.adt, align 8, !tbaa !43
  %i.afg = icmp ult ptr %i.afe, %i.aff
  br i1 %i.afg, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %.lr.ph360.split.i
  %i.afh = trunc i32 %i.afd to i8
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afe, i64 1
  store ptr %i.afi, ptr %i.ads, align 8, !tbaa !42
  store i8 %i.afh, ptr %i.afe, align 1, !tbaa !19
  %.pre412.i = load i32, ptr %i.zw, align 8, !tbaa !84
  %.pre413.i = load i32, ptr %i.zt, align 4, !tbaa !83
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %.lr.ph360.split.i
  %i.afj = phi i32 [ %.pre413.i, %bb.dz ], [ %i.afc, %.lr.ph360.split.i ]
  %i.afk = phi i32 [ %.pre412.i, %bb.dz ], [ %i.afd, %.lr.ph360.split.i ]
  %i.afl = lshr i32 %i.afk, 8                     ; 3 uses
  store i32 %i.afl, ptr %i.zw, align 8, !tbaa !84
  %i.afm = add i32 %i.afj, -8                     ; 4 uses
  store i32 %i.afm, ptr %i.zt, align 4, !tbaa !83
  %i.afn = icmp ugt i32 %i.afm, 7
  br i1 %i.afn, label %.lr.ph360.split.i, label %._crit_edge361.i, !llvm.loop !352

._crit_edge361.i:                                 ; preds = %bb.ea, %._crit_edge361.split.us.i, %bb.dy
  %i.afo = phi i32 [ %i.aer, %bb.dy ], [ %i.aez, %._crit_edge361.split.us.i ], [ %i.afl, %bb.ea ] ; 3 uses
  %i.afp = phi i32 [ %i.aes, %bb.dy ], [ %i.afa, %._crit_edge361.split.us.i ], [ %i.afm, %bb.ea ] ; 3 uses
  %indvars.iv.next401.i = add nuw nsw i64 %indvars.iv400.i, 1 ; 2 uses
  %exitcond404.not.i = icmp eq i64 %indvars.iv.next401.i, %wide.trip.count403.i
  br i1 %exitcond404.not.i, label %.preheader.i, label %bb.dy, !llvm.loop !353

bb.eb:                                            ; preds = %.loopexit.i, %.lr.ph380.i
  %i.afq = phi i32 [ %i.afo, %.lr.ph380.i ], [ %i.aiz, %.loopexit.i ]
  %i.afr = phi i32 [ %i.afp, %.lr.ph380.i ], [ %i.aja, %.loopexit.i ] ; 3 uses
  %.0261379.i = phi i32 [ 0, %.lr.ph380.i ], [ %.1.i, %.loopexit.i ] ; 3 uses
  %i.afs = add nuw i32 %.0261379.i, 1             ; 2 uses
  %i.aft = zext i32 %.0261379.i to i64
  %i.afu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aft
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !19 ; 2 uses
  %i.afw = zext i8 %i.afv to i64                  ; 3 uses
  %i.afx = getelementptr inbounds nuw [2 x i8], ptr %i.aeh, i64 %i.afw
  %i.afy = load i16, ptr %i.afx, align 2, !tbaa !78
  %i.afz = zext i16 %i.afy to i32
  %i.aga = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.afw
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !19
  %i.agc = zext i8 %i.agb to i32                  ; 2 uses
  %i.agd = shl nuw nsw i32 %i.afz, %i.afr
  %i.age = or i32 %i.agd, %i.afq                  ; 4 uses
  store i32 %i.age, ptr %i.zw, align 8, !tbaa !84
  %i.agf = add nuw nsw i32 %i.afr, %i.agc         ; 6 uses
  store i32 %i.agf, ptr %i.zt, align 4, !tbaa !83
  %i.agg = icmp samesign ugt i32 %i.agf, 7
  br i1 %i.agg, label %.lr.ph366.i, label %._crit_edge367.i

.lr.ph366.i:                                      ; preds = %bb.eb
  %i.agh = load ptr, ptr %i.ads, align 8, !tbaa !42
  %i.agi = load ptr, ptr %i.adt, align 8, !tbaa !43
  %i.agj = icmp ult ptr %i.agh, %i.agi
  br i1 %i.agj, label %.lr.ph366.split.i, label %.lr.ph366.split.us.i.preheader

.lr.ph366.split.us.i.preheader:                   ; preds = %.lr.ph366.i
  %i.agk = add i32 %i.afr, -8
  %i.agl = add i32 %i.agk, %i.agc                 ; 2 uses
  %i.agm = lshr i32 %i.agl, 3
  %i.agn = add nuw nsw i32 %i.agm, 1
  %xtraiter293 = and i32 %i.agn, 7                ; 2 uses
  %lcmp.mod294.not = icmp eq i32 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %.lr.ph366.split.us.i.prol.loopexit, label %.lr.ph366.split.us.i.prol

.lr.ph366.split.us.i.prol:                        ; preds = %.lr.ph366.split.us.i.preheader, %.lr.ph366.split.us.i.prol
  %i.ago = phi i32 [ %i.agr, %.lr.ph366.split.us.i.prol ], [ %i.agf, %.lr.ph366.split.us.i.preheader ]
  %i.agp = phi i32 [ %i.agq, %.lr.ph366.split.us.i.prol ], [ %i.age, %.lr.ph366.split.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph366.split.us.i.prol ], [ 0, %.lr.ph366.split.us.i.preheader ]
  %i.agq = lshr i32 %i.agp, 8                     ; 2 uses
  %i.agr = add i32 %i.ago, -8                     ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter293
  br i1 %prol.iter.cmp.not, label %.lr.ph366.split.us.i.prol.loopexit, label %.lr.ph366.split.us.i.prol, !llvm.loop !354

.lr.ph366.split.us.i.prol.loopexit:               ; preds = %.lr.ph366.split.us.i.prol, %.lr.ph366.split.us.i.preheader
  %.unr = phi i32 [ %i.agf, %.lr.ph366.split.us.i.preheader ], [ %i.agr, %.lr.ph366.split.us.i.prol ]
  %.lcssa246.unr = phi i32 [ poison, %.lr.ph366.split.us.i.preheader ], [ %i.agq, %.lr.ph366.split.us.i.prol ]
  %.lcssa245.unr = phi i32 [ poison, %.lr.ph366.split.us.i.preheader ], [ %i.agr, %.lr.ph366.split.us.i.prol ]
  %i.ags = icmp ult i32 %i.agl, 56
  br i1 %i.ags, label %._crit_edge367.split.us.i, label %.lr.ph366.split.us.i

.lr.ph366.split.us.i:                             ; preds = %.lr.ph366.split.us.i.prol.loopexit, %.lr.ph366.split.us.i
  %i.agt = phi i32 [ %i.agu, %.lr.ph366.split.us.i ], [ %.unr, %.lr.ph366.split.us.i.prol.loopexit ]
  %i.agu = add i32 %i.agt, -64                    ; 3 uses
  %i.agv = icmp ugt i32 %i.agu, 7
  br i1 %i.agv, label %.lr.ph366.split.us.i, label %._crit_edge367.split.us.i, !llvm.loop !355

._crit_edge367.split.us.i:                        ; preds = %.lr.ph366.split.us.i, %.lr.ph366.split.us.i.prol.loopexit
  %.lcssa246 = phi i32 [ %.lcssa246.unr, %.lr.ph366.split.us.i.prol.loopexit ], [ 0, %.lr.ph366.split.us.i ] ; 2 uses
  %.lcssa245 = phi i32 [ %.lcssa245.unr, %.lr.ph366.split.us.i.prol.loopexit ], [ %i.agu, %.lr.ph366.split.us.i ] ; 2 uses
  store i32 %.lcssa246, ptr %i.zw, align 8, !tbaa !84
  store i32 %.lcssa245, ptr %i.zt, align 4, !tbaa !83
  br label %._crit_edge367.i

.lr.ph366.split.i:                                ; preds = %.lr.ph366.i, %bb.ed
  %i.agw = phi i32 [ %i.ahg, %bb.ed ], [ %i.agf, %.lr.ph366.i ]
  %i.agx = phi i32 [ %i.ahf, %bb.ed ], [ %i.age, %.lr.ph366.i ] ; 2 uses
  %i.agy = load ptr, ptr %i.ads, align 8, !tbaa !42 ; 3 uses
  %i.agz = load ptr, ptr %i.adt, align 8, !tbaa !43
  %i.aha = icmp ult ptr %i.agy, %i.agz
  br i1 %i.aha, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %.lr.ph366.split.i
  %i.ahb = trunc i32 %i.agx to i8
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agy, i64 1
  store ptr %i.ahc, ptr %i.ads, align 8, !tbaa !42
  store i8 %i.ahb, ptr %i.agy, align 1, !tbaa !19
  %.pre414.i = load i32, ptr %i.zw, align 8, !tbaa !84
  %.pre415.i = load i32, ptr %i.zt, align 4, !tbaa !83
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %.lr.ph366.split.i
  %i.ahd = phi i32 [ %.pre415.i, %bb.ec ], [ %i.agw, %.lr.ph366.split.i ]
  %i.ahe = phi i32 [ %.pre414.i, %bb.ec ], [ %i.agx, %.lr.ph366.split.i ]
  %i.ahf = lshr i32 %i.ahe, 8                     ; 3 uses
  store i32 %i.ahf, ptr %i.zw, align 8, !tbaa !84
  %i.ahg = add i32 %i.ahd, -8                     ; 4 uses
  store i32 %i.ahg, ptr %i.zt, align 4, !tbaa !83
  %i.ahh = icmp ugt i32 %i.ahg, 7
  br i1 %i.ahh, label %.lr.ph366.split.i, label %._crit_edge367.i, !llvm.loop !356

._crit_edge367.i:                                 ; preds = %bb.ed, %._crit_edge367.split.us.i, %bb.eb
  %i.ahi = phi i32 [ %i.age, %bb.eb ], [ %.lcssa246, %._crit_edge367.split.us.i ], [ %i.ahf, %bb.ed ] ; 2 uses
  %i.ahj = phi i32 [ %i.agf, %bb.eb ], [ %.lcssa245, %._crit_edge367.split.us.i ], [ %i.ahg, %bb.ed ] ; 4 uses
  %i.ahk = icmp ugt i8 %i.afv, 15
  br i1 %i.ahk, label %bb.ee, label %.loopexit.i

bb.ee:                                            ; preds = %._crit_edge367.i
  %i.ahl = add i32 %.0261379.i, 2                 ; 3 uses
  %i.ahm = zext i32 %i.afs to i64
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ahm
  %i.aho = load i8, ptr %i.ahn, align 1, !tbaa !19
  %i.ahp = zext i8 %i.aho to i32
  %i.ahq = getelementptr i8, ptr @.str.12, i64 %i.afw
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 -16
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !19
  %i.aht = sext i8 %i.ahs to i32                  ; 2 uses
  %i.ahu = shl nuw nsw i32 %i.ahp, %i.ahj
  %i.ahv = or i32 %i.ahu, %i.ahi                  ; 4 uses
  store i32 %i.ahv, ptr %i.zw, align 8, !tbaa !84
  %i.ahw = add nsw i32 %i.ahj, %i.aht             ; 6 uses
  store i32 %i.ahw, ptr %i.zt, align 4, !tbaa !83
  %i.ahx = icmp ugt i32 %i.ahw, 7
  br i1 %i.ahx, label %.lr.ph374.i, label %.loopexit.i

.lr.ph374.i:                                      ; preds = %bb.ee
  %i.ahy = load ptr, ptr %i.ads, align 8, !tbaa !42
  %i.ahz = load ptr, ptr %i.adt, align 8, !tbaa !43
  %i.aia = icmp ult ptr %i.ahy, %i.ahz
  br i1 %i.aia, label %.lr.ph374.split.i, label %.lr.ph374.split.us.i.preheader

.lr.ph374.split.us.i.preheader:                   ; preds = %.lr.ph374.i
  %i.aib = add i32 %i.ahj, -8
  %i.aic = add i32 %i.aib, %i.aht                 ; 2 uses
  %i.aid = lshr i32 %i.aic, 3
  %i.aie = add nuw nsw i32 %i.aid, 1
  %xtraiter296 = and i32 %i.aie, 7                ; 2 uses
  %lcmp.mod297.not = icmp eq i32 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol

.lr.ph374.split.us.i.prol:                        ; preds = %.lr.ph374.split.us.i.preheader, %.lr.ph374.split.us.i.prol
  %i.aif = phi i32 [ %i.aii, %.lr.ph374.split.us.i.prol ], [ %i.ahw, %.lr.ph374.split.us.i.preheader ]
  %i.aig = phi i32 [ %i.aih, %.lr.ph374.split.us.i.prol ], [ %i.ahv, %.lr.ph374.split.us.i.preheader ]
  %prol.iter298 = phi i32 [ %prol.iter298.next, %.lr.ph374.split.us.i.prol ], [ 0, %.lr.ph374.split.us.i.preheader ]
  %i.aih = lshr i32 %i.aig, 8                     ; 2 uses
  %i.aii = add i32 %i.aif, -8                     ; 3 uses
  %prol.iter298.next = add i32 %prol.iter298, 1   ; 2 uses
  %prol.iter298.cmp.not = icmp eq i32 %prol.iter298.next, %xtraiter296
  br i1 %prol.iter298.cmp.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol, !llvm.loop !357

.lr.ph374.split.us.i.prol.loopexit:               ; preds = %.lr.ph374.split.us.i.prol, %.lr.ph374.split.us.i.preheader
  %.unr299 = phi i32 [ %i.ahw, %.lr.ph374.split.us.i.preheader ], [ %i.aii, %.lr.ph374.split.us.i.prol ]
  %.lcssa250.unr = phi i32 [ poison, %.lr.ph374.split.us.i.preheader ], [ %i.aih, %.lr.ph374.split.us.i.prol ]
  %.lcssa249.unr = phi i32 [ poison, %.lr.ph374.split.us.i.preheader ], [ %i.aii, %.lr.ph374.split.us.i.prol ]
  %i.aij = icmp ult i32 %i.aic, 56
  br i1 %i.aij, label %..loopexit_crit_edge.split.us.i, label %.lr.ph374.split.us.i

.lr.ph374.split.us.i:                             ; preds = %.lr.ph374.split.us.i.prol.loopexit, %.lr.ph374.split.us.i
  %i.aik = phi i32 [ %i.ail, %.lr.ph374.split.us.i ], [ %.unr299, %.lr.ph374.split.us.i.prol.loopexit ]
  %i.ail = add i32 %i.aik, -64                    ; 3 uses
  %i.aim = icmp ugt i32 %i.ail, 7
  br i1 %i.aim, label %.lr.ph374.split.us.i, label %..loopexit_crit_edge.split.us.i, !llvm.loop !358

..loopexit_crit_edge.split.us.i:                  ; preds = %.lr.ph374.split.us.i, %.lr.ph374.split.us.i.prol.loopexit
  %.lcssa250 = phi i32 [ %.lcssa250.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ 0, %.lr.ph374.split.us.i ] ; 2 uses
  %.lcssa249 = phi i32 [ %.lcssa249.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ %i.ail, %.lr.ph374.split.us.i ] ; 2 uses
  store i32 %.lcssa250, ptr %i.zw, align 8, !tbaa !84
  store i32 %.lcssa249, ptr %i.zt, align 4, !tbaa !83
  br label %.loopexit.i

.lr.ph374.split.i:                                ; preds = %.lr.ph374.i, %bb.eg
  %i.ain = phi i32 [ %i.aix, %bb.eg ], [ %i.ahw, %.lr.ph374.i ]
  %i.aio = phi i32 [ %i.aiw, %bb.eg ], [ %i.ahv, %.lr.ph374.i ] ; 2 uses
  %i.aip = load ptr, ptr %i.ads, align 8, !tbaa !42 ; 3 uses
  %i.aiq = load ptr, ptr %i.adt, align 8, !tbaa !43
  %i.air = icmp ult ptr %i.aip, %i.aiq
  br i1 %i.air, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.lr.ph374.split.i
  %i.ais = trunc i32 %i.aio to i8
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aip, i64 1
  store ptr %i.ait, ptr %i.ads, align 8, !tbaa !42
  store i8 %i.ais, ptr %i.aip, align 1, !tbaa !19
  %.pre416.i = load i32, ptr %i.zw, align 8, !tbaa !84
  %.pre417.i = load i32, ptr %i.zt, align 4, !tbaa !83
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %.lr.ph374.split.i
  %i.aiu = phi i32 [ %.pre417.i, %bb.ef ], [ %i.ain, %.lr.ph374.split.i ]
  %i.aiv = phi i32 [ %.pre416.i, %bb.ef ], [ %i.aio, %.lr.ph374.split.i ]
  %i.aiw = lshr i32 %i.aiv, 8                     ; 3 uses
  store i32 %i.aiw, ptr %i.zw, align 8, !tbaa !84
  %i.aix = add i32 %i.aiu, -8                     ; 4 uses
  store i32 %i.aix, ptr %i.zt, align 4, !tbaa !83
  %i.aiy = icmp ugt i32 %i.aix, 7
  br i1 %i.aiy, label %.lr.ph374.split.i, label %.loopexit.i, !llvm.loop !359

.loopexit.i:                                      ; preds = %bb.eg, %..loopexit_crit_edge.split.us.i, %bb.ee, %._crit_edge367.i
  %i.aiz = phi i32 [ %i.ahi, %._crit_edge367.i ], [ %.lcssa250, %..loopexit_crit_edge.split.us.i ], [ %i.ahv, %bb.ee ], [ %i.aiw, %bb.eg ] ; 2 uses
  %i.aja = phi i32 [ %i.ahj, %._crit_edge367.i ], [ %.lcssa249, %..loopexit_crit_edge.split.us.i ], [ %i.ahw, %bb.ee ], [ %i.aix, %bb.eg ] ; 2 uses
  %.1.i = phi i32 [ %i.afs, %._crit_edge367.i ], [ %i.ahl, %..loopexit_crit_edge.split.us.i ], [ %i.ahl, %bb.ee ], [ %i.ahl, %bb.eg ] ; 2 uses
  %i.ajb = icmp ult i32 %.1.i, %.19.i
  br i1 %i.ajb, label %bb.eb, label %tdefl_start_dynamic_block.exit, !llvm.loop !360

tdefl_start_dynamic_block.exit:                   ; preds = %.loopexit.i, %.preheader.i
  %i.ajc = phi i32 [ %i.afp, %.preheader.i ], [ %i.aja, %.loopexit.i ]
  %i.ajd = phi i32 [ %i.afo, %.preheader.i ], [ %i.aiz, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %tdefl_start_static_block.exit

tdefl_start_static_block.exit:                    ; preds = %bb.p, %tdefl_optimize_huffman_table.exit47.i, %tdefl_start_dynamic_block.exit
  %i.aje = phi i32 [ %i.ajc, %tdefl_start_dynamic_block.exit ], [ %i.pq, %tdefl_optimize_huffman_table.exit47.i ], [ %i.qe, %bb.p ] ; 2 uses
  %i.ajf = phi i32 [ %i.ajd, %tdefl_start_dynamic_block.exit ], [ %i.pp, %tdefl_optimize_huffman_table.exit47.i ], [ %i.qd, %bb.p ]
  %i.ajg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !42 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !39 ; 4 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.ajl = zext i32 %i.ajf to i64                 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 8 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %0, i64 37546 ; 2 uses
  %i.ajo = icmp ult ptr %i.ajn, %i.ajj
  br i1 %i.ajo, label %.lr.ph.i8, label %._crit_edge.i4

.lr.ph.i8:                                        ; preds = %tdefl_start_static_block.exit
  %i.ajp = getelementptr inbounds nuw i8, ptr %0, i64 34954 ; 4 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %0, i64 36682 ; 4 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %0, i64 35530
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 36970
  %i.ajt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !43
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ep, %.lr.ph.i8
  %.0133166.i = phi i32 [ 1, %.lr.ph.i8 ], [ %i.aor, %bb.ep ] ; 2 uses
  %.0134165.i = phi ptr [ %i.ajn, %.lr.ph.i8 ], [ %.3137.i, %bb.ep ] ; 3 uses
  %.0138164.i = phi ptr [ %i.ajh, %.lr.ph.i8 ], [ %i.aom, %bb.ep ] ; 3 uses
  %.0139163.i = phi i64 [ %i.ajl, %.lr.ph.i8 ], [ %i.aop, %bb.ep ] ; 2 uses
  %.0143162.i = phi i32 [ %i.aje, %.lr.ph.i8 ], [ %i.aoq, %bb.ep ] ; 4 uses
  %i.ajv = icmp eq i32 %.0133166.i, 1
  br i1 %i.ajv, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.ajw = getelementptr inbounds nuw i8, ptr %.0134165.i, i64 1
  %i.ajx = load i8, ptr %.0134165.i, align 1, !tbaa !19
  %i.ajy = zext i8 %i.ajx to i32
  %i.ajz = or disjoint i32 %i.ajy, 256
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.1135.i = phi ptr [ %i.ajw, %bb.ei ], [ %.0134165.i, %bb.eh ] ; 7 uses
  %.1.i9 = phi i32 [ %i.ajz, %bb.ei ], [ %.0133166.i, %bb.eh ] ; 7 uses
  %i.aka = and i32 %.1.i9, 1
  %.not155.i = icmp eq i32 %i.aka, 0
  br i1 %.not155.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.akb = load i8, ptr %.1135.i, align 1, !tbaa !19 ; 2 uses
  %i.akc = zext i8 %i.akb to i32
  %i.akd = getelementptr inbounds nuw i8, ptr %.1135.i, i64 1
  %i.ake = load i16, ptr %i.akd, align 2, !tbaa !78 ; 2 uses
  %i.akf = zext i16 %i.ake to i32                 ; 3 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %.1135.i, i64 3
  %i.akh = zext i8 %i.akb to i64                  ; 2 uses
  %i.aki = getelementptr inbounds nuw [2 x i8], ptr @s_tdefl_len_sym, i64 %i.akh
  %i.akj = load i16, ptr %i.aki, align 2, !tbaa !78
  %i.akk = zext i16 %i.akj to i64                 ; 2 uses
  %i.akl = getelementptr inbounds nuw [2 x i8], ptr %i.ajp, i64 %i.akk
  %i.akm = load i16, ptr %i.akl, align 2, !tbaa !78
  %i.akn = zext i16 %i.akm to i64
  %i.ako = zext nneg i32 %.0143162.i to i64
  %i.akp = shl i64 %i.akn, %i.ako
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ajq, i64 %i.akk
  %i.akr = load i8, ptr %i.akq, align 1, !tbaa !19
  %i.aks = zext i8 %i.akr to i32
  %i.akt = add i32 %.0143162.i, %i.aks            ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr @s_tdefl_len_extra, i64 %i.akh
  %i.akv = load i8, ptr %i.aku, align 1, !tbaa !19 ; 2 uses
  %i.akw = zext i8 %i.akv to i64
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr @mz_bitmasks, i64 %i.akw
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !18
  %i.akz = and i32 %i.aky, %i.akc
  %i.ala = zext nneg i32 %i.akz to i64
  %i.alb = zext nneg i32 %i.akt to i64
  %i.alc = shl i64 %i.ala, %i.alb
  %i.ald = zext i8 %i.akv to i32
  %i.ale = add i32 %i.akt, %i.ald                 ; 2 uses
  %i.alf = and i32 %i.akf, 511
  %i.alg = zext nneg i32 %i.alf to i64            ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr @s_tdefl_small_dist_sym, i64 %i.alg
  %i.ali = load i8, ptr %i.alh, align 1, !tbaa !19
  %i.alj = getelementptr inbounds nuw i8, ptr @s_tdefl_small_dist_extra, i64 %i.alg
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !19
  %i.all = lshr i32 %i.akf, 8
  %i.alm = zext nneg i32 %i.all to i64            ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr @s_tdefl_large_dist_sym, i64 %i.alm
  %i.alo = load i8, ptr %i.aln, align 1, !tbaa !19
  %i.alp = getelementptr inbounds nuw i8, ptr @s_tdefl_large_dist_extra, i64 %i.alm
  %i.alq = load i8, ptr %i.alp, align 1, !tbaa !19
  %i.alr = icmp ult i16 %i.ake, 512               ; 2 uses
  %.v.i = select i1 %i.alr, i8 %i.ali, i8 %i.alo
  %.v156.i = select i1 %i.alr, i8 %i.alk, i8 %i.alq ; 2 uses
  %i.als = zext i8 %.v156.i to i32
  %i.alt = zext i8 %.v.i to i64                   ; 2 uses
  %i.alu = getelementptr inbounds nuw [2 x i8], ptr %i.ajr, i64 %i.alt
  %i.alv = load i16, ptr %i.alu, align 2, !tbaa !78
  %i.alw = zext i16 %i.alv to i64
  %i.alx = zext nneg i32 %i.ale to i64
end_hunk_4
