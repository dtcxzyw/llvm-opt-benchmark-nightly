Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_grid?download=true
inline.NumInlined: 401
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z23copy_fftgrid_to_pmegridPK9gmx_pme_tP14PmeAndFftGridsii:bb.a
  %i.y = insertelement <2 x i32> poison, i32 %i.v, i64 0
  %i.z = insertelement <2 x i32> %i.y, i32 %i.x, i64 1
  %i.aa = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.ab = shufflevector <2 x i32> %i.aa, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ac = sdiv <2 x i32> %i.z, %i.ab              ; 2 uses
  %i.ad = extractelement <2 x i32> %i.ac, i64 0   ; 2 uses
  %i.ae = extractelement <2 x i32> %i.ac, i64 1   ; 2 uses
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph32, label %._crit_edge33.split

.lr.ph32:                                         ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !10 ; 4 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader, label %._crit_edge33.split

.lr.ph.preheader:                                 ; preds = %.lr.ph32
  %wide.trip.count = zext nneg i32 %i.al to i64   ; 8 uses
  %i.an = sub i64 %i.j, %i.f
  %min.iters.check = icmp ult i32 %i.al, 4
  %invariant.op = add i64 %i.an, -1
  %min.iters.check42 = icmp ult i32 %i.al, 32
  %i.ao = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  %n.vec46 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n50 = icmp eq i64 %n.vec46, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.preheader, %._crit_edge
  %.02830 = phi i32 [ %i.bz, %._crit_edge ], [ %i.ad, %.lr.ph.preheader ] ; 3 uses
  %i.ap = sdiv i32 %.02830, %i.t                  ; 3 uses
  %i.aq = mul nsw i32 %i.ap, %i.t                 ; 0 uses
  %.recomposed = srem i32 %.02830, %i.t           ; 2 uses
  %i.ar = mul nsw i32 %i.ap, %i.o
  %i.as = add nsw i32 %.recomposed, %i.ar
  %i.at = mul nsw i32 %i.as, %i.q
  %i.au = mul nsw i32 %i.ah, %i.ap
  %i.av = add nsw i32 %i.au, %.recomposed
  %i.aw = mul nsw i32 %i.av, %i.aj
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = sext i32 %i.at to i64                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.e, i64 %i.ax ; 11 uses
  %invariant.gep40 = getelementptr [4 x i8], ptr %i.i, i64 %i.ay ; 11 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.az = sub nsw i64 %i.ay, %i.ax
  %i.ba = shl nsw i64 %i.az, 2
  %.reass = add i64 %i.ba, %invariant.op
  %diff.check = icmp ult i64 %.reass, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bb = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 32
  %i.bd = getelementptr i8, ptr %i.bb, i64 64
  %i.be = getelementptr i8, ptr %i.bb, i64 96
  %wide.load = load <8 x float>, ptr %i.bb, align 4, !tbaa !108
  %wide.load43 = load <8 x float>, ptr %i.bc, align 4, !tbaa !108
  %wide.load44 = load <8 x float>, ptr %i.bd, align 4, !tbaa !108
  %wide.load45 = load <8 x float>, ptr %i.be, align 4, !tbaa !108
  %i.bf = getelementptr [4 x i8], ptr %invariant.gep40, i64 %index ; 4 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 32
  %i.bh = getelementptr i8, ptr %i.bf, i64 64
  %i.bi = getelementptr i8, ptr %i.bf, i64 96
  store <8 x float> %wide.load, ptr %i.bf, align 4, !tbaa !108
  store <8 x float> %wide.load43, ptr %i.bg, align 4, !tbaa !108
  store <8 x float> %wide.load44, ptr %i.bh, align 4, !tbaa !108
  store <8 x float> %wide.load45, ptr %i.bi, align 4, !tbaa !108
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !219

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr [4 x i8], ptr %invariant.gep, i64 %index47
  %wide.load48 = load <4 x float>, ptr %i.bk, align 4, !tbaa !108
  %i.bl = getelementptr [4 x i8], ptr %invariant.gep40, i64 %index47
  store <4 x float> %wide.load48, ptr %i.bl, align 4, !tbaa !108
  %index.next49 = add nuw i64 %index47, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next49, %n.vec46
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !220

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n50, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec46, %vec.epilog.middle.block ] ; 4 uses
  %i.bn = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.bo = load float, ptr %gep.prol, align 4, !tbaa !108
  %gep41.prol = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.prol
  store float %i.bo, ptr %gep41.prol, align 4, !tbaa !108
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !221

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bp = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bq = icmp ugt i64 %i.bp, -8
  br i1 %i.bq, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.br = load float, ptr %gep, align 4, !tbaa !108
  %gep41 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv
  store float %i.br, ptr %gep41, align 4, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bs = load float, ptr %gep.1, align 4, !tbaa !108
  %gep41.1 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next
  store float %i.bs, ptr %gep41.1, align 4, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bt = load float, ptr %gep.2, align 4, !tbaa !108
  %gep41.2 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.1
  store float %i.bt, ptr %gep41.2, align 4, !tbaa !108
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bu = load float, ptr %gep.3, align 4, !tbaa !108
  %gep41.3 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.2
  store float %i.bu, ptr %gep41.3, align 4, !tbaa !108
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %gep.4 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.bv = load float, ptr %gep.4, align 4, !tbaa !108
  %gep41.4 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.3
  store float %i.bv, ptr %gep41.4, align 4, !tbaa !108
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %gep.5 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.bw = load float, ptr %gep.5, align 4, !tbaa !108
  %gep41.5 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.4
  store float %i.bw, ptr %gep41.5, align 4, !tbaa !108
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %gep.6 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.bx = load float, ptr %gep.6, align 4, !tbaa !108
  %gep41.6 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.5
  store float %i.bx, ptr %gep41.6, align 4, !tbaa !108
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %gep.7 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.by = load float, ptr %gep.7, align 4, !tbaa !108
  %gep41.7 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.6
  store float %i.by, ptr %gep41.7, align 4, !tbaa !108
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !222

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bz = add nsw i32 %.02830, 1                  ; 2 uses
  %exitcond36.not = icmp eq i32 %i.bz, %i.ae
  br i1 %exitcond36.not, label %._crit_edge33.split, label %iter.check, !llvm.loop !223

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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.d = load i32, ptr %i.c, align 4, !tbaa !139  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !104  ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load i32, ptr %i.g, align 8, !tbaa !105  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.j = load i32, ptr %i.i, align 4, !tbaa !106  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !140  ; 4 uses
  %i.m = add i32 %i.l, -1                         ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.o = load i32, ptr %i.n, align 4, !tbaa !103  ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader87.lr.ph, label %._crit_edge92.split.thread

.preheader87.lr.ph:                               ; preds = %bb.a
  %i.q = icmp slt i32 %i.h, 1
  %i.r = icmp slt i32 %i.l, 2
  %brmerge = select i1 %i.q, i1 true, i1 %i.r
  br i1 %brmerge, label %._crit_edge92.split.thread161, label %.preheader87.preheader

.preheader87.preheader:                           ; preds = %.preheader87.lr.ph
  %i.s = sext i32 %i.j to i64                     ; 2 uses
  %i.t = sext i32 %i.f to i64                     ; 2 uses
  %i.u = zext nneg i32 %i.h to i64
  %wide.trip.count125 = zext nneg i32 %i.o to i64
  %wide.trip.count120 = zext nneg i32 %i.h to i64 ; 2 uses
  %wide.trip.count = zext i32 %i.m to i64         ; 9 uses
  %invariant.gep163 = getelementptr [4 x i8], ptr %1, i64 %i.t
  %i.v = shl nsw i64 %i.t, 2                      ; 2 uses
  %i.w = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %i.x = mul nsw i64 %i.s, %wide.trip.count120
  %i.y = shl i64 %i.x, 2
  %i.z = getelementptr i8, ptr %1, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.w
  %i.ab = getelementptr i8, ptr %1, i64 %i.v
  %i.ac = getelementptr i8, ptr %1, i64 %i.w
  %min.iters.check = icmp ult i32 %i.m, 4
  %min.iters.check179 = icmp ult i32 %i.m, 32
  %i.ad = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  %n.vec187 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n192 = icmp eq i64 %n.vec187, %wide.trip.count
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %._crit_edge90
  %indvars.iv122 = phi i64 [ 0, %.preheader87.preheader ], [ %indvars.iv.next123, %._crit_edge90 ] ; 3 uses
  %i.ae = mul i64 %i.y, %indvars.iv122            ; 4 uses
  %scevgep = getelementptr i8, ptr %i.aa, i64 %i.ae
  %scevgep176 = getelementptr i8, ptr %i.ab, i64 %i.ae
  %scevgep177 = getelementptr i8, ptr %i.ac, i64 %i.ae
  %scevgep178 = getelementptr i8, ptr %1, i64 %i.ae
  %i.af = mul nuw nsw i64 %indvars.iv122, %i.u
  %bound0 = icmp ult ptr %scevgep178, %scevgep
  %bound1 = icmp ult ptr %scevgep176, %scevgep177
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

iter.check:                                       ; preds = %.preheader87, %._crit_edge
  %indvars.iv117 = phi i64 [ 0, %.preheader87 ], [ %indvars.iv.next118, %._crit_edge ] ; 2 uses
  %i.ag = add nuw nsw i64 %indvars.iv117, %i.af
  %i.ah = mul nsw i64 %i.ag, %i.s                 ; 2 uses
  %gep164 = getelementptr [4 x i8], ptr %invariant.gep163, i64 %i.ah ; 11 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.ah ; 11 uses
  %brmerge300 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge300, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check179, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ai = getelementptr [4 x i8], ptr %gep164, i64 %index ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 32
  %i.ak = getelementptr i8, ptr %i.ai, i64 64
  %i.al = getelementptr i8, ptr %i.ai, i64 96
  %wide.load = load <8 x float>, ptr %i.ai, align 4, !tbaa !108, !alias.scope !251
  %wide.load180 = load <8 x float>, ptr %i.aj, align 4, !tbaa !108, !alias.scope !251
  %wide.load181 = load <8 x float>, ptr %i.ak, align 4, !tbaa !108, !alias.scope !251
  %wide.load182 = load <8 x float>, ptr %i.al, align 4, !tbaa !108, !alias.scope !251
  %i.am = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 5 uses
  %i.an = getelementptr i8, ptr %i.am, i64 32     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.am, i64 64     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 96     ; 2 uses
  %wide.load183 = load <8 x float>, ptr %i.am, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %wide.load184 = load <8 x float>, ptr %i.an, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %wide.load185 = load <8 x float>, ptr %i.ao, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %wide.load186 = load <8 x float>, ptr %i.ap, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %i.aq = fadd <8 x float> %wide.load, %wide.load183
  %i.ar = fadd <8 x float> %wide.load180, %wide.load184
  %i.as = fadd <8 x float> %wide.load181, %wide.load185
  %i.at = fadd <8 x float> %wide.load182, %wide.load186
  store <8 x float> %i.aq, ptr %i.am, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  store <8 x float> %i.ar, ptr %i.an, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  store <8 x float> %i.as, ptr %i.ao, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  store <8 x float> %i.at, ptr %i.ap, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index188 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next191, %vec.epilog.vector.body ] ; 3 uses
  %i.av = getelementptr [4 x i8], ptr %gep164, i64 %index188
  %wide.load189 = load <4 x float>, ptr %i.av, align 4, !tbaa !108, !alias.scope !251
  %i.aw = getelementptr [4 x i8], ptr %invariant.gep, i64 %index188 ; 2 uses
  %wide.load190 = load <4 x float>, ptr %i.aw, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %i.ax = fadd <4 x float> %wide.load189, %wide.load190
  store <4 x float> %i.ax, ptr %i.aw, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %index.next191 = add nuw i64 %index188, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next191, %n.vec187
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !228

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n192, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec187, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 4 uses
  %i.az = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.az, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ba = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.prol
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !108
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol ; 2 uses
  %i.bc = load float, ptr %gep.prol, align 4, !tbaa !108
  %i.bd = fadd float %i.bb, %i.bc
  store float %i.bd, ptr %gep.prol, align 4, !tbaa !108
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !229

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.be = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bf = icmp ugt i64 %i.be, -8
  br i1 %i.bf, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.bg = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !108
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.bi = load float, ptr %gep, align 4, !tbaa !108
  %i.bj = fadd float %i.bh, %i.bi
  store float %i.bj, ptr %gep, align 4, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !108
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.bm = load float, ptr %gep.1, align 4, !tbaa !108
  %i.bn = fadd float %i.bl, %i.bm
  store float %i.bn, ptr %gep.1, align 4, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bo = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.1
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !108
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1 ; 2 uses
  %i.bq = load float, ptr %gep.2, align 4, !tbaa !108
  %i.br = fadd float %i.bp, %i.bq
  store float %i.br, ptr %gep.2, align 4, !tbaa !108
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.2
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !108
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2 ; 2 uses
  %i.bu = load float, ptr %gep.3, align 4, !tbaa !108
  %i.bv = fadd float %i.bt, %i.bu
  store float %i.bv, ptr %gep.3, align 4, !tbaa !108
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.3
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !108
  %gep.4 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3 ; 2 uses
  %i.by = load float, ptr %gep.4, align 4, !tbaa !108
  %i.bz = fadd float %i.bx, %i.by
  store float %i.bz, ptr %gep.4, align 4, !tbaa !108
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.ca = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !108
  %gep.5 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4 ; 2 uses
  %i.cc = load float, ptr %gep.5, align 4, !tbaa !108
  %i.cd = fadd float %i.cb, %i.cc
  store float %i.cd, ptr %gep.5, align 4, !tbaa !108
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.5
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !108
  %gep.6 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5 ; 2 uses
  %i.cg = load float, ptr %gep.6, align 4, !tbaa !108
  %i.ch = fadd float %i.cf, %i.cg
  store float %i.ch, ptr %gep.6, align 4, !tbaa !108
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.ci = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.6
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !108
  %gep.7 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6 ; 2 uses
  %i.ck = load float, ptr %gep.7, align 4, !tbaa !108
  %i.cl = fadd float %i.cj, %i.ck
  store float %i.cl, ptr %gep.7, align 4, !tbaa !108
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !230

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %._crit_edge90, label %iter.check, !llvm.loop !231

._crit_edge90:                                    ; preds = %._crit_edge
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge92.split, label %.preheader87, !llvm.loop !232

._crit_edge92.split:                              ; preds = %._crit_edge90
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !141
  %i.co = icmp eq i32 %i.cn, 1
  br i1 %i.co, label %.preheader84.lr.ph, label %.thread

._crit_edge92.split.thread161:                    ; preds = %.preheader87.lr.ph
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !141
  %i.cr = icmp eq i32 %i.cq, 1
  br i1 %i.cr, label %.preheader84.lr.ph, label %.thread

._crit_edge92.split.thread:                       ; preds = %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !141
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %._crit_edge101.split, label %.thread

.preheader84.lr.ph:                               ; preds = %._crit_edge92.split, %._crit_edge92.split.thread161
  %i.cv = icmp slt i32 %i.l, 2
  %i.cw = icmp slt i32 %i.f, 1
  %brmerge112 = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %brmerge112, label %._crit_edge101.split, label %.preheader84.preheader

.preheader84.preheader:                           ; preds = %.preheader84.lr.ph
  %i.cx = sext i32 %i.j to i64                    ; 3 uses
  %i.cy = sext i32 %i.h to i64                    ; 2 uses
  %wide.trip.count140 = zext nneg i32 %i.o to i64
  %wide.trip.count135 = zext i32 %i.m to i64      ; 2 uses
  %wide.trip.count130 = zext nneg i32 %i.f to i64 ; 10 uses
  %i.cz = shl nuw nsw i64 %wide.trip.count130, 2
  %scevgep202.a = getelementptr i8, ptr %1, i64 %i.cz
  %i.da = add nuw nsw i64 %wide.trip.count135, 4611686018427387903
  %i.db = mul i64 %i.da, %i.cx
  %i.dc = add i64 %i.db, %wide.trip.count130
  %i.dd = shl i64 %i.dc, 2
  %i.de = mul nsw i64 %i.cx, %i.cy
  %i.df = shl i64 %i.de, 2
  %i.dg = getelementptr i8, ptr %1, i64 %i.dd
  %min.iters.check205 = icmp ult i32 %i.f, 4
  %stride.check210 = icmp slt i32 %i.j, 0
  %min.iters.check212 = icmp ult i32 %i.f, 32
end_hunk_0
begin_hunk_1_@_Z21wrap_periodic_pmegridPK9gmx_pme_tN3gmx8ArrayRefIfEE:bb.a
  %indvars.iv132 = phi i64 [ 0, %.preheader84 ], [ %indvars.iv.next133, %._crit_edge96 ] ; 3 uses
  %i.dl = trunc nuw nsw i64 %indvars.iv132 to i32
  %.reass.reass = add i32 %invariant.op99, %i.dl
  %i.dm = mul nsw i32 %.reass.reass, %i.j
  %i.dn = add nsw i64 %indvars.iv132, %i.dj
  %i.do = mul nsw i64 %i.dn, %i.cx
  %i.dp = sext i32 %i.dm to i64                   ; 2 uses
  %invariant.gep165 = getelementptr [4 x i8], ptr %1, i64 %i.dp ; 12 uses
  %invariant.gep167 = getelementptr [4 x i8], ptr %1, i64 %i.do ; 11 uses
  br i1 %min.iters.check205, label %vec.epilog.scalar.ph230.preheader, label %vector.memcheck206

vector.memcheck206:                               ; preds = %iter.check228
  %i.dq = shl nsw i64 %i.dp, 2
  %i.dr = getelementptr i8, ptr %scevgep202.a, i64 %i.dq
  %bound0207 = icmp ult ptr %scevgep204, %i.dr
  %bound1208 = icmp ult ptr %invariant.gep165, %scevgep203.a
  %found.conflict209 = and i1 %bound0207, %bound1208
  %i.ds = or i1 %found.conflict209, %stride.check210
  br i1 %i.ds, label %vec.epilog.scalar.ph230.preheader, label %vector.main.loop.iter.check211

vector.main.loop.iter.check211:                   ; preds = %vector.memcheck206
  br i1 %min.iters.check212, label %vec.epilog.ph232, label %vector.body215

vector.body215:                                   ; preds = %vector.main.loop.iter.check211, %vector.body215
  %index216 = phi i64 [ %index.next225, %vector.body215 ], [ 0, %vector.main.loop.iter.check211 ] ; 3 uses
  %i.dt = getelementptr [4 x i8], ptr %invariant.gep165, i64 %index216 ; 4 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 32
  %i.dv = getelementptr i8, ptr %i.dt, i64 64
  %i.dw = getelementptr i8, ptr %i.dt, i64 96
  %wide.load217.a = load <8 x float>, ptr %i.dt, align 4, !tbaa !108, !alias.scope !253
  %wide.load218.a = load <8 x float>, ptr %i.du, align 4, !tbaa !108, !alias.scope !253
  %wide.load219.a = load <8 x float>, ptr %i.dv, align 4, !tbaa !108, !alias.scope !253
  %wide.load220.a = load <8 x float>, ptr %i.dw, align 4, !tbaa !108, !alias.scope !253
  %i.dx = getelementptr [4 x i8], ptr %invariant.gep167, i64 %index216 ; 5 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 32     ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dx, i64 64     ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dx, i64 96     ; 2 uses
  %wide.load221.a = load <8 x float>, ptr %i.dx, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %wide.load222.a = load <8 x float>, ptr %i.dy, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %wide.load223 = load <8 x float>, ptr %i.dz, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %wide.load224 = load <8 x float>, ptr %i.ea, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %i.eb = fadd <8 x float> %wide.load217.a, %wide.load221.a
  %i.ec = fadd <8 x float> %wide.load218.a, %wide.load222.a
  %i.ed = fadd <8 x float> %wide.load219.a, %wide.load223
  %i.ee = fadd <8 x float> %wide.load220.a, %wide.load224
  store <8 x float> %i.eb, ptr %i.dx, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  store <8 x float> %i.ec, ptr %i.dy, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  store <8 x float> %i.ed, ptr %i.dz, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  store <8 x float> %i.ee, ptr %i.ea, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %index.next225 = add nuw i64 %index216, 32      ; 2 uses
  %i.ef = icmp eq i64 %index.next225, %n.vec214
  br i1 %i.ef, label %middle.block226, label %vector.body215, !llvm.loop !236

middle.block226:                                  ; preds = %vector.body215
  br i1 %cmp.n227, label %._crit_edge96, label %vec.epilog.iter.check229

vec.epilog.iter.check229:                         ; preds = %middle.block226
  br i1 %min.epilog.iters.check231, label %vec.epilog.scalar.ph230.preheader, label %vec.epilog.ph232, !prof !112

vec.epilog.ph232:                                 ; preds = %vector.main.loop.iter.check211, %vec.epilog.iter.check229
  %vec.epilog.resume.val233 = phi i64 [ %n.vec214, %vec.epilog.iter.check229 ], [ 0, %vector.main.loop.iter.check211 ]
  br label %vec.epilog.vector.body235

vec.epilog.vector.body235:                        ; preds = %vec.epilog.vector.body235, %vec.epilog.ph232
  %index236 = phi i64 [ %vec.epilog.resume.val233, %vec.epilog.ph232 ], [ %index.next239, %vec.epilog.vector.body235 ] ; 3 uses
  %i.eg = getelementptr [4 x i8], ptr %invariant.gep165, i64 %index236
  %wide.load237 = load <4 x float>, ptr %i.eg, align 4, !tbaa !108, !alias.scope !253
  %i.eh = getelementptr [4 x i8], ptr %invariant.gep167, i64 %index236 ; 2 uses
  %wide.load238 = load <4 x float>, ptr %i.eh, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %i.ei = fadd <4 x float> %wide.load237, %wide.load238
  store <4 x float> %i.ei, ptr %i.eh, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %index.next239 = add nuw i64 %index236, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next239, %n.vec234
  br i1 %i.ej, label %vec.epilog.middle.block240, label %vec.epilog.vector.body235, !llvm.loop !237

vec.epilog.middle.block240:                       ; preds = %vec.epilog.vector.body235
  br i1 %cmp.n241, label %._crit_edge96, label %vec.epilog.scalar.ph230.preheader

vec.epilog.scalar.ph230.preheader:                ; preds = %iter.check228, %vector.memcheck206, %vec.epilog.iter.check229, %vec.epilog.middle.block240
  %indvars.iv127.ph = phi i64 [ 0, %iter.check228 ], [ 0, %vector.memcheck206 ], [ %n.vec214, %vec.epilog.iter.check229 ], [ %n.vec234, %vec.epilog.middle.block240 ] ; 4 uses
  %i.ek = sub nsw i64 %wide.trip.count130, %indvars.iv127.ph
  %xtraiter294 = and i64 %i.ek, 7                 ; 2 uses
  %lcmp.mod295.not = icmp eq i64 %xtraiter294, 0
  br i1 %lcmp.mod295.not, label %vec.epilog.scalar.ph230.prol.loopexit, label %vec.epilog.scalar.ph230.prol

vec.epilog.scalar.ph230.prol:                     ; preds = %vec.epilog.scalar.ph230.preheader, %vec.epilog.scalar.ph230.prol
  %indvars.iv127.prol = phi i64 [ %indvars.iv.next128.prol, %vec.epilog.scalar.ph230.prol ], [ %indvars.iv127.ph, %vec.epilog.scalar.ph230.preheader ] ; 3 uses
  %prol.iter296 = phi i64 [ %prol.iter296.next, %vec.epilog.scalar.ph230.prol ], [ 0, %vec.epilog.scalar.ph230.preheader ]
  %gep166.prol = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv127.prol
  %i.el = load float, ptr %gep166.prol, align 4, !tbaa !108
  %gep168.prol = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv127.prol ; 2 uses
  %i.em = load float, ptr %gep168.prol, align 4, !tbaa !108
  %i.en = fadd float %i.el, %i.em
  store float %i.en, ptr %gep168.prol, align 4, !tbaa !108
  %indvars.iv.next128.prol = add nuw nsw i64 %indvars.iv127.prol, 1 ; 2 uses
  %prol.iter296.next = add i64 %prol.iter296, 1   ; 2 uses
  %prol.iter296.cmp.not = icmp eq i64 %prol.iter296.next, %xtraiter294
  br i1 %prol.iter296.cmp.not, label %vec.epilog.scalar.ph230.prol.loopexit, label %vec.epilog.scalar.ph230.prol, !llvm.loop !238

vec.epilog.scalar.ph230.prol.loopexit:            ; preds = %vec.epilog.scalar.ph230.prol, %vec.epilog.scalar.ph230.preheader
  %indvars.iv127.unr = phi i64 [ %indvars.iv127.ph, %vec.epilog.scalar.ph230.preheader ], [ %indvars.iv.next128.prol, %vec.epilog.scalar.ph230.prol ]
  %i.eo = sub nsw i64 %indvars.iv127.ph, %wide.trip.count130
  %i.ep = icmp ugt i64 %i.eo, -8
  br i1 %i.ep, label %._crit_edge96, label %vec.epilog.scalar.ph230

vec.epilog.scalar.ph230:                          ; preds = %vec.epilog.scalar.ph230.prol.loopexit, %vec.epilog.scalar.ph230
  %indvars.iv127 = phi i64 [ %indvars.iv.next128.7, %vec.epilog.scalar.ph230 ], [ %indvars.iv127.unr, %vec.epilog.scalar.ph230.prol.loopexit ] ; 10 uses
  %gep166 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv127
  %i.eq = load float, ptr %gep166, align 4, !tbaa !108
  %gep168 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv127 ; 2 uses
  %i.er = load float, ptr %gep168, align 4, !tbaa !108
  %i.es = fadd float %i.eq, %i.er
  store float %i.es, ptr %gep168, align 4, !tbaa !108
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %gep166.1 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128
  %i.et = load float, ptr %gep166.1, align 4, !tbaa !108
  %gep168.1 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128 ; 2 uses
  %i.eu = load float, ptr %gep168.1, align 4, !tbaa !108
  %i.ev = fadd float %i.et, %i.eu
  store float %i.ev, ptr %gep168.1, align 4, !tbaa !108
  %indvars.iv.next128.1 = add nuw nsw i64 %indvars.iv127, 2 ; 2 uses
  %gep166.2 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.1
  %i.ew = load float, ptr %gep166.2, align 4, !tbaa !108
  %gep168.2 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.1 ; 2 uses
  %i.ex = load float, ptr %gep168.2, align 4, !tbaa !108
  %i.ey = fadd float %i.ew, %i.ex
  store float %i.ey, ptr %gep168.2, align 4, !tbaa !108
  %indvars.iv.next128.2 = add nuw nsw i64 %indvars.iv127, 3 ; 2 uses
  %gep166.3 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.2
  %i.ez = load float, ptr %gep166.3, align 4, !tbaa !108
  %gep168.3 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.2 ; 2 uses
  %i.fa = load float, ptr %gep168.3, align 4, !tbaa !108
  %i.fb = fadd float %i.ez, %i.fa
  store float %i.fb, ptr %gep168.3, align 4, !tbaa !108
  %indvars.iv.next128.3 = add nuw nsw i64 %indvars.iv127, 4 ; 2 uses
  %gep166.4 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.3
  %i.fc = load float, ptr %gep166.4, align 4, !tbaa !108
  %gep168.4 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.3 ; 2 uses
  %i.fd = load float, ptr %gep168.4, align 4, !tbaa !108
  %i.fe = fadd float %i.fc, %i.fd
  store float %i.fe, ptr %gep168.4, align 4, !tbaa !108
  %indvars.iv.next128.4 = add nuw nsw i64 %indvars.iv127, 5 ; 2 uses
  %gep166.5 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.4
  %i.ff = load float, ptr %gep166.5, align 4, !tbaa !108
  %gep168.5 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.4 ; 2 uses
  %i.fg = load float, ptr %gep168.5, align 4, !tbaa !108
  %i.fh = fadd float %i.ff, %i.fg
  store float %i.fh, ptr %gep168.5, align 4, !tbaa !108
  %indvars.iv.next128.5 = add nuw nsw i64 %indvars.iv127, 6 ; 2 uses
  %gep166.6 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.5
  %i.fi = load float, ptr %gep166.6, align 4, !tbaa !108
  %gep168.6 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.5 ; 2 uses
  %i.fj = load float, ptr %gep168.6, align 4, !tbaa !108
  %i.fk = fadd float %i.fi, %i.fj
  store float %i.fk, ptr %gep168.6, align 4, !tbaa !108
  %indvars.iv.next128.6 = add nuw nsw i64 %indvars.iv127, 7 ; 2 uses
  %gep166.7 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.6
  %i.fl = load float, ptr %gep166.7, align 4, !tbaa !108
  %gep168.7 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.6 ; 2 uses
  %i.fm = load float, ptr %gep168.7, align 4, !tbaa !108
  %i.fn = fadd float %i.fl, %i.fm
  store float %i.fn, ptr %gep168.7, align 4, !tbaa !108
  %indvars.iv.next128.7 = add nuw nsw i64 %indvars.iv127, 8 ; 2 uses
  %exitcond131.not.7 = icmp eq i64 %indvars.iv.next128.7, %wide.trip.count130
  br i1 %exitcond131.not.7, label %._crit_edge96, label %vec.epilog.scalar.ph230, !llvm.loop !239

._crit_edge96:                                    ; preds = %vec.epilog.scalar.ph230.prol.loopexit, %vec.epilog.scalar.ph230, %vec.epilog.middle.block240, %middle.block226
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %._crit_edge98, label %iter.check228, !llvm.loop !240

._crit_edge98:                                    ; preds = %._crit_edge96
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %._crit_edge101.split, label %.preheader84, !llvm.loop !241

._crit_edge101.split:                             ; preds = %._crit_edge98, %._crit_edge92.split.thread, %.preheader84.lr.ph
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !142
  %i.fq = icmp eq i32 %i.fp, 1
  br i1 %i.fq, label %.thread81, label %.loopexit

.thread:                                          ; preds = %._crit_edge92.split.thread161, %._crit_edge92.split.thread, %._crit_edge92.split
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !142
  %i.ft = icmp eq i32 %i.fs, 1
  br i1 %i.ft, label %.thread81, label %.loopexit

.thread81:                                        ; preds = %.thread, %._crit_edge101.split
  %i.fu = phi i32 [ %i.d, %._crit_edge101.split ], [ %i.h, %.thread ] ; 2 uses
  %i.fv = icmp sgt i32 %i.l, 1
  br i1 %i.fv, label %.preheader82.lr.ph, label %.loopexit

.preheader82.lr.ph:                               ; preds = %.thread81
  %i.fw = icmp slt i32 %i.fu, 1
  %i.fx = icmp slt i32 %i.f, 1
  %brmerge115 = select i1 %i.fw, i1 true, i1 %i.fx
  br i1 %brmerge115, label %.loopexit, label %.preheader82.preheader

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.fy = sext i32 %i.j to i64                    ; 4 uses
  %i.fz = sext i32 %i.b to i64                    ; 2 uses
  %i.ga = sext i32 %i.h to i64                    ; 4 uses
  %wide.trip.count155 = zext nneg i32 %i.m to i64
  %wide.trip.count150 = zext nneg i32 %i.fu to i64
  %wide.trip.count145 = zext nneg i32 %i.f to i64 ; 9 uses
  %i.gb = mul nsw i64 %i.fz, %i.fy
  %i.gc = mul i64 %i.gb, %i.ga
  %i.gd = shl i64 %i.gc, 2                        ; 2 uses
  %i.ge = shl nuw nsw i64 %wide.trip.count145, 2  ; 2 uses
  %i.gf = mul nsw i64 %i.fy, %i.ga
  %i.gg = shl i64 %i.gf, 2
  %i.gh = getelementptr i8, ptr %1, i64 %i.gd
  %i.gi = getelementptr i8, ptr %i.gh, i64 %i.ge
  %i.gj = getelementptr i8, ptr %1, i64 %i.gd
  %i.gk = getelementptr i8, ptr %1, i64 %i.ge
  %min.iters.check256 = icmp ult i32 %i.f, 4
  %min.iters.check263 = icmp ult i32 %i.f, 32
  %i.gl = and i64 %wide.trip.count145, 28
  %n.vec265 = and i64 %wide.trip.count145, 2147483616 ; 4 uses
  %cmp.n278 = icmp eq i64 %n.vec265, %wide.trip.count145
  %min.epilog.iters.check282 = icmp eq i64 %i.gl, 0
  %n.vec285 = and i64 %wide.trip.count145, 2147483644 ; 3 uses
  %cmp.n292 = icmp eq i64 %n.vec285, %wide.trip.count145
  br label %.preheader82

.preheader82:                                     ; preds = %.preheader82.preheader, %._crit_edge106
  %indvars.iv152 = phi i64 [ 0, %.preheader82.preheader ], [ %indvars.iv.next153, %._crit_edge106 ] ; 4 uses
  %i.gm = mul i64 %i.gg, %indvars.iv152           ; 4 uses
  %scevgep252.a = getelementptr i8, ptr %i.gi, i64 %i.gm
  %scevgep253 = getelementptr i8, ptr %i.gj, i64 %i.gm
  %scevgep254 = getelementptr i8, ptr %i.gk, i64 %i.gm
  %scevgep255 = getelementptr i8, ptr %1, i64 %i.gm
  %i.gn = add nsw i64 %indvars.iv152, %i.fz
  %i.go = mul nsw i64 %i.gn, %i.ga
  %i.gp = mul nsw i64 %indvars.iv152, %i.ga
  %bound0258 = icmp ult ptr %scevgep255, %scevgep252.a
  %bound1259 = icmp ult ptr %scevgep253, %scevgep254
  %found.conflict260 = and i1 %bound0258, %bound1259
  br label %iter.check279

iter.check279:                                    ; preds = %.preheader82, %._crit_edge104
  %indvars.iv147 = phi i64 [ 0, %.preheader82 ], [ %indvars.iv.next148, %._crit_edge104 ] ; 3 uses
  %i.gq = add nsw i64 %indvars.iv147, %i.go
  %i.gr = mul nsw i64 %i.gq, %i.fy
  %i.gs = add nsw i64 %indvars.iv147, %i.gp
  %i.gt = mul nsw i64 %i.gs, %i.fy
  %invariant.gep169 = getelementptr [4 x i8], ptr %1, i64 %i.gr ; 11 uses
  %invariant.gep171 = getelementptr [4 x i8], ptr %1, i64 %i.gt ; 11 uses
  %brmerge301 = select i1 %min.iters.check256, i1 true, i1 %found.conflict260
  br i1 %brmerge301, label %vec.epilog.scalar.ph281.preheader, label %vector.main.loop.iter.check262

vector.main.loop.iter.check262:                   ; preds = %iter.check279
  br i1 %min.iters.check263, label %vec.epilog.ph283, label %vector.body266

vector.body266:                                   ; preds = %vector.main.loop.iter.check262, %vector.body266
  %index267 = phi i64 [ %index.next276, %vector.body266 ], [ 0, %vector.main.loop.iter.check262 ] ; 3 uses
  %i.gu = getelementptr [4 x i8], ptr %invariant.gep169, i64 %index267 ; 4 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 32
  %i.gw = getelementptr i8, ptr %i.gu, i64 64
  %i.gx = getelementptr i8, ptr %i.gu, i64 96
  %wide.load268.a = load <8 x float>, ptr %i.gu, align 4, !tbaa !108, !alias.scope !255
  %wide.load269.a = load <8 x float>, ptr %i.gv, align 4, !tbaa !108, !alias.scope !255
  %wide.load270.a = load <8 x float>, ptr %i.gw, align 4, !tbaa !108, !alias.scope !255
  %wide.load271.a = load <8 x float>, ptr %i.gx, align 4, !tbaa !108, !alias.scope !255
  %i.gy = getelementptr [4 x i8], ptr %invariant.gep171, i64 %index267 ; 5 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 32     ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gy, i64 64     ; 2 uses
  %i.hb = getelementptr i8, ptr %i.gy, i64 96     ; 2 uses
  %wide.load272 = load <8 x float>, ptr %i.gy, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  %wide.load273 = load <8 x float>, ptr %i.gz, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  %wide.load274 = load <8 x float>, ptr %i.ha, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  %wide.load275 = load <8 x float>, ptr %i.hb, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  %i.hc = fadd <8 x float> %wide.load268.a, %wide.load272
  %i.hd = fadd <8 x float> %wide.load269.a, %wide.load273
  %i.he = fadd <8 x float> %wide.load270.a, %wide.load274
  %i.hf = fadd <8 x float> %wide.load271.a, %wide.load275
  store <8 x float> %i.hc, ptr %i.gy, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  store <8 x float> %i.hd, ptr %i.gz, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  store <8 x float> %i.he, ptr %i.ha, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  store <8 x float> %i.hf, ptr %i.hb, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  %index.next276 = add nuw i64 %index267, 32      ; 2 uses
  %i.hg = icmp eq i64 %index.next276, %n.vec265
  br i1 %i.hg, label %middle.block277, label %vector.body266, !llvm.loop !245

middle.block277:                                  ; preds = %vector.body266
  br i1 %cmp.n278, label %._crit_edge104, label %vec.epilog.iter.check280

vec.epilog.iter.check280:                         ; preds = %middle.block277
  br i1 %min.epilog.iters.check282, label %vec.epilog.scalar.ph281.preheader, label %vec.epilog.ph283, !prof !112

vec.epilog.ph283:                                 ; preds = %vector.main.loop.iter.check262, %vec.epilog.iter.check280
  %vec.epilog.resume.val284 = phi i64 [ %n.vec265, %vec.epilog.iter.check280 ], [ 0, %vector.main.loop.iter.check262 ]
  br label %vec.epilog.vector.body286

vec.epilog.vector.body286:                        ; preds = %vec.epilog.vector.body286, %vec.epilog.ph283
  %index287 = phi i64 [ %vec.epilog.resume.val284, %vec.epilog.ph283 ], [ %index.next290, %vec.epilog.vector.body286 ] ; 3 uses
  %i.hh = getelementptr [4 x i8], ptr %invariant.gep169, i64 %index287
  %wide.load288 = load <4 x float>, ptr %i.hh, align 4, !tbaa !108, !alias.scope !255
  %i.hi = getelementptr [4 x i8], ptr %invariant.gep171, i64 %index287 ; 2 uses
  %wide.load289 = load <4 x float>, ptr %i.hi, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  %i.hj = fadd <4 x float> %wide.load288, %wide.load289
  store <4 x float> %i.hj, ptr %i.hi, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  %index.next290 = add nuw i64 %index287, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next290, %n.vec285
  br i1 %i.hk, label %vec.epilog.middle.block291, label %vec.epilog.vector.body286, !llvm.loop !246

vec.epilog.middle.block291:                       ; preds = %vec.epilog.vector.body286
  br i1 %cmp.n292, label %._crit_edge104, label %vec.epilog.scalar.ph281.preheader

vec.epilog.scalar.ph281.preheader:                ; preds = %iter.check279, %vec.epilog.iter.check280, %vec.epilog.middle.block291
  %indvars.iv142.ph = phi i64 [ 0, %iter.check279 ], [ %n.vec285, %vec.epilog.middle.block291 ], [ %n.vec265, %vec.epilog.iter.check280 ] ; 4 uses
  %i.hl = sub nsw i64 %wide.trip.count145, %indvars.iv142.ph
  %xtraiter297 = and i64 %i.hl, 7                 ; 2 uses
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  br i1 %lcmp.mod298.not, label %vec.epilog.scalar.ph281.prol.loopexit, label %vec.epilog.scalar.ph281.prol

vec.epilog.scalar.ph281.prol:                     ; preds = %vec.epilog.scalar.ph281.preheader, %vec.epilog.scalar.ph281.prol
  %indvars.iv142.prol = phi i64 [ %indvars.iv.next143.prol, %vec.epilog.scalar.ph281.prol ], [ %indvars.iv142.ph, %vec.epilog.scalar.ph281.preheader ] ; 3 uses
  %prol.iter299 = phi i64 [ %prol.iter299.next, %vec.epilog.scalar.ph281.prol ], [ 0, %vec.epilog.scalar.ph281.preheader ]
  %gep170.prol = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv142.prol
  %i.hm = load float, ptr %gep170.prol, align 4, !tbaa !108
  %gep172.prol = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv142.prol ; 2 uses
  %i.hn = load float, ptr %gep172.prol, align 4, !tbaa !108
  %i.ho = fadd float %i.hm, %i.hn
  store float %i.ho, ptr %gep172.prol, align 4, !tbaa !108
  %indvars.iv.next143.prol = add nuw nsw i64 %indvars.iv142.prol, 1 ; 2 uses
  %prol.iter299.next = add i64 %prol.iter299, 1   ; 2 uses
  %prol.iter299.cmp.not = icmp eq i64 %prol.iter299.next, %xtraiter297
  br i1 %prol.iter299.cmp.not, label %vec.epilog.scalar.ph281.prol.loopexit, label %vec.epilog.scalar.ph281.prol, !llvm.loop !247

vec.epilog.scalar.ph281.prol.loopexit:            ; preds = %vec.epilog.scalar.ph281.prol, %vec.epilog.scalar.ph281.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %vec.epilog.scalar.ph281.preheader ], [ %indvars.iv.next143.prol, %vec.epilog.scalar.ph281.prol ]
  %i.hp = sub nsw i64 %indvars.iv142.ph, %wide.trip.count145
  %i.hq = icmp ugt i64 %i.hp, -8
  br i1 %i.hq, label %._crit_edge104, label %vec.epilog.scalar.ph281

vec.epilog.scalar.ph281:                          ; preds = %vec.epilog.scalar.ph281.prol.loopexit, %vec.epilog.scalar.ph281
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.7, %vec.epilog.scalar.ph281 ], [ %indvars.iv142.unr, %vec.epilog.scalar.ph281.prol.loopexit ] ; 10 uses
  %gep170 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv142
  %i.hr = load float, ptr %gep170, align 4, !tbaa !108
  %gep172 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv142 ; 2 uses
  %i.hs = load float, ptr %gep172, align 4, !tbaa !108
  %i.ht = fadd float %i.hr, %i.hs
  store float %i.ht, ptr %gep172, align 4, !tbaa !108
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %gep170.1 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv.next143
  %i.hu = load float, ptr %gep170.1, align 4, !tbaa !108
  %gep172.1 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv.next143 ; 2 uses
  %i.hv = load float, ptr %gep172.1, align 4, !tbaa !108
  %i.hw = fadd float %i.hu, %i.hv
  store float %i.hw, ptr %gep172.1, align 4, !tbaa !108
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %gep170.2 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv.next143.1
  %i.hx = load float, ptr %gep170.2, align 4, !tbaa !108
  %gep172.2 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv.next143.1 ; 2 uses
  %i.hy = load float, ptr %gep172.2, align 4, !tbaa !108
  %i.hz = fadd float %i.hx, %i.hy
  store float %i.hz, ptr %gep172.2, align 4, !tbaa !108
  %indvars.iv.next143.2 = add nuw nsw i64 %indvars.iv142, 3 ; 2 uses
  %gep170.3 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv.next143.2
  %i.ia = load float, ptr %gep170.3, align 4, !tbaa !108
  %gep172.3 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv.next143.2 ; 2 uses
  %i.ib = load float, ptr %gep172.3, align 4, !tbaa !108
  %i.ic = fadd float %i.ia, %i.ib
  store float %i.ic, ptr %gep172.3, align 4, !tbaa !108
  %indvars.iv.next143.3 = add nuw nsw i64 %indvars.iv142, 4 ; 2 uses
  %gep170.4 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv.next143.3
  %i.id = load float, ptr %gep170.4, align 4, !tbaa !108
  %gep172.4 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv.next143.3 ; 2 uses
  %i.ie = load float, ptr %gep172.4, align 4, !tbaa !108
  %i.if = fadd float %i.id, %i.ie
  store float %i.if, ptr %gep172.4, align 4, !tbaa !108
  %indvars.iv.next143.4 = add nuw nsw i64 %indvars.iv142, 5 ; 2 uses
  %gep170.5 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv.next143.4
  %i.ig = load float, ptr %gep170.5, align 4, !tbaa !108
  %gep172.5 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv.next143.4 ; 2 uses
  %i.ih = load float, ptr %gep172.5, align 4, !tbaa !108
  %i.ii = fadd float %i.ig, %i.ih
  store float %i.ii, ptr %gep172.5, align 4, !tbaa !108
  %indvars.iv.next143.5 = add nuw nsw i64 %indvars.iv142, 6 ; 2 uses
  %gep170.6 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv.next143.5
  %i.ij = load float, ptr %gep170.6, align 4, !tbaa !108
  %gep172.6 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv.next143.5 ; 2 uses
  %i.ik = load float, ptr %gep172.6, align 4, !tbaa !108
  %i.il = fadd float %i.ij, %i.ik
  store float %i.il, ptr %gep172.6, align 4, !tbaa !108
  %indvars.iv.next143.6 = add nuw nsw i64 %indvars.iv142, 7 ; 2 uses
  %gep170.7 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv.next143.6
  %i.im = load float, ptr %gep170.7, align 4, !tbaa !108
  %gep172.7 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv.next143.6 ; 2 uses
  %i.in = load float, ptr %gep172.7, align 4, !tbaa !108
  %i.io = fadd float %i.im, %i.in
  store float %i.io, ptr %gep172.7, align 4, !tbaa !108
  %indvars.iv.next143.7 = add nuw nsw i64 %indvars.iv142, 8 ; 2 uses
  %exitcond146.not.7 = icmp eq i64 %indvars.iv.next143.7, %wide.trip.count145
  br i1 %exitcond146.not.7, label %._crit_edge104, label %vec.epilog.scalar.ph281, !llvm.loop !248

._crit_edge104:                                   ; preds = %vec.epilog.scalar.ph281.prol.loopexit, %vec.epilog.scalar.ph281, %vec.epilog.middle.block291, %middle.block277
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %._crit_edge106, label %iter.check279, !llvm.loop !249

._crit_edge106:                                   ; preds = %._crit_edge104
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count155
  br i1 %exitcond156.not, label %.loopexit, label %.preheader82, !llvm.loop !250

.loopexit:                                        ; preds = %._crit_edge106, %.preheader82.lr.ph, %.thread81, %.thread, %._crit_edge101.split
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_Z23unwrap_periodic_pmegridP9gmx_pme_tN3gmx8ArrayRefIfEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %"class.gmx::ArrayRef", align 8     ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  store ptr %1, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.h, align 8
  store ptr %0, ptr %i.a, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load i32, ptr %i.i, align 8, !tbaa !138
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.l = load i32, ptr %i.k, align 4, !tbaa !139  ; 2 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load i32, ptr %i.m, align 8, !tbaa !104  ; 5 uses
  store i32 %i.n, ptr %i.c, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.p = load i32, ptr %i.o, align 8, !tbaa !105  ; 3 uses
  store i32 %i.p, ptr %i.d, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.r = load i32, ptr %i.q, align 4, !tbaa !106  ; 2 uses
  store i32 %i.r, ptr %i.e, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load i32, ptr %i.s, align 8, !tbaa !140  ; 2 uses
  %i.u = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.u, ptr %i.f, align 4, !tbaa !10
end_hunk_1
