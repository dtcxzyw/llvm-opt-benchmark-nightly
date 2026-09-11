Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 424
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@jsonLookupStep:bb.a
  switch i8 %i.ax, label %bb.n [
    i8 92, label %bb.m
    i8 0, label %.thread317
    i8 34, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.ay = add i32 %.0244, 1                       ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !741
  %.not300 = icmp eq i8 %i.bb, 0
  %spec.select = select i1 %.not300, i32 %.0244, i32 %i.ay
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.1245 = phi i32 [ %.0244, %bb.l ], [ %spec.select, %bb.m ]
  %i.bc = add i32 %.1245, 1
  br label %bb.l, !llvm.loop !5183

bb.o:                                             ; preds = %bb.l
  %i.bd = add i32 %.0244, -1                      ; 2 uses
  %i.be = add i32 %.0244, 1
  %i.bf = zext i32 %i.bd to i64
  %i.bg = tail call ptr @memchr(ptr noundef nonnull %i.au, i32 noundef 92, i64 noundef %i.bf) #60
  %i.bh = icmp eq ptr %i.bg, null
  %i.bi = zext i1 %i.bh to i32
  br label %bb.q

.preheader:                                       ; preds = %bb.j, %bb.p
  %i.bj = phi i8 [ %.pre, %bb.p ], [ %i.as, %bb.j ]
  %.2246 = phi i32 [ %i.bk, %bb.p ], [ 0, %bb.j ] ; 4 uses
  switch i8 %i.bj, label %bb.p [
    i8 0, label %.critedge5
    i8 46, label %.critedge5
    i8 91, label %.critedge5
  ]

bb.p:                                             ; preds = %.preheader
  %i.bk = add i32 %.2246, 1                       ; 2 uses
  %.phi.trans.insert = zext i32 %i.bk to i64
  %.phi.trans.insert371 = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert371, align 1, !tbaa !741
  br label %.preheader, !llvm.loop !5184

.critedge5:                                       ; preds = %.preheader, %.preheader, %.preheader
  %i.bl = icmp eq i32 %.2246, 0
  br i1 %i.bl, label %.thread317, label %bb.q

bb.q:                                             ; preds = %.critedge5, %bb.o
  %.3247 = phi i32 [ %i.be, %bb.o ], [ %.2246, %.critedge5 ] ; 2 uses
  %.0240 = phi i32 [ %i.bd, %bb.o ], [ %.2246, %.critedge5 ] ; 7 uses
  %.0239 = phi ptr [ %i.au, %bb.o ], [ %i.ar, %.critedge5 ] ; 3 uses
  %.0232 = phi i32 [ %i.bi, %bb.o ], [ 1, %.critedge5 ] ; 3 uses
  %i.bm = and i8 %i.aq, 15
  %.not291 = icmp eq i8 %i.bm, 12
  br i1 %.not291, label %bb.r, label %.thread317

bb.r:                                             ; preds = %bb.q
  %i.bn = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.b)
  %i.bo = add i32 %i.bn, %1                       ; 4 uses
  %i.bp = load i32, ptr %i.b, align 4, !tbaa !576
  %i.bq = add i32 %i.bo, %i.bp                    ; 5 uses
  %i.br = icmp ult i32 %i.bo, %i.bq
  br i1 %i.br, label %.lr.ph353, label %._crit_edge354

.lr.ph353:                                        ; preds = %bb.r
  %i.bs = icmp ne i32 %.0232, 0
  %i.bt = zext i32 %.0240 to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph353, %bb.ad
  %.0241351 = phi i32 [ %i.bo, %.lr.ph353 ], [ %i.dl, %bb.ad ] ; 4 uses
  %i.bu = zext i32 %.0241351 to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !741
  %i.bx = and i8 %i.bw, 15                        ; 3 uses
  %i.by = add nsw i8 %i.bx, -11
  %or.cond = icmp ult i8 %i.by, -4
  br i1 %or.cond, label %.thread317, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %.0241351, ptr noundef %i.b) ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %.thread317, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = add i32 %i.bz, %.0241351                ; 2 uses
  %i.cc = load i32, ptr %i.b, align 4, !tbaa !576 ; 3 uses
  %i.cd = add i32 %i.cc, %i.cb                    ; 8 uses
  %.not297 = icmp ult i32 %i.cd, %i.bq
  br i1 %.not297, label %bb.v, label %.thread317

bb.v:                                             ; preds = %bb.u
  %i.ce = zext i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ce ; 2 uses
  %i.cg = icmp eq i8 %i.bx, 7
  %i.ch = icmp eq i8 %i.bx, 10
  %i.ci = or i1 %i.cg, %i.ch                      ; 2 uses
  %or.cond.i = and i1 %i.bs, %i.ci
  br i1 %or.cond.i, label %bb.w, label %.split

bb.w:                                             ; preds = %bb.v
  %.not.i307 = icmp eq i32 %.0240, %i.cc
  br i1 %.not.i307, label %jsonLabelCompare.exit, label %jsonLabelCompare.exit.thread

.split:                                           ; preds = %bb.v
  %i.cj = zext i1 %i.ci to i32
  %i.ck = tail call fastcc i32 @jsonLabelCompareEscaped(ptr noundef nonnull readonly %.0239, i32 noundef %.0240, i32 noundef range(i32 0, 2) %.0232, ptr noundef readonly %i.cf, i32 noundef %i.cc, i32 noundef range(i32 0, 2) %i.cj)
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %jsonLabelCompare.exit.thread, label %bb.x

jsonLabelCompare.exit:                            ; preds = %bb.w
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %.0239, ptr readonly %i.cf, i64 %i.bt)
  %.not423 = icmp eq i32 %bcmp.i, 0
  br i1 %.not423, label %bb.x, label %jsonLabelCompare.exit.thread

bb.x:                                             ; preds = %.split, %jsonLabelCompare.exit
  %i.cm = zext i32 %i.cd to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !741
  %i.cp = and i8 %i.co, 15
  %i.cq = icmp samesign ugt i8 %i.cp, 12
  br i1 %i.cq, label %.thread317, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %i.cd, ptr noundef %i.b) ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.thread317, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = add i32 %i.cr, %i.cd
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !576
  %i.cv = add i32 %i.ct, %i.cu
  %i.cw = icmp ugt i32 %i.cv, %i.bq
  br i1 %i.cw, label %.thread317, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = zext i32 %.3247 to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cx
  %i.cz = tail call fastcc i32 @jsonLookupStep(ptr noundef nonnull %0, i32 noundef %i.cd, ptr noundef nonnull %i.cy, i32 noundef %.0241351) ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.db = load i32, ptr %i.da, align 4, !tbaa !2175
  %.not299 = icmp eq i32 %i.db, 0
  br i1 %.not299, label %.thread317, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @jsonAfterEditSizeAdjust(ptr noundef nonnull %0, i32 noundef %1)
  br label %.thread317

jsonLabelCompare.exit.thread:                     ; preds = %.split, %bb.w, %jsonLabelCompare.exit
  %i.dc = zext i32 %i.cd to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !741
  %i.df = and i8 %i.de, 15
  %i.dg = icmp samesign ugt i8 %i.df, 12
  br i1 %i.dg, label %.thread317, label %bb.ac

bb.ac:                                            ; preds = %jsonLabelCompare.exit.thread
  %i.dh = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %i.cd, ptr noundef %i.b) ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %.thread317, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = load i32, ptr %i.b, align 4, !tbaa !576
  %i.dk = add i32 %i.dh, %i.cd
  %i.dl = add i32 %i.dk, %i.dj                    ; 3 uses
  %i.dm = icmp ult i32 %i.dl, %i.bq
  br i1 %i.dm, label %bb.s, label %._crit_edge354, !llvm.loop !5185

._crit_edge354:                                   ; preds = %bb.ad, %bb.r
  %.0241.lcssa = phi i32 [ %i.bo, %bb.r ], [ %i.dl, %bb.ad ] ; 4 uses
  %i.dn = icmp ugt i32 %.0241.lcssa, %i.bq
  br i1 %i.dn, label %.thread317, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge354
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !2172 ; 2 uses
  %i.dq = icmp ugt i8 %i.dp, 2
  br i1 %i.dq, label %bb.af, label %.thread317

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  %i.dr = icmp eq i8 %i.dp, 5
  %i.ds = zext i32 %.3247 to i64                  ; 2 uses
  br i1 %i.dr, label %bb.ag, label %._crit_edge373

bb.ag:                                            ; preds = %bb.af
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ds
  %i.du = tail call fastcc i32 @patternCompare(ptr noundef nonnull @.str.632, ptr noundef nonnull readonly %i.dt, ptr noundef nonnull @globInfo, i32 noundef 91)
  %.not292 = icmp eq i32 %i.du, 0
  br i1 %.not292, label %._crit_edge373, label %bb.am

._crit_edge373:                                   ; preds = %bb.af, %bb.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 0, i64 72, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !2170
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !2170
  %.not293 = icmp eq i32 %.0232, 0
  %7 = select i1 %.not293, i8 9, i8 10
  call fastcc void @jsonBlobAppendNode(ptr noundef nonnull %5, i8 noundef zeroext %7, i32 noundef %.0240, ptr noundef null)
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 47
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !2145
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 47 ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !2145
  %i.ec = or i8 %i.eb, %i.dz
  store i8 %i.ec, ptr %i.ea, align 1, !tbaa !2145
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ds
  %i.ee = call fastcc i32 @jsonCreateEditSubstructure(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull %i.ed) ; 2 uses
  %i.ef = icmp ugt i32 %i.ee, -5
  br i1 %i.ef, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge373
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !2171 ; 3 uses
  %i.ei = add i32 %i.eh, %.0240                   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !2171
  %i.el = add i32 %i.ei, %i.ek
  %i.em = call fastcc i32 @jsonBlobMakeEditable(ptr noundef nonnull %0, i32 noundef %i.el)
  %.not294 = icmp eq i32 %i.em, 0
  br i1 %.not294, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.en = load i32, ptr %i.ej, align 8, !tbaa !2171
  %i.eo = add i32 %i.en, %i.ei
  call fastcc void @jsonBlobEdit(ptr noundef nonnull %0, i32 noundef %.0241.lcssa, i32 noundef 0, ptr noundef null, i32 noundef %i.eo)
  %i.ep = load i8, ptr %i.ea, align 1, !tbaa !2145
  %.not295 = icmp eq i8 %i.ep, 0
  br i1 %.not295, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.eq = load ptr, ptr %0, align 8, !tbaa !2169
  %i.er = zext i32 %.0241.lcssa to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.er
  %i.et = load ptr, ptr %5, align 8, !tbaa !2169
  %i.eu = zext i32 %i.eh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.es, ptr align 1 %i.et, i64 %i.eu, i1 false)
  %i.ev = add i32 %i.eh, %.0241.lcssa             ; 2 uses
  %i.ew = load ptr, ptr %0, align 8, !tbaa !2169
  %i.ex = zext i32 %i.ev to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ex
  %i.ez = zext i32 %.0240 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr nonnull align 1 %.0239, i64 %i.ez, i1 false)
  %i.fa = add i32 %i.ev, %.0240
  %i.fb = load ptr, ptr %0, align 8, !tbaa !2169
  %i.fc = zext i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fc
  %i.fe = load ptr, ptr %4, align 8, !tbaa !2169
  %i.ff = load i32, ptr %i.ej, align 8, !tbaa !2171
  %i.fg = zext i32 %i.ff to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fd, ptr align 1 %i.fe, i64 %i.fg, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !2175
  %.not296 = icmp eq i32 %i.fi, 0
  br i1 %.not296, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call fastcc void @jsonAfterEditSizeAdjust(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak, %bb.aj, %bb.ah, %._crit_edge373
  call fastcc void @jsonParseReset(ptr noundef nonnull %4)
  call fastcc void @jsonParseReset(ptr noundef nonnull %5)
  br label %bb.am

bb.am:                                            ; preds = %bb.ag, %bb.al
  %.3253 = phi i32 [ %i.ee, %bb.al ], [ -3, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  br label %.thread317

bb.an:                                            ; preds = %bb.a
  %i.fj = load ptr, ptr %0, align 8, !tbaa !2169
  %i.fk = zext i32 %1 to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !741
  %i.fn = and i8 %i.fm, 15
  %.not = icmp eq i8 %i.fn, 11
  br i1 %.not, label %bb.ao, label %.thread317

bb.ao:                                            ; preds = %bb.an
  %i.fo = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.b)
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !741 ; 3 uses
  %i.fr = add i8 %i.fq, -58
  %.not275339 = icmp ult i8 %i.fr, -10
  br i1 %.not275339, label %bb.ap, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ao, %.lr.ph
  %i.fs = phi i8 [ %i.gb, %.lr.ph ], [ %i.fq, %bb.ao ]
  %.0230341 = phi i64 [ %.1231, %.lr.ph ], [ 0, %bb.ao ] ; 3 uses
  %.4248340 = phi i32 [ %i.fy, %.lr.ph ], [ 1, %bb.ao ]
  %i.ft = icmp ult i64 %.0230341, 4294967295
  %i.fu = mul nuw nsw i64 %.0230341, 10
  %i.fv = zext nneg i8 %i.fs to i64
  %i.fw = add nsw i64 %i.fu, -48
  %i.fx = add i64 %i.fw, %i.fv
  %.1231 = select i1 %i.ft, i64 %i.fx, i64 %.0230341 ; 2 uses
  %i.fy = add i32 %.4248340, 1                    ; 4 uses
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !741 ; 3 uses
  %i.gc = add i8 %i.gb, -58
  %.not275 = icmp ult i8 %i.gc, -10
  br i1 %.not275, label %._crit_edge, label %.lr.ph, !llvm.loop !5186

._crit_edge:                                      ; preds = %.lr.ph
  %i.gd = icmp ugt i32 %i.fy, 1
  %.not276 = icmp eq i8 %i.gb, 93
  %or.cond305 = and i1 %i.gd, %.not276
  br i1 %or.cond305, label %bb.aw, label %.thread317

bb.ap:                                            ; preds = %bb.ao
  %i.ge = icmp eq i8 %i.fq, 35
  br i1 %i.ge, label %bb.aq, label %.thread317

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.gf = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %i.a) ; 2 uses
  %i.gg = add i32 %i.gf, %1                       ; 3 uses
  %i.gh = load i32, ptr %i.a, align 4, !tbaa !576
  %i.gi = add i32 %i.gg, %i.gh                    ; 2 uses
  %i.gj = icmp ne i32 %i.gf, 0
  %i.gk = icmp ult i32 %i.gg, %i.gi
  %i.gl = select i1 %i.gj, i1 %i.gk, i1 false
  br i1 %i.gl, label %.lr.ph.i, label %jsonbArrayCount.exit

.lr.ph.i:                                         ; preds = %bb.aq, %.lr.ph.i
  %.017.i = phi i32 [ %i.gq, %.lr.ph.i ], [ 0, %bb.aq ]
  %.01416.i = phi i32 [ %i.gp, %.lr.ph.i ], [ %i.gg, %bb.aq ] ; 2 uses
  %i.gm = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull readonly %0, i32 noundef %.01416.i, ptr noundef %i.a) ; 2 uses
  %i.gn = load i32, ptr %i.a, align 4, !tbaa !576
  %i.go = add i32 %i.gm, %.01416.i
  %i.gp = add i32 %i.go, %i.gn                    ; 2 uses
  %i.gq = add i32 %.017.i, 1                      ; 2 uses
  %i.gr = icmp ne i32 %i.gm, 0
  %i.gs = icmp ult i32 %i.gp, %i.gi
  %i.gt = select i1 %i.gr, i1 %i.gs, i1 false
  br i1 %i.gt, label %.lr.ph.i, label %jsonbArrayCount.exit.loopexit, !llvm.loop !266

jsonbArrayCount.exit.loopexit:                    ; preds = %.lr.ph.i
  %i.gu = zext i32 %i.gq to i64
  br label %jsonbArrayCount.exit

jsonbArrayCount.exit:                             ; preds = %jsonbArrayCount.exit.loopexit, %bb.aq
  %.0.lcssa.i = phi i64 [ 0, %bb.aq ], [ %i.gu, %jsonbArrayCount.exit.loopexit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !741 ; 2 uses
  %i.gx = icmp eq i8 %i.gw, 45
  br i1 %i.gx, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %jsonbArrayCount.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !741 ; 2 uses
  %i.ha = add i8 %i.gz, -58
  %.not277 = icmp ult i8 %i.ha, -10
  br i1 %.not277, label %.thread317, label %.preheader326

.preheader326:                                    ; preds = %bb.ar, %bb.at
  %i.hb = phi i8 [ %i.hk, %bb.at ], [ %i.gz, %bb.ar ]
  %.5249 = phi i32 [ %i.hh, %bb.at ], [ 3, %bb.ar ]
  %.0 = phi i64 [ %.1, %bb.at ], [ 0, %bb.ar ]    ; 3 uses
  %i.hc = icmp ult i64 %.0, 4294967295
  br i1 %i.hc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.preheader326
  %i.hd = mul nuw nsw i64 %.0, 10
  %i.he = zext nneg i8 %i.hb to i64
  %i.hf = add nsw i64 %i.hd, -48
  %i.hg = add nsw i64 %i.hf, %i.he
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.preheader326
  %.1 = phi i64 [ %i.hg, %bb.as ], [ %.0, %.preheader326 ] ; 3 uses
  %i.hh = add i32 %.5249, 1                       ; 3 uses
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !741 ; 3 uses
  %i.hl = add i8 %i.hk, -58
  %.not278 = icmp ult i8 %i.hl, -10
  br i1 %.not278, label %bb.au, label %.preheader326, !llvm.loop !5187

bb.au:                                            ; preds = %bb.at
  %.not279 = icmp ugt i64 %.1, %.0.lcssa.i
  %i.hm = sub nuw i64 %.0.lcssa.i, %.1
  br i1 %.not279, label %.thread317, label %bb.av

bb.av:                                            ; preds = %bb.au, %jsonbArrayCount.exit
  %i.hn = phi i8 [ %i.hk, %bb.au ], [ %i.gw, %jsonbArrayCount.exit ]
  %.6 = phi i32 [ %i.hh, %bb.au ], [ 2, %jsonbArrayCount.exit ]
  %.3 = phi i64 [ %i.hm, %bb.au ], [ %.0.lcssa.i, %jsonbArrayCount.exit ]
  %.not280 = icmp eq i8 %i.hn, 93
  br i1 %.not280, label %bb.aw, label %.thread317

bb.aw:                                            ; preds = %._crit_edge, %bb.av
  %.7 = phi i32 [ %.6, %bb.av ], [ %i.fy, %._crit_edge ] ; 2 uses
  %.4 = phi i64 [ %.3, %bb.av ], [ %.1231, %._crit_edge ] ; 3 uses
  %i.ho = add i32 %i.fo, %1                       ; 5 uses
  %i.hp = load i32, ptr %i.b, align 4, !tbaa !576
end_hunk_0
begin_hunk_1_@windowCodeRangeTest:bb.a
  %.not.i119 = icmp eq i32 %.0.i84141, 0
  br i1 %.not.i119, label %sqlite3ReleaseTempReg.exit, label %bb.au

bb.au:                                            ; preds = %sqlite3VdbeResolveLabel.exit
  %i.jr = load i8, ptr %i.t, align 1, !tbaa !2330 ; 3 uses
  %i.js = icmp ult i8 %i.jr, 8
  br i1 %i.js, label %bb.av, label %sqlite3ReleaseTempReg.exit

bb.av:                                            ; preds = %bb.au
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.ju = add nuw nsw i8 %i.jr, 1
  store i8 %i.ju, ptr %i.t, align 1, !tbaa !2330
  %i.jv = zext nneg i8 %i.jr to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.jv
  store i32 %.0.i84141, ptr %i.jw, align 4, !tbaa !576
  br label %sqlite3ReleaseTempReg.exit

sqlite3ReleaseTempReg.exit:                       ; preds = %sqlite3VdbeResolveLabel.exit, %bb.au, %bb.av
  %.not.i120 = icmp eq i32 %.0.i85, 0
  br i1 %.not.i120, label %sqlite3ReleaseTempReg.exit121, label %bb.aw

bb.aw:                                            ; preds = %sqlite3ReleaseTempReg.exit
  %i.jx = load i8, ptr %i.t, align 1, !tbaa !2330 ; 3 uses
  %i.jy = icmp ult i8 %i.jx, 8
  br i1 %i.jy, label %bb.ax, label %sqlite3ReleaseTempReg.exit121

bb.ax:                                            ; preds = %bb.aw
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.ka = add nuw nsw i8 %i.jx, 1
  store i8 %i.ka, ptr %i.t, align 1, !tbaa !2330
  %i.kb = zext nneg i8 %i.jx to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.kb
  store i32 %.0.i85, ptr %i.kc, align 4, !tbaa !576
  br label %sqlite3ReleaseTempReg.exit121

sqlite3ReleaseTempReg.exit121:                    ; preds = %sqlite3ReleaseTempReg.exit, %bb.aw, %bb.ax
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @windowReadPeerValues(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2516 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2050 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !2515   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1233 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %sqlite3GetVdbe.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2248
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !1001
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1409
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
  %i.s = tail call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %i.e)
  br label %sqlite3GetVdbe.exit

sqlite3GetVdbe.exit:                              ; preds = %bb.b, %bb.f
  %.0.i = phi ptr [ %i.s, %bb.f ], [ %i.g, %bb.b ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2049 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.w = load i32, ptr %i.v, align 8, !tbaa !2295
  %.not18 = icmp eq ptr %i.u, null
  br i1 %.not18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %sqlite3GetVdbe.exit
  %i.x = load i32, ptr %i.u, align 8, !tbaa !576
  br label %bb.h

bb.h:                                             ; preds = %sqlite3GetVdbe.exit, %bb.g
  %i.y = phi i32 [ %i.x, %bb.g ], [ 0, %sqlite3GetVdbe.exit ]
  %i.z = add nsw i32 %i.y, %i.w
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !576
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
  %i.ah = load i32, ptr %i.ac, align 8, !tbaa !711 ; 3 uses
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !1206
  %.not.i19 = icmp sgt i32 %i.ai, %i.ah
  br i1 %.not.i19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 95, i32 noundef %1, i32 noundef %i.af, i32 noundef %i.ag), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = add nsw i32 %i.ah, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !711
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !710
  %i.am = sext i32 %i.ah to i64
  %i.an = getelementptr inbounds [24 x i8], ptr %i.al, i64 %i.am ; 7 uses
  store i8 95, ptr %i.an, align 8, !tbaa !938
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  store i16 0, ptr %i.ao, align 2, !tbaa !957
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %1, ptr %i.ap, align 4, !tbaa !954
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.af, ptr %i.aq, align 8, !tbaa !955
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 %i.ag, ptr %i.ar, align 4, !tbaa !956
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr null, ptr %i.as, align 8, !tbaa !741
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 0, ptr %i.at, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.j, %bb.k
  %i.au = add nuw nsw i32 %.021, 1                ; 2 uses
  %i.av = load i32, ptr %i.d, align 8, !tbaa !576
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.i, label %.loopexit, !llvm.loop !5979

.loopexit:                                        ; preds = %sqlite3VdbeAddOp3.exit, %bb.h, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @windowAggStep(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2515   ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1233 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %sqlite3GetVdbe.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2248
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1001
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1409
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
  %i.o = tail call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %i.a)
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
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.y = icmp eq i32 %3, 0                        ; 2 uses
  %i.z = xor i32 %3, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %5 = select i1 %i.y, i32 163, i32 162           ; 2 uses
  %i.ac = trunc nuw i32 %5 to i8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph190, %bb.co
  %.0111189 = phi ptr [ %1, %.lr.ph190 ], [ %i.qe, %bb.co ] ; 15 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0111189, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2297 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0111189, i64 140 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !2299
  %.not114 = icmp eq i8 %i.ag, 0
  br i1 %.not114, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %.0111189, i64 112
  %.0111.val = load ptr, ptr %i.ah, align 8, !tbaa !2296
  %i.ai = getelementptr i8, ptr %.0111.val, i64 32
  %.0111.val.val = load ptr, ptr %i.ai, align 8, !tbaa !741 ; 2 uses
  %.not.i129 = icmp eq ptr %.0111.val.val, null
  br i1 %.not.i129, label %._crit_edge, label %windowArgCount.exit

windowArgCount.exit:                              ; preds = %bb.g
  %i.aj = load i32, ptr %.0111.val.val, align 8, !tbaa !576 ; 6 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %windowArgCount.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %.0111189, i64 124 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !2298 ; 2 uses
  %i.ao = load i32, ptr %i.p, align 8, !tbaa !711 ; 3 uses
  %i.ap = load i32, ptr %i.q, align 4, !tbaa !1206
  %.not.i130.peel = icmp sgt i32 %i.ap, %i.ao
  br i1 %.not.i130.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 95, i32 noundef %2, i32 noundef %i.an, i32 noundef %4), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit.peel

bb.j:                                             ; preds = %bb.h
  %i.ar = add nsw i32 %i.ao, 1
  store i32 %i.ar, ptr %i.p, align 8, !tbaa !711
  %i.as = load ptr, ptr %i.r, align 8, !tbaa !710
  %i.at = sext i32 %i.ao to i64
  %i.au = getelementptr inbounds [24 x i8], ptr %i.as, i64 %i.at ; 7 uses
  store i8 95, ptr %i.au, align 8, !tbaa !938
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i16 0, ptr %i.av, align 2, !tbaa !957
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %2, ptr %i.aw, align 4, !tbaa !954
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.an, ptr %i.ax, align 8, !tbaa !955
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 %4, ptr %i.ay, align 4, !tbaa !956
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr null, ptr %i.az, align 8, !tbaa !741
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 0, ptr %i.ba, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit.peel

sqlite3VdbeAddOp3.exit.peel:                      ; preds = %bb.j, %bb.i
  %exitcond.peel.not = icmp eq i32 %i.aj, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %sqlite3VdbeAddOp3.exit.peel
  %i.bb = load ptr, ptr %i.al, align 8, !tbaa !740
  %.not126.peel195 = icmp eq ptr %i.bb, @nth_valueName
  %.pre206 = load i32, ptr %i.am, align 4, !tbaa !2298 ; 2 uses
  %.pre208 = load i32, ptr %i.p, align 8, !tbaa !711 ; 6 uses
  %.pre210 = load i32, ptr %i.q, align 4, !tbaa !1206 ; 2 uses
  br i1 %.not126.peel195, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.peel.next
  %i.bc = add nsw i32 %.pre206, 1                 ; 2 uses
  %.not.i130.peel196 = icmp sgt i32 %.pre210, %.pre208
  br i1 %.not.i130.peel196, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 95, i32 noundef %2, i32 noundef %i.bc, i32 noundef %i.t), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit.peel198

bb.m:                                             ; preds = %bb.k
  %i.be = add nsw i32 %.pre208, 1
  store i32 %i.be, ptr %i.p, align 8, !tbaa !711
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !710
  %i.bg = sext i32 %.pre208 to i64
  %i.bh = getelementptr inbounds [24 x i8], ptr %i.bf, i64 %i.bg ; 7 uses
  store i8 95, ptr %i.bh, align 8, !tbaa !938
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i16 0, ptr %i.bi, align 2, !tbaa !957
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %2, ptr %i.bj, align 4, !tbaa !954
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 %i.bc, ptr %i.bk, align 8, !tbaa !955
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 %i.t, ptr %i.bl, align 4, !tbaa !956
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr null, ptr %i.bm, align 8, !tbaa !741
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 0, ptr %i.bn, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit.peel198

bb.n:                                             ; preds = %.peel.next
  %i.bo = load i32, ptr %i.s, align 8, !tbaa !2289 ; 2 uses
  %i.bp = add nsw i32 %.pre206, 1                 ; 2 uses
  %.not.i132.peel197 = icmp sgt i32 %.pre210, %.pre208
  br i1 %.not.i132.peel197, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 95, i32 noundef %i.bo, i32 noundef %i.bp, i32 noundef %i.t), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit.peel198

bb.p:                                             ; preds = %bb.n
  %i.br = add nsw i32 %.pre208, 1
  store i32 %i.br, ptr %i.p, align 8, !tbaa !711
  %i.bs = load ptr, ptr %i.r, align 8, !tbaa !710
  %i.bt = sext i32 %.pre208 to i64
  %i.bu = getelementptr inbounds [24 x i8], ptr %i.bs, i64 %i.bt ; 7 uses
  store i8 95, ptr %i.bu, align 8, !tbaa !938
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i16 0, ptr %i.bv, align 2, !tbaa !957
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %i.bo, ptr %i.bw, align 4, !tbaa !954
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 %i.bp, ptr %i.bx, align 8, !tbaa !955
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 %i.t, ptr %i.by, align 4, !tbaa !956
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr null, ptr %i.bz, align 8, !tbaa !741
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 0, ptr %i.ca, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit.peel198

sqlite3VdbeAddOp3.exit.peel198:                   ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %exitcond.peel199.not = icmp eq i32 %i.aj, 2
  br i1 %exitcond.peel199.not, label %._crit_edge, label %.peel.next193

.peel.next193:                                    ; preds = %sqlite3VdbeAddOp3.exit.peel198, %sqlite3VdbeAddOp3.exit
  %.0108182 = phi i32 [ %i.cr, %sqlite3VdbeAddOp3.exit ], [ 2, %sqlite3VdbeAddOp3.exit.peel198 ] ; 3 uses
  %i.cb = load i32, ptr %i.am, align 4, !tbaa !2298
  %i.cc = add nsw i32 %i.cb, %.0108182            ; 2 uses
  %i.cd = add nsw i32 %.0108182, %4               ; 2 uses
  %i.ce = load i32, ptr %i.p, align 8, !tbaa !711 ; 3 uses
  %i.cf = load i32, ptr %i.q, align 4, !tbaa !1206
  %.not.i130 = icmp sgt i32 %i.cf, %i.ce
  br i1 %.not.i130, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.peel.next193
  %i.cg = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 95, i32 noundef %2, i32 noundef %i.cc, i32 noundef %i.cd), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.r:                                             ; preds = %.peel.next193
  %i.ch = add nsw i32 %i.ce, 1
  store i32 %i.ch, ptr %i.p, align 8, !tbaa !711
  %i.ci = load ptr, ptr %i.r, align 8, !tbaa !710
  %i.cj = sext i32 %i.ce to i64
  %i.ck = getelementptr inbounds [24 x i8], ptr %i.ci, i64 %i.cj ; 7 uses
  store i8 95, ptr %i.ck, align 8, !tbaa !938
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  store i16 0, ptr %i.cl, align 2, !tbaa !957
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %2, ptr %i.cm, align 4, !tbaa !954
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 %i.cc, ptr %i.cn, align 8, !tbaa !955
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 %i.cd, ptr %i.co, align 4, !tbaa !956
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr null, ptr %i.cp, align 8, !tbaa !741
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store i8 0, ptr %i.cq, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.r, %bb.q
  %i.cr = add nuw nsw i32 %.0108182, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cr, %i.aj
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next193, !llvm.loop !5980

._crit_edge:                                      ; preds = %sqlite3VdbeAddOp3.exit, %bb.g, %bb.f, %sqlite3VdbeAddOp3.exit.peel, %sqlite3VdbeAddOp3.exit.peel198, %windowArgCount.exit
  %i.cs = phi i32 [ 1, %sqlite3VdbeAddOp3.exit.peel ], [ %i.aj, %windowArgCount.exit ], [ 0, %bb.g ], [ 2, %sqlite3VdbeAddOp3.exit.peel198 ], [ 0, %bb.f ], [ %i.aj, %sqlite3VdbeAddOp3.exit ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0111189, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !2048
  %.not115 = icmp eq ptr %i.cu, null
  br i1 %.not115, label %sqlite3ReleaseTempReg.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.cv = load i8, ptr %i.u, align 1, !tbaa !2330 ; 2 uses
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cx = load i32, ptr %i.w, align 4, !tbaa !1213
  %i.cy = add nsw i32 %i.cx, 1                    ; 2 uses
  store i32 %i.cy, ptr %i.w, align 4, !tbaa !1213
  br label %sqlite3GetTempReg.exit

bb.u:                                             ; preds = %bb.s
  %i.cz = add i8 %i.cv, -1                        ; 2 uses
  store i8 %i.cz, ptr %i.u, align 1, !tbaa !2330
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !576
end_hunk_1
begin_hunk_2_@sqlite3GenerateConstraintChecks:bb.a
  %i.bhl = getelementptr inbounds [24 x i8], ptr %i.bhj, i64 %i.bhk ; 7 uses
  store i8 54, ptr %i.bhl, align 8, !tbaa !938
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhl, i64 2
  store i16 0, ptr %i.bhm, align 2, !tbaa !957
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhl, i64 4
  store i32 %5, ptr %i.bhn, align 4, !tbaa !954
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhl, i64 8
  store i32 %.0544, ptr %i.bho, align 8, !tbaa !955
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bhl, i64 12
  store i32 %6, ptr %i.bhp, align 4, !tbaa !956
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhl, i64 16
  store ptr null, ptr %i.bhq, align 8, !tbaa !741
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhl, i64 1
  store i8 0, ptr %i.bhr, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit933

sqlite3VdbeAddOp3.exit933:                        ; preds = %bb.kh, %bb.ki
  %i.bhs = load i32, ptr %i.bgp, align 8, !tbaa !711 ; 4 uses
  %i.bht = icmp sgt i32 %i.bhs, 0
  br i1 %i.bht, label %bb.kj, label %sqlite3VdbeChangeP5.exit934

bb.kj:                                            ; preds = %sqlite3VdbeAddOp3.exit933
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bhv = load ptr, ptr %i.bhu, align 8, !tbaa !710
  %i.bhw = zext nneg i32 %i.bhs to i64
  %i.bhx = getelementptr [24 x i8], ptr %i.bhv, i64 %i.bhw
  %i.bhy = getelementptr i8, ptr %i.bhx, i64 -22
  store i16 144, ptr %i.bhy, align 2, !tbaa !957
  br label %sqlite3VdbeChangeP5.exit934

sqlite3VdbeChangeP5.exit934:                      ; preds = %bb.kj, %sqlite3VdbeAddOp3.exit933, %bb.kf
  %i.bhz = phi i32 [ %i.bhs, %bb.kj ], [ %i.bhs, %sqlite3VdbeAddOp3.exit933 ], [ %.pre1121, %bb.kf ] ; 3 uses
  %i.bia = load i32, ptr %i.bgr, align 4, !tbaa !1206
  %.not.i935 = icmp sgt i32 %i.bia, %i.bhz
  br i1 %.not.i935, label %bb.kl, label %bb.kk

bb.kk:                                            ; preds = %sqlite3VdbeChangeP5.exit934
  %i.bib = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 31, i32 noundef %3, i32 noundef %.0544, i32 noundef %5), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit937

bb.kl:                                            ; preds = %sqlite3VdbeChangeP5.exit934
  %i.bic = add nsw i32 %i.bhz, 1
  store i32 %i.bic, ptr %i.bgp, align 8, !tbaa !711
  %i.bid = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bie = load ptr, ptr %i.bid, align 8, !tbaa !710
  %i.bif = sext i32 %i.bhz to i64
  %i.big = getelementptr inbounds [24 x i8], ptr %i.bie, i64 %i.bif ; 7 uses
  store i8 31, ptr %i.big, align 8, !tbaa !938
  %i.bih = getelementptr inbounds nuw i8, ptr %i.big, i64 2
  store i16 0, ptr %i.bih, align 2, !tbaa !957
  %i.bii = getelementptr inbounds nuw i8, ptr %i.big, i64 4
  store i32 %3, ptr %i.bii, align 4, !tbaa !954
  %i.bij = getelementptr inbounds nuw i8, ptr %i.big, i64 8
  store i32 %.0544, ptr %i.bij, align 8, !tbaa !955
  %i.bik = getelementptr inbounds nuw i8, ptr %i.big, i64 12
  store i32 %5, ptr %i.bik, align 4, !tbaa !956
  %i.bil = getelementptr inbounds nuw i8, ptr %i.big, i64 16
  store ptr null, ptr %i.bil, align 8, !tbaa !741
  %i.bim = getelementptr inbounds nuw i8, ptr %i.big, i64 1
  store i8 0, ptr %i.bim, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit937

sqlite3VdbeAddOp3.exit937:                        ; preds = %bb.kk, %bb.kl
  call fastcc void @sqlite3RowidConstraint(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %1)
  br label %sqlite3VdbeGoto.exit940

bb.km:                                            ; preds = %sqlite3VdbeAddOp2.exit930
  %i.bin = load i32, ptr %i.bgr, align 4, !tbaa !1206
  %.not.i.i938 = icmp sgt i32 %i.bin, %.pre1121
  br i1 %.not.i.i938, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bio = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 9, i32 noundef 0, i32 noundef %.0544, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeGoto.exit940

bb.ko:                                            ; preds = %bb.km
  %i.bip = add nsw i32 %.pre1121, 1
  store i32 %i.bip, ptr %i.bgp, align 8, !tbaa !711
  %i.biq = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !710
  %i.bis = sext i32 %.pre1121 to i64
  %i.bit = getelementptr inbounds [24 x i8], ptr %i.bir, i64 %i.bis ; 7 uses
  store i8 9, ptr %i.bit, align 8, !tbaa !938
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bit, i64 2
  store i16 0, ptr %i.biu, align 2, !tbaa !957
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bit, i64 4
  store i32 0, ptr %i.biv, align 4, !tbaa !954
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bit, i64 8
  store i32 %.0544, ptr %i.biw, align 8, !tbaa !955
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bit, i64 12
  store i32 0, ptr %i.bix, align 4, !tbaa !956
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bit, i64 16
  store ptr null, ptr %i.biy, align 8, !tbaa !741
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bit, i64 1
  store i8 0, ptr %i.biz, align 1, !tbaa !939
  br label %sqlite3VdbeGoto.exit940

sqlite3VdbeGoto.exit940:                          ; preds = %bb.ko, %bb.kn, %sqlite3VdbeAddOp3.exit937
  %i.bja = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bjb = load ptr, ptr %i.bja, align 8, !tbaa !1232 ; 4 uses
  %i.bjc = xor i32 %.1545.lcssa, -1               ; 2 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bjb, i64 76
  %i.bje = load i32, ptr %i.bjd, align 4, !tbaa !2385
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bjb, i64 72
  %i.bjg = load i32, ptr %i.bjf, align 8, !tbaa !2096
  %i.bjh = add nsw i32 %i.bjg, %i.bje
  %i.bji = icmp slt i32 %i.bjh, 0
  br i1 %i.bji, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %sqlite3VdbeGoto.exit940
  call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.bjb, ptr noundef nonnull readonly %i.d, i32 noundef %i.bjc)
  br label %sqlite3VdbeResolveLabel.exit941

bb.kq:                                            ; preds = %sqlite3VdbeGoto.exit940
  %i.bjj = load i32, ptr %i.bgp, align 8, !tbaa !711
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjb, i64 80
  %i.bjl = load ptr, ptr %i.bjk, align 8, !tbaa !1253
  %i.bjm = sext i32 %i.bjc to i64
  %i.bjn = getelementptr inbounds [4 x i8], ptr %i.bjl, i64 %i.bjm
  store i32 %i.bjj, ptr %i.bjn, align 4, !tbaa !576
  br label %sqlite3VdbeResolveLabel.exit941

sqlite3VdbeResolveLabel.exit941:                  ; preds = %bb.kq, %bb.kp, %bb.kb
  %i.bjo = load i32, ptr %i.g, align 8, !tbaa !1098
  %i.bjp = and i32 %i.bjo, 128
  %i.bjq = icmp eq i32 %i.bjp, 0
  br i1 %i.bjq, label %bb.kr, label %bb.kv

bb.kr:                                            ; preds = %sqlite3VdbeResolveLabel.exit941
  %i.bjr = sext i32 %.0.lcssa to i64
  %i.bjs = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bjr
  %i.bjt = load i32, ptr %i.bjs, align 4, !tbaa !576 ; 2 uses
  %i.bju = add nsw i32 %5, 1                      ; 2 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bjw = load i16, ptr %i.bjv, align 8, !tbaa !1166
  %i.bjx = sext i16 %i.bjw to i32                 ; 2 uses
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.bjz = load i32, ptr %i.bjy, align 8, !tbaa !711 ; 3 uses
  %i.bka = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  %i.bkb = load i32, ptr %i.bka, align 4, !tbaa !1206
  %.not.i942 = icmp sgt i32 %i.bkb, %i.bjz
  br i1 %.not.i942, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.bkc = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 98, i32 noundef %i.bju, i32 noundef %i.bjx, i32 noundef %i.bjt), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit944

bb.kt:                                            ; preds = %bb.kr
  %i.bkd = add nsw i32 %i.bjz, 1
  store i32 %i.bkd, ptr %i.bjy, align 8, !tbaa !711
  %i.bke = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bkf = load ptr, ptr %i.bke, align 8, !tbaa !710
  %i.bkg = sext i32 %i.bjz to i64
  %i.bkh = getelementptr inbounds [24 x i8], ptr %i.bkf, i64 %i.bkg ; 7 uses
  store i8 98, ptr %i.bkh, align 8, !tbaa !938
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkh, i64 2
  store i16 0, ptr %i.bki, align 2, !tbaa !957
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bkh, i64 4
  store i32 %i.bju, ptr %i.bkj, align 4, !tbaa !954
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkh, i64 8
  store i32 %i.bjx, ptr %i.bkk, align 8, !tbaa !955
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bkh, i64 12
  store i32 %i.bjt, ptr %i.bkl, align 4, !tbaa !956
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bkh, i64 16
  store ptr null, ptr %i.bkm, align 8, !tbaa !741
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkh, i64 1
  store i8 0, ptr %i.bkn, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit944

sqlite3VdbeAddOp3.exit944:                        ; preds = %bb.ks, %bb.kt
  %.not653 = icmp eq i8 %.4567.lcssa, 0
  br i1 %.not653, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %sqlite3VdbeAddOp3.exit944
  call fastcc void @sqlite3TableAffinity(ptr noundef nonnull %i.d, ptr noundef %1, i32 noundef 0)
  br label %bb.kv

bb.kv:                                            ; preds = %sqlite3VdbeAddOp3.exit944, %bb.ku, %sqlite3VdbeResolveLabel.exit941
  store i32 %.2578.lcssa, ptr %10, align 4, !tbaa !576
  br label %.critedge675

.critedge675:                                     ; preds = %sqlite3DbMallocRaw.exit.i, %bb.kv
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3CompleteInsertion(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef range(i32 0, 8) %6, i32 noundef range(i32 0, 2) %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1233 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.05670 = load ptr, ptr %i.c, align 8, !tbaa !1201 ; 2 uses
  %.not71 = icmp eq ptr %.05670, null
  br i1 %.not71, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 144      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 3 uses
  %.not64 = icmp eq i32 %8, 0
  %9 = select i1 %.not64, i16 0, i16 16           ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %10 = trunc nuw nsw i32 %6 to i16
  %11 = and i16 %10, 2
  %12 = or disjoint i16 %11, %9
  %13 = or disjoint i16 %12, 1                    ; 2 uses
  %i.h = icmp ne i32 %6, 0
  %i.i = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %sqlite3VdbeChangeP5.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3VdbeChangeP5.exit ] ; 4 uses
  %.05673 = phi ptr [ %.05670, %.lr.ph ], [ %.056, %sqlite3VdbeChangeP5.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !576  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %sqlite3VdbeChangeP5.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.05673, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1981
  %.not63 = icmp eq ptr %i.n, null
  br i1 %.not63, label %sqlite3VdbeAddOp2.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load i32, ptr %i.d, align 8, !tbaa !711 ; 4 uses
  %i.o = add nsw i32 %.val, 2                     ; 2 uses
  %i.p = load i32, ptr %i.e, align 4, !tbaa !1206
  %.not.i.i = icmp sgt i32 %i.p, %.val
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 51, i32 noundef %i.k, i32 noundef %i.o, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.f:                                             ; preds = %bb.d
  %i.r = add nsw i32 %.val, 1
  store i32 %i.r, ptr %i.d, align 8, !tbaa !711
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !710
  %i.t = sext i32 %.val to i64
  %i.u = getelementptr inbounds [24 x i8], ptr %i.s, i64 %i.t ; 7 uses
  store i8 51, ptr %i.u, align 8, !tbaa !938
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i16 0, ptr %i.v, align 2, !tbaa !957
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.k, ptr %i.w, align 4, !tbaa !954
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.o, ptr %i.x, align 8, !tbaa !955
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !956
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr null, ptr %i.z, align 8, !tbaa !741
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 0, ptr %i.aa, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.f, %bb.e, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.05673, i64 99 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 1            ; 3 uses
  %i.ad = and i16 %i.ac, 3
  %i.ae = icmp eq i16 %i.ad, 2
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.af = load i32, ptr %i.g, align 8, !tbaa !1098
  %i.ag = and i32 %i.af, 128
  %i.ah = icmp eq i32 %i.ag, 0                    ; 2 uses
  %brmerge = or i1 %i.ah, %i.h
  %.mux = select i1 %i.ah, i16 %9, i16 %13
  br i1 %brmerge, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i32, ptr %i.j, align 4, !tbaa !576
  %i.aj = trunc i64 %indvars.iv to i32
  %i.ak = add i32 %3, %i.aj
  tail call fastcc void @codeWithoutRowidPreupdate(ptr noundef %0, ptr noundef %1, i32 noundef %i.ak, i32 noundef %i.ai)
  %.pre = load i16, ptr %i.ab, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %sqlite3VdbeAddOp2.exit
  %i.al = phi i16 [ %i.ac, %bb.g ], [ %.pre, %bb.h ], [ %i.ac, %sqlite3VdbeAddOp2.exit ]
  %.055 = phi i16 [ %.mux, %bb.g ], [ %13, %bb.h ], [ %9, %sqlite3VdbeAddOp2.exit ]
  %i.am = add nuw i64 %indvars.iv, %i.i           ; 2 uses
  %i.an = load i32, ptr %i.j, align 4, !tbaa !576 ; 3 uses
  %i.ao = add nsw i32 %i.an, 1                    ; 2 uses
  %i.ap = and i16 %i.al, 8
  %.not65 = icmp eq i16 %i.ap, 0
  %.in.in.v = select i1 %.not65, i64 96, i64 94
  %.in.in = getelementptr inbounds nuw i8, ptr %.05673, i64 %.in.in.v
  %.in = load i16, ptr %.in.in, align 2, !tbaa !789
  %i.aq = zext i16 %.in to i32                    ; 2 uses
  %i.ar = load i32, ptr %i.d, align 8, !tbaa !711 ; 3 uses
  %i.as = load i32, ptr %i.e, align 4, !tbaa !1206
  %.not.i = icmp sgt i32 %i.as, %i.ar
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = trunc i64 %i.am to i32
  %i.au = tail call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %i.b, i32 noundef 139, i32 noundef %i.at, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef %i.aq) ; 0 uses
  br label %sqlite3VdbeAddOp4Int.exit

bb.k:                                             ; preds = %bb.i
  %i.av = add nsw i32 %i.ar, 1
  store i32 %i.av, ptr %i.d, align 8, !tbaa !711
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !710
  %i.ax = sext i32 %i.ar to i64
  %i.ay = getelementptr inbounds [24 x i8], ptr %i.aw, i64 %i.ax ; 7 uses
  store i8 -117, ptr %i.ay, align 8, !tbaa !938
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i16 0, ptr %i.az, align 2, !tbaa !957
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = trunc i64 %i.am to i32
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !954
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.an, ptr %i.bc, align 8, !tbaa !955
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 %i.ao, ptr %i.bd, align 4, !tbaa !956
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 %i.aq, ptr %i.be, align 8, !tbaa !741
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 -3, ptr %i.bf, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp4Int.exit

sqlite3VdbeAddOp4Int.exit:                        ; preds = %bb.j, %bb.k
  %i.bg = load i32, ptr %i.d, align 8, !tbaa !711 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.l, label %sqlite3VdbeChangeP5.exit

bb.l:                                             ; preds = %sqlite3VdbeAddOp4Int.exit
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !710
  %i.bj = zext nneg i32 %i.bg to i64
  %i.bk = getelementptr [24 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -22
  store i16 %.055, ptr %i.bl, align 2, !tbaa !957
  br label %sqlite3VdbeChangeP5.exit

sqlite3VdbeChangeP5.exit:                         ; preds = %bb.l, %sqlite3VdbeAddOp4Int.exit, %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %.05673, i64 40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.056 = load ptr, ptr %i.bm, align 8, !tbaa !1201 ; 2 uses
  %.not = icmp eq ptr %.056, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !6109

._crit_edge:                                      ; preds = %sqlite3VdbeChangeP5.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %sqlite3VdbeChangeP5.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !1098
  %i.bp = and i32 %i.bo, 128
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.m, label %sqlite3VdbeChangeP5.exit69

bb.m:                                             ; preds = %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !2217
  %.not58 = icmp eq i8 %i.bs, 0
  %.not59 = icmp eq i32 %6, 0
  %i.bt = trunc nuw nsw i32 %6 to i16
  %i.bu = or i16 %i.bt, 1
  %i.bv = select i1 %.not59, i16 33, i16 %i.bu
  %.1 = select i1 %.not58, i16 %i.bv, i16 0       ; 2 uses
  %.not60 = icmp eq i32 %7, 0
  %14 = or disjoint i16 %.1, 8
  %.2 = select i1 %.not60, i16 %.1, i16 %14       ; 2 uses
  %.not61 = icmp eq i32 %8, 0
  %15 = or i16 %.2, 16
  %.3 = select i1 %.not61, i16 %.2, i16 %15
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0.lcssa
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !576 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 4 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !711 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !1206
  %.not.i66 = icmp sgt i32 %i.cb, %i.bz
  br i1 %.not.i66, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 129, i32 noundef %2, i32 noundef %i.bx, i32 noundef %4), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.o:                                             ; preds = %bb.m
  %i.cd = add nsw i32 %i.bz, 1
  store i32 %i.cd, ptr %i.by, align 8, !tbaa !711
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !710
  %i.cg = sext i32 %i.bz to i64
  %i.ch = getelementptr inbounds [24 x i8], ptr %i.cf, i64 %i.cg ; 7 uses
  store i8 -127, ptr %i.ch, align 8, !tbaa !938
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  store i16 0, ptr %i.ci, align 2, !tbaa !957
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 %2, ptr %i.cj, align 4, !tbaa !954
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i32 %i.bx, ptr %i.ck, align 8, !tbaa !955
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 %4, ptr %i.cl, align 4, !tbaa !956
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr null, ptr %i.cm, align 8, !tbaa !741
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store i8 0, ptr %i.cn, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.n, %bb.o
  %i.co = load i8, ptr %i.br, align 2, !tbaa !2217
  %.not62 = icmp eq i8 %i.co, 0
  br i1 %.not62, label %bb.p, label %sqlite3VdbeAppendP4.exit

bb.p:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !687
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 103
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !928
  %.not.i68 = icmp eq i8 %i.cr, 0
  br i1 %.not.i68, label %bb.q, label %sqlite3VdbeAppendP4.exit

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !710
  %i.cu = load i32, ptr %i.by, align 8, !tbaa !711
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr [24 x i8], ptr %i.ct, i64 %i.cv ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 -23
  store i8 -5, ptr %i.cx, align 1, !tbaa !939
  %i.cy = getelementptr i8, ptr %i.cw, i64 -8
  store ptr %1, ptr %i.cy, align 8, !tbaa !741
  br label %sqlite3VdbeAppendP4.exit

sqlite3VdbeAppendP4.exit:                         ; preds = %bb.q, %bb.p, %sqlite3VdbeAddOp3.exit
  %i.cz = load i32, ptr %i.by, align 8, !tbaa !711 ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %bb.r, label %sqlite3VdbeChangeP5.exit69

bb.r:                                             ; preds = %sqlite3VdbeAppendP4.exit
  %16 = and i16 %.3, 255
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !710
  %i.dd = zext nneg i32 %i.cz to i64
  %i.de = getelementptr [24 x i8], ptr %i.dc, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 -22
  store i16 %16, ptr %i.df, align 2, !tbaa !957
  br label %sqlite3VdbeChangeP5.exit69

sqlite3VdbeChangeP5.exit69:                       ; preds = %bb.r, %sqlite3VdbeAppendP4.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @checkConstraintExprNode(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #18 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !2042
  %i.b = icmp eq i8 %i.a, -88
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i16, ptr %i.c, align 8, !tbaa !2206 ; 2 uses
  %i.e = icmp sgt i16 %i.d, -1
  br i1 %i.e, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !741
  %i.h = zext nneg i16 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !576
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink8 = phi i16 [ 1, %bb.c ], [ 2, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.m = load i16, ptr %i.l, align 4, !tbaa !2219
  %i.n = or i16 %i.m, %.sink8
  store i16 %i.n, ptr %i.l, align 4, !tbaa !2219
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @exprColumnFlagUnion(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #18 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !2042
  %i.b = icmp eq i8 %i.a, -88
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i16, ptr %i.c, align 8, !tbaa !2206 ; 2 uses
  %i.e = icmp sgt i16 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !741
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1162
  %i.j = zext nneg i16 %i.d to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 14
  %i.m = load i16, ptr %i.l, align 2, !tbaa !1164
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.o = load i16, ptr %i.n, align 4, !tbaa !2219
  %i.p = or i16 %i.o, %i.m
  store i16 %i.p, ptr %i.n, align 4, !tbaa !2219
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3RowidConstraint(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.b = load i16, ptr %i.a, align 4, !tbaa !1168 ; 2 uses
  %i.c = icmp sgt i16 %i.b, -1
  %i.d = load ptr, ptr %0, align 8, !tbaa !1001   ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !1210   ; 2 uses
  br i1 %i.c, label %.split12, label %.split

.split12:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1162
  %i.h = zext nneg i16 %i.b to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1198
  %i.k = tail call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %i.d, ptr noundef nonnull @.str.651, ptr noundef %i.e, ptr noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1233 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.b, label %sqlite3GetVdbe.exit.i

bb.b:                                             ; preds = %.split12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2248
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !1001
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1409
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
  %i.y = tail call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %0)
  br label %sqlite3GetVdbe.exit.i

sqlite3GetVdbe.exit.i:                            ; preds = %bb.e, %.split12
  %.0.i.i = phi ptr [ %i.y, %bb.e ], [ %i.m, %.split12 ] ; 3 uses
  %i.z = icmp eq i32 %1, 2
  br i1 %i.z, label %.split10.i, label %.split.i

.split10.i:                                       ; preds = %sqlite3GetVdbe.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2248 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.ab, null
  %..i.i = select i1 %.not.i11.i, ptr %0, ptr %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %..i.i, i64 39 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 1
  %i.ae = or i16 %i.ad, 2
  store i16 %i.ae, ptr %i.ac, align 1
  br label %.split.i

.split.i:                                         ; preds = %.split10.i, %sqlite3GetVdbe.exit.i
  %i.af = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %.0.i.i, i32 noundef 71, i32 noundef 1555, i32 noundef %1, i32 noundef 0, ptr noundef %i.k, i32 noundef -6) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 144
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !711 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %sqlite3HaltConstraint.exit.sink.split, label %sqlite3HaltConstraint.exit

.split:                                           ; preds = %bb.a
  %i.aj = tail call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %i.d, ptr noundef nonnull @.str.958, ptr noundef %i.e)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1233 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.al, null
  br i1 %.not.i.i13, label %bb.f, label %sqlite3GetVdbe.exit.i14

bb.f:                                             ; preds = %.split
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2248
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1001
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1409
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
  %i.ax = tail call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %0)
  br label %sqlite3GetVdbe.exit.i14

sqlite3GetVdbe.exit.i14:                          ; preds = %bb.i, %.split
  %.0.i.i15 = phi ptr [ %i.ax, %bb.i ], [ %i.al, %.split ] ; 3 uses
  %i.ay = icmp eq i32 %1, 2
  br i1 %i.ay, label %.split10.i18, label %.split.i16

.split10.i18:                                     ; preds = %sqlite3GetVdbe.exit.i14
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !2248 ; 2 uses
  %.not.i11.i19 = icmp eq ptr %i.ba, null
  %..i.i20 = select i1 %.not.i11.i19, ptr %0, ptr %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %..i.i20, i64 39 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 1
  %i.bd = or i16 %i.bc, 2
  store i16 %i.bd, ptr %i.bb, align 1
  br label %.split.i16

.split.i16:                                       ; preds = %.split10.i18, %sqlite3GetVdbe.exit.i14
  %i.be = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %.0.i.i15, i32 noundef 71, i32 noundef 2579, i32 noundef %1, i32 noundef 0, ptr noundef %i.aj, i32 noundef -6) ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 144
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !711 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %sqlite3HaltConstraint.exit.sink.split, label %sqlite3HaltConstraint.exit

sqlite3HaltConstraint.exit.sink.split:            ; preds = %.split.i16, %.split.i
  %.0.i.i15.sink = phi ptr [ %.0.i.i, %.split.i ], [ %.0.i.i15, %.split.i16 ]
  %.sink28 = phi i32 [ %i.ah, %.split.i ], [ %i.bg, %.split.i16 ]
end_hunk_2
begin_hunk_3_@fts5MergePrefixLists:bb.a
sqlite3_mutex_enter.exit.i.i194:                  ; preds = %bb.bw, %bb.bv
  %i.nx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.ny = call i32 %i.nx(ptr noundef nonnull %.sroa.0.3) #59, !inline_history !475
  %i.nz = sext i32 %i.ny to i64
  %i.oa = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ob = sub nsw i64 %i.oa, %i.nz
  store i64 %i.ob, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.oc = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.od = add nsw i64 %i.oc, -1
  store i64 %i.od, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.oe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.oe(ptr noundef nonnull %.sroa.0.3) #59, !inline_history !476
  %i.of = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i.i195 = icmp eq ptr %i.of, null
  br i1 %.not.i4.i.i195, label %sqlite3Fts5BufferFree.exit196, label %bb.bx

bb.bx:                                            ; preds = %sqlite3_mutex_enter.exit.i.i194
  %i.og = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  call void %i.og(ptr noundef nonnull %i.of) #59, !inline_history !477
  br label %sqlite3Fts5BufferFree.exit196

bb.by:                                            ; preds = %bb.bu
  %i.oh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.oh(ptr noundef nonnull %.sroa.0.3) #59, !inline_history !476
  br label %sqlite3Fts5BufferFree.exit196

sqlite3Fts5BufferFree.exit196:                    ; preds = %sqlite3Fts5BufferFree.exit, %sqlite3_mutex_enter.exit.i.i194, %bb.bx, %bb.by
  %i.oi = sext i32 %.sroa.12.4 to i64
  %i.oj = getelementptr inbounds i8, ptr %.sroa.0243.0, i64 %i.oi
  store i64 0, ptr %i.oj, align 1
  store ptr %.sroa.0243.0, ptr %1, align 8, !tbaa !747
  store i32 %.sroa.12.4, ptr %i.g, align 8, !tbaa !576
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.sroa.26.0, ptr %.sroa.26.0..sroa_idx, align 4, !tbaa !576
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %fts5DoclistIterInit.exit, %sqlite3Fts5BufferSize.exit.thread, %._crit_edge, %sqlite3Fts5BufferFree.exit196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fts5AppendPoslist(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3148 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3096
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 26
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3145 ; 2 uses
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3219 ; 3 uses
  %.not = icmp ugt i32 %i.i, %i.k
  br i1 %.not, label %bb.c, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.b
  %.pre = load ptr, ptr %3, align 8, !tbaa !3146
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.k, 0
  %narrow.i = select i1 %.not.i, i32 64, i32 %i.k
  %spec.select.i = sext i32 %narrow.i to i64
  %i.l = zext i32 %i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.016.i = phi i64 [ %spec.select.i, %bb.c ], [ %i.n, %bb.d ] ; 4 uses
  %i.m = icmp ult i64 %.016.i, %i.l
  %i.n = shl nuw nsw i64 %.016.i, 1
  br i1 %i.m, label %bb.d, label %bb.e, !llvm.loop !447

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %3, align 8, !tbaa !3146
  %i.p = tail call i32 @sqlite3_initialize(), !inline_history !471
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %sqlite3_realloc64.exit.i, label %sqlite3Fts5BufferSize.exit

sqlite3_realloc64.exit.i:                         ; preds = %bb.e
  %i.q = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.o, i64 noundef %.016.i), !inline_history !471 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %sqlite3Fts5BufferSize.exit, label %sqlite3Fts5BufferSize.exit.thread

sqlite3Fts5BufferSize.exit.thread:                ; preds = %sqlite3_realloc64.exit.i
  %i.s = trunc i64 %.016.i to i32
  store i32 %i.s, ptr %i.j, align 4, !tbaa !3219
  store ptr %i.q, ptr %3, align 8, !tbaa !3146
  %.pre28 = load i32, ptr %i.g, align 8, !tbaa !3145
  br label %.critedge

sqlite3Fts5BufferSize.exit:                       ; preds = %bb.e, %sqlite3_realloc64.exit.i
  store i32 7, ptr %i.c, align 4, !tbaa !576
  br label %bb.n

.critedge:                                        ; preds = %..critedge_crit_edge, %sqlite3Fts5BufferSize.exit.thread
  %i.t = phi i32 [ %i.h, %..critedge_crit_edge ], [ %.pre28, %sqlite3Fts5BufferSize.exit.thread ]
  %i.u = phi ptr [ %.pre, %..critedge_crit_edge ], [ %i.q, %sqlite3Fts5BufferSize.exit.thread ]
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v ; 4 uses
  %i.x = icmp ult i64 %1, 128
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.y = trunc nuw nsw i64 %1 to i8
  store i8 %i.y, ptr %i.w, align 1, !tbaa !741
  br label %sqlite3Fts5PutVarint.exit

bb.g:                                             ; preds = %.critedge
  %i.z = icmp ult i64 %1, 16384
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = lshr i64 %1, 7
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %i.ac = or disjoint i8 %i.ab, -128
  store i8 %i.ac, ptr %i.w, align 1, !tbaa !741
  %i.ad = trunc i64 %1 to i8
  %i.ae = and i8 %i.ad, 127
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !741
  br label %sqlite3Fts5PutVarint.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = tail call fastcc i32 @fts5PutVarint64(ptr noundef %i.w, i64 noundef %1)
  br label %sqlite3Fts5PutVarint.exit

sqlite3Fts5PutVarint.exit:                        ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi i32 [ 1, %bb.f ], [ 2, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !3145
  %i.ai = add nsw i32 %i.ah, %.0.i                ; 2 uses
  store i32 %i.ai, ptr %i.g, align 8, !tbaa !3145
  %i.aj = load ptr, ptr %3, align 8, !tbaa !3146
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak ; 4 uses
  %i.am = shl nsw i32 %i.b, 1                     ; 6 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp ult i32 %i.am, 128
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %sqlite3Fts5PutVarint.exit
  %i.ap = trunc nuw nsw i32 %i.am to i8
  store i8 %i.ap, ptr %i.al, align 1, !tbaa !741
  br label %sqlite3Fts5PutVarint.exit26

bb.k:                                             ; preds = %sqlite3Fts5PutVarint.exit
  %i.aq = icmp ult i32 %i.am, 16384
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = lshr i32 %i.am, 7
  %i.as = trunc nuw nsw i32 %i.ar to i8
  %i.at = or disjoint i8 %i.as, -128
  store i8 %i.at, ptr %i.al, align 1, !tbaa !741
  %i.au = trunc i32 %i.am to i8
  %i.av = and i8 %i.au, 126
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !741
  br label %sqlite3Fts5PutVarint.exit26

bb.m:                                             ; preds = %bb.k
  %i.ax = tail call fastcc i32 @fts5PutVarint64(ptr noundef %i.al, i64 noundef %i.an)
  br label %sqlite3Fts5PutVarint.exit26

sqlite3Fts5PutVarint.exit26:                      ; preds = %bb.j, %bb.l, %bb.m
  %.0.i25 = phi i32 [ 1, %bb.j ], [ 2, %bb.l ], [ %i.ax, %bb.m ]
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !3145
  %i.az = add nsw i32 %i.ay, %.0.i25              ; 2 uses
  store i32 %i.az, ptr %i.g, align 8, !tbaa !3145
  %i.ba = load ptr, ptr %3, align 8, !tbaa !3146
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !3314
  %i.bf = sext i32 %i.b to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.be, i64 %i.bf, i1 false)
  %i.bg = load i32, ptr %i.g, align 8, !tbaa !3145
  %i.bh = add nsw i32 %i.bg, %i.b                 ; 2 uses
  store i32 %i.bh, ptr %i.g, align 8, !tbaa !3145
  %i.bi = load ptr, ptr %3, align 8, !tbaa !3146
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %i.bj
  store i64 0, ptr %i.bk, align 1
  br label %bb.n

bb.n:                                             ; preds = %sqlite3Fts5BufferSize.exit, %sqlite3Fts5PutVarint.exit26, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fts5VisitEntries(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef nonnull %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %.not = icmp eq i32 %4, 0
  %7 = select i1 %.not, i32 48, i32 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store ptr null, ptr %i.b, align 8, !tbaa !3271
  %i.c = tail call fastcc ptr @fts5StructureRead(ptr noundef %0) ; 2 uses
  call fastcc void @fts5MultiIterNew(ptr noundef %0, ptr noundef %i.c, i32 noundef %7, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef -1, i32 noundef 0, ptr noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 9 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !3271 ; 20 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !576
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %fts5MultiIterEof.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3137
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3138 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 116
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3111 ; 2 uses
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr @fts5IterSetOutputs_None, ptr %i.n, align 8, !tbaa !858
  br label %fts5MultiIterEof.exit.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3267 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr @fts5IterSetOutputs_Nocolset, ptr %i.r, align 8, !tbaa !858
  br label %fts5MultiIterEof.exit.lr.ph

bb.f:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.p, align 4, !tbaa !576
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr @fts5IterSetOutputs_ZeroColset, ptr %i.u, align 8, !tbaa !858
  br label %fts5MultiIterEof.exit.lr.ph

bb.h:                                             ; preds = %bb.f
  %i.v = icmp eq i32 %i.l, 0
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr @fts5IterSetOutputs_Full, ptr %i.w, align 8, !tbaa !858
  br label %fts5MultiIterEof.exit.lr.ph

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !3068 ; 3 uses
  %i.z = icmp slt i32 %i.y, 101
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  store ptr @fts5IterSetOutputs_Col100, ptr %i.aa, align 8, !tbaa !858
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3219 ; 3 uses
  %i.ae = icmp ult i32 %i.ad, %i.y
  br i1 %i.ae, label %bb.l, label %fts5MultiIterEof.exit.lr.ph

bb.l:                                             ; preds = %bb.k
  %.not.i.i = icmp eq i32 %i.ad, 0
  %narrow.i.i = select i1 %.not.i.i, i32 64, i32 %i.ad
  %spec.select.i.i = sext i32 %narrow.i.i to i64
  %i.af = zext i32 %i.y to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.016.i.i = phi i64 [ %spec.select.i.i, %bb.l ], [ %i.ah, %bb.m ] ; 4 uses
  %i.ag = icmp ult i64 %.016.i.i, %i.af
  %i.ah = shl nuw nsw i64 %.016.i.i, 1
  br i1 %i.ag, label %bb.m, label %bb.n, !llvm.loop !447

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !3146
  %i.aj = tail call i32 @sqlite3_initialize(), !inline_history !502
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %sqlite3_realloc64.exit.i.i, label %sqlite3_realloc64.exit.thread.i.i

sqlite3_realloc64.exit.i.i:                       ; preds = %bb.n
  %i.ak = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.ai, i64 noundef %.016.i.i), !inline_history !502 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %sqlite3_realloc64.exit.thread.i.i, label %fts5IterSetOutputCb.exit

sqlite3_realloc64.exit.thread.i.i:                ; preds = %sqlite3_realloc64.exit.i.i, %bb.n
  store i32 7, ptr %i.d, align 4, !tbaa !576
  br label %fts5MultiIterEof.exit.thread

bb.o:                                             ; preds = %bb.j
  store ptr @fts5IterSetOutputs_Col, ptr %i.aa, align 8, !tbaa !858
  br label %fts5MultiIterEof.exit.lr.ph

fts5IterSetOutputCb.exit:                         ; preds = %sqlite3_realloc64.exit.i.i
  %i.am = trunc i64 %.016.i.i to i32
  store i32 %i.am, ptr %i.ac, align 4, !tbaa !3219
  store ptr %i.ak, ptr %i.ab, align 8, !tbaa !3146
  %.val59.pre = load i32, ptr %i.d, align 4, !tbaa !3096
  %i.an = icmp eq i32 %.val59.pre, 0
  br i1 %i.an, label %fts5MultiIterEof.exit.lr.ph, label %fts5MultiIterEof.exit.thread

fts5MultiIterEof.exit.lr.ph:                      ; preds = %bb.o, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %fts5IterSetOutputCb.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.as = sext i32 %3 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %fts5MultiIterEof.exit

fts5MultiIterEof.exit:                            ; preds = %fts5MultiIterEof.exit.lr.ph, %fts5MultiIterNext2.exit
  %.04461 = phi i32 [ 1, %fts5MultiIterEof.exit.lr.ph ], [ %.2, %fts5MultiIterNext2.exit ]
  %i.ay = load i8, ptr %i.ao, align 4, !tbaa !3307
  %.not52 = icmp eq i8 %i.ay, 0
  br i1 %.not52, label %bb.p, label %fts5MultiIterEof.exit.thread

bb.p:                                             ; preds = %fts5MultiIterEof.exit
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !3309
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !3311
  %i.bc = zext i16 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.ap, i64 %i.bc ; 3 uses
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !858
  call void %i.be(ptr noundef nonnull %i.e, ptr noundef nonnull %i.bd) #59
  %i.bf = load i32, ptr %i.d, align 4, !tbaa !3096
  %.not31.a = icmp eq i32 %i.bf, 0
  br i1 %.not31.a, label %bb.q, label %fts5MultiIterEof.exit.thread

bb.q:                                             ; preds = %bb.p
  %.not32.a = icmp eq i32 %.04461, 0
  br i1 %.not32.a, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !3385 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %3
  br i1 %i.bi, label %fts5MultiIterEof.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !3386 ; 2 uses
  %bcmp = call i32 @bcmp(ptr %2, ptr %i.bk, i64 %i.as)
  %.not33 = icmp eq i32 %bcmp, 0
  br i1 %.not33, label %bb.t, label %fts5MultiIterEof.exit.thread

bb.t:                                             ; preds = %bb.s, %bb.q
  %.028 = phi i32 [ %i.bh, %bb.s ], [ 0, %bb.q ]
  %.027 = phi ptr [ %i.bk, %bb.s ], [ null, %bb.q ]
  call void %5(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %i.e, ptr noundef %.027, i32 noundef %.028) #59, !callees !7702
  %i.bl = load i32, ptr %i.d, align 4, !tbaa !3096
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.preheader, label %fts5MultiIterEof.exit.thread

.preheader:                                       ; preds = %bb.t, %.preheader.backedge
  %.1 = phi i32 [ %.2, %.preheader.backedge ], [ 0, %bb.t ] ; 2 uses
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !3309
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !3311 ; 2 uses
  %i.bq = zext i16 %i.bp to i32                   ; 3 uses
  %i.br = zext i16 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [128 x i8], ptr %i.ap, i64 %i.br ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 0, ptr %i.a, align 4, !tbaa !576
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !3315
  call void %i.bu(ptr noundef nonnull %0, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.a) #59, !inline_history !7697
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !3279
  %i.bx = icmp eq ptr %i.bw, null
  %i.by = load i32, ptr %i.a, align 4
  %i.bz = icmp ne i32 %i.by, 0
  %or.cond.i = select i1 %i.bx, i1 true, i1 %i.bz
  br i1 %or.cond.i, label %.fts5MultiIterAdvanceRowid.exit.i_crit_edge, label %bb.u

.fts5MultiIterAdvanceRowid.exit.i_crit_edge:      ; preds = %.preheader
  %.pre = load i32, ptr %i.av, align 8, !tbaa !576 ; 2 uses
  %.pre72 = add nsw i32 %.pre, %i.bq
  br label %fts5MultiIterAdvanceRowid.exit.i

bb.u:                                             ; preds = %.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 112
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !3312 ; 2 uses
  %i.cc = load i64, ptr %i.at, align 8, !tbaa !571 ; 2 uses
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %._crit_edge.i.i, label %bb.v

._crit_edge.i.i:                                  ; preds = %bb.u
  %.pre.i.i = load i32, ptr %i.au, align 4, !tbaa !576
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ce = icmp slt i64 %i.cb, %i.cc
end_hunk_3
