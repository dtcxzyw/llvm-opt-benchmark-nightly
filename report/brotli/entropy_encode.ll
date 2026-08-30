Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/entropy_encode?download=true
begin_hunk_0_@BrotliOptimizeHuffmanCountsForRle:bb.a
  %spec.select = add i64 %.0139184, %i.m          ; 2 uses
  %i.n = add nuw i64 %.0137185, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i64 [ %i.j, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.o = icmp ult i64 %spec.select.lcssa, 16
  br i1 %i.o, label %.critedge167, label %.lr.ph188

.lr.ph188:                                        ; preds = %._crit_edge, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.b ], [ 0, %._crit_edge ] ; 4 uses
  %.0131187 = phi i64 [ %i.u, %bb.b ], [ %0, %._crit_edge ] ; 14 uses
  %i.p = getelementptr [4 x i8], ptr %1, i64 %.0131187
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph188
  %.neg = add i64 %indvar, 1
  %xtraiter = and i64 %.0131187, 1
  %i.t = icmp eq i64 %0, %.neg
  br i1 %i.t, label %.critedge.epil.preheader, label %.critedge.preheader.new

.critedge.preheader.new:                          ; preds = %.critedge.preheader
  %unroll_iter = and i64 %.0131187, -2
  br label %.critedge

bb.b:                                             ; preds = %.lr.ph188
  %i.u = add i64 %.0131187, -1                    ; 2 uses
  %cond = icmp eq i64 %i.u, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %cond, label %.critedge167, label %.lr.ph188, !llvm.loop !30

.critedge:                                        ; preds = %.critedge, %.critedge.preheader.new
  %.0132191 = phi i32 [ 1073741824, %.critedge.preheader.new ], [ %.1133.1, %.critedge ] ; 2 uses
  %.0134190 = phi i64 [ 0, %.critedge.preheader.new ], [ %.1135.1, %.critedge ]
  %.1138189 = phi i64 [ 0, %.critedge.preheader.new ], [ %i.ac, %.critedge ] ; 3 uses
  %niter = phi i64 [ 0, %.critedge.preheader.new ], [ %niter.next.1, %.critedge ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1138189
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8    ; 2 uses
  %.not163 = icmp ne i32 %i.w, 0                  ; 2 uses
  %spec.select165 = tail call i32 @llvm.umin.i32(i32 %.0132191, i32 %i.w)
  %i.x = zext i1 %.not163 to i64
  %.1135 = add i64 %.0134190, %i.x
  %.1133 = select i1 %.not163, i32 %spec.select165, i32 %.0132191 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1138189
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8   ; 2 uses
  %.not163.1 = icmp ne i32 %i.aa, 0               ; 2 uses
  %spec.select165.1 = tail call i32 @llvm.umin.i32(i32 %.1133, i32 %i.aa)
  %i.ab = zext i1 %.not163.1 to i64
  %.1135.1 = add i64 %.1135, %i.ab                ; 3 uses
  %.1133.1 = select i1 %.not163.1, i32 %spec.select165.1, i32 %.1133 ; 3 uses
  %i.ac = add nuw i64 %.1138189, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.critedge, !llvm.loop !31

.unr-lcssa:                                       ; preds = %.critedge
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.critedge.epil.preheader

.critedge.epil.preheader:                         ; preds = %.unr-lcssa, %.critedge.preheader
  %.0132191.epil.init = phi i32 [ 1073741824, %.critedge.preheader ], [ %.1133.1, %.unr-lcssa ] ; 2 uses
  %.0134190.epil.init = phi i64 [ 0, %.critedge.preheader ], [ %.1135.1, %.unr-lcssa ]
  %.1138189.epil.init = phi i64 [ 0, %.critedge.preheader ], [ %i.ac, %.unr-lcssa ]
  %lcmp.mod261 = trunc i64 %.0131187 to i1
  tail call void @llvm.assume(i1 %lcmp.mod261)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1138189.epil.init
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8  ; 2 uses
  %.not163.epil = icmp ne i32 %i.ae, 0            ; 2 uses
  %spec.select165.epil = tail call i32 @llvm.umin.i32(i32 %.0132191.epil.init, i32 %i.ae)
  %i.af = zext i1 %.not163.epil to i64
  %.1135.epil = add i64 %.0134190.epil.init, %i.af
  %.1133.epil = select i1 %.not163.epil, i32 %spec.select165.epil, i32 %.0132191.epil.init
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.critedge.epil.preheader
  %.1135.lcssa = phi i64 [ %.1135.1, %.unr-lcssa ], [ %.1135.epil, %.critedge.epil.preheader ] ; 3 uses
  %.1133.lcssa = phi i32 [ %.1133.1, %.unr-lcssa ], [ %.1133.epil, %.critedge.epil.preheader ]
  %i.ag = icmp ult i64 %.1135.lcssa, 5
  br i1 %i.ag, label %.critedge167, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = icmp ult i32 %.1133.lcssa, 4
  %i.ai = sub i64 %.0131187, %.1135.lcssa
  %i.aj = icmp ult i64 %i.ai, 6
  %or.cond170 = and i1 %i.ah, %i.aj
  %i.ak = icmp ugt i64 %.0131187, 2
  %or.cond235 = and i1 %or.cond170, %i.ak
  br i1 %or.cond235, label %.lr.ph193.preheader, label %.loopexit180

.lr.ph193.preheader:                              ; preds = %bb.d
  %i.al = add i64 %0, -2
  %i.am = sub i64 %i.al, %indvar                  ; 3 uses
  %i.an = add i64 %0, -3
  %xtraiter262 = and i64 %i.am, 1
  %i.ao = icmp eq i64 %i.an, %indvar
  br i1 %i.ao, label %.lr.ph193.epil.preheader, label %.lr.ph193.preheader.new

.lr.ph193.preheader.new:                          ; preds = %.lr.ph193.preheader
  %unroll_iter265 = and i64 %i.am, -2
  br label %.lr.ph193

.lr.ph193:                                        ; preds = %bb.k, %.lr.ph193.preheader.new
  %.2192 = phi i64 [ 1, %.lr.ph193.preheader.new ], [ %i.bd, %bb.k ] ; 3 uses
  %niter266 = phi i64 [ 0, %.lr.ph193.preheader.new ], [ %niter266.next.1, %bb.k ]
  %i.ap = getelementptr [4 x i8], ptr %1, i64 %.2192 ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8
  %.not153 = icmp eq i32 %i.ar, 0
  br i1 %.not153, label %.lr.ph193.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph193
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.f, label %.lr.ph193.1

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %.not154 = icmp eq i32 %i.av, 0
  br i1 %.not154, label %.lr.ph193.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.ap, align 4, !tbaa !8
  br label %.lr.ph193.1

.lr.ph193.1:                                      ; preds = %.lr.ph193, %bb.e, %bb.f, %bb.g
  %i.aw = getelementptr [4 x i8], ptr %1, i64 %.2192 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4      ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !8
  %.not153.1 = icmp eq i32 %i.ay, 0
  br i1 %.not153.1, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph193.1
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !8
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr i8, ptr %i.aw, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !8
  %.not154.1 = icmp eq i32 %i.bc, 0
  br i1 %.not154.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.ax, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %.lr.ph193.1
  %i.bd = add nuw i64 %.2192, 2                   ; 2 uses
  %niter266.next.1 = add i64 %niter266, 2         ; 2 uses
  %niter266.ncmp.1 = icmp eq i64 %niter266.next.1, %unroll_iter265
  br i1 %niter266.ncmp.1, label %.loopexit180.loopexit.unr-lcssa, label %.lr.ph193, !llvm.loop !32

.loopexit180.loopexit.unr-lcssa:                  ; preds = %bb.k
  %lcmp.mod263.not = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod263.not, label %.loopexit180, label %.lr.ph193.epil.preheader

.lr.ph193.epil.preheader:                         ; preds = %.loopexit180.loopexit.unr-lcssa, %.lr.ph193.preheader
  %.2192.epil.init = phi i64 [ 1, %.lr.ph193.preheader ], [ %i.bd, %.loopexit180.loopexit.unr-lcssa ]
  %lcmp.mod264 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod264)
  %i.be = getelementptr [4 x i8], ptr %1, i64 %.2192.epil.init ; 4 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8
  %.not153.epil = icmp eq i32 %i.bg, 0
  br i1 %.not153.epil, label %.loopexit180, label %bb.l

bb.l:                                             ; preds = %.lr.ph193.epil.preheader
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %.loopexit180

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !8
  %.not154.epil = icmp eq i32 %i.bk, 0
  br i1 %.not154.epil, label %.loopexit180, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.be, align 4, !tbaa !8
  br label %.loopexit180

.loopexit180:                                     ; preds = %.loopexit180.loopexit.unr-lcssa, %bb.n, %bb.m, %bb.l, %.lr.ph193.epil.preheader, %bb.d
  %i.bl = icmp ugt i64 %.1135.lcssa, 27
  br i1 %i.bl, label %bb.o, label %.critedge167

bb.o:                                             ; preds = %.loopexit180
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %.0131187, i1 false)
  %i.bm = load i32, ptr %1, align 4, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.v
  %.0128202 = phi i64 [ 0, %bb.o ], [ %.1, %bb.v ] ; 5 uses
  %.0129200 = phi i32 [ %i.bm, %bb.o ], [ %.1130, %bb.v ] ; 5 uses
  %.3197 = phi i64 [ 0, %bb.o ], [ %i.by, %bb.v ] ; 6 uses
  %scevgep = getelementptr i8, ptr %2, i64 %.3197
  %i.bn = icmp eq i64 %.3197, %.0131187           ; 2 uses
  br i1 %i.bn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.3197
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  %.not161 = icmp eq i32 %i.bp, %.0129200
  br i1 %.not161, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bq = icmp eq i32 %.0129200, 0
  %i.br = icmp ugt i64 %.0128202, 4
  %or.cond = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond, label %.lr.ph196, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = icmp ne i32 %.0129200, 0
  %i.bt = icmp ugt i64 %.0128202, 6
  %or.cond210 = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond210, label %.lr.ph196, label %.loopexit179

.lr.ph196:                                        ; preds = %bb.r, %bb.s
  %i.bu = sub i64 0, %.0128202
  %scevgep218 = getelementptr i8, ptr %scevgep, i64 %i.bu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep218, i8 1, i64 %.0128202, i1 false), !tbaa !13
  br label %.loopexit179

.loopexit179:                                     ; preds = %.lr.ph196, %bb.s
  br i1 %i.bn, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.loopexit179
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.3197
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.bx = add i64 %.0128202, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.loopexit179
  %.1130 = phi i32 [ %i.bw, %bb.t ], [ %.0129200, %.loopexit179 ], [ %.0129200, %bb.u ]
  %.1 = phi i64 [ 1, %bb.t ], [ 1, %.loopexit179 ], [ %i.bx, %bb.u ]
  %i.by = add nuw i64 %.3197, 1
  %.not155.not = icmp ult i64 %.3197, %.0131187
  br i1 %.not155.not, label %bb.p, label %bb.w, !llvm.loop !33

bb.w:                                             ; preds = %bb.v
  %i.bz = load i32, ptr %1, align 4, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8
  %i.cc = add i32 %i.cb, %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !8
  %i.cf = add i32 %i.cc, %i.ce
  %i.cg = shl i32 %i.cf, 8
  %i.ch = udiv i32 %i.cg, 3
  %i.ci = add nuw nsw i32 %i.ch, 420
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = add i64 %.0131187, -2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread
  %.4207 = phi i64 [ 0, %bb.w ], [ %i.eu, %.thread ] ; 12 uses
  %.0141206 = phi i64 [ 0, %bb.w ], [ %.2143, %.thread ] ; 4 uses
  %.0144205 = phi i64 [ %i.cj, %bb.w ], [ %.3147, %.thread ] ; 2 uses
  %.0148204 = phi i64 [ 0, %bb.w ], [ %i.et, %.thread ] ; 10 uses
  %i.cl = icmp eq i64 %.4207, %.0131187           ; 2 uses
  br i1 %i.cl, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %.4207 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %.not157 = icmp eq i8 %i.cn, 0
  br i1 %.not157, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %.not158 = icmp eq i64 %.4207, 0
  br i1 %.not158, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = getelementptr i8, ptr %i.cm, i64 -1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !13
  %.not159 = icmp eq i8 %i.cp, 0
  br i1 %.not159, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.4207
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !8  ; 2 uses
  %i.cs = shl i32 %i.cr, 8
  %i.ct = zext i32 %i.cs to i64
  %reass.sub = sub i64 %i.ct, %.0144205
  %i.cu = add i64 %reass.sub, -1240
  %i.cv = icmp ult i64 %i.cu, -2480
  br i1 %i.cv, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.y, %bb.x
  %i.cw = icmp ugt i64 %.0148204, 3
  br i1 %i.cw, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = icmp eq i64 %.0148204, 3
  %i.cy = icmp eq i64 %.0141206, 0
  %or.cond5 = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond5, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cz = lshr i64 %.0148204, 1
  %i.da = add i64 %.0141206, %i.cz                ; 2 uses
  %i.db = udiv i64 %i.da, %.0148204
  %i.dc = icmp ugt i64 %.0148204, %i.da
  %i.dd = icmp eq i64 %.0141206, 0
  %i.de = trunc i64 %i.db to i32
  %i.df = select i1 %i.dc, i32 1, i32 %i.de
  %i.dg = select i1 %i.dd, i32 0, i32 %i.df       ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr %1, i64 %.4207 ; 2 uses
  %min.iters.check243 = icmp ult i64 %.0148204, 8
  br i1 %min.iters.check243, label %scalar.ph242.preheader, label %vector.ph244

vector.ph244:                                     ; preds = %bb.ae
  %n.vec245 = and i64 %.0148204, -8               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph244
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next248, %vector.body246 ] ; 2 uses
  %i.di = xor i64 %index247, -1
  %i.dj = getelementptr [4 x i8], ptr %i.dh, i64 %i.di ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 -12
  %i.dl = getelementptr i8, ptr %i.dj, i64 -28
  store <4 x i32> %broadcast.splat, ptr %i.dk, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat, ptr %i.dl, align 4, !tbaa !8
  %index.next248 = add nuw i64 %index247, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next248, %n.vec245
  br i1 %i.dm, label %middle.block249, label %vector.body246, !llvm.loop !34

middle.block249:                                  ; preds = %vector.body246
  %cmp.n250 = icmp eq i64 %.0148204, %n.vec245
  br i1 %cmp.n250, label %.loopexit, label %scalar.ph242.preheader

scalar.ph242.preheader:                           ; preds = %bb.ae, %middle.block249
  %.0203.ph = phi i64 [ 0, %bb.ae ], [ %n.vec245, %middle.block249 ]
  br label %scalar.ph242

scalar.ph242:                                     ; preds = %scalar.ph242.preheader, %scalar.ph242
  %.0203 = phi i64 [ %i.dp, %scalar.ph242 ], [ %.0203.ph, %scalar.ph242.preheader ] ; 2 uses
  %i.dn = xor i64 %.0203, -1
  %i.do = getelementptr [4 x i8], ptr %i.dh, i64 %i.dn
  store i32 %i.dg, ptr %i.do, align 4, !tbaa !8
  %i.dp = add nuw i64 %.0203, 1                   ; 2 uses
  %exitcond220.not = icmp eq i64 %i.dp, %.0148204
  br i1 %exitcond220.not, label %.loopexit, label %scalar.ph242, !llvm.loop !35

.loopexit:                                        ; preds = %scalar.ph242, %middle.block249, %bb.ad
  %i.dq = icmp ult i64 %.4207, %i.ck
  br i1 %i.dq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.loopexit
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.4207 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !8
  %i.dv = add i32 %i.du, %i.ds
  %i.dw = getelementptr i8, ptr %i.dr, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !8
  %i.dy = add i32 %i.dv, %i.dx
  %i.dz = shl i32 %i.dy, 8
  %i.ea = udiv i32 %i.dz, 3
  %i.eb = add nuw nsw i32 %i.ea, 420
  br label %bb.ai

bb.ag:                                            ; preds = %.loopexit
  %i.ec = icmp ult i64 %.4207, %.0131187
  br i1 %i.ec, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.4207
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !8
  %i.ef = shl i32 %i.ee, 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.ah
  %.1145.shrunk = phi i32 [ %i.eb, %bb.af ], [ %i.ef, %bb.ah ], [ 0, %bb.ag ]
  %.1145 = zext i32 %.1145.shrunk to i64          ; 2 uses
  br i1 %i.cl, label %.thread, label %.thread176

.thread176:                                       ; preds = %bb.ai
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.4207
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !8
  %i.ei = zext i32 %i.eh to i64
  br label %.thread

bb.aj:                                            ; preds = %bb.ab
  %i.ej = add i64 %.0148204, 1                    ; 6 uses
  %i.ek = zext i32 %i.cr to i64
  %i.el = add i64 %.0141206, %i.ek                ; 3 uses
  %i.em = icmp ugt i64 %i.ej, 3
  br i1 %i.em, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %i.en = shl i64 %i.el, 8
  %i.eo = lshr i64 %i.ej, 1
  %i.ep = add i64 %i.en, %i.eo
  %i.eq = udiv i64 %i.ep, %i.ej                   ; 2 uses
  %i.er = icmp eq i64 %i.ej, 4
  %i.es = add nuw nsw i64 %i.eq, 120
  %spec.select236 = select i1 %i.er, i64 %i.es, i64 %i.eq
  br label %.thread

.thread:                                          ; preds = %bb.ak, %.thread176, %bb.aj, %bb.ai
  %i.et = phi i64 [ 1, %bb.ai ], [ %i.ej, %bb.aj ], [ %i.ej, %bb.ak ], [ 1, %.thread176 ]
  %.3147 = phi i64 [ %.1145, %bb.ai ], [ %.0144205, %bb.aj ], [ %spec.select236, %bb.ak ], [ %.1145, %.thread176 ]
  %.2143 = phi i64 [ 0, %bb.ai ], [ %i.el, %bb.aj ], [ %i.el, %bb.ak ], [ %i.ei, %.thread176 ]
  %i.eu = add nuw i64 %.4207, 1
  %.not156.not = icmp ult i64 %.4207, %.0131187
  br i1 %.not156.not, label %bb.x, label %.critedge167, !llvm.loop !36

.critedge167:                                     ; preds = %bb.b, %.thread, %bb.a, %bb.c, %._crit_edge, %.loopexit180
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @BrotliWriteHuffmanTree(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge108, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 %1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.04494 = phi i64 [ %1, %.lr.ph ], [ %i.f, %bb.c ] ; 10 uses
  %.04593 = phi i64 [ 0, %.lr.ph ], [ %i.g, %bb.c ] ; 2 uses
  %i.b = xor i64 %.04593, -1
  %i.c = getelementptr i8, ptr %i.a, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %.04494, -1
  %i.g = add nuw i64 %.04593, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %1
  br i1 %exitcond.not, label %._crit_edge108, label %bb.b, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.b
  %i.h = icmp ult i64 %1, 51
  %.not.i = icmp eq i64 %.04494, 0                ; 3 uses
  %or.cond87 = select i1 %i.h, i1 true, i1 %.not.i
  br i1 %or.cond87, label %DecideOverRleUse.exit, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %._crit_edge, %.critedge.i
  %.03553.i = phi i64 [ %.1.i.a, %.critedge.i ], [ 0, %._crit_edge ]
  %.03652.i = phi i64 [ %.pre-phi.i, %.critedge.i ], [ 0, %._crit_edge ] ; 4 uses
  %.03751.i = phi i64 [ %.138.i, %.critedge.i ], [ 1, %._crit_edge ]
  %.03950.i = phi i64 [ %.140.i.a, %.critedge.i ], [ 1, %._crit_edge ]
  %.04149.i = phi i64 [ %.142.i, %.critedge.i ], [ 0, %._crit_edge ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.03652.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13    ; 3 uses
  %.044.i = add nuw i64 %.03652.i, 1              ; 3 uses
  %i.k = icmp ult i64 %.044.i, %.04494
  br i1 %i.k, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph54.i
  %i.l = sub i64 %.04494, %.03652.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.046.i = phi i64 [ %.0.i, %bb.d ], [ %.044.i, %.lr.ph.preheader.i ] ; 2 uses
  %.03445.i = phi i64 [ %i.p, %bb.d ], [ 1, %.lr.ph.preheader.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.046.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = icmp eq i8 %i.n, %i.j
  br i1 %i.o, label %bb.d, label %.critedge.loopexit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = add i64 %.03445.i, 1
  %.0.i = add i64 %.046.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %.0.i, %.04494
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %.lr.ph.i, !llvm.loop !38

.critedge.loopexit.i:                             ; preds = %bb.d, %.lr.ph.i
  %.034.lcssa.ph.i = phi i64 [ %.03445.i, %.lr.ph.i ], [ %i.l, %bb.d ] ; 2 uses
  %.pre.i = add i64 %.034.lcssa.ph.i, %.03652.i
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.lr.ph54.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.critedge.loopexit.i ], [ %.044.i, %.lr.ph54.i ] ; 2 uses
  %.034.lcssa.i = phi i64 [ %.034.lcssa.ph.i, %.critedge.loopexit.i ], [ 1, %.lr.ph54.i ] ; 4 uses
  %i.q = icmp ugt i64 %.034.lcssa.i, 2
  %i.r = icmp eq i8 %i.j, 0
  %or.cond.i = select i1 %i.q, i1 %i.r, i1 false  ; 2 uses
  %5 = zext i1 %or.cond.i to i64
  %.140.i.a = add i64 %.03950.i, %5               ; 2 uses
  %6 = select i1 %or.cond.i, i64 %.034.lcssa.i, i64 0
  %.1.i.a = add i64 %6, %.03553.i                 ; 2 uses
  %i.s = icmp ugt i64 %.034.lcssa.i, 3
  %i.t = icmp ne i8 %i.j, 0
  %or.cond5.i = select i1 %i.s, i1 %i.t, i1 false ; 2 uses
  %i.u = select i1 %or.cond5.i, i64 %.034.lcssa.i, i64 0
  %.142.i = add i64 %i.u, %.04149.i               ; 2 uses
  %i.v = zext i1 %or.cond5.i to i64
  %.138.i = add i64 %.03751.i, %i.v               ; 2 uses
  %i.w = icmp ult i64 %.pre-phi.i, %.04494
  br i1 %i.w, label %.lr.ph54.i, label %._crit_edge.loopexit.i, !llvm.loop !39

._crit_edge.loopexit.i:                           ; preds = %.critedge.i
  %i.x = shl i64 %.138.i, 1
  %i.y = icmp ugt i64 %.142.i, %i.x
  %i.z = shl i64 %.140.i.a, 1
  %i.aa = icmp ugt i64 %.1.i.a, %i.z
  br i1 %.not.i, label %._crit_edge108, label %.lr.ph107.preheader

DecideOverRleUse.exit:                            ; preds = %._crit_edge
  br i1 %.not.i, label %._crit_edge108, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %._crit_edge.loopexit.i, %DecideOverRleUse.exit
  %.071137 = phi i1 [ %i.aa, %._crit_edge.loopexit.i ], [ false, %DecideOverRleUse.exit ]
  %.072136 = phi i1 [ %i.y, %._crit_edge.loopexit.i ], [ false, %DecideOverRleUse.exit ]
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %BrotliWriteHuffmanTreeRepetitionsZeros.exit
  %.042106 = phi i8 [ %.143, %BrotliWriteHuffmanTreeRepetitionsZeros.exit ], [ 8, %.lr.ph107.preheader ] ; 6 uses
  %.146104 = phi i64 [ %i.en, %BrotliWriteHuffmanTreeRepetitionsZeros.exit ], [ 0, %.lr.ph107.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.146104
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13  ; 13 uses
  %i.ad = icmp ne i8 %i.ac, 0
  %or.cond = select i1 %i.ad, i1 %.072136, i1 false
  %i.ae = icmp eq i8 %i.ac, 0                     ; 4 uses
  %or.cond3 = select i1 %i.ae, i1 %.071137, i1 false
  %or.cond88 = select i1 %or.cond, i1 true, i1 %or.cond3
  br i1 %or.cond88, label %.preheader, label %.critedge.thread

.preheader:                                       ; preds = %.lr.ph107
  %.097 = add nuw i64 %.146104, 1                 ; 2 uses
  %i.af = icmp ult i64 %.097, %.04494
  br i1 %i.af, label %.lr.ph100.preheader, label %.critedge.thread138

.lr.ph100.preheader:                              ; preds = %.preheader
  %i.ag = sub i64 %.04494, %.146104
  br label %.lr.ph100

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %bb.e
  %.099 = phi i64 [ %.0, %bb.e ], [ %.097, %.lr.ph100.preheader ] ; 2 uses
  %.04198 = phi i64 [ %i.ak, %bb.e ], [ 1, %.lr.ph100.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.099
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13
  %i.aj = icmp eq i8 %i.ai, %i.ac
  br i1 %i.aj, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph100
  %i.ak = add i64 %.04198, 1
  %.0 = add nuw i64 %.099, 1                      ; 2 uses
  %exitcond114.not = icmp eq i64 %.0, %.04494
  br i1 %exitcond114.not, label %.critedge, label %.lr.ph100, !llvm.loop !40

.critedge:                                        ; preds = %bb.e, %.lr.ph100
  %.041.lcssa = phi i64 [ %.04198, %.lr.ph100 ], [ %i.ag, %bb.e ] ; 7 uses
  br i1 %i.ae, label %bb.f, label %bb.k

.critedge.thread138:                              ; preds = %.preheader
  br i1 %i.ae, label %.lr.ph.preheader.i50, label %bb.k

.critedge.thread:                                 ; preds = %.lr.ph107
  br i1 %i.ae, label %.lr.ph.preheader.i50, label %bb.k

bb.f:                                             ; preds = %.critedge
  %i.al = icmp eq i64 %.041.lcssa, 11
  br i1 %i.al, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %i.am = load i64, ptr %2, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 %i.am
  store i8 0, ptr %i.an, align 1, !tbaa !13
  %i.ao = load i64, ptr %2, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !13
  %i.aq = load i64, ptr %2, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1                        ; 2 uses
  store i64 %i.ar, ptr %2, align 8, !tbaa !20
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = icmp ult i64 %.041.lcssa, 3
  br i1 %i.as, label %.preheader.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre46.i = load i64, ptr %2, align 8, !tbaa !20
  %i.at = add i64 %.041.lcssa, -3
  br label %bb.h

.preheader.i:                                     ; preds = %bb.g
  %.not.i49 = icmp eq i64 %.041.lcssa, 0
  br i1 %.not.i49, label %BrotliWriteHuffmanTreeRepetitionsZeros.exit, label %.lr.ph.preheader.i50

.lr.ph.preheader.i50:                             ; preds = %.critedge.thread138, %.critedge.thread, %.preheader.i
  %.176808386 = phi i64 [ %.041.lcssa, %.preheader.i ], [ 1, %.critedge.thread ], [ 1, %.critedge.thread138 ] ; 6 uses
  %.pre.i51 = load i64, ptr %2, align 8, !tbaa !20 ; 2 uses
  %xtraiter = and i64 %.176808386, 1
  %i.au = icmp eq i64 %.176808386, 1
  br i1 %i.au, label %.lr.ph.i52.epil.preheader, label %.lr.ph.preheader.i50.new

.lr.ph.preheader.i50.new:                         ; preds = %.lr.ph.preheader.i50
  %unroll_iter = and i64 %.176808386, 2
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52, %.lr.ph.preheader.i50.new
  %i.av = phi i64 [ %.pre.i51, %.lr.ph.preheader.i50.new ], [ %i.bf, %.lr.ph.i52 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i50.new ], [ %niter.next.1, %.lr.ph.i52 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %i.av
  store i8 0, ptr %i.aw, align 1, !tbaa !13
  %i.ax = load i64, ptr %2, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 %i.ax
  store i8 0, ptr %i.ay, align 1, !tbaa !13
  %i.az = load i64, ptr %2, align 8, !tbaa !20
  %i.ba = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.ba, ptr %2, align 8, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 %i.ba
  store i8 0, ptr %i.bb, align 1, !tbaa !13
  %i.bc = load i64, ptr %2, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 %i.bc
  store i8 0, ptr %i.bd, align 1, !tbaa !13
  %i.be = load i64, ptr %2, align 8, !tbaa !20
  %i.bf = add i64 %i.be, 1                        ; 3 uses
  store i64 %i.bf, ptr %2, align 8, !tbaa !20
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %BrotliWriteHuffmanTreeRepetitionsZeros.exit.loopexit160.unr-lcssa, label %.lr.ph.i52, !llvm.loop !41

bb.h:                                             ; preds = %._crit_edge.i, %.thread.i
  %.17679 = phi i64 [ 11, %.thread.i ], [ %.041.lcssa, %._crit_edge.i ] ; 2 uses
  %i.bg = phi i64 [ %i.ar, %.thread.i ], [ %.pre46.i, %._crit_edge.i ] ; 5 uses
  %.042.i = phi i64 [ 7, %.thread.i ], [ %i.at, %._crit_edge.i ]
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.bh = phi i64 [ %i.bg, %bb.h ], [ %i.bo, %bb.i ]
  %.1.i48 = phi i64 [ %.042.i, %bb.h ], [ %i.br, %bb.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 %i.bh
  store i8 17, ptr %i.bi, align 1, !tbaa !13
  %i.bj = trunc i64 %.1.i48 to i8
  %i.bk = and i8 %i.bj, 7
  %i.bl = load i64, ptr %2, align 8, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 %i.bl
  store i8 %i.bk, ptr %i.bm, align 1, !tbaa !13
  %i.bn = load i64, ptr %2, align 8, !tbaa !20    ; 4 uses
  %i.bo = add i64 %i.bn, 1                        ; 2 uses
  store i64 %i.bo, ptr %2, align 8, !tbaa !20
  %i.bp = lshr i64 %.1.i48, 3                     ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  %i.br = add nsw i64 %i.bp, -1
  br i1 %i.bq, label %bb.j, label %bb.i

bb.j:                                             ; preds = %bb.i
  %i.bs = icmp ult i64 %i.bg, %i.bn
  br i1 %i.bs, label %.lr.ph.i.i, label %Reverse.exit.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.01316.i.i = phi i64 [ %.013.i.i, %.lr.ph.i.i ], [ %i.bn, %bb.j ] ; 2 uses
  %.015.i.i = phi i64 [ %i.bx, %.lr.ph.i.i ], [ %i.bg, %bb.j ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 %.015.i.i ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 %.01316.i.i ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !13
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !13
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !13
  %i.bx = add nuw i64 %.015.i.i, 1                ; 2 uses
  %.013.i.i = add i64 %.01316.i.i, -1             ; 2 uses
  %i.by = icmp ult i64 %i.bx, %.013.i.i
  br i1 %i.by, label %.lr.ph.i.i, label %Reverse.exit.loopexit.i, !llvm.loop !42

Reverse.exit.loopexit.i:                          ; preds = %.lr.ph.i.i
  %.pre47.i = load i64, ptr %2, align 8, !tbaa !20
  %i.bz = add i64 %.pre47.i, -1
  br label %Reverse.exit.i

Reverse.exit.i:                                   ; preds = %Reverse.exit.loopexit.i, %bb.j
  %.01314.i.i = phi i64 [ %i.bz, %Reverse.exit.loopexit.i ], [ %i.bn, %bb.j ] ; 2 uses
  %i.ca = icmp ult i64 %i.bg, %.01314.i.i
  br i1 %i.ca, label %.lr.ph.i36.i, label %BrotliWriteHuffmanTreeRepetitionsZeros.exit

.lr.ph.i36.i:                                     ; preds = %Reverse.exit.i, %.lr.ph.i36.i
  %.01316.i37.i = phi i64 [ %.013.i39.i, %.lr.ph.i36.i ], [ %.01314.i.i, %Reverse.exit.i ] ; 2 uses
  %.015.i38.i = phi i64 [ %i.cf, %.lr.ph.i36.i ], [ %i.bg, %Reverse.exit.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 %.015.i38.i ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 %.01316.i37.i ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !13
  store i8 %i.ce, ptr %i.cb, align 1, !tbaa !13
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !13
  %i.cf = add nuw i64 %.015.i38.i, 1              ; 2 uses
  %.013.i39.i = add i64 %.01316.i37.i, -1         ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %.013.i39.i
  br i1 %i.cg, label %.lr.ph.i36.i, label %BrotliWriteHuffmanTreeRepetitionsZeros.exit, !llvm.loop !42

bb.k:                                             ; preds = %.critedge.thread138, %.critedge.thread, %.critedge
  %.175 = phi i64 [ 1, %.critedge.thread ], [ %.041.lcssa, %.critedge ], [ 1, %.critedge.thread138 ] ; 7 uses
  %.not.i54 = icmp eq i8 %.042106, %i.ac
  br i1 %.not.i54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = load i64, ptr %2, align 8, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 %i.ch
  store i8 %i.ac, ptr %i.ci, align 1, !tbaa !13
  %i.cj = load i64, ptr %2, align 8, !tbaa !20
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 %i.cj
  store i8 0, ptr %i.ck, align 1, !tbaa !13
  %i.cl = load i64, ptr %2, align 8, !tbaa !20
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %2, align 8, !tbaa !20
  %i.cn = add i64 %.175, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i55 = phi i64 [ %i.cn, %bb.l ], [ %.175, %bb.k ] ; 5 uses
  %i.co = icmp eq i64 %.0.i55, 7
  br i1 %i.co, label %.thread.i69, label %bb.n

.thread.i69:                                      ; preds = %bb.m
  %i.cp = load i64, ptr %2, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 %i.cp
  store i8 %i.ac, ptr %i.cq, align 1, !tbaa !13
  %i.cr = load i64, ptr %2, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 %i.cr
  store i8 0, ptr %i.cs, align 1, !tbaa !13
  %i.ct = load i64, ptr %2, align 8, !tbaa !20
  %i.cu = add i64 %i.ct, 1                        ; 2 uses
  store i64 %i.cu, ptr %2, align 8, !tbaa !20
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp ult i64 %.0.i55, 3
  br i1 %i.cv, label %.preheader.i64, label %._crit_edge.i56

._crit_edge.i56:                                  ; preds = %bb.n
  %.pre56.i = load i64, ptr %2, align 8, !tbaa !20
  %i.cw = add i64 %.0.i55, -3
  br label %bb.o

.preheader.i64:                                   ; preds = %bb.n
  %.not54.i = icmp eq i64 %.0.i55, 0
  br i1 %.not54.i, label %BrotliWriteHuffmanTreeRepetitionsZeros.exit, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %.preheader.i64
  %.pre.i66 = load i64, ptr %2, align 8, !tbaa !20
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 %.pre.i66
  store i8 %i.ac, ptr %i.cx, align 1, !tbaa !13
  %i.cy = load i64, ptr %2, align 8, !tbaa !20
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 %i.cy
  store i8 0, ptr %i.cz, align 1, !tbaa !13
  %i.da = load i64, ptr %2, align 8, !tbaa !20
  %i.db = add i64 %i.da, 1                        ; 2 uses
  store i64 %i.db, ptr %2, align 8, !tbaa !20
  %exitcond.not.i68 = icmp eq i64 %.0.i55, 1
  br i1 %exitcond.not.i68, label %BrotliWriteHuffmanTreeRepetitionsZeros.exit, label %.lr.ph.i67.1

.lr.ph.i67.1:                                     ; preds = %.lr.ph.i67
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 %i.db
  store i8 %i.ac, ptr %i.dc, align 1, !tbaa !13
  %i.dd = load i64, ptr %2, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 %i.dd
  store i8 0, ptr %i.de, align 1, !tbaa !13
  %i.df = load i64, ptr %2, align 8, !tbaa !20
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %2, align 8, !tbaa !20
  br label %BrotliWriteHuffmanTreeRepetitionsZeros.exit

bb.o:                                             ; preds = %._crit_edge.i56, %.thread.i69
  %i.dh = phi i64 [ %i.cu, %.thread.i69 ], [ %.pre56.i, %._crit_edge.i56 ] ; 5 uses
  %.151.i = phi i64 [ 3, %.thread.i69 ], [ %i.cw, %._crit_edge.i56 ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %i.di = phi i64 [ %i.dh, %bb.o ], [ %i.dp, %bb.p ]
  %.2.i = phi i64 [ %.151.i, %bb.o ], [ %i.ds, %bb.p ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 %i.di
  store i8 16, ptr %i.dj, align 1, !tbaa !13
  %i.dk = trunc i64 %.2.i to i8
  %i.dl = and i8 %i.dk, 3
  %i.dm = load i64, ptr %2, align 8, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 %i.dm
  store i8 %i.dl, ptr %i.dn, align 1, !tbaa !13
  %i.do = load i64, ptr %2, align 8, !tbaa !20    ; 4 uses
  %i.dp = add i64 %i.do, 1                        ; 2 uses
  store i64 %i.dp, ptr %2, align 8, !tbaa !20
  %i.dq = lshr i64 %.2.i, 2                       ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  %i.ds = add nsw i64 %i.dq, -1
  br i1 %i.dr, label %bb.q, label %bb.p

bb.q:                                             ; preds = %bb.p
  %i.dt = icmp ult i64 %i.dh, %i.do
  br i1 %i.dt, label %.lr.ph.i.i59, label %Reverse.exit.i57

.lr.ph.i.i59:                                     ; preds = %bb.q, %.lr.ph.i.i59
  %.01316.i.i60 = phi i64 [ %.013.i.i62, %.lr.ph.i.i59 ], [ %i.do, %bb.q ] ; 2 uses
  %.015.i.i61 = phi i64 [ %i.dy, %.lr.ph.i.i59 ], [ %i.dh, %bb.q ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 %.015.i.i61 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 %.01316.i.i60 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !13
  store i8 %i.dx, ptr %i.du, align 1, !tbaa !13
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !13
  %i.dy = add nuw i64 %.015.i.i61, 1              ; 2 uses
  %.013.i.i62 = add i64 %.01316.i.i60, -1         ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %.013.i.i62
  br i1 %i.dz, label %.lr.ph.i.i59, label %Reverse.exit.loopexit.i63, !llvm.loop !42

Reverse.exit.loopexit.i63:                        ; preds = %.lr.ph.i.i59
  %.pre57.i = load i64, ptr %2, align 8, !tbaa !20
  %i.ea = add i64 %.pre57.i, -1
  br label %Reverse.exit.i57

Reverse.exit.i57:                                 ; preds = %Reverse.exit.loopexit.i63, %bb.q
  %.01314.i.i58 = phi i64 [ %i.ea, %Reverse.exit.loopexit.i63 ], [ %i.do, %bb.q ] ; 2 uses
  %i.eb = icmp ult i64 %i.dh, %.01314.i.i58
  br i1 %i.eb, label %.lr.ph.i45.i, label %BrotliWriteHuffmanTreeRepetitionsZeros.exit

.lr.ph.i45.i:                                     ; preds = %Reverse.exit.i57, %.lr.ph.i45.i
  %.01316.i46.i = phi i64 [ %.013.i48.i, %.lr.ph.i45.i ], [ %.01314.i.i58, %Reverse.exit.i57 ] ; 2 uses
  %.015.i47.i = phi i64 [ %i.eg, %.lr.ph.i45.i ], [ %i.dh, %Reverse.exit.i57 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 %.015.i47.i ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !13
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 %.01316.i46.i ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !13
  store i8 %i.ef, ptr %i.ec, align 1, !tbaa !13
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !13
  %i.eg = add nuw i64 %.015.i47.i, 1              ; 2 uses
  %.013.i48.i = add i64 %.01316.i46.i, -1         ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %.013.i48.i
  br i1 %i.eh, label %.lr.ph.i45.i, label %BrotliWriteHuffmanTreeRepetitionsZeros.exit, !llvm.loop !42

BrotliWriteHuffmanTreeRepetitionsZeros.exit.loopexit160.unr-lcssa: ; preds = %.lr.ph.i52
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %BrotliWriteHuffmanTreeRepetitionsZeros.exit, label %.lr.ph.i52.epil.preheader

.lr.ph.i52.epil.preheader:                        ; preds = %BrotliWriteHuffmanTreeRepetitionsZeros.exit.loopexit160.unr-lcssa, %.lr.ph.preheader.i50
  %.epil.init = phi i64 [ %.pre.i51, %.lr.ph.preheader.i50 ], [ %i.bf, %BrotliWriteHuffmanTreeRepetitionsZeros.exit.loopexit160.unr-lcssa ]
  %lcmp.mod166 = trunc i64 %.176808386 to i1
  tail call void @llvm.assume(i1 %lcmp.mod166)
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 %.epil.init
  store i8 0, ptr %i.ei, align 1, !tbaa !13
  %i.ej = load i64, ptr %2, align 8, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 %i.ej
  store i8 0, ptr %i.ek, align 1, !tbaa !13
  %i.el = load i64, ptr %2, align 8, !tbaa !20
  %i.em = add i64 %i.el, 1
  store i64 %i.em, ptr %2, align 8, !tbaa !20
  br label %BrotliWriteHuffmanTreeRepetitionsZeros.exit

BrotliWriteHuffmanTreeRepetitionsZeros.exit:      ; preds = %.lr.ph.i67, %.lr.ph.i67.1, %.lr.ph.i45.i, %.lr.ph.i52.epil.preheader, %BrotliWriteHuffmanTreeRepetitionsZeros.exit.loopexit160.unr-lcssa, %.lr.ph.i36.i, %Reverse.exit.i57, %.preheader.i64, %Reverse.exit.i, %.preheader.i
  %.174 = phi i64 [ %.176808386, %.lr.ph.i52.epil.preheader ], [ 0, %.preheader.i ], [ %.17679, %.lr.ph.i36.i ], [ %.17679, %Reverse.exit.i ], [ %.175, %.preheader.i64 ], [ %.175, %.lr.ph.i45.i ], [ %.175, %Reverse.exit.i57 ], [ %.176808386, %BrotliWriteHuffmanTreeRepetitionsZeros.exit.loopexit160.unr-lcssa ], [ %.175, %.lr.ph.i67.1 ], [ %.175, %.lr.ph.i67 ]
  %.143 = phi i8 [ %.042106, %.lr.ph.i52.epil.preheader ], [ %.042106, %.preheader.i ], [ %.042106, %.lr.ph.i36.i ], [ %.042106, %Reverse.exit.i ], [ %i.ac, %.preheader.i64 ], [ %i.ac, %.lr.ph.i45.i ], [ %i.ac, %Reverse.exit.i57 ], [ %.042106, %BrotliWriteHuffmanTreeRepetitionsZeros.exit.loopexit160.unr-lcssa ], [ %i.ac, %.lr.ph.i67.1 ], [ %i.ac, %.lr.ph.i67 ]
  %i.en = add i64 %.174, %.146104                 ; 2 uses
  %i.eo = icmp ult i64 %i.en, %.04494
  br i1 %i.eo, label %.lr.ph107, label %._crit_edge108, !llvm.loop !43

._crit_edge108:                                   ; preds = %bb.c, %BrotliWriteHuffmanTreeRepetitionsZeros.exit, %bb.a, %._crit_edge.loopexit.i, %DecideOverRleUse.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @BrotliConvertBitDepthsToSymbols(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i16], align 16              ; 22 uses
  %i.b = alloca [16 x i16], align 16              ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %.not30 = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.c = icmp ult i64 %1, 4
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02124 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.02124
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.f ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !44
  %i.i = add i16 %i.h, 1
  store i16 %i.i, ptr %i.g, align 2, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.02124
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !44
  %i.p = add i16 %i.o, 1
  store i16 %i.p, ptr %i.n, align 2, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.02124
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !44
  %i.w = add i16 %i.v, 1
  store i16 %i.w, ptr %i.u, align 2, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.02124
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !44
  %i.ad = add i16 %i.ac, 1
  store i16 %i.ad, ptr %i.ab, align 2, !tbaa !44
  %i.ae = add nuw i64 %.02124, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !45

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02124.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod76 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod76)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.02124.epil = phi i64 [ %i.al, %.lr.ph.epil ], [ %.02124.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.02124.epil
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !44
  %i.ak = add i16 %i.aj, 1
  store i16 %i.ak, ptr %i.ai, align 2, !tbaa !44
  %i.al = add nuw i64 %.02124.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !46

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.pre = load i16, ptr %.phi.trans.insert34, align 2, !tbaa !44
  %.phi.trans.insert36 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre37 = load i16, ptr %.phi.trans.insert36, align 4, !tbaa !44
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.pre40 = load i16, ptr %.phi.trans.insert39, align 2, !tbaa !44
  %.phi.trans.insert42 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre43 = load i16, ptr %.phi.trans.insert42, align 8, !tbaa !44
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.pre46 = load i16, ptr %.phi.trans.insert45, align 2, !tbaa !44
  %.phi.trans.insert48 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre49 = load i16, ptr %.phi.trans.insert48, align 4, !tbaa !44
  %.phi.trans.insert51 = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.pre52 = load i16, ptr %.phi.trans.insert51, align 2, !tbaa !44
  %.phi.trans.insert54 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre55 = load i16, ptr %.phi.trans.insert54, align 16, !tbaa !44
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %.pre58 = load i16, ptr %.phi.trans.insert57, align 2, !tbaa !44
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.pre61 = load i16, ptr %.phi.trans.insert60, align 4, !tbaa !44
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %.pre64 = load i16, ptr %.phi.trans.insert63, align 2, !tbaa !44
  %.phi.trans.insert66 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre67 = load i16, ptr %.phi.trans.insert66, align 8, !tbaa !44
  %.phi.trans.insert69 = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %.pre70 = load i16, ptr %.phi.trans.insert69, align 2, !tbaa !44
  %.phi.trans.insert72 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.pre73 = load i16, ptr %.phi.trans.insert72, align 4, !tbaa !44
  %i.am = shl i16 %.pre, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.an = phi i16 [ %.pre73, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ao = phi i16 [ %.pre70, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ap = phi i16 [ %.pre67, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.aq = phi i16 [ %.pre64, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ar = phi i16 [ %.pre61, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.as = phi i16 [ %.pre58, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.at = phi i16 [ %.pre55, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.au = phi i16 [ %.pre52, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.av = phi i16 [ %.pre49, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.aw = phi i16 [ %.pre46, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ax = phi i16 [ %.pre43, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ay = phi i16 [ %.pre40, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.az = phi i16 [ %.pre37, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ba = phi i16 [ %i.am, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 0, ptr %i.bb, align 2, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 %i.ba, ptr %i.bc, align 4, !tbaa !44
  %i.bd = add i16 %i.az, %i.ba
  %i.be = shl i16 %i.bd, 1                        ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !44
  %i.bg = add i16 %i.ay, %i.be
  %i.bh = shl i16 %i.bg, 1                        ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 %i.bh, ptr %i.bi, align 8, !tbaa !44
  %i.bj = add i16 %i.ax, %i.bh
  %i.bk = shl i16 %i.bj, 1                        ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !44
  %i.bm = add i16 %i.aw, %i.bk
  %i.bn = shl i16 %i.bm, 1                        ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i16 %i.bn, ptr %i.bo, align 4, !tbaa !44
  %i.bp = add i16 %i.av, %i.bn
  %i.bq = shl i16 %i.bp, 1                        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !44
  %i.bs = add i16 %i.au, %i.bq
  %i.bt = shl i16 %i.bs, 1                        ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 %i.bt, ptr %i.bu, align 16, !tbaa !44
  %i.bv = add i16 %i.at, %i.bt
  %i.bw = shl i16 %i.bv, 1                        ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !44
  %i.by = add i16 %i.as, %i.bw
  %i.bz = shl i16 %i.by, 1                        ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 %i.bz, ptr %i.ca, align 4, !tbaa !44
  %i.cb = add i16 %i.ar, %i.bz
  %i.cc = shl i16 %i.cb, 1                        ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !44
  %i.ce = add i16 %i.aq, %i.cc
  %i.cf = shl i16 %i.ce, 1                        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %i.cf, ptr %i.cg, align 8, !tbaa !44
  %i.ch = add i16 %i.ap, %i.cf
  %i.ci = shl i16 %i.ch, 1                        ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !44
  %i.ck = add i16 %i.ao, %i.ci
  %i.cl = shl i16 %i.ck, 1                        ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i16 %i.cl, ptr %i.cm, align 4, !tbaa !44
  %i.cn = add i16 %i.an, %i.cl
  %i.co = shl i16 %i.cn, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !44
  br i1 %.not30, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %._crit_edge, %bb.c
  %.227 = phi i64 [ %i.ee, %bb.c ], [ 0, %._crit_edge ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %.227
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13  ; 3 uses
  %.not = icmp eq i8 %i.cr, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph28
  %i.cs = zext i8 %i.cr to i64                    ; 3 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cs ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !44 ; 4 uses
  %i.cv = add i16 %i.cu, 1
  store i16 %i.cv, ptr %i.ct, align 2, !tbaa !44
  %i.cw = and i16 %i.cu, 15
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @BrotliReverseBits.kLut, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !20 ; 3 uses
  %i.da = icmp ugt i8 %i.cr, 4
  br i1 %i.da, label %.lr.ph.i.preheader, label %BrotliReverseBits.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.db = add nsw i64 %i.cs, -5                   ; 2 uses
  %i.dc = lshr i64 %i.db, 2                       ; 2 uses
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %3 = icmp eq i64 %i.dc, 0
  br i1 %3, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter82 = and i64 %i.dd, 9223372036854775806
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01115.i = phi i64 [ %i.cz, %.lr.ph.i.preheader.new ], [ %i.dr, %.lr.ph.i ]
  %.01214.i = phi i16 [ %i.cu, %.lr.ph.i.preheader.new ], [ %i.dm, %.lr.ph.i ] ; 2 uses
  %niter83 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter83.next.1, %.lr.ph.i ]
  %i.de = lshr i16 %.01214.i, 4
  %i.df = and i16 %i.de, 15
  %i.dg = zext nneg i16 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr @BrotliReverseBits.kLut, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !20
  %i.dj = shl i64 %.01115.i, 8
  %i.dk = shl i64 %i.di, 4
  %i.dl = or i64 %i.dj, %i.dk
  %i.dm = lshr i16 %.01214.i, 8                   ; 3 uses
  %i.dn = and i16 %i.dm, 15
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr @BrotliReverseBits.kLut, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !20
  %i.dr = or i64 %i.dq, %i.dl                     ; 3 uses
  %niter83.next.1 = add i64 %niter83, 2           ; 2 uses
  %niter83.ncmp.1.not = icmp eq i64 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1.not, label %BrotliReverseBits.exit.loopexit.unr-lcssa.a, label %.lr.ph.i, !llvm.loop !48

BrotliReverseBits.exit.loopexit.unr-lcssa.a:      ; preds = %.lr.ph.i
  %4 = and i64 %i.db, 4
  %lcmp.mod79.not.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod79.not.not, label %.lr.ph.i.epil.preheader, label %BrotliReverseBits.exit

.lr.ph.i.epil.preheader:                          ; preds = %BrotliReverseBits.exit.loopexit.unr-lcssa.a, %.lr.ph.i.preheader
  %.01115.i.epil.init.a = phi i64 [ %i.cz, %.lr.ph.i.preheader ], [ %i.dr, %BrotliReverseBits.exit.loopexit.unr-lcssa.a ]
  %.01214.i.epil.init.a = phi i16 [ %i.cu, %.lr.ph.i.preheader ], [ %i.dm, %BrotliReverseBits.exit.loopexit.unr-lcssa.a ]
  %lcmp.mod81 = trunc i64 %i.dd to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.ds = shl i64 %.01115.i.epil.init.a, 4
  %i.dt = lshr i16 %.01214.i.epil.init.a, 4
  %i.du = and i16 %i.dt, 15
  %i.dv = zext nneg i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr @BrotliReverseBits.kLut, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !20
  %i.dy = or i64 %i.dx, %i.ds
  br label %BrotliReverseBits.exit

BrotliReverseBits.exit:                           ; preds = %.lr.ph.i.epil.preheader, %BrotliReverseBits.exit.loopexit.unr-lcssa.a, %bb.b
  %.011.lcssa.i = phi i64 [ %i.cz, %bb.b ], [ %i.dr, %BrotliReverseBits.exit.loopexit.unr-lcssa.a ], [ %i.dy, %.lr.ph.i.epil.preheader ]
  %i.dz = sub nsw i64 0, %i.cs
  %i.ea = and i64 %i.dz, 3
  %i.eb = lshr i64 %.011.lcssa.i, %i.ea
  %i.ec = trunc i64 %i.eb to i16
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.227
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph28, %BrotliReverseBits.exit
  %i.ee = add nuw i64 %.227, 1                    ; 2 uses
  %exitcond33.not = icmp eq i64 %i.ee, %1
  br i1 %exitcond33.not, label %._crit_edge29, label %.lr.ph28, !llvm.loop !49

._crit_edge29:                                    ; preds = %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !11, i64 4}
!10 = !{!"HuffmanTree", !5, i64 0, !11, i64 4, !11, i64 6}
!11 = !{!"short", !6, i64 0}
!12 = !{!10, !11, i64 6}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!10, !5, i64 0}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !15, !28, !27}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15, !27, !28}
!35 = distinct !{!35, !15, !28, !27}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = !{!11, !11, i64 0}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
end_hunk_0
