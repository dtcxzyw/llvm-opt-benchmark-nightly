Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/rbin?download=true
inline.NumInlined: 25
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z8add_bindP5t_binN3gmx8ArrayRefIKdEE:bb.a

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1 = icmp samesign ult i64 %wide.trip.count.i, 16
  br i1 %min.iters.check1, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.d, 2147483632               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load = load <4 x double>, ptr %i.z, align 8, !tbaa !19
  %wide.load2 = load <4 x double>, ptr %i.aa, align 8, !tbaa !19
  %wide.load3 = load <4 x double>, ptr %i.ab, align 8, !tbaa !19
  %wide.load4 = load <4 x double>, ptr %i.ac, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  store <4 x double> %wide.load, ptr %i.ad, align 8, !tbaa !19
  store <4 x double> %wide.load2, ptr %i.ae, align 8, !tbaa !19
  store <4 x double> %wide.load3, ptr %i.af, align 8, !tbaa !19
  store <4 x double> %wide.load4, ptr %i.ag, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_Z8add_bindP5t_biniPKd.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ai = and i64 %i.c, 96
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %i.d, 2147483644              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index6
  %wide.load7 = load <4 x double>, ptr %i.aj, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index6
  store <4 x double> %wide.load7, ptr %i.ak, align 8, !tbaa !19
  %index.next8 = add nuw i64 %index6, 4           ; 2 uses
  %i.al = icmp eq i64 %index.next8, %n.vec5
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %wide.trip.count.i, %n.vec5
  br i1 %cmp.n9, label %_Z8add_bindP5t_biniPKd.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ] ; 4 uses
  %i.am = sub nsw i64 %i.d, %indvars.iv.i.ph
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.prol
  %i.ao = load double, ptr %i.an, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.prol
  store double %i.ao, ptr %i.ap, align 8, !tbaa !19
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !37

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.aq = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ar = icmp ugt i64 %i.aq, -8
  br i1 %i.ar, label %_Z8add_bindP5t_biniPKd.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.at = load double, ptr %i.as, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  store double %i.at, ptr %i.au, align 8, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !19
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i
  store double %i.aw, ptr %i.ax, align 8, !tbaa !19
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.az = load double, ptr %i.ay, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.1
  store double %i.az, ptr %i.ba, align 8, !tbaa !19
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.2
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !19
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.2
  store double %i.bc, ptr %i.bd, align 8, !tbaa !19
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.3
  %i.bf = load double, ptr %i.be, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.3
  store double %i.bf, ptr %i.bg, align 8, !tbaa !19
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.4
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !19
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.4
  store double %i.bi, ptr %i.bj, align 8, !tbaa !19
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.5
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.5
  store double %i.bl, ptr %i.bm, align 8, !tbaa !19
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.6
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.6
  store double %i.bo, ptr %i.bp, align 8, !tbaa !19
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %_Z8add_bindP5t_biniPKd.exit, label %.lr.ph.i, !llvm.loop !38

_Z8add_bindP5t_biniPKd.exit:                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.bq = add nsw i32 %i.q, %i.e
  store i32 %i.bq, ptr %0, align 8, !tbaa !14
  ret i32 %i.q
}

; Function Attrs: mustprogress uwtable
define void @_Z7sum_binP5t_binRKN3gmx7MpiCommE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12   ; 3 uses
  %i.d = icmp slt i32 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = sext i32 %i.a to i64
  %i.h = shl nsw i64 %i.g, 3
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.h
  %i.i = xor i32 %i.a, -1
  %i.j = add i32 %i.c, %i.i
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.m, i1 false), !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %.lr.ph
  %i.n = sext i32 %i.c to i64
  tail call void @_ZNK3gmx7MpiComm9sumReduceEmPd(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.n, ptr noundef %i.f)
  ret void
}

declare void @_ZNK3gmx7MpiComm9sumReduceEmPd(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z12extract_binrP5t_biniiPf(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i32 %2, 16
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %wide.load = load <4 x double>, ptr %i.g, align 8, !tbaa !19
  %wide.load11 = load <4 x double>, ptr %i.h, align 8, !tbaa !19
  %wide.load12 = load <4 x double>, ptr %i.i, align 8, !tbaa !19
  %wide.load13 = load <4 x double>, ptr %i.j, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %4 = shufflevector <4 x double> %wide.load, <4 x double> %wide.load11, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = fptrunc <8 x double> %4 to <8 x float>
  store <8 x float> %5, ptr %i.k, align 4, !tbaa !17
  %6 = shufflevector <4 x double> %wide.load12, <4 x double> %wide.load13, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = fptrunc <8 x double> %6 to <8 x float>
  store <8 x float> %7, ptr %i.l, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index15
  %wide.load16 = load <4 x double>, ptr %i.n, align 8, !tbaa !19
  %i.o = fptrunc <4 x double> %wide.load16 to <4 x float>
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index15
  store <4 x float> %i.o, ptr %i.p, align 4, !tbaa !17
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.q = icmp eq i64 %index.next17, %n.vec14
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %n.vec14, %wide.trip.count
  br i1 %cmp.n18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.s = load double, ptr %i.r, align 8, !tbaa !19
  %i.t = fptrunc double %i.s to float
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.t, ptr %i.u, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z12extract_binrP5t_biniN3gmx8ArrayRefIfEE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr %2, ptr %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = lshr exact i64 %i.c, 2                   ; 4 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = icmp sgt i32 %i.e, 0
  br i1 %i.j, label %iter.check, label %_Z12extract_binrP5t_biniiPf.exit

iter.check:                                       ; preds = %bb.a
  %wide.trip.count.i = and i64 %i.d, 2147483647   ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1 = icmp samesign ult i64 %wide.trip.count.i, 16
  br i1 %min.iters.check1, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.d, 2147483632               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %wide.load = load <4 x double>, ptr %i.k, align 8, !tbaa !19
  %wide.load2 = load <4 x double>, ptr %i.l, align 8, !tbaa !19
  %wide.load3 = load <4 x double>, ptr %i.m, align 8, !tbaa !19
  %wide.load4 = load <4 x double>, ptr %i.n, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %4 = shufflevector <4 x double> %wide.load, <4 x double> %wide.load2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = fptrunc <8 x double> %4 to <8 x float>
  store <8 x float> %5, ptr %i.o, align 4, !tbaa !17
  %6 = shufflevector <4 x double> %wide.load3, <4 x double> %wide.load4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = fptrunc <8 x double> %6 to <8 x float>
  store <8 x float> %7, ptr %i.p, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_Z12extract_binrP5t_biniiPf.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.r = and i64 %i.c, 48
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %i.d, 2147483644              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index6
  %wide.load7 = load <4 x double>, ptr %i.s, align 8, !tbaa !19
  %i.t = fptrunc <4 x double> %wide.load7 to <4 x float>
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index6
  store <4 x float> %i.t, ptr %i.u, align 4, !tbaa !17
  %index.next8 = add nuw i64 %index6, 4           ; 2 uses
  %i.v = icmp eq i64 %index.next8, %n.vec5
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !43

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %wide.trip.count.i, %n.vec5
  br i1 %cmp.n9, label %_Z12extract_binrP5t_biniiPf.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.x = load double, ptr %i.w, align 8, !tbaa !19
  %i.y = fptrunc double %i.x to float
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  store float %i.y, ptr %i.z, align 4, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z12extract_binrP5t_biniiPf.exit, label %.lr.ph.i, !llvm.loop !44

_Z12extract_binrP5t_biniiPf.exit:                 ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z12extract_bindP5t_biniiPd(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.e ; 11 uses
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.h = shl nsw i64 %i.e, 3
  %i.i = add i64 %i.h, %i.d
  %i.j = sub i64 %i.i, %i.a
  %diff.check = icmp ugt i64 %i.j, -128
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i32 %2, 16
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %wide.load = load <4 x double>, ptr %i.l, align 8, !tbaa !19
  %wide.load11 = load <4 x double>, ptr %i.m, align 8, !tbaa !19
  %wide.load12 = load <4 x double>, ptr %i.n, align 8, !tbaa !19
  %wide.load13 = load <4 x double>, ptr %i.o, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  store <4 x double> %wide.load, ptr %i.p, align 8, !tbaa !19
  store <4 x double> %wide.load11, ptr %i.q, align 8, !tbaa !19
  store <4 x double> %wide.load12, ptr %i.r, align 8, !tbaa !19
  store <4 x double> %wide.load13, ptr %i.s, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index15
  %wide.load16 = load <4 x double>, ptr %i.u, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index15
  store <4 x double> %wide.load16, ptr %i.v, align 8, !tbaa !19
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next17, %n.vec14
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %n.vec14, %wide.trip.count
  br i1 %cmp.n18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 4 uses
  %i.x = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.x, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.prol
  %i.z = load double, ptr %i.y, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.prol
  store double %i.z, ptr %i.aa, align 8, !tbaa !19
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !47

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ac = icmp ugt i64 %i.ab, -8
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 10 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.ae, ptr %i.af, align 8, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store double %i.ah, ptr %i.ai, align 8, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.1
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  store double %i.ak, ptr %i.al, align 8, !tbaa !19
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.2
  %i.an = load double, ptr %i.am, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2
  store double %i.an, ptr %i.ao, align 8, !tbaa !19
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.3
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.3
  store double %i.aq, ptr %i.ar, align 8, !tbaa !19
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.4
  %i.at = load double, ptr %i.as, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.4
  store double %i.at, ptr %i.au, align 8, !tbaa !19
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.5
  %i.aw = load double, ptr %i.av, align 8, !tbaa !19
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.5
  store double %i.aw, ptr %i.ax, align 8, !tbaa !19
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.6
  %i.az = load double, ptr %i.ay, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.6
  store double %i.az, ptr %i.ba, align 8, !tbaa !19
end_hunk_0
