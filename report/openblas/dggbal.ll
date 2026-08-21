Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dggbal?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dggbal_:bb.a
bb.k:                                             ; preds = %bb.i
  store i32 1, ptr %6, align 4, !tbaa !8
  %i.ag = load i32, ptr %1, align 4, !tbaa !8
  store i32 %i.ag, ptr %7, align 4, !tbaa !8
  store double 1.000000e+00, ptr %8, align 8, !tbaa !9
  store double 1.000000e+00, ptr %9, align 8, !tbaa !9
  br label %.loopexit

bb.l:                                             ; preds = %bb.i
  %i.ah = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #8
  %.not633 = icmp eq i32 %i.ah, 0
  br i1 %.not633, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %6, align 4, !tbaa !8
  %i.ai = load i32, ptr %1, align 4, !tbaa !8     ; 7 uses
  store i32 %i.ai, ptr %7, align 4, !tbaa !8
  %.not664702 = icmp slt i32 %i.ai, 1
  br i1 %.not664702, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.m
  %i.aj = add nuw i32 %i.ai, 1
  %wide.trip.count = zext i32 %i.aj to i64        ; 2 uses
  %i.ak = zext nneg i32 %i.ai to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.ai, 4
  %i.al = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.al, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1123 = icmp ult i32 %i.ai, 16
  br i1 %min.iters.check1123, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.am = and i64 %i.ak, 12
  %n.vec = and i64 %i.ak, 2147483632              ; 4 uses
  %i.an = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = getelementptr [8 x i8], ptr %8, i64 %index ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.ao, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.ap, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.aq, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.ar, align 8, !tbaa !9
  %i.as = getelementptr [8 x i8], ptr %9, i64 %index ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.as, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.at, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.au, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.av, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ak
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1124 = and i64 %i.ak, 2147483644          ; 3 uses
  %i.ax = or disjoint i64 %n.vec1124, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1125 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1126, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr [8 x i8], ptr %8, i64 %index1125
  store <4 x double> splat (double 1.000000e+00), ptr %i.ay, align 8, !tbaa !9
  %i.az = getelementptr [8 x i8], ptr %9, i64 %index1125
  store <4 x double> splat (double 1.000000e+00), ptr %i.az, align 8, !tbaa !9
  %index.next1126 = add nuw i64 %index1125, 4     ; 2 uses
  %i.ba = icmp eq i64 %index.next1126, %n.vec1124
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1127 = icmp eq i64 %n.vec1124, %i.ak
  br i1 %cmp.n1127, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ] ; 4 uses
  %i.bb = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.bc = zext nneg i32 %i.ai to i64
  %i.bd = sub nsw i64 %i.bc, %indvars.iv.ph
  %xtraiter = and i64 %i.bb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.prol
  store double 1.000000e+00, ptr %i.be, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.prol
  store double 1.000000e+00, ptr %i.bf, align 8, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !17

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bg = icmp ult i64 %i.bd, 7
  br i1 %i.bg, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 11 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.bh, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.bi, align 8, !tbaa !9
  %i.bj = getelementptr [8 x i8], ptr %8, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.bj, align 8, !tbaa !9
  %i.bk = getelementptr [8 x i8], ptr %9, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.bk, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.1
  store double 1.000000e+00, ptr %i.bl, align 8, !tbaa !9
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store double 1.000000e+00, ptr %i.bm, align 8, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.2
  store double 1.000000e+00, ptr %i.bn, align 8, !tbaa !9
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.2
  store double 1.000000e+00, ptr %i.bo, align 8, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.3
  store double 1.000000e+00, ptr %i.bp, align 8, !tbaa !9
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.3
  store double 1.000000e+00, ptr %i.bq, align 8, !tbaa !9
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.4
  store double 1.000000e+00, ptr %i.br, align 8, !tbaa !9
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.4
  store double 1.000000e+00, ptr %i.bs, align 8, !tbaa !9
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.5
  store double 1.000000e+00, ptr %i.bt, align 8, !tbaa !9
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.5
  store double 1.000000e+00, ptr %i.bu, align 8, !tbaa !9
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.6
  store double 1.000000e+00, ptr %i.bv, align 8, !tbaa !9
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.6
  store double 1.000000e+00, ptr %i.bw, align 8, !tbaa !9
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !19

bb.n:                                             ; preds = %bb.l
  %i.bx = load i32, ptr %1, align 4, !tbaa !8     ; 3 uses
  store i32 %i.bx, ptr %i.h, align 4, !tbaa !8
  %i.by = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #8
  %.not634 = icmp eq i32 %i.by, 0
  br i1 %.not634, label %.preheader.preheader, label %.loopexit689

.preheader.preheader:                             ; preds = %bb.n
  %i.bz = sext i32 %i.m to i64                    ; 3 uses
  %i.ca = sext i32 %i.j to i64                    ; 3 uses
  br label %.preheader

bb.o:                                             ; preds = %bb.ah
  store double 1.000000e+00, ptr %9, align 8, !tbaa !9
  store double 1.000000e+00, ptr %8, align 8, !tbaa !9
  br label %.loopexit689

.preheader:                                       ; preds = %.preheader.preheader, %bb.ah
  %.promoted953 = phi i32 [ %.promoted952, %bb.ah ], [ undef, %.preheader.preheader ] ; 3 uses
  %i.cb = phi i32 [ %i.cc, %bb.ah ], [ %i.bx, %.preheader.preheader ] ; 16 uses
  %.0592 = phi i32 [ %.2594, %bb.ah ], [ 1, %.preheader.preheader ] ; 3 uses
  %i.cc = add nsw i32 %i.cb, -1                   ; 7 uses
  %i.cd = icmp sgt i32 %i.cb, 0
  br i1 %i.cd, label %.lr.ph712.preheader, label %.loopexit690

.lr.ph712.preheader:                              ; preds = %.preheader
  %i.ce = add nuw i32 %i.cb, 1
  %i.cf = zext nneg i32 %i.cb to i64              ; 2 uses
  %wide.trip.count850 = zext nneg i32 %i.cb to i64
  %exitcond851.not1111 = icmp eq i32 %i.cb, 1
  br label %.lr.ph712

.lr.ph712:                                        ; preds = %.lr.ph712.preheader, %bb.u
  %indvars.iv859 = phi i64 [ %i.cf, %.lr.ph712.preheader ], [ %indvars.iv.next860, %bb.u ] ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv859
  %invariant.gep1034 = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv859
  br i1 %exitcond851.not1111, label %.loopexit687, label %.lr.ph1114

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next848 = add nuw nsw i64 %indvars.iv8471113, 1 ; 2 uses
  %indvars.iv.next853 = add nuw i32 %indvars.iv8521112, 1
  %exitcond851.not = icmp eq i64 %indvars.iv.next848, %wide.trip.count850
  br i1 %exitcond851.not, label %.loopexit687, label %.lr.ph1114, !llvm.loop !20

.lr.ph1114:                                       ; preds = %.lr.ph712, %bb.p
  %indvars.iv8471113 = phi i64 [ %indvars.iv.next848, %bb.p ], [ 1, %.lr.ph712 ] ; 4 uses
  %indvars.iv8521112 = phi i32 [ %indvars.iv.next853, %bb.p ], [ 2, %.lr.ph712 ] ; 2 uses
  %i.cg = mul nsw i64 %indvars.iv8471113, %i.ca
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cg
  %i.ch = load double, ptr %gep, align 8, !tbaa !9
  %i.ci = fcmp une double %i.ch, 0.000000e+00
  br i1 %i.ci, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph1114
  %i.cj = mul nsw i64 %indvars.iv8471113, %i.bz
  %gep1035 = getelementptr [8 x i8], ptr %invariant.gep1034, i64 %i.cj
  %i.ck = load double, ptr %gep1035, align 8, !tbaa !9
  %i.cl = fcmp une double %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.r, label %bb.p, !llvm.loop !20

bb.r:                                             ; preds = %.lr.ph1114, %bb.q
  %i.cm = trunc nuw nsw i64 %indvars.iv8471113 to i32 ; 3 uses
  %.not636704.not = icmp sgt i32 %i.cb, %i.cm
  br i1 %.not636704.not, label %.lr.ph706.preheader, label %.loopexit687

.lr.ph706.preheader:                              ; preds = %bb.r
  %12 = sext i32 %indvars.iv8521112 to i64
  %invariant.gep1036 = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv859
  %invariant.gep1038 = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv859
  br label %.lr.ph706

bb.s:                                             ; preds = %bb.t
  %indvars.iv.next856 = add nsw i64 %indvars.iv855, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next856 to i32
  %exitcond858.not = icmp eq i32 %i.ce, %lftr.wideiv
  br i1 %exitcond858.not, label %.loopexit687, label %.lr.ph706, !llvm.loop !21

.lr.ph706:                                        ; preds = %.lr.ph706.preheader, %bb.s
  %indvars.iv855 = phi i64 [ %12, %.lr.ph706.preheader ], [ %indvars.iv.next856, %bb.s ] ; 3 uses
  %i.cn = mul nsw i64 %indvars.iv855, %i.ca
  %gep1037 = getelementptr [8 x i8], ptr %invariant.gep1036, i64 %i.cn
  %i.co = load double, ptr %gep1037, align 8, !tbaa !9
  %i.cp = fcmp une double %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph706
  %i.cq = mul nsw i64 %indvars.iv855, %i.bz
  %gep1039 = getelementptr [8 x i8], ptr %invariant.gep1038, i64 %i.cq
  %i.cr = load double, ptr %gep1039, align 8, !tbaa !9
  %i.cs = fcmp une double %i.cr, 0.000000e+00
  br i1 %i.cs, label %bb.u, label %bb.s

.loopexit687:                                     ; preds = %bb.r, %.lr.ph712, %bb.p, %bb.s
  %.sink1078 = phi i32 [ %i.cc, %bb.p ], [ %i.cb, %bb.s ], [ %i.cb, %bb.r ], [ %i.cc, %.lr.ph712 ]
  %.2598 = phi i32 [ %i.cb, %bb.p ], [ %i.cm, %bb.s ], [ %i.cm, %bb.r ], [ %i.cb, %.lr.ph712 ]
  store i32 %.sink1078, ptr %i.c, align 4, !tbaa !8
  %.1603711832 = trunc i64 %indvars.iv859 to i32
  br label %bb.ac

bb.u:                                             ; preds = %bb.t, %.lr.ph706
  %indvars.iv.next860 = add nsw i64 %indvars.iv859, -1
  %i.ct = icmp sgt i64 %indvars.iv859, 1
  br i1 %i.ct, label %.lr.ph712, label %.loopexit690, !llvm.loop !22

.loopexit690:                                     ; preds = %bb.u, %.preheader, %bb.ai
  %.promoted = phi i32 [ %.promoted952, %bb.ai ], [ %.promoted953, %.preheader ], [ %.promoted953, %bb.u ]
  %i.cu = phi i32 [ %.pre, %bb.ai ], [ %i.cb, %.preheader ], [ %i.cb, %bb.u ] ; 11 uses
  %.1593 = phi i32 [ %i.ey, %bb.ai ], [ %.0592, %.preheader ], [ %.0592, %bb.u ] ; 9 uses
  store i32 %i.cu, ptr %i.c, align 4, !tbaa !8
  %.not637722 = icmp sgt i32 %.1593, %i.cu
  br i1 %.not637722, label %.loopexit689, label %.lr.ph724.preheader

.lr.ph724.preheader:                              ; preds = %.loopexit690
  %i.cv = sext i32 %.1593 to i64                  ; 3 uses
  %smax = call i32 @llvm.smax.i32(i32 %.1593, i32 %i.cb)
  %i.cw = add i32 %i.cu, 1                        ; 2 uses
  %wide.trip.count865 = sext i32 %smax to i64
  %exitcond866.not1117.not = icmp slt i32 %.1593, %i.cb
  br label %.lr.ph724

.lr.ph724:                                        ; preds = %.lr.ph724.preheader, %bb.ab
  %indvars.iv875 = phi i64 [ %i.cv, %.lr.ph724.preheader ], [ %indvars.iv.next876, %bb.ab ] ; 4 uses
  %i.cx = mul nsw i64 %indvars.iv875, %i.ca       ; 2 uses
  %i.cy = mul nsw i64 %indvars.iv875, %i.bz       ; 2 uses
  %invariant.gep1040 = getelementptr [8 x i8], ptr %i.l, i64 %i.cx
  %invariant.gep1042 = getelementptr [8 x i8], ptr %i.o, i64 %i.cy
  br i1 %exitcond866.not1117.not, label %.lr.ph1120, label %.loopexit685

bb.v:                                             ; preds = %bb.w
  %indvars.iv.next863 = add nsw i64 %indvars.iv8621118, 1 ; 2 uses
  %exitcond866.not = icmp eq i64 %indvars.iv.next863, %wide.trip.count865
  br i1 %exitcond866.not, label %.loopexit685, label %.lr.ph1120, !llvm.loop !23

.lr.ph1120:                                       ; preds = %.lr.ph724, %bb.v
  %indvars.iv8671119.in = phi i32 [ %indvars.iv8671119, %bb.v ], [ %.1593, %.lr.ph724 ]
  %indvars.iv8621118 = phi i64 [ %indvars.iv.next863, %bb.v ], [ %i.cv, %.lr.ph724 ] ; 4 uses
  %indvars.iv8671119 = add i32 %indvars.iv8671119.in, 1 ; 2 uses
  %gep1041 = getelementptr [8 x i8], ptr %invariant.gep1040, i64 %indvars.iv8621118
  %i.cz = load double, ptr %gep1041, align 8, !tbaa !9
  %i.da = fcmp une double %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph1120
  %gep1043 = getelementptr [8 x i8], ptr %invariant.gep1042, i64 %indvars.iv8621118
  %i.db = load double, ptr %gep1043, align 8, !tbaa !9
  %i.dc = fcmp une double %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.x, label %bb.v, !llvm.loop !23

bb.x:                                             ; preds = %.lr.ph1120, %bb.w
  %i.dd = trunc nsw i64 %indvars.iv8621118 to i32 ; 3 uses
  %.not639713.not = icmp sgt i32 %i.cu, %i.dd
  br i1 %.not639713.not, label %.lr.ph715, label %.loopexit685

.lr.ph715:                                        ; preds = %bb.x
  %i.de = sext i32 %indvars.iv8671119 to i64
  %invariant.gep1044 = getelementptr [8 x i8], ptr %i.l, i64 %i.cx
  %invariant.gep1046 = getelementptr [8 x i8], ptr %i.o, i64 %i.cy
  br label %bb.z

bb.y:                                             ; preds = %bb.aa
  %indvars.iv.next871 = add nsw i64 %indvars.iv870, 1 ; 2 uses
  %lftr.wideiv873 = trunc i64 %indvars.iv.next871 to i32
  %exitcond874.not = icmp eq i32 %i.cw, %lftr.wideiv873
  br i1 %exitcond874.not, label %.loopexit685, label %bb.z, !llvm.loop !24

bb.z:                                             ; preds = %.lr.ph715, %bb.y
  %indvars.iv870 = phi i64 [ %i.de, %.lr.ph715 ], [ %indvars.iv.next871, %bb.y ] ; 3 uses
  %gep1045 = getelementptr [8 x i8], ptr %invariant.gep1044, i64 %indvars.iv870
  %i.df = load double, ptr %gep1045, align 8, !tbaa !9
  %i.dg = fcmp une double %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %gep1047 = getelementptr [8 x i8], ptr %invariant.gep1046, i64 %indvars.iv870
  %i.dh = load double, ptr %gep1047, align 8, !tbaa !9
  %i.di = fcmp une double %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.ab, label %bb.y

.loopexit685:                                     ; preds = %bb.x, %.lr.ph724, %bb.v, %bb.y
  %.sink1079 = phi i32 [ %i.cc, %bb.v ], [ %i.cu, %bb.y ], [ %i.cu, %bb.x ], [ %i.cc, %.lr.ph724 ] ; 2 uses
  %.4606 = phi i32 [ %i.cu, %bb.v ], [ %i.dd, %bb.y ], [ %i.dd, %bb.x ], [ %i.cu, %.lr.ph724 ]
  store i32 %.sink1079, ptr %i.d, align 4
  %.3599723840 = trunc i64 %indvars.iv875 to i32
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.next876 = add nsw i64 %indvars.iv875, 1 ; 2 uses
  %lftr.wideiv878 = trunc i64 %indvars.iv.next876 to i32
  %exitcond879.not = icmp eq i32 %i.cw, %lftr.wideiv878
  br i1 %exitcond879.not, label %.loopexit689, label %.lr.ph724, !llvm.loop !25

bb.ac:                                            ; preds = %.loopexit685, %.loopexit687
  %.pre-phi = phi i64 [ %i.cv, %.loopexit685 ], [ %i.cf, %.loopexit687 ] ; 2 uses
  %.promoted952 = phi i32 [ %.sink1079, %.loopexit685 ], [ %.promoted953, %.loopexit687 ] ; 3 uses
  %.5607 = phi i32 [ %.4606, %.loopexit685 ], [ %.1603711832, %.loopexit687 ] ; 4 uses
  %.4600 = phi i32 [ %.3599723840, %.loopexit685 ], [ %.2598, %.loopexit687 ] ; 4 uses
  %.2594 = phi i32 [ %.1593, %.loopexit685 ], [ %.0592, %.loopexit687 ] ; 7 uses
  %.0591 = phi i32 [ %.1593, %.loopexit685 ], [ %i.cb, %.loopexit687 ] ; 6 uses
  %i.dj = phi i1 [ false, %.loopexit685 ], [ true, %.loopexit687 ]
  %i.dk = sitofp i32 %.5607 to double
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.pre-phi
  store double %i.dk, ptr %i.dl, align 8, !tbaa !9
  %i.dm = icmp eq i32 %.5607, %.0591
  br i1 %i.dm, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dn = load i32, ptr %1, align 4, !tbaa !8
  %reass.sub = sub i32 %i.dn, %.2594
  %i.do = add i32 %reass.sub, 1
  store i32 %i.do, ptr %i.c, align 4, !tbaa !8
  %i.dp = mul nsw i32 %.2594, %i.j                ; 2 uses
  %i.dq = add nsw i32 %i.dp, %.5607
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.dr
  %i.dt = add nsw i32 %.0591, %i.dp
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.du
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef %i.ds, ptr noundef nonnull %3, ptr noundef %i.dv, ptr noundef nonnull %3) #8
  %i.dw = load i32, ptr %1, align 4, !tbaa !8
  %reass.sub818 = sub i32 %i.dw, %.2594
  %i.dx = add i32 %reass.sub818, 1
  store i32 %i.dx, ptr %i.c, align 4, !tbaa !8
  %i.dy = mul nsw i32 %.2594, %i.m                ; 2 uses
  %i.dz = add nsw i32 %i.dy, %.5607
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ea
  %i.ec = add nsw i32 %.0591, %i.dy
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ed
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef %i.eb, ptr noundef nonnull %5, ptr noundef %i.ee, ptr noundef nonnull %5) #8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.ef = sitofp i32 %.4600 to double
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.q, i64 %.pre-phi
  store double %i.ef, ptr %i.eg, align 8, !tbaa !9
  %i.eh = icmp eq i32 %.4600, %.0591
  br i1 %i.eh, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ei = mul nsw i32 %.4600, %i.j
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr [8 x i8], ptr %i.l, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 8
  %i.em = mul nsw i32 %.0591, %i.j
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr [8 x i8], ptr %i.l, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 8
  call void @dswap_(ptr noundef nonnull %i.h, ptr noundef %i.el, ptr noundef nonnull @c__1, ptr noundef %i.ep, ptr noundef nonnull @c__1) #8
  %i.eq = mul nsw i32 %.4600, %i.m
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr [8 x i8], ptr %i.o, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 8
  %i.eu = mul nsw i32 %.0591, %i.m
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr [8 x i8], ptr %i.o, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 8
  call void @dswap_(ptr noundef nonnull %i.h, ptr noundef %i.et, ptr noundef nonnull @c__1, ptr noundef %i.ex, ptr noundef nonnull @c__1) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  br i1 %i.dj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.cc, ptr %i.h, align 4, !tbaa !8
  %.not640 = icmp eq i32 %i.cc, 1
  br i1 %.not640, label %bb.o, label %.preheader

bb.ai:                                            ; preds = %bb.ag
  %i.ey = add nsw i32 %.2594, 1
  %.pre = load i32, ptr %i.h, align 4, !tbaa !8
  br label %.loopexit690

.loopexit689:                                     ; preds = %.loopexit690, %bb.ab, %bb.n, %bb.o
  %.promoted741 = phi i32 [ undef, %bb.n ], [ %.promoted952, %bb.o ], [ %i.cu, %bb.ab ], [ %.promoted, %.loopexit690 ]
  %i.ez = phi i32 [ %i.bx, %bb.n ], [ 1, %bb.o ], [ %i.cu, %bb.ab ], [ %i.cu, %.loopexit690 ]
  %.3595 = phi i32 [ 1, %bb.n ], [ %.2594, %bb.o ], [ %.1593, %bb.ab ], [ %.1593, %.loopexit690 ]
  store i32 %.3595, ptr %6, align 4, !tbaa !8
  store i32 %i.ez, ptr %7, align 4, !tbaa !8
end_hunk_0
