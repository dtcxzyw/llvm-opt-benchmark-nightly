inline.NumInlined: 720
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@LZ4HC_compress_optimal:bb.a
  %i.wb = add nsw i64 %.051.i442.lcssa, -255
  %i.wc = getelementptr inbounds nuw i8, ptr %.21.lcssa, i64 1
  store i8 -1, ptr %.21.lcssa, align 1, !tbaa !27
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %._crit_edge1991
  %.22 = phi ptr [ %i.wc, %bb.cy ], [ %.21.lcssa, %._crit_edge1991 ] ; 2 uses
  %.1.i443 = phi i64 [ %i.wb, %bb.cy ], [ %.051.i442.lcssa, %._crit_edge1991 ]
  %i.wd = trunc nuw i64 %.1.i443 to i8
  %i.we = getelementptr inbounds nuw i8, ptr %.22, i64 1
  store i8 %i.wd, ptr %.22, align 1, !tbaa !27
  br label %select.unfold1610

bb.da:                                            ; preds = %bb.cw
  %i.wf = trunc nuw nsw i64 %i.vj to i8
  %i.wg = load i8, ptr %.013151997, align 1, !tbaa !27
  %i.wh = add i8 %i.wg, %i.wf
  store i8 %i.wh, ptr %.013151997, align 1, !tbaa !27
  br label %select.unfold1610

.lr.ph1829:                                       ; preds = %LZ4HC_literalsPrice.exit929.2, %bb.db
  %i.wi = phi i32 [ %i.xr, %bb.db ], [ %i.xq, %LZ4HC_literalsPrice.exit929.2 ]
  %.0.i928.3 = phi i32 [ %i.xx, %bb.db ], [ %i.xq, %LZ4HC_literalsPrice.exit929.2 ]
  store i32 1, ptr %i.be, align 4, !tbaa !89
  store i32 0, ptr %i.bf, align 4, !tbaa !91
  store i32 %i.wi, ptr %i.bg, align 4, !tbaa !92
  store i32 %.0.i928.3, ptr %i.bd, align 4, !tbaa !93
  %i.wj = icmp sgt i32 %i.bn, 14
  %i.wk = add nsw i32 %i.bn, -15
  %i.wl = udiv i32 %i.wk, 255
  %i.wm = add nuw nsw i32 %i.bn, 1
  %i.wn = add nuw nsw i32 %i.wm, %i.wl
  %spec.select2025 = select i1 %i.wj, i32 %i.wn, i32 %i.bn ; 2 uses
  %i.wo = add nsw i32 %spec.select2025, 3
  %invariant.op = add i32 %spec.select2025, 4
  br label %LZ4HC_literalsPrice.exit.i935

LZ4HC_literalsPrice.exit929.thread:               ; preds = %.preheader1709.preheader
  %i.wp = add i32 %i.tu, -15
  %i.wq = udiv i32 %i.wp, 255
  %i.wr = add nuw nsw i64 %i.ts, 1                ; 2 uses
  %i.ws = trunc nuw nsw i64 %i.wr to i32          ; 2 uses
  %i.wt = add nuw nsw i32 %i.wq, %i.ws
  store i32 1, ptr %i.as, align 4, !tbaa !89
  store i32 0, ptr %i.at, align 4, !tbaa !91
  store i32 %i.bn, ptr %i.au, align 4, !tbaa !92
  store i32 %i.wt, ptr %i.g, align 4, !tbaa !93
  %i.wu = trunc nuw i64 %i.wr to i32
  br label %LZ4HC_literalsPrice.exit929.1.thread

LZ4HC_literalsPrice.exit929:                      ; preds = %.preheader1709.preheader
  %.pre2199 = add i32 %i.tu, 1                    ; 3 uses
  store i32 1, ptr %i.ah, align 4, !tbaa !89
  store i32 0, ptr %i.ai, align 4, !tbaa !91
  store i32 %i.bn, ptr %i.aj, align 4, !tbaa !92
  store i32 %i.bn, ptr %i.g, align 4, !tbaa !93
  %i.wv = icmp eq i64 %sext2402, 60129542144
  br i1 %i.wv, label %LZ4HC_literalsPrice.exit929.1.thread, label %LZ4HC_literalsPrice.exit929.1

LZ4HC_literalsPrice.exit929.1.thread:             ; preds = %LZ4HC_literalsPrice.exit929, %LZ4HC_literalsPrice.exit929.thread
  %.pre-phi2420 = phi i32 [ %i.wu, %LZ4HC_literalsPrice.exit929.thread ], [ 15, %LZ4HC_literalsPrice.exit929 ] ; 2 uses
  %.pre-phi22002419 = phi i32 [ %i.ws, %LZ4HC_literalsPrice.exit929.thread ], [ %.pre2199, %LZ4HC_literalsPrice.exit929 ]
  %i.ww = add i32 %.pre-phi2420, -15
  %i.wx = udiv i32 %i.ww, 255
  %i.wy = add nuw i32 %.pre-phi2420, 1
  %i.wz = add nuw nsw i32 %i.wy, %i.wx
  store i32 1, ptr %i.aw, align 4, !tbaa !89
  store i32 0, ptr %i.ax, align 4, !tbaa !91
  store i32 %.pre-phi22002419, ptr %i.ay, align 4, !tbaa !92
  store i32 %i.wz, ptr %i.av, align 4, !tbaa !93
  %i.xa = trunc i64 %i.bm to i32
  %i.xb = add i32 %i.xa, 2
  br label %LZ4HC_literalsPrice.exit929.2.thread

LZ4HC_literalsPrice.exit929.1:                    ; preds = %LZ4HC_literalsPrice.exit929
  store i32 1, ptr %i.al, align 4, !tbaa !89
  store i32 0, ptr %i.am, align 4, !tbaa !91
  store i32 %.pre2199, ptr %i.an, align 4, !tbaa !92
  store i32 %.pre2199, ptr %i.ak, align 4, !tbaa !93
  %i.xc = icmp sgt i64 %i.ts, 12
  %i.xd = trunc i64 %i.bm to i32
  %i.xe = add i32 %i.xd, 2                        ; 3 uses
  br i1 %i.xc, label %LZ4HC_literalsPrice.exit929.2.thread, label %LZ4HC_literalsPrice.exit929.2

LZ4HC_literalsPrice.exit929.2.thread:             ; preds = %LZ4HC_literalsPrice.exit929.1, %LZ4HC_literalsPrice.exit929.1.thread
  %i.xf = phi i32 [ %i.xb, %LZ4HC_literalsPrice.exit929.1.thread ], [ %i.xe, %LZ4HC_literalsPrice.exit929.1 ]
  %i.xg = trunc i64 %i.bm to i32
  %i.xh = add i32 %i.xg, -13
  %i.xi = udiv i32 %i.xh, 255
  %i.xj = trunc i64 %i.bm to i32
  %i.xk = add i32 %i.xj, 3
  %i.xl = add nuw nsw i32 %i.xk, %i.xi
  store i32 1, ptr %i.ba, align 4, !tbaa !89
  store i32 0, ptr %i.bb, align 4, !tbaa !91
  store i32 %i.xf, ptr %i.bc, align 4, !tbaa !92
  store i32 %i.xl, ptr %i.az, align 4, !tbaa !93
  %i.xm = trunc i64 %i.bm to i32
  %i.xn = add i32 %i.xm, 3
  br label %bb.db

LZ4HC_literalsPrice.exit929.2:                    ; preds = %LZ4HC_literalsPrice.exit929.1
  store i32 1, ptr %i.ap, align 4, !tbaa !89
  store i32 0, ptr %i.aq, align 4, !tbaa !91
  store i32 %i.xe, ptr %i.ar, align 4, !tbaa !92
  store i32 %i.xe, ptr %i.ao, align 4, !tbaa !93
  %i.xo = icmp eq i64 %sext2402, 51539607552
  %i.xp = trunc i64 %i.bm to i32
  %i.xq = add i32 %i.xp, 3                        ; 3 uses
  br i1 %i.xo, label %bb.db, label %.lr.ph1829

bb.db:                                            ; preds = %LZ4HC_literalsPrice.exit929.2.thread, %LZ4HC_literalsPrice.exit929.2
  %i.xr = phi i32 [ %i.xn, %LZ4HC_literalsPrice.exit929.2.thread ], [ %i.xq, %LZ4HC_literalsPrice.exit929.2 ]
  %i.xs = trunc i64 %i.bm to i32
  %i.xt = add i32 %i.xs, -12
  %i.xu = udiv i32 %i.xt, 255
  %i.xv = trunc i64 %i.bm to i32
  %i.xw = add i32 %i.xv, 4
  %i.xx = add nuw nsw i32 %i.xw, %i.xu
  br label %.lr.ph1829

LZ4HC_literalsPrice.exit.i935:                    ; preds = %.lr.ph1829, %LZ4HC_sequencePrice.exit938
  %indvars.iv2149 = phi i64 [ 4, %.lr.ph1829 ], [ %indvars.iv.next2150, %LZ4HC_sequencePrice.exit938 ] ; 6 uses
  %i.xy = icmp samesign ugt i64 %indvars.iv2149, 18
  br i1 %i.xy, label %bb.dc, label %LZ4HC_sequencePrice.exit938

bb.dc:                                            ; preds = %LZ4HC_literalsPrice.exit.i935
  %i.xz = trunc i64 %indvars.iv2149 to i32
  %i.ya = add i32 %i.xz, -19
  %i.yb = udiv i32 %i.ya, 255
  %.reass = add i32 %i.yb, %invariant.op
  br label %LZ4HC_sequencePrice.exit938

LZ4HC_sequencePrice.exit938:                      ; preds = %LZ4HC_literalsPrice.exit.i935, %bb.dc
  %.0.i937 = phi i32 [ %.reass, %bb.dc ], [ %i.wo, %LZ4HC_literalsPrice.exit.i935 ]
  %i.yc = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv2149 ; 4 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.ye = trunc nuw nsw i64 %indvars.iv2149 to i32
  store i32 %i.ye, ptr %i.yd, align 4, !tbaa !89
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yc, i64 4
  store i32 %.22373.i.i706, ptr %i.yf, align 4, !tbaa !91
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yc, i64 12
  store i32 %i.bn, ptr %i.yg, align 4, !tbaa !92
  store i32 %.0.i937, ptr %i.yc, align 4, !tbaa !93
  %indvars.iv.next2150 = add nuw nsw i64 %indvars.iv2149, 1
  %exitcond.not = icmp eq i64 %indvars.iv2149, %.sroa.03.sroa.4.0.insert.shift.i722
  br i1 %exitcond.not, label %.lr.ph1954, label %LZ4HC_literalsPrice.exit.i935, !llvm.loop !94

.lr.ph1954:                                       ; preds = %LZ4HC_sequencePrice.exit938
  %i.yh = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.03.sroa.4.0.insert.shift.i722 ; 3 uses
  %i.yi = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.03.sroa.4.0.insert.shift.i722 ; 4 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yi, i64 24
  store i32 1, ptr %i.yk, align 4, !tbaa !89
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yi, i64 20
  store i32 0, ptr %i.yl, align 4, !tbaa !91
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yi, i64 28
  store i32 1, ptr %i.ym, align 4, !tbaa !92
  %i.yn = load i32, ptr %i.yh, align 4, !tbaa !93
  %i.yo = add nsw i32 %i.yn, 1
  store i32 %i.yo, ptr %i.yj, align 4, !tbaa !93
  %i.yp = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.03.sroa.4.0.insert.shift.i722 ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 32
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yp, i64 40
  store i32 1, ptr %i.yr, align 4, !tbaa !89
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yp, i64 36
  store i32 0, ptr %i.ys, align 4, !tbaa !91
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yp, i64 44
  store i32 2, ptr %i.yt, align 4, !tbaa !92
  %i.yu = load i32, ptr %i.yh, align 4, !tbaa !93
  %i.yv = add nsw i32 %i.yu, 2
  store i32 %i.yv, ptr %i.yq, align 4, !tbaa !93
  %i.yw = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.03.sroa.4.0.insert.shift.i722 ; 4 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 48
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 56
  store i32 1, ptr %i.yy, align 4, !tbaa !89
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 52
  store i32 0, ptr %i.yz, align 4, !tbaa !91
  %i.za = getelementptr inbounds nuw i8, ptr %i.yw, i64 60
  store i32 3, ptr %i.za, align 4, !tbaa !92
  %i.zb = load i32, ptr %i.yh, align 4, !tbaa !93
  %i.zc = add nsw i32 %i.zb, 3
  store i32 %i.zc, ptr %i.yx, align 4, !tbaa !93
  %i.zd = sub nsw i64 0, %i.cb
  %invariant.gep1834 = getelementptr i8, ptr %i.bp, i64 %i.zd ; 6 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.bo, i64 262144 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.bo, i64 262152 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.bo, i64 262168 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.bo, i64 131072 ; 2 uses
  %i.zi = add i32 %i.bq, 1
  %i.zj = trunc i64 %i.bk to i32
  %i.zk = add i32 %i.zi, %i.zj
  %i.zl = trunc i64 %i.br to i32
  %i.zm = sub i32 %i.zk, %i.zl                    ; 2 uses
  %.not.i11532709 = icmp slt i64 %i.cd, 4
  %.not.i12412750 = icmp slt i64 %i.cd, 4
  br label %bb.dd

bb.dd:                                            ; preds = %.lr.ph1954, %.loopexit
  %indvar = phi i32 [ 0, %.lr.ph1954 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %indvars.iv2175 = phi i64 [ 1, %.lr.ph1954 ], [ %indvars.iv.next2176, %.loopexit ] ; 12 uses
  %.03681951 = phi i32 [ %.sroa.0162.4.extract.trunc, %.lr.ph1954 ], [ %.4372.ph, %.loopexit ] ; 13 uses
  %i.zn = add i32 %i.zm, %indvar
  %i.zo = zext i32 %i.zn to i64                   ; 2 uses
  %i.zp = add i32 %i.zm, %indvar
  %i.zq = zext i32 %i.zp to i64                   ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.013271995, i64 %indvars.iv2175 ; 21 uses
  %i.zs = icmp ugt ptr %i.zr, %i.k
  br i1 %i.zs, label %.thread1595, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.zt = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv2175 ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !93
  %i.zw = load i32, ptr %i.zt, align 4, !tbaa !93 ; 2 uses
  %.not413 = icmp sgt i32 %i.zv, %i.zw            ; 2 uses
  br i1 %.not412, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %bb.de
  br i1 %.not413, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zt, i64 64
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !93
  %i.zz = add nsw i32 %i.zw, 3
  %i.aaa = icmp slt i32 %i.zy, %i.zz
  br i1 %i.aaa, label %.loopexit, label %bb.di

bb.dh:                                            ; preds = %bb.de
  br i1 %.not413, label %bb.gx, label %.loopexit

bb.di:                                            ; preds = %bb.df, %bb.dg
  %i.aab = ptrtoint ptr %i.zr to i64
  %i.aac = sub i64 %i.aab, %i.br                  ; 2 uses
  %i.aad = trunc i64 %i.aac to i32
  %i.aae = add i32 %i.bq, %i.aad                  ; 10 uses
  %i.aaf = icmp ugt i32 %i.bw, %i.aae             ; 2 uses
  %i.aag = add i32 %i.aae, -65535
  %i.aah = select i1 %i.aaf, i32 %i.bv, i32 %i.aag ; 5 uses
  %.val947 = load i32, ptr %i.zr, align 1, !tbaa !15 ; 18 uses
  %i.aai = load i32, ptr %i.w, align 8, !tbaa !32 ; 4 uses
  %i.aaj = icmp ult i32 %i.aai, %i.aae
  br i1 %i.aaj, label %.lr.ph1833.preheader, label %LZ4HC_Insert.exit.i.i456

.lr.ph1833.preheader:                             ; preds = %bb.di
  %i.aak = zext i32 %i.aai to i64                 ; 6 uses
  %i.aal = zext i32 %i.aae to i64
  %i.aam = sub nsw i64 %i.zq, %i.aak
  %xtraiter2960 = and i64 %i.aam, 1
  %lcmp.mod2961.not = icmp eq i64 %xtraiter2960, 0
  br i1 %lcmp.mod2961.not, label %.lr.ph1833.prol.loopexit, label %.lr.ph1833.prol

.lr.ph1833.prol:                                  ; preds = %.lr.ph1833.preheader
  %gep1835.prol = getelementptr i8, ptr %invariant.gep1834, i64 %i.aak
  %.val956.prol = load i32, ptr %gep1835.prol, align 1, !tbaa !15
  %i.aan = mul i32 %.val956.prol, -1640531535
  %i.aao = lshr i32 %i.aan, 17
  %i.aap = zext nneg i32 %i.aao to i64
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aap ; 2 uses
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !3
  %i.aas = sub i32 %i.aai, %i.aar
  %i.aat = tail call i32 @llvm.umin.i32(i32 %i.aas, i32 65535)
  %i.aau = trunc nuw i32 %i.aat to i16
  %i.aav = and i64 %i.aak, 65535
  %i.aaw = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.aav
  store i16 %i.aau, ptr %i.aaw, align 2, !tbaa !29
  store i32 %i.aai, ptr %i.aaq, align 4, !tbaa !3
  %indvars.iv.next2157.prol = add nuw nsw i64 %i.aak, 1
  br label %.lr.ph1833.prol.loopexit

.lr.ph1833.prol.loopexit:                         ; preds = %.lr.ph1833.prol, %.lr.ph1833.preheader
  %indvars.iv2156.unr = phi i64 [ %i.aak, %.lr.ph1833.preheader ], [ %indvars.iv.next2157.prol, %.lr.ph1833.prol ]
  %i.aax = add nsw i64 %i.zq, -1
  %i.aay = icmp eq i64 %i.aax, %i.aak
  br i1 %i.aay, label %LZ4HC_Insert.exit.i.i456.loopexit, label %.lr.ph1833

.lr.ph1833:                                       ; preds = %.lr.ph1833.prol.loopexit, %.lr.ph1833
  %indvars.iv2156 = phi i64 [ %indvars.iv.next2157.1, %.lr.ph1833 ], [ %indvars.iv2156.unr, %.lr.ph1833.prol.loopexit ] ; 5 uses
  %gep1835 = getelementptr i8, ptr %invariant.gep1834, i64 %indvars.iv2156
  %.val956 = load i32, ptr %gep1835, align 1, !tbaa !15
  %i.aaz = mul i32 %.val956, -1640531535
  %i.aba = lshr i32 %i.aaz, 17
  %i.abb = zext nneg i32 %i.aba to i64
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abb ; 2 uses
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !3
  %i.abe = trunc nuw i64 %indvars.iv2156 to i32   ; 2 uses
  %i.abf = sub i32 %i.abe, %i.abd
  %i.abg = tail call i32 @llvm.umin.i32(i32 %i.abf, i32 65535)
  %i.abh = trunc nuw i32 %i.abg to i16
  %i.abi = and i64 %indvars.iv2156, 65535
  %i.abj = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.abi
  store i16 %i.abh, ptr %i.abj, align 2, !tbaa !29
  store i32 %i.abe, ptr %i.abc, align 4, !tbaa !3
  %indvars.iv.next2157 = add nuw nsw i64 %indvars.iv2156, 1 ; 3 uses
  %gep1835.1 = getelementptr i8, ptr %invariant.gep1834, i64 %indvars.iv.next2157
  %.val956.1 = load i32, ptr %gep1835.1, align 1, !tbaa !15
  %i.abk = mul i32 %.val956.1, -1640531535
  %i.abl = lshr i32 %i.abk, 17
  %i.abm = zext nneg i32 %i.abl to i64
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abm ; 2 uses
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !3
  %i.abp = trunc nuw i64 %indvars.iv.next2157 to i32 ; 2 uses
  %i.abq = sub i32 %i.abp, %i.abo
  %i.abr = tail call i32 @llvm.umin.i32(i32 %i.abq, i32 65535)
  %i.abs = trunc nuw i32 %i.abr to i16
  %i.abt = and i64 %indvars.iv.next2157, 65535
  %i.abu = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.abt
  store i16 %i.abs, ptr %i.abu, align 2, !tbaa !29
  store i32 %i.abp, ptr %i.abn, align 4, !tbaa !3
  %indvars.iv.next2157.1 = add nuw nsw i64 %indvars.iv2156, 2 ; 2 uses
  %i.abv = icmp samesign ult i64 %indvars.iv.next2157.1, %i.aal
  br i1 %i.abv, label %.lr.ph1833, label %LZ4HC_Insert.exit.i.i456.loopexit, !llvm.loop !36

LZ4HC_Insert.exit.i.i456.loopexit:                ; preds = %.lr.ph1833, %.lr.ph1833.prol.loopexit
  %.val958.pre = load i32, ptr %i.zr, align 1, !tbaa !15
  br label %LZ4HC_Insert.exit.i.i456

LZ4HC_Insert.exit.i.i456:                         ; preds = %LZ4HC_Insert.exit.i.i456.loopexit, %bb.di
  %.val958 = phi i32 [ %.val958.pre, %LZ4HC_Insert.exit.i.i456.loopexit ], [ %.val947, %bb.di ]
  store i32 %i.aae, ptr %i.w, align 8, !tbaa !32
  %i.abw = mul i32 %.val958, -1640531535
  %i.abx = lshr i32 %i.abw, 17
  %i.aby = zext nneg i32 %i.abx to i64
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aby
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !3 ; 2 uses
  %i.acb = add i64 %i.aac, %i.cb
  %i.acc = getelementptr inbounds nuw i8, ptr %i.zr, i64 4 ; 12 uses
  %i.acd = icmp ult ptr %i.acc, %i.k              ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.zr, i64 12 ; 3 uses
  %i.acf = ptrtoint ptr %i.acc to i64             ; 8 uses
  %i.acg = and i32 %.val947, 65535
  %i.ach = lshr i32 %.val947, 16
  %i.aci = icmp eq i32 %i.acg, %i.ach
  %i.acj = and i32 %.val947, 255
  %i.ack = lshr i32 %.val947, 24
  %i.acl = icmp eq i32 %i.acj, %i.ack
  %i.acm = and i1 %i.aci, %i.acl
  %i.acn = zext i32 %.val947 to i64
  %i.aco = mul nuw i64 %i.acn, 4294967297         ; 6 uses
  %i.acp = icmp uge i32 %i.aca, %i.aah
  %i.acq = and i1 %i.acp, %i.bi
  br i1 %i.acq, label %.lr.ph2722, label %.thread1488

.lr.ph2722:                                       ; preds = %LZ4HC_Insert.exit.i.i456, %.backedge2442
  %.0.i.i4642721 = phi i32 [ %.0.i.i464.be, %.backedge2442 ], [ 3, %LZ4HC_Insert.exit.i.i456 ] ; 10 uses
  %.0314.i.i4632720 = phi i32 [ %i.acr, %.backedge2442 ], [ %5, %LZ4HC_Insert.exit.i.i456 ] ; 2 uses
  %.0317.i.i4622719 = phi i32 [ %.0317.i.i462.be, %.backedge2442 ], [ 0, %LZ4HC_Insert.exit.i.i456 ] ; 3 uses
  %.0323.i.i4612718 = phi i32 [ %.0323.i.i461.be, %.backedge2442 ], [ %i.aca, %LZ4HC_Insert.exit.i.i456 ] ; 14 uses
  %.0341.i.i4602717 = phi i32 [ %.0341.i.i460.be, %.backedge2442 ], [ 0, %LZ4HC_Insert.exit.i.i456 ] ; 4 uses
  %.0346.i.i4592716 = phi i64 [ %.0346.i.i459.be, %.backedge2442 ], [ 0, %LZ4HC_Insert.exit.i.i456 ] ; 4 uses
  %.0351.i.i4582715 = phi i32 [ %.0351.i.i458.be, %.backedge2442 ], [ 0, %LZ4HC_Insert.exit.i.i456 ] ; 7 uses
  %i.acr = add nsw i32 %.0314.i.i4632720, -1      ; 5 uses
  %i.acs = sub i32 %i.aae, %.0323.i.i4612718      ; 3 uses
  %i.act = icmp ult i32 %i.acs, 8
  %or.cond445.i.i528 = and i1 %.not.i.i760, %i.act
  br i1 %or.cond445.i.i528, label %bb.fc, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph2722
  %.not430.i.i529 = icmp ult i32 %.0323.i.i4612718, %i.bq
  br i1 %.not430.i.i529, label %bb.dz, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.acu = sub nuw i32 %.0323.i.i4612718, %i.bq
  %i.acv = zext i32 %i.acu to i64
  %i.acw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.acv ; 4 uses
  %i.acx = sext i32 %.0.i.i4642721 to i64         ; 2 uses
  %i.acy = getelementptr inbounds i8, ptr %i.zr, i64 %i.acx
  %i.acz = getelementptr inbounds i8, ptr %i.acy, i64 -1
  %.val1013 = load i16, ptr %i.acz, align 1, !tbaa !25
  %i.ada = getelementptr inbounds i8, ptr %i.acw, i64 %i.acx
  %i.adb = getelementptr inbounds i8, ptr %i.ada, i64 -1
  %.val1012 = load i16, ptr %i.adb, align 1, !tbaa !25
  %i.adc = icmp eq i16 %.val1013, %.val1012
  br i1 %i.adc, label %bb.dl, label %bb.fc

bb.dl:                                            ; preds = %bb.dk
  %.val944 = load i32, ptr %i.acw, align 1, !tbaa !15
  %i.add = icmp eq i32 %.val944, %.val947
  br i1 %i.add, label %bb.dm, label %bb.fc

bb.dm:                                            ; preds = %bb.dl
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acw, i64 4 ; 2 uses
  br i1 %i.acd, label %bb.dn, label %bb.dp, !prof !19

bb.dn:                                            ; preds = %bb.dm
  %.val987 = load i64, ptr %i.ade, align 1, !tbaa !20 ; 2 uses
  %.val986 = load i64, ptr %i.acc, align 1, !tbaa !20 ; 2 uses
  %.not.i525.i.i632 = icmp eq i64 %.val987, %.val986
  br i1 %.not.i525.i.i632, label %.thread1422, label %bb.do

.thread1422:                                      ; preds = %bb.dn
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acw, i64 12
  br label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.adg = xor i64 %.val986, %.val987
  %i.adh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.adg, i1 true)
  %i.adi = trunc nuw nsw i64 %i.adh to i32
  %i.adj = lshr i32 %i.adi, 3
  br label %LZ4_count.exit529.i.i622

bb.dp:                                            ; preds = %.thread1422, %bb.dm
end_hunk_0
begin_hunk_1_@LZ4HC_compress_optimal:bb.a
  %.18.i.i = phi i32 [ %i.ark, %LZ4HC_Insert.exit.i.i ], [ %.0.i.i.be, %.backedge ], [ %.6.i.i, %bb.ju ], [ %.17.i.i, %bb.jv ], [ %.5.i.i, %bb.js ] ; 3 uses
  %i.bfv = icmp sgt i32 %.1315.i.i, 0
  %or.cond13.i.i = select i1 %i.ac, i1 %i.bfv, i1 false
  %or.cond15.i.i = and i1 %i.arp, %or.cond13.i.i
  br i1 %or.cond15.i.i, label %bb.jw, label %LZ4HC_InsertAndGetWiderMatch.exit.i

bb.jw:                                            ; preds = %.thread1570
  %i.bfw = load ptr, ptr %i.ze, align 8, !tbaa !7
  %i.bfx = load ptr, ptr %i.zf, align 8, !tbaa !13 ; 2 uses
  %i.bfy = ptrtoint ptr %i.bfw to i64
  %i.bfz = ptrtoint ptr %i.bfx to i64
  %i.bga = sub i64 %i.bfy, %i.bfz
  %i.bgb = load i32, ptr %i.zg, align 8, !tbaa !14
  %i.bgc = zext i32 %i.bgb to i64                 ; 2 uses
  %i.bgd = add i64 %i.bga, %i.bgc                 ; 2 uses
  %.val960 = load i32, ptr %i.zr, align 1, !tbaa !15
  %i.bge = mul i32 %.val960, -1640531535
  %i.bgf = lshr i32 %i.bge, 17
  %i.bgg = zext nneg i32 %i.bgf to i64
  %i.bgh = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bgg
  %i.bgi = load i32, ptr %i.bgh, align 4, !tbaa !3 ; 2 uses
  %i.bgj = add i32 %i.bgi, %i.arr
  %i.bgk = trunc i64 %i.bgd to i32
  %i.bgl = sub i32 %i.bgj, %i.bgk                 ; 2 uses
  %i.bgm = sub i32 %i.aro, %i.bgl                 ; 2 uses
  %i.bgn = icmp ult i32 %i.bgm, 65536
  br i1 %i.bgn, label %.lr.ph1937, label %LZ4HC_InsertAndGetWiderMatch.exit.i

.lr.ph1937:                                       ; preds = %bb.jw
  %i.bgo = sub nsw i64 0, %i.bgc
  %i.bgp = getelementptr inbounds i8, ptr %i.bfx, i64 %i.bgo
  br label %bb.jx

bb.jx:                                            ; preds = %bb.kl, %.lr.ph1937
  %.in2831 = phi i32 [ %.1315.i.i, %.lr.ph1937 ], [ %i.bgr, %bb.kl ]
  %.19370.i.i19312782 = phi i32 [ %.18369.i.i, %.lr.ph1937 ], [ %.21372.i.i, %bb.kl ] ; 2 uses
  %.0340.i.i19322781 = phi i32 [ %i.bgi, %.lr.ph1937 ], [ %i.bis, %bb.kl ] ; 3 uses
  %.16339.i.i19332780 = phi i32 [ %i.bgl, %.lr.ph1937 ], [ %i.bip, %bb.kl ]
  %.19.i.i19352779 = phi i32 [ %.18.i.i, %.lr.ph1937 ], [ %.21.i.i, %bb.kl ] ; 3 uses
  %i.bgq = phi i32 [ %i.bgm, %.lr.ph1937 ], [ %i.biq, %bb.kl ]
  %i.bgr = add nsw i32 %.in2831, -1               ; 2 uses
  %i.bgs = zext i32 %.0340.i.i19322781 to i64     ; 2 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgp, i64 %i.bgs ; 3 uses
  %.val951 = load i32, ptr %i.bgt, align 1, !tbaa !15
  %i.bgu = icmp eq i32 %.val951, %.val952
  br i1 %i.bgu, label %bb.jy, label %bb.kl

bb.jy:                                            ; preds = %bb.jx
  %i.bgv = sub i64 %i.bgd, %i.bgs
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.bgv ; 2 uses
  %i.bgx = icmp ugt ptr %i.bgw, %i.l
  %spec.select457.i.i = select i1 %i.bgx, ptr %i.l, ptr %i.bgw ; 4 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgt, i64 4 ; 2 uses
  %i.bgz = getelementptr inbounds i8, ptr %spec.select457.i.i, i64 -7 ; 3 uses
  %i.bha = icmp ult ptr %i.atm, %i.bgz
  br i1 %i.bha, label %bb.jz, label %bb.kb, !prof !19

bb.jz:                                            ; preds = %bb.jy
  %.val1007 = load i64, ptr %i.bgy, align 1, !tbaa !20 ; 2 uses
  %.val1006 = load i64, ptr %i.atm, align 1, !tbaa !20 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.val1007, %.val1006
  br i1 %.not.i.i.i, label %.thread1578, label %bb.ka

.thread1578:                                      ; preds = %bb.jz
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgt, i64 12
  br label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.bhc = xor i64 %.val1006, %.val1007
  %i.bhd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bhc, i1 true)
  %i.bhe = trunc nuw nsw i64 %i.bhd to i32
  %i.bhf = lshr i32 %i.bhe, 3
  br label %LZ4_count.exit.i.i

bb.kb:                                            ; preds = %.thread1578, %bb.jy
  %.150.i.i.i = phi ptr [ %i.bhb, %.thread1578 ], [ %i.bgy, %bb.jy ] ; 2 uses
  %.145.i.i.i = phi ptr [ %i.ato, %.thread1578 ], [ %i.atm, %bb.jy ] ; 3 uses
  %i.bhg = icmp ult ptr %.145.i.i.i, %i.bgz
  br i1 %i.bhg, label %.lr.ph1926, label %._crit_edge1927, !prof !23

.lr.ph1926:                                       ; preds = %bb.kb, %bb.kc
  %.246.i.i.i1924 = phi ptr [ %i.bho, %bb.kc ], [ %.145.i.i.i, %bb.kb ] ; 3 uses
  %.251.i.i.i1923 = phi ptr [ %i.bhp, %bb.kc ], [ %.150.i.i.i, %bb.kb ] ; 2 uses
  %.251.i.i.i.val1009 = load i64, ptr %.251.i.i.i1923, align 1, !tbaa !20 ; 2 uses
  %.246.i.i.i.val1008 = load i64, ptr %.246.i.i.i1924, align 1, !tbaa !20 ; 2 uses
  %.not59.i.i.i = icmp eq i64 %.251.i.i.i.val1009, %.246.i.i.i.val1008
  br i1 %.not59.i.i.i, label %bb.kc, label %.thread1582

.thread1582:                                      ; preds = %.lr.ph1926
  %i.bhh = xor i64 %.246.i.i.i.val1008, %.251.i.i.i.val1009
  %i.bhi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bhh, i1 true)
  %i.bhj = lshr i64 %i.bhi, 3
  %i.bhk = getelementptr inbounds nuw i8, ptr %.246.i.i.i1924, i64 %i.bhj
  %i.bhl = ptrtoint ptr %i.bhk to i64
  %i.bhm = sub i64 %i.bhl, %i.atp
  %i.bhn = trunc i64 %i.bhm to i32
  br label %LZ4_count.exit.i.i

bb.kc:                                            ; preds = %.lr.ph1926
  %i.bho = getelementptr inbounds nuw i8, ptr %.246.i.i.i1924, i64 8 ; 3 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %.251.i.i.i1923, i64 8 ; 2 uses
  %i.bhq = icmp ult ptr %i.bho, %i.bgz
  br i1 %i.bhq, label %.lr.ph1926, label %._crit_edge1927, !prof !24

._crit_edge1927:                                  ; preds = %bb.kc, %bb.kb
  %.251.i.i.i.lcssa = phi ptr [ %.150.i.i.i, %bb.kb ], [ %i.bhp, %bb.kc ] ; 4 uses
  %.246.i.i.i.lcssa = phi ptr [ %.145.i.i.i, %bb.kb ], [ %i.bho, %bb.kc ] ; 5 uses
  %i.bhr = getelementptr inbounds i8, ptr %spec.select457.i.i, i64 -3
  %i.bhs = icmp ult ptr %.246.i.i.i.lcssa, %i.bhr
  br i1 %i.bhs, label %bb.kd, label %bb.kf

bb.kd:                                            ; preds = %._crit_edge1927
  %.251.i.i.i.val = load i32, ptr %.251.i.i.i.lcssa, align 1, !tbaa !15
  %.246.i.i.i.val = load i32, ptr %.246.i.i.i.lcssa, align 1, !tbaa !15
  %i.bht = icmp eq i32 %.251.i.i.i.val, %.246.i.i.i.val
  br i1 %i.bht, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.bhu = getelementptr inbounds nuw i8, ptr %.246.i.i.i.lcssa, i64 4
  %i.bhv = getelementptr inbounds nuw i8, ptr %.251.i.i.i.lcssa, i64 4
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd, %._crit_edge1927
  %.453.i.i.i = phi ptr [ %i.bhv, %bb.ke ], [ %.251.i.i.i.lcssa, %bb.kd ], [ %.251.i.i.i.lcssa, %._crit_edge1927 ] ; 4 uses
  %.448.i.i.i = phi ptr [ %i.bhu, %bb.ke ], [ %.246.i.i.i.lcssa, %bb.kd ], [ %.246.i.i.i.lcssa, %._crit_edge1927 ] ; 5 uses
  %i.bhw = getelementptr inbounds i8, ptr %spec.select457.i.i, i64 -1
  %i.bhx = icmp ult ptr %.448.i.i.i, %i.bhw
  br i1 %i.bhx, label %bb.kg, label %bb.ki

bb.kg:                                            ; preds = %bb.kf
  %.453.i.i.i.val = load i16, ptr %.453.i.i.i, align 1, !tbaa !25
  %.448.i.i.i.val = load i16, ptr %.448.i.i.i, align 1, !tbaa !25
  %i.bhy = icmp eq i16 %.453.i.i.i.val, %.448.i.i.i.val
  br i1 %i.bhy, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.bhz = getelementptr inbounds nuw i8, ptr %.448.i.i.i, i64 2
  %i.bia = getelementptr inbounds nuw i8, ptr %.453.i.i.i, i64 2
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg, %bb.kf
  %.554.i.i.i = phi ptr [ %i.bia, %bb.kh ], [ %.453.i.i.i, %bb.kg ], [ %.453.i.i.i, %bb.kf ]
  %.5.i.i.i = phi ptr [ %i.bhz, %bb.kh ], [ %.448.i.i.i, %bb.kg ], [ %.448.i.i.i, %bb.kf ] ; 4 uses
  %i.bib = icmp ult ptr %.5.i.i.i, %spec.select457.i.i
  br i1 %i.bib, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.bic = load i8, ptr %.554.i.i.i, align 1, !tbaa !27
  %i.bid = load i8, ptr %.5.i.i.i, align 1, !tbaa !27
  %i.bie = icmp eq i8 %i.bic, %i.bid
  %spec.select.i.i.i.idx = zext i1 %i.bie to i64
  %spec.select.i.i.i = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 %spec.select.i.i.i.idx
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki
  %.6.i.i.i = phi ptr [ %.5.i.i.i, %bb.ki ], [ %spec.select.i.i.i, %bb.kj ]
  %i.bif = ptrtoint ptr %.6.i.i.i to i64
  %i.big = sub i64 %i.bif, %i.atp
  %i.bih = trunc i64 %i.big to i32
  br label %LZ4_count.exit.i.i

LZ4_count.exit.i.i:                               ; preds = %.thread1582, %bb.ka, %bb.kk
  %.4.i.i.i = phi i32 [ %i.bhn, %.thread1582 ], [ %i.bih, %bb.kk ], [ %i.bhf, %bb.ka ]
  %i.bii = add nsw i32 %.4.i.i.i, 4               ; 2 uses
  %i.bij = icmp sgt i32 %i.bii, %.19.i.i19352779
  %.20371.i.i = select i1 %i.bij, i32 %i.bgq, i32 %.19370.i.i19312782
  %.20.i.i = tail call i32 @llvm.smax.i32(i32 %i.bii, i32 %.19.i.i19352779)
  br label %bb.kl

bb.kl:                                            ; preds = %LZ4_count.exit.i.i, %bb.jx
  %.21372.i.i = phi i32 [ %.20371.i.i, %LZ4_count.exit.i.i ], [ %.19370.i.i19312782, %bb.jx ] ; 2 uses
  %.21.i.i = phi i32 [ %.20.i.i, %LZ4_count.exit.i.i ], [ %.19.i.i19352779, %bb.jx ] ; 2 uses
  %i.bik = and i32 %.0340.i.i19322781, 65535
  %i.bil = zext nneg i32 %i.bik to i64
  %i.bim = getelementptr inbounds nuw [2 x i8], ptr %i.zh, i64 %i.bil
  %i.bin = load i16, ptr %i.bim, align 2, !tbaa !29
  %i.bio = zext i16 %i.bin to i32                 ; 2 uses
  %i.bip = sub i32 %.16339.i.i19332780, %i.bio    ; 2 uses
  %i.biq = sub i32 %i.aro, %i.bip                 ; 2 uses
  %i.bir = icmp ugt i32 %i.biq, 65535
  %i.bis = sub i32 %.0340.i.i19322781, %i.bio
  %.not442.i.i = icmp eq i32 %i.bgr, 0
  %or.cond2835 = select i1 %i.bir, i1 true, i1 %.not442.i.i
  br i1 %or.cond2835, label %LZ4HC_InsertAndGetWiderMatch.exit.i, label %bb.jx, !llvm.loop !44

LZ4HC_InsertAndGetWiderMatch.exit.i:              ; preds = %bb.kl, %bb.jw, %.thread1570
  %.22373.i.i = phi i32 [ %.18369.i.i, %.thread1570 ], [ %.18369.i.i, %bb.jw ], [ %.21372.i.i, %bb.kl ]
  %.22.i.i = phi i32 [ %.18.i.i, %.thread1570 ], [ %.18.i.i, %bb.jw ], [ %.21.i.i, %bb.kl ] ; 2 uses
  %.not.i453 = icmp slt i32 %i.ark, %.22.i.i
  br i1 %.not.i453, label %LZ4HC_FindLongerMatch.exit687, label %.loopexit

LZ4HC_FindLongerMatch.exit687:                    ; preds = %LZ4HC_InsertAndGetWiderMatch.exit.i, %LZ4HC_InsertAndGetWiderMatch.exit.i471
  %.22373.i.i.sink = phi i32 [ %.22373.i.i473, %LZ4HC_InsertAndGetWiderMatch.exit.i471 ], [ %.22373.i.i, %LZ4HC_InsertAndGetWiderMatch.exit.i ] ; 3 uses
  %.22.i.i.sink2552 = phi i32 [ %.22.i.i474, %LZ4HC_InsertAndGetWiderMatch.exit.i471 ], [ %.22.i.i, %LZ4HC_InsertAndGetWiderMatch.exit.i ] ; 2 uses
  %.sroa.2313.0.insert.ext.i.i = zext i32 %.22.i.i.sink2552 to i64
  %i.bit = add i32 %.22.i.i.sink2552, -19
  %i.biu = icmp ult i32 %i.bit, 18
  %or.cond.i454 = and i1 %.not.i.i760, %i.biu
  %i.biv = shl nuw i64 %.sroa.2313.0.insert.ext.i.i, 32
  %.sroa.03.sroa.4.0.insert.shift.i = select i1 %or.cond.i454, i64 77309411328, i64 %i.biv ; 4 uses
  %.sroa.0104.4.extract.shift = lshr exact i64 %.sroa.03.sroa.4.0.insert.shift.i, 32 ; 3 uses
  %.sroa.0104.4.extract.trunc = trunc nuw i64 %.sroa.0104.4.extract.shift to i32 ; 3 uses
  %.not415 = icmp eq i64 %.sroa.03.sroa.4.0.insert.shift.i, 0
  br i1 %.not415, label %.loopexit, label %bb.km

bb.km:                                            ; preds = %LZ4HC_FindLongerMatch.exit687
  %i.biw = ashr exact i64 %.sroa.03.sroa.4.0.insert.shift.i, 32
  %i.bix = icmp ugt i64 %i.biw, %spec.store.select
  %i.biy = trunc nuw nsw i64 %indvars.iv2175 to i32 ; 4 uses
  %i.biz = add nsw i32 %i.biy, %.sroa.0104.4.extract.trunc
  %i.bja = icmp sgt i32 %i.biz, 4095
  %or.cond = select i1 %i.bix, i1 true, i1 %i.bja
  br i1 %or.cond, label %bb.ll, label %LZ4HC_literalsPrice.exit925

LZ4HC_literalsPrice.exit925:                      ; preds = %bb.km
  %i.bjb = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv2175 ; 3 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bjb, i64 12
  %i.bjd = load i32, ptr %i.bjc, align 4, !tbaa !92 ; 22 uses
  %i.bje = icmp sgt i32 %i.bjd, 14                ; 3 uses
  %i.bjf = add nsw i32 %i.bjd, -15
  %i.bjg = udiv i32 %i.bjf, 255
  %i.bjh = add nuw nsw i32 %i.bjd, 1
  %i.bji = add nuw nsw i32 %i.bjh, %i.bjg         ; 3 uses
  %i.bjj = sext i32 %i.bjd to i64
  %i.bjk = load i32, ptr %i.bjb, align 4, !tbaa !93 ; 3 uses
  %spec.select2026 = select i1 %i.bje, i32 %i.bji, i32 %i.bjd
  %i.bjl = sub nsw i32 %i.bjk, %spec.select2026   ; 3 uses
  %i.bjm = add i32 %i.bjd, 1                      ; 2 uses
  %i.bjn = icmp sgt i32 %i.bjd, 13
  br i1 %i.bjn, label %bb.kn, label %LZ4HC_literalsPrice.exit923

.lr.ph1948:                                       ; preds = %.preheader1703
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjb, i64 8
  %.pre = load i32, ptr %i.bjo, align 4, !tbaa !89
  %i.bjp = icmp eq i32 %.pre, 1                   ; 2 uses
  %i.bjq = icmp sgt i64 %indvars.iv2175, %i.bjj   ; 2 uses
  %i.bjr = sub nsw i32 %i.biy, %i.bjd
  %i.bjs = zext nneg i32 %i.bjr to i64
  %i.bjt = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bjs ; 2 uses
  %.not2965 = icmp eq i64 %.sroa.03.sroa.4.0.insert.shift.i, 17179869184
  br i1 %.not2965, label %.preheader.loopexit.peel.begin, label %.lr.ph1948.split

.lr.ph1948.split:                                 ; preds = %.lr.ph1948
  %11 = add i32 %.03681951, 3
  %spec.select2553 = select i1 %i.bje, i32 %i.bji, i32 %i.bjd
  %i.bju = add nsw i32 %spec.select2553, 3        ; 2 uses
  %invariant.op3087 = add i32 1, %i.bju
  %i.bjv = add nsw i64 %.sroa.0104.4.extract.shift, -1
  br label %bb.lb

bb.kn:                                            ; preds = %LZ4HC_literalsPrice.exit925
  %i.bjw = add nsw i32 %i.bjd, -14
  %i.bjx = udiv i32 %i.bjw, 255
  %i.bjy = add nuw i32 %i.bjd, 2
  %i.bjz = add nuw nsw i32 %i.bjy, %i.bjx
  br label %LZ4HC_literalsPrice.exit923

LZ4HC_literalsPrice.exit923:                      ; preds = %LZ4HC_literalsPrice.exit925, %bb.kn
  %.0.i922 = phi i32 [ %i.bjz, %bb.kn ], [ %i.bjm, %LZ4HC_literalsPrice.exit925 ]
  %i.bka = add nsw i32 %.0.i922, %i.bjl           ; 2 uses
  %i.bkb = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv2175 ; 4 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bkb, i64 16 ; 2 uses
  %i.bkd = load i32, ptr %i.bkc, align 4, !tbaa !93
  %i.bke = icmp slt i32 %i.bka, %i.bkd
  br i1 %i.bke, label %bb.ko, label %LZ4HC_literalsPrice.exit925.1

bb.ko:                                            ; preds = %LZ4HC_literalsPrice.exit923
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bkb, i64 24
  store i32 1, ptr %i.bkf, align 4, !tbaa !89
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bkb, i64 20
  store i32 0, ptr %i.bkg, align 4, !tbaa !91
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkb, i64 28
  store i32 %i.bjm, ptr %i.bkh, align 4, !tbaa !92
  store i32 %i.bka, ptr %i.bkc, align 4, !tbaa !93
  br label %LZ4HC_literalsPrice.exit925.1

LZ4HC_literalsPrice.exit925.1:                    ; preds = %bb.ko, %LZ4HC_literalsPrice.exit923
  %i.bki = add i32 %i.bjd, 2                      ; 2 uses
  %i.bkj = icmp sgt i32 %i.bjd, 12
  br i1 %i.bkj, label %bb.kp, label %LZ4HC_literalsPrice.exit923.1

bb.kp:                                            ; preds = %LZ4HC_literalsPrice.exit925.1
  %i.bkk = add nsw i32 %i.bjd, -13
  %i.bkl = udiv i32 %i.bkk, 255
  %i.bkm = add nuw i32 %i.bjd, 3
  %i.bkn = add nuw nsw i32 %i.bkm, %i.bkl
  br label %LZ4HC_literalsPrice.exit923.1

LZ4HC_literalsPrice.exit923.1:                    ; preds = %bb.kp, %LZ4HC_literalsPrice.exit925.1
  %.0.i922.1 = phi i32 [ %i.bkn, %bb.kp ], [ %i.bki, %LZ4HC_literalsPrice.exit925.1 ]
  %i.bko = add nsw i32 %.0.i922.1, %i.bjl         ; 2 uses
  %i.bkp = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv2175 ; 4 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkp, i64 32 ; 2 uses
  %i.bkr = load i32, ptr %i.bkq, align 4, !tbaa !93
  %i.bks = icmp slt i32 %i.bko, %i.bkr
  br i1 %i.bks, label %bb.kq, label %LZ4HC_literalsPrice.exit925.2

bb.kq:                                            ; preds = %LZ4HC_literalsPrice.exit923.1
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bkp, i64 40
  store i32 1, ptr %i.bkt, align 4, !tbaa !89
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkp, i64 36
  store i32 0, ptr %i.bku, align 4, !tbaa !91
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bkp, i64 44
  store i32 %i.bki, ptr %i.bkv, align 4, !tbaa !92
  store i32 %i.bko, ptr %i.bkq, align 4, !tbaa !93
  br label %LZ4HC_literalsPrice.exit925.2

LZ4HC_literalsPrice.exit925.2:                    ; preds = %bb.kq, %LZ4HC_literalsPrice.exit923.1
  %i.bkw = add i32 %i.bjd, 3                      ; 2 uses
  %i.bkx = icmp sgt i32 %i.bjd, 11
  br i1 %i.bkx, label %bb.kr, label %LZ4HC_literalsPrice.exit923.2

bb.kr:                                            ; preds = %LZ4HC_literalsPrice.exit925.2
  %i.bky = add nsw i32 %i.bjd, -12
  %i.bkz = udiv i32 %i.bky, 255
  %i.bla = add nuw i32 %i.bjd, 4
  %i.blb = add nuw nsw i32 %i.bla, %i.bkz
  br label %LZ4HC_literalsPrice.exit923.2

LZ4HC_literalsPrice.exit923.2:                    ; preds = %bb.kr, %LZ4HC_literalsPrice.exit925.2
  %.0.i922.2 = phi i32 [ %i.blb, %bb.kr ], [ %i.bkw, %LZ4HC_literalsPrice.exit925.2 ]
  %i.blc = add nsw i32 %.0.i922.2, %i.bjl         ; 2 uses
  %i.bld = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv2175 ; 4 uses
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bld, i64 48 ; 2 uses
  %i.blf = load i32, ptr %i.ble, align 4, !tbaa !93
  %i.blg = icmp slt i32 %i.blc, %i.blf
  br i1 %i.blg, label %bb.ks, label %.preheader1703

bb.ks:                                            ; preds = %LZ4HC_literalsPrice.exit923.2
  %i.blh = getelementptr inbounds nuw i8, ptr %i.bld, i64 56
  store i32 1, ptr %i.blh, align 4, !tbaa !89
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bld, i64 52
  store i32 0, ptr %i.bli, align 4, !tbaa !91
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bld, i64 60
  store i32 %i.bkw, ptr %i.blj, align 4, !tbaa !92
  store i32 %i.blc, ptr %i.ble, align 4, !tbaa !93
  br label %.preheader1703

.preheader1703:                                   ; preds = %bb.ks, %LZ4HC_literalsPrice.exit923.2
  %.not4161944 = icmp slt i32 %.sroa.0104.4.extract.trunc, 4
  br i1 %.not4161944, label %.preheader, label %.lr.ph1948

.preheader.loopexit.peel.begin:                   ; preds = %.lr.ph1948, %bb.lk
  %i.blk = phi i64 [ 4, %.lr.ph1948 ], [ %indvars.iv.next2167, %bb.lk ] ; 7 uses
  %i.bll = add nuw nsw i64 %i.blk, %indvars.iv2175 ; 3 uses
  br i1 %i.bjp, label %bb.kv, label %bb.kt

bb.kt:                                            ; preds = %.preheader.loopexit.peel.begin
  %i.blm = icmp samesign ugt i64 %i.blk, 18
  br i1 %i.blm, label %bb.ku, label %LZ4HC_sequencePrice.exit.peel

bb.ku:                                            ; preds = %bb.kt
  %i.bln = trunc i64 %i.blk to i32
  %i.blo = add i32 %i.bln, -19
  %i.blp = udiv i32 %i.blo, 255
  %i.blq = add nuw nsw i32 %i.blp, 4
  br label %LZ4HC_sequencePrice.exit.peel

LZ4HC_sequencePrice.exit.peel:                    ; preds = %bb.ku, %bb.kt
  %.0.i931.peel = phi i32 [ %i.blq, %bb.ku ], [ 3, %bb.kt ]
  %i.blr = add nsw i32 %.0.i931.peel, %i.bjk
  br label %bb.ky

bb.kv:                                            ; preds = %.preheader.loopexit.peel.begin
  br i1 %i.bjq, label %bb.kw, label %LZ4HC_literalsPrice.exit.i.peel

bb.kw:                                            ; preds = %bb.kv
  %i.bls = load i32, ptr %i.bjt, align 4, !tbaa !93
  br label %LZ4HC_literalsPrice.exit.i.peel

LZ4HC_literalsPrice.exit.i.peel:                  ; preds = %bb.kw, %bb.kv
  %i.blt = phi i32 [ %i.bls, %bb.kw ], [ 0, %bb.kv ]
  %spec.select2553.peel = select i1 %i.bje, i32 %i.bji, i32 %i.bjd
  %i.blu = add nsw i32 %spec.select2553.peel, 3   ; 2 uses
  %i.blv = icmp samesign ugt i64 %i.blk, 18
  br i1 %i.blv, label %bb.kx, label %LZ4HC_sequencePrice.exit934.peel

bb.kx:                                            ; preds = %LZ4HC_literalsPrice.exit.i.peel
  %i.blw = trunc i64 %i.blk to i32
  %i.blx = add i32 %i.blw, -19
  %i.bly = udiv i32 %i.blx, 255
  %i.blz = add nuw nsw i32 %i.bly, 1
  %i.bma = add nsw i32 %i.blz, %i.blu
  br label %LZ4HC_sequencePrice.exit934.peel

LZ4HC_sequencePrice.exit934.peel:                 ; preds = %bb.kx, %LZ4HC_literalsPrice.exit.i.peel
  %.0.i933.peel = phi i32 [ %i.bma, %bb.kx ], [ %i.blu, %LZ4HC_literalsPrice.exit.i.peel ]
  %i.bmb = add nsw i32 %.0.i933.peel, %i.blt
  br label %bb.ky

bb.ky:                                            ; preds = %LZ4HC_sequencePrice.exit934.peel, %LZ4HC_sequencePrice.exit.peel
  %.0381.peel = phi i32 [ %i.bmb, %LZ4HC_sequencePrice.exit934.peel ], [ %i.blr, %LZ4HC_sequencePrice.exit.peel ] ; 2 uses
  %.0380.peel = phi i32 [ %i.bjd, %LZ4HC_sequencePrice.exit934.peel ], [ 0, %LZ4HC_sequencePrice.exit.peel ]
  %i.bmc = add nuw nsw i32 %.03681951, 3
  %i.bmd = trunc nuw i64 %i.bll to i32            ; 2 uses
  %i.bme = icmp slt i32 %i.bmc, %i.bmd
  br i1 %i.bme, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.bmf = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bll
  %i.bmg = load i32, ptr %i.bmf, align 4, !tbaa !93
  %i.bmh = sub nsw i32 %i.bmg, %10
  %.not417.peel = icmp sgt i32 %.0381.peel, %i.bmh
  br i1 %.not417.peel, label %.preheader, label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky
  %i.bmi = icmp eq i64 %i.blk, %.sroa.0104.4.extract.shift
  %i.bmj = tail call i32 @llvm.smax.i32(i32 %.03681951, i32 %i.bmd)
  %.2370.peel = select i1 %i.bmi, i32 %i.bmj, i32 %.03681951
  %i.bmk = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bll ; 4 uses
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 8
  %i.bmm = trunc nuw nsw i64 %i.blk to i32
  store i32 %i.bmm, ptr %i.bml, align 4, !tbaa !89
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmk, i64 4
  store i32 %.22373.i.i.sink, ptr %i.bmn, align 4, !tbaa !91
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmk, i64 12
  store i32 %.0380.peel, ptr %i.bmo, align 4, !tbaa !92
  store i32 %.0381.peel, ptr %i.bmk, align 4, !tbaa !93
  br label %.preheader

.preheader:                                       ; preds = %bb.la, %bb.kz, %.preheader1703
  %.1369.lcssa = phi i32 [ %.03681951, %.preheader1703 ], [ %.2370.peel, %bb.la ], [ %.03681951, %bb.kz ] ; 2 uses
  %i.bmp = zext nneg i32 %.1369.lcssa to i64      ; 4 uses
  %i.bmq = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bmp ; 3 uses
  %i.bmr = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bmp ; 4 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 16
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bmr, i64 24
  store i32 1, ptr %i.bmt, align 4, !tbaa !89
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bmr, i64 20
  store i32 0, ptr %i.bmu, align 4, !tbaa !91
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmr, i64 28
  store i32 1, ptr %i.bmv, align 4, !tbaa !92
  %i.bmw = load i32, ptr %i.bmq, align 4, !tbaa !93
  %i.bmx = add nsw i32 %i.bmw, 1
  store i32 %i.bmx, ptr %i.bms, align 4, !tbaa !93
  %i.bmy = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bmp ; 4 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmy, i64 32
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmy, i64 40
  store i32 1, ptr %i.bna, align 4, !tbaa !89
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bmy, i64 36
  store i32 0, ptr %i.bnb, align 4, !tbaa !91
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bmy, i64 44
  store i32 2, ptr %i.bnc, align 4, !tbaa !92
  %i.bnd = load i32, ptr %i.bmq, align 4, !tbaa !93
  %i.bne = add nsw i32 %i.bnd, 2
  store i32 %i.bne, ptr %i.bmz, align 4, !tbaa !93
  %i.bnf = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bmp ; 4 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 48
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bnf, i64 56
  store i32 1, ptr %i.bnh, align 4, !tbaa !89
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnf, i64 52
  store i32 0, ptr %i.bni, align 4, !tbaa !91
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bnf, i64 60
  store i32 3, ptr %i.bnj, align 4, !tbaa !92
  %i.bnk = load i32, ptr %i.bmq, align 4, !tbaa !93
  %i.bnl = add nsw i32 %i.bnk, 3
  store i32 %i.bnl, ptr %i.bng, align 4, !tbaa !93
  br label %.loopexit

bb.lb:                                            ; preds = %.lr.ph1948.split, %bb.lk
  %indvars.iv2166 = phi i64 [ 4, %.lr.ph1948.split ], [ %indvars.iv.next2167, %bb.lk ] ; 8 uses
  %i.bnm = add nuw nsw i64 %indvars.iv2166, %indvars.iv2175 ; 3 uses
  br i1 %i.bjp, label %bb.lc, label %bb.lf

bb.lc:                                            ; preds = %bb.lb
  br i1 %i.bjq, label %bb.ld, label %LZ4HC_literalsPrice.exit.i

bb.ld:                                            ; preds = %bb.lc
  %i.bnn = load i32, ptr %i.bjt, align 4, !tbaa !93
  br label %LZ4HC_literalsPrice.exit.i

LZ4HC_literalsPrice.exit.i:                       ; preds = %bb.lc, %bb.ld
  %i.bno = phi i32 [ %i.bnn, %bb.ld ], [ 0, %bb.lc ]
  %i.bnp = icmp samesign ugt i64 %indvars.iv2166, 18
  br i1 %i.bnp, label %bb.le, label %LZ4HC_sequencePrice.exit934

bb.le:                                            ; preds = %LZ4HC_literalsPrice.exit.i
  %i.bnq = trunc i64 %indvars.iv2166 to i32
  %i.bnr = add i32 %i.bnq, -19
  %i.bns = udiv i32 %i.bnr, 255
  %.reass3088 = add i32 %i.bns, %invariant.op3087
  br label %LZ4HC_sequencePrice.exit934

LZ4HC_sequencePrice.exit934:                      ; preds = %LZ4HC_literalsPrice.exit.i, %bb.le
  %.0.i933 = phi i32 [ %.reass3088, %bb.le ], [ %i.bju, %LZ4HC_literalsPrice.exit.i ]
  %i.bnt = add nsw i32 %.0.i933, %i.bno
  br label %bb.lh

bb.lf:                                            ; preds = %bb.lb
  %i.bnu = icmp samesign ugt i64 %indvars.iv2166, 18
  br i1 %i.bnu, label %bb.lg, label %LZ4HC_sequencePrice.exit

bb.lg:                                            ; preds = %bb.lf
  %i.bnv = trunc i64 %indvars.iv2166 to i32
  %i.bnw = add i32 %i.bnv, -19
  %i.bnx = udiv i32 %i.bnw, 255
  %i.bny = add nuw nsw i32 %i.bnx, 4
  br label %LZ4HC_sequencePrice.exit

LZ4HC_sequencePrice.exit:                         ; preds = %bb.lf, %bb.lg
  %.0.i931 = phi i32 [ %i.bny, %bb.lg ], [ 3, %bb.lf ]
  %i.bnz = add nsw i32 %.0.i931, %i.bjk
  br label %bb.lh

bb.lh:                                            ; preds = %LZ4HC_sequencePrice.exit, %LZ4HC_sequencePrice.exit934
  %.0381 = phi i32 [ %i.bnt, %LZ4HC_sequencePrice.exit934 ], [ %i.bnz, %LZ4HC_sequencePrice.exit ] ; 2 uses
  %.0380 = phi i32 [ %i.bjd, %LZ4HC_sequencePrice.exit934 ], [ 0, %LZ4HC_sequencePrice.exit ]
  %i.boa = trunc nuw i64 %i.bnm to i32
  %i.bob = icmp slt i32 %11, %i.boa
  br i1 %i.bob, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.boc = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bnm
  %i.bod = load i32, ptr %i.boc, align 4, !tbaa !93
  %i.boe = sub nsw i32 %i.bod, %10
  %.not417 = icmp sgt i32 %.0381, %i.boe
  br i1 %.not417, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lh
  %i.bof = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bnm ; 4 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 8
  %i.boh = trunc nuw nsw i64 %indvars.iv2166 to i32
  store i32 %i.boh, ptr %i.bog, align 4, !tbaa !89
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bof, i64 4
  store i32 %.22373.i.i.sink, ptr %i.boi, align 4, !tbaa !91
  %i.boj = getelementptr inbounds nuw i8, ptr %i.bof, i64 12
  store i32 %.0380, ptr %i.boj, align 4, !tbaa !92
  store i32 %.0381, ptr %i.bof, align 4, !tbaa !93
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li
  %indvars.iv.next2167 = add nuw nsw i64 %indvars.iv2166, 1 ; 2 uses
  %exitcond2170.not = icmp eq i64 %indvars.iv2166, %i.bjv
  br i1 %exitcond2170.not, label %.preheader.loopexit.peel.begin, label %bb.lb, !llvm.loop !95

bb.ll:                                            ; preds = %bb.km
  %i.bok = add nuw nsw i32 %i.biy, 1
  br label %bb.lm

.loopexit:                                        ; preds = %LZ4HC_InsertAndGetWiderMatch.exit.i, %LZ4HC_InsertAndGetWiderMatch.exit.i471, %.preheader, %bb.dg, %LZ4HC_FindLongerMatch.exit687, %bb.dh
  %.4372.ph = phi i32 [ %.03681951, %bb.dg ], [ %.03681951, %bb.dh ], [ %.03681951, %LZ4HC_FindLongerMatch.exit687 ], [ %.1369.lcssa, %.preheader ], [ %.03681951, %LZ4HC_InsertAndGetWiderMatch.exit.i471 ], [ %.03681951, %LZ4HC_InsertAndGetWiderMatch.exit.i ] ; 3 uses
  %indvars.iv.next2176 = add nuw nsw i64 %indvars.iv2175, 1 ; 2 uses
  %i.bol = zext nneg i32 %.4372.ph to i64
  %i.bom = icmp samesign ult i64 %indvars.iv.next2176, %i.bol
  %indvar.next = add i32 %indvar, 1
  br i1 %i.bom, label %bb.dd, label %.thread1595, !llvm.loop !97

.thread1595:                                      ; preds = %.loopexit, %bb.dd
  %.0368.lcssa.ph = phi i32 [ %.4372.ph, %.loopexit ], [ %.03681951, %bb.dd ] ; 3 uses
  %i.bon = zext nneg i32 %.0368.lcssa.ph to i64
  %i.boo = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bon ; 2 uses
  %i.bop = getelementptr inbounds nuw i8, ptr %i.boo, i64 8
  %i.boq = load i32, ptr %i.bop, align 4, !tbaa !89 ; 2 uses
  %i.bor = getelementptr inbounds nuw i8, ptr %i.boo, i64 4
  %i.bos = load i32, ptr %i.bor, align 4, !tbaa !91
  %i.bot = sub nsw i32 %.0368.lcssa.ph, %i.boq
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %.thread1595
  %.6374 = phi i32 [ %.0368.lcssa.ph, %.thread1595 ], [ %i.bok, %bb.ll ] ; 2 uses
  %.1367 = phi i32 [ %i.bot, %.thread1595 ], [ %i.biy, %bb.ll ]
  %.3362 = phi i32 [ %i.bos, %.thread1595 ], [ %.22373.i.i.sink, %bb.ll ]
  %.3357 = phi i32 [ %i.boq, %.thread1595 ], [ %.sroa.0104.4.extract.trunc, %bb.ll ]
  br label %bb.ln

bb.ln:                                            ; preds = %bb.ln, %bb.lm
  %.0377 = phi i32 [ %.1367, %bb.lm ], [ %i.bpb, %bb.ln ] ; 3 uses
  %.0376 = phi i32 [ %.3357, %bb.lm ], [ %i.box, %bb.ln ]
  %.0375 = phi i32 [ %.3362, %bb.lm ], [ %i.boz, %bb.ln ]
  %i.bou = sext i32 %.0377 to i64
  %i.bov = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.bou ; 2 uses
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 8 ; 2 uses
  %i.box = load i32, ptr %i.bow, align 4, !tbaa !89 ; 3 uses
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bov, i64 4 ; 2 uses
  %i.boz = load i32, ptr %i.boy, align 4, !tbaa !91
  store i32 %.0376, ptr %i.bow, align 4, !tbaa !89
  store i32 %.0375, ptr %i.boy, align 4, !tbaa !91
  %i.bpa = icmp sgt i32 %i.box, %.0377
  %i.bpb = sub nsw i32 %.0377, %i.box
  br i1 %i.bpa, label %.preheader1704, label %bb.ln

.preheader1704:                                   ; preds = %bb.ln
  %i.bpc = icmp sgt i32 %.6374, 0
  br i1 %i.bpc, label %.lr.ph1976, label %.loopexit1705

.lr.ph1976:                                       ; preds = %.preheader1704, %bb.lz
  %.03641975 = phi i32 [ %.1365, %bb.lz ], [ 0, %.preheader1704 ] ; 3 uses
  %.113161974 = phi ptr [ %.21317, %bb.lz ], [ %.013151997, %.preheader1704 ] ; 11 uses
  %.113211973 = phi ptr [ %.21322, %bb.lz ], [ %.013201996, %.preheader1704 ] ; 7 uses
  %.113281972 = phi ptr [ %.21329, %bb.lz ], [ %.013271995, %.preheader1704 ] ; 5 uses
  %i.bpd = sext i32 %.03641975 to i64
  %i.bpe = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.bpd ; 2 uses
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 8
  %i.bpg = load i32, ptr %i.bpf, align 4, !tbaa !89 ; 5 uses
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpe, i64 4
  %i.bpi = load i32, ptr %i.bph, align 4, !tbaa !91 ; 3 uses
  %i.bpj = icmp eq i32 %i.bpg, 1
  br i1 %i.bpj, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %.lr.ph1976
  %i.bpk = getelementptr inbounds nuw i8, ptr %.113281972, i64 1
  %i.bpl = add nsw i32 %.03641975, 1
  br label %bb.lz, !llvm.loop !98

bb.lp:                                            ; preds = %.lr.ph1976
  %i.bpm = add nsw i32 %i.bpg, %.03641975
  %i.bpn = getelementptr i8, ptr %.113161974, i64 1 ; 4 uses
  %i.bpo = ptrtoint ptr %.113281972 to i64        ; 4 uses
  %i.bpp = ptrtoint ptr %.113211973 to i64        ; 5 uses
  %i.bpq = sub i64 %i.bpo, %i.bpp                 ; 6 uses
  %i.bpr = udiv i64 %i.bpq, 255
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpn, i64 %i.bpr
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bps, i64 %i.bpq
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpt, i64 8
  %i.bpv = icmp ugt ptr %i.bpu, %spec.select
  %or.cond.i = select i1 %.not.i, i1 %i.bpv, i1 false
  br i1 %or.cond.i, label %.thread1601, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.bpw = icmp ugt i64 %i.bpq, 14
  br i1 %i.bpw, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %bb.lq
  %i.bpx = add i64 %i.bpq, -15                    ; 2 uses
  store i8 -16, ptr %.113161974, align 1, !tbaa !27
  %i.bpy = icmp ugt i64 %i.bpx, 254
  br i1 %i.bpy, label %.lr.ph1961.preheader, label %._crit_edge1962

.lr.ph1961.preheader:                             ; preds = %bb.lr
  %i.bpz = add i64 %i.bpo, -270
  %i.bqa = sub i64 %i.bpz, %i.bpp                 ; 2 uses
  %i.bqb = udiv i64 %i.bqa, 255                   ; 3 uses
  %i.bqc = add nuw nsw i64 %i.bqb, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bpn, i8 -1, i64 %i.bqc, i1 false), !tbaa !27
  %scevgep = getelementptr i8, ptr %.113161974, i64 2
  %scevgep2178 = getelementptr i8, ptr %scevgep, i64 %i.bqb
  %.neg = mul i64 %i.bqb, -255
  %i.bqd = add i64 %.neg, %i.bqa
  br label %._crit_edge1962

._crit_edge1962:                                  ; preds = %.lr.ph1961.preheader, %bb.lr
  %.17.lcssa = phi ptr [ %i.bpn, %bb.lr ], [ %scevgep2178, %.lr.ph1961.preheader ] ; 2 uses
  %.0.i433.lcssa = phi i64 [ %i.bpx, %bb.lr ], [ %i.bqd, %.lr.ph1961.preheader ]
  %i.bqe = trunc nuw i64 %.0.i433.lcssa to i8
  %i.bqf = getelementptr inbounds nuw i8, ptr %.17.lcssa, i64 1
  store i8 %i.bqe, ptr %.17.lcssa, align 1, !tbaa !27
  br label %bb.lt

bb.ls:                                            ; preds = %bb.lq
  %.tr.i430 = trunc nuw nsw i64 %i.bpq to i8
  %i.bqg = shl nuw i8 %.tr.i430, 4
  store i8 %i.bqg, ptr %.113161974, align 1, !tbaa !27
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %._crit_edge1962
  %.13 = phi ptr [ %i.bqf, %._crit_edge1962 ], [ %i.bpn, %bb.ls ] ; 7 uses
  %.132791 = ptrtoint ptr %.13 to i64             ; 3 uses
  %i.bqh = getelementptr inbounds nuw i8, ptr %.13, i64 %i.bpq ; 3 uses
  %i.bqi = add i64 %.132791, %i.bpo
  %i.bqj = sub i64 %i.bqi, %i.bpp
  %i.bqk = add nuw i64 %.132791, 8
  %umax2792 = tail call i64 @llvm.umax.i64(i64 %i.bqj, i64 %i.bqk)
  %i.bql = xor i64 %.132791, -1
  %i.bqm = add i64 %umax2792, %i.bql              ; 2 uses
  %i.bqn = lshr i64 %i.bqm, 3
  %i.bqo = add nuw nsw i64 %i.bqn, 1              ; 2 uses
  %min.iters.check2794 = icmp ult i64 %i.bqm, 24
  %.132789 = ptrtoaddr ptr %.13 to i64
  %i.bqp = sub i64 %.132789, %i.bpp
  %diff.check2790 = icmp ult i64 %i.bqp, 32
  %or.cond2836 = select i1 %min.iters.check2794, i1 true, i1 %diff.check2790
  br i1 %or.cond2836, label %scalar.ph2793.preheader, label %vector.ph2795

vector.ph2795:                                    ; preds = %bb.lt
  %n.vec2797 = and i64 %i.bqo, 4611686018427387900 ; 3 uses
  %i.bqq = shl i64 %n.vec2797, 3                  ; 2 uses
  %i.bqr = getelementptr i8, ptr %.113211973, i64 %i.bqq
  %i.bqs = getelementptr i8, ptr %.13, i64 %i.bqq
  br label %vector.body2798

vector.body2798:                                  ; preds = %vector.body2798, %vector.ph2795
  %index2799 = phi i64 [ 0, %vector.ph2795 ], [ %index.next2804, %vector.body2798 ] ; 2 uses
  %i.bqt = shl i64 %index2799, 3                  ; 2 uses
  %next.gep2800 = getelementptr i8, ptr %.113211973, i64 %i.bqt ; 2 uses
  %next.gep2801 = getelementptr i8, ptr %.13, i64 %i.bqt ; 2 uses
  %i.bqu = getelementptr i8, ptr %next.gep2800, i64 16
  %wide.load2802 = load <2 x i64>, ptr %next.gep2800, align 1
  %wide.load2803 = load <2 x i64>, ptr %i.bqu, align 1
  %i.bqv = getelementptr i8, ptr %next.gep2801, i64 16
  store <2 x i64> %wide.load2802, ptr %next.gep2801, align 1
  store <2 x i64> %wide.load2803, ptr %i.bqv, align 1
  %index.next2804 = add nuw i64 %index2799, 4     ; 2 uses
  %i.bqw = icmp eq i64 %index.next2804, %n.vec2797
  br i1 %i.bqw, label %middle.block2805, label %vector.body2798, !llvm.loop !99

middle.block2805:                                 ; preds = %vector.body2798
  %cmp.n2806 = icmp eq i64 %i.bqo, %n.vec2797
  br i1 %cmp.n2806, label %LZ4_wildCopy8.exit449, label %scalar.ph2793.preheader

scalar.ph2793.preheader:                          ; preds = %bb.lt, %middle.block2805
  %.09.i447.ph = phi ptr [ %.113211973, %bb.lt ], [ %i.bqr, %middle.block2805 ]
  %.0.i448.ph = phi ptr [ %.13, %bb.lt ], [ %i.bqs, %middle.block2805 ]
  br label %scalar.ph2793

scalar.ph2793:                                    ; preds = %scalar.ph2793.preheader, %scalar.ph2793
  %.09.i447 = phi ptr [ %i.bqz, %scalar.ph2793 ], [ %.09.i447.ph, %scalar.ph2793.preheader ] ; 2 uses
  %.0.i448 = phi ptr [ %i.bqy, %scalar.ph2793 ], [ %.0.i448.ph, %scalar.ph2793.preheader ] ; 2 uses
  %i.bqx = load i64, ptr %.09.i447, align 1
  store i64 %i.bqx, ptr %.0.i448, align 1
  %i.bqy = getelementptr inbounds nuw i8, ptr %.0.i448, i64 8 ; 2 uses
  %i.bqz = getelementptr inbounds nuw i8, ptr %.09.i447, i64 8
  %i.bra = icmp ult ptr %i.bqy, %i.bqh
  br i1 %i.bra, label %scalar.ph2793, label %LZ4_wildCopy8.exit449, !llvm.loop !100

LZ4_wildCopy8.exit449:                            ; preds = %scalar.ph2793, %middle.block2805
  %i.brb = trunc i32 %i.bpi to i16
  store i16 %i.brb, ptr %i.bqh, align 1, !tbaa !25
  %i.brc = getelementptr i8, ptr %i.bqh, i64 2    ; 4 uses
  %i.brd = sext i32 %i.bpg to i64                 ; 4 uses
  %i.bre = add nsw i64 %i.brd, -4                 ; 3 uses
  %i.brf = udiv i64 %i.bre, 255
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brc, i64 %i.brf
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brg, i64 6
  %i.bri = icmp ugt ptr %i.brh, %spec.select
  %or.cond64.i = select i1 %.not.i, i1 %i.bri, i1 false
  br i1 %or.cond64.i, label %.thread1601, label %bb.lu

bb.lu:                                            ; preds = %LZ4_wildCopy8.exit449
  %i.brj = icmp ugt i64 %i.bre, 14
  br i1 %i.brj, label %bb.lv, label %bb.ly

end_hunk_1
