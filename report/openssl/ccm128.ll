Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ccm128?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@CRYPTO_ccm128_encrypt:bb.a
  %indvars.iv.next120.3 = add nuw i64 %indvars.iv119, 4 ; 2 uses
  %exitcond122.not.3 = icmp eq i64 %indvars.iv.next120.3, %.084.lcssa
  br i1 %exitcond122.not.3, label %._crit_edge109, label %vec.epilog.scalar.ph169, !llvm.loop !39

._crit_edge109:                                   ; preds = %vec.epilog.scalar.ph169.prol.loopexit, %vec.epilog.scalar.ph169, %vec.epilog.middle.block179, %._crit_edge100
  %i.ex = zext nneg i32 %i.o to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.ex
  %i.ey = sub nuw nsw i32 16, %i.o
  %i.ez = zext nneg i32 %i.ey to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 9) %i.ez, i1 false), !tbaa !8
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
  %i.az = load i64, ptr %.07583, align 1, !tbaa !18
  %i.ba = xor i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %.07484, align 1, !tbaa !18
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !8
  %i.bc = xor i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %i.y, align 8, !tbaa !8
  %i.bd = load i64, ptr %i.z, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %.07583, i64 8
  %i.bf = load i64, ptr %i.be, align 1, !tbaa !18
  %i.bg = xor i64 %i.bf, %i.bd                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.07484, i64 8
  store i64 %i.bg, ptr %i.bh, align 1, !tbaa !18
  %i.bi = load i64, ptr %i.aa, align 8, !tbaa !8
  %i.bj = xor i64 %i.bi, %i.bg
  store i64 %i.bj, ptr %i.aa, align 8, !tbaa !8
  call void %i.c(ptr noundef nonnull %i.y, ptr noundef nonnull %i.y, ptr noundef %i.e) #6
  %i.bk = getelementptr inbounds nuw i8, ptr %.07583, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.07484, i64 16 ; 2 uses
  %i.bm = add i64 %.07385, -16                    ; 3 uses
  %i.bn = icmp ugt i64 %i.bm, 15
  br i1 %i.bn, label %bb.d, label %._crit_edge87, !llvm.loop !43

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
  %i.bp = getelementptr i8, ptr %.074.lcssa, i64 %.073.lcssa ; 3 uses
  %i.bq = getelementptr i8, ptr %0, i64 %.073.lcssa
  %i.br = getelementptr i8, ptr %i.bq, i64 16     ; 3 uses
  %bound0 = icmp ult ptr %.074.lcssa, %i.br
  %bound0.a = icmp ult ptr %i.bo, %i.bp
  %found.conflict = and i1 %bound0, %bound0.a
  %5 = getelementptr i8, ptr %4, i64 %.073.lcssa  ; 2 uses
  %bound0134 = icmp ult ptr %.074.lcssa, %5
  %bound1135 = icmp ult ptr %4, %i.bp
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx = or i1 %found.conflict, %found.conflict136
  %6 = getelementptr i8, ptr %.075.lcssa, i64 %.073.lcssa ; 2 uses
  %bound0137 = icmp ult ptr %.074.lcssa, %6
  %bound1138 = icmp ult ptr %.075.lcssa, %i.bp
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx140 = or i1 %conflict.rdx, %found.conflict139
  %bound0141 = icmp ult ptr %i.bo, %5
  %bound1142 = icmp ult ptr %4, %i.br
  %found.conflict143 = and i1 %bound0141, %bound1142
  %conflict.rdx144 = or i1 %conflict.rdx140, %found.conflict143
  %bound0145 = icmp ult ptr %i.bo, %6
  %bound1146 = icmp ult ptr %.075.lcssa, %i.br
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx148 = or i1 %conflict.rdx144, %found.conflict147
  br i1 %conflict.rdx148, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec155 = and i64 %.073.lcssa, 12             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index156 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 %index156
  %wide.load157 = load <4 x i8>, ptr %i.bs, align 4, !tbaa !8, !alias.scope !51
  %i.bt = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 %index156
  %wide.load158 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !8, !alias.scope !52
  %i.bu = xor <4 x i8> %wide.load158, %wide.load157 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 %index156
  store <4 x i8> %i.bu, ptr %i.bv, align 1, !tbaa !8, !alias.scope !53, !noalias !54
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 %index156 ; 2 uses
  %wide.load159 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !8, !alias.scope !55, !noalias !56
  %i.bx = xor <4 x i8> %wide.load159, %i.bu
  store <4 x i8> %i.bx, ptr %i.bw, align 1, !tbaa !8, !alias.scope !55, !noalias !56
  %index.next160 = add nuw i64 %index156, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

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
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv101.ph
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 %indvars.iv101.ph
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !8
  %i.cd = xor i8 %i.cc, %i.ca                     ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 %indvars.iv101.ph
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv101.ph ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !8
  %i.ch = xor i8 %i.cg, %i.cd
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !8
  %indvars.iv.next102.prol = or disjoint i64 %indvars.iv101.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv101.unr = phi i64 [ %indvars.iv101.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next102.prol, %vec.epilog.scalar.ph.prol ]
  %i.ci = icmp eq i64 %.073.lcssa, %.neg
  br i1 %i.ci, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.1, %vec.epilog.scalar.ph ], [ %indvars.iv101.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv101
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 %indvars.iv101
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !8
  %i.cn = xor i8 %i.cm, %i.ck                     ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 %indvars.iv101
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv101 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !8
  %i.cr = xor i8 %i.cq, %i.cn
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !8
  %indvars.iv.next102 = add nuw i64 %indvars.iv101, 1 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next102
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 %indvars.iv.next102
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !8
  %i.cw = xor i8 %i.cv, %i.ct                     ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 %indvars.iv.next102
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv.next102 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !8
  %i.da = xor i8 %i.cz, %i.cw
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !8
  %indvars.iv.next102.1 = add nuw i64 %indvars.iv101, 2 ; 2 uses
  %exitcond104.not.1 = icmp eq i64 %indvars.iv.next102.1, %.073.lcssa
  br i1 %exitcond104.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !50

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block
  call void %i.c(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bo, ptr noundef %i.e) #6
  br label %._crit_edge95

._crit_edge95:                                    ; preds = %.loopexit, %._crit_edge87
  %i.db = zext nneg i32 %i.k to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.db
  %i.dc = sub nuw nsw i32 16, %i.k
  %i.dd = zext nneg i32 %i.dc to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 9) %i.dd, i1 false), !tbaa !8
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.e) #6
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.df = load <2 x i64>, ptr %4, align 16, !tbaa !8
  %i.dg = load <2 x i64>, ptr %i.de, align 8, !tbaa !8
  %i.dh = xor <2 x i64> %i.dg, %i.df
  store <2 x i64> %i.dh, ptr %i.de, align 8, !tbaa !8
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
end_hunk_0
begin_hunk_1_@ctr64_add:bb.a
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
  %5 = alloca %union.anon.3, align 16             ; 10 uses
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

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
  %.07497 = phi i64 [ %i.y, %.thread90 ], [ %3, %bb.f ] ; 10 uses
  %.07596 = phi ptr [ %i.aa, %.thread90 ], [ %2, %bb.f ] ; 8 uses
  %.07695 = phi ptr [ %i.ab, %.thread90 ], [ %1, %bb.f ] ; 8 uses
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %i.e) #6
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %min.iters.check = icmp ult i64 %.07497, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = getelementptr i8, ptr %.07596, i64 %.07497 ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 %.07497
  %i.af = getelementptr i8, ptr %i.ae, i64 16     ; 2 uses
  %bound0 = icmp ult ptr %.07596, %i.af
  %bound0.a = icmp ult ptr %i.ac, %i.ad
  %found.conflict = and i1 %bound0, %bound0.a
  %6 = getelementptr i8, ptr %.07695, i64 %.07497 ; 2 uses
  %bound0125 = icmp ult ptr %.07596, %6
  %bound1126 = icmp ult ptr %.07695, %i.ad
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx = or i1 %found.conflict, %found.conflict127
  %bound0128 = icmp ult ptr %i.ac, %6
  %bound1129 = icmp ult ptr %.07695, %i.af
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx131 = or i1 %conflict.rdx, %found.conflict130
  br i1 %conflict.rdx131, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check132 = icmp ult i64 %.07497, 32
  br i1 %min.iters.check132, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <16 x i8>, ptr %i.ag, align 16, !tbaa !8
  %wide.load133 = load <16 x i8>, ptr %i.ah, align 16, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %.07695, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load134 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !8, !alias.scope !78
  %wide.load135 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !8, !alias.scope !78
  %i.ak = xor <16 x i8> %wide.load134, %wide.load ; 2 uses
  %i.al = xor <16 x i8> %wide.load135, %wide.load133 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.07596, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <16 x i8> %i.ak, ptr %i.am, align 1, !tbaa !8, !alias.scope !79, !noalias !80
  store <16 x i8> %i.al, ptr %i.an, align 1, !tbaa !8, !alias.scope !79, !noalias !80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 %index ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load136 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !8, !alias.scope !81, !noalias !78
  %wide.load137 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !8, !alias.scope !81, !noalias !78
  %i.aq = xor <16 x i8> %wide.load136, %i.ak
  %i.ar = xor <16 x i8> %wide.load137, %i.al
  store <16 x i8> %i.aq, ptr %i.ao, align 1, !tbaa !8, !alias.scope !81, !noalias !78
  store <16 x i8> %i.ar, ptr %i.ap, align 1, !tbaa !8, !alias.scope !81, !noalias !78
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec138 = and i64 %.07497, 12                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index139 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next143, %vec.epilog.vector.body ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 %index139
  %wide.load140 = load <4 x i8>, ptr %i.as, align 4, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %.07695, i64 %index139
  %wide.load141 = load <4 x i8>, ptr %i.at, align 1, !tbaa !8, !alias.scope !78
  %i.au = xor <4 x i8> %wide.load141, %wide.load140 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.07596, i64 %index139
  store <4 x i8> %i.au, ptr %i.av, align 1, !tbaa !8, !alias.scope !79, !noalias !80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 %index139 ; 2 uses
  %wide.load142 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !8, !alias.scope !81, !noalias !78
  %i.ax = xor <4 x i8> %wide.load142, %i.au
  store <4 x i8> %i.ax, ptr %i.aw, align 1, !tbaa !8, !alias.scope !81, !noalias !78
  %index.next143 = add nuw i64 %index139, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next143, %n.vec138
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n144 = icmp eq i64 %.07497, %n.vec138
  br i1 %cmp.n144, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %indvars.iv106.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec138, %vec.epilog.middle.block ] ; 7 uses
  %.neg = or disjoint i64 %indvars.iv106.ph, 1
  %xtraiter = and i64 %.07497, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv106.ph
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %.07695, i64 %indvars.iv106.ph
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !8
  %i.bd = xor i8 %i.bc, %i.ba                     ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.07596, i64 %indvars.iv106.ph
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv106.ph ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bh = xor i8 %i.bg, %i.bd
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !8
  %indvars.iv.next107.prol = or disjoint i64 %indvars.iv106.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv106.unr = phi i64 [ %indvars.iv106.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next107.prol, %vec.epilog.scalar.ph.prol ]
  %i.bi = icmp eq i64 %.07497, %.neg
  br i1 %i.bi, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv106 = phi i64 [ %indvars.iv.next107.1, %vec.epilog.scalar.ph ], [ %indvars.iv106.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv106
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %.07695, i64 %indvars.iv106
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !8
  %i.bn = xor i8 %i.bm, %i.bk                     ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.07596, i64 %indvars.iv106
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv106 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !8
  %i.br = xor i8 %i.bq, %i.bn
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !8
  %indvars.iv.next107 = add nuw i64 %indvars.iv106, 1 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next107
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %.07695, i64 %indvars.iv.next107
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = xor i8 %i.bv, %i.bt                     ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.07596, i64 %indvars.iv.next107
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next107 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !8
  %i.ca = xor i8 %i.bz, %i.bw
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !8
  %indvars.iv.next107.1 = add nuw i64 %indvars.iv106, 2 ; 2 uses
  %exitcond109.not.1 = icmp eq i64 %indvars.iv.next107.1, %.07497
  br i1 %exitcond109.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !77

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block
  call void %i.c(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ac, ptr noundef %i.e) #6
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %bb.e, %.loopexit, %bb.f
  %i.cb = zext nneg i32 %i.k to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.cb
  %i.cc = sub nuw nsw i32 16, %i.k
  %i.cd = zext nneg i32 %i.cc to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 9) %i.cd, i1 false), !tbaa !8
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %i.e) #6
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cf = load <2 x i64>, ptr %5, align 16, !tbaa !8
  %i.cg = load <2 x i64>, ptr %i.ce, align 8, !tbaa !8
  %i.ch = xor <2 x i64> %i.cg, %i.cf
  store <2 x i64> %i.ch, ptr %i.ce, align 8, !tbaa !8
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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"long long", !4, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"ccm128_context", !4, i64 0, !4, i64 16, !9, i64 32, !10, i64 40, !10, i64 48}
!12 = !{!11, !9, i64 32}
!13 = !{!11, !10, i64 40}
end_hunk_1
