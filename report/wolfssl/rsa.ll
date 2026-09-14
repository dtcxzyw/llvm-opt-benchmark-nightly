Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/rsa?download=true
inline.NumInlined: 69
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@xorbuf:bb.a
  br i1 %i.cg, label %.lr.ph.i32, label %XorWords.exit33, !llvm.loop !86

XorWords.exit33:                                  ; preds = %.lr.ph.i32, %middle.block, %._crit_edge
  %.sroa.039.3 = phi ptr [ %.022.lcssa, %._crit_edge ], [ %i.bs, %middle.block ], [ %i.cd, %.lr.ph.i32 ]
  %.sroa.0.1 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bt, %middle.block ], [ %i.cb, %.lr.ph.i32 ]
  %i.ch = and i32 %.025.lcssa, 7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %XorWords.exit33, %XorWords.exit
  %.126 = phi i32 [ %i.aj, %XorWords.exit ], [ %i.ch, %XorWords.exit33 ], [ %2, %bb.c ] ; 9 uses
  %.123 = phi ptr [ %.sroa.039.1, %XorWords.exit ], [ %.sroa.039.3, %XorWords.exit33 ], [ %0, %bb.c ] ; 8 uses
  %.1 = phi ptr [ %.sroa.0.0, %XorWords.exit ], [ %.sroa.0.1, %XorWords.exit33 ], [ %1, %bb.c ] ; 8 uses
  %.not51 = icmp eq i32 %.126, 0
  br i1 %.not51, label %._crit_edge57, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.ci = zext i32 %.126 to i64                   ; 5 uses
  %min.iters.check116 = icmp ult i32 %.126, 4
  br i1 %min.iters.check116, label %.lr.ph56.preheader, label %vector.memcheck109

vector.memcheck109:                               ; preds = %iter.check
  %i.cj = zext i32 %.126 to i64                   ; 2 uses
  %scevgep110 = getelementptr i8, ptr %.123, i64 %i.cj
  %scevgep111 = getelementptr i8, ptr %.1, i64 %i.cj
  %bound0112 = icmp ult ptr %.123, %scevgep111
  %bound1113 = icmp ult ptr %.1, %scevgep110
  %found.conflict114 = and i1 %bound0112, %bound1113
  br i1 %found.conflict114, label %.lr.ph56.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck109
  %min.iters.check117 = icmp ult i32 %.126, 32
  br i1 %min.iters.check117, label %vec.epilog.ph, label %vector.ph118

vector.ph118:                                     ; preds = %vector.main.loop.iter.check
  %i.ck = and i64 %i.ci, 28
  %n.vec119 = and i64 %i.ci, 4294967264           ; 6 uses
  %i.cl = getelementptr i8, ptr %.1, i64 %n.vec119
  %i.cm = getelementptr i8, ptr %.123, i64 %n.vec119
  %i.cn = trunc nuw i64 %n.vec119 to i32
  %i.co = sub i32 %.126, %i.cn
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next128, %vector.body120 ] ; 3 uses
  %next.gep122 = getelementptr i8, ptr %.1, i64 %index121 ; 2 uses
  %next.gep123 = getelementptr i8, ptr %.123, i64 %index121 ; 3 uses
  %i.cp = getelementptr i8, ptr %next.gep122, i64 16
  %wide.load124 = load <16 x i8>, ptr %next.gep122, align 1, !tbaa !24, !alias.scope !98
  %wide.load125 = load <16 x i8>, ptr %i.cp, align 1, !tbaa !24, !alias.scope !98
  %i.cq = getelementptr i8, ptr %next.gep123, i64 16 ; 2 uses
  %wide.load126 = load <16 x i8>, ptr %next.gep123, align 1, !tbaa !24, !alias.scope !99, !noalias !98
  %wide.load127 = load <16 x i8>, ptr %i.cq, align 1, !tbaa !24, !alias.scope !99, !noalias !98
  %i.cr = xor <16 x i8> %wide.load126, %wide.load124
  %i.cs = xor <16 x i8> %wide.load127, %wide.load125
  store <16 x i8> %i.cr, ptr %next.gep123, align 1, !tbaa !24, !alias.scope !99, !noalias !98
  store <16 x i8> %i.cs, ptr %i.cq, align 1, !tbaa !24, !alias.scope !99, !noalias !98
  %index.next128 = add nuw i64 %index121, 32      ; 2 uses
  %i.ct = icmp eq i64 %index.next128, %n.vec119
  br i1 %i.ct, label %middle.block129, label %vector.body120, !llvm.loop !90

middle.block129:                                  ; preds = %vector.body120
  %cmp.n130 = icmp eq i64 %n.vec119, %i.ci
  br i1 %cmp.n130, label %._crit_edge57, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block129
  %min.epilog.iters.check = icmp eq i64 %i.ck, 0
  br i1 %min.epilog.iters.check, label %.lr.ph56.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec119, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %i.ci, 4294967292           ; 5 uses
  %i.cu = getelementptr i8, ptr %.1, i64 %n.vec134
  %i.cv = getelementptr i8, ptr %.123, i64 %n.vec134
  %i.cw = trunc nuw i64 %n.vec134 to i32
  %i.cx = sub i32 %.126, %i.cw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 3 uses
  %next.gep136 = getelementptr i8, ptr %.1, i64 %index135
  %next.gep137 = getelementptr i8, ptr %.123, i64 %index135 ; 2 uses
  %wide.load138 = load <4 x i8>, ptr %next.gep136, align 1, !tbaa !24, !alias.scope !98
  %wide.load139 = load <4 x i8>, ptr %next.gep137, align 1, !tbaa !24, !alias.scope !99, !noalias !98
  %i.cy = xor <4 x i8> %wide.load139, %wide.load138
  store <4 x i8> %i.cy, ptr %next.gep137, align 1, !tbaa !24, !alias.scope !99, !noalias !98
  %index.next140 = add nuw i64 %index135, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next140, %n.vec134
  br i1 %i.cz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !91

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n141 = icmp eq i64 %n.vec134, %i.ci
  br i1 %cmp.n141, label %._crit_edge57, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %vector.memcheck109, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.254.ph = phi ptr [ %.1, %iter.check ], [ %.1, %vector.memcheck109 ], [ %i.cl, %vec.epilog.iter.check ], [ %i.cu, %vec.epilog.middle.block ] ; 2 uses
  %.22453.ph = phi ptr [ %.123, %iter.check ], [ %.123, %vector.memcheck109 ], [ %i.cm, %vec.epilog.iter.check ], [ %i.cv, %vec.epilog.middle.block ] ; 2 uses
  %.22752.ph = phi i32 [ %.126, %iter.check ], [ %.126, %vector.memcheck109 ], [ %i.co, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ] ; 4 uses
  %i.da = add i32 %.22752.ph, -1
  %xtraiter = and i32 %.22752.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.prol.loopexit, label %.lr.ph56.prol

.lr.ph56.prol:                                    ; preds = %.lr.ph56.preheader, %.lr.ph56.prol
  %.254.prol = phi ptr [ %i.db, %.lr.ph56.prol ], [ %.254.ph, %.lr.ph56.preheader ] ; 2 uses
  %.22453.prol = phi ptr [ %i.dd, %.lr.ph56.prol ], [ %.22453.ph, %.lr.ph56.preheader ] ; 3 uses
  %.22752.prol = phi i32 [ %i.dg, %.lr.ph56.prol ], [ %.22752.ph, %.lr.ph56.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph56.prol ], [ 0, %.lr.ph56.preheader ]
  %i.db = getelementptr inbounds nuw i8, ptr %.254.prol, i64 1 ; 2 uses
  %i.dc = load i8, ptr %.254.prol, align 1, !tbaa !24
  %i.dd = getelementptr inbounds nuw i8, ptr %.22453.prol, i64 1 ; 2 uses
  %i.de = load i8, ptr %.22453.prol, align 1, !tbaa !24
  %i.df = xor i8 %i.de, %i.dc
  store i8 %i.df, ptr %.22453.prol, align 1, !tbaa !24
  %i.dg = add i32 %.22752.prol, -1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph56.prol.loopexit, label %.lr.ph56.prol, !llvm.loop !92

.lr.ph56.prol.loopexit:                           ; preds = %.lr.ph56.prol, %.lr.ph56.preheader
  %.254.unr = phi ptr [ %.254.ph, %.lr.ph56.preheader ], [ %i.db, %.lr.ph56.prol ]
  %.22453.unr = phi ptr [ %.22453.ph, %.lr.ph56.preheader ], [ %i.dd, %.lr.ph56.prol ]
  %.22752.unr = phi i32 [ %.22752.ph, %.lr.ph56.preheader ], [ %i.dg, %.lr.ph56.prol ]
  %i.dh = icmp ult i32 %i.da, 3
  br i1 %i.dh, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56
  %.254 = phi ptr [ %i.dx, %.lr.ph56 ], [ %.254.unr, %.lr.ph56.prol.loopexit ] ; 5 uses
  %.22453 = phi ptr [ %i.dz, %.lr.ph56 ], [ %.22453.unr, %.lr.ph56.prol.loopexit ] ; 6 uses
  %.22752 = phi i32 [ %i.ec, %.lr.ph56 ], [ %.22752.unr, %.lr.ph56.prol.loopexit ]
  %i.di = getelementptr inbounds nuw i8, ptr %.254, i64 1
  %i.dj = load i8, ptr %.254, align 1, !tbaa !24
  %i.dk = getelementptr inbounds nuw i8, ptr %.22453, i64 1 ; 2 uses
  %i.dl = load i8, ptr %.22453, align 1, !tbaa !24
  %i.dm = xor i8 %i.dl, %i.dj
  store i8 %i.dm, ptr %.22453, align 1, !tbaa !24
  %i.dn = getelementptr inbounds nuw i8, ptr %.254, i64 2
  %i.do = load i8, ptr %i.di, align 1, !tbaa !24
  %i.dp = getelementptr inbounds nuw i8, ptr %.22453, i64 2 ; 2 uses
  %i.dq = load i8, ptr %i.dk, align 1, !tbaa !24
  %i.dr = xor i8 %i.dq, %i.do
  store i8 %i.dr, ptr %i.dk, align 1, !tbaa !24
  %i.ds = getelementptr inbounds nuw i8, ptr %.254, i64 3
  %i.dt = load i8, ptr %i.dn, align 1, !tbaa !24
  %i.du = getelementptr inbounds nuw i8, ptr %.22453, i64 3 ; 2 uses
  %i.dv = load i8, ptr %i.dp, align 1, !tbaa !24
  %i.dw = xor i8 %i.dv, %i.dt
  store i8 %i.dw, ptr %i.dp, align 1, !tbaa !24
  %i.dx = getelementptr inbounds nuw i8, ptr %.254, i64 4
  %i.dy = load i8, ptr %i.ds, align 1, !tbaa !24
  %i.dz = getelementptr inbounds nuw i8, ptr %.22453, i64 4
  %i.ea = load i8, ptr %i.du, align 1, !tbaa !24
  %i.eb = xor i8 %i.ea, %i.dy
  store i8 %i.eb, ptr %i.du, align 1, !tbaa !24
  %i.ec = add i32 %.22752, -4                     ; 2 uses
  %.not.3 = icmp eq i32 %i.ec, 0
  br i1 %.not.3, label %._crit_edge57, label %.lr.ph56, !llvm.loop !93

._crit_edge57:                                    ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56, %middle.block129, %vec.epilog.middle.block, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @RsaMGF1(i32 noundef range(i32 4, 20) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = tail call i32 @wc_HashGetDigestSize(i32 noundef %0) #12
  %.fr7 = freeze i32 %i.b                         ; 7 uses
  %i.c = icmp slt i32 %.fr7, 0
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %2, 4                            ; 5 uses
  %i.e = icmp ugt i32 %i.d, 68
  %i.f = icmp samesign ugt i32 %.fr7, 68
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @llvm.umax.i32(i32 %i.d, i32 %.fr7) ; 2 uses
  %i.h = icmp ugt i32 %i.g, 512
  br i1 %i.h, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.043 = phi i32 [ %i.g, %bb.c ], [ 68, %bb.b ]  ; 3 uses
  %i.i = zext i32 %2 to i64                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i ; 3 uses
  %i.k = add nuw i32 %2, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.l ; 3 uses
  %i.n = add nuw i32 %2, 2
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o ; 3 uses
  %i.q = add nuw i32 %2, 3
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r ; 3 uses
  %.not8 = icmp eq i32 %.fr7, 0
  br i1 %.not8, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.d
  %5 = zext nneg i32 %.fr7 to i64
  %6 = add nsw i64 %5, -1
  %i.t = zext nneg i32 %.fr7 to i64
  %i.u = zext i32 %4 to i64
  br label %.split

.split.us:                                        ; preds = %bb.d
  %.not9 = icmp eq i32 %4, 0
  br i1 %.not9, label %.split.us.split, label %.preheader.us.us, !llvm.loop !100

.preheader.us.us:                                 ; preds = %.split.us, %.preheader.us.us
  %.041.us.us = phi i32 [ %i.ad, %.preheader.us.us ], [ 0, %.split.us ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %1, i64 %i.i, i1 false)
  %i.v = lshr i32 %.041.us.us, 24
  %i.w = trunc nuw i32 %i.v to i8
  store i8 %i.w, ptr %i.j, align 1, !tbaa !24
  %i.x = lshr i32 %.041.us.us, 16
  %i.y = trunc i32 %i.x to i8
  store i8 %i.y, ptr %i.m, align 1, !tbaa !24
  %i.z = lshr i32 %.041.us.us, 8
  %i.aa = trunc i32 %i.z to i8
  store i8 %i.aa, ptr %i.p, align 1, !tbaa !24
  %i.ab = trunc i32 %.041.us.us to i8
  store i8 %i.ab, ptr %i.s, align 1, !tbaa !24
  %i.ac = call i32 @wc_Hash(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.d, ptr noundef nonnull %i.a, i32 noundef %.043) #12 ; 2 uses
  %.not.us.us = icmp eq i32 %i.ac, 0
  %i.ad = add i32 %.041.us.us, 1
  br i1 %.not.us.us, label %.preheader.us.us, label %.thread

.split.us.split:                                  ; preds = %.split.us
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %1, i64 %i.i, i1 false)
  store i8 0, ptr %i.j, align 1, !tbaa !24
  store i8 0, ptr %i.m, align 1, !tbaa !24
  store i8 0, ptr %i.p, align 1, !tbaa !24
  store i8 0, ptr %i.s, align 1, !tbaa !24
  %i.ae = call i32 @wc_Hash(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.d, ptr noundef nonnull %i.a, i32 noundef %.043) #12
  br label %.thread

.split:                                           ; preds = %.split.preheader, %._crit_edge
  %.041 = phi i32 [ %i.aw, %._crit_edge ], [ 0, %.split.preheader ] ; 5 uses
  %.040 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %.split.preheader ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %1, i64 %i.i, i1 false)
  %i.af = lshr i32 %.041, 24
  %i.ag = trunc nuw i32 %i.af to i8
  store i8 %i.ag, ptr %i.j, align 1, !tbaa !24
  %i.ah = lshr i32 %.041, 16
  %i.ai = trunc i32 %i.ah to i8
  store i8 %i.ai, ptr %i.m, align 1, !tbaa !24
  %i.aj = lshr i32 %.041, 8
  %i.ak = trunc i32 %i.aj to i8
  store i8 %i.ak, ptr %i.p, align 1, !tbaa !24
  %i.al = trunc i32 %.041 to i8
  store i8 %i.al, ptr %i.s, align 1, !tbaa !24
  %i.am = call i32 @wc_Hash(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.d, ptr noundef nonnull %i.a, i32 noundef %.043) #12 ; 2 uses
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %.preheader, label %.thread

.preheader:                                       ; preds = %.split
  %i.an = icmp ult i32 %.040, %4
  br i1 %i.an, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ao = zext i32 %.040 to i64                   ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.ao
  %i.ap = xor i32 %.040, -1
  %i.aq = add i32 %4, %i.ap
  %7 = zext i32 %i.aq to i64
  %umin = call i64 @llvm.umin.i64(i64 %6, i64 %7)
  %i.ar = add nuw nsw i64 %umin, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.ar, i1 false), !tbaa !24
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv12 = phi i64 [ %i.ao, %.lr.ph.preheader ], [ %indvars.iv.next13, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = icmp samesign ult i64 %indvars.iv.next, %i.t
  %i.at = icmp samesign ult i64 %indvars.iv.next13, %i.u
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !101

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.av = trunc nuw i64 %indvars.iv.next13 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.1.lcssa = phi i32 [ %.040, %.preheader ], [ %i.av, %._crit_edge.loopexit ] ; 2 uses
  %i.aw = add i32 %.041, 1
  %i.ax = icmp ult i32 %.1.lcssa, %4
  br i1 %i.ax, label %.split, label %.thread, !llvm.loop !100

.thread:                                          ; preds = %._crit_edge, %.split, %.preheader.us.us, %.split.us.split, %bb.c, %bb.a
  %.246 = phi i32 [ -173, %bb.c ], [ %.fr7, %bb.a ], [ %i.ac, %.preheader.us.us ], [ %i.ae, %.split.us.split ], [ 0, %._crit_edge ], [ %i.am, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.246
}

declare i32 @wc_InitShake128(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_Shake128_Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_Shake128_Final(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @wc_Shake128_Free(ptr noundef) local_unnamed_addr #2

declare i32 @wc_InitShake256(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_Shake256_Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_Shake256_Final(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @wc_Shake256_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @RsaFunctionSync(ptr noundef nonnull %0, i32 noundef range(i32 1, -2147483648) %1, ptr noundef nonnull %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, -1) %4, ptr noundef nonnull %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %5, align 8, !tbaa !31     ; 3 uses
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 1
  %i.d = add nuw nsw i64 %i.c, 2
  %i.e = alloca i64, i64 %i.d, align 16           ; 8 uses
  %i.f = icmp ugt i16 %i.a, 64
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw nsw i64 %i.b, 4
  %i.h = add nuw nsw i64 %i.g, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.e, i8 0, i64 %i.h, i1 false)
  %i.i = shl nuw nsw i16 %i.a, 1
  %i.j = or disjoint i16 %i.i, 1
  %i.k = zext nneg i16 %i.j to i32
  %i.l = call i32 @sp_init_size(ptr noundef nonnull %i.e, i32 noundef %i.k) #12
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %.thread43

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 @sp_read_unsigned_bin(ptr noundef nonnull %i.e, ptr noundef nonnull %0, i32 noundef %1) #12
  %.not33 = icmp eq i32 %i.m, 0
  br i1 %.not33, label %.thread, label %.thread43

.thread:                                          ; preds = %bb.c
  switch i32 %4, label %.thread43 [
    i32 3, label %bb.e
    i32 2, label %bb.e
    i32 0, label %bb.d
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %.thread, %.thread
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 1040
  %i.o = call i32 @sp_exptmod_nct(ptr noundef nonnull %i.e, ptr noundef nonnull %i.n, ptr noundef nonnull %5, ptr noundef nonnull %i.e) #12
  %.not34 = icmp eq i32 %i.o, 0
  br i1 %.not34, label %.thread45, label %.thread43

bb.e:                                             ; preds = %.thread, %.thread
  %i.p = call fastcc i32 @RsaFunctionPrivate(ptr noundef %i.e, ptr noundef %5, ptr noundef %6) ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread45, label %.thread43

.thread45:                                        ; preds = %bb.d, %bb.e
  %i.r = load i32, ptr %3, align 4, !tbaa !18
  %i.s = call i32 @sp_to_unsigned_bin_len_ct(ptr noundef nonnull %i.e, ptr noundef nonnull %2, i32 noundef %i.r) #12
  %.not35 = icmp eq i32 %i.s, 0
  %spec.select38 = select i1 %.not35, i32 0, i32 -113
  br label %.thread43

.thread43:                                        ; preds = %bb.b, %bb.c, %bb.d, %.thread, %.thread45, %bb.e
  %.3 = phi i32 [ %i.p, %bb.e ], [ %spec.select38, %.thread45 ], [ -130, %.thread ], [ -112, %bb.d ], [ -111, %bb.c ], [ -110, %bb.b ]
  call void @sp_forcezero(ptr noundef nonnull %i.e) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.thread43
  %.030 = phi i32 [ %.3, %.thread43 ], [ -234, %bb.a ]
  ret i32 %.030
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @RsaFunctionPrivate(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !tbaa !22
  %i.b = load i16, ptr %1, align 8, !tbaa !31
  %i.c = zext i16 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.e = add nuw nsw i64 %i.d, 2                  ; 2 uses
  %i.f = tail call ptr @llvm.stacksave.p0()
  %i.g = alloca i64, i64 %i.e, align 16           ; 13 uses
  %i.h = load i16, ptr %1, align 8, !tbaa !31     ; 4 uses
  %i.i = zext i16 %i.h to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 2
  %i.l = alloca i64, i64 %i.k, align 16           ; 9 uses
  %i.m = icmp ugt i16 %i.h, 64
  br i1 %i.m, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ne i16 %i.h, 0
  %i.o = shl nuw nsw i64 %i.e, 3
  %i.p = icmp samesign ult i64 %i.d, %i.j
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  %i.r = shl nuw nsw i64 %i.i, 4
  %i.s = add nuw nsw i64 %i.r, 16                 ; 2 uses
  %i.t = select i1 %i.q, i64 %i.o, i64 %i.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.g, i8 0, i64 %i.t, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.l, i8 0, i64 %i.s, i1 false)
  %i.u = shl nuw nsw i16 %i.h, 1
  %i.v = or disjoint i16 %i.u, 1
  %i.w = zext nneg i16 %i.v to i32
  %i.x = call i32 @sp_init_size(ptr noundef nonnull %i.g, i32 noundef %i.w) #12
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.y = load i16, ptr %1, align 8, !tbaa !31
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 1
  %i.ab = or disjoint i32 %i.aa, 1
  %i.ac = call i32 @sp_init_size(ptr noundef nonnull %i.l, i32 noundef %i.ab) #12
  %.not106 = icmp eq i32 %i.ac, 0
  br i1 %.not106, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ad = call i32 @mp_get_digit_count(ptr noundef nonnull %1) #12
  %i.ae = call i32 @mp_rand(ptr noundef nonnull %i.g, i32 noundef %i.ad, ptr noundef %2) #12 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ag = call i32 @sp_invmod(ptr noundef nonnull %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.l) #12
  %.not107 = icmp eq i32 %i.ag, 0
  br i1 %.not107, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.ai = call i32 @sp_exptmod_nct(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ah, ptr noundef nonnull %1, ptr noundef nonnull %i.g) #12
  %.not108 = icmp eq i32 %i.ai, 0
  br i1 %.not108, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.aj = call i32 @sp_mulmod(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull %1, ptr noundef nonnull %0) #12
  %.not109 = icmp eq i32 %i.aj, 0
  br i1 %.not109, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 3120 ; 4 uses
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !102
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 3 uses
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !103
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 5200 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !104
  %i.as = icmp eq i16 %i.ar, 0
  br i1 %i.as, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 6240 ; 2 uses
  %i.au = load i16, ptr %i.at, align 8, !tbaa !105
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 7280 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !106
  %i.ay = icmp eq i16 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2080
  %i.ba = call i32 @sp_exptmod(ptr noundef nonnull %0, ptr noundef nonnull %i.az, ptr noundef nonnull %1, ptr noundef nonnull %0) #12
  %.not116 = icmp eq i32 %i.ba, 0
  br i1 %.not116, label %select.unfold175, label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.bb = call i32 @sp_exptmod(ptr noundef nonnull %0, ptr noundef nonnull %i.at, ptr noundef nonnull %i.an, ptr noundef nonnull %i.g) #12
  %.not110 = icmp eq i32 %i.bb, 0
  br i1 %.not110, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bc = call i32 @sp_exptmod(ptr noundef nonnull %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ak, ptr noundef nonnull %0) #12
  %.not111 = icmp eq i32 %i.bc, 0
  br i1 %.not111, label %.thread153, label %.critedge

.thread153:                                       ; preds = %bb.o
  %i.bd = call i32 @sp_submod(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.ak, ptr noundef nonnull %0) #12
  %.not112 = icmp eq i32 %i.bd, 0
  br i1 %.not112, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.thread153
  %i.be = call i32 @sp_mulmod(ptr noundef nonnull %0, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ak, ptr noundef nonnull %0) #12
  %.not113 = icmp eq i32 %i.be, 0
  br i1 %.not113, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.bf = call i32 @sp_mul(ptr noundef nonnull %0, ptr noundef nonnull %i.an, ptr noundef nonnull %0) #12
  %.not114 = icmp eq i32 %i.bf, 0
  br i1 %.not114, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bg = call i32 @sp_add(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull %0) #12
  %.not115 = icmp eq i32 %i.bg, 0
  br i1 %.not115, label %select.unfold175, label %.critedge

select.unfold175:                                 ; preds = %bb.m, %bb.r
  %i.bh = call i32 @sp_mont_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #12
  %.not117 = icmp eq i32 %i.bh, 0
  br i1 %.not117, label %bb.s, label %.critedge

bb.s:                                             ; preds = %select.unfold175
  %i.bi = call i32 @sp_mont_norm(ptr noundef nonnull %i.g, ptr noundef nonnull %1) #12
  %.not118 = icmp eq i32 %i.bi, 0
  br i1 %.not118, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.bj = call i32 @sp_mul(ptr noundef nonnull %i.l, ptr noundef nonnull %i.g, ptr noundef nonnull %i.l) #12
  %.not119 = icmp eq i32 %i.bj, 0
  br i1 %.not119, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.bk = call i32 @sp_mod(ptr noundef nonnull %i.l, ptr noundef nonnull %1, ptr noundef nonnull %i.l) #12
  %.not120 = icmp eq i32 %i.bk, 0
  br i1 %.not120, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.bl = call i32 @sp_mul(ptr noundef nonnull %0, ptr noundef nonnull %i.l, ptr noundef nonnull %0) #12
  %.not121 = icmp eq i32 %i.bl, 0
  br i1 %.not121, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !22
  %i.bn = call i32 @sp_mont_red_ex(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.bm, i32 noundef 1) #12
  %.not122 = icmp eq i32 %i.bn, 0
  %spec.select137 = select i1 %.not122, i32 0, i32 -117
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.o, %.thread153, %bb.p, %bb.q, %bb.c, %bb.b, %bb.e, %bb.d, %bb.f, %bb.g, %bb.m, %bb.r, %select.unfold175, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.17 = phi i32 [ -112, %bb.o ], [ %spec.select137, %bb.w ], [ -117, %bb.v ], [ -117, %bb.u ], [ -117, %bb.t ], [ -117, %bb.s ], [ -117, %select.unfold175 ], [ -112, %bb.m ], [ -115, %bb.r ], [ -110, %bb.c ], [ -117, %bb.g ], [ -112, %bb.f ], [ %i.ae, %bb.d ], [ -119, %bb.e ], [ -110, %bb.b ], [ -116, %bb.q ], [ -117, %bb.p ], [ -114, %.thread153 ], [ -112, %bb.n ]
  call void @sp_forcezero(ptr noundef nonnull %i.l) #12
  call void @sp_forcezero(ptr noundef nonnull %i.g) #12
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %.critedge
  %.0 = phi i32 [ %.17, %.critedge ], [ -234, %bb.a ]
  call void @llvm.stackrestore.p0(ptr %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

declare i32 @sp_exptmod_nct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sp_to_unsigned_bin_len_ct(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @mp_rand(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mp_get_digit_count(ptr noundef) local_unnamed_addr #2

declare i32 @sp_invmod(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sp_mulmod(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sp_exptmod(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sp_submod(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sp_mul(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sp_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sp_mont_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sp_mont_norm(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sp_mod(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sp_mont_red_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @sp_to_unsigned_bin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @CalcDX(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.sp_int], align 16      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = call i32 @sp_init(ptr noundef nonnull %3) #12 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @sp_sub_d(ptr noundef %1, i64 noundef 1, ptr noundef nonnull %3) #12 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @sp_mod(ptr noundef %2, ptr noundef nonnull %3, ptr noundef %0) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  call void @sp_forcezero(ptr noundef nonnull %3) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.1 = phi i32 [ %.0, %bb.d ], [ %i.a, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.1
}

declare i32 @sp_init(ptr noundef) local_unnamed_addr #2

declare i32 @sp_sub_d(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !23}
!1 = distinct !{!1, !23}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"short", !6, i64 0}
!11 = !{!"sp_int", !10, i64 0, !10, i64 2, !6, i64 8}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"p1 _ZTS6WC_RNG", !12, i64 0}
!15 = !{!"RsaKey", !11, i64 0, !11, i64 1040, !11, i64 2080, !11, i64 3120, !11, i64 4160, !11, i64 5200, !11, i64 6240, !11, i64 7280, !12, i64 8320, !13, i64 8328, !7, i64 8336, !7, i64 8340, !7, i64 8344, !14, i64 8352, !6, i64 8360}
!16 = !{!15, !7, i64 8336}
!17 = !{!15, !12, i64 8320}
!18 = !{!7, !7, i64 0}
!19 = !{!15, !13, i64 8328}
!20 = !{!15, !7, i64 8344}
!21 = !{!"long", !6, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!6, !6, i64 0}
!25 = !{!15, !6, i64 8360}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!13, !13, i64 0}
!29 = !{!"branch_weights", i32 4, i32 28}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!15, !10, i64 0}
!32 = !{!15, !7, i64 8340}
!33 = !{!15, !14, i64 8352}
!34 = !{!"p1 _ZTS6RsaKey", !12, i64 0}
!35 = !{!34, !34, i64 0}
!36 = distinct !{!36, !23, !26, !27}
!37 = distinct !{!37, !23, !26, !27}
!38 = distinct !{!38, !23, !27, !26}
!39 = !{!"branch_weights", i32 8, i32 24}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !23, !26, !27}
!43 = distinct !{!43, !23, !27, !26}
!44 = distinct !{!44, !"LVerDomain"}
!45 = distinct !{!45, !44}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !23, !26, !27}
!48 = distinct !{!48, !23, !26, !27}
!49 = distinct !{!49, !30}
!50 = distinct !{!50, !23, !26}
!51 = distinct !{!51, !23, !26, !27}
!52 = distinct !{!52, !23, !27, !26}
!53 = distinct !{!53, !"LVerDomain"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !23, !26, !27}
!57 = distinct !{!57, !23, !26}
!58 = distinct !{!58, !"LVerDomain"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !23, !26, !27}
!62 = distinct !{!62, !23, !26, !27}
!63 = distinct !{!63, !30}
!64 = distinct !{!64, !23, !26}
!65 = distinct !{!65, !23}
!66 = distinct !{!66, !23, !26, !27}
!67 = distinct !{!67, !23, !27, !26}
!68 = distinct !{!68, !23}
!69 = !{!10, !10, i64 0}
!70 = !{!45}
!71 = !{!46}
!72 = !{!54}
!73 = !{!55}
!74 = !{!59}
!75 = !{!60}
!76 = distinct !{!76, !23}
!77 = distinct !{!77, !"LVerDomain"}
!78 = distinct !{!78, !77}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !23, !26, !27}
!81 = distinct !{!81, !23, !26}
!82 = distinct !{!82, !"LVerDomain"}
!83 = distinct !{!83, !82}
!84 = distinct !{!84, !82}
!85 = distinct !{!85, !23, !26, !27}
!86 = distinct !{!86, !23, !26}
!87 = distinct !{!87, !"LVerDomain"}
!88 = distinct !{!88, !87}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !23, !26, !27}
!91 = distinct !{!91, !23, !26, !27}
!92 = distinct !{!92, !30}
!93 = distinct !{!93, !23, !26}
!94 = !{!78}
!95 = !{!79}
!96 = !{!83}
!97 = !{!84}
!98 = !{!88}
!99 = !{!89}
!100 = distinct !{!100, !23}
!101 = distinct !{!101, !23}
!102 = !{!15, !10, i64 3120}
!103 = !{!15, !10, i64 4160}
!104 = !{!15, !10, i64 5200}
!105 = !{!15, !10, i64 6240}
!106 = !{!15, !10, i64 7280}
end_hunk_0
