inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@CRYPTO_ccm128_encrypt:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.g = zext i8 %i.b to i32                      ; 2 uses
  %i.h = and i32 %i.g, 64
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.d(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef %i.f) #6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !9
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = and i32 %i.g, 7                          ; 3 uses
  %i.n = trunc nuw nsw i32 %i.m to i8
  store i8 %i.n, ptr %0, align 8, !tbaa !8
  %i.o = xor i32 %i.m, 15                         ; 4 uses
  %.not110 = icmp eq i32 %i.m, 0
  br i1 %.not110, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.p = zext nneg i32 %i.o to i64
  %umax = call i32 @llvm.umax.i32(i32 %i.o, i32 14)
  %i.q = add nuw nsw i32 %umax, 1
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.p, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.08394 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.v, %.lr.ph ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = zext i8 %i.s to i64
  %i.u = or disjoint i64 %.08394, %i.t
  store i8 0, ptr %i.r, align 1, !tbaa !8
  %i.v = shl i64 %i.u, 8                          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.083.lcssa = phi i64 [ 0, %bb.c ], [ %i.v, %.lr.ph ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  %i.y = zext i8 %i.x to i64
  %i.z = or disjoint i64 %.083.lcssa, %i.y
  store i8 1, ptr %i.w, align 1, !tbaa !8
  %.not91 = icmp eq i64 %i.z, %3
  br i1 %.not91, label %bb.d, label %bb.m

bb.d:                                             ; preds = %._crit_edge
  %i.aa = add i64 %3, 15
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = or i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !9
  %i.af = add i64 %i.ae, %i.ac                    ; 2 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !9
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
  %i.at = load i64, ptr %.08696, align 1, !tbaa !28
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !8
  %i.av = xor i64 %i.au, %i.at
  store i64 %i.av, ptr %i.ai, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %.08696, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 1, !tbaa !28
  %i.ay = load i64, ptr %i.aj, align 8, !tbaa !8
  %i.az = xor i64 %i.ay, %i.ax
  store i64 %i.az, ptr %i.aj, align 8, !tbaa !8
  call void %i.d(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ai, ptr noundef %i.f) #6
  call void %i.d(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.f) #6
  %i.ba = load i8, ptr %i.am, align 1, !tbaa !8
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  store i8 %i.bb, ptr %i.am, align 1, !tbaa !8
  %.not.i.not = icmp eq i8 %i.bb, 0
  br i1 %.not.i.not, label %bb.f, label %ctr64_inc.exit

bb.f:                                             ; preds = %bb.e
  %i.bc = load i8, ptr %i.an, align 2, !tbaa !8
  %i.bd = add i8 %i.bc, 1                         ; 2 uses
  store i8 %i.bd, ptr %i.an, align 2, !tbaa !8
  %.not.i.1.not = icmp eq i8 %i.bd, 0
  br i1 %.not.i.1.not, label %bb.g, label %ctr64_inc.exit

bb.g:                                             ; preds = %bb.f
  %i.be = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.bf = add i8 %i.be, 1                         ; 2 uses
  store i8 %i.bf, ptr %i.ao, align 1, !tbaa !8
  %.not.i.2.not = icmp eq i8 %i.bf, 0
  br i1 %.not.i.2.not, label %bb.h, label %ctr64_inc.exit

bb.h:                                             ; preds = %bb.g
  %i.bg = load i8, ptr %i.ap, align 4, !tbaa !8
  %i.bh = add i8 %i.bg, 1                         ; 2 uses
  store i8 %i.bh, ptr %i.ap, align 4, !tbaa !8
  %.not.i.3.not = icmp eq i8 %i.bh, 0
  br i1 %.not.i.3.not, label %bb.i, label %ctr64_inc.exit

bb.i:                                             ; preds = %bb.h
  %i.bi = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.bj = add i8 %i.bi, 1                         ; 2 uses
  store i8 %i.bj, ptr %i.aq, align 1, !tbaa !8
  %.not.i.4.not = icmp eq i8 %i.bj, 0
  br i1 %.not.i.4.not, label %bb.j, label %ctr64_inc.exit

bb.j:                                             ; preds = %bb.i
  %i.bk = load i8, ptr %i.ar, align 2, !tbaa !8
  %i.bl = add i8 %i.bk, 1                         ; 2 uses
  store i8 %i.bl, ptr %i.ar, align 2, !tbaa !8
  %.not.i.5.not = icmp eq i8 %i.bl, 0
  br i1 %.not.i.5.not, label %bb.k, label %ctr64_inc.exit

bb.k:                                             ; preds = %bb.j
  %i.bm = load i8, ptr %i.as, align 1, !tbaa !8
  %i.bn = add i8 %i.bm, 1                         ; 2 uses
  store i8 %i.bn, ptr %i.as, align 1, !tbaa !8
  %.not.i.6.not = icmp eq i8 %i.bn, 0
  br i1 %.not.i.6.not, label %bb.l, label %ctr64_inc.exit

bb.l:                                             ; preds = %bb.k
  %i.bo = load i8, ptr %i.ak, align 8, !tbaa !8
  %i.bp = add i8 %i.bo, 1
  store i8 %i.bp, ptr %i.ak, align 8, !tbaa !8
  br label %ctr64_inc.exit

ctr64_inc.exit:                                   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.bq = load i64, ptr %4, align 16, !tbaa !8
  %i.br = load i64, ptr %.08696, align 1, !tbaa !28
  %i.bs = xor i64 %i.br, %i.bq
  store i64 %i.bs, ptr %.08597, align 1, !tbaa !28
  %i.bt = load i64, ptr %i.al, align 8, !tbaa !8
  %i.bu = load i64, ptr %i.aw, align 1, !tbaa !28
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %.08597, i64 8
  store i64 %i.bv, ptr %i.bw, align 1, !tbaa !28
  %i.bx = getelementptr inbounds nuw i8, ptr %.08696, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.08597, i64 16 ; 2 uses
  %i.bz = add i64 %.08498, -16                    ; 3 uses
  %i.ca = icmp ugt i64 %i.bz, 15
  br i1 %i.ca, label %bb.e, label %._crit_edge100, !llvm.loop !29

._crit_edge100:                                   ; preds = %ctr64_inc.exit, %.preheader93
  %.086.lcssa = phi ptr [ %1, %.preheader93 ], [ %i.bx, %ctr64_inc.exit ] ; 7 uses
  %.085.lcssa = phi ptr [ %2, %.preheader93 ], [ %i.by, %ctr64_inc.exit ] ; 3 uses
  %.084.lcssa = phi i64 [ %3, %.preheader93 ], [ %i.bz, %ctr64_inc.exit ] ; 13 uses
  %.085.lcssa148 = ptrtoaddr ptr %.085.lcssa to i64 ; 2 uses
  %.086.lcssa149 = ptrtoaddr ptr %.086.lcssa to i64
  %.not92 = icmp eq i64 %.084.lcssa, 0
  br i1 %.not92, label %._crit_edge109, label %iter.check

iter.check:                                       ; preds = %._crit_edge100
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %.084.lcssa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cc = add nsw i64 %.084.lcssa, -1             ; 2 uses
  %i.cd = and i64 %i.cc, 4294967295
  %i.ce = icmp eq i64 %i.cd, 4294967295
  %i.cf = icmp ugt i64 %i.cc, 4294967295
  %i.cg = or i1 %i.ce, %i.cf
  br i1 %i.cg, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ch = getelementptr i8, ptr %0, i64 %.084.lcssa
  %scevgep133 = getelementptr i8, ptr %i.ch, i64 16
  %scevgep134 = getelementptr i8, ptr %.086.lcssa, i64 %.084.lcssa
  %bound0 = icmp ult ptr %i.cb, %scevgep134
  %bound1 = icmp ult ptr %.086.lcssa, %scevgep133
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec139 = and i64 %.084.lcssa, 12             ; 4 uses
  %5 = trunc nuw nsw i64 %n.vec139 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index140 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next143, %vec.epilog.vector.body ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %index140
  %wide.load141 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !8, !alias.scope !30
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index140 ; 2 uses
  %wide.load142 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !8, !alias.scope !33, !noalias !30
  %i.ck = xor <4 x i8> %wide.load142, %wide.load141
  store <4 x i8> %i.ck, ptr %i.cj, align 1, !tbaa !8, !alias.scope !33, !noalias !30
  %index.next143 = add nuw i64 %index140, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next143, %n.vec139
  br i1 %i.cl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n144 = icmp eq i64 %.084.lcssa, %n.vec139
  br i1 %cmp.n144, label %iter.check167, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %indvars.iv115.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec139, %vec.epilog.middle.block ]
  %.1104.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %5, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv115 = phi i64 [ %7, %vec.epilog.scalar.ph ], [ %indvars.iv115.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1104 = phi i32 [ %6, %vec.epilog.scalar.ph ], [ %.1104.ph, %vec.epilog.scalar.ph.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv115
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv115 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !8
  %i.cq = xor i8 %i.cp, %i.cn
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !8
  %6 = add i32 %.1104, 1                          ; 2 uses
  %7 = zext i32 %6 to i64                         ; 2 uses
  %i.cr = icmp samesign ugt i64 %.084.lcssa, %7
  br i1 %i.cr, label %vec.epilog.scalar.ph, label %iter.check167, !llvm.loop !36

iter.check167:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block
  call void %i.d(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cb, ptr noundef %i.f) #6
  call void %i.d(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.f) #6
  %min.iters.check152 = icmp samesign ult i64 %.084.lcssa, 4
  br i1 %min.iters.check152, label %vec.epilog.scalar.ph168.preheader, label %vector.scevcheck145

vector.scevcheck145:                              ; preds = %iter.check167
  %i.cs = add nsw i64 %.084.lcssa, -1             ; 2 uses
  %i.ct = and i64 %i.cs, 4294967295
  %i.cu = icmp eq i64 %i.ct, 4294967295
  %i.cv = icmp ugt i64 %i.cs, 4294967295
  %i.cw = or i1 %i.cu, %i.cv
  br i1 %i.cw, label %vec.epilog.scalar.ph168.preheader, label %vector.memcheck147

vector.memcheck147:                               ; preds = %vector.scevcheck145
  %i.cx = sub i64 %i.a, %.085.lcssa148
  %diff.check = icmp ugt i64 %i.cx, -32
  %i.cy = sub i64 %.086.lcssa149, %.085.lcssa148
  %diff.check150 = icmp ugt i64 %i.cy, -32
  %conflict.rdx = or i1 %diff.check, %diff.check150
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph168.preheader, label %vec.epilog.ph171

vec.epilog.ph171:                                 ; preds = %vector.memcheck147
  %n.vec172 = and i64 %.084.lcssa, 12             ; 4 uses
  %8 = trunc nuw nsw i64 %n.vec172 to i32
  br label %vec.epilog.vector.body173

vec.epilog.vector.body173:                        ; preds = %vec.epilog.vector.body173, %vec.epilog.ph171
  %index174 = phi i64 [ 0, %vec.epilog.ph171 ], [ %index.next177, %vec.epilog.vector.body173 ] ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 %index174
  %wide.load175 = load <4 x i8>, ptr %i.cz, align 4, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %index174
  %wide.load176 = load <4 x i8>, ptr %i.da, align 1, !tbaa !8
  %i.db = xor <4 x i8> %wide.load176, %wide.load175
  %i.dc = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 %index174
  store <4 x i8> %i.db, ptr %i.dc, align 1, !tbaa !8
  %index.next177 = add nuw i64 %index174, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next177, %n.vec172
  br i1 %i.dd, label %vec.epilog.middle.block178, label %vec.epilog.vector.body173, !llvm.loop !37

vec.epilog.middle.block178:                       ; preds = %vec.epilog.vector.body173
  %cmp.n179 = icmp eq i64 %.084.lcssa, %n.vec172
  br i1 %cmp.n179, label %._crit_edge109, label %vec.epilog.scalar.ph168.preheader

vec.epilog.scalar.ph168.preheader:                ; preds = %vector.memcheck147, %vector.scevcheck145, %iter.check167, %vec.epilog.middle.block178
  %indvars.iv118.ph = phi i64 [ 0, %vector.scevcheck145 ], [ 0, %vector.memcheck147 ], [ 0, %iter.check167 ], [ %n.vec172, %vec.epilog.middle.block178 ]
  %.2105.ph = phi i32 [ 0, %vector.scevcheck145 ], [ 0, %vector.memcheck147 ], [ 0, %iter.check167 ], [ %8, %vec.epilog.middle.block178 ]
  br label %vec.epilog.scalar.ph168

vec.epilog.scalar.ph168:                          ; preds = %vec.epilog.scalar.ph168.preheader, %vec.epilog.scalar.ph168
  %indvars.iv118 = phi i64 [ %10, %vec.epilog.scalar.ph168 ], [ %indvars.iv118.ph, %vec.epilog.scalar.ph168.preheader ] ; 3 uses
  %.2105 = phi i32 [ %9, %vec.epilog.scalar.ph168 ], [ %.2105.ph, %vec.epilog.scalar.ph168.preheader ]
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv118
  %i.df = load i8, ptr %i.de, align 1, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv118
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !8
  %i.di = xor i8 %i.dh, %i.df
  %i.dj = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 %indvars.iv118
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !8
  %9 = add i32 %.2105, 1                          ; 2 uses
  %10 = zext i32 %9 to i64                        ; 2 uses
  %i.dk = icmp samesign ugt i64 %.084.lcssa, %10
  br i1 %i.dk, label %vec.epilog.scalar.ph168, label %._crit_edge109, !llvm.loop !38

._crit_edge109:                                   ; preds = %vec.epilog.scalar.ph168, %vec.epilog.middle.block178, %._crit_edge100
  %i.dl = zext nneg i32 %i.o to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.dl
  %i.dm = sub nuw nsw i32 16, %i.o
  %i.dn = zext nneg i32 %i.dm to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.dn, i1 false), !tbaa !8
  call void %i.d(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.f) #6
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dp = load <2 x i64>, ptr %4, align 16, !tbaa !8
  %i.dq = load <2 x i64>, ptr %i.do, align 8, !tbaa !8
  %i.dr = xor <2 x i64> %i.dq, %i.dp
  store <2 x i64> %i.dr, ptr %i.do, align 8, !tbaa !8
  store i8 %i.b, ptr %0, align 8, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %._crit_edge, %._crit_edge109
  %.087 = phi i32 [ 0, %._crit_edge109 ], [ -1, %._crit_edge ], [ -2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 %.087
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @CRYPTO_ccm128_decrypt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %union.anon.1, align 16             ; 13 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !8       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 6 uses
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
  store i8 %i.j, ptr %0, align 8, !tbaa !8
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
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = zext i8 %i.o to i64
  %i.q = or disjoint i64 %.07281, %i.p
  store i8 0, ptr %i.n, align 1, !tbaa !8
  %i.r = shl i64 %i.q, 8                          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.072.lcssa = phi i64 [ 0, %bb.c ], [ %i.r, %.lr.ph ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8
  %i.u = zext i8 %i.t to i64
  %i.v = or disjoint i64 %.072.lcssa, %i.u
  store i8 1, ptr %i.s, align 1, !tbaa !8
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
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.aj = add i8 %i.ai, 1                         ; 2 uses
  store i8 %i.aj, ptr %i.ab, align 1, !tbaa !8
  %.not.i.not = icmp eq i8 %i.aj, 0
  br i1 %.not.i.not, label %bb.e, label %ctr64_inc.exit

bb.e:                                             ; preds = %bb.d
  %i.ak = load i8, ptr %i.ac, align 2, !tbaa !8
  %i.al = add i8 %i.ak, 1                         ; 2 uses
  store i8 %i.al, ptr %i.ac, align 2, !tbaa !8
  %.not.i.1.not = icmp eq i8 %i.al, 0
  br i1 %.not.i.1.not, label %bb.f, label %ctr64_inc.exit

bb.f:                                             ; preds = %bb.e
  %i.am = load i8, ptr %i.ad, align 1, !tbaa !8
  %i.an = add i8 %i.am, 1                         ; 2 uses
  store i8 %i.an, ptr %i.ad, align 1, !tbaa !8
  %.not.i.2.not = icmp eq i8 %i.an, 0
  br i1 %.not.i.2.not, label %bb.g, label %ctr64_inc.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = load i8, ptr %i.ae, align 4, !tbaa !8
  %i.ap = add i8 %i.ao, 1                         ; 2 uses
  store i8 %i.ap, ptr %i.ae, align 4, !tbaa !8
  %.not.i.3.not = icmp eq i8 %i.ap, 0
  br i1 %.not.i.3.not, label %bb.h, label %ctr64_inc.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ar = add i8 %i.aq, 1                         ; 2 uses
  store i8 %i.ar, ptr %i.af, align 1, !tbaa !8
  %.not.i.4.not = icmp eq i8 %i.ar, 0
  br i1 %.not.i.4.not, label %bb.i, label %ctr64_inc.exit

bb.i:                                             ; preds = %bb.h
  %i.as = load i8, ptr %i.ag, align 2, !tbaa !8
  %i.at = add i8 %i.as, 1                         ; 2 uses
  store i8 %i.at, ptr %i.ag, align 2, !tbaa !8
  %.not.i.5.not = icmp eq i8 %i.at, 0
  br i1 %.not.i.5.not, label %bb.j, label %ctr64_inc.exit

bb.j:                                             ; preds = %bb.i
  %i.au = load i8, ptr %i.ah, align 1, !tbaa !8
  %i.av = add i8 %i.au, 1                         ; 2 uses
  store i8 %i.av, ptr %i.ah, align 1, !tbaa !8
  %.not.i.6.not = icmp eq i8 %i.av, 0
  br i1 %.not.i.6.not, label %bb.k, label %ctr64_inc.exit

bb.k:                                             ; preds = %bb.j
  %i.aw = load i8, ptr %i.x, align 8, !tbaa !8
  %i.ax = add i8 %i.aw, 1
  store i8 %i.ax, ptr %i.x, align 8, !tbaa !8
  br label %ctr64_inc.exit

ctr64_inc.exit:                                   ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ay = load i64, ptr %4, align 16, !tbaa !8
  %i.az = load i64, ptr %.07583, align 1, !tbaa !28
  %i.ba = xor i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %.07484, align 1, !tbaa !28
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !8
  %i.bc = xor i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %i.y, align 8, !tbaa !8
  %i.bd = load i64, ptr %i.z, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %.07583, i64 8
  %i.bf = load i64, ptr %i.be, align 1, !tbaa !28
  %i.bg = xor i64 %i.bf, %i.bd                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.07484, i64 8
  store i64 %i.bg, ptr %i.bh, align 1, !tbaa !28
  %i.bi = load i64, ptr %i.aa, align 8, !tbaa !8
  %i.bj = xor i64 %i.bi, %i.bg
  store i64 %i.bj, ptr %i.aa, align 8, !tbaa !8
  call void %i.c(ptr noundef nonnull %i.y, ptr noundef nonnull %i.y, ptr noundef %i.e) #6
  %i.bk = getelementptr inbounds nuw i8, ptr %.07583, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.07484, i64 16 ; 2 uses
  %i.bm = add i64 %.07385, -16                    ; 3 uses
  %i.bn = icmp ugt i64 %i.bm, 15
  br i1 %i.bn, label %bb.d, label %._crit_edge87, !llvm.loop !40

._crit_edge87:                                    ; preds = %ctr64_inc.exit, %.preheader
  %.075.lcssa = phi ptr [ %1, %.preheader ], [ %i.bk, %ctr64_inc.exit ] ; 5 uses
  %.074.lcssa = phi ptr [ %2, %.preheader ], [ %i.bl, %ctr64_inc.exit ] ; 6 uses
  %.073.lcssa = phi i64 [ %3, %.preheader ], [ %i.bm, %ctr64_inc.exit ] ; 10 uses
  %.not80 = icmp eq i64 %.073.lcssa, 0
  br i1 %.not80, label %._crit_edge95, label %iter.check

iter.check:                                       ; preds = %._crit_edge87
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.e) #6
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %min.iters.check = icmp samesign ult i64 %.073.lcssa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.bp = add nsw i64 %.073.lcssa, -1             ; 2 uses
  %i.bq = and i64 %i.bp, 4294967295
  %i.br = icmp eq i64 %i.bq, 4294967295
  %i.bs = icmp ugt i64 %i.bp, 4294967295
  %i.bt = or i1 %i.br, %i.bs
  br i1 %i.bt, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep115 = getelementptr i8, ptr %.074.lcssa, i64 %.073.lcssa ; 3 uses
  %i.bu = getelementptr i8, ptr %0, i64 %.073.lcssa
  %scevgep116 = getelementptr i8, ptr %i.bu, i64 16 ; 3 uses
  %scevgep117 = getelementptr i8, ptr %4, i64 %.073.lcssa ; 2 uses
  %scevgep118 = getelementptr i8, ptr %.075.lcssa, i64 %.073.lcssa ; 2 uses
  %bound0 = icmp ult ptr %.074.lcssa, %scevgep116
  %bound1 = icmp ult ptr %i.bo, %scevgep115
  %found.conflict = and i1 %bound0, %bound1
  %bound0119 = icmp ult ptr %.074.lcssa, %scevgep117
  %bound1120 = icmp ult ptr %4, %scevgep115
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx = or i1 %found.conflict, %found.conflict121
  %bound0122.a = icmp ult ptr %.074.lcssa, %scevgep118
  %bound1123.a = icmp ult ptr %.075.lcssa, %scevgep115
  %found.conflict124.a = and i1 %bound0122.a, %bound1123.a
  %conflict.rdx125.a = or i1 %conflict.rdx, %found.conflict124.a
  %bound0126.a = icmp ult ptr %i.bo, %scevgep117
  %bound1127.a = icmp ult ptr %4, %scevgep116
  %found.conflict128.a = and i1 %bound0126.a, %bound1127.a
  %conflict.rdx129.a = or i1 %conflict.rdx125.a, %found.conflict128.a
  %bound0130 = icmp ult ptr %i.bo, %scevgep118
  %bound1131 = icmp ult ptr %.075.lcssa, %scevgep116
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %conflict.rdx129.a, %found.conflict132
  br i1 %conflict.rdx133, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec140 = and i64 %.073.lcssa, 12             ; 4 uses
  %5 = trunc nuw nsw i64 %n.vec140 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index141 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next145, %vec.epilog.vector.body ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 %index141
  %wide.load142 = load <4 x i8>, ptr %i.bv, align 4, !tbaa !8, !alias.scope !41
  %i.bw = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 %index141
  %wide.load143 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !8, !alias.scope !44
  %i.bx = xor <4 x i8> %wide.load143, %wide.load142 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 %index141
  store <4 x i8> %i.bx, ptr %i.by, align 1, !tbaa !8, !alias.scope !46, !noalias !48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 %index141 ; 2 uses
  %wide.load144 = load <4 x i8>, ptr %i.bz, align 1, !tbaa !8, !alias.scope !50, !noalias !51
  %i.ca = xor <4 x i8> %wide.load144, %i.bx
  store <4 x i8> %i.ca, ptr %i.bz, align 1, !tbaa !8, !alias.scope !50, !noalias !51
  %index.next145 = add nuw i64 %index141, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next145, %n.vec140
  br i1 %i.cb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n146 = icmp eq i64 %.073.lcssa, %n.vec140
  br i1 %cmp.n146, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %indvars.iv101.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec140, %vec.epilog.middle.block ]
  %.191.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %5, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv101 = phi i64 [ %7, %vec.epilog.scalar.ph ], [ %indvars.iv101.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %.191 = phi i32 [ %6, %vec.epilog.scalar.ph ], [ %.191.ph, %vec.epilog.scalar.ph.preheader ]
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv101
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 %indvars.iv101
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !8
  %i.cg = xor i8 %i.cf, %i.cd                     ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 %indvars.iv101
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv101 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !8
  %i.ck = xor i8 %i.cj, %i.cg
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !8
  %6 = add i32 %.191, 1                           ; 2 uses
  %7 = zext i32 %6 to i64                         ; 2 uses
  %i.cl = icmp samesign ugt i64 %.073.lcssa, %7
  br i1 %i.cl, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !53

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block
  call void %i.c(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bo, ptr noundef %i.e) #6
  br label %._crit_edge95

._crit_edge95:                                    ; preds = %.loopexit, %._crit_edge87
  %i.cm = zext nneg i32 %i.k to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.cm
  %i.cn = sub nuw nsw i32 16, %i.k
  %i.co = zext nneg i32 %i.cn to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.co, i1 false), !tbaa !8
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.e) #6
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cq = load <2 x i64>, ptr %4, align 16, !tbaa !8
  %i.cr = load <2 x i64>, ptr %i.cp, align 8, !tbaa !8
  %i.cs = xor <2 x i64> %i.cr, %i.cq
  store <2 x i64> %i.cs, ptr %i.cp, align 8, !tbaa !8
  store i8 %i.a, ptr %0, align 8, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %._crit_edge95
  %.076 = phi i32 [ 0, %._crit_edge95 ], [ -1, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 %.076
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @CRYPTO_ccm128_encrypt_ccm64(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %union.anon.2, align 16             ; 8 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !8       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.f = zext i8 %i.a to i32                      ; 2 uses
  %i.g = and i32 %i.f, 64
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef %i.e) #6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = and i32 %i.f, 7                          ; 3 uses
  %i.m = trunc nuw nsw i32 %i.l to i8
  store i8 %i.m, ptr %0, align 8, !tbaa !8
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
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %i.s = zext i8 %i.r to i64
  %i.t = or disjoint i64 %.081100, %i.s
  store i8 0, ptr %i.q, align 1, !tbaa !8
  %i.u = shl i64 %i.t, 8                          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.081.lcssa = phi i64 [ 0, %bb.c ], [ %i.u, %.lr.ph ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = zext i8 %i.w to i64
  %i.y = or disjoint i64 %.081.lcssa, %i.x
  store i8 1, ptr %i.v, align 1, !tbaa !8
  %.not92 = icmp eq i64 %i.y, %3
  br i1 %.not92, label %bb.d, label %bb.h

bb.d:                                             ; preds = %._crit_edge
  %i.z = add i64 %3, 15
  %i.aa = lshr i64 %i.z, 3
  %i.ab = or i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !9
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !9
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
  br i1 %.not94, label %._crit_edge106, label %.thread122

.thread122:                                       ; preds = %bb.f
  %i.aj = and i64 %3, -16                         ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  tail call fastcc void @ctr64_add(ptr noundef nonnull %0, i64 noundef %i.ag)
  br label %iter.check

bb.g:                                             ; preds = %bb.e
  %.not95 = icmp eq i64 %3, 0
  br i1 %.not95, label %._crit_edge106, label %iter.check

iter.check:                                       ; preds = %.thread122, %bb.g
  %.083129 = phi i64 [ %i.ai, %.thread122 ], [ %3, %bb.g ] ; 14 uses
  %.084128 = phi ptr [ %i.ak, %.thread122 ], [ %2, %bb.g ] ; 4 uses
  %.085127 = phi ptr [ %i.al, %.thread122 ], [ %1, %bb.g ] ; 9 uses
  %.084128145 = ptrtoaddr ptr %.084128 to i64
  %.085127146 = ptrtoaddr ptr %.085127 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %min.iters.check = icmp ult i64 %.083129, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.an = add nsw i64 %.083129, -1                ; 2 uses
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = icmp eq i64 %i.ao, 4294967295
  %i.aq = icmp ugt i64 %i.an, 4294967295
  %i.ar = or i1 %i.ap, %i.aq
  br i1 %i.ar, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.as = getelementptr i8, ptr %0, i64 %.083129
  %scevgep130 = getelementptr i8, ptr %i.as, i64 16
  %scevgep131 = getelementptr i8, ptr %.085127, i64 %.083129
  %bound0 = icmp ult ptr %i.am, %scevgep131
  %bound1 = icmp ult ptr %.085127, %scevgep130
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check132 = icmp ult i64 %.083129, 32
  br i1 %min.iters.check132, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.085127, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !tbaa !8, !alias.scope !55
  %wide.load133 = load <16 x i8>, ptr %i.au, align 1, !tbaa !8, !alias.scope !55
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load134 = load <16 x i8>, ptr %i.av, align 1, !tbaa !8, !alias.scope !58, !noalias !55
  %wide.load135 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !8, !alias.scope !58, !noalias !55
  %i.ax = xor <16 x i8> %wide.load134, %wide.load
  %i.ay = xor <16 x i8> %wide.load135, %wide.load133
  store <16 x i8> %i.ax, ptr %i.av, align 1, !tbaa !8, !alias.scope !58, !noalias !55
  store <16 x i8> %i.ay, ptr %i.aw, align 1, !tbaa !8, !alias.scope !58, !noalias !55
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec136 = and i64 %.083129, 12                ; 4 uses
  %6 = trunc nuw nsw i64 %n.vec136 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index137 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.085127, i64 %index137
  %wide.load138 = load <4 x i8>, ptr %i.az, align 1, !tbaa !8, !alias.scope !55
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 %index137 ; 2 uses
  %wide.load139 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !8, !alias.scope !58, !noalias !55
  %i.bb = xor <4 x i8> %wide.load139, %wide.load138
  store <4 x i8> %i.bb, ptr %i.ba, align 1, !tbaa !8, !alias.scope !58, !noalias !55
  %index.next140 = add nuw i64 %index137, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next140, %n.vec136
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !61

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n141 = icmp eq i64 %.083129, %n.vec136
  br i1 %cmp.n141, label %iter.check163, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %indvars.iv109.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec136, %vec.epilog.middle.block ]
  %.1102.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %6, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv109 = phi i64 [ %8, %vec.epilog.scalar.ph ], [ %indvars.iv109.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1102 = phi i32 [ %7, %vec.epilog.scalar.ph ], [ %.1102.ph, %vec.epilog.scalar.ph.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.085127, i64 %indvars.iv109
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv109 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bh = xor i8 %i.bg, %i.be
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !8
  %7 = add i32 %.1102, 1                          ; 2 uses
  %8 = zext i32 %7 to i64                         ; 2 uses
  %i.bi = icmp ugt i64 %.083129, %8
  br i1 %i.bi, label %vec.epilog.scalar.ph, label %iter.check163, !llvm.loop !62

iter.check163:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block
  tail call void %i.c(ptr noundef nonnull %i.am, ptr noundef nonnull %i.am, ptr noundef %i.e) #6
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %i.e) #6
  %min.iters.check148 = icmp ult i64 %.083129, 4
  br i1 %min.iters.check148, label %vec.epilog.scalar.ph164.preheader, label %vector.scevcheck142

vector.scevcheck142:                              ; preds = %iter.check163
  %i.bj = add nsw i64 %.083129, -1                ; 2 uses
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = icmp eq i64 %i.bk, 4294967295
  %i.bm = icmp ugt i64 %i.bj, 4294967295
  %i.bn = or i1 %i.bl, %i.bm
  %i.bo = sub i64 %.085127146, %.084128145
  %diff.check = icmp ugt i64 %i.bo, -32
  %or.cond = select i1 %i.bn, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph164.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %vector.scevcheck142
  %min.iters.check150 = icmp ult i64 %.083129, 32
  br i1 %min.iters.check150, label %vec.epilog.ph167, label %vector.body153

vector.body153:                                   ; preds = %vector.main.loop.iter.check149, %vector.body153
  %index154 = phi i64 [ %index.next159, %vector.body153 ], [ 0, %vector.main.loop.iter.check149 ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 %index154 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load155 = load <16 x i8>, ptr %i.bp, align 16, !tbaa !8
  %wide.load156 = load <16 x i8>, ptr %i.bq, align 16, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %.085127, i64 %index154 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load157 = load <16 x i8>, ptr %i.br, align 1, !tbaa !8
  %wide.load158 = load <16 x i8>, ptr %i.bs, align 1, !tbaa !8
  %i.bt = xor <16 x i8> %wide.load157, %wide.load155
  %i.bu = xor <16 x i8> %wide.load158, %wide.load156
  %i.bv = getelementptr inbounds nuw i8, ptr %.084128, i64 %index154 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <16 x i8> %i.bt, ptr %i.bv, align 1, !tbaa !8
  store <16 x i8> %i.bu, ptr %i.bw, align 1, !tbaa !8
  %index.next159 = add nuw i64 %index154, 32
  br label %vector.body153, !llvm.loop !63

vec.epilog.ph167:                                 ; preds = %vector.main.loop.iter.check149
  %n.vec168 = and i64 %.083129, 12                ; 4 uses
  %9 = trunc nuw nsw i64 %n.vec168 to i32
  br label %vec.epilog.vector.body169

vec.epilog.vector.body169:                        ; preds = %vec.epilog.vector.body169, %vec.epilog.ph167
  %index170 = phi i64 [ 0, %vec.epilog.ph167 ], [ %index.next173, %vec.epilog.vector.body169 ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 %index170
  %wide.load171 = load <4 x i8>, ptr %i.bx, align 4, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %.085127, i64 %index170
  %wide.load172 = load <4 x i8>, ptr %i.by, align 1, !tbaa !8
  %i.bz = xor <4 x i8> %wide.load172, %wide.load171
  %i.ca = getelementptr inbounds nuw i8, ptr %.084128, i64 %index170
  store <4 x i8> %i.bz, ptr %i.ca, align 1, !tbaa !8
  %index.next173 = add nuw i64 %index170, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next173, %n.vec168
  br i1 %i.cb, label %vec.epilog.middle.block174, label %vec.epilog.vector.body169, !llvm.loop !64

vec.epilog.middle.block174:                       ; preds = %vec.epilog.vector.body169
  %cmp.n175 = icmp eq i64 %.083129, %n.vec168
  br i1 %cmp.n175, label %._crit_edge106, label %vec.epilog.scalar.ph164.preheader

vec.epilog.scalar.ph164.preheader:                ; preds = %vector.scevcheck142, %iter.check163, %vec.epilog.middle.block174
  %indvars.iv112.ph = phi i64 [ 0, %vector.scevcheck142 ], [ 0, %iter.check163 ], [ %n.vec168, %vec.epilog.middle.block174 ]
  %.2103.ph = phi i32 [ 0, %vector.scevcheck142 ], [ 0, %iter.check163 ], [ %9, %vec.epilog.middle.block174 ]
  br label %vec.epilog.scalar.ph164

vec.epilog.scalar.ph164:                          ; preds = %vec.epilog.scalar.ph164.preheader, %vec.epilog.scalar.ph164
  %indvars.iv112 = phi i64 [ %11, %vec.epilog.scalar.ph164 ], [ %indvars.iv112.ph, %vec.epilog.scalar.ph164.preheader ] ; 3 uses
  %.2103 = phi i32 [ %10, %vec.epilog.scalar.ph164 ], [ %.2103.ph, %vec.epilog.scalar.ph164.preheader ]
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv112
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %.085127, i64 %indvars.iv112
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !8
  %i.cg = xor i8 %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %.084128, i64 %indvars.iv112
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !8
  %10 = add i32 %.2103, 1                         ; 2 uses
  %11 = zext i32 %10 to i64                       ; 2 uses
  %i.ci = icmp samesign ugt i64 %.083129, %11
  br i1 %i.ci, label %vec.epilog.scalar.ph164, label %._crit_edge106, !llvm.loop !65

._crit_edge106:                                   ; preds = %vec.epilog.scalar.ph164, %vec.epilog.middle.block174, %bb.f, %bb.g
  %i.cj = zext nneg i32 %i.n to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.cj
  %i.ck = sub nuw nsw i32 16, %i.n
  %i.cl = zext nneg i32 %i.ck to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.cl, i1 false), !tbaa !8
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %i.e) #6
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cn = load <2 x i64>, ptr %5, align 16, !tbaa !8
  %i.co = load <2 x i64>, ptr %i.cm, align 8, !tbaa !8
  %i.cp = xor <2 x i64> %i.co, %i.cn
  store <2 x i64> %i.cp, ptr %i.cm, align 8, !tbaa !8
  store i8 %i.a, ptr %0, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %._crit_edge, %._crit_edge106
  %.082 = phi i32 [ 0, %._crit_edge106 ], [ -1, %._crit_edge ], [ -2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i32 %.082
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ctr64_add(ptr nofree noundef captures(none) %0, i64 noundef range(i64 1, 1152921504606846976) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8
  %i.d = zext i8 %i.c to i64
  %i.e = and i64 %1, 255
  %i.f = add nuw nsw i64 %i.e, %i.d               ; 2 uses
  %i.g = trunc i64 %i.f to i8
  store i8 %i.g, ptr %i.b, align 1, !tbaa !8
  %i.h = lshr i64 %1, 8                           ; 2 uses
  %i.i = lshr i64 %i.f, 8                         ; 2 uses
  %i.j = icmp ne i64 %i.h, 0
  %i.k = icmp ne i64 %i.i, 0
  %i.l = select i1 %i.j, i1 true, i1 %i.k
  br i1 %i.l, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = zext i8 %i.n to i64
  %i.p = and i64 %i.h, 255
  %i.q = add nuw nsw i64 %i.i, %i.p
  %i.r = add nuw nsw i64 %i.q, %i.o               ; 2 uses
  %i.s = trunc i64 %i.r to i8
  store i8 %i.s, ptr %i.m, align 1, !tbaa !8
  %i.t = lshr i64 %1, 16                          ; 2 uses
  %i.u = lshr i64 %i.r, 8                         ; 2 uses
  %i.v = icmp ne i64 %i.t, 0
  %i.w = icmp ne i64 %i.u, 0
  %i.x = select i1 %i.v, i1 true, i1 %i.w
  br i1 %i.x, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.t, 255
  %i.ac = add nuw nsw i64 %i.u, %i.ab
  %i.ad = add nuw nsw i64 %i.ac, %i.aa            ; 2 uses
  %i.ae = trunc i64 %i.ad to i8
  store i8 %i.ae, ptr %i.y, align 1, !tbaa !8
  %i.af = lshr i64 %1, 24                         ; 2 uses
  %i.ag = lshr i64 %i.ad, 8                       ; 2 uses
  %i.ah = icmp ne i64 %i.af, 0
  %i.ai = icmp ne i64 %i.ag, 0
  %i.aj = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %i.aj, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = zext i8 %i.al to i64
  %i.an = and i64 %i.af, 255
  %i.ao = add nuw nsw i64 %i.ag, %i.an
  %i.ap = add nuw nsw i64 %i.ao, %i.am            ; 2 uses
  %i.aq = trunc i64 %i.ap to i8
  store i8 %i.aq, ptr %i.ak, align 1, !tbaa !8
  %i.ar = lshr i64 %1, 32                         ; 2 uses
  %i.as = lshr i64 %i.ap, 8                       ; 2 uses
  %i.at = icmp ne i64 %i.ar, 0
  %i.au = icmp ne i64 %i.as, 0
  %i.av = select i1 %i.at, i1 true, i1 %i.au
  br i1 %i.av, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8
  %i.ay = zext i8 %i.ax to i64
  %i.az = and i64 %i.ar, 255
  %i.ba = add nuw nsw i64 %i.as, %i.az
  %i.bb = add nuw nsw i64 %i.ba, %i.ay            ; 2 uses
  %i.bc = trunc i64 %i.bb to i8
  store i8 %i.bc, ptr %i.aw, align 1, !tbaa !8
  %i.bd = lshr i64 %1, 40                         ; 2 uses
  %i.be = lshr i64 %i.bb, 8                       ; 2 uses
  %i.bf = icmp ne i64 %i.bd, 0
  %i.bg = icmp ne i64 %i.be, 0
  %i.bh = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %i.bh, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = zext i8 %i.bj to i64
  %i.bl = and i64 %i.bd, 255
  %i.bm = add nuw nsw i64 %i.be, %i.bl
  %i.bn = add nuw nsw i64 %i.bm, %i.bk            ; 2 uses
  %i.bo = trunc i64 %i.bn to i8
  store i8 %i.bo, ptr %i.bi, align 1, !tbaa !8
  %i.bp = lshr i64 %1, 48                         ; 2 uses
  %i.bq = lshr i64 %i.bn, 8                       ; 2 uses
  %i.br = icmp ne i64 %i.bp, 0
  %i.bs = icmp ne i64 %i.bq, 0
  %i.bt = select i1 %i.br, i1 true, i1 %i.bs
  br i1 %i.bt, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = zext i8 %i.bv to i64
  %i.bx = and i64 %i.bp, 255
  %i.by = add nuw nsw i64 %i.bq, %i.bx
  %i.bz = add nuw nsw i64 %i.by, %i.bw            ; 2 uses
  %i.ca = trunc i64 %i.bz to i8
  store i8 %i.ca, ptr %i.bu, align 1, !tbaa !8
  %i.cb = lshr i64 %1, 56                         ; 2 uses
  %i.cc = lshr i64 %i.bz, 8                       ; 2 uses
  %i.cd = icmp ne i64 %i.cb, 0
  %i.ce = icmp ne i64 %i.cc, 0
  %i.cf = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %i.cf, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.cg = load i8, ptr %i.a, align 1, !tbaa !8
  %i.ch = add nuw nsw i64 %i.cc, %i.cb
  %i.ci = trunc nuw nsw i64 %i.ch to i8
  %i.cj = add i8 %i.cg, %i.ci
  store i8 %i.cj, ptr %i.a, align 1, !tbaa !8
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @CRYPTO_ccm128_decrypt_ccm64(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %union.anon.3, align 16             ; 8 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !8       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
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
  store i8 %i.j, ptr %0, align 8, !tbaa !8
  %i.k = xor i32 %i.i, 15                         ; 4 uses
  %.not104 = icmp eq i32 %i.i, 0
  br i1 %.not104, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.l = zext nneg i32 %i.k to i64
  %umax = tail call i32 @llvm.umax.i32(i32 %i.k, i32 14)
  %i.m = add nuw nsw i32 %umax, 1
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.l, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.07298 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.r, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = zext i8 %i.o to i64
  %i.q = or disjoint i64 %.07298, %i.p
  store i8 0, ptr %i.n, align 1, !tbaa !8
  %i.r = shl i64 %i.q, 8                          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.072.lcssa = phi i64 [ 0, %bb.c ], [ %i.r, %.lr.ph ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8
  %i.u = zext i8 %i.t to i64
  %i.v = or disjoint i64 %.072.lcssa, %i.u
  store i8 1, ptr %i.s, align 1, !tbaa !8
  %.not82 = icmp eq i64 %i.v, %3
  br i1 %.not82, label %bb.d, label %bb.g

bb.d:                                             ; preds = %._crit_edge
  %i.w = lshr i64 %3, 4                           ; 3 uses
  %.not83 = icmp eq i64 %i.w, 0
  br i1 %.not83, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %4(ptr noundef %1, ptr noundef %2, i64 noundef %i.w, ptr noundef %i.e, ptr noundef nonnull %0, ptr noundef nonnull %i.x) #6
  %i.y = and i64 %3, 15                           ; 2 uses
  %.not84 = icmp eq i64 %i.y, 0
  br i1 %.not84, label %._crit_edge103, label %.thread90

.thread90:                                        ; preds = %bb.e
  %i.z = and i64 %3, -16                          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  tail call fastcc void @ctr64_add(ptr noundef nonnull %0, i64 noundef %i.w)
  br label %iter.check

bb.f:                                             ; preds = %bb.d
  %.not85 = icmp eq i64 %3, 0
  br i1 %.not85, label %._crit_edge103, label %iter.check

iter.check:                                       ; preds = %.thread90, %bb.f
  %.07497 = phi i64 [ %i.y, %.thread90 ], [ %3, %bb.f ] ; 9 uses
  %.07596 = phi ptr [ %i.aa, %.thread90 ], [ %2, %bb.f ] ; 6 uses
  %.07695 = phi ptr [ %i.ab, %.thread90 ], [ %1, %bb.f ] ; 6 uses
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %i.e) #6
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %min.iters.check = icmp ult i64 %.07497, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ad = add nsw i64 %.07497, -1                 ; 2 uses
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = icmp eq i64 %i.ae, 4294967295
  %i.ag = icmp ugt i64 %i.ad, 4294967295
  %i.ah = or i1 %i.af, %i.ag
  br i1 %i.ah, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep115 = getelementptr i8, ptr %.07596, i64 %.07497 ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 %.07497
  %scevgep116 = getelementptr i8, ptr %i.ai, i64 16 ; 2 uses
  %scevgep117 = getelementptr i8, ptr %.07695, i64 %.07497 ; 2 uses
  %bound0 = icmp ult ptr %.07596, %scevgep116
  %bound1 = icmp ult ptr %i.ac, %scevgep115
  %found.conflict = and i1 %bound0, %bound1
  %bound0118 = icmp ult ptr %.07596, %scevgep117
  %bound1119 = icmp ult ptr %.07695, %scevgep115
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx = or i1 %found.conflict, %found.conflict120
  %bound0121 = icmp ult ptr %i.ac, %scevgep117
  %bound1122 = icmp ult ptr %.07695, %scevgep116
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx124 = or i1 %conflict.rdx, %found.conflict123
  br i1 %conflict.rdx124, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check125 = icmp ult i64 %.07497, 32
  br i1 %min.iters.check125, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 16, !tbaa !8
  %wide.load126.a = load <16 x i8>, ptr %i.ak, align 16, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %.07695, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load127 = load <16 x i8>, ptr %i.al, align 1, !tbaa !8, !alias.scope !67
  %wide.load128 = load <16 x i8>, ptr %i.am, align 1, !tbaa !8, !alias.scope !67
  %i.an = xor <16 x i8> %wide.load127, %wide.load ; 2 uses
  %i.ao = xor <16 x i8> %wide.load128, %wide.load126.a ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.07596, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !8, !alias.scope !70, !noalias !72
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !8, !alias.scope !70, !noalias !72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 %index ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %wide.load129.a = load <16 x i8>, ptr %i.ar, align 1, !tbaa !8, !alias.scope !74, !noalias !67
  %wide.load130.a = load <16 x i8>, ptr %i.as, align 1, !tbaa !8, !alias.scope !74, !noalias !67
  %i.at = xor <16 x i8> %wide.load129.a, %i.an
  %i.au = xor <16 x i8> %wide.load130.a, %i.ao
  store <16 x i8> %i.at, ptr %i.ar, align 1, !tbaa !8, !alias.scope !74, !noalias !67
  store <16 x i8> %i.au, ptr %i.as, align 1, !tbaa !8, !alias.scope !74, !noalias !67
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec131 = and i64 %.07497, 12                 ; 4 uses
  %6 = trunc nuw nsw i64 %n.vec131 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index132 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next136, %vec.epilog.vector.body ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 %index132
  %wide.load133 = load <4 x i8>, ptr %i.av, align 4, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %.07695, i64 %index132
  %wide.load134 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !8, !alias.scope !67
  %i.ax = xor <4 x i8> %wide.load134, %wide.load133 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.07596, i64 %index132
  store <4 x i8> %i.ax, ptr %i.ay, align 1, !tbaa !8, !alias.scope !70, !noalias !72
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 %index132 ; 2 uses
  %wide.load135 = load <4 x i8>, ptr %i.az, align 1, !tbaa !8, !alias.scope !74, !noalias !67
  %i.ba = xor <4 x i8> %wide.load135, %i.ax
  store <4 x i8> %i.ba, ptr %i.az, align 1, !tbaa !8, !alias.scope !74, !noalias !67
  %index.next136 = add nuw i64 %index132, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next136, %n.vec131
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n137 = icmp eq i64 %.07497, %n.vec131
  br i1 %cmp.n137, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %indvars.iv106.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec131, %vec.epilog.middle.block ]
  %.1100.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %6, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv106 = phi i64 [ %8, %vec.epilog.scalar.ph ], [ %indvars.iv106.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %.1100 = phi i32 [ %7, %vec.epilog.scalar.ph ], [ %.1100.ph, %vec.epilog.scalar.ph.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv106
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %.07695, i64 %indvars.iv106
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bg = xor i8 %i.bf, %i.bd                     ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.07596, i64 %indvars.iv106
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv106 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = xor i8 %i.bj, %i.bg
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !8
  %7 = add i32 %.1100, 1                          ; 2 uses
  %8 = zext i32 %7 to i64                         ; 2 uses
  %i.bl = icmp ugt i64 %.07497, %8
  br i1 %i.bl, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !77

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block
  call void %i.c(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ac, ptr noundef %i.e) #6
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %bb.e, %.loopexit, %bb.f
  %i.bm = zext nneg i32 %i.k to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.bm
  %i.bn = sub nuw nsw i32 16, %i.k
  %i.bo = zext nneg i32 %i.bn to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.bo, i1 false), !tbaa !8
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %i.e) #6
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bq = load <2 x i64>, ptr %5, align 16, !tbaa !8
  %i.br = load <2 x i64>, ptr %i.bp, align 8, !tbaa !8
  %i.bs = xor <2 x i64> %i.br, %i.bq
  store <2 x i64> %i.bs, ptr %i.bp, align 8, !tbaa !8
  store i8 %i.a, ptr %0, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %._crit_edge103
  %.073 = phi i32 [ 0, %._crit_edge103 ], [ -1, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i32 %.073
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 0, 17) i64 @CRYPTO_ccm128_tag(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !8
  %i.b = lshr i8 %i.a, 2
  %i.c = and i8 %i.b, 14
  %narrow = add nuw nsw i8 %i.c, 2
  %i.d = zext nneg i8 %narrow to i64
  %.not = icmp eq i64 %2, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %2, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %2, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !11, i64 32}
!10 = !{!"ccm128_context", !6, i64 0, !6, i64 16, !11, i64 32, !12, i64 40, !12, i64 48}
!11 = !{!"long long", !6, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!10, !12, i64 40}
!14 = !{!10, !12, i64 48}
!15 = !{!16}
!16 = distinct !{!16, !17}
!17 = distinct !{!17, !"LVerDomain"}
!18 = !{!19}
!19 = distinct !{!19, !17}
!20 = !{!"branch_weights", i32 4, i32 12}
!21 = distinct !{!21, !22, !23, !24}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !22, !23}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = !{!11, !11, i64 0}
!29 = distinct !{!29, !22}
!30 = !{!31}
!31 = distinct !{!31, !32}
!32 = distinct !{!32, !"LVerDomain"}
!33 = !{!34}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !22, !23, !24}
!36 = distinct !{!36, !22, !23}
!37 = distinct !{!37, !22, !23, !24}
!38 = distinct !{!38, !22, !23}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!45}
!45 = distinct !{!45, !43}
!46 = !{!47}
!47 = distinct !{!47, !43}
!48 = !{!49, !42, !45}
!49 = distinct !{!49, !43}
!50 = !{!49}
!51 = !{!42, !45}
!52 = distinct !{!52, !22, !23, !24}
!53 = distinct !{!53, !22, !23}
!54 = distinct !{!54, !22}
!55 = !{!56}
!56 = distinct !{!56, !57}
!57 = distinct !{!57, !"LVerDomain"}
!58 = !{!59}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !22, !23, !24}
!61 = distinct !{!61, !22, !23, !24}
!62 = distinct !{!62, !22, !23}
!63 = distinct !{!63, !22, !23, !24}
!64 = distinct !{!64, !22, !23, !24}
!65 = distinct !{!65, !22, !23}
!66 = distinct !{!66, !22}
!67 = !{!68}
!68 = distinct !{!68, !69}
!69 = distinct !{!69, !"LVerDomain"}
!70 = !{!71}
!71 = distinct !{!71, !69}
!72 = !{!73, !68}
!73 = distinct !{!73, !69}
!74 = !{!73}
!75 = distinct !{!75, !22, !23, !24}
!76 = distinct !{!76, !22, !23, !24}
!77 = distinct !{!77, !22, !23}
end_hunk_0
