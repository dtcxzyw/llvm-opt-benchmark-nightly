Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sbdCore?download=true
inline.NumInlined: 748
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Sbd_ManFindCands:bb.a
  %i.ec = tail call noalias ptr @malloc(i64 noundef %i.ea) #31
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ed = phi ptr [ %i.eb, %bb.aj ], [ %i.ec, %bb.ak ]
  store ptr %i.ed, ptr %i.dx, align 8, !tbaa !48
  br label %Vec_IntGrow.exit11.sink.split.i118.i

Vec_IntGrow.exit11.sink.split.i118.i:             ; preds = %bb.al, %Vec_IntGrow.exit.i121.i
  %spec.select.sink.i119.i = phi i32 [ %spec.select.i115.i, %bb.al ], [ 16, %Vec_IntGrow.exit.i121.i ]
  store i32 %spec.select.sink.i119.i, ptr %i.df, align 8, !tbaa !49
  %.pre245.i = load i32, ptr %i.dl, align 4, !tbaa !47
  %.pre246.i = load ptr, ptr %i.x, align 8, !tbaa !83
  br label %Vec_IntPush.exit122.i

Vec_IntPush.exit122.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i118.i, %bb.ah, %Vec_IntPush.exit114.i
  %i.ee = phi ptr [ %i.df, %Vec_IntPush.exit114.i ], [ %i.df, %bb.ah ], [ %.pre246.i, %Vec_IntGrow.exit11.sink.split.i118.i ] ; 6 uses
  %i.ef = phi i32 [ %i.dm, %Vec_IntPush.exit114.i ], [ %i.dm, %bb.ah ], [ %.pre245.i, %Vec_IntGrow.exit11.sink.split.i118.i ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !48
  %i.ei = add nsw i32 %i.ef, 1
  store i32 %i.ei, ptr %i.dl, align 4, !tbaa !47
  %i.ej = sext i32 %i.ef to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.ej
  store i32 %i.cw, ptr %i.ek, align 4, !tbaa !14
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 3 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !47 ; 7 uses
  %i.en = load i32, ptr %i.ee, align 8, !tbaa !49
  %i.eo = icmp eq i32 %i.em, %i.en
  br i1 %i.eo, label %bb.am, label %Vec_IntPush.exit130.i

bb.am:                                            ; preds = %Vec_IntPush.exit122.i
  %i.ep = icmp slt i32 %i.em, 16
  br i1 %i.ep, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !48 ; 2 uses
  %.not9.i.i128.i = icmp eq ptr %i.er, null
  br i1 %.not9.i.i128.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.es = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.er, i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i129.i

bb.ap:                                            ; preds = %bb.an
  %i.et = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i129.i

Vec_IntGrow.exit.i129.i:                          ; preds = %bb.ap, %bb.ao
  %i.eu = phi ptr [ %i.es, %bb.ao ], [ %i.et, %bb.ap ]
  store ptr %i.eu, ptr %i.eq, align 8, !tbaa !48
  br label %Vec_IntGrow.exit11.sink.split.i126.i

bb.aq:                                            ; preds = %bb.am
  %i.ev = icmp samesign ult i32 %i.em, 1073741823
  %i.ew = shl nuw nsw i32 %i.em, 1
  %spec.select.i123.i = select i1 %i.ev, i32 %i.ew, i32 2147483647 ; 3 uses
  %.not.i9.i124.i = icmp samesign ult i32 %i.em, %spec.select.i123.i
  br i1 %.not.i9.i124.i, label %bb.ar, label %Vec_IntPush.exit130.i

bb.ar:                                            ; preds = %bb.aq
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !48 ; 2 uses
  %.not9.i10.i125.i = icmp eq ptr %i.ey, null
  %i.ez = zext nneg i32 %spec.select.i123.i to i64
  %i.fa = shl nuw nsw i64 %i.ez, 2                ; 2 uses
  br i1 %.not9.i10.i125.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fb = tail call ptr @realloc(ptr noundef nonnull %i.ey, i64 noundef %i.fa) #34
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.fc = tail call noalias ptr @malloc(i64 noundef %i.fa) #31
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fd = phi ptr [ %i.fb, %bb.as ], [ %i.fc, %bb.at ]
  store ptr %i.fd, ptr %i.ex, align 8, !tbaa !48
  br label %Vec_IntGrow.exit11.sink.split.i126.i

Vec_IntGrow.exit11.sink.split.i126.i:             ; preds = %bb.au, %Vec_IntGrow.exit.i129.i
  %spec.select.sink.i127.i = phi i32 [ %spec.select.i123.i, %bb.au ], [ 16, %Vec_IntGrow.exit.i129.i ]
  store i32 %spec.select.sink.i127.i, ptr %i.ee, align 8, !tbaa !49
  %.pre247.i = load i32, ptr %i.el, align 4, !tbaa !47
  br label %Vec_IntPush.exit130.i

Vec_IntPush.exit130.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i126.i, %bb.aq, %Vec_IntPush.exit122.i
  %i.fe = phi i32 [ %i.em, %Vec_IntPush.exit122.i ], [ %i.em, %bb.aq ], [ %.pre247.i, %Vec_IntGrow.exit11.sink.split.i126.i ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !48
  %i.fh = add nsw i32 %i.fe, 1
  store i32 %i.fh, ptr %i.el, align 4, !tbaa !47
  %i.fi = sext i32 %i.fe to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.fi
  store i32 %i.cx, ptr %i.fj, align 4, !tbaa !14
  br label %Sbd_ManFindCandsSimple.exit

bb.av:                                            ; preds = %bb.y
  %indvars.iv.next196.i = add nuw i64 %indvars.iv195.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next196.i to i32
  %exitcond288 = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond288, label %.loopexit134.i, label %bb.y, !llvm.loop !288

.loopexit132.i:                                   ; preds = %.loopexit131.i, %.lr.ph167.i
  %indvars.iv.next212.i = add nuw i32 %indvars.iv211.i, 1
  %indvars.iv.next223.i = add nuw nsw i64 %indvars.iv222.i, 1
  %indvars.iv.next232.i = add nuw nsw i64 %indvars.iv231.i, 1
  %exitcond242.not.i = icmp eq i64 %indvars.iv.next239.i, %wide.trip.count.i
  br i1 %exitcond242.not.i, label %Sbd_ManFindCandsSimple.exit, label %.lr.ph167.i, !llvm.loop !289

.lr.ph167.i:                                      ; preds = %.loopexit135.i, %.loopexit132.i
  %indvars.iv238.i = phi i64 [ %indvars.iv.next239.i, %.loopexit132.i ], [ 0, %.loopexit135.i ] ; 3 uses
  %indvars.iv231.i = phi i64 [ %indvars.iv.next232.i, %.loopexit132.i ], [ 1, %.loopexit135.i ] ; 2 uses
  %indvars.iv222.i = phi i64 [ %indvars.iv.next223.i, %.loopexit132.i ], [ 2, %.loopexit135.i ] ; 2 uses
  %indvars.iv211.i = phi i32 [ %indvars.iv.next212.i, %.loopexit132.i ], [ 3, %.loopexit135.i ] ; 2 uses
  %indvars.iv.next239.i = add nuw nsw i64 %indvars.iv238.i, 1 ; 3 uses
  %i.fk = icmp slt i64 %indvars.iv.next239.i, %i.h
  br i1 %i.fk, label %.lr.ph165.i, label %.loopexit132.i

.lr.ph165.i:                                      ; preds = %.lr.ph167.i
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv238.i
  br label %bb.aw

.loopexit131.i:                                   ; preds = %.loopexit.i, %bb.aw
  %indvars.iv.next214.i = add i32 %indvars.iv213.i, 1
  %indvars.iv.next225.i = add nuw nsw i64 %indvars.iv224.i, 1
  %exitcond237.not.i = icmp eq i64 %indvars.iv.next234.i, %wide.trip.count.i
  br i1 %exitcond237.not.i, label %.loopexit132.i, label %bb.aw, !llvm.loop !290

bb.aw:                                            ; preds = %.loopexit131.i, %.lr.ph165.i
  %indvars.iv233.i = phi i64 [ %indvars.iv231.i, %.lr.ph165.i ], [ %indvars.iv.next234.i, %.loopexit131.i ] ; 3 uses
  %indvars.iv224.i = phi i64 [ %indvars.iv222.i, %.lr.ph165.i ], [ %indvars.iv.next225.i, %.loopexit131.i ] ; 2 uses
  %indvars.iv213.i = phi i32 [ %indvars.iv211.i, %.lr.ph165.i ], [ %indvars.iv.next214.i, %.loopexit131.i ] ; 2 uses
  %indvars.iv.next234.i = add nuw nsw i64 %indvars.iv233.i, 1 ; 3 uses
  %i.fm = trunc nuw i64 %indvars.iv.next234.i to i32
  %i.fn = icmp sgt i32 %2, %i.fm
  br i1 %i.fn, label %.lr.ph163.i, label %.loopexit131.i

.lr.ph163.i:                                      ; preds = %bb.aw
  %i.fo = sext i32 %indvars.iv213.i to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv233.i
  br label %bb.ax

.loopexit.i:                                      ; preds = %bb.ba, %bb.ax
  %indvars.iv.next216.i = add nsw i64 %indvars.iv215.i, 1
  %exitcond292 = icmp eq i32 %2, %i.fq
  br i1 %exitcond292, label %.loopexit131.i, label %bb.ax, !llvm.loop !291

bb.ax:                                            ; preds = %.loopexit.i, %.lr.ph163.i
  %indvars.iv226.i = phi i64 [ %indvars.iv224.i, %.lr.ph163.i ], [ %indvars.iv.next227.i, %.loopexit.i ] ; 3 uses
  %indvars.iv215.i = phi i64 [ %i.fo, %.lr.ph163.i ], [ %indvars.iv.next216.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %i.fq = trunc i64 %indvars.iv.next227.i to i32  ; 2 uses
  %i.fr = icmp sgt i32 %2, %i.fq
  br i1 %i.fr, label %.lr.ph161.i, label %.loopexit.i

.lr.ph161.i:                                      ; preds = %bb.ax
  %i.fs = load i64, ptr %i.fl, align 8, !tbaa !89
  %i.ft = load i64, ptr %i.fp, align 8, !tbaa !89
  %i.fu = or i64 %i.ft, %i.fs
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv226.i
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !89
  %i.fx = or i64 %i.fu, %i.fw
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %.lr.ph161.i
  %indvars.iv217.i = phi i64 [ %indvars.iv215.i, %.lr.ph161.i ], [ %indvars.iv.next218.i, %bb.ba ] ; 3 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv217.i
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !89
  %i.ga = or i64 %i.fx, %i.fz
  %i.gb = icmp eq i64 %i.ga, %i.j
  br i1 %i.gb, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gc = trunc nuw nsw i64 %indvars.iv238.i to i32
  %i.gd = trunc nuw nsw i64 %indvars.iv233.i to i32
  %i.ge = trunc nuw i64 %indvars.iv226.i to i32
  %i.gf = trunc nsw i64 %indvars.iv217.i to i32
  tail call fastcc void @Vec_IntPush(ptr noundef %i.w, i32 noundef %i.gc)
  %i.gg = load ptr, ptr %i.x, align 8, !tbaa !83
  tail call fastcc void @Vec_IntPush(ptr noundef %i.gg, i32 noundef %i.gd)
  %i.gh = load ptr, ptr %i.x, align 8, !tbaa !83
  tail call fastcc void @Vec_IntPush(ptr noundef %i.gh, i32 noundef %i.ge)
  %i.gi = load ptr, ptr %i.x, align 8, !tbaa !83
  tail call fastcc void @Vec_IntPush(ptr noundef %i.gi, i32 noundef %i.gf)
  br label %Sbd_ManFindCandsSimple.exit

bb.ba:                                            ; preds = %bb.ay
  %indvars.iv.next218.i = add nsw i64 %indvars.iv217.i, 1 ; 2 uses
  %lftr.wideiv289 = trunc i64 %indvars.iv.next218.i to i32
  %exitcond290 = icmp eq i32 %2, %lftr.wideiv289
  br i1 %exitcond290, label %.loopexit.i, label %bb.ay, !llvm.loop !292

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  br label %.lr.ph

.lr.ph159.preheader:                              ; preds = %bb.bf
  %wide.trip.count219 = zext nneg i32 %2 to i64
  %wide.trip.count214 = zext nneg i32 %2 to i64
  br label %.lr.ph159

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bf
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.bf ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !89
  %i.gl = icmp eq i64 %i.gk, %i.j
  br i1 %i.gl, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %.lr.ph
  %i.gm = trunc nuw nsw i64 %indvars.iv to i32
  %i.gn = load i32, ptr %i.p, align 8, !tbaa !49
  %i.go = icmp eq i32 %i.gn, 0
  %i.gp = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !48 ; 3 uses
  br i1 %i.go, label %bb.bc, label %Vec_IntPush.exit

bb.bc:                                            ; preds = %bb.bb
  %.not9.i.i = icmp eq ptr %i.gq, null
  br i1 %.not9.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gr = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gq, i64 noundef 64) #34
  %.pre298.pre = load i32, ptr %i.q, align 4, !tbaa !47
  br label %Vec_IntGrow.exit11.sink.split.i

bb.be:                                            ; preds = %bb.bc
  %i.gs = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.bd, %bb.be
  %.pre298 = phi i32 [ %.pre298.pre, %bb.bd ], [ 0, %bb.be ]
  %i.gt = phi ptr [ %i.gr, %bb.bd ], [ %i.gs, %bb.be ] ; 2 uses
  store ptr %i.gt, ptr %i.gp, align 8, !tbaa !48
  store i32 16, ptr %i.p, align 8, !tbaa !49
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.bb, %Vec_IntGrow.exit11.sink.split.i
  %i.gu = phi i32 [ %.pre298, %Vec_IntGrow.exit11.sink.split.i ], [ 0, %bb.bb ] ; 2 uses
  %i.gv = phi ptr [ %i.gt, %Vec_IntGrow.exit11.sink.split.i ], [ %i.gq, %bb.bb ]
  %i.gw = add nsw i32 %i.gu, 1
  store i32 %i.gw, ptr %i.q, align 4, !tbaa !47
  %i.gx = sext i32 %i.gu to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gx
  store i32 %i.gm, ptr %i.gy, align 4, !tbaa !14
  br label %Sbd_ManFindCandsSimple.exit

bb.bf:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph159.preheader, label %.lr.ph, !llvm.loop !293

.loopexit134:                                     ; preds = %bb.bu, %.lr.ph159
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1
  %exitcond220.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count219
  br i1 %exitcond220.not, label %.lr.ph161.preheader, label %.lr.ph159, !llvm.loop !294

.lr.ph161.preheader:                              ; preds = %.loopexit134
  %wide.trip.count225 = zext nneg i32 %2 to i64
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph161.preheader
  %index = phi i64 [ 0, %.lr.ph161.preheader ], [ %index.next, %vector.body ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %wide.load = load <2 x i64>, ptr %i.gz, align 8, !tbaa !89
  %wide.load368 = load <2 x i64>, ptr %i.ha, align 8, !tbaa !89
  %i.hb = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.hc = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load368)
  %i.hd = trunc nuw nsw <2 x i64> %i.hb to <2 x i32>
  %i.he = trunc nuw nsw <2 x i64> %i.hc to <2 x i32>
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store <2 x i32> %i.hd, ptr %i.hf, align 16, !tbaa !14
  store <2 x i32> %i.he, ptr %i.hg, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph163.preheader, label %.lr.ph161

.lr.ph159:                                        ; preds = %.lr.ph159.preheader, %.loopexit134
  %indvars.iv216 = phi i64 [ 0, %.lr.ph159.preheader ], [ %indvars.iv.next217, %.loopexit134 ] ; 3 uses
  %indvars.iv209 = phi i64 [ 1, %.lr.ph159.preheader ], [ %indvars.iv.next210, %.loopexit134 ] ; 2 uses
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 3 uses
  %i.hi = icmp slt i64 %indvars.iv.next217, %i.h
  br i1 %i.hi, label %.lr.ph157, label %.loopexit134

.lr.ph157:                                        ; preds = %.lr.ph159
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv216
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !89
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph157, %bb.bu
  %indvars.iv211 = phi i64 [ %indvars.iv209, %.lr.ph157 ], [ %indvars.iv.next212, %bb.bu ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv211
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !89
  %i.hn = or i64 %i.hm, %i.hk
  %i.ho = icmp eq i64 %i.hn, %i.j
  br i1 %i.ho, label %bb.bh, label %bb.bu

bb.bh:                                            ; preds = %bb.bg
  %i.hp = trunc nuw nsw i64 %indvars.iv216 to i32
  %i.hq = trunc nuw nsw i64 %indvars.iv211 to i32
  %i.hr = load i32, ptr %i.p, align 8, !tbaa !49
  %i.hs = icmp eq i32 %i.hr, 0
  %i.ht = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !48 ; 3 uses
  br i1 %i.hs, label %bb.bi, label %Vec_IntPush.exit118

bb.bi:                                            ; preds = %bb.bh
  %.not9.i.i116 = icmp eq ptr %i.hu, null
  br i1 %.not9.i.i116, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hv = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hu, i64 noundef 64) #34
  %.pre293.pre = load i32, ptr %i.q, align 4, !tbaa !47
  %.pre294.pre = load ptr, ptr %i.o, align 8, !tbaa !83
  br label %Vec_IntGrow.exit11.sink.split.i114

bb.bk:                                            ; preds = %bb.bi
  %i.hw = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i114

Vec_IntGrow.exit11.sink.split.i114:               ; preds = %bb.bj, %bb.bk
  %.pre294 = phi ptr [ %.pre294.pre, %bb.bj ], [ %i.p, %bb.bk ]
  %.pre293 = phi i32 [ %.pre293.pre, %bb.bj ], [ 0, %bb.bk ]
  %i.hx = phi ptr [ %i.hv, %bb.bj ], [ %i.hw, %bb.bk ] ; 2 uses
  store ptr %i.hx, ptr %i.ht, align 8, !tbaa !48
  store i32 16, ptr %i.p, align 8, !tbaa !49
  br label %Vec_IntPush.exit118

Vec_IntPush.exit118:                              ; preds = %bb.bh, %Vec_IntGrow.exit11.sink.split.i114
  %i.hy = phi ptr [ %.pre294, %Vec_IntGrow.exit11.sink.split.i114 ], [ %i.p, %bb.bh ] ; 6 uses
  %i.hz = phi i32 [ %.pre293, %Vec_IntGrow.exit11.sink.split.i114 ], [ 0, %bb.bh ] ; 2 uses
  %i.ia = phi ptr [ %i.hx, %Vec_IntGrow.exit11.sink.split.i114 ], [ %i.hu, %bb.bh ]
  %i.ib = add nsw i32 %i.hz, 1
  store i32 %i.ib, ptr %i.q, align 4, !tbaa !47
  %i.ic = sext i32 %i.hz to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.ic
  store i32 %i.hp, ptr %i.id, align 4, !tbaa !14
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hy, i64 4 ; 3 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !47 ; 7 uses
  %i.ig = load i32, ptr %i.hy, align 8, !tbaa !49
  %i.ih = icmp eq i32 %i.if, %i.ig
  br i1 %i.ih, label %bb.bl, label %Vec_IntPush.exit126

bb.bl:                                            ; preds = %Vec_IntPush.exit118
  %i.ii = icmp slt i32 %i.if, 16
  br i1 %i.ii, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !48 ; 2 uses
  %.not9.i.i124 = icmp eq ptr %i.ik, null
  br i1 %.not9.i.i124, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.il = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ik, i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i125

bb.bo:                                            ; preds = %bb.bm
  %i.im = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i125

Vec_IntGrow.exit.i125:                            ; preds = %bb.bo, %bb.bn
  %i.in = phi ptr [ %i.il, %bb.bn ], [ %i.im, %bb.bo ]
  store ptr %i.in, ptr %i.ij, align 8, !tbaa !48
  br label %Vec_IntGrow.exit11.sink.split.i122

bb.bp:                                            ; preds = %bb.bl
  %i.io = icmp samesign ult i32 %i.if, 1073741823
  %i.ip = shl nuw nsw i32 %i.if, 1
  %spec.select.i119 = select i1 %i.io, i32 %i.ip, i32 2147483647 ; 3 uses
  %.not.i9.i120 = icmp samesign ult i32 %i.if, %spec.select.i119
  br i1 %.not.i9.i120, label %bb.bq, label %Vec_IntPush.exit126

bb.bq:                                            ; preds = %bb.bp
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !48 ; 2 uses
  %.not9.i10.i121 = icmp eq ptr %i.ir, null
  %i.is = zext nneg i32 %spec.select.i119 to i64
  %i.it = shl nuw nsw i64 %i.is, 2                ; 2 uses
  br i1 %.not9.i10.i121, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.iu = tail call ptr @realloc(ptr noundef nonnull %i.ir, i64 noundef %i.it) #34
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.iv = tail call noalias ptr @malloc(i64 noundef %i.it) #31
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.iw = phi ptr [ %i.iu, %bb.br ], [ %i.iv, %bb.bs ]
  store ptr %i.iw, ptr %i.iq, align 8, !tbaa !48
  br label %Vec_IntGrow.exit11.sink.split.i122

Vec_IntGrow.exit11.sink.split.i122:               ; preds = %bb.bt, %Vec_IntGrow.exit.i125
  %spec.select.sink.i123 = phi i32 [ %spec.select.i119, %bb.bt ], [ 16, %Vec_IntGrow.exit.i125 ]
  store i32 %spec.select.sink.i123, ptr %i.hy, align 8, !tbaa !49
  %.pre295 = load i32, ptr %i.ie, align 4, !tbaa !47
  br label %Vec_IntPush.exit126

Vec_IntPush.exit126:                              ; preds = %Vec_IntPush.exit118, %bb.bp, %Vec_IntGrow.exit11.sink.split.i122
  %i.ix = phi i32 [ %i.if, %Vec_IntPush.exit118 ], [ %i.if, %bb.bp ], [ %.pre295, %Vec_IntGrow.exit11.sink.split.i122 ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !48
  %i.ja = add nsw i32 %i.ix, 1
  store i32 %i.ja, ptr %i.ie, align 4, !tbaa !47
  %i.jb = sext i32 %i.ix to i64
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %i.jb
  store i32 %i.hq, ptr %i.jc, align 4, !tbaa !14
  br label %Sbd_ManFindCandsSimple.exit

bb.bu:                                            ; preds = %bb.bg
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %.loopexit134, label %bb.bg, !llvm.loop !296

.lr.ph163.preheader:                              ; preds = %.lr.ph161, %middle.block
  %wide.trip.count231 = zext nneg i32 %2 to i64
  %n.vec371 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %.lr.ph163.preheader
  %index373 = phi i64 [ 0, %.lr.ph163.preheader ], [ %index.next374, %vector.body372 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph163.preheader ], [ %vec.ind.next, %vector.body372 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index373 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store <4 x i32> %vec.ind, ptr %i.jd, align 16, !tbaa !14
  store <4 x i32> %step.add, ptr %i.je, align 16, !tbaa !14
  %index.next374 = add nuw i64 %index373, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.jf = icmp eq i64 %index.next374, %n.vec371
  br i1 %i.jf, label %middle.block375, label %vector.body372, !llvm.loop !297

middle.block375:                                  ; preds = %vector.body372
  %cmp.n376 = icmp eq i64 %n.vec371, %wide.trip.count
  br i1 %cmp.n376, label %.lr.ph173.preheader, label %.lr.ph163

.lr.ph161:                                        ; preds = %middle.block, %.lr.ph161
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %.lr.ph161 ], [ %n.vec, %middle.block ] ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv221
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !89
  %i.ji = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jh)
  %i.jj = trunc nuw nsw i64 %i.ji to i32
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv221
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !14
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond226.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count225
end_hunk_0
