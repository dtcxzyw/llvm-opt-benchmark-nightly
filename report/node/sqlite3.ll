inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sessionGenerateChangeset:bb.a
bb.ab:                                            ; preds = %sqlite3VdbeMemSetDouble.exit.i.i
  %i.fj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.fj(ptr noundef nonnull %i.fi) #59, !inline_history !1620
  br label %sqlite3_bind_double.exit.i

sqlite3_bind_double.exit.i:                       ; preds = %bb.ab, %sqlite3VdbeMemSetDouble.exit.i.i, %bb.w, %bb.v
  %.2.i = phi i32 [ 0, %bb.v ], [ %i.ey, %bb.w ], [ 0, %sqlite3VdbeMemSetDouble.exit.i.i ], [ 0, %bb.ab ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.0386.i, i64 9
  br label %bb.bx

bb.ac:                                            ; preds = %bb.o
  %i.fl = load i8, ptr %i.bh, align 1, !tbaa !227 ; 5 uses
  %i.fm = icmp sgt i8 %i.fl, -1
  br i1 %i.fm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fn = zext nneg i8 %i.fl to i32
  br label %sessionVarintGet.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.fo = getelementptr inbounds nuw i8, ptr %.0386.i, i64 2
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !227 ; 2 uses
  %i.fq = zext i8 %i.fp to i32                    ; 3 uses
  %i.fr = icmp sgt i8 %i.fp, -1
  br i1 %i.fr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fs = and i8 %i.fl, 127
  %i.ft = zext nneg i8 %i.fs to i32
  %i.fu = shl nuw nsw i32 %i.ft, 7
  %i.fv = or disjoint i32 %i.fu, %i.fq
  br label %sessionVarintGet.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.fw = getelementptr inbounds nuw i8, ptr %.0386.i, i64 3
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !227 ; 3 uses
  %i.fy = icmp sgt i8 %i.fx, -1
  br i1 %i.fy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fz = zext nneg i8 %i.fx to i32
  %i.ga = and i8 %i.fl, 127
  %i.gb = zext nneg i8 %i.ga to i32
  %i.gc = shl nuw nsw i32 %i.gb, 14
  %i.gd = shl nuw nsw i32 %i.fq, 7
  %i.ge = and i32 %i.gd, 16256
  %i.gf = or disjoint i32 %i.ge, %i.gc
  %i.gg = or disjoint i32 %i.gf, %i.fz
  br label %sessionVarintGet.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.gh = zext i8 %i.fl to i32
  %i.gi = shl nuw nsw i32 %i.gh, 14
  %i.gj = zext i8 %i.fx to i32
  %i.gk = or disjoint i32 %i.gi, %i.gj
  %i.gl = and i32 %i.gk, 2080895                  ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0386.i, i64 4
  %i.gn = shl nuw nsw i32 %i.fq, 14
  %i.go = load i8, ptr %i.gm, align 1, !tbaa !227 ; 2 uses
  %i.gp = zext i8 %i.go to i32
  %i.gq = or disjoint i32 %i.gn, %i.gp
  %.not107.i174 = icmp sgt i8 %i.go, -1
  %i.gr = and i32 %i.gq, 2080895                  ; 4 uses
  br i1 %.not107.i174, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gs = shl nuw nsw i32 %i.gl, 7
  %i.gt = or disjoint i32 %i.gr, %i.gs
  %i.gu = zext nneg i32 %i.gt to i64
  br label %sqlite3GetVarint.exit181

bb.ak:                                            ; preds = %bb.ai
  %i.gv = getelementptr inbounds nuw i8, ptr %.0386.i, i64 5
  %i.gw = shl i32 %i.gl, 14
  %i.gx = load i8, ptr %i.gv, align 1, !tbaa !227 ; 3 uses
  %i.gy = zext i8 %i.gx to i32
  %i.gz = or disjoint i32 %i.gw, %i.gy            ; 3 uses
  %.not108.i175 = icmp sgt i8 %i.gx, -1
  br i1 %.not108.i175, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ha = shl nuw nsw i32 %i.gr, 7
  %i.hb = or disjoint i32 %i.gz, %i.ha
  %i.hc = lshr i32 %i.gl, 18
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = shl nuw nsw i64 %i.hd, 32
  %i.hf = zext i32 %i.hb to i64
  %i.hg = or disjoint i64 %i.he, %i.hf
  br label %sqlite3GetVarint.exit181

bb.am:                                            ; preds = %bb.ak
  %i.hh = shl nuw nsw i32 %i.gl, 7
  %i.hi = or disjoint i32 %i.gr, %i.hh            ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.0386.i, i64 6
  %i.hk = shl i32 %i.gr, 14
  %i.hl = load i8, ptr %i.hj, align 1, !tbaa !227 ; 2 uses
  %i.hm = zext i8 %i.hl to i32
  %i.hn = or disjoint i32 %i.hk, %i.hm            ; 3 uses
  %.not109.i176 = icmp sgt i8 %i.hl, -1
  br i1 %.not109.i176, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ho = shl i32 %i.gz, 7
  %i.hp = and i32 %i.ho, 266354560
  %i.hq = or disjoint i32 %i.hn, %i.hp
  %i.hr = lshr i32 %i.hi, 18
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = shl nuw nsw i64 %i.hs, 32
  %i.hu = zext i32 %i.hq to i64
  %i.hv = or disjoint i64 %i.ht, %i.hu
  br label %sqlite3GetVarint.exit181

bb.ao:                                            ; preds = %bb.am
  %i.hw = getelementptr inbounds nuw i8, ptr %.0386.i, i64 7
  %i.hx = shl i32 %i.gz, 14
  %i.hy = load i8, ptr %i.hw, align 1, !tbaa !227 ; 2 uses
  %i.hz = zext i8 %i.hy to i32
  %i.ia = or disjoint i32 %i.hx, %i.hz            ; 2 uses
  %.not110.i177 = icmp sgt i8 %i.hy, -1
  br i1 %.not110.i177, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ib = and i32 %i.ia, -266354561
  %i.ic = shl i32 %i.hn, 7
  %i.id = and i32 %i.ic, 266354560
  %i.ie = or disjoint i32 %i.ib, %i.id
  %i.if = lshr i32 %i.hi, 11
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = shl nuw nsw i64 %i.ig, 32
  %i.ii = zext i32 %i.ie to i64
  %i.ij = or disjoint i64 %i.ih, %i.ii
  br label %sqlite3GetVarint.exit181

bb.aq:                                            ; preds = %bb.ao
  %i.ik = and i32 %i.ia, 2080895                  ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.0386.i, i64 8
  %i.im = shl i32 %i.hn, 14
  %i.in = load i8, ptr %i.il, align 1, !tbaa !227 ; 2 uses
  %i.io = zext i8 %i.in to i32
  %i.ip = or disjoint i32 %i.im, %i.io            ; 2 uses
  %.not111.i178 = icmp sgt i8 %i.in, -1
  br i1 %.not111.i178, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.iq = and i32 %i.ip, -266354561
  %i.ir = shl nuw nsw i32 %i.ik, 7
  %i.is = or disjoint i32 %i.iq, %i.ir
  %i.it = lshr i32 %i.hi, 4
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = shl nuw nsw i64 %i.iu, 32
  %i.iw = zext i32 %i.is to i64
  %i.ix = or disjoint i64 %i.iv, %i.iw
  br label %sqlite3GetVarint.exit181

bb.as:                                            ; preds = %bb.aq
  %i.iy = getelementptr inbounds nuw i8, ptr %.0386.i, i64 9
  %i.iz = shl i32 %i.ik, 15
  %i.ja = load i8, ptr %i.iy, align 1, !tbaa !227
  %i.jb = zext i8 %i.ja to i32
  %i.jc = or disjoint i32 %i.iz, %i.jb
  %i.jd = shl i32 %i.ip, 8
  %i.je = and i32 %i.jd, 532709120
  %i.jf = or disjoint i32 %i.jc, %i.je
  %i.jg = shl nuw i32 %i.hi, 4
  %i.jh = lshr i8 %i.gx, 3
  %i.ji = and i8 %i.jh, 15
  %i.jj = zext nneg i8 %i.ji to i32
  %i.jk = or disjoint i32 %i.jg, %i.jj
  %i.jl = zext i32 %i.jk to i64
  %i.jm = shl nuw i64 %i.jl, 32
  %i.jn = zext i32 %i.jf to i64
  %i.jo = or disjoint i64 %i.jm, %i.jn
  br label %sqlite3GetVarint.exit181

sqlite3GetVarint.exit181:                         ; preds = %bb.aj, %bb.al, %bb.an, %bb.ap, %bb.ar, %bb.as
  %.sink.i179 = phi i64 [ %i.jo, %bb.as ], [ %i.ix, %bb.ar ], [ %i.ij, %bb.ap ], [ %i.hv, %bb.an ], [ %i.hg, %bb.al ], [ %i.gu, %bb.aj ] ; 2 uses
  %.0.i180 = phi i64 [ 9, %bb.as ], [ 8, %bb.ar ], [ 7, %bb.ap ], [ 6, %bb.an ], [ 5, %bb.al ], [ 4, %bb.aj ]
  %.not.i.i44.i = icmp ult i64 %.sink.i179, 4294967296
  %i.jp = trunc nuw i64 %.sink.i179 to i32
  %storemerge.i.i.i = select i1 %.not.i.i44.i, i32 %i.jp, i32 -1
  br label %sessionVarintGet.exit.i

sessionVarintGet.exit.i:                          ; preds = %bb.af, %bb.ah, %sqlite3GetVarint.exit181, %bb.ad
  %.05.i = phi i32 [ %i.fn, %bb.ad ], [ %storemerge.i.i.i, %sqlite3GetVarint.exit181 ], [ %i.gg, %bb.ah ], [ %i.fv, %bb.af ] ; 2 uses
  %i.jq = phi i64 [ 1, %bb.ad ], [ %.0.i180, %sqlite3GetVarint.exit181 ], [ 3, %bb.ah ], [ 2, %bb.af ]
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.jq ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !227
  %.not.i86 = icmp eq i8 %i.jt, 0
  %.pre10.i = sext i32 %.05.i to i64              ; 2 uses
  br i1 %.not.i86, label %sessionVarintGet.exit._crit_edge.i, label %bb.at

bb.at:                                            ; preds = %sessionVarintGet.exit.i
  %i.ju = trunc i64 %indvars.iv.i to i32
  %i.jv = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.ba, i32 noundef %i.ju) ; 2 uses
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.au, label %sessionVarintGet.exit._crit_edge.i

bb.au:                                            ; preds = %bb.at
  %i.jx = load ptr, ptr %i.bf, align 8, !tbaa !171
  %sext = shl nuw i64 %indvars.iv.i, 32
  %i.jy = ashr exact i64 %sext, 32
  %i.jz = getelementptr inbounds [56 x i8], ptr %i.jx, i64 %i.jy ; 14 uses
  %i.ka = icmp slt i32 %.05.i, 0
  br i1 %i.ka, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.kb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jr) #60
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.053.i = phi i64 [ %i.kb, %bb.av ], [ %.pre10.i, %bb.au ] ; 5 uses
  %.051.i = phi i16 [ 514, %bb.av ], [ 2, %bb.au ]
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 24 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !157 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 136
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !5
  %i.kg = sext i32 %i.kf to i64
  %i.kh = icmp sgt i64 %.053.i, %i.kg
  br i1 %i.kh, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jz, i64 20 ; 2 uses
  %i.kj = load i16, ptr %i.ki, align 4, !tbaa !162
  %i.kk = and i16 %i.kj, -28672
  %.not.i58.i = icmp eq i16 %i.kk, 0
  br i1 %.not.i58.i, label %sqlite3VdbeMemSetNull.exit59.i.thread, label %sqlite3VdbeMemSetNull.exit59.i

sqlite3VdbeMemSetNull.exit59.i.thread:            ; preds = %bb.ax
  store i16 1, ptr %i.ki, align 4, !tbaa !162
  br label %bb.ay

sqlite3VdbeMemSetNull.exit59.i:                   ; preds = %bb.ax
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.jz)
  %.pre = load ptr, ptr %i.kc, align 8, !tbaa !157 ; 2 uses
  %i.kl = icmp eq ptr %.pre, null
  br i1 %i.kl, label %sqlite3ApiExit.exit.i170, label %bb.ay

bb.ay:                                            ; preds = %sqlite3VdbeMemSetNull.exit59.i.thread, %sqlite3VdbeMemSetNull.exit59.i
  %i.km = phi ptr [ %i.kd, %sqlite3VdbeMemSetNull.exit59.i.thread ], [ %.pre, %sqlite3VdbeMemSetNull.exit59.i ]
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 344
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !301 ; 3 uses
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %sqlite3ApiExit.exit.i170, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  store i32 18, ptr %i.kq, align 8, !tbaa !302
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 52 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !313
  %i.kt = add nsw i32 %i.ks, 1
  store i32 %i.kt, ptr %i.kr, align 4, !tbaa !313
  br label %sqlite3ApiExit.exit.i170

bb.ba:                                            ; preds = %bb.aw
  %i.ku = tail call i64 @llvm.smax.i64(i64 %.053.i, i64 31)
  %i.kv = trunc nuw nsw i64 %i.ku to i32
  %i.kw = add nuw i32 %i.kv, 1                    ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !159
  %i.kz = icmp slt i32 %i.ky, %i.kw
  br i1 %i.kz, label %sqlite3VdbeMemClearAndResize.exit.i, label %sqlite3VdbeMemClearAndResize.exit.thread.i

sqlite3VdbeMemClearAndResize.exit.thread.i:       ; preds = %bb.ba
  %i.la = getelementptr inbounds nuw i8, ptr %i.jz, i64 40
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !160 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store ptr %i.lb, ptr %i.lc, align 8, !tbaa !289
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jz, i64 20 ; 2 uses
  %i.le = load i16, ptr %i.ld, align 4, !tbaa !162
  %i.lf = and i16 %i.le, 45
  store i16 %i.lf, ptr %i.ld, align 4, !tbaa !162
  br label %bb.bb

sqlite3VdbeMemClearAndResize.exit.i:              ; preds = %bb.ba
  %i.lg = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %i.jz, i32 noundef %i.kw, i32 noundef 0), !inline_history !815
  %.not56.i = icmp eq i32 %i.lg, 0
  br i1 %.not56.i, label %sqlite3VdbeMemClearAndResize.exit._crit_edge.i, label %sqlite3ApiExit.exit.i170

sqlite3VdbeMemClearAndResize.exit._crit_edge.i:   ; preds = %sqlite3VdbeMemClearAndResize.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %.pre.i246 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !289
  br label %bb.bb

bb.bb:                                            ; preds = %sqlite3VdbeMemClearAndResize.exit.thread.i, %sqlite3VdbeMemClearAndResize.exit._crit_edge.i
  %i.lh = phi ptr [ %.pre.i246, %sqlite3VdbeMemClearAndResize.exit._crit_edge.i ], [ %i.lb, %sqlite3VdbeMemClearAndResize.exit.thread.i ]
  %i.li = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lh, ptr nonnull align 1 %i.jr, i64 %.053.i, i1 false)
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !289
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 %.053.i
  store i8 0, ptr %i.lk, align 1, !tbaa !227
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jz, i64 20
  store i16 %.051.i, ptr %i.ll, align 4, !tbaa !162
  %i.lm = trunc i64 %.053.i to i32
  %i.ln = and i32 %i.lm, 2147483647
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store i32 %i.ln, ptr %i.lo, align 8, !tbaa !558
  %i.lp = getelementptr inbounds nuw i8, ptr %i.jz, i64 22
  store i8 1, ptr %i.lp, align 2, !tbaa !349
  %i.lq = load ptr, ptr %i.ba, align 8, !tbaa !146
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 100
  %i.ls = load i8, ptr %i.lr, align 4, !tbaa !844 ; 2 uses
  %i.lt = icmp eq i8 %i.ls, 1
  br i1 %i.lt, label %sqlite3VdbeChangeEncoding.exit.thread.i, label %sqlite3VdbeChangeEncoding.exit.i

sqlite3VdbeChangeEncoding.exit.i:                 ; preds = %bb.bb
  %i.lu = tail call fastcc i32 @sqlite3VdbeMemTranslate(ptr noundef nonnull %i.jz, i8 noundef zeroext %i.ls), !inline_history !812 ; 2 uses
  %.not49.i = icmp eq i32 %i.lu, 0
  br i1 %.not49.i, label %sqlite3VdbeChangeEncoding.exit.thread.i, label %sqlite3ApiExit.exit.i170

sqlite3ApiExit.exit.i170:                         ; preds = %bb.ay, %sqlite3VdbeMemClearAndResize.exit.i, %bb.az, %sqlite3VdbeMemSetNull.exit59.i, %sqlite3VdbeChangeEncoding.exit.i
  %.1.i169277 = phi i32 [ %i.lu, %sqlite3VdbeChangeEncoding.exit.i ], [ 18, %sqlite3VdbeMemSetNull.exit59.i ], [ 18, %bb.az ], [ 7, %sqlite3VdbeMemClearAndResize.exit.i ], [ 18, %bb.ay ] ; 3 uses
  %i.lv = load ptr, ptr %i.ba, align 8, !tbaa !146 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 80
  store i32 %.1.i169277, ptr %i.lw, align 8, !tbaa !589
  tail call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %i.lv, i32 noundef %.1.i169277)
  %i.lx = load ptr, ptr %i.ba, align 8, !tbaa !146
  %i.ly = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %i.lx, i32 noundef %.1.i169277)
  br label %sqlite3VdbeChangeEncoding.exit.thread.i

sqlite3VdbeChangeEncoding.exit.thread.i:          ; preds = %sqlite3ApiExit.exit.i170, %sqlite3VdbeChangeEncoding.exit.i, %bb.bb
  %.2.i171 = phi i32 [ %i.ly, %sqlite3ApiExit.exit.i170 ], [ 0, %sqlite3VdbeChangeEncoding.exit.i ], [ 0, %bb.bb ] ; 2 uses
  %i.lz = load ptr, ptr %i.ba, align 8, !tbaa !146
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !23 ; 2 uses
  %.not.i52.i = icmp eq ptr %i.mb, null
  br i1 %.not.i52.i, label %sessionVarintGet.exit._crit_edge.i, label %bb.bc

bb.bc:                                            ; preds = %sqlite3VdbeChangeEncoding.exit.thread.i
  %i.mc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.mc(ptr noundef nonnull %i.mb) #59, !inline_history !858
  br label %sessionVarintGet.exit._crit_edge.i

sessionVarintGet.exit._crit_edge.i:               ; preds = %bb.bc, %sqlite3VdbeChangeEncoding.exit.thread.i, %bb.at, %sessionVarintGet.exit.i
  %.3.i = phi i32 [ 0, %sessionVarintGet.exit.i ], [ %.2.i171, %sqlite3VdbeChangeEncoding.exit.thread.i ], [ %.2.i171, %bb.bc ], [ %i.jv, %bb.at ]
  %i.md = getelementptr inbounds i8, ptr %i.jr, i64 %.pre10.i
  br label %bb.bx

bb.bd:                                            ; preds = %bb.o
  %i.me = load i8, ptr %i.bh, align 1, !tbaa !227 ; 5 uses
  %i.mf = icmp sgt i8 %i.me, -1
  br i1 %i.mf, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.mg = zext nneg i8 %i.me to i32
  br label %sessionVarintGet.exit50.i

bb.bf:                                            ; preds = %bb.bd
  %i.mh = getelementptr inbounds nuw i8, ptr %.0386.i, i64 2
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !227 ; 2 uses
  %i.mj = zext i8 %i.mi to i32                    ; 3 uses
  %i.mk = icmp sgt i8 %i.mi, -1
  br i1 %i.mk, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ml = and i8 %i.me, 127
  %i.mm = zext nneg i8 %i.ml to i32
  %i.mn = shl nuw nsw i32 %i.mm, 7
  %i.mo = or disjoint i32 %i.mn, %i.mj
  br label %sessionVarintGet.exit50.i

bb.bh:                                            ; preds = %bb.bf
  %i.mp = getelementptr inbounds nuw i8, ptr %.0386.i, i64 3
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !227 ; 3 uses
  %i.mr = icmp sgt i8 %i.mq, -1
  br i1 %i.mr, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ms = zext nneg i8 %i.mq to i32
  %i.mt = and i8 %i.me, 127
  %i.mu = zext nneg i8 %i.mt to i32
  %i.mv = shl nuw nsw i32 %i.mu, 14
  %i.mw = shl nuw nsw i32 %i.mj, 7
  %i.mx = and i32 %i.mw, 16256
  %i.my = or disjoint i32 %i.mx, %i.mv
  %i.mz = or disjoint i32 %i.my, %i.ms
  br label %sessionVarintGet.exit50.i

bb.bj:                                            ; preds = %bb.bh
  %i.na = zext i8 %i.me to i32
  %i.nb = shl nuw nsw i32 %i.na, 14
  %i.nc = zext i8 %i.mq to i32
  %i.nd = or disjoint i32 %i.nb, %i.nc
  %i.ne = and i32 %i.nd, 2080895                  ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.0386.i, i64 4
  %i.ng = shl nuw nsw i32 %i.mj, 14
  %i.nh = load i8, ptr %i.nf, align 1, !tbaa !227 ; 2 uses
  %i.ni = zext i8 %i.nh to i32
  %i.nj = or disjoint i32 %i.ng, %i.ni
  %.not107.i = icmp sgt i8 %i.nh, -1
  %i.nk = and i32 %i.nj, 2080895                  ; 4 uses
  br i1 %.not107.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.nl = shl nuw nsw i32 %i.ne, 7
  %i.nm = or disjoint i32 %i.nk, %i.nl
  %i.nn = zext nneg i32 %i.nm to i64
  br label %sqlite3GetVarint.exit

bb.bl:                                            ; preds = %bb.bj
  %i.no = getelementptr inbounds nuw i8, ptr %.0386.i, i64 5
end_hunk_0
begin_hunk_1_@sqlite3GetInt32:bb.a
  br i1 %or.cond.9, label %bb.x, label %.critedge2

bb.x:                                             ; preds = %bb.w
  %i.gh = mul nuw nsw i64 %i.gd, 10
  %i.gi = and i8 %i.gf, 15
  %i.gj = zext nneg i8 %i.gi to i64
  %i.gk = add nuw nsw i64 %i.gh, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 10
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !227
  %i.gn = add i8 %i.gm, -48
  %or.cond.10 = icmp ult i8 %i.gn, 10
  br i1 %or.cond.10, label %.critedge2.thread, label %.critedge2

.critedge2:                                       ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %.preheader
  %.04667.lcssa = phi i64 [ 0, %.preheader ], [ %i.dz, %bb.o ], [ %i.eg, %bb.p ], [ %i.en, %bb.q ], [ %i.eu, %bb.r ], [ %i.fb, %bb.s ], [ %i.fi, %bb.t ], [ %i.fp, %bb.u ], [ %i.fw, %bb.v ], [ %i.gd, %bb.w ], [ %i.gk, %bb.x ] ; 3 uses
  %i.go = add nsw i64 %.04667.lcssa, %.042.neg
  %i.gp = icmp sgt i64 %i.go, 2147483647
  br i1 %i.gp, label %.critedge2.thread, label %bb.y

bb.y:                                             ; preds = %.critedge2
  %i.gq = sub nsw i64 0, %.04667.lcssa
  %spec.select = select i1 %.not56, i64 %i.gq, i64 %.04667.lcssa
  %i.gr = trunc i64 %spec.select to i32
  br label %.critedge2.thread.sink.split

.critedge2.thread.sink.split:                     ; preds = %.critedge.thread, %bb.y
  %.0.lcssa77.sink = phi i32 [ %i.gr, %bb.y ], [ %.0.lcssa77, %.critedge.thread ]
  store i32 %.0.lcssa77.sink, ptr %1, align 4
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %.critedge2.thread.sink.split, %bb.x, %.critedge2, %bb.n, %.critedge.thread, %.critedge
  %.1 = phi i32 [ 0, %bb.n ], [ 0, %.critedge2 ], [ 0, %.critedge.thread ], [ 0, %.critedge ], [ 0, %bb.x ], [ 1, %.critedge2.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @checkList(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !2818
  %.not91 = icmp eq i32 %2, 0
  br i1 %.not91, label %.critedge, label %.lr.ph96

.lr.ph96:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not58 = icmp eq i32 %1, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph96, %sqlite3PagerUnref.exit
  %.093 = phi i32 [ %2, %.lr.ph96 ], [ %i.en, %sqlite3PagerUnref.exit ] ; 11 uses
  %.04992 = phi i32 [ %3, %.lr.ph96 ], [ %.2, %sqlite3PagerUnref.exit ] ; 5 uses
  %i.o = load i32, ptr %i.j, align 4, !tbaa !2814
  %.not55 = icmp eq i32 %i.o, 0
  br i1 %.not55, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #59
  %i.p = load i32, ptr %i.k, align 8, !tbaa !2813
  %i.q = add i32 %.093, -1
  %or.cond.not.i = icmp ult i32 %i.q, %i.p
  br i1 %or.cond.not.i, label %bb.d, label %sqlite3PagerUnref.exit.thread

bb.d:                                             ; preds = %bb.c
  %.val13.i = load ptr, ptr %i.l, align 8, !tbaa !2816
  %i.r = lshr i32 %.093, 3
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !227   ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = and i32 %.093, 7
  %i.x = shl nuw nsw i32 1, %i.w                  ; 2 uses
  %i.y = and i32 %i.x, %i.v
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.e, label %sqlite3PagerUnref.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = trunc nuw i32 %i.x to i8
  %i.aa = or i8 %i.u, %i.z
  store i8 %i.aa, ptr %i.t, align 1, !tbaa !227
  %i.ab = add i32 %.04992, -1                     ; 5 uses
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !2812 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 272
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !514
  %i.af = call i32 %i.ae(ptr noundef %i.ac, i32 noundef %.093, ptr noundef nonnull %i.g, i32 noundef 0) #59, !inline_history !515
  %.not57 = icmp eq i32 %i.af, 0
  br i1 %.not57, label %bb.f, label %sqlite3PagerUnref.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !513
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val = load ptr, ptr %i.ah, align 8, !tbaa !516 ; 10 uses
  br i1 %.not58, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !227
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw i32 %i.ak, 24                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 5
  %i.an = load i8, ptr %i.am, align 1, !tbaa !227
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 16               ; 2 uses
  %i.aq = or disjoint i32 %i.ap, %i.al
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 6
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !227
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 8                ; 2 uses
  %i.av = or disjoint i32 %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 7
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !227
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = or disjoint i32 %i.av, %i.ay            ; 3 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !2811  ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 33
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !742
  %.not59 = icmp eq i8 %i.bc, 0
  br i1 %.not59, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  %i.bd = call fastcc i32 @ptrmapGet(ptr noundef nonnull %i.ba, i32 noundef %.093, ptr noundef %i.e, ptr noundef nonnull %i.f)
  switch i32 %i.bd, label %checkOom.exit.i [
    i32 0, label %bb.k
    i32 3082, label %bb.i
    i32 7, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  store i32 7, ptr %i.n, align 4, !tbaa !2817
  store i32 0, ptr %i.j, align 4, !tbaa !2814
  %i.be = load i32, ptr %i.h, align 8, !tbaa !2818
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.j, label %checkOom.exit.i

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.h, align 8, !tbaa !2818
  br label %checkOom.exit.i

checkOom.exit.i:                                  ; preds = %bb.j, %bb.i, %bb.h
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.423, i32 noundef %.093)
  br label %checkPtrmap.exit

bb.k:                                             ; preds = %bb.h
  %i.bg = load i8, ptr %i.e, align 1, !tbaa !227  ; 2 uses
  %.not14.i = icmp eq i8 %i.bg, 2
  %i.bh = load i32, ptr %i.f, align 4             ; 2 uses
  %.not15.i = icmp eq i32 %i.bh, 0
  %or.cond.i = select i1 %.not14.i, i1 %.not15.i, i1 false
  br i1 %or.cond.i, label %checkPtrmap.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = zext i8 %i.bg to i32
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.424, i32 noundef %.093, i32 noundef 2, i32 noundef 0, i32 noundef %i.bi, i32 noundef %i.bh)
  br label %checkPtrmap.exit

checkPtrmap.exit:                                 ; preds = %checkOom.exit.i, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  %.pre = load ptr, ptr %0, align 8, !tbaa !2811
  br label %bb.m

bb.m:                                             ; preds = %checkPtrmap.exit, %bb.g
  %i.bj = phi ptr [ %.pre, %checkPtrmap.exit ], [ %i.ba, %bb.g ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !749
  %i.bm = lshr i32 %i.bl, 2
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = icmp ugt i32 %i.az, %i.bn
  br i1 %i.bo, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.bp = icmp sgt i32 %i.az, 0
  br i1 %i.bp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.bq = or disjoint i32 %i.al, %i.ap
  %i.br = or disjoint i32 %i.bq, %i.au
  %i.bs = or disjoint i32 %i.br, %i.ay
  %wide.trip.count = zext i32 %i.bs to i64
  br label %.lr.ph

bb.n:                                             ; preds = %bb.m
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %0, ptr noundef nonnull @.str.416, i32 noundef %.093)
  %i.bt = add i32 %.04992, -2
  br label %bb.ae

.lr.ph:                                           ; preds = %.lr.ph.preheader, %checkRef.exit72
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %checkRef.exit72 ] ; 2 uses
  %i.bu = shl nuw nsw i64 %indvars.iv, 2
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bu ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !227
  %i.by = zext i8 %i.bx to i32
  %i.bz = shl nuw i32 %i.by, 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 9
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !227
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 16
  %i.ce = or disjoint i32 %i.cd, %i.bz
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 10
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !227
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 8
  %i.cj = or disjoint i32 %i.ce, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 11
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !227
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = or disjoint i32 %i.cj, %i.cm            ; 7 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !2811  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 33
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !742
  %.not60 = icmp eq i8 %i.cq, 0
  br i1 %.not60, label %bb.t, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  %i.cr = call fastcc i32 @ptrmapGet(ptr noundef nonnull %i.co, i32 noundef %i.cn, ptr noundef %i.c, ptr noundef nonnull %i.d)
  switch i32 %i.cr, label %checkOom.exit.i63 [
    i32 0, label %bb.r
    i32 3082, label %bb.p
    i32 7, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  store i32 7, ptr %i.n, align 4, !tbaa !2817
  store i32 0, ptr %i.j, align 4, !tbaa !2814
  %i.cs = load i32, ptr %i.h, align 8, !tbaa !2818
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.q, label %checkOom.exit.i63

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.h, align 8, !tbaa !2818
  br label %checkOom.exit.i63

checkOom.exit.i63:                                ; preds = %bb.q, %bb.p, %bb.o
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.423, i32 noundef %i.cn)
  br label %checkPtrmap.exit67

bb.r:                                             ; preds = %bb.o
  %i.cu = load i8, ptr %i.c, align 1, !tbaa !227  ; 2 uses
  %.not14.i64 = icmp eq i8 %i.cu, 2
  %i.cv = load i32, ptr %i.d, align 4             ; 2 uses
  %.not15.i65 = icmp eq i32 %i.cv, 0
  %or.cond.i66 = select i1 %.not14.i64, i1 %.not15.i65, i1 false
  br i1 %or.cond.i66, label %checkPtrmap.exit67, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = zext i8 %i.cu to i32
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.424, i32 noundef %i.cn, i32 noundef 2, i32 noundef 0, i32 noundef %i.cw, i32 noundef %i.cv)
  br label %checkPtrmap.exit67

checkPtrmap.exit67:                               ; preds = %checkOom.exit.i63, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  br label %bb.t

bb.t:                                             ; preds = %checkPtrmap.exit67, %.lr.ph
  %i.cx = load i32, ptr %i.k, align 8, !tbaa !2813
  %i.cy = add i32 %i.cn, -1
  %or.cond.not.i68 = icmp ult i32 %i.cy, %i.cx
  br i1 %or.cond.not.i68, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.420, i32 noundef %i.cn)
  br label %checkRef.exit72

bb.v:                                             ; preds = %bb.t
  %.val13.i70 = load ptr, ptr %i.l, align 8, !tbaa !2816
  %i.cz = lshr i32 %i.cn, 3
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.val13.i70, i64 %i.da ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !227 ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %i.de = and i32 %i.cm, 7
  %i.df = shl nuw nsw i32 1, %i.de                ; 2 uses
  %i.dg = and i32 %i.df, %i.dd
  %.not.i71 = icmp eq i32 %i.dg, 0
  br i1 %.not.i71, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.421, i32 noundef %i.cn)
  br label %checkRef.exit72

bb.x:                                             ; preds = %bb.v
  %i.dh = trunc nuw i32 %i.df to i8
  %i.di = or i8 %i.dc, %i.dh
  store i8 %i.di, ptr %i.db, align 1, !tbaa !227
  br label %checkRef.exit72

checkRef.exit72:                                  ; preds = %bb.u, %bb.w, %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3249

._crit_edge:                                      ; preds = %checkRef.exit72, %.preheader
  %i.dj = sub i32 %i.ab, %i.az
  br label %bb.ae

bb.y:                                             ; preds = %bb.f
  %i.dk = load ptr, ptr %0, align 8, !tbaa !2811  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 33
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !742
  %i.dn = icmp ne i8 %i.dm, 0
  %i.do = icmp ne i32 %i.ab, 0
  %or.cond = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.dp = load i32, ptr %.val, align 1
  %i.dq = call i32 @llvm.bswap.i32(i32 %i.dp)     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.dr = call fastcc i32 @ptrmapGet(ptr noundef nonnull %i.dk, i32 noundef %i.dq, ptr noundef %i.a, ptr noundef nonnull %i.b)
  switch i32 %i.dr, label %checkOom.exit.i73 [
    i32 0, label %bb.ac
    i32 3082, label %bb.aa
    i32 7, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  store i32 7, ptr %i.n, align 4, !tbaa !2817
  store i32 0, ptr %i.j, align 4, !tbaa !2814
  %i.ds = load i32, ptr %i.h, align 8, !tbaa !2818
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.ab, label %checkOom.exit.i73

bb.ab:                                            ; preds = %bb.aa
  store i32 1, ptr %i.h, align 8, !tbaa !2818
  br label %checkOom.exit.i73

checkOom.exit.i73:                                ; preds = %bb.ab, %bb.aa, %bb.z
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.423, i32 noundef %i.dq)
  br label %checkPtrmap.exit77

bb.ac:                                            ; preds = %bb.z
  %i.du = load i8, ptr %i.a, align 1, !tbaa !227  ; 2 uses
  %.not14.i74 = icmp eq i8 %i.du, 4
  %i.dv = load i32, ptr %i.b, align 4             ; 2 uses
  %.not15.i75 = icmp eq i32 %i.dv, %.093
  %or.cond.i76 = select i1 %.not14.i74, i1 %.not15.i75, i1 false
  br i1 %or.cond.i76, label %checkPtrmap.exit77, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dw = zext i8 %i.du to i32
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.424, i32 noundef %i.dq, i32 noundef 4, i32 noundef %.093, i32 noundef %i.dw, i32 noundef %i.dv)
  br label %checkPtrmap.exit77

checkPtrmap.exit77:                               ; preds = %checkOom.exit.i73, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.ae

bb.ae:                                            ; preds = %bb.n, %._crit_edge, %bb.y, %checkPtrmap.exit77
  %.2 = phi i32 [ %i.ab, %bb.y ], [ %i.ab, %checkPtrmap.exit77 ], [ %i.bt, %bb.n ], [ %i.dj, %._crit_edge ] ; 2 uses
  %i.dx = load i8, ptr %.val, align 1, !tbaa !227
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl nuw i32 %i.dy, 24
  %i.ea = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !227
  %i.ec = zext i8 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 16
  %i.ee = or disjoint i32 %i.ed, %i.dz
  %i.ef = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !227
  %i.eh = zext i8 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 8
  %i.ej = or disjoint i32 %i.ee, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %.val, i64 3
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !227
  %i.em = zext i8 %i.el to i32
  %i.en = or disjoint i32 %i.ej, %i.em            ; 2 uses
  %i.eo = load ptr, ptr %i.g, align 8, !tbaa !513 ; 8 uses
  %.not.i78 = icmp eq ptr %i.eo, null
  br i1 %.not.i78, label %sqlite3PagerUnref.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 52
  %i.eq = load i16, ptr %i.ep, align 4, !tbaa !519
  %i.er = and i16 %i.eq, 32
  %.not.i.i = icmp eq i16 %i.er, 0
  br i1 %.not.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !520 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 152 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !521
  %i.ew = add nsw i32 %i.ev, -1
end_hunk_1
begin_hunk_2_@sqlite3CreateIndex:bb.a
bb.cg:                                            ; preds = %bb.cf
  %i.nq = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.no) #60
  %i.nr = and i64 %i.nq, 1073741823
  %i.ns = add nuw nsw i64 %i.nr, 1
  br label %sqlite3Strlen30.exit545

sqlite3Strlen30.exit545:                          ; preds = %bb.cf, %bb.cg
  %.0.i544 = phi i64 [ %i.ns, %bb.cg ], [ 1, %bb.cf ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lk, ptr noundef nonnull align 1 dereferenceable(1) %i.no, i64 %.0.i544, i1 false)
  %i.nt = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.0.i544
  br label %.thread591

bb.ch:                                            ; preds = %bb.ce
  %i.nu = icmp sgt i32 %.0417, -1
  br i1 %i.nu, label %bb.ci, label %.thread591

bb.ci:                                            ; preds = %bb.ch
  %i.nv = load ptr, ptr %i.lg, align 8, !tbaa !882
  %i.nw = zext nneg i32 %.0417 to i64
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %i.nv, i64 %i.nw
  %i.ny = call fastcc ptr @sqlite3ColumnColl(ptr noundef %i.nx)
  br label %.thread591

.thread591:                                       ; preds = %.thread584, %bb.ch, %bb.ci, %sqlite3Strlen30.exit545
  %i.nz = phi ptr [ %i.nt, %sqlite3Strlen30.exit545 ], [ %i.lk, %bb.ci ], [ %i.lk, %bb.ch ], [ %i.lk, %.thread584 ] ; 3 uses
  %.4588 = phi ptr [ %.4590, %sqlite3Strlen30.exit545 ], [ %.2722, %bb.ci ], [ %.2722, %bb.ch ], [ %.3, %.thread584 ] ; 3 uses
  %.0426 = phi ptr [ %i.lk, %sqlite3Strlen30.exit545 ], [ %i.ny, %bb.ci ], [ null, %bb.ch ], [ null, %.thread584 ] ; 2 uses
  %.not499 = icmp eq ptr %.0426, null
  %spec.store.select7 = select i1 %.not499, ptr @.str.136, ptr %.0426 ; 2 uses
  %i.oa = load i8, ptr %i.i, align 1, !tbaa !535
  %.not500 = icmp eq i8 %i.oa, 0
  br i1 %.not500, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.thread591
  %i.ob = call fastcc ptr @sqlite3LocateCollSeq(ptr noundef nonnull %0, ptr noundef nonnull %spec.store.select7)
  %.not501 = icmp eq ptr %i.ob, null
  br i1 %.not501, label %.thread634.loopexit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.thread591
  %i.oc = load ptr, ptr %i.li, align 8, !tbaa !2803
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv784
  store ptr %spec.store.select7, ptr %i.od, align 8, !tbaa !251
  %i.oe = getelementptr inbounds nuw i8, ptr %.0427719, i64 16
  %i.of = load i8, ptr %i.oe, align 8, !tbaa !3498
  %i.og = select i1 %i.kx, i8 %i.of, i8 0
  %i.oh = load ptr, ptr %i.lj, align 8, !tbaa !3603
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 %indvars.iv784
  store i8 %i.og, ptr %i.oi, align 1, !tbaa !227
  %indvars.iv.next785 = add nuw nsw i64 %indvars.iv784, 1 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.0427719, i64 24
  %i.ok = load i16, ptr %i.kq, align 2, !tbaa !936
  %i.ol = zext i16 %i.ok to i64
  %i.om = icmp samesign ult i64 %indvars.iv.next785, %i.ol
  br i1 %i.om, label %bb.bt, label %._crit_edge725.loopexit, !llvm.loop !3604

._crit_edge725.loopexit:                          ; preds = %bb.ck
  %i.on = trunc nuw nsw i64 %indvars.iv.next785 to i32
  br label %._crit_edge725

._crit_edge725:                                   ; preds = %._crit_edge725.loopexit, %bb.bs
  %.lcssa716 = phi ptr [ %i.jy, %bb.bs ], [ %i.nz, %._crit_edge725.loopexit ]
  %.1414.lcssa = phi i32 [ 0, %bb.bs ], [ %i.on, %._crit_edge725.loopexit ] ; 2 uses
  %.2.lcssa = phi ptr [ %.1, %bb.bs ], [ %.4588, %._crit_edge725.loopexit ] ; 8 uses
  store ptr %.lcssa716, ptr %i.a, align 8
  br i1 %.not481, label %bb.cp, label %.preheader679

.preheader679:                                    ; preds = %._crit_edge725
  %i.oo = getelementptr inbounds nuw i8, ptr %.0433, i64 94 ; 2 uses
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !936 ; 2 uses
  %.not755 = icmp eq i16 %i.op, 0
  br i1 %.not755, label %.loopexit680, label %.lr.ph731

.lr.ph731:                                        ; preds = %.preheader679
  %i.oq = getelementptr inbounds nuw i8, ptr %i.js, i64 96 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.0433, i64 8
  %i.os = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ot = getelementptr inbounds nuw i8, ptr %.0433, i64 64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.js, i64 64
  %i.ov = getelementptr inbounds nuw i8, ptr %.0433, i64 56
  %i.ow = getelementptr inbounds nuw i8, ptr %i.js, i64 56
  br label %bb.cl

bb.cl:                                            ; preds = %.lr.ph731, %bb.co
  %i.ox = phi i16 [ %i.op, %.lr.ph731 ], [ %i.pv, %bb.co ]
  %indvars.iv787 = phi i64 [ 0, %.lr.ph731 ], [ %indvars.iv.next788, %bb.co ] ; 5 uses
  %.2415730 = phi i32 [ %.1414.lcssa, %.lr.ph731 ], [ %.3416, %bb.co ] ; 3 uses
  %i.oy = load i16, ptr %i.kq, align 2, !tbaa !936
  %i.oz = zext i16 %i.oy to i32
  %i.pa = trunc nuw nsw i64 %indvars.iv787 to i32
  %i.pb = call fastcc i32 @isDupColumn(ptr noundef nonnull %i.js, i32 noundef %i.oz, ptr noundef nonnull %.0433, i32 noundef %i.pa)
  %.not495 = icmp eq i32 %i.pb, 0
  br i1 %.not495, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pc = load i16, ptr %i.oq, align 8, !tbaa !875
  %i.pd = add i16 %i.pc, -1
  store i16 %i.pd, ptr %i.oq, align 8, !tbaa !875
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.pe = load ptr, ptr %i.or, align 8, !tbaa !878
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.pe, i64 %indvars.iv787
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !330
  %i.ph = load ptr, ptr %i.os, align 8, !tbaa !878
  %i.pi = sext i32 %.2415730 to i64               ; 3 uses
  %i.pj = getelementptr inbounds [2 x i8], ptr %i.ph, i64 %i.pi
  store i16 %i.pg, ptr %i.pj, align 2, !tbaa !330
  %i.pk = load ptr, ptr %i.ot, align 8, !tbaa !2803
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv787
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !251
  %i.pn = load ptr, ptr %i.ou, align 8, !tbaa !2803
  %i.po = getelementptr inbounds [8 x i8], ptr %i.pn, i64 %i.pi
  store ptr %i.pm, ptr %i.po, align 8, !tbaa !251
  %i.pp = load ptr, ptr %i.ov, align 8, !tbaa !3603
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 %indvars.iv787
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !227
  %i.ps = load ptr, ptr %i.ow, align 8, !tbaa !3603
  %i.pt = getelementptr inbounds i8, ptr %i.ps, i64 %i.pi
  store i8 %i.pr, ptr %i.pt, align 1, !tbaa !227
  %i.pu = add nsw i32 %.2415730, 1
  %.pre799 = load i16, ptr %i.oo, align 2, !tbaa !936
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.pv = phi i16 [ %i.ox, %bb.cm ], [ %.pre799, %bb.cn ] ; 2 uses
  %.3416 = phi i32 [ %.2415730, %bb.cm ], [ %i.pu, %bb.cn ]
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 1 ; 2 uses
  %i.pw = zext i16 %i.pv to i64
  %i.px = icmp samesign ult i64 %indvars.iv.next788, %i.pw
  br i1 %i.px, label %bb.cl, label %.loopexit680, !llvm.loop !3605

bb.cp:                                            ; preds = %._crit_edge725
  %i.py = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !878
  %i.qa = zext nneg i32 %.1414.lcssa to i64       ; 2 uses
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %i.pz, i64 %i.qa
  store i16 -1, ptr %i.qb, align 2, !tbaa !330
  %i.qc = getelementptr inbounds nuw i8, ptr %i.js, i64 64
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !2803
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %i.qa
  store ptr @.str.136, ptr %i.qe, align 8, !tbaa !251
  br label %.loopexit680

.loopexit680:                                     ; preds = %bb.co, %.preheader679, %bb.cp
  call fastcc void @sqlite3DefaultRowEst(ptr noundef nonnull %i.js)
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !1093
  %i.qh = icmp eq ptr %i.qg, null
  br i1 %i.qh, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.loopexit680
  call fastcc void @estimateIndexWidth(ptr noundef nonnull %i.js)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.loopexit680
  call fastcc void @recomputeColumnsNotIndexed(ptr noundef nonnull %i.js)
  br i1 %i.bi, label %bb.cs, label %.loopexit

bb.cs:                                            ; preds = %bb.cr
  %i.qi = getelementptr inbounds nuw i8, ptr %i.js, i64 96
  %i.qj = load i16, ptr %i.qi, align 8, !tbaa !875
  %.fr = freeze i16 %i.qj                         ; 3 uses
  %i.qk = zext i16 %.fr to i32
  %i.ql = getelementptr inbounds nuw i8, ptr %.0402, i64 54 ; 2 uses
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !881
  %i.qn = sext i16 %i.qm to i32
  %.not485 = icmp slt i32 %i.qk, %i.qn
  br i1 %.not485, label %.loopexit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.qo = load i16, ptr %i.kc, align 1            ; 2 uses
  %i.qp = or i16 %i.qo, 32
  store i16 %i.qp, ptr %i.kc, align 1
  %i.qq = load i16, ptr %i.ql, align 2, !tbaa !881 ; 2 uses
  %i.qr = sext i16 %i.qq to i32                   ; 2 uses
  %i.qs = icmp sgt i16 %i.qq, 0
  br i1 %i.qs, label %.lr.ph734, label %.loopexit

.lr.ph734:                                        ; preds = %bb.ct
  %i.qt = getelementptr inbounds nuw i8, ptr %.0402, i64 52
  %i.qu = load i16, ptr %i.qt, align 4, !tbaa !891 ; 2 uses
  %i.qv = sext i16 %i.qu to i32                   ; 2 uses
  %.not.i546 = icmp eq i16 %.fr, 0
  %i.qw = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %wide.trip.count.i548 = zext i16 %.fr to i64
  br i1 %.not.i546, label %.lr.ph734.split.us.preheader, label %.lr.ph734.split

.lr.ph734.split.us.preheader:                     ; preds = %.lr.ph734
  %i.qx = icmp ne i16 %i.qu, 0
  %i.qy = add nuw nsw i32 %i.qv, 1
  %exitcond790.not.us = icmp ne i32 %i.qy, %i.qr
  %brmerge = select i1 %i.qx, i1 true, i1 %exitcond790.not.us
  br i1 %brmerge, label %sqlite3TableColumnToIndex.exit.thread, label %.loopexit

.lr.ph734.split:                                  ; preds = %.lr.ph734, %sqlite3TableColumnToIndex.exit
  %.3420732 = phi i32 [ %i.rg, %sqlite3TableColumnToIndex.exit ], [ 0, %.lr.ph734 ] ; 3 uses
  %i.qz = icmp eq i32 %.3420732, %i.qv
  br i1 %i.qz, label %sqlite3TableColumnToIndex.exit, label %.lr.ph.i547

.lr.ph.i547:                                      ; preds = %.lr.ph734.split
  %i.ra = load ptr, ptr %i.qw, align 8, !tbaa !878
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cv, %.lr.ph.i547
  %indvars.iv.i549 = phi i64 [ 0, %.lr.ph.i547 ], [ %indvars.iv.next.i550, %bb.cv ] ; 2 uses
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.ra, i64 %indvars.iv.i549
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !330
  %i.rd = sext i16 %i.rc to i32
  %i.re = icmp eq i32 %.3420732, %i.rd
  br i1 %i.re, label %sqlite3TableColumnToIndex.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %indvars.iv.next.i550 = add nuw nsw i64 %indvars.iv.i549, 1 ; 2 uses
  %exitcond.not.i551 = icmp eq i64 %indvars.iv.next.i550, %wide.trip.count.i548
  br i1 %exitcond.not.i551, label %sqlite3TableColumnToIndex.exit.thread, label %bb.cu, !llvm.loop !879

sqlite3TableColumnToIndex.exit.thread:            ; preds = %bb.cv, %.lr.ph734.split.us.preheader
  %i.rf = and i16 %i.qo, -33
  store i16 %i.rf, ptr %i.kc, align 1
  br label %.loopexit

sqlite3TableColumnToIndex.exit:                   ; preds = %bb.cu, %.lr.ph734.split
  %i.rg = add nuw nsw i32 %.3420732, 1            ; 2 uses
  %exitcond790.not = icmp eq i32 %i.rg, %i.qr
  br i1 %exitcond790.not, label %.loopexit, label %.lr.ph734.split, !llvm.loop !3606

.loopexit:                                        ; preds = %sqlite3TableColumnToIndex.exit, %.lr.ph734.split.us.preheader, %bb.ct, %sqlite3TableColumnToIndex.exit.thread, %bb.cs, %bb.cr
  %i.rh = load ptr, ptr %i.qf, align 8, !tbaa !1093
  %i.ri = icmp eq ptr %.0402, %i.rh
  br i1 %i.ri, label %bb.cw, label %.thread610

bb.cw:                                            ; preds = %.loopexit
  %i.rj = getelementptr inbounds nuw i8, ptr %.0402, i64 16
  %.0422742 = load ptr, ptr %i.rj, align 8, !tbaa !935 ; 2 uses
  %.not486743 = icmp eq ptr %.0422742, null
  br i1 %.not486743, label %.thread610, label %.lr.ph746

.lr.ph746:                                        ; preds = %bb.cw
  %i.rk = load i16, ptr %i.kq, align 2, !tbaa !936 ; 4 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.rm = getelementptr inbounds nuw i8, ptr %i.js, i64 64
  %i.rn = zext i16 %i.rk to i32
  %.not756 = icmp eq i16 %i.rk, 0
  %wide.trip.count794 = zext i16 %i.rk to i64
  br label %bb.cx

bb.cx:                                            ; preds = %.lr.ph746, %bb.dm
  %.0422744 = phi ptr [ %.0422742, %.lr.ph746 ], [ %.0422, %bb.dm ] ; 6 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.0422744, i64 94
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !936
  %.not487 = icmp eq i16 %i.rp, %i.rk
  br i1 %.not487, label %.preheader676, label %bb.dm

.preheader676:                                    ; preds = %bb.cx
  br i1 %.not756, label %.thread604, label %.lr.ph736

.lr.ph736:                                        ; preds = %.preheader676
  %i.rq = getelementptr inbounds nuw i8, ptr %.0422744, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !878
  %i.rs = load ptr, ptr %i.rl, align 8, !tbaa !878
  %i.rt = getelementptr inbounds nuw i8, ptr %.0422744, i64 64
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph736, %sqlite3StrICmp.exit.thread
  %indvars.iv791 = phi i64 [ 0, %.lr.ph736 ], [ %indvars.iv.next792, %sqlite3StrICmp.exit.thread ] ; 7 uses
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %i.rr, i64 %indvars.iv791
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !330
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %indvars.iv791
  %i.rx = load i16, ptr %i.rw, align 2, !tbaa !330
  %.not488 = icmp eq i16 %i.rv, %i.rx
  br i1 %.not488, label %bb.cz, label %.thread604.loopexit863

bb.cz:                                            ; preds = %bb.cy
  %i.ry = load ptr, ptr %i.rt, align 8, !tbaa !2803
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %indvars.iv791
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !251
  %i.sb = load ptr, ptr %i.rm, align 8, !tbaa !2803
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %indvars.iv791
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !251
  br label %bb.da

bb.da:                                            ; preds = %bb.dd, %bb.cz
  %.013.i = phi ptr [ %i.sd, %bb.cz ], [ %i.sp, %bb.dd ] ; 2 uses
  %.0.i553 = phi ptr [ %i.sa, %bb.cz ], [ %i.so, %bb.dd ] ; 2 uses
  %i.se = load i8, ptr %.0.i553, align 1, !tbaa !227 ; 3 uses
  %i.sf = load i8, ptr %.013.i, align 1, !tbaa !227 ; 2 uses
  %i.sg = icmp eq i8 %i.se, %i.sf
  br i1 %i.sg, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.sh = icmp eq i8 %i.se, 0
  br i1 %i.sh, label %sqlite3StrICmp.exit.thread, label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.si = zext i8 %i.se to i64
  %i.sj = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.si
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !227
  %i.sl = zext i8 %i.sf to i64
  %i.sm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.sl
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !227
  %.not.i554 = icmp eq i8 %i.sk, %i.sn
  br i1 %.not.i554, label %bb.dd, label %.thread604.loopexit

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.so = getelementptr inbounds nuw i8, ptr %.0.i553, i64 1
  %i.sp = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  br label %bb.da

sqlite3StrICmp.exit.thread:                       ; preds = %bb.db
  %indvars.iv.next792 = add nuw nsw i64 %indvars.iv791, 1 ; 2 uses
  %exitcond795.not = icmp eq i64 %indvars.iv.next792, %wide.trip.count794
  br i1 %exitcond795.not, label %.thread604.thread, label %bb.cy, !llvm.loop !3607

.thread604.loopexit:                              ; preds = %bb.dc
  %i.sq = trunc nuw nsw i64 %indvars.iv791 to i32
  br label %.thread604

.thread604.loopexit863:                           ; preds = %bb.cy
  %i.sr = trunc nuw nsw i64 %indvars.iv791 to i32
  br label %.thread604

.thread604:                                       ; preds = %.thread604.loopexit863, %.thread604.loopexit, %.preheader676
  %.0421686 = phi i32 [ %i.sq, %.thread604.loopexit ], [ 0, %.preheader676 ], [ %i.sr, %.thread604.loopexit863 ]
  %i.ss = icmp eq i32 %.0421686, %i.rn
  br i1 %i.ss, label %.thread604.thread, label %bb.dm

.thread604.thread:                                ; preds = %.thread604, %sqlite3StrICmp.exit.thread
  %i.st = getelementptr inbounds nuw i8, ptr %.0422744, i64 98 ; 3 uses
  %i.su = load i8, ptr %i.st, align 2, !tbaa !2990 ; 3 uses
  %i.sv = load i8, ptr %i.kb, align 2, !tbaa !2990 ; 2 uses
  %.not490 = icmp eq i8 %i.su, %i.sv
  br i1 %.not490, label %bb.di, label %bb.de

bb.de:                                            ; preds = %.thread604.thread
  %i.sw = icmp eq i8 %i.su, 11
  %i.sx = icmp eq i8 %i.sv, 11
  %or.cond514 = or i1 %i.sw, %i.sx
  br i1 %or.cond514, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.826, i32 noundef 0)
  %.pre800 = load i8, ptr %i.st, align 2, !tbaa !2990
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.sy = phi i8 [ %.pre800, %bb.df ], [ %i.su, %bb.de ]
  %i.sz = icmp eq i8 %i.sy, 11
  br i1 %i.sz, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ta = load i8, ptr %i.kb, align 2, !tbaa !2990
  store i8 %i.ta, ptr %i.st, align 2, !tbaa !2990
  br label %bb.di

bb.di:                                            ; preds = %bb.dg, %bb.dh, %.thread604.thread
  %i.tb = icmp eq i8 %10, 2
  br i1 %i.tb, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.tc = getelementptr inbounds nuw i8, ptr %.0422744, i64 99 ; 2 uses
  %i.td = load i16, ptr %i.tc, align 1
  %i.te = and i16 %i.td, -4
  %i.tf = or disjoint i16 %i.te, 2
  store i16 %i.tf, ptr %i.tc, align 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.tg = load i8, ptr %i.e, align 4, !tbaa !1091
  %i.th = icmp ugt i8 %i.tg, 1
  br i1 %i.th, label %bb.dl, label %.thread634

bb.dl:                                            ; preds = %bb.dk
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !3510
  %i.tk = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  store ptr %i.tj, ptr %i.tk, align 8, !tbaa !2795
  store ptr %i.js, ptr %i.ti, align 8, !tbaa !3510
  br label %.thread623.thread

bb.dm:                                            ; preds = %bb.cx, %.thread604
  %i.tl = getelementptr inbounds nuw i8, ptr %.0422744, i64 40
  %.0422 = load ptr, ptr %i.tl, align 8, !tbaa !935 ; 2 uses
  %.not486 = icmp eq ptr %.0422, null
  br i1 %.not486, label %.thread610, label %bb.cx, !llvm.loop !3608

.thread610:                                       ; preds = %bb.dm, %bb.cw, %.loopexit
  %i.tm = load i8, ptr %i.e, align 4, !tbaa !1091
  %i.tn = icmp ugt i8 %i.tm, 1
  br i1 %i.tn, label %bb.ec, label %bb.dn

bb.dn:                                            ; preds = %.thread610
  %i.to = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.tp = load i8, ptr %i.i, align 1, !tbaa !535
  %.not491 = icmp eq i8 %i.tp, 0
  br i1 %.not491, label %bb.dt, label %bb.do

bb.do:                                            ; preds = %bb.dn
  br i1 %i.bi, label %bb.dp, label %sqlite3IndexHasDuplicateRootPage.exit.thread

bb.dp:                                            ; preds = %bb.do
  %i.tq = load i32, ptr %i.to, align 8, !tbaa !1335 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.js, i64 88
  store i32 %i.tq, ptr %i.tr, align 8, !tbaa !2971
  %i.ts = load ptr, ptr %i.jz, align 8, !tbaa !1098
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %.09.i = load ptr, ptr %i.tt, align 8, !tbaa !935 ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %sqlite3IndexHasDuplicateRootPage.exit.thread, label %.lr.ph.i555

end_hunk_2
begin_hunk_3_@sqlite3Update:bb.a
bb.et:                                            ; preds = %bb.es
  %i.yk = sub nsw i32 %.sroa.5.1, %i.cq
  %i.yl = sext i32 %i.yk to i64
  %i.ym = getelementptr inbounds i8, ptr %i.ed, i64 %i.yl
  store i8 0, ptr %i.ym, align 1, !tbaa !227
  br label %bb.eu

bb.eu:                                            ; preds = %bb.es, %bb.et
  %i.yn = icmp eq i32 %.2763, 2
  br i1 %i.yn, label %bb.ev, label %.thread99

bb.ev:                                            ; preds = %bb.eu
  %.neg = sext i1 %i.yj to i32
  %i.yo = add i32 %.0751.lcssa, %.neg
  %i.yp = icmp sgt i32 %i.yo, 0
  br i1 %i.yp, label %bb.ew, label %.thread99

.thread99:                                        ; preds = %bb.ev, %bb.eu, %bb.ep
  %i.yq = call fastcc i32 @sqlite3OpenTableAndIndices(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 114, i8 noundef zeroext 0, i32 noundef %i.cq, ptr noundef nonnull %i.ed, ptr noundef %i.c, ptr noundef %i.d) ; 0 uses
  br label %sqlite3VdbeJumpHereOrPopInst.exit

bb.ew:                                            ; preds = %bb.ev
  %i.yr = call fastcc i32 @sqlite3VdbeAddOp0(ptr noundef nonnull %.0.i875379, i32 noundef 15) ; 4 uses
  %i.ys = call fastcc i32 @sqlite3OpenTableAndIndices(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 114, i8 noundef zeroext 0, i32 noundef %i.cq, ptr noundef nonnull %i.ed, ptr noundef %i.c, ptr noundef %i.d) ; 0 uses
  %.not824 = icmp eq i32 %i.yr, 0
  br i1 %.not824, label %sqlite3VdbeJumpHereOrPopInst.exit, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.yt = getelementptr inbounds nuw i8, ptr %.0.i875379, i64 144 ; 2 uses
  %i.yu = load i32, ptr %i.yt, align 8, !tbaa !185 ; 2 uses
  %i.yv = add nsw i32 %i.yu, -1
  %i.yw = icmp eq i32 %i.yr, %i.yv
  br i1 %i.yw, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  store i32 %i.yr, ptr %i.yt, align 8, !tbaa !185
  br label %sqlite3VdbeJumpHereOrPopInst.exit

bb.ez:                                            ; preds = %bb.ex
  %i.yx = load ptr, ptr %.0.i875379, align 8, !tbaa !146
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 103
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !550
  %.not.i.i.i903 = icmp eq i8 %i.yz, 0
  br i1 %.not.i.i.i903, label %bb.fa, label %sqlite3VdbeChangeP2.exit.i

bb.fa:                                            ; preds = %bb.ez
  %i.za = getelementptr inbounds nuw i8, ptr %.0.i875379, i64 136
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !184
  %i.zc = sext i32 %i.yr to i64
  %i.zd = getelementptr inbounds [24 x i8], ptr %i.zb, i64 %i.zc
  br label %sqlite3VdbeChangeP2.exit.i

sqlite3VdbeChangeP2.exit.i:                       ; preds = %bb.fa, %bb.ez
  %.0.i.i.i = phi ptr [ %i.zd, %bb.fa ], [ @sqlite3VdbeGetOp.dummy, %bb.ez ]
  %i.ze = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.yu, ptr %i.ze, align 8, !tbaa !585
  br label %sqlite3VdbeJumpHereOrPopInst.exit

sqlite3VdbeJumpHereOrPopInst.exit:                ; preds = %sqlite3VdbeChangeP2.exit.i, %bb.ey, %.thread99, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  br label %bb.fb

bb.fb:                                            ; preds = %sqlite3VdbeJumpHereOrPopInst.exit, %bb.eo
  %.not825 = icmp eq i32 %.2763, 0
  br i1 %.not825, label %bb.fh, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %.not826 = icmp eq i32 %.sroa.0.1, %.476065
  %.not827 = icmp eq i32 %.sroa.5.1, %.476065
  %or.cond860 = select i1 %.not826, i1 true, i1 %.not827
  br i1 %or.cond860, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.zf = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i875379, i32 noundef 28, i32 noundef %.476065, i32 noundef %i.ul, i32 noundef %.1729, i32 noundef %.0745) ; 0 uses
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.not828 = icmp eq i32 %.2763, 1
  br i1 %.not828, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.zg = load i32, ptr %i.uj, align 8, !tbaa !3295
  %i.zh = add nsw i32 %i.zg, -1                   ; 2 uses
  store i32 %i.zh, ptr %i.uj, align 8, !tbaa !3295
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.0753 = phi i32 [ %i.zh, %bb.ff ], [ %i.ul, %bb.fe ]
  %.not829 = icmp eq ptr %i.dg, null
  %i.zi = select i1 %.not829, i32 %.0736, i32 %.1729
  %i.zj = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i875379, i32 noundef 51, i32 noundef %i.zi, i32 noundef %i.ul) ; 0 uses
  br label %bb.fo

bb.fh:                                            ; preds = %bb.fb
  %i.zk = icmp ne ptr %i.dg, null                 ; 2 uses
  %or.cond25 = or i1 %i.zk, %i.yd
  br i1 %or.cond25, label %bb.fi, label %bb.fn

bb.fi:                                            ; preds = %bb.fh
  %i.zl = load i32, ptr %i.uj, align 8, !tbaa !3295
  %i.zm = add nsw i32 %i.zl, -1                   ; 8 uses
  store i32 %i.zm, ptr %i.uj, align 8, !tbaa !3295
  %i.zn = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i875379, i32 noundef 36, i32 noundef %.074668, i32 noundef %i.ul) ; 0 uses
  %i.zo = getelementptr i8, ptr %.0.i875379, i64 144
  %.val = load i32, ptr %i.zo, align 8, !tbaa !185 ; 4 uses
  br i1 %i.yd, label %bb.fj, label %bb.fm

bb.fj:                                            ; preds = %bb.fi
  br i1 %i.ce, label %bb.fo, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  br i1 %i.zk, label %.preheader, label %bb.fl

.preheader:                                       ; preds = %bb.fk
  %i.zp = sext i16 %.074276 to i32                ; 2 uses
  %i.zq = icmp sgt i16 %.074276, 0
  br i1 %i.zq, label %.lr.ph219, label %._crit_edge220

.lr.ph219:                                        ; preds = %.preheader, %.lr.ph219
  %.5218 = phi i32 [ %i.zt, %.lr.ph219 ], [ 0, %.preheader ] ; 3 uses
  %i.zr = add nsw i32 %.5218, %.074372
  %i.zs = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i875379, i32 noundef 95, i32 noundef %.074668, i32 noundef %.5218, i32 noundef %i.zr) ; 0 uses
  %i.zt = add nuw nsw i32 %.5218, 1               ; 2 uses
  %exitcond287.not = icmp eq i32 %i.zt, %i.zp
  br i1 %exitcond287.not, label %._crit_edge220, label %.lr.ph219, !llvm.loop !3821

._crit_edge220:                                   ; preds = %.lr.ph219, %.preheader
  %i.zu = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i875379, i32 noundef 28, i32 noundef %.476065, i32 noundef %i.zm, i32 noundef %.074372, i32 noundef %i.zp) ; 0 uses
  br label %bb.fo

bb.fl:                                            ; preds = %bb.fk
  %i.zv = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i875379, i32 noundef 136, i32 noundef %.074668, i32 noundef %.0736) ; 0 uses
  %i.zw = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i875379, i32 noundef 31, i32 noundef %.476065, i32 noundef %i.zm, i32 noundef %.0736) ; 0 uses
  br label %bb.fo

bb.fm:                                            ; preds = %bb.fi
  %i.zx = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i875379, i32 noundef 135, i32 noundef %.074668, i32 noundef %.1729) ; 0 uses
  %i.zy = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i875379, i32 noundef 28, i32 noundef %.476065, i32 noundef %i.zm, i32 noundef %.1729, i32 noundef 0) ; 0 uses
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fh
  %i.zz = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i875379, i32 noundef 36, i32 noundef %.074668, i32 noundef %i.ul) ; 0 uses
  %i.aaa = load i32, ptr %i.uj, align 8, !tbaa !3295
  %i.aab = add nsw i32 %i.aaa, -1                 ; 3 uses
  store i32 %i.aab, ptr %i.uj, align 8, !tbaa !3295
  %i.aac = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i875379, i32 noundef 136, i32 noundef %.074668, i32 noundef %.0736)
  %i.aad = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i875379, i32 noundef 31, i32 noundef %.476065, i32 noundef %i.aab, i32 noundef %.0736) ; 0 uses
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fg, %bb.fm, %._crit_edge220, %bb.fl, %bb.fj, %bb.fn, %bb.el
  %.1754 = phi i32 [ %.0753, %bb.fg ], [ %i.zm, %bb.fj ], [ %i.zm, %._crit_edge220 ], [ %i.zm, %bb.fl ], [ %i.zm, %bb.fm ], [ %i.aab, %bb.fn ], [ %i.ul, %bb.el ] ; 9 uses
  %.0727 = phi i32 [ 0, %bb.fg ], [ %.val, %bb.fj ], [ %.val, %._crit_edge220 ], [ %.val, %bb.fl ], [ %.val, %bb.fm ], [ %i.aac, %bb.fn ], [ 0, %bb.el ]
  %.not830 = icmp eq i8 %.0771.lcssa395, 0        ; 2 uses
  br i1 %.not830, label %bb.ft, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  br i1 %i.uh, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %.0768.lcssa397, i32 noundef %.1735)
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  %i.aae = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i875379, i32 noundef 95, i32 noundef %.074668, i32 noundef %.0765.lcssa399, i32 noundef %.1735) ; 0 uses
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.aaf = call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %.0.i875379, i32 noundef 13, i32 noundef %.1735) ; 0 uses
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fo
  %i.aag = icmp ne i8 %.0774.lcssa393, 0
  %or.cond27 = select i1 %i.aag, i1 true, i1 %i.tg
  %or.cond29 = or i1 %i.tf, %or.cond27
  br i1 %or.cond29, label %bb.fu, label %bb.gg

bb.fu:                                            ; preds = %bb.ft
  br i1 %i.tg, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.aah = call fastcc i32 @sqlite3FkOldmask(ptr noundef nonnull %0, ptr noundef %i.t)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  %i.aai = phi i32 [ %i.aah, %bb.fv ], [ 0, %bb.fu ]
  %i.aaj = call fastcc i32 @sqlite3TriggerColmask(ptr noundef nonnull %0, ptr noundef %.0.i870, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 3, ptr noundef %i.t, i32 noundef %4)
  %i.aak = or i32 %i.aaj, %i.aai                  ; 2 uses
  %i.aal = load i16, ptr %i.dn, align 2, !tbaa !881
  %i.aam = icmp sgt i16 %i.aal, 0
  br i1 %i.aam, label %.lr.ph225, label %._crit_edge226

.lr.ph225:                                        ; preds = %bb.fw
  %i.aan = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aao = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.aap = icmp eq i32 %i.aak, -1
  br label %bb.fx

bb.fx:                                            ; preds = %.lr.ph225, %bb.ge
  %indvars.iv288 = phi i64 [ 0, %.lr.ph225 ], [ %indvars.iv.next289, %bb.ge ] ; 12 uses
  %i.aaq = load ptr, ptr %i.aan, align 8, !tbaa !882 ; 22 uses
  %i.aar = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %indvars.iv288
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 14
  %i.aat = load i16, ptr %i.aas, align 2, !tbaa !883 ; 3 uses
  %i.aau = trunc nuw nsw i64 %indvars.iv288 to i32 ; 2 uses
  %i.aav = trunc i64 %indvars.iv288 to i16        ; 4 uses
  %i.aaw = load i32, ptr %i.cs, align 8, !tbaa !788
  %i.aax = and i32 %i.aaw, 32
  %i.aay = icmp eq i32 %i.aax, 0
  %i.aaz = icmp slt i16 %i.aav, 0
  %or.cond.i = or i1 %i.aaz, %i.aay
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i904

.preheader.i904:                                  ; preds = %bb.fx
  %.not23.i = icmp eq i16 %i.aav, 0
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i904
  %min.iters.check = icmp samesign ult i64 %indvars.iv288, 5
  br i1 %min.iters.check, label %.lr.ph.i905.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check489 = icmp samesign ult i64 %indvars.iv288, 17
  br i1 %min.iters.check489, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %indvars.iv288, 15          ; 2 uses
  %i.aba = icmp eq i64 %n.mod.vf, 0
  %i.abb = select i1 %i.aba, i64 16, i64 %n.mod.vf ; 2 uses
  %n.vec = sub nsw i64 %indvars.iv288, %i.abb     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.adu, %vector.body ]
  %vec.phi490 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.adv, %vector.body ]
  %i.abc = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abd = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abe = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abf = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abg = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abh = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abi = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abj = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abk = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abl = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abm = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abn = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abo = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abp = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abq = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abr = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abc, i64 14
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abd, i64 30
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abe, i64 46
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abf, i64 62
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abg, i64 78
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abh, i64 94
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abi, i64 110
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abj, i64 126
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abk, i64 142
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abl, i64 158
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abm, i64 174
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abn, i64 190
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abo, i64 206
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abp, i64 222
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abq, i64 238
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abr, i64 254
  %i.aci = load i16, ptr %i.abs, align 2, !tbaa !883
  %i.acj = load i16, ptr %i.abt, align 2, !tbaa !883
  %i.ack = load i16, ptr %i.abu, align 2, !tbaa !883
  %i.acl = load i16, ptr %i.abv, align 2, !tbaa !883
  %i.acm = load i16, ptr %i.abw, align 2, !tbaa !883
  %i.acn = load i16, ptr %i.abx, align 2, !tbaa !883
  %i.aco = load i16, ptr %i.aby, align 2, !tbaa !883
  %i.acp = load i16, ptr %i.abz, align 2, !tbaa !883
  %i.acq = insertelement <8 x i16> poison, i16 %i.aci, i64 0
  %i.acr = insertelement <8 x i16> %i.acq, i16 %i.acj, i64 1
  %i.acs = insertelement <8 x i16> %i.acr, i16 %i.ack, i64 2
  %i.act = insertelement <8 x i16> %i.acs, i16 %i.acl, i64 3
  %i.acu = insertelement <8 x i16> %i.act, i16 %i.acm, i64 4
  %i.acv = insertelement <8 x i16> %i.acu, i16 %i.acn, i64 5
  %i.acw = insertelement <8 x i16> %i.acv, i16 %i.aco, i64 6
  %i.acx = insertelement <8 x i16> %i.acw, i16 %i.acp, i64 7
  %i.acy = load i16, ptr %i.aca, align 2, !tbaa !883
  %i.acz = load i16, ptr %i.acb, align 2, !tbaa !883
  %i.ada = load i16, ptr %i.acc, align 2, !tbaa !883
  %i.adb = load i16, ptr %i.acd, align 2, !tbaa !883
  %i.adc = load i16, ptr %i.ace, align 2, !tbaa !883
  %i.add = load i16, ptr %i.acf, align 2, !tbaa !883
  %i.ade = load i16, ptr %i.acg, align 2, !tbaa !883
  %i.adf = load i16, ptr %i.ach, align 2, !tbaa !883
  %i.adg = insertelement <8 x i16> poison, i16 %i.acy, i64 0
  %i.adh = insertelement <8 x i16> %i.adg, i16 %i.acz, i64 1
  %i.adi = insertelement <8 x i16> %i.adh, i16 %i.ada, i64 2
  %i.adj = insertelement <8 x i16> %i.adi, i16 %i.adb, i64 3
  %i.adk = insertelement <8 x i16> %i.adj, i16 %i.adc, i64 4
  %i.adl = insertelement <8 x i16> %i.adk, i16 %i.add, i64 5
  %i.adm = insertelement <8 x i16> %i.adl, i16 %i.ade, i64 6
  %i.adn = insertelement <8 x i16> %i.adm, i16 %i.adf, i64 7
  %i.ado = lshr <8 x i16> %i.acx, splat (i16 5)
  %i.adp = lshr <8 x i16> %i.adn, splat (i16 5)
  %i.adq = and <8 x i16> %i.ado, splat (i16 1)
  %i.adr = and <8 x i16> %i.adp, splat (i16 1)
  %i.ads = xor <8 x i16> %i.adq, splat (i16 1)
  %i.adt = xor <8 x i16> %i.adr, splat (i16 1)
  %i.adu = add <8 x i16> %i.ads, %vec.phi         ; 2 uses
  %i.adv = add <8 x i16> %i.adt, %vec.phi490      ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.adw = icmp eq i64 %index.next, %n.vec
  br i1 %i.adw, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !3822

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.adv, %i.adu
  %i.adx = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.abb, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i905.preheader, label %vec.epilog.ph, !prof !886

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.adx, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf491 = and i64 %indvars.iv288, 3        ; 2 uses
  %i.ady = icmp eq i64 %n.mod.vf491, 0
  %i.adz = select i1 %i.ady, i64 4, i64 %n.mod.vf491
  %n.vec492 = sub nsw i64 %indvars.iv288, %i.adz  ; 2 uses
  %i.aea = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index493 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next495, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi494 = phi <4 x i16> [ %i.aea, %vec.epilog.ph ], [ %i.aeu, %vec.epilog.vector.body ]
  %i.aeb = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index493
  %i.aec = getelementptr [16 x i8], ptr %i.aaq, i64 %index493
  %i.aed = getelementptr [16 x i8], ptr %i.aaq, i64 %index493
  %i.aee = getelementptr [16 x i8], ptr %i.aaq, i64 %index493
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aeb, i64 14
  %i.aeg = getelementptr i8, ptr %i.aec, i64 30
  %i.aeh = getelementptr i8, ptr %i.aed, i64 46
  %i.aei = getelementptr i8, ptr %i.aee, i64 62
  %i.aej = load i16, ptr %i.aef, align 2, !tbaa !883
  %i.aek = load i16, ptr %i.aeg, align 2, !tbaa !883
  %i.ael = load i16, ptr %i.aeh, align 2, !tbaa !883
  %i.aem = load i16, ptr %i.aei, align 2, !tbaa !883
  %i.aen = insertelement <4 x i16> poison, i16 %i.aej, i64 0
  %i.aeo = insertelement <4 x i16> %i.aen, i16 %i.aek, i64 1
  %i.aep = insertelement <4 x i16> %i.aeo, i16 %i.ael, i64 2
  %i.aeq = insertelement <4 x i16> %i.aep, i16 %i.aem, i64 3
  %i.aer = lshr <4 x i16> %i.aeq, splat (i16 5)
  %i.aes = and <4 x i16> %i.aer, splat (i16 1)
  %i.aet = xor <4 x i16> %i.aes, splat (i16 1)
  %i.aeu = add <4 x i16> %i.aet, %vec.phi494      ; 2 uses
  %index.next495 = add nuw i64 %index493, 4       ; 2 uses
  %i.aev = icmp eq i64 %index.next495, %n.vec492
  br i1 %i.aev, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3823

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aew = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.aeu)
  br label %.lr.ph.i905.preheader

.lr.ph.i905.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i907.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec492, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.adx, %vec.epilog.iter.check ], [ %i.aew, %vec.epilog.middle.block ]
  br label %.lr.ph.i905

.lr.ph.i905:                                      ; preds = %.lr.ph.i905.preheader, %.lr.ph.i905
  %indvars.iv.i907 = phi i64 [ %indvars.iv.next.i909, %.lr.ph.i905 ], [ %indvars.iv.i907.ph, %.lr.ph.i905.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i908, %.lr.ph.i905 ], [ %.021.i.ph, %.lr.ph.i905.preheader ]
  %i.aex = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %indvars.iv.i907
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 14
  %i.aez = load i16, ptr %i.aey, align 2, !tbaa !883
  %i.afa = lshr i16 %i.aez, 5
  %i.afb = and i16 %i.afa, 1
  %i.afc = xor i16 %i.afb, 1
  %spec.select.i908 = add i16 %i.afc, %.021.i     ; 2 uses
  %indvars.iv.next.i909 = add nuw nsw i64 %indvars.iv.i907, 1 ; 2 uses
  %exitcond.not.i910 = icmp eq i64 %indvars.iv.next.i909, %indvars.iv288
  br i1 %exitcond.not.i910, label %._crit_edge.i, label %.lr.ph.i905, !llvm.loop !3824

._crit_edge.i:                                    ; preds = %.lr.ph.i905, %.preheader.i904
  %.0.lcssa.i911 = phi i16 [ 0, %.preheader.i904 ], [ %spec.select.i908, %.lr.ph.i905 ] ; 2 uses
  %i.afd = and i16 %i.aat, 32
  %.not.i912 = icmp eq i16 %i.afd, 0
  br i1 %.not.i912, label %sqlite3TableColumnToStorage.exit, label %bb.fy

bb.fy:                                            ; preds = %._crit_edge.i
  %i.afe = load i16, ptr %i.aao, align 8, !tbaa !889
  %i.aff = sub i16 %i.aav, %.0.lcssa.i911
  %i.afg = add i16 %i.aff, %i.afe
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.fx, %._crit_edge.i, %bb.fy
  %.018.i = phi i16 [ %i.aav, %bb.fx ], [ %i.afg, %bb.fy ], [ %.0.lcssa.i911, %._crit_edge.i ]
  %i.afh = sext i16 %.018.i to i32
  %i.afi = add nsw i32 %.1732, %i.afh             ; 2 uses
  br i1 %i.aap, label %bb.gc, label %bb.fz

bb.fz:                                            ; preds = %sqlite3TableColumnToStorage.exit
  %i.afj = icmp samesign ult i64 %indvars.iv288, 32
  br i1 %i.afj, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.afk = shl nuw i32 1, %i.aau
  %i.afl = and i32 %i.afk, %i.aak
  %.not845 = icmp eq i32 %i.afl, 0
  %i.afm = and i16 %i.aat, 1
  %.not846 = icmp eq i16 %i.afm, 0
  %or.cond861 = select i1 %.not845, i1 %.not846, i1 false
  br i1 %or.cond861, label %bb.gd, label %bb.gc

bb.gb:                                            ; preds = %bb.fz
  %.old = and i16 %i.aat, 1
  %.not846.old = icmp eq i16 %.old, 0
  br i1 %.not846.old, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga, %sqlite3TableColumnToStorage.exit
  call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef nonnull %.0.i875379, ptr noundef nonnull %i.t, i32 noundef %.476065, i32 noundef %i.aau, i32 noundef %i.afi)
  br label %bb.ge

bb.gd:                                            ; preds = %bb.ga, %bb.gb
  %i.afn = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i875379, i32 noundef 76, i32 noundef 0, i32 noundef %i.afi) ; 0 uses
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.afo = load i16, ptr %i.dn, align 2, !tbaa !881
  %i.afp = sext i16 %i.afo to i64
  %i.afq = icmp slt i64 %indvars.iv.next289, %i.afp
  br i1 %i.afq, label %bb.fx, label %._crit_edge226, !llvm.loop !3825

._crit_edge226:                                   ; preds = %bb.ge, %bb.fw
  %i.afr = icmp eq ptr %i.dg, null
  %or.cond31 = and i1 %i.afr, %.not830
  br i1 %or.cond31, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %._crit_edge226
  %i.afs = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i875379, i32 noundef 81, i32 noundef %.0736, i32 noundef %.1735) ; 0 uses
  br label %bb.gg

bb.gg:                                            ; preds = %._crit_edge226, %bb.gf, %bb.ft
  %i.aft = call fastcc i32 @sqlite3TriggerColmask(ptr noundef nonnull %0, ptr noundef %.0.i870, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1, ptr noundef %i.t, i32 noundef %4)
  %i.afu = load i16, ptr %i.dn, align 2, !tbaa !881 ; 2 uses
  %i.afv = icmp sgt i16 %i.afu, 0
  br i1 %i.afv, label %.lr.ph231, label %._crit_edge232

.lr.ph231:                                        ; preds = %bb.gg
  %i.afw = zext nneg i16 %i.afu to i32
  %i.afx = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.afy = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.afz = load i32, ptr %i.a, align 4
  %i.aga = and i32 %i.afz, 1
  %i.agb = icmp eq i32 %i.aga, 0
  %i.agc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.agd = sext i16 %.074276 to i32
  %i.age = getelementptr inbounds nuw i8, ptr %.0.i875379, i64 144 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %.0.i875379, i64 148
  %i.agg = getelementptr inbounds nuw i8, ptr %.0.i875379, i64 136
  br label %bb.gh

bb.gh:                                            ; preds = %.lr.ph231, %sqlite3VdbeAddOp2.exit
  %indvars.iv292 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next293, %sqlite3VdbeAddOp2.exit ] ; 6 uses
  %i.agh = phi i32 [ %i.afw, %.lr.ph231 ], [ %i.ahu, %sqlite3VdbeAddOp2.exit ]
  %.0719228 = phi i32 [ %.0733, %.lr.ph231 ], [ %i.ahs, %sqlite3VdbeAddOp2.exit ] ; 13 uses
  %.2740227 = phi i32 [ %.1739, %.lr.ph231 ], [ %.3741, %sqlite3VdbeAddOp2.exit ] ; 6 uses
  %i.agi = load i16, ptr %i.afx, align 4, !tbaa !891
  %i.agj = sext i16 %i.agi to i64
  %i.agk = icmp eq i64 %indvars.iv292, %i.agj
  br i1 %i.agk, label %bb.gi, label %bb.gl

bb.gi:                                            ; preds = %bb.gh
  %i.agl = load i32, ptr %i.age, align 8, !tbaa !185 ; 3 uses
  %i.agm = load i32, ptr %i.agf, align 4, !tbaa !943
  %.not.i.i913 = icmp sgt i32 %i.agm, %i.agl
  br i1 %.not.i.i913, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.agn = call fastcc i32 @growOp3(ptr noundef nonnull %.0.i875379, i32 noundef 76, i32 noundef 0, i32 noundef %.0719228, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.gk:                                            ; preds = %bb.gi
  %i.ago = add nsw i32 %i.agl, 1
  store i32 %i.ago, ptr %i.age, align 8, !tbaa !185
  %i.agp = load ptr, ptr %i.agg, align 8, !tbaa !184
  %i.agq = sext i32 %i.agl to i64
  %i.agr = getelementptr inbounds [24 x i8], ptr %i.agp, i64 %i.agq ; 7 uses
  store i8 76, ptr %i.agr, align 8, !tbaa !563
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 2
  store i16 0, ptr %i.ags, align 2, !tbaa !587
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agr, i64 4
  store i32 0, ptr %i.agt, align 4, !tbaa !584
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  store i32 %.0719228, ptr %i.agu, align 8, !tbaa !585
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agr, i64 12
  store i32 0, ptr %i.agv, align 4, !tbaa !586
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agr, i64 16
  store ptr null, ptr %i.agw, align 8, !tbaa !227
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agr, i64 1
  store i8 0, ptr %i.agx, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp2.exit

bb.gl:                                            ; preds = %bb.gh
  %i.agy = load ptr, ptr %i.afy, align 8, !tbaa !882
  %i.agz = getelementptr inbounds nuw [16 x i8], ptr %i.agy, i64 %indvars.iv292
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 14
  %i.ahb = load i16, ptr %i.aha, align 2, !tbaa !883
  %i.ahc = zext i16 %i.ahb to i32                 ; 2 uses
  %i.ahd = and i32 %i.ahc, 96
  %.not842 = icmp eq i32 %i.ahd, 0
  br i1 %.not842, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.ahe = shl i32 %i.ahc, 26
  %sext119 = ashr i32 %i.ahe, 31
  %spec.select862 = add nsw i32 %sext119, %.0719228
  br label %sqlite3VdbeAddOp2.exit

bb.gn:                                            ; preds = %bb.gl
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv292
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !5 ; 3 uses
  %i.ahh = icmp sgt i32 %i.ahg, -1
  br i1 %i.ahh, label %bb.go, label %bb.gr

bb.go:                                            ; preds = %bb.gn
  br i1 %i.yd, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.ahi = select i1 %i.ce, i32 %i.agh, i32 %i.agd
  %i.ahj = add nsw i32 %i.ahg, %i.ahi
  %i.ahk = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i875379, i32 noundef 95, i32 noundef %.074668, i32 noundef %i.ahj, i32 noundef %.0719228) ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.gq:                                            ; preds = %bb.go
  %i.ahl = zext nneg i32 %i.ahg to i64
  %i.ahm = getelementptr inbounds nuw [24 x i8], ptr %i.agc, i64 %i.ahl
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !902
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.ahn, i32 noundef %.0719228)
  br label %sqlite3VdbeAddOp2.exit

bb.gr:                                            ; preds = %bb.gn
  %i.aho = icmp samesign ugt i64 %indvars.iv292, 31
  %or.cond33 = select i1 %i.agb, i1 true, i1 %i.aho
  %.pre316 = trunc nuw nsw i64 %indvars.iv292 to i32 ; 2 uses
  br i1 %or.cond33, label %._crit_edge315, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ahp = shl nuw i32 1, %.pre316
  %i.ahq = and i32 %i.ahp, %i.aft
  %.not843 = icmp eq i32 %i.ahq, 0
  br i1 %.not843, label %bb.gt, label %._crit_edge315

._crit_edge315:                                   ; preds = %bb.gr, %bb.gs
  call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef nonnull %.0.i875379, ptr noundef nonnull %i.t, i32 noundef %.476065, i32 noundef %.pre316, i32 noundef %.0719228)
  br label %sqlite3VdbeAddOp2.exit

bb.gt:                                            ; preds = %bb.gs
  %i.ahr = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i875379, i32 noundef 76, i32 noundef 0, i32 noundef %.0719228) ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.gk, %bb.gj, %bb.gm, %bb.gq, %bb.gp, %bb.gt, %._crit_edge315
  %.3741 = phi i32 [ 0, %._crit_edge315 ], [ %.2740227, %bb.gt ], [ %.2740227, %bb.gm ], [ %.2740227, %bb.gp ], [ %.2740227, %bb.gq ], [ %.2740227, %bb.gj ], [ %.2740227, %bb.gk ] ; 2 uses
  %.1720 = phi i32 [ %.0719228, %._crit_edge315 ], [ %.0719228, %bb.gt ], [ %spec.select862, %bb.gm ], [ %.0719228, %bb.gp ], [ %.0719228, %bb.gq ], [ %.0719228, %bb.gj ], [ %.0719228, %bb.gk ]
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %i.ahs = add nsw i32 %.1720, 1
  %i.aht = load i16, ptr %i.dn, align 2, !tbaa !881 ; 2 uses
  %i.ahu = sext i16 %i.aht to i32
  %i.ahv = sext i16 %i.aht to i64
  %i.ahw = icmp slt i64 %indvars.iv.next293, %i.ahv
  br i1 %i.ahw, label %bb.gh, label %._crit_edge232, !llvm.loop !3826

._crit_edge232:                                   ; preds = %sqlite3VdbeAddOp2.exit, %bb.gg
  %.2740.lcssa = phi i32 [ %.1739, %bb.gg ], [ %.3741, %sqlite3VdbeAddOp2.exit ]
  %i.ahx = load i32, ptr %i.cs, align 8, !tbaa !788
  %i.ahy = and i32 %i.ahx, 96
  %.not831 = icmp eq i32 %i.ahy, 0
  br i1 %.not831, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %._crit_edge232
  call fastcc void @sqlite3ComputeGeneratedColumns(ptr noundef nonnull %0, i32 noundef %.0733, ptr noundef %i.t)
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %._crit_edge232
  %i.ahz = load i32, ptr %i.a, align 4, !tbaa !5
end_hunk_3
begin_hunk_4_@sqlite3Pragma:bb.a
bb.mg:                                            ; preds = %.lr.ph2311, %sqlite3ExprCodeLoadIndexColumn.exit
  %indvars.iv2549 = phi i64 [ 0, %.lr.ph2311 ], [ %indvars.iv.next2550, %sqlite3ExprCodeLoadIndexColumn.exit ] ; 4 uses
  %i.bhm = add nuw nsw i64 %indvars.iv2549, %i.bhl ; 2 uses
  %i.bhn = load ptr, ptr %i.bhh, align 8, !tbaa !878
  %i.bho = getelementptr inbounds nuw [2 x i8], ptr %i.bhn, i64 %indvars.iv2549
  %i.bhp = load i16, ptr %i.bho, align 2, !tbaa !330 ; 2 uses
  %i.bhq = icmp eq i16 %i.bhp, -2
  br i1 %i.bhq, label %bb.mh, label %bb.ml

bb.mh:                                            ; preds = %bb.mg
  store i32 %i.bhj, ptr %i.auq, align 4, !tbaa !3888
  %i.bhr = load ptr, ptr %i.bhk, align 8, !tbaa !2799
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 8
  %i.bht = getelementptr inbounds nuw [24 x i8], ptr %i.bhs, i64 %indvars.iv2549
  %i.bhu = load ptr, ptr %i.bht, align 8, !tbaa !902 ; 2 uses
  %i.bhv = load ptr, ptr %0, align 8, !tbaa !651  ; 3 uses
  %.not.i14.i = icmp eq ptr %i.bhu, null
  br i1 %.not.i14.i, label %sqlite3ExprDup.exit.i, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.bhw = call fastcc ptr @exprDup(ptr noundef %i.bhv, ptr noundef readonly %i.bhu, i32 noundef 0, ptr noundef null), !inline_history !3889
  br label %sqlite3ExprDup.exit.i

sqlite3ExprDup.exit.i:                            ; preds = %bb.mi, %bb.mh
  %i.bhx = phi ptr [ %i.bhw, %bb.mi ], [ null, %bb.mh ] ; 3 uses
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhv, i64 103
  %i.bhz = load i8, ptr %i.bhy, align 1, !tbaa !550
  %.not.i.i1891 = icmp eq i8 %i.bhz, 0
  br i1 %.not.i.i1891, label %bb.mj, label %sqlite3ExprCodeCopy.exit.i

bb.mj:                                            ; preds = %sqlite3ExprDup.exit.i
  %i.bia = trunc i64 %i.bhm to i32
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.bhx, i32 noundef %i.bia), !inline_history !3890
  br label %sqlite3ExprCodeCopy.exit.i

sqlite3ExprCodeCopy.exit.i:                       ; preds = %bb.mj, %sqlite3ExprDup.exit.i
  %.not.i15.i = icmp eq ptr %i.bhx, null
  br i1 %.not.i15.i, label %sqlite3ExprDelete.exit.i, label %bb.mk

bb.mk:                                            ; preds = %sqlite3ExprCodeCopy.exit.i
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.bhv, ptr noundef %i.bhx), !inline_history !3891
  br label %sqlite3ExprDelete.exit.i

sqlite3ExprDelete.exit.i:                         ; preds = %bb.mk, %sqlite3ExprCodeCopy.exit.i
  store i32 0, ptr %i.auq, align 4, !tbaa !3888
  br label %sqlite3ExprCodeLoadIndexColumn.exit

bb.ml:                                            ; preds = %bb.mg
  %i.bib = sext i16 %i.bhp to i32
  %i.bic = load ptr, ptr %i.ab, align 8, !tbaa !976
  %i.bid = load ptr, ptr %i.bhi, align 8, !tbaa !1098
  %i.bie = trunc i64 %i.bhm to i32
  call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %i.bic, ptr noundef %i.bid, i32 noundef %i.bcx, i32 noundef %i.bib, i32 noundef %i.bie), !inline_history !3892
  br label %sqlite3ExprCodeLoadIndexColumn.exit

sqlite3ExprCodeLoadIndexColumn.exit:              ; preds = %sqlite3ExprDelete.exit.i, %bb.ml
  %indvars.iv.next2550 = add nuw nsw i64 %indvars.iv2549, 1 ; 2 uses
  %i.bif = load i16, ptr %i.bgn, align 2, !tbaa !936
  %i.big = zext i16 %i.bif to i64
  %i.bih = icmp samesign ult i64 %indvars.iv.next2550, %i.big
  br i1 %i.bih, label %bb.mg, label %.loopexit2172, !llvm.loop !3893

.loopexit2172:                                    ; preds = %sqlite3ExprCodeLoadIndexColumn.exit, %sqlite3VdbeJumpHere.exit1890, %sqlite3VdbeTypeofColumn.exit
  %i.bii = load i32, ptr %i.bda, align 8, !tbaa !788
  %i.bij = and i32 %i.bii, 65536
  %.not1585 = icmp eq i32 %i.bij, 0               ; 2 uses
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bbe, i64 54 ; 2 uses
  %i.bil = load i16, ptr %i.bik, align 2, !tbaa !881
  %i.bim = icmp sgt i16 %i.bil, 0
  br i1 %i.bim, label %.lr.ph2317, label %._crit_edge2318

.lr.ph2317:                                       ; preds = %.loopexit2172
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bbe, i64 8 ; 4 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bbe, i64 52
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bbe, i64 80
  br label %bb.mm

bb.mm:                                            ; preds = %.lr.ph2317, %sqlite3VdbeResolveLabel.exit1922
  %indvars.iv2552 = phi i64 [ 0, %.lr.ph2317 ], [ %indvars.iv.next2553, %sqlite3VdbeResolveLabel.exit1922 ] ; 11 uses
  %i.biq = load ptr, ptr %i.bin, align 8, !tbaa !882
  %i.bir = getelementptr inbounds nuw [16 x i8], ptr %i.biq, i64 %indvars.iv2552 ; 9 uses
  %i.bis = load i16, ptr %i.bio, align 4, !tbaa !891
  %i.bit = sext i16 %i.bis to i64
  %i.biu = icmp eq i64 %indvars.iv2552, %i.bit
  br i1 %i.biu, label %sqlite3VdbeResolveLabel.exit1922, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  br i1 %.not1585, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bir, i64 8
  %i.biw = load i8, ptr %i.biv, align 8           ; 2 uses
  %i.bix = icmp ugt i8 %i.biw, 31                 ; 2 uses
  br label %bb.mq

bb.mp:                                            ; preds = %bb.mn
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bir, i64 9
  %i.biz = load i8, ptr %i.biy, align 1, !tbaa !905
  %i.bja = icmp sgt i8 %i.biz, 65
  %.phi.trans.insert2642 = getelementptr inbounds nuw i8, ptr %i.bir, i64 8
  %.pre2643 = load i8, ptr %.phi.trans.insert2642, align 8
  br label %bb.mq

bb.mq:                                            ; preds = %bb.mp, %bb.mo
  %i.bjb = phi i8 [ %i.biw, %bb.mo ], [ %.pre2643, %bb.mp ]
  %or.cond17 = phi i1 [ %i.bix, %bb.mo ], [ false, %bb.mp ]
  %.01424.in = phi i1 [ %i.bix, %bb.mo ], [ %i.bja, %bb.mp ] ; 2 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bir, i64 8 ; 3 uses
  %i.bjd = and i8 %i.bjb, 15
  %i.bje = icmp ne i8 %i.bjd, 0
  %or.cond15 = select i1 %i.bje, i1 true, i1 %.01424.in
  br i1 %or.cond15, label %bb.mr, label %sqlite3VdbeResolveLabel.exit1922

bb.mr:                                            ; preds = %bb.mq
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bir, i64 14
  %i.bjg = load i16, ptr %i.bjf, align 2, !tbaa !883
  %i.bjh = and i16 %i.bjg, 32
  %.not1581 = icmp eq i16 %i.bjh, 0
  br i1 %.not1581, label %bb.mt, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.bji = trunc nuw nsw i64 %indvars.iv2552 to i32
  call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef nonnull %.0.i2052, ptr noundef nonnull %i.bbe, i32 noundef %i.bcx, i32 noundef %i.bji, i32 noundef 3)
  br label %sqlite3TableColumnToIndex.exit

bb.mt:                                            ; preds = %bb.mr
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bir, i64 12
  %i.bjk = load i16, ptr %i.bjj, align 4, !tbaa !900 ; 3 uses
  %.not1582 = icmp eq i16 %i.bjk, 0
  br i1 %.not1582, label %bb.my, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #59
  store ptr null, ptr %i.u, align 8, !tbaa !288
  %i.bjl = zext i16 %i.bjk to i32
  %i.bjm = load i8, ptr %i.bbj, align 1, !tbaa !922
  %i.bjn = icmp eq i8 %i.bjm, 0
  br i1 %i.bjn, label %bb.mv, label %sqlite3ValueFromExpr.exit.thread

bb.mv:                                            ; preds = %bb.mu
  %i.bjo = load ptr, ptr %i.bip, align 8, !tbaa !227 ; 3 uses
  %i.bjp = icmp eq ptr %i.bjo, null
  br i1 %i.bjp, label %sqlite3ValueFromExpr.exit.thread, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.bjq = load i32, ptr %i.bjo, align 8, !tbaa !5
  %i.bjr = icmp slt i32 %i.bjq, %i.bjl
  br i1 %i.bjr, label %sqlite3ValueFromExpr.exit.thread, label %sqlite3ColumnExpr.exit1893

sqlite3ColumnExpr.exit1893:                       ; preds = %bb.mw
  %i.bjs = zext i16 %i.bjk to i64
  %i.bjt = getelementptr [24 x i8], ptr %i.bjo, i64 %i.bjs
  %i.bju = getelementptr i8, ptr %i.bjt, i64 -16
  %i.bjv = load ptr, ptr %i.bju, align 8, !tbaa !902 ; 2 uses
  %.not.i1894 = icmp eq ptr %i.bjv, null
  br i1 %.not.i1894, label %sqlite3ValueFromExpr.exit.thread, label %sqlite3ValueFromExpr.exit

sqlite3ValueFromExpr.exit:                        ; preds = %sqlite3ColumnExpr.exit1893
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bir, i64 9
  %i.bjx = load i8, ptr %i.bjw, align 1, !tbaa !905
  %i.bjy = load i8, ptr %i.aur, align 4, !tbaa !844
  %i.bjz = call fastcc i32 @valueFromExpr(ptr noundef nonnull %i.aa, ptr noundef nonnull readonly %i.bjv, i8 noundef zeroext %i.bjy, i8 noundef zeroext %i.bjx, ptr noundef nonnull %i.u) ; 0 uses
  %.pr.pre = load ptr, ptr %i.u, align 8, !tbaa !288 ; 3 uses
  %.not1583 = icmp eq ptr %.pr.pre, null
  br i1 %.not1583, label %sqlite3ValueFromExpr.exit.thread, label %bb.mx

bb.mx:                                            ; preds = %sqlite3ValueFromExpr.exit
  %i.bka = getelementptr inbounds nuw i8, ptr %.pr.pre, i64 20
  %i.bkb = load i16, ptr %i.bka, align 4, !tbaa !162
  %i.bkc = and i16 %i.bkb, 63
  %i.bkd = zext nneg i16 %i.bkc to i64
  %i.bke = getelementptr inbounds nuw i8, ptr @sqlite3_value_type.aType, i64 %i.bkd
  %i.bkf = load i8, ptr %i.bke, align 1, !tbaa !227
  %i.bkg = zext i8 %i.bkf to i32
  call fastcc void @sqlite3ValueFree(ptr noundef nonnull %.pr.pre)
  br label %sqlite3ValueFromExpr.exit.thread

sqlite3ValueFromExpr.exit.thread:                 ; preds = %sqlite3ColumnExpr.exit1893, %bb.mw, %bb.mv, %bb.mu, %bb.mx, %sqlite3ValueFromExpr.exit
  %.01425 = phi i32 [ %i.bkg, %bb.mx ], [ 5, %sqlite3ValueFromExpr.exit ], [ 5, %bb.mu ], [ 5, %bb.mv ], [ 5, %bb.mw ], [ 5, %sqlite3ColumnExpr.exit1893 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #59
  br label %bb.my

bb.my:                                            ; preds = %sqlite3ValueFromExpr.exit.thread, %bb.mt
  %.11426 = phi i32 [ %.01425, %sqlite3ValueFromExpr.exit.thread ], [ 5, %bb.mt ] ; 4 uses
  %i.bkh = load i32, ptr %i.bda, align 8, !tbaa !788
  %i.bki = and i32 %i.bkh, 128
  %i.bkj = icmp eq i32 %i.bki, 0
  br i1 %i.bkj, label %bb.nb, label %.lr.ph.i1897

.lr.ph.i1897:                                     ; preds = %bb.my, %.lr.ph.i1897
  %.08.i1898.in = phi ptr [ %i.bkn, %.lr.ph.i1897 ], [ %i.bcg, %bb.my ]
  %.08.i1898 = load ptr, ptr %.08.i1898.in, align 8, !tbaa !935, !nonnull !1096, !noundef !1096 ; 4 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %.08.i1898, i64 99
  %i.bkl = load i16, ptr %i.bkk, align 1
  %i.bkm = and i16 %i.bkl, 3
  %.not5.i1899 = icmp eq i16 %i.bkm, 2
  %i.bkn = getelementptr inbounds nuw i8, ptr %.08.i1898, i64 40
  br i1 %.not5.i1899, label %sqlite3PrimaryKeyIndex.exit1903, label %.lr.ph.i1897

sqlite3PrimaryKeyIndex.exit1903:                  ; preds = %.lr.ph.i1897
  %i.bko = getelementptr inbounds nuw i8, ptr %.08.i1898, i64 96
  %i.bkp = load i16, ptr %i.bko, align 8, !tbaa !875 ; 2 uses
  %.not.i1904 = icmp eq i16 %i.bkp, 0
  br i1 %.not.i1904, label %sqlite3TableColumnToIndex.exit, label %.lr.ph.i1905

.lr.ph.i1905:                                     ; preds = %sqlite3PrimaryKeyIndex.exit1903
  %i.bkq = getelementptr inbounds nuw i8, ptr %.08.i1898, i64 8
  %i.bkr = load ptr, ptr %i.bkq, align 8, !tbaa !878
  %wide.trip.count.i = zext i16 %i.bkp to i64
  br label %bb.mz

bb.mz:                                            ; preds = %bb.na, %.lr.ph.i1905
  %indvars.iv.i1906 = phi i64 [ 0, %.lr.ph.i1905 ], [ %indvars.iv.next.i1907, %bb.na ] ; 3 uses
  %i.bks = getelementptr inbounds nuw [2 x i8], ptr %i.bkr, i64 %indvars.iv.i1906
  %i.bkt = load i16, ptr %i.bks, align 2, !tbaa !330
  %i.bku = sext i16 %i.bkt to i64
  %i.bkv = icmp eq i64 %indvars.iv2552, %i.bku
  br i1 %i.bkv, label %._crit_edge.loopexit.split.loop.exit13.i, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %indvars.iv.next.i1907 = add nuw nsw i64 %indvars.iv.i1906, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i1907, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sqlite3TableColumnToIndex.exit, label %bb.mz, !llvm.loop !879

._crit_edge.loopexit.split.loop.exit13.i:         ; preds = %bb.mz
  %i.bkw = trunc nuw nsw i64 %indvars.iv.i1906 to i32
  br label %sqlite3TableColumnToIndex.exit

bb.nb:                                            ; preds = %bb.my
  %i.bkx = trunc i64 %indvars.iv2552 to i16
  %i.bky = call fastcc signext i16 @sqlite3TableColumnToStorage(ptr noundef nonnull %i.bbe, i16 noundef signext %i.bkx)
  %i.bkz = sext i16 %i.bky to i32
  br label %sqlite3TableColumnToIndex.exit

sqlite3TableColumnToIndex.exit:                   ; preds = %bb.na, %._crit_edge.loopexit.split.loop.exit13.i, %sqlite3PrimaryKeyIndex.exit1903, %bb.nb, %bb.ms
  %.01429 = phi i32 [ -1, %bb.ms ], [ %i.bcx, %bb.nb ], [ %i.bcx, %sqlite3PrimaryKeyIndex.exit1903 ], [ %i.bcx, %._crit_edge.loopexit.split.loop.exit13.i ], [ %i.bcx, %bb.na ] ; 7 uses
  %.01428 = phi i32 [ 3, %bb.ms ], [ %i.bkz, %bb.nb ], [ -1, %sqlite3PrimaryKeyIndex.exit1903 ], [ %i.bkw, %._crit_edge.loopexit.split.loop.exit13.i ], [ -1, %bb.na ] ; 5 uses
  %.21427 = phi i32 [ 5, %bb.ms ], [ %.11426, %bb.nb ], [ %.11426, %sqlite3PrimaryKeyIndex.exit1903 ], [ %.11426, %._crit_edge.loopexit.split.loop.exit13.i ], [ %.11426, %bb.na ] ; 5 uses
  %i.bla = load i32, ptr %i.aus, align 8, !tbaa !3295 ; 4 uses
  %i.blb = add nsw i32 %i.bla, -1
  %i.blc = add nsw i32 %i.bla, -2                 ; 7 uses
  store i32 %i.blc, ptr %i.aus, align 8, !tbaa !3295
  %i.bld = load i8, ptr %i.bjc, align 8
  %i.ble = and i8 %i.bld, 15
  %.not1584 = icmp eq i8 %i.ble, 0
  br i1 %.not1584, label %bb.nj, label %bb.nc

bb.nc:                                            ; preds = %sqlite3TableColumnToIndex.exit
  %i.blf = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i2052, i32 noundef 18, i32 noundef %.01429, i32 noundef %i.blc, i32 noundef %.01428, i32 noundef %.21427) ; 3 uses
  %i.blg = icmp slt i32 %.01429, 0
  %i.blh = load i32, ptr %i.ap, align 8, !tbaa !185 ; 3 uses
  %i.bli = icmp sgt i32 %i.blh, 0                 ; 2 uses
  br i1 %i.blg, label %bb.nd, label %bb.nf

bb.nd:                                            ; preds = %bb.nc
  br i1 %i.bli, label %bb.ne, label %sqlite3VdbeChangeP5.exit1909

bb.ne:                                            ; preds = %bb.nd
  %i.blj = load ptr, ptr %i.auo, align 8, !tbaa !184
  %i.blk = zext nneg i32 %i.blh to i64
  %i.bll = getelementptr [24 x i8], ptr %i.blj, i64 %i.blk
  %i.blm = getelementptr i8, ptr %i.bll, i64 -22
  store i16 15, ptr %i.blm, align 2, !tbaa !587
  br label %sqlite3VdbeChangeP5.exit1909

bb.nf:                                            ; preds = %bb.nc
  br i1 %i.bli, label %bb.ng, label %sqlite3VdbeChangeP5.exit1910

bb.ng:                                            ; preds = %bb.nf
  %i.bln = load ptr, ptr %i.auo, align 8, !tbaa !184
  %i.blo = zext nneg i32 %i.blh to i64
  %i.blp = getelementptr [24 x i8], ptr %i.bln, i64 %i.blo
  %i.blq = getelementptr i8, ptr %i.blp, i64 -22
  store i16 13, ptr %i.blq, align 2, !tbaa !587
  br label %sqlite3VdbeChangeP5.exit1910

sqlite3VdbeChangeP5.exit1910:                     ; preds = %bb.nf, %bb.ng
  %i.blr = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i2052, i32 noundef 95, i32 noundef %.01429, i32 noundef %.01428, i32 noundef 3) ; 0 uses
  %i.bls = trunc nuw nsw i64 %indvars.iv2552 to i32
  call fastcc void @sqlite3ColumnDefault(ptr noundef nonnull %.0.i2052, ptr noundef %i.bbe, i32 noundef %i.bls, i32 noundef 3)
  %i.blt = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i2052, i32 noundef 52, i32 noundef 3, i32 noundef %i.blc)
  br label %sqlite3VdbeChangeP5.exit1909

sqlite3VdbeChangeP5.exit1909:                     ; preds = %bb.ne, %bb.nd, %sqlite3VdbeChangeP5.exit1910
  %.01423 = phi i32 [ %i.blt, %sqlite3VdbeChangeP5.exit1910 ], [ %i.blf, %bb.nd ], [ %i.blf, %bb.ne ]
  %i.blu = load ptr, ptr %i.bbe, align 8, !tbaa !947
  %i.blv = load ptr, ptr %i.bir, align 8, !tbaa !929
  %i.blw = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.1006, ptr noundef %i.blu, ptr noundef %i.blv)
  %i.blx = call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef nonnull %.0.i2052, i32 noundef 118, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef %i.blw, i32 noundef -6) ; 0 uses
  br i1 %.01424.in, label %bb.nh, label %bb.nj

bb.nh:                                            ; preds = %sqlite3VdbeChangeP5.exit1909
  call fastcc void @sqlite3VdbeGoto(ptr noundef nonnull %.0.i2052, i32 noundef %i.blb)
  %i.bly = load i32, ptr %i.ap, align 8, !tbaa !185 ; 3 uses
  %i.blz = load ptr, ptr %.0.i2052, align 8, !tbaa !146
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 103
  %i.bmb = load i8, ptr %i.bma, align 1, !tbaa !550
  %.not.i.i.i1911 = icmp eq i8 %i.bmb, 0
  br i1 %.not.i.i.i1911, label %bb.ni, label %sqlite3VdbeJumpHere.exit1913

sqlite3VdbeJumpHere.exit1913:                     ; preds = %bb.nh
  store i32 %i.bly, ptr getelementptr inbounds nuw (i8, ptr @sqlite3VdbeGetOp.dummy, i64 8), align 8, !tbaa !585
  br label %sqlite3VdbeJumpHere.exit1916

bb.ni:                                            ; preds = %bb.nh
  %i.bmc = load ptr, ptr %i.auo, align 8, !tbaa !184 ; 2 uses
  %i.bmd = sext i32 %i.blf to i64
  %i.bme = getelementptr inbounds [24 x i8], ptr %i.bmc, i64 %i.bmd
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bme, i64 8
  store i32 %i.bly, ptr %i.bmf, align 8, !tbaa !585
  %i.bmg = sext i32 %.01423 to i64
  %i.bmh = getelementptr inbounds [24 x i8], ptr %i.bmc, i64 %i.bmg
  br label %sqlite3VdbeJumpHere.exit1916

sqlite3VdbeJumpHere.exit1916:                     ; preds = %sqlite3VdbeJumpHere.exit1913, %bb.ni
  %.0.i.i.i1915 = phi ptr [ %i.bmh, %bb.ni ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeJumpHere.exit1913 ]
  %i.bmi = getelementptr inbounds nuw i8, ptr %.0.i.i.i1915, i64 8
  store i32 %i.bly, ptr %i.bmi, align 8, !tbaa !585
  br label %bb.nj

bb.nj:                                            ; preds = %sqlite3VdbeJumpHere.exit1916, %sqlite3VdbeChangeP5.exit1909, %sqlite3TableColumnToIndex.exit
  br i1 %or.cond17, label %bb.nk, label %bb.nm

bb.nk:                                            ; preds = %bb.nj
  %i.bmj = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i2052, i32 noundef 18, i32 noundef %.01429, i32 noundef %i.blc, i32 noundef %.01428, i32 noundef %.21427) ; 0 uses
  %i.bmk = load i32, ptr %i.ap, align 8, !tbaa !185 ; 2 uses
  %i.bml = icmp sgt i32 %i.bmk, 0
  br i1 %i.bml, label %bb.nl, label %sqlite3VdbeChangeP5.exit1917

bb.nl:                                            ; preds = %bb.nk
  %i.bmm = load i8, ptr %i.bjc, align 8
  %i.bmn = lshr i8 %i.bmm, 4
  %i.bmo = zext nneg i8 %i.bmn to i64
  %i.bmp = getelementptr i8, ptr @sqlite3Pragma.aStdTypeMask, i64 %i.bmo
  %i.bmq = getelementptr i8, ptr %i.bmp, i64 -1
  %i.bmr = load i8, ptr %i.bmq, align 1, !tbaa !227
  %i.bms = zext i8 %i.bmr to i16
  %i.bmt = load ptr, ptr %i.auo, align 8, !tbaa !184
  %i.bmu = zext nneg i32 %i.bmk to i64
  %i.bmv = getelementptr [24 x i8], ptr %i.bmt, i64 %i.bmu
  %i.bmw = getelementptr i8, ptr %i.bmv, i64 -22
  store i16 %i.bms, ptr %i.bmw, align 2, !tbaa !587
  br label %sqlite3VdbeChangeP5.exit1917

sqlite3VdbeChangeP5.exit1917:                     ; preds = %bb.nk, %bb.nl
  %i.bmx = load i8, ptr %i.bjc, align 8
  %i.bmy = lshr i8 %i.bmx, 4
  %i.bmz = zext nneg i8 %i.bmy to i64
  %i.bna = getelementptr [8 x i8], ptr @sqlite3StdType, i64 %i.bmz
  %i.bnb = getelementptr i8, ptr %i.bna, i64 -8
  %i.bnc = load ptr, ptr %i.bnb, align 8, !tbaa !251
  %i.bnd = load ptr, ptr %i.bbe, align 8, !tbaa !947
  %i.bne = load ptr, ptr %i.bin, align 8, !tbaa !882
  %i.bnf = getelementptr inbounds nuw [16 x i8], ptr %i.bne, i64 %indvars.iv2552
  %i.bng = load ptr, ptr %i.bnf, align 8, !tbaa !929
  %i.bnh = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.1007, ptr noundef %i.bnc, ptr noundef %i.bnd, ptr noundef %i.bng)
  br label %.critedge1679.sink.split

bb.nm:                                            ; preds = %bb.nj
  br i1 %.not1585, label %bb.nn, label %.critedge1679

bb.nn:                                            ; preds = %bb.nm
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bir, i64 9
  %i.bnj = load i8, ptr %i.bni, align 1, !tbaa !905 ; 2 uses
  %i.bnk = icmp eq i8 %i.bnj, 66
  br i1 %i.bnk, label %bb.no, label %bb.nq

bb.no:                                            ; preds = %bb.nn
  %i.bnl = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i2052, i32 noundef 18, i32 noundef %.01429, i32 noundef %i.blc, i32 noundef %.01428, i32 noundef %.21427) ; 0 uses
  %i.bnm = load i32, ptr %i.ap, align 8, !tbaa !185 ; 2 uses
  %i.bnn = icmp sgt i32 %i.bnm, 0
  br i1 %i.bnn, label %bb.np, label %sqlite3VdbeChangeP5.exit1918

bb.np:                                            ; preds = %bb.no
  %i.bno = load ptr, ptr %i.auo, align 8, !tbaa !184
  %i.bnp = zext nneg i32 %i.bnm to i64
  %i.bnq = getelementptr [24 x i8], ptr %i.bno, i64 %i.bnp
  %i.bnr = getelementptr i8, ptr %i.bnq, i64 -22
  store i16 28, ptr %i.bnr, align 2, !tbaa !587
  br label %sqlite3VdbeChangeP5.exit1918

sqlite3VdbeChangeP5.exit1918:                     ; preds = %bb.no, %bb.np
  %i.bns = load ptr, ptr %i.bbe, align 8, !tbaa !947
  %i.bnt = load ptr, ptr %i.bin, align 8, !tbaa !882
  %i.bnu = getelementptr inbounds nuw [16 x i8], ptr %i.bnt, i64 %indvars.iv2552
  %i.bnv = load ptr, ptr %i.bnu, align 8, !tbaa !929
  %i.bnw = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.1008, ptr noundef %i.bns, ptr noundef %i.bnv)
  br label %.critedge1679.sink.split

bb.nq:                                            ; preds = %bb.nn
  %i.bnx = icmp sgt i8 %i.bnj, 66
  br i1 %i.bnx, label %bb.nr, label %.critedge1679

bb.nr:                                            ; preds = %bb.nq
  %i.bny = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i2052, i32 noundef 18, i32 noundef %.01429, i32 noundef %i.blc, i32 noundef %.01428, i32 noundef %.21427) ; 0 uses
  %i.bnz = load i32, ptr %i.ap, align 8, !tbaa !185 ; 2 uses
  %i.boa = icmp sgt i32 %i.bnz, 0
  br i1 %i.boa, label %bb.ns, label %sqlite3VdbeChangeP5.exit1919

bb.ns:                                            ; preds = %bb.nr
  %i.bob = load ptr, ptr %i.auo, align 8, !tbaa !184
  %i.boc = zext nneg i32 %i.bnz to i64
  %i.bod = getelementptr [24 x i8], ptr %i.bob, i64 %i.boc
  %i.boe = getelementptr i8, ptr %i.bod, i64 -22
  store i16 27, ptr %i.boe, align 2, !tbaa !587
  br label %sqlite3VdbeChangeP5.exit1919

sqlite3VdbeChangeP5.exit1919:                     ; preds = %bb.nr, %bb.ns
  %i.bof = icmp sgt i32 %.01429, -1
  br i1 %i.bof, label %bb.nt, label %bb.nu

bb.nt:                                            ; preds = %sqlite3VdbeChangeP5.exit1919
  %i.bog = trunc nuw nsw i64 %indvars.iv2552 to i32
  call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef nonnull %.0.i2052, ptr noundef %i.bbe, i32 noundef %i.bcx, i32 noundef %i.bog, i32 noundef 3)
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %sqlite3VdbeChangeP5.exit1919
end_hunk_4
begin_hunk_5_@sqlite3AlterDropColumn:bb.a
sqlite3ColumnIndex.exit.thread:                   ; preds = %sqlite3StrICmp.exit30.i
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1123, ptr noundef nonnull %2)
  br label %.thread230

sqlite3ColumnIndex.exit.thread213:                ; preds = %bb.q, %sqlite3ColumnIndex.exit
  %.0.i178215 = phi i32 [ %i.cw, %sqlite3ColumnIndex.exit ], [ %i.bl, %bb.q ] ; 3 uses
  %i.cx = zext i32 %.0.i178215 to i64             ; 3 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 14
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !883
  %i.db = zext i16 %i.da to i32                   ; 2 uses
  %i.dc = and i32 %i.db, 9
  %.not166 = icmp eq i32 %i.dc, 0
  br i1 %.not166, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %sqlite3ColumnIndex.exit.thread213
  %i.dd = and i32 %i.db, 1
  %.not172 = icmp eq i32 %i.dd, 0
  %i.de = select i1 %.not172, ptr @.str.349, ptr @.str.896
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1124, ptr noundef nonnull %i.de, ptr noundef nonnull %i.ab)
  br label %.thread230

bb.aa:                                            ; preds = %sqlite3ColumnIndex.exit.thread213
  %i.df = icmp slt i16 %i.bf, 2
  br i1 %i.df, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1125, ptr noundef nonnull %i.ab)
  br label %.thread230

bb.ac:                                            ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !923 ; 2 uses
  %.not.i179 = icmp eq ptr %i.dh, null
  %.phi.trans.insert252 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.pre253 = load ptr, ptr %.phi.trans.insert252, align 8, !tbaa !61 ; 2 uses
  br i1 %.not.i179, label %sqlite3SchemaToIndex.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ac, %.preheader.i
  %indvars.iv.i180 = phi i64 [ %indvars.iv.next.i181, %.preheader.i ], [ 0, %bb.ac ] ; 3 uses
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %.pre253, i64 %indvars.iv.i180
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !101
  %i.dl = icmp eq ptr %i.dk, %i.dh
  %indvars.iv.next.i181 = add nuw nsw i64 %indvars.iv.i180, 1
  br i1 %i.dl, label %.loopexit.loopexit.i, label %.preheader.i

.loopexit.loopexit.i:                             ; preds = %.preheader.i
  %i.dm = trunc nuw nsw i64 %indvars.iv.i180 to i32
  br label %sqlite3SchemaToIndex.exit

sqlite3SchemaToIndex.exit:                        ; preds = %bb.ac, %.loopexit.loopexit.i
  %.1.i = phi i32 [ %i.dm, %.loopexit.loopexit.i ], [ -32768, %bb.ac ] ; 5 uses
  %i.dn = sext i32 %.1.i to i64
  %i.do = getelementptr inbounds [32 x i8], ptr %.pre253, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !494 ; 5 uses
  %i.dq = load ptr, ptr %i.p, align 8, !tbaa !947
  %i.dr = tail call fastcc i32 @sqlite3AuthCheck(ptr noundef nonnull %0, i32 noundef 26, ptr noundef %i.dp, ptr noundef %i.dq, ptr noundef nonnull %i.ab)
  %.not167 = icmp eq i32 %i.dr, 0
  br i1 %.not167, label %bb.ad, label %.thread230

bb.ad:                                            ; preds = %sqlite3SchemaToIndex.exit
  %i.ds = icmp eq i32 %.1.i, 1
  %i.dt = zext i1 %i.ds to i32                    ; 3 uses
  tail call fastcc void @renameTestSchema(ptr noundef nonnull %0, ptr noundef %i.dp, i32 noundef %i.dt, ptr noundef nonnull @.str.4, i32 noundef 0)
  tail call fastcc void @renameFixQuotes(ptr noundef nonnull %0, ptr noundef %i.dp, i32 noundef %i.dt)
  %i.du = load ptr, ptr %i.p, align 8, !tbaa !947
  tail call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef nonnull %0, ptr noundef nonnull @.str.1126, ptr noundef %i.dp, i32 noundef %.1.i, i32 noundef %.0.i178215, ptr noundef %i.du)
  tail call fastcc void @renameReloadSchema(ptr noundef nonnull %0, i32 noundef %.1.i, i16 noundef zeroext 2)
  tail call fastcc void @renameTestSchema(ptr noundef nonnull %0, ptr noundef %i.dp, i32 noundef %i.dt, ptr noundef nonnull @.str.1127, i32 noundef 1)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !313
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.ae, label %.thread230

bb.ae:                                            ; preds = %bb.ad
  %i.dy = load ptr, ptr %i.bc, align 8, !tbaa !882
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %i.cx
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 14
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !883
  %i.ec = and i16 %i.eb, 32
  %i.ed = icmp eq i16 %i.ec, 0
  br i1 %i.ed, label %bb.af, label %.thread230

bb.af:                                            ; preds = %bb.ae
  %i.ee = tail call fastcc ptr @sqlite3GetVdbe(ptr noundef nonnull %0) ; 14 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !951 ; 9 uses
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ef, align 8, !tbaa !951
  tail call fastcc void @sqlite3OpenTable(ptr noundef nonnull %0, i32 noundef %i.eg, i32 noundef %.1.i, ptr noundef nonnull %i.p, i32 noundef 114)
  %i.ei = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef %i.ee, i32 noundef 36, i32 noundef %i.eg) ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 8 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !950 ; 5 uses
  %i.el = add nsw i32 %i.ek, 1                    ; 4 uses
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !950
  %i.em = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.en = load i32, ptr %i.em, align 8, !tbaa !788
  %i.eo = and i32 %i.en, 128
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eq = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.ee, i32 noundef 136, i32 noundef %i.eg, i32 noundef %i.el) ; 0 uses
  %i.er = load i16, ptr %i.be, align 2, !tbaa !881 ; 2 uses
  %i.es = sext i16 %i.er to i32
  %i.et = load i32, ptr %i.ej, align 4, !tbaa !950
  %i.eu = add nsw i32 %i.et, %i.es
  br label %.loopexit

bb.ah:                                            ; preds = %bb.af
  %i.ev = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.ah
  %.08.i.in = phi ptr [ %i.ez, %.lr.ph.i ], [ %i.ev, %bb.ah ]
  %.08.i = load ptr, ptr %.08.i.in, align 8, !tbaa !935, !nonnull !1096, !noundef !1096 ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.08.i, i64 99
  %i.ex = load i16, ptr %i.ew, align 1
  %i.ey = and i16 %i.ex, 3
  %.not5.i = icmp eq i16 %i.ey, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %.08.i, i64 40
  br i1 %.not5.i, label %sqlite3PrimaryKeyIndex.exit, label %.lr.ph.i

sqlite3PrimaryKeyIndex.exit:                      ; preds = %.lr.ph.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.08.i, i64 96
  %i.fb = load i16, ptr %i.fa, align 8, !tbaa !875
  %i.fc = zext i16 %i.fb to i32
  %i.fd = add nsw i32 %i.el, %i.fc                ; 2 uses
  store i32 %i.fd, ptr %i.ej, align 4, !tbaa !950
  %i.fe = getelementptr inbounds nuw i8, ptr %.08.i, i64 94 ; 2 uses
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !936
  %.not244 = icmp eq i16 %i.ff, 0
  br i1 %.not244, label %.loopexitthread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3PrimaryKeyIndex.exit
  %i.fg = add i32 %i.ek, 2
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.ai
  %.0148238 = phi i32 [ 0, %.lr.ph ], [ %i.fj, %bb.ai ] ; 3 uses
  %i.fh = add i32 %i.fg, %.0148238
  %i.fi = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.ee, i32 noundef 95, i32 noundef %i.eg, i32 noundef %.0148238, i32 noundef %i.fh) ; 0 uses
  %i.fj = add nuw nsw i32 %.0148238, 1            ; 2 uses
  %i.fk = load i16, ptr %i.fe, align 2, !tbaa !936
  %i.fl = zext i16 %i.fk to i32                   ; 2 uses
  %i.fm = icmp samesign ult i32 %i.fj, %i.fl
  br i1 %i.fm, label %bb.ai, label %.loopexit.loopexit, !llvm.loop !3943

.loopexit.loopexit:                               ; preds = %bb.ai
  %.pre254 = load i32, ptr %i.ej, align 4, !tbaa !950
  br label %.loopexitthread-pre-split

.loopexitthread-pre-split:                        ; preds = %sqlite3PrimaryKeyIndex.exit, %.loopexit.loopexit
  %.ph = phi i32 [ %.pre254, %.loopexit.loopexit ], [ %i.fd, %sqlite3PrimaryKeyIndex.exit ]
  %.0152.ph = phi i32 [ %i.fl, %.loopexit.loopexit ], [ 0, %sqlite3PrimaryKeyIndex.exit ]
  %.pr273 = load i16, ptr %i.be, align 2, !tbaa !881
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexitthread-pre-split, %bb.ag
  %i.fn = phi i16 [ %.pr273, %.loopexitthread-pre-split ], [ %i.er, %bb.ag ] ; 2 uses
  %i.fo = phi i32 [ %.ph, %.loopexitthread-pre-split ], [ %i.eu, %bb.ag ]
  %.0152 = phi i32 [ %.0152.ph, %.loopexitthread-pre-split ], [ 0, %bb.ag ] ; 2 uses
  %.0149 = phi ptr [ %.08.i, %.loopexitthread-pre-split ], [ null, %bb.ag ] ; 6 uses
  %i.fp = add nsw i32 %i.fo, 1                    ; 4 uses
  store i32 %i.fp, ptr %i.ej, align 4, !tbaa !950
  %i.fq = icmp sgt i16 %i.fn, 0
  br i1 %i.fq, label %.lr.ph242, label %._crit_edge

.lr.ph242:                                        ; preds = %.loopexit
  %.not170 = icmp eq ptr %.0149, null
  %i.fr = getelementptr inbounds nuw i8, ptr %.0149, i64 96
  %i.fs = getelementptr inbounds nuw i8, ptr %.0149, i64 8
  %sext.i191 = shl i32 %.0.i178215, 16
  %i.ft = ashr exact i32 %sext.i191, 16
  %i.fu = getelementptr inbounds nuw i8, ptr %.0149, i64 94
  %i.fv = add nsw i32 %i.ek, 2                    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.p, i64 52
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph242, %.thread
  %i.fx = phi i16 [ %i.fn, %.lr.ph242 ], [ %i.hi, %.thread ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph242 ], [ %indvars.iv.next, %.thread ] ; 7 uses
  %.1153239 = phi i32 [ %.0152, %.lr.ph242 ], [ %.3155, %.thread ] ; 6 uses
  %.not169 = icmp eq i64 %indvars.iv, %i.cx
  br i1 %.not169, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fy = load ptr, ptr %i.bc, align 8, !tbaa !882
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %indvars.iv ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 14
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !883
  %i.gc = and i16 %i.gb, 32
  %i.gd = icmp eq i16 %i.gc, 0
  br i1 %i.gd, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  br i1 %.not170, label %bb.as, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ge = load i16, ptr %i.fr, align 8, !tbaa !875 ; 2 uses
  %.not.i184 = icmp eq i16 %i.ge, 0
  br i1 %.not.i184, label %.thread, label %.lr.ph.i185

.lr.ph.i185:                                      ; preds = %bb.am
  %i.gf = load ptr, ptr %i.fs, align 8, !tbaa !878 ; 2 uses
  %wide.trip.count.i186 = zext i16 %i.ge to i64   ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.lr.ph.i185
  %indvars.iv.i187 = phi i64 [ 0, %.lr.ph.i185 ], [ %indvars.iv.next.i188, %bb.ao ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.gf, i64 %indvars.iv.i187
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !330
  %i.gi = sext i16 %i.gh to i64
  %i.gj = icmp eq i64 %indvars.iv, %i.gi
  br i1 %i.gj, label %._crit_edge.loopexit.split.loop.exit13.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %indvars.iv.next.i188 = add nuw nsw i64 %indvars.iv.i187, 1 ; 2 uses
  %exitcond.not.i189 = icmp eq i64 %indvars.iv.next.i188, %wide.trip.count.i186
  br i1 %exitcond.not.i189, label %sqlite3TableColumnToIndex.exit, label %bb.an, !llvm.loop !879

._crit_edge.loopexit.split.loop.exit13.i:         ; preds = %bb.an
  %i.gk = trunc nuw nsw i64 %indvars.iv.i187 to i32
  br label %sqlite3TableColumnToIndex.exit

sqlite3TableColumnToIndex.exit:                   ; preds = %bb.ao, %._crit_edge.loopexit.split.loop.exit13.i
  %.0.i190 = phi i32 [ %i.gk, %._crit_edge.loopexit.split.loop.exit13.i ], [ -1, %bb.ao ] ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %sqlite3TableColumnToIndex.exit
  %indvars.iv.i195 = phi i64 [ 0, %sqlite3TableColumnToIndex.exit ], [ %indvars.iv.next.i196, %bb.aq ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.gf, i64 %indvars.iv.i195
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !330
  %i.gn = sext i16 %i.gm to i32
  %i.go = icmp eq i32 %i.ft, %i.gn
  br i1 %i.go, label %._crit_edge.loopexit.split.loop.exit13.i199, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %indvars.iv.next.i196 = add nuw nsw i64 %indvars.iv.i195, 1 ; 2 uses
  %exitcond.not.i197 = icmp eq i64 %indvars.iv.next.i196, %wide.trip.count.i186
  br i1 %exitcond.not.i197, label %sqlite3TableColumnToIndex.exit200, label %bb.ap, !llvm.loop !879

._crit_edge.loopexit.split.loop.exit13.i199:      ; preds = %bb.ap
  %i.gp = trunc nuw nsw i64 %indvars.iv.i195 to i32
  br label %sqlite3TableColumnToIndex.exit200

sqlite3TableColumnToIndex.exit200:                ; preds = %bb.aq, %._crit_edge.loopexit.split.loop.exit13.i199
  %.0.i198 = phi i32 [ %i.gp, %._crit_edge.loopexit.split.loop.exit13.i199 ], [ -1, %bb.aq ]
  %i.gq = load i16, ptr %i.fu, align 2, !tbaa !936
  %i.gr = zext i16 %i.gq to i32
  %.not171 = icmp slt i32 %.0.i190, %i.gr
  br i1 %.not171, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %sqlite3TableColumnToIndex.exit200
  %i.gs = add nsw i32 %i.fv, %.0.i190
  %i.gt = icmp sgt i32 %.0.i190, %.0.i198
  %.neg = sext i1 %i.gt to i32
  %i.gu = add nsw i32 %i.gs, %.neg
  br label %bb.at

bb.as:                                            ; preds = %bb.al
  %i.gv = add nsw i32 %i.fv, %.1153239
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.2 = phi i32 [ %i.gu, %bb.ar ], [ %i.gv, %bb.as ] ; 2 uses
  %i.gw = load i16, ptr %i.fw, align 4, !tbaa !891
  %i.gx = sext i16 %i.gw to i64
  %i.gy = icmp eq i64 %indvars.iv, %i.gx
  br i1 %i.gy, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gz = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.ee, i32 noundef 76, i32 noundef 0, i32 noundef %.2) ; 0 uses
  br label %bb.ay

bb.av:                                            ; preds = %bb.at
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fz, i64 9 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !905 ; 2 uses
  %i.hc = icmp eq i8 %i.hb, 69
  br i1 %i.hc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i8 67, ptr %i.ha, align 1, !tbaa !905
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hd = trunc nuw nsw i64 %indvars.iv to i32
  tail call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %i.ee, ptr noundef nonnull %i.p, i32 noundef %i.eg, i32 noundef %i.hd, i32 noundef %.2)
  %i.he = load ptr, ptr %i.bc, align 8, !tbaa !882
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %indvars.iv
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 9
  store i8 %i.hb, ptr %i.hg, align 1, !tbaa !905
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.au
  %i.hh = add nsw i32 %.1153239, 1
  %.pre255 = load i16, ptr %i.be, align 2, !tbaa !881
  br label %.thread

.thread:                                          ; preds = %bb.am, %sqlite3TableColumnToIndex.exit200, %bb.ay, %bb.aj, %bb.ak
  %i.hi = phi i16 [ %i.fx, %bb.aj ], [ %i.fx, %bb.ak ], [ %.pre255, %bb.ay ], [ %i.fx, %sqlite3TableColumnToIndex.exit200 ], [ %i.fx, %bb.am ] ; 2 uses
  %.3155 = phi i32 [ %.1153239, %bb.aj ], [ %.1153239, %bb.ak ], [ %i.hh, %bb.ay ], [ %.1153239, %sqlite3TableColumnToIndex.exit200 ], [ %.1153239, %bb.am ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hj = sext i16 %i.hi to i64
  %i.hk = icmp slt i64 %indvars.iv.next, %i.hj
  br i1 %i.hk, label %bb.aj, label %._crit_edge, !llvm.loop !3944

._crit_edge:                                      ; preds = %.thread, %.loopexit
  %.1153.lcssa = phi i32 [ %.0152, %.loopexit ], [ %.3155, %.thread ] ; 2 uses
  %i.hl = icmp eq i32 %.1153.lcssa, 0
  br i1 %i.hl, label %bb.az, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre256 = add nsw i32 %i.ek, 2
  br label %bb.ba

bb.az:                                            ; preds = %._crit_edge
  %i.hm = load i32, ptr %i.ej, align 4, !tbaa !950
  %i.hn = add nsw i32 %i.hm, 1
  store i32 %i.hn, ptr %i.ej, align 4, !tbaa !950
  %i.ho = add nsw i32 %i.ek, 2                    ; 2 uses
  %i.hp = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.ee, i32 noundef 76, i32 noundef 0, i32 noundef %i.ho) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge._crit_edge, %bb.az
  %.pre-phi = phi i32 [ %.pre256, %._crit_edge._crit_edge ], [ %i.ho, %bb.az ] ; 2 uses
  %.4156 = phi i32 [ %.1153.lcssa, %._crit_edge._crit_edge ], [ 1, %bb.az ]
  %i.hq = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.ee, i32 noundef 98, i32 noundef %.pre-phi, i32 noundef %.4156, i32 noundef %i.fp) ; 0 uses
  %.not168 = icmp eq ptr %.0149, null
  br i1 %.not168, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hr = getelementptr inbounds nuw i8, ptr %.0149, i64 94
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !936
  %i.ht = zext i16 %i.hs to i32
  %i.hu = tail call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef %i.ee, i32 noundef 139, i32 noundef %i.eg, i32 noundef %i.fp, i32 noundef %.pre-phi, i32 noundef %i.ht) ; 0 uses
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.hv = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.ee, i32 noundef 129, i32 noundef %i.eg, i32 noundef %i.fp, i32 noundef %i.el) ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ee, i64 144 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !185 ; 2 uses
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %bb.be, label %sqlite3VdbeChangeP5.exit

bb.be:                                            ; preds = %bb.bd
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ee, i64 136
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !184
  %i.ib = zext nneg i32 %i.hx to i64
  %i.ic = getelementptr [24 x i8], ptr %i.ia, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.ic, i64 -22
  store i16 2, ptr %i.id, align 2, !tbaa !587
  br label %sqlite3VdbeChangeP5.exit

sqlite3VdbeChangeP5.exit:                         ; preds = %bb.bd, %bb.be
  %i.ie = add nsw i32 %i.ei, 1
  %i.if = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.ee, i32 noundef 40, i32 noundef %i.eg, i32 noundef %i.ie) ; 0 uses
  %i.ig = load i32, ptr %i.hw, align 8, !tbaa !185
  %i.ih = load ptr, ptr %i.ee, align 8, !tbaa !146
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 103
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !550
  %.not.i.i.i = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i, label %bb.bf, label %sqlite3VdbeJumpHere.exit

bb.bf:                                            ; preds = %sqlite3VdbeChangeP5.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ee, i64 136
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !184
  %i.im = sext i32 %i.ei to i64
  %i.in = getelementptr inbounds [24 x i8], ptr %i.il, i64 %i.im
  br label %sqlite3VdbeJumpHere.exit

sqlite3VdbeJumpHere.exit:                         ; preds = %sqlite3VdbeChangeP5.exit, %bb.bf
  %.0.i.i.i = phi ptr [ %i.in, %bb.bf ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeChangeP5.exit ]
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.ig, ptr %i.io, align 8, !tbaa !585
  br label %.thread230

.thread230:                                       ; preds = %sqlite3ColumnIndex.exit.thread, %sqlite3VdbeJumpHere.exit, %bb.ab, %bb.z, %bb.ad, %bb.ae, %sqlite3SchemaToIndex.exit
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ab)
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %bb.g, %bb.h, %bb.f, %sqlite3LocateTableItem.exit, %isRealTable.exit, %bb.d, %bb.a, %.thread230
  tail call fastcc void @sqlite3SrcListDelete(ptr noundef nonnull %i.a, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3AlterRenameColumn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !651    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 1
  %.not.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br i1 %.not.i, label %sqlite3LocateTableItem.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !227  ; 2 uses
  %.not.i84 = icmp eq ptr %i.g, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61 ; 2 uses
  br i1 %.not.i84, label %sqlite3SchemaToIndex.exit90, label %.preheader.i85

.preheader.i85:                                   ; preds = %bb.b, %.preheader.i85
  %indvars.iv.i86 = phi i64 [ %indvars.iv.next.i87, %.preheader.i85 ], [ 0, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %indvars.iv.i86
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  %i.k = icmp eq ptr %i.j, %i.g
end_hunk_5
begin_hunk_6_@sqlite3GenerateRowDelete:bb.a
bb.k:                                             ; preds = %bb.n, %bb.j
  %.013.i.i.i.i.i = phi ptr [ %.val45.i, %bb.j ], [ %i.bp, %bb.n ] ; 2 uses
  %.0.i.i.i.i.i = phi ptr [ %i.bd, %bb.j ], [ %i.bo, %bb.n ] ; 2 uses
  %i.be = load i8, ptr %.0.i.i.i.i.i, align 1, !tbaa !227 ; 3 uses
  %i.bf = load i8, ptr %.013.i.i.i.i.i, align 1, !tbaa !227 ; 2 uses
  %i.bg = icmp eq i8 %i.be, %i.bf
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = icmp eq i8 %i.be, 0
  br i1 %i.bh, label %sqlite3FkReferences.exit.i, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bi = zext i8 %i.be to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !227
  %i.bl = zext i8 %i.bf to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !227
  %.not.i27.i.i.i.i = icmp eq i8 %i.bk, %i.bn
  br i1 %.not.i27.i.i.i.i, label %bb.n, label %sqlite3StrICmp.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 1
  br label %bb.k

sqlite3StrICmp.exit.i.i.i.i:                      ; preds = %bb.m, %.lr.ph.i.i.i.i
  %i.bq = add i32 %.12232.i.i.i.i, -1             ; 2 uses
  %.not26.i.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not26.i.i.i.i, label %sqlite3FkReferences.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !963

sqlite3FkReferences.exit.i:                       ; preds = %sqlite3StrICmp.exit.i.i.i.i, %bb.l, %bb.i
  %.0.i.i.i.i = phi ptr [ @findElementWithHash.nullElement, %bb.i ], [ %.133.i.i.i.i, %bb.l ], [ @findElementWithHash.nullElement, %sqlite3StrICmp.exit.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !115
  %.not37.i = icmp eq ptr %i.bs, null
  br i1 %.not37.i, label %bb.o, label %.preheader

bb.o:                                             ; preds = %sqlite3FkReferences.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !227
  %.fr176 = freeze ptr %i.bu
  %.not = icmp eq ptr %.fr176, null
  br i1 %.not, label %sqlite3FkRequired.exit, label %.preheader

sqlite3FkRequired.exit:                           ; preds = %sqlite3VdbeAddOp4Int.exit, %bb.e, %bb.o
  %.not177 = icmp eq ptr %2, null
  br i1 %.not177, label %bb.ao, label %bb.p

bb.p:                                             ; preds = %sqlite3FkRequired.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 63
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !922
  %i.bv = icmp eq i8 %.pre, 2
  %i.bw = zext nneg i8 %8 to i32                  ; 2 uses
  br i1 %i.bv, label %sqlite3TriggerColmask.exit, label %.lr.ph191

.preheader:                                       ; preds = %bb.o, %sqlite3FkReferences.exit.i
  %i.bx = icmp ne ptr %2, null                    ; 2 uses
  %i.by = zext nneg i8 %8 to i32                  ; 2 uses
  %.not24.i187 = icmp eq ptr %2, null
  br i1 %.not24.i187, label %sqlite3TriggerColmask.exit, label %.lr.ph191

.lr.ph191:                                        ; preds = %bb.p, %.preheader
  %i.bz = phi i1 [ %i.bx, %.preheader ], [ true, %bb.p ]
  %i.ca = phi i32 [ %i.by, %.preheader ], [ %i.bw, %bb.p ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph191, %bb.v
  %.021.i189 = phi ptr [ %2, %.lr.ph191 ], [ %i.cx, %bb.v ] ; 6 uses
  %.022.i188 = phi i32 [ 0, %.lr.ph191 ], [ %.2.i, %bb.v ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.021.i189, i64 16
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !3918
  %i.ce = icmp eq i8 %i.cd, -127
  br i1 %i.ce, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %.021.i189, i64 17
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !3919
  %i.ch = and i8 %i.cg, 3
  %.not25.i = icmp eq i8 %i.ch, 0
  br i1 %.not25.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %.021.i189, i64 18
  %i.cj = load i8, ptr %i.ci, align 2, !tbaa !135
  %.not27.i = icmp eq i8 %i.cj, 0
  br i1 %.not27.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !3544 ; 2 uses
  %.not.i138 = icmp eq ptr %i.ck, null
  %..i = select i1 %.not.i138, ptr %0, ptr %i.ck
  %i.cl = getelementptr inbounds nuw i8, ptr %..i, i64 168
  %.0.i139184 = load ptr, ptr %i.cl, align 8, !tbaa !4741 ; 2 uses
  %.not19.i140185 = icmp eq ptr %.0.i139184, null
  br i1 %.not19.i140185, label %getRowTrigger.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %.critedge2.i
  %.0.i139186 = phi ptr [ %.0.i139, %.critedge2.i ], [ %.0.i139184, %bb.t ] ; 4 uses
  %i.cm = load ptr, ptr %.0.i139186, align 8, !tbaa !4742
  %.not20.i = icmp eq ptr %i.cm, %.021.i189
  br i1 %.not20.i, label %bb.u, label %.critedge2.i

bb.u:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i139186, i64 24
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !4743
  %.not21.i141 = icmp eq i32 %i.co, %i.ca
  br i1 %.not21.i141, label %getRowTrigger.exit.thread, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.u, %.lr.ph
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i139186, i64 8
  %.0.i139 = load ptr, ptr %i.cp, align 8, !tbaa !4741 ; 2 uses
  %.not19.i140 = icmp eq ptr %.0.i139, null
  br i1 %.not19.i140, label %getRowTrigger.exit, label %.lr.ph, !llvm.loop !4744

getRowTrigger.exit:                               ; preds = %.critedge2.i, %bb.t
  %i.cq = tail call fastcc ptr @codeRowTrigger(ptr noundef nonnull %0, ptr noundef nonnull %.021.i189, ptr noundef nonnull %1, i32 noundef %i.ca), !inline_history !4745 ; 2 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !651
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 84
  store i32 -1, ptr %i.cs, align 4, !tbaa !373
  %.not28.i = icmp eq ptr %i.cq, null
  br i1 %.not28.i, label %bb.v, label %getRowTrigger.exit.thread

getRowTrigger.exit.thread:                        ; preds = %bb.u, %getRowTrigger.exit
  %.1.i172 = phi ptr [ %i.cq, %getRowTrigger.exit ], [ %.0.i139186, %bb.u ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.1.i172, i64 28
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !5
  %i.cv = or i32 %i.cu, %.022.i188
  br label %bb.v

bb.v:                                             ; preds = %getRowTrigger.exit.thread, %getRowTrigger.exit, %bb.s, %bb.r, %bb.q
  %.2.i = phi i32 [ %.022.i188, %bb.q ], [ -1, %bb.s ], [ %.022.i188, %getRowTrigger.exit ], [ %.022.i188, %bb.r ], [ %i.cv, %getRowTrigger.exit.thread ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.021.i189, i64 64
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !2808 ; 2 uses
  %.not24.i = icmp eq ptr %i.cx, null
  br i1 %.not24.i, label %sqlite3TriggerColmask.exit, label %bb.q, !llvm.loop !4746

sqlite3TriggerColmask.exit:                       ; preds = %bb.v, %.preheader, %bb.p
  %i.cy = phi i32 [ %i.bw, %bb.p ], [ %i.by, %.preheader ], [ %i.ca, %bb.v ]
  %i.cz = phi i1 [ true, %bb.p ], [ %i.bx, %.preheader ], [ %i.bz, %bb.v ]
  %.0.i106 = phi i32 [ -1, %bb.p ], [ 0, %.preheader ], [ %.2.i, %bb.v ]
  %i.da = tail call fastcc i32 @sqlite3FkOldmask(ptr noundef nonnull %0, ptr noundef %1)
  %i.db = or i32 %i.da, %.0.i106                  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !950 ; 2 uses
  %i.de = add i32 %i.dd, 1                        ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 3 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !881
  %i.dh = sext i16 %i.dg to i32
  %i.di = add i32 %i.de, %i.dh
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !950
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 5 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !185 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !943
  %.not.i.i = icmp sgt i32 %i.dm, %i.dk
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %sqlite3TriggerColmask.exit
  %i.dn = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 81, i32 noundef %5, i32 noundef %i.de, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.x:                                             ; preds = %sqlite3TriggerColmask.exit
  %i.do = add nsw i32 %i.dk, 1
  store i32 %i.do, ptr %i.dj, align 8, !tbaa !185
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !184
  %i.dr = sext i32 %i.dk to i64
  %i.ds = getelementptr inbounds [24 x i8], ptr %i.dq, i64 %i.dr ; 7 uses
  store i8 81, ptr %i.ds, align 8, !tbaa !563
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  store i16 0, ptr %i.dt, align 2, !tbaa !587
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %5, ptr %i.du, align 4, !tbaa !584
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i32 %i.de, ptr %i.dv, align 8, !tbaa !585
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !586
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store ptr null, ptr %i.dx, align 8, !tbaa !227
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  store i8 0, ptr %i.dy, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.w, %bb.x
  %i.dz = load i16, ptr %i.df, align 2, !tbaa !881 ; 2 uses
  %i.ea = icmp sgt i16 %i.dz, 0
  br i1 %i.ea, label %.lr.ph193, label %._crit_edge

.lr.ph193:                                        ; preds = %sqlite3VdbeAddOp2.exit
  %i.eb = icmp eq i32 %i.db, -1
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ee = add i32 %i.dd, 2
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph193, %bb.ad
  %i.ef = phi i16 [ %i.dz, %.lr.ph193 ], [ %i.jb, %bb.ad ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph193 ], [ %indvars.iv.next, %bb.ad ] ; 12 uses
  br i1 %i.eb, label %._crit_edge216, label %bb.z

._crit_edge216:                                   ; preds = %bb.y
  %.pre217 = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.eg = icmp samesign ult i64 %indvars.iv, 32
  br i1 %i.eg, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.eh = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ei = shl nuw i32 1, %i.eh
  %i.ej = and i32 %i.ei, %i.db
  %.not101 = icmp eq i32 %i.ej, 0
  br i1 %.not101, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge216, %bb.aa
  %.pre-phi = phi i32 [ %.pre217, %._crit_edge216 ], [ %i.eh, %bb.aa ] ; 3 uses
  %i.ek = trunc nuw nsw i32 %.pre-phi to i16      ; 2 uses
  %i.el = load i32, ptr %i.f, align 8, !tbaa !788
  %i.em = and i32 %i.el, 32
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab
  %.not23.i = icmp eq i32 %.pre-phi, 0
  %i.eo = load ptr, ptr %i.ec, align 8, !tbaa !882 ; 22 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp samesign ult i64 %indvars.iv, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check263 = icmp samesign ult i64 %indvars.iv, 17
  br i1 %min.iters.check263, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %indvars.iv, 15             ; 2 uses
  %i.ep = icmp eq i64 %n.mod.vf, 0
  %i.eq = select i1 %i.ep, i64 16, i64 %n.mod.vf  ; 2 uses
  %n.vec = sub nsw i64 %indvars.iv, %i.eq         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.hj, %vector.body ]
  %vec.phi264 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.hk, %vector.body ]
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 14
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 30
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 46
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 62
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 78
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 94
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 110
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 126
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 142
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fa, i64 158
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 174
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 190
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fd, i64 206
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 222
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ff, i64 238
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fg, i64 254
  %i.fx = load i16, ptr %i.fh, align 2, !tbaa !883
  %i.fy = load i16, ptr %i.fi, align 2, !tbaa !883
  %i.fz = load i16, ptr %i.fj, align 2, !tbaa !883
  %i.ga = load i16, ptr %i.fk, align 2, !tbaa !883
  %i.gb = load i16, ptr %i.fl, align 2, !tbaa !883
  %i.gc = load i16, ptr %i.fm, align 2, !tbaa !883
  %i.gd = load i16, ptr %i.fn, align 2, !tbaa !883
  %i.ge = load i16, ptr %i.fo, align 2, !tbaa !883
  %i.gf = insertelement <8 x i16> poison, i16 %i.fx, i64 0
  %i.gg = insertelement <8 x i16> %i.gf, i16 %i.fy, i64 1
  %i.gh = insertelement <8 x i16> %i.gg, i16 %i.fz, i64 2
  %i.gi = insertelement <8 x i16> %i.gh, i16 %i.ga, i64 3
  %i.gj = insertelement <8 x i16> %i.gi, i16 %i.gb, i64 4
  %i.gk = insertelement <8 x i16> %i.gj, i16 %i.gc, i64 5
  %i.gl = insertelement <8 x i16> %i.gk, i16 %i.gd, i64 6
  %i.gm = insertelement <8 x i16> %i.gl, i16 %i.ge, i64 7
  %i.gn = load i16, ptr %i.fp, align 2, !tbaa !883
  %i.go = load i16, ptr %i.fq, align 2, !tbaa !883
  %i.gp = load i16, ptr %i.fr, align 2, !tbaa !883
  %i.gq = load i16, ptr %i.fs, align 2, !tbaa !883
  %i.gr = load i16, ptr %i.ft, align 2, !tbaa !883
  %i.gs = load i16, ptr %i.fu, align 2, !tbaa !883
  %i.gt = load i16, ptr %i.fv, align 2, !tbaa !883
  %i.gu = load i16, ptr %i.fw, align 2, !tbaa !883
  %i.gv = insertelement <8 x i16> poison, i16 %i.gn, i64 0
  %i.gw = insertelement <8 x i16> %i.gv, i16 %i.go, i64 1
  %i.gx = insertelement <8 x i16> %i.gw, i16 %i.gp, i64 2
  %i.gy = insertelement <8 x i16> %i.gx, i16 %i.gq, i64 3
  %i.gz = insertelement <8 x i16> %i.gy, i16 %i.gr, i64 4
  %i.ha = insertelement <8 x i16> %i.gz, i16 %i.gs, i64 5
  %i.hb = insertelement <8 x i16> %i.ha, i16 %i.gt, i64 6
  %i.hc = insertelement <8 x i16> %i.hb, i16 %i.gu, i64 7
  %i.hd = lshr <8 x i16> %i.gm, splat (i16 5)
  %i.he = lshr <8 x i16> %i.hc, splat (i16 5)
  %i.hf = and <8 x i16> %i.hd, splat (i16 1)
  %i.hg = and <8 x i16> %i.he, splat (i16 1)
  %i.hh = xor <8 x i16> %i.hf, splat (i16 1)
  %i.hi = xor <8 x i16> %i.hg, splat (i16 1)
  %i.hj = add <8 x i16> %i.hh, %vec.phi           ; 2 uses
  %i.hk = add <8 x i16> %i.hi, %vec.phi264        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hl, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !4747

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.hk, %i.hj
  %i.hm = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.eq, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !886

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.hm, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf265 = and i64 %indvars.iv, 3           ; 2 uses
  %i.hn = icmp eq i64 %n.mod.vf265, 0
  %i.ho = select i1 %i.hn, i64 4, i64 %n.mod.vf265
  %n.vec266 = sub nsw i64 %indvars.iv, %i.ho      ; 2 uses
  %i.hp = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index267 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next269, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi268 = phi <4 x i16> [ %i.hp, %vec.epilog.ph ], [ %i.ij, %vec.epilog.vector.body ]
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index267
  %i.hr = getelementptr [16 x i8], ptr %i.eo, i64 %index267
  %i.hs = getelementptr [16 x i8], ptr %i.eo, i64 %index267
  %i.ht = getelementptr [16 x i8], ptr %i.eo, i64 %index267
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 14
  %i.hv = getelementptr i8, ptr %i.hr, i64 30
  %i.hw = getelementptr i8, ptr %i.hs, i64 46
  %i.hx = getelementptr i8, ptr %i.ht, i64 62
  %i.hy = load i16, ptr %i.hu, align 2, !tbaa !883
  %i.hz = load i16, ptr %i.hv, align 2, !tbaa !883
  %i.ia = load i16, ptr %i.hw, align 2, !tbaa !883
  %i.ib = load i16, ptr %i.hx, align 2, !tbaa !883
  %i.ic = insertelement <4 x i16> poison, i16 %i.hy, i64 0
  %i.id = insertelement <4 x i16> %i.ic, i16 %i.hz, i64 1
  %i.ie = insertelement <4 x i16> %i.id, i16 %i.ia, i64 2
  %i.if = insertelement <4 x i16> %i.ie, i16 %i.ib, i64 3
  %i.ig = lshr <4 x i16> %i.if, splat (i16 5)
  %i.ih = and <4 x i16> %i.ig, splat (i16 1)
  %i.ii = xor <4 x i16> %i.ih, splat (i16 1)
  %i.ij = add <4 x i16> %i.ii, %vec.phi268        ; 2 uses
  %index.next269 = add nuw i64 %index267, 4       ; 2 uses
  %i.ik = icmp eq i64 %index.next269, %n.vec266
  br i1 %i.ik, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4748

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.il = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ij)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec266, %vec.epilog.middle.block ]
  %.021.i107.ph = phi i16 [ 0, %iter.check ], [ %i.hm, %vec.epilog.iter.check ], [ %i.il, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.021.i107 = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.021.i107.ph, %.lr.ph.i.preheader ]
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 14
  %i.io = load i16, ptr %i.in, align 2, !tbaa !883
  %i.ip = lshr i16 %i.io, 5
  %i.iq = and i16 %i.ip, 1
  %i.ir = xor i16 %i.iq, 1
  %spec.select.i = add i16 %i.ir, %.021.i107      ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4749

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %indvars.iv
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 14
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !883
  %i.iv = and i16 %i.iu, 32
  %.not.i108 = icmp eq i16 %i.iv, 0
  br i1 %.not.i108, label %sqlite3TableColumnToStorage.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i
  %i.iw = load i16, ptr %i.ed, align 8, !tbaa !889
  %i.ix = sub i16 %i.ek, %.0.lcssa.i
  %i.iy = add i16 %i.ix, %i.iw
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.ab, %._crit_edge.i, %bb.ac
  %.018.i = phi i16 [ %i.ek, %bb.ab ], [ %i.iy, %bb.ac ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.iz = sext i16 %.018.i to i32
  %i.ja = add i32 %i.ee, %i.iz
  tail call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %i.b, ptr noundef nonnull %1, i32 noundef %3, i32 noundef %.pre-phi, i32 noundef %i.ja)
  %.pre214 = load i16, ptr %i.df, align 2, !tbaa !881
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.aa, %sqlite3TableColumnToStorage.exit
  %i.jb = phi i16 [ %i.ef, %bb.z ], [ %i.ef, %bb.aa ], [ %.pre214, %sqlite3TableColumnToStorage.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jc = sext i16 %i.jb to i64
  %i.jd = icmp slt i64 %indvars.iv.next, %i.jc
  br i1 %i.jd, label %bb.y, label %._crit_edge, !llvm.loop !4750

._crit_edge:                                      ; preds = %bb.ad, %sqlite3VdbeAddOp2.exit
  %.val103 = load i32, ptr %i.dj, align 8, !tbaa !185
  %.not.i110194 = icmp eq ptr %2, null
  br i1 %.not.i110194, label %sqlite3VdbeAddOp4Int.exit117, label %.lr.ph197

.lr.ph197:                                        ; preds = %._crit_edge
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph197, %bb.ak
  %.0.i109195 = phi ptr [ %2, %.lr.ph197 ], [ %i.jq, %bb.ak ] ; 6 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.i109195, i64 16
  %i.jg = load i8, ptr %i.jf, align 8, !tbaa !3918
  %i.jh = icmp eq i8 %i.jg, -127
  br i1 %i.jh, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.i109195, i64 17
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !3919
  %i.jk = icmp eq i8 %i.jj, 1
  br i1 %i.jk, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.jl = getelementptr inbounds nuw i8, ptr %.0.i109195, i64 18
  %i.jm = load i8, ptr %i.jl, align 2, !tbaa !135
  %.not28.i114 = icmp eq i8 %i.jm, 0
  br i1 %.not28.i114, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @sqlite3CodeRowTriggerDirect(ptr noundef nonnull %0, ptr noundef %.0.i109195, ptr noundef nonnull %1, i32 noundef %i.de, i32 noundef %i.cy, i32 noundef range(i32 -2147483648, 2147483647) %i.e), !inline_history !4751
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.jn = load ptr, ptr %i.je, align 8, !tbaa !3544
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @codeReturningTrigger(ptr noundef nonnull %0, ptr noundef %.0.i109195, ptr noundef nonnull %1, i32 noundef %i.de), !inline_history !4751
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ae, %bb.aj, %bb.ai, %bb.ah, %bb.af
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.i109195, i64 64
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !2808 ; 2 uses
  %.not.i110 = icmp eq ptr %i.jq, null
  br i1 %.not.i110, label %sqlite3CodeRowTrigger.exit, label %bb.ae, !llvm.loop !4752

sqlite3CodeRowTrigger.exit:                       ; preds = %bb.ak
  %.val.pre = load i32, ptr %i.dj, align 8, !tbaa !185 ; 4 uses
  %i.jr = icmp slt i32 %.val103, %.val.pre
  br i1 %i.jr, label %bb.al, label %sqlite3VdbeAddOp4Int.exit117

bb.al:                                            ; preds = %sqlite3CodeRowTrigger.exit
  %i.js = sext i16 %6 to i32                      ; 2 uses
  %i.jt = load i32, ptr %i.dl, align 4, !tbaa !943
  %.not.i115 = icmp sgt i32 %i.jt, %.val.pre
  br i1 %.not.i115, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ju = zext nneg i8 %i.j to i32
  %i.jv = tail call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %i.b, i32 noundef range(i32 0, 256) %i.ju, i32 noundef %3, i32 noundef %i.e, i32 noundef %5, i32 noundef %i.js) ; 0 uses
  br label %sqlite3VdbeAddOp4Int.exit117

bb.an:                                            ; preds = %bb.al
  %i.jw = add nsw i32 %.val.pre, 1
  store i32 %i.jw, ptr %i.dj, align 8, !tbaa !185
  %i.jx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !184
  %i.jz = sext i32 %.val.pre to i64
  %i.ka = getelementptr inbounds [24 x i8], ptr %i.jy, i64 %i.jz ; 7 uses
  store i8 %i.j, ptr %i.ka, align 8, !tbaa !563
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 2
  store i16 0, ptr %i.kb, align 2, !tbaa !587
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  store i32 %3, ptr %i.kc, align 4, !tbaa !584
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i32 %i.e, ptr %i.kd, align 8, !tbaa !585
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  store i32 %5, ptr %i.ke, align 4, !tbaa !586
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store i32 %i.js, ptr %i.kf, align 8, !tbaa !227
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 1
  store i8 -3, ptr %i.kg, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp4Int.exit117

sqlite3VdbeAddOp4Int.exit117:                     ; preds = %._crit_edge, %bb.an, %bb.am, %sqlite3CodeRowTrigger.exit
  %.095 = phi i32 [ %10, %sqlite3CodeRowTrigger.exit ], [ -1, %bb.am ], [ -1, %bb.an ], [ %10, %._crit_edge ]
  tail call fastcc void @sqlite3FkCheck(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.de, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br label %bb.ao

bb.ao:                                            ; preds = %sqlite3FkRequired.exit, %sqlite3VdbeAddOp4Int.exit117
  %i.kh = phi i1 [ %i.cz, %sqlite3VdbeAddOp4Int.exit117 ], [ false, %sqlite3FkRequired.exit ]
  %.096 = phi i32 [ %i.de, %sqlite3VdbeAddOp4Int.exit117 ], [ 0, %sqlite3FkRequired.exit ] ; 3 uses
  %.1 = phi i32 [ %.095, %sqlite3VdbeAddOp4Int.exit117 ], [ %10, %sqlite3FkRequired.exit ] ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !922
  %i.kk = icmp eq i8 %i.kj, 2
  br i1 %i.kk, label %sqlite3VdbeChangeP5.exit128, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @sqlite3GenerateRowIndexDelete(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %3, i32 noundef %4, ptr noundef null, i32 noundef %.1)
  %i.kl = zext nneg i8 %7 to i32                  ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 7 uses
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !185 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !943
  %.not.i.i118 = icmp sgt i32 %i.kp, %i.kn
  br i1 %.not.i.i118, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kq = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 131, i32 noundef %3, i32 noundef %i.kl, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit120

bb.ar:                                            ; preds = %bb.ap
  %i.kr = add nsw i32 %i.kn, 1
  store i32 %i.kr, ptr %i.km, align 8, !tbaa !185
  %i.ks = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !184
  %i.ku = sext i32 %i.kn to i64
  %i.kv = getelementptr inbounds [24 x i8], ptr %i.kt, i64 %i.ku ; 7 uses
  store i8 -125, ptr %i.kv, align 8, !tbaa !563
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  store i16 0, ptr %i.kw, align 2, !tbaa !587
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  store i32 %3, ptr %i.kx, align 4, !tbaa !584
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store i32 %i.kl, ptr %i.ky, align 8, !tbaa !585
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  store i32 0, ptr %i.kz, align 4, !tbaa !586
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  store ptr null, ptr %i.la, align 8, !tbaa !227
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  store i8 0, ptr %i.lb, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp2.exit120

sqlite3VdbeAddOp2.exit120:                        ; preds = %bb.aq, %bb.ar
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ld = load i8, ptr %i.lc, align 2, !tbaa !3503
  %i.le = icmp eq i8 %i.ld, 0
  br i1 %i.le, label %sqlite3_stricmp.exit.thread, label %bb.as

bb.as:                                            ; preds = %sqlite3VdbeAddOp2.exit120
  %i.lf = load ptr, ptr %1, align 8, !tbaa !947   ; 2 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %sqlite3VdbeAppendP4.exit, label %.preheader.i121

.preheader.i121:                                  ; preds = %bb.as, %bb.av
  %.013.i.i = phi ptr [ %i.ls, %bb.av ], [ @.str.405, %bb.as ] ; 2 uses
  %.0.i.i122 = phi ptr [ %i.lr, %bb.av ], [ %i.lf, %bb.as ] ; 2 uses
  %i.lh = load i8, ptr %.0.i.i122, align 1, !tbaa !227 ; 3 uses
  %i.li = load i8, ptr %.013.i.i, align 1, !tbaa !227 ; 2 uses
  %i.lj = icmp eq i8 %i.lh, %i.li
  br i1 %i.lj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.preheader.i121
  %i.lk = icmp eq i8 %i.lh, 0
  br i1 %i.lk, label %sqlite3_stricmp.exit.thread, label %bb.av

bb.au:                                            ; preds = %.preheader.i121
  %i.ll = zext i8 %i.lh to i64
  %i.lm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !227
  %i.lo = zext i8 %i.li to i64
  %i.lp = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !227
  %.not.i.i123 = icmp eq i8 %i.ln, %i.lq
  br i1 %.not.i.i123, label %bb.av, label %sqlite3VdbeAppendP4.exit

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.lr = getelementptr inbounds nuw i8, ptr %.0.i.i122, i64 1
  %i.ls = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  br label %.preheader.i121

end_hunk_6
begin_hunk_7_@sqlite3ComputeGeneratedColumns:bb.a
bb.g:                                             ; preds = %bb.f
  store i8 64, ptr %i.v, align 1, !tbaa !227
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = add nsw i32 %.06177, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %.162 = phi i32 [ %.06177, %bb.e ], [ %i.ad, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ae = sext i32 %.162 to i64
  %i.af = getelementptr inbounds i8, ptr %i.s, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !227
  %.not65 = icmp eq i8 %i.ag, 0
  br i1 %.not65, label %.loopexit, label %bb.e, !llvm.loop !4828

bb.j:                                             ; preds = %sqlite3VdbeGetLastOp.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12
  store i32 1, ptr %i.ah, align 4, !tbaa !586
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.d, %sqlite3VdbeGetLastOp.exit, %bb.j, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 54 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !881 ; 4 uses
  %i.ak = icmp sgt i16 %i.aj, 0
  br i1 %i.ak, label %.lr.ph79, label %._crit_edge

.lr.ph79:                                         ; preds = %.loopexit
  %wide.trip.count = zext nneg i16 %i.aj to i64   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !882 ; 9 uses
  %min.iters.check = icmp ult i16 %i.aj, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph79
  %n.mod.vf = and i64 %wide.trip.count, 7         ; 2 uses
  %i.an = icmp eq i64 %n.mod.vf, 0
  %i.ao = select i1 %i.an, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count, %i.ao    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue119, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue119 ] ; 9 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %index
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %index
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %index
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %index
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %index
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %index
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %index
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %index
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 14 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 30 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 46 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 62 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 78 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 94 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 110 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 126 ; 2 uses
  %i.bf = load i16, ptr %i.ax, align 2, !tbaa !883 ; 2 uses
  %i.bg = load i16, ptr %i.ay, align 2, !tbaa !883 ; 2 uses
  %i.bh = load i16, ptr %i.az, align 2, !tbaa !883 ; 2 uses
  %i.bi = load i16, ptr %i.ba, align 2, !tbaa !883 ; 2 uses
  %i.bj = load i16, ptr %i.bb, align 2, !tbaa !883 ; 2 uses
  %i.bk = load i16, ptr %i.bc, align 2, !tbaa !883 ; 2 uses
  %i.bl = load i16, ptr %i.bd, align 2, !tbaa !883 ; 2 uses
  %i.bm = load i16, ptr %i.be, align 2, !tbaa !883 ; 2 uses
  %i.bn = insertelement <8 x i16> poison, i16 %i.bf, i64 0
  %i.bo = insertelement <8 x i16> %i.bn, i16 %i.bg, i64 1
  %i.bp = insertelement <8 x i16> %i.bo, i16 %i.bh, i64 2
  %i.bq = insertelement <8 x i16> %i.bp, i16 %i.bi, i64 3
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.bj, i64 4
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 5
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 6
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 7
  %i.bv = and <8 x i16> %i.bu, splat (i16 96)
  %i.bw = icmp ne <8 x i16> %i.bv, zeroinitializer ; 8 uses
  %i.bx = extractelement <8 x i1> %i.bw, i64 0
  br i1 %i.bx, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.by = or i16 %i.bf, 128
  store i16 %i.by, ptr %i.ax, align 2, !tbaa !883
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bz = extractelement <8 x i1> %i.bw, i64 1
  br i1 %i.bz, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue
  %i.ca = or i16 %i.bg, 128
  store i16 %i.ca, ptr %i.ay, align 2, !tbaa !883
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue
  %i.cb = extractelement <8 x i1> %i.bw, i64 2
  br i1 %i.cb, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  %i.cc = or i16 %i.bh, 128
  store i16 %i.cc, ptr %i.az, align 2, !tbaa !883
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.cd = extractelement <8 x i1> %i.bw, i64 3
  br i1 %i.cd, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  %i.ce = or i16 %i.bi, 128
  store i16 %i.ce, ptr %i.ba, align 2, !tbaa !883
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.cf = extractelement <8 x i1> %i.bw, i64 4
  br i1 %i.cf, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  %i.cg = or i16 %i.bj, 128
  store i16 %i.cg, ptr %i.bb, align 2, !tbaa !883
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.ch = extractelement <8 x i1> %i.bw, i64 5
  br i1 %i.ch, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  %i.ci = or i16 %i.bk, 128
  store i16 %i.ci, ptr %i.bc, align 2, !tbaa !883
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %i.cj = extractelement <8 x i1> %i.bw, i64 6
  br i1 %i.cj, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue115
  %i.ck = or i16 %i.bl, 128
  store i16 %i.ck, ptr %i.bd, align 2, !tbaa !883
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %i.cl = extractelement <8 x i1> %i.bw, i64 7
  br i1 %i.cl, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  %i.cm = or i16 %i.bm, 128
  store i16 %i.cm, ptr %i.be, align 2, !tbaa !883
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %scalar.ph.preheader, label %vector.body, !llvm.loop !4829

scalar.ph.preheader:                              ; preds = %pred.store.continue119, %.lr.ph79
  %indvars.iv88.ph = phi i64 [ 0, %.lr.ph79 ], [ %n.vec, %pred.store.continue119 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.l
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %bb.l ], [ %indvars.iv88.ph, %scalar.ph.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv88
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 14 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !883 ; 2 uses
  %i.cr = and i16 %i.cq, 96
  %.not68 = icmp eq i16 %i.cr, 0
  br i1 %.not68, label %bb.l, label %bb.k

bb.k:                                             ; preds = %scalar.ph
  %i.cs = or i16 %i.cq, 128
  store i16 %i.cs, ptr %i.cp, align 2, !tbaa !883
  br label %bb.l

bb.l:                                             ; preds = %scalar.ph, %bb.k
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !4830

._crit_edge:                                      ; preds = %bb.l, %.loopexit
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.ct, align 8, !tbaa !227
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @exprColumnFlagUnion, ptr %i.cu, align 8, !tbaa !3507
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cw = sub nsw i32 0, %1
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i8 0, i64 16, i1 false)
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !3888
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 63
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 56
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge85, %._crit_edge
  %i.dd = phi i16 [ %i.ix, %._crit_edge85 ], [ %i.aj, %._crit_edge ]
  %i.de = icmp sgt i16 %i.dd, 0
  br i1 %i.de, label %.lr.ph84, label %.thread

.lr.ph84:                                         ; preds = %bb.m, %bb.t
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %bb.t ], [ 0, %bb.m ] ; 11 uses
  %.05581 = phi ptr [ %.3, %bb.t ], [ null, %bb.m ] ; 2 uses
  %.05780 = phi i32 [ %.360, %bb.t ], [ 0, %bb.m ] ; 2 uses
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !882
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %indvars.iv91 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 14 ; 7 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !883 ; 3 uses
  %i.dj = and i16 %i.di, 128
  %.not66 = icmp eq i16 %i.dj, 0
  br i1 %.not66, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.lr.ph84
  %i.dk = or i16 %i.di, 256
  store i16 %i.dk, ptr %i.dh, align 2, !tbaa !883
  store i16 0, ptr %i.cz, align 4, !tbaa !3504
  %i.dl = getelementptr i8, ptr %i.dg, i64 12
  %.val = load i16, ptr %i.dl, align 4, !tbaa !900 ; 3 uses
  %i.dm = zext i16 %.val to i32
  %i.dn = icmp eq i16 %.val, 0
  br i1 %i.dn, label %sqlite3WalkExpr.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = load i8, ptr %i.da, align 1, !tbaa !922
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %bb.p, label %sqlite3WalkExpr.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.dq = load ptr, ptr %i.db, align 8, !tbaa !227 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %sqlite3WalkExpr.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = load i32, ptr %i.dq, align 8, !tbaa !5
  %i.dt = icmp slt i32 %i.ds, %i.dm
  br i1 %i.dt, label %sqlite3WalkExpr.exit.thread, label %sqlite3ColumnExpr.exit

sqlite3ColumnExpr.exit:                           ; preds = %bb.q
  %i.du = zext i16 %.val to i64
  %i.dv = getelementptr [24 x i8], ptr %i.dq, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 -16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !902 ; 2 uses
  %.not.i = icmp eq ptr %i.dx, null
  br i1 %.not.i, label %sqlite3WalkExpr.exit.thread, label %sqlite3WalkExpr.exit

sqlite3WalkExpr.exit.thread:                      ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %sqlite3ColumnExpr.exit
  %i.dy = and i16 %i.di, -257
  store i16 %i.dy, ptr %i.dh, align 2, !tbaa !883
  br label %bb.r

sqlite3WalkExpr.exit:                             ; preds = %sqlite3ColumnExpr.exit
  %i.dz = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %3, ptr noundef nonnull %i.dx) #62, !inline_history !3509 ; 0 uses
  %.pre = load i16, ptr %i.dh, align 2, !tbaa !883
  %.pre95 = load i16, ptr %i.cz, align 4, !tbaa !3504
  %i.ea = and i16 %.pre95, 128
  %i.eb = icmp eq i16 %i.ea, 0
  %i.ec = and i16 %.pre, -257
  store i16 %i.ec, ptr %i.dh, align 2, !tbaa !883
  br i1 %i.eb, label %bb.r, label %bb.t

bb.r:                                             ; preds = %sqlite3WalkExpr.exit.thread, %sqlite3WalkExpr.exit
  %i.ed = trunc i64 %indvars.iv91 to i16          ; 4 uses
  %i.ee = load i32, ptr %i.c, align 8, !tbaa !788
  %i.ef = and i32 %i.ee, 32
  %i.eg = icmp eq i32 %i.ef, 0
  %i.eh = icmp slt i16 %i.ed, 0
  %or.cond.i = or i1 %i.eh, %i.eg
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.r
  %.not23.i = icmp eq i16 %i.ed, 0
  %i.ei = load ptr, ptr %i.cy, align 8, !tbaa !882 ; 22 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check121 = icmp samesign ult i64 %indvars.iv91, 5
  br i1 %min.iters.check121, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check122 = icmp samesign ult i64 %indvars.iv91, 17
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph123

vector.ph123:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf124 = and i64 %indvars.iv91, 15        ; 2 uses
  %i.ej = icmp eq i64 %n.mod.vf124, 0
  %i.ek = select i1 %i.ej, i64 16, i64 %n.mod.vf124 ; 2 uses
  %n.vec125 = sub nsw i64 %indvars.iv91, %i.ek    ; 3 uses
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph123
  %index127 = phi i64 [ 0, %vector.ph123 ], [ %index.next129, %vector.body126 ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph123 ], [ %i.hd, %vector.body126 ]
  %vec.phi128 = phi <8 x i16> [ zeroinitializer, %vector.ph123 ], [ %i.he, %vector.body126 ]
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index127
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index127
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index127
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index127
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index127
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index127
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index127
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index127
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index127
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index127
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index127
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index127
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index127
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index127
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index127
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index127
  %i.fb = getelementptr inbounds nuw i8, ptr %i.el, i64 14
  %i.fc = getelementptr inbounds nuw i8, ptr %i.em, i64 30
  %i.fd = getelementptr inbounds nuw i8, ptr %i.en, i64 46
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 62
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 78
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 94
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 110
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 126
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 142
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 158
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 174
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 190
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 206
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 222
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 238
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fa, i64 254
  %i.fr = load i16, ptr %i.fb, align 2, !tbaa !883
  %i.fs = load i16, ptr %i.fc, align 2, !tbaa !883
  %i.ft = load i16, ptr %i.fd, align 2, !tbaa !883
  %i.fu = load i16, ptr %i.fe, align 2, !tbaa !883
  %i.fv = load i16, ptr %i.ff, align 2, !tbaa !883
  %i.fw = load i16, ptr %i.fg, align 2, !tbaa !883
  %i.fx = load i16, ptr %i.fh, align 2, !tbaa !883
  %i.fy = load i16, ptr %i.fi, align 2, !tbaa !883
  %i.fz = insertelement <8 x i16> poison, i16 %i.fr, i64 0
  %i.ga = insertelement <8 x i16> %i.fz, i16 %i.fs, i64 1
  %i.gb = insertelement <8 x i16> %i.ga, i16 %i.ft, i64 2
  %i.gc = insertelement <8 x i16> %i.gb, i16 %i.fu, i64 3
  %i.gd = insertelement <8 x i16> %i.gc, i16 %i.fv, i64 4
  %i.ge = insertelement <8 x i16> %i.gd, i16 %i.fw, i64 5
  %i.gf = insertelement <8 x i16> %i.ge, i16 %i.fx, i64 6
  %i.gg = insertelement <8 x i16> %i.gf, i16 %i.fy, i64 7
  %i.gh = load i16, ptr %i.fj, align 2, !tbaa !883
  %i.gi = load i16, ptr %i.fk, align 2, !tbaa !883
  %i.gj = load i16, ptr %i.fl, align 2, !tbaa !883
  %i.gk = load i16, ptr %i.fm, align 2, !tbaa !883
  %i.gl = load i16, ptr %i.fn, align 2, !tbaa !883
  %i.gm = load i16, ptr %i.fo, align 2, !tbaa !883
  %i.gn = load i16, ptr %i.fp, align 2, !tbaa !883
  %i.go = load i16, ptr %i.fq, align 2, !tbaa !883
  %i.gp = insertelement <8 x i16> poison, i16 %i.gh, i64 0
  %i.gq = insertelement <8 x i16> %i.gp, i16 %i.gi, i64 1
  %i.gr = insertelement <8 x i16> %i.gq, i16 %i.gj, i64 2
  %i.gs = insertelement <8 x i16> %i.gr, i16 %i.gk, i64 3
  %i.gt = insertelement <8 x i16> %i.gs, i16 %i.gl, i64 4
  %i.gu = insertelement <8 x i16> %i.gt, i16 %i.gm, i64 5
  %i.gv = insertelement <8 x i16> %i.gu, i16 %i.gn, i64 6
  %i.gw = insertelement <8 x i16> %i.gv, i16 %i.go, i64 7
  %i.gx = lshr <8 x i16> %i.gg, splat (i16 5)
  %i.gy = lshr <8 x i16> %i.gw, splat (i16 5)
  %i.gz = and <8 x i16> %i.gx, splat (i16 1)
  %i.ha = and <8 x i16> %i.gy, splat (i16 1)
  %i.hb = xor <8 x i16> %i.gz, splat (i16 1)
  %i.hc = xor <8 x i16> %i.ha, splat (i16 1)
  %i.hd = add <8 x i16> %i.hb, %vec.phi           ; 2 uses
  %i.he = add <8 x i16> %i.hc, %vec.phi128        ; 2 uses
  %index.next129 = add nuw i64 %index127, 16      ; 2 uses
  %i.hf = icmp eq i64 %index.next129, %n.vec125
  br i1 %i.hf, label %vec.epilog.iter.check, label %vector.body126, !llvm.loop !4831

vec.epilog.iter.check:                            ; preds = %vector.body126
  %bin.rdx = add <8 x i16> %i.he, %i.hd
  %i.hg = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.ek, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !886

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec125, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.hg, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf131 = and i64 %indvars.iv91, 3         ; 2 uses
  %i.hh = icmp eq i64 %n.mod.vf131, 0
  %i.hi = select i1 %i.hh, i64 4, i64 %n.mod.vf131
  %n.vec132 = sub nsw i64 %indvars.iv91, %i.hi    ; 2 uses
  %i.hj = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index133 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next135, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi134 = phi <4 x i16> [ %i.hj, %vec.epilog.ph ], [ %i.id, %vec.epilog.vector.body ]
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %index133
  %i.hl = getelementptr [16 x i8], ptr %i.ei, i64 %index133
  %i.hm = getelementptr [16 x i8], ptr %i.ei, i64 %index133
  %i.hn = getelementptr [16 x i8], ptr %i.ei, i64 %index133
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 14
  %i.hp = getelementptr i8, ptr %i.hl, i64 30
  %i.hq = getelementptr i8, ptr %i.hm, i64 46
  %i.hr = getelementptr i8, ptr %i.hn, i64 62
  %i.hs = load i16, ptr %i.ho, align 2, !tbaa !883
  %i.ht = load i16, ptr %i.hp, align 2, !tbaa !883
  %i.hu = load i16, ptr %i.hq, align 2, !tbaa !883
  %i.hv = load i16, ptr %i.hr, align 2, !tbaa !883
  %i.hw = insertelement <4 x i16> poison, i16 %i.hs, i64 0
  %i.hx = insertelement <4 x i16> %i.hw, i16 %i.ht, i64 1
  %i.hy = insertelement <4 x i16> %i.hx, i16 %i.hu, i64 2
  %i.hz = insertelement <4 x i16> %i.hy, i16 %i.hv, i64 3
  %i.ia = lshr <4 x i16> %i.hz, splat (i16 5)
  %i.ib = and <4 x i16> %i.ia, splat (i16 1)
  %i.ic = xor <4 x i16> %i.ib, splat (i16 1)
  %i.id = add <4 x i16> %i.ic, %vec.phi134        ; 2 uses
  %index.next135 = add nuw i64 %index133, 4       ; 2 uses
  %i.ie = icmp eq i64 %index.next135, %n.vec132
  br i1 %i.ie, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4832

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.if = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.id)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec125, %vec.epilog.iter.check ], [ %n.vec132, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.hg, %vec.epilog.iter.check ], [ %i.if, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.021.i.ph, %.lr.ph.i.preheader ]
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %indvars.iv.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 14
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !883
  %i.ij = lshr i16 %i.ii, 5
  %i.ik = and i16 %i.ij, 1
  %i.il = xor i16 %i.ik, 1
  %spec.select.i = add i16 %i.il, %.021.i         ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv91
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4833

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %indvars.iv91
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 14
  %i.io = load i16, ptr %i.in, align 2, !tbaa !883
  %i.ip = and i16 %i.io, 32
  %.not.i71 = icmp eq i16 %i.ip, 0
  br i1 %.not.i71, label %sqlite3TableColumnToStorage.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  %i.iq = load i16, ptr %i.dc, align 8, !tbaa !889
  %i.ir = sub i16 %i.ed, %.0.lcssa.i
  %i.is = add i16 %i.ir, %i.iq
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.r, %._crit_edge.i, %bb.s
  %.018.i = phi i16 [ %i.ed, %bb.r ], [ %i.is, %bb.s ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.it = sext i16 %.018.i to i32
  %i.iu = add nsw i32 %1, %i.it
  call fastcc void @sqlite3ExprCodeGeneratedColumn(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %i.dg, i32 noundef %i.iu)
  %i.iv = load i16, ptr %i.dh, align 2, !tbaa !883
  %i.iw = and i16 %i.iv, -129
  store i16 %i.iw, ptr %i.dh, align 2, !tbaa !883
  br label %bb.t

bb.t:                                             ; preds = %sqlite3TableColumnToStorage.exit, %sqlite3WalkExpr.exit, %.lr.ph84
  %.360 = phi i32 [ %.05780, %.lr.ph84 ], [ 1, %sqlite3TableColumnToStorage.exit ], [ %.05780, %sqlite3WalkExpr.exit ] ; 2 uses
  %.3 = phi ptr [ %.05581, %.lr.ph84 ], [ %.05581, %sqlite3TableColumnToStorage.exit ], [ %i.dg, %sqlite3WalkExpr.exit ] ; 3 uses
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.ix = load i16, ptr %i.ai, align 2, !tbaa !881 ; 2 uses
  %i.iy = sext i16 %i.ix to i64
  %i.iz = icmp slt i64 %indvars.iv.next92, %i.iy
  br i1 %i.iz, label %.lr.ph84, label %._crit_edge85, !llvm.loop !4834

._crit_edge85:                                    ; preds = %bb.t
  %i.ja = icmp ne i32 %.360, 0
  %i.jb = icmp ne ptr %.3, null                   ; 2 uses
  %i.jc = select i1 %i.jb, i1 %i.ja, i1 false
  br i1 %i.jc, label %bb.m, label %bb.u, !llvm.loop !4835

bb.u:                                             ; preds = %._crit_edge85
  br i1 %i.jb, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.jd = load ptr, ptr %.3, align 8, !tbaa !929
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %0, ptr noundef nonnull @.str.669, ptr noundef %i.jd)
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.v, %bb.u
  store i32 0, ptr %i.cx, align 4, !tbaa !3888
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3GenerateConstraintChecks(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 -2147483647, -2147483648) %6, i8 noundef zeroext range(i8 0, 3) %7, i8 noundef zeroext %8, i32 noundef range(i32 -2147483648, 2147483647) %9, ptr nofree noundef nonnull writeonly captures(none) %10, ptr noundef %11, ptr noundef %12) unnamed_addr #0 {
bb.a:
  %13 = alloca %struct.Walker, align 8            ; 7 uses
  %.sroa.9 = alloca i64, align 8                  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.a = icmp ne i32 %6, 0                        ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !651    ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !976  ; 106 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.f = load i16, ptr %i.e, align 2, !tbaa !881  ; 2 uses
  %wide.trip.count = sext i16 %i.f to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !788  ; 2 uses
  %i.i = and i32 %i.h, 128
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.b
  %.08.i.in = phi ptr [ %i.o, %.lr.ph.i ], [ %i.k, %bb.b ]
  %.08.i = load ptr, ptr %.08.i.in, align 8, !tbaa !935, !nonnull !1096, !noundef !1096 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i, i64 99
  %i.m = load i16, ptr %i.l, align 1
  %i.n = and i16 %i.m, 3
  %.not5.i = icmp eq i16 %i.n, 2
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i, i64 40
  br i1 %.not5.i, label %sqlite3PrimaryKeyIndex.exit, label %.lr.ph.i

sqlite3PrimaryKeyIndex.exit:                      ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i, i64 94
  %i.q = load i16, ptr %i.p, align 2, !tbaa !936
  %i.r = zext i16 %i.q to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %sqlite3PrimaryKeyIndex.exit
  %.0542 = phi i32 [ %i.r, %sqlite3PrimaryKeyIndex.exit ], [ 1, %bb.a ] ; 8 uses
  %.0523 = phi ptr [ %.08.i, %sqlite3PrimaryKeyIndex.exit ], [ null, %bb.a ] ; 5 uses
  %i.s = and i32 %i.h, 2048
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.loopexit1009, label %.preheader1008

.preheader1008:                                   ; preds = %bb.c
  %i.t = icmp sgt i16 %i.f, 0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.not669 = icmp eq ptr %11, null
  %.not670 = icmp eq i8 %8, 11
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = add i32 %5, 1                            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 148 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %.preheader1008
  %.0598 = phi i32 [ 0, %.preheader1008 ], [ %.1599.lcssa, %.backedge ] ; 2 uses
  %.0594 = phi i32 [ 0, %.preheader1008 ], [ %.1595.lcssa, %.backedge ] ; 2 uses
  %i.ae = phi i1 [ false, %.preheader1008 ], [ true, %.backedge ] ; 3 uses
  %i.af = phi i1 [ true, %.preheader1008 ], [ false, %.backedge ]
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %sqlite3VdbeChangeP5.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %sqlite3VdbeChangeP5.exit ], [ 0, %bb.d ] ; 12 uses
  %.15951021 = phi i32 [ %.3597, %sqlite3VdbeChangeP5.exit ], [ %.0594, %bb.d ] ; 10 uses
  %.15991020 = phi i32 [ %.2600, %sqlite3VdbeChangeP5.exit ], [ %.0598, %bb.d ] ; 10 uses
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !882 ; 22 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i8, ptr %i.ai, align 8
  %i.ak = and i8 %i.aj, 15                        ; 3 uses
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %sqlite3VdbeChangeP5.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.am = load i16, ptr %i.v, align 4, !tbaa !891
  %i.an = sext i16 %i.am to i64
  %i.ao = icmp eq i64 %indvars.iv, %i.an
  br i1 %i.ao, label %sqlite3VdbeChangeP5.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !883 ; 2 uses
  %i.ar = and i16 %i.aq, 96                       ; 3 uses
  %i.as = icmp eq i16 %i.ar, 0
  %or.cond = or i1 %i.ae, %i.as
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = add nsw i32 %.15991020, 1
  br label %sqlite3VdbeChangeP5.exit

bb.h:                                             ; preds = %bb.f
  br i1 %.not669, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !5
  %i.aw = icmp sgt i32 %i.av, -1
  %i.ax = icmp ne i16 %i.ar, 0
  %or.cond3 = or i1 %i.ax, %i.aw
  br i1 %or.cond3, label %bb.j, label %sqlite3VdbeChangeP5.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = icmp eq i8 %i.ak, 11
  %narrow671 = select i1 %i.ay, i8 2, i8 %i.ak
  %.0528.in = select i1 %.not670, i8 %narrow671, i8 %8 ; 2 uses
  %i.az = icmp eq i8 %.0528.in, 5
  br i1 %i.az, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %i.ae, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !900
  %i.bc = icmp eq i16 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %.0528 = zext i8 %.0528.in to i32
  %i.bd = icmp ne i16 %i.ar, 0
  %or.cond5 = or i1 %i.af, %i.bd
  br i1 %or.cond5, label %bb.o, label %sqlite3VdbeChangeP5.exit

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.1529 = phi i32 [ 2, %bb.m ], [ 5, %bb.l ], [ %.0528, %bb.n ] ; 3 uses
  %i.be = trunc i64 %indvars.iv to i16            ; 4 uses
  %i.bf = load i32, ptr %i.g, align 8, !tbaa !788
  %i.bg = and i32 %i.bf, 32
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = icmp slt i16 %i.be, 0
  %or.cond.i = or i1 %i.bi, %i.bh
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o
  %.not23.i = icmp eq i16 %i.be, 0
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp samesign ult i64 %indvars.iv, 5
  br i1 %min.iters.check, label %.lr.ph.i688.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1261 = icmp samesign ult i64 %indvars.iv, 17
  br i1 %min.iters.check1261, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %indvars.iv, 15             ; 2 uses
  %i.bj = icmp eq i64 %n.mod.vf, 0
  %i.bk = select i1 %i.bj, i64 16, i64 %n.mod.vf  ; 2 uses
  %n.vec = sub nsw i64 %indvars.iv, %i.bk         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ed, %vector.body ]
  %vec.phi1262 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ee, %vector.body ]
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 30
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 46
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 62
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 78
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 94
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 110
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 126
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 142
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 158
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 174
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 190
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 206
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 222
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 238
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 254
  %i.cr = load i16, ptr %i.cb, align 2, !tbaa !883
  %i.cs = load i16, ptr %i.cc, align 2, !tbaa !883
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !883
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !883
  %i.cv = load i16, ptr %i.cf, align 2, !tbaa !883
  %i.cw = load i16, ptr %i.cg, align 2, !tbaa !883
  %i.cx = load i16, ptr %i.ch, align 2, !tbaa !883
  %i.cy = load i16, ptr %i.ci, align 2, !tbaa !883
  %i.cz = insertelement <8 x i16> poison, i16 %i.cr, i64 0
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 1
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 2
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 3
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 4
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 5
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 6
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 7
  %i.dh = load i16, ptr %i.cj, align 2, !tbaa !883
  %i.di = load i16, ptr %i.ck, align 2, !tbaa !883
  %i.dj = load i16, ptr %i.cl, align 2, !tbaa !883
  %i.dk = load i16, ptr %i.cm, align 2, !tbaa !883
  %i.dl = load i16, ptr %i.cn, align 2, !tbaa !883
  %i.dm = load i16, ptr %i.co, align 2, !tbaa !883
  %i.dn = load i16, ptr %i.cp, align 2, !tbaa !883
  %i.do = load i16, ptr %i.cq, align 2, !tbaa !883
  %i.dp = insertelement <8 x i16> poison, i16 %i.dh, i64 0
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.di, i64 1
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dj, i64 2
  %i.ds = insertelement <8 x i16> %i.dr, i16 %i.dk, i64 3
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.dl, i64 4
  %i.du = insertelement <8 x i16> %i.dt, i16 %i.dm, i64 5
  %i.dv = insertelement <8 x i16> %i.du, i16 %i.dn, i64 6
  %i.dw = insertelement <8 x i16> %i.dv, i16 %i.do, i64 7
  %i.dx = lshr <8 x i16> %i.dg, splat (i16 5)
  %i.dy = lshr <8 x i16> %i.dw, splat (i16 5)
  %i.dz = and <8 x i16> %i.dx, splat (i16 1)
  %i.ea = and <8 x i16> %i.dy, splat (i16 1)
  %i.eb = xor <8 x i16> %i.dz, splat (i16 1)
  %i.ec = xor <8 x i16> %i.ea, splat (i16 1)
  %i.ed = add <8 x i16> %i.eb, %vec.phi           ; 2 uses
  %i.ee = add <8 x i16> %i.ec, %vec.phi1262       ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !4836

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.ee, %i.ed
  %i.eg = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.bk, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i688.preheader, label %vec.epilog.ph, !prof !886

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.eg, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf1263 = and i64 %indvars.iv, 3          ; 2 uses
  %i.eh = icmp eq i64 %n.mod.vf1263, 0
  %i.ei = select i1 %i.eh, i64 4, i64 %n.mod.vf1263
  %n.vec1264 = sub nsw i64 %indvars.iv, %i.ei     ; 2 uses
  %i.ej = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1265 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1267, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi1266 = phi <4 x i16> [ %i.ej, %vec.epilog.ph ], [ %i.fd, %vec.epilog.vector.body ]
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index1265
  %i.el = getelementptr [16 x i8], ptr %i.ag, i64 %index1265
  %i.em = getelementptr [16 x i8], ptr %i.ag, i64 %index1265
  %i.en = getelementptr [16 x i8], ptr %i.ag, i64 %index1265
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 14
  %i.ep = getelementptr i8, ptr %i.el, i64 30
  %i.eq = getelementptr i8, ptr %i.em, i64 46
  %i.er = getelementptr i8, ptr %i.en, i64 62
  %i.es = load i16, ptr %i.eo, align 2, !tbaa !883
  %i.et = load i16, ptr %i.ep, align 2, !tbaa !883
  %i.eu = load i16, ptr %i.eq, align 2, !tbaa !883
  %i.ev = load i16, ptr %i.er, align 2, !tbaa !883
  %i.ew = insertelement <4 x i16> poison, i16 %i.es, i64 0
  %i.ex = insertelement <4 x i16> %i.ew, i16 %i.et, i64 1
  %i.ey = insertelement <4 x i16> %i.ex, i16 %i.eu, i64 2
  %i.ez = insertelement <4 x i16> %i.ey, i16 %i.ev, i64 3
  %i.fa = lshr <4 x i16> %i.ez, splat (i16 5)
  %i.fb = and <4 x i16> %i.fa, splat (i16 1)
  %i.fc = xor <4 x i16> %i.fb, splat (i16 1)
  %i.fd = add <4 x i16> %i.fc, %vec.phi1266       ; 2 uses
  %index.next1267 = add nuw i64 %index1265, 4     ; 2 uses
  %i.fe = icmp eq i64 %index.next1267, %n.vec1264
  br i1 %i.fe, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4837

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ff = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.fd)
  br label %.lr.ph.i688.preheader

.lr.ph.i688.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1264, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.eg, %vec.epilog.iter.check ], [ %i.ff, %vec.epilog.middle.block ]
  br label %.lr.ph.i688

.lr.ph.i688:                                      ; preds = %.lr.ph.i688.preheader, %.lr.ph.i688
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i688 ], [ %indvars.iv.i.ph, %.lr.ph.i688.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i688 ], [ %.021.i.ph, %.lr.ph.i688.preheader ]
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 14
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !883
  %i.fj = lshr i16 %i.fi, 5
  %i.fk = and i16 %i.fj, 1
  %i.fl = xor i16 %i.fk, 1
  %spec.select.i = add i16 %i.fl, %.021.i         ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i688, !llvm.loop !4838

._crit_edge.i:                                    ; preds = %.lr.ph.i688, %.preheader.i
  %.0.lcssa.i689 = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i688 ] ; 2 uses
  %i.fm = and i16 %i.aq, 32
  %.not.i690 = icmp eq i16 %i.fm, 0
  br i1 %.not.i690, label %sqlite3TableColumnToStorage.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.fn = load i16, ptr %i.w, align 8, !tbaa !889
  %i.fo = sub i16 %i.be, %.0.lcssa.i689
  %i.fp = add i16 %i.fo, %i.fn
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.o, %._crit_edge.i, %bb.p
  %.018.i = phi i16 [ %i.be, %bb.o ], [ %i.fp, %bb.p ], [ %.0.lcssa.i689, %._crit_edge.i ]
  %i.fq = sext i16 %.018.i to i32
  %i.fr = add i32 %i.x, %i.fq                     ; 7 uses
  %trunc672 = trunc nuw i32 %.1529 to i8
  switch i8 %trunc672, label %bb.ai [
    i8 5, label %bb.q
    i8 2, label %bb.ab
    i8 1, label %bb.ac
    i8 3, label %bb.ac
  ]

bb.q:                                             ; preds = %sqlite3TableColumnToStorage.exit
  %i.fs = load i32, ptr %i.z, align 8, !tbaa !185 ; 4 uses
  %i.ft = load i32, ptr %i.aa, align 4, !tbaa !943
  %.not.i.i = icmp sgt i32 %i.ft, %i.fs
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fu = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 52, i32 noundef %i.fr, i32 noundef 0, i32 noundef 0), !inline_history !977
  br label %sqlite3VdbeAddOp1.exit

bb.s:                                             ; preds = %bb.q
  %i.fv = add nsw i32 %i.fs, 1
  store i32 %i.fv, ptr %i.z, align 8, !tbaa !185
  %i.fw = load ptr, ptr %i.ab, align 8, !tbaa !184
  %i.fx = sext i32 %i.fs to i64
  %i.fy = getelementptr inbounds [24 x i8], ptr %i.fw, i64 %i.fx ; 5 uses
  store i8 52, ptr %i.fy, align 8, !tbaa !563
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  store i16 0, ptr %i.fz, align 2, !tbaa !587
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i32 %i.fr, ptr %i.ga, align 4, !tbaa !584
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  store i8 0, ptr %i.gc, align 1, !tbaa !566
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp1.exit

sqlite3VdbeAddOp1.exit:                           ; preds = %bb.r, %bb.s
  %.0.i.i = phi i32 [ %i.fu, %bb.r ], [ %i.fs, %bb.s ]
  %i.gd = add nsw i32 %.15951021, 1
  %i.ge = getelementptr i8, ptr %i.ah, i64 12
  %.val685 = load i16, ptr %i.ge, align 4, !tbaa !900 ; 3 uses
  %i.gf = zext i16 %.val685 to i32
  %i.gg = icmp eq i16 %.val685, 0
  br i1 %i.gg, label %sqlite3ColumnExpr.exit.thread, label %bb.t

bb.t:                                             ; preds = %sqlite3VdbeAddOp1.exit
  %i.gh = load i8, ptr %i.ac, align 1, !tbaa !922
  %i.gi = icmp eq i8 %i.gh, 0
  br i1 %i.gi, label %bb.u, label %sqlite3ColumnExpr.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.gj = load ptr, ptr %i.ad, align 8, !tbaa !227 ; 3 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %sqlite3ColumnExpr.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gl = load i32, ptr %i.gj, align 8, !tbaa !5
  %i.gm = icmp slt i32 %i.gl, %i.gf
  br i1 %i.gm, label %sqlite3ColumnExpr.exit.thread, label %sqlite3ColumnExpr.exit

sqlite3ColumnExpr.exit.thread:                    ; preds = %sqlite3VdbeAddOp1.exit, %bb.t, %bb.u, %bb.v
  %i.gn = load ptr, ptr %0, align 8, !tbaa !651
  br label %sqlite3ExprDup.exit.i

sqlite3ColumnExpr.exit:                           ; preds = %bb.v
  %i.go = zext i16 %.val685 to i64
  %i.gp = getelementptr [24 x i8], ptr %i.gj, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 -16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !902 ; 2 uses
  %i.gs = load ptr, ptr %0, align 8, !tbaa !651   ; 3 uses
  %.not.i.i692 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i692, label %sqlite3ExprDup.exit.i, label %bb.w

bb.w:                                             ; preds = %sqlite3ColumnExpr.exit
  %i.gt = tail call fastcc ptr @exprDup(ptr noundef %i.gs, ptr noundef readonly %i.gr, i32 noundef 0, ptr noundef null), !inline_history !4839
  br label %sqlite3ExprDup.exit.i

sqlite3ExprDup.exit.i:                            ; preds = %sqlite3ColumnExpr.exit.thread, %bb.w, %sqlite3ColumnExpr.exit
  %i.gu = phi ptr [ %i.gs, %bb.w ], [ %i.gs, %sqlite3ColumnExpr.exit ], [ %i.gn, %sqlite3ColumnExpr.exit.thread ] ; 2 uses
  %i.gv = phi ptr [ %i.gt, %bb.w ], [ null, %sqlite3ColumnExpr.exit ], [ null, %sqlite3ColumnExpr.exit.thread ] ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 103
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !550
  %.not.i693 = icmp eq i8 %i.gx, 0
  br i1 %.not.i693, label %bb.x, label %bb.y

bb.x:                                             ; preds = %sqlite3ExprDup.exit.i
  tail call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.gv, i32 noundef %i.fr), !inline_history !3995
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %sqlite3ExprDup.exit.i
  %.not.i8.i = icmp eq ptr %i.gv, null
  br i1 %.not.i8.i, label %sqlite3ExprCodeCopy.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.gu, ptr noundef %i.gv), !inline_history !4840
  br label %sqlite3ExprCodeCopy.exit

sqlite3ExprCodeCopy.exit:                         ; preds = %bb.y, %bb.z
  %i.gy = load i32, ptr %i.z, align 8, !tbaa !185
  %i.gz = load ptr, ptr %i.d, align 8, !tbaa !146
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 103
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !550
  %.not.i.i.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i, label %bb.aa, label %sqlite3VdbeJumpHere.exit

bb.aa:                                            ; preds = %sqlite3ExprCodeCopy.exit
  %i.hc = load ptr, ptr %i.ab, align 8, !tbaa !184
  %i.hd = sext i32 %.0.i.i to i64
  %i.he = getelementptr inbounds [24 x i8], ptr %i.hc, i64 %i.hd
  br label %sqlite3VdbeJumpHere.exit

sqlite3VdbeJumpHere.exit:                         ; preds = %sqlite3ExprCodeCopy.exit, %bb.aa
  %.0.i.i.i = phi ptr [ %i.he, %bb.aa ], [ @sqlite3VdbeGetOp.dummy, %sqlite3ExprCodeCopy.exit ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.gy, ptr %i.hf, align 8, !tbaa !585
  br label %sqlite3VdbeChangeP5.exit

bb.ab:                                            ; preds = %sqlite3TableColumnToStorage.exit
  %i.hg = load ptr, ptr %i.y, align 8, !tbaa !3544 ; 2 uses
  %.not.i694 = icmp eq ptr %i.hg, null
  %..i = select i1 %.not.i694, ptr %0, ptr %i.hg
  %i.hh = getelementptr inbounds nuw i8, ptr %..i, i64 39 ; 2 uses
  %i.hi = load i16, ptr %i.hh, align 1
  %i.hj = or i16 %i.hi, 2
  store i16 %i.hj, ptr %i.hh, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %sqlite3TableColumnToStorage.exit, %sqlite3TableColumnToStorage.exit
  %i.hk = load ptr, ptr %1, align 8, !tbaa !947
  %i.hl = load ptr, ptr %i.ah, align 8, !tbaa !929
  %i.hm = tail call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %i.b, ptr noundef nonnull @.str.651, ptr noundef %i.hk, ptr noundef %i.hl) ; 2 uses
  %i.hn = load i32, ptr %i.z, align 8, !tbaa !185 ; 3 uses
  %i.ho = load i32, ptr %i.aa, align 4, !tbaa !943
  %.not.i695 = icmp sgt i32 %i.ho, %i.hn
  br i1 %.not.i695, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hp = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 70, i32 noundef 1299, i32 noundef %.1529, i32 noundef %i.fr), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.ae:                                            ; preds = %bb.ac
  %i.hq = add nsw i32 %i.hn, 1
  store i32 %i.hq, ptr %i.z, align 8, !tbaa !185
  %i.hr = load ptr, ptr %i.ab, align 8, !tbaa !184
  %i.hs = sext i32 %i.hn to i64
  %i.ht = getelementptr inbounds [24 x i8], ptr %i.hr, i64 %i.hs ; 7 uses
  store i8 70, ptr %i.ht, align 8, !tbaa !563
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  store i16 0, ptr %i.hu, align 2, !tbaa !587
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  store i32 1299, ptr %i.hv, align 4, !tbaa !584
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i32 %.1529, ptr %i.hw, align 8, !tbaa !585
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  store i32 %i.fr, ptr %i.hx, align 4, !tbaa !586
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store ptr null, ptr %i.hy, align 8, !tbaa !227
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  store i8 0, ptr %i.hz, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.ad, %bb.ae
  %i.ia = load ptr, ptr %i.d, align 8, !tbaa !146 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 103
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !550
  %.not.i697 = icmp eq i8 %i.ic, 0
  br i1 %.not.i697, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %sqlite3VdbeAddOp3.exit
  tail call fastcc void @freeP4(ptr noundef nonnull %i.ia, i32 noundef -6, ptr noundef %i.hm)
  br label %sqlite3VdbeAppendP4.exit

bb.ag:                                            ; preds = %sqlite3VdbeAddOp3.exit
  %i.id = load ptr, ptr %i.ab, align 8, !tbaa !184
  %i.ie = load i32, ptr %i.z, align 8, !tbaa !185
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr [24 x i8], ptr %i.id, i64 %i.if ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 -23
  store i8 -6, ptr %i.ih, align 1, !tbaa !566
  %i.ii = getelementptr i8, ptr %i.ig, i64 -8
  store ptr %i.hm, ptr %i.ii, align 8, !tbaa !227
  br label %sqlite3VdbeAppendP4.exit

sqlite3VdbeAppendP4.exit:                         ; preds = %bb.af, %bb.ag
  %i.ij = load i32, ptr %i.z, align 8, !tbaa !185 ; 2 uses
  %i.ik = icmp sgt i32 %i.ij, 0
  br i1 %i.ik, label %bb.ah, label %sqlite3VdbeChangeP5.exit

end_hunk_7
begin_hunk_8_@fts5DlidxIterInit:bb.a
  %i.ha = and i32 %i.gz, 2080895                  ; 5 uses
  br i1 %.not113.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hb = shl nuw nsw i32 %i.gq, 7
  %i.hc = and i32 %i.hb, 16256
  %i.hd = or disjoint i32 %i.ha, %i.hc
  %i.he = zext nneg i32 %i.hd to i64
  br label %sqlite3Fts5GetVarint.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gg, i64 3
  %i.hg = shl nuw nsw i32 %i.gq, 14
  %i.hh = load i8, ptr %i.hf, align 1, !tbaa !227 ; 2 uses
  %i.hi = zext i8 %i.hh to i32
  %i.hj = or disjoint i32 %i.hg, %i.hi
  %.not114.i.i = icmp sgt i8 %i.hh, -1
  %i.hk = and i32 %i.hj, 2080895                  ; 4 uses
  br i1 %.not114.i.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hl = shl nuw nsw i32 %i.ha, 7
  %i.hm = or disjoint i32 %i.hk, %i.hl
  %i.hn = zext nneg i32 %i.hm to i64
  br label %sqlite3Fts5GetVarint.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.hp = shl i32 %i.ha, 14
  %i.hq = load i8, ptr %i.ho, align 1, !tbaa !227 ; 3 uses
  %i.hr = zext i8 %i.hq to i32
  %i.hs = or disjoint i32 %i.hp, %i.hr            ; 3 uses
  %.not115.i.i = icmp sgt i8 %i.hq, -1
  br i1 %.not115.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ht = shl nuw nsw i32 %i.hk, 7
  %i.hu = or disjoint i32 %i.hs, %i.ht
  %i.hv = lshr i32 %i.ha, 18
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = shl nuw nsw i64 %i.hw, 32
  %i.hy = zext i32 %i.hu to i64
  %i.hz = or disjoint i64 %i.hx, %i.hy
  br label %sqlite3Fts5GetVarint.exit.i

bb.au:                                            ; preds = %bb.as
  %i.ia = shl nuw nsw i32 %i.ha, 7
  %i.ib = or disjoint i32 %i.hk, %i.ia            ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gg, i64 5
  %i.id = shl i32 %i.hk, 14
  %i.ie = load i8, ptr %i.ic, align 1, !tbaa !227 ; 2 uses
  %i.if = zext i8 %i.ie to i32
  %i.ig = or disjoint i32 %i.id, %i.if            ; 3 uses
  %.not116.i.i = icmp sgt i8 %i.ie, -1
  br i1 %.not116.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ih = shl i32 %i.hs, 7
  %i.ii = and i32 %i.ih, 266354560
  %i.ij = or disjoint i32 %i.ig, %i.ii
  %i.ik = lshr i32 %i.ib, 18
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = shl nuw nsw i64 %i.il, 32
  %i.in = zext i32 %i.ij to i64
  %i.io = or disjoint i64 %i.im, %i.in
  br label %sqlite3Fts5GetVarint.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gg, i64 6
  %i.iq = shl i32 %i.hs, 14
  %i.ir = load i8, ptr %i.ip, align 1, !tbaa !227 ; 2 uses
  %i.is = zext i8 %i.ir to i32
  %i.it = or disjoint i32 %i.iq, %i.is            ; 2 uses
  %.not117.i.i = icmp sgt i8 %i.ir, -1
  br i1 %.not117.i.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.iu = and i32 %i.it, -266354561
  %i.iv = shl i32 %i.ig, 7
  %i.iw = and i32 %i.iv, 266354560
  %i.ix = or disjoint i32 %i.iu, %i.iw
  %i.iy = lshr i32 %i.ib, 11
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = shl nuw nsw i64 %i.iz, 32
  %i.jb = zext i32 %i.ix to i64
  %i.jc = or disjoint i64 %i.ja, %i.jb
  br label %sqlite3Fts5GetVarint.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.jd = and i32 %i.it, 2080895                  ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.gg, i64 7
  %i.jf = shl i32 %i.ig, 14
  %i.jg = load i8, ptr %i.je, align 1, !tbaa !227 ; 2 uses
  %i.jh = zext i8 %i.jg to i32
  %i.ji = or disjoint i32 %i.jf, %i.jh            ; 2 uses
  %.not118.i.i = icmp sgt i8 %i.jg, -1
  br i1 %.not118.i.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jj = and i32 %i.ji, -266354561
  %i.jk = shl nuw nsw i32 %i.jd, 7
  %i.jl = or disjoint i32 %i.jj, %i.jk
  %i.jm = lshr i32 %i.ib, 4
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = shl nuw nsw i64 %i.jn, 32
  %i.jp = zext i32 %i.jl to i64
  %i.jq = or disjoint i64 %i.jo, %i.jp
  br label %sqlite3Fts5GetVarint.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.js = shl i32 %i.jd, 15
  %i.jt = load i8, ptr %i.jr, align 1, !tbaa !227
  %i.ju = zext i8 %i.jt to i32
  %i.jv = or disjoint i32 %i.js, %i.ju
  %i.jw = shl i32 %i.ji, 8
  %i.jx = and i32 %i.jw, 532709120
  %i.jy = or disjoint i32 %i.jv, %i.jx
  %i.jz = shl nuw i32 %i.ib, 4
  %i.ka = lshr i8 %i.hq, 3
  %i.kb = and i8 %i.ka, 15
  %i.kc = zext nneg i8 %i.kb to i32
  %i.kd = or disjoint i32 %i.jz, %i.kc
  %i.ke = zext i32 %i.kd to i64
  %i.kf = shl nuw i64 %i.ke, 32
  %i.kg = zext i32 %i.jy to i64
  %i.kh = or disjoint i64 %i.kf, %i.kg
  br label %sqlite3Fts5GetVarint.exit.i

sqlite3Fts5GetVarint.exit.i:                      ; preds = %bb.ba, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al
  %.sink.i.i = phi i64 [ %i.kh, %bb.ba ], [ %i.jq, %bb.az ], [ %i.jc, %bb.ax ], [ %i.io, %bb.av ], [ %i.hz, %bb.at ], [ %i.hn, %bb.ar ], [ %i.he, %bb.ap ], [ %i.gu, %bb.an ], [ %i.gn, %bb.al ]
  %.0.i.i = phi i32 [ 9, %bb.ba ], [ 8, %bb.az ], [ 7, %bb.ax ], [ 6, %bb.av ], [ 5, %bb.at ], [ 4, %bb.ar ], [ 3, %bb.ap ], [ 2, %bb.an ], [ 1, %bb.al ]
  %i.ki = add nsw i32 %.0.i.i, %i.gh              ; 2 uses
  %i.kj = load i64, ptr %i.aw, align 8, !tbaa !6930
  %i.kk = add i64 %i.kj, %.sink.i.i
  store i64 %i.kk, ptr %i.aw, align 8, !tbaa !6930
  store i32 %i.ki, ptr %i.at, align 8, !tbaa !6963
  br label %fts5DlidxLvlNext.exit.i

fts5DlidxLvlNext.exit.i:                          ; preds = %sqlite3Fts5GetVarint.exit.i, %sqlite3Fts5GetVarint.exit28.i
  %i.kl = phi i32 [ %i.gd, %sqlite3Fts5GetVarint.exit28.i ], [ %i.ki, %sqlite3Fts5GetVarint.exit.i ]
  br i1 %i.ba, label %bb.k, label %fts5DlidxLvlNext.exit.thread.i, !llvm.loop !7361

fts5DlidxLvlNext.exit.thread.i:                   ; preds = %fts5DlidxLvlNext.exit.i, %.preheader.i.i, %bb.aj
  store i32 0, ptr %i.ax, align 4, !tbaa !6929
  %i.km = icmp sgt i64 %indvars.iv.i39, 1
  br i1 %i.km, label %bb.bb, label %fts5DlidxIterLast.exitthread-pre-split

bb.bb:                                            ; preds = %fts5DlidxLvlNext.exit.thread.i
  %i.kn = getelementptr inbounds i8, ptr %i.ar, i64 -32 ; 3 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !6801 ; 4 uses
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kq = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i16.i = icmp eq i32 %i.kq, 0
  br i1 %.not.i.i16.i, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kr = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ks = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.ks(ptr noundef nonnull %i.kr) #59, !inline_history !7362
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.be, %bb.bd
  %i.kt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.ku = tail call i32 %i.kt(ptr noundef nonnull %i.ko) #59, !inline_history !7363
  %i.kv = sext i32 %i.ku to i64
  %i.kw = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.kx = sub nsw i64 %i.kw, %i.kv
  store i64 %i.kx, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ky = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.kz = add nsw i64 %i.ky, -1
  store i64 %i.kz, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.la = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.la(ptr noundef nonnull %i.ko) #59, !inline_history !7364
  %i.lb = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.lb, null
  br i1 %.not.i4.i.i.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.lc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.lc(ptr noundef nonnull %i.lb) #59, !inline_history !7365
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bc
  %i.ld = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.ld(ptr noundef nonnull %i.ko) #59, !inline_history !7364
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %sqlite3_mutex_enter.exit.i.i.i, %bb.bb
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kn, i8 0, i64 32, i1 false)
  %i.le = load i32, ptr %i.ab, align 4, !tbaa !5
  %i.lf = zext i32 %i.le to i64
  %i.lg = shl i64 %i.lf, 37
  %i.lh = shl nsw i64 %indvars.iv.i39, 31
  %i.li = load i32, ptr %i.av, align 4, !tbaa !6932
  %i.lj = sext i32 %i.li to i64
  %i.lk = add nuw i64 %i.lh, 64424509440
  %i.ll = add i64 %i.lk, %i.lg
  %i.lm = add nsw i64 %i.ll, %i.lj
  %i.ln = tail call fastcc ptr @fts5DataRead(ptr noundef nonnull %0, i64 noundef %i.lm), !inline_history !7360
  store ptr %i.ln, ptr %i.kn, align 8, !tbaa !6801
  %i.lo = load i32, ptr %i.b, align 4, !tbaa !6362
  %i.lp = icmp eq i32 %i.lo, 0
  br i1 %i.lp, label %bb.j, label %fts5DlidxIterLast.exit.thread, !llvm.loop !7366

fts5DlidxIterLast.exitthread-pre-split:           ; preds = %fts5DlidxLvlNext.exit.thread.i, %bb.h, %bb.g
  %.pr = load i32, ptr %i.b, align 4, !tbaa !6362
  br label %fts5DlidxIterLast.exit

fts5DlidxIterLast.exit:                           ; preds = %fts5DlidxIterLast.exitthread-pre-split, %bb.i
  %i.lq = phi i32 [ %.pr, %fts5DlidxIterLast.exitthread-pre-split ], [ %i.al, %bb.i ]
  %.not = icmp eq i32 %i.lq, 0
  br i1 %.not, label %bb.bi, label %fts5DlidxIterLast.exit.thread

fts5DlidxIterLast.exit.thread:                    ; preds = %bb.bh, %.thread, %bb.a, %._crit_edge, %fts5DlidxIterLast.exit
  %.0.lcssa77 = phi ptr [ null, %bb.a ], [ %i.m, %fts5DlidxIterLast.exit ], [ %i.m, %._crit_edge ], [ %.050, %.thread ], [ %i.m, %bb.bh ]
  tail call fastcc void @fts5DlidxIterFree(ptr noundef %.0.lcssa77)
  br label %bb.bi

bb.bi:                                            ; preds = %fts5DlidxIterLast.exit.thread, %fts5DlidxIterLast.exit
  %.2 = phi ptr [ null, %fts5DlidxIterLast.exit.thread ], [ %i.m, %fts5DlidxIterLast.exit ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fts5SegIterInit(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !6703
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %fts5SegIterAllocTombstone.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !6362
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %fts5SegIterSetNext.exit, label %fts5SegIterAllocTombstone.exit

fts5SegIterSetNext.exit:                          ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  %i.g = load ptr, ptr %0, align 8, !tbaa !6431
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  %i.i = load i32, ptr %i.h, align 4, !tbaa !6395
  %i.j = icmp eq i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %spec.select = select i1 %i.j, ptr @fts5SegIterNext_None, ptr @fts5SegIterNext
  store ptr %spec.select, ptr %i.k, align 8, !tbaa !6912
  store ptr %1, ptr %2, align 8, !tbaa !6918
  %i.l = load i32, ptr %i.a, align 4, !tbaa !6703
  %i.m = add nsw i32 %i.l, -1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.m, ptr %i.n, align 4, !tbaa !6928
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %fts5SegIterSetNext.exit
  tail call fastcc void @fts5SegIterNextPage(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.p = load i32, ptr %i.d, align 4, !tbaa !6362
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %fts5SegIterAllocTombstone.exit

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !6773 ; 3 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %fts5SegIterAllocTombstone.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !6922
  %i.u = icmp eq i32 %i.t, 4
  br i1 %i.u, label %bb.c, label %.critedge, !llvm.loop !7367

.critedge:                                        ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 4, ptr %i.v, align 8, !tbaa !6940
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !6939
  %i.y = add nsw i32 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %i.y, ptr %i.z, align 8, !tbaa !6967
  tail call fastcc void @fts5SegIterLoadTerm(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0)
  tail call fastcc void @fts5SegIterLoadNPos(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.aa = load ptr, ptr %2, align 8, !tbaa !6918
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !6707 ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %fts5SegIterAllocTombstone.exit

bb.f:                                             ; preds = %.critedge
  %narrow.i = add nuw i32 %i.ac, 1
  %i.ae = zext i32 %narrow.i to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 8                ; 2 uses
  %i.ah = load i32, ptr %i.d, align 4, !tbaa !5
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %fts5SegIterAllocTombstone.exit

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call i32 @sqlite3_initialize(), !inline_history !7218
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %sqlite3_malloc64.exit.i.i, label %sqlite3_malloc64.exit.thread.i.i

sqlite3_malloc64.exit.i.i:                        ; preds = %bb.g
  %i.ak = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.ag), !inline_history !7218 ; 5 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %sqlite3_malloc64.exit.thread.i.i, label %bb.h

sqlite3_malloc64.exit.thread.i.i:                 ; preds = %sqlite3_malloc64.exit.i.i, %bb.g
  store i32 7, ptr %i.d, align 4, !tbaa !5
  br label %fts5SegIterAllocTombstone.exit

bb.h:                                             ; preds = %sqlite3_malloc64.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ak, i8 0, i64 %i.ag, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 %i.ac, ptr %i.am, align 4, !tbaa !5
  store i32 1, ptr %i.ak, align 8, !tbaa !5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !6783
  br label %fts5SegIterAllocTombstone.exit

fts5SegIterAllocTombstone.exit:                   ; preds = %bb.d, %bb.c, %bb.b, %bb.h, %sqlite3_malloc64.exit.thread.i.i, %bb.f, %.critedge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fts5MergeRowidLists(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !6443
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !6443
  %i.k = add nsw i32 %i.j, %i.h                   ; 2 uses
  %.not79 = icmp eq i32 %i.k, 0
  br i1 %.not79, label %sqlite3Fts5BufferSize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = zext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.017.i = phi i64 [ 64, %bb.b ], [ %i.n, %bb.c ] ; 4 uses
  %i.m = icmp ult i64 %.017.i, %i.l
  %i.n = shl nuw nsw i64 %.017.i, 1
  br i1 %i.m, label %bb.c, label %bb.d, !llvm.loop !6445

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @sqlite3_initialize(), !inline_history !6696
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %sqlite3_realloc64.exit.i, label %sqlite3Fts5BufferSize.exit.thread

sqlite3_realloc64.exit.i:                         ; preds = %bb.d
  %i.p = tail call fastcc ptr @sqlite3Realloc(ptr noundef null, i64 noundef %.017.i), !inline_history !6696 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %sqlite3Fts5BufferSize.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %sqlite3_realloc64.exit.i
  %i.r = trunc i64 %.017.i to i32
  br label %sqlite3Fts5BufferSize.exit

sqlite3Fts5BufferSize.exit.thread:                ; preds = %bb.d, %sqlite3_realloc64.exit.i
  store i32 7, ptr %i.f, align 4, !tbaa !5
  br label %sqlite3Fts5BufferFree.exit

sqlite3Fts5BufferSize.exit:                       ; preds = %bb.a, %.thread.i
  %.sroa.0.0.ph = phi ptr [ null, %bb.a ], [ %i.p, %.thread.i ] ; 3 uses
  %.sroa.17.0.ph = phi i32 [ 0, %bb.a ], [ %i.r, %.thread.i ]
  %.pr = load i32, ptr %i.f, align 4, !tbaa !6362
  %.not = icmp eq i32 %.pr, 0
  br i1 %.not, label %bb.e, label %sqlite3Fts5BufferFree.exit

bb.e:                                             ; preds = %sqlite3Fts5BufferSize.exit
  %i.s = load i32, ptr %i.g, align 8, !tbaa !6443
  %.not.i13 = icmp sgt i32 %i.s, 0
  br i1 %.not.i13, label %bb.f, label %fts5NextRowid.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #59
  %i.t = load ptr, ptr %1, align 8, !tbaa !6449
  %i.u = call fastcc zeroext i8 @sqlite3Fts5GetVarint(ptr noundef %i.t, ptr noundef nonnull %i.e)
  %i.v = zext nneg i8 %i.u to i32
  %i.w = load i64, ptr %i.e, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  br label %fts5NextRowid.exit

fts5NextRowid.exit:                               ; preds = %bb.e, %bb.f
  %.369 = phi i64 [ %i.w, %bb.f ], [ 0, %bb.e ]
  %.sink.i = phi i32 [ %i.v, %bb.f ], [ -1, %bb.e ] ; 3 uses
  %i.x = load i32, ptr %i.i, align 8, !tbaa !6443
  %.not.i14 = icmp sgt i32 %i.x, 0
  br i1 %.not.i14, label %fts5NextRowid.exit16.thread, label %fts5NextRowid.exit16

end_hunk_8
begin_hunk_9_@rtreeCheckNode:bb.a
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !7898
  %i.ae = tail call ptr @sqlite3_column_blob(ptr noundef %i.ad, i32 noundef 0), !inline_history !7901
  %i.af = sext i32 %i.ac to i64                   ; 2 uses
  %i.ag = tail call i32 @sqlite3_initialize(), !inline_history !7903
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %sqlite3_malloc64.exit.i, label %sqlite3_malloc64.exit.thread.i

sqlite3_malloc64.exit.i:                          ; preds = %bb.h
  %i.ah = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.af), !inline_history !7903 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %sqlite3_malloc64.exit.thread.i, label %bb.i

sqlite3_malloc64.exit.thread.i:                   ; preds = %sqlite3_malloc64.exit.i, %bb.h
  store i32 7, ptr %i.a, align 8, !tbaa !7892
  br label %bb.j

bb.i:                                             ; preds = %sqlite3_malloc64.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %i.ae, i64 %i.af, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %sqlite3_malloc64.exit.thread.i, %sqlite3_bind_int64.exit.i
  %.062 = phi i32 [ 0, %sqlite3_malloc64.exit.thread.i ], [ %i.ac, %bb.i ], [ 0, %sqlite3_bind_int64.exit.i ] ; 4 uses
  %.0.i = phi ptr [ null, %sqlite3_malloc64.exit.thread.i ], [ %i.ah, %bb.i ], [ null, %sqlite3_bind_int64.exit.i ] ; 13 uses
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !7898
  %i.ak = tail call i32 @sqlite3_reset(ptr noundef %i.aj), !inline_history !7904 ; 2 uses
  %i.al = load i32, ptr %i.a, align 8, !tbaa !7892
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %rtreeCheckReset.exit.i, label %rtreeCheckGetNode.exit

rtreeCheckReset.exit.i:                           ; preds = %bb.j
  store i32 %i.ak, ptr %i.a, align 8, !tbaa !7892
  %i.an = icmp eq i32 %i.ak, 0
  %i.ao = icmp eq ptr %.0.i, null
  %or.cond.i = and i1 %i.ao, %i.an
  br i1 %or.cond.i, label %bb.k, label %rtreeCheckGetNode.exit

bb.k:                                             ; preds = %rtreeCheckReset.exit.i
  tail call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1836, i64 noundef %3), !inline_history !7901
  br label %sqlite3_free.exit

rtreeCheckGetNode.exit:                           ; preds = %bb.j, %rtreeCheckReset.exit.i
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %sqlite3_free.exit, label %bb.l

bb.l:                                             ; preds = %rtreeCheckGetNode.exit
  %i.ap = icmp slt i32 %.062, 4
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef %0, ptr noundef nonnull @.str.1832, i64 noundef %3, i32 noundef %.062)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.aq = icmp eq ptr %2, null                    ; 2 uses
  br i1 %i.aq, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %.val51 = load i8, ptr %.0.i, align 1, !tbaa !227
  %i.ar = getelementptr i8, ptr %.0.i, i64 1
  %.val52 = load i8, ptr %i.ar, align 1, !tbaa !227
  %i.as = zext i8 %.val51 to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = zext i8 %.val52 to i32
  %i.av = or disjoint i32 %i.at, %i.au            ; 3 uses
  %i.aw = icmp samesign ugt i32 %i.av, 40
  br i1 %i.aw, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef %0, ptr noundef nonnull @.str.1833, i32 noundef %i.av)
  %i.ax = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i53, label %sqlite3_mutex_enter.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.az(ptr noundef nonnull %i.ay) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.r, %bb.q
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.bb = tail call i32 %i.ba(ptr noundef nonnull %.0.i) #59, !inline_history !269
  %i.bc = sext i32 %i.bb to i64
  %i.bd = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.be = sub nsw i64 %i.bd, %i.bc
  store i64 %i.be, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bf = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bg = add nsw i64 %i.bf, -1
  store i64 %i.bg, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.bh(ptr noundef nonnull %.0.i) #59, !inline_history !270
  %i.bi = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.bi, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.s

bb.s:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.bj(ptr noundef nonnull %i.bi) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.t:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.bk(ptr noundef nonnull %.0.i) #59, !inline_history !270
  br label %sqlite3_free.exit

bb.u:                                             ; preds = %bb.o, %bb.n
  %.0 = phi i32 [ %i.av, %bb.o ], [ %1, %bb.n ]   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %.val = load i8, ptr %i.bl, align 1, !tbaa !227
  %i.bm = getelementptr i8, ptr %.0.i, i64 3
  %.val50 = load i8, ptr %i.bm, align 1, !tbaa !227
  %i.bn = zext i8 %.val to i32
  %i.bo = shl nuw nsw i32 %i.bn, 8
  %i.bp = zext i8 %.val50 to i32
  %i.bq = or disjoint i32 %i.bo, %i.bp            ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7893
  %i.bt = shl nsw i32 %i.bs, 3
  %i.bu = add nsw i32 %i.bt, 8
  %i.bv = mul nsw i32 %i.bu, %i.bq
  %i.bw = or disjoint i32 %i.bv, 4
  %i.bx = icmp sgt i32 %i.bw, %.062
  br i1 %i.bx, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.u
  %.not68 = icmp eq i32 %i.bq, 0
  br i1 %.not68, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.not49 = icmp eq i32 %.0, 0
  %i.bz = add nsw i32 %.0, -1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef %0, ptr noundef nonnull @.str.1834, i64 noundef %3, i32 noundef %i.bq, i32 noundef %.062)
  br label %.loopexit

bb.w:                                             ; preds = %.lr.ph, %bb.al
  %.04467 = phi i32 [ 0, %.lr.ph ], [ %i.ji, %bb.al ] ; 5 uses
  %i.cc = load i32, ptr %i.br, align 4, !tbaa !7893 ; 3 uses
  %i.cd = shl nsw i32 %i.cc, 3
  %i.ce = add nsw i32 %i.cd, 8
  %i.cf = mul nsw i32 %i.ce, %.04467
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr i8, ptr %.0.i, i64 %i.cg  ; 9 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 4
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !227
  %i.ck = zext i8 %i.cj to i64
  %i.cl = shl nuw i64 %i.ck, 56
  %i.cm = getelementptr i8, ptr %i.ch, i64 5
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !227
  %i.co = zext i8 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 48
  %i.cq = or disjoint i64 %i.cp, %i.cl
  %i.cr = getelementptr i8, ptr %i.ch, i64 6
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !227
  %i.ct = zext i8 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 40
  %i.cv = or disjoint i64 %i.cq, %i.cu
  %i.cw = getelementptr i8, ptr %i.ch, i64 7
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !227
  %i.cy = zext i8 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 32
  %i.da = or disjoint i64 %i.cv, %i.cz
  %i.db = getelementptr i8, ptr %i.ch, i64 8
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !227
  %i.dd = zext i8 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 24
  %i.df = or disjoint i64 %i.da, %i.de
  %i.dg = getelementptr i8, ptr %i.ch, i64 9
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !227
  %i.di = zext i8 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, 16
  %i.dk = or disjoint i64 %i.df, %i.dj
  %i.dl = getelementptr i8, ptr %i.ch, i64 10
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !227
  %i.dn = zext i8 %i.dm to i64
  %i.do = shl nuw nsw i64 %i.dn, 8
  %i.dp = or disjoint i64 %i.dk, %i.do
  %i.dq = getelementptr i8, ptr %i.ch, i64 11
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !227
  %i.ds = zext i8 %i.dr to i64
  %i.dt = add nuw i64 %i.dp, %i.ds                ; 3 uses
  %i.du = getelementptr i8, ptr %i.ch, i64 12     ; 4 uses
  %i.dv = icmp sgt i32 %i.cc, 0
  br i1 %i.dv, label %.lr.ph.i, label %rtreeCheckCellCoord.exit

.lr.ph.i:                                         ; preds = %bb.w
  br i1 %i.aq, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.aa
  %i.dw = phi i32 [ %i.fo, %bb.aa ], [ %i.cc, %.lr.ph.i ] ; 2 uses
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %bb.aa ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.dx = shl nuw nsw i64 %indvars.iv37.i, 3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dx ; 8 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !227
  %i.ea = zext i8 %i.dz to i32
  %i.eb = shl nuw i32 %i.ea, 24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !227
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 16
  %i.eg = or disjoint i32 %i.ef, %i.eb
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !227
  %i.ej = zext i8 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 8
  %i.el = or disjoint i32 %i.eg, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.dy, i64 3
  %i.en = load i8, ptr %i.em, align 1, !tbaa !227
  %i.eo = zext i8 %i.en to i32
  %i.ep = or disjoint i32 %i.el, %i.eo            ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !227
  %i.es = zext i8 %i.er to i32
  %i.et = shl nuw i32 %i.es, 24
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dy, i64 5
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !227
  %i.ew = zext i8 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 16
  %i.ey = or disjoint i32 %i.ex, %i.et
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dy, i64 6
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !227
  %i.fb = zext i8 %i.fa to i32
  %i.fc = shl nuw nsw i32 %i.fb, 8
  %i.fd = or disjoint i32 %i.ey, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dy, i64 7
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !227
  %i.fg = zext i8 %i.ff to i32
  %i.fh = or disjoint i32 %i.fd, %i.fg            ; 2 uses
  %i.fi = load i32, ptr %i.by, align 8, !tbaa !7894
  %.not.us.i = icmp eq i32 %i.fi, 0
  br i1 %.not.us.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.split.us.i
  %i.fj = icmp sgt i32 %i.ep, %i.fh
  br i1 %i.fj, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %.lr.ph.split.us.i
  %i.fk = bitcast i32 %i.fh to float
  %i.fl = bitcast i32 %i.ep to float
  %i.fm = fcmp ogt float %i.fl, %i.fk
  br i1 %i.fm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fn = trunc nuw nsw i64 %indvars.iv37.i to i32
  tail call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1837, i32 noundef %i.fn, i32 noundef range(i32 -2147483648, 65535) %.04467, i64 noundef %3), !inline_history !7905
  %.pre40.i = load i32, ptr %i.br, align 4, !tbaa !7893
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.fo = phi i32 [ %.pre40.i, %bb.z ], [ %i.dw, %bb.y ], [ %i.dw, %bb.x ] ; 2 uses
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = icmp slt i64 %indvars.iv.next38.i, %i.fp
  br i1 %i.fq, label %.lr.ph.split.us.i, label %rtreeCheckCellCoord.exit, !llvm.loop !7906

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.ai
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ai ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.fr = shl nuw nsw i64 %indvars.iv.i, 3        ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.fr ; 4 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !227
  %i.fu = zext i8 %i.ft to i32
  %i.fv = shl nuw i32 %i.fu, 24
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !227
  %i.fy = zext i8 %i.fx to i32
  %i.fz = shl nuw nsw i32 %i.fy, 16
  %i.ga = or disjoint i32 %i.fz, %i.fv
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !227
  %i.gd = zext i8 %i.gc to i32
  %i.ge = shl nuw nsw i32 %i.gd, 8
  %i.gf = or disjoint i32 %i.ga, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fs, i64 3
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !227
  %i.gi = zext i8 %i.gh to i32
  %i.gj = or disjoint i32 %i.gf, %i.gi            ; 3 uses
  %i.gk = bitcast i32 %i.gj to float              ; 2 uses
  %i.gl = or disjoint i64 %i.fr, 4                ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gl ; 4 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !227
  %i.go = zext i8 %i.gn to i32
  %i.gp = shl nuw i32 %i.go, 24
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !227
  %i.gs = zext i8 %i.gr to i32
  %i.gt = shl nuw nsw i32 %i.gs, 16
  %i.gu = or disjoint i32 %i.gt, %i.gp
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !227
  %i.gx = zext i8 %i.gw to i32
  %i.gy = shl nuw nsw i32 %i.gx, 8
  %i.gz = or disjoint i32 %i.gu, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gm, i64 3
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !227
  %i.hc = zext i8 %i.hb to i32
  %i.hd = or disjoint i32 %i.gz, %i.hc            ; 3 uses
  %i.he = bitcast i32 %i.hd to float              ; 2 uses
  %i.hf = load i32, ptr %i.by, align 8, !tbaa !7894
  %.not.i54 = icmp eq i32 %i.hf, 0
  br i1 %.not.i54, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.split.i
  %i.hg = icmp sgt i32 %i.gj, %i.hd
  br i1 %i.hg, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph.split.i
  %i.hh = fcmp ogt float %i.gk, %i.he
  br i1 %i.hh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hi = trunc nuw nsw i64 %indvars.iv.i to i32
  tail call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1837, i32 noundef %i.hi, i32 noundef range(i32 -2147483648, 65535) %.04467, i64 noundef %3), !inline_history !7905
  %.pre.i = load i32, ptr %i.by, align 8, !tbaa !7894
  %i.hj = icmp eq i32 %.pre.i, 0
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.not24.i = phi i1 [ %i.hj, %bb.ad ], [ true, %bb.ac ], [ false, %bb.ab ]
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 %i.fr ; 4 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !227
  %i.hm = zext i8 %i.hl to i32
  %i.hn = shl nuw i32 %i.hm, 24
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !227
  %i.hq = zext i8 %i.hp to i32
  %i.hr = shl nuw nsw i32 %i.hq, 16
  %i.hs = or disjoint i32 %i.hr, %i.hn
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hk, i64 2
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !227
  %i.hv = zext i8 %i.hu to i32
  %i.hw = shl nuw nsw i32 %i.hv, 8
  %i.hx = or disjoint i32 %i.hs, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hk, i64 3
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !227
  %i.ia = zext i8 %i.hz to i32
  %i.ib = or disjoint i32 %i.hx, %i.ia            ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 %i.gl ; 4 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !227
  %i.ie = zext i8 %i.id to i32
  %i.if = shl nuw i32 %i.ie, 24
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 1
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !227
  %i.ii = zext i8 %i.ih to i32
  %i.ij = shl nuw nsw i32 %i.ii, 16
  %i.ik = or disjoint i32 %i.ij, %i.if
  %i.il = getelementptr inbounds nuw i8, ptr %i.ic, i64 2
  %i.im = load i8, ptr %i.il, align 1, !tbaa !227
  %i.in = zext i8 %i.im to i32
  %i.io = shl nuw nsw i32 %i.in, 8
  %i.ip = or disjoint i32 %i.ik, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ic, i64 3
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !227
  %i.is = zext i8 %i.ir to i32
  %i.it = or disjoint i32 %i.ip, %i.is            ; 2 uses
  br i1 %.not24.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iu = icmp slt i32 %i.gj, %i.ib
  %i.iv = icmp sgt i32 %i.hd, %i.it
  %or.cond.i55 = select i1 %i.iu, i1 true, i1 %i.iv
  br i1 %or.cond.i55, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.iw = bitcast i32 %i.it to float
  %i.ix = bitcast i32 %i.ib to float
  %i.iy = fcmp olt float %i.gk, %i.ix
  %i.iz = fcmp ogt float %i.he, %i.iw
  %or.cond33.i = select i1 %i.iy, i1 true, i1 %i.iz
  br i1 %or.cond33.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ja = trunc nuw nsw i64 %indvars.iv.i to i32
  tail call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1838, i32 noundef %i.ja, i32 noundef range(i32 -2147483648, 65535) %.04467, i64 noundef %3), !inline_history !7905
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jb = load i32, ptr %i.br, align 4, !tbaa !7893
  %i.jc = sext i32 %i.jb to i64
  %i.jd = icmp slt i64 %indvars.iv.next.i, %i.jc
  br i1 %i.jd, label %.lr.ph.split.i, label %rtreeCheckCellCoord.exit, !llvm.loop !7906

rtreeCheckCellCoord.exit:                         ; preds = %bb.ai, %bb.aa, %bb.w
  br i1 %.not49, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %rtreeCheckCellCoord.exit
  tail call fastcc void @rtreeCheckMapping(ptr noundef %0, i32 noundef 0, i64 noundef %i.dt, i64 noundef %3)
  tail call fastcc void @rtreeCheckNode(ptr noundef %0, i32 noundef %i.bz, ptr noundef nonnull %i.du, i64 noundef %i.dt)
  %i.je = load i32, ptr %i.ca, align 4, !tbaa !7897
  %i.jf = add nsw i32 %i.je, 1
  store i32 %i.jf, ptr %i.ca, align 4, !tbaa !7897
  br label %bb.al

bb.ak:                                            ; preds = %rtreeCheckCellCoord.exit
  tail call fastcc void @rtreeCheckMapping(ptr noundef %0, i32 noundef 1, i64 noundef %i.dt, i64 noundef %3)
  %i.jg = load i32, ptr %i.cb, align 8, !tbaa !7895
  %i.jh = add nsw i32 %i.jg, 1
  store i32 %i.jh, ptr %i.cb, align 8, !tbaa !7895
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ji = add nuw nsw i32 %.04467, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ji, %i.bq
  br i1 %exitcond.not, label %.loopexit, label %bb.w, !llvm.loop !7907

.loopexit:                                        ; preds = %bb.al, %.preheader, %bb.m, %bb.v
  %i.jj = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i56 = icmp eq i32 %i.jj, 0
  br i1 %.not.i56, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %.loopexit
  %i.jk = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i57 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i57, label %sqlite3_mutex_enter.exit.i58, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.jl(ptr noundef nonnull %i.jk) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i58

sqlite3_mutex_enter.exit.i58:                     ; preds = %bb.an, %bb.am
  %i.jm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.jn = tail call i32 %i.jm(ptr noundef nonnull %.0.i) #59, !inline_history !269
  %i.jo = sext i32 %i.jn to i64
  %i.jp = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.jq = sub nsw i64 %i.jp, %i.jo
  store i64 %i.jq, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.jr = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.js = add nsw i64 %i.jr, -1
  store i64 %i.js, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.jt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.jt(ptr noundef nonnull %.0.i) #59, !inline_history !270
  %i.ju = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i59 = icmp eq ptr %i.ju, null
  br i1 %.not.i4.i59, label %sqlite3_free.exit, label %bb.ao

bb.ao:                                            ; preds = %sqlite3_mutex_enter.exit.i58
  %i.jv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.jv(ptr noundef nonnull %i.ju) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.ap:                                            ; preds = %.loopexit
  %i.jw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.jw(ptr noundef nonnull %.0.i) #59, !inline_history !270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.a, %bb.c, %bb.k, %bb.ap, %bb.ao, %sqlite3_mutex_enter.exit.i58, %bb.t, %bb.s, %sqlite3_mutex_enter.exit.i, %rtreeCheckGetNode.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rtreeCheckMapping(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 2) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !511  ; 2 uses
  %i.e = icmp eq ptr %i.d, null
end_hunk_9
