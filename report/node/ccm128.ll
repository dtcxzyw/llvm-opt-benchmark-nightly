Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ccm128?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@CRYPTO_ccm128_encrypt:bb.a
  %umax = call i32 @llvm.umax.i32(i32 %i.o, i32 14)
  %i.q = add nuw nsw i32 %umax, 1
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.p, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.08394 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.v, %.lr.ph ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10
  %i.t = zext i8 %i.s to i64
  %i.u = or disjoint i64 %.08394, %i.t
  store i8 0, ptr %i.r, align 1, !tbaa !10
  %i.v = shl i64 %i.u, 8                          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.083.lcssa = phi i64 [ 0, %bb.c ], [ %i.v, %.lr.ph ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !10
  %i.y = zext i8 %i.x to i64
  %i.z = or disjoint i64 %.083.lcssa, %i.y
  store i8 1, ptr %i.w, align 1, !tbaa !10
  %.not91 = icmp eq i64 %i.z, %3
  br i1 %.not91, label %bb.d, label %bb.m

bb.d:                                             ; preds = %._crit_edge
  %i.aa = add i64 %3, 15
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = or i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !14
  %i.af = add i64 %i.ae, %i.ac                    ; 2 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !14
  %i.ag = icmp ugt i64 %i.af, 2305843009213693952
  br i1 %i.ag, label %bb.m, label %.preheader93

.preheader93:                                     ; preds = %bb.d
  %i.ah = icmp ugt i64 %3, 15
  br i1 %i.ah, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %.preheader93
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph99, %ctr64_inc.exit
  %.08498 = phi i64 [ %3, %.lr.ph99 ], [ %i.bz, %ctr64_inc.exit ]
  %.08597 = phi ptr [ %2, %.lr.ph99 ], [ %i.by, %ctr64_inc.exit ] ; 3 uses
  %.08696 = phi ptr [ %1, %.lr.ph99 ], [ %i.bx, %ctr64_inc.exit ] ; 4 uses
  %i.at = load i64, ptr %.08696, align 1, !tbaa !20
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !10
  %i.av = xor i64 %i.au, %i.at
  store i64 %i.av, ptr %i.ai, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %.08696, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 1, !tbaa !20
  %i.ay = load i64, ptr %i.aj, align 8, !tbaa !10
  %i.az = xor i64 %i.ay, %i.ax
  store i64 %i.az, ptr %i.aj, align 8, !tbaa !10
  call void %i.d(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ai, ptr noundef %i.f) #6
  call void %i.d(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.f) #6
  %i.ba = load i8, ptr %i.am, align 1, !tbaa !10
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  store i8 %i.bb, ptr %i.am, align 1, !tbaa !10
  %.not.i.not = icmp eq i8 %i.bb, 0
  br i1 %.not.i.not, label %bb.f, label %ctr64_inc.exit

bb.f:                                             ; preds = %bb.e
  %i.bc = load i8, ptr %i.an, align 2, !tbaa !10
  %i.bd = add i8 %i.bc, 1                         ; 2 uses
  store i8 %i.bd, ptr %i.an, align 2, !tbaa !10
  %.not.i.1.not = icmp eq i8 %i.bd, 0
  br i1 %.not.i.1.not, label %bb.g, label %ctr64_inc.exit

bb.g:                                             ; preds = %bb.f
  %i.be = load i8, ptr %i.ao, align 1, !tbaa !10
  %i.bf = add i8 %i.be, 1                         ; 2 uses
  store i8 %i.bf, ptr %i.ao, align 1, !tbaa !10
  %.not.i.2.not = icmp eq i8 %i.bf, 0
  br i1 %.not.i.2.not, label %bb.h, label %ctr64_inc.exit

bb.h:                                             ; preds = %bb.g
  %i.bg = load i8, ptr %i.ap, align 4, !tbaa !10
  %i.bh = add i8 %i.bg, 1                         ; 2 uses
  store i8 %i.bh, ptr %i.ap, align 4, !tbaa !10
  %.not.i.3.not = icmp eq i8 %i.bh, 0
  br i1 %.not.i.3.not, label %bb.i, label %ctr64_inc.exit

bb.i:                                             ; preds = %bb.h
  %i.bi = load i8, ptr %i.aq, align 1, !tbaa !10
  %i.bj = add i8 %i.bi, 1                         ; 2 uses
  store i8 %i.bj, ptr %i.aq, align 1, !tbaa !10
  %.not.i.4.not = icmp eq i8 %i.bj, 0
  br i1 %.not.i.4.not, label %bb.j, label %ctr64_inc.exit

bb.j:                                             ; preds = %bb.i
  %i.bk = load i8, ptr %i.ar, align 2, !tbaa !10
  %i.bl = add i8 %i.bk, 1                         ; 2 uses
  store i8 %i.bl, ptr %i.ar, align 2, !tbaa !10
  %.not.i.5.not = icmp eq i8 %i.bl, 0
  br i1 %.not.i.5.not, label %bb.k, label %ctr64_inc.exit

bb.k:                                             ; preds = %bb.j
  %i.bm = load i8, ptr %i.as, align 1, !tbaa !10
  %i.bn = add i8 %i.bm, 1                         ; 2 uses
  store i8 %i.bn, ptr %i.as, align 1, !tbaa !10
  %.not.i.6.not = icmp eq i8 %i.bn, 0
  br i1 %.not.i.6.not, label %bb.l, label %ctr64_inc.exit

bb.l:                                             ; preds = %bb.k
  %i.bo = load i8, ptr %i.ak, align 8, !tbaa !10
  %i.bp = add i8 %i.bo, 1
  store i8 %i.bp, ptr %i.ak, align 8, !tbaa !10
  br label %ctr64_inc.exit

ctr64_inc.exit:                                   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.bq = load i64, ptr %4, align 16, !tbaa !10
  %i.br = load i64, ptr %.08696, align 1, !tbaa !20
  %i.bs = xor i64 %i.br, %i.bq
  store i64 %i.bs, ptr %.08597, align 1, !tbaa !20
  %i.bt = load i64, ptr %i.al, align 8, !tbaa !10
  %i.bu = load i64, ptr %i.aw, align 1, !tbaa !20
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %.08597, i64 8
  store i64 %i.bv, ptr %i.bw, align 1, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %.08696, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.08597, i64 16 ; 2 uses
  %i.bz = add i64 %.08498, -16                    ; 3 uses
  %i.ca = icmp ugt i64 %i.bz, 15
  br i1 %i.ca, label %bb.e, label %._crit_edge100, !llvm.loop !32

._crit_edge100:                                   ; preds = %ctr64_inc.exit, %.preheader93
  %.086.lcssa = phi ptr [ %1, %.preheader93 ], [ %i.bx, %ctr64_inc.exit ] ; 15 uses
  %.085.lcssa = phi ptr [ %2, %.preheader93 ], [ %i.by, %ctr64_inc.exit ] ; 7 uses
  %.084.lcssa = phi i64 [ %3, %.preheader93 ], [ %i.bz, %ctr64_inc.exit ] ; 15 uses
  %.085.lcssa146 = ptrtoaddr ptr %.085.lcssa to i64 ; 2 uses
  %.086.lcssa147 = ptrtoaddr ptr %.086.lcssa to i64
  %.not92 = icmp eq i64 %.084.lcssa, 0
  br i1 %.not92, label %._crit_edge109, label %iter.check

iter.check:                                       ; preds = %._crit_edge100
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %min.iters.check = icmp samesign ult i64 %.084.lcssa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cc = getelementptr i8, ptr %0, i64 %.084.lcssa
  %scevgep133 = getelementptr i8, ptr %i.cc, i64 16
  %scevgep134 = getelementptr i8, ptr %.086.lcssa, i64 %.084.lcssa
  %bound0 = icmp ult ptr %i.cb, %scevgep134
  %bound1 = icmp ult ptr %.086.lcssa, %scevgep133
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec139 = and i64 %.084.lcssa, 12             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index140 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next143, %vec.epilog.vector.body ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %index140
  %wide.load141 = load <4 x i8>, ptr %i.cd, align 1, !tbaa !10, !alias.scope !42
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index140 ; 2 uses
  %wide.load142 = load <4 x i8>, ptr %i.ce, align 1, !tbaa !10, !alias.scope !43, !noalias !42
  %i.cf = xor <4 x i8> %wide.load142, %wide.load141
  store <4 x i8> %i.cf, ptr %i.ce, align 1, !tbaa !10, !alias.scope !43, !noalias !42
  %index.next143 = add nuw i64 %index140, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next143, %n.vec139
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n144 = icmp eq i64 %.084.lcssa, %n.vec139
  br i1 %cmp.n144, label %iter.check164, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %indvars.iv115.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec139, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.084.lcssa, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv115.prol = phi i64 [ %indvars.iv.next116.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv115.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv115.prol
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv115.prol ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !10
  %i.cl = xor i8 %i.ck, %i.ci
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !10
  %indvars.iv.next116.prol = add nuw i64 %indvars.iv115.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !37

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next116.prol, %vec.epilog.scalar.ph.prol ]
  %i.cm = sub nsw i64 %indvars.iv115.ph, %.084.lcssa
  %i.cn = icmp ugt i64 %i.cm, -4
  br i1 %i.cn, label %iter.check164, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.3, %vec.epilog.scalar.ph ], [ %indvars.iv115.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv115
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv115 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !10
  %i.cs = xor i8 %i.cr, %i.cp
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !10
  %indvars.iv.next116 = add nuw i64 %indvars.iv115, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv.next116
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !10
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next116 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !10
  %i.cx = xor i8 %i.cw, %i.cu
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !10
  %indvars.iv.next116.1 = add nuw i64 %indvars.iv115, 2 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv.next116.1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !10
  %i.da = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next116.1 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !10
  %i.dc = xor i8 %i.db, %i.cz
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !10
  %indvars.iv.next116.2 = add nuw i64 %indvars.iv115, 3 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv.next116.2
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !10
  %i.df = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next116.2 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !10
  %i.dh = xor i8 %i.dg, %i.de
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !10
  %indvars.iv.next116.3 = add nuw i64 %indvars.iv115, 4 ; 2 uses
  %exitcond118.not.3 = icmp eq i64 %indvars.iv.next116.3, %.084.lcssa
  br i1 %exitcond118.not.3, label %iter.check164, label %vec.epilog.scalar.ph, !llvm.loop !38

iter.check164:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block
  call void %i.d(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cb, ptr noundef %i.f) #6
  call void %i.d(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.f) #6
  %min.iters.check149 = icmp samesign ult i64 %.084.lcssa, 4
  br i1 %min.iters.check149, label %vec.epilog.scalar.ph165.preheader, label %vector.memcheck145

vector.memcheck145:                               ; preds = %iter.check164
  %i.di = sub i64 %i.a, %.085.lcssa146
  %diff.check = icmp ugt i64 %i.di, -32
  %i.dj = sub i64 %.086.lcssa147, %.085.lcssa146
  %diff.check148 = icmp ugt i64 %i.dj, -32
  %conflict.rdx = or i1 %diff.check, %diff.check148
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph165.preheader, label %vec.epilog.ph168

vec.epilog.ph168:                                 ; preds = %vector.memcheck145
  %n.vec169 = and i64 %.084.lcssa, 12             ; 3 uses
  br label %vec.epilog.vector.body170

vec.epilog.vector.body170:                        ; preds = %vec.epilog.vector.body170, %vec.epilog.ph168
  %index171 = phi i64 [ 0, %vec.epilog.ph168 ], [ %index.next174, %vec.epilog.vector.body170 ] ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 %index171
  %wide.load172 = load <4 x i8>, ptr %i.dk, align 4, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %index171
  %wide.load173 = load <4 x i8>, ptr %i.dl, align 1, !tbaa !10
  %i.dm = xor <4 x i8> %wide.load173, %wide.load172
  %i.dn = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 %index171
  store <4 x i8> %i.dm, ptr %i.dn, align 1, !tbaa !10
  %index.next174 = add nuw i64 %index171, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next174, %n.vec169
  br i1 %i.do, label %vec.epilog.middle.block175, label %vec.epilog.vector.body170, !llvm.loop !39

vec.epilog.middle.block175:                       ; preds = %vec.epilog.vector.body170
  %cmp.n176 = icmp eq i64 %.084.lcssa, %n.vec169
  br i1 %cmp.n176, label %._crit_edge109, label %vec.epilog.scalar.ph165.preheader

vec.epilog.scalar.ph165.preheader:                ; preds = %vector.memcheck145, %iter.check164, %vec.epilog.middle.block175
  %indvars.iv119.ph = phi i64 [ 0, %vector.memcheck145 ], [ 0, %iter.check164 ], [ %n.vec169, %vec.epilog.middle.block175 ] ; 3 uses
  %xtraiter181 = and i64 %.084.lcssa, 3           ; 2 uses
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %vec.epilog.scalar.ph165.prol.loopexit, label %vec.epilog.scalar.ph165.prol

vec.epilog.scalar.ph165.prol:                     ; preds = %vec.epilog.scalar.ph165.preheader, %vec.epilog.scalar.ph165.prol
  %indvars.iv119.prol = phi i64 [ %indvars.iv.next120.prol, %vec.epilog.scalar.ph165.prol ], [ %indvars.iv119.ph, %vec.epilog.scalar.ph165.preheader ] ; 4 uses
  %prol.iter183 = phi i64 [ %prol.iter183.next, %vec.epilog.scalar.ph165.prol ], [ 0, %vec.epilog.scalar.ph165.preheader ]
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv119.prol
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv119.prol
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !10
  %i.dt = xor i8 %i.ds, %i.dq
  %i.du = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 %indvars.iv119.prol
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !10
  %indvars.iv.next120.prol = add nuw i64 %indvars.iv119.prol, 1 ; 2 uses
  %prol.iter183.next = add i64 %prol.iter183, 1   ; 2 uses
  %prol.iter183.cmp.not = icmp eq i64 %prol.iter183.next, %xtraiter181
  br i1 %prol.iter183.cmp.not, label %vec.epilog.scalar.ph165.prol.loopexit, label %vec.epilog.scalar.ph165.prol, !llvm.loop !40

vec.epilog.scalar.ph165.prol.loopexit:            ; preds = %vec.epilog.scalar.ph165.prol, %vec.epilog.scalar.ph165.preheader
  %indvars.iv119.unr = phi i64 [ %indvars.iv119.ph, %vec.epilog.scalar.ph165.preheader ], [ %indvars.iv.next120.prol, %vec.epilog.scalar.ph165.prol ]
  %i.dv = sub nsw i64 %indvars.iv119.ph, %.084.lcssa
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge109, label %vec.epilog.scalar.ph165

vec.epilog.scalar.ph165:                          ; preds = %vec.epilog.scalar.ph165.prol.loopexit, %vec.epilog.scalar.ph165
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.3, %vec.epilog.scalar.ph165 ], [ %indvars.iv119.unr, %vec.epilog.scalar.ph165.prol.loopexit ] ; 7 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv119
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv119
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !10
  %i.eb = xor i8 %i.ea, %i.dy
  %i.ec = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 %indvars.iv119
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !10
  %indvars.iv.next120 = add nuw i64 %indvars.iv119, 1 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next120
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !10
  %i.ef = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv.next120
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !10
  %i.eh = xor i8 %i.eg, %i.ee
  %i.ei = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 %indvars.iv.next120
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !10
  %indvars.iv.next120.1 = add nuw i64 %indvars.iv119, 2 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next120.1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !10
  %i.el = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv.next120.1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !10
  %i.en = xor i8 %i.em, %i.ek
  %i.eo = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 %indvars.iv.next120.1
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !10
  %indvars.iv.next120.2 = add nuw i64 %indvars.iv119, 3 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next120.2
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !10
  %i.er = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv.next120.2
  %i.es = load i8, ptr %i.er, align 1, !tbaa !10
  %i.et = xor i8 %i.es, %i.eq
  %i.eu = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 %indvars.iv.next120.2
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !10
  %indvars.iv.next120.3 = add nuw i64 %indvars.iv119, 4 ; 2 uses
  %exitcond122.not.3 = icmp eq i64 %indvars.iv.next120.3, %.084.lcssa
  br i1 %exitcond122.not.3, label %._crit_edge109, label %vec.epilog.scalar.ph165, !llvm.loop !41

._crit_edge109:                                   ; preds = %vec.epilog.scalar.ph165.prol.loopexit, %vec.epilog.scalar.ph165, %vec.epilog.middle.block175, %._crit_edge100
  %i.ev = zext nneg i32 %i.o to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.ev
  %i.ew = sub nuw nsw i32 16, %i.o
  %i.ex = zext nneg i32 %i.ew to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.ex, i1 false), !tbaa !10
  call void %i.d(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.f) #6
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ez = load <2 x i64>, ptr %4, align 16, !tbaa !10
  %i.fa = load <2 x i64>, ptr %i.ey, align 8, !tbaa !10
  %i.fb = xor <2 x i64> %i.fa, %i.ez
  store <2 x i64> %i.fb, ptr %i.ey, align 8, !tbaa !10
  store i8 %i.b, ptr %0, align 8, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %._crit_edge, %._crit_edge109
  %.087 = phi i32 [ 0, %._crit_edge109 ], [ -1, %._crit_edge ], [ -2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 %.087
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @CRYPTO_ccm128_decrypt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %union.anon.1, align 16             ; 15 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !10      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.f = zext i8 %i.a to i32                      ; 2 uses
  %i.g = and i32 %i.f, 64
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef %i.e) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = and i32 %i.f, 7                          ; 3 uses
  %i.j = trunc nuw nsw i32 %i.i to i8
  store i8 %i.j, ptr %0, align 8, !tbaa !10
  %i.k = xor i32 %i.i, 15                         ; 4 uses
  %.not96 = icmp eq i32 %i.i, 0
  br i1 %.not96, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.l = zext nneg i32 %i.k to i64
  %umax = tail call i32 @llvm.umax.i32(i32 %i.k, i32 14)
  %i.m = add nuw nsw i32 %umax, 1
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.l, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.07281 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.r, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !10
  %i.p = zext i8 %i.o to i64
  %i.q = or disjoint i64 %.07281, %i.p
  store i8 0, ptr %i.n, align 1, !tbaa !10
  %i.r = shl i64 %i.q, 8                          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.072.lcssa = phi i64 [ 0, %bb.c ], [ %i.r, %.lr.ph ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !10
  %i.u = zext i8 %i.t to i64
  %i.v = or disjoint i64 %.072.lcssa, %i.u
  store i8 1, ptr %i.s, align 1, !tbaa !10
  %.not79 = icmp eq i64 %i.v, %3
  br i1 %.not79, label %.preheader, label %bb.l

.preheader:                                       ; preds = %._crit_edge
  %i.w = icmp ugt i64 %3, 15
  br i1 %i.w, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph86, %ctr64_inc.exit
  %.07385 = phi i64 [ %3, %.lr.ph86 ], [ %i.bm, %ctr64_inc.exit ]
  %.07484 = phi ptr [ %2, %.lr.ph86 ], [ %i.bl, %ctr64_inc.exit ] ; 3 uses
  %.07583 = phi ptr [ %1, %.lr.ph86 ], [ %i.bk, %ctr64_inc.exit ] ; 3 uses
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.e) #6
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !10
  %i.aj = add i8 %i.ai, 1                         ; 2 uses
  store i8 %i.aj, ptr %i.ab, align 1, !tbaa !10
  %.not.i.not = icmp eq i8 %i.aj, 0
  br i1 %.not.i.not, label %bb.e, label %ctr64_inc.exit

bb.e:                                             ; preds = %bb.d
  %i.ak = load i8, ptr %i.ac, align 2, !tbaa !10
  %i.al = add i8 %i.ak, 1                         ; 2 uses
  store i8 %i.al, ptr %i.ac, align 2, !tbaa !10
  %.not.i.1.not = icmp eq i8 %i.al, 0
  br i1 %.not.i.1.not, label %bb.f, label %ctr64_inc.exit

bb.f:                                             ; preds = %bb.e
  %i.am = load i8, ptr %i.ad, align 1, !tbaa !10
  %i.an = add i8 %i.am, 1                         ; 2 uses
  store i8 %i.an, ptr %i.ad, align 1, !tbaa !10
  %.not.i.2.not = icmp eq i8 %i.an, 0
  br i1 %.not.i.2.not, label %bb.g, label %ctr64_inc.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = load i8, ptr %i.ae, align 4, !tbaa !10
  %i.ap = add i8 %i.ao, 1                         ; 2 uses
  store i8 %i.ap, ptr %i.ae, align 4, !tbaa !10
  %.not.i.3.not = icmp eq i8 %i.ap, 0
  br i1 %.not.i.3.not, label %bb.h, label %ctr64_inc.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = load i8, ptr %i.af, align 1, !tbaa !10
  %i.ar = add i8 %i.aq, 1                         ; 2 uses
  store i8 %i.ar, ptr %i.af, align 1, !tbaa !10
  %.not.i.4.not = icmp eq i8 %i.ar, 0
  br i1 %.not.i.4.not, label %bb.i, label %ctr64_inc.exit

bb.i:                                             ; preds = %bb.h
  %i.as = load i8, ptr %i.ag, align 2, !tbaa !10
  %i.at = add i8 %i.as, 1                         ; 2 uses
  store i8 %i.at, ptr %i.ag, align 2, !tbaa !10
  %.not.i.5.not = icmp eq i8 %i.at, 0
  br i1 %.not.i.5.not, label %bb.j, label %ctr64_inc.exit

bb.j:                                             ; preds = %bb.i
  %i.au = load i8, ptr %i.ah, align 1, !tbaa !10
  %i.av = add i8 %i.au, 1                         ; 2 uses
  store i8 %i.av, ptr %i.ah, align 1, !tbaa !10
  %.not.i.6.not = icmp eq i8 %i.av, 0
  br i1 %.not.i.6.not, label %bb.k, label %ctr64_inc.exit

bb.k:                                             ; preds = %bb.j
  %i.aw = load i8, ptr %i.x, align 8, !tbaa !10
  %i.ax = add i8 %i.aw, 1
  store i8 %i.ax, ptr %i.x, align 8, !tbaa !10
  br label %ctr64_inc.exit

ctr64_inc.exit:                                   ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ay = load i64, ptr %4, align 16, !tbaa !10
  %i.az = load i64, ptr %.07583, align 1, !tbaa !20
  %i.ba = xor i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %.07484, align 1, !tbaa !20
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !10
  %i.bc = xor i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %i.y, align 8, !tbaa !10
  %i.bd = load i64, ptr %i.z, align 8, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %.07583, i64 8
  %i.bf = load i64, ptr %i.be, align 1, !tbaa !20
  %i.bg = xor i64 %i.bf, %i.bd                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.07484, i64 8
  store i64 %i.bg, ptr %i.bh, align 1, !tbaa !20
  %i.bi = load i64, ptr %i.aa, align 8, !tbaa !10
  %i.bj = xor i64 %i.bi, %i.bg
  store i64 %i.bj, ptr %i.aa, align 8, !tbaa !10
  call void %i.c(ptr noundef nonnull %i.y, ptr noundef nonnull %i.y, ptr noundef %i.e) #6
  %i.bk = getelementptr inbounds nuw i8, ptr %.07583, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.07484, i64 16 ; 2 uses
  %i.bm = add i64 %.07385, -16                    ; 3 uses
  %i.bn = icmp ugt i64 %i.bm, 15
  br i1 %i.bn, label %bb.d, label %._crit_edge87, !llvm.loop !45

._crit_edge87:                                    ; preds = %ctr64_inc.exit, %.preheader
  %.075.lcssa = phi ptr [ %1, %.preheader ], [ %i.bk, %ctr64_inc.exit ] ; 7 uses
  %.074.lcssa = phi ptr [ %2, %.preheader ], [ %i.bl, %ctr64_inc.exit ] ; 8 uses
  %.073.lcssa = phi i64 [ %3, %.preheader ], [ %i.bm, %ctr64_inc.exit ] ; 11 uses
  %.not80 = icmp eq i64 %.073.lcssa, 0
  br i1 %.not80, label %._crit_edge95, label %iter.check

iter.check:                                       ; preds = %._crit_edge87
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.e) #6
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %min.iters.check = icmp samesign ult i64 %.073.lcssa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep115 = getelementptr i8, ptr %.074.lcssa, i64 %.073.lcssa ; 3 uses
  %i.bp = getelementptr i8, ptr %0, i64 %.073.lcssa
  %scevgep116 = getelementptr i8, ptr %i.bp, i64 16 ; 3 uses
  %scevgep117 = getelementptr i8, ptr %4, i64 %.073.lcssa ; 2 uses
  %scevgep118 = getelementptr i8, ptr %.075.lcssa, i64 %.073.lcssa ; 2 uses
  %bound0 = icmp ult ptr %.074.lcssa, %scevgep116
  %bound1 = icmp ult ptr %i.bo, %scevgep115
  %found.conflict = and i1 %bound0, %bound1
  %bound0119 = icmp ult ptr %.074.lcssa, %scevgep117
  %bound1120 = icmp ult ptr %4, %scevgep115
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx = or i1 %found.conflict, %found.conflict121
  %bound0122 = icmp ult ptr %.074.lcssa, %scevgep118
  %bound1123 = icmp ult ptr %.075.lcssa, %scevgep115
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx125 = or i1 %conflict.rdx, %found.conflict124
  %bound0126 = icmp ult ptr %i.bo, %scevgep117
  %bound1127 = icmp ult ptr %4, %scevgep116
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx125, %found.conflict128
  %bound0130 = icmp ult ptr %i.bo, %scevgep118
  %bound1131 = icmp ult ptr %.075.lcssa, %scevgep116
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %conflict.rdx129, %found.conflict132
  br i1 %conflict.rdx133, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec140 = and i64 %.073.lcssa, 12             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index141 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next145, %vec.epilog.vector.body ] ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 %index141
  %wide.load142 = load <4 x i8>, ptr %i.bq, align 4, !tbaa !10, !alias.scope !53
  %i.br = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 %index141
  %wide.load143 = load <4 x i8>, ptr %i.br, align 1, !tbaa !10, !alias.scope !54
  %i.bs = xor <4 x i8> %wide.load143, %wide.load142 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 %index141
  store <4 x i8> %i.bs, ptr %i.bt, align 1, !tbaa !10, !alias.scope !55, !noalias !56
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %index141 ; 2 uses
  %wide.load144 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !10, !alias.scope !57, !noalias !58
  %i.bv = xor <4 x i8> %wide.load144, %i.bs
  store <4 x i8> %i.bv, ptr %i.bu, align 1, !tbaa !10, !alias.scope !57, !noalias !58
  %index.next145 = add nuw i64 %index141, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next145, %n.vec140
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n146 = icmp eq i64 %.073.lcssa, %n.vec140
  br i1 %cmp.n146, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %indvars.iv101.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec140, %vec.epilog.middle.block ] ; 7 uses
  %.neg = or disjoint i64 %indvars.iv101.ph, 1
  %xtraiter = and i64 %.073.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv101.ph
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 %indvars.iv101.ph
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !10
  %i.cb = xor i8 %i.ca, %i.by                     ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 %indvars.iv101.ph
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv101.ph ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !10
  %i.cf = xor i8 %i.ce, %i.cb
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !10
  %indvars.iv.next102.prol = or disjoint i64 %indvars.iv101.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv101.unr = phi i64 [ %indvars.iv101.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next102.prol, %vec.epilog.scalar.ph.prol ]
  %i.cg = icmp eq i64 %.073.lcssa, %.neg
  br i1 %i.cg, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.1, %vec.epilog.scalar.ph ], [ %indvars.iv101.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv101
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 %indvars.iv101
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !10
  %i.cl = xor i8 %i.ck, %i.ci                     ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 %indvars.iv101
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv101 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !10
  %i.cp = xor i8 %i.co, %i.cl
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !10
  %indvars.iv.next102 = add nuw i64 %indvars.iv101, 1 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next102
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !10
  %i.cs = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 %indvars.iv.next102
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !10
  %i.cu = xor i8 %i.ct, %i.cr                     ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 %indvars.iv.next102
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !10
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv.next102 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !10
  %i.cy = xor i8 %i.cx, %i.cu
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !10
  %indvars.iv.next102.1 = add nuw i64 %indvars.iv101, 2 ; 2 uses
  %exitcond104.not.1 = icmp eq i64 %indvars.iv.next102.1, %.073.lcssa
  br i1 %exitcond104.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !52

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block
  call void %i.c(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bo, ptr noundef %i.e) #6
  br label %._crit_edge95

._crit_edge95:                                    ; preds = %.loopexit, %._crit_edge87
  %i.cz = zext nneg i32 %i.k to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.cz
  %i.da = sub nuw nsw i32 16, %i.k
  %i.db = zext nneg i32 %i.da to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.db, i1 false), !tbaa !10
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.e) #6
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dd = load <2 x i64>, ptr %4, align 16, !tbaa !10
  %i.de = load <2 x i64>, ptr %i.dc, align 8, !tbaa !10
  %i.df = xor <2 x i64> %i.de, %i.dd
  store <2 x i64> %i.df, ptr %i.dc, align 8, !tbaa !10
  store i8 %i.a, ptr %0, align 8, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %._crit_edge95
  %.076 = phi i32 [ 0, %._crit_edge95 ], [ -1, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 %.076
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @CRYPTO_ccm128_encrypt_ccm64(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %union.anon.2, align 16             ; 12 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !10      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.f = zext i8 %i.a to i32                      ; 2 uses
  %i.g = and i32 %i.f, 64
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef %i.e) #6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = and i32 %i.f, 7                          ; 3 uses
  %i.m = trunc nuw nsw i32 %i.l to i8
  store i8 %i.m, ptr %0, align 8, !tbaa !10
  %i.n = xor i32 %i.l, 15                         ; 4 uses
  %.not107 = icmp eq i32 %i.l, 0
  br i1 %.not107, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.o = zext nneg i32 %i.n to i64
  %umax = tail call i32 @llvm.umax.i32(i32 %i.n, i32 14)
  %i.p = add nuw nsw i32 %umax, 1
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.o, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.081100 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !10
  %i.s = zext i8 %i.r to i64
  %i.t = or disjoint i64 %.081100, %i.s
  store i8 0, ptr %i.q, align 1, !tbaa !10
  %i.u = shl i64 %i.t, 8                          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.081.lcssa = phi i64 [ 0, %bb.c ], [ %i.u, %.lr.ph ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !10
  %i.x = zext i8 %i.w to i64
  %i.y = or disjoint i64 %.081.lcssa, %i.x
  store i8 1, ptr %i.v, align 1, !tbaa !10
  %.not92 = icmp eq i64 %i.y, %3
  br i1 %.not92, label %bb.d, label %bb.h

bb.d:                                             ; preds = %._crit_edge
  %i.z = add i64 %3, 15
  %i.aa = lshr i64 %i.z, 3
  %i.ab = or i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !14
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !14
  %i.af = icmp ugt i64 %i.ae, 2305843009213693952
  br i1 %i.af, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = lshr i64 %3, 4                          ; 3 uses
  %.not93 = icmp eq i64 %i.ag, 0
  br i1 %.not93, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %4(ptr noundef %1, ptr noundef %2, i64 noundef %i.ag, ptr noundef %i.e, ptr noundef nonnull %0, ptr noundef nonnull %i.ah) #6
  %i.ai = and i64 %3, 15                          ; 2 uses
  %.not94 = icmp eq i64 %i.ai, 0
  br i1 %.not94, label %._crit_edge106, label %.thread123

.thread123:                                       ; preds = %bb.f
  %i.aj = and i64 %3, -16                         ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  tail call fastcc void @ctr64_add(ptr noundef nonnull %0, i64 noundef %i.ag)
  br label %iter.check

bb.g:                                             ; preds = %bb.e
  %.not95 = icmp eq i64 %3, 0
  br i1 %.not95, label %._crit_edge106, label %iter.check

iter.check:                                       ; preds = %.thread123, %bb.g
  %.083130 = phi i64 [ %i.ai, %.thread123 ], [ %3, %bb.g ] ; 15 uses
  %.084129 = phi ptr [ %i.ak, %.thread123 ], [ %2, %bb.g ] ; 8 uses
  %.085128 = phi ptr [ %i.al, %.thread123 ], [ %1, %bb.g ] ; 13 uses
  %.084129144 = ptrtoaddr ptr %.084129 to i64
  %.085128145 = ptrtoaddr ptr %.085128 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %min.iters.check = icmp ult i64 %.083130, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.an = add nsw i64 %.083130, -1                ; 2 uses
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = icmp eq i64 %i.ao, 4294967295
  %i.aq = icmp ugt i64 %i.an, 4294967295
  %i.ar = or i1 %i.ap, %i.aq
  br i1 %i.ar, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.as = getelementptr i8, ptr %0, i64 %.083130
  %scevgep131 = getelementptr i8, ptr %i.as, i64 16
  %scevgep132 = getelementptr i8, ptr %.085128, i64 %.083130
  %bound0 = icmp ult ptr %i.am, %scevgep132
  %bound1 = icmp ult ptr %.085128, %scevgep131
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check133 = icmp ult i64 %.083130, 32
  br i1 %min.iters.check133, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.085128, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !tbaa !10, !alias.scope !70
  %wide.load134 = load <16 x i8>, ptr %i.au, align 1, !tbaa !10, !alias.scope !70
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load135 = load <16 x i8>, ptr %i.av, align 1, !tbaa !10, !alias.scope !71, !noalias !70
  %wide.load136 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !10, !alias.scope !71, !noalias !70
  %i.ax = xor <16 x i8> %wide.load135, %wide.load
  %i.ay = xor <16 x i8> %wide.load136, %wide.load134
  store <16 x i8> %i.ax, ptr %i.av, align 1, !tbaa !10, !alias.scope !71, !noalias !70
  store <16 x i8> %i.ay, ptr %i.aw, align 1, !tbaa !10, !alias.scope !71, !noalias !70
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec137 = and i64 %.083130, 12                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.085128, i64 %index138
  %wide.load139 = load <4 x i8>, ptr %i.az, align 1, !tbaa !10, !alias.scope !70
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 %index138 ; 2 uses
  %wide.load140 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !10, !alias.scope !71, !noalias !70
  %i.bb = xor <4 x i8> %wide.load140, %wide.load139
  store <4 x i8> %i.bb, ptr %i.ba, align 1, !tbaa !10, !alias.scope !71, !noalias !70
  %index.next141 = add nuw i64 %index138, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next141, %n.vec137
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !64

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n142 = icmp eq i64 %.083130, %n.vec137
  br i1 %cmp.n142, label %iter.check161, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %indvars.iv109.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec137, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %vec.epilog.scalar.ph ], [ %indvars.iv109.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.085128, i64 %indvars.iv109
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !10
end_hunk_0
