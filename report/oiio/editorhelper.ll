inline.NumInlined: 328
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN8ultrahdr23rotate_buffer_clockwiseImEEvPT_S2_iiiii:bb.a
  %i.bt = mul i32 %i.bs, %4
  %i.bu = add i32 %i.bt, %2                       ; 4 uses
  %i.bv = mul nsw i64 %indvars.iv93, %i.j
  %invariant.gep113 = getelementptr [8 x i8], ptr %1, i64 %i.bv ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader64
  %i.bw = trunc i64 %indvars.iv93 to i32
  %i.bx = mul i32 %4, %i.bw
  %i.by = xor i32 %i.bx, -1
  %i.bz = add i32 %i.n, %i.by                     ; 2 uses
  %i.ca = sub i32 %i.bz, %i.x
  %i.cb = icmp sgt i32 %i.ca, %i.bz
  %i.cc = or i1 %i.cb, %i.y
  br i1 %i.cc, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %1, %scevgep126
  %bound1 = icmp ult ptr %scevgep124, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.cd = or i1 %found.conflict, %stride.check
  br i1 %i.cd, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ce = trunc i64 %index to i32
  %i.cf = xor i32 %i.ce, -1
  %i.cg = add i32 %i.bu, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -24
  %wide.load = load <2 x i64>, ptr %i.cj, align 8, !tbaa !45, !alias.scope !125
  %wide.load127 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !45, !alias.scope !125
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse128 = shufflevector <2 x i64> %wide.load127, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cl = getelementptr [8 x i8], ptr %invariant.gep113, i64 %index ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  store <2 x i64> %reverse, ptr %i.cl, align 8, !tbaa !45, !alias.scope !128, !noalias !125
  store <2 x i64> %reverse128, ptr %i.cm, align 8, !tbaa !45, !alias.scope !128, !noalias !125
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge73, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader64, %middle.block
  %indvars.iv88.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader64 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod156.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.co = trunc nuw nsw i64 %indvars.iv88.ph to i32
  %i.cp = xor i32 %i.co, -1
  %i.cq = add i32 %i.bu, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !45
  %gep114.prol = getelementptr [8 x i8], ptr %invariant.gep113, i64 %indvars.iv88.ph
  store i64 %i.ct, ptr %gep114.prol, align 8, !tbaa !45
  %indvars.iv.next89.prol = or disjoint i64 %indvars.iv88.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv88.unr = phi i64 [ %indvars.iv88.ph, %scalar.ph.preheader ], [ %indvars.iv.next89.prol, %scalar.ph.prol ]
  %i.cu = icmp eq i64 %indvars.iv88.ph, %i.z
  br i1 %i.cu, label %._crit_edge73, label %scalar.ph

._crit_edge73:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %.loopexit, label %.preheader64, !llvm.loop !131

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv88 = phi i64 [ %indvars.iv.next89.1, %scalar.ph ], [ %indvars.iv88.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cv = trunc i64 %indvars.iv88 to i32
  %i.cw = xor i32 %i.cv, -1
  %i.cx = add i32 %i.bu, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !45
  %gep114 = getelementptr [8 x i8], ptr %invariant.gep113, i64 %indvars.iv88
  store i64 %i.da, ptr %gep114, align 8, !tbaa !45
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.db = trunc i64 %indvars.iv.next89 to i32
  %i.dc = xor i32 %i.db, -1
  %i.dd = add i32 %i.bu, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %0, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !45
  %gep114.1 = getelementptr [8 x i8], ptr %invariant.gep113, i64 %indvars.iv.next89
  store i64 %i.dg, ptr %gep114.1, align 8, !tbaa !45
  %indvars.iv.next89.1 = add nuw nsw i64 %indvars.iv88, 2 ; 2 uses
  %exitcond92.not.1 = icmp eq i64 %indvars.iv.next89.1, %wide.trip.count91
  br i1 %exitcond92.not.1, label %._crit_edge73, label %scalar.ph, !llvm.loop !132

.preheader67:                                     ; preds = %.preheader67.preheader, %._crit_edge
  %indvars.iv83 = phi i64 [ 0, %.preheader67.preheader ], [ %indvars.iv.next84, %._crit_edge ] ; 3 uses
  %i.dh = xor i64 %indvars.iv83, -1
  %i.di = mul nsw i64 %indvars.iv83, %i.e
  %i.dj = getelementptr [8 x i8], ptr %i.f, i64 %i.dh ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.di ; 5 uses
  br i1 %i.g, label %.epil.preheader, label %.preheader67.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader67.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader67
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader67 ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.dk = mul nsw i64 %indvars.iv.epil, %i.c
  %i.dl = getelementptr [8 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !45
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil
  store i64 %i.dm, ptr %gep.epil, align 8, !tbaa !45
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !133

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %.loopexit, label %.preheader67, !llvm.loop !134

.preheader67.new:                                 ; preds = %.preheader67, %.preheader67.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader67.new ], [ 0, %.preheader67 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader67.new ], [ 0, %.preheader67 ]
  %i.dn = mul nsw i64 %indvars.iv, %i.c
  %i.do = getelementptr [8 x i8], ptr %i.dj, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !45
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i64 %i.dp, ptr %gep, align 8, !tbaa !45
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dq = mul nsw i64 %indvars.iv.next, %i.c
  %i.dr = getelementptr [8 x i8], ptr %i.dj, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !45
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store i64 %i.ds, ptr %gep.1, align 8, !tbaa !45
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.dt = mul nsw i64 %indvars.iv.next.1, %i.c
  %i.du = getelementptr [8 x i8], ptr %i.dj, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !45
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  store i64 %i.dv, ptr %gep.2, align 8, !tbaa !45
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.dw = mul nsw i64 %indvars.iv.next.2, %i.c
  %i.dx = getelementptr [8 x i8], ptr %i.dj, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !45
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  store i64 %i.dy, ptr %gep.3, align 8, !tbaa !45
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader67.new, !llvm.loop !135

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge73, %._crit_edge76, %.preheader68, %.preheader65, %.preheader63, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8ultrahdr13resize_bufferIhEEvPT_S2_iiiiii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = icmp sgt i32 %5, 0
  %i.d = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge22.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.e = sdiv i32 %3, %5                          ; 2 uses
  %factor.op.mul = mul i32 %6, %i.e
  %i.f = sdiv i32 %2, %4                          ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 5 uses
  %i.h = sext i32 %7 to i64                       ; 2 uses
  %wide.trip.count27 = zext nneg i32 %5 to i64
  %wide.trip.count = zext nneg i32 %4 to i64      ; 8 uses
  %i.i = mul i32 %i.e, %6
  %min.iters.check = icmp ult i32 %4, 4
  %ident.check.not = icmp ne i32 %i.f, 1
  %or.cond39.not41 = or i1 %min.iters.check, %ident.check.not
  %min.iters.check32 = icmp ult i32 %4, 32
  %i.j = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n38 = icmp eq i64 %n.vec34, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv24 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next25, %._crit_edge ] ; 5 uses
  %i.k = mul nsw i64 %indvars.iv24, %i.h
  %i.l = add i64 %i.k, %i.b
  %i.m = trunc i64 %indvars.iv24 to i32
  %i.n = mul i32 %i.i, %i.m
  %i.o = sext i32 %i.n to i64
  %i.p = add i64 %i.a, %i.o
  %i.q = trunc nuw nsw i64 %indvars.iv24 to i32
  %.reass = mul i32 %factor.op.mul, %i.q
  %i.r = mul nsw i64 %indvars.iv24, %i.h
  %i.s = sext i32 %.reass to i64
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.s ; 7 uses
  %invariant.gep30 = getelementptr i8, ptr %1, i64 %i.r ; 7 uses
  %i.t = sub i64 %i.p, %i.l
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond40 = select i1 %or.cond39.not41, i1 true, i1 %diff.check
  br i1 %or.cond40, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.u = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %wide.load = load <16 x i8>, ptr %i.u, align 1, !tbaa !9
  %wide.load33 = load <16 x i8>, ptr %i.v, align 1, !tbaa !9
  %i.w = getelementptr i8, ptr %invariant.gep30, i64 %index ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  store <16 x i8> %wide.load, ptr %i.w, align 1, !tbaa !9
  store <16 x i8> %wide.load33, ptr %i.x, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !137

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 3 uses
  %i.z = getelementptr i8, ptr %invariant.gep, i64 %index35
  %wide.load36 = load <4 x i8>, ptr %i.z, align 1, !tbaa !9
  %i.aa = getelementptr i8, ptr %invariant.gep30, i64 %index35
  store <4 x i8> %wide.load36, ptr %i.aa, align 1, !tbaa !9
  %index.next37 = add nuw i64 %index35, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next37, %n.vec34
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !138

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n38, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ac = mul nsw i64 %indvars.iv.prol, %i.g
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.ac
  %i.ad = load i8, ptr %gep.prol, align 1, !tbaa !9
  %gep31.prol = getelementptr i8, ptr %invariant.gep30, i64 %indvars.iv.prol
  store i8 %i.ad, ptr %gep31.prol, align 1, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !139

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge22.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %._crit_edge22.split, label %iter.check, !llvm.loop !140

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ag = mul nsw i64 %indvars.iv, %i.g
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ag
  %i.ah = load i8, ptr %gep, align 1, !tbaa !9
  %gep31 = getelementptr i8, ptr %invariant.gep30, i64 %indvars.iv
  store i8 %i.ah, ptr %gep31, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = mul nsw i64 %indvars.iv.next, %i.g
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.ai
  %i.aj = load i8, ptr %gep.1, align 1, !tbaa !9
  %gep31.1 = getelementptr i8, ptr %invariant.gep30, i64 %indvars.iv.next
  store i8 %i.aj, ptr %gep31.1, align 1, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ak = mul nsw i64 %indvars.iv.next.1, %i.g
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.ak
  %i.al = load i8, ptr %gep.2, align 1, !tbaa !9
  %gep31.2 = getelementptr i8, ptr %invariant.gep30, i64 %indvars.iv.next.1
  store i8 %i.al, ptr %gep31.2, align 1, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.am = mul nsw i64 %indvars.iv.next.2, %i.g
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.am
  %i.an = load i8, ptr %gep.3, align 1, !tbaa !9
  %gep31.3 = getelementptr i8, ptr %invariant.gep30, i64 %indvars.iv.next.2
  store i8 %i.an, ptr %gep31.3, align 1, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !141
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8ultrahdr13resize_bufferItEEvPT_S2_iiiiii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge22.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = sdiv i32 %3, %5                          ; 2 uses
  %factor.op.mul = mul i32 %6, %i.e
  %i.f = sdiv i32 %2, %4                          ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 5 uses
  %i.h = sext i32 %7 to i64                       ; 2 uses
  %wide.trip.count27 = zext nneg i32 %5 to i64
  %wide.trip.count = zext nneg i32 %4 to i64      ; 8 uses
  %i.i = shl nsw i64 %i.h, 1
  %i.j = mul i32 %i.e, %6
  %min.iters.check = icmp ult i32 %4, 4
  %ident.check.not = icmp ne i32 %i.f, 1
  %or.cond39.not41 = or i1 %min.iters.check, %ident.check.not
  %min.iters.check32 = icmp ult i32 %4, 16
  %i.k = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n38 = icmp eq i64 %n.vec34, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv24 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next25, %._crit_edge ] ; 5 uses
  %i.l = mul i64 %i.i, %indvars.iv24
  %i.m = trunc i64 %indvars.iv24 to i32
  %i.n = mul i32 %i.j, %i.m
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 1
  %i.q = add i64 %i.l, %i.c
  %i.r = add i64 %i.p, %i.d
  %i.s = trunc nuw nsw i64 %indvars.iv24 to i32
  %.reass = mul i32 %factor.op.mul, %i.s
  %i.t = mul nsw i64 %indvars.iv24, %i.h
  %i.u = sext i32 %.reass to i64
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.u ; 7 uses
  %invariant.gep30 = getelementptr [2 x i8], ptr %1, i64 %i.t ; 7 uses
  %i.v = sub i64 %i.r, %i.q
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond40 = select i1 %or.cond39.not41, i1 true, i1 %diff.check
  br i1 %or.cond40, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.w = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %wide.load = load <8 x i16>, ptr %i.w, align 2, !tbaa !23
  %wide.load33 = load <8 x i16>, ptr %i.x, align 2, !tbaa !23
  %i.y = getelementptr [2 x i8], ptr %invariant.gep30, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  store <8 x i16> %wide.load, ptr %i.y, align 2, !tbaa !23
  store <8 x i16> %wide.load33, ptr %i.z, align 2, !tbaa !23
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 3 uses
  %i.ab = getelementptr [2 x i8], ptr %invariant.gep, i64 %index35
  %wide.load36 = load <4 x i16>, ptr %i.ab, align 2, !tbaa !23
  %i.ac = getelementptr [2 x i8], ptr %invariant.gep30, i64 %index35
  store <4 x i16> %wide.load36, ptr %i.ac, align 2, !tbaa !23
  %index.next37 = add nuw i64 %index35, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next37, %n.vec34
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !143

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n38, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol
end_hunk_0
