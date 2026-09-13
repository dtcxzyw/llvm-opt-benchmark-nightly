Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/dwt?download=true
inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 79
begin_hunk_0_@opj_dwt_encode_and_deinterleave_v:bb.a
  br i1 %.not.1.i.3, label %opj_dwt_deinterleave_v_cols.exit, label %.lr.ph.1.i, !llvm.loop !3

bb.o:                                             ; preds = %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.pw = select i1 %.not, i32 0, i32 8           ; 2 uses
  %i.px = zext nneg i32 %i.e to i64
  %i.py = zext i32 %4 to i64                      ; 3 uses
  %i.pz = mul nuw nsw i64 %i.px, %i.py
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pz
  %i.qb = xor i32 %i.pw, 8
  %.not61.i245 = icmp eq i32 %i.e, 0
  br i1 %.not61.i245, label %._crit_edge.i254, label %.lr.ph.preheader.i246

.lr.ph.preheader.i246:                            ; preds = %bb.o
  %.pn70.pn.i247 = zext nneg i32 %i.pw to i64
  %.05375.i248 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn70.pn.i247
  br label %.lr.ph.i249

.lr.ph.i249:                                      ; preds = %bb.v, %.lr.ph.preheader.i246
  %.in.i250 = phi i32 [ %i.qc, %bb.v ], [ %i.e, %.lr.ph.preheader.i246 ]
  %.15469.i251 = phi ptr [ %i.ri, %bb.v ], [ %.05375.i248, %.lr.ph.preheader.i246 ] ; 8 uses
  %.15662.i252 = phi ptr [ %i.rh, %bb.v ], [ %0, %.lr.ph.preheader.i246 ] ; 8 uses
  %i.qc = add nsw i32 %.in.i250, -1               ; 2 uses
  switch i32 %5, label %bb.v [
    i32 2, label %bb.u
    i32 7, label %bb.p
    i32 6, label %bb.q
    i32 5, label %bb.r
    i32 4, label %bb.s
    i32 3, label %bb.t
  ]

bb.p:                                             ; preds = %.lr.ph.i249
  %i.qd = load i32, ptr %.15469.i251, align 4, !tbaa !12, !alias.scope !124, !noalias !125
  store i32 %i.qd, ptr %.15662.i252, align 4, !tbaa !12, !alias.scope !125, !noalias !124
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i249
  %.0.i = phi i32 [ 1, %bb.p ], [ 0, %.lr.ph.i249 ] ; 2 uses
  %i.qe = zext nneg i32 %.0.i to i64              ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.15469.i251, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !12, !alias.scope !124, !noalias !125
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.15662.i252, i64 %i.qe
  store i32 %i.qg, ptr %i.qh, align 4, !tbaa !12, !alias.scope !125, !noalias !124
  %i.qi = add nuw nsw i32 %.0.i, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i249
  %.1.i = phi i32 [ %i.qi, %bb.q ], [ 0, %.lr.ph.i249 ] ; 2 uses
  %i.qj = zext nneg i32 %.1.i to i64              ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %.15469.i251, i64 %i.qj
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !12, !alias.scope !124, !noalias !125
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %.15662.i252, i64 %i.qj
  store i32 %i.ql, ptr %i.qm, align 4, !tbaa !12, !alias.scope !125, !noalias !124
  %i.qn = add nuw nsw i32 %.1.i, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i249
  %.2.i = phi i32 [ %i.qn, %bb.r ], [ 0, %.lr.ph.i249 ] ; 2 uses
  %i.qo = zext nneg i32 %.2.i to i64              ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.15469.i251, i64 %i.qo
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !12, !alias.scope !124, !noalias !125
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.15662.i252, i64 %i.qo
  store i32 %i.qq, ptr %i.qr, align 4, !tbaa !12, !alias.scope !125, !noalias !124
  %i.qs = add nuw nsw i32 %.2.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i249
  %.3.i = phi i32 [ %i.qs, %bb.s ], [ 0, %.lr.ph.i249 ] ; 2 uses
  %i.qt = zext nneg i32 %.3.i to i64              ; 2 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.15469.i251, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !12, !alias.scope !124, !noalias !125
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %.15662.i252, i64 %i.qt
  store i32 %i.qv, ptr %i.qw, align 4, !tbaa !12, !alias.scope !125, !noalias !124
  %i.qx = add nuw nsw i32 %.3.i, 1
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph.i249, %bb.t
  %.4.i = phi i32 [ %i.qx, %bb.t ], [ 0, %.lr.ph.i249 ] ; 2 uses
  %i.qy = zext nneg i32 %.4.i to i64              ; 2 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.15469.i251, i64 %i.qy
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !12, !alias.scope !124, !noalias !125
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %.15662.i252, i64 %i.qy
  store i32 %i.ra, ptr %i.rb, align 4, !tbaa !12, !alias.scope !125, !noalias !124
  %i.rc = add nuw nsw i32 %.4.i, 1
  %i.rd = zext nneg i32 %i.rc to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph.i249, %bb.u
  %.5.i = phi i64 [ 0, %.lr.ph.i249 ], [ %i.rd, %bb.u ] ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %.15469.i251, i64 %.5.i
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !12, !alias.scope !124, !noalias !125
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %.15662.i252, i64 %.5.i
  store i32 %i.rf, ptr %i.rg, align 4, !tbaa !12, !alias.scope !125, !noalias !124
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %.15662.i252, i64 %i.py
  %i.ri = getelementptr inbounds nuw i8, ptr %.15469.i251, i64 64
  %.not.i253 = icmp eq i32 %i.qc, 0
  br i1 %.not.i253, label %._crit_edge.i254, label %.lr.ph.i249, !llvm.loop !3

._crit_edge.i254:                                 ; preds = %bb.v, %bb.o
  %.not61.1.i255 = icmp eq i32 %i.f, 0
  br i1 %.not61.1.i255, label %opj_dwt_deinterleave_v_cols.exit, label %.lr.ph.preheader.1.i256

.lr.ph.preheader.1.i256:                          ; preds = %._crit_edge.i254
  %.pn70.pn.1.i257 = zext nneg i32 %i.qb to i64
  %.05375.1.i258 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn70.pn.1.i257
  br label %.lr.ph.1.i259

.lr.ph.1.i259:                                    ; preds = %bb.ac, %.lr.ph.preheader.1.i256
  %.in.1.i260 = phi i32 [ %i.rj, %bb.ac ], [ %i.f, %.lr.ph.preheader.1.i256 ]
  %.15469.1.i261 = phi ptr [ %i.sp, %bb.ac ], [ %.05375.1.i258, %.lr.ph.preheader.1.i256 ] ; 8 uses
  %.15662.1.i262 = phi ptr [ %i.so, %bb.ac ], [ %i.qa, %.lr.ph.preheader.1.i256 ] ; 8 uses
  %i.rj = add nsw i32 %.in.1.i260, -1             ; 2 uses
  switch i32 %5, label %bb.ac [
    i32 2, label %bb.ab
    i32 7, label %bb.w
    i32 6, label %bb.x
    i32 5, label %bb.y
    i32 4, label %bb.z
    i32 3, label %bb.aa
  ]

bb.w:                                             ; preds = %.lr.ph.1.i259
  %i.rk = load i32, ptr %.15469.1.i261, align 4, !tbaa !12, !alias.scope !124, !noalias !125
  store i32 %i.rk, ptr %.15662.1.i262, align 4, !tbaa !12, !alias.scope !125, !noalias !124
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.1.i259
  %.0.1.i = phi i32 [ 1, %bb.w ], [ 0, %.lr.ph.1.i259 ] ; 2 uses
  %i.rl = zext nneg i32 %.0.1.i to i64            ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i261, i64 %i.rl
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !12, !alias.scope !124, !noalias !125
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i262, i64 %i.rl
  store i32 %i.rn, ptr %i.ro, align 4, !tbaa !12, !alias.scope !125, !noalias !124
  %i.rp = add nuw nsw i32 %.0.1.i, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.1.i259
  %.1.1.i = phi i32 [ %i.rp, %bb.x ], [ 0, %.lr.ph.1.i259 ] ; 2 uses
  %i.rq = zext nneg i32 %.1.1.i to i64            ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i261, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !12, !alias.scope !124, !noalias !125
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i262, i64 %i.rq
  store i32 %i.rs, ptr %i.rt, align 4, !tbaa !12, !alias.scope !125, !noalias !124
  %i.ru = add nuw nsw i32 %.1.1.i, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.1.i259
  %.2.1.i = phi i32 [ %i.ru, %bb.y ], [ 0, %.lr.ph.1.i259 ] ; 2 uses
  %i.rv = zext nneg i32 %.2.1.i to i64            ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i261, i64 %i.rv
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !12, !alias.scope !124, !noalias !125
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i262, i64 %i.rv
  store i32 %i.rx, ptr %i.ry, align 4, !tbaa !12, !alias.scope !125, !noalias !124
  %i.rz = add nuw nsw i32 %.2.1.i, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.1.i259
  %.3.1.i = phi i32 [ %i.rz, %bb.z ], [ 0, %.lr.ph.1.i259 ] ; 2 uses
  %i.sa = zext nneg i32 %.3.1.i to i64            ; 2 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i261, i64 %i.sa
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !12, !alias.scope !124, !noalias !125
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i262, i64 %i.sa
  store i32 %i.sc, ptr %i.sd, align 4, !tbaa !12, !alias.scope !125, !noalias !124
  %i.se = add nuw nsw i32 %.3.1.i, 1
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.1.i259, %bb.aa
  %.4.1.i = phi i32 [ %i.se, %bb.aa ], [ 0, %.lr.ph.1.i259 ] ; 2 uses
  %i.sf = zext nneg i32 %.4.1.i to i64            ; 2 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i261, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !12, !alias.scope !124, !noalias !125
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i262, i64 %i.sf
  store i32 %i.sh, ptr %i.si, align 4, !tbaa !12, !alias.scope !125, !noalias !124
  %i.sj = add nuw nsw i32 %.4.1.i, 1
  %i.sk = zext nneg i32 %i.sj to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.1.i259, %bb.ab
  %.5.1.i = phi i64 [ 0, %.lr.ph.1.i259 ], [ %i.sk, %bb.ab ] ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i261, i64 %.5.1.i
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !12, !alias.scope !124, !noalias !125
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i262, i64 %.5.1.i
  store i32 %i.sm, ptr %i.sn, align 4, !tbaa !12, !alias.scope !125, !noalias !124
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i262, i64 %i.py
  %i.sp = getelementptr inbounds nuw i8, ptr %.15469.1.i261, i64 64
  %.not.1.i263 = icmp eq i32 %i.rj, 0
  br i1 %.not.1.i263, label %opj_dwt_deinterleave_v_cols.exit, label %.lr.ph.1.i259, !llvm.loop !3

opj_dwt_deinterleave_v_cols.exit:                 ; preds = %bb.ac, %.lr.ph.1.i.prol.loopexit, %.lr.ph.1.i, %._crit_edge.i254, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @opj_dwt_encode_and_deinterleave_h_one_row(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) #3 {
bb.a:
  %.not = icmp ne i32 %3, 0                       ; 2 uses
  %i.a = zext i1 %.not to i32
  %i.b = add i32 %2, %i.a                         ; 3 uses
  %i.c = lshr i32 %i.b, 1                         ; 10 uses
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
  %wide.vec215 = load <8 x i32>, ptr %i.u, align 4, !tbaa !12, !alias.scope !148 ; 2 uses
  %strided.vec216 = shufflevector <8 x i32> %wide.vec215, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec217 = shufflevector <8 x i32> %wide.vec215, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec218 = load <8 x i32>, ptr %i.v, align 4, !tbaa !12, !alias.scope !148 ; 2 uses
  %strided.vec219 = shufflevector <8 x i32> %wide.vec218, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec220 = shufflevector <8 x i32> %wide.vec218, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec221 = load <8 x i32>, ptr %i.r, align 4, !tbaa !12, !alias.scope !148
  %strided.vec222 = shufflevector <8 x i32> %wide.vec221, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec223 = load <8 x i32>, ptr %i.t, align 4, !tbaa !12, !alias.scope !148
  %strided.vec224 = shufflevector <8 x i32> %wide.vec223, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.w = add nsw <4 x i32> %strided.vec217, %strided.vec222
  %i.x = add nsw <4 x i32> %strided.vec220, %strided.vec224
  %i.y = ashr <4 x i32> %i.w, splat (i32 1)
  %i.z = ashr <4 x i32> %i.x, splat (i32 1)
  %i.aa = sub nsw <4 x i32> %strided.vec216, %i.y
  %i.ab = sub nsw <4 x i32> %strided.vec219, %i.z
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep166, i64 %index214 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x i32> %i.aa, ptr %i.ac, align 4, !tbaa !12, !alias.scope !149, !noalias !148
  store <4 x i32> %i.ab, ptr %i.ad, align 4, !tbaa !12, !alias.scope !149, !noalias !148
  %index.next225 = add nuw i64 %index214, 8       ; 2 uses
  %i.ae = icmp eq i64 %index.next225, %n.vec212
  br i1 %i.ae, label %.lr.ph132.preheader252, label %vector.body213, !llvm.loop !129

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
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !12
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !12
  %indvars.iv.next150.prol = add nuw nsw i64 %indvars.iv149.ph, 1 ; 2 uses
  %.idx162.prol = shl nuw nsw i64 %indvars.iv.next150.prol, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.idx162.prol
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12
  %i.am = add nsw i32 %i.al, %i.aj
  %i.an = ashr i32 %i.am, 1
  %i.ao = sub nsw i32 %i.ai, %i.an
  %gep167.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep166, i64 %indvars.iv149.ph
  store i32 %i.ao, ptr %gep167.prol, align 4, !tbaa !12
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
  %i.at = load i32, ptr %i.as, align 4, !tbaa !12
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !12
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 3 uses
  %.idx162 = shl nuw nsw i64 %indvars.iv.next150, 3
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.idx162
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !12
  %i.ax = add nsw i32 %i.aw, %i.au
  %i.ay = ashr i32 %i.ax, 1
  %i.az = sub nsw i32 %i.at, %i.ay
  %gep167 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep166, i64 %indvars.iv149
  store i32 %i.az, ptr %gep167, align 4, !tbaa !12
  %.idx161.1 = shl nuw nsw i64 %indvars.iv.next150, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.idx161.1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !12
  %i.bd = load i32, ptr %i.ba, align 4, !tbaa !12
  %indvars.iv.next150.1 = add nuw nsw i64 %indvars.iv149, 2 ; 3 uses
  %.idx162.1 = shl nuw nsw i64 %indvars.iv.next150.1, 3
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.idx162.1
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !12
  %i.bg = add nsw i32 %i.bf, %i.bd
  %i.bh = ashr i32 %i.bg, 1
  %i.bi = sub nsw i32 %i.bc, %i.bh
  %gep167.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep166, i64 %indvars.iv.next150
  store i32 %i.bi, ptr %gep167.1, align 4, !tbaa !12
  %exitcond153.not.1 = icmp eq i64 %indvars.iv.next150.1, %wide.trip.count152
  br i1 %exitcond153.not.1, label %._crit_edge133, label %.lr.ph132, !llvm.loop !130

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
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !12
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !12
  %i.br = sub nsw i32 %i.bp, %i.bq
  %i.bs = add nuw nsw i32 %.0116.lcssa, %i.c
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bt
  store i32 %i.br, ptr %i.bu, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge133
  %i.bv = zext nneg i32 %i.c to i64               ; 4 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !12
  %i.by = shl nsw i32 %i.bx, 1
  %i.bz = add nsw i32 %i.by, 2
  %i.ca = ashr i32 %i.bz, 2
  %i.cb = load i32, ptr %0, align 4, !tbaa !12
  %i.cc = add nsw i32 %i.ca, %i.cb
  store i32 %i.cc, ptr %0, align 4, !tbaa !12
  %i.cd = icmp sgt i32 %i.d, 1
  br i1 %i.cd, label %.lr.ph137, label %._crit_edge138

.lr.ph137:                                        ; preds = %bb.d
  %4 = sext i32 %i.f to i64
  %wide.trip.count157 = zext nneg i32 %i.d to i64 ; 6 uses
  %invariant.gep168 = getelementptr [4 x i8], ptr %1, i64 %4 ; 4 uses
  %invariant.gep168.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bv ; 5 uses
  %i.ce = add nsw i64 %wide.trip.count157, -1     ; 2 uses
  %min.iters.check236 = icmp ult i32 %i.d, 10
  br i1 %min.iters.check236, label %scalar.ph235.preheader, label %vector.memcheck228

vector.memcheck228:                               ; preds = %.lr.ph137
  %scevgep229 = getelementptr i8, ptr %0, i64 4
  %i.cf = shl nuw nsw i64 %wide.trip.count157, 2
  %scevgep230 = getelementptr i8, ptr %0, i64 %i.cf
  %i.cg = add nuw nsw i64 %i.bv, %wide.trip.count157
  %i.ch = shl nuw nsw i64 %i.cg, 2
  %scevgep231 = getelementptr i8, ptr %1, i64 %i.ch
  %bound0232 = icmp ult ptr %scevgep229, %scevgep231
  %bound1233 = icmp ult ptr %invariant.gep168.a, %scevgep230
  %found.conflict234 = and i1 %bound0232, %bound1233
  br i1 %found.conflict234, label %scalar.ph235.preheader, label %vector.ph237

vector.ph237:                                     ; preds = %vector.memcheck228
  %i.ci = and i64 %i.ce, 7                        ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  %i.ck = select i1 %i.cj, i64 8, i64 %i.ci
  %n.vec238 = sub nsw i64 %i.ce, %i.ck            ; 2 uses
  %i.cl = add nsw i64 %n.vec238, 1
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph237
  %index240 = phi i64 [ 0, %vector.ph237 ], [ %index.next249, %vector.body239 ] ; 3 uses
  %i.cm = or disjoint i64 %index240, 1            ; 4 uses
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = shl i64 %index240, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %i.co
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %wide.vec241 = load <8 x i32>, ptr %i.cp, align 4, !tbaa !12, !alias.scope !150
  %strided.vec242 = shufflevector <8 x i32> %wide.vec241, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec243 = load <8 x i32>, ptr %i.cr, align 4, !tbaa !12, !alias.scope !150
  %strided.vec244 = shufflevector <8 x i32> %wide.vec243, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cs = getelementptr [4 x i8], ptr %invariant.gep168, i64 %i.cm ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  %wide.load245 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !12, !alias.scope !151
  %wide.load246 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !12, !alias.scope !151
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep168.a, i64 %i.cm ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load247 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !12, !alias.scope !151
  %wide.load248 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !12, !alias.scope !151
  %i.cw = add <4 x i32> %wide.load245, splat (i32 2)
  %i.cx = add <4 x i32> %wide.load246, splat (i32 2)
  %i.cy = add <4 x i32> %i.cw, %wide.load247
  %i.cz = add <4 x i32> %i.cx, %wide.load248
  %i.da = ashr <4 x i32> %i.cy, splat (i32 2)
  %i.db = ashr <4 x i32> %i.cz, splat (i32 2)
  %i.dc = add nsw <4 x i32> %i.da, %strided.vec242
  %i.dd = add nsw <4 x i32> %i.db, %strided.vec244
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cm ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <4 x i32> %i.dc, ptr %i.de, align 4, !tbaa !12, !alias.scope !152, !noalias !151
  store <4 x i32> %i.dd, ptr %i.df, align 4, !tbaa !12, !alias.scope !152, !noalias !151
  %index.next249 = add nuw i64 %index240, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next249, %n.vec238
  br i1 %i.dg, label %scalar.ph235.preheader, label %vector.body239, !llvm.loop !135

scalar.ph235.preheader:                           ; preds = %vector.body239, %vector.memcheck228, %.lr.ph137
  %indvars.iv154.ph = phi i64 [ 1, %vector.memcheck228 ], [ 1, %.lr.ph137 ], [ %i.cl, %vector.body239 ] ; 8 uses
  %i.dh = sub nsw i64 %wide.trip.count157, %indvars.iv154.ph
  %xtraiter259 = and i64 %i.dh, 1
  %lcmp.mod260.not = icmp eq i64 %xtraiter259, 0
  br i1 %lcmp.mod260.not, label %scalar.ph235.prol.loopexit, label %scalar.ph235.prol

scalar.ph235.prol:                                ; preds = %scalar.ph235.preheader
  %.idx163.prol = shl nuw nsw i64 %indvars.iv154.ph, 3
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %.idx163.prol
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !12
  %i.dk = getelementptr [4 x i8], ptr %invariant.gep168, i64 %indvars.iv154.ph
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !12
  %gep169.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep168.a, i64 %indvars.iv154.ph
  %i.dm = load i32, ptr %gep169.prol, align 4, !tbaa !12
  %i.dn = add i32 %i.dl, 2
  %i.do = add i32 %i.dn, %i.dm
  %i.dp = ashr i32 %i.do, 2
  %i.dq = add nsw i32 %i.dp, %i.dj
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv154.ph
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !12
  %indvars.iv.next155.prol = add nuw nsw i64 %indvars.iv154.ph, 1
  br label %scalar.ph235.prol.loopexit

scalar.ph235.prol.loopexit:                       ; preds = %scalar.ph235.prol, %scalar.ph235.preheader
  %indvars.iv154.unr = phi i64 [ %indvars.iv154.ph, %scalar.ph235.preheader ], [ %indvars.iv.next155.prol, %scalar.ph235.prol ]
  %i.ds = add nsw i64 %wide.trip.count157, -1
  %i.dt = icmp eq i64 %indvars.iv154.ph, %i.ds
  br i1 %i.dt, label %._crit_edge138, label %scalar.ph235

scalar.ph235:                                     ; preds = %scalar.ph235.prol.loopexit, %scalar.ph235
  %indvars.iv154 = phi i64 [ %indvars.iv.next155.1, %scalar.ph235 ], [ %indvars.iv154.unr, %scalar.ph235.prol.loopexit ] ; 6 uses
  %.idx163 = shl nuw nsw i64 %indvars.iv154, 3
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 %.idx163
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !12
  %i.dw = getelementptr [4 x i8], ptr %invariant.gep168, i64 %indvars.iv154
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !12
  %gep169 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep168.a, i64 %indvars.iv154
  %i.dy = load i32, ptr %gep169, align 4, !tbaa !12
  %i.dz = add i32 %i.dx, 2
  %i.ea = add i32 %i.dz, %i.dy
  %i.eb = ashr i32 %i.ea, 2
  %i.ec = add nsw i32 %i.eb, %i.dv
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv154
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !12
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 4 uses
  %.idx163.1 = shl nuw nsw i64 %indvars.iv.next155, 3
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 %.idx163.1
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !12
  %i.eg = getelementptr [4 x i8], ptr %invariant.gep168, i64 %indvars.iv.next155
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !12
  %gep169.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep168.a, i64 %indvars.iv.next155
  %i.ei = load i32, ptr %gep169.1, align 4, !tbaa !12
  %i.ej = add i32 %i.eh, 2
  %i.ek = add i32 %i.ej, %i.ei
  %i.el = ashr i32 %i.ek, 2
  %i.em = add nsw i32 %i.el, %i.ef
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next155
  store i32 %i.em, ptr %i.en, align 4, !tbaa !12
  %indvars.iv.next155.1 = add nuw nsw i64 %indvars.iv154, 2 ; 2 uses
  %exitcond158.not.1 = icmp eq i64 %indvars.iv.next155.1, %wide.trip.count157
  br i1 %exitcond158.not.1, label %._crit_edge138, label %scalar.ph235, !llvm.loop !136

._crit_edge138:                                   ; preds = %scalar.ph235.prol.loopexit, %scalar.ph235, %bb.d
  %.1117.lcssa = phi i32 [ 1, %bb.d ], [ %i.d, %scalar.ph235 ], [ %i.d, %scalar.ph235.prol.loopexit ] ; 3 uses
  br i1 %i.bk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge138
  %i.eo = shl nuw nsw i32 %.1117.lcssa, 1
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !12
  %i.es = add i32 %i.f, %.1117.lcssa
  %5 = zext nneg i32 %i.es to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %5
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !12
  %i.ev = shl nsw i32 %i.eu, 1
  %i.ew = add nsw i32 %i.ev, 2
  %i.ex = ashr i32 %i.ew, 2
  %i.ey = add nsw i32 %i.ex, %i.er
  %i.ez = zext nneg i32 %.1117.lcssa to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ez
  store i32 %i.ey, ptr %i.fa, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge138
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bv
  %i.fc = sext i32 %i.d to i64
  %i.fd = shl nsw i64 %i.fc, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fb, ptr nonnull align 4 %i.bw, i64 %i.fd, i1 false)
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.fe = icmp eq i32 %2, 1
  %i.ff = load i32, ptr %0, align 4, !tbaa !12    ; 2 uses
  br i1 %i.fe, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fg = shl nsw i32 %i.ff, 1
  store i32 %i.fg, ptr %0, align 4, !tbaa !12
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !12
  %i.fj = sub nsw i32 %i.ff, %i.fi
  %i.fk = zext nneg i32 %i.c to i64               ; 11 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fk ; 2 uses
  store i32 %i.fj, ptr %i.fl, align 4, !tbaa !12
  %i.fm = icmp ugt i32 %i.b, 3
  br i1 %i.fm, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fk ; 4 uses
  %i.fn = add nsw i64 %i.fk, -1                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.fn, 9
  br i1 %min.iters.check, label %.lr.ph.preheader254, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.fo = shl nuw nsw i64 %i.fk, 2
  %i.fp = getelementptr i8, ptr %1, i64 %i.fo
  %scevgep = getelementptr i8, ptr %i.fp, i64 4
  %i.fq = shl nuw nsw i64 %i.fk, 3                ; 2 uses
  %scevgep170 = getelementptr i8, ptr %1, i64 %i.fq
  %scevgep171 = getelementptr i8, ptr %0, i64 4
  %scevgep172 = getelementptr i8, ptr %0, i64 %i.fq
  %bound0 = icmp ult ptr %scevgep, %scevgep172
  %bound1 = icmp ult ptr %scevgep171, %scevgep170
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader254, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fr = and i64 %i.fn, 7                        ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  %i.ft = select i1 %i.fs, i64 8, i64 %i.fr
  %n.vec = sub nsw i64 %i.fn, %i.ft               ; 2 uses
  %i.fu = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fv = or disjoint i64 %index, 1               ; 2 uses
  %i.fw = shl i64 %i.fv, 3
  %i.fx = shl i64 %index, 3
  %i.fy = getelementptr i8, ptr %0, i64 %i.fw     ; 2 uses
  %i.fz = getelementptr i8, ptr %0, i64 %i.fx     ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fy, i64 -4
  %i.gb = getelementptr i8, ptr %i.fz, i64 36
  %wide.vec = load <8 x i32>, ptr %i.ga, align 4, !tbaa !12, !alias.scope !153 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec173 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec174 = load <8 x i32>, ptr %i.gb, align 4, !tbaa !12, !alias.scope !153 ; 2 uses
  %strided.vec175 = shufflevector <8 x i32> %wide.vec174, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec176 = shufflevector <8 x i32> %wide.vec174, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gd = getelementptr i8, ptr %i.fz, i64 44
  %wide.vec177 = load <8 x i32>, ptr %i.gc, align 4, !tbaa !12, !alias.scope !153
  %strided.vec178 = shufflevector <8 x i32> %wide.vec177, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec179 = load <8 x i32>, ptr %i.gd, align 4, !tbaa !12, !alias.scope !153
  %strided.vec180 = shufflevector <8 x i32> %wide.vec179, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ge = add nsw <4 x i32> %strided.vec, %strided.vec178
  %i.gf = add nsw <4 x i32> %strided.vec175, %strided.vec180
  %i.gg = ashr <4 x i32> %i.ge, splat (i32 1)
  %i.gh = ashr <4 x i32> %i.gf, splat (i32 1)
  %i.gi = sub nsw <4 x i32> %strided.vec173, %i.gg
  %i.gj = sub nsw <4 x i32> %strided.vec176, %i.gh
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.fv ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store <4 x i32> %i.gi, ptr %i.gk, align 4, !tbaa !12, !alias.scope !154, !noalias !153
  store <4 x i32> %i.gj, ptr %i.gl, align 4, !tbaa !12, !alias.scope !154, !noalias !153
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gm = icmp eq i64 %index.next, %n.vec
  br i1 %i.gm, label %.lr.ph.preheader254, label %vector.body, !llvm.loop !140

.lr.ph.preheader254:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.fu, %vector.body ] ; 6 uses
  %i.gn = sub nsw i64 %i.fk, %indvars.iv.ph
  %xtraiter = and i64 %i.gn, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader254
  %.idx.prol = shl nsw i64 %indvars.iv.ph, 3
  %i.go = getelementptr i8, ptr %0, i64 %.idx.prol ; 3 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !12
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !12
  %i.gs = getelementptr i8, ptr %i.go, i64 -4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !12
  %i.gu = add nsw i32 %i.gt, %i.gr
  %i.gv = ashr i32 %i.gu, 1
  %i.gw = sub nsw i32 %i.gp, %i.gv
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  store i32 %i.gw, ptr %gep.prol, align 4, !tbaa !12
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader254
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader254 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.gx = add nsw i64 %i.fk, -1
  %i.gy = icmp eq i64 %indvars.iv.ph, %i.gx
  br i1 %i.gy, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.idx = shl i64 %indvars.iv, 3
  %i.gz = getelementptr i8, ptr %0, i64 %.idx     ; 3 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !12
  %i.hd = getelementptr i8, ptr %i.gz, i64 -4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !12
  %i.hf = add nsw i32 %i.he, %i.hc
  %i.hg = ashr i32 %i.hf, 1
  %i.hh = sub nsw i32 %i.ha, %i.hg
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.hh, ptr %gep, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.idx.1 = shl i64 %indvars.iv.next, 3
  %i.hi = getelementptr i8, ptr %0, i64 %.idx.1   ; 3 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !12
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !12
  %i.hm = getelementptr i8, ptr %i.hi, i64 -4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !12
  %i.ho = add nsw i32 %i.hn, %i.hl
  %i.hp = ashr i32 %i.ho, 1
  %i.hq = sub nsw i32 %i.hj, %i.hp
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store i32 %i.hq, ptr %gep.1, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.fk
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !141

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.i
  %.0.lcssa = phi i32 [ 1, %bb.i ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.hr = and i32 %2, 1
  %.not123 = icmp eq i32 %i.hr, 0                 ; 2 uses
  br i1 %.not123, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.hs = shl nuw nsw i32 %.0.lcssa, 1
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr [4 x i8], ptr %0, i64 %i.ht ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !12
  %i.hw = getelementptr i8, ptr %i.hu, i64 -4
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !12
  %i.hy = sub nsw i32 %i.hv, %i.hx
  %i.hz = add nuw nsw i32 %.0.lcssa, %i.c
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ia
  store i32 %i.hy, ptr %i.ib, align 4, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.ic = add i32 %i.d, -1                        ; 3 uses
  %i.id = icmp sgt i32 %i.d, 1
  br i1 %i.id, label %.lr.ph128.preheader, label %._crit_edge129

.lr.ph128.preheader:                              ; preds = %bb.k
  %wide.trip.count147 = zext i32 %i.ic to i64     ; 7 uses
  %invariant.gep164 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fk ; 5 uses
  %min.iters.check188 = icmp ult i32 %i.d, 10
  br i1 %min.iters.check188, label %.lr.ph128.preheader253, label %vector.memcheck181

vector.memcheck181:                               ; preds = %.lr.ph128.preheader
  %i.ie = shl nuw nsw i64 %wide.trip.count147, 2
  %scevgep182 = getelementptr i8, ptr %0, i64 %i.ie
  %i.if = add nuw nsw i64 %i.fk, %wide.trip.count147
  %i.ig = shl nuw nsw i64 %i.if, 2
  %i.ih = getelementptr i8, ptr %1, i64 %i.ig
  %scevgep183 = getelementptr i8, ptr %i.ih, i64 4
  %bound0184 = icmp ult ptr %0, %scevgep183
  %bound1185 = icmp ult ptr %invariant.gep164, %scevgep182
  %found.conflict186 = and i1 %bound0184, %bound1185
end_hunk_0
begin_hunk_1_@opj_idwt53_v:bb.a
  %i.ag = add nsw i32 %i.f, -4
  %i.ah = lshr i32 %i.ag, 1
  %i.ai = add nuw nsw i32 %i.ah, 2
  %wide.trip.count.i = zext nneg i32 %i.ai to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.0.in118.i = phi <4 x i32> [ %i.ae, %.lr.ph.preheader.i ], [ %i.bd, %.lr.ph.i ] ; 2 uses
  %.0108117.i = phi <2 x i64> [ %i.u, %.lr.ph.preheader.i ], [ %i.ar, %.lr.ph.i ]
  %.0109.in116.i = phi <4 x i32> [ %i.z, %.lr.ph.preheader.i ], [ %i.ax, %.lr.ph.i ] ; 2 uses
  %.0110115.i = phi <2 x i64> [ %i.s, %.lr.ph.preheader.i ], [ %i.ap, %.lr.ph.i ]
  %.0111114.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.bo, %.lr.ph.i ] ; 2 uses
  %i.aj = mul nuw nsw i64 %.0111114.i, %2         ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aj ; 2 uses
  %i.al = load <4 x i32>, ptr %i.ak, align 1, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load <4 x i32>, ptr %i.am, align 1, !tbaa !47
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aj ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.ao, align 1, !tbaa !47 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load <2 x i64>, ptr %i.aq, align 1, !tbaa !47 ; 3 uses
  %i.as = bitcast <2 x i64> %.0110115.i to <4 x i32> ; 2 uses
  %i.at = bitcast <2 x i64> %i.ap to <4 x i32>
  %i.au = add <4 x i32> %i.as, splat (i32 2)
  %i.av = add <4 x i32> %i.au, %i.at
  %i.aw = ashr <4 x i32> %i.av, splat (i32 2)
  %i.ax = sub <4 x i32> %i.al, %i.aw              ; 3 uses
  %i.ay = bitcast <2 x i64> %.0108117.i to <4 x i32> ; 2 uses
  %i.az = bitcast <2 x i64> %i.ar to <4 x i32>
  %i.ba = add <4 x i32> %i.ay, splat (i32 2)
  %i.bb = add <4 x i32> %i.ba, %i.az
  %i.bc = ashr <4 x i32> %i.bb, splat (i32 2)
  %i.bd = sub <4 x i32> %i.an, %i.bc              ; 3 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 5
  %i.be = getelementptr i8, ptr %i.l, i64 %.idx.i ; 4 uses
  store <4 x i32> %.0109.in116.i, ptr %i.be, align 16, !tbaa !47
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x i32> %.0.in118.i, ptr %i.bf, align 16, !tbaa !47
  %i.bg = getelementptr i8, ptr %i.be, i64 32
  %i.bh = add <4 x i32> %i.ax, %.0109.in116.i
  %i.bi = ashr <4 x i32> %i.bh, splat (i32 1)
  %i.bj = add <4 x i32> %i.bi, %i.as
  store <4 x i32> %i.bj, ptr %i.bg, align 16, !tbaa !47
  %i.bk = getelementptr i8, ptr %i.be, i64 48
  %i.bl = add <4 x i32> %i.bd, %.0.in118.i
  %i.bm = ashr <4 x i32> %i.bl, splat (i32 1)
  %i.bn = add <4 x i32> %i.bm, %i.ay
  store <4 x i32> %i.bn, ptr %i.bk, align 16, !tbaa !47
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bo = add nuw nsw i64 %.0111114.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bo, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !352

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.bp = shl i64 %indvars.iv.next.i, 3
  %i.bq = and i64 %i.bp, 4294967280
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %.0112.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.bq, %._crit_edge.loopexit.i ]
  %.0110.lcssa.i = phi <2 x i64> [ %i.s, %bb.c ], [ %i.ap, %._crit_edge.loopexit.i ] ; 2 uses
  %.0109.in.lcssa.i = phi <4 x i32> [ %i.z, %bb.c ], [ %i.ax, %._crit_edge.loopexit.i ] ; 3 uses
  %.0108.lcssa.i = phi <2 x i64> [ %i.u, %bb.c ], [ %i.ar, %._crit_edge.loopexit.i ] ; 2 uses
  %.0.in.lcssa.i = phi <4 x i32> [ %i.ae, %bb.c ], [ %i.bd, %._crit_edge.loopexit.i ] ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0112.lcssa.i ; 2 uses
  store <4 x i32> %.0109.in.lcssa.i, ptr %i.br, align 16, !tbaa !47
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <4 x i32> %.0.in.lcssa.i, ptr %i.bs, align 16, !tbaa !47
  %i.bt = and i32 %i.f, 1
  %.not.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.bu = add nsw i32 %i.f, -1                    ; 2 uses
  %i.bv = lshr exact i32 %i.bu, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = mul nuw nsw i64 %2, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bx ; 2 uses
  %i.bz = load <4 x i32>, ptr %i.by, align 1, !tbaa !47
  %i.ca = bitcast <2 x i64> %.0110.lcssa.i to <4 x i32> ; 2 uses
  %i.cb = shl <4 x i32> %i.ca, splat (i32 1)
  %i.cc = add <4 x i32> %i.cb, splat (i32 2)
  %i.cd = ashr <4 x i32> %i.cc, splat (i32 2)
  %i.ce = sub <4 x i32> %i.bz, %i.cd              ; 2 uses
  %i.cf = shl nuw nsw i32 %i.bu, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cg ; 2 uses
  store <4 x i32> %i.ce, ptr %i.ch, align 16, !tbaa !47
  %i.ci = shl i32 %i.f, 3
  %i.cj = add i32 %i.ci, -16
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ck ; 2 uses
  %i.cm = add <4 x i32> %i.ce, %.0109.in.lcssa.i
  %i.cn = ashr <4 x i32> %i.cm, splat (i32 1)
  %i.co = add <4 x i32> %i.cn, %i.ca
  store <4 x i32> %i.co, ptr %i.cl, align 16, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cq = load <4 x i32>, ptr %i.cp, align 1, !tbaa !47
  %i.cr = bitcast <2 x i64> %.0108.lcssa.i to <4 x i32> ; 2 uses
  %i.cs = shl <4 x i32> %i.cr, splat (i32 1)
  %i.ct = add <4 x i32> %i.cs, splat (i32 2)
  %i.cu = ashr <4 x i32> %i.ct, splat (i32 2)
  %i.cv = sub <4 x i32> %i.cq, %i.cu              ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x i32> %i.cv, ptr %i.cw, align 16, !tbaa !47
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cy = add <4 x i32> %i.cv, %.0.in.lcssa.i
  %i.cz = ashr <4 x i32> %i.cy, splat (i32 1)
  %i.da = add <4 x i32> %i.cz, %i.cr
  store <4 x i32> %i.da, ptr %i.cx, align 16, !tbaa !47
  br label %.new332

bb.e:                                             ; preds = %._crit_edge.i
  %i.db = shl i32 %i.f, 3
  %i.dc = add i32 %i.db, -8
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.dd ; 2 uses
  %i.df = bitcast <2 x i64> %.0110.lcssa.i to <4 x i32>
  %i.dg = add <4 x i32> %.0109.in.lcssa.i, %i.df
  store <4 x i32> %i.dg, ptr %i.de, align 16, !tbaa !47
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.di = bitcast <2 x i64> %.0108.lcssa.i to <4 x i32>
  %i.dj = add <4 x i32> %.0.in.lcssa.i, %i.di
  store <4 x i32> %i.dj, ptr %i.dh, align 16, !tbaa !47
  br label %.new332

.new332:                                          ; preds = %bb.e, %bb.d
  %wide.trip.count.i.i = zext nneg i32 %i.f to i64 ; 2 uses
  %xtraiter334 = and i64 %wide.trip.count.i.i, 1
  %unroll_iter337 = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new332
  %indvars.iv.i.i = phi i64 [ 0, %.new332 ], [ %indvars.iv.next.i.i.1, %bb.f ] ; 4 uses
  %niter338 = phi i64 [ 0, %.new332 ], [ %niter338.next.1, %bb.f ]
  %i.dk = mul nuw nsw i64 %indvars.iv.i.i, %2
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dk ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i ; 2 uses
  %i.dn = load <2 x i64>, ptr %i.dm, align 16, !tbaa !47
  store <2 x i64> %i.dn, ptr %i.dl, align 1, !tbaa !47
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load <2 x i64>, ptr %i.dp, align 16, !tbaa !47
  store <2 x i64> %i.dq, ptr %i.do, align 1, !tbaa !47
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dr = mul nuw nsw i64 %indvars.iv.next.i.i, %2
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dr ; 2 uses
  %.idx.i.i.1 = shl nuw nsw i64 %indvars.iv.next.i.i, 5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.1 ; 2 uses
  %i.du = load <2 x i64>, ptr %i.dt, align 16, !tbaa !47
  store <2 x i64> %i.du, ptr %i.ds, align 1, !tbaa !47
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dx = load <2 x i64>, ptr %i.dw, align 16, !tbaa !47
  store <2 x i64> %i.dx, ptr %i.dv, align 1, !tbaa !47
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 3 uses
  %niter338.next.1 = add i64 %niter338, 2         ; 2 uses
  %niter338.ncmp.1 = icmp eq i64 %niter338.next.1, %unroll_iter337
  br i1 %niter338.ncmp.1, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !353

bb.g:                                             ; preds = %bb.b
  %i.dy = icmp sgt i32 %3, 0
  %or.cond141 = and i1 %i.j, %i.dy
  br i1 %or.cond141, label %.lr.ph140, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

.lr.ph140:                                        ; preds = %bb.g
  %i.dz = load ptr, ptr %0, align 8, !tbaa !50    ; 15 uses
  %i.ea = ptrtoaddr ptr %i.dz to i64
  %i.eb = sext i32 %i.c to i64
  %i.ec = mul nsw i64 %2, %i.eb
  %i.ed = icmp samesign ugt i32 %i.f, 3
  %i.ee = add i32 %i.c, 1                         ; 5 uses
  %i.ef = add nsw i32 %i.f, -4                    ; 4 uses
  %i.eg = lshr i32 %i.ef, 1
  %i.eh = add nuw i32 %i.eg, 1
  %wide.trip.count.i81 = zext i32 %i.eh to i64    ; 3 uses
  %i.ei = and i32 %i.f, 1
  %.not.i79 = icmp eq i32 %i.ei, 0
  %i.ej = add nsw i32 %i.f, -1                    ; 2 uses
  %i.ek = lshr exact i32 %i.ej, 1
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = mul nuw nsw i64 %2, %i.el
  %i.en = zext nneg i32 %i.ej to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.en
  %i.ep = zext nneg i32 %i.f to i64               ; 6 uses
  %i.eq = getelementptr [4 x i8], ptr %i.dz, i64 %i.ep
  %i.er = sub i64 %i.a, %i.ea
  %i.es = lshr i32 %i.ef, 1
  %i.et = lshr i32 %i.ef, 1
  %i.eu = zext nneg i32 %i.et to i64              ; 2 uses
  %i.ev = shl nuw nsw i64 %i.eu, 3
  %i.ew = getelementptr i8, ptr %i.dz, i64 %i.ev
  %scevgep263 = getelementptr i8, ptr %i.ew, i64 8 ; 2 uses
  %i.ex = sext i32 %i.ee to i64
  %i.ey = shl nsw i64 %i.ex, 2                    ; 2 uses
  %scevgep264 = getelementptr i8, ptr %1, i64 %i.ey
  %i.ez = shl nuw nsw i64 %i.eu, 2                ; 2 uses
  %i.fa = add nsw i32 %3, -1
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = shl nuw nsw i64 %i.fb, 2                ; 2 uses
  %i.fd = getelementptr i8, ptr %1, i64 %i.ez
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.ey
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.fc
  %scevgep265 = getelementptr i8, ptr %i.ff, i64 4
  %scevgep266 = getelementptr i8, ptr %1, i64 4
  %i.fg = getelementptr i8, ptr %1, i64 %i.ez
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.fc
  %scevgep267 = getelementptr i8, ptr %i.fh, i64 8
  %min.iters.check276 = icmp ult i32 %i.ef, 10
  %ident.check261 = icmp ne i64 %2, 1
  %i.fi = add i32 %i.ee, %i.es
  %i.fj = icmp slt i32 %i.fi, %i.ee
  %i.fk = or i1 %ident.check261, %i.fj
  %bound0268 = icmp ult ptr %i.dz, %scevgep265
  %bound1269 = icmp ult ptr %scevgep264, %scevgep263
  %found.conflict270 = and i1 %bound0268, %bound1269
  %bound0271 = icmp ult ptr %i.dz, %scevgep267
  %bound1272 = icmp ult ptr %scevgep266, %scevgep263
  %found.conflict273 = and i1 %bound0271, %bound1272
  %conflict.rdx274 = or i1 %found.conflict270, %found.conflict273
  %n.vec278 = and i64 %wide.trip.count.i81, 4294967294 ; 4 uses
  %i.fl = shl nuw nsw i64 %n.vec278, 1            ; 2 uses
  %cmp.n292 = icmp eq i64 %n.vec278, %wide.trip.count.i81
  %min.iters.check249 = icmp ult i32 %i.f, 8
  %ident.check243.not = icmp ne i64 %2, 1
  %or.cond298.not304 = or i1 %min.iters.check249, %ident.check243.not
  %invariant.op352 = add i64 %i.er, -1
  %n.vec251 = and i64 %i.ep, 2147483640           ; 3 uses
  %cmp.n258 = icmp eq i64 %n.vec251, %i.ep
  %xtraiter329 = and i64 %i.ep, 3                 ; 2 uses
  %lcmp.mod330.not = icmp eq i64 %xtraiter329, 0
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph140, %opj_idwt3_v_cas0.exit
  %indvar245 = phi i64 [ 0, %.lr.ph140 ], [ %indvar.next246, %opj_idwt3_v_cas0.exit ] ; 2 uses
  %.073139 = phi i32 [ 0, %.lr.ph140 ], [ %i.in, %opj_idwt3_v_cas0.exit ]
  %.074138 = phi ptr [ %1, %.lr.ph140 ], [ %i.io, %opj_idwt3_v_cas0.exit ] ; 14 uses
  %i.fm = shl nuw nsw i64 %indvar245, 2
  %i.fn = load i32, ptr %.074138, align 4, !tbaa !12
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.074138, i64 %i.ec
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !12 ; 6 uses
  %i.fq = add nsw i32 %i.fp, 1
  %i.fr = ashr i32 %i.fq, 1
  %i.fs = sub nsw i32 %i.fn, %i.fr                ; 5 uses
  br i1 %i.ed, label %.lr.ph.i80.preheader, label %._crit_edge.i78

.lr.ph.i80.preheader:                             ; preds = %bb.h
  br i1 %min.iters.check276, label %.lr.ph.i80.preheader308, label %vector.scevcheck260

vector.scevcheck260:                              ; preds = %.lr.ph.i80.preheader
  br i1 %i.fk, label %.lr.ph.i80.preheader308, label %vector.memcheck262

vector.memcheck262:                               ; preds = %vector.scevcheck260
  br i1 %conflict.rdx274, label %.lr.ph.i80.preheader308, label %vector.ph277

vector.ph277:                                     ; preds = %vector.memcheck262
  %vector.recur.init281 = insertelement <2 x i32> poison, i32 %i.fs, i64 1
  %vector.recur.init283 = insertelement <2 x i32> poison, i32 %i.fp, i64 1
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph277
  %index280 = phi i64 [ 0, %vector.ph277 ], [ %index.next288, %vector.body279 ] ; 4 uses
  %vector.recur282 = phi <2 x i32> [ %vector.recur.init281, %vector.ph277 ], [ %i.gd, %vector.body279 ]
  %vector.recur284 = phi <2 x i32> [ %vector.recur.init283, %vector.ph277 ], [ %wide.load286, %vector.body279 ]
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.074138, i64 %index280
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %wide.load285 = load <2 x i32>, ptr %i.fu, align 4, !tbaa !12, !alias.scope !378
  %i.fv = trunc nuw nsw i64 %index280 to i32
  %i.fw = add i32 %i.ee, %i.fv
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.074138, i64 %i.fx
  %wide.load286 = load <2 x i32>, ptr %i.fy, align 4, !tbaa !12, !alias.scope !379 ; 4 uses
  %i.fz = shufflevector <2 x i32> %vector.recur284, <2 x i32> %wide.load286, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ga = add <2 x i32> %i.fz, splat (i32 2)
  %i.gb = add <2 x i32> %i.ga, %wide.load286
  %i.gc = ashr <2 x i32> %i.gb, splat (i32 2)
  %i.gd = sub <2 x i32> %wide.load285, %i.gc      ; 4 uses
  %i.ge = shufflevector <2 x i32> %vector.recur282, <2 x i32> %i.gd, <2 x i32> <i32 1, i32 2> ; 2 uses
  %.idx297 = shl nuw i64 %index280, 3
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.idx297
  %i.gg = add <2 x i32> %i.gd, %i.ge
  %i.gh = ashr <2 x i32> %i.gg, splat (i32 1)
  %i.gi = add <2 x i32> %i.gh, %i.fz
  %interleaved.vec287 = shufflevector <2 x i32> %i.ge, <2 x i32> %i.gi, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec287, ptr %i.gf, align 4, !tbaa !12, !alias.scope !380, !noalias !381
  %index.next288 = add nuw i64 %index280, 2       ; 2 uses
  %i.gj = icmp eq i64 %index.next288, %n.vec278
  br i1 %i.gj, label %middle.block289, label %vector.body279, !llvm.loop !358

middle.block289:                                  ; preds = %vector.body279
  %vector.recur.extract290 = extractelement <2 x i32> %i.gd, i64 1 ; 2 uses
  %vector.recur.extract291 = extractelement <2 x i32> %wide.load286, i64 1 ; 2 uses
  br i1 %cmp.n292, label %._crit_edge.i78, label %.lr.ph.i80.preheader308

.lr.ph.i80.preheader308:                          ; preds = %vector.memcheck262, %vector.scevcheck260, %.lr.ph.i80.preheader, %middle.block289
  %indvars.iv69.i.ph = phi i64 [ 0, %vector.memcheck262 ], [ 0, %vector.scevcheck260 ], [ 0, %.lr.ph.i80.preheader ], [ %i.fl, %middle.block289 ]
  %indvars.iv.i82.ph = phi i64 [ 0, %vector.memcheck262 ], [ 0, %vector.scevcheck260 ], [ 0, %.lr.ph.i80.preheader ], [ %n.vec278, %middle.block289 ]
  %.063.i.ph = phi i32 [ %i.fs, %vector.memcheck262 ], [ %i.fs, %vector.scevcheck260 ], [ %i.fs, %.lr.ph.i80.preheader ], [ %vector.recur.extract290, %middle.block289 ]
  %.05762.i.ph = phi i32 [ %i.fp, %vector.memcheck262 ], [ %i.fp, %vector.scevcheck260 ], [ %i.fp, %.lr.ph.i80.preheader ], [ %vector.recur.extract291, %middle.block289 ]
  br label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.preheader308, %.lr.ph.i80
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %.lr.ph.i80 ], [ %indvars.iv69.i.ph, %.lr.ph.i80.preheader308 ] ; 2 uses
  %indvars.iv.i82 = phi i64 [ %indvars.iv.next.i83, %.lr.ph.i80 ], [ %indvars.iv.i82.ph, %.lr.ph.i80.preheader308 ] ; 2 uses
  %.063.i = phi i32 [ %i.gw, %.lr.ph.i80 ], [ %.063.i.ph, %.lr.ph.i80.preheader308 ] ; 2 uses
  %.05762.i = phi i32 [ %i.gs, %.lr.ph.i80 ], [ %.05762.i.ph, %.lr.ph.i80.preheader308 ] ; 2 uses
  %indvars.iv.next.i83 = add nuw nsw i64 %indvars.iv.i82, 1 ; 3 uses
  %i.gk = mul nuw nsw i64 %indvars.iv.next.i83, %2
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.074138, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !12
  %i.gn = trunc nuw nsw i64 %indvars.iv.i82 to i32
  %i.go = add i32 %i.ee, %i.gn
  %i.gp = sext i32 %i.go to i64
  %i.gq = mul nsw i64 %2, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.074138, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !12 ; 3 uses
  %i.gt = add i32 %.05762.i, 2
  %i.gu = add i32 %i.gt, %i.gs
  %i.gv = ashr i32 %i.gu, 2
  %i.gw = sub i32 %i.gm, %i.gv                    ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv69.i ; 2 uses
  store i32 %.063.i, ptr %i.gx, align 4, !tbaa !12
  %i.gy = add i32 %i.gw, %.063.i
  %i.gz = ashr i32 %i.gy, 1
  %i.ha = add i32 %i.gz, %.05762.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !12
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 2 ; 2 uses
  %exitcond.not.i84 = icmp eq i64 %indvars.iv.next.i83, %wide.trip.count.i81
  br i1 %exitcond.not.i84, label %._crit_edge.i78, label %.lr.ph.i80, !llvm.loop !359

._crit_edge.i78:                                  ; preds = %.lr.ph.i80, %middle.block289, %bb.h
  %.059.lcssa.i = phi i64 [ 0, %bb.h ], [ %i.fl, %middle.block289 ], [ %indvars.iv.next70.i, %.lr.ph.i80 ]
  %.057.lcssa.i = phi i32 [ %i.fp, %bb.h ], [ %vector.recur.extract291, %middle.block289 ], [ %i.gs, %.lr.ph.i80 ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.fs, %bb.h ], [ %vector.recur.extract290, %middle.block289 ], [ %i.gw, %.lr.ph.i80 ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.059.lcssa.i
  store i32 %.0.lcssa.i, ptr %i.hc, align 4, !tbaa !12
  br i1 %.not.i79, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i78
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.074138, i64 %i.em
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !12
  %i.hf = add nsw i32 %.057.lcssa.i, 1
  %i.hg = ashr i32 %i.hf, 1
  %i.hh = sub nsw i32 %i.he, %i.hg                ; 2 uses
  store i32 %i.hh, ptr %i.eo, align 4, !tbaa !12
  %i.hi = add nsw i32 %i.hh, %.0.lcssa.i
  %i.hj = ashr i32 %i.hi, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i78
  %.0.lcssa.sink.i = phi i32 [ %i.hj, %bb.i ], [ %.0.lcssa.i, %._crit_edge.i78 ]
  %.sink82.i = phi i64 [ -8, %bb.i ], [ -4, %._crit_edge.i78 ]
  %i.hk = add nsw i32 %.0.lcssa.sink.i, %.057.lcssa.i
  %i.hl = getelementptr i8, ptr %i.eq, i64 %.sink82.i
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !12
  %.reass353 = add i64 %i.fm, %invariant.op352
  %diff.check247 = icmp ult i64 %.reass353, 31
  %or.cond299 = select i1 %or.cond298.not304, i1 true, i1 %diff.check247
  br i1 %or.cond299, label %scalar.ph248.preheader, label %vector.body252

vector.body252:                                   ; preds = %bb.j, %vector.body252
  %index253 = phi i64 [ %index.next256, %vector.body252 ], [ 0, %bb.j ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %index253 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %wide.load254 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !12
  %wide.load255 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !12
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.074138, i64 %index253 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <4 x i32> %wide.load254, ptr %i.ho, align 4, !tbaa !12
  store <4 x i32> %wide.load255, ptr %i.hp, align 4, !tbaa !12
  %index.next256 = add nuw i64 %index253, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next256, %n.vec251
  br i1 %i.hq, label %middle.block257, label %vector.body252, !llvm.loop !360

middle.block257:                                  ; preds = %vector.body252
  br i1 %cmp.n258, label %opj_idwt3_v_cas0.exit, label %scalar.ph248.preheader

scalar.ph248.preheader:                           ; preds = %bb.j, %middle.block257
  %indvars.iv74.i.ph = phi i64 [ 0, %bb.j ], [ %n.vec251, %middle.block257 ] ; 3 uses
  br i1 %lcmp.mod330.not, label %scalar.ph248.prol.loopexit, label %scalar.ph248.prol

scalar.ph248.prol:                                ; preds = %scalar.ph248.preheader, %scalar.ph248.prol
  %indvars.iv74.i.prol = phi i64 [ %indvars.iv.next75.i.prol, %scalar.ph248.prol ], [ %indvars.iv74.i.ph, %scalar.ph248.preheader ] ; 3 uses
  %prol.iter331 = phi i64 [ %prol.iter331.next, %scalar.ph248.prol ], [ 0, %scalar.ph248.preheader ]
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv74.i.prol
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !12
  %i.ht = mul nuw nsw i64 %indvars.iv74.i.prol, %2
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.074138, i64 %i.ht
  store i32 %i.hs, ptr %i.hu, align 4, !tbaa !12
  %indvars.iv.next75.i.prol = add nuw nsw i64 %indvars.iv74.i.prol, 1 ; 2 uses
  %prol.iter331.next = add i64 %prol.iter331, 1   ; 2 uses
  %prol.iter331.cmp.not = icmp eq i64 %prol.iter331.next, %xtraiter329
  br i1 %prol.iter331.cmp.not, label %scalar.ph248.prol.loopexit, label %scalar.ph248.prol, !llvm.loop !361

scalar.ph248.prol.loopexit:                       ; preds = %scalar.ph248.prol, %scalar.ph248.preheader
  %indvars.iv74.i.unr = phi i64 [ %indvars.iv74.i.ph, %scalar.ph248.preheader ], [ %indvars.iv.next75.i.prol, %scalar.ph248.prol ]
  %i.hv = sub nsw i64 %indvars.iv74.i.ph, %i.ep
  %i.hw = icmp ugt i64 %i.hv, -4
end_hunk_1
begin_hunk_2_@opj_idwt53_v:bb.a

.lr.ph.i95:                                       ; preds = %.lr.ph.i95, %.lr.ph.preheader.i93
  %indvars.iv.i96 = phi i64 [ 1, %.lr.ph.preheader.i93 ], [ %indvars.iv.next.i98, %.lr.ph.i95 ] ; 3 uses
  %.0.in122.i = phi <4 x i32> [ %i.ku, %.lr.ph.preheader.i93 ], [ %i.mc, %.lr.ph.i95 ] ; 2 uses
  %.0111121.i = phi <2 x i64> [ %i.kl, %.lr.ph.preheader.i93 ], [ %i.ll, %.lr.ph.i95 ]
  %.0112.in120.i = phi <4 x i32> [ %i.ki, %.lr.ph.preheader.i93 ], [ %i.lu, %.lr.ph.i95 ] ; 2 uses
  %.0113119.i = phi <2 x i64> [ %i.kb, %.lr.ph.preheader.i93 ], [ %i.lj, %.lr.ph.i95 ]
  %.0114118.i = phi i64 [ 1, %.lr.ph.preheader.i93 ], [ %i.lg, %.lr.ph.i95 ] ; 2 uses
  %i.lg = add nuw nsw i64 %.0114118.i, 1          ; 3 uses
  %i.lh = mul nuw nsw i64 %i.lg, %2
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.lh ; 2 uses
  %i.lj = load <2 x i64>, ptr %i.li, align 1, !tbaa !47 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.ll = load <2 x i64>, ptr %i.lk, align 1, !tbaa !47 ; 3 uses
  %i.lm = mul nuw nsw i64 %.0114118.i, %2
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lm ; 2 uses
  %i.lo = load <4 x i32>, ptr %i.ln, align 1, !tbaa !47
  %i.lp = bitcast <2 x i64> %.0113119.i to <4 x i32> ; 2 uses
  %i.lq = bitcast <2 x i64> %i.lj to <4 x i32>
  %i.lr = add <4 x i32> %i.lp, splat (i32 2)
  %i.ls = add <4 x i32> %i.lr, %i.lq
  %i.lt = ashr <4 x i32> %i.ls, splat (i32 2)
  %i.lu = sub <4 x i32> %i.lo, %i.lt              ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lw = load <4 x i32>, ptr %i.lv, align 1, !tbaa !47
  %i.lx = bitcast <2 x i64> %.0111121.i to <4 x i32> ; 2 uses
  %i.ly = bitcast <2 x i64> %i.ll to <4 x i32>
  %i.lz = add <4 x i32> %i.lx, splat (i32 2)
  %i.ma = add <4 x i32> %i.lz, %i.ly
  %i.mb = ashr <4 x i32> %i.ma, splat (i32 2)
  %i.mc = sub <4 x i32> %i.lw, %i.mb              ; 3 uses
  %.idx.i97 = shl nuw nsw i64 %indvars.iv.i96, 5
  %i.md = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx.i97 ; 2 uses
  store <4 x i32> %.0112.in120.i, ptr %i.md, align 16, !tbaa !47
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store <4 x i32> %.0.in122.i, ptr %i.me, align 16, !tbaa !47
  %i.mf = shl i64 %indvars.iv.i96, 35
  %sext.i = add i64 %i.mf, 34359738368
  %i.mg = ashr exact i64 %sext.i, 30
  %i.mh = getelementptr inbounds i8, ptr %i.jw, i64 %i.mg ; 2 uses
  %i.mi = add <4 x i32> %i.lu, %.0112.in120.i
  %i.mj = ashr <4 x i32> %i.mi, splat (i32 1)
  %i.mk = add <4 x i32> %i.mj, %i.lp
  store <4 x i32> %i.mk, ptr %i.mh, align 16, !tbaa !47
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mm = add <4 x i32> %i.mc, %.0.in122.i
  %i.mn = ashr <4 x i32> %i.mm, splat (i32 1)
  %i.mo = add <4 x i32> %i.mn, %i.lx
  store <4 x i32> %i.mo, ptr %i.ml, align 16, !tbaa !47
  %indvars.iv.next.i98 = add nuw nsw i64 %indvars.iv.i96, 2 ; 2 uses
  %exitcond.not.i99 = icmp eq i64 %i.lg, %wide.trip.count.i94
  br i1 %exitcond.not.i99, label %._crit_edge.loopexit.i100, label %.lr.ph.i95, !llvm.loop !367

._crit_edge.loopexit.i100:                        ; preds = %.lr.ph.i95
  %i.mp = shl i64 %indvars.iv.next.i98, 3
  %i.mq = and i64 %i.mp, 4294967288
  br label %._crit_edge.i85

._crit_edge.i85:                                  ; preds = %._crit_edge.loopexit.i100, %bb.o
  %.0115.lcssa.i = phi i64 [ 8, %bb.o ], [ %i.mq, %._crit_edge.loopexit.i100 ]
  %.0113.lcssa.i = phi <2 x i64> [ %i.kb, %bb.o ], [ %i.lj, %._crit_edge.loopexit.i100 ] ; 2 uses
  %.0112.in.lcssa.i = phi <4 x i32> [ %i.ki, %bb.o ], [ %i.lu, %._crit_edge.loopexit.i100 ] ; 3 uses
  %.0111.lcssa.i = phi <2 x i64> [ %i.kl, %bb.o ], [ %i.ll, %._crit_edge.loopexit.i100 ] ; 2 uses
  %.0.in.lcssa.i86 = phi <4 x i32> [ %i.ku, %bb.o ], [ %i.mc, %._crit_edge.loopexit.i100 ] ; 3 uses
  %.not.i87 = icmp eq i32 %i.ky, 0
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %.0115.lcssa.i ; 2 uses
  store <4 x i32> %.0112.in.lcssa.i, ptr %i.mr, align 16, !tbaa !47
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store <4 x i32> %.0.in.lcssa.i86, ptr %i.ms, align 16, !tbaa !47
  br i1 %.not.i87, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i85
  %i.mt = lshr exact i32 %i.f, 1
  %i.mu = add nsw i32 %i.mt, -1
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = mul nuw nsw i64 %2, %i.mv
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.mw ; 2 uses
  %i.my = load <4 x i32>, ptr %i.mx, align 1, !tbaa !47
  %i.mz = bitcast <2 x i64> %.0113.lcssa.i to <4 x i32> ; 2 uses
  %i.na = shl <4 x i32> %i.mz, splat (i32 1)
  %i.nb = add <4 x i32> %i.na, splat (i32 2)
  %i.nc = ashr <4 x i32> %i.nb, splat (i32 2)
  %i.nd = sub <4 x i32> %i.my, %i.nc              ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.nf = load <4 x i32>, ptr %i.ne, align 1, !tbaa !47
  %i.ng = bitcast <2 x i64> %.0111.lcssa.i to <4 x i32> ; 2 uses
  %i.nh = shl <4 x i32> %i.ng, splat (i32 1)
  %i.ni = add <4 x i32> %i.nh, splat (i32 2)
  %i.nj = ashr <4 x i32> %i.ni, splat (i32 2)
  %i.nk = sub <4 x i32> %i.nf, %i.nj              ; 2 uses
  %i.nl = shl nuw nsw i32 %i.kx, 3
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.nm ; 2 uses
  %i.no = add <4 x i32> %i.nd, %.0112.in.lcssa.i
  %i.np = ashr <4 x i32> %i.no, splat (i32 1)
  %i.nq = add <4 x i32> %i.np, %i.mz
  store <4 x i32> %i.nq, ptr %i.nn, align 16, !tbaa !47
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.ns = add <4 x i32> %i.nk, %.0.in.lcssa.i86
  %i.nt = ashr <4 x i32> %i.ns, splat (i32 1)
  %i.nu = add <4 x i32> %i.nt, %i.ng
  store <4 x i32> %i.nu, ptr %i.nr, align 16, !tbaa !47
  %i.nv = shl i32 %i.f, 3
  %i.nw = add i32 %i.nv, -8
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.nx ; 2 uses
  store <4 x i32> %i.nd, ptr %i.ny, align 16, !tbaa !47
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  store <4 x i32> %i.nk, ptr %i.nz, align 16, !tbaa !47
  br label %.new

bb.q:                                             ; preds = %._crit_edge.i85
  %i.oa = shl i32 %i.f, 3
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr [4 x i8], ptr %i.jw, i64 %i.ob ; 2 uses
  %i.od = getelementptr i8, ptr %i.oc, i64 -32
  %i.oe = bitcast <2 x i64> %.0113.lcssa.i to <4 x i32>
  %i.of = add <4 x i32> %.0112.in.lcssa.i, %i.oe
  store <4 x i32> %i.of, ptr %i.od, align 16, !tbaa !47
  %i.og = getelementptr i8, ptr %i.oc, i64 -16
  %i.oh = bitcast <2 x i64> %.0111.lcssa.i to <4 x i32>
  %i.oi = add <4 x i32> %.0.in.lcssa.i86, %i.oh
  store <4 x i32> %i.oi, ptr %i.og, align 16, !tbaa !47
  br label %.new

.new:                                             ; preds = %bb.q, %bb.p
  %wide.trip.count.i.i88 = zext nneg i32 %i.f to i64 ; 2 uses
  %xtraiter326 = and i64 %wide.trip.count.i.i88, 1
  %unroll_iter = and i64 %wide.trip.count.i.i88, 2147483646
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.new
  %indvars.iv.i.i89 = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i91.1, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.r ]
  %i.oj = mul nuw nsw i64 %indvars.iv.i.i89, %2
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oj ; 2 uses
  %.idx.i.i90 = shl nuw nsw i64 %indvars.iv.i.i89, 5
  %i.ol = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx.i.i90 ; 2 uses
  %i.om = load <2 x i64>, ptr %i.ol, align 16, !tbaa !47
  store <2 x i64> %i.om, ptr %i.ok, align 1, !tbaa !47
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.op = load <2 x i64>, ptr %i.oo, align 16, !tbaa !47
  store <2 x i64> %i.op, ptr %i.on, align 1, !tbaa !47
  %indvars.iv.next.i.i91 = or disjoint i64 %indvars.iv.i.i89, 1 ; 2 uses
  %i.oq = mul nuw nsw i64 %indvars.iv.next.i.i91, %2
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oq ; 2 uses
  %.idx.i.i90.1 = shl nuw nsw i64 %indvars.iv.next.i.i91, 5
  %i.os = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx.i.i90.1 ; 2 uses
  %i.ot = load <2 x i64>, ptr %i.os, align 16, !tbaa !47
  store <2 x i64> %i.ot, ptr %i.or, align 1, !tbaa !47
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %i.ow = load <2 x i64>, ptr %i.ov, align 16, !tbaa !47
  store <2 x i64> %i.ow, ptr %i.ou, align 1, !tbaa !47
  %indvars.iv.next.i.i91.1 = add nuw nsw i64 %indvars.iv.i.i89, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit313.unr-lcssa, label %bb.r, !llvm.loop !353

bb.s:                                             ; preds = %bb.n
  %i.ox = icmp sgt i32 %3, 0
  %or.cond142 = and i1 %i.ju, %i.ox
  br i1 %or.cond142, label %.lr.ph137, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

.lr.ph137:                                        ; preds = %bb.s
  %i.oy = load ptr, ptr %0, align 8, !tbaa !50    ; 15 uses
  %i.oz = ptrtoaddr ptr %i.oy to i64
  %i.pa = sext i32 %i.c to i64                    ; 2 uses
  %i.pb = mul nsw i64 %2, %i.pa
  %i.pc = add nsw i32 %i.f, -2                    ; 2 uses
  %i.pd = and i32 %i.f, 1                         ; 2 uses
  %i.pe = xor i32 %i.pd, 1                        ; 2 uses
  %i.pf = sub nuw nsw i32 %i.pc, %i.pe
  %i.pg = icmp samesign ugt i32 %i.pf, 1
  %i.ph = add nsw i32 %i.f, -4
  %i.pi = sub i32 %i.ph, %i.pe                    ; 4 uses
  %i.pj = lshr i32 %i.pi, 1
  %i.pk = add nuw i32 %i.pj, 2
  %wide.trip.count.i105 = zext i32 %i.pk to i64
  %.not.i103 = icmp eq i32 %i.pd, 0
  %i.pl = lshr exact i32 %i.f, 1
  %i.pm = add nsw i32 %i.pl, -1
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = mul nuw nsw i64 %2, %i.pn
  %i.pp = zext nneg i32 %i.pc to i64
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.pp
  %i.pr = zext nneg i32 %i.f to i64               ; 6 uses
  %i.ps = getelementptr [4 x i8], ptr %i.oy, i64 %i.pr
  %i.pt = getelementptr i8, ptr %i.ps, i64 -4
  %i.pu = sub i64 %i.a, %i.oz
  %scevgep = getelementptr i8, ptr %i.oy, i64 4   ; 2 uses
  %i.pv = lshr i32 %i.pi, 1
  %i.pw = zext nneg i32 %i.pv to i64              ; 2 uses
  %i.px = shl nuw nsw i64 %i.pw, 3
  %i.py = getelementptr i8, ptr %i.oy, i64 %i.px
  %scevgep217 = getelementptr i8, ptr %i.py, i64 12 ; 2 uses
  %scevgep218 = getelementptr i8, ptr %1, i64 4
  %i.pz = shl nuw nsw i64 %i.pw, 2                ; 2 uses
  %i.qa = add nsw i32 %3, -1
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = shl nuw nsw i64 %i.qb, 2                ; 2 uses
  %i.qd = getelementptr i8, ptr %1, i64 %i.pz
  %i.qe = getelementptr i8, ptr %i.qd, i64 %i.qc
  %scevgep219 = getelementptr i8, ptr %i.qe, i64 8
  %i.qf = shl nsw i64 %i.pa, 2                    ; 2 uses
  %i.qg = getelementptr i8, ptr %1, i64 %i.qf
  %scevgep220 = getelementptr i8, ptr %i.qg, i64 8
  %i.qh = getelementptr i8, ptr %1, i64 %i.pz
  %i.qi = getelementptr i8, ptr %i.qh, i64 %i.qf
  %i.qj = getelementptr i8, ptr %i.qi, i64 %i.qc
  %scevgep221 = getelementptr i8, ptr %i.qj, i64 12
  %i.qk = lshr i32 %i.pi, 1
  %narrow = add nuw i32 %i.qk, 1
  %i.ql = zext i32 %narrow to i64                 ; 3 uses
  %min.iters.check226 = icmp ugt i32 %i.pi, 5
  %ident.check215.not = icmp eq i64 %2, 1
  %or.cond300 = and i1 %min.iters.check226, %ident.check215.not
  %bound0 = icmp ult ptr %scevgep, %scevgep219
  %bound1 = icmp ult ptr %scevgep218, %scevgep217
  %found.conflict = and i1 %bound0, %bound1
  %bound0222 = icmp ult ptr %scevgep, %scevgep221
  %bound1223 = icmp ult ptr %scevgep220, %scevgep217
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx = or i1 %found.conflict, %found.conflict224
  %n.vec228 = and i64 %i.ql, 4294967294           ; 3 uses
  %i.qm = shl nuw nsw i64 %n.vec228, 1
  %i.qn = or disjoint i64 %i.qm, 1                ; 2 uses
  %i.qo = or i64 %i.ql, 1
  %cmp.n238 = icmp eq i64 %n.vec228, %i.ql
  %min.iters.check203 = icmp ult i32 %i.f, 8
  %ident.check.not = icmp ne i64 %2, 1
  %or.cond301.not303 = or i1 %min.iters.check203, %ident.check.not
  %invariant.op = add i64 %i.pu, -1
  %n.vec205 = and i64 %i.pr, 2147483640           ; 3 uses
  %cmp.n212 = icmp eq i64 %n.vec205, %i.pr
  %xtraiter = and i64 %i.pr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph137, %opj_idwt3_v_cas1.exit
  %indvar = phi i64 [ 0, %.lr.ph137 ], [ %indvar.next, %opj_idwt3_v_cas1.exit ] ; 2 uses
  %.0136 = phi i32 [ 0, %.lr.ph137 ], [ %i.tq, %opj_idwt3_v_cas1.exit ]
  %.3135 = phi ptr [ %1, %.lr.ph137 ], [ %i.tr, %opj_idwt3_v_cas1.exit ] ; 12 uses
  %i.qp = shl nuw nsw i64 %indvar, 2
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %.3135, i64 %i.pb ; 4 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %2
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !12 ; 5 uses
  %i.qt = load i32, ptr %.3135, align 4, !tbaa !12
  %i.qu = load i32, ptr %i.qq, align 4, !tbaa !12 ; 2 uses
  %i.qv = add i32 %i.qs, 2
  %i.qw = add i32 %i.qv, %i.qu
  %i.qx = ashr i32 %i.qw, 2
  %i.qy = sub nsw i32 %i.qt, %i.qx                ; 5 uses
  %i.qz = add nsw i32 %i.qy, %i.qu
  store i32 %i.qz, ptr %i.oy, align 4, !tbaa !12
  br i1 %i.pg, label %.lr.ph.i106.preheader, label %._crit_edge.i101

.lr.ph.i106.preheader:                            ; preds = %bb.t
  br i1 %or.cond300, label %vector.memcheck216, label %.lr.ph.i106.preheader318

vector.memcheck216:                               ; preds = %.lr.ph.i106.preheader
  br i1 %conflict.rdx, label %.lr.ph.i106.preheader318, label %vector.ph227

vector.ph227:                                     ; preds = %vector.memcheck216
  %vector.recur.init = insertelement <2 x i32> poison, i32 %i.qy, i64 1
  %vector.recur.init231 = insertelement <2 x i32> poison, i32 %i.qs, i64 1
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph227
  %index230 = phi i64 [ 0, %vector.ph227 ], [ %index.next235, %vector.body229 ] ; 4 uses
  %vector.recur = phi <2 x i32> [ %vector.recur.init, %vector.ph227 ], [ %i.ri, %vector.body229 ]
  %vector.recur232 = phi <2 x i32> [ %vector.recur.init231, %vector.ph227 ], [ %wide.load233, %vector.body229 ]
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %index230
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %wide.load233 = load <2 x i32>, ptr %i.rb, align 4, !tbaa !12, !alias.scope !382 ; 4 uses
  %i.rc = shufflevector <2 x i32> %vector.recur232, <2 x i32> %wide.load233, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %.3135, i64 %index230
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 4
  %wide.load234 = load <2 x i32>, ptr %i.re, align 4, !tbaa !12, !alias.scope !383
  %i.rf = add <2 x i32> %i.rc, splat (i32 2)
  %i.rg = add <2 x i32> %i.rf, %wide.load233
  %i.rh = ashr <2 x i32> %i.rg, splat (i32 2)
  %i.ri = sub nsw <2 x i32> %wide.load234, %i.rh  ; 4 uses
  %i.rj = shufflevector <2 x i32> %vector.recur, <2 x i32> %i.ri, <2 x i32> <i32 1, i32 2> ; 2 uses
  %.idx = shl nuw i64 %index230, 3
  %i.rk = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.idx
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 4
  %i.rm = add nsw <2 x i32> %i.ri, %i.rj
  %i.rn = ashr <2 x i32> %i.rm, splat (i32 1)
  %i.ro = add nsw <2 x i32> %i.rn, %i.rc
  %interleaved.vec = shufflevector <2 x i32> %i.rj, <2 x i32> %i.ro, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.rl, align 4, !tbaa !12, !alias.scope !384, !noalias !385
  %index.next235 = add nuw i64 %index230, 2       ; 2 uses
  %i.rp = icmp eq i64 %index.next235, %n.vec228
  br i1 %i.rp, label %middle.block236, label %vector.body229, !llvm.loop !372

middle.block236:                                  ; preds = %vector.body229
  %vector.recur.extract = extractelement <2 x i32> %i.ri, i64 1 ; 2 uses
  %vector.recur.extract237 = extractelement <2 x i32> %wide.load233, i64 1 ; 2 uses
  br i1 %cmp.n238, label %._crit_edge.i101, label %.lr.ph.i106.preheader318

.lr.ph.i106.preheader318:                         ; preds = %vector.memcheck216, %.lr.ph.i106.preheader, %middle.block236
  %indvars.iv77.i.ph = phi i64 [ 1, %vector.memcheck216 ], [ 1, %.lr.ph.i106.preheader ], [ %i.qn, %middle.block236 ]
  %indvars.iv.i107.ph = phi i64 [ 1, %vector.memcheck216 ], [ 1, %.lr.ph.i106.preheader ], [ %i.qo, %middle.block236 ]
  %.069.i.ph = phi i32 [ %i.qy, %vector.memcheck216 ], [ %i.qy, %.lr.ph.i106.preheader ], [ %vector.recur.extract, %middle.block236 ]
  %.06268.i.ph = phi i32 [ %i.qs, %vector.memcheck216 ], [ %i.qs, %.lr.ph.i106.preheader ], [ %vector.recur.extract237, %middle.block236 ]
  br label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %.lr.ph.i106.preheader318, %.lr.ph.i106
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %.lr.ph.i106 ], [ %indvars.iv77.i.ph, %.lr.ph.i106.preheader318 ] ; 2 uses
  %indvars.iv.i107 = phi i64 [ %indvars.iv.next.i108, %.lr.ph.i106 ], [ %indvars.iv.i107.ph, %.lr.ph.i106.preheader318 ] ; 2 uses
  %.069.i = phi i32 [ %i.rz, %.lr.ph.i106 ], [ %.069.i.ph, %.lr.ph.i106.preheader318 ] ; 2 uses
  %.06268.i = phi i32 [ %i.rs, %.lr.ph.i106 ], [ %.06268.i.ph, %.lr.ph.i106.preheader318 ] ; 2 uses
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i107, 1 ; 3 uses
  %i.rq = mul nuw nsw i64 %indvars.iv.next.i108, %2
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !12 ; 3 uses
  %i.rt = mul nuw nsw i64 %indvars.iv.i107, %2
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.3135, i64 %i.rt
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !12
  %i.rw = add i32 %.06268.i, 2
  %i.rx = add i32 %i.rw, %i.rs
  %i.ry = ashr i32 %i.rx, 2
  %i.rz = sub nsw i32 %i.rv, %i.ry                ; 3 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv77.i ; 2 uses
  store i32 %.069.i, ptr %i.sa, align 4, !tbaa !12
  %i.sb = add nsw i32 %i.rz, %.069.i
  %i.sc = ashr i32 %i.sb, 1
  %i.sd = add nsw i32 %i.sc, %.06268.i
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  store i32 %i.sd, ptr %i.se, align 4, !tbaa !12
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 2 ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %indvars.iv.next.i108, %wide.trip.count.i105
  br i1 %exitcond.not.i109, label %._crit_edge.i101, label %.lr.ph.i106, !llvm.loop !373

._crit_edge.i101:                                 ; preds = %.lr.ph.i106, %middle.block236, %bb.t
  %.064.lcssa.i = phi i64 [ 1, %bb.t ], [ %i.qn, %middle.block236 ], [ %indvars.iv.next78.i, %.lr.ph.i106 ]
  %.062.lcssa.i = phi i32 [ %i.qs, %bb.t ], [ %vector.recur.extract237, %middle.block236 ], [ %i.rs, %.lr.ph.i106 ] ; 3 uses
  %.0.lcssa.i102 = phi i32 [ %i.qy, %bb.t ], [ %vector.recur.extract, %middle.block236 ], [ %i.rz, %.lr.ph.i106 ] ; 3 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %.064.lcssa.i
  store i32 %.0.lcssa.i102, ptr %i.sf, align 4, !tbaa !12
  br i1 %.not.i103, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i101
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.3135, i64 %i.po
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !12
  %i.si = add nsw i32 %.062.lcssa.i, 1
  %i.sj = ashr i32 %i.si, 1
  %i.sk = sub nsw i32 %i.sh, %i.sj                ; 2 uses
  %i.sl = add nsw i32 %i.sk, %.0.lcssa.i102
  %i.sm = ashr i32 %i.sl, 1
  %i.sn = add nsw i32 %i.sm, %.062.lcssa.i
  store i32 %i.sn, ptr %i.pq, align 4, !tbaa !12
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i101
  %i.so = add nsw i32 %.0.lcssa.i102, %.062.lcssa.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink.i = phi i32 [ %i.so, %bb.v ], [ %i.sk, %bb.u ]
  store i32 %.sink.i, ptr %i.pt, align 4, !tbaa !12
  %.reass = add i64 %i.qp, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond302 = select i1 %or.cond301.not303, i1 true, i1 %diff.check
  br i1 %or.cond302, label %scalar.ph202.preheader, label %vector.body206

vector.body206:                                   ; preds = %bb.w, %vector.body206
  %index207 = phi i64 [ %index.next210, %vector.body206 ], [ 0, %bb.w ] ; 3 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %index207 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %wide.load208 = load <4 x i32>, ptr %i.sp, align 4, !tbaa !12
  %wide.load209 = load <4 x i32>, ptr %i.sq, align 4, !tbaa !12
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %.3135, i64 %index207 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  store <4 x i32> %wide.load208, ptr %i.sr, align 4, !tbaa !12
  store <4 x i32> %wide.load209, ptr %i.ss, align 4, !tbaa !12
  %index.next210 = add nuw i64 %index207, 8       ; 2 uses
  %i.st = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.st, label %middle.block211, label %vector.body206, !llvm.loop !374

middle.block211:                                  ; preds = %vector.body206
  br i1 %cmp.n212, label %opj_idwt3_v_cas1.exit, label %scalar.ph202.preheader

scalar.ph202.preheader:                           ; preds = %bb.w, %middle.block211
  %indvars.iv82.i.ph = phi i64 [ 0, %bb.w ], [ %n.vec205, %middle.block211 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol

scalar.ph202.prol:                                ; preds = %scalar.ph202.preheader, %scalar.ph202.prol
  %indvars.iv82.i.prol = phi i64 [ %indvars.iv.next83.i.prol, %scalar.ph202.prol ], [ %indvars.iv82.i.ph, %scalar.ph202.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph202.prol ], [ 0, %scalar.ph202.preheader ]
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv82.i.prol
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !12
  %i.sw = mul nuw nsw i64 %indvars.iv82.i.prol, %2
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %.3135, i64 %i.sw
  store i32 %i.sv, ptr %i.sx, align 4, !tbaa !12
  %indvars.iv.next83.i.prol = add nuw nsw i64 %indvars.iv82.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol, !llvm.loop !375
end_hunk_2
