inline.NumInlined: 401
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_Z23copy_fftgrid_to_pmegridPK9gmx_pme_tP14PmeAndFftGridsii:bb.a
  %i.r = load i32, ptr %i.a, align 4, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14   ; 4 uses
  %i.u = mul i32 %i.t, %i.r                       ; 2 uses
  %i.v = mul i32 %i.u, %3
  %i.w = sdiv i32 %i.v, %2                        ; 2 uses
  %i.x = add nsw i32 %3, 1
  %i.y = mul i32 %i.u, %i.x
  %i.z = sdiv i32 %i.y, %2                        ; 2 uses
  %i.aa = icmp slt i32 %i.w, %i.z
  br i1 %i.aa, label %.lr.ph32, label %._crit_edge33.split

.lr.ph32:                                         ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !14 ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.preheader, label %._crit_edge33.split

.lr.ph.preheader:                                 ; preds = %.lr.ph32
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 8 uses
  %min.iters.check = icmp ult i32 %i.ag, 4
  %min.iters.check42 = icmp ult i32 %i.ag, 32
  %i.ai = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  %n.vec46 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n50 = icmp eq i64 %n.vec46, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.preheader, %._crit_edge
  %.030 = phi i32 [ %i.bw, %._crit_edge ], [ %i.w, %.lr.ph.preheader ] ; 3 uses
  %i.aj = sdiv i32 %.030, %i.t                    ; 3 uses
  %i.ak = mul nsw i32 %i.aj, %i.t                 ; 0 uses
  %.recomposed = srem i32 %.030, %i.t             ; 2 uses
  %i.al = mul nsw i32 %i.aj, %i.o
  %i.am = add nsw i32 %.recomposed, %i.al
  %i.an = mul nsw i32 %i.am, %i.q
  %i.ao = mul nsw i32 %i.ac, %i.aj
  %i.ap = add nsw i32 %i.ao, %.recomposed
  %i.aq = mul nsw i32 %i.ap, %i.ae
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = sext i32 %i.an to i64                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.e, i64 %i.ar ; 11 uses
  %invariant.gep40 = getelementptr [4 x i8], ptr %i.i, i64 %i.as ; 11 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.at = shl nsw i64 %i.as, 2
  %i.au = shl nsw i64 %i.ar, 2
  %i.av = add i64 %i.at, %i.j
  %i.aw = add i64 %i.au, %i.f
  %i.ax = sub i64 %i.aw, %i.av
  %diff.check = icmp ugt i64 %i.ax, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ay = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 32
  %i.ba = getelementptr i8, ptr %i.ay, i64 64
  %i.bb = getelementptr i8, ptr %i.ay, i64 96
  %wide.load = load <8 x float>, ptr %i.ay, align 4, !tbaa !119
  %wide.load43 = load <8 x float>, ptr %i.az, align 4, !tbaa !119
  %wide.load44 = load <8 x float>, ptr %i.ba, align 4, !tbaa !119
  %wide.load45 = load <8 x float>, ptr %i.bb, align 4, !tbaa !119
  %i.bc = getelementptr [4 x i8], ptr %invariant.gep40, i64 %index ; 4 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 32
  %i.be = getelementptr i8, ptr %i.bc, i64 64
  %i.bf = getelementptr i8, ptr %i.bc, i64 96
  store <8 x float> %wide.load, ptr %i.bc, align 4, !tbaa !119
  store <8 x float> %wide.load43, ptr %i.bd, align 4, !tbaa !119
  store <8 x float> %wide.load44, ptr %i.be, align 4, !tbaa !119
  store <8 x float> %wide.load45, ptr %i.bf, align 4, !tbaa !119
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !193

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !158

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 3 uses
  %i.bh = getelementptr [4 x i8], ptr %invariant.gep, i64 %index47
  %wide.load48 = load <4 x float>, ptr %i.bh, align 4, !tbaa !119
  %i.bi = getelementptr [4 x i8], ptr %invariant.gep40, i64 %index47
  store <4 x float> %wide.load48, ptr %i.bi, align 4, !tbaa !119
  %index.next49 = add nuw i64 %index47, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next49, %n.vec46
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !194

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n50, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec46, %vec.epilog.middle.block ] ; 4 uses
  %i.bk = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bk, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.bl = load float, ptr %gep.prol, align 4, !tbaa !119
  %gep41.prol = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.prol
  store float %i.bl, ptr %gep41.prol, align 4, !tbaa !119
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !195

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bm = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bn = icmp ugt i64 %i.bm, -8
  br i1 %i.bn, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bo = load float, ptr %gep, align 4, !tbaa !119
  %gep41 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv
  store float %i.bo, ptr %gep41, align 4, !tbaa !119
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bp = load float, ptr %gep.1, align 4, !tbaa !119
  %gep41.1 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next
  store float %i.bp, ptr %gep41.1, align 4, !tbaa !119
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bq = load float, ptr %gep.2, align 4, !tbaa !119
  %gep41.2 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.1
  store float %i.bq, ptr %gep41.2, align 4, !tbaa !119
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.br = load float, ptr %gep.3, align 4, !tbaa !119
  %gep41.3 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.2
  store float %i.br, ptr %gep41.3, align 4, !tbaa !119
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %gep.4 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.bs = load float, ptr %gep.4, align 4, !tbaa !119
  %gep41.4 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.3
  store float %i.bs, ptr %gep41.4, align 4, !tbaa !119
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %gep.5 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.bt = load float, ptr %gep.5, align 4, !tbaa !119
  %gep41.5 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.4
  store float %i.bt, ptr %gep41.5, align 4, !tbaa !119
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %gep.6 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.bu = load float, ptr %gep.6, align 4, !tbaa !119
  %gep41.6 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.5
  store float %i.bu, ptr %gep41.6, align 4, !tbaa !119
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %gep.7 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.bv = load float, ptr %gep.7, align 4, !tbaa !119
  %gep41.7 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.6
  store float %i.bv, ptr %gep41.7, align 4, !tbaa !119
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !196

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bw = add nsw i32 %.030, 1                    ; 2 uses
  %exitcond36.not = icmp eq i32 %i.bw, %i.z
  br i1 %exitcond36.not, label %._crit_edge33.split, label %iter.check, !llvm.loop !197

._crit_edge33.split:                              ; preds = %._crit_edge, %.lr.ph32, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z21wrap_periodic_pmegridPK9gmx_pme_tN3gmx8ArrayRefIfEE(ptr nofree noundef readonly captures(none) %0, ptr nofree captures(none) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !198
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.d = load i32, ptr %i.c, align 4, !tbaa !199  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !115  ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load i32, ptr %i.g, align 8, !tbaa !116  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.j = load i32, ptr %i.i, align 4, !tbaa !117  ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !200  ; 4 uses
  %i.m = add i32 %i.l, -1                         ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.o = load i32, ptr %i.n, align 4, !tbaa !114  ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader87.lr.ph, label %._crit_edge92.split.thread

.preheader87.lr.ph:                               ; preds = %bb.a
  %i.q = icmp slt i32 %i.h, 1
  %i.r = icmp slt i32 %i.l, 2
  %brmerge = select i1 %i.q, i1 true, i1 %i.r
  br i1 %brmerge, label %._crit_edge92.split.thread161, label %.preheader87.preheader

.preheader87.preheader:                           ; preds = %.preheader87.lr.ph
  %i.s = sext i32 %i.j to i64                     ; 3 uses
  %i.t = sext i32 %i.f to i64                     ; 2 uses
  %i.u = zext nneg i32 %i.h to i64                ; 4 uses
  %wide.trip.count125 = zext nneg i32 %i.o to i64
  %wide.trip.count = zext i32 %i.m to i64         ; 9 uses
  %i.v = mul nsw i64 %i.s, %i.u
  %i.w = shl i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.u, 4611686018427387903
  %i.y = mul i64 %i.x, %i.s
  %i.z = shl i64 %i.y, 2                          ; 2 uses
  %i.aa = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ab = shl nsw i64 %i.t, 2                     ; 2 uses
  %i.ac = getelementptr i8, ptr %1, i64 %i.z
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.aa
  %i.ae = getelementptr i8, ptr %1, i64 %i.ab
  %i.af = getelementptr i8, ptr %1, i64 %i.z
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.ab
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.aa
  %min.iters.check = icmp ult i32 %i.m, 4
  %stride.check = icmp slt i32 %i.j, 0
  %min.iters.check177 = icmp ult i32 %i.m, 32
  %i.ai = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  %n.vec185 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n190 = icmp eq i64 %n.vec185, %wide.trip.count
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %._crit_edge90
  %indvars.iv122 = phi i64 [ 0, %.preheader87.preheader ], [ %indvars.iv.next123, %._crit_edge90 ] ; 3 uses
  %i.aj = mul i64 %i.w, %indvars.iv122            ; 4 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.aj
  %scevgep173 = getelementptr i8, ptr %i.ad, i64 %i.aj
  %scevgep174 = getelementptr i8, ptr %i.ae, i64 %i.aj
  %scevgep175 = getelementptr i8, ptr %i.ah, i64 %i.aj
  %i.ak = mul nuw nsw i64 %indvars.iv122, %i.u
  %bound0 = icmp ult ptr %scevgep, %scevgep175
  %bound1 = icmp ult ptr %scevgep174, %scevgep173
  %found.conflict = and i1 %bound0, %bound1
  %i.al = or i1 %found.conflict, %stride.check
  br label %iter.check

iter.check:                                       ; preds = %.preheader87, %._crit_edge
  %indvars.iv117 = phi i64 [ 0, %.preheader87 ], [ %indvars.iv.next118, %._crit_edge ] ; 2 uses
  %i.am = add nuw nsw i64 %indvars.iv117, %i.ak
  %i.an = mul nsw i64 %i.am, %i.s
  %gep164 = getelementptr [4 x i8], ptr %1, i64 %i.an ; 12 uses
  %invariant.gep.a = getelementptr [4 x i8], ptr %gep164, i64 %i.t ; 11 uses
  %brmerge283 = select i1 %min.iters.check, i1 true, i1 %i.al
  br i1 %brmerge283, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check177, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ao = getelementptr [4 x i8], ptr %invariant.gep.a, i64 %index ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 32
  %i.aq = getelementptr i8, ptr %i.ao, i64 64
  %i.ar = getelementptr i8, ptr %i.ao, i64 96
  %wide.load = load <8 x float>, ptr %i.ao, align 4, !tbaa !119, !alias.scope !201
  %wide.load178.a = load <8 x float>, ptr %i.ap, align 4, !tbaa !119, !alias.scope !201
  %wide.load179 = load <8 x float>, ptr %i.aq, align 4, !tbaa !119, !alias.scope !201
  %wide.load180 = load <8 x float>, ptr %i.ar, align 4, !tbaa !119, !alias.scope !201
  %i.as = getelementptr [4 x i8], ptr %gep164, i64 %index ; 5 uses
  %i.at = getelementptr i8, ptr %i.as, i64 32     ; 2 uses
  %i.au = getelementptr i8, ptr %i.as, i64 64     ; 2 uses
  %i.av = getelementptr i8, ptr %i.as, i64 96     ; 2 uses
  %wide.load181 = load <8 x float>, ptr %i.as, align 4, !tbaa !119, !alias.scope !204, !noalias !201
  %wide.load182 = load <8 x float>, ptr %i.at, align 4, !tbaa !119, !alias.scope !204, !noalias !201
  %wide.load183 = load <8 x float>, ptr %i.au, align 4, !tbaa !119, !alias.scope !204, !noalias !201
  %wide.load184 = load <8 x float>, ptr %i.av, align 4, !tbaa !119, !alias.scope !204, !noalias !201
  %i.aw = fadd <8 x float> %wide.load, %wide.load181
  %i.ax = fadd <8 x float> %wide.load178.a, %wide.load182
  %i.ay = fadd <8 x float> %wide.load179, %wide.load183
  %i.az = fadd <8 x float> %wide.load180, %wide.load184
  store <8 x float> %i.aw, ptr %i.as, align 4, !tbaa !119, !alias.scope !204, !noalias !201
  store <8 x float> %i.ax, ptr %i.at, align 4, !tbaa !119, !alias.scope !204, !noalias !201
  store <8 x float> %i.ay, ptr %i.au, align 4, !tbaa !119, !alias.scope !204, !noalias !201
  store <8 x float> %i.az, ptr %i.av, align 4, !tbaa !119, !alias.scope !204, !noalias !201
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !158

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index186 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next189, %vec.epilog.vector.body ] ; 3 uses
  %i.bb = getelementptr [4 x i8], ptr %invariant.gep.a, i64 %index186
  %wide.load187 = load <4 x float>, ptr %i.bb, align 4, !tbaa !119, !alias.scope !201
  %i.bc = getelementptr [4 x i8], ptr %gep164, i64 %index186 ; 2 uses
  %wide.load188 = load <4 x float>, ptr %i.bc, align 4, !tbaa !119, !alias.scope !204, !noalias !201
  %i.bd = fadd <4 x float> %wide.load187, %wide.load188
  store <4 x float> %i.bd, ptr %i.bc, align 4, !tbaa !119, !alias.scope !204, !noalias !201
  %index.next189 = add nuw i64 %index186, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next189, %n.vec185
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !207

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n190, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec185, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 4 uses
  %i.bf = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bg = getelementptr [4 x i8], ptr %invariant.gep.a, i64 %indvars.iv.prol
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !119
  %gep.prol.a = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.prol ; 2 uses
  %i.bi = load float, ptr %gep.prol.a, align 4, !tbaa !119
  %i.bj = fadd float %i.bh, %i.bi
  store float %i.bj, ptr %gep.prol.a, align 4, !tbaa !119
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !208

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bk = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bl = icmp ugt i64 %i.bk, -8
  br i1 %i.bl, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.bm = getelementptr [4 x i8], ptr %invariant.gep.a, i64 %indvars.iv
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !119
  %gep.a = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv ; 2 uses
  %i.bo = load float, ptr %gep.a, align 4, !tbaa !119
  %i.bp = fadd float %i.bn, %i.bo
  store float %i.bp, ptr %gep.a, align 4, !tbaa !119
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = getelementptr [4 x i8], ptr %invariant.gep.a, i64 %indvars.iv.next
  %i.br = load float, ptr %i.bq, align 4, !tbaa !119
  %gep.1.a = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next ; 2 uses
  %i.bs = load float, ptr %gep.1.a, align 4, !tbaa !119
  %i.bt = fadd float %i.br, %i.bs
  store float %i.bt, ptr %gep.1.a, align 4, !tbaa !119
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bu = getelementptr [4 x i8], ptr %invariant.gep.a, i64 %indvars.iv.next.1
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !119
  %gep.2.a = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.1 ; 2 uses
  %i.bw = load float, ptr %gep.2.a, align 4, !tbaa !119
  %i.bx = fadd float %i.bv, %i.bw
  store float %i.bx, ptr %gep.2.a, align 4, !tbaa !119
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.by = getelementptr [4 x i8], ptr %invariant.gep.a, i64 %indvars.iv.next.2
  %i.bz = load float, ptr %i.by, align 4, !tbaa !119
  %gep.3.a = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.2 ; 2 uses
  %i.ca = load float, ptr %gep.3.a, align 4, !tbaa !119
  %i.cb = fadd float %i.bz, %i.ca
  store float %i.cb, ptr %gep.3.a, align 4, !tbaa !119
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %invariant.gep.a, i64 %indvars.iv.next.3
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !119
  %gep.4.a = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.3 ; 2 uses
  %i.ce = load float, ptr %gep.4.a, align 4, !tbaa !119
  %i.cf = fadd float %i.cd, %i.ce
  store float %i.cf, ptr %gep.4.a, align 4, !tbaa !119
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %invariant.gep.a, i64 %indvars.iv.next.4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !119
  %gep.5.a = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.4 ; 2 uses
  %i.ci = load float, ptr %gep.5.a, align 4, !tbaa !119
  %i.cj = fadd float %i.ch, %i.ci
  store float %i.cj, ptr %gep.5.a, align 4, !tbaa !119
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.ck = getelementptr [4 x i8], ptr %invariant.gep.a, i64 %indvars.iv.next.5
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !119
  %gep.6.a = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.5 ; 2 uses
  %i.cm = load float, ptr %gep.6.a, align 4, !tbaa !119
  %i.cn = fadd float %i.cl, %i.cm
  store float %i.cn, ptr %gep.6.a, align 4, !tbaa !119
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %invariant.gep.a, i64 %indvars.iv.next.6
  %i.cp = load float, ptr %i.co, align 4, !tbaa !119
  %gep.7.a = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.6 ; 2 uses
  %i.cq = load float, ptr %gep.7.a, align 4, !tbaa !119
  %i.cr = fadd float %i.cp, %i.cq
  store float %i.cr, ptr %gep.7.a, align 4, !tbaa !119
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !209

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %i.u
  br i1 %exitcond121.not, label %._crit_edge90, label %iter.check, !llvm.loop !210

._crit_edge90:                                    ; preds = %._crit_edge
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge92.split, label %.preheader87, !llvm.loop !211

._crit_edge92.split:                              ; preds = %._crit_edge90
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !212
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %.preheader84.lr.ph, label %.thread

._crit_edge92.split.thread161:                    ; preds = %.preheader87.lr.ph
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !212
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %.preheader84.lr.ph, label %.thread

._crit_edge92.split.thread:                       ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !212
  %i.da = icmp eq i32 %i.cz, 1
  br i1 %i.da, label %._crit_edge101.split, label %.thread

.preheader84.lr.ph:                               ; preds = %._crit_edge92.split, %._crit_edge92.split.thread161
  %i.db = icmp slt i32 %i.l, 2
  %i.dc = icmp slt i32 %i.f, 1
  %brmerge112 = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %brmerge112, label %._crit_edge101.split, label %.preheader84.preheader

.preheader84.preheader:                           ; preds = %.preheader84.lr.ph
  %i.dd = sext i32 %i.j to i64                    ; 3 uses
  %i.de = sext i32 %i.h to i64                    ; 2 uses
  %wide.trip.count140 = zext nneg i32 %i.o to i64
  %wide.trip.count135 = zext i32 %i.m to i64      ; 2 uses
  %wide.trip.count130 = zext nneg i32 %i.f to i64 ; 10 uses
  %i.df = mul nsw i64 %i.de, %i.dd
  %i.dg = shl i64 %i.df, 2
  %i.dh = add nuw nsw i64 %wide.trip.count135, 4611686018427387903
  %i.di = mul i64 %i.dh, %i.dd
  %i.dj = shl nuw nsw i64 %wide.trip.count130, 2
  %i.dk = add i64 %i.di, %wide.trip.count130
  %i.dl = shl i64 %i.dk, 2
  %i.dm = mul i32 %i.d, %i.j
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul i32 %i.h, %i.j
  %i.dp = zext i32 %i.do to i64
  %i.dq = zext i32 %i.j to i64
  %scevgep195 = getelementptr i8, ptr %1, i64 %i.dj
  %i.dr = getelementptr i8, ptr %1, i64 %i.dl
  %min.iters.check201 = icmp ult i32 %i.f, 4
  %stride.check200 = icmp slt i32 %i.j, 0
  %min.iters.check203 = icmp ult i32 %i.f, 32
  %i.ds = and i64 %wide.trip.count130, 28
  %n.vec205 = and i64 %wide.trip.count130, 2147483616 ; 4 uses
  %cmp.n218 = icmp eq i64 %n.vec205, %wide.trip.count130
  %min.epilog.iters.check223 = icmp eq i64 %i.ds, 0
  %n.vec225 = and i64 %wide.trip.count130, 2147483644 ; 3 uses
  %cmp.n232 = icmp eq i64 %n.vec225, %wide.trip.count130
  br label %.preheader84

.preheader84:                                     ; preds = %.preheader84.preheader, %._crit_edge98
  %indvars.iv137 = phi i64 [ 0, %.preheader84.preheader ], [ %indvars.iv.next138, %._crit_edge98 ] ; 4 uses
  %i.dt = mul i64 %i.dg, %indvars.iv137           ; 2 uses
  %scevgep192 = getelementptr i8, ptr %1, i64 %i.dt
  %scevgep193 = getelementptr i8, ptr %i.dr, i64 %i.dt
  %i.du = mul i64 %indvars.iv137, %i.dp
  %i.dv = add i64 %i.du, %i.dn
  %i.dw = mul nsw i64 %indvars.iv137, %i.de       ; 2 uses
  %i.dx = trunc nsw i64 %i.dw to i32
  %invariant.op99 = add i32 %i.d, %i.dx
  br label %iter.check220

iter.check220:                                    ; preds = %.preheader84, %._crit_edge96
  %indvars.iv132 = phi i64 [ 0, %.preheader84 ], [ %indvars.iv.next133, %._crit_edge96 ] ; 4 uses
  %i.dy = trunc nuw nsw i64 %indvars.iv132 to i32
  %.reass.reass = add i32 %invariant.op99, %i.dy
  %i.dz = mul nsw i32 %.reass.reass, %i.j
  %i.ea = add nsw i64 %indvars.iv132, %i.dw
  %i.eb = mul nsw i64 %i.ea, %i.dd
  %i.ec = sext i32 %i.dz to i64
  %invariant.gep165 = getelementptr [4 x i8], ptr %1, i64 %i.ec ; 11 uses
  %invariant.gep167 = getelementptr [4 x i8], ptr %1, i64 %i.eb ; 11 uses
  br i1 %min.iters.check201, label %vec.epilog.scalar.ph221.preheader, label %vector.memcheck191

vector.memcheck191:                               ; preds = %iter.check220
  %i.ed = mul i64 %indvars.iv132, %i.dq
  %i.ee = add i64 %i.dv, %i.ed
  %sext = shl i64 %i.ee, 32
  %i.ef = ashr exact i64 %sext, 30                ; 2 uses
  %scevgep196 = getelementptr i8, ptr %scevgep195, i64 %i.ef
  %scevgep194 = getelementptr i8, ptr %1, i64 %i.ef
  %bound0197 = icmp ult ptr %scevgep192, %scevgep196
  %bound1198 = icmp ult ptr %scevgep194, %scevgep193
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.eg = or i1 %found.conflict199, %stride.check200
  br i1 %i.eg, label %vec.epilog.scalar.ph221.preheader, label %vector.main.loop.iter.check202

vector.main.loop.iter.check202:                   ; preds = %vector.memcheck191
  br i1 %min.iters.check203, label %vec.epilog.ph224, label %vector.body206

vector.body206:                                   ; preds = %vector.main.loop.iter.check202, %vector.body206
  %index207 = phi i64 [ %index.next216, %vector.body206 ], [ 0, %vector.main.loop.iter.check202 ] ; 3 uses
  %i.eh = getelementptr [4 x i8], ptr %invariant.gep165, i64 %index207 ; 4 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 32
  %i.ej = getelementptr i8, ptr %i.eh, i64 64
  %i.ek = getelementptr i8, ptr %i.eh, i64 96
  %wide.load208 = load <8 x float>, ptr %i.eh, align 4, !tbaa !119, !alias.scope !213
  %wide.load209 = load <8 x float>, ptr %i.ei, align 4, !tbaa !119, !alias.scope !213
  %wide.load210 = load <8 x float>, ptr %i.ej, align 4, !tbaa !119, !alias.scope !213
  %wide.load211 = load <8 x float>, ptr %i.ek, align 4, !tbaa !119, !alias.scope !213
  %i.el = getelementptr [4 x i8], ptr %invariant.gep167, i64 %index207 ; 5 uses
  %i.em = getelementptr i8, ptr %i.el, i64 32     ; 2 uses
  %i.en = getelementptr i8, ptr %i.el, i64 64     ; 2 uses
  %i.eo = getelementptr i8, ptr %i.el, i64 96     ; 2 uses
  %wide.load212 = load <8 x float>, ptr %i.el, align 4, !tbaa !119, !alias.scope !216, !noalias !213
  %wide.load213 = load <8 x float>, ptr %i.em, align 4, !tbaa !119, !alias.scope !216, !noalias !213
  %wide.load214 = load <8 x float>, ptr %i.en, align 4, !tbaa !119, !alias.scope !216, !noalias !213
  %wide.load215 = load <8 x float>, ptr %i.eo, align 4, !tbaa !119, !alias.scope !216, !noalias !213
  %i.ep = fadd <8 x float> %wide.load208, %wide.load212
  %i.eq = fadd <8 x float> %wide.load209, %wide.load213
  %i.er = fadd <8 x float> %wide.load210, %wide.load214
  %i.es = fadd <8 x float> %wide.load211, %wide.load215
  store <8 x float> %i.ep, ptr %i.el, align 4, !tbaa !119, !alias.scope !216, !noalias !213
  store <8 x float> %i.eq, ptr %i.em, align 4, !tbaa !119, !alias.scope !216, !noalias !213
  store <8 x float> %i.er, ptr %i.en, align 4, !tbaa !119, !alias.scope !216, !noalias !213
  store <8 x float> %i.es, ptr %i.eo, align 4, !tbaa !119, !alias.scope !216, !noalias !213
  %index.next216 = add nuw i64 %index207, 32      ; 2 uses
  %i.et = icmp eq i64 %index.next216, %n.vec205
  br i1 %i.et, label %middle.block217, label %vector.body206, !llvm.loop !218

middle.block217:                                  ; preds = %vector.body206
  br i1 %cmp.n218, label %._crit_edge96, label %vec.epilog.iter.check222

vec.epilog.iter.check222:                         ; preds = %middle.block217
  br i1 %min.epilog.iters.check223, label %vec.epilog.scalar.ph221.preheader, label %vec.epilog.ph224, !prof !158

vec.epilog.ph224:                                 ; preds = %vector.main.loop.iter.check202, %vec.epilog.iter.check222
  %vec.epilog.resume.val219 = phi i64 [ %n.vec205, %vec.epilog.iter.check222 ], [ 0, %vector.main.loop.iter.check202 ]
  br label %vec.epilog.vector.body226

vec.epilog.vector.body226:                        ; preds = %vec.epilog.vector.body226, %vec.epilog.ph224
  %index227 = phi i64 [ %vec.epilog.resume.val219, %vec.epilog.ph224 ], [ %index.next230, %vec.epilog.vector.body226 ] ; 3 uses
  %i.eu = getelementptr [4 x i8], ptr %invariant.gep165, i64 %index227
  %wide.load228 = load <4 x float>, ptr %i.eu, align 4, !tbaa !119, !alias.scope !213
  %i.ev = getelementptr [4 x i8], ptr %invariant.gep167, i64 %index227 ; 2 uses
  %wide.load229 = load <4 x float>, ptr %i.ev, align 4, !tbaa !119, !alias.scope !216, !noalias !213
  %i.ew = fadd <4 x float> %wide.load228, %wide.load229
  store <4 x float> %i.ew, ptr %i.ev, align 4, !tbaa !119, !alias.scope !216, !noalias !213
  %index.next230 = add nuw i64 %index227, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next230, %n.vec225
  br i1 %i.ex, label %vec.epilog.middle.block231, label %vec.epilog.vector.body226, !llvm.loop !219

vec.epilog.middle.block231:                       ; preds = %vec.epilog.vector.body226
  br i1 %cmp.n232, label %._crit_edge96, label %vec.epilog.scalar.ph221.preheader

vec.epilog.scalar.ph221.preheader:                ; preds = %vector.memcheck191, %iter.check220, %vec.epilog.iter.check222, %vec.epilog.middle.block231
  %indvars.iv127.ph = phi i64 [ 0, %iter.check220 ], [ 0, %vector.memcheck191 ], [ %n.vec205, %vec.epilog.iter.check222 ], [ %n.vec225, %vec.epilog.middle.block231 ] ; 4 uses
  %i.ey = sub nsw i64 %wide.trip.count130, %indvars.iv127.ph
  %xtraiter277 = and i64 %i.ey, 7                 ; 2 uses
  %lcmp.mod278.not = icmp eq i64 %xtraiter277, 0
  br i1 %lcmp.mod278.not, label %vec.epilog.scalar.ph221.prol.loopexit, label %vec.epilog.scalar.ph221.prol

vec.epilog.scalar.ph221.prol:                     ; preds = %vec.epilog.scalar.ph221.preheader, %vec.epilog.scalar.ph221.prol
  %indvars.iv127.prol = phi i64 [ %indvars.iv.next128.prol, %vec.epilog.scalar.ph221.prol ], [ %indvars.iv127.ph, %vec.epilog.scalar.ph221.preheader ] ; 3 uses
  %prol.iter279 = phi i64 [ %prol.iter279.next, %vec.epilog.scalar.ph221.prol ], [ 0, %vec.epilog.scalar.ph221.preheader ]
  %gep166.prol = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv127.prol
  %i.ez = load float, ptr %gep166.prol, align 4, !tbaa !119
  %gep168.prol = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv127.prol ; 2 uses
  %i.fa = load float, ptr %gep168.prol, align 4, !tbaa !119
  %i.fb = fadd float %i.ez, %i.fa
  store float %i.fb, ptr %gep168.prol, align 4, !tbaa !119
  %indvars.iv.next128.prol = add nuw nsw i64 %indvars.iv127.prol, 1 ; 2 uses
  %prol.iter279.next = add i64 %prol.iter279, 1   ; 2 uses
  %prol.iter279.cmp.not = icmp eq i64 %prol.iter279.next, %xtraiter277
  br i1 %prol.iter279.cmp.not, label %vec.epilog.scalar.ph221.prol.loopexit, label %vec.epilog.scalar.ph221.prol, !llvm.loop !220

vec.epilog.scalar.ph221.prol.loopexit:            ; preds = %vec.epilog.scalar.ph221.prol, %vec.epilog.scalar.ph221.preheader
  %indvars.iv127.unr = phi i64 [ %indvars.iv127.ph, %vec.epilog.scalar.ph221.preheader ], [ %indvars.iv.next128.prol, %vec.epilog.scalar.ph221.prol ]
  %i.fc = sub nsw i64 %indvars.iv127.ph, %wide.trip.count130
  %i.fd = icmp ugt i64 %i.fc, -8
  br i1 %i.fd, label %._crit_edge96, label %vec.epilog.scalar.ph221

vec.epilog.scalar.ph221:                          ; preds = %vec.epilog.scalar.ph221.prol.loopexit, %vec.epilog.scalar.ph221
  %indvars.iv127 = phi i64 [ %indvars.iv.next128.7, %vec.epilog.scalar.ph221 ], [ %indvars.iv127.unr, %vec.epilog.scalar.ph221.prol.loopexit ] ; 10 uses
  %gep166 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv127
  %i.fe = load float, ptr %gep166, align 4, !tbaa !119
  %gep168 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv127 ; 2 uses
  %i.ff = load float, ptr %gep168, align 4, !tbaa !119
  %i.fg = fadd float %i.fe, %i.ff
  store float %i.fg, ptr %gep168, align 4, !tbaa !119
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %gep166.1 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128
  %i.fh = load float, ptr %gep166.1, align 4, !tbaa !119
  %gep168.1 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128 ; 2 uses
  %i.fi = load float, ptr %gep168.1, align 4, !tbaa !119
  %i.fj = fadd float %i.fh, %i.fi
  store float %i.fj, ptr %gep168.1, align 4, !tbaa !119
  %indvars.iv.next128.1 = add nuw nsw i64 %indvars.iv127, 2 ; 2 uses
end_hunk_0
