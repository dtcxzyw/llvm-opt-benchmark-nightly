Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/utrie2_builder?download=true
inline.NumInlined: 47
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@utrie2_freeze_78:bb.a

.loopexit59.loopexit173.split.loop.exit231.i.i:   ; preds = %.preheader.18.i.i
  %i.hq = add nsw i32 %indvars.iv150.in.i.i, -18
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit233.i.i:   ; preds = %.preheader.17.i.i
  %i.hr = add nsw i32 %indvars.iv150.in.i.i, -17
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit235.i.i:   ; preds = %.preheader.16.i.i
  %i.hs = add nsw i32 %indvars.iv150.in.i.i, -16
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit237.i.i:   ; preds = %.preheader.15.i.i
  %i.ht = add nsw i32 %indvars.iv150.in.i.i, -15
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit239.i.i:   ; preds = %.preheader.14.i.i
  %i.hu = add nsw i32 %indvars.iv150.in.i.i, -14
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit241.i.i:   ; preds = %.preheader.13.i.i
  %i.hv = add nsw i32 %indvars.iv150.in.i.i, -13
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit243.i.i:   ; preds = %.preheader.12.i.i
  %i.hw = add nsw i32 %indvars.iv150.in.i.i, -12
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit245.i.i:   ; preds = %.preheader.11.i.i
  %i.hx = add nsw i32 %indvars.iv150.in.i.i, -11
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit247.i.i:   ; preds = %.preheader.10.i.i
  %i.hy = add nsw i32 %indvars.iv150.in.i.i, -10
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit249.i.i:   ; preds = %.preheader.9.i.i
  %i.hz = add nsw i32 %indvars.iv150.in.i.i, -9
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit251.i.i:   ; preds = %.preheader.8.i.i
  %i.ia = add nsw i32 %indvars.iv150.in.i.i, -8
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit253.i.i:   ; preds = %.preheader.7.i.i
  %i.ib = add nsw i32 %indvars.iv150.in.i.i, -7
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit255.i.i:   ; preds = %.preheader.6.i.i
  %i.ic = add nsw i32 %indvars.iv150.in.i.i, -6
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit257.i.i:   ; preds = %.preheader.5.i.i
  %i.id = add nsw i32 %indvars.iv150.in.i.i, -5
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit259.i.i:   ; preds = %.preheader.4.i.i
  %i.ie = add nsw i32 %indvars.iv150.in.i.i, -4
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit261.i.i:   ; preds = %.preheader.3.i.i
  %i.if = add nsw i32 %indvars.iv150.in.i.i, -3
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit263.i.i:   ; preds = %.preheader.2.i.i
  %i.ig = add nsw i32 %indvars.iv150.in.i.i, -2
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.loopexit59.loopexit173.split.loop.exit265.i.i:   ; preds = %.preheader.1.i.i
  %i.ih = add nsw i32 %indvars.iv150.in.i.i, -1
  br label %_ZL13findHighStartP9UNewTrie2j.exit.i

.thread.i:                                        ; preds = %.loopexit61.i.i, %bb.q, %.outer64.us.i.i, %bb.o
  %i.ii = getelementptr inbounds nuw i8, ptr %i.f, i64 144168 ; 2 uses
  store i32 0, ptr %i.ii, align 8, !tbaa !24
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.ij, align 4, !tbaa !18
  br label %bb.w

_ZL13findHighStartP9UNewTrie2j.exit.i:            ; preds = %bb.r, %.preheader.preheader.i.i, %bb.u, %.preheader.us.preheader.i.i, %.loopexit59.loopexit173.split.loop.exit265.i.i, %.loopexit59.loopexit173.split.loop.exit263.i.i, %.loopexit59.loopexit173.split.loop.exit261.i.i, %.loopexit59.loopexit173.split.loop.exit259.i.i, %.loopexit59.loopexit173.split.loop.exit257.i.i, %.loopexit59.loopexit173.split.loop.exit255.i.i, %.loopexit59.loopexit173.split.loop.exit253.i.i, %.loopexit59.loopexit173.split.loop.exit251.i.i, %.loopexit59.loopexit173.split.loop.exit249.i.i, %.loopexit59.loopexit173.split.loop.exit247.i.i, %.loopexit59.loopexit173.split.loop.exit245.i.i, %.loopexit59.loopexit173.split.loop.exit243.i.i, %.loopexit59.loopexit173.split.loop.exit241.i.i, %.loopexit59.loopexit173.split.loop.exit239.i.i, %.loopexit59.loopexit173.split.loop.exit237.i.i, %.loopexit59.loopexit173.split.loop.exit235.i.i, %.loopexit59.loopexit173.split.loop.exit233.i.i, %.loopexit59.loopexit173.split.loop.exit231.i.i, %.loopexit59.loopexit173.split.loop.exit229.i.i, %.loopexit59.loopexit173.split.loop.exit227.i.i, %.loopexit59.loopexit173.split.loop.exit225.i.i, %.loopexit59.loopexit173.split.loop.exit223.i.i, %.loopexit59.loopexit173.split.loop.exit221.i.i, %.loopexit59.loopexit173.split.loop.exit219.i.i, %.loopexit59.loopexit173.split.loop.exit217.i.i, %.loopexit59.loopexit173.split.loop.exit215.i.i, %.loopexit59.loopexit173.split.loop.exit213.i.i, %.loopexit59.loopexit173.split.loop.exit211.i.i, %.loopexit59.loopexit173.split.loop.exit209.i.i, %.loopexit59.loopexit173.split.loop.exit207.i.i, %.loopexit59.loopexit173.split.loop.exit.i.i, %.loopexit59.loopexit.split.loop.exit361.i.i, %.loopexit59.loopexit.split.loop.exit359.i.i, %.loopexit59.loopexit.split.loop.exit357.i.i, %.loopexit59.loopexit.split.loop.exit355.i.i, %.loopexit59.loopexit.split.loop.exit353.i.i, %.loopexit59.loopexit.split.loop.exit351.i.i, %.loopexit59.loopexit.split.loop.exit349.i.i, %.loopexit59.loopexit.split.loop.exit347.i.i, %.loopexit59.loopexit.split.loop.exit345.i.i, %.loopexit59.loopexit.split.loop.exit343.i.i, %.loopexit59.loopexit.split.loop.exit341.i.i, %.loopexit59.loopexit.split.loop.exit339.i.i, %.loopexit59.loopexit.split.loop.exit337.i.i, %.loopexit59.loopexit.split.loop.exit335.i.i, %.loopexit59.loopexit.split.loop.exit333.i.i, %.loopexit59.loopexit.split.loop.exit331.i.i, %.loopexit59.loopexit.split.loop.exit329.i.i, %.loopexit59.loopexit.split.loop.exit327.i.i, %.loopexit59.loopexit.split.loop.exit325.i.i, %.loopexit59.loopexit.split.loop.exit323.i.i, %.loopexit59.loopexit.split.loop.exit321.i.i, %.loopexit59.loopexit.split.loop.exit319.i.i, %.loopexit59.loopexit.split.loop.exit317.i.i, %.loopexit59.loopexit.split.loop.exit315.i.i, %.loopexit59.loopexit.split.loop.exit313.i.i, %.loopexit59.loopexit.split.loop.exit311.i.i, %.loopexit59.loopexit.split.loop.exit309.i.i, %.loopexit59.loopexit.split.loop.exit307.i.i, %.loopexit59.loopexit.split.loop.exit305.i.i, %.loopexit59.loopexit.split.loop.exit303.i.i, %.loopexit59.loopexit.split.loop.exit.i.i
  %.053.i.i = phi i32 [ %i.if, %.loopexit59.loopexit173.split.loop.exit261.i.i ], [ %i.ig, %.loopexit59.loopexit173.split.loop.exit263.i.i ], [ %i.ie, %.loopexit59.loopexit173.split.loop.exit259.i.i ], [ %indvars.iv150.in.i.i, %.preheader.preheader.i.i ], [ %indvars.iv162.in.i.i, %.preheader.us.preheader.i.i ], [ %i.fy, %.loopexit59.loopexit.split.loop.exit.i.i ], [ %i.fz, %.loopexit59.loopexit.split.loop.exit303.i.i ], [ %i.ga, %.loopexit59.loopexit.split.loop.exit305.i.i ], [ %i.gb, %.loopexit59.loopexit.split.loop.exit307.i.i ], [ %i.gc, %.loopexit59.loopexit.split.loop.exit309.i.i ], [ %i.gd, %.loopexit59.loopexit.split.loop.exit311.i.i ], [ %i.ge, %.loopexit59.loopexit.split.loop.exit313.i.i ], [ %i.gf, %.loopexit59.loopexit.split.loop.exit315.i.i ], [ %i.gg, %.loopexit59.loopexit.split.loop.exit317.i.i ], [ %i.gh, %.loopexit59.loopexit.split.loop.exit319.i.i ], [ %i.gi, %.loopexit59.loopexit.split.loop.exit321.i.i ], [ %i.gj, %.loopexit59.loopexit.split.loop.exit323.i.i ], [ %i.gk, %.loopexit59.loopexit.split.loop.exit325.i.i ], [ %i.gl, %.loopexit59.loopexit.split.loop.exit327.i.i ], [ %i.gm, %.loopexit59.loopexit.split.loop.exit329.i.i ], [ %i.gn, %.loopexit59.loopexit.split.loop.exit331.i.i ], [ %i.go, %.loopexit59.loopexit.split.loop.exit333.i.i ], [ %i.gp, %.loopexit59.loopexit.split.loop.exit335.i.i ], [ %i.gq, %.loopexit59.loopexit.split.loop.exit337.i.i ], [ %i.gr, %.loopexit59.loopexit.split.loop.exit339.i.i ], [ %i.gs, %.loopexit59.loopexit.split.loop.exit341.i.i ], [ %i.gt, %.loopexit59.loopexit.split.loop.exit343.i.i ], [ %i.gu, %.loopexit59.loopexit.split.loop.exit345.i.i ], [ %i.gv, %.loopexit59.loopexit.split.loop.exit347.i.i ], [ %i.gw, %.loopexit59.loopexit.split.loop.exit349.i.i ], [ %i.gx, %.loopexit59.loopexit.split.loop.exit351.i.i ], [ %i.gy, %.loopexit59.loopexit.split.loop.exit353.i.i ], [ %i.gz, %.loopexit59.loopexit.split.loop.exit355.i.i ], [ %i.ha, %.loopexit59.loopexit.split.loop.exit357.i.i ], [ %i.hb, %.loopexit59.loopexit.split.loop.exit359.i.i ], [ %i.hc, %.loopexit59.loopexit.split.loop.exit361.i.i ], [ %i.ih, %.loopexit59.loopexit173.split.loop.exit265.i.i ], [ %i.hd, %.loopexit59.loopexit173.split.loop.exit.i.i ], [ %i.he, %.loopexit59.loopexit173.split.loop.exit207.i.i ], [ %i.hf, %.loopexit59.loopexit173.split.loop.exit209.i.i ], [ %i.hg, %.loopexit59.loopexit173.split.loop.exit211.i.i ], [ %i.hh, %.loopexit59.loopexit173.split.loop.exit213.i.i ], [ %i.hi, %.loopexit59.loopexit173.split.loop.exit215.i.i ], [ %i.hj, %.loopexit59.loopexit173.split.loop.exit217.i.i ], [ %i.hk, %.loopexit59.loopexit173.split.loop.exit219.i.i ], [ %i.hl, %.loopexit59.loopexit173.split.loop.exit221.i.i ], [ %i.hm, %.loopexit59.loopexit173.split.loop.exit223.i.i ], [ %i.hn, %.loopexit59.loopexit173.split.loop.exit225.i.i ], [ %i.ho, %.loopexit59.loopexit173.split.loop.exit227.i.i ], [ %i.hp, %.loopexit59.loopexit173.split.loop.exit229.i.i ], [ %i.hq, %.loopexit59.loopexit173.split.loop.exit231.i.i ], [ %i.hr, %.loopexit59.loopexit173.split.loop.exit233.i.i ], [ %i.hs, %.loopexit59.loopexit173.split.loop.exit235.i.i ], [ %i.ht, %.loopexit59.loopexit173.split.loop.exit237.i.i ], [ %i.hu, %.loopexit59.loopexit173.split.loop.exit239.i.i ], [ %i.hv, %.loopexit59.loopexit173.split.loop.exit241.i.i ], [ %i.hw, %.loopexit59.loopexit173.split.loop.exit243.i.i ], [ %i.hx, %.loopexit59.loopexit173.split.loop.exit245.i.i ], [ %i.hy, %.loopexit59.loopexit173.split.loop.exit247.i.i ], [ %i.hz, %.loopexit59.loopexit173.split.loop.exit249.i.i ], [ %i.ia, %.loopexit59.loopexit173.split.loop.exit251.i.i ], [ %i.ib, %.loopexit59.loopexit173.split.loop.exit253.i.i ], [ %i.ic, %.loopexit59.loopexit173.split.loop.exit255.i.i ], [ %i.id, %.loopexit59.loopexit173.split.loop.exit257.i.i ], [ %indvars.iv150.in.i.i, %bb.u ], [ %.04977.i.i, %bb.r ]
  %i.ik = add nsw i32 %.053.i.i, 2047
  %i.il = and i32 %i.ik, -2048                    ; 6 uses
  %i.im = icmp eq i32 %i.il, 1114112
  br i1 %i.im, label %.thread58.i, label %bb.v

.thread58.i:                                      ; preds = %_ZL13findHighStartP9UNewTrie2j.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.io = load i32, ptr %i.in, align 8, !tbaa !17
  %i.ip = getelementptr inbounds nuw i8, ptr %i.f, i64 144168 ; 2 uses
  store i32 1114112, ptr %i.ip, align 8, !tbaa !24
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1114112, ptr %i.iq, align 4, !tbaa !18
  br label %bb.x

bb.v:                                             ; preds = %_ZL13findHighStartP9UNewTrie2j.exit.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.f, i64 144168 ; 3 uses
  store i32 %i.il, ptr %i.ir, align 8, !tbaa !24
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.il, ptr %i.is, align 4, !tbaa !18
  %i.it = icmp slt i32 %i.il, 1114112
  br i1 %i.it, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %.thread.i
  %i.iu = phi ptr [ %i.ii, %.thread.i ], [ %i.ir, %bb.v ]
  %i.iv = phi i32 [ 0, %.thread.i ], [ %i.il, %bb.v ] ; 2 uses
  %i.iw = tail call i32 @llvm.smax.i32(i32 %i.iv, i32 65536)
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !16
  tail call void @utrie2_setRange32_78(ptr noundef nonnull %0, i32 noundef %i.iw, i32 noundef 1114111, i32 noundef %i.iy, i8 noundef signext 1, ptr noundef nonnull %2)
  %i.iz = load i32, ptr %2, align 4, !tbaa !9
  %i.ja = icmp slt i32 %i.iz, 1
  br i1 %i.ja, label %bb.x, label %_ZL11compactTrieP6UTrie2P10UErrorCode.exit.thread

bb.x:                                             ; preds = %bb.w, %bb.v, %.thread58.i
  %i.jb = phi ptr [ %i.iu, %bb.w ], [ %i.ir, %bb.v ], [ %i.ip, %.thread58.i ]
  %.056.i = phi i32 [ %i.m, %bb.w ], [ %i.m, %bb.v ], [ %i.io, %.thread58.i ]
  %i.jc = phi i32 [ %i.iv, %bb.w ], [ %i.il, %bb.v ], [ 1114112, %.thread58.i ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.f, i64 144176 ; 17 uses
  store <4 x i32> <i32 0, i32 32, i32 64, i32 96>, ptr %i.jd, align 8, !tbaa !27
  %i.je = getelementptr inbounds nuw i8, ptr %i.f, i64 144192 ; 2 uses
  store i32 128, ptr %i.je, align 8, !tbaa !27
  %i.jf = getelementptr inbounds nuw i8, ptr %i.f, i64 144196
  store i32 160, ptr %i.jf, align 4, !tbaa !27
  %i.jg = getelementptr inbounds nuw i8, ptr %i.f, i64 144152 ; 9 uses
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !29 ; 2 uses
  %i.ji = icmp sgt i32 %i.jh, 192
  br i1 %i.ji, label %.lr.ph137.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.outer.i31.i, %.backedge.i.i, %bb.x
  %.099.ph.lcssa.i.i = phi i32 [ %.099.ph161.i.i, %.backedge.i.i ], [ 192, %bb.x ], [ %.2101.i.i, %.outer.i31.i ] ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.f, i64 144144 ; 6 uses
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !34
  %i.jl = icmp sgt i32 %i.jk, 0
  br i1 %i.jl, label %.lr.ph166.i.i, label %._crit_edge167.i.i

bb.y:                                             ; preds = %.lr.ph137.i.i, %.backedge.i.i
  %i.jm = phi i32 [ %i.nm, %.lr.ph137.i.i ], [ %i.jt, %.backedge.i.i ]
  %.0136.i.i = phi i32 [ %.0.ph163.i.i, %.lr.ph137.i.i ], [ %spec.select110.i.i, %.backedge.i.i ]
  %.095135.i.i = phi i32 [ %.095.ph162.i.i, %.lr.ph137.i.i ], [ %spec.select.i.i, %.backedge.i.i ]
  %.1104134.i.i = phi i32 [ %.1104.ph160.i.i, %.lr.ph137.i.i ], [ %.1104.be.i.i, %.backedge.i.i ] ; 9 uses
  %i.jn = icmp eq i32 %.1104134.i.i, 2176         ; 2 uses
  %spec.select.i.i = select i1 %i.jn, i32 32, i32 %.095135.i.i ; 7 uses
  %spec.select110.i.i = select i1 %i.jn, i32 1, i32 %.0136.i.i ; 14 uses
  %i.jo = ashr i32 %.1104134.i.i, 5
  %i.jp = sext i32 %i.jo to i64                   ; 10 uses
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !27
  %i.js = icmp slt i32 %i.jr, 1
  br i1 %i.js, label %.backedge.i.i, label %bb.z

.backedge.i.i:                                    ; preds = %._crit_edge.i.i, %bb.y
  %i.jt = phi i32 [ %.pre.pre.i.i, %._crit_edge.i.i ], [ %i.jm, %bb.y ] ; 2 uses
  %.1104.be.i.i = add nsw i32 %spec.select.i.i, %.1104134.i.i ; 2 uses
  %i.ju = icmp slt i32 %.1104.be.i.i, %i.jt
  br i1 %i.ju, label %bb.y, label %.preheader.i.i, !llvm.loop !59

bb.z:                                             ; preds = %bb.y
  %i.jv = load ptr, ptr %i.n, align 8, !tbaa !21  ; 8 uses
  %i.jw = sub nsw i32 %.099.ph161.i.i, %spec.select.i.i ; 2 uses
  %.not19.i.i.i = icmp slt i32 %i.jw, 0
  %.pre708.i = sext i32 %.1104134.i.i to i64      ; 2 uses
  br i1 %.not19.i.i.i, label %.lr.ph141.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %.pre708.i
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ad ] ; 3 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.i.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %.010.i.i.i.i = phi i32 [ %spec.select.i.i, %bb.aa ], [ %i.ke, %bb.ac ] ; 3 uses
  %.069.i.i.i.i = phi ptr [ %i.jx, %bb.aa ], [ %i.kd, %bb.ac ] ; 2 uses
  %.078.i.i.i.i = phi ptr [ %i.jy, %bb.aa ], [ %i.kc, %bb.ac ] ; 2 uses
  %i.jz = load i32, ptr %.078.i.i.i.i, align 4, !tbaa !27
  %i.ka = load i32, ptr %.069.i.i.i.i, align 4, !tbaa !27
  %i.kb = icmp eq i32 %i.jz, %i.ka
  br i1 %i.kb, label %bb.ac, label %_ZL12equal_uint32PKjS0_i.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.kc = getelementptr inbounds nuw i8, ptr %.078.i.i.i.i, i64 4
  %i.kd = getelementptr inbounds nuw i8, ptr %.069.i.i.i.i, i64 4
  %i.ke = add nsw i32 %.010.i.i.i.i, -1
  %i.kf = icmp sgt i32 %.010.i.i.i.i, 1
  br i1 %i.kf, label %bb.ab, label %_ZL17findSameDataBlockPKjiii.exit.i.i, !llvm.loop !60

_ZL12equal_uint32PKjS0_i.exit.i.i.i:              ; preds = %bb.ab
  %.not15.i.i.i = icmp eq i32 %.010.i.i.i.i, 0
  br i1 %.not15.i.i.i, label %_ZL17findSameDataBlockPKjiii.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZL12equal_uint32PKjS0_i.exit.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.kg = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  %.not.i.i.i = icmp slt i32 %i.jw, %i.kg
  br i1 %.not.i.i.i, label %.lr.ph141.i.i, label %bb.aa, !llvm.loop !61

.lr.ph141.i.i:                                    ; preds = %bb.z, %bb.ad
  %3 = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %.pre708.i
  %4 = zext nneg i32 %spec.select.i.i to i64
  %5 = add nsw i64 %4, -4
  %6 = sext i32 %.099.ph161.i.i to i64            ; 6 uses
  br label %bb.ae

_ZL17findSameDataBlockPKjiii.exit.i.i:            ; preds = %_ZL12equal_uint32PKjS0_i.exit.i.i.i, %bb.ac
  %i.kh = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 3 uses
  %i.ki = tail call i32 @llvm.smin.i32(i32 %spec.select110.i.i, i32 1)
  %i.kj = sub i32 %spec.select110.i.i, %i.ki      ; 2 uses
  %i.kk = zext i32 %i.kj to i64
  %i.kl = add nuw nsw i64 %i.kk, 1                ; 2 uses
  %min.iters.check1651 = icmp ult i32 %i.kj, 7
  br i1 %min.iters.check1651, label %.lr.ph.i32.i.preheader, label %vector.ph1652

vector.ph1652:                                    ; preds = %_ZL17findSameDataBlockPKjiii.exit.i.i
  %n.vec1653 = and i64 %i.kl, 8589934584          ; 4 uses
  %i.km = add nsw i64 %n.vec1653, %i.jp
  %i.kn = trunc i64 %n.vec1653 to i32             ; 2 uses
  %i.ko = sub i32 %spec.select110.i.i, %i.kn
  %i.kp = shl i32 %i.kn, 5
  %i.kq = add i32 %i.kp, %i.kh
  %broadcast.splatinsert1654 = insertelement <4 x i32> poison, i32 %i.kh, i64 0
  %broadcast.splat1655 = shufflevector <4 x i32> %broadcast.splatinsert1654, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1656 = add nuw nsw <4 x i32> %broadcast.splat1655, <i32 0, i32 32, i32 64, i32 96>
  %invariant.gep = getelementptr [4 x i8], ptr %i.jd, i64 %i.jp
  br label %vector.body1657

vector.body1657:                                  ; preds = %vector.body1657, %vector.ph1652
  %index1658 = phi i64 [ 0, %vector.ph1652 ], [ %index.next1661, %vector.body1657 ] ; 2 uses
  %vec.ind1659 = phi <4 x i32> [ %induction1656, %vector.ph1652 ], [ %vec.ind.next1662, %vector.body1657 ] ; 3 uses
  %step.add1660 = add nuw nsw <4 x i32> %vec.ind1659, splat (i32 128)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index1658 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %vec.ind1659, ptr %gep, align 4, !tbaa !27
  store <4 x i32> %step.add1660, ptr %i.kr, align 4, !tbaa !27
  %index.next1661 = add nuw i64 %index1658, 8     ; 2 uses
  %vec.ind.next1662 = add nuw nsw <4 x i32> %vec.ind1659, splat (i32 256)
  %i.ks = icmp eq i64 %index.next1661, %n.vec1653
  br i1 %i.ks, label %middle.block1663, label %vector.body1657, !llvm.loop !62

middle.block1663:                                 ; preds = %vector.body1657
  %cmp.n1664 = icmp eq i64 %i.kl, %n.vec1653
  br i1 %cmp.n1664, label %._crit_edge.i.i, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %_ZL17findSameDataBlockPKjiii.exit.i.i, %middle.block1663
  %indvars.iv.i33.i.ph = phi i64 [ %i.jp, %_ZL17findSameDataBlockPKjiii.exit.i.i ], [ %i.km, %middle.block1663 ]
  %.192132.i.i.ph = phi i32 [ %spec.select110.i.i, %_ZL17findSameDataBlockPKjiii.exit.i.i ], [ %i.ko, %middle.block1663 ]
  %.097131.i.i.ph = phi i32 [ %i.kh, %_ZL17findSameDataBlockPKjiii.exit.i.i ], [ %i.kq, %middle.block1663 ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader, %.lr.ph.i32.i
  %indvars.iv.i33.i = phi i64 [ %indvars.iv.next.i34.i, %.lr.ph.i32.i ], [ %indvars.iv.i33.i.ph, %.lr.ph.i32.i.preheader ] ; 2 uses
  %.192132.i.i = phi i32 [ %i.kv, %.lr.ph.i32.i ], [ %.192132.i.i.ph, %.lr.ph.i32.i.preheader ] ; 2 uses
  %.097131.i.i = phi i32 [ %i.ku, %.lr.ph.i32.i ], [ %.097131.i.i.ph, %.lr.ph.i32.i.preheader ] ; 2 uses
  %indvars.iv.next.i34.i = add nsw i64 %indvars.iv.i33.i, 1
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %indvars.iv.i33.i
  store i32 %.097131.i.i, ptr %i.kt, align 4, !tbaa !27
  %i.ku = add nuw nsw i32 %.097131.i.i, 32
  %i.kv = add nsw i32 %.192132.i.i, -1
  %i.kw = icmp sgt i32 %.192132.i.i, 1
  br i1 %i.kw, label %.lr.ph.i32.i, label %._crit_edge.i.i, !llvm.loop !63

._crit_edge.i.i:                                  ; preds = %.lr.ph.i32.i, %middle.block1663
  %.pre.pre.i.i = load i32, ptr %i.jg, align 8, !tbaa !29
  br label %.backedge.i.i

_ZL12equal_uint32PKjS0_i.exit.loopexit.i.i:       ; preds = %bb.af
  %indvars.iv.next197.i.i = add nsw i64 %indvars.iv196.i.i, -4 ; 2 uses
  %i.kx = icmp sgt i64 %indvars.iv196.i.i, 4
  br i1 %i.kx, label %bb.ae, label %.critedge111.i.i

bb.ae:                                            ; preds = %_ZL12equal_uint32PKjS0_i.exit.loopexit.i.i, %.lr.ph141.i.i
  %indvars.iv196.i.i = phi i64 [ %5, %.lr.ph141.i.i ], [ %indvars.iv.next197.i.i, %_ZL12equal_uint32PKjS0_i.exit.loopexit.i.i ] ; 4 uses
  %i.ky = sub nsw i64 %6, %indvars.iv196.i.i
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.ky
  %i.la = trunc nuw nsw i64 %indvars.iv196.i.i to i32 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %.010.i.i.i = phi i32 [ %i.la, %bb.ae ], [ %i.lg, %bb.ag ] ; 2 uses
  %.069.i.i.i = phi ptr [ %3, %bb.ae ], [ %i.lf, %bb.ag ] ; 2 uses
  %.078.i.i.i = phi ptr [ %i.kz, %bb.ae ], [ %i.le, %bb.ag ] ; 2 uses
  %i.lb = load i32, ptr %.078.i.i.i, align 4, !tbaa !27
  %i.lc = load i32, ptr %.069.i.i.i, align 4, !tbaa !27
  %i.ld = icmp eq i32 %i.lb, %i.lc
  br i1 %i.ld, label %bb.ag, label %_ZL12equal_uint32PKjS0_i.exit.loopexit.i.i

bb.ag:                                            ; preds = %bb.af
  %i.le = getelementptr inbounds nuw i8, ptr %.078.i.i.i, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %.069.i.i.i, i64 4
  %i.lg = add nsw i32 %.010.i.i.i, -1
  %i.lh = icmp sgt i32 %.010.i.i.i, 1
  br i1 %i.lh, label %bb.af, label %.lr.ph151.preheader.i.i, !llvm.loop !60

.critedge111.i.i:                                 ; preds = %_ZL12equal_uint32PKjS0_i.exit.loopexit.i.i
  %i.li = trunc nsw i64 %indvars.iv.next197.i.i to i32
  %.old.i.i = icmp slt i32 %.099.ph161.i.i, %.1104134.i.i
  br i1 %.old.i.i, label %.lr.ph151.preheader.i.i, label %.lr.ph146.i.i.preheader

.lr.ph146.i.i.preheader:                          ; preds = %.critedge111.i.i
  %i.lj = tail call i32 @llvm.smin.i32(i32 %spec.select110.i.i, i32 1)
  %i.lk = sub i32 %spec.select110.i.i, %i.lj      ; 2 uses
  %i.ll = zext i32 %i.lk to i64
  %i.lm = add nuw nsw i64 %i.ll, 1                ; 2 uses
  %min.iters.check1633 = icmp ult i32 %i.lk, 7
  br i1 %min.iters.check1633, label %.lr.ph146.i.i.preheader1760, label %vector.ph1634

vector.ph1634:                                    ; preds = %.lr.ph146.i.i.preheader
  %n.vec1635 = and i64 %i.lm, 8589934584          ; 4 uses
  %i.ln = add nsw i64 %n.vec1635, %i.jp
  %i.lo = trunc i64 %n.vec1635 to i32             ; 2 uses
  %i.lp = sub i32 %spec.select110.i.i, %i.lo
  %i.lq = shl i32 %i.lo, 5
  %i.lr = add i32 %.1104134.i.i, %i.lq            ; 3 uses
  %broadcast.splatinsert1636 = insertelement <4 x i32> poison, i32 %.1104134.i.i, i64 0
  %broadcast.splat1637 = shufflevector <4 x i32> %broadcast.splatinsert1636, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1638 = add nsw <4 x i32> %broadcast.splat1637, <i32 0, i32 32, i32 64, i32 96>
  %invariant.gep2459 = getelementptr [4 x i8], ptr %i.jd, i64 %i.jp
  br label %vector.body1639

vector.body1639:                                  ; preds = %vector.body1639, %vector.ph1634
  %index1640 = phi i64 [ 0, %vector.ph1634 ], [ %index.next1643, %vector.body1639 ] ; 2 uses
  %vec.ind1641 = phi <4 x i32> [ %induction1638, %vector.ph1634 ], [ %vec.ind.next1644, %vector.body1639 ] ; 3 uses
  %step.add1642 = add nsw <4 x i32> %vec.ind1641, splat (i32 128)
  %gep2460 = getelementptr [4 x i8], ptr %invariant.gep2459, i64 %index1640 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %gep2460, i64 16
  store <4 x i32> %vec.ind1641, ptr %gep2460, align 4, !tbaa !27
  store <4 x i32> %step.add1642, ptr %i.ls, align 4, !tbaa !27
  %index.next1643 = add nuw i64 %index1640, 8     ; 2 uses
  %vec.ind.next1644 = add nsw <4 x i32> %vec.ind1641, splat (i32 256)
  %i.lt = icmp eq i64 %index.next1643, %n.vec1635
  br i1 %i.lt, label %middle.block1645, label %vector.body1639, !llvm.loop !64

middle.block1645:                                 ; preds = %vector.body1639
  %cmp.n1646 = icmp eq i64 %i.lm, %n.vec1635
  br i1 %cmp.n1646, label %.outer.i31.i, label %.lr.ph146.i.i.preheader1760

.lr.ph146.i.i.preheader1760:                      ; preds = %.lr.ph146.i.i.preheader, %middle.block1645
  %indvars.iv201.i.i.ph = phi i64 [ %i.jp, %.lr.ph146.i.i.preheader ], [ %i.ln, %middle.block1645 ]
  %.4144.i.i.ph = phi i32 [ %spec.select110.i.i, %.lr.ph146.i.i.preheader ], [ %i.lp, %middle.block1645 ]
  %.3106143.i.i.ph = phi i32 [ %.1104134.i.i, %.lr.ph146.i.i.preheader ], [ %i.lr, %middle.block1645 ]
  br label %.lr.ph146.i.i

.lr.ph151.preheader.i.i:                          ; preds = %bb.ag, %.critedge111.i.i
  %.094128.i.i = phi i32 [ %i.li, %.critedge111.i.i ], [ %i.la, %bb.ag ] ; 3 uses
  %i.lu = sub nsw i32 %.099.ph161.i.i, %.094128.i.i ; 3 uses
  %i.lv = tail call i32 @llvm.smin.i32(i32 %spec.select110.i.i, i32 1)
  %i.lw = sub i32 %spec.select110.i.i, %i.lv      ; 2 uses
  %i.lx = zext i32 %i.lw to i64
  %i.ly = add nuw nsw i64 %i.lx, 1                ; 2 uses
  %min.iters.check1621 = icmp ult i32 %i.lw, 7
  br i1 %min.iters.check1621, label %.lr.ph151.i.i.preheader, label %vector.ph1622

vector.ph1622:                                    ; preds = %.lr.ph151.preheader.i.i
  %n.vec1623 = and i64 %i.ly, 8589934584          ; 4 uses
  %i.lz = add nsw i64 %n.vec1623, %i.jp
  %i.ma = trunc i64 %n.vec1623 to i32             ; 2 uses
  %i.mb = sub i32 %spec.select110.i.i, %i.ma
  %i.mc = shl i32 %i.ma, 5
  %i.md = add i32 %i.lu, %i.mc
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.lu, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 32, i32 64, i32 96>
  %invariant.gep2461 = getelementptr [4 x i8], ptr %i.jd, i64 %i.jp
  br label %vector.body1624

vector.body1624:                                  ; preds = %vector.body1624, %vector.ph1622
  %index1625 = phi i64 [ 0, %vector.ph1622 ], [ %index.next1626, %vector.body1624 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph1622 ], [ %vec.ind.next, %vector.body1624 ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, splat (i32 128)
  %gep2462 = getelementptr [4 x i8], ptr %invariant.gep2461, i64 %index1625 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %gep2462, i64 16
  store <4 x i32> %vec.ind, ptr %gep2462, align 4, !tbaa !27
  store <4 x i32> %step.add, ptr %i.me, align 4, !tbaa !27
  %index.next1626 = add nuw i64 %index1625, 8     ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 256)
  %i.mf = icmp eq i64 %index.next1626, %n.vec1623
  br i1 %i.mf, label %middle.block1627, label %vector.body1624, !llvm.loop !65

middle.block1627:                                 ; preds = %vector.body1624
  %cmp.n1628 = icmp eq i64 %i.ly, %n.vec1623
  br i1 %cmp.n1628, label %._crit_edge152.i.i, label %.lr.ph151.i.i.preheader

.lr.ph151.i.i.preheader:                          ; preds = %.lr.ph151.preheader.i.i, %middle.block1627
  %indvars.iv206.i.i.ph = phi i64 [ %i.jp, %.lr.ph151.preheader.i.i ], [ %i.lz, %middle.block1627 ]
  %.293149.i.i.ph = phi i32 [ %spec.select110.i.i, %.lr.ph151.preheader.i.i ], [ %i.mb, %middle.block1627 ]
  %.198148.i.i.ph = phi i32 [ %i.lu, %.lr.ph151.preheader.i.i ], [ %i.md, %middle.block1627 ]
  br label %.lr.ph151.i.i

.lr.ph151.i.i:                                    ; preds = %.lr.ph151.i.i.preheader, %.lr.ph151.i.i
  %indvars.iv206.i.i = phi i64 [ %indvars.iv.next207.i.i, %.lr.ph151.i.i ], [ %indvars.iv206.i.i.ph, %.lr.ph151.i.i.preheader ] ; 2 uses
  %.293149.i.i = phi i32 [ %i.mi, %.lr.ph151.i.i ], [ %.293149.i.i.ph, %.lr.ph151.i.i.preheader ] ; 2 uses
  %.198148.i.i = phi i32 [ %i.mh, %.lr.ph151.i.i ], [ %.198148.i.i.ph, %.lr.ph151.i.i.preheader ] ; 2 uses
  %indvars.iv.next207.i.i = add nsw i64 %indvars.iv206.i.i, 1
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %indvars.iv206.i.i
  store i32 %.198148.i.i, ptr %i.mg, align 4, !tbaa !27
  %i.mh = add nsw i32 %.198148.i.i, 32
  %i.mi = add nsw i32 %.293149.i.i, -1
  %i.mj = icmp sgt i32 %.293149.i.i, 1
  br i1 %i.mj, label %.lr.ph151.i.i, label %._crit_edge152.i.i, !llvm.loop !66

._crit_edge152.i.i:                               ; preds = %.lr.ph151.i.i, %middle.block1627
  %i.mk = add i32 %.094128.i.i, %.1104134.i.i     ; 2 uses
  %i.ml = sub nsw i32 %spec.select.i.i, %.094128.i.i ; 6 uses
  %i.mm = icmp sgt i32 %i.ml, 0
  br i1 %i.mm, label %.lr.ph157.preheader.i.i, label %.outer.i31.i

.lr.ph157.preheader.i.i:                          ; preds = %._crit_edge152.i.i
  %i.mn = sext i32 %i.mk to i64                   ; 5 uses
  %i.mo = zext nneg i32 %i.ml to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ml, 8
  br i1 %min.iters.check, label %.lr.ph157.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph157.preheader.i.i
  %i.mp = sub nsw i64 %6, %i.mn
  %i.mq = shl nsw i64 %i.mp, 2
  %i.mr = add nsw i64 %i.mq, -1
  %diff.check = icmp ult i64 %i.mr, 31
  br i1 %diff.check, label %.lr.ph157.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.mo, 2147483640              ; 5 uses
  %i.ms = add nsw i64 %n.vec, %i.mn               ; 2 uses
  %i.mt = add nsw i64 %n.vec, %6                  ; 2 uses
  %i.mu = trunc nuw nsw i64 %n.vec to i32
  %i.mv = sub nsw i32 %i.ml, %i.mu
  %invariant.gep2463 = getelementptr [4 x i8], ptr %i.jv, i64 %i.mn
  %invariant.gep2465 = getelementptr [4 x i8], ptr %i.jv, i64 %6
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep2464 = getelementptr [4 x i8], ptr %invariant.gep2463, i64 %index ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %gep2464, i64 16
  %wide.load = load <4 x i32>, ptr %gep2464, align 4, !tbaa !27
  %wide.load1617 = load <4 x i32>, ptr %i.mw, align 4, !tbaa !27
  %gep2466 = getelementptr [4 x i8], ptr %invariant.gep2465, i64 %index ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %gep2466, i64 16
  store <4 x i32> %wide.load, ptr %gep2466, align 4, !tbaa !27
  store <4 x i32> %wide.load1617, ptr %i.mx, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.my = icmp eq i64 %index.next, %n.vec
  br i1 %i.my, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.mo
  br i1 %cmp.n, label %.outer.loopexit.i.i, label %.lr.ph157.i.i.preheader

.lr.ph157.i.i.preheader:                          ; preds = %vector.memcheck, %.lr.ph157.preheader.i.i, %middle.block
  %indvars.iv213.i.i.ph = phi i64 [ %i.mn, %vector.memcheck ], [ %i.mn, %.lr.ph157.preheader.i.i ], [ %i.ms, %middle.block ]
  %indvars.iv211.i.i.ph = phi i64 [ %6, %vector.memcheck ], [ %6, %.lr.ph157.preheader.i.i ], [ %i.mt, %middle.block ]
  %.3155.i.i.ph = phi i32 [ %i.ml, %vector.memcheck ], [ %i.ml, %.lr.ph157.preheader.i.i ], [ %i.mv, %middle.block ]
  br label %.lr.ph157.i.i

.lr.ph157.i.i:                                    ; preds = %.lr.ph157.i.i.preheader, %.lr.ph157.i.i
  %indvars.iv213.i.i = phi i64 [ %indvars.iv.next214.i.i, %.lr.ph157.i.i ], [ %indvars.iv213.i.i.ph, %.lr.ph157.i.i.preheader ] ; 2 uses
  %indvars.iv211.i.i = phi i64 [ %indvars.iv.next212.i.i, %.lr.ph157.i.i ], [ %indvars.iv211.i.i.ph, %.lr.ph157.i.i.preheader ] ; 2 uses
  %.3155.i.i = phi i32 [ %i.nc, %.lr.ph157.i.i ], [ %.3155.i.i.ph, %.lr.ph157.i.i.preheader ] ; 2 uses
  %indvars.iv.next214.i.i = add nsw i64 %indvars.iv213.i.i, 1 ; 2 uses
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %indvars.iv213.i.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !27
  %indvars.iv.next212.i.i = add nsw i64 %indvars.iv211.i.i, 1 ; 2 uses
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %indvars.iv211.i.i
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !27
  %i.nc = add nsw i32 %.3155.i.i, -1
  %i.nd = icmp samesign ugt i32 %.3155.i.i, 1
  br i1 %i.nd, label %.lr.ph157.i.i, label %.outer.loopexit.i.i, !llvm.loop !68

.lr.ph146.i.i:                                    ; preds = %.lr.ph146.i.i.preheader1760, %.lr.ph146.i.i
  %indvars.iv201.i.i = phi i64 [ %indvars.iv.next202.i.i, %.lr.ph146.i.i ], [ %indvars.iv201.i.i.ph, %.lr.ph146.i.i.preheader1760 ] ; 2 uses
  %.4144.i.i = phi i32 [ %i.ng, %.lr.ph146.i.i ], [ %.4144.i.i.ph, %.lr.ph146.i.i.preheader1760 ] ; 2 uses
  %.3106143.i.i = phi i32 [ %i.nf, %.lr.ph146.i.i ], [ %.3106143.i.i.ph, %.lr.ph146.i.i.preheader1760 ] ; 2 uses
  %indvars.iv.next202.i.i = add nsw i64 %indvars.iv201.i.i, 1
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %indvars.iv201.i.i
  store i32 %.3106143.i.i, ptr %i.ne, align 4, !tbaa !27
  %i.nf = add nsw i32 %.3106143.i.i, 32           ; 3 uses
  %i.ng = add nsw i32 %.4144.i.i, -1
  %i.nh = icmp sgt i32 %.4144.i.i, 1
  br i1 %i.nh, label %.lr.ph146.i.i, label %.outer.i31.i, !llvm.loop !69

.outer.loopexit.i.i:                              ; preds = %.lr.ph157.i.i, %middle.block
  %indvars.iv.next214.i.i.lcssa = phi i64 [ %i.ms, %middle.block ], [ %indvars.iv.next214.i.i, %.lr.ph157.i.i ]
  %indvars.iv.next212.i.i.lcssa = phi i64 [ %i.mt, %middle.block ], [ %indvars.iv.next212.i.i, %.lr.ph157.i.i ]
  %i.ni = trunc nsw i64 %indvars.iv.next214.i.i.lcssa to i32
  %i.nj = trunc nsw i64 %indvars.iv.next212.i.i.lcssa to i32
  br label %.outer.i31.i

.outer.i31.i:                                     ; preds = %.lr.ph146.i.i, %middle.block1645, %.outer.loopexit.i.i, %._crit_edge152.i.i
  %.4107.i.i = phi i32 [ %i.ni, %.outer.loopexit.i.i ], [ %i.mk, %._crit_edge152.i.i ], [ %i.lr, %middle.block1645 ], [ %i.nf, %.lr.ph146.i.i ] ; 2 uses
  %.2101.i.i = phi i32 [ %i.nj, %.outer.loopexit.i.i ], [ %.099.ph161.i.i, %._crit_edge152.i.i ], [ %i.lr, %middle.block1645 ], [ %i.nf, %.lr.ph146.i.i ] ; 2 uses
  %i.nk = load i32, ptr %i.jg, align 8, !tbaa !29 ; 2 uses
  %i.nl = icmp slt i32 %.4107.i.i, %i.nk
  br i1 %i.nl, label %.lr.ph137.i.i, label %.preheader.i.i, !llvm.loop !59

.lr.ph137.i.i:                                    ; preds = %bb.x, %.outer.i31.i
  %i.nm = phi i32 [ %i.nk, %.outer.i31.i ], [ %i.jh, %bb.x ]
  %.0.ph163.i.i = phi i32 [ %spec.select110.i.i, %.outer.i31.i ], [ 2, %bb.x ]
  %.095.ph162.i.i = phi i32 [ %spec.select.i.i, %.outer.i31.i ], [ 64, %bb.x ]
  %.099.ph161.i.i = phi i32 [ %.2101.i.i, %.outer.i31.i ], [ 192, %bb.x ] ; 6 uses
  %.1104.ph160.i.i = phi i32 [ %.4107.i.i, %.outer.i31.i ], [ 192, %bb.x ]
  br label %bb.y

.lr.ph166.i.i:                                    ; preds = %.preheader.i.i, %.lr.ph166.i.i
  %.5165.i.i = phi i32 [ %i.nv, %.lr.ph166.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.nn = icmp eq i32 %.5165.i.i, 2080
  %spec.select112.i.i = select i1 %i.nn, i32 2656, i32 %.5165.i.i ; 2 uses
  %i.no = sext i32 %spec.select112.i.i to i64
  %i.np = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.no ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !27
  %i.nr = ashr i32 %i.nq, 5
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.ns
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !27
  store i32 %i.nu, ptr %i.np, align 4, !tbaa !27
  %i.nv = add nsw i32 %spec.select112.i.i, 1      ; 2 uses
  %i.nw = load i32, ptr %i.jj, align 8, !tbaa !34
  %i.nx = icmp slt i32 %i.nv, %i.nw
  br i1 %i.nx, label %.lr.ph166.i.i, label %._crit_edge167.i.i, !llvm.loop !70

._crit_edge167.i.i:                               ; preds = %.lr.ph166.i.i, %.preheader.i.i
  %i.ny = load i32, ptr %i.t, align 4, !tbaa !28
  %i.nz = ashr i32 %i.ny, 5
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !27
  store i32 %i.oc, ptr %i.t, align 4, !tbaa !28
  %i.od = and i32 %.099.ph.lcssa.i.i, 3
  %.not168.i.i = icmp eq i32 %i.od, 0
  br i1 %.not168.i.i, label %_ZL11compactDataP9UNewTrie2.exit.i, label %.lr.ph171.i.i

.lr.ph171.i.i:                                    ; preds = %._crit_edge167.i.i
  %i.oe = load ptr, ptr %i.n, align 8, !tbaa !21  ; 4 uses
  %i.of = sext i32 %.099.ph.lcssa.i.i to i64      ; 4 uses
  %.pre221.i.i = load i32, ptr %i.p, align 8, !tbaa !23 ; 4 uses
  %indvars.iv.next219.i.i = add nsw i64 %i.of, 1  ; 2 uses
  %i.og = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.of
  store i32 %.pre221.i.i, ptr %i.og, align 4, !tbaa !27
  %i.oh = trunc nsw i64 %indvars.iv.next219.i.i to i32 ; 2 uses
  %i.oi = and i32 %i.oh, 3
  %.not.i30.i = icmp eq i32 %i.oi, 0
  br i1 %.not.i30.i, label %_ZL11compactDataP9UNewTrie2.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph171.i.i
  %indvars.iv.next219.i.i.1 = add nsw i64 %i.of, 2 ; 2 uses
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %indvars.iv.next219.i.i
  store i32 %.pre221.i.i, ptr %i.oj, align 4, !tbaa !27
  %i.ok = trunc nsw i64 %indvars.iv.next219.i.i.1 to i32 ; 2 uses
  %i.ol = and i32 %i.ok, 3
  %.not.i30.i.1 = icmp eq i32 %i.ol, 0
  br i1 %.not.i30.i.1, label %_ZL11compactDataP9UNewTrie2.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %indvars.iv.next219.i.i.2 = add nsw i64 %i.of, 3 ; 2 uses
  %i.om = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %indvars.iv.next219.i.i.1
  store i32 %.pre221.i.i, ptr %i.om, align 4, !tbaa !27
  %i.on = trunc nsw i64 %indvars.iv.next219.i.i.2 to i32 ; 2 uses
  %i.oo = and i32 %i.on, 3
  %.not.i30.i.2 = icmp eq i32 %i.oo, 0
  br i1 %.not.i30.i.2, label %_ZL11compactDataP9UNewTrie2.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %indvars.iv.next219.i.i.3 = add i32 %.099.ph.lcssa.i.i, 4
  %i.op = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %indvars.iv.next219.i.i.2
  store i32 %.pre221.i.i, ptr %i.op, align 4, !tbaa !27
  br label %_ZL11compactDataP9UNewTrie2.exit.i

_ZL11compactDataP9UNewTrie2.exit.i:               ; preds = %.lr.ph171.i.i, %bb.ah, %bb.ai, %bb.aj, %._crit_edge167.i.i
  %.3102.lcssa.i.i = phi i32 [ %.099.ph.lcssa.i.i, %._crit_edge167.i.i ], [ %i.oh, %.lr.ph171.i.i ], [ %i.ok, %bb.ah ], [ %i.on, %bb.ai ], [ %indvars.iv.next219.i.i.3, %bb.aj ] ; 2 uses
  store i32 %.3102.lcssa.i.i, ptr %i.jg, align 8, !tbaa !29
  %i.oq = icmp sgt i32 %i.jc, 65536
  br i1 %i.oq, label %bb.ak, label %bb.bg

bb.ak:                                            ; preds = %_ZL11compactDataP9UNewTrie2.exit.i
  store <4 x i32> <i32 0, i32 64, i32 128, i32 192>, ptr %i.jd, align 8, !tbaa !27
  store <4 x i32> <i32 256, i32 320, i32 384, i32 448>, ptr %i.je, align 8, !tbaa !27
  %i.or = getelementptr inbounds nuw i8, ptr %i.f, i64 144208
  store <4 x i32> <i32 512, i32 576, i32 640, i32 704>, ptr %i.or, align 8, !tbaa !27
  %i.os = getelementptr inbounds nuw i8, ptr %i.f, i64 144224
  store <4 x i32> <i32 768, i32 832, i32 896, i32 960>, ptr %i.os, align 8, !tbaa !27
  %i.ot = getelementptr inbounds nuw i8, ptr %i.f, i64 144240
  store <4 x i32> <i32 1024, i32 1088, i32 1152, i32 1216>, ptr %i.ot, align 8, !tbaa !27
  %i.ou = getelementptr inbounds nuw i8, ptr %i.f, i64 144256
  store <4 x i32> <i32 1280, i32 1344, i32 1408, i32 1472>, ptr %i.ou, align 8, !tbaa !27
  %i.ov = getelementptr inbounds nuw i8, ptr %i.f, i64 144272
  store <4 x i32> <i32 1536, i32 1600, i32 1664, i32 1728>, ptr %i.ov, align 8, !tbaa !27
  %i.ow = getelementptr inbounds nuw i8, ptr %i.f, i64 144288
  store <4 x i32> <i32 1792, i32 1856, i32 1920, i32 1984>, ptr %i.ow, align 8, !tbaa !27
  %i.ox = getelementptr inbounds nuw i8, ptr %i.f, i64 144304
  store i32 2048, ptr %i.ox, align 8, !tbaa !27
  %i.oy = load i32, ptr %i.jb, align 8, !tbaa !24
  %i.oz = add nsw i32 %i.oy, -65536
  %i.pa = ashr i32 %i.oz, 11
  %i.pb = add nsw i32 %i.pa, 2112                 ; 2 uses
  %i.pc = load i32, ptr %i.jj, align 8, !tbaa !34
  %i.pd = icmp sgt i32 %i.pc, 2656
  br i1 %i.pd, label %.lr.ph.i38.i, label %.preheader.i35.i

.lr.ph.i38.i:                                     ; preds = %bb.ak, %.outer.i51.i
  %.061.ph95.i.i = phi i32 [ %.2.i.i, %.outer.i51.i ], [ %i.pb, %bb.ak ] ; 7 uses
  %.163.ph94.i.i = phi i32 [ %.365.i.i, %.outer.i51.i ], [ 2656, %bb.ak ] ; 2 uses
  %.not15.i.i39.i = icmp slt i32 %.061.ph95.i.i, 64
  %i.pe = add nsw i32 %.061.ph95.i.i, -63
  %wide.trip.count.i.i.i = zext nneg i32 %i.pe to i64
  br i1 %.not15.i.i39.i, label %_ZL19findSameIndex2BlockPKiii.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph.i38.i
  %i.pf = sext i32 %.163.ph94.i.i to i64
  br label %.lr.ph.i.i40.i

.preheader.i35.i:                                 ; preds = %.outer.i51.i, %_ZL19findSameIndex2BlockPKiii.exit.i.i.a, %bb.ak
  %.061.ph.lcssa.i.i = phi i32 [ %.061.ph95.i.i, %_ZL19findSameIndex2BlockPKiii.exit.i.i.a ], [ %i.pb, %bb.ak ], [ %.2.i.i, %.outer.i51.i ] ; 4 uses
  br label %bb.bb

.lr.ph.i.i40.i:                                   ; preds = %_ZL19findSameIndex2BlockPKiii.exit.i.i.a, %.lr.ph.i.preheader.i.i
  %indvars.iv.i41.i = phi i64 [ %i.pf, %.lr.ph.i.preheader.i.i ], [ %indvars.iv.next.i53.i, %_ZL19findSameIndex2BlockPKiii.exit.i.i.a ] ; 4 uses
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv.i41.i
  br label %bb.al

bb.al:                                            ; preds = %bb.ar, %.lr.ph.i.i40.i
  %indvars.iv.i.i42.i = phi i64 [ 0, %.lr.ph.i.i40.i ], [ %indvars.iv.next.i.i46.i, %bb.ar ] ; 3 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i42.i
  br label %bb.am

bb.am:                                            ; preds = %bb.aq, %bb.al
  %.010.i.i.i43.i = phi i32 [ 64, %bb.al ], [ %i.qc, %bb.aq ] ; 2 uses
  %.069.i.i.i44.i = phi ptr [ %i.pg, %bb.al ], [ %i.qb, %bb.aq ] ; 5 uses
  %.078.i.i.i45.i = phi ptr [ %i.ph, %bb.al ], [ %i.qa, %bb.aq ] ; 5 uses
  %i.pi = load i32, ptr %.078.i.i.i45.i, align 4, !tbaa !27
  %i.pj = load i32, ptr %.069.i.i.i44.i, align 4, !tbaa !27
  %i.pk = icmp eq i32 %i.pi, %i.pj
  br i1 %i.pk, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.pl = getelementptr inbounds nuw i8, ptr %.078.i.i.i45.i, i64 4
  %i.pm = getelementptr inbounds nuw i8, ptr %.069.i.i.i44.i, i64 4
  %i.pn = load i32, ptr %i.pl, align 4, !tbaa !27
  %i.po = load i32, ptr %i.pm, align 4, !tbaa !27
  %i.pp = icmp eq i32 %i.pn, %i.po
  br i1 %i.pp, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.pq = getelementptr inbounds nuw i8, ptr %.078.i.i.i45.i, i64 8
  %i.pr = getelementptr inbounds nuw i8, ptr %.069.i.i.i44.i, i64 8
  %i.ps = load i32, ptr %i.pq, align 4, !tbaa !27
  %i.pt = load i32, ptr %i.pr, align 4, !tbaa !27
  %i.pu = icmp eq i32 %i.ps, %i.pt
  br i1 %i.pu, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.pv = getelementptr inbounds nuw i8, ptr %.078.i.i.i45.i, i64 12
  %i.pw = getelementptr inbounds nuw i8, ptr %.069.i.i.i44.i, i64 12
  %i.px = load i32, ptr %i.pv, align 4, !tbaa !27
  %i.py = load i32, ptr %i.pw, align 4, !tbaa !27
  %i.pz = icmp eq i32 %i.px, %i.py
  br i1 %i.pz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.qa = getelementptr inbounds nuw i8, ptr %.078.i.i.i45.i, i64 16
  %i.qb = getelementptr inbounds nuw i8, ptr %.069.i.i.i44.i, i64 16
  %i.qc = add nsw i32 %.010.i.i.i43.i, -4
  %.not2110 = icmp eq i32 %.010.i.i.i43.i, 4
  br i1 %.not2110, label %_ZL19findSameIndex2BlockPKiii.exit.i.i.a, label %bb.am, !llvm.loop !71

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %indvars.iv.next.i.i46.i = add nuw nsw i64 %indvars.iv.i.i42.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i46.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZL19findSameIndex2BlockPKiii.exit.loopexit.i.i, label %bb.al, !llvm.loop !72

_ZL19findSameIndex2BlockPKiii.exit.loopexit.i.i:  ; preds = %bb.ar
  %7 = trunc nsw i64 %indvars.iv.i41.i to i32
  br label %_ZL19findSameIndex2BlockPKiii.exit.i.i

_ZL19findSameIndex2BlockPKiii.exit.i.i:           ; preds = %_ZL19findSameIndex2BlockPKiii.exit.loopexit.i.i, %.lr.ph.i38.i
  %.16382.i.i = phi i32 [ %.163.ph94.i.i, %.lr.ph.i38.i ], [ %7, %_ZL19findSameIndex2BlockPKiii.exit.loopexit.i.i ] ; 7 uses
  %8 = sext i32 %.16382.i.i to i64                ; 2 uses
  %9 = getelementptr inbounds [4 x i8], ptr %i.w, i64 %8 ; 2 uses
  %10 = sext i32 %.061.ph95.i.i to i64            ; 7 uses
  br label %bb.as

_ZL19findSameIndex2BlockPKiii.exit.i.i.a:         ; preds = %bb.aq
  %i.qd = trunc nuw nsw i64 %indvars.iv.i.i42.i to i32
  %i.qe = trunc nsw i64 %indvars.iv.i41.i to i32
  %i.qf = ashr i32 %i.qe, 6
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.qg
  store i32 %i.qd, ptr %i.qh, align 4, !tbaa !27
  %indvars.iv.next.i53.i = add nsw i64 %indvars.iv.i41.i, 64 ; 2 uses
  %i.qi = load i32, ptr %i.jj, align 8, !tbaa !34
  %i.qj = sext i32 %i.qi to i64
  %i.qk = icmp slt i64 %indvars.iv.next.i53.i, %i.qj
  br i1 %i.qk, label %.lr.ph.i.i40.i, label %.preheader.i35.i, !llvm.loop !73

bb.as:                                            ; preds = %bb.ay, %_ZL19findSameIndex2BlockPKiii.exit.i.i
  %indvars.iv112.i.i = phi i64 [ 63, %_ZL19findSameIndex2BlockPKiii.exit.i.i ], [ %indvars.iv.next113.i.i.1, %bb.ay ] ; 5 uses
  %i.ql = sub nsw i64 %10, %indvars.iv112.i.i
  %i.qm = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ql
  %i.qn = trunc nuw nsw i64 %indvars.iv112.i.i to i32 ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %bb.as
  %.010.i.i47.i = phi i32 [ %i.qn, %bb.as ], [ %i.qt, %bb.au ] ; 2 uses
  %.069.i.i48.i = phi ptr [ %9, %bb.as ], [ %i.qs, %bb.au ] ; 2 uses
  %.078.i.i49.i = phi ptr [ %i.qm, %bb.as ], [ %i.qr, %bb.au ] ; 2 uses
  %i.qo = load i32, ptr %.078.i.i49.i, align 4, !tbaa !27
  %i.qp = load i32, ptr %.069.i.i48.i, align 4, !tbaa !27
  %i.qq = icmp eq i32 %i.qo, %i.qp
  br i1 %i.qq, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.qr = getelementptr inbounds nuw i8, ptr %.078.i.i49.i, i64 4
  %i.qs = getelementptr inbounds nuw i8, ptr %.069.i.i48.i, i64 4
  %i.qt = add nsw i32 %.010.i.i47.i, -1
  %i.qu = icmp sgt i32 %.010.i.i47.i, 1
  br i1 %i.qu, label %bb.at, label %.critedge.i.i, !llvm.loop !71

bb.av:                                            ; preds = %bb.at
  %i.qv = icmp samesign ugt i64 %indvars.iv112.i.i, 1
  br i1 %i.qv, label %bb.aw, label %.critedge71.i.i

bb.aw:                                            ; preds = %bb.av
  %indvars.iv.next113.i.i = add nsw i64 %indvars.iv112.i.i, -1 ; 2 uses
  %i.qw = sub nsw i64 %10, %indvars.iv.next113.i.i
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.qw
  %i.qy = trunc nuw nsw i64 %indvars.iv.next113.i.i to i32 ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.aw
  %.010.i.i47.i.1 = phi i32 [ %i.qy, %bb.aw ], [ %i.re, %bb.az ] ; 2 uses
  %.069.i.i48.i.1 = phi ptr [ %9, %bb.aw ], [ %i.rd, %bb.az ] ; 2 uses
  %.078.i.i49.i.1 = phi ptr [ %i.qx, %bb.aw ], [ %i.rc, %bb.az ] ; 2 uses
  %i.qz = load i32, ptr %.078.i.i49.i.1, align 4, !tbaa !27
  %i.ra = load i32, ptr %.069.i.i48.i.1, align 4, !tbaa !27
  %i.rb = icmp eq i32 %i.qz, %i.ra
  br i1 %i.rb, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %indvars.iv.next113.i.i.1 = add nsw i64 %indvars.iv112.i.i, -2
  br label %bb.as

bb.az:                                            ; preds = %bb.ax
  %i.rc = getelementptr inbounds nuw i8, ptr %.078.i.i49.i.1, i64 4
  %i.rd = getelementptr inbounds nuw i8, ptr %.069.i.i48.i.1, i64 4
  %i.re = add nsw i32 %.010.i.i47.i.1, -1
  %i.rf = icmp sgt i32 %.010.i.i47.i.1, 1
  br i1 %i.rf, label %bb.ax, label %.critedge.i.i, !llvm.loop !71

.critedge71.i.i:                                  ; preds = %bb.av
  %.old.i50.i = icmp slt i32 %.061.ph95.i.i, %.16382.i.i
  %i.rg = ashr i32 %.16382.i.i, 6
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.rh ; 2 uses
  br i1 %.old.i50.i, label %.critedge.thread.i.i, label %bb.ba

.critedge.thread.i.i:                             ; preds = %.critedge71.i.i
  store i32 %.061.ph95.i.i, ptr %i.ri, align 4, !tbaa !27
  br label %.lr.ph91.preheader.i.i

.critedge.i.i:                                    ; preds = %bb.au, %bb.az
  %.lcssa1753 = phi i32 [ %i.qy, %bb.az ], [ %i.qn, %bb.au ] ; 3 uses
  %i.rj = sub nsw i32 %.061.ph95.i.i, %.lcssa1753
  %i.rk = ashr i32 %.16382.i.i, 6
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.rl
  store i32 %i.rj, ptr %i.rm, align 4, !tbaa !27
  %i.rn = add i32 %.16382.i.i, %.lcssa1753
  %i.ro = sub nuw nsw i32 64, %.lcssa1753
  %.pre707.i = sext i32 %i.rn to i64
  br label %.lr.ph91.preheader.i.i

.lr.ph91.preheader.i.i:                           ; preds = %.critedge.i.i, %.critedge.thread.i.i
  %.pre-phi.i = phi i64 [ %.pre707.i, %.critedge.i.i ], [ %8, %.critedge.thread.i.i ] ; 5 uses
  %.080133.i.i = phi i32 [ %i.ro, %.critedge.i.i ], [ 64, %.critedge.thread.i.i ] ; 5 uses
  %i.rp = zext nneg i32 %.080133.i.i to i64       ; 2 uses
  %min.iters.check1671 = icmp samesign ult i32 %.080133.i.i, 8
  br i1 %min.iters.check1671, label %.lr.ph91.i.i.preheader, label %vector.memcheck1668

vector.memcheck1668:                              ; preds = %.lr.ph91.preheader.i.i
  %i.rq = sub nsw i64 %10, %.pre-phi.i
  %i.rr = shl nsw i64 %i.rq, 2
  %i.rs = add nsw i64 %i.rr, -1
  %diff.check1669 = icmp ult i64 %i.rs, 31
  br i1 %diff.check1669, label %.lr.ph91.i.i.preheader, label %vector.ph1672

vector.ph1672:                                    ; preds = %vector.memcheck1668
  %n.vec1673 = and i64 %i.rp, 120                 ; 5 uses
  %i.rt = add nsw i64 %.pre-phi.i, %n.vec1673     ; 2 uses
  %i.ru = add nsw i64 %n.vec1673, %10             ; 2 uses
  %i.rv = trunc nuw nsw i64 %n.vec1673 to i32
  %i.rw = sub nsw i32 %.080133.i.i, %i.rv
  %i.rx = getelementptr [4 x i8], ptr %i.w, i64 %.pre-phi.i
  %invariant.gep2467 = getelementptr [4 x i8], ptr %i.w, i64 %10
  br label %vector.body1674

vector.body1674:                                  ; preds = %vector.body1674, %vector.ph1672
  %index1675 = phi i64 [ 0, %vector.ph1672 ], [ %index.next1678, %vector.body1674 ] ; 3 uses
  %i.ry = getelementptr [4 x i8], ptr %i.rx, i64 %index1675 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  %wide.load1676 = load <4 x i32>, ptr %i.ry, align 4, !tbaa !27
  %wide.load1677 = load <4 x i32>, ptr %i.rz, align 4, !tbaa !27
  %gep2468 = getelementptr [4 x i8], ptr %invariant.gep2467, i64 %index1675 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %gep2468, i64 16
  store <4 x i32> %wide.load1676, ptr %gep2468, align 4, !tbaa !27
  store <4 x i32> %wide.load1677, ptr %i.sa, align 4, !tbaa !27
  %index.next1678 = add nuw i64 %index1675, 8     ; 2 uses
  %i.sb = icmp eq i64 %index.next1678, %n.vec1673
  br i1 %i.sb, label %middle.block1679, label %vector.body1674, !llvm.loop !74

middle.block1679:                                 ; preds = %vector.body1674
  %cmp.n1680 = icmp eq i64 %n.vec1673, %i.rp
  br i1 %cmp.n1680, label %.outer.loopexit.i52.i, label %.lr.ph91.i.i.preheader

.lr.ph91.i.i.preheader:                           ; preds = %vector.memcheck1668, %.lr.ph91.preheader.i.i, %middle.block1679
  %indvars.iv120.i.i.ph = phi i64 [ %.pre-phi.i, %vector.memcheck1668 ], [ %.pre-phi.i, %.lr.ph91.preheader.i.i ], [ %i.rt, %middle.block1679 ]
  %indvars.iv118.i.i.ph = phi i64 [ %10, %vector.memcheck1668 ], [ %10, %.lr.ph91.preheader.i.i ], [ %i.ru, %middle.block1679 ]
  %.16788.i.i.ph = phi i32 [ %.080133.i.i, %vector.memcheck1668 ], [ %.080133.i.i, %.lr.ph91.preheader.i.i ], [ %i.rw, %middle.block1679 ]
  br label %.lr.ph91.i.i

.lr.ph91.i.i:                                     ; preds = %.lr.ph91.i.i.preheader, %.lr.ph91.i.i
  %indvars.iv120.i.i = phi i64 [ %indvars.iv.next121.i.i, %.lr.ph91.i.i ], [ %indvars.iv120.i.i.ph, %.lr.ph91.i.i.preheader ] ; 2 uses
  %indvars.iv118.i.i = phi i64 [ %indvars.iv.next119.i.i, %.lr.ph91.i.i ], [ %indvars.iv118.i.i.ph, %.lr.ph91.i.i.preheader ] ; 2 uses
  %.16788.i.i = phi i32 [ %i.sf, %.lr.ph91.i.i ], [ %.16788.i.i.ph, %.lr.ph91.i.i.preheader ] ; 2 uses
  %indvars.iv.next121.i.i = add nsw i64 %indvars.iv120.i.i, 1 ; 2 uses
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv120.i.i
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !27
  %indvars.iv.next119.i.i = add nsw i64 %indvars.iv118.i.i, 1 ; 2 uses
  %i.se = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i
  store i32 %i.sd, ptr %i.se, align 4, !tbaa !27
  %i.sf = add nsw i32 %.16788.i.i, -1
  %i.sg = icmp samesign ugt i32 %.16788.i.i, 1
  br i1 %i.sg, label %.lr.ph91.i.i, label %.outer.loopexit.i52.i, !llvm.loop !75

bb.ba:                                            ; preds = %.critedge71.i.i
  store i32 %.16382.i.i, ptr %i.ri, align 4, !tbaa !27
  %i.sh = add nsw i32 %.16382.i.i, 64             ; 2 uses
  br label %.outer.i51.i

.outer.loopexit.i52.i:                            ; preds = %.lr.ph91.i.i, %middle.block1679
  %indvars.iv.next121.i.i.lcssa = phi i64 [ %i.rt, %middle.block1679 ], [ %indvars.iv.next121.i.i, %.lr.ph91.i.i ]
  %indvars.iv.next119.i.i.lcssa = phi i64 [ %i.ru, %middle.block1679 ], [ %indvars.iv.next119.i.i, %.lr.ph91.i.i ]
  %i.si = trunc nsw i64 %indvars.iv.next121.i.i.lcssa to i32
  %i.sj = trunc nsw i64 %indvars.iv.next119.i.i.lcssa to i32
  br label %.outer.i51.i

.outer.i51.i:                                     ; preds = %.outer.loopexit.i52.i, %bb.ba
  %.365.i.i = phi i32 [ %i.sh, %bb.ba ], [ %i.si, %.outer.loopexit.i52.i ] ; 2 uses
  %.2.i.i = phi i32 [ %i.sh, %bb.ba ], [ %i.sj, %.outer.loopexit.i52.i ] ; 2 uses
  %i.sk = load i32, ptr %i.jj, align 8, !tbaa !34
  %i.sl = icmp slt i32 %.365.i.i, %i.sk
  br i1 %i.sl, label %.lr.ph.i38.i, label %.preheader.i35.i, !llvm.loop !73

bb.bb:                                            ; preds = %bb.bb, %.preheader.i35.i
  %indvars.iv125.i.i = phi i64 [ 0, %.preheader.i35.i ], [ %indvars.iv.next126.i.i.1, %bb.bb ] ; 3 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv125.i.i ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !27
  %i.so = ashr i32 %i.sn, 6
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.sp
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !27
  store i32 %i.sr, ptr %i.sm, align 4, !tbaa !27
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv125.i.i
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 4 ; 2 uses
  %i.su = load i32, ptr %i.st, align 4, !tbaa !27
  %i.sv = ashr i32 %i.su, 6
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.sw
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !27
  store i32 %i.sy, ptr %i.st, align 4, !tbaa !27
  %indvars.iv.next126.i.i.1 = add nuw nsw i64 %indvars.iv125.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next126.i.i.1, 544
  br i1 %exitcond.not.i.i.1, label %bb.bc, label %bb.bb, !llvm.loop !76

bb.bc:                                            ; preds = %bb.bb
  %i.sz = load i32, ptr %i.r, align 8, !tbaa !33
  %i.ta = ashr i32 %i.sz, 6
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.tb
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !27
  store i32 %i.td, ptr %i.r, align 8, !tbaa !33
  %i.te = and i32 %.061.ph.lcssa.i.i, 3
  %.not98.i.i = icmp eq i32 %i.te, 0
  br i1 %.not98.i.i, label %_ZL13compactIndex2P9UNewTrie2.exit.i, label %.lr.ph100.i.i

.lr.ph100.i.i:                                    ; preds = %bb.bc
  %i.tf = sext i32 %.061.ph.lcssa.i.i to i64      ; 4 uses
  %indvars.iv.next129.i.i = add nsw i64 %i.tf, 1  ; 2 uses
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.tf
  store i32 262140, ptr %i.tg, align 4, !tbaa !27
  %i.th = trunc nsw i64 %indvars.iv.next129.i.i to i32 ; 2 uses
  %i.ti = and i32 %i.th, 3
  %.not.i36.i = icmp eq i32 %i.ti, 0
  br i1 %.not.i36.i, label %_ZL13compactIndex2P9UNewTrie2.exit.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph100.i.i
  %indvars.iv.next129.i.i.1 = add nsw i64 %i.tf, 2 ; 2 uses
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv.next129.i.i
  store i32 262140, ptr %i.tj, align 4, !tbaa !27
  %i.tk = trunc nsw i64 %indvars.iv.next129.i.i.1 to i32 ; 2 uses
  %i.tl = and i32 %i.tk, 3
  %.not.i36.i.1 = icmp eq i32 %i.tl, 0
  br i1 %.not.i36.i.1, label %_ZL13compactIndex2P9UNewTrie2.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %indvars.iv.next129.i.i.2 = add nsw i64 %i.tf, 3 ; 2 uses
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv.next129.i.i.1
  store i32 262140, ptr %i.tm, align 4, !tbaa !27
  %i.tn = trunc nsw i64 %indvars.iv.next129.i.i.2 to i32 ; 2 uses
  %i.to = and i32 %i.tn, 3
  %.not.i36.i.2 = icmp eq i32 %i.to, 0
  br i1 %.not.i36.i.2, label %_ZL13compactIndex2P9UNewTrie2.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %indvars.iv.next129.i.i.3 = add i32 %.061.ph.lcssa.i.i, 4
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv.next129.i.i.2
  store i32 262140, ptr %i.tp, align 4, !tbaa !27
  br label %_ZL13compactIndex2P9UNewTrie2.exit.i

_ZL13compactIndex2P9UNewTrie2.exit.i:             ; preds = %.lr.ph100.i.i, %bb.bd, %bb.be, %bb.bf, %bb.bc
  %.3.lcssa.i.i = phi i32 [ %.061.ph.lcssa.i.i, %bb.bc ], [ %i.th, %.lr.ph100.i.i ], [ %i.tk, %bb.bd ], [ %i.tn, %bb.be ], [ %indvars.iv.next129.i.i.3, %bb.bf ]
  store i32 %.3.lcssa.i.i, ptr %i.jj, align 8, !tbaa !34
  %.pre.i = load i32, ptr %i.jg, align 8, !tbaa !29
  br label %bb.bg

bb.bg:                                            ; preds = %_ZL13compactIndex2P9UNewTrie2.exit.i, %_ZL11compactDataP9UNewTrie2.exit.i
  %i.tq = phi i32 [ %.pre.i, %_ZL13compactIndex2P9UNewTrie2.exit.i ], [ %.3102.lcssa.i.i, %_ZL11compactDataP9UNewTrie2.exit.i ] ; 2 uses
  %i.tr = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.ts = add nsw i32 %i.tq, 1
  store i32 %i.ts, ptr %i.jg, align 8, !tbaa !29
  %i.tt = sext i32 %i.tq to i64
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.tt
  store i32 %.056.i, ptr %i.tu, align 4, !tbaa !27
  %i.tv = load i32, ptr %i.jg, align 8, !tbaa !29 ; 2 uses
  %i.tw = and i32 %i.tv, 3
  %.not29381.i = icmp eq i32 %i.tw, 0
  br i1 %.not29381.i, label %_ZL11compactTrieP6UTrie2P10UErrorCode.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bg
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.pre706.i = load i32, ptr %i.tx, align 4, !tbaa !16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i
  %i.ty = phi i32 [ %i.tv, %.lr.ph.i ], [ %i.uc, %bb.bh ] ; 2 uses
  %i.tz = add nsw i32 %i.ty, 1
  store i32 %i.tz, ptr %i.jg, align 8, !tbaa !29
  %i.ua = sext i32 %i.ty to i64
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.ua
  store i32 %.pre706.i, ptr %i.ub, align 4, !tbaa !27
  %i.uc = load i32, ptr %i.jg, align 8, !tbaa !29 ; 2 uses
  %i.ud = and i32 %i.uc, 3
  %.not29.i = icmp eq i32 %i.ud, 0
  br i1 %.not29.i, label %_ZL11compactTrieP6UTrie2P10UErrorCode.exit, label %bb.bh, !llvm.loop !77

_ZL11compactTrieP6UTrie2P10UErrorCode.exit:       ; preds = %bb.bh, %bb.bg
  store i8 1, ptr %i.k, align 4, !tbaa !26
  %.pre = load i32, ptr %2, align 4, !tbaa !9
  %i.ue = icmp slt i32 %.pre, 1
  br i1 %i.ue, label %bb.bi, label %_ZL11compactTrieP6UTrie2P10UErrorCode.exit.thread

bb.bi:                                            ; preds = %_ZL11compactTrieP6UTrie2P10UErrorCode.exit, %bb.g
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !18 ; 4 uses
  %i.uh = icmp slt i32 %i.ug, 65537               ; 2 uses
  br i1 %i.uh, label %.thread, label %bb.bj

.thread:                                          ; preds = %bb.bi
  %i.ui = icmp eq i32 %1, 0                       ; 2 uses
  %.0127.149 = select i1 %i.ui, i32 2112, i32 0
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.uj = getelementptr inbounds nuw i8, ptr %i.f, i64 144144
  %i.uk = load i32, ptr %i.uj, align 8, !tbaa !34 ; 3 uses
  %i.ul = icmp eq i32 %1, 0                       ; 2 uses
  %.0127. = select i1 %i.ul, i32 %i.uk, i32 0
  %i.um = icmp sgt i32 %i.uk, 65535
  br i1 %i.um, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %.thread, %bb.bj
  %.0127.151 = phi i32 [ %.0127.149, %.thread ], [ %.0127., %bb.bj ] ; 39 uses
  %i.un = phi i1 [ %i.ui, %.thread ], [ %i.ul, %bb.bj ]
  %.0127150 = phi i32 [ 2112, %.thread ], [ %i.uk, %bb.bj ] ; 3 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.f, i64 144164 ; 2 uses
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !28
  %i.uq = add nsw i32 %i.up, %.0127.151
  %i.ur = icmp sgt i32 %i.uq, 65535
  %i.us = icmp sgt i32 %.0127.151, 63359
  %or.cond = or i1 %i.us, %i.ur
  br i1 %or.cond, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ut = getelementptr inbounds nuw i8, ptr %i.f, i64 144152 ; 2 uses
  %i.uu = load i32, ptr %i.ut, align 8, !tbaa !29 ; 2 uses
  %i.uv = add nsw i32 %i.uu, %.0127.151
  %i.uw = icmp sgt i32 %i.uv, 262140
  br i1 %i.uw, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  store i32 8, ptr %2, align 4, !tbaa !9
  br label %_ZL11compactTrieP6UTrie2P10UErrorCode.exit.thread

bb.bn:                                            ; preds = %bb.bl
  %i.ux = shl nsw i32 %.0127150, 1
  %i.uy = add nsw i32 %i.ux, 16
  %.pn.v = select i1 %i.un, i32 1, i32 2
  %.pn = shl nsw i32 %i.uu, %.pn.v
  %.0128 = add nsw i32 %i.uy, %.pn                ; 2 uses
  %i.uz = sext i32 %.0128 to i64
  %i.va = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.uz) #7 ; 43 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.va, ptr %i.vb, align 8, !tbaa !35
  %i.vc = icmp eq ptr %i.va, null
  br i1 %i.vc, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 7, ptr %2, align 4, !tbaa !9
  br label %_ZL11compactTrieP6UTrie2P10UErrorCode.exit.thread

bb.bp:                                            ; preds = %bb.bn
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.0128, ptr %i.vd, align 8, !tbaa !36
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 1, ptr %i.ve, align 4, !tbaa !37
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0127150, ptr %i.vf, align 8, !tbaa !85
  %i.vg = load i32, ptr %i.ut, align 8, !tbaa !29 ; 9 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.vg, ptr %i.vh, align 4, !tbaa !86
  br i1 %i.uh, label %vector.ph1685, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.vi = getelementptr inbounds nuw i8, ptr %i.f, i64 144160
  %i.vj = load i32, ptr %i.vi, align 8, !tbaa !33
  %i.vk = trunc i32 %i.vj to i16
  br label %vector.ph1685
end_hunk_0
