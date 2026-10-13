Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ccm128?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@CRYPTO_ccm128_aad:bb.a
  %i.co = icmp ne i64 %i.cm, 0                    ; 2 uses
  %i.cp = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %i.cp, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %vector.ph
  %.lcssa78 = phi ptr [ %i.by, %vec.epilog.middle.block ], [ %i.bq, %vector.ph ], [ %i.cl, %.lr.ph ]
  %.lcssa77 = phi i64 [ %i.bx, %vec.epilog.middle.block ], [ %i.bp, %vector.ph ], [ %i.cm, %.lr.ph ]
  %.lcssa = phi i1 [ %i.cg, %vec.epilog.middle.block ], [ %i.bt, %vector.ph ], [ %i.co, %.lr.ph ]
  %i.cq = load ptr, ptr %i.g, align 8, !tbaa !14
  tail call void %i.b(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noundef %i.cq) #6
  %i.cr = load i64, ptr %i.i, align 8, !tbaa !12
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr %i.i, align 8, !tbaa !12
  br i1 %.lcssa, label %iter.check, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @CRYPTO_ccm128_encrypt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %union.anon.0, align 16             ; 15 uses
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = load i8, ptr %0, align 8, !tbaa !8       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
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
  %i.k = load i64, ptr %i.j, align 8, !tbaa !12
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !12
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

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
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !12
  %i.af = add i64 %i.ae, %i.ac                    ; 2 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !12
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
  %i.at = load i64, ptr %.08696, align 1, !tbaa !18
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !8
  %i.av = xor i64 %i.au, %i.at
  store i64 %i.av, ptr %i.ai, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %.08696, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 1, !tbaa !18
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
  %i.br = load i64, ptr %.08696, align 1, !tbaa !18
  %i.bs = xor i64 %i.br, %i.bq
  store i64 %i.bs, ptr %.08597, align 1, !tbaa !18
  %i.bt = load i64, ptr %i.al, align 8, !tbaa !8
  %i.bu = load i64, ptr %i.aw, align 1, !tbaa !18
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %.08597, i64 8
  store i64 %i.bv, ptr %i.bw, align 1, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.08696, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.08597, i64 16 ; 2 uses
  %i.bz = add i64 %.08498, -16                    ; 3 uses
  %i.ca = icmp ugt i64 %i.bz, 15
  br i1 %i.ca, label %bb.e, label %._crit_edge100, !llvm.loop !30

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
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  %i.ce = getelementptr i8, ptr %.086.lcssa, i64 %.084.lcssa
  %bound0 = icmp ult ptr %i.cb, %i.ce
  %bound1 = icmp ult ptr %.086.lcssa, %i.cd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec139 = and i64 %.084.lcssa, 12             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index140 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next143, %vec.epilog.vector.body ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %index140
  %wide.load141 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !8, !alias.scope !40
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index140 ; 2 uses
  %wide.load142 = load <4 x i8>, ptr %i.cg, align 1, !tbaa !8, !alias.scope !41, !noalias !40
  %i.ch = xor <4 x i8> %wide.load142, %wide.load141
  store <4 x i8> %i.ch, ptr %i.cg, align 1, !tbaa !8, !alias.scope !41, !noalias !40
  %index.next143 = add nuw i64 %index140, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next143, %n.vec139
  br i1 %i.ci, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n144 = icmp eq i64 %.084.lcssa, %n.vec139
  br i1 %cmp.n144, label %iter.check164, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %indvars.iv115.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec139, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.084.lcssa, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv115.prol = phi i64 [ %indvars.iv.next116.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv115.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv115.prol
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv115.prol ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !8
  %i.cn = xor i8 %i.cm, %i.ck
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !8
  %indvars.iv.next116.prol = add nuw i64 %indvars.iv115.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !35

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next116.prol, %vec.epilog.scalar.ph.prol ]
  %i.co = sub nsw i64 %indvars.iv115.ph, %.084.lcssa
  %i.cp = icmp ugt i64 %i.co, -4
  br i1 %i.cp, label %iter.check164, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.3, %vec.epilog.scalar.ph ], [ %indvars.iv115.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv115
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv115 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8
  %i.cu = xor i8 %i.ct, %i.cr
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !8
  %indvars.iv.next116 = add nuw i64 %indvars.iv115, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv.next116
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next116 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !8
  %i.cz = xor i8 %i.cy, %i.cw
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !8
  %indvars.iv.next116.1 = add nuw i64 %indvars.iv115, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv.next116.1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next116.1 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !8
  %i.de = xor i8 %i.dd, %i.db
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !8
  %indvars.iv.next116.2 = add nuw i64 %indvars.iv115, 3 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv.next116.2
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next116.2 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !8
  %i.dj = xor i8 %i.di, %i.dg
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !8
  %indvars.iv.next116.3 = add nuw i64 %indvars.iv115, 4 ; 2 uses
  %exitcond118.not.3 = icmp eq i64 %indvars.iv.next116.3, %.084.lcssa
  br i1 %exitcond118.not.3, label %iter.check164, label %vec.epilog.scalar.ph, !llvm.loop !36

iter.check164:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block
  call void %i.d(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cb, ptr noundef %i.f) #6
  call void %i.d(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.f) #6
  %min.iters.check149 = icmp samesign ult i64 %.084.lcssa, 4
  br i1 %min.iters.check149, label %vec.epilog.scalar.ph165.preheader, label %vector.memcheck145

vector.memcheck145:                               ; preds = %iter.check164
  %i.dk = sub i64 %i.a, %.085.lcssa146
  %diff.check = icmp ugt i64 %i.dk, -32
  %i.dl = sub i64 %.086.lcssa147, %.085.lcssa146
  %diff.check148 = icmp ugt i64 %i.dl, -32
  %conflict.rdx = or i1 %diff.check, %diff.check148
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph165.preheader, label %vec.epilog.ph168

vec.epilog.ph168:                                 ; preds = %vector.memcheck145
  %n.vec169 = and i64 %.084.lcssa, 12             ; 3 uses
  br label %vec.epilog.vector.body170

vec.epilog.vector.body170:                        ; preds = %vec.epilog.vector.body170, %vec.epilog.ph168
  %index171 = phi i64 [ 0, %vec.epilog.ph168 ], [ %index.next174, %vec.epilog.vector.body170 ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 %index171
  %wide.load172 = load <4 x i8>, ptr %i.dm, align 4, !tbaa !8
  %i.dn = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %index171
  %wide.load173 = load <4 x i8>, ptr %i.dn, align 1, !tbaa !8
  %i.do = xor <4 x i8> %wide.load173, %wide.load172
  %i.dp = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 %index171
  store <4 x i8> %i.do, ptr %i.dp, align 1, !tbaa !8
  %index.next174 = add nuw i64 %index171, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next174, %n.vec169
  br i1 %i.dq, label %vec.epilog.middle.block175, label %vec.epilog.vector.body170, !llvm.loop !37

vec.epilog.middle.block175:                       ; preds = %vec.epilog.vector.body170
  %cmp.n176 = icmp eq i64 %.084.lcssa, %n.vec169
  br i1 %cmp.n176, label %._crit_edge109, label %vec.epilog.scalar.ph165.preheader

vec.epilog.scalar.ph165.preheader:                ; preds = %iter.check164, %vector.memcheck145, %vec.epilog.middle.block175
  %indvars.iv119.ph = phi i64 [ 0, %vector.memcheck145 ], [ 0, %iter.check164 ], [ %n.vec169, %vec.epilog.middle.block175 ] ; 3 uses
  %xtraiter181 = and i64 %.084.lcssa, 3           ; 2 uses
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %vec.epilog.scalar.ph165.prol.loopexit, label %vec.epilog.scalar.ph165.prol

vec.epilog.scalar.ph165.prol:                     ; preds = %vec.epilog.scalar.ph165.preheader, %vec.epilog.scalar.ph165.prol
  %indvars.iv119.prol = phi i64 [ %indvars.iv.next120.prol, %vec.epilog.scalar.ph165.prol ], [ %indvars.iv119.ph, %vec.epilog.scalar.ph165.preheader ] ; 4 uses
  %prol.iter183 = phi i64 [ %prol.iter183.next, %vec.epilog.scalar.ph165.prol ], [ 0, %vec.epilog.scalar.ph165.preheader ]
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv119.prol
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv119.prol
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !8
  %i.dv = xor i8 %i.du, %i.ds
  %i.dw = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 %indvars.iv119.prol
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !8
  %indvars.iv.next120.prol = add nuw i64 %indvars.iv119.prol, 1 ; 2 uses
  %prol.iter183.next = add i64 %prol.iter183, 1   ; 2 uses
  %prol.iter183.cmp.not = icmp eq i64 %prol.iter183.next, %xtraiter181
  br i1 %prol.iter183.cmp.not, label %vec.epilog.scalar.ph165.prol.loopexit, label %vec.epilog.scalar.ph165.prol, !llvm.loop !38

vec.epilog.scalar.ph165.prol.loopexit:            ; preds = %vec.epilog.scalar.ph165.prol, %vec.epilog.scalar.ph165.preheader
  %indvars.iv119.unr = phi i64 [ %indvars.iv119.ph, %vec.epilog.scalar.ph165.preheader ], [ %indvars.iv.next120.prol, %vec.epilog.scalar.ph165.prol ]
  %i.dx = sub nsw i64 %indvars.iv119.ph, %.084.lcssa
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %._crit_edge109, label %vec.epilog.scalar.ph165

vec.epilog.scalar.ph165:                          ; preds = %vec.epilog.scalar.ph165.prol.loopexit, %vec.epilog.scalar.ph165
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.3, %vec.epilog.scalar.ph165 ], [ %indvars.iv119.unr, %vec.epilog.scalar.ph165.prol.loopexit ] ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv119
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !8
  %i.eb = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv119
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !8
  %i.ed = xor i8 %i.ec, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 %indvars.iv119
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !8
  %indvars.iv.next120 = add nuw i64 %indvars.iv119, 1 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next120
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !8
  %i.eh = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv.next120
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !8
  %i.ej = xor i8 %i.ei, %i.eg
  %i.ek = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 %indvars.iv.next120
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !8
  %indvars.iv.next120.1 = add nuw i64 %indvars.iv119, 2 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next120.1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !8
  %i.en = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv.next120.1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !8
  %i.ep = xor i8 %i.eo, %i.em
  %i.eq = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 %indvars.iv.next120.1
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !8
  %indvars.iv.next120.2 = add nuw i64 %indvars.iv119, 3 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next120.2
  %i.es = load i8, ptr %i.er, align 1, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %.086.lcssa, i64 %indvars.iv.next120.2
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !8
  %i.ev = xor i8 %i.eu, %i.es
  %i.ew = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 %indvars.iv.next120.2
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !8
  %indvars.iv.next120.3 = add nuw i64 %indvars.iv119, 4 ; 2 uses
  %exitcond122.not.3 = icmp eq i64 %indvars.iv.next120.3, %.084.lcssa
  br i1 %exitcond122.not.3, label %._crit_edge109, label %vec.epilog.scalar.ph165, !llvm.loop !39

._crit_edge109:                                   ; preds = %vec.epilog.scalar.ph165.prol.loopexit, %vec.epilog.scalar.ph165, %vec.epilog.middle.block175, %._crit_edge100
  %i.ex = zext nneg i32 %i.o to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.ex
  %i.ey = sub nuw nsw i32 16, %i.o
  %i.ez = zext nneg i32 %i.ey to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.ez, i1 false), !tbaa !8
  call void %i.d(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.f) #6
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fb = load <2 x i64>, ptr %4, align 16, !tbaa !8
  %i.fc = load <2 x i64>, ptr %i.fa, align 8, !tbaa !8
  %i.fd = xor <2 x i64> %i.fc, %i.fb
  store <2 x i64> %i.fd, ptr %i.fa, align 8, !tbaa !8
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
  %4 = alloca %union.anon.1, align 16             ; 15 uses
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !42

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
end_hunk_0
begin_hunk_1_@CRYPTO_ccm128_decrypt:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 %index156
  %wide.load157 = load <4 x i8>, ptr %i.bu, align 4, !tbaa !8, !alias.scope !51
  %i.bv = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 %index156
  %wide.load158 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !8, !alias.scope !52
  %i.bw = xor <4 x i8> %wide.load158, %wide.load157 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 %index156
  store <4 x i8> %i.bw, ptr %i.bx, align 1, !tbaa !8, !alias.scope !53, !noalias !54
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 %index156 ; 2 uses
  %wide.load159 = load <4 x i8>, ptr %i.by, align 1, !tbaa !8, !alias.scope !55, !noalias !56
  %i.bz = xor <4 x i8> %wide.load159, %i.bw
  store <4 x i8> %i.bz, ptr %i.by, align 1, !tbaa !8, !alias.scope !55, !noalias !56
  %index.next160 = add nuw i64 %index156, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.ca, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n161 = icmp eq i64 %.073.lcssa, %n.vec155
  br i1 %cmp.n161, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %indvars.iv101.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec155, %vec.epilog.middle.block ] ; 7 uses
  %.neg = or disjoint i64 %indvars.iv101.ph, 1
  %xtraiter = and i64 %.073.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv101.ph
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 %indvars.iv101.ph
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !8
  %i.cf = xor i8 %i.ce, %i.cc                     ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 %indvars.iv101.ph
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv101.ph ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !8
  %i.cj = xor i8 %i.ci, %i.cf
  store i8 %i.cj, ptr %i.ch, align 1, !tbaa !8
  %indvars.iv.next102.prol = or disjoint i64 %indvars.iv101.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv101.unr = phi i64 [ %indvars.iv101.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next102.prol, %vec.epilog.scalar.ph.prol ]
  %i.ck = icmp eq i64 %.073.lcssa, %.neg
  br i1 %i.ck, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.1, %vec.epilog.scalar.ph ], [ %indvars.iv101.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv101
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 %indvars.iv101
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !8
  %i.cp = xor i8 %i.co, %i.cm                     ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 %indvars.iv101
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv101 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !8
  %i.ct = xor i8 %i.cs, %i.cp
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !8
  %indvars.iv.next102 = add nuw i64 %indvars.iv101, 1 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next102
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 %indvars.iv.next102
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !8
  %i.cy = xor i8 %i.cx, %i.cv                     ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 %indvars.iv.next102
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv.next102 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !8
  %i.dc = xor i8 %i.db, %i.cy
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !8
  %indvars.iv.next102.1 = add nuw i64 %indvars.iv101, 2 ; 2 uses
  %exitcond104.not.1 = icmp eq i64 %indvars.iv.next102.1, %.073.lcssa
  br i1 %exitcond104.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !50

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block
  call void %i.c(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bo, ptr noundef %i.e) #6
  br label %._crit_edge95

._crit_edge95:                                    ; preds = %.loopexit, %._crit_edge87
  %i.dd = zext nneg i32 %i.k to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.dd
  %i.de = sub nuw nsw i32 16, %i.k
  %i.df = zext nneg i32 %i.de to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.df, i1 false), !tbaa !8
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.e) #6
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dh = load <2 x i64>, ptr %4, align 16, !tbaa !8
  %i.di = load <2 x i64>, ptr %i.dg, align 8, !tbaa !8
  %i.dj = xor <2 x i64> %i.di, %i.dh
  store <2 x i64> %i.dj, ptr %i.dg, align 8, !tbaa !8
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
  %5 = alloca %union.anon.2, align 16             ; 12 uses
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
  %i.j = load i64, ptr %i.i, align 8, !tbaa !12
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !12
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !57

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
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !12
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !12
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
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %i.au = getelementptr i8, ptr %.085128, i64 %.083130
  %bound0 = icmp ult ptr %i.am, %i.au
  %bound1 = icmp ult ptr %.085128, %i.at
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check133 = icmp ult i64 %.083130, 32
  br i1 %min.iters.check133, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.085128, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <16 x i8>, ptr %i.av, align 1, !tbaa !8, !alias.scope !68
  %wide.load134 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !8, !alias.scope !68
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load135 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !8, !alias.scope !69, !noalias !68
  %wide.load136 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !8, !alias.scope !69, !noalias !68
  %i.az = xor <16 x i8> %wide.load135, %wide.load
  %i.ba = xor <16 x i8> %wide.load136, %wide.load134
  store <16 x i8> %i.az, ptr %i.ax, align 1, !tbaa !8, !alias.scope !69, !noalias !68
  store <16 x i8> %i.ba, ptr %i.ay, align 1, !tbaa !8, !alias.scope !69, !noalias !68
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !61

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec137 = and i64 %.083130, 12                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.085128, i64 %index138
  %wide.load139 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !8, !alias.scope !68
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 %index138 ; 2 uses
  %wide.load140 = load <4 x i8>, ptr %i.bc, align 1, !tbaa !8, !alias.scope !69, !noalias !68
  %i.bd = xor <4 x i8> %wide.load140, %wide.load139
  store <4 x i8> %i.bd, ptr %i.bc, align 1, !tbaa !8, !alias.scope !69, !noalias !68
  %index.next141 = add nuw i64 %index138, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next141, %n.vec137
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n142 = icmp eq i64 %.083130, %n.vec137
  br i1 %cmp.n142, label %iter.check161, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %indvars.iv109.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec137, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %vec.epilog.scalar.ph ], [ %indvars.iv109.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.085128, i64 %indvars.iv109
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv109 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = xor i8 %i.bi, %i.bg
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !8
  %indvars.iv.next110 = add i64 %indvars.iv109, 1 ; 2 uses
  %i.bk = and i64 %indvars.iv.next110, 4294967295
  %i.bl = icmp ugt i64 %.083130, %i.bk
  br i1 %i.bl, label %vec.epilog.scalar.ph, label %iter.check161, !llvm.loop !63

iter.check161:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block
  tail call void %i.c(ptr noundef nonnull %i.am, ptr noundef nonnull %i.am, ptr noundef %i.e) #6
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %i.e) #6
  %min.iters.check146 = icmp ult i64 %.083130, 4
  %i.bm = sub i64 %.085128145, %.084129144
  %diff.check = icmp ugt i64 %i.bm, -32
  %or.cond = select i1 %min.iters.check146, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph162.preheader, label %vector.main.loop.iter.check147

vector.main.loop.iter.check147:                   ; preds = %iter.check161
  %min.iters.check148 = icmp ult i64 %.083130, 32
  br i1 %min.iters.check148, label %vec.epilog.ph165, label %vector.body151

vector.body151:                                   ; preds = %vector.main.loop.iter.check147, %vector.body151
  %index152 = phi i64 [ %index.next157, %vector.body151 ], [ 0, %vector.main.loop.iter.check147 ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 %index152 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load153 = load <16 x i8>, ptr %i.bn, align 16, !tbaa !8
  %wide.load154 = load <16 x i8>, ptr %i.bo, align 16, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %.085128, i64 %index152 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load155 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !8
  %wide.load156 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !8
  %i.br = xor <16 x i8> %wide.load155, %wide.load153
  %i.bs = xor <16 x i8> %wide.load156, %wide.load154
  %i.bt = getelementptr inbounds nuw i8, ptr %.084129, i64 %index152 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <16 x i8> %i.br, ptr %i.bt, align 1, !tbaa !8
  store <16 x i8> %i.bs, ptr %i.bu, align 1, !tbaa !8
  %index.next157 = add nuw i64 %index152, 32
  br label %vector.body151, !llvm.loop !64

vec.epilog.ph165:                                 ; preds = %vector.main.loop.iter.check147
  %n.vec166 = and i64 %.083130, 12                ; 3 uses
  br label %vec.epilog.vector.body167

vec.epilog.vector.body167:                        ; preds = %vec.epilog.vector.body167, %vec.epilog.ph165
  %index168 = phi i64 [ 0, %vec.epilog.ph165 ], [ %index.next171, %vec.epilog.vector.body167 ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 %index168
  %wide.load169 = load <4 x i8>, ptr %i.bv, align 4, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %.085128, i64 %index168
  %wide.load170 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !8
  %i.bx = xor <4 x i8> %wide.load170, %wide.load169
  %i.by = getelementptr inbounds nuw i8, ptr %.084129, i64 %index168
  store <4 x i8> %i.bx, ptr %i.by, align 1, !tbaa !8
  %index.next171 = add nuw i64 %index168, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next171, %n.vec166
  br i1 %i.bz, label %vec.epilog.middle.block172, label %vec.epilog.vector.body167, !llvm.loop !65

vec.epilog.middle.block172:                       ; preds = %vec.epilog.vector.body167
  %cmp.n173 = icmp eq i64 %.083130, %n.vec166
  br i1 %cmp.n173, label %._crit_edge106, label %vec.epilog.scalar.ph162.preheader

vec.epilog.scalar.ph162.preheader:                ; preds = %iter.check161, %vec.epilog.middle.block172
  %indvars.iv112.ph = phi i64 [ 0, %iter.check161 ], [ %n.vec166, %vec.epilog.middle.block172 ] ; 3 uses
  %xtraiter = and i64 %.083130, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph162.prol.loopexit, label %vec.epilog.scalar.ph162.prol

vec.epilog.scalar.ph162.prol:                     ; preds = %vec.epilog.scalar.ph162.preheader, %vec.epilog.scalar.ph162.prol
  %indvars.iv112.prol = phi i64 [ %indvars.iv.next113.prol, %vec.epilog.scalar.ph162.prol ], [ %indvars.iv112.ph, %vec.epilog.scalar.ph162.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph162.prol ], [ 0, %vec.epilog.scalar.ph162.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv112.prol
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %.085128, i64 %indvars.iv112.prol
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !8
  %i.ce = xor i8 %i.cd, %i.cb
  %i.cf = getelementptr inbounds nuw i8, ptr %.084129, i64 %indvars.iv112.prol
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !8
  %indvars.iv.next113.prol = add nuw i64 %indvars.iv112.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph162.prol.loopexit, label %vec.epilog.scalar.ph162.prol, !llvm.loop !66

vec.epilog.scalar.ph162.prol.loopexit:            ; preds = %vec.epilog.scalar.ph162.prol, %vec.epilog.scalar.ph162.preheader
  %indvars.iv112.unr = phi i64 [ %indvars.iv112.ph, %vec.epilog.scalar.ph162.preheader ], [ %indvars.iv.next113.prol, %vec.epilog.scalar.ph162.prol ]
  %i.cg = sub nsw i64 %indvars.iv112.ph, %.083130
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %._crit_edge106, label %vec.epilog.scalar.ph162

vec.epilog.scalar.ph162:                          ; preds = %vec.epilog.scalar.ph162.prol.loopexit, %vec.epilog.scalar.ph162
  %indvars.iv112 = phi i64 [ %indvars.iv.next113.3, %vec.epilog.scalar.ph162 ], [ %indvars.iv112.unr, %vec.epilog.scalar.ph162.prol.loopexit ] ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv112
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %.085128, i64 %indvars.iv112
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !8
  %i.cm = xor i8 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %.084129, i64 %indvars.iv112
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !8
  %indvars.iv.next113 = add nuw i64 %indvars.iv112, 1 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next113
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %.085128, i64 %indvars.iv.next113
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !8
  %i.cs = xor i8 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %.084129, i64 %indvars.iv.next113
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !8
  %indvars.iv.next113.1 = add nuw i64 %indvars.iv112, 2 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next113.1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %.085128, i64 %indvars.iv.next113.1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !8
  %i.cy = xor i8 %i.cx, %i.cv
  %i.cz = getelementptr inbounds nuw i8, ptr %.084129, i64 %indvars.iv.next113.1
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !8
  %indvars.iv.next113.2 = add nuw i64 %indvars.iv112, 3 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next113.2
  %i.db = load i8, ptr %i.da, align 1, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %.085128, i64 %indvars.iv.next113.2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !8
  %i.de = xor i8 %i.dd, %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %.084129, i64 %indvars.iv.next113.2
  store i8 %i.de, ptr %i.df, align 1, !tbaa !8
  %indvars.iv.next113.3 = add nuw i64 %indvars.iv112, 4 ; 2 uses
  %exitcond116.not.3 = icmp eq i64 %indvars.iv.next113.3, %.083130
  br i1 %exitcond116.not.3, label %._crit_edge106, label %vec.epilog.scalar.ph162, !llvm.loop !67

._crit_edge106:                                   ; preds = %vec.epilog.scalar.ph162.prol.loopexit, %vec.epilog.scalar.ph162, %vec.epilog.middle.block172, %bb.f, %bb.g
  %i.dg = zext nneg i32 %i.n to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.dg
  %i.dh = sub nuw nsw i32 16, %i.n
  %i.di = zext nneg i32 %i.dh to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.di, i1 false), !tbaa !8
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %i.e) #6
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dk = load <2 x i64>, ptr %5, align 16, !tbaa !8
  %i.dl = load <2 x i64>, ptr %i.dj, align 8, !tbaa !8
  %i.dm = xor <2 x i64> %i.dl, %i.dk
  store <2 x i64> %i.dm, ptr %i.dj, align 8, !tbaa !8
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
end_hunk_1
