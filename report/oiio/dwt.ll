inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 79
begin_hunk_0_@opj_dwt_encode_and_deinterleave_v:bb.a
  br i1 %.not.1.i.3, label %opj_dwt_deinterleave_v_cols.exit, label %.lr.ph.1.i, !llvm.loop !72

bb.o:                                             ; preds = %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.pz = select i1 %.not, i32 0, i32 8           ; 2 uses
  %i.qa = zext nneg i32 %i.e to i64
  %i.qb = zext i32 %4 to i64                      ; 3 uses
  %i.qc = mul nuw nsw i64 %i.qa, %i.qb
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qc
  %i.qe = xor i32 %i.pz, 8
  %.not61.i245 = icmp eq i32 %i.e, 0
  br i1 %.not61.i245, label %._crit_edge.i254, label %.lr.ph.preheader.i246

.lr.ph.preheader.i246:                            ; preds = %bb.o
  %.pn70.pn.i247 = zext nneg i32 %i.pz to i64
  %.05375.i248 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn70.pn.i247
  br label %.lr.ph.i249

.lr.ph.i249:                                      ; preds = %bb.v, %.lr.ph.preheader.i246
  %.in.i250 = phi i32 [ %i.qf, %bb.v ], [ %i.e, %.lr.ph.preheader.i246 ]
  %.15469.i251 = phi ptr [ %i.rl, %bb.v ], [ %.05375.i248, %.lr.ph.preheader.i246 ] ; 8 uses
  %.15662.i252 = phi ptr [ %i.rk, %bb.v ], [ %0, %.lr.ph.preheader.i246 ] ; 8 uses
  %i.qf = add nsw i32 %.in.i250, -1               ; 2 uses
  switch i32 %5, label %bb.v [
    i32 2, label %bb.u
    i32 7, label %bb.p
    i32 6, label %bb.q
    i32 5, label %bb.r
    i32 4, label %bb.s
    i32 3, label %bb.t
  ]

bb.p:                                             ; preds = %.lr.ph.i249
  %i.qg = load i32, ptr %.15469.i251, align 4, !tbaa !3, !alias.scope !74, !noalias !77
  store i32 %i.qg, ptr %.15662.i252, align 4, !tbaa !3, !alias.scope !77, !noalias !74
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i249
  %.0.i = phi i32 [ 1, %bb.p ], [ 0, %.lr.ph.i249 ] ; 2 uses
  %i.qh = zext nneg i32 %.0.i to i64              ; 2 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %.15469.i251, i64 %i.qh
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !3, !alias.scope !74, !noalias !77
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %.15662.i252, i64 %i.qh
  store i32 %i.qj, ptr %i.qk, align 4, !tbaa !3, !alias.scope !77, !noalias !74
  %i.ql = add nuw nsw i32 %.0.i, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i249
  %.1.i = phi i32 [ %i.ql, %bb.q ], [ 0, %.lr.ph.i249 ] ; 2 uses
  %i.qm = zext nneg i32 %.1.i to i64              ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %.15469.i251, i64 %i.qm
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !3, !alias.scope !74, !noalias !77
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.15662.i252, i64 %i.qm
  store i32 %i.qo, ptr %i.qp, align 4, !tbaa !3, !alias.scope !77, !noalias !74
  %i.qq = add nuw nsw i32 %.1.i, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i249
  %.2.i = phi i32 [ %i.qq, %bb.r ], [ 0, %.lr.ph.i249 ] ; 2 uses
  %i.qr = zext nneg i32 %.2.i to i64              ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.15469.i251, i64 %i.qr
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !3, !alias.scope !74, !noalias !77
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.15662.i252, i64 %i.qr
  store i32 %i.qt, ptr %i.qu, align 4, !tbaa !3, !alias.scope !77, !noalias !74
  %i.qv = add nuw nsw i32 %.2.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i249
  %.3.i = phi i32 [ %i.qv, %bb.s ], [ 0, %.lr.ph.i249 ] ; 2 uses
  %i.qw = zext nneg i32 %.3.i to i64              ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %.15469.i251, i64 %i.qw
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !3, !alias.scope !74, !noalias !77
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.15662.i252, i64 %i.qw
  store i32 %i.qy, ptr %i.qz, align 4, !tbaa !3, !alias.scope !77, !noalias !74
  %i.ra = add nuw nsw i32 %.3.i, 1
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph.i249, %bb.t
  %.4.i = phi i32 [ %i.ra, %bb.t ], [ 0, %.lr.ph.i249 ] ; 2 uses
  %i.rb = zext nneg i32 %.4.i to i64              ; 2 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %.15469.i251, i64 %i.rb
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !3, !alias.scope !74, !noalias !77
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %.15662.i252, i64 %i.rb
  store i32 %i.rd, ptr %i.re, align 4, !tbaa !3, !alias.scope !77, !noalias !74
  %i.rf = add nuw nsw i32 %.4.i, 1
  %i.rg = zext nneg i32 %i.rf to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph.i249, %bb.u
  %.5.i = phi i64 [ 0, %.lr.ph.i249 ], [ %i.rg, %bb.u ] ; 2 uses
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %.15469.i251, i64 %.5.i
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !3, !alias.scope !74, !noalias !77
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %.15662.i252, i64 %.5.i
  store i32 %i.ri, ptr %i.rj, align 4, !tbaa !3, !alias.scope !77, !noalias !74
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.15662.i252, i64 %i.qb
  %i.rl = getelementptr inbounds nuw i8, ptr %.15469.i251, i64 64
  %.not.i253 = icmp eq i32 %i.qf, 0
  br i1 %.not.i253, label %._crit_edge.i254, label %.lr.ph.i249, !llvm.loop !72

._crit_edge.i254:                                 ; preds = %bb.v, %bb.o
  %.not61.1.i255 = icmp eq i32 %i.f, 0
  br i1 %.not61.1.i255, label %opj_dwt_deinterleave_v_cols.exit, label %.lr.ph.preheader.1.i256

.lr.ph.preheader.1.i256:                          ; preds = %._crit_edge.i254
  %.pn70.pn.1.i257 = zext nneg i32 %i.qe to i64
  %.05375.1.i258 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn70.pn.1.i257
  br label %.lr.ph.1.i259

.lr.ph.1.i259:                                    ; preds = %bb.ac, %.lr.ph.preheader.1.i256
  %.in.1.i260 = phi i32 [ %i.rm, %bb.ac ], [ %i.f, %.lr.ph.preheader.1.i256 ]
  %.15469.1.i261 = phi ptr [ %i.ss, %bb.ac ], [ %.05375.1.i258, %.lr.ph.preheader.1.i256 ] ; 8 uses
  %.15662.1.i262 = phi ptr [ %i.sr, %bb.ac ], [ %i.qd, %.lr.ph.preheader.1.i256 ] ; 8 uses
  %i.rm = add nsw i32 %.in.1.i260, -1             ; 2 uses
  switch i32 %5, label %bb.ac [
    i32 2, label %bb.ab
    i32 7, label %bb.w
    i32 6, label %bb.x
    i32 5, label %bb.y
    i32 4, label %bb.z
    i32 3, label %bb.aa
  ]

bb.w:                                             ; preds = %.lr.ph.1.i259
  %i.rn = load i32, ptr %.15469.1.i261, align 4, !tbaa !3, !alias.scope !74, !noalias !77
  store i32 %i.rn, ptr %.15662.1.i262, align 4, !tbaa !3, !alias.scope !77, !noalias !74
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.1.i259
  %.0.1.i = phi i32 [ 1, %bb.w ], [ 0, %.lr.ph.1.i259 ] ; 2 uses
  %i.ro = zext nneg i32 %.0.1.i to i64            ; 2 uses
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i261, i64 %i.ro
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !3, !alias.scope !74, !noalias !77
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i262, i64 %i.ro
  store i32 %i.rq, ptr %i.rr, align 4, !tbaa !3, !alias.scope !77, !noalias !74
  %i.rs = add nuw nsw i32 %.0.1.i, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.1.i259
  %.1.1.i = phi i32 [ %i.rs, %bb.x ], [ 0, %.lr.ph.1.i259 ] ; 2 uses
  %i.rt = zext nneg i32 %.1.1.i to i64            ; 2 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i261, i64 %i.rt
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !3, !alias.scope !74, !noalias !77
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i262, i64 %i.rt
  store i32 %i.rv, ptr %i.rw, align 4, !tbaa !3, !alias.scope !77, !noalias !74
  %i.rx = add nuw nsw i32 %.1.1.i, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.1.i259
  %.2.1.i = phi i32 [ %i.rx, %bb.y ], [ 0, %.lr.ph.1.i259 ] ; 2 uses
  %i.ry = zext nneg i32 %.2.1.i to i64            ; 2 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i261, i64 %i.ry
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !3, !alias.scope !74, !noalias !77
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i262, i64 %i.ry
  store i32 %i.sa, ptr %i.sb, align 4, !tbaa !3, !alias.scope !77, !noalias !74
  %i.sc = add nuw nsw i32 %.2.1.i, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.1.i259
  %.3.1.i = phi i32 [ %i.sc, %bb.z ], [ 0, %.lr.ph.1.i259 ] ; 2 uses
  %i.sd = zext nneg i32 %.3.1.i to i64            ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i261, i64 %i.sd
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !3, !alias.scope !74, !noalias !77
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i262, i64 %i.sd
  store i32 %i.sf, ptr %i.sg, align 4, !tbaa !3, !alias.scope !77, !noalias !74
  %i.sh = add nuw nsw i32 %.3.1.i, 1
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.1.i259, %bb.aa
  %.4.1.i = phi i32 [ %i.sh, %bb.aa ], [ 0, %.lr.ph.1.i259 ] ; 2 uses
  %i.si = zext nneg i32 %.4.1.i to i64            ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i261, i64 %i.si
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !3, !alias.scope !74, !noalias !77
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i262, i64 %i.si
  store i32 %i.sk, ptr %i.sl, align 4, !tbaa !3, !alias.scope !77, !noalias !74
  %i.sm = add nuw nsw i32 %.4.1.i, 1
  %i.sn = zext nneg i32 %i.sm to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.1.i259, %bb.ab
  %.5.1.i = phi i64 [ 0, %.lr.ph.1.i259 ], [ %i.sn, %bb.ab ] ; 2 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i261, i64 %.5.1.i
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !3, !alias.scope !74, !noalias !77
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i262, i64 %.5.1.i
  store i32 %i.sp, ptr %i.sq, align 4, !tbaa !3, !alias.scope !77, !noalias !74
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i262, i64 %i.qb
  %i.ss = getelementptr inbounds nuw i8, ptr %.15469.1.i261, i64 64
  %.not.1.i263 = icmp eq i32 %i.rm, 0
  br i1 %.not.1.i263, label %opj_dwt_deinterleave_v_cols.exit, label %.lr.ph.1.i259, !llvm.loop !72

opj_dwt_deinterleave_v_cols.exit:                 ; preds = %bb.ac, %.lr.ph.1.i.prol.loopexit, %.lr.ph.1.i, %._crit_edge.i254, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @opj_dwt_encode_and_deinterleave_h_one_row(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) #3 {
bb.a:
  %.not = icmp ne i32 %3, 0                       ; 2 uses
  %i.a = zext i1 %.not to i32
  %i.b = add i32 %2, %i.a                         ; 3 uses
  %i.c = lshr i32 %i.b, 1                         ; 11 uses
  %i.d = sub i32 %2, %i.c                         ; 10 uses
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i32 %2, 1
  br i1 %i.e, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.b
  %i.f = add nsw i32 %i.c, -1                     ; 6 uses
  %i.g = icmp ugt i32 %i.b, 3
  br i1 %i.g, label %.lr.ph132.preheader, label %._crit_edge133

.lr.ph132.preheader:                              ; preds = %.preheader
  %i.h = zext nneg i32 %i.c to i64                ; 2 uses
  %wide.trip.count152 = zext i32 %i.f to i64      ; 7 uses
  %invariant.gep166 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.h ; 5 uses
  %min.iters.check210 = icmp ult i32 %i.f, 9
  br i1 %min.iters.check210, label %.lr.ph132.preheader252, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph132.preheader
  %i.i = add nuw nsw i64 %i.h, %wide.trip.count152
  %i.j = shl nuw nsw i64 %i.i, 2
  %scevgep204 = getelementptr i8, ptr %1, i64 %i.j
  %i.k = shl nuw nsw i64 %wide.trip.count152, 3
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  %scevgep205 = getelementptr i8, ptr %i.l, i64 4
  %bound0206 = icmp ult ptr %invariant.gep166, %scevgep205
  %bound1207 = icmp ult ptr %0, %scevgep204
  %found.conflict208 = and i1 %bound0206, %bound1207
  br i1 %found.conflict208, label %.lr.ph132.preheader252, label %vector.ph211

vector.ph211:                                     ; preds = %vector.memcheck203
  %i.m = and i64 %wide.trip.count152, 7           ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 8, i64 %i.m
  %n.vec212 = sub nsw i64 %wide.trip.count152, %i.o ; 2 uses
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph211
  %index214 = phi i64 [ 0, %vector.ph211 ], [ %index.next225, %vector.body213 ] ; 4 uses
  %i.p = shl nuw nsw i64 %index214, 3
  %i.q = shl i64 %index214, 3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  %wide.vec215 = load <8 x i32>, ptr %i.u, align 4, !tbaa !3, !alias.scope !79 ; 2 uses
  %strided.vec216 = shufflevector <8 x i32> %wide.vec215, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec217 = shufflevector <8 x i32> %wide.vec215, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec218 = load <8 x i32>, ptr %i.v, align 4, !tbaa !3, !alias.scope !79 ; 2 uses
  %strided.vec219 = shufflevector <8 x i32> %wide.vec218, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec220 = shufflevector <8 x i32> %wide.vec218, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec221 = load <8 x i32>, ptr %i.r, align 4, !tbaa !3, !alias.scope !79
  %strided.vec222 = shufflevector <8 x i32> %wide.vec221, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec223 = load <8 x i32>, ptr %i.t, align 4, !tbaa !3, !alias.scope !79
  %strided.vec224 = shufflevector <8 x i32> %wide.vec223, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.w = add nsw <4 x i32> %strided.vec217, %strided.vec222
  %i.x = add nsw <4 x i32> %strided.vec220, %strided.vec224
  %i.y = ashr <4 x i32> %i.w, splat (i32 1)
  %i.z = ashr <4 x i32> %i.x, splat (i32 1)
  %i.aa = sub nsw <4 x i32> %strided.vec216, %i.y
  %i.ab = sub nsw <4 x i32> %strided.vec219, %i.z
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep166, i64 %index214 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x i32> %i.aa, ptr %i.ac, align 4, !tbaa !3, !alias.scope !82, !noalias !79
  store <4 x i32> %i.ab, ptr %i.ad, align 4, !tbaa !3, !alias.scope !82, !noalias !79
  %index.next225 = add nuw i64 %index214, 8       ; 2 uses
  %i.ae = icmp eq i64 %index.next225, %n.vec212
  br i1 %i.ae, label %.lr.ph132.preheader252, label %vector.body213, !llvm.loop !84

.lr.ph132.preheader252:                           ; preds = %vector.body213, %vector.memcheck203, %.lr.ph132.preheader
  %indvars.iv149.ph = phi i64 [ 0, %vector.memcheck203 ], [ 0, %.lr.ph132.preheader ], [ %n.vec212, %vector.body213 ] ; 6 uses
  %i.af = sub nsw i64 %wide.trip.count152, %indvars.iv149.ph
  %xtraiter257.a = and i64 %i.af, 1
  %lcmp.mod258.not.a = icmp eq i64 %xtraiter257.a, 0
  br i1 %lcmp.mod258.not.a, label %.lr.ph132.prol.loopexit, label %.lr.ph132.prol

.lr.ph132.prol:                                   ; preds = %.lr.ph132.preheader252
  %.idx161.prol = shl nuw nsw i64 %indvars.iv149.ph, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.idx161.prol ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !3
  %indvars.iv.next150.prol = add nuw nsw i64 %indvars.iv149.ph, 1 ; 2 uses
  %.idx162.prol = shl nuw nsw i64 %indvars.iv.next150.prol, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.idx162.prol
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = add nsw i32 %i.al, %i.aj
  %i.an = ashr i32 %i.am, 1
  %i.ao = sub nsw i32 %i.ai, %i.an
  %gep167.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep166, i64 %indvars.iv149.ph
  store i32 %i.ao, ptr %gep167.prol, align 4, !tbaa !3
  br label %.lr.ph132.prol.loopexit

.lr.ph132.prol.loopexit:                          ; preds = %.lr.ph132.prol, %.lr.ph132.preheader252
  %indvars.iv149.unr = phi i64 [ %indvars.iv149.ph, %.lr.ph132.preheader252 ], [ %indvars.iv.next150.prol, %.lr.ph132.prol ]
  %i.ap = add nsw i64 %wide.trip.count152, -1
  %i.aq = icmp eq i64 %indvars.iv149.ph, %i.ap
  br i1 %i.aq, label %._crit_edge133, label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132.prol.loopexit, %.lr.ph132
  %indvars.iv149 = phi i64 [ %indvars.iv.next150.1, %.lr.ph132 ], [ %indvars.iv149.unr, %.lr.ph132.prol.loopexit ] ; 4 uses
  %.idx161 = shl nuw nsw i64 %indvars.iv149, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.idx161 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !3
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 3 uses
  %.idx162 = shl nuw nsw i64 %indvars.iv.next150, 3
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.idx162
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = add nsw i32 %i.aw, %i.au
  %i.ay = ashr i32 %i.ax, 1
  %i.az = sub nsw i32 %i.at, %i.ay
  %gep167 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep166, i64 %indvars.iv149
  store i32 %i.az, ptr %gep167, align 4, !tbaa !3
  %.idx161.1 = shl nuw nsw i64 %indvars.iv.next150, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.idx161.1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = load i32, ptr %i.ba, align 4, !tbaa !3
  %indvars.iv.next150.1 = add nuw nsw i64 %indvars.iv149, 2 ; 3 uses
  %.idx162.1 = shl nuw nsw i64 %indvars.iv.next150.1, 3
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.idx162.1
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = add nsw i32 %i.bf, %i.bd
  %i.bh = ashr i32 %i.bg, 1
  %i.bi = sub nsw i32 %i.bc, %i.bh
  %gep167.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep166, i64 %indvars.iv.next150
  store i32 %i.bi, ptr %gep167.1, align 4, !tbaa !3
  %exitcond153.not.1 = icmp eq i64 %indvars.iv.next150.1, %wide.trip.count152
  br i1 %exitcond153.not.1, label %._crit_edge133, label %.lr.ph132, !llvm.loop !85

._crit_edge133:                                   ; preds = %.lr.ph132.prol.loopexit, %.lr.ph132, %.preheader
  %.0116.lcssa = phi i32 [ 0, %.preheader ], [ %i.f, %.lr.ph132 ], [ %i.f, %.lr.ph132.prol.loopexit ] ; 2 uses
  %i.bj = and i32 %2, 1
  %i.bk = icmp eq i32 %i.bj, 0                    ; 2 uses
  br i1 %i.bk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge133
  %i.bl = shl nuw nsw i32 %.0116.lcssa, 1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.br = sub nsw i32 %i.bp, %i.bq
  %i.bs = add nuw nsw i32 %.0116.lcssa, %i.c
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bt
  store i32 %i.br, ptr %i.bu, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge133
  %i.bv = zext nneg i32 %i.c to i64               ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = shl nsw i32 %i.bx, 1
  %i.bz = add nsw i32 %i.by, 2
  %i.ca = ashr i32 %i.bz, 2
  %i.cb = load i32, ptr %0, align 4, !tbaa !3
  %i.cc = add nsw i32 %i.ca, %i.cb
  store i32 %i.cc, ptr %0, align 4, !tbaa !3
  %i.cd = icmp sgt i32 %i.d, 1
  br i1 %i.cd, label %.lr.ph137, label %._crit_edge138

.lr.ph137:                                        ; preds = %bb.d
  %4 = sext i32 %i.f to i64
  %i.ce = zext nneg i32 %i.c to i64               ; 2 uses
  %wide.trip.count157 = zext nneg i32 %i.d to i64 ; 6 uses
  %invariant.gep168 = getelementptr [4 x i8], ptr %1, i64 %4 ; 4 uses
  %invariant.gep168.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ce ; 5 uses
  %i.cf = add nsw i64 %wide.trip.count157, -1     ; 2 uses
  %min.iters.check236 = icmp ult i32 %i.d, 10
  br i1 %min.iters.check236, label %scalar.ph235.preheader, label %vector.memcheck228

vector.memcheck228:                               ; preds = %.lr.ph137
  %scevgep229 = getelementptr i8, ptr %0, i64 4
  %i.cg = shl nuw nsw i64 %wide.trip.count157, 2
  %scevgep230 = getelementptr i8, ptr %0, i64 %i.cg
  %i.ch = add nuw nsw i64 %i.ce, %wide.trip.count157
  %i.ci = shl nuw nsw i64 %i.ch, 2
  %scevgep231 = getelementptr i8, ptr %1, i64 %i.ci
  %bound0232 = icmp ult ptr %scevgep229, %scevgep231
  %bound1233 = icmp ult ptr %invariant.gep168.a, %scevgep230
  %found.conflict234 = and i1 %bound0232, %bound1233
  br i1 %found.conflict234, label %scalar.ph235.preheader, label %vector.ph237

vector.ph237:                                     ; preds = %vector.memcheck228
  %i.cj = and i64 %i.cf, 7                        ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = select i1 %i.ck, i64 8, i64 %i.cj
  %n.vec238 = sub nsw i64 %i.cf, %i.cl            ; 2 uses
  %i.cm = add nsw i64 %n.vec238, 1
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph237
  %index240 = phi i64 [ 0, %vector.ph237 ], [ %index.next249, %vector.body239 ] ; 3 uses
  %i.cn = or disjoint i64 %index240, 1            ; 4 uses
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = shl i64 %index240, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %i.co
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cp
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %wide.vec241 = load <8 x i32>, ptr %i.cq, align 4, !tbaa !3, !alias.scope !86
  %strided.vec242 = shufflevector <8 x i32> %wide.vec241, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec243 = load <8 x i32>, ptr %i.cs, align 4, !tbaa !3, !alias.scope !86
  %strided.vec244 = shufflevector <8 x i32> %wide.vec243, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ct = getelementptr [4 x i8], ptr %invariant.gep168, i64 %i.cn ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  %wide.load245 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !3, !alias.scope !89
  %wide.load246 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !3, !alias.scope !89
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep168.a, i64 %i.cn ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load247 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !3, !alias.scope !89
  %wide.load248 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !3, !alias.scope !89
  %i.cx = add <4 x i32> %wide.load245, splat (i32 2)
  %i.cy = add <4 x i32> %wide.load246, splat (i32 2)
  %i.cz = add <4 x i32> %i.cx, %wide.load247
  %i.da = add <4 x i32> %i.cy, %wide.load248
  %i.db = ashr <4 x i32> %i.cz, splat (i32 2)
  %i.dc = ashr <4 x i32> %i.da, splat (i32 2)
  %i.dd = add nsw <4 x i32> %i.db, %strided.vec242
  %i.de = add nsw <4 x i32> %i.dc, %strided.vec244
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cn ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <4 x i32> %i.dd, ptr %i.df, align 4, !tbaa !3, !alias.scope !91, !noalias !89
  store <4 x i32> %i.de, ptr %i.dg, align 4, !tbaa !3, !alias.scope !91, !noalias !89
  %index.next249 = add nuw i64 %index240, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next249, %n.vec238
  br i1 %i.dh, label %scalar.ph235.preheader, label %vector.body239, !llvm.loop !93

scalar.ph235.preheader:                           ; preds = %vector.body239, %vector.memcheck228, %.lr.ph137
  %indvars.iv154.ph = phi i64 [ 1, %vector.memcheck228 ], [ 1, %.lr.ph137 ], [ %i.cm, %vector.body239 ] ; 8 uses
  %i.di = sub nsw i64 %wide.trip.count157, %indvars.iv154.ph
  %xtraiter259 = and i64 %i.di, 1
  %lcmp.mod260.not = icmp eq i64 %xtraiter259, 0
  br i1 %lcmp.mod260.not, label %scalar.ph235.prol.loopexit, label %scalar.ph235.prol

scalar.ph235.prol:                                ; preds = %scalar.ph235.preheader
  %.idx163.prol = shl nuw nsw i64 %indvars.iv154.ph, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx163.prol
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = getelementptr [4 x i8], ptr %invariant.gep168, i64 %indvars.iv154.ph
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %gep169.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep168.a, i64 %indvars.iv154.ph
  %i.dn = load i32, ptr %gep169.prol, align 4, !tbaa !3
  %i.do = add i32 %i.dm, 2
  %i.dp = add i32 %i.do, %i.dn
  %i.dq = ashr i32 %i.dp, 2
  %i.dr = add nsw i32 %i.dq, %i.dk
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv154.ph
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !3
  %indvars.iv.next155.prol = add nuw nsw i64 %indvars.iv154.ph, 1
  br label %scalar.ph235.prol.loopexit

scalar.ph235.prol.loopexit:                       ; preds = %scalar.ph235.prol, %scalar.ph235.preheader
  %indvars.iv154.unr = phi i64 [ %indvars.iv154.ph, %scalar.ph235.preheader ], [ %indvars.iv.next155.prol, %scalar.ph235.prol ]
  %i.dt = add nsw i64 %wide.trip.count157, -1
  %i.du = icmp eq i64 %indvars.iv154.ph, %i.dt
  br i1 %i.du, label %._crit_edge138, label %scalar.ph235

scalar.ph235:                                     ; preds = %scalar.ph235.prol.loopexit, %scalar.ph235
  %indvars.iv154 = phi i64 [ %indvars.iv.next155.1, %scalar.ph235 ], [ %indvars.iv154.unr, %scalar.ph235.prol.loopexit ] ; 6 uses
  %.idx163 = shl nuw nsw i64 %indvars.iv154, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %.idx163
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = getelementptr [4 x i8], ptr %invariant.gep168, i64 %indvars.iv154
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3
  %gep169 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep168.a, i64 %indvars.iv154
  %i.dz = load i32, ptr %gep169, align 4, !tbaa !3
  %i.ea = add i32 %i.dy, 2
  %i.eb = add i32 %i.ea, %i.dz
  %i.ec = ashr i32 %i.eb, 2
  %i.ed = add nsw i32 %i.ec, %i.dw
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv154
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !3
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 4 uses
  %.idx163.1 = shl nuw nsw i64 %indvars.iv.next155, 3
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 %.idx163.1
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3
  %i.eh = getelementptr [4 x i8], ptr %invariant.gep168, i64 %indvars.iv.next155
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3
  %gep169.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep168.a, i64 %indvars.iv.next155
  %i.ej = load i32, ptr %gep169.1, align 4, !tbaa !3
  %i.ek = add i32 %i.ei, 2
  %i.el = add i32 %i.ek, %i.ej
  %i.em = ashr i32 %i.el, 2
  %i.en = add nsw i32 %i.em, %i.eg
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next155
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !3
  %indvars.iv.next155.1 = add nuw nsw i64 %indvars.iv154, 2 ; 2 uses
  %exitcond158.not.1 = icmp eq i64 %indvars.iv.next155.1, %wide.trip.count157
  br i1 %exitcond158.not.1, label %._crit_edge138, label %scalar.ph235, !llvm.loop !94

._crit_edge138:                                   ; preds = %scalar.ph235.prol.loopexit, %scalar.ph235, %bb.d
  %.1117.lcssa = phi i32 [ 1, %bb.d ], [ %i.d, %scalar.ph235 ], [ %i.d, %scalar.ph235.prol.loopexit ] ; 3 uses
  br i1 %i.bk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge138
  %i.ep = shl nuw nsw i32 %.1117.lcssa, 1
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3
  %i.et = add i32 %i.f, %.1117.lcssa
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = shl nsw i32 %i.ew, 1
  %i.ey = add nsw i32 %i.ex, 2
  %i.ez = ashr i32 %i.ey, 2
  %i.fa = add nsw i32 %i.ez, %i.es
  %i.fb = zext nneg i32 %.1117.lcssa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fb
  store i32 %i.fa, ptr %i.fc, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge138
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bv
  %i.fe = sext i32 %i.d to i64
  %i.ff = shl nsw i64 %i.fe, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr nonnull align 4 %i.bw, i64 %i.ff, i1 false)
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.fg = icmp eq i32 %2, 1
  %i.fh = load i32, ptr %0, align 4, !tbaa !3     ; 2 uses
  br i1 %i.fg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fi = shl nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %0, align 4, !tbaa !3
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3
  %i.fl = sub nsw i32 %i.fh, %i.fk
  %i.fm = zext nneg i32 %i.c to i64               ; 11 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fm ; 2 uses
  store i32 %i.fl, ptr %i.fn, align 4, !tbaa !3
  %i.fo = icmp ugt i32 %i.b, 3
  br i1 %i.fo, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fm ; 4 uses
  %i.fp = add nsw i64 %i.fm, -1                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.fp, 9
  br i1 %min.iters.check, label %.lr.ph.preheader254, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.fq = shl nuw nsw i64 %i.fm, 2
  %i.fr = getelementptr i8, ptr %1, i64 %i.fq
  %scevgep = getelementptr i8, ptr %i.fr, i64 4
  %i.fs = shl nuw nsw i64 %i.fm, 3                ; 2 uses
  %scevgep170 = getelementptr i8, ptr %1, i64 %i.fs
  %scevgep171 = getelementptr i8, ptr %0, i64 4
  %scevgep172 = getelementptr i8, ptr %0, i64 %i.fs
  %bound0 = icmp ult ptr %scevgep, %scevgep172
  %bound1 = icmp ult ptr %scevgep171, %scevgep170
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader254, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ft = and i64 %i.fp, 7                        ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  %i.fv = select i1 %i.fu, i64 8, i64 %i.ft
  %n.vec = sub nsw i64 %i.fp, %i.fv               ; 2 uses
  %i.fw = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fx = or disjoint i64 %index, 1               ; 2 uses
  %i.fy = shl i64 %i.fx, 3
  %i.fz = shl i64 %index, 3
  %i.ga = getelementptr i8, ptr %0, i64 %i.fy     ; 2 uses
  %i.gb = getelementptr i8, ptr %0, i64 %i.fz     ; 2 uses
  %i.gc = getelementptr i8, ptr %i.ga, i64 -4
  %i.gd = getelementptr i8, ptr %i.gb, i64 36
  %wide.vec = load <8 x i32>, ptr %i.gc, align 4, !tbaa !3, !alias.scope !95 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec173 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec174 = load <8 x i32>, ptr %i.gd, align 4, !tbaa !3, !alias.scope !95 ; 2 uses
  %strided.vec175 = shufflevector <8 x i32> %wide.vec174, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec176 = shufflevector <8 x i32> %wide.vec174, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gf = getelementptr i8, ptr %i.gb, i64 44
  %wide.vec177 = load <8 x i32>, ptr %i.ge, align 4, !tbaa !3, !alias.scope !95
  %strided.vec178 = shufflevector <8 x i32> %wide.vec177, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec179 = load <8 x i32>, ptr %i.gf, align 4, !tbaa !3, !alias.scope !95
  %strided.vec180 = shufflevector <8 x i32> %wide.vec179, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.gg = add nsw <4 x i32> %strided.vec, %strided.vec178
  %i.gh = add nsw <4 x i32> %strided.vec175, %strided.vec180
  %i.gi = ashr <4 x i32> %i.gg, splat (i32 1)
  %i.gj = ashr <4 x i32> %i.gh, splat (i32 1)
  %i.gk = sub nsw <4 x i32> %strided.vec173, %i.gi
  %i.gl = sub nsw <4 x i32> %strided.vec176, %i.gj
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.fx ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <4 x i32> %i.gk, ptr %i.gm, align 4, !tbaa !3, !alias.scope !98, !noalias !95
  store <4 x i32> %i.gl, ptr %i.gn, align 4, !tbaa !3, !alias.scope !98, !noalias !95
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.go = icmp eq i64 %index.next, %n.vec
  br i1 %i.go, label %.lr.ph.preheader254, label %vector.body, !llvm.loop !100

.lr.ph.preheader254:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.fw, %vector.body ] ; 6 uses
  %i.gp = sub nsw i64 %i.fm, %indvars.iv.ph
  %xtraiter = and i64 %i.gp, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader254
  %.idx.prol = shl nsw i64 %indvars.iv.ph, 3
  %i.gq = getelementptr i8, ptr %0, i64 %.idx.prol ; 3 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !3
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gu = getelementptr i8, ptr %i.gq, i64 -4
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = add nsw i32 %i.gv, %i.gt
  %i.gx = ashr i32 %i.gw, 1
  %i.gy = sub nsw i32 %i.gr, %i.gx
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  store i32 %i.gy, ptr %gep.prol, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader254
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader254 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.gz = add nsw i64 %i.fm, -1
  %i.ha = icmp eq i64 %indvars.iv.ph, %i.gz
  br i1 %i.ha, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.idx = shl i64 %indvars.iv, 3
  %i.hb = getelementptr i8, ptr %0, i64 %.idx     ; 3 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3
  %i.hf = getelementptr i8, ptr %i.hb, i64 -4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !3
  %i.hh = add nsw i32 %i.hg, %i.he
  %i.hi = ashr i32 %i.hh, 1
  %i.hj = sub nsw i32 %i.hc, %i.hi
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.hj, ptr %gep, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.idx.1 = shl i64 %indvars.iv.next, 3
  %i.hk = getelementptr i8, ptr %0, i64 %.idx.1   ; 3 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !3
  %i.ho = getelementptr i8, ptr %i.hk, i64 -4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hq = add nsw i32 %i.hp, %i.hn
  %i.hr = ashr i32 %i.hq, 1
  %i.hs = sub nsw i32 %i.hl, %i.hr
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store i32 %i.hs, ptr %gep.1, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.fm
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !101

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.i
  %.0.lcssa = phi i32 [ 1, %bb.i ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.ht = and i32 %2, 1
  %.not123 = icmp eq i32 %i.ht, 0                 ; 2 uses
  br i1 %.not123, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.hu = shl nuw nsw i32 %.0.lcssa, 1
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr [4 x i8], ptr %0, i64 %i.hv ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !3
  %i.hy = getelementptr i8, ptr %i.hw, i64 -4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !3
  %i.ia = sub nsw i32 %i.hx, %i.hz
  %i.ib = add nuw nsw i32 %.0.lcssa, %i.c
  %i.ic = zext nneg i32 %i.ib to i64
end_hunk_0
begin_hunk_1_@opj_dwt_decode:bb.a
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !137 ; 2 uses
  %i.fk = load i32, ptr %i.ed, align 8, !tbaa !29 ; 2 uses
  %i.fl = sub i32 %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ed, i64 180
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !138
  %i.fo = load i32, ptr %i.ez, align 4, !tbaa !31 ; 2 uses
  %i.fp = sub i32 %i.fn, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ed, i64 184
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !139 ; 2 uses
  %i.fs = sub i32 %i.fr, %i.fk
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ed, i64 188
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !140
  %i.fv = sub i32 %i.fu, %i.fo
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !141
  %i.fy = sub i32 %i.fr, %i.fj
  %i.fz = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.fl, i32 noundef %i.fp, i32 noundef %i.fs, i32 noundef %i.fv, ptr noundef %i.fx, i32 noundef 1, i32 noundef %i.fy, i32 noundef 1) #15 ; 0 uses
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  br label %opj_dwt_decode_partial_tile.exit

.lr.ph.i.i6:                                      ; preds = %.lr.ph.i.i6, %.lr.ph.i.i6.preheader.new
  %.017.i.i7 = phi i32 [ 0, %.lr.ph.i.i6.preheader.new ], [ %.2.i.i10.1, %.lr.ph.i.i6 ]
  %.01116.i.i8 = phi ptr [ %i.ea, %.lr.ph.i.i6.preheader.new ], [ %i.gk, %.lr.ph.i.i6 ] ; 8 uses
  %niter141 = phi i32 [ 0, %.lr.ph.i.i6.preheader.new ], [ %niter141.next.1, %.lr.ph.i.i6 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 192
  %i.gb = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 200
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !24, !alias.scope !142
  %i.gd = load i32, ptr %i.ga, align 8, !tbaa !29, !alias.scope !142
  %i.ge = sub nsw i32 %i.gc, %i.gd
  %spec.select.i.i9 = tail call i32 @llvm.umax.i32(i32 %.017.i.i7, i32 %i.ge)
  %i.gf = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 204
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !30, !alias.scope !142
  %i.gh = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 196
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !31, !alias.scope !142
  %i.gj = sub nsw i32 %i.gg, %i.gi
  %.2.i.i10 = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i9, i32 %i.gj)
  %i.gk = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 384 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 392
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !24, !alias.scope !142
  %i.gn = load i32, ptr %i.gk, align 8, !tbaa !29, !alias.scope !142
  %i.go = sub nsw i32 %i.gm, %i.gn
  %spec.select.i.i9.1 = tail call i32 @llvm.umax.i32(i32 %.2.i.i10, i32 %i.go)
  %i.gp = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 396
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !30, !alias.scope !142
  %i.gr = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 388
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !31, !alias.scope !142
  %i.gt = sub nsw i32 %i.gq, %i.gs
  %.2.i.i10.1 = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i9.1, i32 %i.gt) ; 3 uses
  %niter141.next.1 = add i32 %niter141, 2         ; 2 uses
  %niter141.ncmp.1 = icmp eq i32 %niter141.next.1, %unroll_iter140
  br i1 %niter141.ncmp.1, label %opj_dwt_max_resolution.exit.i12.unr-lcssa, label %.lr.ph.i.i6, !llvm.loop !32

opj_dwt_max_resolution.exit.i12.unr-lcssa:        ; preds = %.lr.ph.i.i6
  %lcmp.mod137.not = icmp eq i32 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %opj_dwt_max_resolution.exit.i12, label %.lr.ph.i.i6.epil.preheader

.lr.ph.i.i6.epil.preheader:                       ; preds = %opj_dwt_max_resolution.exit.i12.unr-lcssa, %.lr.ph.i.i6.preheader
  %.017.i.i7.epil.init = phi i32 [ 0, %.lr.ph.i.i6.preheader ], [ %.2.i.i10.1, %opj_dwt_max_resolution.exit.i12.unr-lcssa ]
  %.01116.i.i8.epil.init = phi ptr [ %i.ea, %.lr.ph.i.i6.preheader ], [ %i.gk, %opj_dwt_max_resolution.exit.i12.unr-lcssa ] ; 4 uses
  %lcmp.mod139 = trunc i32 %i.eb to i1
  tail call void @llvm.assume(i1 %lcmp.mod139)
  %i.gu = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 192
  %i.gv = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 200
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !24, !alias.scope !142
  %i.gx = load i32, ptr %i.gu, align 8, !tbaa !29, !alias.scope !142
  %i.gy = sub nsw i32 %i.gw, %i.gx
  %spec.select.i.i9.epil = tail call i32 @llvm.umax.i32(i32 %.017.i.i7.epil.init, i32 %i.gy)
  %i.gz = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 204
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !30, !alias.scope !142
  %i.hb = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 196
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !31, !alias.scope !142
  %i.hd = sub nsw i32 %i.ha, %i.hc
  %.2.i.i10.epil = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i9.epil, i32 %i.hd)
  br label %opj_dwt_max_resolution.exit.i12

opj_dwt_max_resolution.exit.i12:                  ; preds = %opj_dwt_max_resolution.exit.i12.unr-lcssa, %.lr.ph.i.i6.epil.preheader
  %.2.i.i10.lcssa = phi i32 [ %.2.i.i10.1, %opj_dwt_max_resolution.exit.i12.unr-lcssa ], [ %.2.i.i10.epil, %.lr.ph.i.i6.epil.preheader ]
  %i.he = zext i32 %.2.i.i10.lcssa to i64
  %i.hf = shl nuw nsw i64 %i.he, 4
  %i.hg = tail call ptr @opj_aligned_32_malloc(i64 noundef %i.hf) #15 ; 141 uses
  %.not.i13 = icmp eq ptr %i.hg, null
  br i1 %.not.i13, label %bb.w, label %.preheader294.i

.preheader294.i:                                  ; preds = %opj_dwt_max_resolution.exit.i12
  %.not305.i = icmp eq i32 %2, 0
  br i1 %.not305.i, label %._crit_edge.i18, label %.lr.ph300.i

.lr.ph300.i:                                      ; preds = %.preheader294.i
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.not62.i.not.i = icmp eq i32 %i.eo, 0
  %i.hi = zext i32 %i.eo to i64
  %.not64.i.not.i = icmp eq i32 %i.eq, 0
  %i.hj = zext i32 %i.eq to i64
  %.not66.i.not.i = icmp eq i32 %i.es, 0
  %i.hk = zext i32 %i.es to i64
  %.not68.i.not.i = icmp eq i32 %i.eu, 0
  %i.hl = zext i32 %i.eu to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 4 ; 9 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 12 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 17179869168 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hg, i64 17179869172 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hg, i64 17179869180 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 9 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hg, i64 20 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hg, i64 24 ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hg, i64 28 ; 5 uses
  %scevgep96.a = getelementptr i8, ptr %i.hg, i64 4
  %scevgep100.a = getelementptr i8, ptr %i.hg, i64 4
  %scevgep102.a = getelementptr i8, ptr %i.hg, i64 8
  %scevgep104.a = getelementptr i8, ptr %i.hg, i64 4
  %scevgep106 = getelementptr i8, ptr %i.hg, i64 8
  br label %bb.x

bb.w:                                             ; preds = %opj_dwt_max_resolution.exit.i12
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  br label %opj_dwt_decode_partial_tile.exit

bb.x:                                             ; preds = %bb.bs, %.lr.ph300.i
  %.0181299.i = phi i32 [ %i.em, %.lr.ph300.i ], [ %i.if, %bb.bs ] ; 13 uses
  %.0182298.i = phi i32 [ %i.eh, %.lr.ph300.i ], [ %i.ia, %bb.bs ] ; 11 uses
  %.0183297.i = phi ptr [ %i.ea, %.lr.ph300.i ], [ %i.hw, %bb.bs ] ; 8 uses
  %.0184296.i = phi i32 [ 1, %.lr.ph300.i ], [ %i.asp, %bb.bs ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.0183297.i, i64 192 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.0183297.i, i64 200
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !24
  %i.hz = load i32, ptr %i.hw, align 8, !tbaa !29 ; 2 uses
  %i.ia = sub i32 %i.hy, %i.hz                    ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0183297.i, i64 204
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !30
  %i.id = getelementptr inbounds nuw i8, ptr %.0183297.i, i64 196
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !31 ; 2 uses
  %i.if = sub i32 %i.ic, %i.ie                    ; 5 uses
  %i.ig = sub i32 %i.ia, %.0182298.i              ; 10 uses
  %i.ih = srem i32 %i.hz, 2                       ; 2 uses
  %i.ii = sub i32 %i.if, %.0181299.i              ; 11 uses
  %i.ij = srem i32 %i.ie, 2                       ; 2 uses
  %i.ik = load i32, ptr %i.hh, align 4, !tbaa !22 ; 2 uses
  %i.il = icmp eq i32 %i.ik, %.0184296.i
  br i1 %i.il, label %opj_dwt_get_band_coordinates.exit206.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.im = sub i32 %i.ik, %.0184296.i              ; 2 uses
  %i.in = zext i32 %i.im to i64                   ; 9 uses
  %notmask.i.i = shl nsw i64 -1, %i.in
  %i.io = xor i64 %notmask.i.i, -1                ; 8 uses
  %i.ip = add nuw i64 %i.io, %i.hi
  %i.iq = lshr i64 %i.ip, %i.in
  %i.ir = trunc i64 %i.iq to i32
  %.ph.i = select i1 %.not62.i.not.i, i32 0, i32 %i.ir ; 2 uses
  %i.is = add nuw i64 %i.io, %i.hj
  %i.it = lshr i64 %i.is, %i.in
  %i.iu = trunc i64 %i.it to i32
  %.ph275.i = select i1 %.not64.i.not.i, i32 0, i32 %i.iu ; 2 uses
  %i.iv = add nuw i64 %i.io, %i.hk
  %i.iw = lshr i64 %i.iv, %i.in
  %i.ix = trunc i64 %i.iw to i32
  %.ph278.i = select i1 %.not66.i.not.i, i32 0, i32 %i.ix ; 2 uses
  %i.iy = add nuw i64 %i.io, %i.hl
  %i.iz = lshr i64 %i.iy, %i.in
  %i.ja = trunc i64 %i.iz to i32
  %.ph280.i = select i1 %.not68.i.not.i, i32 0, i32 %i.ja ; 2 uses
  %i.jb = add i32 %i.im, -1
  %i.jc = shl nuw i32 1, %i.jb                    ; 8 uses
  %.not62.i197.i = icmp ugt i32 %i.eo, %i.jc
  %i.jd = sub nuw i32 %i.eo, %i.jc
  %i.je = zext i32 %i.jd to i64
  %i.jf = add nuw i64 %i.je, %i.io
  %i.jg = lshr i64 %i.jf, %i.in
  %i.jh = trunc i64 %i.jg to i32
  %.ph282.i = select i1 %.not62.i197.i, i32 %i.jh, i32 0 ; 2 uses
  %.not66.i198.i = icmp ugt i32 %i.es, %i.jc
  %i.ji = sub nuw i32 %i.es, %i.jc
  %i.jj = zext i32 %i.ji to i64
  %i.jk = add nuw i64 %i.jj, %i.io
  %i.jl = lshr i64 %i.jk, %i.in
  %i.jm = trunc i64 %i.jl to i32
  %.ph284.i = select i1 %.not66.i198.i, i32 %i.jm, i32 0 ; 2 uses
  %.not64.i202.i = icmp ugt i32 %i.eq, %i.jc
  %i.jn = sub nuw i32 %i.eq, %i.jc
  %i.jo = zext i32 %i.jn to i64
  %i.jp = add nuw i64 %i.jo, %i.io
  %i.jq = lshr i64 %i.jp, %i.in
  %i.jr = trunc i64 %i.jq to i32
  %.ph286.i = select i1 %.not64.i202.i, i32 %i.jr, i32 0 ; 2 uses
  %.not68.i203.i = icmp ugt i32 %i.eu, %i.jc
  br i1 %.not68.i203.i, label %bb.z, label %opj_dwt_get_band_coordinates.exit206.i

bb.z:                                             ; preds = %bb.y
  %i.js = sub nuw i32 %i.eu, %i.jc
  %i.jt = zext i32 %i.js to i64
  %i.ju = add nuw i64 %i.jt, %i.io
  %i.jv = lshr i64 %i.ju, %i.in
  %i.jw = trunc i64 %i.jv to i32
  br label %opj_dwt_get_band_coordinates.exit206.i

opj_dwt_get_band_coordinates.exit206.i:           ; preds = %bb.z, %bb.y, %bb.x
  %i.jx = phi i32 [ %.ph286.i, %bb.y ], [ %.ph286.i, %bb.z ], [ %i.eq, %bb.x ]
  %i.jy = phi i32 [ %.ph282.i, %bb.y ], [ %.ph282.i, %bb.z ], [ %i.eo, %bb.x ]
  %i.jz = phi i32 [ %.ph278.i, %bb.y ], [ %.ph278.i, %bb.z ], [ %i.es, %bb.x ]
  %i.ka = phi i32 [ %.ph.i, %bb.y ], [ %.ph.i, %bb.z ], [ %i.eo, %bb.x ] ; 5 uses
  %i.kb = phi i32 [ %.ph275.i, %bb.y ], [ %.ph275.i, %bb.z ], [ %i.eq, %bb.x ]
  %i.kc = phi i32 [ %.ph280.i, %bb.y ], [ %.ph280.i, %bb.z ], [ %i.eu, %bb.x ]
  %i.kd = phi i32 [ %.ph284.i, %bb.y ], [ %.ph284.i, %bb.z ], [ %i.es, %bb.x ]
  %i.ke = phi i32 [ 0, %bb.y ], [ %i.jw, %bb.z ], [ %i.eu, %bb.x ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.0183297.i, i64 224
  %i.kg = getelementptr inbounds nuw i8, ptr %.0183297.i, i64 272
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !145 ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.0183297.i, i64 228
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !149 ; 2 uses
  %i.kk = load i32, ptr %i.kf, align 8, !tbaa !145 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.0183297.i, i64 276
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !149 ; 2 uses
  %i.kn = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ka, i32 %i.kh) ; 3 uses
  %i.ko = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kb, i32 %i.kj)
  %i.kp = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.jz, i32 %i.kh)
  %i.kq = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kc, i32 %i.kj)
  %i.kr = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.jy, i32 %i.kk)
  %i.ks = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kd, i32 %i.kk)
  %i.kt = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.jx, i32 %i.km)
  %i.ku = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ke, i32 %i.km)
  %i.kv = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kn, i32 2) ; 12 uses
  %i.kw = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.kp, i32 range(i32 2, 5) 2)
  %i.kx = tail call noundef i32 @llvm.umin.i32(i32 %i.kw, i32 %.0182298.i) ; 8 uses
  %i.ky = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kr, i32 2) ; 8 uses
  %i.kz = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.ks, i32 range(i32 2, 5) 2)
  %i.la = tail call noundef i32 @llvm.umin.i32(i32 %i.kz, i32 %i.ig) ; 8 uses
  %i.lb = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ko, i32 2) ; 13 uses
  %i.lc = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.kq, i32 range(i32 2, 5) 2)
  %i.ld = tail call noundef i32 @llvm.umin.i32(i32 %i.lc, i32 %.0181299.i) ; 9 uses
  %i.le = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kt, i32 2) ; 9 uses
  %i.lf = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.ku, i32 range(i32 2, 5) 2)
  %i.lg = tail call noundef i32 @llvm.umin.i32(i32 %i.lf, i32 %i.ii) ; 8 uses
  %i.lh = icmp eq i32 %i.ih, 0                    ; 5 uses
  %.382.i.a = select i1 %i.lh, i32 %i.kv, i32 %i.ky
  %.383.i.a = select i1 %i.lh, i32 %i.ky, i32 %i.kv
  %.384.i.a = select i1 %i.lh, i32 %i.kx, i32 %i.la
  %.385.i = select i1 %i.lh, i32 %i.la, i32 %i.kx
  %i.li = shl i32 %.382.i.a, 1
  %i.lj = shl i32 %.383.i.a, 1
  %i.lk = or disjoint i32 %i.lj, 1
  %i.ll = tail call noundef i32 @llvm.umin.i32(i32 %i.li, i32 %i.lk) ; 3 uses
  %i.lm = shl i32 %.384.i.a, 1
  %i.ln = shl i32 %.385.i, 1
  %i.lo = or disjoint i32 %i.ln, 1
  %i.lp = tail call noundef i32 @llvm.umax.i32(i32 %i.lm, i32 %i.lo) ; 2 uses
  %i.lq = tail call noundef i32 @llvm.umin.i32(i32 %i.lp, i32 %i.ia) ; 5 uses
  %i.lr = icmp eq i32 %i.ij, 0                    ; 2 uses
  br i1 %i.lr, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %opj_dwt_get_band_coordinates.exit206.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %opj_dwt_get_band_coordinates.exit206.i
  %.sink381.i = phi i32 [ %i.le, %bb.aa ], [ %i.lb, %opj_dwt_get_band_coordinates.exit206.i ]
  %.sink380.i = phi i32 [ %i.lb, %bb.aa ], [ %i.le, %opj_dwt_get_band_coordinates.exit206.i ]
  %.sink376.i = phi i32 [ %i.lg, %bb.aa ], [ %i.ld, %opj_dwt_get_band_coordinates.exit206.i ]
  %.sink375.i = phi i32 [ %i.ld, %bb.aa ], [ %i.lg, %opj_dwt_get_band_coordinates.exit206.i ]
  %i.ls = shl i32 %.sink381.i, 1
  %i.lt = shl i32 %.sink380.i, 1
  %i.lu = or disjoint i32 %i.lt, 1
  %i.lv = tail call noundef i32 @llvm.umin.i32(i32 %i.ls, i32 %i.lu) ; 2 uses
  %i.lw = shl i32 %.sink376.i, 1
  %i.lx = shl i32 %.sink375.i, 1
  %i.ly = or disjoint i32 %i.lx, 1
  %i.lz = tail call noundef i32 @llvm.umax.i32(i32 %i.lw, i32 %i.ly)
  %i.ma = tail call noundef i32 @llvm.umin.i32(i32 %i.lz, i32 %i.if)
  %.not306.i = icmp eq i32 %i.if, 0
  %.pre315.i = add i32 %i.le, %.0181299.i         ; 2 uses
  %.pre316.i = add i32 %i.lg, %.0181299.i         ; 2 uses
  br i1 %.not306.i, label %.preheader.i17, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.ab
  %i.mb = icmp ult i32 %i.lp, %i.ia
  %i.mc = add i32 %i.lq, -1
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.md
  %i.mf = zext i32 %i.lq to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.mf
  %i.mh = sext i32 %i.ih to i64                   ; 2 uses
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.mh
  %i.mj = shl i32 %i.kv, 1                        ; 3 uses
  %i.mk = zext i32 %i.mj to i64                   ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mk
  %i.mm = add i32 %i.ky, %.0182298.i
  %i.mn = add i32 %i.la, %.0182298.i
  %i.mo = sub nsw i64 0, %i.mh
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.mo
  %i.mq = shl i32 %i.ky, 1
  %i.mr = zext i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.mr
  %i.mt = icmp eq i32 %.0182298.i, 0
  %i.mu = icmp eq i32 %i.ig, 1
  %or.cond3.i.i = and i1 %i.mt, %i.mu
  %i.mv = icmp slt i32 %i.kv, %i.kx               ; 2 uses
  %i.mw = shl i32 %i.ig, 1                        ; 2 uses
  %i.mx = add i32 %i.mw, -2
  %i.my = sext i32 %i.mx to i64                   ; 2 uses
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.my
  %i.na = icmp slt i32 %i.ky, %i.la               ; 2 uses
  %i.nb = shl i32 %.0182298.i, 1                  ; 2 uses
  %i.nc = add i32 %i.nb, -1
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.nd ; 2 uses
  %i.nf = sext i32 %i.ky to i64                   ; 6 uses
  %i.ng = sext i32 %.0182298.i to i64             ; 2 uses
  %wide.trip.count.i.i = sext i32 %i.la to i64
  %i.nh = icmp sgt i32 %i.ig, 0
  %i.ni = icmp sgt i32 %.0182298.i, 1
  %or.cond.i.i = or i1 %i.ni, %i.nh
  %i.nj = icmp slt i32 %i.kv, 1
  %.not171.not.i.i = icmp sgt i32 %i.kv, %i.ig
  %i.nk = add i32 %i.mj, -1
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = add i32 %i.mw, -1
  %i.nn = sext i32 %i.nm to i64                   ; 3 uses
  %.pn.i.i = select i1 %.not171.not.i.i, i64 %i.nn, i64 %i.nl
  %.in.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.pn.i.i
  %i.no = icmp slt i32 %i.kv, 0
  %.not172.i.i = icmp slt i32 %i.kv, %i.ig
  %i.np = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.nn ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.mk
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.ns = sext i32 %i.mj to i64
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ns ; 2 uses
  %spec.select.i209.i = tail call i32 @llvm.smin.i32(i32 %i.kx, i32 %i.ig) ; 8 uses
  %.0150216.i.i = add nuw i32 %i.kv, 1            ; 3 uses
  %i.nu = icmp slt i32 %.0150216.i.i, %spec.select.i209.i
  %5 = sext i32 %.0150216.i.i to i64              ; 4 uses
  %i.nv = sext i32 %i.kv to i64                   ; 4 uses
  %i.nw = sext i32 %i.ig to i64                   ; 2 uses
  %wide.trip.count240.i.i = sext i32 %i.kx to i64
  %i.nx = add i32 %.0182298.i, -1                 ; 2 uses
  %i.ny = icmp sgt i32 %i.nx, %i.ky
  %spec.select191.i.i = tail call i32 @llvm.smin.i32(i32 %i.la, i32 %i.nx)
  %i.nz = sext i32 %spec.select191.i.i to i64     ; 2 uses
  %i.oa = add i32 %i.nb, -2
  %i.ob = sext i32 %i.oa to i64                   ; 2 uses
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ob
  %i.od = zext i32 %i.ll to i64
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.od
  %..i = select i1 %.not172.i.i, ptr %i.nr, ptr %i.np
  %i.of = shl nsw i64 %5, 3                       ; 3 uses
  %scevgep = getelementptr i8, ptr %i.hg, i64 %i.of ; 2 uses
  %i.og = add i32 %spec.select.i209.i, -2
  %umin97 = tail call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.kh)
  %i.oh = add i32 %i.og, %umin97
  %umin98 = tail call i32 @llvm.umin.i32(i32 %i.kn, i32 2)
  %i.oi = add i32 %i.oh, %umin98
  %i.oj = sub i32 %i.oi, %i.ka
  %i.ok = zext i32 %i.oj to i64
  %i.ol = shl nuw nsw i64 %i.ok, 3                ; 2 uses
  %i.om = add nsw i64 %i.of, %i.ol                ; 2 uses
  %scevgep99 = getelementptr i8, ptr %scevgep96.a, i64 %i.om ; 2 uses
  %i.on = shl nsw i64 %i.nv, 3                    ; 2 uses
  %scevgep101 = getelementptr i8, ptr %scevgep100.a, i64 %i.on
  %i.oo = getelementptr i8, ptr %scevgep102.a, i64 %i.on
  %scevgep103 = getelementptr i8, ptr %i.oo, i64 %i.ol
  %scevgep105 = getelementptr i8, ptr %scevgep104.a, i64 %i.of
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.om
  %i.op = tail call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.kh)
  %i.oq = tail call i32 @llvm.umin.i32(i32 %i.kn, i32 2)
  %i.or = add i32 %spec.select.i209.i, %i.op
  %i.os = add i32 %i.or, %i.oq
  %i.ot = add i32 %i.os, -2
  %i.ou = sub i32 %i.ot, %i.ka                    ; 2 uses
  %i.ov = zext i32 %i.ou to i64
  %i.ow = add nuw nsw i64 %i.ov, 1                ; 2 uses
  %min.iters.check112 = icmp ult i32 %i.ou, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep103
  %bound1 = icmp ult ptr %scevgep101, %scevgep99
  %found.conflict = and i1 %bound0, %bound1
  %bound0108 = icmp ult ptr %scevgep, %scevgep107
  %bound1109 = icmp ult ptr %scevgep105, %scevgep99
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx = or i1 %found.conflict, %found.conflict110
  %i.ox = and i64 %i.ow, 3                        ; 2 uses
  %i.oy = icmp eq i64 %i.ox, 0
  %i.oz = select i1 %i.oy, i64 4, i64 %i.ox
  %n.vec114 = sub nsw i64 %i.ow, %i.oz            ; 3 uses
  %i.pa = add nsw i64 %n.vec114, %i.nv
  %6 = add nsw i64 %n.vec114, %5
  %i.pb = add nsw i64 %i.nf, 1
  %i.pc = tail call i64 @llvm.smax.i64(i64 %i.nz, i64 %i.pb)
  %i.pd = sub i64 %i.pc, %i.nf                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.pd, 5
  %i.pe = and i64 %i.pd, 3                        ; 2 uses
  %i.pf = icmp eq i64 %i.pe, 0
  %i.pg = select i1 %i.pf, i64 4, i64 %i.pe
  %n.vec = sub i64 %i.pd, %i.pg                   ; 2 uses
  %i.ph = add i64 %n.vec, %i.nf
  br label %bb.ac

.preheader.i17:                                   ; preds = %bb.bh, %bb.ab
  %i.pi = shl nsw i32 %i.ij, 2                    ; 2 uses
  %i.pj = sext i32 %i.pi to i64
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.pj
  %i.pl = shl i32 %i.lb, 3                        ; 3 uses
  %i.pm = zext i32 %i.pl to i64                   ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.pm
  %i.po = sub nsw i32 4, %i.pi
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.pp
  %i.pr = shl i32 %i.le, 3                        ; 2 uses
  %i.ps = zext i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.ps
  %i.pu = icmp eq i32 %.0181299.i, 0
  %i.pv = icmp eq i32 %i.ii, 1
  %or.cond3.i211.i = and i1 %i.pu, %i.pv
  %i.pw = icmp slt i32 %i.lb, %i.ld               ; 2 uses
  %i.px = shl i32 %i.ii, 3                        ; 2 uses
  %i.py = add i32 %i.px, -8                       ; 4 uses
  %.not320.us.i.i = icmp sgt i32 %i.ii, 0         ; 2 uses
  %i.pz = zext i32 %i.py to i64                   ; 3 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.pz
  %i.qb = or disjoint i64 %i.pz, 1                ; 2 uses
  %i.qc = trunc nuw i64 %i.qb to i32
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qb
  %i.qe = or disjoint i64 %i.pz, 3                ; 2 uses
  %i.qf = trunc nuw i64 %i.qe to i32
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qe
  %i.qh = select i1 %.not320.us.i.i, i32 0, i32 %i.py
  %i.qi = zext i32 %i.qh to i64
  %.in321.us.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qi
  %i.qj = icmp slt i32 %i.le, %i.lg               ; 2 uses
  %i.qk = shl i32 %.0181299.i, 3                  ; 4 uses
  %i.ql = add i32 %i.qk, -4                       ; 6 uses
  %i.qm = zext i32 %i.ql to i64
  %i.qn = or disjoint i32 %i.ql, 1                ; 2 uses
  %i.qo = or disjoint i32 %i.ql, 2                ; 2 uses
  %i.qp = or disjoint i32 %i.ql, 3                ; 2 uses
  %.in315.us370.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qm ; 3 uses
  %i.qq = add i32 %i.qk, -2
  %.in315.v.us369.2.i.i = zext i32 %i.qq to i64
  %.in315.us370.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us369.2.i.i
  %i.qr = getelementptr inbounds nuw i8, ptr %.in315.us370.i.i, i64 8
  %i.qs = add i32 %i.qk, -1
  %.in315.v.us369.3.i.i = zext i32 %i.qs to i64
  %.in315.us370.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us369.3.i.i
  %i.qt = getelementptr inbounds nuw i8, ptr %.in315.us370.i.i, i64 12
  %i.qu = icmp sgt i32 %.0181299.i, 1
  %or.cond.i213.i = or i1 %i.qu, %.not320.us.i.i
  %i.qv = icmp slt i32 %i.lb, 1
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.lb, i32 %i.ii)
  %.pn341.in.i.i = shl i32 %..i.i, 3
  %.pn341.i.i = add i32 %.pn341.in.i.i, -4
  %i.qw = icmp slt i32 %i.lb, 0
  %.not312.i.i = icmp slt i32 %i.lb, %i.ii
  %i.qx = add i32 %i.px, -4                       ; 2 uses
  %invariant.op.i.i = or disjoint i32 %i.pl, 4
  %i.qy = zext i32 %i.qx to i64                   ; 2 uses
  %i.qz = zext i32 %.pn341.i.i to i64
  %i.ra = zext i32 %invariant.op.i.i to i64
  %.in311.ph.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qz ; 4 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.pm ; 7 uses
  %.in311.ph.1.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 4
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 4 ; 2 uses
  %.in311.ph.2.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 8 ; 4 uses
  %.in311.ph.3.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 12
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 12 ; 2 uses
  %i.rf = add nuw nsw i32 %i.lb, 1                ; 2 uses
  %spec.select.i218.i = tail call i32 @llvm.smin.i32(i32 %i.ld, i32 %i.ii) ; 8 uses
  %i.rg = add nuw nsw i32 %i.lb, 2                ; 2 uses
  %i.rh = icmp slt i32 %i.rg, %spec.select.i218.i
  %i.ri = sext i32 %i.pl to i64
  %i.rj = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.ri
  %i.rk = sext i32 %i.rf to i64
  %i.rl = sext i32 %spec.select.i218.i to i64
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qy ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 12
  %i.rp = add i32 %.0181299.i, -1
  %spec.select322.i.i = tail call i32 @llvm.smin.i32(i32 %i.lg, i32 %i.rp) ; 8 uses
  %i.rq = add nuw nsw i32 %i.le, 1                ; 2 uses
  %i.rr = icmp slt i32 %i.rq, %spec.select322.i.i
  %i.rs = sext i32 %i.pr to i64
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.rs
  %i.ru = sext i32 %i.le to i64
  %i.rv = sext i32 %spec.select322.i.i to i64
  %i.rw = add i32 %i.qk, -8                       ; 3 uses
  %.not304.us.i.i = icmp sgt i32 %.0181299.i, 0
  %i.rx = zext i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.rx
  %i.rz = select i1 %.not304.us.i.i, i32 0, i32 %i.rw
  %i.sa = zext i32 %i.rz to i64
  %.in305.us.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.sa ; 3 uses
  %.in305.us.us.1.i.i = getelementptr inbounds nuw i8, ptr %.in305.us.us.i.i, i64 4
  %.in305.us.us.3.i.i = getelementptr inbounds nuw i8, ptr %.in305.us.us.i.i, i64 12
  %i.sb = shl i32 %i.lv, 2
  %i.sc = zext i32 %i.sb to i64
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.sc
  %.301.v.i = select i1 %.not312.i.i, i64 %i.ra, i64 %i.qy
  %.301.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.301.v.i ; 4 uses
  %.302.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 4
  %.303.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 8
  %.304.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 12
  br label %bb.bi

bb.ac:                                            ; preds = %bb.bh, %.lr.ph.i14
  %.0176295.i = phi i32 [ 0, %.lr.ph.i14 ], [ %.pre-phi319.i, %bb.bh ] ; 9 uses
  %.not189.i = icmp uge i32 %.0176295.i, %i.lb
  %i.se = icmp ult i32 %.0176295.i, %i.ld
  %or.cond.i15 = and i1 %.not189.i, %i.se
  br i1 %or.cond.i15, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not190.i = icmp uge i32 %.0176295.i, %.pre315.i
  %i.sf = icmp ult i32 %.0176295.i, %.pre316.i
  %or.cond291.i = and i1 %.not190.i, %i.sf
  br i1 %or.cond291.i, label %bb.ae, label %._crit_edge314.i

._crit_edge314.i:                                 ; preds = %bb.ad
  %.pre318.i = add nuw i32 %.0176295.i, 1
  br label %bb.bh

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %i.mb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.me, align 4, !tbaa !3
  store i32 0, ptr %i.mg, align 4, !tbaa !3
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.sg = add nuw i32 %.0176295.i, 1              ; 4 uses
  %i.sh = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.kv, i32 noundef %.0176295.i, i32 noundef %i.kx, i32 noundef %i.sg, ptr noundef nonnull %i.ml, i32 noundef 2, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  %i.si = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.mm, i32 noundef %.0176295.i, i32 noundef %i.mn, i32 noundef %i.sg, ptr noundef nonnull %i.ms, i32 noundef 2, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  br i1 %i.lh, label %bb.ah, label %bb.ax

bb.ah:                                            ; preds = %bb.ag
  br i1 %or.cond.i.i, label %bb.ai, label %opj_dwt_decode_partial_1.exit.i

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.mv, label %bb.aj, label %.loopexit208.i.i

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.nj, label %bb.ak, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aj
  %i.sj = load i32, ptr %.in.ph.i.i, align 4, !tbaa !3
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.sk = load i32, ptr %i.hm, align 4, !tbaa !3  ; 3 uses
  br i1 %i.no, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.thread.i.i
  %i.sl = phi i32 [ %i.sj, %.thread.i.i ], [ %i.sk, %bb.ak ]
  %.pre.i = load i32, ptr %..i, align 4, !tbaa !3
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.sm = phi i32 [ %i.sk, %bb.ak ], [ %.pre.i, %bb.al ]
  %i.sn = phi i32 [ %i.sk, %bb.ak ], [ %i.sl, %bb.al ]
  %i.so = add i32 %i.sm, 2
  %i.sp = add i32 %i.so, %i.sn
  %i.sq = ashr i32 %i.sp, 2
  %i.sr = load i32, ptr %i.nt, align 4, !tbaa !3
  %i.ss = sub nsw i32 %i.sr, %i.sq
  store i32 %i.ss, ptr %i.nt, align 4, !tbaa !3
  br i1 %i.nu, label %.lr.ph219.i.i.preheader, label %.preheader207.i.i

.lr.ph219.i.i.preheader:                          ; preds = %bb.am
  %brmerge158 = select i1 %min.iters.check112, i1 true, i1 %conflict.rdx
  br i1 %brmerge158, label %.lr.ph219.i.i.preheader128, label %vector.body115

.lr.ph219.i.i.preheader128:                       ; preds = %.lr.ph219.i.i.preheader, %vector.body115
  %indvars.iv233.i.i.ph.a = phi i64 [ %i.pa, %vector.body115 ], [ %i.nv, %.lr.ph219.i.i.preheader ] ; 3 uses
  %indvars.iv233.i.i.ph = phi i64 [ %6, %vector.body115 ], [ %5, %.lr.ph219.i.i.preheader ] ; 4 uses
  %i.st = trunc i64 %indvars.iv233.i.i.ph to i32  ; 2 uses
  %i.su = sub i32 %spec.select.i209.i, %i.st
  %.neg = add i32 %i.st, 1
  %xtraiter142 = and i32 %i.su, 1
  %lcmp.mod143.not = icmp eq i32 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph219.i.i.prol.loopexit, label %.lr.ph219.i.i.prol

.lr.ph219.i.i.prol:                               ; preds = %.lr.ph219.i.i.preheader128
  %.idx260.i.i.prol = shl nsw i64 %indvars.iv233.i.i.ph.a, 3
  %7 = getelementptr i8, ptr %i.hg, i64 %.idx260.i.i.prol
  %i.sv = getelementptr i8, ptr %7, i64 4
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !3
  %.idx256.i.i.prol = shl nsw i64 %indvars.iv233.i.i.ph, 3
  %i.sx = getelementptr i8, ptr %i.hg, i64 %.idx256.i.i.prol ; 3 uses
  %i.sy = getelementptr i8, ptr %i.sx, i64 4
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !3
  %i.ta = add i32 %i.sw, 2
  %i.tb = add i32 %i.ta, %i.sz
  %i.tc = ashr i32 %i.tb, 2
  %i.td = load i32, ptr %i.sx, align 4, !tbaa !3
  %i.te = sub nsw i32 %i.td, %i.tc
  store i32 %i.te, ptr %i.sx, align 4, !tbaa !3
  %indvars.iv.next234.i.i.prol = add nsw i64 %indvars.iv233.i.i.ph, 1
  %indvars.iv.next236.i.i.prol = add nsw i64 %indvars.iv233.i.i.ph.a, 1
  br label %.lr.ph219.i.i.prol.loopexit

.lr.ph219.i.i.prol.loopexit:                      ; preds = %.lr.ph219.i.i.prol, %.lr.ph219.i.i.preheader128
  %indvars.iv233.i.i.unr.a = phi i64 [ %indvars.iv233.i.i.ph.a, %.lr.ph219.i.i.preheader128 ], [ %indvars.iv.next236.i.i.prol, %.lr.ph219.i.i.prol ]
  %indvars.iv233.i.i.unr = phi i64 [ %indvars.iv233.i.i.ph, %.lr.ph219.i.i.preheader128 ], [ %indvars.iv.next234.i.i.prol, %.lr.ph219.i.i.prol ]
  %i.tf = icmp eq i32 %spec.select.i209.i, %.neg
  br i1 %i.tf, label %.preheader207.i.i, label %.lr.ph219.i.i

vector.body115:                                   ; preds = %.lr.ph219.i.i.preheader, %vector.body115
  %index116 = phi i64 [ %index.next122, %vector.body115 ], [ 0, %.lr.ph219.i.i.preheader ] ; 3 uses
  %i.tg = add i64 %index116, %i.nv
  %8 = add i64 %index116, %5                      ; 4 uses
  %9 = shl i64 %i.tg, 3
  %10 = getelementptr i8, ptr %i.hg, i64 %9
  %i.th = getelementptr i8, ptr %10, i64 4
  %wide.vec117 = load <8 x i32>, ptr %i.th, align 4, !tbaa !3, !alias.scope !150
  %strided.vec118.a = shufflevector <8 x i32> %wide.vec117, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ti = shl i64 %8, 3
  %i.tj = shl i64 %8, 3
  %i.tk = shl i64 %8, 3
  %i.tl = shl i64 %8, 3
  %i.tm = getelementptr i8, ptr %i.hg, i64 %i.ti  ; 2 uses
  %i.tn = getelementptr i8, ptr %i.hg, i64 %i.tj
  %i.to = getelementptr i8, ptr %i.tn, i64 8
  %i.tp = getelementptr i8, ptr %i.hg, i64 %i.tk
  %i.tq = getelementptr i8, ptr %i.tp, i64 16
  %i.tr = getelementptr i8, ptr %i.hg, i64 %i.tl
  %i.ts = getelementptr i8, ptr %i.tr, i64 24
  %wide.vec119 = load <8 x i32>, ptr %i.tm, align 4, !tbaa !3 ; 2 uses
  %strided.vec120 = shufflevector <8 x i32> %wide.vec119, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec121 = shufflevector <8 x i32> %wide.vec119, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.tt = add <4 x i32> %strided.vec118.a, splat (i32 2)
  %i.tu = add <4 x i32> %i.tt, %strided.vec121
  %i.tv = ashr <4 x i32> %i.tu, splat (i32 2)
  %i.tw = sub nsw <4 x i32> %strided.vec120, %i.tv ; 4 uses
  %i.tx = extractelement <4 x i32> %i.tw, i64 0
  store i32 %i.tx, ptr %i.tm, align 4, !tbaa !3, !alias.scope !153, !noalias !155
  %i.ty = extractelement <4 x i32> %i.tw, i64 1
  store i32 %i.ty, ptr %i.to, align 4, !tbaa !3, !alias.scope !153, !noalias !155
  %i.tz = extractelement <4 x i32> %i.tw, i64 2
  store i32 %i.tz, ptr %i.tq, align 4, !tbaa !3, !alias.scope !153, !noalias !155
  %i.ua = extractelement <4 x i32> %i.tw, i64 3
  store i32 %i.ua, ptr %i.ts, align 4, !tbaa !3, !alias.scope !153, !noalias !155
  %index.next122 = add nuw i64 %index116, 4       ; 2 uses
  %i.ub = icmp eq i64 %index.next122, %n.vec114
  br i1 %i.ub, label %.lr.ph219.i.i.preheader128, label %vector.body115, !llvm.loop !157

.preheader207.i.i:                                ; preds = %.lr.ph219.i.i.prol.loopexit, %.lr.ph219.i.i, %bb.am
  %.0150.lcssa.i.i = phi i32 [ %.0150216.i.i, %bb.am ], [ %spec.select.i209.i, %.lr.ph219.i.i ], [ %spec.select.i209.i, %.lr.ph219.i.i.prol.loopexit ] ; 2 uses
  %i.uc = icmp slt i32 %.0150.lcssa.i.i, %i.kx
  br i1 %i.uc, label %.lr.ph223.i.i, label %.loopexit208.i.i

.lr.ph223.i.i:                                    ; preds = %.preheader207.i.i
  %i.ud = sext i32 %.0150.lcssa.i.i to i64
  br label %bb.an

.lr.ph219.i.i:                                    ; preds = %.lr.ph219.i.i.prol.loopexit, %.lr.ph219.i.i
  %indvars.iv233.i.i.a = phi i64 [ %indvars.iv.next236.i.i.1, %.lr.ph219.i.i ], [ %indvars.iv233.i.i.unr.a, %.lr.ph219.i.i.prol.loopexit ] ; 3 uses
  %indvars.iv233.i.i = phi i64 [ %indvars.iv.next234.i.i.1, %.lr.ph219.i.i ], [ %indvars.iv233.i.i.unr, %.lr.ph219.i.i.prol.loopexit ] ; 3 uses
  %.idx260.i.i = shl i64 %indvars.iv233.i.i.a, 3
  %11 = getelementptr i8, ptr %i.hg, i64 %.idx260.i.i
  %i.ue = getelementptr i8, ptr %11, i64 4
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !3
  %.idx256.i.i = shl i64 %indvars.iv233.i.i, 3
  %i.ug = getelementptr i8, ptr %i.hg, i64 %.idx256.i.i ; 3 uses
  %i.uh = getelementptr i8, ptr %i.ug, i64 4
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !3
  %i.uj = add i32 %i.uf, 2
  %i.uk = add i32 %i.uj, %i.ui
  %i.ul = ashr i32 %i.uk, 2
  %i.um = load i32, ptr %i.ug, align 4, !tbaa !3
  %i.un = sub nsw i32 %i.um, %i.ul
  store i32 %i.un, ptr %i.ug, align 4, !tbaa !3
  %indvars.iv.next236.i.i = shl i64 %indvars.iv233.i.i.a, 3
  %12 = getelementptr i8, ptr %i.hg, i64 %indvars.iv.next236.i.i
  %13 = getelementptr i8, ptr %12, i64 12
  %14 = load i32, ptr %13, align 4, !tbaa !3
  %indvars.iv.next234.i.i = shl i64 %indvars.iv233.i.i, 3
  %i.uo = getelementptr i8, ptr %i.hg, i64 %indvars.iv.next234.i.i ; 2 uses
  %i.up = getelementptr i8, ptr %i.uo, i64 8      ; 2 uses
  %i.uq = getelementptr i8, ptr %i.uo, i64 12
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !3
  %i.us = add i32 %14, 2
  %i.ut = add i32 %i.us, %i.ur
  %i.uu = ashr i32 %i.ut, 2
  %i.uv = load i32, ptr %i.up, align 4, !tbaa !3
  %i.uw = sub nsw i32 %i.uv, %i.uu
  store i32 %i.uw, ptr %i.up, align 4, !tbaa !3
  %indvars.iv.next234.i.i.1 = add nsw i64 %indvars.iv233.i.i, 2 ; 2 uses
  %indvars.iv.next236.i.i.1 = add nsw i64 %indvars.iv233.i.i.a, 2
  %lftr.wideiv.i.i.1 = trunc i64 %indvars.iv.next234.i.i.1 to i32
  %exitcond236.not.i.i.1 = icmp eq i32 %spec.select.i209.i, %lftr.wideiv.i.i.1
  br i1 %exitcond236.not.i.i.1, label %.preheader207.i.i, label %.lr.ph219.i.i, !llvm.loop !158

bb.an:                                            ; preds = %bb.ar, %.lr.ph223.i.i
  %indvars.iv237.i.i = phi i64 [ %i.ud, %.lr.ph223.i.i ], [ %indvars.iv.next238.i.i, %bb.ar ] ; 8 uses
  %i.ux = icmp slt i64 %indvars.iv237.i.i, 1
  br i1 %i.ux, label %bb.ao, label %.thread194.i.i

.thread194.i.i:                                   ; preds = %bb.an
  %.not179.not.i.i = icmp sgt i64 %indvars.iv237.i.i, %i.nw
  %i.uy = shl nuw i64 %indvars.iv237.i.i, 1
  %i.uz = add i64 %i.uy, 4294967295
  %i.va = and i64 %i.uz, 4294967295
  %.pn206.i.i = select i1 %.not179.not.i.i, i64 %i.nn, i64 %i.va
  %.in180.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.pn206.i.i
  %i.vb = load i32, ptr %.in180.ph.i.i, align 4, !tbaa !3
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.vc = load i32, ptr %i.hm, align 4, !tbaa !3  ; 2 uses
  %i.vd = icmp slt i64 %indvars.iv237.i.i, 0
  br i1 %i.vd, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread194.i.i
  %i.ve = phi i32 [ %i.vb, %.thread194.i.i ], [ %i.vc, %bb.ao ] ; 2 uses
  %.not181.i.i = icmp slt i64 %indvars.iv237.i.i, %i.nw
  br i1 %.not181.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.idx257.i.i = shl nuw nsw i64 %indvars.iv237.i.i, 3
  %i.vf = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx257.i.i
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.vh = phi i32 [ %i.ve, %bb.aq ], [ %i.vc, %bb.ao ], [ %i.ve, %bb.ap ]
  %.in182.i.i = phi ptr [ %i.vg, %bb.aq ], [ %i.hm, %bb.ao ], [ %i.np, %bb.ap ]
  %i.vi = load i32, ptr %.in182.i.i, align 4, !tbaa !3
  %i.vj = add i32 %i.vh, 2
  %i.vk = add i32 %i.vj, %i.vi
  %i.vl = ashr i32 %i.vk, 2
  %.idx258.i.i = shl nsw i64 %indvars.iv237.i.i, 3
  %i.vm = getelementptr inbounds i8, ptr %i.hg, i64 %.idx258.i.i ; 2 uses
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !3
  %i.vo = sub nsw i32 %i.vn, %i.vl
  store i32 %i.vo, ptr %i.vm, align 4, !tbaa !3
  %indvars.iv.next238.i.i = add nsw i64 %indvars.iv237.i.i, 1 ; 2 uses
  %exitcond241.not.i.i = icmp eq i64 %indvars.iv.next238.i.i, %wide.trip.count240.i.i
  br i1 %exitcond241.not.i.i, label %.loopexit208.i.i, label %bb.an, !llvm.loop !159

.loopexit208.i.i:                                 ; preds = %bb.ar, %.preheader207.i.i, %bb.ai
  br i1 %i.na, label %bb.as, label %opj_dwt_decode_partial_1.exit.i

bb.as:                                            ; preds = %.loopexit208.i.i
  br i1 %i.ny, label %.lr.ph225.i.i.preheader, label %.preheader.i.i

.lr.ph225.i.i.preheader:                          ; preds = %bb.as
  br i1 %min.iters.check, label %.lr.ph225.i.i.preheader127, label %vector.body

.lr.ph225.i.i.preheader127:                       ; preds = %vector.body, %.lr.ph225.i.i.preheader
  %indvars.iv242.i.i.ph = phi i64 [ %i.nf, %.lr.ph225.i.i.preheader ], [ %i.ph, %vector.body ]
  br label %.lr.ph225.i.i

vector.body:                                      ; preds = %.lr.ph225.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph225.i.i.preheader ] ; 2 uses
  %i.vp = add i64 %index, %i.nf                   ; 5 uses
  %i.vq = shl nsw i64 %i.vp, 3
  %i.vr = shl i64 %i.vp, 3
  %i.vs = shl i64 %i.vp, 3
  %i.vt = shl i64 %i.vp, 3
  %i.vu = getelementptr inbounds i8, ptr %i.hg, i64 %i.vq ; 2 uses
  %i.vv = getelementptr i8, ptr %i.hg, i64 %i.vr
  %i.vw = getelementptr i8, ptr %i.hg, i64 %i.vs
  %i.vx = getelementptr i8, ptr %i.hg, i64 %i.vt
  %wide.vec = load <8 x i32>, ptr %i.vu, align 4, !tbaa !3
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.vy = shl i64 %i.vp, 3
  %i.vz = getelementptr i8, ptr %i.hg, i64 %i.vy
  %i.wa = getelementptr i8, ptr %i.vz, i64 4
  %wide.vec92 = load <8 x i32>, ptr %i.wa, align 4, !tbaa !3 ; 2 uses
  %strided.vec93.a = shufflevector <8 x i32> %wide.vec92, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec94 = shufflevector <8 x i32> %wide.vec92, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.wb = add nsw <4 x i32> %strided.vec94, %strided.vec
  %i.wc = ashr <4 x i32> %i.wb, splat (i32 1)
  %i.wd = getelementptr i8, ptr %i.vu, i64 4
  %i.we = getelementptr i8, ptr %i.vv, i64 12
  %i.wf = getelementptr i8, ptr %i.vw, i64 20
  %i.wg = getelementptr i8, ptr %i.vx, i64 28
  %i.wh = add nsw <4 x i32> %i.wc, %strided.vec93.a ; 4 uses
  %i.wi = extractelement <4 x i32> %i.wh, i64 0
  store i32 %i.wi, ptr %i.wd, align 4, !tbaa !3
  %i.wj = extractelement <4 x i32> %i.wh, i64 1
  store i32 %i.wj, ptr %i.we, align 4, !tbaa !3
  %i.wk = extractelement <4 x i32> %i.wh, i64 2
  store i32 %i.wk, ptr %i.wf, align 4, !tbaa !3
  %i.wl = extractelement <4 x i32> %i.wh, i64 3
  store i32 %i.wl, ptr %i.wg, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.wm = icmp eq i64 %index.next, %n.vec
  br i1 %i.wm, label %.lr.ph225.i.i.preheader127, label %vector.body, !llvm.loop !160

.preheader.loopexit.i.i:                          ; preds = %.lr.ph225.i.i
  %i.wn = trunc nsw i64 %indvars.iv.next243.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %bb.as
  %.2.lcssa.i.i = phi i32 [ %i.ky, %bb.as ], [ %i.wn, %.preheader.loopexit.i.i ] ; 2 uses
  %i.wo = icmp slt i32 %.2.lcssa.i.i, %i.la
  br i1 %i.wo, label %.lr.ph229.i.i, label %opj_dwt_decode_partial_1.exit.i

.lr.ph225.i.i:                                    ; preds = %.lr.ph225.i.i.preheader127, %.lr.ph225.i.i
  %indvars.iv242.i.i = phi i64 [ %indvars.iv.next243.i.i, %.lr.ph225.i.i ], [ %indvars.iv242.i.i.ph, %.lr.ph225.i.i.preheader127 ] ; 2 uses
  %.idx259.i.i = shl nsw i64 %indvars.iv242.i.i, 3
  %i.wp = getelementptr inbounds i8, ptr %i.hg, i64 %.idx259.i.i ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !3
  %indvars.iv.next243.i.i = add nsw i64 %indvars.iv242.i.i, 1 ; 4 uses
  %.idx260.i.i.a = shl nsw i64 %indvars.iv.next243.i.i, 3
  %i.wr = getelementptr inbounds i8, ptr %i.hg, i64 %.idx260.i.i.a
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !3
  %i.wt = add nsw i32 %i.ws, %i.wq
  %i.wu = ashr i32 %i.wt, 1
  %i.wv = getelementptr i8, ptr %i.wp, i64 4      ; 2 uses
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !3
  %i.wx = add nsw i32 %i.wu, %i.ww
  store i32 %i.wx, ptr %i.wv, align 4, !tbaa !3
  %i.wy = icmp slt i64 %indvars.iv.next243.i.i, %i.nz
  br i1 %i.wy, label %.lr.ph225.i.i, label %.preheader.loopexit.i.i, !llvm.loop !161

.lr.ph229.i.i:                                    ; preds = %.preheader.i.i, %bb.aw
  %.3227.i.i = phi i32 [ %i.xl, %bb.aw ], [ %.2.lcssa.i.i, %.preheader.i.i ] ; 7 uses
  %i.wz = icmp slt i32 %.3227.i.i, 0
  br i1 %i.wz, label %bb.at, label %.thread197.i.i

.thread197.i.i:                                   ; preds = %.lr.ph229.i.i
  %.not175.i.i = icmp slt i32 %.3227.i.i, %.0182298.i
  %i.xa = shl nuw nsw i32 %.3227.i.i, 1
  %i.xb = zext nneg i32 %i.xa to i64
  %.in176.ph.v.i.i = select i1 %.not175.i.i, i64 %i.xb, i64 %i.ob
  %.in176.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.in176.ph.v.i.i
  %i.xc = load i32, ptr %.in176.ph.i.i, align 4, !tbaa !3
  %i.xd = add nuw nsw i32 %.3227.i.i, 1
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph229.i.i
  %i.xe = load i32, ptr %i.hg, align 4, !tbaa !3  ; 2 uses
  %i.xf = add nuw nsw i32 %.3227.i.i, 1
  %.not205.i.i = icmp eq i32 %.3227.i.i, -1
  br i1 %.not205.i.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at, %.thread197.i.i
  %i.xg = phi i32 [ %i.xd, %.thread197.i.i ], [ 0, %bb.at ] ; 4 uses
  %i.xh = phi i32 [ %i.xc, %.thread197.i.i ], [ %i.xe, %bb.at ] ; 2 uses
  %.not177.i.i = icmp slt i32 %i.xg, %.0182298.i
  br i1 %.not177.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.xi = shl nuw nsw i32 %i.xg, 1
  %i.xj = zext nneg i32 %i.xi to i64
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.xj
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.xl = phi i32 [ %i.xg, %bb.av ], [ %i.xf, %bb.at ], [ %i.xg, %bb.au ] ; 2 uses
  %i.xm = phi i32 [ %i.xh, %bb.av ], [ %i.xe, %bb.at ], [ %i.xh, %bb.au ]
  %.in178.i.i = phi ptr [ %i.xk, %bb.av ], [ %i.hg, %bb.at ], [ %i.oc, %bb.au ]
  %i.xn = load i32, ptr %.in178.i.i, align 4, !tbaa !3
  %i.xo = add nsw i32 %i.xn, %i.xm
  %i.xp = ashr i32 %i.xo, 1
  %i.xq = shl nsw i32 %.3227.i.i, 1
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr [4 x i8], ptr %i.hg, i64 %i.xr
  %i.xt = getelementptr i8, ptr %i.xs, i64 4      ; 2 uses
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !3
  %i.xv = add nsw i32 %i.xp, %i.xu
  store i32 %i.xv, ptr %i.xt, align 4, !tbaa !3
  %i.xw = icmp slt i32 %i.xl, %i.la
  br i1 %i.xw, label %.lr.ph229.i.i, label %opj_dwt_decode_partial_1.exit.i, !llvm.loop !162

bb.ax:                                            ; preds = %bb.ag
  br i1 %or.cond3.i.i, label %bb.ay, label %.preheader211.i.i

.preheader211.i.i:                                ; preds = %bb.ax
  br i1 %i.mv, label %.lr.ph.i208.i, label %.preheader209.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.xx = load i32, ptr %i.hg, align 4, !tbaa !3
  %i.xy = sdiv i32 %i.xx, 2
  store i32 %i.xy, ptr %i.hg, align 4, !tbaa !3
  br label %opj_dwt_decode_partial_1.exit.i

.preheader209.i.i:                                ; preds = %bb.bc, %.preheader211.i.i
  br i1 %i.na, label %.lr.ph215.i.i, label %opj_dwt_decode_partial_1.exit.i

.lr.ph.i208.i:                                    ; preds = %.preheader211.i.i, %bb.bc
  %.4212.i.i = phi i32 [ %i.yp, %bb.bc ], [ %i.kv, %.preheader211.i.i ] ; 6 uses
  %i.xz = shl nsw i32 %.4212.i.i, 1               ; 2 uses
  %i.ya = sext i32 %i.xz to i64
  %i.yb = getelementptr [4 x i8], ptr %i.hg, i64 %i.ya
  %i.yc = getelementptr i8, ptr %i.yb, i64 4      ; 2 uses
end_hunk_1
