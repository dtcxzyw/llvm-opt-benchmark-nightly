Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/Glucose2?download=true
inline.NumInlined: 2268
inline.NumDeleted: 351
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Gluco26Solver6newVarEbb:bb.a
  %i.lr = call ptr @realloc(ptr noundef %i.ln, i64 noundef %i.lq) #34 ; 2 uses
  store ptr %i.lr, ptr %i.kz, align 8, !tbaa !124
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %bb.aw, label %_ZN6Gluco23vecINS_6Solver8NodeDataEE8capacityEi.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.lt = tail call ptr @__errno_location() #30
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !67
  %i.lv = icmp eq i32 %i.lu, 12
  br i1 %i.lv, label %bb.ax, label %_ZN6Gluco23vecINS_6Solver8NodeDataEE8capacityEi.exit.i

bb.ax:                                            ; preds = %bb.aw, %bb.au
  call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

_ZN6Gluco23vecINS_6Solver8NodeDataEE8capacityEi.exit.i: ; preds = %bb.aw, %bb.av, %bb.at
  %i.lw = load i32, ptr %i.la, align 8, !tbaa !125 ; 2 uses
  %i.lx = icmp slt i32 %i.lw, %i.ky
  br i1 %i.lx, label %.lr.ph.preheader.i, label %._crit_edge.i39

.lr.ph.preheader.i:                               ; preds = %_ZN6Gluco23vecINS_6Solver8NodeDataEE8capacityEi.exit.i
  %i.ly = sext i32 %i.lw to i64                   ; 4 uses
  %wide.trip.count.i40 = sext i32 %i.ky to i64    ; 3 uses
  %i.lz = sub nsw i64 %wide.trip.count.i40, %i.ly
  %xtraiter = and i64 %i.lz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i41.prol.loopexit, label %.lr.ph.i41.prol

.lr.ph.i41.prol:                                  ; preds = %.lr.ph.preheader.i, %.lr.ph.i41.prol
  %indvars.iv.i42.prol = phi i64 [ %indvars.iv.next.i43.prol, %.lr.ph.i41.prol ], [ %i.ly, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i41.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.ma = load ptr, ptr %i.kz, align 8, !tbaa !124
  %i.mb = getelementptr inbounds [12 x i8], ptr %i.ma, i64 %indvars.iv.i42.prol ; 2 uses
  store i64 -1, ptr %i.mb, align 4
  %.sroa.4.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.prol, align 4, !tbaa !114
  %indvars.iv.next.i43.prol = add nsw i64 %indvars.iv.i42.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i41.prol.loopexit, label %.lr.ph.i41.prol, !llvm.loop !228

.lr.ph.i41.prol.loopexit:                         ; preds = %.lr.ph.i41.prol, %.lr.ph.preheader.i
  %indvars.iv.i42.unr = phi i64 [ %i.ly, %.lr.ph.preheader.i ], [ %indvars.iv.next.i43.prol, %.lr.ph.i41.prol ]
  %i.mc = sub nsw i64 %i.ly, %wide.trip.count.i40
  %i.md = icmp ugt i64 %i.mc, -4
  br i1 %i.md, label %._crit_edge.i39, label %.lr.ph.i41

._crit_edge.i39:                                  ; preds = %.lr.ph.i41.prol.loopexit, %.lr.ph.i41, %_ZN6Gluco23vecINS_6Solver8NodeDataEE8capacityEi.exit.i
  store i32 %i.ky, ptr %i.la, align 8, !tbaa !125
  %.pre86 = load i32, ptr %i.b, align 8, !tbaa !129
  br label %_ZN6Gluco23vecINS_6Solver8NodeDataEE6growToEiRKS2_.exit

.lr.ph.i41:                                       ; preds = %.lr.ph.i41.prol.loopexit, %.lr.ph.i41
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i43.3, %.lr.ph.i41 ], [ %indvars.iv.i42.unr, %.lr.ph.i41.prol.loopexit ] ; 5 uses
  %i.me = load ptr, ptr %i.kz, align 8, !tbaa !124
  %i.mf = getelementptr inbounds [12 x i8], ptr %i.me, i64 %indvars.iv.i42 ; 2 uses
  store i64 -1, ptr %i.mf, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !114
  %i.mg = load ptr, ptr %i.kz, align 8, !tbaa !124
  %i.mh = getelementptr [12 x i8], ptr %i.mg, i64 %indvars.iv.i42 ; 2 uses
  %i.mi = getelementptr i8, ptr %i.mh, i64 12
  store i64 -1, ptr %i.mi, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr i8, ptr %i.mh, i64 20
  store i32 0, ptr %.sroa.4.0..sroa_idx.1, align 4, !tbaa !114
  %i.mj = load ptr, ptr %i.kz, align 8, !tbaa !124
  %i.mk = getelementptr [12 x i8], ptr %i.mj, i64 %indvars.iv.i42 ; 2 uses
  %i.ml = getelementptr i8, ptr %i.mk, i64 24
  store i64 -1, ptr %i.ml, align 4
  %.sroa.4.0..sroa_idx.2 = getelementptr i8, ptr %i.mk, i64 32
  store i32 0, ptr %.sroa.4.0..sroa_idx.2, align 4, !tbaa !114
  %i.mm = load ptr, ptr %i.kz, align 8, !tbaa !124
  %i.mn = getelementptr [12 x i8], ptr %i.mm, i64 %indvars.iv.i42 ; 2 uses
  %i.mo = getelementptr i8, ptr %i.mn, i64 36
  store i64 -1, ptr %i.mo, align 4
  %.sroa.4.0..sroa_idx.3 = getelementptr i8, ptr %i.mn, i64 44
  store i32 0, ptr %.sroa.4.0..sroa_idx.3, align 4, !tbaa !114
  %indvars.iv.next.i43.3 = add nsw i64 %indvars.iv.i42, 4 ; 2 uses
  %exitcond.not.i44.3 = icmp eq i64 %indvars.iv.next.i43.3, %wide.trip.count.i40
  br i1 %exitcond.not.i44.3, label %._crit_edge.i39, label %.lr.ph.i41, !llvm.loop !229

_ZN6Gluco23vecINS_6Solver8NodeDataEE6growToEiRKS2_.exit: ; preds = %_ZN6Gluco23vecINS_3LitEE6growToEiRKS1_.exit36, %._crit_edge.i39
  %i.mp = phi i32 [ %i.ky, %_ZN6Gluco23vecINS_3LitEE6growToEiRKS1_.exit36 ], [ %.pre86, %._crit_edge.i39 ] ; 6 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 3 uses
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !123
  %.not.i45 = icmp slt i32 %i.ms, %i.mp
  br i1 %.not.i45, label %bb.ay, label %_ZN6Gluco23vecIjE6growToEiRKj.exit

bb.ay:                                            ; preds = %_ZN6Gluco23vecINS_6Solver8NodeDataEE6growToEiRKS2_.exit
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 1252 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !143 ; 5 uses
  %.not.i.i46 = icmp slt i32 %i.mu, %i.mp
  br i1 %.not.i.i46, label %bb.az, label %_ZN6Gluco23vecIjE8capacityEi.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.mv = add i32 %i.mp, 1
  %i.mw = sub i32 %i.mv, %i.mu
  %i.mx = and i32 %i.mw, -2
  %i.my = ashr i32 %i.mu, 1
  %i.mz = and i32 %i.my, -2
  %i.na = add nsw i32 %i.mz, 2
  %i.nb = call noundef i32 @llvm.smax.i32(i32 %i.na, i32 %i.mx) ; 2 uses
  %i.nc = sub nsw i32 2147483647, %i.mu
  %i.nd = icmp samesign ugt i32 %i.nb, %i.nc
  br i1 %i.nd, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ne = load ptr, ptr %i.mq, align 8, !tbaa !105
  %i.nf = add nsw i32 %i.nb, %i.mu                ; 2 uses
  store i32 %i.nf, ptr %i.mt, align 4, !tbaa !143
  %i.ng = sext i32 %i.nf to i64
  %i.nh = shl nsw i64 %i.ng, 2
  %i.ni = call ptr @realloc(ptr noundef %i.ne, i64 noundef %i.nh) #34 ; 2 uses
  store ptr %i.ni, ptr %i.mq, align 8, !tbaa !105
  %i.nj = icmp eq ptr %i.ni, null
  br i1 %i.nj, label %bb.bb, label %_ZN6Gluco23vecIjE8capacityEi.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.nk = tail call ptr @__errno_location() #30
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !67
  %i.nm = icmp eq i32 %i.nl, 12
  br i1 %i.nm, label %bb.bc, label %_ZN6Gluco23vecIjE8capacityEi.exit.i

bb.bc:                                            ; preds = %bb.bb, %bb.az
  call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

_ZN6Gluco23vecIjE8capacityEi.exit.i:              ; preds = %bb.bb, %bb.ba, %bb.ay
  %i.nn = load i32, ptr %i.mr, align 8, !tbaa !123 ; 2 uses
  %i.no = icmp slt i32 %i.nn, %i.mp
  br i1 %i.no, label %.lr.ph.i48, label %._crit_edge.i47

.lr.ph.i48:                                       ; preds = %_ZN6Gluco23vecIjE8capacityEi.exit.i
  %i.np = load ptr, ptr %i.mq, align 8, !tbaa !105
  %i.nq = sext i32 %i.nn to i64                   ; 2 uses
  %wide.trip.count.i49 = sext i32 %i.mp to i64
  %i.nr = shl nsw i64 %i.nq, 2
  %scevgep75 = getelementptr i8, ptr %i.np, i64 %i.nr
  %i.ns = sub nsw i64 %wide.trip.count.i49, %i.nq
  %i.nt = shl nsw i64 %i.ns, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep75, i8 0, i64 %i.nt, i1 false), !tbaa !67
  br label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %.lr.ph.i48, %_ZN6Gluco23vecIjE8capacityEi.exit.i
  store i32 %i.mp, ptr %i.mr, align 8, !tbaa !123
  br label %_ZN6Gluco23vecIjE6growToEiRKj.exit

_ZN6Gluco23vecIjE6growToEiRKj.exit:               ; preds = %_ZN6Gluco23vecINS_6Solver8NodeDataEE6growToEiRKS2_.exit, %._crit_edge.i47
  %i.nu = zext i1 %2 to i8
  %i.nv = load ptr, ptr %i.ez, align 8, !tbaa !126
  %i.nw = sext i32 %i.c to i64
  %i.nx = getelementptr inbounds i8, ptr %i.nv, i64 %i.nw ; 2 uses
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !114
  %.not.i54 = icmp eq i8 %i.ny, 0                 ; 2 uses
  br i1 %2, label %bb.bd, label %.critedge.i

bb.bd:                                            ; preds = %_ZN6Gluco23vecIjE6growToEiRKj.exit
  br i1 %.not.i54, label %.sink.split.i, label %_ZN6Gluco26Solver14setDecisionVarEibb.exit

.critedge.i:                                      ; preds = %_ZN6Gluco23vecIjE6growToEiRKj.exit
  br i1 %.not.i54, label %_ZN6Gluco26Solver14setDecisionVarEibb.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %.critedge.i, %bb.bd
  %.sink11.i = phi i64 [ 1, %bb.bd ], [ -1, %.critedge.i ]
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !147
  %i.ob = add nsw i64 %i.oa, %.sink11.i
  store i64 %i.ob, ptr %i.nz, align 8, !tbaa !147
  br label %_ZN6Gluco26Solver14setDecisionVarEibb.exit

_ZN6Gluco26Solver14setDecisionVarEibb.exit:       ; preds = %bb.bd, %.critedge.i, %.sink.split.i
  store i8 %i.nu, ptr %i.nx, align 1, !tbaa !114
  br label %_ZN6Gluco26Solver14setDecisionVarEibb.exit60

bb.be:                                            ; preds = %_ZN6Gluco23vecINS_3LitEE8capacityEi.exit
  %i.oc = zext i1 %2 to i8
  %i.od = load ptr, ptr %i.ez, align 8, !tbaa !126
  %i.oe = sext i32 %i.c to i64                    ; 3 uses
  %i.of = getelementptr inbounds i8, ptr %i.od, i64 %i.oe ; 2 uses
  %i.og = load i8, ptr %i.of, align 1, !tbaa !114
  %.not.i55 = icmp eq i8 %i.og, 0                 ; 2 uses
  br i1 %2, label %bb.bf, label %.critedge.i56

bb.bf:                                            ; preds = %bb.be
  br i1 %.not.i55, label %.sink.split.i57, label %bb.bg

.critedge.i56:                                    ; preds = %bb.be
  br i1 %.not.i55, label %bb.bg, label %.sink.split.i57

.sink.split.i57:                                  ; preds = %.critedge.i56, %bb.bf
  %.sink11.i58 = phi i64 [ 1, %bb.bf ], [ -1, %.critedge.i56 ]
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !147
  %i.oj = add nsw i64 %i.oi, %.sink11.i58
  store i64 %i.oj, ptr %i.oh, align 8, !tbaa !147
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split.i57, %.critedge.i56, %bb.bf
  store i8 %i.oc, ptr %i.of, align 1, !tbaa !114
  %i.ok = load i32, ptr %i.gr, align 8
  %.not.i.i59 = icmp eq i32 %i.ok, 0
  br i1 %.not.i.i59, label %bb.bh, label %_ZN6Gluco26Solver14setDecisionVarEibb.exit60

bb.bh:                                            ; preds = %bb.bg
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.on = load i32, ptr %i.om, align 8, !tbaa !120
  %i.oo = icmp slt i32 %i.c, %i.on
  br i1 %i.oo, label %_ZNK6Gluco24HeapINS_6Solver10VarOrderLtEE6inHeapEi.exit.i.i, label %_ZNK6Gluco24HeapINS_6Solver10VarOrderLtEE6inHeapEi.exit.thread.i.i

_ZNK6Gluco24HeapINS_6Solver10VarOrderLtEE6inHeapEi.exit.i.i: ; preds = %bb.bh
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !119
  %i.or = getelementptr inbounds [4 x i8], ptr %i.oq, i64 %i.oe
  %i.os = load i32, ptr %i.or, align 4, !tbaa !67
  %i.ot = icmp sgt i32 %i.os, -1
  br i1 %i.ot, label %_ZN6Gluco26Solver14setDecisionVarEibb.exit60, label %_ZNK6Gluco24HeapINS_6Solver10VarOrderLtEE6inHeapEi.exit.thread.i.i

_ZNK6Gluco24HeapINS_6Solver10VarOrderLtEE6inHeapEi.exit.thread.i.i: ; preds = %_ZNK6Gluco24HeapINS_6Solver10VarOrderLtEE6inHeapEi.exit.i.i, %bb.bh
  %i.ou = load ptr, ptr %i.ez, align 8, !tbaa !126
  %i.ov = getelementptr inbounds i8, ptr %i.ou, i64 %i.oe
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !114
  %.not3.i.i = icmp eq i8 %i.ow, 0
  br i1 %.not3.i.i, label %_ZN6Gluco26Solver14setDecisionVarEibb.exit60, label %bb.bi

bb.bi:                                            ; preds = %_ZNK6Gluco24HeapINS_6Solver10VarOrderLtEE6inHeapEi.exit.thread.i.i
  call void @_ZN6Gluco24HeapINS_6Solver10VarOrderLtEE6insertEi(ptr noundef nonnull align 8 dereferenceable(40) %i.ol, i32 noundef %i.c)
  br label %_ZN6Gluco26Solver14setDecisionVarEibb.exit60

_ZN6Gluco26Solver14setDecisionVarEibb.exit60:     ; preds = %bb.bi, %_ZNK6Gluco24HeapINS_6Solver10VarOrderLtEE6inHeapEi.exit.thread.i.i, %_ZNK6Gluco24HeapINS_6Solver10VarOrderLtEE6inHeapEi.exit.i.i, %bb.bg, %_ZN6Gluco26Solver14setDecisionVarEibb.exit
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Gluco28OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE4initERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.sroa.01.0.copyload = load i32, ptr %1, align 4, !tbaa !67
  %i.a = add nsw i32 %.sroa.01.0.copyload, 1
  tail call void @_ZN6Gluco23vecINS0_INS_6Solver7WatcherEEEE6growToEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %.sroa.0.0.copyload = load i32, ptr %1, align 4, !tbaa !67 ; 5 uses
  %i.c = add nsw i32 %.sroa.0.0.copyload, 1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !127
  %.not.i.not = icmp sgt i32 %i.e, %.sroa.0.0.copyload
  br i1 %.not.i.not, label %_ZN6Gluco23vecIcE6growToEiRKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !142  ; 5 uses
  %.not.i.i.not = icmp sgt i32 %i.g, %.sroa.0.0.copyload
  br i1 %.not.i.i.not, label %_ZN6Gluco23vecIcE8capacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i32 %.sroa.0.0.copyload, 2
  %i.i = sub i32 %i.h, %i.g
  %i.j = and i32 %i.i, -2
  %i.k = ashr i32 %i.g, 1
  %i.l = and i32 %i.k, -2
  %i.m = add nsw i32 %i.l, 2
  %i.n = tail call noundef i32 @llvm.smax.i32(i32 %i.m, i32 %i.j) ; 2 uses
  %i.o = sub nsw i32 2147483647, %i.g
  %i.p = icmp samesign ugt i32 %i.n, %i.o
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !126
  %i.r = add nsw i32 %i.n, %i.g                   ; 2 uses
  store i32 %i.r, ptr %i.f, align 4, !tbaa !142
  %i.s = sext i32 %i.r to i64
  %i.t = tail call ptr @realloc(ptr noundef %i.q, i64 noundef %i.s) #34 ; 2 uses
  store ptr %i.t, ptr %i.b, align 8, !tbaa !126
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %_ZN6Gluco23vecIcE8capacityEi.exit.i

bb.e:                                             ; preds = %bb.d
  %i.v = tail call ptr @__errno_location() #30
  %i.w = load i32, ptr %i.v, align 4, !tbaa !67
  %i.x = icmp eq i32 %i.w, 12
  br i1 %i.x, label %bb.f, label %_ZN6Gluco23vecIcE8capacityEi.exit.i

bb.f:                                             ; preds = %bb.e, %bb.c
  tail call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

_ZN6Gluco23vecIcE8capacityEi.exit.i:              ; preds = %bb.e, %bb.d, %bb.b
  %i.y = load i32, ptr %i.d, align 8, !tbaa !127  ; 2 uses
  %.not = icmp sgt i32 %i.y, %.sroa.0.0.copyload
  br i1 %.not, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN6Gluco23vecIcE8capacityEi.exit.i
  %i.z = sext i32 %i.y to i64                     ; 4 uses
  %wide.trip.count.i = sext i32 %i.c to i64       ; 3 uses
  %i.aa = sub nsw i64 %wide.trip.count.i, %i.z
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.z, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !126
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %indvars.iv.i.prol
  store i8 0, ptr %i.ac, align 1, !tbaa !114
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !233

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.z, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ad = sub nsw i64 %i.z, %wide.trip.count.i
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %_ZN6Gluco23vecIcE8capacityEi.exit.i
  store i32 %i.c, ptr %i.d, align 8, !tbaa !127
  br label %_ZN6Gluco23vecIcE6growToEiRKc.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !126
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %indvars.iv.i
  store i8 0, ptr %i.ag, align 1, !tbaa !114
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !126
  %i.ai = getelementptr i8, ptr %i.ah, i64 %indvars.iv.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 1
  store i8 0, ptr %i.aj, align 1, !tbaa !114
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !126
  %i.al = getelementptr i8, ptr %i.ak, i64 %indvars.iv.i
  %i.am = getelementptr i8, ptr %i.al, i64 2
  store i8 0, ptr %i.am, align 1, !tbaa !114
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !126
  %i.ao = getelementptr i8, ptr %i.an, i64 %indvars.iv.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 3
  store i8 0, ptr %i.ap, align 1, !tbaa !114
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !234

_ZN6Gluco23vecIcE6growToEiRKc.exit:               ; preds = %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN6Gluco26Solver10addClause_ERNS_3vecINS_3LitEEE(ptr noundef nonnull align 8 dereferenceable(1416) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 452 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !89, !range !82, !noundef !83
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6Gluco23vecINS_3LitEE5clearEb.exit, label %_ZN6Gluco23vecINS_3LitEED2Ev.exit

_ZN6Gluco23vecINS_3LitEE5clearEb.exit:            ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !117
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !118
  tail call void @_ZN6Gluco24sortINS_3LitENS_16LessThan_defaultIS1_EEEEvPT_iT0_(ptr noundef %i.d, i32 noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !87, !range !82, !noundef !83
  %i.i = trunc nuw i8 %i.h to i1
  %.pre157 = load i32, ptr %i.e, align 8, !tbaa !118 ; 3 uses
  br i1 %i.i, label %.preheader107, label %.loopexit

.preheader107:                                    ; preds = %_ZN6Gluco23vecINS_3LitEE5clearEb.exit
  %i.j = icmp sgt i32 %.pre157, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader107
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.pre = load ptr, ptr %1, align 8, !tbaa !117
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit
  %i.l = phi ptr [ %.pre, %.lr.ph ], [ %i.aa, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit ] ; 6 uses
  %.076122 = phi i32 [ 0, %.lr.ph ], [ %.177, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit ]
  %.sroa.094.0121 = phi ptr [ null, %.lr.ph ], [ %.sroa.094.2, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit ] ; 2 uses
  %.sroa.16.0119 = phi i32 [ 0, %.lr.ph ], [ %.sroa.16.1, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = zext i32 %.sroa.16.0119 to i64
  %i.o = icmp eq i64 %indvars.iv, %i.n
  br i1 %i.o, label %bb.c, label %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.p = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  %i.q = lshr i32 %i.p, 1
  %i.r = and i32 %i.q, 1073741822
  %i.s = add nuw nsw i32 %i.r, 2                  ; 2 uses
  %i.t = xor i32 %i.p, 2147483647
  %i.u = icmp samesign ugt i32 %i.s, %i.t
  br i1 %i.u, label %.loopexit108, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i32 %i.s, %i.p               ; 2 uses
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = tail call ptr @realloc(ptr noundef %.sroa.094.0121, i64 noundef %i.x) #34 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Gluco26Solver11pickJustLitERi:bb.a
  br label %_ZNK6Gluco26Solver13gateJustFaninEi.exit

bb.s:                                             ; preds = %bb.q
  %i.dx = load ptr, ptr %i.aa, align 8, !tbaa !139 ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.dc
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.dj
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !64
  %i.ec = fcmp olt double %i.dz, %i.eb
  %.sroa.02.0.copyload.i.v.i = select i1 %i.ec, i32 %.sroa.0.0.copyload.i24.i, i32 %.sroa.0.0.copyload.i.i20
  %.sroa.02.0.copyload.i.i = xor i32 %.sroa.02.0.copyload.i.v.i, 1
  br label %_ZNK6Gluco26Solver13gateJustFaninEi.exit

bb.t:                                             ; preds = %bb.m
  %i.ed = and i8 %i.df, 2
  %.not.i.i21 = icmp eq i8 %i.ed, 0
  %i.ee = and i8 %i.dm, 2
  %.not.i29.i = icmp eq i8 %i.ee, 0
  %or.cond44.i = select i1 %.not.i.i21, i1 %.not.i29.i, i1 false
  br i1 %or.cond44.i, label %_ZNK6Gluco26Solver13gateJustFaninEi.exit.thread.thread, label %.critedge.i

.critedge.i:                                      ; preds = %bb.t
  %i.ef = load ptr, ptr %i.z, align 8, !tbaa !126 ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 %i.dc
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !114
  %i.ei = icmp eq i8 %i.eh, 1
  %i.ej = and i32 %.sroa.0.0.copyload.i.i20, -2
  %i.ek = zext i1 %i.ei to i32
  %i.el = or disjoint i32 %i.ej, %i.ek
  %i.em = getelementptr inbounds i8, ptr %i.ef, i64 %i.dj
  %i.en = load i8, ptr %i.em, align 1, !tbaa !114
  %i.eo = icmp eq i8 %i.en, 1
  %i.ep = and i32 %.sroa.0.0.copyload.i24.i, -2
  %i.eq = zext i1 %i.eo to i32
  %i.er = or disjoint i32 %i.ep, %i.eq
  %i.es = load ptr, ptr %i.aa, align 8, !tbaa !139 ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.dc
  %i.eu = load double, ptr %i.et, align 8, !tbaa !64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.dj
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !64
  %i.ex = fcmp olt double %i.eu, %i.ew
  %.sroa.02.0.copyload.i32.i = select i1 %i.ex, i32 %i.er, i32 %i.el
  br label %_ZNK6Gluco26Solver13gateJustFaninEi.exit

_ZNK6Gluco26Solver13gateJustFaninEi.exit:         ; preds = %bb.p, %bb.r, %bb.s, %.critedge.i
  %.sroa.022.0.i = phi i32 [ %.sroa.02.0.copyload.i32.i, %.critedge.i ], [ %i.du, %bb.p ], [ %i.dw, %bb.r ], [ %.sroa.02.0.copyload.i.i, %bb.s ] ; 2 uses
  %.not33 = icmp eq i32 %.sroa.022.0.i, -2
  br i1 %.not33, label %_ZNK6Gluco26Solver13gateJustFaninEi.exit._ZNK6Gluco26Solver13gateJustFaninEi.exit.thread_crit_edge, label %_ZNK6Gluco26Solver13gateJustFaninEi.exit._crit_edge

_ZNK6Gluco26Solver13gateJustFaninEi.exit._ZNK6Gluco26Solver13gateJustFaninEi.exit.thread_crit_edge: ; preds = %_ZNK6Gluco26Solver13gateJustFaninEi.exit
  %.pre38 = xor i8 %i.df, %i.dg
  %.pre40 = xor i8 %i.dn, %i.dm
  br label %_ZNK6Gluco26Solver13gateJustFaninEi.exit.thread

_ZNK6Gluco26Solver13gateJustFaninEi.exit.thread:  ; preds = %_ZNK6Gluco26Solver13gateJustFaninEi.exit._ZNK6Gluco26Solver13gateJustFaninEi.exit.thread_crit_edge, %bb.n
  %.pre-phi41 = phi i8 [ %.pre40, %_ZNK6Gluco26Solver13gateJustFaninEi.exit._ZNK6Gluco26Solver13gateJustFaninEi.exit.thread_crit_edge ], [ %i.dp, %bb.n ]
  %.pre-phi39 = phi i8 [ %.pre38, %_ZNK6Gluco26Solver13gateJustFaninEi.exit._ZNK6Gluco26Solver13gateJustFaninEi.exit.thread_crit_edge ], [ %i.dq, %bb.n ]
  %i.ey = icmp ne i8 %.pre-phi39, 1               ; 2 uses
  %i.ez = icmp ne i8 %.pre-phi41, 1
  %or.cond.not28.i = select i1 %i.ey, i1 true, i1 %i.ez
  %or.cond26.i = and i1 %i.do, %or.cond.not28.i
  br i1 %or.cond26.i, label %bb.u, label %_ZNK6Gluco26Solver13gateJustFaninEi.exit.thread.thread

_ZNK6Gluco26Solver13gateJustFaninEi.exit.thread.thread: ; preds = %bb.t, %_ZNK6Gluco26Solver13gateJustFaninEi.exit.thread
  %i.fa = load ptr, ptr %i.ab, align 8, !tbaa !128 ; 3 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.dc
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !166
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.dj
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !166
  %i.fh = icmp slt i32 %i.fd, %i.fg
  %i.fi = select i1 %i.fh, i32 %i.da, i32 %i.di
  br label %_ZN6Gluco26Solver13gateAddJwatchEii.exit

bb.u:                                             ; preds = %_ZNK6Gluco26Solver13gateJustFaninEi.exit.thread
  %i.fj = and i8 %i.df, 2
  %.not29.i = icmp ne i8 %i.fj, 0
  %.not.i23 = or i1 %i.ey, %.not29.i
  %i.fk = select i1 %.not.i23, i32 %i.di, i32 %i.da
  %i.fl = load ptr, ptr %i.ab, align 8, !tbaa !128
  br label %_ZN6Gluco26Solver13gateAddJwatchEii.exit

_ZN6Gluco26Solver13gateAddJwatchEii.exit:         ; preds = %_ZNK6Gluco26Solver13gateJustFaninEi.exit.thread.thread, %bb.u
  %.sink60 = phi i32 [ %i.fi, %_ZNK6Gluco26Solver13gateJustFaninEi.exit.thread.thread ], [ %i.fk, %bb.u ]
  %.sink = phi ptr [ %i.fa, %_ZNK6Gluco26Solver13gateJustFaninEi.exit.thread.thread ], [ %i.fl, %bb.u ]
  %i.fm = sext i32 %.sink60 to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %.sink, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !166
  %i.fq = load ptr, ptr %i.ac, align 8, !tbaa !119 ; 2 uses
  %i.fr = sext i32 %i.fp to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !67
  %i.fu = load ptr, ptr %i.ad, align 8, !tbaa !119
  %i.fv = sext i32 %.sroa.5.0.copyload.i to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.fv
  store i32 %i.ft, ptr %i.fw, align 4, !tbaa !67
  %.sink.i = load i32, ptr %i.fo, align 4, !tbaa !166
  %i.fx = sext i32 %.sink.i to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fx
  store i32 %.sroa.5.0.copyload.i, ptr %i.fy, align 4, !tbaa !67
  br label %.backedge

.backedge:                                        ; preds = %_ZN6Gluco26Solver13gateAddJwatchEii.exit, %_ZN6Gluco25Heap2INS_6Solver12JustOrderLt2ENS1_7JustKeyEE9removeMinERi.exit
  %i.fz = load i32, ptr %i.s, align 8, !tbaa !122 ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %_ZNK6Gluco26Solver13gateJustFaninEi.exit._crit_edge, label %bb.k, !llvm.loop !318

_ZNK6Gluco26Solver13gateJustFaninEi.exit._crit_edge: ; preds = %.backedge, %_ZNK6Gluco26Solver13gateJustFaninEi.exit, %.preheader
  %.sroa.014.1 = phi i32 [ -2, %.preheader ], [ %.sroa.022.0.i, %_ZNK6Gluco26Solver13gateJustFaninEi.exit ], [ -2, %.backedge ]
  ret i32 %.sroa.014.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN6Gluco26Solver21printIncrementalStatsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1416) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load i64, ptr %i.a, align 8, !tbaa !179
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i64 noundef %i.b) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = load i64, ptr %i.d, align 8, !tbaa !175
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i64 noundef %i.e) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.h = load i64, ptr %i.g, align 8, !tbaa !176
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i64 noundef %i.h) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.k = load i64, ptr %i.j, align 8, !tbaa !184
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i64 noundef %i.k) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = load i64, ptr %i.m, align 8, !tbaa !187
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, i64 noundef %i.n) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.q = load i64, ptr %i.p, align 8, !tbaa !186
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i64 noundef %i.q) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.t = load i64, ptr %i.s, align 8, !tbaa !182
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i64 noundef %i.t) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.w = load i64, ptr %i.v, align 8, !tbaa !190
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i64 noundef %i.w) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.z = load i64, ptr %i.y, align 8, !tbaa !160
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, i64 noundef %i.z) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !191
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !319
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %i.ac, double noundef %i.ae) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1180
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !192
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !320
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, i32 noundef %i.ah, double noundef %i.aj) ; 0 uses
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i8 0, 3) i8 @_ZN6Gluco26Solver6solve_Ev(ptr noundef nonnull align 8 dereferenceable(1416) initializes((1300, 1304)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %struct.rusage, align 8             ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.rusage, align 8             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1300
  store i32 0, ptr %i.a, align 4, !tbaa !110
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !122
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i, label %_ZN6Gluco26Solver13ResetJustDataEb.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !121
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !119
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !169
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.l
  store i32 -1, ptr %i.m, align 4, !tbaa !67
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.n = load i32, ptr %i.b, align 8, !tbaa !122
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next.i.i, %i.o
  br i1 %i.p, label %bb.b, label %_ZN6Gluco26Solver13ResetJustDataEb.exit, !llvm.loop !10

_ZN6Gluco26Solver13ResetJustDataEb.exit:          ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.b, align 8, !tbaa !122
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1148 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !98
  %.not = icmp ne i32 %i.r, 0
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %5 = load i8, ptr %4, align 8, !range !82
  %6 = trunc nuw i8 %5 to i1
  %or.cond = select i1 %.not, i1 %6, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6Gluco26Solver13ResetJustDataEb.exit
  %puts55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  tail call void @exit(i32 noundef -1) #35
  unreachable

bb.d:                                             ; preds = %_ZN6Gluco26Solver13ResetJustDataEb.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i32 0, ptr %i.s, align 8, !tbaa !118
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 452 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4, !tbaa !89, !range !82, !noundef !83
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.e, label %.thread87

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.w = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %3) #32 ; 0 uses
  %i.x = load i64, ptr %3, align 8, !tbaa !330
  %i.y = sitofp i64 %i.x to double
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !331
  %i.ab = sitofp i64 %i.aa to double
  %i.ac = fdiv double %i.ab, 1.000000e+06
  %i.ad = fadd double %i.ac, %i.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !332
  %i.ag = add nsw i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !332
  %i.ah = load i32, ptr %i.q, align 4, !tbaa !98
  %.not35 = icmp eq i32 %i.ah, 0
  br i1 %.not35, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !183
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts36 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts37 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts38 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts39 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %puts40 = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.am = load i32, ptr %i.al, align 8, !tbaa !102
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !108
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !74
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.89, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.aq) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.at = load i32, ptr %i.as, align 8, !tbaa !102
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.av = load i32, ptr %i.au, align 4, !tbaa !71
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !75
  %i.ay = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef %i.at, i32 noundef %i.av, i32 noundef %i.ax) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ba = load double, ptr %i.az, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !72
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.91, double noundef %i.ba, i32 noundef %i.bc) ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bf = load double, ptr %i.be, align 8, !tbaa !66
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !73
  %i.bi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.92, double noundef %i.bf, i32 noundef %i.bh) ; 0 uses
  %puts41 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !63
  %i.bl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.93, i32 noundef %i.bk) ; 0 uses
  %puts42 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %puts43 = call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %puts44 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %puts45 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = call i8 @_ZN6Gluco26Solver6searchEi(ptr noundef nonnull align 8 dereferenceable(1416) %0, i32 poison) ; 2 uses
  %i.bw = load i8, ptr %i.bn, align 8, !tbaa !97, !range !82, !noundef !83
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZNK6Gluco26Solver12withinBudgetEv.exit.thread, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.h, %.backedge
  %i.by = phi i8 [ %i.cv, %.backedge ], [ %i.bv, %bb.h ] ; 8 uses
  %i.bz = load i64, ptr %i.bo, align 8, !tbaa !180 ; 2 uses
  %i.ca = icmp slt i64 %i.bz, 0
  %i.cb = load i64, ptr %i.bp, align 8
  %i.cc = icmp ult i64 %i.cb, %i.bz
  %or.cond.i = select i1 %i.ca, i1 true, i1 %i.cc
  br i1 %or.cond.i, label %bb.i, label %_ZNK6Gluco26Solver12withinBudgetEv.exit.thread

bb.i:                                             ; preds = %.lr.ph138
  %i.cd = load i64, ptr %i.bq, align 8, !tbaa !181 ; 2 uses
  %i.ce = icmp slt i64 %i.cd, 0
  br i1 %i.ce, label %_ZNK6Gluco26Solver12withinBudgetEv.exit.thread85, label %_ZNK6Gluco26Solver12withinBudgetEv.exit

_ZNK6Gluco26Solver12withinBudgetEv.exit:          ; preds = %bb.i
  %i.cf = load i64, ptr %i.bm, align 8, !tbaa !160
  %i.cg = icmp ult i64 %i.cf, %i.cd
  br i1 %i.cg, label %_ZNK6Gluco26Solver12withinBudgetEv.exit.thread85, label %_ZNK6Gluco26Solver12withinBudgetEv.exit.thread

_ZNK6Gluco26Solver12withinBudgetEv.exit.thread85: ; preds = %bb.i, %_ZNK6Gluco26Solver12withinBudgetEv.exit
  %i.ch = load i8, ptr %i.br, align 4, !tbaa !62, !range !82, !noundef !83
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %_ZNK6Gluco26Solver12withinBudgetEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK6Gluco26Solver12withinBudgetEv.exit.thread85
  %i.cj = load ptr, ptr %i.bs, align 8, !tbaa !188 ; 2 uses
  %.not46 = icmp eq ptr %i.cj, null
  br i1 %.not46, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !67
  %.not47 = icmp eq i32 %i.ck, 0
  br i1 %.not47, label %bb.l, label %_ZNK6Gluco26Solver12withinBudgetEv.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cl = load i64, ptr %i.bt, align 8, !tbaa !333
  %.not48 = icmp eq i64 %i.cl, 0
  br i1 %.not48, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.cm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #32
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %_ZL9Abc_Clockv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = load i64, ptr %2, align 8, !tbaa !335
  %i.cp = mul nsw i64 %i.co, 1000000
  %i.cq = load i64, ptr %i.bu, align 8, !tbaa !336
  %i.cr = sdiv i64 %i.cq, 1000
  %i.cs = add nsw i64 %i.cr, %i.cp
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.m, %bb.n
  %.0.i = phi i64 [ %i.cs, %bb.n ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.ct = load i64, ptr %i.bt, align 8, !tbaa !333
  %i.cu = icmp ugt i64 %.0.i, %i.ct
  %.not88 = icmp samesign ult i8 %i.by, 2
  %or.cond.a = select i1 %i.cu, i1 true, i1 %.not88
  br i1 %or.cond.a, label %_ZNK6Gluco26Solver12withinBudgetEv.exit.thread, label %.backedge

bb.o:                                             ; preds = %bb.l
  %.not88.old = icmp samesign ult i8 %i.by, 2
  br i1 %.not88.old, label %_ZNK6Gluco26Solver12withinBudgetEv.exit.thread, label %.backedge

.backedge:                                        ; preds = %bb.o, %_ZL9Abc_Clockv.exit
  %i.cv = call i8 @_ZN6Gluco26Solver6searchEi(ptr noundef nonnull align 8 dereferenceable(1416) %0, i32 poison) ; 2 uses
  %i.cw = load i8, ptr %i.bn, align 8, !tbaa !97, !range !82, !noundef !83
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_ZNK6Gluco26Solver12withinBudgetEv.exit.thread, label %.lr.ph138, !llvm.loop !321

_ZNK6Gluco26Solver12withinBudgetEv.exit.thread:   ; preds = %bb.o, %bb.k, %_ZNK6Gluco26Solver12withinBudgetEv.exit.thread85, %_ZNK6Gluco26Solver12withinBudgetEv.exit, %_ZL9Abc_Clockv.exit, %.lr.ph138, %.backedge, %bb.h
  %.lcssa = phi i8 [ %i.bv, %bb.h ], [ %i.by, %bb.o ], [ %i.by, %bb.k ], [ %i.by, %_ZNK6Gluco26Solver12withinBudgetEv.exit.thread85 ], [ %i.by, %_ZNK6Gluco26Solver12withinBudgetEv.exit ], [ %i.by, %_ZL9Abc_Clockv.exit ], [ %i.by, %.lr.ph138 ], [ %i.cv, %.backedge ] ; 7 uses
  %i.cy = load i32, ptr %i.q, align 4, !tbaa !98
  %.not49 = icmp eq i32 %i.cy, 0
  br i1 %.not49, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZNK6Gluco26Solver12withinBudgetEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !183
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %puts50 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZNK6Gluco26Solver12withinBudgetEv.exit.thread
  %i.dc = load i8, ptr %4, align 8, !tbaa !87, !range !82, !noundef !83
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.de = icmp eq i8 %.lcssa, 1
  br i1 %i.de, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !86
  %fwrite = call i64 @fwrite(ptr nonnull @.str.66, i64 2, i64 1, ptr %i.dg) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !86
  %i.dj = call i32 @fclose(ptr noundef %i.di)     ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.dk = icmp eq i8 %.lcssa, 0                   ; 3 uses
  br i1 %i.dk, label %bb.w, label %bb.as

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !111
  %.not51 = icmp eq i32 %i.dm, 0
  br i1 %.not51, label %bb.al, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !116
  %.not52 = icmp eq i32 %i.do, 0
  br i1 %.not52, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 4 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !112
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dp, align 8, !tbaa !112
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 4 uses
  store i32 0, ptr %i.dt, align 8, !tbaa !118
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 3 uses
  store i32 0, ptr %i.dv, align 8, !tbaa !120
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1412 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !144
  %i.dy = icmp eq i32 %i.dx, 0
  %i.dz = load ptr, ptr %i.ds, align 8, !tbaa !117 ; 2 uses
  br i1 %i.dy, label %bb.z, label %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit.i

bb.z:                                             ; preds = %bb.y
  store i32 2, ptr %i.dw, align 4, !tbaa !144
  %i.ea = call dereferenceable_or_null(8) ptr @realloc(ptr noundef %i.dz, i64 noundef 8) #34 ; 3 uses
  store ptr %i.ea, ptr %i.ds, align 8, !tbaa !117
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.aa, label %._ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit_crit_edge.i

._ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit_crit_edge.i: ; preds = %bb.z
  %.pre.i = load i32, ptr %i.dt, align 8, !tbaa !118
  br label %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit.i

bb.aa:                                            ; preds = %bb.z
  call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit.i:       ; preds = %._ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit_crit_edge.i, %bb.y
  %i.ec = phi i32 [ %.pre.i, %._ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit_crit_edge.i ], [ 0, %bb.y ] ; 2 uses
  %i.ed = phi ptr [ %i.ea, %._ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit_crit_edge.i ], [ %i.dz, %bb.y ] ; 2 uses
  %i.ee = add nsw i32 %i.ec, 1
  store i32 %i.ee, ptr %i.dt, align 8, !tbaa !118
  %i.ef = sext i32 %i.ec to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ef
  store i32 0, ptr %i.eg, align 4, !tbaa !67
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !118
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit.i
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 760
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ab ] ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !117
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.i
  %.sroa.01.0.copyload.i = load i32, ptr %i.em, align 4, !tbaa !67
  %i.en = ashr i32 %.sroa.01.0.copyload.i, 1
  call void @_ZN6Gluco26Solver12loadJust_recEi(ptr noundef nonnull align 8 dereferenceable(1416) %0, i32 noundef %i.en)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eo = load i32, ptr %i.eh, align 8, !tbaa !118
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next.i, %i.ep
  br i1 %i.eq, label %bb.ab, label %._crit_edge.loopexit.i, !llvm.loop !322

._crit_edge.loopexit.i:                           ; preds = %bb.ab
  %.pre16.i = load ptr, ptr %i.ds, align 8, !tbaa !117
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit.i
  %i.er = phi ptr [ %.pre16.i, %._crit_edge.loopexit.i ], [ %i.ed, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit.i ]
  %i.es = load i32, ptr %i.dt, align 8, !tbaa !118
  %i.et = add nsw i32 %i.es, -1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !67
  %i.eu = load i32, ptr %i.dp, align 8, !tbaa !112
  %i.ev = add i32 %i.eu, -1                       ; 2 uses
  store i32 %i.ev, ptr %i.dp, align 8, !tbaa !112
  %i.ew = load i32, ptr %i.dv, align 8, !tbaa !120
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph10.i, label %_ZN6Gluco26Solver8loadJustEv.exit

.lr.ph10.i:                                       ; preds = %._crit_edge.i
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.ez = load ptr, ptr %i.du, align 8, !tbaa !119
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !105
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph10.i
  %indvars.iv13.i = phi i64 [ 0, %.lr.ph10.i ], [ %indvars.iv.next14.i, %bb.ac ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv13.i
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !67
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fd
  store i32 %i.ev, ptr %i.fe, align 4, !tbaa !67
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1 ; 2 uses
  %i.ff = load i32, ptr %i.dv, align 8, !tbaa !120
  %i.fg = sext i32 %i.ff to i64
  %i.fh = icmp slt i64 %indvars.iv.next14.i, %i.fg
  br i1 %i.fh, label %bb.ac, label %_ZN6Gluco26Solver8loadJustEv.exit, !llvm.loop !323

bb.ad:                                            ; preds = %bb.x
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 6 uses
  store i32 0, ptr %i.fj, align 8, !tbaa !118
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1412 ; 4 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !144
  %i.fm = icmp eq i32 %i.fl, 0
  %i.fn = load ptr, ptr %i.fi, align 8, !tbaa !117 ; 2 uses
  br i1 %i.fm, label %bb.ae, label %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit

bb.ae:                                            ; preds = %bb.ad
  store i32 2, ptr %i.fk, align 4, !tbaa !144
  %i.fo = call dereferenceable_or_null(8) ptr @realloc(ptr noundef %i.fn, i64 noundef 8) #34 ; 3 uses
  store ptr %i.fo, ptr %i.fi, align 8, !tbaa !117
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.af, label %._ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit_crit_edge

._ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit_crit_edge: ; preds = %bb.ae
  %.pre = load i32, ptr %i.fj, align 8, !tbaa !118
  br label %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit

bb.af:                                            ; preds = %bb.ae
  call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit:         ; preds = %bb.ad, %._ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit_crit_edge
  %i.fq = phi i32 [ %.pre, %._ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit_crit_edge ], [ 0, %bb.ad ] ; 2 uses
  %i.fr = phi ptr [ %i.fo, %._ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit_crit_edge ], [ %i.fn, %bb.ad ] ; 3 uses
  %i.fs = add nsw i32 %i.fq, 1
  store i32 %i.fs, ptr %i.fj, align 8, !tbaa !118
  %i.ft = sext i32 %i.fq to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ft
  store i32 0, ptr %i.fu, align 4, !tbaa !67
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !118 ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 1224
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.ak
  %i.gc = phi i32 [ %i.fw, %.lr.ph ], [ %i.hk, %bb.ak ] ; 2 uses
  %i.gd = phi ptr [ %i.fr, %.lr.ph ], [ %.pre.i59110, %bb.ak ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ak ] ; 2 uses
  %.03294 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.ak ] ; 3 uses
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !117
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv ; 2 uses
  %.sroa.016.0.copyload = load i32, ptr %i.gf, align 4, !tbaa !67
  %i.gg = ashr i32 %.sroa.016.0.copyload, 1
  %i.gh = load i32, ptr %i.fz, align 8, !tbaa !112
  %i.gi = load ptr, ptr %i.ga, align 8, !tbaa !105
  %i.gj = sext i32 %i.gg to i64                   ; 2 uses
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !67
  %i.gm = icmp eq i32 %i.gh, %i.gl
  br i1 %i.gm, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.gn = load ptr, ptr %i.gb, align 8, !tbaa !124
  %i.go = getelementptr inbounds [12 x i8], ptr %i.gn, i64 %i.gj ; 2 uses
  %.sroa.01.0.copyload.i57 = load i32, ptr %i.go, align 4, !tbaa !67
  %.not.i = icmp eq i32 %.sroa.01.0.copyload.i57, -1
  br i1 %.not.i, label %_ZNK6Gluco26Solver10isTwoFaninEi.exit.thread, label %_ZNK6Gluco26Solver10isTwoFaninEi.exit
end_hunk_1
