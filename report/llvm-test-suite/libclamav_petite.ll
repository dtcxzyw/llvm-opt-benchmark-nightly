inline.NumInlined: 26
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@petite_inflate2x_1to9:bb.a
  %i.gb = icmp ult i32 %.val890, 262144           ; 3 uses
  %. = select i1 %i.gb, i32 32383, i32 31999
  %.860 = select i1 %i.gb, i32 1663, i32 1279
  %.861 = select i1 %i.gb, i32 7, i32 8
  %i.gc = select i1 %i.ga, i32 16287, i32 %.
  %i.gd = select i1 %i.ga, i32 927, i32 %.860
  %.0619 = select i1 %i.ga, i32 5, i32 %.861
  %.not806 = icmp ult i32 %.2607.val, %1
  br i1 %.not806, label %.thread1057.sink.split, label %bb.az

bb.az:                                            ; preds = %.loopexit1103
  %.not807 = icmp samesign ugt i64 %invariant.op, %i.fo
  %.not808 = icmp uge i32 %.val889, %1
  %or.cond863.not1356 = select i1 %.not807, i1 %.not808, i1 false
  %.not809.not.not = icmp samesign ugt i64 %invariant.op, %i.fq
  %or.cond1093 = select i1 %or.cond863.not1356, i1 %.not809.not.not, i1 false
  br i1 %or.cond1093, label %bb.ba, label %.thread1057.sink.split

bb.ba:                                            ; preds = %bb.az
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fr, i64 1 ; 2 uses
  %i.gf = add i32 %.val890, -1                    ; 2 uses
  %i.gg = load i8, ptr %i.fp, align 1, !tbaa !22
  store i8 %i.gg, ptr %i.fr, align 1, !tbaa !22
  %.not8111257 = icmp eq i32 %i.gf, 0
  br i1 %.not8111257, label %._crit_edge, label %.lr.ph1263.preheader

.lr.ph1263.preheader:                             ; preds = %bb.ba
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  br label %.lr.ph1263

.lr.ph1263:                                       ; preds = %.lr.ph1263.preheader, %.loopexit1099
  %.06731262 = phi i32 [ %.2675, %.loopexit1099 ], [ 0, %.lr.ph1263.preheader ] ; 2 uses
  %.06881261 = phi i32 [ %.1689, %.loopexit1099 ], [ %i.gf, %.lr.ph1263.preheader ] ; 3 uses
  %.06901260 = phi ptr [ %.2692, %.loopexit1099 ], [ %i.ge, %.lr.ph1263.preheader ] ; 11 uses
  %.09611259 = phi i8 [ %.6965, %.loopexit1099 ], [ 0, %.lr.ph1263.preheader ] ; 3 uses
  %.09701258 = phi ptr [ %.6976, %.loopexit1099 ], [ %i.gh, %.lr.ph1263.preheader ] ; 5 uses
  %i.gi = shl i8 %.09611259, 1
  %i.gj = and i8 %.09611259, 127
  %.not.i = icmp eq i8 %i.gj, 0
  br i1 %.not.i, label %bb.bb, label %doubledl.exit

bb.bb:                                            ; preds = %.lr.ph1263
  %i.gk = icmp uge ptr %.09701258, %0
  %.not20.i = icmp ult ptr %.09701258, %i.s
  %or.cond.i = select i1 %i.gk, i1 %.not20.i, i1 false
  br i1 %or.cond.i, label %bb.bc, label %.thread1057.sink.split

bb.bc:                                            ; preds = %bb.bb
  %i.gl = load i8, ptr %.09701258, align 1, !tbaa !22 ; 2 uses
  %i.gm = shl i8 %i.gl, 1
  %i.gn = or disjoint i8 %i.gm, 1
  %i.go = getelementptr inbounds nuw i8, ptr %.09701258, i64 1
  br label %doubledl.exit

doubledl.exit:                                    ; preds = %.lr.ph1263, %bb.bc
  %.7977 = phi ptr [ %i.go, %bb.bc ], [ %.09701258, %.lr.ph1263 ] ; 4 uses
  %.016.i = phi i8 [ %i.gn, %bb.bc ], [ %i.gi, %.lr.ph1263 ] ; 2 uses
  %.0.i = phi i8 [ %i.gl, %bb.bc ], [ %.09611259, %.lr.ph1263 ]
  %cond = icmp sgt i8 %.0.i, -1
  br i1 %cond, label %bb.bd, label %.preheader1101

bb.bd:                                            ; preds = %doubledl.exit
  %.not824 = icmp ult ptr %.7977, %0
  br i1 %.not824, label %.thread1057.sink.split, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gp = getelementptr inbounds nuw i8, ptr %.7977, i64 1 ; 2 uses
  %.not825 = icmp ugt ptr %i.gp, %i.o
  %.not826 = icmp ult ptr %.06901260, %0
  %or.cond866 = select i1 %.not825, i1 true, i1 %.not826
  br i1 %or.cond866, label %.thread1057.sink.split, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gq = getelementptr inbounds nuw i8, ptr %.06901260, i64 1 ; 2 uses
  %.not827.not = icmp ugt ptr %i.gq, %i.o
  br i1 %.not827.not, label %.thread1057.sink.split, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gr = load i8, ptr %.7977, align 1, !tbaa !22
  %i.gs = trunc i32 %.06881261 to i8
  %i.gt = xor i8 %i.gr, %i.gs
  store i8 %i.gt, ptr %.06901260, align 1, !tbaa !22
  %i.gu = add i32 %.06881261, -1
  br label %.loopexit1099

.preheader1101:                                   ; preds = %doubledl.exit, %doubledl.exit908
  %.1971 = phi ptr [ %.11981, %doubledl.exit908 ], [ %.7977, %doubledl.exit ] ; 5 uses
  %.1 = phi i8 [ %.016.i903, %doubledl.exit908 ], [ %.016.i, %doubledl.exit ] ; 3 uses
  %.1677 = phi i32 [ %i.hf, %doubledl.exit908 ], [ 1, %doubledl.exit ]
  %i.gv = shl i8 %.1, 1
  %i.gw = and i8 %.1, 127
  %.not.i895 = icmp eq i8 %i.gw, 0
  br i1 %.not.i895, label %bb.bh, label %doubledl.exit901

bb.bh:                                            ; preds = %.preheader1101
  %i.gx = icmp uge ptr %.1971, %0
  %.not20.i899 = icmp ult ptr %.1971, %i.s
  %or.cond.i900 = select i1 %i.gx, i1 %.not20.i899, i1 false
  br i1 %or.cond.i900, label %bb.bi, label %.thread1057.sink.split

bb.bi:                                            ; preds = %bb.bh
  %i.gy = load i8, ptr %.1971, align 1, !tbaa !22 ; 2 uses
  %i.gz = shl i8 %i.gy, 1
  %i.ha = or disjoint i8 %i.gz, 1
  %i.hb = getelementptr inbounds nuw i8, ptr %.1971, i64 1
  br label %doubledl.exit901

doubledl.exit901:                                 ; preds = %.preheader1101, %bb.bi
  %.9979 = phi ptr [ %i.hb, %bb.bi ], [ %.1971, %.preheader1101 ] ; 5 uses
  %.016.i896 = phi i8 [ %i.ha, %bb.bi ], [ %i.gv, %.preheader1101 ] ; 3 uses
  %.0.i897 = phi i8 [ %i.gy, %bb.bi ], [ %.1, %.preheader1101 ]
  %i.hc = lshr i8 %.0.i897, 7
  %i.hd = zext nneg i8 %i.hc to i32
  %i.he = shl nsw i32 %.1677, 1
  %i.hf = or disjoint i32 %i.he, %i.hd            ; 4 uses
  %i.hg = shl i8 %.016.i896, 1
  %i.hh = and i8 %.016.i896, 127
  %.not.i902 = icmp eq i8 %i.hh, 0
  br i1 %.not.i902, label %bb.bj, label %doubledl.exit908

bb.bj:                                            ; preds = %doubledl.exit901
  %i.hi = icmp uge ptr %.9979, %0
  %.not20.i906 = icmp ult ptr %.9979, %i.s
  %or.cond.i907 = select i1 %i.hi, i1 %.not20.i906, i1 false
  br i1 %or.cond.i907, label %bb.bk, label %.thread1057.sink.split

bb.bk:                                            ; preds = %bb.bj
  %i.hj = load i8, ptr %.9979, align 1, !tbaa !22 ; 2 uses
  %i.hk = shl i8 %i.hj, 1
  %i.hl = or disjoint i8 %i.hk, 1
  %i.hm = getelementptr inbounds nuw i8, ptr %.9979, i64 1
  br label %doubledl.exit908

doubledl.exit908:                                 ; preds = %doubledl.exit901, %bb.bk
  %.11981 = phi ptr [ %i.hm, %bb.bk ], [ %.9979, %doubledl.exit901 ] ; 3 uses
  %.016.i903 = phi i8 [ %i.hl, %bb.bk ], [ %i.hg, %doubledl.exit901 ] ; 3 uses
  %.0.i904 = phi i8 [ %i.hj, %bb.bk ], [ %.016.i896, %doubledl.exit901 ]
  %cond1083 = icmp sgt i8 %.0.i904, -1
  br i1 %cond1083, label %bb.bl, label %.preheader1101

bb.bl:                                            ; preds = %doubledl.exit908
  %i.hn = icmp sgt i32 %i.hf, 2
  br i1 %i.hn, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %bb.bl
  %i.ho = add nsw i32 %i.hf, -3
  br label %bb.bn

bb.bn:                                            ; preds = %doubledl.exit915, %bb.bm
  %.2972 = phi ptr [ %.11981, %bb.bm ], [ %.13983, %doubledl.exit915 ] ; 5 uses
  %.2962 = phi i8 [ %.016.i903, %bb.bm ], [ %.016.i910, %doubledl.exit915 ] ; 3 uses
  %.2678 = phi i32 [ %i.ho, %bb.bm ], [ %i.hz, %doubledl.exit915 ]
  %.0668 = phi i32 [ %.0619, %bb.bm ], [ %i.ia, %doubledl.exit915 ]
  %i.hp = shl i8 %.2962, 1
  %i.hq = and i8 %.2962, 127
  %.not.i909 = icmp eq i8 %i.hq, 0
  br i1 %.not.i909, label %bb.bo, label %doubledl.exit915

bb.bo:                                            ; preds = %bb.bn
  %i.hr = icmp uge ptr %.2972, %0
  %.not20.i913 = icmp ult ptr %.2972, %i.s
  %or.cond.i914 = select i1 %i.hr, i1 %.not20.i913, i1 false
  br i1 %or.cond.i914, label %bb.bp, label %.thread1057.sink.split

bb.bp:                                            ; preds = %bb.bo
  %i.hs = load i8, ptr %.2972, align 1, !tbaa !22 ; 2 uses
  %i.ht = shl i8 %i.hs, 1
  %i.hu = or disjoint i8 %i.ht, 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.2972, i64 1
  br label %doubledl.exit915

doubledl.exit915:                                 ; preds = %bb.bn, %bb.bp
  %.13983 = phi ptr [ %i.hv, %bb.bp ], [ %.2972, %bb.bn ] ; 2 uses
  %.016.i910 = phi i8 [ %i.hu, %bb.bp ], [ %i.hp, %bb.bn ] ; 2 uses
  %.0.i911 = phi i8 [ %i.hs, %bb.bp ], [ %.2962, %bb.bn ]
  %i.hw = lshr i8 %.0.i911, 7
  %i.hx = zext nneg i8 %i.hw to i32
  %i.hy = shl nsw i32 %.2678, 1
  %i.hz = or disjoint i32 %i.hy, %i.hx            ; 4 uses
  %i.ia = add nsw i32 %.0668, -1                  ; 2 uses
  %.not829 = icmp eq i32 %i.ia, 0
  br i1 %.not829, label %bb.bq, label %bb.bn, !llvm.loop !23

bb.bq:                                            ; preds = %doubledl.exit915
  %i.ib = xor i32 %i.hz, -1
  %i.ic = icmp slt i32 %i.gd, %i.hz
  %i.id = select i1 %i.ic, i32 2, i32 1
  %i.ie = icmp slt i32 %i.gc, %i.hz
  %i.if = zext i1 %i.ie to i32
  %i.ig = add nuw nsw i32 %i.id, %i.if
  br label %bb.bs

bb.br:                                            ; preds = %bb.bl
  %i.ih = shl i32 %i.hf, 1
  %i.ii = add i32 %i.ih, -4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.3973 = phi ptr [ %.13983, %bb.bq ], [ %.11981, %bb.br ] ; 5 uses
  %.3 = phi i8 [ %.016.i910, %bb.bq ], [ %.016.i903, %bb.br ] ; 3 uses
  %.1674 = phi i32 [ %i.ib, %bb.bq ], [ %.06731262, %bb.br ] ; 6 uses
  %.1669 = phi i32 [ 0, %bb.bq ], [ %i.ii, %bb.br ]
  %.0667 = phi i32 [ %i.ig, %bb.bq ], [ 0, %bb.br ]
  %i.ij = shl i8 %.3, 1
  %i.ik = and i8 %.3, 127
  %.not.i916 = icmp eq i8 %i.ik, 0
  br i1 %.not.i916, label %bb.bt, label %doubledl.exit922

bb.bt:                                            ; preds = %bb.bs
  %i.il = icmp uge ptr %.3973, %0
  %.not20.i920 = icmp ult ptr %.3973, %i.s
  %or.cond.i921 = select i1 %i.il, i1 %.not20.i920, i1 false
  br i1 %or.cond.i921, label %bb.bu, label %.thread1057.sink.split

bb.bu:                                            ; preds = %bb.bt
  %i.im = load i8, ptr %.3973, align 1, !tbaa !22 ; 2 uses
  %i.in = shl i8 %i.im, 1
  %i.io = or disjoint i8 %i.in, 1
  %i.ip = getelementptr inbounds nuw i8, ptr %.3973, i64 1
  br label %doubledl.exit922

doubledl.exit922:                                 ; preds = %bb.bs, %bb.bu
  %.15985 = phi ptr [ %i.ip, %bb.bu ], [ %.3973, %bb.bs ] ; 5 uses
  %.016.i917 = phi i8 [ %i.io, %bb.bu ], [ %i.ij, %bb.bs ] ; 3 uses
  %.0.i918 = phi i8 [ %i.im, %bb.bu ], [ %.3, %bb.bs ]
  %i.iq = lshr i8 %.0.i918, 7
  %i.ir = zext nneg i8 %i.iq to i32
  %i.is = shl i8 %.016.i917, 1
  %i.it = and i8 %.016.i917, 127
  %.not.i923 = icmp eq i8 %i.it, 0
  br i1 %.not.i923, label %bb.bv, label %doubledl.exit929

bb.bv:                                            ; preds = %doubledl.exit922
  %i.iu = icmp uge ptr %.15985, %0
  %.not20.i927 = icmp ult ptr %.15985, %i.s
  %or.cond.i928 = select i1 %i.iu, i1 %.not20.i927, i1 false
  br i1 %or.cond.i928, label %bb.bw, label %.thread1057.sink.split

bb.bw:                                            ; preds = %bb.bv
  %i.iv = load i8, ptr %.15985, align 1, !tbaa !22 ; 2 uses
  %i.iw = shl i8 %i.iv, 1
  %i.ix = or disjoint i8 %i.iw, 1
  %i.iy = getelementptr inbounds nuw i8, ptr %.15985, i64 1
  br label %doubledl.exit929

doubledl.exit929:                                 ; preds = %doubledl.exit922, %bb.bw
  %.17 = phi ptr [ %i.iy, %bb.bw ], [ %.15985, %doubledl.exit922 ] ; 2 uses
  %.016.i924 = phi i8 [ %i.ix, %bb.bw ], [ %i.is, %doubledl.exit922 ] ; 2 uses
  %.0.i925 = phi i8 [ %i.iv, %bb.bw ], [ %.016.i917, %doubledl.exit922 ]
  %i.iz = lshr i8 %.0.i925, 7
  %i.ja = zext nneg i8 %i.iz to i32
  %i.jb = add nsw i32 %.1669, %i.ir
  %i.jc = shl nsw i32 %i.jb, 1
  %i.jd = or disjoint i32 %i.jc, %i.ja            ; 2 uses
  %.not830 = icmp eq i32 %i.jd, 0
  br i1 %.not830, label %.preheader1100, label %bb.cc

.preheader1100:                                   ; preds = %doubledl.exit929, %doubledl.exit943
  %.4974 = phi ptr [ %.21, %doubledl.exit943 ], [ %.17, %doubledl.exit929 ] ; 5 uses
  %.4963 = phi i8 [ %.016.i938, %doubledl.exit943 ], [ %.016.i924, %doubledl.exit929 ] ; 3 uses
  %.2670 = phi i32 [ %i.jo, %doubledl.exit943 ], [ 1, %doubledl.exit929 ]
  %i.je = shl i8 %.4963, 1
  %i.jf = and i8 %.4963, 127
  %.not.i930 = icmp eq i8 %i.jf, 0
  br i1 %.not.i930, label %bb.bx, label %doubledl.exit936

bb.bx:                                            ; preds = %.preheader1100
  %i.jg = icmp uge ptr %.4974, %0
  %.not20.i934 = icmp ult ptr %.4974, %i.s
  %or.cond.i935 = select i1 %i.jg, i1 %.not20.i934, i1 false
  br i1 %or.cond.i935, label %bb.by, label %.thread1057.sink.split

bb.by:                                            ; preds = %bb.bx
  %i.jh = load i8, ptr %.4974, align 1, !tbaa !22 ; 2 uses
  %i.ji = shl i8 %i.jh, 1
  %i.jj = or disjoint i8 %i.ji, 1
  %i.jk = getelementptr inbounds nuw i8, ptr %.4974, i64 1
  br label %doubledl.exit936

doubledl.exit936:                                 ; preds = %.preheader1100, %bb.by
  %.19 = phi ptr [ %i.jk, %bb.by ], [ %.4974, %.preheader1100 ] ; 5 uses
  %.016.i931 = phi i8 [ %i.jj, %bb.by ], [ %i.je, %.preheader1100 ] ; 3 uses
  %.0.i932 = phi i8 [ %i.jh, %bb.by ], [ %.4963, %.preheader1100 ]
  %i.jl = lshr i8 %.0.i932, 7
  %i.jm = zext nneg i8 %i.jl to i32
  %i.jn = shl nsw i32 %.2670, 1
  %i.jo = or disjoint i32 %i.jn, %i.jm            ; 2 uses
  %i.jp = shl i8 %.016.i931, 1
  %i.jq = and i8 %.016.i931, 127
  %.not.i937 = icmp eq i8 %i.jq, 0
  br i1 %.not.i937, label %bb.bz, label %doubledl.exit943

bb.bz:                                            ; preds = %doubledl.exit936
  %i.jr = icmp uge ptr %.19, %0
  %.not20.i941 = icmp ult ptr %.19, %i.s
  %or.cond.i942 = select i1 %i.jr, i1 %.not20.i941, i1 false
  br i1 %or.cond.i942, label %bb.ca, label %.thread1057.sink.split

bb.ca:                                            ; preds = %bb.bz
  %i.js = load i8, ptr %.19, align 1, !tbaa !22   ; 2 uses
  %i.jt = shl i8 %i.js, 1
  %i.ju = or disjoint i8 %i.jt, 1
  %i.jv = getelementptr inbounds nuw i8, ptr %.19, i64 1
  br label %doubledl.exit943

doubledl.exit943:                                 ; preds = %doubledl.exit936, %bb.ca
  %.21 = phi ptr [ %i.jv, %bb.ca ], [ %.19, %doubledl.exit936 ] ; 2 uses
  %.016.i938 = phi i8 [ %i.ju, %bb.ca ], [ %i.jp, %doubledl.exit936 ] ; 2 uses
  %.0.i939 = phi i8 [ %i.js, %bb.ca ], [ %.016.i931, %doubledl.exit936 ]
  %cond1084 = icmp sgt i8 %.0.i939, -1
  br i1 %cond1084, label %bb.cb, label %.preheader1100

bb.cb:                                            ; preds = %doubledl.exit943
  %i.jw = add nsw i32 %i.jo, 2
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %doubledl.exit929
  %.5975 = phi ptr [ %.21, %bb.cb ], [ %.17, %doubledl.exit929 ] ; 4 uses
  %.5964 = phi i8 [ %.016.i938, %bb.cb ], [ %.016.i924, %doubledl.exit929 ] ; 4 uses
  %.3671 = phi i32 [ %i.jw, %bb.cb ], [ %i.jd, %doubledl.exit929 ]
  %i.jx = add nsw i32 %.3671, %.0667              ; 9 uses
  %i.jy = sub i32 %.06881261, %i.jx               ; 4 uses
  %i.jz = icmp slt i32 %i.jx, 1
  %.not832 = icmp ugt i32 %i.jx, %2
  %or.cond868 = or i1 %i.jz, %.not832
  %.not833 = icmp ult ptr %.06901260, %0
  %or.cond869 = select i1 %or.cond868, i1 true, i1 %.not833
  br i1 %or.cond869, label %.thread1057.sink.split, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ka = zext nneg i32 %i.jx to i64              ; 7 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.06901260, i64 %i.ka ; 2 uses
  %.not834 = icmp ule ptr %i.kb, %i.o
  %i.kc = icmp ugt ptr %i.kb, %0
  %or.cond870 = and i1 %.not834, %i.kc
  br i1 %or.cond870, label %bb.ce, label %.thread1057.sink.split

bb.ce:                                            ; preds = %bb.cd
  %i.kd = sext i32 %.1674 to i64                  ; 12 uses
  %i.ke = getelementptr inbounds i8, ptr %.06901260, i64 %i.kd ; 2 uses
  %.not835 = icmp ult ptr %i.ke, %0
  br i1 %.not835, label %.thread1057.sink.split, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.ka ; 2 uses
  %.not836 = icmp ule ptr %i.kf, %i.o
  %i.kg = icmp ugt ptr %i.kf, %0
  %or.cond871 = and i1 %.not836, %i.kg
  br i1 %or.cond871, label %iter.check, label %.thread1057.sink.split

iter.check:                                       ; preds = %bb.cf
  %min.iters.check = icmp ult i32 %i.jx, 4
  %diff.check = icmp ugt i32 %.1674, -32
  %or.cond1803 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1803, label %.lr.ph1256.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1791 = icmp ult i32 %i.jx, 32
  br i1 %min.iters.check1791, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ka, 28
  %n.vec = and i64 %i.ka, 2147483616              ; 5 uses
  %i.kh = trunc nuw nsw i64 %n.vec to i32
  %i.ki = sub nsw i32 %i.jx, %i.kh
  %i.kj = getelementptr i8, ptr %.06901260, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.06901260, i64 %index ; 3 uses
  %i.kk = getelementptr inbounds i8, ptr %next.gep, i64 %i.kd ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %wide.load = load <16 x i8>, ptr %i.kk, align 1, !tbaa !22
  %wide.load1792 = load <16 x i8>, ptr %i.kl, align 1, !tbaa !22
  %i.km = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !22
  store <16 x i8> %wide.load1792, ptr %i.km, align 1, !tbaa !22
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kn = icmp eq i64 %index.next, %n.vec
  br i1 %i.kn, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ka
  br i1 %cmp.n, label %.loopexit1099, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1256.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1795 = and i64 %i.ka, 2147483644          ; 4 uses
  %i.ko = trunc nuw nsw i64 %n.vec1795 to i32
  %i.kp = sub nsw i32 %i.jx, %i.ko
  %i.kq = getelementptr i8, ptr %.06901260, i64 %n.vec1795 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1796 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1799, %vec.epilog.vector.body ] ; 2 uses
  %next.gep1797 = getelementptr i8, ptr %.06901260, i64 %index1796 ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %next.gep1797, i64 %i.kd
  %wide.load1798 = load <4 x i8>, ptr %i.kr, align 1, !tbaa !22
  store <4 x i8> %wide.load1798, ptr %next.gep1797, align 1, !tbaa !22
  %index.next1799 = add nuw i64 %index1796, 4     ; 2 uses
  %i.ks = icmp eq i64 %index.next1799, %n.vec1795
  br i1 %i.ks, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1800 = icmp eq i64 %n.vec1795, %i.ka
  br i1 %cmp.n1800, label %.loopexit1099, label %.lr.ph1256.preheader

.lr.ph1256.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.46721255.ph = phi i32 [ %i.jx, %iter.check ], [ %i.ki, %vec.epilog.iter.check ], [ %i.kp, %vec.epilog.middle.block ] ; 4 uses
  %.16911254.ph = phi ptr [ %.06901260, %iter.check ], [ %i.kj, %vec.epilog.iter.check ], [ %i.kq, %vec.epilog.middle.block ] ; 2 uses
  %i.kt = add nsw i32 %.46721255.ph, -1
  %xtraiter = and i32 %.46721255.ph, 7            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1256.prol.loopexit, label %.lr.ph1256.prol

.lr.ph1256.prol:                                  ; preds = %.lr.ph1256.preheader, %.lr.ph1256.prol
  %.46721255.prol = phi i32 [ %i.ku, %.lr.ph1256.prol ], [ %.46721255.ph, %.lr.ph1256.preheader ]
  %.16911254.prol = phi ptr [ %i.kx, %.lr.ph1256.prol ], [ %.16911254.ph, %.lr.ph1256.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph1256.prol ], [ 0, %.lr.ph1256.preheader ]
  %i.ku = add nsw i32 %.46721255.prol, -1         ; 2 uses
  %i.kv = getelementptr inbounds i8, ptr %.16911254.prol, i64 %i.kd
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !22
  store i8 %i.kw, ptr %.16911254.prol, align 1, !tbaa !22
  %i.kx = getelementptr inbounds nuw i8, ptr %.16911254.prol, i64 1 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1256.prol.loopexit, label %.lr.ph1256.prol, !llvm.loop !29

.lr.ph1256.prol.loopexit:                         ; preds = %.lr.ph1256.prol, %.lr.ph1256.preheader
  %.lcssa1826.unr = phi ptr [ poison, %.lr.ph1256.preheader ], [ %i.kx, %.lr.ph1256.prol ]
  %.46721255.unr = phi i32 [ %.46721255.ph, %.lr.ph1256.preheader ], [ %i.ku, %.lr.ph1256.prol ]
  %.16911254.unr = phi ptr [ %.16911254.ph, %.lr.ph1256.preheader ], [ %i.kx, %.lr.ph1256.prol ]
  %i.ky = icmp ult i32 %i.kt, 7
  br i1 %i.ky, label %.loopexit1099, label %.lr.ph1256

.lr.ph1256:                                       ; preds = %.lr.ph1256.prol.loopexit, %.lr.ph1256
  %.46721255 = phi i32 [ %i.lu, %.lr.ph1256 ], [ %.46721255.unr, %.lr.ph1256.prol.loopexit ]
  %.16911254 = phi ptr [ %i.lx, %.lr.ph1256 ], [ %.16911254.unr, %.lr.ph1256.prol.loopexit ] ; 10 uses
  %i.kz = getelementptr inbounds i8, ptr %.16911254, i64 %i.kd
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !22
  store i8 %i.la, ptr %.16911254, align 1, !tbaa !22
  %i.lb = getelementptr inbounds nuw i8, ptr %.16911254, i64 1 ; 2 uses
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 %i.kd
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !22
  store i8 %i.ld, ptr %i.lb, align 1, !tbaa !22
  %i.le = getelementptr inbounds nuw i8, ptr %.16911254, i64 2 ; 2 uses
  %i.lf = getelementptr inbounds i8, ptr %i.le, i64 %i.kd
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !22
  store i8 %i.lg, ptr %i.le, align 1, !tbaa !22
  %i.lh = getelementptr inbounds nuw i8, ptr %.16911254, i64 3 ; 2 uses
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 %i.kd
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !22
  store i8 %i.lj, ptr %i.lh, align 1, !tbaa !22
  %i.lk = getelementptr inbounds nuw i8, ptr %.16911254, i64 4 ; 2 uses
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 %i.kd
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !22
  store i8 %i.lm, ptr %i.lk, align 1, !tbaa !22
  %i.ln = getelementptr inbounds nuw i8, ptr %.16911254, i64 5 ; 2 uses
  %i.lo = getelementptr inbounds i8, ptr %i.ln, i64 %i.kd
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !22
  store i8 %i.lp, ptr %i.ln, align 1, !tbaa !22
  %i.lq = getelementptr inbounds nuw i8, ptr %.16911254, i64 6 ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 %i.kd
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !22
  store i8 %i.ls, ptr %i.lq, align 1, !tbaa !22
  %i.lt = getelementptr inbounds nuw i8, ptr %.16911254, i64 7 ; 2 uses
  %i.lu = add nsw i32 %.46721255, -8              ; 2 uses
  %i.lv = getelementptr inbounds i8, ptr %i.lt, i64 %i.kd
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !22
  store i8 %i.lw, ptr %i.lt, align 1, !tbaa !22
  %i.lx = getelementptr inbounds nuw i8, ptr %.16911254, i64 8 ; 2 uses
  %.not837.7 = icmp eq i32 %i.lu, 0
  br i1 %.not837.7, label %.loopexit1099, label %.lr.ph1256, !llvm.loop !31

.loopexit1099:                                    ; preds = %.lr.ph1256.prol.loopexit, %.lr.ph1256, %middle.block, %vec.epilog.middle.block, %bb.bg
  %.6976 = phi ptr [ %i.gp, %bb.bg ], [ %.5975, %middle.block ], [ %.5975, %vec.epilog.middle.block ], [ %.5975, %.lr.ph1256 ], [ %.5975, %.lr.ph1256.prol.loopexit ]
  %.6965 = phi i8 [ %.016.i, %bb.bg ], [ %.5964, %middle.block ], [ %.5964, %vec.epilog.middle.block ], [ %.5964, %.lr.ph1256 ], [ %.5964, %.lr.ph1256.prol.loopexit ]
  %.2692 = phi ptr [ %i.gq, %bb.bg ], [ %i.kj, %middle.block ], [ %i.kq, %vec.epilog.middle.block ], [ %.lcssa1826.unr, %.lr.ph1256.prol.loopexit ], [ %i.lx, %.lr.ph1256 ] ; 2 uses
  %.1689 = phi i32 [ %i.gu, %bb.bg ], [ %i.jy, %middle.block ], [ %i.jy, %vec.epilog.middle.block ], [ %i.jy, %.lr.ph1256 ], [ %i.jy, %.lr.ph1256.prol.loopexit ] ; 2 uses
  %.2675 = phi i32 [ %.06731262, %bb.bg ], [ %.1674, %middle.block ], [ %.1674, %vec.epilog.middle.block ], [ %.1674, %.lr.ph1256 ], [ %.1674, %.lr.ph1256.prol.loopexit ]
  %.not811 = icmp eq i32 %.1689, 0
  br i1 %.not811, label %._crit_edge, label %.lr.ph1263, !llvm.loop !32

._crit_edge:                                      ; preds = %.loopexit1099, %bb.ba
  %.0690.lcssa = phi ptr [ %i.ge, %bb.ba ], [ %.2692, %.loopexit1099 ] ; 3 uses
  %.not812 = icmp eq i32 %i.fd, 0
  br i1 %.not812, label %.thread1027, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge
  %i.ly = load i32, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.lz = icmp ugt i32 %i.ly, %.0713
  br i1 %i.lz, label %bb.ch, label %.thread1022

bb.ch:                                            ; preds = %bb.cg
  %i.ma = getelementptr inbounds i8, ptr %.0690.lcssa, i64 %i.u ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 84 ; 2 uses
  %.not813 = icmp ult ptr %i.mb, %0
  br i1 %.not813, label %.thread1022, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 92 ; 2 uses
  %.not814 = icmp ule ptr %i.mc, %i.o
  %i.md = icmp ugt ptr %i.mc, %0
  %or.cond872 = and i1 %.not814, %i.md
  br i1 %or.cond872, label %bb.cj, label %.thread1022

bb.cj:                                            ; preds = %bb.ci
  %.val888 = load i32, ptr %i.mb, align 1
  %i.me = icmp eq i32 %.val888, 1683931187
  br i1 %i.me, label %bb.ck, label %.thread1022

bb.ck:                                            ; preds = %bb.cj
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 88
  %.val887 = load i32, ptr %i.mf, align 1
  %.not1091 = icmp eq i32 %.val887, 462100619
  br i1 %.not1091, label %.thread1030, label %.thread1022

.thread1022:                                      ; preds = %bb.ci, %bb.cg, %bb.cj, %bb.ch, %bb.ck
  %i.mg = icmp ugt i32 %i.ly, %i.v
  br i1 %i.mg, label %bb.cl, label %.thread1027

bb.cl:                                            ; preds = %.thread1022
  %i.mh = getelementptr inbounds i8, ptr %.0690.lcssa, i64 %i.u ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 84
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 %i.x ; 3 uses
  %.not816 = icmp ult ptr %i.mj, %0
  br i1 %.not816, label %.thread1027, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8 ; 2 uses
  %.not817 = icmp ule ptr %i.mk, %i.o
  %i.ml = icmp ugt ptr %i.mk, %0
  %or.cond875 = and i1 %.not817, %i.ml
  br i1 %or.cond875, label %bb.cn, label %.thread1027

bb.cn:                                            ; preds = %bb.cm
  %.val886 = load i32, ptr %i.mj, align 1
  %i.mm = icmp eq i32 %.val886, 1683931187
  br i1 %i.mm, label %bb.co, label %.thread1027

bb.co:                                            ; preds = %bb.cn
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mh, i64 88
  %i.mo = getelementptr inbounds i8, ptr %i.mn, i64 %i.x
  %.val885 = load i32, ptr %i.mo, align 1
  %.not1092 = icmp eq i32 %.val885, 462100619
  br i1 %.not1092, label %.thread1030, label %.thread1027

.thread1030:                                      ; preds = %bb.ck, %bb.co
end_hunk_0
