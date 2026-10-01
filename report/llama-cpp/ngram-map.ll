Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ngram-map?download=true
inline.NumInlined: 313
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_:bb.a

bb.ag:                                            ; preds = %bb.af
  %i.en = add i64 %.0334613, -1                   ; 2 uses
  %i.eo = icmp ugt i64 %i.en, %i.ee
  br i1 %i.eo, label %.preheader562, label %.thread518, !llvm.loop !71

.thread518:                                       ; preds = %bb.ag, %.thread, %bb.ad
  %i.ep = xor i64 %i.dy, -1
  %i.eq = add nsw i64 %i.ad, %i.ep                ; 4 uses
  %i.er = icmp ugt i64 %i.eq, %i.dt
  br i1 %i.er, label %.lr.ph620, label %.critedge.thread836

.lr.ph620:                                        ; preds = %.thread518
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.et = load i32, ptr %i.es, align 8, !tbaa !38
  %i.eu = zext i32 %i.et to i64                   ; 2 uses
  br i1 %.not543, label %.lr.ph620.split, label %.lr.ph620.split.us

.lr.ph620.split.us:                               ; preds = %.lr.ph620, %bb.aj
  %.0331619.us = phi i64 [ %i.fb, %bb.aj ], [ %i.eq, %.lr.ph620 ] ; 4 uses
  %i.ev = icmp ugt i64 %.0331619.us, %i.eu
  br i1 %i.ev, label %.preheader560.us, label %.critedge.thread836

bb.ah:                                            ; preds = %bb.ai
  %i.ew = add nuw nsw i64 %.0329615.us, 1         ; 2 uses
  %exitcond686.not = icmp eq i64 %i.ew, %i.z
  br i1 %exitcond686.not, label %.critedge.thread, label %bb.ai, !llvm.loop !72

bb.ai:                                            ; preds = %.preheader560.us, %bb.ah
  %.0329615.us = phi i64 [ 0, %.preheader560.us ], [ %i.ew, %bb.ah ] ; 3 uses
  %i.ex = getelementptr [4 x i8], ptr %i.fe, i64 %.0329615.us
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !14
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %.0329615.us
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !14
  %.not377.us = icmp eq i32 %i.ey, %i.fa
  br i1 %.not377.us, label %bb.ah, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fb = add i64 %.0331619.us, -1                ; 2 uses
  %i.fc = icmp ugt i64 %i.fb, %i.dt
  br i1 %i.fc, label %.lr.ph620.split.us, label %.critedge.thread836, !llvm.loop !73

.preheader560.us:                                 ; preds = %.lr.ph620.split.us
  %i.fd = load ptr, ptr %1, align 8, !tbaa !12
  %i.fe = getelementptr [4 x i8], ptr %i.fd, i64 %.0331619.us
  br label %bb.ai

.lr.ph620.split:                                  ; preds = %.lr.ph620
  %i.ff = icmp ugt i64 %i.eq, %i.eu
  br i1 %i.ff, label %.critedge.thread, label %.critedge.thread836

.critedge.thread:                                 ; preds = %bb.ae, %bb.ah, %.lr.ph620.split, %.preheader562.lr.ph, %bb.ac
  %.10527 = phi i64 [ %.0331619.us, %bb.ah ], [ %i.eq, %.lr.ph620.split ], [ %i.de, %bb.ac ], [ %i.eb, %.preheader562.lr.ph ], [ %.0334613, %bb.ae ] ; 3 uses
  %i.fg = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.ak unwind label %bb.t

bb.ak:                                            ; preds = %.critedge.thread
  %i.fh = icmp sgt i32 %i.fg, 4
  br i1 %i.fh, label %bb.al, label %.critedge.thread836

bb.al:                                            ; preds = %bb.ak
  %i.fi = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.am unwind label %bb.t

bb.am:                                            ; preds = %bb.al
  %i.fj = ptrtoint ptr %.sroa.19.2 to i64
  %i.fk = ptrtoint ptr %.sroa.0.4 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = ashr exact i64 %i.fl, 2
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.fi, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__._Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_, i64 noundef %i.l, i32 noundef %i.p, i32 noundef %i.r, i64 noundef %i.fm, i32 noundef %2, i64 noundef %.10527)
          to label %.critedge.thread836 unwind label %bb.t

.critedge.thread836:                              ; preds = %bb.aj, %.lr.ph620.split.us, %.lr.ph620.split, %.thread518, %bb.ak, %bb.am
  %.not379530 = phi i1 [ false, %bb.ak ], [ false, %bb.am ], [ true, %.lr.ph620.split ], [ true, %.thread518 ], [ true, %.lr.ph620.split.us ], [ true, %bb.aj ]
  %.10528 = phi i64 [ %.10527, %bb.ak ], [ %.10527, %bb.am ], [ 0, %.lr.ph620.split ], [ 0, %.thread518 ], [ 0, %.lr.ph620.split.us ], [ 0, %bb.aj ] ; 7 uses
  %i.fn = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 5 uses
  %i.fo = load ptr, ptr %i.bs, align 8, !tbaa !35 ; 3 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %bb.ay, label %bb.an

bb.an:                                            ; preds = %.critedge.thread836
  %i.fq = load i64, ptr %i.bm, align 8, !tbaa !32 ; 4 uses
  %i.fr = add nuw nsw i32 %i.p, 1
  %i.fs = add nuw nsw i32 %i.fr, %i.r
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = icmp ugt i64 %i.fq, %i.ft
  %i.fv = zext i16 %.fr665 to i64                 ; 2 uses
  br i1 %i.fu, label %bb.ao, label %.loopexit559

bb.ao:                                            ; preds = %bb.an
  %i.fw = add nuw nsw i64 %i.fv, %i.z
  %i.fx = xor i64 %i.fw, -1
  %i.fy = add i64 %i.fq, %i.fx                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !38 ; 2 uses
  %i.gb = zext i32 %i.ga to i64
  %i.gc = icmp ugt i64 %i.fy, %i.gb
  br i1 %i.gc, label %.lr.ph624, label %.loopexit559

.lr.ph624:                                        ; preds = %bb.ao
  %i.gd = ptrtoint ptr %i.fo to i64
  %i.ge = ptrtoint ptr %i.fn to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 2
  %xtraiter902 = and i64 %i.z, 3                  ; 3 uses
  %i.gh = icmp ult i16 %.fr, 4
  %unroll_iter907 = and i64 %i.z, 65532
  %lcmp.mod904.not = icmp eq i64 %xtraiter902, 0
  %lcmp.mod906 = icmp ne i64 %xtraiter902, 0
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph624, %bb.as
  %i.gi = phi i32 [ %i.ga, %.lr.ph624 ], [ %i.hp, %bb.as ]
  %.0328622 = phi i64 [ %i.fy, %.lr.ph624 ], [ %i.hq, %bb.as ] ; 3 uses
  br i1 %.not543, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427, label %.lr.ph.i422

.lr.ph.i422:                                      ; preds = %bb.ap
  %.val = load ptr, ptr %1, align 8
  %i.gj = getelementptr [4 x i8], ptr %.val, i64 %.0328622 ; 5 uses
  br i1 %i.gh, label %.epil.preheader, label %.lr.ph.i422.new

.lr.ph.i422.new:                                  ; preds = %.lr.ph.i422, %.lr.ph.i422.new
  %.02.i423 = phi i64 [ %i.hd, %.lr.ph.i422.new ], [ 0, %.lr.ph.i422 ] ; 5 uses
  %.071.i424 = phi i32 [ %i.hc, %.lr.ph.i422.new ], [ 0, %.lr.ph.i422 ]
  %niter908 = phi i64 [ %niter908.next.3, %.lr.ph.i422.new ], [ 0, %.lr.ph.i422 ]
  %i.gk = mul i32 %.071.i424, -1640531535
  %i.gl = getelementptr [4 x i8], ptr %i.gj, i64 %.02.i423
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !14
  %i.gn = add i32 %i.gm, %i.gk
  %i.go = mul i32 %i.gn, -1640531535
  %i.gp = getelementptr [4 x i8], ptr %i.gj, i64 %.02.i423
  %i.gq = getelementptr i8, ptr %i.gp, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !14
  %i.gs = add i32 %i.gr, %i.go
  %i.gt = mul i32 %i.gs, -1640531535
  %i.gu = getelementptr [4 x i8], ptr %i.gj, i64 %.02.i423
  %i.gv = getelementptr i8, ptr %i.gu, i64 8
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !14
  %i.gx = add i32 %i.gw, %i.gt
  %i.gy = mul i32 %i.gx, -1640531535
  %i.gz = getelementptr [4 x i8], ptr %i.gj, i64 %.02.i423
  %i.ha = getelementptr i8, ptr %i.gz, i64 12
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !14
  %i.hc = add i32 %i.hb, %i.gy                    ; 3 uses
  %i.hd = add nuw nsw i64 %.02.i423, 4            ; 2 uses
  %niter908.next.3 = add i64 %niter908, 4         ; 2 uses
  %niter908.ncmp.3 = icmp eq i64 %niter908.next.3, %unroll_iter907
  br i1 %niter908.ncmp.3, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa, label %.lr.ph.i422.new, !llvm.loop !67

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa: ; preds = %.lr.ph.i422.new
  br i1 %lcmp.mod904.not, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa, %.lr.ph.i422
  %.02.i423.epil.init = phi i64 [ 0, %.lr.ph.i422 ], [ %i.hd, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa ]
  %.071.i424.epil.init = phi i32 [ 0, %.lr.ph.i422 ], [ %i.hc, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod906)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.epil.preheader
  %.02.i423.epil = phi i64 [ %.02.i423.epil.init, %.epil.preheader ], [ %i.hi, %bb.aq ] ; 2 uses
  %.071.i424.epil = phi i32 [ %.071.i424.epil.init, %.epil.preheader ], [ %i.hh, %bb.aq ]
  %epil.iter903 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter903.next, %bb.aq ]
  %i.he = mul i32 %.071.i424.epil, -1640531535
  %i.hf = getelementptr [4 x i8], ptr %i.gj, i64 %.02.i423.epil
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !14
  %i.hh = add i32 %i.hg, %i.he                    ; 2 uses
  %i.hi = add nuw nsw i64 %.02.i423.epil, 1
  %epil.iter903.next = add i64 %epil.iter903, 1   ; 2 uses
  %epil.iter903.cmp.not = icmp eq i64 %epil.iter903.next, %xtraiter902
  br i1 %epil.iter903.cmp.not, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit, label %bb.aq, !llvm.loop !74

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit: ; preds = %bb.aq, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa
  %.lcssa891 = phi i32 [ %i.hc, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa ], [ %i.hh, %bb.aq ]
  %i.hj = zext i32 %.lcssa891 to i64
  br label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427: ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit, %bb.ap
  %.07.lcssa.i426 = phi i64 [ 0, %bb.ap ], [ %i.hj, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit ]
  %i.hk = urem i64 %.07.lcssa.i426, %i.gg
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.hk ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !14
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427
  %i.ho = trunc i64 %.0328622 to i32
  store i32 %i.ho, ptr %i.hl, align 4, !tbaa !14
  %.pre757 = load i32, ptr %i.fz, align 8, !tbaa !38
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427
  %i.hp = phi i32 [ %.pre757, %bb.ar ], [ %i.gi, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427 ] ; 2 uses
  %i.hq = add i64 %.0328622, -1                   ; 2 uses
  %i.hr = zext i32 %i.hp to i64
  %i.hs = icmp ugt i64 %i.hq, %i.hr
  br i1 %i.hs, label %bb.ap, label %.loopexit559, !llvm.loop !75

.loopexit559:                                     ; preds = %bb.as, %bb.an, %bb.ao
  %i.ht = xor i64 %i.fv, -1
  %i.hu = add nsw i64 %i.ad, %i.ht                ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.hw = icmp ugt i64 %i.hu, %i.fq
  br i1 %i.hw, label %.lr.ph627, label %.critedge5

.lr.ph627:                                        ; preds = %.loopexit559
  %i.hx = ptrtoint ptr %i.fo to i64
  %i.hy = ptrtoint ptr %i.fn to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = ashr exact i64 %i.hz, 2
  %xtraiter910 = and i64 %i.z, 3                  ; 3 uses
  %i.ib = icmp ult i16 %.fr, 4
  %unroll_iter915 = and i64 %i.z, 65532
  %lcmp.mod912.not = icmp eq i64 %xtraiter910, 0
  %lcmp.mod914 = icmp ne i64 %xtraiter910, 0
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph627, %bb.ax
  %.0327625 = phi i64 [ %i.hu, %.lr.ph627 ], [ %i.jk, %bb.ax ] ; 4 uses
  %6 = load i32, ptr %i.hv, align 8, !tbaa !38
  %i.ic = zext i32 %6 to i64
  %i.id = icmp ugt i64 %.0327625, %i.ic
  br i1 %i.id, label %bb.au, label %.critedge5

.critedge5:                                       ; preds = %bb.at, %bb.ax, %.loopexit559
  %7 = trunc i64 %i.hu to i32
  %8 = load i32, ptr %i.hv, align 8, !tbaa !14
  %.sroa.speculated491 = tail call i32 @llvm.umax.i32(i32 %8, i32 %7)
  store i32 %.sroa.speculated491, ptr %i.hv, align 8, !tbaa !38
  br label %bb.ay

bb.au:                                            ; preds = %bb.at
  br i1 %.not543, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434, label %.lr.ph.i429

.lr.ph.i429:                                      ; preds = %bb.au
  %.val406 = load ptr, ptr %1, align 8
  %i.ie = getelementptr [4 x i8], ptr %.val406, i64 %.0327625 ; 5 uses
  br i1 %i.ib, label %.epil.preheader909, label %.lr.ph.i429.new

.lr.ph.i429.new:                                  ; preds = %.lr.ph.i429, %.lr.ph.i429.new
  %.02.i430 = phi i64 [ %i.iy, %.lr.ph.i429.new ], [ 0, %.lr.ph.i429 ] ; 5 uses
  %.071.i431 = phi i32 [ %i.ix, %.lr.ph.i429.new ], [ 0, %.lr.ph.i429 ]
  %niter916 = phi i64 [ %niter916.next.3, %.lr.ph.i429.new ], [ 0, %.lr.ph.i429 ]
  %i.if = mul i32 %.071.i431, -1640531535
  %i.ig = getelementptr [4 x i8], ptr %i.ie, i64 %.02.i430
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !14
  %i.ii = add i32 %i.ih, %i.if
  %i.ij = mul i32 %i.ii, -1640531535
  %i.ik = getelementptr [4 x i8], ptr %i.ie, i64 %.02.i430
  %i.il = getelementptr i8, ptr %i.ik, i64 4
  %i.im = load i32, ptr %i.il, align 4, !tbaa !14
  %i.in = add i32 %i.im, %i.ij
  %i.io = mul i32 %i.in, -1640531535
  %i.ip = getelementptr [4 x i8], ptr %i.ie, i64 %.02.i430
  %i.iq = getelementptr i8, ptr %i.ip, i64 8
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !14
  %i.is = add i32 %i.ir, %i.io
  %i.it = mul i32 %i.is, -1640531535
  %i.iu = getelementptr [4 x i8], ptr %i.ie, i64 %.02.i430
  %i.iv = getelementptr i8, ptr %i.iu, i64 12
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !14
  %i.ix = add i32 %i.iw, %i.it                    ; 3 uses
  %i.iy = add nuw nsw i64 %.02.i430, 4            ; 2 uses
  %niter916.next.3 = add i64 %niter916, 4         ; 2 uses
  %niter916.ncmp.3 = icmp eq i64 %niter916.next.3, %unroll_iter915
  br i1 %niter916.ncmp.3, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit.unr-lcssa, label %.lr.ph.i429.new, !llvm.loop !67

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit.unr-lcssa: ; preds = %.lr.ph.i429.new
  br i1 %lcmp.mod912.not, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit, label %.epil.preheader909

.epil.preheader909:                               ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit.unr-lcssa, %.lr.ph.i429
  %.02.i430.epil.init = phi i64 [ 0, %.lr.ph.i429 ], [ %i.iy, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit.unr-lcssa ]
  %.071.i431.epil.init = phi i32 [ 0, %.lr.ph.i429 ], [ %i.ix, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod914)
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.epil.preheader909
  %.02.i430.epil = phi i64 [ %.02.i430.epil.init, %.epil.preheader909 ], [ %i.jd, %bb.av ] ; 2 uses
  %.071.i431.epil = phi i32 [ %.071.i431.epil.init, %.epil.preheader909 ], [ %i.jc, %bb.av ]
  %epil.iter911 = phi i64 [ 0, %.epil.preheader909 ], [ %epil.iter911.next, %bb.av ]
  %i.iz = mul i32 %.071.i431.epil, -1640531535
  %i.ja = getelementptr [4 x i8], ptr %i.ie, i64 %.02.i430.epil
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !14
  %i.jc = add i32 %i.jb, %i.iz                    ; 2 uses
  %i.jd = add nuw nsw i64 %.02.i430.epil, 1
  %epil.iter911.next = add i64 %epil.iter911, 1   ; 2 uses
  %epil.iter911.cmp.not = icmp eq i64 %epil.iter911.next, %xtraiter910
  br i1 %epil.iter911.cmp.not, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit, label %bb.av, !llvm.loop !76

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit: ; preds = %bb.av, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit.unr-lcssa
  %.lcssa890 = phi i32 [ %i.ix, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit.unr-lcssa ], [ %i.jc, %bb.av ]
  %i.je = zext i32 %.lcssa890 to i64
  br label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434: ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit, %bb.au
  %.07.lcssa.i433 = phi i64 [ 0, %bb.au ], [ %i.je, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit ]
  %i.jf = urem i64 %.07.lcssa.i433, %i.ia
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.jf ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !14
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434
  %i.jj = trunc i64 %.0327625 to i32
  store i32 %i.jj, ptr %i.jg, align 4, !tbaa !14
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434
  %i.jk = add i64 %.0327625, -1                   ; 2 uses
  %i.jl = icmp ugt i64 %i.jk, %i.fq
  br i1 %i.jl, label %bb.at, label %.critedge5, !llvm.loop !77

bb.ay:                                            ; preds = %.critedge5, %.critedge.thread836
  br i1 %.not379530, label %bb.eb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !30 ; 20 uses
  %i.jp = load ptr, ptr %i.jm, align 8, !tbaa !31 ; 7 uses
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr                    ; 4 uses
  %i.jt = sdiv exact i64 %i.js, 88                ; 6 uses
  %.not664 = icmp eq ptr %i.jo, %i.jp             ; 2 uses
  br i1 %.not664, label %.loopexit557.thread.thread, label %.preheader556.lr.ph

.preheader556.lr.ph:                              ; preds = %bb.az
  br i1 %.not543, label %.loopexit557, label %.preheader556.lr.ph.split

.preheader556.lr.ph.split:                        ; preds = %.preheader556.lr.ph
  %i.ju = load ptr, ptr %1, align 8, !tbaa !12
  br label %.preheader556

.preheader556:                                    ; preds = %.preheader556.lr.ph.split, %bb.bc
  %.0323634 = phi i64 [ 0, %.preheader556.lr.ph.split ], [ %i.kd, %bb.bc ] ; 3 uses
  %i.jv = getelementptr inbounds nuw [88 x i8], ptr %i.jp, i64 %.0323634
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !40
  %i.jx = getelementptr [4 x i8], ptr %i.ju, i64 %i.jw
  br label %bb.bb

bb.ba:                                            ; preds = %bb.bb
  %i.jy = add nuw nsw i64 %.0321630, 1            ; 2 uses
  %exitcond687.not = icmp eq i64 %i.jy, %i.z
  br i1 %exitcond687.not, label %.loopexit557, label %bb.bb, !llvm.loop !78

bb.bb:                                            ; preds = %.preheader556, %bb.ba
  %.0321630 = phi i64 [ 0, %.preheader556 ], [ %i.jy, %bb.ba ] ; 3 uses
  %i.jz = getelementptr [4 x i8], ptr %i.jx, i64 %.0321630
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !14
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %.0321630
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !14
  %.not380 = icmp eq i32 %i.ka, %i.kc
  br i1 %.not380, label %bb.ba, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kd = add nuw i64 %.0323634, 1                ; 2 uses
  %exitcond688.not = icmp eq i64 %i.kd, %i.jt
  br i1 %exitcond688.not, label %.loopexit557.thread, label %.preheader556, !llvm.loop !79

.loopexit557:                                     ; preds = %bb.ba, %.preheader556.lr.ph
  %.2326 = phi i64 [ 0, %.preheader556.lr.ph ], [ %.0323634, %bb.ba ] ; 3 uses
  %i.ke = icmp eq i64 %.2326, %i.jt
  br i1 %i.ke, label %.loopexit557.thread, label %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE9push_backERKS0_.exit

.loopexit557.thread:                              ; preds = %bb.bc, %.loopexit557
  %.2326844 = phi i64 [ %.2326, %.loopexit557 ], [ %i.jt, %bb.bc ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !98
  %.not.i435 = icmp eq ptr %i.jo, %i.kg
  br i1 %.not.i435, label %bb.be, label %bb.bd

.loopexit557.thread.thread:                       ; preds = %bb.az
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !98
  %.not.i435850 = icmp eq ptr %i.jo, %i.ki
  br i1 %.not.i435850, label %_ZNKSt6vectorI20common_ngram_map_keySaIS0_EE12_M_check_lenEmPKc.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %.loopexit557.thread.thread, %.loopexit557.thread
  %.2326844852 = phi i64 [ 0, %.loopexit557.thread.thread ], [ %.2326844, %.loopexit557.thread ]
  store i64 %.10528, ptr %i.jo, align 8, !tbaa !41
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !41
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  store i16 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !42
  %.sroa.8721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  store i64 0, ptr %.sroa.8721.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  store i16 0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 34
  store i16 %.fr665, ptr %.sroa.11.0..sroa_idx, align 2
  %.sroa.13730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  store i64 0, ptr %.sroa.13730.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 48
  store i16 0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 50
  store i16 %.fr665, ptr %.sroa.16.0..sroa_idx, align 2
  %.sroa.18739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 56
  store i64 0, ptr %.sroa.18739.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 64
  store i16 0, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 66
  store i16 %.fr665, ptr %.sroa.21.0..sroa_idx, align 2
  %.sroa.23748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 72
  store i64 0, ptr %.sroa.23748.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 80
  store i16 0, ptr %.sroa.24.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 82
  store i16 %.fr665, ptr %.sroa.26.0..sroa_idx, align 2
  %i.kj = load ptr, ptr %i.jn, align 8, !tbaa !30
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 88
  store ptr %i.kk, ptr %i.jn, align 8, !tbaa !30
  %.pre758.pre = load ptr, ptr %i.jm, align 8, !tbaa !31
  br label %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE9push_backERKS0_.exit

bb.be:                                            ; preds = %.loopexit557.thread
  %i.kl = icmp eq i64 %i.js, 9223372036854775800
  br i1 %i.kl, label %bb.bf, label %_ZNKSt6vectorI20common_ngram_map_keySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #13
          to label %.noexc438 unwind label %bb.bh

.noexc438:                                        ; preds = %bb.bf
  unreachable

_ZNKSt6vectorI20common_ngram_map_keySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %.loopexit557.thread.thread, %bb.be
  %.2326844851855 = phi i64 [ %.2326844, %bb.be ], [ 0, %.loopexit557.thread.thread ]
  %i.km = phi ptr [ %i.kf, %bb.be ], [ %i.kh, %.loopexit557.thread.thread ]
  %.sroa.speculated.i.i.i436 = tail call i64 @llvm.umax.i64(i64 %i.jt, i64 1)
  %i.kn = add nsw i64 %.sroa.speculated.i.i.i436, %i.jt ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %i.jt
  %i.kp = tail call i64 @llvm.umin.i64(i64 %i.kn, i64 104811045873349725)
  %i.kq = select i1 %i.ko, i64 104811045873349725, i64 %i.kp ; 3 uses
  %.not.i.i.i437 = icmp ne i64 %i.kq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i437)
  %i.kr = mul nuw nsw i64 %i.kq, 88
  %i.ks = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kr) #12
          to label %.noexc439 unwind label %bb.bh ; 6 uses

.noexc439:                                        ; preds = %_ZNKSt6vectorI20common_ngram_map_keySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.js ; 15 uses
  store i64 %.10528, ptr %i.kt, align 8, !tbaa !41
  %.sroa.6.0..sroa_idx716 = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx716, align 8, !tbaa !41
  %.sroa.7.0..sroa_idx718 = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store i16 0, ptr %.sroa.7.0..sroa_idx718, align 8, !tbaa !42
  %.sroa.8721.0..sroa_idx722 = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  store i64 0, ptr %.sroa.8721.0..sroa_idx722, align 8
  %.sroa.9.0..sroa_idx724 = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  store i16 0, ptr %.sroa.9.0..sroa_idx724, align 8
  %.sroa.11.0..sroa_idx726 = getelementptr inbounds nuw i8, ptr %i.kt, i64 34
  store i16 %.fr665, ptr %.sroa.11.0..sroa_idx726, align 2
  %.sroa.13730.0..sroa_idx731 = getelementptr inbounds nuw i8, ptr %i.kt, i64 40
  store i64 0, ptr %.sroa.13730.0..sroa_idx731, align 8
  %.sroa.14.0..sroa_idx733 = getelementptr inbounds nuw i8, ptr %i.kt, i64 48
  store i16 0, ptr %.sroa.14.0..sroa_idx733, align 8
  %.sroa.16.0..sroa_idx735 = getelementptr inbounds nuw i8, ptr %i.kt, i64 50
  store i16 %.fr665, ptr %.sroa.16.0..sroa_idx735, align 2
  %.sroa.18739.0..sroa_idx740 = getelementptr inbounds nuw i8, ptr %i.kt, i64 56
  store i64 0, ptr %.sroa.18739.0..sroa_idx740, align 8
  %.sroa.19.0..sroa_idx742 = getelementptr inbounds nuw i8, ptr %i.kt, i64 64
  store i16 0, ptr %.sroa.19.0..sroa_idx742, align 8
  %.sroa.21.0..sroa_idx744 = getelementptr inbounds nuw i8, ptr %i.kt, i64 66
  store i16 %.fr665, ptr %.sroa.21.0..sroa_idx744, align 2
  %.sroa.23748.0..sroa_idx749 = getelementptr inbounds nuw i8, ptr %i.kt, i64 72
  store i64 0, ptr %.sroa.23748.0..sroa_idx749, align 8
  %.sroa.24.0..sroa_idx751 = getelementptr inbounds nuw i8, ptr %i.kt, i64 80
  store i16 0, ptr %.sroa.24.0..sroa_idx751, align 8
  %.sroa.26.0..sroa_idx753 = getelementptr inbounds nuw i8, ptr %i.kt, i64 82
  store i16 %.fr665, ptr %.sroa.26.0..sroa_idx753, align 2
  br i1 %.not664, label %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc439, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i ], [ %i.ks, %.noexc439 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ku, %.lr.ph.i.i.i.i.i ], [ %i.jp, %.noexc439 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.0911.i.i.i.i.i, i64 88, i1 false), !tbaa.struct !44, !alias.scope !99
  %i.ku = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 88 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ku, %i.jo
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !83

_ZNSt6vectorI20common_ngram_map_keySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc439
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ks, %.noexc439 ], [ %i.kv, %.lr.ph.i.i.i.i.i ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 88
  %.not.i23.i.i = icmp eq ptr %i.jp, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.js) #14
  br label %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI20common_ngram_map_keySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.bg, %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.ks, ptr %i.jm, align 8, !tbaa !31
  store ptr %i.kw, ptr %i.jn, align 8, !tbaa !30
  %i.kx = getelementptr inbounds nuw [88 x i8], ptr %i.ks, i64 %i.kq
  store ptr %i.kx, ptr %i.km, align 8, !tbaa !98
  br label %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE9push_backERKS0_.exit

bb.bh:                                            ; preds = %_ZNKSt6vectorI20common_ngram_map_keySaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.bf
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

_ZNSt6vectorI20common_ngram_map_keySaIS0_EE9push_backERKS0_.exit: ; preds = %bb.bd, %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %.loopexit557
  %.2326843 = phi i64 [ %.2326, %.loopexit557 ], [ %.2326844851855, %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.2326844852, %bb.bd ] ; 7 uses
  %i.kz = phi ptr [ %i.jp, %.loopexit557 ], [ %i.ks, %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.pre758.pre, %bb.bd ]
  %i.la = getelementptr inbounds nuw [88 x i8], ptr %i.kz, i64 %.2326843 ; 22 uses
end_hunk_0
