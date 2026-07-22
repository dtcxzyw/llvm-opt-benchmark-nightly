inline.NumInlined: 129
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 22
begin_hunk_0_@umutablecptrie_buildImmutable_78:bb.a
  store i32 %i.wp, ptr %i.wq, align 4
  %prol.iter374.next = add i64 %prol.iter374, 1   ; 2 uses
  %prol.iter374.cmp.not = icmp eq i64 %prol.iter374.next, %xtraiter372
  br i1 %prol.iter374.cmp.not, label %.lr.ph.i71.i.i.prol.loopexit, label %.lr.ph.i71.i.i.prol, !llvm.loop !52

.lr.ph.i71.i.i.prol.loopexit:                     ; preds = %.lr.ph.i71.i.i.prol, %.lr.ph.i71.i.i.preheader
  %indvars.iv.next.i73.i.i.lcssa310.unr = phi i64 [ poison, %.lr.ph.i71.i.i.preheader ], [ %indvars.iv.next.i73.i.i.prol, %.lr.ph.i71.i.i.prol ]
  %indvars.iv250.i.i.i.unr = phi i64 [ %indvars.iv250.i.i.i.ph, %.lr.ph.i71.i.i.preheader ], [ %indvars.iv.next251.i.i.i.prol, %.lr.ph.i71.i.i.prol ]
  %indvars.iv.i72.i.i.unr = phi i64 [ %indvars.iv.i72.i.i.ph, %.lr.ph.i71.i.i.preheader ], [ %indvars.iv.next.i73.i.i.prol, %.lr.ph.i71.i.i.prol ]
  %i.wr = sub nsw i64 %indvars.iv250.i.i.i.ph, %i.vl
  %i.ws = icmp ugt i64 %i.wr, -4
  br i1 %i.ws, label %._crit_edge.loopexit.i75.i.i, label %.lr.ph.i71.i.i

.lr.ph.i71.i.i:                                   ; preds = %.lr.ph.i71.i.i.prol.loopexit, %.lr.ph.i71.i.i
  %indvars.iv250.i.i.i = phi i64 [ %indvars.iv.next251.i.i.i.3, %.lr.ph.i71.i.i ], [ %indvars.iv250.i.i.i.unr, %.lr.ph.i71.i.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i72.i.i = phi i64 [ %indvars.iv.next.i73.i.i.3, %.lr.ph.i71.i.i ], [ %indvars.iv.i72.i.i.unr, %.lr.ph.i71.i.i.prol.loopexit ] ; 5 uses
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %indvars.iv250.i.i.i
  %i.wu = load i32, ptr %i.wt, align 4
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv.i72.i.i
  store i32 %i.wu, ptr %i.wv, align 4
  %i.ww = getelementptr [4 x i8], ptr %i.sy, i64 %indvars.iv250.i.i.i
  %i.wx = getelementptr i8, ptr %i.ww, i64 4
  %i.wy = load i32, ptr %i.wx, align 4
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv.i72.i.i
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 4
  store i32 %i.wy, ptr %i.xa, align 4
  %i.xb = getelementptr [4 x i8], ptr %i.sy, i64 %indvars.iv250.i.i.i
  %i.xc = getelementptr i8, ptr %i.xb, i64 8
  %i.xd = load i32, ptr %i.xc, align 4
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv.i72.i.i
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store i32 %i.xd, ptr %i.xf, align 4
  %indvars.iv.next251.i.i.i.3 = add nsw i64 %indvars.iv250.i.i.i, 4 ; 2 uses
  %i.xg = getelementptr [4 x i8], ptr %i.sy, i64 %indvars.iv250.i.i.i
  %i.xh = getelementptr i8, ptr %i.xg, i64 12
  %i.xi = load i32, ptr %i.xh, align 4
  %indvars.iv.next.i73.i.i.3 = add nuw nsw i64 %indvars.iv.i72.i.i, 4 ; 2 uses
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv.i72.i.i
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 12
  store i32 %i.xi, ptr %i.xk, align 4
  %exitcond.not.i74.i.i.3 = icmp eq i64 %indvars.iv.next251.i.i.i.3, %i.vl
  br i1 %exitcond.not.i74.i.i.3, label %._crit_edge.loopexit.i75.i.i, label %.lr.ph.i71.i.i, !llvm.loop !53

._crit_edge.loopexit.i75.i.i:                     ; preds = %.lr.ph.i71.i.i.prol.loopexit, %.lr.ph.i71.i.i, %middle.block243
  %indvars.iv.next.i73.i.i.lcssa = phi i64 [ %i.wj, %middle.block243 ], [ %indvars.iv.next.i73.i.i.lcssa310.unr, %.lr.ph.i71.i.i.prol.loopexit ], [ %indvars.iv.next.i73.i.i.3, %.lr.ph.i71.i.i ]
  %i.xl = trunc nuw i64 %indvars.iv.next.i73.i.i.lcssa to i32
  br label %._crit_edge.i68.i.i

._crit_edge.i68.i.i:                              ; preds = %._crit_edge.loopexit.i75.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i
  %.4.lcssa.i.i.i = phi i32 [ %.199206.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.xl, %._crit_edge.loopexit.i75.i.i ] ; 2 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mg, i32 noundef %.199206.i.i.i, i32 noundef %.4.lcssa.i.i.i)
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cd
  %i.xm = load ptr, ptr %0, align 8               ; 2 uses
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %i.op ; 2 uses
  %i.xo = load i32, ptr %i.xn, align 4
  %i.xp = zext i32 %i.xo to i64
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %i.xp
  %i.xr = load i32, ptr %i.xq, align 4
  store i32 %i.xr, ptr %i.xn, align 4
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %._crit_edge.i68.i.i, %bb.cp, %._crit_edge199.i.i.i, %.critedge.thread.i.i.i
  %.6.i.i.i = phi i32 [ %.199206.i.i.i, %bb.cs ], [ %.2100.lcssa.i.i.i, %._crit_edge199.i.i.i ], [ %.199206.i.i.i, %.critedge.thread.i.i.i ], [ %.199206.i.i.i, %bb.cp ], [ %.4.lcssa.i.i.i, %._crit_edge.i68.i.i ] ; 2 uses
  %i.xs = add i32 %.1112.i.i.i, %.0108204.i.i.i   ; 2 uses
  %.not.i69.i.i = icmp slt i32 %i.xs, %i.oa
  br i1 %.not.i69.i.i, label %bb.bz, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i, !llvm.loop !54

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i: ; preds = %bb.cb, %bb.bx
  store i32 7, ptr %3, align 4
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i: ; preds = %bb.ct, %bb.by
  %.promoted164.i.i5 = phi i32 [ %.promoted164.i.i, %bb.by ], [ %.0.i118.i160.i.i, %bb.ct ]
  %.pre.i.i84.ph.i.i = phi ptr [ %i.nv, %bb.by ], [ %i.oo, %bb.ct ] ; 7 uses
  %.2.i66.ph.i.i = phi i32 [ 128, %bb.by ], [ %.6.i.i.i, %bb.ct ] ; 2 uses
  %.pr.i.i = load i32, ptr %3, align 4
  %i.xt = icmp slt i32 %.pr.i.i, 1
  br i1 %i.xt, label %bb.cu, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i

bb.cu:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i
  %i.xu = load ptr, ptr %i.gh, align 8
  tail call void @uprv_free_78(ptr noundef %i.xu) #10
  store ptr %i.mg, ptr %i.gh, align 8
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.583136.i.i.i, ptr %i.xv, align 8
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.2.i66.ph.i.i, ptr %i.xw, align 4
  %i.xx = icmp samesign ugt i32 %.2.i66.ph.i.i, 262159
  br i1 %i.xx, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store i32 8, ptr %3, align 4
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i

bb.cw:                                            ; preds = %bb.cu
  %i.xy = icmp sgt i32 %.011.i.i.i, -1
  br i1 %i.xy, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.xz = load ptr, ptr %0, align 8
  %i.ya = zext nneg i32 %.011.i.i.i to i64
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %i.ya
  %i.yc = load i32, ptr %i.yb, align 4            ; 2 uses
  %i.yd = sext i32 %i.yc to i64
  %i.ye = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.yd
  %i.yf = load i32, ptr %i.ye, align 4
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.yf, ptr %i.yg, align 8
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sink.i.i = phi i32 [ %i.yc, %bb.cx ], [ 1048575, %bb.cw ]
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i32 %.sink.i.i, ptr %i.yh, align 8
  %i.yi = lshr exact i32 %i.cr, 6                 ; 5 uses
  %i.yj = load i32, ptr %i.ct, align 8
  %i.yk = ashr i32 %i.yj, 6
  %.not.i80.i.i = icmp sgt i32 %i.yk, %i.yi
  br i1 %.not.i80.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 32767, ptr %i.yl, align 4
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i

bb.da:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.yn = add nsw i32 %i.cs, -4
  %i.yo = lshr exact i32 %i.yn, 2
  %i.yp = add nuw nsw i32 %i.yo, 1
  %wide.trip.count.i81.i.i = zext nneg i32 %i.yp to i64
  br label %bb.db

bb.db:                                            ; preds = %bb.df, %bb.da
  %indvars.iv417.i.i.i = phi i64 [ 0, %bb.da ], [ %indvars.iv.next418.i.i.i, %bb.df ] ; 3 uses
  %indvars.iv.i82.i.i = phi i64 [ 0, %bb.da ], [ %indvars.iv.next416.i.i.i, %bb.df ] ; 4 uses
  %.0237363.i.i.i = phi i32 [ -1, %bb.da ], [ %.1238.i.i.i, %bb.df ] ; 5 uses
  %indvars421.i.i.i = trunc i64 %indvars.iv417.i.i.i to i32 ; 2 uses
  %i.yq = load ptr, ptr %0, align 8
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %indvars.iv.i82.i.i ; 2 uses
  %i.ys = load i32, ptr %i.yr, align 4            ; 5 uses
  %i.yt = trunc i32 %i.ys to i16
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv417.i.i.i
  store i16 %i.yt, ptr %i.yu, align 2
  %i.yv = load i32, ptr %i.yh, align 8
  %i.yw = icmp eq i32 %i.ys, %i.yv
  br i1 %i.yw, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.yx = icmp slt i32 %.0237363.i.i.i, 0
  br i1 %i.yx, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yy = load i32, ptr %i.ym, align 4
  %i.yz = icmp slt i32 %i.yy, 0
  %i.za = sub nsw i32 %indvars421.i.i.i, %.0237363.i.i.i
  %i.zb = icmp eq i32 %i.za, 31
  %or.cond293.i.i.i = select i1 %i.yz, i1 %i.zb, i1 false
  br i1 %or.cond293.i.i.i, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 %.0237363.i.i.i, ptr %i.ym, align 4
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db
  %.1238.i.i.i = phi i32 [ %.0237363.i.i.i, %bb.dd ], [ %.0237363.i.i.i, %bb.de ], [ %indvars421.i.i.i, %bb.dc ], [ -1, %bb.db ]
  %i.zc = add i32 %i.ys, 16
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  store i32 %i.zc, ptr %i.zd, align 4
  %i.ze = add i32 %i.ys, 32
  %i.zf = load ptr, ptr %0, align 8
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %indvars.iv.i82.i.i
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  store i32 %i.ze, ptr %i.zh, align 4
  %i.zi = add i32 %i.ys, 48
  %i.zj = load ptr, ptr %0, align 8
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv.i82.i.i
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 12
  store i32 %i.zi, ptr %i.zl, align 4
  %indvars.iv.next416.i.i.i = add nuw nsw i64 %indvars.iv.i82.i.i, 4
  %indvars.iv.next418.i.i.i = add nuw nsw i64 %indvars.iv417.i.i.i, 1 ; 2 uses
  %exitcond.not.i83.i.i = icmp eq i64 %indvars.iv.next418.i.i.i, %wide.trip.count.i81.i.i
  br i1 %exitcond.not.i83.i.i, label %._crit_edge.i.i85.i.i, label %bb.db, !llvm.loop !55

._crit_edge.i.i85.i.i:                            ; preds = %bb.df
  %i.zm = getelementptr inbounds nuw i8, ptr %6, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24028) %.pre.i.i84.ph.i.i, i8 0, i64 24028, i1 false)
  store <4 x i32> <i32 6007, i32 12, i32 4095, i32 32>, ptr %i.nx, align 4
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0, i32 noundef %i.yi)
  %i.zn = and i32 %i.cs, 4096                     ; 4 uses
  %i.zo = load i32, ptr %i.ct, align 8
  %i.zp = ashr i32 %i.zo, 4                       ; 4 uses
  %i.zq = icmp slt i32 %i.zn, %i.zp               ; 2 uses
  br i1 %i.zq, label %.preheader351.lr.ph.i.i.i, label %._crit_edge.i86.i.i

.preheader351.lr.ph.i.i.i:                        ; preds = %._crit_edge.i.i85.i.i
  %i.zr = load i32, ptr %i.ym, align 4
  %i.zs = zext nneg i32 %i.zn to i64
  %sext.i.i = zext nneg i32 %i.zp to i64
  br label %.preheader351.i.i.i

.preheader351.i.i.i:                              ; preds = %bb.dn, %.preheader351.lr.ph.i.i.i
  %indvars.iv428.i.i.i = phi i64 [ %i.zs, %.preheader351.lr.ph.i.i.i ], [ %7, %bb.dn ] ; 6 uses
  %.2239367.i.i.i = phi i32 [ %i.zr, %.preheader351.lr.ph.i.i.i ], [ %.3240.i.i.i, %bb.dn ] ; 5 uses
  %.0250366.i.i.i = phi i32 [ 0, %.preheader351.lr.ph.i.i.i ], [ %.3253.i.i.i, %bb.dn ] ; 5 uses
  %.0267365.i.i.i = phi i1 [ false, %.preheader351.lr.ph.i.i.i ], [ %.2269.i.i.i, %bb.dn ] ; 4 uses
  %i.zt = load ptr, ptr %0, align 8               ; 2 uses
  %i.zu = load i32, ptr %i.yh, align 8
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %indvars.iv428.i.i.i ; 2 uses
  %i.zw = load <32 x i32>, ptr %i.zv, align 4     ; 33 uses
  %i.zx = extractelement <32 x i32> %i.zw, i64 0
  %i.zy = extractelement <32 x i32> %i.zw, i64 1
  %i.zz = or i32 %i.zy, %i.zx
  %i.aaa = extractelement <32 x i32> %i.zw, i64 2
  %i.aab = or i32 %i.zz, %i.aaa
  %i.aac = extractelement <32 x i32> %i.zw, i64 3
  %i.aad = or i32 %i.aab, %i.aac
  %i.aae = extractelement <32 x i32> %i.zw, i64 4
  %i.aaf = or i32 %i.aad, %i.aae
  %i.aag = extractelement <32 x i32> %i.zw, i64 5
  %i.aah = or i32 %i.aaf, %i.aag
  %i.aai = extractelement <32 x i32> %i.zw, i64 6
  %i.aaj = or i32 %i.aah, %i.aai
  %i.aak = extractelement <32 x i32> %i.zw, i64 7
  %i.aal = or i32 %i.aaj, %i.aak
  %i.aam = extractelement <32 x i32> %i.zw, i64 8
  %i.aan = or i32 %i.aal, %i.aam
  %i.aao = extractelement <32 x i32> %i.zw, i64 9
  %i.aap = or i32 %i.aan, %i.aao
  %i.aaq = extractelement <32 x i32> %i.zw, i64 10
  %i.aar = or i32 %i.aap, %i.aaq
  %i.aas = extractelement <32 x i32> %i.zw, i64 11
  %i.aat = or i32 %i.aar, %i.aas
  %i.aau = extractelement <32 x i32> %i.zw, i64 12
  %i.aav = or i32 %i.aat, %i.aau
  %i.aaw = extractelement <32 x i32> %i.zw, i64 13
  %i.aax = or i32 %i.aav, %i.aaw
  %i.aay = extractelement <32 x i32> %i.zw, i64 14
  %i.aaz = or i32 %i.aax, %i.aay
  %i.aba = extractelement <32 x i32> %i.zw, i64 15
  %i.abb = or i32 %i.aaz, %i.aba
  %i.abc = extractelement <32 x i32> %i.zw, i64 16
  %i.abd = or i32 %i.abb, %i.abc
  %i.abe = extractelement <32 x i32> %i.zw, i64 17
  %i.abf = or i32 %i.abd, %i.abe
  %i.abg = extractelement <32 x i32> %i.zw, i64 18
  %i.abh = or i32 %i.abf, %i.abg
  %i.abi = extractelement <32 x i32> %i.zw, i64 19
  %i.abj = or i32 %i.abh, %i.abi
  %i.abk = extractelement <32 x i32> %i.zw, i64 20
  %i.abl = or i32 %i.abj, %i.abk
  %i.abm = extractelement <32 x i32> %i.zw, i64 21
  %i.abn = or i32 %i.abl, %i.abm
  %i.abo = extractelement <32 x i32> %i.zw, i64 22
  %i.abp = or i32 %i.abn, %i.abo
  %i.abq = extractelement <32 x i32> %i.zw, i64 23
  %i.abr = or i32 %i.abp, %i.abq
  %i.abs = extractelement <32 x i32> %i.zw, i64 24
  %i.abt = or i32 %i.abr, %i.abs
  %i.abu = extractelement <32 x i32> %i.zw, i64 25
  %i.abv = or i32 %i.abt, %i.abu
  %i.abw = extractelement <32 x i32> %i.zw, i64 26
  %i.abx = or i32 %i.abv, %i.abw
  %i.aby = extractelement <32 x i32> %i.zw, i64 27
  %i.abz = or i32 %i.abx, %i.aby
  %i.aca = extractelement <32 x i32> %i.zw, i64 28
  %i.acb = or i32 %i.abz, %i.aca
  %i.acc = extractelement <32 x i32> %i.zw, i64 29
  %i.acd = or i32 %i.acb, %i.acc
  %i.ace = extractelement <32 x i32> %i.zw, i64 30
  %i.acf = or i32 %i.acd, %i.ace
  %i.acg = extractelement <32 x i32> %i.zw, i64 31
  %i.ach = or i32 %i.acf, %i.acg                  ; 2 uses
  %i.aci = insertelement <32 x i32> poison, i32 %i.zu, i64 0
  %i.acj = shufflevector <32 x i32> %i.aci, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.ack = icmp eq <32 x i32> %i.zw, %i.acj
  %i.acl = freeze <32 x i1> %i.ack
  %i.acm = bitcast <32 x i1> %i.acl to i32
  %i.acn = icmp eq i32 %i.acm, -1
  %7 = add nuw nsw i64 %indvars.iv428.i.i.i, 32   ; 2 uses
  br i1 %i.acn, label %bb.dg, label %bb.di

._crit_edge.i86.i.i:                              ; preds = %bb.dn, %._crit_edge.i.i85.i.i
  %.0267.lcssa.i.i.i = phi i1 [ false, %._crit_edge.i.i85.i.i ], [ %.2269.i.i.i, %bb.dn ] ; 3 uses
  %.0250.lcssa.i.i.i = phi i32 [ 0, %._crit_edge.i.i85.i.i ], [ %.3253.i.i.i, %bb.dn ]
  %i.aco = sub nsw i32 %i.zp, %i.zn
  %i.acp = ashr i32 %i.aco, 5                     ; 2 uses
  %i.acq = add nsw i32 %i.acp, 31
  %i.acr = ashr i32 %i.acq, 5
  %i.acs = add nsw i32 %i.acr, %i.yi              ; 16 uses
  %i.act = add nsw i32 %i.acs, %i.acp
  %i.acu = add i32 %i.act, %.0250.lcssa.i.i.i     ; 7 uses
  %i.acv = shl i32 %i.acu, 1
  %i.acw = add i32 %i.acv, 2
  %i.acx = sext i32 %i.acw to i64
  %i.acy = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.acx) #11 ; 3 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 57 uses
  store ptr %i.acy, ptr %i.acz, align 8
  %i.ada = icmp eq ptr %i.acy, null
  br i1 %i.ada, label %bb.do, label %bb.dp

bb.dg:                                            ; preds = %.preheader351.i.i.i
  %i.adb = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv428.i.i.i
  store i8 0, ptr %i.adb, align 1
  %i.adc = icmp slt i32 %.2239367.i.i.i, 0
  br i1 %i.adc, label %bb.dh, label %bb.dn

bb.dh:                                            ; preds = %bb.dg
  %i.add = icmp ugt i32 %i.ach, 65535             ; 2 uses
  %.1268.i.i.i = select i1 %i.add, i1 true, i1 %.0267365.i.i.i
  %.1251.v.i.i.i = select i1 %i.add, i32 36, i32 32
  %.1251.i.i.i = add nsw i32 %.1251.v.i.i.i, %.0250366.i.i.i
  br label %bb.dn

bb.di:                                            ; preds = %.preheader351.i.i.i
  %i.ade = icmp ult i32 %i.ach, 65536
  br i1 %i.ade, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %bb.di
  %i.adf = trunc nuw nsw i64 %indvars.iv428.i.i.i to i32
  %i.adg = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockItjEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.zt, i32 noundef %i.adf) ; 2 uses
  %i.adh = icmp sgt i32 %i.adg, -1
  %i.adi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv428.i.i.i ; 2 uses
  br i1 %i.adh, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i8 1, ptr %i.adi, align 1
  store i32 %i.adg, ptr %i.zv, align 4
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  store i8 2, ptr %i.adi, align 1
  %i.adj = add nsw i32 %.0250366.i.i.i, 32
  br label %bb.dn

bb.dm:                                            ; preds = %bb.di
  %i.adk = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv428.i.i.i
  store i8 3, ptr %i.adk, align 1
  %i.adl = add nsw i32 %.0250366.i.i.i, 36
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dh, %bb.dg
  %.2269.i.i.i = phi i1 [ %.1268.i.i.i, %bb.dh ], [ %.0267365.i.i.i, %bb.dg ], [ true, %bb.dm ], [ %.0267365.i.i.i, %bb.dl ], [ %.0267365.i.i.i, %bb.dk ] ; 2 uses
  %.3253.i.i.i = phi i32 [ %.1251.i.i.i, %bb.dh ], [ %.0250366.i.i.i, %bb.dg ], [ %i.adl, %bb.dm ], [ %i.adj, %bb.dl ], [ %.0250366.i.i.i, %bb.dk ] ; 2 uses
  %.3240.i.i.i = phi i32 [ 0, %bb.dh ], [ %.2239367.i.i.i, %bb.dg ], [ %.2239367.i.i.i, %bb.dm ], [ %.2239367.i.i.i, %bb.dl ], [ %.2239367.i.i.i, %bb.dk ]
  %i.adm = icmp samesign ult i64 %7, %sext.i.i
  br i1 %i.adm, label %.preheader351.i.i.i, label %._crit_edge.i86.i.i, !llvm.loop !56

bb.do:                                            ; preds = %._crit_edge.i86.i.i
  store i32 7, ptr %3, align 4
  br label %bb.fk

bb.dp:                                            ; preds = %._crit_edge.i86.i.i
  %i.adn = lshr exact i32 %i.cr, 5
  %i.ado = zext nneg i32 %i.adn to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.acy, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.ado, i1 false)
  %i.adp = icmp slt i32 %i.acu, 4126
  br i1 %i.adp, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.adq = icmp samesign ult i32 %i.acu, 32798
  br i1 %i.adq, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.adr = icmp samesign ult i32 %i.acu, 131102   ; 3 uses
  %..i87.i.i = select i1 %i.adr, i32 17, i32 21
  %.503.i.i.i.a = select i1 %i.adr, i32 131071, i32 2097151
  %.504.i.i.i = select i1 %i.adr, i32 200003, i32 1500007
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %bb.dp
  %.sink502.i.i.i = phi i32 [ 15, %bb.dq ], [ %..i87.i.i, %bb.dr ], [ 12, %bb.dp ]
  %.sink.i88.i.i = phi i32 [ 32767, %bb.dq ], [ %.503.i.i.i.a, %bb.dr ], [ 4095, %bb.dp ]
  %.0.i294.i.i.i = phi i32 [ 50021, %bb.dq ], [ %.504.i.i.i, %bb.dr ], [ 6007, %bb.dp ] ; 5 uses
  store i32 %.sink502.i.i.i, ptr %i.nl, align 8
  store i32 %.sink.i88.i.i, ptr %i.zm, align 4
  %i.ads = icmp sgt i32 %.0.i294.i.i.i, %.promoted164.i.i5
  br i1 %i.ads, label %bb.dt, label %._crit_edge.i296.i.i.i

._crit_edge.i296.i.i.i:                           ; preds = %bb.ds
  %.pre13.i297.i.i.i = shl nuw nsw i32 %.0.i294.i.i.i, 2
  %.pre14.i298.i.i.i = zext nneg i32 %.pre13.i297.i.i.i to i64
  br label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  tail call void @uprv_free_78(ptr noundef nonnull %.pre.i.i84.ph.i.i) #10
  %i.adt = shl nuw nsw i32 %.0.i294.i.i.i, 2
  %i.adu = zext nneg i32 %i.adt to i64            ; 2 uses
  %i.adv = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.adu) #11 ; 3 uses
  store ptr %i.adv, ptr %6, align 8
  %i.adw = icmp eq ptr %i.adv, null
  br i1 %i.adw, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit301.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store i32 %.0.i294.i.i.i, ptr %i.nk, align 8
  br label %bb.dv

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit301.i.i.i: ; preds = %bb.dt
  store i32 7, ptr %3, align 4
  br label %bb.fk

bb.dv:                                            ; preds = %bb.du, %._crit_edge.i296.i.i.i
  %i.adx = phi ptr [ %.pre.i.i84.ph.i.i, %._crit_edge.i296.i.i.i ], [ %i.adv, %bb.du ] ; 2 uses
  %.pre-phi15.i299.i.i.i = phi i64 [ %.pre14.i298.i.i.i, %._crit_edge.i296.i.i.i ], [ %i.adu, %bb.du ]
  store i32 %.0.i294.i.i.i, ptr %i.nx, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.adx, i8 0, i64 %.pre-phi15.i299.i.i.i, i1 false)
  store i32 32, ptr %i.ny, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  br i1 %.0267.lcssa.i.i.i, label %bb.dw, label %bb.ee

bb.dw:                                            ; preds = %bb.dv
  %i.ady = icmp slt i32 %i.acu, 4130
  br i1 %i.ady, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.adz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 12, ptr %i.adz, align 8
  %i.aea = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4095, ptr %i.aea, align 4
  br label %bb.ed

bb.dy:                                            ; preds = %bb.dw
  %i.aeb = icmp samesign ult i32 %i.acu, 32802
  %i.aec = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  br i1 %i.aeb, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.aed = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 15, ptr %i.aed, align 8
  store i32 32767, ptr %i.aec, align 4
  br label %bb.ed

bb.ea:                                            ; preds = %bb.dy
  %i.aee = icmp samesign ult i32 %i.acu, 131106
  %i.aef = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.aee, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 17, ptr %i.aef, align 8
  store i32 131071, ptr %i.aec, align 4
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  store i32 21, ptr %i.aef, align 8
  store i32 2097151, ptr %i.aec, align 4
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %bb.dz, %bb.dx
  %.0.i302.i.i.i = phi i32 [ 6007, %bb.dx ], [ 50021, %bb.dz ], [ 200003, %bb.eb ], [ 1500007, %bb.ec ] ; 3 uses
  tail call void @uprv_free_78(ptr noundef null) #10
  %i.aeg = shl nuw nsw i32 %.0.i302.i.i.i, 2
  %i.aeh = zext nneg i32 %i.aeg to i64            ; 2 uses
  %i.aei = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.aeh) #11 ; 3 uses
  store ptr %i.aei, ptr %4, align 8
  %i.aej = icmp eq ptr %i.aei, null
  br i1 %i.aej, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.thread.i.i.i: ; preds = %bb.ed
  %i.aek = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.0.i302.i.i.i, ptr %i.aek, align 8
  %i.ael = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.0.i302.i.i.i, ptr %i.ael, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aei, i8 0, i64 %i.aeh, i1 false)
  %i.aem = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 36, ptr %i.aem, align 8
  br label %bb.ee

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.i.i.i: ; preds = %bb.ed
  store i32 7, ptr %3, align 4
  br label %bb.fj

bb.ee:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.thread.i.i.i, %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %.pre472.i.i.i = load i32, ptr %i.ym, align 4   ; 3 uses
  br i1 %i.zq, label %.lr.ph384.i.i.i, label %._crit_edge385.i.i.i

.lr.ph384.i.i.i:                                  ; preds = %bb.ee
  %i.aen = zext nneg i32 %i.zn to i64
  %i.aeo = zext nneg i32 %i.zp to i64
  %.pre223.i.i = zext nneg i32 %i.acs to i64
  br label %bb.ef

._crit_edge385.loopexit.i.i.i:                    ; preds = %bb.ey
  %i.aep = trunc nuw nsw i64 %indvars.iv.next457.i.i.i to i32
  br label %._crit_edge385.i.i.i

._crit_edge385.i.i.i:                             ; preds = %._crit_edge385.loopexit.i.i.i, %bb.ee
  %i.aeq = phi i32 [ %.pre472.i.i.i, %bb.ee ], [ %i.axj, %._crit_edge385.loopexit.i.i.i ]
  %.0270.lcssa.i.i.i = phi i32 [ 0, %bb.ee ], [ %i.aep, %._crit_edge385.loopexit.i.i.i ] ; 3 uses
  %.0261.lcssa.i.i.i = phi i32 [ %i.acs, %bb.ee ], [ %.6.i98.i.i, %._crit_edge385.loopexit.i.i.i ] ; 3 uses
  %i.aer = icmp slt i32 %i.aeq, 0
  br i1 %i.aer, label %bb.ez, label %bb.fa

bb.ef:                                            ; preds = %bb.ey, %.lr.ph384.i.i.i
  %i.aes = phi i32 [ %.pre472.i.i.i, %.lr.ph384.i.i.i ], [ %i.axj, %bb.ey ]
  %indvars.iv456.i.i.i.a = phi i64 [ 0, %.lr.ph384.i.i.i ], [ %indvars.iv.next457.i.i.i, %bb.ey ] ; 2 uses
  %indvars.iv430.i.i.i = phi i64 [ %i.aen, %.lr.ph384.i.i.i ], [ %indvars.iv.next431.i.i.i, %bb.ey ] ; 17 uses
  %.4241382.i.i.i = phi i32 [ %.pre472.i.i.i, %.lr.ph384.i.i.i ], [ %.5335.i.i.i, %bb.ey ] ; 5 uses
  %.0261378.i.i.i = phi i32 [ %i.acs, %.lr.ph384.i.i.i ], [ %.6.i98.i.i, %bb.ey ] ; 20 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv430.i.i.i
  %i.aeu = load i8, ptr %i.aet, align 1           ; 2 uses
  %i.aev = icmp eq i8 %i.aeu, 0
  %i.aew = icmp slt i32 %.4241382.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.aev, i1 %i.aew, i1 false
  br i1 %or.cond.i.i.i, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.aex = load i32, ptr %i.yh, align 8
  %i.aey = icmp slt i32 %i.aex, 65536
  br i1 %i.aey, label %.thread337.i.i.i, label %.thread.i99.i.i

bb.eh:                                            ; preds = %bb.ef
  switch i8 %i.aeu, label %.thread.i99.i.i [
    i8 0, label %bb.ew
    i8 1, label %bb.ei
    i8 2, label %.thread337.i.i.i
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.aez = load ptr, ptr %0, align 8
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %indvars.iv430.i.i.i
  %i.afb = load i32, ptr %i.afa, align 4
  br label %bb.ew

.thread337.i.i.i:                                 ; preds = %bb.eh, %bb.eg
  %.5340.i.i.i = phi i32 [ %.4241382.i.i.i, %bb.eh ], [ 0, %bb.eg ] ; 3 uses
  %i.afc = load ptr, ptr %i.acz, align 8          ; 4 uses
  %i.afd = load ptr, ptr %0, align 8              ; 2 uses
  %i.afe = trunc nuw nsw i64 %indvars.iv430.i.i.i to i32
  %i.aff = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockItjEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.afc, ptr noundef %i.afd, i32 noundef %i.afe) ; 2 uses
  %i.afg = icmp sgt i32 %i.aff, -1
  br i1 %i.afg, label %bb.ew, label %bb.ej

bb.ej:                                            ; preds = %.thread337.i.i.i
  %i.afh = icmp eq i32 %.0261378.i.i.i, %i.acs
  br i1 %i.afh, label %.lr.ph374.preheader.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.afd, i64 %indvars.iv430.i.i.i ; 2 uses
  %i.afj = sext i32 %.0261378.i.i.i to i64        ; 4 uses
  br label %bb.el

bb.el:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1, %bb.ek
  %indvars.iv.i.i92.i.i = phi i64 [ 31, %bb.ek ], [ %indvars.iv.next.i.i97.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1 ] ; 6 uses
  %i.afk = sub nsw i64 %i.afj, %indvars.iv.i.i92.i.i
end_hunk_0
