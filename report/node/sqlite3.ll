Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 426
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sessionGenerateChangeset:bb.a
bb.ab:                                            ; preds = %sqlite3VdbeMemSetDouble.exit.i.i
  %i.fi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.fi(ptr noundef nonnull %i.fh) #58, !inline_history !4151
  br label %sqlite3_bind_double.exit.i

sqlite3_bind_double.exit.i:                       ; preds = %bb.ab, %sqlite3VdbeMemSetDouble.exit.i.i, %bb.w, %bb.v
  %.2.i = phi i32 [ 0, %bb.v ], [ %i.ex, %bb.w ], [ 0, %sqlite3VdbeMemSetDouble.exit.i.i ], [ 0, %bb.ab ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.0386.i, i64 9
  br label %bb.bx

bb.ac:                                            ; preds = %bb.o
  %i.fk = load i8, ptr %i.bg, align 1, !tbaa !741 ; 5 uses
  %i.fl = icmp sgt i8 %i.fk, -1
  br i1 %i.fl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fm = zext nneg i8 %i.fk to i32
  br label %sessionVarintGet.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.fn = getelementptr inbounds nuw i8, ptr %.0386.i, i64 2
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !741 ; 2 uses
  %i.fp = zext i8 %i.fo to i32                    ; 3 uses
  %i.fq = icmp sgt i8 %i.fo, -1
  br i1 %i.fq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fr = and i8 %i.fk, 127
  %i.fs = zext nneg i8 %i.fr to i32
  %i.ft = shl nuw nsw i32 %i.fs, 7
  %i.fu = or disjoint i32 %i.ft, %i.fp
  br label %sessionVarintGet.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.fv = getelementptr inbounds nuw i8, ptr %.0386.i, i64 3
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !741 ; 3 uses
  %i.fx = icmp sgt i8 %i.fw, -1
  br i1 %i.fx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fy = zext nneg i8 %i.fw to i32
  %i.fz = and i8 %i.fk, 127
  %i.ga = zext nneg i8 %i.fz to i32
  %i.gb = shl nuw nsw i32 %i.ga, 14
  %i.gc = shl nuw nsw i32 %i.fp, 7
  %i.gd = and i32 %i.gc, 16256
  %i.ge = or disjoint i32 %i.gd, %i.gb
  %i.gf = or disjoint i32 %i.ge, %i.fy
  br label %sessionVarintGet.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.gg = zext i8 %i.fk to i32
  %i.gh = shl nuw nsw i32 %i.gg, 14
  %i.gi = zext i8 %i.fw to i32
  %i.gj = or disjoint i32 %i.gh, %i.gi
  %i.gk = and i32 %i.gj, 2080895                  ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0386.i, i64 4
  %i.gm = shl nuw nsw i32 %i.fp, 14
  %i.gn = load i8, ptr %i.gl, align 1, !tbaa !741 ; 2 uses
  %i.go = zext i8 %i.gn to i32
  %i.gp = or disjoint i32 %i.gm, %i.go
  %.not107.i175 = icmp sgt i8 %i.gn, -1
  %i.gq = and i32 %i.gp, 2080895                  ; 4 uses
  br i1 %.not107.i175, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gr = shl nuw nsw i32 %i.gk, 7
  %i.gs = or disjoint i32 %i.gq, %i.gr
  %i.gt = zext nneg i32 %i.gs to i64
  br label %sqlite3GetVarint.exit182

bb.ak:                                            ; preds = %bb.ai
  %i.gu = getelementptr inbounds nuw i8, ptr %.0386.i, i64 5
  %i.gv = shl i32 %i.gk, 14
  %i.gw = load i8, ptr %i.gu, align 1, !tbaa !741 ; 3 uses
  %i.gx = zext i8 %i.gw to i32
  %i.gy = or disjoint i32 %i.gv, %i.gx            ; 3 uses
  %.not108.i176 = icmp sgt i8 %i.gw, -1
  br i1 %.not108.i176, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gz = shl nuw nsw i32 %i.gq, 7
  %i.ha = or disjoint i32 %i.gy, %i.gz
  %i.hb = lshr i32 %i.gk, 18
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = shl nuw nsw i64 %i.hc, 32
  %i.he = zext i32 %i.ha to i64
  %i.hf = or disjoint i64 %i.hd, %i.he
  br label %sqlite3GetVarint.exit182

bb.am:                                            ; preds = %bb.ak
  %i.hg = shl nuw nsw i32 %i.gk, 7
  %i.hh = or disjoint i32 %i.gq, %i.hg            ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0386.i, i64 6
  %i.hj = shl i32 %i.gq, 14
  %i.hk = load i8, ptr %i.hi, align 1, !tbaa !741 ; 2 uses
  %i.hl = zext i8 %i.hk to i32
  %i.hm = or disjoint i32 %i.hj, %i.hl            ; 3 uses
  %.not109.i177 = icmp sgt i8 %i.hk, -1
  br i1 %.not109.i177, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hn = shl i32 %i.gy, 7
  %i.ho = and i32 %i.hn, 266354560
  %i.hp = or disjoint i32 %i.hm, %i.ho
  %i.hq = lshr i32 %i.hh, 18
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = shl nuw nsw i64 %i.hr, 32
  %i.ht = zext i32 %i.hp to i64
  %i.hu = or disjoint i64 %i.hs, %i.ht
  br label %sqlite3GetVarint.exit182

bb.ao:                                            ; preds = %bb.am
  %i.hv = getelementptr inbounds nuw i8, ptr %.0386.i, i64 7
  %i.hw = shl i32 %i.gy, 14
  %i.hx = load i8, ptr %i.hv, align 1, !tbaa !741 ; 2 uses
  %i.hy = zext i8 %i.hx to i32
  %i.hz = or disjoint i32 %i.hw, %i.hy            ; 2 uses
  %.not110.i178 = icmp sgt i8 %i.hx, -1
  br i1 %.not110.i178, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ia = and i32 %i.hz, -266354561
  %i.ib = shl i32 %i.hm, 7
  %i.ic = and i32 %i.ib, 266354560
  %i.id = or disjoint i32 %i.ia, %i.ic
  %i.ie = lshr i32 %i.hh, 11
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = shl nuw nsw i64 %i.if, 32
  %i.ih = zext i32 %i.id to i64
  %i.ii = or disjoint i64 %i.ig, %i.ih
  br label %sqlite3GetVarint.exit182

bb.aq:                                            ; preds = %bb.ao
  %i.ij = and i32 %i.hz, 2080895                  ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.0386.i, i64 8
  %i.il = shl i32 %i.hm, 14
  %i.im = load i8, ptr %i.ik, align 1, !tbaa !741 ; 2 uses
  %i.in = zext i8 %i.im to i32
  %i.io = or disjoint i32 %i.il, %i.in            ; 2 uses
  %.not111.i179 = icmp sgt i8 %i.im, -1
  br i1 %.not111.i179, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ip = and i32 %i.io, -266354561
  %i.iq = shl nuw nsw i32 %i.ij, 7
  %i.ir = or disjoint i32 %i.ip, %i.iq
  %i.is = lshr i32 %i.hh, 4
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = shl nuw nsw i64 %i.it, 32
  %i.iv = zext i32 %i.ir to i64
  %i.iw = or disjoint i64 %i.iu, %i.iv
  br label %sqlite3GetVarint.exit182

bb.as:                                            ; preds = %bb.aq
  %i.ix = getelementptr inbounds nuw i8, ptr %.0386.i, i64 9
  %i.iy = shl i32 %i.ij, 15
  %i.iz = load i8, ptr %i.ix, align 1, !tbaa !741
  %i.ja = zext i8 %i.iz to i32
  %i.jb = or disjoint i32 %i.iy, %i.ja
  %i.jc = shl i32 %i.io, 8
  %i.jd = and i32 %i.jc, 532709120
  %i.je = or disjoint i32 %i.jb, %i.jd
  %i.jf = shl nuw i32 %i.hh, 4
  %i.jg = lshr i8 %i.gw, 3
  %i.jh = and i8 %i.jg, 15
  %i.ji = zext nneg i8 %i.jh to i32
  %i.jj = or disjoint i32 %i.jf, %i.ji
  %i.jk = zext i32 %i.jj to i64
  %i.jl = shl nuw i64 %i.jk, 32
  %i.jm = zext i32 %i.je to i64
  %i.jn = or disjoint i64 %i.jl, %i.jm
  br label %sqlite3GetVarint.exit182

sqlite3GetVarint.exit182:                         ; preds = %bb.aj, %bb.al, %bb.an, %bb.ap, %bb.ar, %bb.as
  %.sink.i180 = phi i64 [ %i.jn, %bb.as ], [ %i.iw, %bb.ar ], [ %i.ii, %bb.ap ], [ %i.hu, %bb.an ], [ %i.hf, %bb.al ], [ %i.gt, %bb.aj ] ; 2 uses
  %.0.i181 = phi i64 [ 9, %bb.as ], [ 8, %bb.ar ], [ 7, %bb.ap ], [ 6, %bb.an ], [ 5, %bb.al ], [ 4, %bb.aj ]
  %.not.i.i44.i = icmp ult i64 %.sink.i180, 4294967296
  %i.jo = trunc nuw i64 %.sink.i180 to i32
  %storemerge.i.i.i = select i1 %.not.i.i44.i, i32 %i.jo, i32 -1
  br label %sessionVarintGet.exit.i

sessionVarintGet.exit.i:                          ; preds = %bb.af, %bb.ah, %sqlite3GetVarint.exit182, %bb.ad
  %.05.i = phi i32 [ %i.fm, %bb.ad ], [ %storemerge.i.i.i, %sqlite3GetVarint.exit182 ], [ %i.gf, %bb.ah ], [ %i.fu, %bb.af ] ; 2 uses
  %i.jp = phi i64 [ 1, %bb.ad ], [ %.0.i181, %sqlite3GetVarint.exit182 ], [ 3, %bb.ah ], [ 2, %bb.af ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.jp ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !741
  %.not.i86 = icmp eq i8 %i.js, 0
  %.pre10.i = sext i32 %.05.i to i64              ; 2 uses
  br i1 %.not.i86, label %sessionVarintGet.exit._crit_edge.i, label %bb.at

bb.at:                                            ; preds = %sessionVarintGet.exit.i
  %i.jt = trunc i64 %indvars.iv.i to i32
  %i.ju = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.az, i32 noundef %i.jt) ; 2 uses
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %bb.au, label %sessionVarintGet.exit._crit_edge.i

bb.au:                                            ; preds = %bb.at
  %i.jw = load ptr, ptr %i.be, align 8, !tbaa !701
  %i.jx = getelementptr inbounds nuw [56 x i8], ptr %i.jw, i64 %indvars.iv.i ; 14 uses
  %i.jy = icmp slt i32 %.05.i, 0
  br i1 %i.jy, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jz = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jq) #59
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.051.i = phi i64 [ %i.jz, %bb.av ], [ %.pre10.i, %bb.au ] ; 5 uses
  %.050.i = phi i16 [ 514, %bb.av ], [ 2, %bb.au ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 24 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !691 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 136
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !576
  %i.ke = sext i32 %i.kd to i64
  %i.kf = icmp sgt i64 %.051.i, %i.ke
  br i1 %i.kf, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jx, i64 20 ; 2 uses
  %i.kh = load i16, ptr %i.kg, align 4, !tbaa !694
  %i.ki = and i16 %i.kh, -28672
  %.not.i59.i = icmp eq i16 %i.ki, 0
  br i1 %.not.i59.i, label %sqlite3VdbeMemSetNull.exit60.i.thread, label %sqlite3VdbeMemSetNull.exit60.i

sqlite3VdbeMemSetNull.exit60.i.thread:            ; preds = %bb.ax
  store i16 1, ptr %i.kg, align 4, !tbaa !694
  br label %bb.ay

sqlite3VdbeMemSetNull.exit60.i:                   ; preds = %bb.ax
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.jx)
  %.pre = load ptr, ptr %i.ka, align 8, !tbaa !691 ; 2 uses
  %i.kj = icmp eq ptr %.pre, null
  br i1 %i.kj, label %sqlite3ApiExit.exit.i171, label %bb.ay

bb.ay:                                            ; preds = %sqlite3VdbeMemSetNull.exit60.i.thread, %sqlite3VdbeMemSetNull.exit60.i
  %i.kk = phi ptr [ %i.kb, %sqlite3VdbeMemSetNull.exit60.i.thread ], [ %.pre, %sqlite3VdbeMemSetNull.exit60.i ]
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 344
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !774 ; 3 uses
  %i.kn = icmp eq ptr %i.km, null
  br i1 %i.kn, label %sqlite3ApiExit.exit.i171, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  store i32 18, ptr %i.ko, align 8, !tbaa !785
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 52 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !786
  %i.kr = add nsw i32 %i.kq, 1
  store i32 %i.kr, ptr %i.kp, align 4, !tbaa !786
  br label %sqlite3ApiExit.exit.i171

bb.ba:                                            ; preds = %bb.aw
  %i.ks = tail call i64 @llvm.smax.i64(i64 %.051.i, i64 31)
  %i.kt = trunc nuw nsw i64 %i.ks to i32
  %i.ku = add nuw i32 %i.kt, 1                    ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !692
  %i.kx = icmp slt i32 %i.kw, %i.ku
  br i1 %i.kx, label %sqlite3VdbeMemClearAndResize.exit.i, label %sqlite3VdbeMemClearAndResize.exit.thread.i

sqlite3VdbeMemClearAndResize.exit.thread.i:       ; preds = %bb.ba
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !693 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store ptr %i.kz, ptr %i.la, align 8, !tbaa !768
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jx, i64 20 ; 2 uses
  %i.lc = load i16, ptr %i.lb, align 4, !tbaa !694
  %i.ld = and i16 %i.lc, 45
  store i16 %i.ld, ptr %i.lb, align 4, !tbaa !694
  br label %bb.bb

sqlite3VdbeMemClearAndResize.exit.i:              ; preds = %bb.ba
  %i.le = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %i.jx, i32 noundef %i.ku, i32 noundef 0), !inline_history !1116
  %.not57.i = icmp eq i32 %i.le, 0
  br i1 %.not57.i, label %sqlite3VdbeMemClearAndResize.exit._crit_edge.i, label %sqlite3ApiExit.exit.i171

sqlite3VdbeMemClearAndResize.exit._crit_edge.i:   ; preds = %sqlite3VdbeMemClearAndResize.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %.pre.i248 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !768
  br label %bb.bb

bb.bb:                                            ; preds = %sqlite3VdbeMemClearAndResize.exit.thread.i, %sqlite3VdbeMemClearAndResize.exit._crit_edge.i
  %i.lf = phi ptr [ %.pre.i248, %sqlite3VdbeMemClearAndResize.exit._crit_edge.i ], [ %i.kz, %sqlite3VdbeMemClearAndResize.exit.thread.i ]
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lf, ptr nonnull align 1 %i.jq, i64 %.051.i, i1 false)
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !768
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 %.051.i
  store i8 0, ptr %i.li, align 1, !tbaa !741
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jx, i64 20
  store i16 %.050.i, ptr %i.lj, align 4, !tbaa !694
  %i.lk = trunc i64 %.051.i to i32
  %i.ll = and i32 %i.lk, 2147483647
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  store i32 %i.ll, ptr %i.lm, align 8, !tbaa !934
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jx, i64 22
  store i8 1, ptr %i.ln, align 2, !tbaa !795
  %i.lo = load ptr, ptr %i.az, align 8, !tbaa !687
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 100
  %i.lq = load i8, ptr %i.lp, align 4, !tbaa !1137 ; 2 uses
  %i.lr = icmp eq i8 %i.lq, 1
  br i1 %i.lr, label %sqlite3VdbeChangeEncoding.exit.thread.i, label %sqlite3VdbeChangeEncoding.exit.i

sqlite3VdbeChangeEncoding.exit.i:                 ; preds = %bb.bb
  %i.ls = tail call fastcc i32 @sqlite3VdbeMemTranslate(ptr noundef nonnull %i.jx, i8 noundef zeroext %i.lq), !inline_history !67 ; 2 uses
  %.not49.i = icmp eq i32 %i.ls, 0
  br i1 %.not49.i, label %sqlite3VdbeChangeEncoding.exit.thread.i, label %sqlite3ApiExit.exit.i171

sqlite3ApiExit.exit.i171:                         ; preds = %bb.ay, %sqlite3VdbeMemClearAndResize.exit.i, %bb.az, %sqlite3VdbeMemSetNull.exit60.i, %sqlite3VdbeChangeEncoding.exit.i
  %.1.i170279 = phi i32 [ %i.ls, %sqlite3VdbeChangeEncoding.exit.i ], [ 18, %sqlite3VdbeMemSetNull.exit60.i ], [ 18, %bb.az ], [ 7, %sqlite3VdbeMemClearAndResize.exit.i ], [ 18, %bb.ay ] ; 3 uses
  %i.lt = load ptr, ptr %i.az, align 8, !tbaa !687 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 80
  store i32 %.1.i170279, ptr %i.lu, align 8, !tbaa !959
  tail call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %i.lt, i32 noundef %.1.i170279)
  %i.lv = load ptr, ptr %i.az, align 8, !tbaa !687
  %i.lw = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %i.lv, i32 noundef %.1.i170279)
  br label %sqlite3VdbeChangeEncoding.exit.thread.i

sqlite3VdbeChangeEncoding.exit.thread.i:          ; preds = %sqlite3ApiExit.exit.i171, %sqlite3VdbeChangeEncoding.exit.i, %bb.bb
  %.2.i172 = phi i32 [ %i.lw, %sqlite3ApiExit.exit.i171 ], [ 0, %sqlite3VdbeChangeEncoding.exit.i ], [ 0, %bb.bb ] ; 2 uses
  %i.lx = load ptr, ptr %i.az, align 8, !tbaa !687
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !601 ; 2 uses
  %.not.i52.i = icmp eq ptr %i.lz, null
  br i1 %.not.i52.i, label %sessionVarintGet.exit._crit_edge.i, label %bb.bc

bb.bc:                                            ; preds = %sqlite3VdbeChangeEncoding.exit.thread.i
  %i.ma = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.ma(ptr noundef nonnull %i.lz) #58, !inline_history !1147
  br label %sessionVarintGet.exit._crit_edge.i

sessionVarintGet.exit._crit_edge.i:               ; preds = %bb.bc, %sqlite3VdbeChangeEncoding.exit.thread.i, %bb.at, %sessionVarintGet.exit.i
  %.3.i = phi i32 [ 0, %sessionVarintGet.exit.i ], [ %.2.i172, %sqlite3VdbeChangeEncoding.exit.thread.i ], [ %.2.i172, %bb.bc ], [ %i.ju, %bb.at ]
  %i.mb = getelementptr inbounds i8, ptr %i.jq, i64 %.pre10.i
  br label %bb.bx

bb.bd:                                            ; preds = %bb.o
  %i.mc = load i8, ptr %i.bg, align 1, !tbaa !741 ; 5 uses
  %i.md = icmp sgt i8 %i.mc, -1
  br i1 %i.md, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.me = zext nneg i8 %i.mc to i32
  br label %sessionVarintGet.exit50.i

bb.bf:                                            ; preds = %bb.bd
  %i.mf = getelementptr inbounds nuw i8, ptr %.0386.i, i64 2
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !741 ; 2 uses
  %i.mh = zext i8 %i.mg to i32                    ; 3 uses
  %i.mi = icmp sgt i8 %i.mg, -1
  br i1 %i.mi, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.mj = and i8 %i.mc, 127
  %i.mk = zext nneg i8 %i.mj to i32
  %i.ml = shl nuw nsw i32 %i.mk, 7
  %i.mm = or disjoint i32 %i.ml, %i.mh
  br label %sessionVarintGet.exit50.i

bb.bh:                                            ; preds = %bb.bf
  %i.mn = getelementptr inbounds nuw i8, ptr %.0386.i, i64 3
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !741 ; 3 uses
  %i.mp = icmp sgt i8 %i.mo, -1
  br i1 %i.mp, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.mq = zext nneg i8 %i.mo to i32
  %i.mr = and i8 %i.mc, 127
  %i.ms = zext nneg i8 %i.mr to i32
  %i.mt = shl nuw nsw i32 %i.ms, 14
  %i.mu = shl nuw nsw i32 %i.mh, 7
  %i.mv = and i32 %i.mu, 16256
  %i.mw = or disjoint i32 %i.mv, %i.mt
  %i.mx = or disjoint i32 %i.mw, %i.mq
  br label %sessionVarintGet.exit50.i

bb.bj:                                            ; preds = %bb.bh
  %i.my = zext i8 %i.mc to i32
  %i.mz = shl nuw nsw i32 %i.my, 14
  %i.na = zext i8 %i.mo to i32
  %i.nb = or disjoint i32 %i.mz, %i.na
  %i.nc = and i32 %i.nb, 2080895                  ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.0386.i, i64 4
  %i.ne = shl nuw nsw i32 %i.mh, 14
  %i.nf = load i8, ptr %i.nd, align 1, !tbaa !741 ; 2 uses
  %i.ng = zext i8 %i.nf to i32
  %i.nh = or disjoint i32 %i.ne, %i.ng
  %.not107.i = icmp sgt i8 %i.nf, -1
  %i.ni = and i32 %i.nh, 2080895                  ; 4 uses
  br i1 %.not107.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.nj = shl nuw nsw i32 %i.nc, 7
  %i.nk = or disjoint i32 %i.ni, %i.nj
  %i.nl = zext nneg i32 %i.nk to i64
  br label %sqlite3GetVarint.exit

bb.bl:                                            ; preds = %bb.bj
  %i.nm = getelementptr inbounds nuw i8, ptr %.0386.i, i64 5
  %i.nn = shl i32 %i.nc, 14
  %i.no = load i8, ptr %i.nm, align 1, !tbaa !741 ; 3 uses
end_hunk_0
begin_hunk_1_@sqlite3BtreeSetMmapLimit:bb.a
  store i64 %1, ptr %i.a, align 8, !tbaa !571
  %i.r = icmp sgt i64 %1, 0                       ; 2 uses
  %i.s = zext i1 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 27
  store i8 %i.s, ptr %i.t, align 1, !tbaa !1068
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1024
  %.not.i.i.i = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %getPageMMap.getPageNormal.i.i = select i1 %i.r, ptr @getPageMMap, ptr @getPageNormal
  %getPageError.sink.i.i = select i1 %.not.i.i.i, ptr %getPageMMap.getPageNormal.i.i, ptr @getPageError
  store ptr %getPageError.sink.i.i, ptr %i.w, align 8, !tbaa !898
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1061
  %i.z = call i32 %i.y(ptr noundef nonnull %i.n, i32 noundef 18, ptr noundef nonnull %i.a) #58, !inline_history !231 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %sqlite3PagerSetMmapLimit.exit

sqlite3PagerSetMmapLimit.exit:                    ; preds = %sqlite3BtreeEnter.exit, %bb.d, %sqlite3OsFileControlHint.exit.i.i
  %i.aa = load i8, ptr %i.d, align 1, !tbaa !962
  %.not.i4 = icmp eq i8 %i.aa, 0
  br i1 %.not.i4, label %sqlite3BtreeLeave.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3PagerSetMmapLimit.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !963
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !963
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %sqlite3BtreeLeave.exit

bb.f:                                             ; preds = %bb.e
  call fastcc void @unlockBtreeMutex(ptr noundef nonnull %0)
  br label %sqlite3BtreeLeave.exit

sqlite3BtreeLeave.exit:                           ; preds = %sqlite3PagerSetMmapLimit.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @changeTempStorage(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !741     ; 3 uses
  %i.b = add i8 %i.a, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.b, 3
  br i1 %or.cond.i, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i8 %i.b to i32
  br label %getTempStore.exit

.preheader.i:                                     ; preds = %bb.a, %bb.e
  %i.d = phi i8 [ %.pr.i, %bb.e ], [ %i.a, %bb.a ] ; 3 uses
  %.013.i.i = phi ptr [ %i.n, %bb.e ], [ %1, %bb.a ]
  %.012.i.i = phi ptr [ %i.o, %bb.e ], [ @.str.602, %bb.a ] ; 2 uses
  %i.e = load i8, ptr %.012.i.i, align 1, !tbaa !741 ; 2 uses
  %i.f = icmp eq i8 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i
  %i.g = icmp eq i8 %i.d, 0
  br i1 %i.g, label %getTempStore.exit, label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.h = zext i8 %i.d to i64
  %i.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !741
  %i.k = zext i8 %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !741
  %.not.i.i = icmp eq i8 %i.j, %i.m
  br i1 %.not.i.i, label %bb.e, label %sqlite3StrICmp.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  %.pr.i = load i8, ptr %i.n, align 1, !tbaa !741
  br label %.preheader.i

sqlite3StrICmp.exit.i:                            ; preds = %bb.d, %bb.h
  %i.p = phi i8 [ %.pre.i, %bb.h ], [ %i.a, %bb.d ] ; 3 uses
  %.013.i6.i = phi ptr [ %i.z, %bb.h ], [ %1, %bb.d ]
  %.012.i7.i = phi ptr [ %i.aa, %bb.h ], [ @.str.443, %bb.d ] ; 2 uses
  %i.q = load i8, ptr %.012.i7.i, align 1, !tbaa !741 ; 2 uses
  %i.r = icmp eq i8 %i.p, %i.q
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %sqlite3StrICmp.exit.i
  %i.s = icmp eq i8 %i.p, 0
  br i1 %i.s, label %getTempStore.exit, label %bb.h

bb.g:                                             ; preds = %sqlite3StrICmp.exit.i
  %i.t = zext i8 %i.p to i64
  %i.u = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !741
  %i.w = zext i8 %i.q to i64
  %i.x = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !741
  %.not.i8.i = icmp eq i8 %i.v, %i.y
  br i1 %.not.i8.i, label %bb.h, label %getTempStore.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i6.i, i64 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i7.i, i64 1
  %.pre.i = load i8, ptr %i.z, align 1, !tbaa !741
  br label %sqlite3StrICmp.exit.i

getTempStore.exit:                                ; preds = %bb.c, %bb.f, %bb.g, %bb.b
  %.0.i = phi i32 [ %i.c, %bb.b ], [ 0, %bb.g ], [ 2, %bb.f ], [ 1, %bb.c ] ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !1002  ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 102 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !1711
  %i.ae = zext i8 %i.ad to i32
  %i.af = icmp eq i32 %.0.i, %i.ae
  br i1 %i.af, label %bb.m, label %bb.i

bb.i:                                             ; preds = %getTempStore.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !612
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !617 ; 3 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 101
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !961
  %.not9.i = icmp eq i8 %i.al, 0
  br i1 %.not9.i, label %invalidateTempStorage.exit, label %sqlite3BtreeTxnState.exit.i

sqlite3BtreeTxnState.exit.i:                      ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load i8, ptr %i.am, align 8, !tbaa !998
  %.not10.i = icmp eq i8 %i.an, 0
  br i1 %.not10.i, label %bb.k, label %invalidateTempStorage.exit

bb.k:                                             ; preds = %sqlite3BtreeTxnState.exit.i
  tail call fastcc void @sqlite3BtreeClose(ptr noundef nonnull %i.aj)
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !612
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr null, ptr %i.ap, align 8, !tbaa !617
  tail call fastcc void @sqlite3ResetAllSchemasOfConnection(ptr noundef nonnull %i.ab), !inline_history !6129
  br label %bb.l

invalidateTempStorage.exit:                       ; preds = %bb.j, %sqlite3BtreeTxnState.exit.i
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1034), !inline_history !6129
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.aq = trunc nuw nsw i32 %.0.i to i8
  store i8 %i.aq, ptr %i.ac, align 2, !tbaa !1711
  br label %bb.m

bb.m:                                             ; preds = %invalidateTempStorage.exit, %getTempStore.exit, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @invalidateTempStorage(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1002   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !612
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !617  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 101
  %i.g = load i8, ptr %i.f, align 1, !tbaa !961
  %.not9 = icmp eq i8 %i.g, 0
  br i1 %.not9, label %bb.c, label %sqlite3BtreeTxnState.exit

sqlite3BtreeTxnState.exit:                        ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !998
  %.not10 = icmp eq i8 %i.i, 0
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %sqlite3BtreeTxnState.exit, %bb.b
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1034)
  br label %bb.e

bb.d:                                             ; preds = %sqlite3BtreeTxnState.exit
  tail call fastcc void @sqlite3BtreeClose(ptr noundef nonnull %i.e)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !612
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr null, ptr %i.k, align 8, !tbaa !617
  tail call fastcc void @sqlite3ResetAllSchemasOfConnection(ptr noundef nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc zeroext i8 @getSafetyLevel(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 2) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #20 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !741     ; 15 uses
  %i.c = add i8 %i.b, -58
  %.not = icmp ult i8 %i.c, -10
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i32 0, ptr %i.a, align 4, !tbaa !576
  %i.d = call fastcc i32 @sqlite3GetInt32(ptr noundef nonnull readonly %0, ptr noundef %i.a) ; 0 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.f = trunc i32 %i.e to i8
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #59
  %.fr = freeze i64 %i.g
  %i.h = trunc i64 %.fr to i32
  %i.i = and i32 %i.h, 1073741823                 ; 4 uses
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.split

.split:                                           ; preds = %bb.c
  %.not16 = icmp eq i32 %1, 0
  %i.j = icmp eq i32 %i.i, 2                      ; 2 uses
  br i1 %.not16, label %.split.split.us.preheader, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  br i1 %i.j, label %.lr.ph.i.preheader, label %.split.split.2

.split.split.us.preheader:                        ; preds = %.split
  br i1 %i.j, label %.lr.ph.i.preheader.us, label %.split.split.us.2

.lr.ph.i.preheader.us:                            ; preds = %.split.split.us.preheader
  %i.k = and i8 %i.b, -33
  %i.l = icmp eq i8 %i.k, 79
  br i1 %i.l, label %.lr.ph.i.us.1134, label %sqlite3_strnicmp.exit.us

.lr.ph.i.us.1134:                                 ; preds = %.lr.ph.i.preheader.us
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !741
  %i.o = and i8 %i.n, -33
  %i.p = icmp eq i8 %i.o, 78
  br i1 %i.p, label %.split27.us, label %sqlite3_strnicmp.exit.us

sqlite3_strnicmp.exit.us:                         ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us.1134
  %.lcssa54 = phi i32 [ 111, %.lr.ph.i.preheader.us ], [ 110, %.lr.ph.i.us.1134 ]
  %.023.i.us.lcssa51 = phi ptr [ %0, %.lr.ph.i.preheader.us ], [ %i.m, %.lr.ph.i.us.1134 ]
  %i.q = load i8, ptr %.023.i.us.lcssa51, align 1, !tbaa !741
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !741
  %i.u = zext i8 %i.t to i32
  %i.v = icmp eq i32 %.lcssa54, %i.u
  br i1 %i.v, label %.split27.us, label %.lr.ph.i.preheader.us.1

.lr.ph.i.preheader.us.1:                          ; preds = %sqlite3_strnicmp.exit.us
  %i.w = and i8 %i.b, -33
  %i.x = icmp eq i8 %i.w, 78
  br i1 %i.x, label %.lr.ph.i.us.1.1, label %sqlite3_strnicmp.exit.us.1

.lr.ph.i.us.1.1:                                  ; preds = %.lr.ph.i.preheader.us.1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !741
  %i.aa = and i8 %i.z, -33
  %i.ab = icmp eq i8 %i.aa, 79
  br i1 %i.ab, label %.split27.us, label %sqlite3_strnicmp.exit.us.1

sqlite3_strnicmp.exit.us.1:                       ; preds = %.lr.ph.i.preheader.us.1, %.lr.ph.i.us.1.1
  %.lcssa54.1 = phi i32 [ 110, %.lr.ph.i.preheader.us.1 ], [ 111, %.lr.ph.i.us.1.1 ]
  %.023.i.us.lcssa51.1 = phi ptr [ %0, %.lr.ph.i.preheader.us.1 ], [ %i.y, %.lr.ph.i.us.1.1 ]
  %i.ac = load i8, ptr %.023.i.us.lcssa51.1, align 1, !tbaa !741
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !741
  %i.ag = zext i8 %i.af to i32
  %i.ah = icmp eq i32 %.lcssa54.1, %i.ag
  br i1 %i.ah, label %.split27.us, label %.loopexit

.split.split.us.2:                                ; preds = %.split.split.us.preheader
  switch i32 %i.i, label %.loopexit [
    i32 3, label %.lr.ph.i.preheader.us.2
    i32 5, label %.lr.ph.i.preheader.us.3
    i32 4, label %.lr.ph.i.preheader.us.5
  ]

.lr.ph.i.preheader.us.2:                          ; preds = %.split.split.us.2
  %i.ai = and i8 %i.b, -33
  %i.aj = icmp eq i8 %i.ai, 79
  br i1 %i.aj, label %.lr.ph.i.us.2.1, label %sqlite3_strnicmp.exit.us.2

.lr.ph.i.us.2.1:                                  ; preds = %.lr.ph.i.preheader.us.2
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !741
  %i.am = and i8 %i.al, -33
  %i.an = icmp eq i8 %i.am, 70
  br i1 %i.an, label %.lr.ph.i.us.2.2, label %sqlite3_strnicmp.exit.us.2

.lr.ph.i.us.2.2:                                  ; preds = %.lr.ph.i.us.2.1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !741
  %i.aq = and i8 %i.ap, -33
  %i.ar = icmp eq i8 %i.aq, 70
  br i1 %i.ar, label %.split27.us, label %sqlite3_strnicmp.exit.us.2

sqlite3_strnicmp.exit.us.2:                       ; preds = %.lr.ph.i.preheader.us.2, %.lr.ph.i.us.2.1, %.lr.ph.i.us.2.2
  %.lcssa54.2 = phi i32 [ 111, %.lr.ph.i.preheader.us.2 ], [ 102, %.lr.ph.i.us.2.1 ], [ 102, %.lr.ph.i.us.2.2 ]
  %.023.i.us.lcssa51.2 = phi ptr [ %0, %.lr.ph.i.preheader.us.2 ], [ %i.ak, %.lr.ph.i.us.2.1 ], [ %i.ao, %.lr.ph.i.us.2.2 ]
  %.pre379 = load i8, ptr %.023.i.us.lcssa51.2, align 1, !tbaa !741
  %.phi.trans.insert380 = zext i8 %.pre379 to i64
  %.phi.trans.insert381 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert380
  %.pre382 = load i8, ptr %.phi.trans.insert381, align 1, !tbaa !741
  %i.as = zext i8 %.pre382 to i32
  %i.at = icmp eq i32 %.lcssa54.2, %i.as
  br i1 %i.at, label %.split27.us, label %.lr.ph.i.preheader.us.4

.lr.ph.i.preheader.us.3:                          ; preds = %.split.split.us.2
  %i.au = and i8 %i.b, -33
  %i.av = icmp eq i8 %i.au, 70
  br i1 %i.av, label %.lr.ph.i.us.3.1, label %sqlite3_strnicmp.exit.us.3

.lr.ph.i.us.3.1:                                  ; preds = %.lr.ph.i.preheader.us.3
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !741
  %i.ay = and i8 %i.ax, -33
  %i.az = icmp eq i8 %i.ay, 65
  br i1 %i.az, label %.lr.ph.i.us.3.2, label %sqlite3_strnicmp.exit.us.3

.lr.ph.i.us.3.2:                                  ; preds = %.lr.ph.i.us.3.1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !741
  %i.bc = and i8 %i.bb, -33
  %i.bd = icmp eq i8 %i.bc, 76
  br i1 %i.bd, label %.lr.ph.i.us.3.3, label %sqlite3_strnicmp.exit.us.3

.lr.ph.i.us.3.3:                                  ; preds = %.lr.ph.i.us.3.2
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !741
  %i.bg = and i8 %i.bf, -33
  %i.bh = icmp eq i8 %i.bg, 83
  br i1 %i.bh, label %.lr.ph.i.us.3.4, label %sqlite3_strnicmp.exit.us.3

.lr.ph.i.us.3.4:                                  ; preds = %.lr.ph.i.us.3.3
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !741
  %i.bk = and i8 %i.bj, -33
  %i.bl = icmp eq i8 %i.bk, 69
  br i1 %i.bl, label %.split27.us, label %sqlite3_strnicmp.exit.us.3

sqlite3_strnicmp.exit.us.3:                       ; preds = %.lr.ph.i.preheader.us.3, %.lr.ph.i.us.3.1, %.lr.ph.i.us.3.2, %.lr.ph.i.us.3.3, %.lr.ph.i.us.3.4
  %.lcssa54.3 = phi i32 [ 102, %.lr.ph.i.preheader.us.3 ], [ 97, %.lr.ph.i.us.3.1 ], [ 108, %.lr.ph.i.us.3.2 ], [ 115, %.lr.ph.i.us.3.3 ], [ 101, %.lr.ph.i.us.3.4 ]
  %.023.i.us.lcssa51.3 = phi ptr [ %0, %.lr.ph.i.preheader.us.3 ], [ %i.aw, %.lr.ph.i.us.3.1 ], [ %i.ba, %.lr.ph.i.us.3.2 ], [ %i.be, %.lr.ph.i.us.3.3 ], [ %i.bi, %.lr.ph.i.us.3.4 ]
  %.pre383 = load i8, ptr %.023.i.us.lcssa51.3, align 1, !tbaa !741
  %.phi.trans.insert384 = zext i8 %.pre383 to i64
  %.phi.trans.insert385 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert384
  %.pre386 = load i8, ptr %.phi.trans.insert385, align 1, !tbaa !741
  %i.bm = zext i8 %.pre386 to i32
  %i.bn = icmp eq i32 %.lcssa54.3, %i.bm
  br i1 %i.bn, label %.split27.us, label %.lr.ph.i.preheader.us.6

.lr.ph.i.preheader.us.4:                          ; preds = %sqlite3_strnicmp.exit.us.2
  %i.bo = and i8 %i.b, -33
  %i.bp = icmp eq i8 %i.bo, 89
  br i1 %i.bp, label %.lr.ph.i.us.4.1, label %sqlite3_strnicmp.exit.us.4

.lr.ph.i.us.4.1:                                  ; preds = %.lr.ph.i.preheader.us.4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !741
  %i.bs = and i8 %i.br, -33
  %i.bt = icmp eq i8 %i.bs, 69
  br i1 %i.bt, label %.lr.ph.i.us.4.2, label %sqlite3_strnicmp.exit.us.4

.lr.ph.i.us.4.2:                                  ; preds = %.lr.ph.i.us.4.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !741
  %i.bw = and i8 %i.bv, -33
  %i.bx = icmp eq i8 %i.bw, 83
  br i1 %i.bx, label %.split27.us, label %sqlite3_strnicmp.exit.us.4

sqlite3_strnicmp.exit.us.4:                       ; preds = %.lr.ph.i.preheader.us.4, %.lr.ph.i.us.4.1, %.lr.ph.i.us.4.2
  %.lcssa54.4 = phi i32 [ 121, %.lr.ph.i.preheader.us.4 ], [ 101, %.lr.ph.i.us.4.1 ], [ 115, %.lr.ph.i.us.4.2 ]
  %.023.i.us.lcssa51.4 = phi ptr [ %0, %.lr.ph.i.preheader.us.4 ], [ %i.bq, %.lr.ph.i.us.4.1 ], [ %i.bu, %.lr.ph.i.us.4.2 ]
  %.pre387 = load i8, ptr %.023.i.us.lcssa51.4, align 1, !tbaa !741
  %.phi.trans.insert388 = zext i8 %.pre387 to i64
  %.phi.trans.insert389 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert388
  %.pre390 = load i8, ptr %.phi.trans.insert389, align 1, !tbaa !741
  %i.by = zext i8 %.pre390 to i32
  %i.bz = icmp eq i32 %.lcssa54.4, %i.by
  br i1 %i.bz, label %.split27.us, label %.loopexit

.lr.ph.i.preheader.us.5:                          ; preds = %.split.split.us.2
  %i.ca = and i8 %i.b, -33
  %i.cb = icmp eq i8 %i.ca, 84
  br i1 %i.cb, label %.lr.ph.i.us.5.1, label %sqlite3_strnicmp.exit.us.5

.lr.ph.i.us.5.1:                                  ; preds = %.lr.ph.i.preheader.us.5
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !741
  %i.ce = and i8 %i.cd, -33
  %i.cf = icmp eq i8 %i.ce, 82
  br i1 %i.cf, label %.lr.ph.i.us.5.2, label %sqlite3_strnicmp.exit.us.5

.lr.ph.i.us.5.2:                                  ; preds = %.lr.ph.i.us.5.1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !741
  %i.ci = and i8 %i.ch, -33
  %i.cj = icmp eq i8 %i.ci, 85
  br i1 %i.cj, label %.lr.ph.i.us.5.3, label %sqlite3_strnicmp.exit.us.5

.lr.ph.i.us.5.3:                                  ; preds = %.lr.ph.i.us.5.2
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !741
  %i.cm = and i8 %i.cl, -33
  %i.cn = icmp eq i8 %i.cm, 69
  br i1 %i.cn, label %.split27.us, label %sqlite3_strnicmp.exit.us.5

sqlite3_strnicmp.exit.us.5:                       ; preds = %.lr.ph.i.preheader.us.5, %.lr.ph.i.us.5.1, %.lr.ph.i.us.5.2, %.lr.ph.i.us.5.3
  %.lcssa54.5 = phi i32 [ 116, %.lr.ph.i.preheader.us.5 ], [ 114, %.lr.ph.i.us.5.1 ], [ 117, %.lr.ph.i.us.5.2 ], [ 101, %.lr.ph.i.us.5.3 ]
  %.023.i.us.lcssa51.5 = phi ptr [ %0, %.lr.ph.i.preheader.us.5 ], [ %i.cc, %.lr.ph.i.us.5.1 ], [ %i.cg, %.lr.ph.i.us.5.2 ], [ %i.ck, %.lr.ph.i.us.5.3 ]
  %.pre391 = load i8, ptr %.023.i.us.lcssa51.5, align 1, !tbaa !741
  %.phi.trans.insert392 = zext i8 %.pre391 to i64
  %.phi.trans.insert393 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert392
  %.pre394 = load i8, ptr %.phi.trans.insert393, align 1, !tbaa !741
  %i.co = zext i8 %.pre394 to i32
  %i.cp = icmp eq i32 %.lcssa54.5, %i.co
  br i1 %i.cp, label %.split27.us, label %.lr.ph.i.preheader.us.7

.lr.ph.i.preheader.us.6:                          ; preds = %sqlite3_strnicmp.exit.us.3
  %i.cq = and i8 %i.b, -33
  %i.cr = icmp eq i8 %i.cq, 69
  br i1 %i.cr, label %.lr.ph.i.us.6.1, label %sqlite3_strnicmp.exit.us.6

.lr.ph.i.us.6.1:                                  ; preds = %.lr.ph.i.preheader.us.6
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !741
  %i.cu = and i8 %i.ct, -33
  %i.cv = icmp eq i8 %i.cu, 88
  br i1 %i.cv, label %.lr.ph.i.us.6.2, label %sqlite3_strnicmp.exit.us.6

.lr.ph.i.us.6.2:                                  ; preds = %.lr.ph.i.us.6.1
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !741
  %i.cy = and i8 %i.cx, -33
  %i.cz = icmp eq i8 %i.cy, 84
  br i1 %i.cz, label %.lr.ph.i.us.6.3, label %sqlite3_strnicmp.exit.us.6

.lr.ph.i.us.6.3:                                  ; preds = %.lr.ph.i.us.6.2
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !741
  %i.dc = and i8 %i.db, -33
  %i.dd = icmp eq i8 %i.dc, 82
  br i1 %i.dd, label %.lr.ph.i.us.6.4, label %sqlite3_strnicmp.exit.us.6

.lr.ph.i.us.6.4:                                  ; preds = %.lr.ph.i.us.6.3
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !741
  %i.dg = and i8 %i.df, -33
  %i.dh = icmp eq i8 %i.dg, 65
  br i1 %i.dh, label %.split27.us, label %sqlite3_strnicmp.exit.us.6

sqlite3_strnicmp.exit.us.6:                       ; preds = %.lr.ph.i.preheader.us.6, %.lr.ph.i.us.6.1, %.lr.ph.i.us.6.2, %.lr.ph.i.us.6.3, %.lr.ph.i.us.6.4
  %.lcssa54.6 = phi i32 [ 101, %.lr.ph.i.preheader.us.6 ], [ 120, %.lr.ph.i.us.6.1 ], [ 116, %.lr.ph.i.us.6.2 ], [ 114, %.lr.ph.i.us.6.3 ], [ 97, %.lr.ph.i.us.6.4 ]
  %.023.i.us.lcssa51.6 = phi ptr [ %0, %.lr.ph.i.preheader.us.6 ], [ %i.cs, %.lr.ph.i.us.6.1 ], [ %i.cw, %.lr.ph.i.us.6.2 ], [ %i.da, %.lr.ph.i.us.6.3 ], [ %i.de, %.lr.ph.i.us.6.4 ]
  %.pre395 = load i8, ptr %.023.i.us.lcssa51.6, align 1, !tbaa !741
  %.phi.trans.insert396 = zext i8 %.pre395 to i64
  %.phi.trans.insert397 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert396
  %.pre398 = load i8, ptr %.phi.trans.insert397, align 1, !tbaa !741
  %i.di = zext i8 %.pre398 to i32
  %i.dj = icmp eq i32 %.lcssa54.6, %i.di
  br i1 %i.dj, label %.split27.us, label %.loopexit

.lr.ph.i.preheader.us.7:                          ; preds = %sqlite3_strnicmp.exit.us.5
  %i.dk = and i8 %i.b, -33
  %i.dl = icmp eq i8 %i.dk, 70
  br i1 %i.dl, label %.lr.ph.i.us.7.1, label %sqlite3_strnicmp.exit.us.7

.lr.ph.i.us.7.1:                                  ; preds = %.lr.ph.i.preheader.us.7
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !741
  %i.do = and i8 %i.dn, -33
  %i.dp = icmp eq i8 %i.do, 85
  br i1 %i.dp, label %.lr.ph.i.us.7.2, label %sqlite3_strnicmp.exit.us.7

.lr.ph.i.us.7.2:                                  ; preds = %.lr.ph.i.us.7.1
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !741
  %i.ds = and i8 %i.dr, -33
  %i.dt = icmp eq i8 %i.ds, 76
  br i1 %i.dt, label %.lr.ph.i.us.7.3, label %sqlite3_strnicmp.exit.us.7

.lr.ph.i.us.7.3:                                  ; preds = %.lr.ph.i.us.7.2
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !741
  %i.dw = and i8 %i.dv, -33
  %i.dx = icmp eq i8 %i.dw, 76
  br i1 %i.dx, label %.split27.us, label %sqlite3_strnicmp.exit.us.7

sqlite3_strnicmp.exit.us.7:                       ; preds = %.lr.ph.i.preheader.us.7, %.lr.ph.i.us.7.1, %.lr.ph.i.us.7.2, %.lr.ph.i.us.7.3
  %.lcssa54.7 = phi i32 [ 102, %.lr.ph.i.preheader.us.7 ], [ 117, %.lr.ph.i.us.7.1 ], [ 108, %.lr.ph.i.us.7.2 ], [ 108, %.lr.ph.i.us.7.3 ]
  %.023.i.us.lcssa51.7 = phi ptr [ %0, %.lr.ph.i.preheader.us.7 ], [ %i.dm, %.lr.ph.i.us.7.1 ], [ %i.dq, %.lr.ph.i.us.7.2 ], [ %i.du, %.lr.ph.i.us.7.3 ]
  %i.dy = load i8, ptr %.023.i.us.lcssa51.7, align 1, !tbaa !741
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !741
  %i.ec = zext i8 %i.eb to i32
  %i.ed = icmp eq i32 %.lcssa54.7, %i.ec
  br i1 %i.ed, label %.split27.us, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.split.split.preheader
  %i.ee = and i8 %i.b, -33
  %i.ef = icmp eq i8 %i.ee, 79
  br i1 %i.ef, label %.lr.ph.i.188, label %sqlite3_strnicmp.exit

.lr.ph.i.188:                                     ; preds = %.lr.ph.i.preheader
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !741
  %i.ei = and i8 %i.eh, -33
  %i.ej = icmp eq i8 %i.ei, 78
  br i1 %i.ej, label %.split27.us, label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit:                            ; preds = %.lr.ph.i.preheader, %.lr.ph.i.188
  %.lcssa62 = phi i32 [ 111, %.lr.ph.i.preheader ], [ 110, %.lr.ph.i.188 ]
  %.023.i.lcssa59 = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.eg, %.lr.ph.i.188 ]
  %i.ek = load i8, ptr %.023.i.lcssa59, align 1, !tbaa !741
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !741
  %i.eo = zext i8 %i.en to i32
  %i.ep = icmp eq i32 %.lcssa62, %i.eo
  br i1 %i.ep, label %.split27.us, label %.lr.ph.i.preheader.1

.split27.us:                                      ; preds = %.lr.ph.i.5.3, %.lr.ph.i.4.2, %.lr.ph.i.3.4, %.lr.ph.i.2.2, %.lr.ph.i.1.1, %sqlite3_strnicmp.exit, %sqlite3_strnicmp.exit.1, %sqlite3_strnicmp.exit.2, %sqlite3_strnicmp.exit.3, %sqlite3_strnicmp.exit.4, %sqlite3_strnicmp.exit.5, %.lr.ph.i.188, %sqlite3_strnicmp.exit.us, %sqlite3_strnicmp.exit.us.1, %sqlite3_strnicmp.exit.us.2, %sqlite3_strnicmp.exit.us.3, %sqlite3_strnicmp.exit.us.4, %sqlite3_strnicmp.exit.us.5, %sqlite3_strnicmp.exit.us.6, %sqlite3_strnicmp.exit.us.7, %.lr.ph.i.us.1134, %.lr.ph.i.us.1.1, %.lr.ph.i.us.2.2, %.lr.ph.i.us.3.4, %.lr.ph.i.us.4.2, %.lr.ph.i.us.5.3, %.lr.ph.i.us.6.4, %.lr.ph.i.us.7.3
  %.us-phi = phi i64 [ 7, %sqlite3_strnicmp.exit.us.7 ], [ 7, %.lr.ph.i.us.7.3 ], [ 5, %.lr.ph.i.us.5.3 ], [ 6, %.lr.ph.i.us.6.4 ], [ 0, %.lr.ph.i.us.1134 ], [ 1, %.lr.ph.i.us.1.1 ], [ 2, %.lr.ph.i.us.2.2 ], [ 3, %.lr.ph.i.us.3.4 ], [ 4, %.lr.ph.i.us.4.2 ], [ 0, %sqlite3_strnicmp.exit.us ], [ 1, %sqlite3_strnicmp.exit.us.1 ], [ 2, %sqlite3_strnicmp.exit.us.2 ], [ 3, %sqlite3_strnicmp.exit.us.3 ], [ 4, %sqlite3_strnicmp.exit.us.4 ], [ 5, %sqlite3_strnicmp.exit.us.5 ], [ 6, %sqlite3_strnicmp.exit.us.6 ], [ 5, %sqlite3_strnicmp.exit.5 ], [ 0, %sqlite3_strnicmp.exit ], [ 0, %.lr.ph.i.188 ], [ 1, %sqlite3_strnicmp.exit.1 ], [ 1, %.lr.ph.i.1.1 ], [ 2, %sqlite3_strnicmp.exit.2 ], [ 2, %.lr.ph.i.2.2 ], [ 3, %sqlite3_strnicmp.exit.3 ], [ 3, %.lr.ph.i.3.4 ], [ 4, %sqlite3_strnicmp.exit.4 ], [ 4, %.lr.ph.i.4.2 ], [ 5, %.lr.ph.i.5.3 ]
  %i.eq = getelementptr inbounds nuw i8, ptr @getSafetyLevel.iValue, i64 %.us-phi
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !741
  br label %.loopexit

.lr.ph.i.preheader.1:                             ; preds = %sqlite3_strnicmp.exit
  %i.es = and i8 %i.b, -33
  %i.et = icmp eq i8 %i.es, 78
  br i1 %i.et, label %.lr.ph.i.1.1, label %sqlite3_strnicmp.exit.1

.lr.ph.i.1.1:                                     ; preds = %.lr.ph.i.preheader.1
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !741
  %i.ew = and i8 %i.ev, -33
  %i.ex = icmp eq i8 %i.ew, 79
  br i1 %i.ex, label %.split27.us, label %sqlite3_strnicmp.exit.1

sqlite3_strnicmp.exit.1:                          ; preds = %.lr.ph.i.preheader.1, %.lr.ph.i.1.1
  %.lcssa62.1 = phi i32 [ 110, %.lr.ph.i.preheader.1 ], [ 111, %.lr.ph.i.1.1 ]
  %.023.i.lcssa59.1 = phi ptr [ %0, %.lr.ph.i.preheader.1 ], [ %i.eu, %.lr.ph.i.1.1 ]
  %3 = load i8, ptr %.023.i.lcssa59.1, align 1, !tbaa !741
  %.pn = zext i8 %3 to i64
  %.pre370.in = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.pn
  %.pre370 = load i8, ptr %.pre370.in, align 1, !tbaa !741
  %i.ey = zext i8 %.pre370 to i32
  %i.ez = icmp eq i32 %.lcssa62.1, %i.ey
  br i1 %i.ez, label %.split27.us, label %.loopexit

.split.split.2:                                   ; preds = %.split.split.preheader
  switch i32 %i.i, label %.loopexit [
    i32 3, label %.lr.ph.i.preheader.2
    i32 5, label %.lr.ph.i.preheader.3
    i32 4, label %.lr.ph.i.preheader.5
  ]

.lr.ph.i.preheader.2:                             ; preds = %.split.split.2
  %i.fa = and i8 %i.b, -33
  %i.fb = icmp eq i8 %i.fa, 79
  br i1 %i.fb, label %.lr.ph.i.2.1, label %sqlite3_strnicmp.exit.2

.lr.ph.i.2.1:                                     ; preds = %.lr.ph.i.preheader.2
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !741
  %i.fe = and i8 %i.fd, -33
  %i.ff = icmp eq i8 %i.fe, 70
  br i1 %i.ff, label %.lr.ph.i.2.2, label %sqlite3_strnicmp.exit.2

.lr.ph.i.2.2:                                     ; preds = %.lr.ph.i.2.1
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !741
  %i.fi = and i8 %i.fh, -33
  %i.fj = icmp eq i8 %i.fi, 70
  br i1 %i.fj, label %.split27.us, label %sqlite3_strnicmp.exit.2

sqlite3_strnicmp.exit.2:                          ; preds = %.lr.ph.i.preheader.2, %.lr.ph.i.2.1, %.lr.ph.i.2.2
  %.lcssa62.2 = phi i32 [ 111, %.lr.ph.i.preheader.2 ], [ 102, %.lr.ph.i.2.1 ], [ 102, %.lr.ph.i.2.2 ]
  %.023.i.lcssa59.2 = phi ptr [ %0, %.lr.ph.i.preheader.2 ], [ %i.fc, %.lr.ph.i.2.1 ], [ %i.fg, %.lr.ph.i.2.2 ]
  %i.fk = load i8, ptr %.023.i.lcssa59.2, align 1, !tbaa !741
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !741
  %i.fo = zext i8 %i.fn to i32
  %i.fp = icmp eq i32 %.lcssa62.2, %i.fo
  br i1 %i.fp, label %.split27.us, label %.lr.ph.i.preheader.4

.lr.ph.i.preheader.3:                             ; preds = %.split.split.2
  %i.fq = and i8 %i.b, -33
  %i.fr = icmp eq i8 %i.fq, 70
  br i1 %i.fr, label %.lr.ph.i.3.1, label %sqlite3_strnicmp.exit.3

.lr.ph.i.3.1:                                     ; preds = %.lr.ph.i.preheader.3
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !741
  %i.fu = and i8 %i.ft, -33
  %i.fv = icmp eq i8 %i.fu, 65
  br i1 %i.fv, label %.lr.ph.i.3.2, label %sqlite3_strnicmp.exit.3

.lr.ph.i.3.2:                                     ; preds = %.lr.ph.i.3.1
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !741
  %i.fy = and i8 %i.fx, -33
  %i.fz = icmp eq i8 %i.fy, 76
  br i1 %i.fz, label %.lr.ph.i.3.3, label %sqlite3_strnicmp.exit.3

.lr.ph.i.3.3:                                     ; preds = %.lr.ph.i.3.2
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !741
  %i.gc = and i8 %i.gb, -33
  %i.gd = icmp eq i8 %i.gc, 83
  br i1 %i.gd, label %.lr.ph.i.3.4, label %sqlite3_strnicmp.exit.3

.lr.ph.i.3.4:                                     ; preds = %.lr.ph.i.3.3
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !741
  %i.gg = and i8 %i.gf, -33
  %i.gh = icmp eq i8 %i.gg, 69
  br i1 %i.gh, label %.split27.us, label %sqlite3_strnicmp.exit.3

sqlite3_strnicmp.exit.3:                          ; preds = %.lr.ph.i.preheader.3, %.lr.ph.i.3.1, %.lr.ph.i.3.2, %.lr.ph.i.3.3, %.lr.ph.i.3.4
  %.lcssa62.3 = phi i32 [ 102, %.lr.ph.i.preheader.3 ], [ 97, %.lr.ph.i.3.1 ], [ 108, %.lr.ph.i.3.2 ], [ 115, %.lr.ph.i.3.3 ], [ 101, %.lr.ph.i.3.4 ]
  %.023.i.lcssa59.3 = phi ptr [ %0, %.lr.ph.i.preheader.3 ], [ %i.fs, %.lr.ph.i.3.1 ], [ %i.fw, %.lr.ph.i.3.2 ], [ %i.ga, %.lr.ph.i.3.3 ], [ %i.ge, %.lr.ph.i.3.4 ]
  %.pre371 = load i8, ptr %.023.i.lcssa59.3, align 1, !tbaa !741
  %.phi.trans.insert372 = zext i8 %.pre371 to i64
  %.phi.trans.insert373 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert372
  %.pre374 = load i8, ptr %.phi.trans.insert373, align 1, !tbaa !741
  %i.gi = zext i8 %.pre374 to i32
  %i.gj = icmp eq i32 %.lcssa62.3, %i.gi
  br i1 %i.gj, label %.split27.us, label %.loopexit

.lr.ph.i.preheader.4:                             ; preds = %sqlite3_strnicmp.exit.2
  %i.gk = and i8 %i.b, -33
  %i.gl = icmp eq i8 %i.gk, 89
  br i1 %i.gl, label %.lr.ph.i.4.1, label %sqlite3_strnicmp.exit.4

.lr.ph.i.4.1:                                     ; preds = %.lr.ph.i.preheader.4
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !741
  %i.go = and i8 %i.gn, -33
  %i.gp = icmp eq i8 %i.go, 69
  br i1 %i.gp, label %.lr.ph.i.4.2, label %sqlite3_strnicmp.exit.4

.lr.ph.i.4.2:                                     ; preds = %.lr.ph.i.4.1
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !741
  %i.gs = and i8 %i.gr, -33
  %i.gt = icmp eq i8 %i.gs, 83
  br i1 %i.gt, label %.split27.us, label %sqlite3_strnicmp.exit.4

sqlite3_strnicmp.exit.4:                          ; preds = %.lr.ph.i.preheader.4, %.lr.ph.i.4.1, %.lr.ph.i.4.2
  %.lcssa62.4 = phi i32 [ 121, %.lr.ph.i.preheader.4 ], [ 101, %.lr.ph.i.4.1 ], [ 115, %.lr.ph.i.4.2 ]
  %.023.i.lcssa59.4 = phi ptr [ %0, %.lr.ph.i.preheader.4 ], [ %i.gm, %.lr.ph.i.4.1 ], [ %i.gq, %.lr.ph.i.4.2 ]
  %.pre375 = load i8, ptr %.023.i.lcssa59.4, align 1, !tbaa !741
  %.phi.trans.insert376 = zext i8 %.pre375 to i64
  %.phi.trans.insert377 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert376
  %.pre378 = load i8, ptr %.phi.trans.insert377, align 1, !tbaa !741
  %i.gu = zext i8 %.pre378 to i32
  %i.gv = icmp eq i32 %.lcssa62.4, %i.gu
  br i1 %i.gv, label %.split27.us, label %.loopexit

.lr.ph.i.preheader.5:                             ; preds = %.split.split.2
  %i.gw = and i8 %i.b, -33
  %i.gx = icmp eq i8 %i.gw, 84
  br i1 %i.gx, label %.lr.ph.i.5.1, label %sqlite3_strnicmp.exit.5

.lr.ph.i.5.1:                                     ; preds = %.lr.ph.i.preheader.5
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !741
  %i.ha = and i8 %i.gz, -33
  %i.hb = icmp eq i8 %i.ha, 82
  br i1 %i.hb, label %.lr.ph.i.5.2, label %sqlite3_strnicmp.exit.5

.lr.ph.i.5.2:                                     ; preds = %.lr.ph.i.5.1
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !741
  %i.he = and i8 %i.hd, -33
  %i.hf = icmp eq i8 %i.he, 85
  br i1 %i.hf, label %.lr.ph.i.5.3, label %sqlite3_strnicmp.exit.5

.lr.ph.i.5.3:                                     ; preds = %.lr.ph.i.5.2
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !741
  %i.hi = and i8 %i.hh, -33
  %i.hj = icmp eq i8 %i.hi, 69
  br i1 %i.hj, label %.split27.us, label %sqlite3_strnicmp.exit.5

sqlite3_strnicmp.exit.5:                          ; preds = %.lr.ph.i.preheader.5, %.lr.ph.i.5.1, %.lr.ph.i.5.2, %.lr.ph.i.5.3
  %.lcssa62.5 = phi i32 [ 116, %.lr.ph.i.preheader.5 ], [ 114, %.lr.ph.i.5.1 ], [ 117, %.lr.ph.i.5.2 ], [ 101, %.lr.ph.i.5.3 ]
  %.023.i.lcssa59.5 = phi ptr [ %0, %.lr.ph.i.preheader.5 ], [ %i.gy, %.lr.ph.i.5.1 ], [ %i.hc, %.lr.ph.i.5.2 ], [ %i.hg, %.lr.ph.i.5.3 ]
  %i.hk = load i8, ptr %.023.i.lcssa59.5, align 1, !tbaa !741
  %i.hl = zext i8 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !741
  %i.ho = zext i8 %i.hn to i32
  %i.hp = icmp eq i32 %.lcssa62.5, %i.ho
  br i1 %i.hp, label %.split27.us, label %.loopexit

.loopexit:                                        ; preds = %sqlite3_strnicmp.exit.3, %sqlite3_strnicmp.exit.5, %sqlite3_strnicmp.exit.4, %sqlite3_strnicmp.exit.us.6, %sqlite3_strnicmp.exit.us.4, %.split.split.2, %.split.split.us.2, %bb.c, %sqlite3_strnicmp.exit.1, %sqlite3_strnicmp.exit.us.1, %sqlite3_strnicmp.exit.us.7, %.split27.us, %bb.b
  %.014 = phi i8 [ %i.f, %bb.b ], [ %i.er, %.split27.us ], [ %2, %sqlite3_strnicmp.exit.1 ], [ %2, %.split.split.us.2 ], [ %2, %sqlite3_strnicmp.exit.5 ], [ %2, %sqlite3_strnicmp.exit.us.6 ], [ %2, %sqlite3_strnicmp.exit.us.7 ], [ %2, %.split.split.2 ], [ %2, %sqlite3_strnicmp.exit.4 ], [ %2, %sqlite3_strnicmp.exit.us.1 ], [ %2, %sqlite3_strnicmp.exit.us.4 ], [ %2, %bb.c ], [ %2, %sqlite3_strnicmp.exit.3 ]
  ret i8 %.014
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3VdbeMultiLoad(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -2147483645, -2147483648) %1, ptr nofree noundef readonly captures(none) %2, ...) unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.f = zext i32 %1 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %sqlite3VdbeAddOp4.exit, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %sqlite3VdbeAddOp4.exit ], [ 0, %bb.a ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !741
  switch i8 %i.h, label %sqlite3VdbeAddOp2.exit24 [
    i8 0, label %bb.r
    i8 115, label %bb.c
    i8 105, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 16               ; 3 uses
  %i.j = icmp ult i32 %i.i, 41
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.b, align 16
  %i.l = zext nneg i32 %i.i to i64
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l
  %i.n = add nuw nsw i32 %i.i, 8
  store i32 %i.n, ptr %3, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  store ptr %i.p, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %i.m, %bb.d ], [ %i.o, %bb.e ]
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !747  ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = select i1 %i.s, i32 76, i32 118          ; 2 uses
  %i.u = add nuw i64 %indvars.iv, %i.f            ; 2 uses
  %i.v = load i32, ptr %i.c, align 8, !tbaa !711  ; 4 uses
  %i.w = load i32, ptr %i.d, align 4, !tbaa !1207
  %.not.i.i = icmp sgt i32 %i.w, %i.v
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = trunc i64 %i.u to i32
  %i.y = call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef range(i32 -1, 511) %i.t, i32 noundef 0, i32 noundef %i.x, i32 noundef 0), !inline_history !1235
  br label %sqlite3VdbeAddOp3.exit.i

bb.h:                                             ; preds = %bb.f
  %i.z = add nsw i32 %i.v, 1
  store i32 %i.z, ptr %i.c, align 8, !tbaa !711
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !710
  %i.ab = sext i32 %i.v to i64
  %i.ac = getelementptr inbounds [24 x i8], ptr %i.aa, i64 %i.ab ; 7 uses
  %i.ad = trunc nuw nsw i32 %i.t to i8
  store i8 %i.ad, ptr %i.ac, align 8, !tbaa !938
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i16 0, ptr %i.ae, align 2, !tbaa !957
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %i.af, align 4, !tbaa !954
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = trunc i64 %i.u to i32
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !955
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !956
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr null, ptr %i.aj, align 8, !tbaa !741
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 0, ptr %i.ak, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit.i

sqlite3VdbeAddOp3.exit.i:                         ; preds = %bb.h, %bb.g
  %.0.i.i = phi i32 [ %i.y, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !687
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 103
  %i.an = load i8, ptr %i.am, align 1, !tbaa !928
  %.not.i9.i = icmp eq i8 %i.an, 0
  br i1 %.not.i9.i, label %bb.i, label %sqlite3VdbeAddOp4.exit

bb.i:                                             ; preds = %sqlite3VdbeAddOp3.exit.i
  %i.ao = icmp slt i32 %.0.i.i, 0
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.c, align 8, !tbaa !711
  %i.aq = add nsw i32 %i.ap, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i10.i = phi i32 [ %i.aq, %bb.j ], [ %.0.i.i, %bb.i ]
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !710
  %i.as = sext i32 %.0.i10.i to i64
  %i.at = getelementptr inbounds [24 x i8], ptr %i.ar, i64 %i.as
  call fastcc void @vdbeChangeP4Full(ptr noundef nonnull readonly %0, ptr noundef %i.at, ptr noundef %i.r, i32 noundef 0), !inline_history !1212
  br label %sqlite3VdbeAddOp4.exit

bb.l:                                             ; preds = %bb.b
  %i.au = load i32, ptr %3, align 16              ; 3 uses
  %i.av = icmp ult i32 %i.au, 41
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %i.b, align 16
  %i.ax = zext nneg i32 %i.au to i64
  %i.ay = getelementptr i8, ptr %i.aw, i64 %i.ax
  %i.az = add nuw nsw i32 %i.au, 8
  store i32 %i.az, ptr %3, align 16
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.a, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bc = phi ptr [ %i.ay, %bb.m ], [ %i.ba, %bb.n ]
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !576 ; 2 uses
  %i.be = add nuw i64 %indvars.iv, %i.f           ; 2 uses
  %i.bf = load i32, ptr %i.c, align 8, !tbaa !711 ; 3 uses
  %i.bg = load i32, ptr %i.d, align 4, !tbaa !1207
  %.not.i.i18 = icmp sgt i32 %i.bg, %i.bf
  br i1 %.not.i.i18, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = trunc i64 %i.be to i32
  %i.bi = call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 72, i32 noundef %i.bd, i32 noundef %i.bh, i32 noundef 0), !inline_history !1235 ; 0 uses
  br label %sqlite3VdbeAddOp4.exit

bb.q:                                             ; preds = %bb.o
  %i.bj = add nsw i32 %i.bf, 1
  store i32 %i.bj, ptr %i.c, align 8, !tbaa !711
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !710
  %i.bl = sext i32 %i.bf to i64
  %i.bm = getelementptr inbounds [24 x i8], ptr %i.bk, i64 %i.bl ; 7 uses
  store i8 72, ptr %i.bm, align 8, !tbaa !938
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  store i16 0, ptr %i.bn, align 2, !tbaa !957
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 %i.bd, ptr %i.bo, align 4, !tbaa !954
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bq = trunc i64 %i.be to i32
  store i32 %i.bq, ptr %i.bp, align 8, !tbaa !955
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !956
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr null, ptr %i.bs, align 8, !tbaa !741
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store i8 0, ptr %i.bt, align 1, !tbaa !939
end_hunk_1
