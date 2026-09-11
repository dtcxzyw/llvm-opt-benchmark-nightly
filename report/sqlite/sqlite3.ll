Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 92
loop-unroll.NumUnrolled: 369
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@jsonLookupStep:bb.a
  %.not304 = icmp eq i8 %i.bb, 0
  %spec.select = select i1 %.not304, i32 %.0248, i32 %i.ay
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.1249 = phi i32 [ %.0248, %bb.l ], [ %spec.select, %bb.m ]
  %i.bc = add i32 %.1249, 1
  br label %bb.l, !llvm.loop !4464

bb.o:                                             ; preds = %bb.l
  %i.bd = add i32 %.0248, -1                      ; 2 uses
  %i.be = add i32 %.0248, 1
  %i.bf = zext i32 %i.bd to i64
  %i.bg = tail call ptr @memchr(ptr noundef nonnull %i.au, i32 noundef 92, i64 noundef %i.bf) #59
  %i.bh = icmp eq ptr %i.bg, null
  %i.bi = zext i1 %i.bh to i32
  br label %bb.q

.preheader:                                       ; preds = %bb.j, %bb.p
  %i.bj = phi i8 [ %.pre, %bb.p ], [ %i.as, %bb.j ]
  %.2250 = phi i32 [ %i.bk, %bb.p ], [ 0, %bb.j ] ; 4 uses
  switch i8 %i.bj, label %bb.p [
    i8 0, label %.critedge5
    i8 46, label %.critedge5
    i8 91, label %.critedge5
  ]

bb.p:                                             ; preds = %.preheader
  %i.bk = add i32 %.2250, 1                       ; 2 uses
  %.phi.trans.insert = zext i32 %i.bk to i64
  %.phi.trans.insert375 = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert375, align 1, !tbaa !733
  br label %.preheader, !llvm.loop !4465

.critedge5:                                       ; preds = %.preheader, %.preheader, %.preheader
  %i.bl = icmp eq i32 %.2250, 0
  br i1 %i.bl, label %.thread321, label %bb.q

bb.q:                                             ; preds = %.critedge5, %bb.o
  %.3251 = phi i32 [ %i.be, %bb.o ], [ %.2250, %.critedge5 ] ; 2 uses
  %.0244 = phi i32 [ %i.bd, %bb.o ], [ %.2250, %.critedge5 ] ; 6 uses
  %.0243 = phi ptr [ %i.au, %bb.o ], [ %i.ar, %.critedge5 ] ; 3 uses
  %.0236 = phi i32 [ %i.bi, %bb.o ], [ 1, %.critedge5 ] ; 3 uses
  %i.bm = and i8 %i.aq, 15
  %.not295 = icmp eq i8 %i.bm, 12
  br i1 %.not295, label %bb.r, label %.thread321

bb.r:                                             ; preds = %bb.q
  %i.bn = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.b)
  %i.bo = add i32 %i.bn, %1                       ; 4 uses
  %i.bp = load i32, ptr %i.b, align 4, !tbaa !570
  %i.bq = add i32 %i.bo, %i.bp                    ; 5 uses
  %i.br = icmp ult i32 %i.bo, %i.bq
  br i1 %i.br, label %.lr.ph357, label %._crit_edge358

.lr.ph357:                                        ; preds = %bb.r
  %i.bs = icmp ne i32 %.0236, 0
  %i.bt = zext i32 %.0244 to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph357, %bb.ae
  %.0245355 = phi i32 [ %i.bo, %.lr.ph357 ], [ %i.dr, %bb.ae ] ; 4 uses
  %i.bu = zext i32 %.0245355 to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !733
  %i.bx = and i8 %i.bw, 15                        ; 3 uses
  %i.by = add nsw i8 %i.bx, -11
  %or.cond = icmp ult i8 %i.by, -4
  br i1 %or.cond, label %.thread321, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %.0245355, ptr noundef %i.b) ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %.thread321, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = add i32 %i.bz, %.0245355                ; 2 uses
  %i.cc = load i32, ptr %i.b, align 4, !tbaa !570 ; 3 uses
  %i.cd = add i32 %i.cc, %i.cb                    ; 8 uses
  %.not301 = icmp ult i32 %i.cd, %i.bq
  br i1 %.not301, label %bb.v, label %.thread321

bb.v:                                             ; preds = %bb.u
  %i.ce = zext i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ce ; 2 uses
  %i.cg = icmp eq i8 %i.bx, 7
  %i.ch = icmp eq i8 %i.bx, 10
  %i.ci = or i1 %i.cg, %i.ch                      ; 2 uses
  %or.cond.i = and i1 %i.bs, %i.ci
  br i1 %or.cond.i, label %bb.w, label %.split

bb.w:                                             ; preds = %bb.v
  %.not.i311 = icmp eq i32 %.0244, %i.cc
  br i1 %.not.i311, label %jsonLabelCompare.exit, label %jsonLabelCompare.exit.thread

.split:                                           ; preds = %bb.v
  %i.cj = zext i1 %i.ci to i32
  %i.ck = tail call fastcc i32 @jsonLabelCompareEscaped(ptr noundef nonnull readonly %.0243, i32 noundef %.0244, i32 noundef range(i32 0, 2) %.0236, ptr noundef readonly %i.cf, i32 noundef %i.cc, i32 noundef range(i32 0, 2) %i.cj)
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %jsonLabelCompare.exit.thread, label %bb.x

jsonLabelCompare.exit:                            ; preds = %bb.w
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %.0243, ptr readonly %i.cf, i64 %i.bt)
  %.not427 = icmp eq i32 %bcmp.i, 0
  br i1 %.not427, label %bb.x, label %jsonLabelCompare.exit.thread

bb.x:                                             ; preds = %.split, %jsonLabelCompare.exit
  %i.cm = zext i32 %i.cd to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !733
  %i.cp = and i8 %i.co, 15
  %i.cq = icmp samesign ugt i8 %i.cp, 12
  br i1 %i.cq, label %.thread321, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %i.cd, ptr noundef %i.b) ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.thread321, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = add i32 %i.cr, %i.cd
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !570
  %i.cv = add i32 %i.ct, %i.cu
  %i.cw = icmp ugt i32 %i.cv, %i.bq
  br i1 %i.cw, label %.thread321, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.cy = load i16, ptr %i.cx, align 4, !tbaa !1966
  %i.cz = add i16 %i.cy, 1                        ; 2 uses
  store i16 %i.cz, ptr %i.cx, align 4, !tbaa !1966
  %i.da = icmp ugt i16 %i.cz, 999
  br i1 %i.da, label %.thread321, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = zext i32 %.3251 to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.db
  %i.dd = tail call fastcc i32 @jsonLookupStep(ptr noundef nonnull %0, i32 noundef %i.cd, ptr noundef nonnull %i.dc, i32 noundef %.0245355) ; 2 uses
  %i.de = load i16, ptr %i.cx, align 4, !tbaa !1966
  %i.df = add i16 %i.de, -1
  store i16 %i.df, ptr %i.cx, align 4, !tbaa !1966
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !1967
  %.not303 = icmp eq i32 %i.dh, 0
  br i1 %.not303, label %.thread321, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @jsonAfterEditSizeAdjust(ptr noundef nonnull %0, i32 noundef %1)
  br label %.thread321

jsonLabelCompare.exit.thread:                     ; preds = %.split, %bb.w, %jsonLabelCompare.exit
  %i.di = zext i32 %i.cd to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !733
  %i.dl = and i8 %i.dk, 15
  %i.dm = icmp samesign ugt i8 %i.dl, 12
  br i1 %i.dm, label %.thread321, label %bb.ad

bb.ad:                                            ; preds = %jsonLabelCompare.exit.thread
  %i.dn = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %i.cd, ptr noundef %i.b) ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %.thread321, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dp = load i32, ptr %i.b, align 4, !tbaa !570
  %i.dq = add i32 %i.dn, %i.cd
  %i.dr = add i32 %i.dq, %i.dp                    ; 3 uses
  %i.ds = icmp ult i32 %i.dr, %i.bq
  br i1 %i.ds, label %bb.s, label %._crit_edge358, !llvm.loop !4466

._crit_edge358:                                   ; preds = %bb.ae, %bb.r
  %.0245.lcssa = phi i32 [ %i.bo, %bb.r ], [ %i.dr, %bb.ae ] ; 4 uses
  %i.dt = icmp ugt i32 %.0245.lcssa, %i.bq
  br i1 %i.dt, label %.thread321, label %bb.af

bb.af:                                            ; preds = %._crit_edge358
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !1963 ; 2 uses
  %i.dw = icmp ugt i8 %i.dv, 2
  br i1 %i.dw, label %bb.ag, label %.thread321

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.dx = icmp eq i8 %i.dv, 5
  %i.dy = zext i32 %.3251 to i64                  ; 2 uses
  br i1 %i.dx, label %bb.ah, label %._crit_edge377

bb.ah:                                            ; preds = %bb.ag
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.dy
  %i.ea = tail call fastcc i32 @patternCompare(ptr noundef nonnull @.str.636, ptr noundef nonnull readonly %i.dz, ptr noundef nonnull @globInfo, i32 noundef 91)
  %.not296 = icmp eq i32 %i.ea, 0
  br i1 %.not296, label %._crit_edge377, label %bb.an

._crit_edge377:                                   ; preds = %bb.ag, %bb.ah
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 0, i64 72, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1961
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !1961
  %.not297 = icmp eq i32 %.0236, 0
  %7 = select i1 %.not297, i8 9, i8 10
  %i.ee = zext i32 %.0244 to i64                  ; 2 uses
  call fastcc void @jsonBlobAppendNode(ptr noundef nonnull %5, i8 noundef zeroext %7, i64 noundef %i.ee, ptr noundef null)
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 47
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !1932
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 47 ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !1932
  %i.ej = or i8 %i.ei, %i.eg
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !1932
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.dy
  %i.el = call fastcc i32 @jsonCreateEditSubstructure(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull %i.ek) ; 2 uses
  %i.em = icmp ugt i32 %i.el, -6
  br i1 %i.em, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge377
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !1962 ; 3 uses
  %i.ep = add i32 %i.eo, %.0244                   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !1962
  %i.es = add i32 %i.ep, %i.er
  %i.et = call fastcc i32 @jsonBlobMakeEditable(ptr noundef nonnull %0, i32 noundef %i.es)
  %.not298 = icmp eq i32 %i.et, 0
  br i1 %.not298, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eu = load i32, ptr %i.eq, align 8, !tbaa !1962
  %i.ev = add i32 %i.eu, %i.ep
  call fastcc void @jsonBlobEdit(ptr noundef nonnull %0, i32 noundef %.0245.lcssa, i32 noundef 0, ptr noundef null, i32 noundef %i.ev)
  %i.ew = load i8, ptr %i.eh, align 1, !tbaa !1932
  %.not299 = icmp eq i8 %i.ew, 0
  br i1 %.not299, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ex = load ptr, ptr %0, align 8, !tbaa !1960
  %i.ey = zext i32 %.0245.lcssa to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ey
  %i.fa = load ptr, ptr %5, align 8, !tbaa !1960
  %i.fb = zext i32 %i.eo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ez, ptr align 1 %i.fa, i64 %i.fb, i1 false)
  %i.fc = add i32 %i.eo, %.0245.lcssa             ; 2 uses
  %i.fd = load ptr, ptr %0, align 8, !tbaa !1960
  %i.fe = zext i32 %i.fc to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ff, ptr nonnull align 1 %.0243, i64 %i.ee, i1 false)
  %i.fg = add i32 %i.fc, %.0244
  %i.fh = load ptr, ptr %0, align 8, !tbaa !1960
  %i.fi = zext i32 %i.fg to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi
  %i.fk = load ptr, ptr %4, align 8, !tbaa !1960
  %i.fl = load i32, ptr %i.eq, align 8, !tbaa !1962
  %i.fm = zext i32 %i.fl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fj, ptr align 1 %i.fk, i64 %i.fm, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !1967
  %.not300 = icmp eq i32 %i.fo, 0
  br i1 %.not300, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call fastcc void @jsonAfterEditSizeAdjust(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.al, %bb.ak, %bb.ai, %._crit_edge377
  call fastcc void @jsonParseReset(ptr noundef nonnull %4)
  call fastcc void @jsonParseReset(ptr noundef nonnull %5)
  br label %bb.an

bb.an:                                            ; preds = %bb.ah, %bb.am
  %.3257 = phi i32 [ %i.el, %bb.am ], [ -3, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %.thread321

bb.ao:                                            ; preds = %bb.a
  %i.fp = load ptr, ptr %0, align 8, !tbaa !1960
  %i.fq = zext i32 %1 to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !733
  %i.ft = and i8 %i.fs, 15
  %.not = icmp eq i8 %i.ft, 11
  br i1 %.not, label %bb.ap, label %.thread321

bb.ap:                                            ; preds = %bb.ao
  %i.fu = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.b)
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !733 ; 3 uses
  %i.fx = add i8 %i.fw, -58
  %.not279343 = icmp ult i8 %i.fx, -10
  br i1 %.not279343, label %bb.aq, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ap, %.lr.ph
  %i.fy = phi i8 [ %i.gh, %.lr.ph ], [ %i.fw, %bb.ap ]
  %.0234345 = phi i64 [ %.1235, %.lr.ph ], [ 0, %bb.ap ] ; 3 uses
  %.4252344 = phi i32 [ %i.ge, %.lr.ph ], [ 1, %bb.ap ]
  %i.fz = icmp ult i64 %.0234345, 4294967295
  %i.ga = mul nuw nsw i64 %.0234345, 10
  %i.gb = zext nneg i8 %i.fy to i64
  %i.gc = add nsw i64 %i.ga, -48
  %i.gd = add i64 %i.gc, %i.gb
  %.1235 = select i1 %i.fz, i64 %i.gd, i64 %.0234345 ; 2 uses
  %i.ge = add i32 %.4252344, 1                    ; 4 uses
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !733 ; 3 uses
  %i.gi = add i8 %i.gh, -58
  %.not279 = icmp ult i8 %i.gi, -10
  br i1 %.not279, label %._crit_edge, label %.lr.ph, !llvm.loop !4467

._crit_edge:                                      ; preds = %.lr.ph
  %i.gj = icmp ugt i32 %i.ge, 1
  %.not280 = icmp eq i8 %i.gh, 93
  %or.cond309 = and i1 %i.gj, %.not280
  br i1 %or.cond309, label %bb.ax, label %.thread321

bb.aq:                                            ; preds = %bb.ap
  %i.gk = icmp eq i8 %i.fw, 35
  br i1 %i.gk, label %bb.ar, label %.thread321

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.gl = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %i.a) ; 2 uses
  %i.gm = add i32 %i.gl, %1                       ; 3 uses
  %i.gn = load i32, ptr %i.a, align 4, !tbaa !570
  %i.go = add i32 %i.gm, %i.gn                    ; 2 uses
  %i.gp = icmp ne i32 %i.gl, 0
  %i.gq = icmp ult i32 %i.gm, %i.go
  %i.gr = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %i.gr, label %.lr.ph.i, label %jsonbArrayCount.exit

.lr.ph.i:                                         ; preds = %bb.ar, %.lr.ph.i
  %.017.i = phi i32 [ %i.gw, %.lr.ph.i ], [ 0, %bb.ar ]
  %.01416.i = phi i32 [ %i.gv, %.lr.ph.i ], [ %i.gm, %bb.ar ] ; 2 uses
  %i.gs = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull readonly %0, i32 noundef %.01416.i, ptr noundef %i.a) ; 2 uses
  %i.gt = load i32, ptr %i.a, align 4, !tbaa !570
  %i.gu = add i32 %i.gs, %.01416.i
  %i.gv = add i32 %i.gu, %i.gt                    ; 2 uses
  %i.gw = add i32 %.017.i, 1                      ; 2 uses
  %i.gx = icmp ne i32 %i.gs, 0
  %i.gy = icmp ult i32 %i.gv, %i.go
  %i.gz = select i1 %i.gx, i1 %i.gy, i1 false
  br i1 %i.gz, label %.lr.ph.i, label %jsonbArrayCount.exit.loopexit, !llvm.loop !277

jsonbArrayCount.exit.loopexit:                    ; preds = %.lr.ph.i
  %i.ha = zext i32 %i.gw to i64
  br label %jsonbArrayCount.exit

jsonbArrayCount.exit:                             ; preds = %jsonbArrayCount.exit.loopexit, %bb.ar
  %.0.lcssa.i = phi i64 [ 0, %bb.ar ], [ %i.ha, %jsonbArrayCount.exit.loopexit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !733 ; 2 uses
  %i.hd = icmp eq i8 %i.hc, 45
  br i1 %i.hd, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %jsonbArrayCount.exit
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !733 ; 2 uses
  %i.hg = add i8 %i.hf, -58
  %.not281 = icmp ult i8 %i.hg, -10
  br i1 %.not281, label %.thread321, label %.preheader330

.preheader330:                                    ; preds = %bb.as, %bb.au
  %i.hh = phi i8 [ %i.hq, %bb.au ], [ %i.hf, %bb.as ]
  %.5253 = phi i32 [ %i.hn, %bb.au ], [ 3, %bb.as ]
  %.0 = phi i64 [ %.1, %bb.au ], [ 0, %bb.as ]    ; 3 uses
  %i.hi = icmp ult i64 %.0, 4294967295
  br i1 %i.hi, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.preheader330
  %i.hj = mul nuw nsw i64 %.0, 10
  %i.hk = zext nneg i8 %i.hh to i64
  %i.hl = add nsw i64 %i.hj, -48
  %i.hm = add nsw i64 %i.hl, %i.hk
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.preheader330
  %.1 = phi i64 [ %i.hm, %bb.at ], [ %.0, %.preheader330 ] ; 3 uses
  %i.hn = add i32 %.5253, 1                       ; 3 uses
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !733 ; 3 uses
  %i.hr = add i8 %i.hq, -58
  %.not282 = icmp ult i8 %i.hr, -10
  br i1 %.not282, label %bb.av, label %.preheader330, !llvm.loop !4468

bb.av:                                            ; preds = %bb.au
  %.not283 = icmp ugt i64 %.1, %.0.lcssa.i
  %i.hs = sub nuw i64 %.0.lcssa.i, %.1
  br i1 %.not283, label %.thread321, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %jsonbArrayCount.exit
  %i.ht = phi i8 [ %i.hq, %bb.av ], [ %i.hc, %jsonbArrayCount.exit ]
  %.6 = phi i32 [ %i.hn, %bb.av ], [ 2, %jsonbArrayCount.exit ]
  %.3 = phi i64 [ %i.hs, %bb.av ], [ %.0.lcssa.i, %jsonbArrayCount.exit ]
  %.not284 = icmp eq i8 %i.ht, 93
  br i1 %.not284, label %bb.ax, label %.thread321

bb.ax:                                            ; preds = %._crit_edge, %bb.aw
  %.7 = phi i32 [ %.6, %bb.aw ], [ %i.ge, %._crit_edge ] ; 2 uses
  %.4 = phi i64 [ %.3, %bb.aw ], [ %.1235, %._crit_edge ] ; 3 uses
  %i.hu = add i32 %i.fu, %1                       ; 5 uses
  %i.hv = load i32, ptr %i.b, align 4, !tbaa !570
  %i.hw = add i32 %i.hv, %i.hu                    ; 3 uses
end_hunk_0
begin_hunk_1_@windowCodeRangeTest:bb.a
  %.not.i119 = icmp eq i32 %.0.i84141, 0
  br i1 %.not.i119, label %sqlite3ReleaseTempReg.exit, label %bb.au

bb.au:                                            ; preds = %sqlite3VdbeResolveLabel.exit
  %i.jl = load i8, ptr %i.t, align 1, !tbaa !2137 ; 3 uses
  %i.jm = icmp ult i8 %i.jl, 8
  br i1 %i.jm, label %bb.av, label %sqlite3ReleaseTempReg.exit

bb.av:                                            ; preds = %bb.au
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.jo = add nuw nsw i8 %i.jl, 1
  store i8 %i.jo, ptr %i.t, align 1, !tbaa !2137
  %i.jp = zext nneg i8 %i.jl to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jp
  store i32 %.0.i84141, ptr %i.jq, align 4, !tbaa !570
  br label %sqlite3ReleaseTempReg.exit

sqlite3ReleaseTempReg.exit:                       ; preds = %sqlite3VdbeResolveLabel.exit, %bb.au, %bb.av
  %.not.i120 = icmp eq i32 %.0.i85, 0
  br i1 %.not.i120, label %sqlite3ReleaseTempReg.exit121, label %bb.aw

bb.aw:                                            ; preds = %sqlite3ReleaseTempReg.exit
  %i.jr = load i8, ptr %i.t, align 1, !tbaa !2137 ; 3 uses
  %i.js = icmp ult i8 %i.jr, 8
  br i1 %i.js, label %bb.ax, label %sqlite3ReleaseTempReg.exit121

bb.ax:                                            ; preds = %bb.aw
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ju = add nuw nsw i8 %i.jr, 1
  store i8 %i.ju, ptr %i.t, align 1, !tbaa !2137
  %i.jv = zext nneg i8 %i.jr to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.jv
  store i32 %.0.i85, ptr %i.jw, align 4, !tbaa !570
  br label %sqlite3ReleaseTempReg.exit121

sqlite3ReleaseTempReg.exit121:                    ; preds = %sqlite3ReleaseTempReg.exit, %bb.aw, %bb.ax
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @windowReadPeerValues(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2337 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1836 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !2336   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1195 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %sqlite3GetVdbe.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2049
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !980
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1373
  %i.n = and i32 %i.m, 8
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 39 ; 2 uses
  %i.q = load i16, ptr %i.p, align 1
  %i.r = or i16 %i.q, 128
  store i16 %i.r, ptr %i.p, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.s = tail call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %i.e), !inline_history !2050
  br label %sqlite3GetVdbe.exit

sqlite3GetVdbe.exit:                              ; preds = %bb.b, %bb.f
  %.0.i = phi ptr [ %i.s, %bb.f ], [ %i.g, %bb.b ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1835 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.w = load i32, ptr %i.v, align 8, !tbaa !2102
  %.not18 = icmp eq ptr %i.u, null
  br i1 %.not18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %sqlite3GetVdbe.exit
  %i.x = load i32, ptr %i.u, align 8, !tbaa !570
  br label %bb.h

bb.h:                                             ; preds = %sqlite3GetVdbe.exit, %bb.g
  %i.y = phi i32 [ %i.x, %bb.g ], [ 0, %sqlite3GetVdbe.exit ]
  %i.z = add nsw i32 %i.y, %i.w
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !570
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 148
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %sqlite3VdbeAddOp3.exit
  %.021 = phi i32 [ 0, %.lr.ph ], [ %i.au, %sqlite3VdbeAddOp3.exit ] ; 3 uses
  %i.af = add nsw i32 %i.z, %.021                 ; 2 uses
  %i.ag = add nsw i32 %.021, %2                   ; 2 uses
  %i.ah = load i32, ptr %i.ac, align 8, !tbaa !703 ; 3 uses
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !1164
  %.not.i19 = icmp sgt i32 %i.ai, %i.ah
  br i1 %.not.i19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 96, i32 noundef %1, i32 noundef %i.af, i32 noundef %i.ag), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = add nsw i32 %i.ah, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !703
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !702
  %i.am = sext i32 %i.ah to i64
  %i.an = getelementptr inbounds [32 x i8], ptr %i.al, i64 %i.am ; 7 uses
  store i8 96, ptr %i.an, align 8, !tbaa !929
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  store i16 0, ptr %i.ao, align 2, !tbaa !930
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %1, ptr %i.ap, align 4, !tbaa !926
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.af, ptr %i.aq, align 8, !tbaa !927
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 %i.ag, ptr %i.ar, align 4, !tbaa !928
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 0, ptr %i.at, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.j, %bb.k
  %i.au = add nuw nsw i32 %.021, 1                ; 2 uses
  %i.av = load i32, ptr %i.d, align 8, !tbaa !570
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.i, label %.loopexit, !llvm.loop !5427

.loopexit:                                        ; preds = %sqlite3VdbeAddOp3.exit, %bb.h, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @windowAggStep(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2336   ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1195 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %sqlite3GetVdbe.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2049
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !980
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1373
  %i.j = and i32 %i.i, 8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 39 ; 2 uses
  %i.m = load i16, ptr %i.l, align 1
  %i.n = or i16 %i.m, 128
  store i16 %i.n, ptr %i.l, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.o = tail call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %i.a), !inline_history !2050
  br label %sqlite3GetVdbe.exit

sqlite3GetVdbe.exit:                              ; preds = %bb.a, %bb.e
  %.0.i = phi ptr [ %i.o, %bb.e ], [ %i.c, %bb.a ] ; 24 uses
  %.not188 = icmp eq ptr %1, null
  br i1 %.not188, label %._crit_edge191, label %.lr.ph190

.lr.ph190:                                        ; preds = %sqlite3GetVdbe.exit
  %i.p = getelementptr i8, ptr %.0.i, i64 144     ; 36 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 148 ; 14 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 136 ; 21 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %i.t = add nsw i32 %4, 1                        ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 31 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.y = icmp eq i32 %3, 0                        ; 2 uses
  %i.z = xor i32 %3, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %5 = select i1 %i.y, i32 164, i32 163           ; 2 uses
  %i.ac = trunc nuw i32 %5 to i8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph190, %bb.co
  %.0111189 = phi ptr [ %1, %.lr.ph190 ], [ %i.qa, %bb.co ] ; 15 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0111189, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2104 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0111189, i64 140 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !2106
  %.not114 = icmp eq i8 %i.ag, 0
  br i1 %.not114, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %.0111189, i64 112
  %.0111.val = load ptr, ptr %i.ah, align 8, !tbaa !2103
  %i.ai = getelementptr i8, ptr %.0111.val, i64 32
  %.0111.val.val = load ptr, ptr %i.ai, align 8, !tbaa !733 ; 2 uses
  %.not.i129 = icmp eq ptr %.0111.val.val, null
  br i1 %.not.i129, label %._crit_edge, label %windowArgCount.exit

windowArgCount.exit:                              ; preds = %bb.g
  %i.aj = load i32, ptr %.0111.val.val, align 8, !tbaa !570 ; 6 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %windowArgCount.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %.0111189, i64 124 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !2105 ; 2 uses
  %i.ao = load i32, ptr %i.p, align 8, !tbaa !703 ; 3 uses
  %i.ap = load i32, ptr %i.q, align 4, !tbaa !1164
  %.not.i130.peel = icmp sgt i32 %i.ap, %i.ao
  br i1 %.not.i130.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 96, i32 noundef %2, i32 noundef %i.an, i32 noundef %4), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit.peel

bb.j:                                             ; preds = %bb.h
  %i.ar = add nsw i32 %i.ao, 1
  store i32 %i.ar, ptr %i.p, align 8, !tbaa !703
  %i.as = load ptr, ptr %i.r, align 8, !tbaa !702
  %i.at = sext i32 %i.ao to i64
  %i.au = getelementptr inbounds [32 x i8], ptr %i.as, i64 %i.at ; 7 uses
  store i8 96, ptr %i.au, align 8, !tbaa !929
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i16 0, ptr %i.av, align 2, !tbaa !930
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %2, ptr %i.aw, align 4, !tbaa !926
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.an, ptr %i.ax, align 8, !tbaa !927
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 %4, ptr %i.ay, align 4, !tbaa !928
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 0, ptr %i.ba, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit.peel

sqlite3VdbeAddOp3.exit.peel:                      ; preds = %bb.j, %bb.i
  %exitcond.peel.not = icmp eq i32 %i.aj, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %sqlite3VdbeAddOp3.exit.peel
  %i.bb = load ptr, ptr %i.al, align 8, !tbaa !732
  %.not126.peel195 = icmp eq ptr %i.bb, @nth_valueName
  %.pre206 = load i32, ptr %i.am, align 4, !tbaa !2105 ; 2 uses
  %.pre208 = load i32, ptr %i.p, align 8, !tbaa !703 ; 6 uses
  %.pre210 = load i32, ptr %i.q, align 4, !tbaa !1164 ; 2 uses
  br i1 %.not126.peel195, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.peel.next
  %i.bc = add nsw i32 %.pre206, 1                 ; 2 uses
  %.not.i130.peel196 = icmp sgt i32 %.pre210, %.pre208
  br i1 %.not.i130.peel196, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 96, i32 noundef %2, i32 noundef %i.bc, i32 noundef %i.t), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit.peel198

bb.m:                                             ; preds = %bb.k
  %i.be = add nsw i32 %.pre208, 1
  store i32 %i.be, ptr %i.p, align 8, !tbaa !703
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !702
  %i.bg = sext i32 %.pre208 to i64
  %i.bh = getelementptr inbounds [32 x i8], ptr %i.bf, i64 %i.bg ; 7 uses
  store i8 96, ptr %i.bh, align 8, !tbaa !929
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i16 0, ptr %i.bi, align 2, !tbaa !930
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %2, ptr %i.bj, align 4, !tbaa !926
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 %i.bc, ptr %i.bk, align 8, !tbaa !927
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 %i.t, ptr %i.bl, align 4, !tbaa !928
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 0, ptr %i.bn, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit.peel198

bb.n:                                             ; preds = %.peel.next
  %i.bo = load i32, ptr %i.s, align 8, !tbaa !2096 ; 2 uses
  %i.bp = add nsw i32 %.pre206, 1                 ; 2 uses
  %.not.i132.peel197 = icmp sgt i32 %.pre210, %.pre208
  br i1 %.not.i132.peel197, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 96, i32 noundef %i.bo, i32 noundef %i.bp, i32 noundef %i.t), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit.peel198

bb.p:                                             ; preds = %bb.n
  %i.br = add nsw i32 %.pre208, 1
  store i32 %i.br, ptr %i.p, align 8, !tbaa !703
  %i.bs = load ptr, ptr %i.r, align 8, !tbaa !702
  %i.bt = sext i32 %.pre208 to i64
  %i.bu = getelementptr inbounds [32 x i8], ptr %i.bs, i64 %i.bt ; 7 uses
  store i8 96, ptr %i.bu, align 8, !tbaa !929
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i16 0, ptr %i.bv, align 2, !tbaa !930
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %i.bo, ptr %i.bw, align 4, !tbaa !926
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 %i.bp, ptr %i.bx, align 8, !tbaa !927
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 %i.t, ptr %i.by, align 4, !tbaa !928
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 0, ptr %i.ca, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit.peel198

sqlite3VdbeAddOp3.exit.peel198:                   ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %exitcond.peel199.not = icmp eq i32 %i.aj, 2
  br i1 %exitcond.peel199.not, label %._crit_edge, label %.peel.next193

.peel.next193:                                    ; preds = %sqlite3VdbeAddOp3.exit.peel198, %sqlite3VdbeAddOp3.exit
  %.0108182 = phi i32 [ %i.cr, %sqlite3VdbeAddOp3.exit ], [ 2, %sqlite3VdbeAddOp3.exit.peel198 ] ; 3 uses
  %i.cb = load i32, ptr %i.am, align 4, !tbaa !2105
  %i.cc = add nsw i32 %i.cb, %.0108182            ; 2 uses
  %i.cd = add nsw i32 %.0108182, %4               ; 2 uses
  %i.ce = load i32, ptr %i.p, align 8, !tbaa !703 ; 3 uses
  %i.cf = load i32, ptr %i.q, align 4, !tbaa !1164
  %.not.i130 = icmp sgt i32 %i.cf, %i.ce
  br i1 %.not.i130, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.peel.next193
  %i.cg = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 96, i32 noundef %2, i32 noundef %i.cc, i32 noundef %i.cd), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.r:                                             ; preds = %.peel.next193
  %i.ch = add nsw i32 %i.ce, 1
  store i32 %i.ch, ptr %i.p, align 8, !tbaa !703
  %i.ci = load ptr, ptr %i.r, align 8, !tbaa !702
  %i.cj = sext i32 %i.ce to i64
  %i.ck = getelementptr inbounds [32 x i8], ptr %i.ci, i64 %i.cj ; 7 uses
  store i8 96, ptr %i.ck, align 8, !tbaa !929
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  store i16 0, ptr %i.cl, align 2, !tbaa !930
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %2, ptr %i.cm, align 4, !tbaa !926
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 %i.cc, ptr %i.cn, align 8, !tbaa !927
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 %i.cd, ptr %i.co, align 4, !tbaa !928
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store i8 0, ptr %i.cq, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.r, %bb.q
  %i.cr = add nuw nsw i32 %.0108182, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cr, %i.aj
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next193, !llvm.loop !5428

._crit_edge:                                      ; preds = %sqlite3VdbeAddOp3.exit, %bb.g, %bb.f, %sqlite3VdbeAddOp3.exit.peel, %sqlite3VdbeAddOp3.exit.peel198, %windowArgCount.exit
  %i.cs = phi i32 [ 1, %sqlite3VdbeAddOp3.exit.peel ], [ %i.aj, %windowArgCount.exit ], [ 0, %bb.g ], [ 2, %sqlite3VdbeAddOp3.exit.peel198 ], [ 0, %bb.f ], [ %i.aj, %sqlite3VdbeAddOp3.exit ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0111189, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1834
  %.not115 = icmp eq ptr %i.cu, null
  br i1 %.not115, label %sqlite3ReleaseTempReg.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.cv = load i8, ptr %i.u, align 1, !tbaa !2137 ; 2 uses
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cx = load i32, ptr %i.w, align 4, !tbaa !1174
  %i.cy = add nsw i32 %i.cx, 1                    ; 2 uses
  store i32 %i.cy, ptr %i.w, align 4, !tbaa !1174
  br label %sqlite3GetTempReg.exit

bb.u:                                             ; preds = %bb.s
  %i.cz = add i8 %i.cv, -1                        ; 2 uses
  store i8 %i.cz, ptr %i.u, align 1, !tbaa !2137
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !570
end_hunk_1
begin_hunk_2_@sqlite3GenerateConstraintChecks:bb.a
  %i.bjm = load ptr, ptr %i.bjl, align 8, !tbaa !702
  %i.bjn = sext i32 %.pre1171 to i64
  %i.bjo = getelementptr inbounds [32 x i8], ptr %i.bjm, i64 %i.bjn ; 7 uses
  store i8 54, ptr %i.bjo, align 8, !tbaa !929
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 2
  store i16 0, ptr %i.bjp, align 2, !tbaa !930
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjo, i64 4
  store i32 %5, ptr %i.bjq, align 4, !tbaa !926
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjo, i64 8
  store i32 %.0576, ptr %i.bjr, align 8, !tbaa !927
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjo, i64 12
  store i32 %6, ptr %i.bjs, align 4, !tbaa !928
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjo, i64 16
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjo, i64 1
  store i8 0, ptr %i.bju, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bjt, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit975

sqlite3VdbeAddOp3.exit975:                        ; preds = %bb.kz, %bb.la
  %i.bjv = load i32, ptr %i.bit, align 8, !tbaa !703 ; 4 uses
  %i.bjw = icmp sgt i32 %i.bjv, 0
  br i1 %i.bjw, label %bb.lb, label %sqlite3VdbeChangeP5.exit976

bb.lb:                                            ; preds = %sqlite3VdbeAddOp3.exit975
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bjy = load ptr, ptr %i.bjx, align 8, !tbaa !702
  %i.bjz = zext nneg i32 %i.bjv to i64
  %i.bka = getelementptr [32 x i8], ptr %i.bjy, i64 %i.bjz
  %i.bkb = getelementptr i8, ptr %i.bka, i64 -30
  store i16 144, ptr %i.bkb, align 2, !tbaa !930
  br label %sqlite3VdbeChangeP5.exit976

sqlite3VdbeChangeP5.exit976:                      ; preds = %bb.lb, %sqlite3VdbeAddOp3.exit975, %bb.kx
  %i.bkc = phi i32 [ %i.bjv, %bb.lb ], [ %i.bjv, %sqlite3VdbeAddOp3.exit975 ], [ %.pre1171, %bb.kx ] ; 3 uses
  %i.bkd = load i32, ptr %i.biv, align 4, !tbaa !1164
  %.not.i977 = icmp sgt i32 %i.bkd, %i.bkc
  br i1 %.not.i977, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %sqlite3VdbeChangeP5.exit976
  %i.bke = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 31, i32 noundef %3, i32 noundef %.0576, i32 noundef %5), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit979

bb.ld:                                            ; preds = %sqlite3VdbeChangeP5.exit976
  %i.bkf = add nsw i32 %i.bkc, 1
  store i32 %i.bkf, ptr %i.bit, align 8, !tbaa !703
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bkh = load ptr, ptr %i.bkg, align 8, !tbaa !702
  %i.bki = sext i32 %i.bkc to i64
  %i.bkj = getelementptr inbounds [32 x i8], ptr %i.bkh, i64 %i.bki ; 7 uses
  store i8 31, ptr %i.bkj, align 8, !tbaa !929
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 2
  store i16 0, ptr %i.bkk, align 2, !tbaa !930
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bkj, i64 4
  store i32 %3, ptr %i.bkl, align 4, !tbaa !926
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bkj, i64 8
  store i32 %.0576, ptr %i.bkm, align 8, !tbaa !927
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkj, i64 12
  store i32 %5, ptr %i.bkn, align 4, !tbaa !928
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkj, i64 16
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bkj, i64 1
  store i8 0, ptr %i.bkp, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bko, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit979

sqlite3VdbeAddOp3.exit979:                        ; preds = %bb.lc, %bb.ld
  call fastcc void @sqlite3RowidConstraint(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %1)
  br label %sqlite3VdbeGoto.exit982

bb.le:                                            ; preds = %sqlite3VdbeAddOp2.exit972
  %i.bkq = load i32, ptr %i.biv, align 4, !tbaa !1164
  %.not.i.i980 = icmp sgt i32 %i.bkq, %.pre1171
  br i1 %.not.i.i980, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bkr = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 9, i32 noundef 0, i32 noundef %.0576, i32 noundef 0), !inline_history !288 ; 0 uses
  br label %sqlite3VdbeGoto.exit982

bb.lg:                                            ; preds = %bb.le
  %i.bks = add nsw i32 %.pre1171, 1
  store i32 %i.bks, ptr %i.bit, align 8, !tbaa !703
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bku = load ptr, ptr %i.bkt, align 8, !tbaa !702
  %i.bkv = sext i32 %.pre1171 to i64
  %i.bkw = getelementptr inbounds [32 x i8], ptr %i.bku, i64 %i.bkv ; 6 uses
  store i8 9, ptr %i.bkw, align 8, !tbaa !929
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkw, i64 2
  store i16 0, ptr %i.bkx, align 2, !tbaa !930
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkw, i64 4
  store i32 0, ptr %i.bky, align 4, !tbaa !926
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bkw, i64 8
  store i32 %.0576, ptr %i.bkz, align 8, !tbaa !927
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkw, i64 12
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bkw, i64 1
  store i8 0, ptr %i.blb, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bla, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeGoto.exit982

sqlite3VdbeGoto.exit982:                          ; preds = %bb.lg, %bb.lf, %sqlite3VdbeAddOp3.exit979
  %i.blc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bld = load ptr, ptr %i.blc, align 8, !tbaa !1194 ; 4 uses
  %i.ble = xor i32 %.1577.lcssa, -1               ; 2 uses
  %i.blf = getelementptr inbounds nuw i8, ptr %i.bld, i64 80
  %i.blg = load i32, ptr %i.blf, align 8, !tbaa !2195
  %i.blh = getelementptr inbounds nuw i8, ptr %i.bld, i64 76
  %i.bli = load i32, ptr %i.blh, align 4, !tbaa !1881
  %i.blj = add nsw i32 %i.bli, %i.blg
  %i.blk = icmp slt i32 %i.blj, 0
  br i1 %i.blk, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %sqlite3VdbeGoto.exit982
  call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.bld, ptr noundef nonnull readonly %i.d, i32 noundef %i.ble), !inline_history !2196
  br label %sqlite3VdbeResolveLabel.exit983

bb.li:                                            ; preds = %sqlite3VdbeGoto.exit982
  %i.bll = load i32, ptr %i.bit, align 8, !tbaa !703
  %i.blm = getelementptr inbounds nuw i8, ptr %i.bld, i64 88
  %i.bln = load ptr, ptr %i.blm, align 8, !tbaa !1216
  %i.blo = sext i32 %i.ble to i64
  %i.blp = getelementptr inbounds [4 x i8], ptr %i.bln, i64 %i.blo
  store i32 %i.bll, ptr %i.blp, align 4, !tbaa !570
  br label %sqlite3VdbeResolveLabel.exit983

sqlite3VdbeResolveLabel.exit983:                  ; preds = %bb.li, %bb.lh, %bb.kt
  %i.blq = load i32, ptr %i.g, align 8, !tbaa !1083
  %i.blr = and i32 %i.blq, 128
  %i.bls = icmp eq i32 %i.blr, 0
  br i1 %i.bls, label %bb.lj, label %bb.ln

bb.lj:                                            ; preds = %sqlite3VdbeResolveLabel.exit983
  %i.blt = sext i32 %.0.lcssa to i64
  %i.blu = getelementptr inbounds [4 x i8], ptr %2, i64 %i.blt
  %i.blv = load i32, ptr %i.blu, align 4, !tbaa !570 ; 2 uses
  %i.blw = add nsw i32 %5, 1                      ; 2 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bly = load i16, ptr %i.blx, align 8, !tbaa !1251
  %i.blz = sext i16 %i.bly to i32                 ; 2 uses
  %i.bma = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.bmb = load i32, ptr %i.bma, align 8, !tbaa !703 ; 3 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  %i.bmd = load i32, ptr %i.bmc, align 4, !tbaa !1164
  %.not.i984 = icmp sgt i32 %i.bmd, %i.bmb
  br i1 %.not.i984, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bme = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 99, i32 noundef %i.blw, i32 noundef %i.blz, i32 noundef %i.blv), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit986

bb.ll:                                            ; preds = %bb.lj
  %i.bmf = add nsw i32 %i.bmb, 1
  store i32 %i.bmf, ptr %i.bma, align 8, !tbaa !703
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bmh = load ptr, ptr %i.bmg, align 8, !tbaa !702
  %i.bmi = sext i32 %i.bmb to i64
  %i.bmj = getelementptr inbounds [32 x i8], ptr %i.bmh, i64 %i.bmi ; 7 uses
  store i8 99, ptr %i.bmj, align 8, !tbaa !929
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmj, i64 2
  store i16 0, ptr %i.bmk, align 2, !tbaa !930
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmj, i64 4
  store i32 %i.blw, ptr %i.bml, align 4, !tbaa !926
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bmj, i64 8
  store i32 %i.blz, ptr %i.bmm, align 8, !tbaa !927
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmj, i64 12
  store i32 %i.blv, ptr %i.bmn, align 4, !tbaa !928
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmj, i64 16
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmj, i64 1
  store i8 0, ptr %i.bmp, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bmo, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit986

sqlite3VdbeAddOp3.exit986:                        ; preds = %bb.lk, %bb.ll
  %.not685 = icmp eq i8 %.4599.lcssa, 0
  br i1 %.not685, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %sqlite3VdbeAddOp3.exit986
  call fastcc void @sqlite3TableAffinity(ptr noundef nonnull %i.d, ptr noundef %1, i32 noundef 0)
  br label %bb.ln

bb.ln:                                            ; preds = %sqlite3VdbeAddOp3.exit986, %bb.lm, %sqlite3VdbeResolveLabel.exit983
  store i32 %.2610.lcssa, ptr %10, align 4, !tbaa !570
  br label %.critedge707

.critedge707:                                     ; preds = %sqlite3DbMallocRaw.exit.i, %bb.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3CompleteInsertion(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef range(i32 0, 8) %6, i32 noundef range(i32 0, 2) %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1195 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.05064 = load ptr, ptr %i.c, align 8, !tbaa !1156 ; 2 uses
  %.not65 = icmp eq ptr %.05064, null
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 144      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 3 uses
  %.not58 = icmp eq i32 %8, 0
  %9 = select i1 %.not58, i16 0, i16 16           ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %10 = trunc nuw nsw i32 %6 to i16
  %11 = and i16 %10, 2
  %12 = or disjoint i16 %11, %9
  %13 = or disjoint i16 %12, 1
  %i.h = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %sqlite3VdbeChangeP5.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3VdbeChangeP5.exit ] ; 3 uses
  %.05067 = phi ptr [ %.05064, %.lr.ph ], [ %.050, %sqlite3VdbeChangeP5.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !570  ; 3 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %sqlite3VdbeChangeP5.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.05067, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1757
  %.not57 = icmp eq ptr %i.m, null
  br i1 %.not57, label %sqlite3VdbeAddOp2.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load i32, ptr %i.d, align 8, !tbaa !703 ; 4 uses
  %i.n = add nsw i32 %.val, 2                     ; 2 uses
  %i.o = load i32, ptr %i.e, align 4, !tbaa !1164
  %.not.i.i = icmp sgt i32 %i.o, %.val
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 51, i32 noundef %i.j, i32 noundef %i.n, i32 noundef 0), !inline_history !1196 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.f:                                             ; preds = %bb.d
  %i.q = add nsw i32 %.val, 1
  store i32 %i.q, ptr %i.d, align 8, !tbaa !703
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !702
  %i.s = sext i32 %.val to i64
  %i.t = getelementptr inbounds [32 x i8], ptr %i.r, i64 %i.s ; 6 uses
  store i8 51, ptr %i.t, align 8, !tbaa !929
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i16 0, ptr %i.u, align 2, !tbaa !930
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.j, ptr %i.v, align 4, !tbaa !926
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 %i.n, ptr %i.w, align 8, !tbaa !927
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 0, ptr %i.y, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.x, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.f, %bb.e, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.05067, i64 99
  %i.aa = load i16, ptr %i.z, align 1             ; 2 uses
  %i.ab = and i16 %i.aa, 3
  %i.ac = icmp eq i16 %i.ab, 2
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.ad = load i32, ptr %i.g, align 8, !tbaa !1083
  %i.ae = and i32 %i.ad, 128
  %i.af = icmp eq i32 %i.ae, 0
  %spec.select = select i1 %i.af, i16 %9, i16 %13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %sqlite3VdbeAddOp2.exit
  %.049 = phi i16 [ %spec.select, %bb.g ], [ %9, %sqlite3VdbeAddOp2.exit ]
  %i.ag = add nuw i64 %indvars.iv, %i.h           ; 2 uses
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !570 ; 3 uses
  %i.ai = add nsw i32 %i.ah, 1                    ; 2 uses
  %i.aj = and i16 %i.aa, 8
  %.not59 = icmp eq i16 %i.aj, 0
  %.in.in.v = select i1 %.not59, i64 96, i64 94
  %.in.in = getelementptr inbounds nuw i8, ptr %.05067, i64 %.in.in.v
  %.in = load i16, ptr %.in.in, align 2, !tbaa !783
  %i.ak = zext i16 %.in to i32                    ; 2 uses
  %i.al = load i32, ptr %i.d, align 8, !tbaa !703 ; 3 uses
  %i.am = load i32, ptr %i.e, align 4, !tbaa !1164
  %.not.i = icmp sgt i32 %i.am, %i.al
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = trunc i64 %i.ag to i32
  %i.ao = tail call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %i.b, i32 noundef 140, i32 noundef %i.an, i32 noundef %i.ah, i32 noundef %i.ai, i32 noundef %i.ak), !inline_history !1165 ; 0 uses
  br label %sqlite3VdbeAddOp4Int.exit

bb.j:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.al, 1
  store i32 %i.ap, ptr %i.d, align 8, !tbaa !703
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !702
  %i.ar = sext i32 %i.al to i64
  %i.as = getelementptr inbounds [32 x i8], ptr %i.aq, i64 %i.ar ; 8 uses
  store i8 -116, ptr %i.as, align 8, !tbaa !929
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i16 0, ptr %i.at, align 2, !tbaa !930
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.av = trunc i64 %i.ag to i32
  store i32 %i.av, ptr %i.au, align 4, !tbaa !926
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %i.ah, ptr %i.aw, align 8, !tbaa !927
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 %i.ai, ptr %i.ax, align 4, !tbaa !928
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i32 %i.ak, ptr %i.ay, align 8, !tbaa !733
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 -3, ptr %i.az, align 1, !tbaa !1166
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr null, ptr %i.ba, align 8, !tbaa !1167
  br label %sqlite3VdbeAddOp4Int.exit

sqlite3VdbeAddOp4Int.exit:                        ; preds = %bb.i, %bb.j
  %i.bb = load i32, ptr %i.d, align 8, !tbaa !703 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %sqlite3VdbeChangeP5.exit

bb.k:                                             ; preds = %sqlite3VdbeAddOp4Int.exit
  %i.bd = load ptr, ptr %i.f, align 8, !tbaa !702
  %i.be = zext nneg i32 %i.bb to i64
  %i.bf = getelementptr [32 x i8], ptr %i.bd, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -30
  store i16 %.049, ptr %i.bg, align 2, !tbaa !930
  br label %sqlite3VdbeChangeP5.exit

sqlite3VdbeChangeP5.exit:                         ; preds = %bb.k, %sqlite3VdbeAddOp4Int.exit, %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %.05067, i64 40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.050 = load ptr, ptr %i.bh, align 8, !tbaa !1156 ; 2 uses
  %.not = icmp eq ptr %.050, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5573

._crit_edge:                                      ; preds = %sqlite3VdbeChangeP5.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %sqlite3VdbeChangeP5.exit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !1083
  %i.bk = and i32 %i.bj, 128
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.l, label %sqlite3VdbeChangeP5.exit63

bb.l:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !2015
  %.not52 = icmp eq i8 %i.bn, 0
  %.not53 = icmp eq i32 %6, 0
  %i.bo = trunc nuw nsw i32 %6 to i16
  %i.bp = or i16 %i.bo, 1
  %i.bq = select i1 %.not53, i16 33, i16 %i.bp
  %.1 = select i1 %.not52, i16 %i.bq, i16 0       ; 2 uses
  %.not54 = icmp eq i32 %7, 0
  %14 = or disjoint i16 %.1, 8
  %.2 = select i1 %.not54, i16 %.1, i16 %14       ; 2 uses
  %.not55 = icmp eq i32 %8, 0
  %15 = or i16 %.2, 16
  %.3 = select i1 %.not55, i16 %.2, i16 %15
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0.lcssa
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !570 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 4 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !703 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !1164
  %.not.i60 = icmp sgt i32 %i.bw, %i.bu
  br i1 %.not.i60, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 130, i32 noundef %2, i32 noundef %i.bs, i32 noundef %4), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.n:                                             ; preds = %bb.l
  %i.by = add nsw i32 %i.bu, 1
  store i32 %i.by, ptr %i.bt, align 8, !tbaa !703
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !702
  %i.cb = sext i32 %i.bu to i64
  %i.cc = getelementptr inbounds [32 x i8], ptr %i.ca, i64 %i.cb ; 7 uses
  store i8 -126, ptr %i.cc, align 8, !tbaa !929
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i16 0, ptr %i.cd, align 2, !tbaa !930
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 %2, ptr %i.ce, align 4, !tbaa !926
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 %i.bs, ptr %i.cf, align 8, !tbaa !927
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 %4, ptr %i.cg, align 4, !tbaa !928
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store i8 0, ptr %i.ci, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.m, %bb.n
  %i.cj = load i8, ptr %i.bm, align 2, !tbaa !2015
  %.not56 = icmp eq i8 %i.cj, 0
  br i1 %.not56, label %bb.o, label %sqlite3VdbeAppendP4.exit

bb.o:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !679
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 103
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !918
  %.not.i62 = icmp eq i8 %i.cm, 0
  br i1 %.not.i62, label %bb.p, label %sqlite3VdbeAppendP4.exit

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !702
  %i.cp = load i32, ptr %i.bt, align 8, !tbaa !703
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [32 x i8], ptr %i.co, i64 %i.cq ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 -31
  store i8 -5, ptr %i.cs, align 1, !tbaa !1166
  %i.ct = getelementptr i8, ptr %i.cr, i64 -16
  store ptr %1, ptr %i.ct, align 8, !tbaa !733
  br label %sqlite3VdbeAppendP4.exit

sqlite3VdbeAppendP4.exit:                         ; preds = %bb.p, %bb.o, %sqlite3VdbeAddOp3.exit
  %i.cu = load i32, ptr %i.bt, align 8, !tbaa !703 ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %bb.q, label %sqlite3VdbeChangeP5.exit63

bb.q:                                             ; preds = %sqlite3VdbeAppendP4.exit
  %16 = and i16 %.3, 255
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !702
  %i.cy = zext nneg i32 %i.cu to i64
  %i.cz = getelementptr [32 x i8], ptr %i.cx, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 -30
  store i16 %16, ptr %i.da, align 2, !tbaa !930
  br label %sqlite3VdbeChangeP5.exit63

sqlite3VdbeChangeP5.exit63:                       ; preds = %bb.q, %sqlite3VdbeAppendP4.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @checkConstraintExprNode(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #17 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !1828
  %i.b = icmp eq i8 %i.a, -88
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i16, ptr %i.c, align 8, !tbaa !2001 ; 2 uses
  %i.e = icmp sgt i16 %i.d, -1
  br i1 %i.e, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !733
  %i.h = zext nneg i16 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !570
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink8 = phi i16 [ 1, %bb.c ], [ 2, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.m = load i16, ptr %i.l, align 4, !tbaa !2017
  %i.n = or i16 %i.m, %.sink8
  store i16 %i.n, ptr %i.l, align 4, !tbaa !2017
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @exprColumnFlagUnion(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #17 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !1828
  %i.b = icmp eq i8 %i.a, -88
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i16, ptr %i.c, align 8, !tbaa !2001 ; 2 uses
  %i.e = icmp sgt i16 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !733
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1149
  %i.j = zext nneg i16 %i.d to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 14
  %i.m = load i16, ptr %i.l, align 2, !tbaa !1364
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.o = load i16, ptr %i.n, align 4, !tbaa !2017
  %i.p = or i16 %i.o, %i.m
  store i16 %i.p, ptr %i.n, align 4, !tbaa !2017
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3RowidConstraint(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.b = load i16, ptr %i.a, align 4, !tbaa !1189 ; 2 uses
  %i.c = icmp sgt i16 %i.b, -1
  %i.d = load ptr, ptr %0, align 8, !tbaa !980    ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !1171   ; 2 uses
  br i1 %i.c, label %.split12, label %.split

.split12:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1149
  %i.h = zext nneg i16 %i.b to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1153
  %i.k = tail call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %i.d, ptr noundef nonnull @.str.656, ptr noundef %i.e, ptr noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1195 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.b, label %sqlite3GetVdbe.exit.i

bb.b:                                             ; preds = %.split12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2049
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !980
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1373
  %i.t = and i32 %i.s, 8
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 2 uses
  %i.w = load i16, ptr %i.v, align 1
  %i.x = or i16 %i.w, 128
  store i16 %i.x, ptr %i.v, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.y = tail call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %0), !inline_history !391
  br label %sqlite3GetVdbe.exit.i

sqlite3GetVdbe.exit.i:                            ; preds = %bb.e, %.split12
  %.0.i.i = phi ptr [ %i.y, %bb.e ], [ %i.m, %.split12 ] ; 3 uses
  %i.z = icmp eq i32 %1, 2
  br i1 %i.z, label %.split10.i, label %.split.i

.split10.i:                                       ; preds = %sqlite3GetVdbe.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2049 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.ab, null
  %..i.i = select i1 %.not.i11.i, ptr %0, ptr %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %..i.i, i64 39 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 1
  %i.ae = or i16 %i.ad, 2
  store i16 %i.ae, ptr %i.ac, align 1
  br label %.split.i

.split.i:                                         ; preds = %.split10.i, %sqlite3GetVdbe.exit.i
  %i.af = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %.0.i.i, i32 noundef 72, i32 noundef 1555, i32 noundef %1, i32 noundef 0, ptr noundef %i.k, i32 noundef -7), !inline_history !392 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 144
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !703 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %sqlite3HaltConstraint.exit.sink.split, label %sqlite3HaltConstraint.exit

.split:                                           ; preds = %bb.a
  %i.aj = tail call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %i.d, ptr noundef nonnull @.str.676, ptr noundef %i.e)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1195 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.al, null
  br i1 %.not.i.i13, label %bb.f, label %sqlite3GetVdbe.exit.i14

bb.f:                                             ; preds = %.split
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2049
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %0, align 8, !tbaa !980
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1373
  %i.as = and i32 %i.ar, 8
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 2 uses
  %i.av = load i16, ptr %i.au, align 1
  %i.aw = or i16 %i.av, 128
  store i16 %i.aw, ptr %i.au, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ax = tail call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %0), !inline_history !391
  br label %sqlite3GetVdbe.exit.i14

sqlite3GetVdbe.exit.i14:                          ; preds = %bb.i, %.split
  %.0.i.i15 = phi ptr [ %i.ax, %bb.i ], [ %i.al, %.split ] ; 3 uses
  %i.ay = icmp eq i32 %1, 2
  br i1 %i.ay, label %.split10.i18, label %.split.i16

.split10.i18:                                     ; preds = %sqlite3GetVdbe.exit.i14
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !2049 ; 2 uses
  %.not.i11.i19 = icmp eq ptr %i.ba, null
  %..i.i20 = select i1 %.not.i11.i19, ptr %0, ptr %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %..i.i20, i64 39 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 1
  %i.bd = or i16 %i.bc, 2
  store i16 %i.bd, ptr %i.bb, align 1
  br label %.split.i16

.split.i16:                                       ; preds = %.split10.i18, %sqlite3GetVdbe.exit.i14
  %i.be = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %.0.i.i15, i32 noundef 72, i32 noundef 2579, i32 noundef %1, i32 noundef 0, ptr noundef %i.aj, i32 noundef -7), !inline_history !392 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 144
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !703 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %sqlite3HaltConstraint.exit.sink.split, label %sqlite3HaltConstraint.exit

sqlite3HaltConstraint.exit.sink.split:            ; preds = %.split.i16, %.split.i
  %.0.i.i15.sink = phi ptr [ %.0.i.i, %.split.i ], [ %.0.i.i15, %.split.i16 ]
  %.sink28 = phi i32 [ %i.ah, %.split.i ], [ %i.bg, %.split.i16 ]
end_hunk_2
