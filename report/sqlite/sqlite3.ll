Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3VdbeFindIndexKey:bb.a
  %i.eb = tail call ptr %i.ea(i32 noundef %i.cr) #57, !inline_history !4200
  br label %sqlite3Malloc.exit

sqlite3Malloc.exit:                               ; preds = %mallocWithAlarm.exit.i, %bb.ae, %bb.af
  %.0.i67 = phi ptr [ %storemerge.i.i, %bb.ae ], [ %i.eb, %bb.af ], [ %storemerge.i.i, %mallocWithAlarm.exit.i ] ; 12 uses
  %.not.i.i57 = icmp eq ptr %.0.i67, null
  br i1 %.not.i.i57, label %.critedge.thread.thread, label %bb.ag

bb.ag:                                            ; preds = %sqlite3Malloc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i67, i8 0, i64 range(i64 -180388626400, 180388626381) %i.cs, i1 false)
  %i.ec = tail call fastcc i32 @accessPayload(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.cp, ptr noundef nonnull %.0.i67, i32 noundef 0), !inline_history !4201 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.ah, label %.thread111.i

bb.ah:                                            ; preds = %bb.ag
  %i.ee = load i8, ptr %.0.i67, align 1, !tbaa !733 ; 4 uses
  %i.ef = icmp sgt i8 %i.ee, -1
  br i1 %i.ef, label %.thread85.i, label %bb.ai

.thread85.i:                                      ; preds = %bb.ah
  %i.eg = zext nneg i8 %i.ee to i32
  br label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #57
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i67, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !733 ; 2 uses
  %i.ej = zext i8 %i.ei to i32                    ; 2 uses
  %i.ek = icmp sgt i8 %i.ei, -1
  br i1 %i.ek, label %.thread91.i, label %bb.aj

.thread91.i:                                      ; preds = %bb.ai
  %i.el = and i8 %i.ee, 127
  %i.em = zext nneg i8 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 7
  %i.eo = or disjoint i32 %i.en, %i.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #57
  br label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i67, i64 2
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !733 ; 2 uses
  %i.er = icmp sgt i8 %i.eq, -1
  br i1 %i.er, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.es = zext nneg i8 %i.eq to i32
  %i.et = and i8 %i.ee, 127
  %i.eu = zext nneg i8 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 14
  %i.ew = shl nuw nsw i32 %i.ej, 7
  %i.ex = and i32 %i.ew, 16256
  %i.ey = or disjoint i32 %i.ex, %i.ev
  %i.ez = or disjoint i32 %i.ey, %i.es
  br label %select.unfold.i

bb.al:                                            ; preds = %bb.aj
  %i.fa = call fastcc zeroext i8 @sqlite3GetVarint(ptr noundef nonnull readonly %.0.i67, ptr noundef nonnull %i.b), !inline_history !4192
  %i.fb = load i64, ptr %i.b, align 8, !tbaa !565 ; 2 uses
  %.not.i67.i = icmp ult i64 %i.fb, 4294967296
  %i.fc = trunc nuw i64 %i.fb to i32
  br i1 %.not.i67.i, label %select.unfold.i, label %.thread88.i

.thread88.i:                                      ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #57
  br label %.thread111.i

select.unfold.i:                                  ; preds = %bb.al, %bb.ak
  %storemerge.sink.i.i = phi i32 [ %i.ez, %bb.ak ], [ %i.fc, %bb.al ] ; 2 uses
  %.0.i.i = phi i8 [ 3, %bb.ak ], [ %i.fa, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #57
  %i.fd = zext nneg i8 %.0.i.i to i32
  %i.fe = icmp ugt i32 %storemerge.sink.i.i, 98307
  br i1 %i.fe, label %.thread111.i, label %bb.am

bb.am:                                            ; preds = %select.unfold.i, %.thread91.i, %.thread85.i
  %i.ff = phi i32 [ 1, %.thread85.i ], [ %i.fd, %select.unfold.i ], [ 2, %.thread91.i ]
  %.08387.i = phi i32 [ %i.eg, %.thread85.i ], [ %storemerge.sink.i.i, %select.unfold.i ], [ %i.eo, %.thread91.i ] ; 2 uses
  %i.fg = load ptr, ptr %2, align 8, !tbaa !1721
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i16, ptr %i.fh, align 8, !tbaa !783 ; 2 uses
  %.not124.i = icmp eq i16 %i.fi, 0
  br i1 %.not124.i, label %.thread111.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am
  %i.fj = zext i16 %i.fi to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.bg, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bg ] ; 5 uses
  %.047118.i = phi i32 [ %.08387.i, %.lr.ph.i ], [ %i.ib, %bb.bg ] ; 3 uses
  %.050117.i = phi i32 [ %i.ff, %.lr.ph.i ], [ %i.ha, %bb.bg ] ; 5 uses
  %.not.i58 = icmp ult i32 %.050117.i, %.08387.i
  br i1 %.not.i58, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 93366, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !4193
  br label %.thread111.i

bb.ap:                                            ; preds = %bb.an
  %i.fk = zext nneg i32 %.050117.i to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i67, i64 %i.fk ; 4 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !733 ; 4 uses
  %i.fn = icmp sgt i8 %i.fm, -1
  br i1 %i.fn, label %.thread94.i, label %bb.aq

.thread94.i:                                      ; preds = %bb.ap
  %i.fo = zext nneg i8 %i.fm to i32
  %i.fp = add nuw nsw i32 %.050117.i, 1
  br label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !733 ; 2 uses
  %i.fs = zext i8 %i.fr to i32                    ; 2 uses
  %i.ft = icmp sgt i8 %i.fr, -1
  br i1 %i.ft, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fu = and i8 %i.fm, 127
  %i.fv = zext nneg i8 %i.fu to i32
  %i.fw = shl nuw nsw i32 %i.fv, 7
  %i.fx = or disjoint i32 %i.fw, %i.fs
  br label %select.unfold98.i

bb.as:                                            ; preds = %bb.aq
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !733 ; 2 uses
  %i.ga = icmp sgt i8 %i.fz, -1
  br i1 %i.ga, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gb = zext nneg i8 %i.fz to i32
  %i.gc = and i8 %i.fm, 127
  %i.gd = zext nneg i8 %i.gc to i32
  %i.ge = shl nuw nsw i32 %i.gd, 14
  %i.gf = shl nuw nsw i32 %i.fs, 7
  %i.gg = and i32 %i.gf, 16256
  %i.gh = or disjoint i32 %i.gg, %i.ge
  %i.gi = or disjoint i32 %i.gh, %i.gb
  br label %select.unfold98.i

bb.au:                                            ; preds = %bb.as
  %i.gj = call fastcc zeroext i8 @sqlite3GetVarint(ptr noundef nonnull readonly %i.fl, ptr noundef nonnull %i.a), !inline_history !4192 ; 2 uses
  %i.gk = load i64, ptr %i.a, align 8, !tbaa !565 ; 2 uses
  %.not.i68.i = icmp ult i64 %i.gk, 4294967296
  %i.gl = trunc nuw i64 %i.gk to i32
  br i1 %.not.i68.i, label %select.unfold98.i, label %.thread99.i

.thread99.i:                                      ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  %i.gm = zext nneg i8 %i.gj to i32
  %i.gn = add nuw nsw i32 %.050117.i, %i.gm
  br label %bb.av

select.unfold98.i:                                ; preds = %bb.au, %bb.at, %bb.ar
  %storemerge.sink.i70.i = phi i32 [ %i.fx, %bb.ar ], [ %i.gi, %bb.at ], [ %i.gl, %bb.au ] ; 3 uses
  %.0.i71.i = phi i8 [ 2, %bb.ar ], [ 3, %bb.at ], [ %i.gj, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  %i.go = zext nneg i8 %.0.i71.i to i32
  %i.gp = add nuw nsw i32 %.050117.i, %i.go       ; 2 uses
  %i.gq = icmp ugt i32 %storemerge.sink.i70.i, 127
  br i1 %i.gq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %select.unfold98.i, %.thread99.i
  %i.gr = phi i32 [ %i.gn, %.thread99.i ], [ %i.gp, %select.unfold98.i ]
  %storemerge.sink.i70102.i = phi i32 [ -1, %.thread99.i ], [ %storemerge.sink.i70.i, %select.unfold98.i ] ; 2 uses
  %i.gs = add i32 %storemerge.sink.i70102.i, -12
  %i.gt = lshr i32 %i.gs, 1
  br label %sqlite3VdbeSerialTypeLen.exit.i

bb.aw:                                            ; preds = %select.unfold98.i, %.thread94.i
  %i.gu = phi i32 [ %i.fp, %.thread94.i ], [ %i.gp, %select.unfold98.i ]
  %.08296.i = phi i32 [ %i.fo, %.thread94.i ], [ %storemerge.sink.i70.i, %select.unfold98.i ] ; 2 uses
  %i.gv = zext nneg i32 %.08296.i to i64
  %i.gw = getelementptr inbounds nuw i8, ptr @sqlite3SmallTypeSizes, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !733
  %i.gy = zext i8 %i.gx to i32
  br label %sqlite3VdbeSerialTypeLen.exit.i

sqlite3VdbeSerialTypeLen.exit.i:                  ; preds = %bb.aw, %bb.av
  %i.gz = phi i1 [ true, %bb.av ], [ false, %bb.aw ]
  %i.ha = phi i32 [ %i.gr, %bb.av ], [ %i.gu, %bb.aw ]
  %.08297.i = phi i32 [ %storemerge.sink.i70102.i, %bb.av ], [ %.08296.i, %bb.aw ] ; 3 uses
  %.0.i73.i = phi i32 [ %i.gt, %bb.av ], [ %i.gy, %bb.aw ]
  %i.hb = add i32 %.0.i73.i, %.047118.i
  %i.hc = icmp ule i32 %i.hb, %i.cp               ; 2 uses
  br i1 %i.hc, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %sqlite3VdbeSerialTypeLen.exit.i
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 93372, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !4193
  br label %vdbeSkipField.exit.i

bb.ay:                                            ; preds = %sqlite3VdbeSerialTypeLen.exit.i
  %i.hd = zext i32 %.047118.i to i64
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i67, i64 %i.hd
  call fastcc void @sqlite3VdbeSerialGet(ptr noundef nonnull %i.he, i32 noundef %.08297.i, ptr noundef nonnull %5), !inline_history !4192
  %i.hf = load ptr, ptr %i.bv, align 8, !tbaa !1724
  %i.hg = getelementptr inbounds nuw [56 x i8], ptr %i.hf, i64 %indvars.iv.i ; 3 uses
  %.val.i = load i64, ptr %5, align 8
  %.val66.i = load i16, ptr %i.bw, align 4
  %i.hh = icmp samesign ugt i64 %indvars.iv.i, 63
  br i1 %i.hh, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hi = shl nuw i64 1, %indvars.iv.i
  %i.hj = and i64 %i.hi, %.1
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %i.bx, label %bb.bb, label %vdbeSkipField.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 20
  %i.hm = load i16, ptr %i.hl, align 4, !tbaa !686
  %i.hn = and i16 %i.hm, 8
  %.not.i74.i = icmp eq i16 %i.hn, 0
  %i.ho = and i16 %.val66.i, 8
  %.not18.i.i = icmp eq i16 %i.ho, 0
  %or.cond.i.i = select i1 %.not.i74.i, i1 true, i1 %.not18.i.i
  br i1 %or.cond.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.0.copyload4.i.i = load i64, ptr %i.hg, align 8
  %i.hp = sub i64 %.0.copyload4.i.i, %.val.i
  %6 = add i64 %i.hp, -3
  %7 = icmp ult i64 %6, -5
  br i1 %7, label %bb.bd, label %vdbeSkipField.exit.i

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.az, %bb.ay
  %i.hq = load ptr, ptr %2, align 8, !tbaa !1721
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv.i
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !1715
  %i.hu = call fastcc i32 @sqlite3MemCompare(ptr noundef nonnull %5, ptr noundef %i.hg, ptr noundef %i.ht), !inline_history !4192 ; 2 uses
  %.not65.i = icmp eq i32 %i.hu, 0
  br i1 %.not65.i, label %vdbeSkipField.exit.i, label %.thread111.i

vdbeSkipField.exit.i:                             ; preds = %bb.bd, %bb.bc, %bb.ba, %bb.ax
  %.255.i = phi i32 [ 11, %bb.ax ], [ 0, %bb.bd ], [ 0, %bb.ba ], [ 0, %bb.bc ]
  br i1 %i.gz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %vdbeSkipField.exit.i
  %i.hv = add i32 %.08297.i, -12
  %i.hw = lshr i32 %i.hv, 1
  br label %bb.bg

bb.bf:                                            ; preds = %vdbeSkipField.exit.i
  %i.hx = zext nneg i32 %.08297.i to i64
  %i.hy = getelementptr inbounds nuw i8, ptr @sqlite3SmallTypeSizes, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !733
  %i.ia = zext i8 %i.hz to i32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0.i75.i = phi i32 [ %i.hw, %bb.be ], [ %i.ia, %bb.bf ]
  %i.ib = add i32 %.0.i75.i, %.047118.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ic = icmp samesign ult i64 %indvars.iv.next.i, %i.fj
  %i.id = and i1 %i.ic, %i.hc
  br i1 %i.id, label %bb.an, label %.thread111.i, !llvm.loop !4202

.thread111.i:                                     ; preds = %bb.bd, %bb.bg, %bb.am, %bb.ao, %select.unfold.i, %.thread88.i, %bb.ag
  %.6 = phi i32 [ %.275114210, %bb.ag ], [ %.275114210, %select.unfold.i ], [ %.275114210, %.thread88.i ], [ 0, %bb.ao ], [ 0, %bb.am ], [ %i.hu, %bb.bd ], [ 0, %bb.bg ] ; 7 uses
  %.6113.i = phi i32 [ %i.ec, %bb.ag ], [ 11, %select.unfold.i ], [ 11, %.thread88.i ], [ 11, %bb.ao ], [ 0, %bb.am ], [ 0, %bb.bd ], [ %.255.i, %bb.bg ] ; 2 uses
  %i.ie = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i77.i = icmp eq i32 %i.ie, 0
  br i1 %.not.i77.i, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %.thread111.i
  %i.if = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ig = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.ig(ptr noundef nonnull %i.if) #57, !inline_history !4203
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.bi, %bb.bh
  %i.ih = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.ii = tail call i32 %i.ih(ptr noundef nonnull %.0.i67) #57, !inline_history !4204
  %i.ij = sext i32 %i.ii to i64
  %i.ik = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.il = sub nsw i64 %i.ik, %i.ij
  store i64 %i.il, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.im = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.in = add nsw i64 %i.im, -1
  store i64 %i.in, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.io = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.io(ptr noundef nonnull %.0.i67) #57, !inline_history !4205
  %i.ip = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i4.i.i, label %vdbeIsMatchingIndexKey.exit, label %bb.bj

bb.bj:                                            ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.iq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.iq(ptr noundef nonnull %i.ip) #57, !inline_history !4206
  br label %vdbeIsMatchingIndexKey.exit

bb.bk:                                            ; preds = %.thread111.i
  %i.ir = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ir(ptr noundef nonnull %.0.i67) #57, !inline_history !4205
  br label %vdbeIsMatchingIndexKey.exit

.critedge.thread.thread:                          ; preds = %bb.q, %sqlite3Malloc.exit, %bb.p
  %.057.i.ph = phi i32 [ 11, %bb.p ], [ 7, %sqlite3Malloc.exit ], [ 7, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #57
  br label %.loopexit93

vdbeIsMatchingIndexKey.exit:                      ; preds = %sqlite3_mutex_enter.exit.i.i, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #57
  %i.is = icmp eq i32 %.6, 0
  %i.it = icmp ne i32 %.6113.i, 0
  %or.cond = or i1 %i.is, %i.it
  br i1 %or.cond, label %.critedge, label %bb.bl

bb.bl:                                            ; preds = %vdbeIsMatchingIndexKey.exit
  store i16 0, ptr %i.by, align 2, !tbaa !1618
  %i.iu = load i8, ptr %i.bz, align 1, !tbaa !1060
  %i.iv = and i8 %i.iu, -7
  store i8 %i.iv, ptr %i.bz, align 1, !tbaa !1060
  %i.iw = load i8, ptr %0, align 8, !tbaa !1120
  %.not.i59 = icmp eq i8 %i.iw, 0
  br i1 %.not.i59, label %bb.bm, label %moveToLeftmost.exit.sink.split.i

bb.bm:                                            ; preds = %bb.bl
  %i.ix = load ptr, ptr %i.ca, align 8, !tbaa !1115 ; 3 uses
  %i.iy = load i16, ptr %i.cb, align 2, !tbaa !1119 ; 2 uses
  %i.iz = add i16 %i.iy, 1                        ; 2 uses
  store i16 %i.iz, ptr %i.cb, align 2, !tbaa !1119
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.jb = load i16, ptr %i.ja, align 8, !tbaa !1501
  %.not11.i = icmp ult i16 %i.iz, %i.jb
  br i1 %.not11.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i16 %i.iy, ptr %i.cb, align 2, !tbaa !1119
  br label %moveToLeftmost.exit.sink.split.i

bb.bo:                                            ; preds = %bb.bm
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jd = load i8, ptr %i.jc, align 8, !tbaa !1116
  %.not12.i = icmp eq i8 %i.jd, 0
  br i1 %.not12.i, label %.preheader.i, label %sqlite3BtreeNext.exit

.preheader.i:                                     ; preds = %bb.bo, %bb.bt
  %i.je = phi ptr [ %i.kq, %bb.bt ], [ %i.ix, %bb.bo ] ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load i8, ptr %i.jf, align 8, !tbaa !1116
  %.not.i.i61 = icmp eq i8 %i.jg, 0
  br i1 %.not.i.i61, label %bb.bp, label %sqlite3BtreeNext.exit

bb.bp:                                            ; preds = %.preheader.i
  %i.jh = load i8, ptr %i.cc, align 4, !tbaa !1613 ; 3 uses
  %i.ji = icmp sgt i8 %i.jh, 18
  br i1 %i.ji, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 78686, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !4207
  br label %.critedge

bb.br:                                            ; preds = %bb.bp
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 80
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !989
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 96
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !1118
  %i.jn = load i16, ptr %i.cb, align 2, !tbaa !1119 ; 2 uses
  %i.jo = zext i16 %i.jn to i64
  %i.jp = shl nuw nsw i64 %i.jo, 1
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jp ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !733
  %i.js = zext i8 %i.jr to i64
  %i.jt = shl nuw nsw i64 %i.js, 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 1
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !733
  %i.jw = zext i8 %i.jv to i64
  %i.jx = or disjoint i64 %i.jt, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.je, i64 26
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !1117
  %i.ka = zext i16 %i.jz to i64
  %i.kb = and i64 %i.jx, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 1
  %i.ke = tail call i32 @llvm.bswap.i32(i32 %i.kd)
  store i16 0, ptr %i.by, align 2, !tbaa !1618
  %i.kf = load i8, ptr %i.bz, align 1, !tbaa !1060
  %i.kg = and i8 %i.kf, -7
  store i8 %i.kg, ptr %i.bz, align 1, !tbaa !1060
  %i.kh = sext i8 %i.jh to i64                    ; 2 uses
  %i.ki = getelementptr inbounds [2 x i8], ptr %i.cd, i64 %i.kh
  store i16 %i.jn, ptr %i.ki, align 2, !tbaa !783
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.kh
  store ptr %i.je, ptr %i.kj, align 8, !tbaa !1514
  store i16 0, ptr %i.cb, align 2, !tbaa !1119
  %i.kk = add nsw i8 %i.jh, 1
  store i8 %i.kk, ptr %i.cc, align 4, !tbaa !1613
  %i.kl = load ptr, ptr %i.cf, align 8, !tbaa !1220
  %i.km = load i8, ptr %i.cg, align 2, !tbaa !1794
  %i.kn = zext i8 %i.km to i32
  %i.ko = tail call fastcc i32 @getAndInitPage(ptr noundef %i.kl, i32 noundef %i.ke, ptr noundef nonnull %i.ca, i32 noundef %i.kn), !inline_history !4208 ; 2 uses
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %bb.bs, label %.loopexit

bb.bs:                                            ; preds = %bb.br
  %i.kq = load ptr, ptr %i.ca, align 8, !tbaa !1115 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load i16, ptr %i.kr, align 8, !tbaa !1501
  %i.kt = icmp eq i16 %i.ks, 0
  br i1 %i.kt, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !1497
  %i.kw = load i8, ptr %i.ch, align 1, !tbaa !1614
  %.not.i69 = icmp eq i8 %i.kv, %i.kw
  br i1 %.not.i69, label %.preheader.i, label %bb.bu, !llvm.loop !85

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.kx = getelementptr i8, ptr %i.kq, i64 112
  %.val.i.i = load ptr, ptr %i.kx, align 8, !tbaa !1010 ; 7 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 52
  %i.kz = load i16, ptr %i.ky, align 4, !tbaa !895
  %i.la = and i16 %i.kz, 32
  %.not.i.i.i.i70 = icmp eq i16 %i.la, 0
  br i1 %.not.i.i.i.i70, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
end_hunk_0
begin_hunk_1_@fts3EvalTestExpr:bb.a
  br i1 %.not.i4.i112.i, label %sqlite3_free.exit113.i, label %bb.bd

bb.bd:                                            ; preds = %sqlite3_mutex_enter.exit.i111.i
  %i.io = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.io(ptr noundef nonnull %i.in) #57, !inline_history !6186
  br label %sqlite3_free.exit113.i

bb.be:                                            ; preds = %bb.ba
  %i.ip = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ip(ptr noundef nonnull %i.gy) #57, !inline_history !6185
  br label %sqlite3_free.exit113.i

sqlite3_free.exit113.i:                           ; preds = %bb.be, %bb.bd, %sqlite3_mutex_enter.exit.i111.i, %sqlite3_free.exit.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  store ptr null, ptr %i.iq, align 8, !tbaa !2785
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  store i32 0, ptr %i.ir, align 8, !tbaa !2788
  br label %fts3EvalDeferredPhrase.exit

bb.bf:                                            ; preds = %sqlite3_malloc64.exit.i.i
  %i.is = load ptr, ptr %i.hg, align 8, !tbaa !2780
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !2668
  %i.iv = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef %i.iu, ptr noundef nonnull %i.a), !inline_history !6187 ; 2 uses
  %i.iw = load ptr, ptr %i.hg, align 8, !tbaa !2780 ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !2667
  %i.iy = sext i32 %i.iv to i64
  %i.iz = trunc i64 %i.ix to i32
  %i.ja = sub i32 %i.iz, %i.iv                    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !2668
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 %i.iy
  %i.je = sext i32 %i.ja to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hl, ptr align 1 %i.jd, i64 %i.je, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  %i.jf = icmp eq ptr %.081209.i, null
  %i.jg = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  br i1 %i.jf, label %.thread165.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #57
  store ptr %i.hl, ptr %i.b, align 8, !tbaa !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #57
  store ptr %.081209.i, ptr %i.c, align 8, !tbaa !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #57
  store ptr %i.hl, ptr %i.d, align 8, !tbaa !741
  %i.jh = sub nsw i32 %i.jg, %.072211.i
  %i.ji = call fastcc i32 @fts3PoslistPhraseMerge(ptr noundef %i.b, i32 noundef %i.jh, i32 noundef 0, i32 noundef 1, ptr noundef %i.c, ptr noundef %i.d), !inline_history !6188 ; 0 uses
  %i.jj = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i114.i = icmp eq i32 %i.jj, 0
  br i1 %.not.i114.i, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jk = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i115.i = icmp eq ptr %i.jk, null
  br i1 %.not.i.i115.i, label %sqlite3_mutex_enter.exit.i116.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.jl(ptr noundef nonnull %i.jk) #57, !inline_history !6183
  br label %sqlite3_mutex_enter.exit.i116.i

sqlite3_mutex_enter.exit.i116.i:                  ; preds = %bb.bi, %bb.bh
  %i.jm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.jn = tail call i32 %i.jm(ptr noundef nonnull %.081209.i) #57, !inline_history !6184
  %i.jo = sext i32 %i.jn to i64
  %i.jp = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.jq = sub nsw i64 %i.jp, %i.jo
  store i64 %i.jq, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.jr = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.js = add nsw i64 %i.jr, -1
  store i64 %i.js, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.jt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.jt(ptr noundef nonnull %.081209.i) #57, !inline_history !6185
  %i.ju = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i117.i = icmp eq ptr %i.ju, null
  br i1 %.not.i4.i117.i, label %sqlite3_free.exit118.i, label %bb.bj

bb.bj:                                            ; preds = %sqlite3_mutex_enter.exit.i116.i
  %i.jv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.jv(ptr noundef nonnull %i.ju) #57, !inline_history !6186
  br label %sqlite3_free.exit118.i

bb.bk:                                            ; preds = %bb.bg
  %i.jw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.jw(ptr noundef nonnull %.081209.i) #57, !inline_history !6185
  br label %sqlite3_free.exit118.i

sqlite3_free.exit118.i:                           ; preds = %bb.bk, %bb.bj, %sqlite3_mutex_enter.exit.i116.i
  %i.jx = load ptr, ptr %i.b, align 8, !tbaa !741
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.hl to i64
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = trunc i64 %i.ka to i32                  ; 2 uses
  %.not103.i = icmp eq i32 %i.kb, 0
  br i1 %.not103.i, label %bb.bl, label %.thread182.i

.thread182.i:                                     ; preds = %sqlite3_free.exit118.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #57
  br label %.thread165.i

bb.bl:                                            ; preds = %sqlite3_free.exit118.i
  %i.kc = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i119.i = icmp eq i32 %i.kc, 0
  br i1 %.not.i119.i, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kd = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i120.i = icmp eq ptr %i.kd, null
  br i1 %.not.i.i120.i, label %sqlite3_mutex_enter.exit.i121.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ke = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.ke(ptr noundef nonnull %i.kd) #57, !inline_history !6183
  br label %sqlite3_mutex_enter.exit.i121.i

sqlite3_mutex_enter.exit.i121.i:                  ; preds = %bb.bn, %bb.bm
  %i.kf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.kg = tail call i32 %i.kf(ptr noundef nonnull %i.hl) #57, !inline_history !6184
  %i.kh = sext i32 %i.kg to i64
  %i.ki = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.kj = sub nsw i64 %i.ki, %i.kh
  store i64 %i.kj, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.kk = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.kl = add nsw i64 %i.kk, -1
  store i64 %i.kl, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.km = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.km(ptr noundef nonnull %i.hl) #57, !inline_history !6185
  %i.kn = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i122.i = icmp eq ptr %i.kn, null
  br i1 %.not.i4.i122.i, label %sqlite3_free.exit123.i, label %bb.bo

bb.bo:                                            ; preds = %sqlite3_mutex_enter.exit.i121.i
  %i.ko = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ko(ptr noundef nonnull %i.kn) #57, !inline_history !6186
  br label %sqlite3_free.exit123.i

bb.bp:                                            ; preds = %bb.bl
  %i.kp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.kp(ptr noundef nonnull %i.hl) #57, !inline_history !6185
  br label %sqlite3_free.exit123.i

sqlite3_free.exit123.i:                           ; preds = %bb.bp, %bb.bo, %sqlite3_mutex_enter.exit.i121.i
  %i.kq = icmp eq ptr %i.gy, null
  br i1 %i.kq, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %sqlite3_free.exit123.i
  %i.kr = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i124.i = icmp eq i32 %i.kr, 0
  br i1 %.not.i124.i, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ks = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i125.i = icmp eq ptr %i.ks, null
  br i1 %.not.i.i125.i, label %sqlite3_mutex_enter.exit.i126.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.kt(ptr noundef nonnull %i.ks) #57, !inline_history !6183
  br label %sqlite3_mutex_enter.exit.i126.i

sqlite3_mutex_enter.exit.i126.i:                  ; preds = %bb.bs, %bb.br
  %i.ku = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.kv = tail call i32 %i.ku(ptr noundef nonnull %i.gy) #57, !inline_history !6184
  %i.kw = sext i32 %i.kv to i64
  %i.kx = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ky = sub nsw i64 %i.kx, %i.kw
  store i64 %i.ky, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.kz = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.la = add nsw i64 %i.kz, -1
  store i64 %i.la, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.lb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.lb(ptr noundef nonnull %i.gy) #57, !inline_history !6185
  %i.lc = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i127.i = icmp eq ptr %i.lc, null
  br i1 %.not.i4.i127.i, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %sqlite3_mutex_enter.exit.i126.i
  %i.ld = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ld(ptr noundef nonnull %i.lc) #57, !inline_history !6186
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %i.le = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.le(ptr noundef nonnull %i.gy) #57, !inline_history !6185
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %sqlite3_mutex_enter.exit.i126.i, %sqlite3_free.exit123.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  store ptr null, ptr %i.lf, align 8, !tbaa !2785
  %i.lg = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  store i32 0, ptr %i.lg, align 8, !tbaa !2788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #57
  br label %fts3EvalDeferredPhrase.exit

.thread165.i:                                     ; preds = %.thread182.i, %bb.bf, %.lr.ph.i80
  %.375174.i = phi i32 [ %i.jg, %.thread182.i ], [ %i.jg, %bb.bf ], [ %.072211.i, %.lr.ph.i80 ] ; 4 uses
  %.480173.i = phi i32 [ %i.kb, %.thread182.i ], [ %i.ja, %bb.bf ], [ %.076210.i, %.lr.ph.i80 ] ; 3 uses
  %.485172.i = phi ptr [ %i.hl, %.thread182.i ], [ %i.hl, %bb.bf ], [ %.081209.i, %.lr.ph.i80 ] ; 12 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.lh = load i32, ptr %i.ha, align 8, !tbaa !570
  %i.li = sext i32 %i.lh to i64
  %i.lj = icmp slt i64 %indvars.iv.next.i, %i.li
  br i1 %i.lj, label %.lr.ph.i80, label %._crit_edge.i83, !llvm.loop !6189

._crit_edge.i83:                                  ; preds = %.thread165.i
  %i.lk = icmp sgt i32 %.375174.i, -1
  br i1 %i.lk, label %bb.bw, label %.thread196.i

bb.bw:                                            ; preds = %._crit_edge.i83
  %i.ll = getelementptr inbounds nuw i8, ptr %i.gx, i64 60
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !570 ; 3 uses
  %i.ln = icmp slt i32 %i.lm, 0
  br i1 %i.ln, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.lo = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  store ptr %.485172.i, ptr %i.lo, align 8, !tbaa !2785
  %i.lp = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  store i32 %.480173.i, ptr %i.lp, align 8, !tbaa !2788
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !2751
  %i.ls = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store i64 %i.lr, ptr %i.ls, align 8, !tbaa !2809
  store i32 1, ptr %i.gz, align 8, !tbaa !2784
  br label %.thread196.i

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #57
  %i.lt = sext i32 %.480173.i to i64
  %i.lu = shl nsw i64 %i.lt, 1
  %i.lv = add nsw i64 %i.lu, 8                    ; 2 uses
  %i.lw = icmp samesign ugt i32 %i.lm, %.375174.i ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.gx, i64 40 ; 4 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !2785 ; 2 uses
  %i.lz = sub nsw i32 %i.lm, %.375174.i
  %.sink.i = select i1 %i.lw, ptr %.485172.i, ptr %i.ly
  %.081.lcssa.sink.i = select i1 %i.lw, ptr %i.ly, ptr %.485172.i
  %.0.i = tail call i32 @llvm.abs.i32(i32 %i.lz, i1 true)
  store ptr %.sink.i, ptr %i.e, align 8, !tbaa !741
  store ptr %.081.lcssa.sink.i, ptr %i.f, align 8, !tbaa !741
  %i.ma = tail call i32 @sqlite3_initialize(), !inline_history !6190
  %.not.i.i129.i = icmp eq i32 %i.ma, 0
  br i1 %.not.i.i129.i, label %sqlite3_malloc64.exit.i130.i, label %bb.bz

sqlite3_malloc64.exit.i130.i:                     ; preds = %bb.by
  %i.mb = tail call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.lv), !inline_history !6190 ; 4 uses
  %.not.i131.i = icmp eq ptr %i.mb, null
  br i1 %.not.i131.i, label %bb.bz, label %bb.cf

bb.bz:                                            ; preds = %sqlite3_malloc64.exit.i130.i, %bb.by
  %i.mc = icmp eq ptr %.485172.i, null
  br i1 %i.mc, label %bb.ct, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.md = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i132.i = icmp eq i32 %i.md, 0
  br i1 %.not.i132.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.me = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i133.i = icmp eq ptr %i.me, null
  br i1 %.not.i.i133.i, label %sqlite3_mutex_enter.exit.i134.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.mf(ptr noundef nonnull %i.me) #57, !inline_history !6183
  br label %sqlite3_mutex_enter.exit.i134.i

sqlite3_mutex_enter.exit.i134.i:                  ; preds = %bb.cc, %bb.cb
  %i.mg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.mh = tail call i32 %i.mg(ptr noundef nonnull %.485172.i) #57, !inline_history !6184
  %i.mi = sext i32 %i.mh to i64
  %i.mj = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.mk = sub nsw i64 %i.mj, %i.mi
  store i64 %i.mk, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ml = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.mm = add nsw i64 %i.ml, -1
  store i64 %i.mm, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.mn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.mn(ptr noundef nonnull %.485172.i) #57, !inline_history !6185
  %i.mo = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i135.i = icmp eq ptr %i.mo, null
  br i1 %.not.i4.i135.i, label %bb.ct, label %bb.cd

bb.cd:                                            ; preds = %sqlite3_mutex_enter.exit.i134.i
  %i.mp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.mp(ptr noundef nonnull %i.mo) #57, !inline_history !6186
  br label %bb.ct

bb.ce:                                            ; preds = %bb.ca
  %i.mq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.mq(ptr noundef nonnull %.485172.i) #57, !inline_history !6185
  br label %bb.ct

bb.cf:                                            ; preds = %sqlite3_malloc64.exit.i130.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mb, i8 0, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.lv, i1 false)
  store ptr %i.mb, ptr %i.g, align 8, !tbaa !741
  store ptr %i.mb, ptr %i.lx, align 8, !tbaa !2785
  %i.mr = call fastcc i32 @fts3PoslistPhraseMerge(ptr noundef %i.g, i32 noundef %.0.i, i32 noundef 0, i32 noundef 1, ptr noundef %i.e, ptr noundef %i.f), !inline_history !6188
  %.not99.i = icmp eq i32 %i.mr, 0
  br i1 %.not99.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i32 1, ptr %i.gz, align 8, !tbaa !2784
  %i.ms = load ptr, ptr %i.g, align 8, !tbaa !741
  %i.mt = load ptr, ptr %i.lx, align 8, !tbaa !2785
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = ptrtoint ptr %i.mt to i64
  %i.mw = sub i64 %i.mu, %i.mv
  %i.mx = trunc i64 %i.mw to i32
  br label %bb.cn

bb.ch:                                            ; preds = %bb.cf
  %i.my = load ptr, ptr %i.g, align 8, !tbaa !741 ; 4 uses
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %sqlite3_free.exit141.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.na = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i137.i = icmp eq i32 %i.na, 0
  br i1 %.not.i137.i, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.nb = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i138.i = icmp eq ptr %i.nb, null
  br i1 %.not.i.i138.i, label %sqlite3_mutex_enter.exit.i139.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.nc(ptr noundef nonnull %i.nb) #57, !inline_history !6183
  br label %sqlite3_mutex_enter.exit.i139.i

sqlite3_mutex_enter.exit.i139.i:                  ; preds = %bb.ck, %bb.cj
  %i.nd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.ne = tail call i32 %i.nd(ptr noundef nonnull %i.my) #57, !inline_history !6184
  %i.nf = sext i32 %i.ne to i64
  %i.ng = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.nh = sub nsw i64 %i.ng, %i.nf
  store i64 %i.nh, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ni = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.nj = add nsw i64 %i.ni, -1
  store i64 %i.nj, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.nk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.nk(ptr noundef nonnull %i.my) #57, !inline_history !6185
  %i.nl = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i140.i = icmp eq ptr %i.nl, null
  br i1 %.not.i4.i140.i, label %sqlite3_free.exit141.i, label %bb.cl

bb.cl:                                            ; preds = %sqlite3_mutex_enter.exit.i139.i
  %i.nm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.nm(ptr noundef nonnull %i.nl) #57, !inline_history !6186
  br label %sqlite3_free.exit141.i

bb.cm:                                            ; preds = %bb.ci
  %i.nn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.nn(ptr noundef nonnull %i.my) #57, !inline_history !6185
  br label %sqlite3_free.exit141.i

sqlite3_free.exit141.i:                           ; preds = %bb.cm, %bb.cl, %sqlite3_mutex_enter.exit.i139.i, %bb.ch
  store ptr null, ptr %i.lx, align 8, !tbaa !2785
  br label %bb.cn

bb.cn:                                            ; preds = %sqlite3_free.exit141.i, %bb.cg
  %.sink250.i = phi i32 [ 0, %sqlite3_free.exit141.i ], [ %i.mx, %bb.cg ]
  %i.no = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  store i32 %.sink250.i, ptr %i.no, align 8, !tbaa !2788
  %i.np = icmp eq ptr %.485172.i, null
  br i1 %i.np, label %sqlite3_free.exit136.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nq = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i142.i = icmp eq i32 %i.nq, 0
  br i1 %.not.i142.i, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nr = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i143.i = icmp eq ptr %i.nr, null
  br i1 %.not.i.i143.i, label %sqlite3_mutex_enter.exit.i144.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ns = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.ns(ptr noundef nonnull %i.nr) #57, !inline_history !6183
  br label %sqlite3_mutex_enter.exit.i144.i

sqlite3_mutex_enter.exit.i144.i:                  ; preds = %bb.cq, %bb.cp
  %i.nt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.nu = tail call i32 %i.nt(ptr noundef nonnull %.485172.i) #57, !inline_history !6184
  %i.nv = sext i32 %i.nu to i64
  %i.nw = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.nx = sub nsw i64 %i.nw, %i.nv
  store i64 %i.nx, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ny = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.nz = add nsw i64 %i.ny, -1
  store i64 %i.nz, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.oa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.oa(ptr noundef nonnull %.485172.i) #57, !inline_history !6185
  %i.ob = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i145.i = icmp eq ptr %i.ob, null
  br i1 %.not.i4.i145.i, label %sqlite3_free.exit136.i, label %bb.cr

bb.cr:                                            ; preds = %sqlite3_mutex_enter.exit.i144.i
  %i.oc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.oc(ptr noundef nonnull %i.ob) #57, !inline_history !6186
  br label %sqlite3_free.exit136.i

bb.cs:                                            ; preds = %bb.co
  %i.od = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.od(ptr noundef nonnull %.485172.i) #57, !inline_history !6185
  br label %sqlite3_free.exit136.i

sqlite3_free.exit136.i:                           ; preds = %bb.cs, %bb.cr, %sqlite3_mutex_enter.exit.i144.i, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #57
  br label %.thread196.i

bb.ct:                                            ; preds = %bb.ce, %bb.cd, %sqlite3_mutex_enter.exit.i134.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #57
  br label %fts3EvalDeferredPhrase.exit

.thread196.i:                                     ; preds = %sqlite3_free.exit136.i, %bb.bx, %._crit_edge.i83, %bb.ar
  %i.oe = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !2785
  %.not100.i = icmp eq ptr %i.of, %i.gy
  %i.og = icmp eq ptr %i.gy, null
  %or.cond.i79 = or i1 %i.og, %.not100.i
  br i1 %or.cond.i79, label %fts3EvalDeferredPhrase.exit, label %bb.cu

bb.cu:                                            ; preds = %.thread196.i
  %i.oh = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i147.i = icmp eq i32 %i.oh, 0
  br i1 %.not.i147.i, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.oi = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i148.i = icmp eq ptr %i.oi, null
end_hunk_1
begin_hunk_2_@bytecodevtabCursorClear:bb.a

bb.k:                                             ; preds = %sqlite3VdbeMemSetNull.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3022
  %i.ad = tail call i32 @sqlite3_finalize(ptr noundef %i.ac) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %sqlite3VdbeMemSetNull.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !3022
  store i32 0, ptr %i.z, align 8, !tbaa !3021
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rtreeMatchArgFree(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !570  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %sqlite3_value_free.exit
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.p, %sqlite3_value_free.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3_value_free.exit ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !1108
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !761  ; 6 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %sqlite3_value_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i16, ptr %i.i, align 4, !tbaa !686
  %i.k = and i16 %i.j, -28672
  %.not.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !684
  %.not3.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not3.i.i.i, label %sqlite3VdbeMemRelease.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %i.h)
  br label %sqlite3VdbeMemRelease.exit.i.i

sqlite3VdbeMemRelease.exit.i.i:                   ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !683
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.o, ptr noundef nonnull %i.h)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !570
  br label %sqlite3_value_free.exit

sqlite3_value_free.exit:                          ; preds = %bb.b, %sqlite3VdbeMemRelease.exit.i.i
  %i.p = phi i32 [ %i.e, %bb.b ], [ %.pre, %sqlite3VdbeMemRelease.exit.i.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !6753

._crit_edge:                                      ; preds = %sqlite3_value_free.exit, %bb.a
  %i.s = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.t = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.t, null
  br i1 %.not.i.i6, label %sqlite3_mutex_enter.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.u(ptr noundef nonnull %i.t) #57, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.g, %bb.f
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.w = tail call i32 %i.v(ptr noundef nonnull %0) #57, !inline_history !13
  %i.x = sext i32 %i.w to i64
  %i.y = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.z = sub nsw i64 %i.y, %i.x
  store i64 %i.z, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ab = add nsw i64 %i.aa, -1
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ac(ptr noundef nonnull %0) #57, !inline_history !749
  %i.ad = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ad, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.h

bb.h:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ae(ptr noundef nonnull %i.ad) #57, !inline_history !750
  br label %sqlite3_free.exit

bb.i:                                             ; preds = %._crit_edge
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.af(ptr noundef nonnull %0) #57, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit.i, %bb.h, %bb.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #46

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #46

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #55

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #46

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #46

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #46

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v2i16(<2 x i16>) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smin.v2i16(<2 x i16>, <2 x i16>) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #46

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #47 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { nofree nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #56 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #57 = { nounwind }
attributes #58 = { nounwind willreturn memory(read) }
attributes #59 = { nounwind willreturn memory(none) }
attributes #60 = { "function-inline-cost-multiplier"="2" }
attributes #61 = { nounwind allocsize(0) }
attributes #62 = { nounwind allocsize(1) }

!llvm.module.flags = !{!545, !546, !547, !548, !549}
!llvm.ident = !{!550}
!llvm.errno.tbaa = !{!555}

!0 = distinct !{null, null}
!1 = distinct !{!1, !598}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !598}
!5 = distinct !{!5, !598}
!6 = distinct !{ptr @sqlite3DbNNFreeNN, ptr @sqlite3_free, null}
!7 = distinct !{null}
!8 = distinct !{!8, !598}
!9 = distinct !{null}
!10 = distinct !{!10, !598}
!11 = distinct !{!11, !598}
!12 = distinct !{null}
!13 = distinct !{ptr @sqlite3_free, null}
!14 = distinct !{!14, !598}
!15 = distinct !{null}
!16 = distinct !{!16, !598}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{ptr @sqlite3_vmprintf, null}
!20 = distinct !{ptr @sqlite3_vfs_find, null}
!21 = distinct !{!21, !598}
!22 = distinct !{ptr @sqlite3_randomness, null}
!23 = distinct !{!23, !598}
!24 = distinct !{null, null}
!25 = distinct !{null}
!26 = distinct !{null, ptr @unixLogErrorAtLine}
!27 = distinct !{null, ptr @sqlite3_mutex_enter}
!28 = distinct !{null, ptr @sqlite3_mutex_leave}
!29 = distinct !{null}
!30 = distinct !{null, null, ptr @sqlite3_mutex_enter}
!31 = distinct !{null, null, ptr @sqlite3_mutex_leave}
!32 = distinct !{!32, !598}
!33 = distinct !{null}
!34 = distinct !{ptr @sqlite3PagerUnref, null, null, null}
!35 = distinct !{null}
!36 = distinct !{!36, !598}
!37 = distinct !{ptr @sqlite3DbFreeNN, ptr @sqlite3_free, null}
!38 = distinct !{ptr @sqlite3DbStrDup, null}
!39 = distinct !{null, ptr @sqlite3_mutex_enter}
!40 = distinct !{null, ptr @sqlite3_mutex_leave}
!41 = distinct !{null}
!42 = distinct !{null}
!43 = distinct !{null}
!44 = distinct !{ptr @sqlite3_column_text, null, ptr @sqlite3_mutex_enter}
!45 = distinct !{ptr @sqlite3_column_text, null, ptr @sqlite3_mutex_leave}
!46 = distinct !{ptr @sqlite3_column_type, null, ptr @sqlite3_mutex_enter}
!47 = distinct !{ptr @sqlite3_column_type, null, ptr @sqlite3_mutex_leave}
!48 = distinct !{null}
!49 = distinct !{null, null}
!50 = distinct !{null}
!51 = distinct !{null, null, null}
!52 = distinct !{null, null}
!53 = distinct !{null, ptr @sqlite3DbMallocZero, null}
!54 = distinct !{null}
!55 = distinct !{null}
!56 = distinct !{null}
!57 = distinct !{null, ptr @sqlite3VtabUnlock}
!58 = distinct !{null, ptr @sqlite3VtabUnlock, null}
!59 = distinct !{!59, !598}
!60 = distinct !{!60, !598}
!61 = distinct !{null}
!62 = distinct !{!62, !598}
!63 = distinct !{!63, !598}
!64 = distinct !{null}
!65 = distinct !{null}
!66 = distinct !{!66, !598}
!67 = distinct !{!67, !598}
!68 = distinct !{null}
!69 = distinct !{ptr @btreeGetPage, null}
!70 = distinct !{!70, !598}
!71 = distinct !{!71, !598}
!72 = distinct !{null}
!73 = distinct !{null}
!74 = distinct !{null}
!75 = distinct !{ptr @sqlite3_result_error_nomem, null}
!76 = distinct !{null}
!77 = distinct !{null}
!78 = distinct !{null, ptr @sqlite3_result_error_toobig, ptr @sqlite3VdbeMemSetStr}
!79 = distinct !{null, ptr @sqlite3_msize}
!80 = distinct !{null, ptr @sqlite3_mutex_enter}
!81 = distinct !{!81, !598}
!82 = distinct !{null, ptr @sqlite3_mutex_leave}
!83 = distinct !{null}
!84 = distinct !{null, null}
!85 = distinct !{!85, !598}
!86 = distinct !{!86, !598}
!87 = distinct !{!87, !598}
!88 = distinct !{ptr @sqlite3DbMallocZero, null}
!89 = distinct !{ptr @sqlite3_value_bytes, null}
end_hunk_2
