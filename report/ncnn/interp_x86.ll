Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86?download=true
inline.NumInlined: 95
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1:bb.a
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._ZN4ncnn3MatD2Ev.exit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN4ncnn3Mat7channelEi.exit, %middle.block
  %.0.i24.ph = phi i32 [ 0, %_ZN4ncnn3Mat7channelEi.exit ], [ %i.an, %middle.block ]
  %.05.i23.ph = phi ptr [ %i.ap, %_ZN4ncnn3Mat7channelEi.exit ], [ %i.as, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0.i24 = phi i32 [ %i.ax, %scalar.ph ], [ %.0.i24.ph, %scalar.ph.preheader ]
  %.05.i23 = phi ptr [ %i.aw, %scalar.ph ], [ %.05.i23.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i23, i64 4
  store float %i.ar, ptr %.05.i23, align 4, !tbaa !61
  %i.ax = add nuw nsw i32 %.0.i24, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %i.ai
  br i1 %exitcond.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge, label %scalar.ph, !llvm.loop !99

._ZN4ncnn3MatD2Ev.exit_crit_edge:                 ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond28.not = icmp eq i32 %i.al, %lftr.wideiv
  br i1 %exitcond28.not, label %._crit_edge.split, label %_ZN4ncnn3Mat7channelEi.exit

._crit_edge.split:                                ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge, %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not55 = icmp sgt i32 %i.k, %i.j
  br i1 %.not55, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %5, align 4, !tbaa !28     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph58.split.preheader, label %._crit_edge59

.lr.ph58.split.preheader:                         ; preds = %.lr.ph58
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph58.split

.lr.ph58.split:                                   ; preds = %.lr.ph58.split.preheader, %._crit_edge54
  %i.t = phi i32 [ %i.p, %.lr.ph58.split.preheader ], [ %i.bi, %._crit_edge54 ] ; 6 uses
  %i.u = phi i32 [ %i.p, %.lr.ph58.split.preheader ], [ %i.bj, %._crit_edge54 ] ; 2 uses
  %indvars.iv76 = phi i64 [ %i.r, %.lr.ph58.split.preheader ], [ %indvars.iv.next77, %._crit_edge54 ] ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = load i32, ptr %i.l, align 4, !tbaa !29
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %indvars.iv76, %i.y
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !32
  %i.ab = mul i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !43
  %i.ae = load i32, ptr %i.n, align 4, !tbaa !29
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %indvars.iv76, %i.af
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !32
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = icmp sgt i32 %i.u, 0
  br i1 %i.ak, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %.lr.ph58.split
  %i.al = load i32, ptr %8, align 4, !tbaa !28    ; 7 uses
  %i.am = icmp sgt i32 %i.al, 3
  br i1 %i.am, label %.lr.ph53.split.preheader, label %.lr.ph53.split.us

.lr.ph53.split.preheader:                         ; preds = %.lr.ph53
  %i.an = add i64 %i.ab, %i.w
  br label %.lr.ph53.split

.lr.ph53.split.us:                                ; preds = %.lr.ph53
  %i.ao = load i32, ptr %7, align 4, !tbaa !28
  %i.ap = add nsw i32 %i.ao, -1
  %i.aq = icmp sgt i32 %i.al, 0
  %i.ar = sext i32 %i.al to i64
  br i1 %i.aq, label %.preheader.us.preheader, label %._crit_edge54

.preheader.us.preheader:                          ; preds = %.lr.ph53.split.us
  %smax = call i32 @llvm.smax.i32(i32 %i.t, i32 1)
  %exitcond.not = icmp eq i32 %i.al, 1
  %exitcond.not.1 = icmp eq i32 %i.al, 2
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.04051.us = phi i32 [ %i.bh, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.04150.us = phi ptr [ %i.bg, %._crit_edge.us ], [ %i.aj, %.preheader.us.preheader ] ; 4 uses
  %i.as = uitofp ninf nsz nneg i32 %.04051.us to float
  %i.at = load float, ptr %6, align 4, !tbaa !61
  %i.au = fmul fast float %i.at, %i.as
  %i.av = fptosi float %i.au to i32
  %.sroa.speculated.us = call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.av)
  %i.aw = mul nsw i32 %.sroa.speculated.us, %i.al
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ax ; 3 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !61
  store float %i.az, ptr %.04150.us, align 4, !tbaa !61
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.preheader.us
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !61
  %i.bc = getelementptr inbounds nuw i8, ptr %.04150.us, i64 4
  store float %i.bb, ptr %i.bc, align 4, !tbaa !61
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !61
  %i.bf = getelementptr inbounds nuw i8, ptr %.04150.us, i64 8
  store float %i.be, ptr %i.bf, align 4, !tbaa !61
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.preheader.us
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.04150.us, i64 %i.ar
  %i.bh = add nuw nsw i32 %.04051.us, 1           ; 2 uses
  %exitcond65.not = icmp eq i32 %i.bh, %smax
  br i1 %exitcond65.not, label %._crit_edge54, label %.preheader.us, !llvm.loop !101

._crit_edge54:                                    ; preds = %._crit_edge.us, %._crit_edge, %.lr.ph53.split.us, %.lr.ph58.split
  %i.bi = phi i32 [ %i.dl, %._crit_edge ], [ %i.t, %.lr.ph58.split ], [ %i.t, %.lr.ph53.split.us ], [ %i.t, %._crit_edge.us ]
  %i.bj = phi i32 [ %i.dl, %._crit_edge ], [ %i.u, %.lr.ph58.split ], [ %i.t, %.lr.ph53.split.us ], [ %i.t, %._crit_edge.us ]
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next77 to i32
  %exitcond79.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond79.not, label %._crit_edge59, label %.lr.ph58.split, !llvm.loop !102

.lr.ph53.split:                                   ; preds = %.lr.ph53.split.preheader, %._crit_edge
  %i.bk = phi i32 [ %i.bw, %._crit_edge ], [ %i.al, %.lr.ph53.split.preheader ] ; 3 uses
  %.04051 = phi i32 [ %i.dk, %._crit_edge ], [ 0, %.lr.ph53.split.preheader ] ; 2 uses
  %.04150 = phi ptr [ %i.dj, %._crit_edge ], [ %i.aj, %.lr.ph53.split.preheader ] ; 9 uses
  %.0415094 = ptrtoaddr ptr %.04150 to i64
  %i.bl = uitofp ninf nsz nneg i32 %.04051 to float
  %i.bm = load float, ptr %6, align 4, !tbaa !61
  %i.bn = fmul fast float %i.bm, %i.bl
  %i.bo = fptosi float %i.bn to i32
  %i.bp = load i32, ptr %7, align 4, !tbaa !28
  %i.bq = add i32 %i.bp, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.bo)
  %i.br = mul i32 %.sroa.speculated, %i.bk
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bs ; 7 uses
  %i.bu = icmp sgt i32 %i.bk, 3
  br i1 %i.bu, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.bv = trunc nuw nsw i64 %indvars.iv.next67 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.lr.ph53.split
  %i.bw = phi i32 [ %i.bk, %.lr.ph53.split ], [ %i.ct, %.preheader.loopexit ] ; 4 uses
  %.039.lcssa = phi i32 [ 0, %.lr.ph53.split ], [ %i.bv, %.preheader.loopexit ] ; 2 uses
  %i.bx = icmp slt i32 %.039.lcssa, %i.bw
  br i1 %i.bx, label %.lr.ph49.preheader, label %._crit_edge

.lr.ph49.preheader:                               ; preds = %.preheader
  %i.by = zext i32 %.039.lcssa to i64             ; 5 uses
  %wide.trip.count74 = zext nneg i32 %i.bw to i64 ; 4 uses
  %i.bz = sub nsw i64 %wide.trip.count74, %i.by   ; 3 uses
  %min.iters.check = icmp ult i64 %i.bz, 8
  br i1 %min.iters.check, label %.lr.ph49.preheader96, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph49.preheader
  %i.ca = shl nsw i64 %i.bs, 2
  %i.cb = add i64 %i.an, %i.ca
  %i.cc = sub i64 %i.cb, %.0415094
  %diff.check = icmp ugt i64 %i.cc, -32
  br i1 %diff.check, label %.lr.ph49.preheader96, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bz, -8                      ; 3 uses
  %i.cd = add nsw i64 %n.vec, %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = add nuw i64 %index, %i.by               ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load = load <4 x float>, ptr %i.cf, align 4, !tbaa !61
  %wide.load95 = load <4 x float>, ptr %i.cg, align 4, !tbaa !61
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.04150, i64 %i.ce ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x float> %wide.load, ptr %i.ch, align 4, !tbaa !61
  store <4 x float> %wide.load95, ptr %i.ci, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph49.preheader96

.lr.ph49.preheader96:                             ; preds = %vector.memcheck, %.lr.ph49.preheader, %middle.block
  %indvars.iv71.ph = phi i64 [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph49.preheader ], [ %i.cd, %middle.block ] ; 4 uses
  %i.ck = sub nsw i64 %wide.trip.count74, %indvars.iv71.ph
  %xtraiter = and i64 %i.ck, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph49.prol.loopexit, label %.lr.ph49.prol

.lr.ph49.prol:                                    ; preds = %.lr.ph49.preheader96, %.lr.ph49.prol
  %indvars.iv71.prol = phi i64 [ %indvars.iv.next72.prol, %.lr.ph49.prol ], [ %indvars.iv71.ph, %.lr.ph49.preheader96 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph49.prol ], [ 0, %.lr.ph49.preheader96 ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv71.prol
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !61
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.04150, i64 %indvars.iv71.prol
  store float %i.cm, ptr %i.cn, align 4, !tbaa !61
  %indvars.iv.next72.prol = add nuw nsw i64 %indvars.iv71.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph49.prol.loopexit, label %.lr.ph49.prol, !llvm.loop !104

.lr.ph49.prol.loopexit:                           ; preds = %.lr.ph49.prol, %.lr.ph49.preheader96
  %indvars.iv71.unr = phi i64 [ %indvars.iv71.ph, %.lr.ph49.preheader96 ], [ %indvars.iv.next72.prol, %.lr.ph49.prol ]
  %i.co = sub nsw i64 %indvars.iv71.ph, %wide.trip.count74
  %i.cp = icmp ugt i64 %i.co, -4
  br i1 %i.cp, label %._crit_edge, label %.lr.ph49

.lr.ph:                                           ; preds = %.lr.ph53.split, %.lr.ph
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %.lr.ph ], [ 0, %.lr.ph53.split ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv66
  %i.cr = load <4 x float>, ptr %i.cq, align 16, !tbaa !20
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.04150, i64 %indvars.iv66
  store <4 x float> %i.cr, ptr %i.cs, align 16, !tbaa !20
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 4 ; 3 uses
  %9 = or disjoint i64 %indvars.iv.next67, 3
  %i.ct = load i32, ptr %8, align 4, !tbaa !28    ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %9, %i.cu
  br i1 %i.cv, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !105

.lr.ph49:                                         ; preds = %.lr.ph49.prol.loopexit, %.lr.ph49
  %indvars.iv71 = phi i64 [ %indvars.iv.next72.3, %.lr.ph49 ], [ %indvars.iv71.unr, %.lr.ph49.prol.loopexit ] ; 6 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv71
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !61
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.04150, i64 %indvars.iv71
  store float %i.cx, ptr %i.cy, align 4, !tbaa !61
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next72
  %i.da = load float, ptr %i.cz, align 4, !tbaa !61
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.04150, i64 %indvars.iv.next72
  store float %i.da, ptr %i.db, align 4, !tbaa !61
  %indvars.iv.next72.1 = add nuw nsw i64 %indvars.iv71, 2 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next72.1
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !61
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.04150, i64 %indvars.iv.next72.1
  store float %i.dd, ptr %i.de, align 4, !tbaa !61
  %indvars.iv.next72.2 = add nuw nsw i64 %indvars.iv71, 3 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next72.2
  %i.dg = load float, ptr %i.df, align 4, !tbaa !61
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.04150, i64 %indvars.iv.next72.2
  store float %i.dg, ptr %i.dh, align 4, !tbaa !61
  %indvars.iv.next72.3 = add nuw nsw i64 %indvars.iv71, 4 ; 2 uses
  %exitcond75.not.3 = icmp eq i64 %indvars.iv.next72.3, %wide.trip.count74
  br i1 %exitcond75.not.3, label %._crit_edge, label %.lr.ph49, !llvm.loop !106

._crit_edge:                                      ; preds = %.lr.ph49.prol.loopexit, %.lr.ph49, %middle.block, %.preheader
  %i.di = sext i32 %i.bw to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %.04150, i64 %i.di
  %i.dk = add nuw nsw i32 %.04051, 1              ; 2 uses
  %i.dl = load i32, ptr %5, align 4, !tbaa !28    ; 3 uses
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph53.split, label %._crit_edge54, !llvm.loop !107

._crit_edge59:                                    ; preds = %._crit_edge54, %.lr.ph58, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge59, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_ZN4ncnnL13linear_coeffsEiiPiPfi(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) unnamed_addr #11 {
bb.a:
  %i.a = sitofp fast i32 %0 to double             ; 2 uses
  %i.b = uitofp nneg i32 %1 to double             ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.split.us.preheader, label %._crit_edge

.thread:                                          ; preds = %bb.a
  %i.d = add nsw i32 %0, -1
  %i.e = sitofp fast i32 %i.d to double           ; 2 uses
  %i.f = add nsw i32 %1, -1
  %i.g = uitofp nneg i32 %i.f to double           ; 2 uses
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.thread
  %i.i = add nsw i32 %0, -1                       ; 2 uses
  %i.j = add nsw i32 %0, -2                       ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat51 = shufflevector <4 x i32> %broadcast.splatinsert50, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <4 x double> poison, double %i.e, i64 0
  %broadcast.splat53 = shufflevector <4 x double> %broadcast.splatinsert52, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert54 = insertelement <4 x double> poison, double %i.g, i64 0
  %broadcast.splat55 = shufflevector <4 x double> %broadcast.splatinsert54, <4 x double> poison, <4 x i32> zeroinitializer
  %i.k = fdiv fast <4 x double> splat (double 1.000000e+00), %broadcast.splat55
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.l = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.m = fmul fast <4 x double> %broadcast.splat53, %i.l
  %i.n = fmul fast <4 x double> %i.m, %i.k
  %i.o = fptrunc <4 x double> %i.n to <4 x float> ; 2 uses
  %i.p = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.o)
  %i.q = fptosi <4 x float> %i.p to <4 x i32>     ; 3 uses
  %i.r = sitofp fast <4 x i32> %i.q to <4 x float>
  %i.s = fsub fast <4 x float> %i.o, %i.r
  %i.t = icmp slt <4 x i32> %i.q, zeroinitializer
  %i.u = select nsz <4 x i1> %i.t, <4 x float> zeroinitializer, <4 x float> %i.s
  %i.v = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.q, <4 x i32> zeroinitializer) ; 2 uses
  %i.w = icmp slt <4 x i32> %i.v, %broadcast.splat ; 2 uses
  %i.x = select nsz <4 x i1> %i.w, <4 x float> %i.u, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.y = select <4 x i1> %i.w, <4 x i32> %i.v, <4 x i32> %broadcast.splat51
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <4 x i32> %i.y, ptr %i.z, align 4, !tbaa !28
  %i.aa = fsub fast <4 x float> splat (float 1.000000e+00), %i.x
  %i.ab = shl nuw nsw i64 %index, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %i.ab
  %interleaved.vec = shufflevector <4 x float> %i.aa, <4 x float> %i.x, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.ac, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader78

.lr.ph.split.preheader78:                         ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  %i.ae = fdiv fast double 1.000000e+00, %i.g
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.b
  %i.af = add nsw i32 %0, -1                      ; 2 uses
  %i.ag = add nsw i32 %0, -2                      ; 2 uses
  %wide.trip.count40 = zext nneg i32 %1 to i64    ; 3 uses
  %min.iters.check57 = icmp ult i32 %1, 4
  br i1 %min.iters.check57, label %.lr.ph.split.us.preheader77, label %vector.ph58

vector.ph58:                                      ; preds = %.lr.ph.split.us.preheader
  %n.vec59 = and i64 %wide.trip.count40, 2147483644 ; 3 uses
  %broadcast.splatinsert60 = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat61 = shufflevector <4 x i32> %broadcast.splatinsert60, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat63 = shufflevector <4 x i32> %broadcast.splatinsert62, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert64 = insertelement <4 x double> poison, double %i.a, i64 0
  %broadcast.splat65 = shufflevector <4 x double> %broadcast.splatinsert64, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert66 = insertelement <4 x double> poison, double %i.b, i64 0
  %broadcast.splat67 = shufflevector <4 x double> %broadcast.splatinsert66, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ah = fdiv fast <4 x double> splat (double 1.000000e+00), %broadcast.splat67
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph58
  %index69 = phi i64 [ 0, %vector.ph58 ], [ %index.next72, %vector.body68 ] ; 3 uses
  %vec.ind70 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph58 ], [ %vec.ind.next73, %vector.body68 ] ; 2 uses
  %i.ai = uitofp nneg <4 x i32> %vec.ind70 to <4 x double>
  %i.aj = fadd fast <4 x double> %i.ai, splat (double 5.000000e-01)
  %i.ak = fmul fast <4 x double> %i.aj, %broadcast.splat65
  %i.al = fmul fast <4 x double> %i.ak, %i.ah
  %i.am = fadd fast <4 x double> %i.al, splat (double -5.000000e-01)
  %i.an = fptrunc <4 x double> %i.am to <4 x float> ; 2 uses
  %i.ao = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.an)
  %i.ap = fptosi <4 x float> %i.ao to <4 x i32>   ; 3 uses
  %i.aq = sitofp fast <4 x i32> %i.ap to <4 x float>
  %i.ar = fsub fast <4 x float> %i.an, %i.aq
  %i.as = icmp slt <4 x i32> %i.ap, zeroinitializer
  %i.at = select nsz <4 x i1> %i.as, <4 x float> zeroinitializer, <4 x float> %i.ar
  %i.au = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ap, <4 x i32> zeroinitializer) ; 2 uses
  %i.av = icmp slt <4 x i32> %i.au, %broadcast.splat61 ; 2 uses
  %i.aw = select nsz <4 x i1> %i.av, <4 x float> %i.at, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.ax = select <4 x i1> %i.av, <4 x i32> %i.au, <4 x i32> %broadcast.splat63
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index69
  store <4 x i32> %i.ax, ptr %i.ay, align 4, !tbaa !28
  %i.az = fsub fast <4 x float> splat (float 1.000000e+00), %i.aw
  %i.ba = shl nuw nsw i64 %index69, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 %i.ba
  %interleaved.vec71 = shufflevector <4 x float> %i.az, <4 x float> %i.aw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec71, ptr %i.bb, align 4, !tbaa !61
  %index.next72 = add nuw i64 %index69, 4         ; 2 uses
  %vec.ind.next73 = add <4 x i32> %vec.ind70, splat (i32 4)
  %i.bc = icmp eq i64 %index.next72, %n.vec59
  br i1 %i.bc, label %middle.block74, label %vector.body68, !llvm.loop !109

middle.block74:                                   ; preds = %vector.body68
  %cmp.n75 = icmp eq i64 %n.vec59, %wide.trip.count40
  br i1 %cmp.n75, label %._crit_edge, label %.lr.ph.split.us.preheader77

.lr.ph.split.us.preheader77:                      ; preds = %.lr.ph.split.us.preheader, %middle.block74
  %indvars.iv37.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec59, %middle.block74 ]
  %i.bd = fdiv fast double 1.000000e+00, %i.b
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader77, %.lr.ph.split.us
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %.lr.ph.split.us ], [ %indvars.iv37.ph, %.lr.ph.split.us.preheader77 ] ; 4 uses
  %i.be = trunc nuw nsw i64 %indvars.iv37 to i32
  %i.bf = uitofp ninf nsz nneg i32 %i.be to double
  %i.bg = fadd fast double %i.bf, 5.000000e-01
  %i.bh = fmul fast double %i.bg, %i.a
  %i.bi = fmul fast double %i.bh, %i.bd
  %i.bj = fadd fast double %i.bi, -5.000000e-01
  %.028.us = fptrunc double %i.bj to float        ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL13linear_coeffsEiiPiPfi:bb.a
  store i32 %.1, ptr %i.cc, align 4, !tbaa !28
  %i.cd = fsub fast float 1.000000e+00, %.2
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 2 uses
  store float %i.cd, ptr %i.ce, align 4, !tbaa !61
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store float %.2, ptr %i.cf, align 4, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !111
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not69 = icmp sgt i32 %i.k, %i.j
  br i1 %.not69, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !28     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph72.split.preheader, label %._crit_edge73

.lr.ph72.split.preheader:                         ; preds = %.lr.ph72
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph72.split

.lr.ph72.split:                                   ; preds = %.lr.ph72.split.preheader, %._crit_edge68
  %i.t = phi i32 [ %i.p, %.lr.ph72.split.preheader ], [ %i.bw, %._crit_edge68 ] ; 6 uses
  %i.u = phi i32 [ %i.p, %.lr.ph72.split.preheader ], [ %i.bx, %._crit_edge68 ] ; 2 uses
  %indvars.iv95 = phi i64 [ %i.r, %.lr.ph72.split.preheader ], [ %indvars.iv.next96, %._crit_edge68 ] ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = load i32, ptr %i.l, align 4, !tbaa !29
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %indvars.iv95, %i.y
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !32
  %i.ab = mul i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !43
  %i.ae = load i32, ptr %i.n, align 4, !tbaa !29
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %indvars.iv95, %i.af
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !32
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.al = icmp sgt i32 %i.u, 0
  br i1 %i.al, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %.lr.ph72.split
  %i.am = load i32, ptr %8, align 4, !tbaa !28    ; 8 uses
  %i.an = icmp sgt i32 %i.am, 3
  br i1 %i.an, label %.lr.ph67.split.preheader, label %.lr.ph67.split.us

.lr.ph67.split.preheader:                         ; preds = %.lr.ph67
  %i.ao = add i64 %i.ab, %i.w
  br label %.lr.ph67.split

.lr.ph67.split.us:                                ; preds = %.lr.ph67
  %i.ap = load ptr, ptr %7, align 8, !tbaa !62
  %i.aq = icmp sgt i32 %i.am, 0
  %i.ar = sext i32 %i.am to i64
  br i1 %i.aq, label %.preheader.us.preheader, label %._crit_edge68

.preheader.us.preheader:                          ; preds = %.lr.ph67.split.us
  %i.as = zext nneg i32 %i.am to i64
  %smax = call i32 @llvm.smax.i32(i32 %i.t, i32 1)
  %wide.trip.count82 = zext nneg i32 %smax to i64
  %exitcond.not = icmp eq i32 %i.am, 1
  %exitcond.not.1 = icmp eq i32 %i.am, 2
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv79 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next80, %._crit_edge.us ] ; 2 uses
  %.05264.us = phi ptr [ %i.ak, %.preheader.us.preheader ], [ %i.bu, %._crit_edge.us ] ; 3 uses
  %.05363.us = phi ptr [ %i.aj, %.preheader.us.preheader ], [ %i.bv, %._crit_edge.us ] ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv79
  %i.au = load i32, ptr %i.at, align 4, !tbaa !28
  %i.av = mul nsw i32 %i.am, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.aw ; 4 uses
  %i.ay = load float, ptr %.05264.us, align 4, !tbaa !61 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.05264.us, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !61 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.as ; 3 uses
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !61
  %i.bc = fmul fast float %i.bb, %i.ay
  %i.bd = load float, ptr %invariant.gep, align 4, !tbaa !61
  %i.be = fmul fast float %i.bd, %i.ba
  %i.bf = fadd fast float %i.be, %i.bc
  store float %i.bf, ptr %.05363.us, align 4, !tbaa !61
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.preheader.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !61
  %i.bi = fmul fast float %i.bh, %i.ay
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.bj = load float, ptr %gep.1, align 4, !tbaa !61
  %i.bk = fmul fast float %i.bj, %i.ba
  %i.bl = fadd fast float %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %.05363.us, i64 4
  store float %i.bl, ptr %i.bm, align 4, !tbaa !61
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !61
  %i.bp = fmul fast float %i.bo, %i.ay
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.bq = load float, ptr %gep.2, align 4, !tbaa !61
  %i.br = fmul fast float %i.bq, %i.ba
  %i.bs = fadd fast float %i.br, %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %.05363.us, i64 8
  store float %i.bs, ptr %i.bt, align 4, !tbaa !61
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.preheader.us
  %i.bu = getelementptr inbounds nuw i8, ptr %.05264.us, i64 8
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.05363.us, i64 %i.ar
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge68, label %.preheader.us, !llvm.loop !112

._crit_edge68:                                    ; preds = %._crit_edge.us, %._crit_edge, %.lr.ph67.split.us, %.lr.ph72.split
  %i.bw = phi i32 [ %i.fa, %._crit_edge ], [ %i.t, %.lr.ph72.split ], [ %i.t, %.lr.ph67.split.us ], [ %i.t, %._crit_edge.us ]
  %i.bx = phi i32 [ %i.fa, %._crit_edge ], [ %i.u, %.lr.ph72.split ], [ %i.t, %.lr.ph67.split.us ], [ %i.t, %._crit_edge.us ]
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next96 to i32
  %exitcond98.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond98.not, label %._crit_edge73, label %.lr.ph72.split, !llvm.loop !113

.lr.ph67.split:                                   ; preds = %.lr.ph67.split.preheader, %._crit_edge
  %i.by = phi i32 [ %i.co, %._crit_edge ], [ %i.am, %.lr.ph67.split.preheader ] ; 4 uses
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %._crit_edge ], [ 0, %.lr.ph67.split.preheader ] ; 2 uses
  %.05264 = phi ptr [ %i.ey, %._crit_edge ], [ %i.ak, %.lr.ph67.split.preheader ] ; 3 uses
  %.05363 = phi ptr [ %i.ez, %._crit_edge ], [ %i.aj, %.lr.ph67.split.preheader ] ; 7 uses
  %.05363114 = ptrtoaddr ptr %.05363 to i64
  %i.bz = load ptr, ptr %7, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv92
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !28
  %i.cc = mul i32 %i.by, %i.cb
  %i.cd = sext i32 %i.cc to i64                   ; 3 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.cd ; 6 uses
  %i.cf = load float, ptr %.05264, align 4, !tbaa !61 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.05264, i64 4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !61 ; 5 uses
  %i.ci = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = icmp sgt i32 %i.by, 3
  br i1 %i.cm, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.cn = trunc nuw nsw i64 %indvars.iv.next85 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.lr.ph67.split
  %i.co = phi i32 [ %i.by, %.lr.ph67.split ], [ %i.eh, %.preheader.loopexit ] ; 5 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph67.split ], [ %i.cn, %.preheader.loopexit ] ; 2 uses
  %i.cp = icmp slt i32 %.0.lcssa, %i.co
  br i1 %i.cp, label %.lr.ph62.preheader, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.co to i64
  br label %._crit_edge

.lr.ph62.preheader:                               ; preds = %.preheader
  %i.cq = zext i32 %.0.lcssa to i64               ; 5 uses
  %9 = zext nneg i32 %i.co to i64                 ; 4 uses
  %wide.trip.count90 = zext nneg i32 %i.co to i64 ; 5 uses
  %invariant.gep110 = getelementptr [4 x i8], ptr %i.ce, i64 %9 ; 4 uses
  %i.cr = sub nsw i64 %wide.trip.count90, %i.cq   ; 3 uses
  %min.iters.check = icmp ult i64 %i.cr, 8
  br i1 %min.iters.check, label %.lr.ph62.preheader121, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph62.preheader
  %i.cs = sub i64 %.05363114, %i.ao               ; 2 uses
  %i.ct = add nsw i64 %i.cd, %wide.trip.count90
  %i.cu = shl nsw i64 %i.ct, 2
  %i.cv = sub i64 %i.cu, %i.cs
  %diff.check = icmp ugt i64 %i.cv, -32
  %i.cw = shl nsw i64 %i.cd, 2
  %i.cx = sub i64 %i.cw, %i.cs
  %diff.check115 = icmp ugt i64 %i.cx, -32
  %conflict.rdx = or i1 %diff.check, %diff.check115
  br i1 %conflict.rdx, label %.lr.ph62.preheader121, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, -8                      ; 3 uses
  %i.cy = add nsw i64 %n.vec, %i.cq
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cf, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert116 = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat117 = shufflevector <4 x float> %broadcast.splatinsert116, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = add nuw i64 %index, %i.cq               ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load = load <4 x float>, ptr %i.da, align 4, !tbaa !61
  %wide.load118 = load <4 x float>, ptr %i.db, align 4, !tbaa !61
  %i.dc = fmul fast <4 x float> %wide.load, %broadcast.splat
  %i.dd = fmul fast <4 x float> %wide.load118, %broadcast.splat
  %i.de = getelementptr [4 x i8], ptr %invariant.gep110, i64 %i.cz ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16
  %wide.load119 = load <4 x float>, ptr %i.de, align 4, !tbaa !61
  %wide.load120 = load <4 x float>, ptr %i.df, align 4, !tbaa !61
  %i.dg = fmul fast <4 x float> %wide.load119, %broadcast.splat117
  %i.dh = fmul fast <4 x float> %wide.load120, %broadcast.splat117
  %i.di = fadd fast <4 x float> %i.dg, %i.dc
  %i.dj = fadd fast <4 x float> %i.dh, %i.dd
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.05363, i64 %i.cz ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <4 x float> %i.di, ptr %i.dk, align 4, !tbaa !61
  store <4 x float> %i.dj, ptr %i.dl, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph62.preheader121

.lr.ph62.preheader121:                            ; preds = %vector.memcheck, %.lr.ph62.preheader, %middle.block
  %indvars.iv87.ph = phi i64 [ %i.cq, %vector.memcheck ], [ %i.cq, %.lr.ph62.preheader ], [ %i.cy, %middle.block ] ; 7 uses
  %i.dn = sub nsw i64 %wide.trip.count90, %indvars.iv87.ph
  %xtraiter = and i64 %i.dn, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph62.prol.loopexit, label %.lr.ph62.prol

.lr.ph62.prol:                                    ; preds = %.lr.ph62.preheader121
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv87.ph
  %i.dp = load float, ptr %i.do, align 4, !tbaa !61
  %i.dq = fmul fast float %i.dp, %i.cf
  %gep111.prol = getelementptr [4 x i8], ptr %invariant.gep110, i64 %indvars.iv87.ph
  %i.dr = load float, ptr %gep111.prol, align 4, !tbaa !61
  %i.ds = fmul fast float %i.dr, %i.ch
  %i.dt = fadd fast float %i.ds, %i.dq
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.05363, i64 %indvars.iv87.ph
  store float %i.dt, ptr %i.du, align 4, !tbaa !61
  %indvars.iv.next88.prol = add nuw nsw i64 %indvars.iv87.ph, 1
  br label %.lr.ph62.prol.loopexit

.lr.ph62.prol.loopexit:                           ; preds = %.lr.ph62.prol, %.lr.ph62.preheader121
  %indvars.iv87.unr = phi i64 [ %indvars.iv87.ph, %.lr.ph62.preheader121 ], [ %indvars.iv.next88.prol, %.lr.ph62.prol ]
  %i.dv = add nsw i64 %wide.trip.count90, -1
  %i.dw = icmp eq i64 %indvars.iv87.ph, %i.dv
  br i1 %i.dw, label %._crit_edge, label %.lr.ph62

.lr.ph:                                           ; preds = %.lr.ph67.split, %.lr.ph
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.lr.ph ], [ 0, %.lr.ph67.split ] ; 3 uses
  %i.dx = phi i32 [ %i.eh, %.lr.ph ], [ %i.by, %.lr.ph67.split ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv84 ; 2 uses
  %i.dz = load <4 x float>, ptr %i.dy, align 16, !tbaa !20
  %i.ea = sext i32 %i.dx to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.ea
  %i.ec = load <4 x float>, ptr %i.eb, align 16, !tbaa !20
  %i.ed = fmul fast <4 x float> %i.dz, %i.cj
  %i.ee = fmul fast <4 x float> %i.ec, %i.cl
  %i.ef = fadd fast <4 x float> %i.ee, %i.ed
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.05363, i64 %indvars.iv84
  store <4 x float> %i.ef, ptr %i.eg, align 16, !tbaa !20
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 4 ; 3 uses
  %10 = or disjoint i64 %indvars.iv.next85, 3
  %i.eh = load i32, ptr %8, align 4, !tbaa !28    ; 3 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp slt i64 %10, %i.ei
  br i1 %i.ej, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !115

.lr.ph62:                                         ; preds = %.lr.ph62.prol.loopexit, %.lr.ph62
  %indvars.iv87 = phi i64 [ %indvars.iv.next88.1, %.lr.ph62 ], [ %indvars.iv87.unr, %.lr.ph62.prol.loopexit ] ; 5 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv87
  %i.el = load float, ptr %i.ek, align 4, !tbaa !61
  %i.em = fmul fast float %i.el, %i.cf
  %gep111 = getelementptr [4 x i8], ptr %invariant.gep110, i64 %indvars.iv87
  %i.en = load float, ptr %gep111, align 4, !tbaa !61
  %i.eo = fmul fast float %i.en, %i.ch
  %i.ep = fadd fast float %i.eo, %i.em
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.05363, i64 %indvars.iv87
  store float %i.ep, ptr %i.eq, align 4, !tbaa !61
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next88
  %i.es = load float, ptr %i.er, align 4, !tbaa !61
  %i.et = fmul fast float %i.es, %i.cf
  %gep111.1 = getelementptr [4 x i8], ptr %invariant.gep110, i64 %indvars.iv.next88
  %i.eu = load float, ptr %gep111.1, align 4, !tbaa !61
  %i.ev = fmul fast float %i.eu, %i.ch
  %i.ew = fadd fast float %i.ev, %i.et
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.05363, i64 %indvars.iv.next88
  store float %i.ew, ptr %i.ex, align 4, !tbaa !61
  %indvars.iv.next88.1 = add nuw nsw i64 %indvars.iv87, 2 ; 2 uses
  %exitcond91.not.1 = icmp eq i64 %indvars.iv.next88.1, %wide.trip.count90
  br i1 %exitcond91.not.1, label %._crit_edge, label %.lr.ph62, !llvm.loop !116

._crit_edge:                                      ; preds = %.lr.ph62.prol.loopexit, %.lr.ph62, %middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %9, %middle.block ], [ %9, %.lr.ph62 ], [ %9, %.lr.ph62.prol.loopexit ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.05264, i64 8
  %i.ez = getelementptr inbounds [4 x i8], ptr %.05363, i64 %.pre-phi
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.fa = load i32, ptr %6, align 4, !tbaa !28    ; 3 uses
  %i.fb = sext i32 %i.fa to i64
  %i.fc = icmp slt i64 %indvars.iv.next93, %i.fb
  br i1 %i.fc, label %.lr.ph67.split, label %._crit_edge68, !llvm.loop !117

._crit_edge73:                                    ; preds = %._crit_edge68, %.lr.ph72, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge73, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_ZN4ncnnL12cubic_coeffsEiiPiPfi(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) unnamed_addr #11 {
bb.a:
  %i.a = sitofp fast i32 %0 to double
  %i.b = sitofp fast i32 %1 to double
  %i.c = fdiv fast double %i.a, %i.b
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %0, -1
  %i.e = sitofp fast i32 %i.d to double
  %i.f = add nsw i32 %1, -1
  %i.g = sitofp fast i32 %i.f to double
  %i.h = fdiv fast double %i.e, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.087 = phi nsz double [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.j = add nsw i32 %0, -2
  %i.k = add nsw i32 %0, -1
  %i.l = add nsw i32 %0, -3
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.j, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = uitofp ninf nsz nneg i32 %i.m to double  ; 2 uses
  %i.o = fadd fast double %i.n, 5.000000e-01
  %i.p = fmul fast double %i.o, %.087
  %i.q = fadd fast double %i.p, -5.000000e-01
  %i.r = fmul fast double %.087, %i.n
  %.085.in = select i1 %.not, double %i.q, double %i.r
  %.085 = fptrunc double %.085.in to float        ; 2 uses
  %i.s = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %.085)
  %i.t = fptosi float %i.s to i32                 ; 4 uses
  %i.u = sitofp fast i32 %i.t to float
  %i.v = fsub fast float %.085, %i.u              ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 6 uses
  %i.x = fadd fast float %i.v, 1.000000e+00       ; 4 uses
  %i.y = fsub fast float 1.000000e+00, %i.v       ; 3 uses
  %i.z = fmul fast float %i.x, %i.x
  %i.aa = fmul fast float %i.x, 7.500000e-01
  %i.ab = fmul fast float %i.x, 6.000000e+00
  %i.ac = fsub fast float 3.750000e+00, %i.aa
  %reass.mul.i = fmul fast float %i.z, %i.ac
  %i.ad = fsub fast float 3.000000e+00, %i.ab
  %i.ae = fadd fast float %reass.mul.i, %i.ad     ; 4 uses
  store float %i.ae, ptr %i.w, align 4, !tbaa !61
  %i.af = fmul fast float %i.v, %i.v
  %i.ag = fmul fast float %i.v, 1.250000e+00
  %i.ah = fadd fast float %i.ag, -2.250000e+00
  %i.ai = fmul fast float %i.af, %i.ah
  %i.aj = fadd fast float %i.ai, 1.000000e+00     ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 3 uses
  store float %i.aj, ptr %i.ak, align 4, !tbaa !61
  %i.al = fmul fast float %i.y, %i.y
  %i.am = fmul fast float %i.y, 1.250000e+00
  %i.an = fadd fast float %i.am, -2.250000e+00
  %i.ao = fmul fast float %i.al, %i.an            ; 2 uses
  %i.ap = fadd fast float %i.ao, 1.000000e+00     ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  store float %i.ap, ptr %i.aq, align 4, !tbaa !61
  %i.ar = fadd fast float %i.ao, %i.aj
  %i.as = fadd fast float %i.ar, %i.ae            ; 2 uses
  %i.at = fneg fast float %i.as                   ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 3 uses
  store float %i.at, ptr %i.au, align 4, !tbaa !61
  %i.av = icmp slt i32 %i.t, 0
  br i1 %i.av, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.aw = fadd fast float %i.as, 1.000000e+00
  br label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ax = icmp eq i32 %i.t, 0
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = fadd fast float %i.aj, %i.ae
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %.thread
  %.sink100 = phi float [ %i.aw, %.thread ], [ %i.ay, %bb.f ] ; 2 uses
  %.sink99 = phi float [ %i.at, %.thread ], [ %i.ap, %bb.f ] ; 2 uses
  %.sink = phi float [ 0.000000e+00, %.thread ], [ %i.at, %bb.f ] ; 2 uses
  store float %.sink100, ptr %i.w, align 4, !tbaa !61
  store float %.sink99, ptr %i.ak, align 4, !tbaa !61
  store float %.sink, ptr %i.aq, align 4, !tbaa !61
  store float 0.000000e+00, ptr %i.au, align 4, !tbaa !61
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.az = phi float [ %i.aj, %bb.e ], [ %.sink99, %.sink.split ]
  %i.ba = phi float [ %i.at, %bb.e ], [ 0.000000e+00, %.sink.split ]
  %i.bb = phi float [ %i.ap, %bb.e ], [ %.sink, %.sink.split ]
  %i.bc = phi float [ %i.ae, %bb.e ], [ %.sink100, %.sink.split ] ; 3 uses
  %.1 = phi i32 [ %i.t, %bb.e ], [ 1, %.sink.split ] ; 3 uses
  %i.bd = icmp eq i32 %.1, %i.j
  br i1 %i.bd, label %.thread91, label %bb.h

.thread91:                                        ; preds = %bb.g
  %i.be = fadd fast float %i.ba, %i.bb
  br label %.sink.split101

bb.h:                                             ; preds = %bb.g
  %.not89 = icmp slt i32 %.1, %i.k
  br i1 %.not89, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = fsub fast float 1.000000e+00, %i.bc
  br label %.sink.split101

.sink.split101:                                   ; preds = %bb.i, %.thread91
  %.sink104 = phi float [ %i.be, %.thread91 ], [ %i.bf, %bb.i ]
  %.sink103 = phi float [ %i.az, %.thread91 ], [ %i.bc, %bb.i ]
  %.sink102 = phi float [ %i.bc, %.thread91 ], [ 0.000000e+00, %bb.i ]
  store float %.sink104, ptr %i.au, align 4, !tbaa !61
  store float %.sink103, ptr %i.aq, align 4, !tbaa !61
  store float %.sink102, ptr %i.ak, align 4, !tbaa !61
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %.sink.split101, %bb.h
  %.3 = phi i32 [ %.1, %bb.h ], [ %i.l, %.sink.split101 ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %.3, ptr %i.bg, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !118
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not90 = icmp sgt i32 %i.k, %i.j
  br i1 %.not90, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !28     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph93.split.preheader, label %._crit_edge94

.lr.ph93.split.preheader:                         ; preds = %.lr.ph93
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph93.split

.lr.ph93.split:                                   ; preds = %.lr.ph93.split.preheader, %._crit_edge89
  %i.t = phi i32 [ %i.p, %.lr.ph93.split.preheader ], [ %i.cq, %._crit_edge89 ] ; 6 uses
  %i.u = phi i32 [ %i.p, %.lr.ph93.split.preheader ], [ %i.cr, %._crit_edge89 ] ; 2 uses
  %indvars.iv116 = phi i64 [ %i.r, %.lr.ph93.split.preheader ], [ %indvars.iv.next117, %._crit_edge89 ] ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = load i32, ptr %i.l, align 4, !tbaa !29
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %indvars.iv116, %i.y
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !32
  %i.ab = mul i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !43
  %i.ae = load i32, ptr %i.n, align 4, !tbaa !29
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %indvars.iv116, %i.af
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !32
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.al = icmp sgt i32 %i.u, 0
  br i1 %i.al, label %.lr.ph88, label %._crit_edge89

.lr.ph88:                                         ; preds = %.lr.ph93.split
  %i.am = load i32, ptr %8, align 4, !tbaa !28    ; 8 uses
  %i.an = icmp sgt i32 %i.am, 3
  br i1 %i.an, label %.lr.ph88.split.preheader, label %.lr.ph88.split.us

.lr.ph88.split.preheader:                         ; preds = %.lr.ph88
  %i.ao = add i64 %i.ab, %i.w                     ; 2 uses
  br label %.lr.ph88.split

.lr.ph88.split.us:                                ; preds = %.lr.ph88
  %i.ap = load ptr, ptr %7, align 8, !tbaa !62
  %i.aq = icmp sgt i32 %i.am, 0
  %i.ar = sext i32 %i.am to i64                   ; 5 uses
  br i1 %i.aq, label %.preheader.us.preheader, label %._crit_edge89

.preheader.us.preheader:                          ; preds = %.lr.ph88.split.us
  %i.as = shl nuw nsw i32 %i.am, 1
  %i.at = zext nneg i32 %i.as to i64
  %smax = call i32 @llvm.smax.i32(i32 %i.t, i32 1)
  %wide.trip.count103 = zext nneg i32 %smax to i64
  %i.au = sub nsw i64 0, %i.ar
  %exitcond.not = icmp eq i32 %i.am, 1
  %i.av = sub nsw i64 1, %i.ar
  %exitcond.not.1 = icmp eq i32 %i.am, 2
  %i.aw = sub nsw i64 2, %i.ar
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv100 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next101, %._crit_edge.us ] ; 2 uses
  %.06685.us = phi ptr [ %i.ak, %.preheader.us.preheader ], [ %i.co, %._crit_edge.us ] ; 2 uses
  %.06784.us = phi ptr [ %i.aj, %.preheader.us.preheader ], [ %i.cp, %._crit_edge.us ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv100
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.az = mul nsw i32 %i.am, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ba ; 8 uses
  %i.bc = load <4 x float>, ptr %.06685.us, align 4, !tbaa !61 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.bb, i64 %i.ar ; 3 uses
  %invariant.gep131 = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.at ; 3 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.au
  %i.be = load float, ptr %i.bd, align 4, !tbaa !61
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !61
  %i.bg = load float, ptr %invariant.gep, align 4, !tbaa !61
  %i.bh = load float, ptr %invariant.gep131, align 4, !tbaa !61
  %i.bi = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 1
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 2
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 3
  %i.bm = fmul fast <4 x float> %i.bl, %i.bc
  %i.bn = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bm)
  store float %i.bn, ptr %.06784.us, align 4, !tbaa !61
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.preheader.us
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.av
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !61
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !61
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 4
  %i.bs = load float, ptr %gep.1, align 4, !tbaa !61
  %gep132.1 = getelementptr inbounds nuw i8, ptr %invariant.gep131, i64 4
  %i.bt = load float, ptr %gep132.1, align 4, !tbaa !61
  %i.bu = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 1
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 2
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 3
  %i.by = fmul fast <4 x float> %i.bx, %i.bc
  %i.bz = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %.06784.us, i64 4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !61
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.aw
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !61
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !61
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 8
  %i.cf = load float, ptr %gep.2, align 4, !tbaa !61
  %gep132.2 = getelementptr inbounds nuw i8, ptr %invariant.gep131, i64 8
  %i.cg = load float, ptr %gep132.2, align 4, !tbaa !61
  %i.ch = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 2
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 3
  %i.cl = fmul fast <4 x float> %i.ck, %i.bc
  %i.cm = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cl)
  %i.cn = getelementptr inbounds nuw i8, ptr %.06784.us, i64 8
  store float %i.cm, ptr %i.cn, align 4, !tbaa !61
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.preheader.us
  %i.co = getelementptr inbounds nuw i8, ptr %.06685.us, i64 16
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.06784.us, i64 %i.ar
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %._crit_edge89, label %.preheader.us, !llvm.loop !119

._crit_edge89:                                    ; preds = %._crit_edge.us, %._crit_edge, %.lr.ph88.split.us, %.lr.ph93.split
  %i.cq = phi i32 [ %i.gd, %._crit_edge ], [ %i.t, %.lr.ph93.split ], [ %i.t, %.lr.ph88.split.us ], [ %i.t, %._crit_edge.us ]
  %i.cr = phi i32 [ %i.gd, %._crit_edge ], [ %i.u, %.lr.ph93.split ], [ %i.t, %.lr.ph88.split.us ], [ %i.t, %._crit_edge.us ]
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next117 to i32
  %exitcond119.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond119.not, label %._crit_edge94, label %.lr.ph93.split, !llvm.loop !120

.lr.ph88.split:                                   ; preds = %.lr.ph88.split.preheader, %._crit_edge
  %i.cs = phi i32 [ %i.dg, %._crit_edge ], [ %i.am, %.lr.ph88.split.preheader ] ; 4 uses
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %._crit_edge ], [ 0, %.lr.ph88.split.preheader ] ; 2 uses
  %.06685 = phi ptr [ %i.gb, %._crit_edge ], [ %i.ak, %.lr.ph88.split.preheader ] ; 2 uses
  %.06784 = phi ptr [ %i.gc, %._crit_edge ], [ %i.aj, %.lr.ph88.split.preheader ] ; 5 uses
  %.06784139 = ptrtoaddr ptr %.06784 to i64       ; 2 uses
  %i.ct = load ptr, ptr %7, align 8, !tbaa !62
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv113
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !28
  %i.cw = mul i32 %i.cs, %i.cv
  %i.cx = sext i32 %i.cw to i64                   ; 4 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.cx ; 7 uses
  %i.cz = load <4 x float>, ptr %.06685, align 4, !tbaa !61 ; 5 uses
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.db = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.dc = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.dd = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.de = icmp sgt i32 %i.cs, 3
  br i1 %i.de, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.df = trunc nuw nsw i64 %indvars.iv.next106 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.lr.ph88.split
  %i.dg = phi i32 [ %i.cs, %.lr.ph88.split ], [ %i.fk, %.preheader.loopexit ] ; 6 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph88.split ], [ %i.df, %.preheader.loopexit ] ; 2 uses
  %i.dh = icmp slt i32 %.0.lcssa, %i.dg
  br i1 %i.dh, label %.lr.ph83, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.dg to i64
  br label %._crit_edge

.lr.ph83:                                         ; preds = %.preheader
  %i.di = shl nuw nsw i32 %i.dg, 1
  %i.dj = zext i32 %.0.lcssa to i64               ; 5 uses
  %9 = zext nneg i32 %i.dg to i64                 ; 5 uses
  %i.dk = zext nneg i32 %i.di to i64              ; 2 uses
  %wide.trip.count111 = zext nneg i32 %i.dg to i64 ; 4 uses
  %invariant.gep133 = getelementptr [4 x i8], ptr %i.cy, i64 %9 ; 2 uses
  %invariant.gep135 = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dk ; 2 uses
  %i.dl = sub nsw i64 %wide.trip.count111, %i.dj  ; 3 uses
  %min.iters.check = icmp ult i64 %i.dl, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph83
  %i.dm = sub i64 %.06784139, %i.ao               ; 2 uses
  %i.dn = add nsw i64 %i.cx, %i.dk
  %i.do = shl nsw i64 %i.dn, 2
  %i.dp = sub i64 %i.do, %i.dm
  %diff.check = icmp ugt i64 %i.dp, -16
  %i.dq = add nsw i64 %i.cx, %wide.trip.count111
  %i.dr = shl nsw i64 %i.dq, 2
  %i.ds = sub i64 %i.dr, %i.dm
  %diff.check140 = icmp ugt i64 %i.ds, -16
  %conflict.rdx = or i1 %diff.check, %diff.check140
  %i.dt = sub i64 %.06784139, %i.ao               ; 2 uses
  %i.du = shl nsw i64 %i.cx, 2                    ; 2 uses
  %i.dv = sub i64 %i.du, %i.dt
  %diff.check141 = icmp ugt i64 %i.dv, -16
  %conflict.rdx142 = or i1 %conflict.rdx, %diff.check141
  %i.dw = shl nuw nsw i64 %wide.trip.count111, 2
  %i.dx = add i64 %i.dt, %i.dw
  %i.dy = sub i64 %i.du, %i.dx
  %diff.check143 = icmp ugt i64 %i.dy, -16
  %conflict.rdx144 = or i1 %conflict.rdx142, %diff.check143
  br i1 %conflict.rdx144, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dl, -4                      ; 3 uses
  %i.dz = add nsw i64 %n.vec, %i.dj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = add nuw i64 %index, %i.dj               ; 5 uses
  %i.eb = sub nsw i64 %i.ea, %9
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.eb
  %wide.load = load <4 x float>, ptr %i.ec, align 4, !tbaa !61
  %i.ed = fmul fast <4 x float> %wide.load, %i.da
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.ea
  %wide.load151 = load <4 x float>, ptr %i.ee, align 4, !tbaa !61
  %i.ef = fmul fast <4 x float> %wide.load151, %i.db
  %i.eg = fadd fast <4 x float> %i.ef, %i.ed
  %i.eh = getelementptr [4 x i8], ptr %invariant.gep133, i64 %i.ea
  %wide.load152 = load <4 x float>, ptr %i.eh, align 4, !tbaa !61
  %i.ei = fmul fast <4 x float> %wide.load152, %i.dc
  %i.ej = fadd fast <4 x float> %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep135, i64 %i.ea
  %wide.load153 = load <4 x float>, ptr %i.ek, align 4, !tbaa !61
  %i.el = fmul fast <4 x float> %wide.load153, %i.dd
  %i.em = fadd fast <4 x float> %i.ej, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.06784, i64 %i.ea
  store <4 x float> %i.em, ptr %i.en, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph83, %middle.block
  %indvars.iv108.ph = phi i64 [ %i.dj, %vector.memcheck ], [ %i.dj, %.lr.ph83 ], [ %i.dz, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph88.split, %.lr.ph
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %.lr.ph ], [ 0, %.lr.ph88.split ] ; 3 uses
  %i.ep = phi i32 [ %i.fk, %.lr.ph ], [ %i.cs, %.lr.ph88.split ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv105 ; 4 uses
  %i.er = sext i32 %i.ep to i64                   ; 2 uses
  %i.es = sub nsw i64 0, %i.er
  %i.et = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.es
  %i.eu = load <4 x float>, ptr %i.et, align 16, !tbaa !20
  %i.ev = load <4 x float>, ptr %i.eq, align 16, !tbaa !20
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  %i.ex = load <4 x float>, ptr %i.ew, align 16, !tbaa !20
  %i.ey = shl nuw nsw i32 %i.ep, 1
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ez
  %i.fb = load <4 x float>, ptr %i.fa, align 16, !tbaa !20
  %i.fc = fmul fast <4 x float> %i.eu, %i.da
  %i.fd = fmul fast <4 x float> %i.ev, %i.db
  %i.fe = fadd fast <4 x float> %i.fd, %i.fc
  %i.ff = fmul fast <4 x float> %i.ex, %i.dc
  %i.fg = fadd fast <4 x float> %i.fe, %i.ff
  %i.fh = fmul fast <4 x float> %i.fb, %i.dd
  %i.fi = fadd fast <4 x float> %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.06784, i64 %indvars.iv105
  store <4 x float> %i.fi, ptr %i.fj, align 16, !tbaa !20
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 4 ; 3 uses
  %10 = or disjoint i64 %indvars.iv.next106, 3
  %i.fk = load i32, ptr %8, align 4, !tbaa !28    ; 3 uses
  %i.fl = sext i32 %i.fk to i64
  %i.fm = icmp slt i64 %10, %i.fl
  br i1 %i.fm, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !122

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %scalar.ph ], [ %indvars.iv108.ph, %scalar.ph.preheader ] ; 6 uses
  %i.fn = sub nsw i64 %indvars.iv108, %9
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.fn
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !61
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv108
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !61
  %gep134 = getelementptr [4 x i8], ptr %invariant.gep133, i64 %indvars.iv108
  %i.fs = load float, ptr %gep134, align 4, !tbaa !61
  %gep136 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep135, i64 %indvars.iv108
  %i.ft = load float, ptr %gep136, align 4, !tbaa !61
  %i.fu = insertelement <4 x float> poison, float %i.fp, i64 0
  %i.fv = insertelement <4 x float> %i.fu, float %i.fr, i64 1
  %i.fw = insertelement <4 x float> %i.fv, float %i.fs, i64 2
  %i.fx = insertelement <4 x float> %i.fw, float %i.ft, i64 3
  %i.fy = fmul fast <4 x float> %i.fx, %i.cz
  %i.fz = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fy)
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.06784, i64 %indvars.iv108
  store float %i.fz, ptr %i.ga, align 4, !tbaa !61
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge, label %scalar.ph, !llvm.loop !123

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %9, %middle.block ], [ %9, %scalar.ph ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.06685, i64 16
  %i.gc = getelementptr inbounds [4 x i8], ptr %.06784, i64 %.pre-phi
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.gd = load i32, ptr %6, align 4, !tbaa !28    ; 3 uses
  %i.ge = sext i32 %i.gd to i64
  %i.gf = icmp slt i64 %indvars.iv.next114, %i.ge
  br i1 %i.gf, label %.lr.ph88.split, label %._crit_edge89, !llvm.loop !124

._crit_edge94:                                    ; preds = %._crit_edge89, %.lr.ph93, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge94, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not85 = icmp sgt i32 %i.k, %i.j
  br i1 %.not85, label %._crit_edge87, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load i32, ptr %5, align 4, !tbaa !28     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge87

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.v = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.t, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next92, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !43, !noalias !132
  %i.y = load i64, ptr %i.m, align 8, !tbaa !37, !noalias !132
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !32, !noalias !132 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !43, !noalias !133
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !37, !noalias !133
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !32, !noalias !133 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !29, !noalias !133
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !29, !noalias !132
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ag, %i.al
  %i.aq = load i32, ptr %8, align 4, !tbaa !28    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre95 = load i32, ptr %i.b, align 4, !tbaa !28
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph84, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.as = phi i32 [ %i.u, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre95, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.u, %.lr.ph84 ] ; 2 uses
  %i.at = phi i32 [ %i.v, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.v, %.lr.ph84 ]
  %i.au = phi i32 [ %i.w, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.lr.ph84 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1
  %i.av = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv91, %i.av
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !129

.lr.ph84.split:                                   ; preds = %.lr.ph84, %._crit_edge
  %i.aw = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph84 ]
  %i.ax = phi i32 [ %i.bm, %._crit_edge ], [ %i.aq, %.lr.ph84 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph84 ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = uitofp ninf nsz nneg i32 %i.ay to float
  %i.ba = load float, ptr %6, align 4, !tbaa !61
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fptosi float %i.bb to i32
  %i.bd = load i32, ptr %7, align 4, !tbaa !28
  %i.be = add nsw i32 %i.bd, -1
  %.sroa.speculated51 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = sext i32 %.sroa.speculated51 to i64
  %i.bg = mul i64 %i.ao, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bg
  %i.bi = icmp sgt i32 %i.ax, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph84.split
  %i.bj = mul i64 %i.ap, %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  %.pre = load i32, ptr %11, align 4, !tbaa !28
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre94 = load i32, ptr %5, align 4, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph84.split
  %i.bl = phi i32 [ %.pre94, %._crit_edge.loopexit ], [ %i.aw, %.lr.ph84.split ] ; 4 uses
  %i.bm = phi i32 [ %i.cf, %._crit_edge.loopexit ], [ %i.ax, %.lr.ph84.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !130

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bp = phi i32 [ %i.cb, %.lr.ph ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.03682 = phi i32 [ %i.ce, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03781 = phi ptr [ %i.cd, %.lr.ph ], [ %i.bk, %.lr.ph.preheader ] ; 2 uses
  %i.bq = uitofp ninf nsz nneg i32 %.03682 to float
  %i.br = load float, ptr %9, align 4, !tbaa !61
  %i.bs = fmul fast float %i.br, %i.bq
  %i.bt = fptosi float %i.bs to i32
  %i.bu = load i32, ptr %10, align 4, !tbaa !28
  %i.bv = add nsw i32 %i.bu, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bt)
  %i.bw = mul nsw i32 %.sroa.speculated, %i.bp
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bx
  %i.bz = sext i32 %i.bp to i64
  %i.ca = shl nsw i64 %i.bz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.03781, ptr align 4 %i.by, i64 %i.ca, i1 false)
  %i.cb = load i32, ptr %11, align 4, !tbaa !28   ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %.03781, i64 %i.cc
  %i.ce = add nuw nsw i32 %.03682, 1              ; 2 uses
  %i.cf = load i32, ptr %8, align 4, !tbaa !28    ; 2 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !131

end_hunk_2
begin_hunk_3_@_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6:bb.a
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !28
  %i.cv = shl nsw i32 %i.cu, 2
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cw ; 2 uses
  %i.cy = load float, ptr %.079129.i, align 4, !tbaa !61
  %i.cz = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = getelementptr inbounds nuw i8, ptr %.079129.i, i64 4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !61
  %i.dd = insertelement <4 x float> poison, float %i.dc, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = load <4 x float>, ptr %i.cx, align 16, !tbaa !20
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dh = load <4 x float>, ptr %i.dg, align 16, !tbaa !20
  %i.di = fmul fast <4 x float> %i.df, %i.da
  %i.dj = fmul fast <4 x float> %i.dh, %i.de
  %i.dk = fadd fast <4 x float> %i.dj, %i.di
  %.idx.i = shl nuw nsw i64 %indvars.iv140.i, 4
  %i.dl = getelementptr inbounds nuw i8, ptr %.083133.i, i64 %.idx.i
  store <4 x float> %i.dk, ptr %i.dl, align 16, !tbaa !20
  %i.dm = getelementptr inbounds nuw i8, ptr %.079129.i, i64 8
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %exitcond144.not.i = icmp eq i64 %indvars.iv.next141.i, %wide.trip.count.i
  br i1 %exitcond144.not.i, label %.loopexit.i.thread136, label %.lr.ph131.i, !llvm.loop !138

bb.t:                                             ; preds = %bb.r
  %i.dn = sext i32 %i.cl to i64
  %i.do = mul i64 %i.bj, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.do
  %i.dq = add nsw i32 %i.cl, 1
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul i64 %i.bj, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ds
  br i1 %i.bg, label %.lr.ph.i, label %.loopexit.i.thread

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.t ] ; 3 uses
  %.077127.i = phi ptr [ %i.ew, %.lr.ph.i ], [ %i.az, %bb.t ] ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !28
  %i.dw = shl nsw i32 %i.dv, 2
  %i.dx = sext i32 %i.dw to i64                   ; 2 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dx ; 2 uses
  %i.ea = load float, ptr %.077127.i, align 4, !tbaa !61
  %i.eb = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.077127.i, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !61
  %i.ef = insertelement <4 x float> poison, float %i.ee, i64 0
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eh = load <4 x float>, ptr %i.dy, align 16, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ej = load <4 x float>, ptr %i.ei, align 16, !tbaa !20
  %i.ek = load <4 x float>, ptr %i.dz, align 16, !tbaa !20
  %i.el = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.em = load <4 x float>, ptr %i.el, align 16, !tbaa !20
  %i.en = fmul fast <4 x float> %i.eh, %i.ec
  %i.eo = fmul fast <4 x float> %i.ek, %i.ec
  %i.ep = fmul fast <4 x float> %i.ej, %i.eg
  %i.eq = fadd fast <4 x float> %i.ep, %i.en
  %i.er = fmul fast <4 x float> %i.em, %i.eg
  %i.es = fadd fast <4 x float> %i.er, %i.eo
  %i.et = shl nuw nsw i64 %indvars.iv.i, 2        ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.083133.i, i64 %i.et
  store <4 x float> %i.eq, ptr %i.eu, align 16, !tbaa !20
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.082134.i, i64 %i.et
  store <4 x float> %i.es, ptr %i.ev, align 16, !tbaa !20
  %i.ew = getelementptr inbounds nuw i8, ptr %.077127.i, i64 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i.thread136, label %.lr.ph.i, !llvm.loop !139

.loopexit.i.thread:                               ; preds = %bb.t, %bb.s
  %.184.i.ph = phi ptr [ %.083133.i, %bb.t ], [ %.082134.i, %bb.s ]
  %.1.i.ph = phi ptr [ %.082134.i, %bb.t ], [ %.083133.i, %bb.s ]
  %i.ex = mul i64 %i.bk, %indvars.iv145.i
  %i.ey = load <2 x float>, ptr %.089132.i, align 4, !tbaa !61
  br label %.preheader.i.i

.loopexit.i.thread136:                            ; preds = %.lr.ph.i, %.lr.ph131.i
  %.184.i.ph134 = phi ptr [ %.082134.i, %.lr.ph131.i ], [ %.083133.i, %.lr.ph.i ]
  %.1.i.ph135 = phi ptr [ %.083133.i, %.lr.ph131.i ], [ %.082134.i, %.lr.ph.i ]
  %i.ez = mul i64 %i.bk, %indvars.iv145.i
  %i.fa = load <2 x float>, ptr %.089132.i, align 4, !tbaa !61 ; 3 uses
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fc = shufflevector <2 x float> %i.fa, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.lr.ph.i.i.preheader

.loopexit.i:                                      ; preds = %bb.q
  %i.fd = mul i64 %i.bk, %indvars.iv145.i         ; 2 uses
  %i.fe = load <2 x float>, ptr %.089132.i, align 4, !tbaa !61 ; 4 uses
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fg = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br i1 %i.bg, label %.lr.ph.i.i.preheader, label %.preheader.i.i

.lr.ph.i.i.preheader:                             ; preds = %.loopexit.i.thread136, %.loopexit.i
  %i.fh = phi <4 x float> [ %i.fc, %.loopexit.i.thread136 ], [ %i.fg, %.loopexit.i ]
  %i.fi = phi <4 x float> [ %i.fb, %.loopexit.i.thread136 ], [ %i.ff, %.loopexit.i ]
  %i.fj = phi i64 [ %i.ez, %.loopexit.i.thread136 ], [ %i.fd, %.loopexit.i ] ; 2 uses
  %.1.i140 = phi ptr [ %.1.i.ph135, %.loopexit.i.thread136 ], [ %.082134.i, %.loopexit.i ] ; 2 uses
  %.184.i139 = phi ptr [ %.184.i.ph134, %.loopexit.i.thread136 ], [ %.083133.i, %.loopexit.i ] ; 2 uses
  %i.fk = phi <2 x float> [ %i.fa, %.loopexit.i.thread136 ], [ %i.fe, %.loopexit.i ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.fj
  br label %.lr.ph.i.i

.preheader.loopexit.i.i:                          ; preds = %.lr.ph.i.i
  %i.fm = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.thread, %.preheader.loopexit.i.i, %.loopexit.i
  %i.fn = phi i64 [ %i.fd, %.loopexit.i ], [ %i.fj, %.preheader.loopexit.i.i ], [ %i.ex, %.loopexit.i.thread ] ; 3 uses
  %.1.i89 = phi ptr [ %.082134.i, %.loopexit.i ], [ %.1.i140, %.preheader.loopexit.i.i ], [ %.1.i.ph, %.loopexit.i.thread ] ; 6 uses
  %.184.i88 = phi ptr [ %.083133.i, %.loopexit.i ], [ %.184.i139, %.preheader.loopexit.i.i ], [ %.184.i.ph, %.loopexit.i.thread ] ; 6 uses
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i ], [ %i.fm, %.preheader.loopexit.i.i ], [ 0, %.loopexit.i.thread ] ; 2 uses
  %i.fo = phi <2 x float> [ %i.fe, %.loopexit.i ], [ %i.fk, %.preheader.loopexit.i.i ], [ %i.ey, %.loopexit.i.thread ] ; 5 uses
  %.1.i89156 = ptrtoaddr ptr %.1.i89 to i64
  %.184.i88158 = ptrtoaddr ptr %.184.i88 to i64
  %i.fp = icmp slt i32 %.0.lcssa.i.i, %i.bh
  br i1 %i.fp, label %.lr.ph27.preheader.i.i, label %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i

.lr.ph27.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.fq = zext i32 %.0.lcssa.i.i to i64           ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.fn ; 4 uses
  %i.fs = sub nsw i64 %i.bi, %i.fq                ; 3 uses
  %min.iters.check162 = icmp ult i64 %i.fs, 8
  br i1 %min.iters.check162, label %.lr.ph27.i.i.preheader, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph27.preheader.i.i
  %i.ft = add i64 %i.bl, %i.fn
  %i.fu = sub i64 %.1.i89156, %i.ft
  %diff.check157 = icmp ugt i64 %i.fu, -32
  %i.fv = add i64 %i.bm, %i.fn
  %i.fw = sub i64 %.184.i88158, %i.fv
  %diff.check159 = icmp ugt i64 %i.fw, -32
  %conflict.rdx160 = or i1 %diff.check157, %diff.check159
  br i1 %conflict.rdx160, label %.lr.ph27.i.i.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck155
  %n.vec164 = and i64 %i.fs, -8                   ; 3 uses
  %i.fx = add nsw i64 %n.vec164, %i.fq
  %broadcast.splat166 = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat168 = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph163
  %index170 = phi i64 [ 0, %vector.ph163 ], [ %index.next175, %vector.body169 ] ; 2 uses
  %i.fy = add nuw i64 %index170, %i.fq            ; 3 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.184.i88, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %wide.load171 = load <4 x float>, ptr %i.fz, align 4, !tbaa !61
  %wide.load172 = load <4 x float>, ptr %i.ga, align 4, !tbaa !61
  %i.gb = fmul fast <4 x float> %wide.load171, %broadcast.splat166
  %i.gc = fmul fast <4 x float> %wide.load172, %broadcast.splat166
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.1.i89, i64 %i.fy ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load173 = load <4 x float>, ptr %i.gd, align 4, !tbaa !61
  %wide.load174 = load <4 x float>, ptr %i.ge, align 4, !tbaa !61
  %i.gf = fmul fast <4 x float> %wide.load173, %broadcast.splat168
  %i.gg = fmul fast <4 x float> %wide.load174, %broadcast.splat168
  %i.gh = fadd fast <4 x float> %i.gf, %i.gb
  %i.gi = fadd fast <4 x float> %i.gg, %i.gc
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fy ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store <4 x float> %i.gh, ptr %i.gj, align 4, !tbaa !61
  store <4 x float> %i.gi, ptr %i.gk, align 4, !tbaa !61
  %index.next175 = add nuw i64 %index170, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next175, %n.vec164
  br i1 %i.gl, label %middle.block176, label %vector.body169, !llvm.loop !140

middle.block176:                                  ; preds = %vector.body169
  %cmp.n177 = icmp eq i64 %i.fs, %n.vec164
  br i1 %cmp.n177, label %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i, label %.lr.ph27.i.i.preheader

.lr.ph27.i.i.preheader:                           ; preds = %vector.memcheck155, %.lr.ph27.preheader.i.i, %middle.block176
  %indvars.iv29.i.i.ph = phi i64 [ %i.fq, %vector.memcheck155 ], [ %i.fq, %.lr.ph27.preheader.i.i ], [ %i.fx, %middle.block176 ] ; 7 uses
  %xtraiter = and i64 %indvars.iv29.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph27.i.i.prol.loopexit, label %.lr.ph27.i.i.prol

.lr.ph27.i.i.prol:                                ; preds = %.lr.ph27.i.i.preheader
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.184.i88, i64 %indvars.iv29.i.i.ph
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !61
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.1.i89, i64 %indvars.iv29.i.i.ph
  %i.gp = load float, ptr %i.go, align 4, !tbaa !61
  %i.gq = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gr = insertelement <2 x float> %i.gq, float %i.gp, i64 1
  %i.gs = fmul fast <2 x float> %i.gr, %i.fo
  %i.gt = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.gs)
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv29.i.i.ph
  store float %i.gt, ptr %i.gu, align 4, !tbaa !61
  %indvars.iv.next30.i.i.prol = add nuw nsw i64 %indvars.iv29.i.i.ph, 1
  br label %.lr.ph27.i.i.prol.loopexit

.lr.ph27.i.i.prol.loopexit:                       ; preds = %.lr.ph27.i.i.prol, %.lr.ph27.i.i.preheader
  %indvars.iv29.i.i.unr = phi i64 [ %indvars.iv29.i.i.ph, %.lr.ph27.i.i.preheader ], [ %indvars.iv.next30.i.i.prol, %.lr.ph27.i.i.prol ]
  %i.gv = icmp eq i64 %indvars.iv29.i.i.ph, %i.bn
  br i1 %i.gv, label %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i, label %.lr.ph27.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.184.i139, i64 %indvars.iv.i.i
  %i.gx = load <4 x float>, ptr %i.gw, align 1, !tbaa !20
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.1.i140, i64 %indvars.iv.i.i
  %i.gz = load <4 x float>, ptr %i.gy, align 1, !tbaa !20
  %i.ha = fmul fast <4 x float> %i.gx, %i.fi
  %i.hb = fmul fast <4 x float> %i.gz, %i.fh
  %i.hc = fadd fast <4 x float> %i.hb, %i.ha
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.i.i
  store <4 x float> %i.hc, ptr %i.hd, align 1, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 4 ; 3 uses
  %14 = or disjoint i64 %indvars.iv.next.i.i, 3
  %i.he = icmp samesign ult i64 %14, %i.bi
  br i1 %i.he, label %.lr.ph.i.i, label %.preheader.loopexit.i.i, !llvm.loop !141

.lr.ph27.i.i:                                     ; preds = %.lr.ph27.i.i.prol.loopexit, %.lr.ph27.i.i
  %indvars.iv29.i.i = phi i64 [ %indvars.iv.next30.i.i.1, %.lr.ph27.i.i ], [ %indvars.iv29.i.i.unr, %.lr.ph27.i.i.prol.loopexit ] ; 5 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.184.i88, i64 %indvars.iv29.i.i
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !61
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.1.i89, i64 %indvars.iv29.i.i
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !61
  %i.hj = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.hk = insertelement <2 x float> %i.hj, float %i.hi, i64 1
  %i.hl = fmul fast <2 x float> %i.hk, %i.fo
  %i.hm = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.hl)
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv29.i.i
  store float %i.hm, ptr %i.hn, align 4, !tbaa !61
  %indvars.iv.next30.i.i = add nuw nsw i64 %indvars.iv29.i.i, 1 ; 3 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.184.i88, i64 %indvars.iv.next30.i.i
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !61
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.1.i89, i64 %indvars.iv.next30.i.i
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !61
  %i.hs = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.ht = insertelement <2 x float> %i.hs, float %i.hr, i64 1
  %i.hu = fmul fast <2 x float> %i.ht, %i.fo
  %i.hv = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.hu)
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.next30.i.i
  store float %i.hv, ptr %i.hw, align 4, !tbaa !61
  %indvars.iv.next30.i.i.1 = add nuw nsw i64 %indvars.iv29.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next30.i.i.1, %i.bi
  br i1 %exitcond.not.i.i.1, label %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i, label %.lr.ph27.i.i, !llvm.loop !142

_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i:   ; preds = %.lr.ph27.i.i.prol.loopexit, %.lr.ph27.i.i, %middle.block176, %.preheader.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.089132.i, i64 8
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 2 uses
  %exitcond149.not.i = icmp eq i64 %indvars.iv.next146.i, %wide.trip.count148.i
  br i1 %exitcond149.not.i, label %._crit_edge.i, label %bb.q, !llvm.loop !143

bb.u:                                             ; preds = %bb.p
  %i.hy = atomicrmw add ptr %i.cj, i32 -1 acq_rel, align 4
  %i.hz = icmp eq i32 %i.hy, 1
  br i1 %i.hz, label %bb.v, label %_ZN4ncnn3MatD2Ev.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ia = load ptr, ptr %i.t, align 8, !tbaa !42  ; 3 uses
  %.not3.i105.i = icmp eq ptr %i.ia, null
  %i.ib = load ptr, ptr %12, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i105.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ic = load ptr, ptr %i.ia, align 8, !tbaa !13
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  invoke void %i.ie(ptr noundef nonnull align 8 dereferenceable(8) %i.ia, ptr noundef %i.ib)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.z, !inline_history !1

bb.x:                                             ; preds = %bb.v
  %.not.i108.i = icmp eq ptr %i.ib, null
  br i1 %.not.i108.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.ib) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.z:                                             ; preds = %bb.w
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  call void @__clang_call_terminate(ptr %i.ig) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.y, %bb.x, %bb.w, %bb.u, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  br label %.body

_ZN4ncnnL27resize_bilinear_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit95.i, %bb.j, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  %.pr = load i32, ptr %5, align 4, !tbaa !28
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4ncnnL27resize_bilinear_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.ih = phi i32 [ %.pr, %_ZN4ncnnL27resize_bilinear_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.ax, %_ZNK4ncnn3Mat7channelEi.exit ]
  %i.ii = icmp eq i32 %i.ih, 1
  br i1 %i.ii, label %bb.ab, label %_ZN4ncnn3MatD2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ij = load ptr, ptr %6, align 8, !tbaa !64    ; 4 uses
  %i.ik = load ptr, ptr %7, align 8, !tbaa !62    ; 6 uses
  %i.il = load ptr, ptr %8, align 8, !tbaa !64
  %i.im = load ptr, ptr %9, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  store i64 0, ptr %i.aa, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.z, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.an, i64 noundef 4, ptr noundef null)
          to label %.noexc49 unwind label %bb.ba

.noexc49:                                         ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  store i64 0, ptr %i.ad, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.an, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.ao

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %.noexc49
  %i.in = icmp sgt i32 %i.ao, 0
  br i1 %i.in, label %.lr.ph260.i, label %._crit_edge.i31

.lr.ph260.i:                                      ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.io = load ptr, ptr %11, align 8, !tbaa !43
  %i.ip = load ptr, ptr %10, align 8, !tbaa !43
  %i.iq = icmp sgt i32 %i.an, 3                   ; 3 uses
  %i.ir = zext i32 %i.an to i64                   ; 9 uses
  %wide.trip.count280.i = zext nneg i32 %i.ao to i64
  %invariant.op.i = add nsw i64 %i.aw, -3         ; 2 uses
  %i.is = mul i64 %i.at, %i.aw
  %i.it = mul i64 %i.aj, %i.am                    ; 3 uses
  %i.iu = add i64 %i.au, %i.aq
  %i.iv = mul i64 %i.at, %i.aw
  %i.iw = add nsw i64 %i.ir, -1
  %i.ix = add nsw i64 %i.ir, -1
  br label %bb.ap

._crit_edge.i31:                                  ; preds = %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i35, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.iy = load ptr, ptr %i.ab, align 8, !tbaa !41 ; 2 uses
  %.not.i209.i = icmp eq ptr %i.iy, null
  br i1 %.not.i209.i, label %_ZN4ncnn3MatD2Ev.exit207.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i31
  %i.iz = atomicrmw add ptr %i.iy, i32 -1 acq_rel, align 4
  %i.ja = icmp eq i32 %i.iz, 1
  br i1 %i.ja, label %bb.ad, label %_ZN4ncnn3MatD2Ev.exit207.i

bb.ad:                                            ; preds = %bb.ac
  %i.jb = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 3 uses
  %.not3.i210.i = icmp eq ptr %i.jb, null
  %i.jc = load ptr, ptr %11, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i210.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jd = load ptr, ptr %i.jb, align 8, !tbaa !13
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jf = load ptr, ptr %i.je, align 8
  invoke void %i.jf(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef %i.jc)
          to label %_ZN4ncnn3MatD2Ev.exit207.i unwind label %bb.ah, !inline_history !1

bb.af:                                            ; preds = %bb.ad
  %.not.i224.i = icmp eq ptr %i.jc, null
  br i1 %.not.i224.i, label %_ZN4ncnn3MatD2Ev.exit207.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.jc) #6
  br label %_ZN4ncnn3MatD2Ev.exit207.i

bb.ah:                                            ; preds = %bb.ae
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  call void @__clang_call_terminate(ptr %i.jh) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit207.i:                       ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac, %._crit_edge.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.ji = load ptr, ptr %i.y, align 8, !tbaa !41  ; 2 uses
  %.not.i213.i = icmp eq ptr %i.ji, null
  br i1 %.not.i213.i, label %_ZN4ncnnL21resize_bilinear_imageERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit207.i
  %i.jj = atomicrmw add ptr %i.ji, i32 -1 acq_rel, align 4
  %i.jk = icmp eq i32 %i.jj, 1
  br i1 %i.jk, label %bb.aj, label %_ZN4ncnnL21resize_bilinear_imageERKNS_3MatERS0_PfPiS4_S5_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.jl = load ptr, ptr %i.z, align 8, !tbaa !42  ; 3 uses
  %.not3.i214.i = icmp eq ptr %i.jl, null
  %i.jm = load ptr, ptr %10, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i214.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jn = load ptr, ptr %i.jl, align 8, !tbaa !13
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8
  invoke void %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %i.jl, ptr noundef %i.jm)
          to label %_ZN4ncnnL21resize_bilinear_imageERKNS_3MatERS0_PfPiS4_S5_.exit unwind label %bb.an, !inline_history !1

bb.al:                                            ; preds = %bb.aj
  %.not.i222.i = icmp eq ptr %i.jm, null
  br i1 %.not.i222.i, label %_ZN4ncnnL21resize_bilinear_imageERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef nonnull %i.jm) #6
  br label %_ZN4ncnnL21resize_bilinear_imageERKNS_3MatERS0_PfPiS4_S5_.exit

bb.an:                                            ; preds = %bb.ak
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #22
  unreachable

bb.ao:                                            ; preds = %.noexc49
  %i.js = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.jt = load ptr, ptr %i.y, align 8, !tbaa !41  ; 2 uses
  %.not.i217.i = icmp eq ptr %i.jt, null
  br i1 %.not.i217.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.at

bb.ap:                                            ; preds = %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i35, %.lr.ph260.i
  %indvars.iv277.i = phi i64 [ 0, %.lr.ph260.i ], [ %indvars.iv.next278.i, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i35 ] ; 4 uses
  %.0259.i = phi ptr [ %i.il, %.lr.ph260.i ], [ %i.ts, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i35 ] ; 3 uses
  %.0189258.i = phi ptr [ %i.ip, %.lr.ph260.i ], [ %.1190.i, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i35 ] ; 12 uses
  %.0191257.i = phi ptr [ %i.io, %.lr.ph260.i ], [ %.1192.i, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i35 ] ; 8 uses
  %.0193256.i = phi i32 [ -2, %.lr.ph260.i ], [ %i.jx, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i35 ] ; 2 uses
  %i.ju = mul i64 %i.iv, %indvars.iv277.i
  %i.jv = add i64 %i.iu, %i.ju                    ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv277.i
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !28 ; 6 uses
  %i.jy = icmp eq i32 %i.jx, %.0193256.i
  br i1 %i.jy, label %.loopexit.i32, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jz = add nsw i32 %.0193256.i, 1
  %i.ka = icmp eq i32 %i.jx, %i.jz
  br i1 %i.ka, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.kb = add nsw i32 %i.jx, 1
  %i.kc = sext i32 %i.kb to i64
  %i.kd = mul i64 %i.it, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.kd ; 7 uses
  br i1 %i.iq, label %.lr.ph249.i, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph249.i
  %i.kf = trunc nuw nsw i64 %indvars.iv.next270.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.ar
  %.0197.lcssa.i = phi ptr [ %i.ij, %bb.ar ], [ %i.mn, %.preheader.loopexit.i ] ; 3 uses
  %.0195.lcssa.i = phi i32 [ 0, %bb.ar ], [ %i.kf, %.preheader.loopexit.i ] ; 2 uses
  %i.kg = icmp slt i32 %.0195.lcssa.i, %i.an
  br i1 %i.kg, label %.lr.ph254.preheader.i, label %.loopexit.i32

.lr.ph254.preheader.i:                            ; preds = %.preheader.i
  %i.kh = zext i32 %.0195.lcssa.i to i64          ; 6 uses
  %i.ki = sub nsw i64 %i.ir, %i.kh
  %xtraiter182 = and i64 %i.ki, 1
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %.lr.ph254.i.prol.loopexit, label %.lr.ph254.i.prol

.lr.ph254.i.prol:                                 ; preds = %.lr.ph254.preheader.i
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.kh
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !28
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.kl
  %i.kn = load <2 x float>, ptr %.0197.lcssa.i, align 4, !tbaa !61
  %i.ko = load <2 x float>, ptr %i.km, align 4, !tbaa !61
  %i.kp = fmul fast <2 x float> %i.ko, %i.kn
  %i.kq = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.kp)
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.0189258.i, i64 %i.kh
  store float %i.kq, ptr %i.kr, align 4, !tbaa !61
  %i.ks = getelementptr inbounds nuw i8, ptr %.0197.lcssa.i, i64 8
  %indvars.iv.next273.i.prol = add nuw nsw i64 %i.kh, 1
  br label %.lr.ph254.i.prol.loopexit

.lr.ph254.i.prol.loopexit:                        ; preds = %.lr.ph254.i.prol, %.lr.ph254.preheader.i
  %indvars.iv272.i.unr = phi i64 [ %i.kh, %.lr.ph254.preheader.i ], [ %indvars.iv.next273.i.prol, %.lr.ph254.i.prol ]
  %.1198252.i.unr = phi ptr [ %.0197.lcssa.i, %.lr.ph254.preheader.i ], [ %i.ks, %.lr.ph254.i.prol ]
  %i.kt = icmp eq i64 %i.iw, %i.kh
  br i1 %i.kt, label %.loopexit.i32, label %.lr.ph254.i

.lr.ph249.i:                                      ; preds = %bb.ar, %.lr.ph249.i
  %indvars.iv269.i = phi i64 [ %indvars.iv.next270.i, %.lr.ph249.i ], [ 0, %bb.ar ] ; 3 uses
  %.0197247.i = phi ptr [ %i.mn, %.lr.ph249.i ], [ %i.ij, %bb.ar ] ; 3 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv269.i ; 4 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !28
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.kw ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !61
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !28
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.lb ; 2 uses
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !61
  %i.le = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !28
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.lg ; 2 uses
  %i.li = load float, ptr %i.lh, align 4, !tbaa !61
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !28
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.ll ; 2 uses
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !61
  %i.lo = insertelement <4 x float> poison, float %i.ky, i64 0
  %i.lp = insertelement <4 x float> %i.lo, float %i.ld, i64 1
  %i.lq = insertelement <4 x float> %i.lp, float %i.li, i64 2
  %i.lr = insertelement <4 x float> %i.lq, float %i.ln, i64 3
  %i.ls = getelementptr i8, ptr %i.kx, i64 4
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !61
  %i.lu = getelementptr i8, ptr %i.lc, i64 4
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !61
  %i.lw = getelementptr i8, ptr %i.lh, i64 4
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !61
  %i.ly = getelementptr i8, ptr %i.lm, i64 4
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !61
  %i.ma = insertelement <4 x float> poison, float %i.lt, i64 0
  %i.mb = insertelement <4 x float> %i.ma, float %i.lv, i64 1
  %i.mc = insertelement <4 x float> %i.mb, float %i.lx, i64 2
  %i.md = insertelement <4 x float> %i.mc, float %i.lz, i64 3
  %i.me = load <4 x float>, ptr %.0197247.i, align 1, !tbaa !20 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.0197247.i, i64 16
  %i.mg = load <4 x float>, ptr %i.mf, align 1, !tbaa !20 ; 2 uses
  %i.mh = shufflevector <4 x float> %i.me, <4 x float> %i.mg, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.mi = shufflevector <4 x float> %i.me, <4 x float> %i.mg, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.mj = fmul fast <4 x float> %i.mh, %i.lr
  %i.mk = fmul fast <4 x float> %i.mi, %i.md
  %i.ml = fadd fast <4 x float> %i.mk, %i.mj
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.0189258.i, i64 %indvars.iv269.i
  store <4 x float> %i.ml, ptr %i.mm, align 1, !tbaa !20
  %i.mn = getelementptr inbounds nuw i8, ptr %.0197247.i, i64 32 ; 2 uses
  %indvars.iv.next270.i = add nuw nsw i64 %indvars.iv269.i, 4 ; 3 uses
  %i.mo = icmp slt i64 %indvars.iv.next270.i, %invariant.op.i
  br i1 %i.mo, label %.lr.ph249.i, label %.preheader.loopexit.i, !llvm.loop !144

.lr.ph254.i:                                      ; preds = %.lr.ph254.i.prol.loopexit, %.lr.ph254.i
  %indvars.iv272.i = phi i64 [ %indvars.iv.next273.i.1, %.lr.ph254.i ], [ %indvars.iv272.i.unr, %.lr.ph254.i.prol.loopexit ] ; 4 uses
  %.1198252.i = phi ptr [ %i.ni, %.lr.ph254.i ], [ %.1198252.i.unr, %.lr.ph254.i.prol.loopexit ] ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv272.i
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !28
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.mr
  %i.mt = load <2 x float>, ptr %.1198252.i, align 4, !tbaa !61
  %i.mu = load <2 x float>, ptr %i.ms, align 4, !tbaa !61
  %i.mv = fmul fast <2 x float> %i.mu, %i.mt
  %i.mw = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.mv)
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %.0189258.i, i64 %indvars.iv272.i
  store float %i.mw, ptr %i.mx, align 4, !tbaa !61
  %i.my = getelementptr inbounds nuw i8, ptr %.1198252.i, i64 8
  %indvars.iv.next273.i = add nuw nsw i64 %indvars.iv272.i, 1 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv.next273.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !28
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.nb
  %i.nd = load <2 x float>, ptr %i.my, align 4, !tbaa !61
  %i.ne = load <2 x float>, ptr %i.nc, align 4, !tbaa !61
  %i.nf = fmul fast <2 x float> %i.ne, %i.nd
  %i.ng = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.nf)
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %.0189258.i, i64 %indvars.iv.next273.i
  store float %i.ng, ptr %i.nh, align 4, !tbaa !61
  %i.ni = getelementptr inbounds nuw i8, ptr %.1198252.i, i64 16
  %indvars.iv.next273.i.1 = add nuw nsw i64 %indvars.iv272.i, 2 ; 2 uses
  %exitcond276.not.i.1 = icmp eq i64 %indvars.iv.next273.i.1, %i.ir
  br i1 %exitcond276.not.i.1, label %.loopexit.i32, label %.lr.ph254.i, !llvm.loop !145

bb.as:                                            ; preds = %bb.aq
  %i.nj = sext i32 %i.jx to i64
  %i.nk = mul i64 %i.it, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.nk ; 5 uses
  %i.nm = add nsw i32 %i.jx, 1
  %i.nn = sext i32 %i.nm to i64
  %i.no = mul i64 %i.it, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.no ; 5 uses
  br i1 %i.iq, label %.lr.ph.i46, label %.preheader239.i

.preheader239.loopexit.i:                         ; preds = %.lr.ph.i46
  %i.nq = trunc nuw nsw i64 %indvars.iv.next.i48 to i32
  br label %.preheader239.i

.preheader239.i:                                  ; preds = %.preheader239.loopexit.i, %bb.as
  %.0187.lcssa.i = phi ptr [ %i.ij, %bb.as ], [ %i.qo, %.preheader239.loopexit.i ]
  %.0185.lcssa.i = phi i32 [ 0, %bb.as ], [ %i.nq, %.preheader239.loopexit.i ] ; 2 uses
  %i.nr = icmp slt i32 %.0185.lcssa.i, %i.an
  br i1 %i.nr, label %.lr.ph246.preheader.i, label %.loopexit.i32

.lr.ph246.preheader.i:                            ; preds = %.preheader239.i
  %i.ns = zext nneg i32 %.0185.lcssa.i to i64
  br label %.lr.ph246.i

.lr.ph.i46:                                       ; preds = %bb.as, %.lr.ph.i46
  %indvars.iv.i47 = phi i64 [ %indvars.iv.next.i48, %.lr.ph.i46 ], [ 0, %bb.as ] ; 4 uses
  %.0187241.i = phi ptr [ %i.qo, %.lr.ph.i46 ], [ %i.ij, %bb.as ] ; 3 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv.i47 ; 4 uses
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !28
  %i.nv = sext i32 %i.nu to i64                   ; 2 uses
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.nv ; 2 uses
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !61
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !28
  %i.oa = sext i32 %i.nz to i64                   ; 2 uses
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.oa ; 2 uses
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !61
  %i.od = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !28
  %i.of = sext i32 %i.oe to i64                   ; 2 uses
  %i.og = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.of ; 2 uses
  %i.oh = load float, ptr %i.og, align 4, !tbaa !61
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nt, i64 12
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !28
  %i.ok = sext i32 %i.oj to i64                   ; 2 uses
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.ok ; 2 uses
  %i.om = load float, ptr %i.ol, align 4, !tbaa !61
  %i.on = insertelement <4 x float> poison, float %i.nx, i64 0
  %i.oo = insertelement <4 x float> %i.on, float %i.oc, i64 1
  %i.op = insertelement <4 x float> %i.oo, float %i.oh, i64 2
  %i.oq = insertelement <4 x float> %i.op, float %i.om, i64 3
  %i.or = getelementptr i8, ptr %i.nw, i64 4
  %i.os = load float, ptr %i.or, align 4, !tbaa !61
  %i.ot = getelementptr i8, ptr %i.ob, i64 4
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !61
  %i.ov = getelementptr i8, ptr %i.og, i64 4
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !61
  %i.ox = getelementptr i8, ptr %i.ol, i64 4
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !61
  %i.oz = insertelement <4 x float> poison, float %i.os, i64 0
  %i.pa = insertelement <4 x float> %i.oz, float %i.ou, i64 1
  %i.pb = insertelement <4 x float> %i.pa, float %i.ow, i64 2
  %i.pc = insertelement <4 x float> %i.pb, float %i.oy, i64 3
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.nv ; 2 uses
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !61
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.oa ; 2 uses
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !61
  %i.ph = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.of ; 2 uses
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !61
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.ok ; 2 uses
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !61
  %i.pl = insertelement <4 x float> poison, float %i.pe, i64 0
  %i.pm = insertelement <4 x float> %i.pl, float %i.pg, i64 1
  %i.pn = insertelement <4 x float> %i.pm, float %i.pi, i64 2
  %i.po = insertelement <4 x float> %i.pn, float %i.pk, i64 3
  %i.pp = getelementptr i8, ptr %i.pd, i64 4
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !61
  %i.pr = getelementptr i8, ptr %i.pf, i64 4
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !61
  %i.pt = getelementptr i8, ptr %i.ph, i64 4
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !61
  %i.pv = getelementptr i8, ptr %i.pj, i64 4
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !61
  %i.px = insertelement <4 x float> poison, float %i.pq, i64 0
  %i.py = insertelement <4 x float> %i.px, float %i.ps, i64 1
  %i.pz = insertelement <4 x float> %i.py, float %i.pu, i64 2
  %i.qa = insertelement <4 x float> %i.pz, float %i.pw, i64 3
  %i.qb = load <4 x float>, ptr %.0187241.i, align 1, !tbaa !20 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.0187241.i, i64 16
  %i.qd = load <4 x float>, ptr %i.qc, align 1, !tbaa !20 ; 2 uses
  %i.qe = shufflevector <4 x float> %i.qb, <4 x float> %i.qd, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.qf = shufflevector <4 x float> %i.qb, <4 x float> %i.qd, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.qg = fmul fast <4 x float> %i.qe, %i.oq
  %i.qh = fmul fast <4 x float> %i.qf, %i.pc
  %i.qi = fadd fast <4 x float> %i.qh, %i.qg
  %i.qj = fmul fast <4 x float> %i.qe, %i.po
  %i.qk = fmul fast <4 x float> %i.qf, %i.qa
  %i.ql = fadd fast <4 x float> %i.qk, %i.qj
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %.0189258.i, i64 %indvars.iv.i47
  store <4 x float> %i.qi, ptr %i.qm, align 1, !tbaa !20
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %.0191257.i, i64 %indvars.iv.i47
  store <4 x float> %i.ql, ptr %i.qn, align 1, !tbaa !20
  %i.qo = getelementptr inbounds nuw i8, ptr %.0187241.i, i64 32 ; 2 uses
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i47, 4 ; 3 uses
  %i.qp = icmp slt i64 %indvars.iv.next.i48, %invariant.op.i
  br i1 %i.qp, label %.lr.ph.i46, label %.preheader239.loopexit.i, !llvm.loop !146

.lr.ph246.i:                                      ; preds = %.lr.ph246.i, %.lr.ph246.preheader.i
  %indvars.iv266.i = phi i64 [ %i.ns, %.lr.ph246.preheader.i ], [ %indvars.iv.next267.i, %.lr.ph246.i ] ; 4 uses
  %.1188244.i = phi ptr [ %.0187.lcssa.i, %.lr.ph246.preheader.i ], [ %i.re, %.lr.ph246.i ] ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv266.i
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !28
  %i.qs = sext i32 %i.qr to i64                   ; 2 uses
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.qs
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.qs
  %i.qv = load <2 x float>, ptr %.1188244.i, align 4, !tbaa !61 ; 2 uses
  %i.qw = load <2 x float>, ptr %i.qt, align 4, !tbaa !61
  %i.qx = fmul fast <2 x float> %i.qw, %i.qv
  %i.qy = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.qx)
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.0189258.i, i64 %indvars.iv266.i
  store float %i.qy, ptr %i.qz, align 4, !tbaa !61
  %i.ra = load <2 x float>, ptr %i.qu, align 4, !tbaa !61
  %i.rb = fmul fast <2 x float> %i.ra, %i.qv
  %i.rc = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.rb)
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %.0191257.i, i64 %indvars.iv266.i
  store float %i.rc, ptr %i.rd, align 4, !tbaa !61
  %i.re = getelementptr inbounds nuw i8, ptr %.1188244.i, i64 8
  %indvars.iv.next267.i = add nuw nsw i64 %indvars.iv266.i, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next267.i, %i.ir
  br i1 %exitcond.not.i45, label %.loopexit.i32, label %.lr.ph246.i, !llvm.loop !147

.loopexit.i32:                                    ; preds = %.lr.ph246.i, %.lr.ph254.i.prol.loopexit, %.lr.ph254.i, %.preheader239.i, %.preheader.i, %bb.ap
  %.1192.i = phi ptr [ %.0191257.i, %bb.ap ], [ %.0189258.i, %.preheader.i ], [ %.0191257.i, %.preheader239.i ], [ %.0189258.i, %.lr.ph254.i.prol.loopexit ], [ %.0189258.i, %.lr.ph254.i ], [ %.0191257.i, %.lr.ph246.i ] ; 7 uses
  %.1190.i = phi ptr [ %.0189258.i, %bb.ap ], [ %.0191257.i, %.preheader.i ], [ %.0189258.i, %.preheader239.i ], [ %.0191257.i, %.lr.ph254.i.prol.loopexit ], [ %.0191257.i, %.lr.ph254.i ], [ %.0189258.i, %.lr.ph246.i ] ; 7 uses
  %.1192.i147 = ptrtoaddr ptr %.1192.i to i64
  %.1190.i148 = ptrtoaddr ptr %.1190.i to i64
  %i.rf = mul i64 %i.is, %indvars.iv277.i
  %i.rg = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.rf ; 5 uses
  %i.rh = load float, ptr %.0259.i, align 4, !tbaa !61 ; 5 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.0259.i, i64 4
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !61 ; 5 uses
  %i.rk = insertelement <4 x float> poison, float %i.rh, i64 0
  %i.rl = shufflevector <4 x float> %i.rk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rm = insertelement <4 x float> poison, float %i.rj, i64 0
  %i.rn = shufflevector <4 x float> %i.rm, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.iq, label %.lr.ph.i.i41, label %.preheader.i.i33

.preheader.loopexit.i.i44:                        ; preds = %.lr.ph.i.i41
  %i.ro = trunc nuw nsw i64 %indvars.iv.next.i.i43 to i32
  br label %.preheader.i.i33

.preheader.i.i33:                                 ; preds = %.preheader.loopexit.i.i44, %.loopexit.i32
  %.0.lcssa.i.i34 = phi i32 [ 0, %.loopexit.i32 ], [ %i.ro, %.preheader.loopexit.i.i44 ] ; 2 uses
  %i.rp = icmp slt i32 %.0.lcssa.i.i34, %i.an
  br i1 %i.rp, label %.lr.ph27.preheader.i.i36, label %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i35

.lr.ph27.preheader.i.i36:                         ; preds = %.preheader.i.i33
  %i.rq = zext i32 %.0.lcssa.i.i34 to i64         ; 5 uses
  %i.rr = sub nsw i64 %i.ir, %i.rq                ; 3 uses
  %min.iters.check = icmp ult i64 %i.rr, 8
  br i1 %min.iters.check, label %.lr.ph27.i.i37.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph27.preheader.i.i36
  %i.rs = sub i64 %.1192.i147, %i.jv
  %diff.check = icmp ugt i64 %i.rs, -32
  %i.rt = sub i64 %.1190.i148, %i.jv
  %diff.check149 = icmp ugt i64 %i.rt, -32
  %conflict.rdx = or i1 %diff.check, %diff.check149
  br i1 %conflict.rdx, label %.lr.ph27.i.i37.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rr, -8                      ; 3 uses
  %i.ru = add nsw i64 %n.vec, %i.rq
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.rh, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert150 = insertelement <4 x float> poison, float %i.rj, i64 0
  %broadcast.splat151 = shufflevector <4 x float> %broadcast.splatinsert150, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rv = add nuw i64 %index, %i.rq               ; 3 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.1190.i, i64 %i.rv ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %wide.load = load <4 x float>, ptr %i.rw, align 4, !tbaa !61
  %wide.load152 = load <4 x float>, ptr %i.rx, align 4, !tbaa !61
  %i.ry = fmul fast <4 x float> %wide.load, %broadcast.splat
  %i.rz = fmul fast <4 x float> %wide.load152, %broadcast.splat
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %.1192.i, i64 %i.rv ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %wide.load153 = load <4 x float>, ptr %i.sa, align 4, !tbaa !61
  %wide.load154 = load <4 x float>, ptr %i.sb, align 4, !tbaa !61
  %i.sc = fmul fast <4 x float> %wide.load153, %broadcast.splat151
  %i.sd = fmul fast <4 x float> %wide.load154, %broadcast.splat151
  %i.se = fadd fast <4 x float> %i.sc, %i.ry
  %i.sf = fadd fast <4 x float> %i.sd, %i.rz
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %i.rv ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  store <4 x float> %i.se, ptr %i.sg, align 4, !tbaa !61
  store <4 x float> %i.sf, ptr %i.sh, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.si = icmp eq i64 %index.next, %n.vec
  br i1 %i.si, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rr, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i35, label %.lr.ph27.i.i37.preheader

.lr.ph27.i.i37.preheader:                         ; preds = %vector.memcheck, %.lr.ph27.preheader.i.i36, %middle.block
  %indvars.iv29.i.i38.ph = phi i64 [ %i.rq, %vector.memcheck ], [ %i.rq, %.lr.ph27.preheader.i.i36 ], [ %i.ru, %middle.block ] ; 7 uses
  %i.sj = sub nsw i64 %i.ir, %indvars.iv29.i.i38.ph
  %xtraiter184 = and i64 %i.sj, 1
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod185.not, label %.lr.ph27.i.i37.prol.loopexit, label %.lr.ph27.i.i37.prol

.lr.ph27.i.i37.prol:                              ; preds = %.lr.ph27.i.i37.preheader
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.1190.i, i64 %indvars.iv29.i.i38.ph
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !61
  %i.sm = fmul fast float %i.sl, %i.rh
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %.1192.i, i64 %indvars.iv29.i.i38.ph
  %i.so = load float, ptr %i.sn, align 4, !tbaa !61
  %i.sp = fmul fast float %i.so, %i.rj
  %i.sq = fadd fast float %i.sp, %i.sm
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv29.i.i38.ph
  store float %i.sq, ptr %i.sr, align 4, !tbaa !61
  %indvars.iv.next30.i.i39.prol = add nuw nsw i64 %indvars.iv29.i.i38.ph, 1
  br label %.lr.ph27.i.i37.prol.loopexit

.lr.ph27.i.i37.prol.loopexit:                     ; preds = %.lr.ph27.i.i37.prol, %.lr.ph27.i.i37.preheader
  %indvars.iv29.i.i38.unr = phi i64 [ %indvars.iv29.i.i38.ph, %.lr.ph27.i.i37.preheader ], [ %indvars.iv.next30.i.i39.prol, %.lr.ph27.i.i37.prol ]
  %i.ss = icmp eq i64 %indvars.iv29.i.i38.ph, %i.ix
  br i1 %i.ss, label %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i35, label %.lr.ph27.i.i37

.lr.ph.i.i41:                                     ; preds = %.loopexit.i32, %.lr.ph.i.i41
  %indvars.iv.i.i42 = phi i64 [ %indvars.iv.next.i.i43, %.lr.ph.i.i41 ], [ 0, %.loopexit.i32 ] ; 4 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.1190.i, i64 %indvars.iv.i.i42
  %i.su = load <4 x float>, ptr %i.st, align 1, !tbaa !20
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %.1192.i, i64 %indvars.iv.i.i42
  %i.sw = load <4 x float>, ptr %i.sv, align 1, !tbaa !20
  %i.sx = fmul fast <4 x float> %i.su, %i.rl
  %i.sy = fmul fast <4 x float> %i.sw, %i.rn
  %i.sz = fadd fast <4 x float> %i.sy, %i.sx
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv.i.i42
  store <4 x float> %i.sz, ptr %i.ta, align 1, !tbaa !20
  %indvars.iv.next.i.i43 = add nuw nsw i64 %indvars.iv.i.i42, 4 ; 3 uses
  %15 = or disjoint i64 %indvars.iv.next.i.i43, 3
  %i.tb = icmp samesign ult i64 %15, %i.ir
  br i1 %i.tb, label %.lr.ph.i.i41, label %.preheader.loopexit.i.i44, !llvm.loop !141

.lr.ph27.i.i37:                                   ; preds = %.lr.ph27.i.i37.prol.loopexit, %.lr.ph27.i.i37
  %indvars.iv29.i.i38 = phi i64 [ %indvars.iv.next30.i.i39.1, %.lr.ph27.i.i37 ], [ %indvars.iv29.i.i38.unr, %.lr.ph27.i.i37.prol.loopexit ] ; 5 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %.1190.i, i64 %indvars.iv29.i.i38
  %i.td = load float, ptr %i.tc, align 4, !tbaa !61
  %i.te = fmul fast float %i.td, %i.rh
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %.1192.i, i64 %indvars.iv29.i.i38
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !61
  %i.th = fmul fast float %i.tg, %i.rj
  %i.ti = fadd fast float %i.th, %i.te
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv29.i.i38
  store float %i.ti, ptr %i.tj, align 4, !tbaa !61
  %indvars.iv.next30.i.i39 = add nuw nsw i64 %indvars.iv29.i.i38, 1 ; 3 uses
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %.1190.i, i64 %indvars.iv.next30.i.i39
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !61
  %i.tm = fmul fast float %i.tl, %i.rh
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %.1192.i, i64 %indvars.iv.next30.i.i39
  %i.to = load float, ptr %i.tn, align 4, !tbaa !61
  %i.tp = fmul fast float %i.to, %i.rj
  %i.tq = fadd fast float %i.tp, %i.tm
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv.next30.i.i39
  store float %i.tq, ptr %i.tr, align 4, !tbaa !61
  %indvars.iv.next30.i.i39.1 = add nuw nsw i64 %indvars.iv29.i.i38, 2 ; 2 uses
  %exitcond.not.i.i40.1 = icmp eq i64 %indvars.iv.next30.i.i39.1, %i.ir
  br i1 %exitcond.not.i.i40.1, label %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i35, label %.lr.ph27.i.i37, !llvm.loop !149

_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i35: ; preds = %.lr.ph27.i.i37.prol.loopexit, %.lr.ph27.i.i37, %middle.block, %.preheader.i.i33
  %i.ts = getelementptr inbounds nuw i8, ptr %.0259.i, i64 8
  %indvars.iv.next278.i = add nuw nsw i64 %indvars.iv277.i, 1 ; 2 uses
  %exitcond281.not.i = icmp eq i64 %indvars.iv.next278.i, %wide.trip.count280.i
  br i1 %exitcond281.not.i, label %._crit_edge.i31, label %bb.ap, !llvm.loop !150

bb.at:                                            ; preds = %bb.ao
  %i.tt = atomicrmw add ptr %i.jt, i32 -1 acq_rel, align 4
  %i.tu = icmp eq i32 %i.tt, 1
  br i1 %i.tu, label %bb.au, label %_ZN4ncnn3MatD2Ev.exit.i30

bb.au:                                            ; preds = %bb.at
  %i.tv = load ptr, ptr %i.z, align 8, !tbaa !42  ; 3 uses
  %.not3.i218.i = icmp eq ptr %i.tv, null
  %i.tw = load ptr, ptr %10, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i218.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.tx = load ptr, ptr %i.tv, align 8, !tbaa !13
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 24
  %i.tz = load ptr, ptr %i.ty, align 8
  invoke void %i.tz(ptr noundef nonnull align 8 dereferenceable(8) %i.tv, ptr noundef %i.tw)
          to label %_ZN4ncnn3MatD2Ev.exit.i30 unwind label %bb.ay, !inline_history !1

bb.aw:                                            ; preds = %bb.au
  %.not.i221.i = icmp eq ptr %i.tw, null
  br i1 %.not.i221.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.tw) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i30

bb.ay:                                            ; preds = %bb.av
  %i.ua = landingpad { ptr, i32 }
          catch ptr null
  %i.ub = extractvalue { ptr, i32 } %i.ua, 0
  call void @__clang_call_terminate(ptr %i.ub) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i30:                        ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %.body

_ZN4ncnnL21resize_bilinear_imageERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit207.i, %bb.ai, %bb.ak, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL21resize_bilinear_imageERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.aa
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.uc = load i32, ptr %i.b, align 4, !tbaa !28
  %i.ud = sext i32 %i.uc to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ud
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge, %bb.a
  ret void

bb.ba:                                            ; preds = %bb.ab, %bb.c
  %i.ue = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.ba, %_ZN4ncnn3MatD2Ev.exit.i30, %_ZN4ncnn3MatD2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ci, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.ue, %bb.ba ], [ %i.js, %_ZN4ncnn3MatD2Ev.exit.i30 ]
  %i.uf = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.uf) #22
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 10 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.dh

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not184 = icmp sgt i32 %i.k, %i.j
  br i1 %.not184, label %._crit_edge, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.aq = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.aq, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.ar = load i32, ptr %i.l, align 4, !tbaa !29, !noalias !172
  %i.as = load ptr, ptr %3, align 8, !tbaa !43, !noalias !172
  %i.at = load i64, ptr %i.m, align 8, !tbaa !37, !noalias !172
  %i.au = mul i64 %i.at, %indvars.iv
  %i.av = load i64, ptr %i.n, align 8, !tbaa !32, !noalias !172 ; 3 uses
  %i.aw = mul i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw ; 20 uses
  %i.ay = sext i32 %i.ar to i64                   ; 2 uses
  %i.az = load i32, ptr %i.o, align 4, !tbaa !29, !noalias !173 ; 18 uses
  %i.ba = load i32, ptr %i.p, align 8, !tbaa !27, !noalias !173 ; 4 uses
  %i.bb = load ptr, ptr %4, align 8, !tbaa !43, !noalias !173 ; 2 uses
  %i.bc = ptrtoaddr ptr %i.bb to i64              ; 2 uses
  %i.bd = load i64, ptr %i.q, align 8, !tbaa !37, !noalias !173
  %i.be = mul i64 %i.bd, %indvars.iv
  %i.bf = load i64, ptr %i.r, align 8, !tbaa !32, !noalias !173 ; 5 uses
  %i.bg = mul i64 %i.be, %i.bf                    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg ; 2 uses
  %i.bi = sext i32 %i.az to i64                   ; 4 uses
  %i.bj = load i32, ptr %5, align 4, !tbaa !28    ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 4
end_hunk_3
begin_hunk_4_@_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.7:bb.a

bb.al:                                            ; preds = %bb.aj
  %i.ld = add nsw i32 %i.dw, -1
  %i.le = sext i32 %i.ld to i64
  %i.lf = mul i64 %i.by, %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.lf
  %i.lh = sext i32 %i.dw to i64
  %i.li = mul i64 %i.by, %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.li
  %i.lk = add nsw i32 %i.dw, 1
  %i.ll = sext i32 %i.lk to i64
  %i.lm = mul i64 %i.by, %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.lm
  %i.lo = add nsw i32 %i.dw, 2
  %i.lp = sext i32 %i.lo to i64
  %i.lq = mul i64 %i.by, %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.lq
  br i1 %i.bu, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.al, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.al ] ; 3 uses
  %.0225409.i = phi ptr [ %i.oy, %.lr.ph.i ], [ %i.bl, %bb.al ] ; 5 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !28
  %i.lu = shl nsw i32 %i.lt, 2
  %i.lv = sext i32 %i.lu to i64                   ; 4 uses
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %i.lv ; 4 uses
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.lv ; 4 uses
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.ln, i64 %i.lv ; 4 uses
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.lv ; 4 uses
  %i.ma = load float, ptr %.0225409.i, align 4, !tbaa !61
  %i.mb = insertelement <4 x float> poison, float %i.ma, i64 0
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0225409.i, i64 4
  %i.me = load float, ptr %i.md, align 4, !tbaa !61
  %i.mf = insertelement <4 x float> poison, float %i.me, i64 0
  %i.mg = shufflevector <4 x float> %i.mf, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.0225409.i, i64 8
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !61
  %i.mj = insertelement <4 x float> poison, float %i.mi, i64 0
  %i.mk = shufflevector <4 x float> %i.mj, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.0225409.i, i64 12
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !61
  %i.mn = insertelement <4 x float> poison, float %i.mm, i64 0
  %i.mo = shufflevector <4 x float> %i.mn, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.mp = getelementptr inbounds i8, ptr %i.lw, i64 -16
  %i.mq = load <4 x float>, ptr %i.mp, align 16, !tbaa !20
  %i.mr = load <4 x float>, ptr %i.lw, align 16, !tbaa !20
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.mt = load <4 x float>, ptr %i.ms, align 16, !tbaa !20
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.mv = load <4 x float>, ptr %i.mu, align 16, !tbaa !20
  %i.mw = getelementptr inbounds i8, ptr %i.lx, i64 -16
  %i.mx = load <4 x float>, ptr %i.mw, align 16, !tbaa !20
  %i.my = load <4 x float>, ptr %i.lx, align 16, !tbaa !20
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.na = load <4 x float>, ptr %i.mz, align 16, !tbaa !20
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.nc = load <4 x float>, ptr %i.nb, align 16, !tbaa !20
  %i.nd = getelementptr inbounds i8, ptr %i.ly, i64 -16
  %i.ne = load <4 x float>, ptr %i.nd, align 16, !tbaa !20
  %i.nf = load <4 x float>, ptr %i.ly, align 16, !tbaa !20
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.nh = load <4 x float>, ptr %i.ng, align 16, !tbaa !20
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  %i.nj = load <4 x float>, ptr %i.ni, align 16, !tbaa !20
  %i.nk = getelementptr inbounds i8, ptr %i.lz, i64 -16
  %i.nl = load <4 x float>, ptr %i.nk, align 16, !tbaa !20
  %i.nm = load <4 x float>, ptr %i.lz, align 16, !tbaa !20
  %i.nn = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.no = load <4 x float>, ptr %i.nn, align 16, !tbaa !20
  %i.np = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.nq = load <4 x float>, ptr %i.np, align 16, !tbaa !20
  %i.nr = fmul fast <4 x float> %i.mq, %i.mc
  %i.ns = fmul fast <4 x float> %i.mx, %i.mc
  %i.nt = fmul fast <4 x float> %i.ne, %i.mc
  %i.nu = fmul fast <4 x float> %i.nl, %i.mc
  %i.nv = fmul fast <4 x float> %i.mr, %i.mg
  %i.nw = fadd fast <4 x float> %i.nv, %i.nr
  %i.nx = fmul fast <4 x float> %i.my, %i.mg
  %i.ny = fadd fast <4 x float> %i.nx, %i.ns
  %i.nz = fmul fast <4 x float> %i.nf, %i.mg
  %i.oa = fadd fast <4 x float> %i.nz, %i.nt
  %i.ob = fmul fast <4 x float> %i.nm, %i.mg
  %i.oc = fadd fast <4 x float> %i.ob, %i.nu
  %i.od = fmul fast <4 x float> %i.mt, %i.mk
  %i.oe = fadd fast <4 x float> %i.nw, %i.od
  %i.of = fmul fast <4 x float> %i.na, %i.mk
  %i.og = fadd fast <4 x float> %i.ny, %i.of
  %i.oh = fmul fast <4 x float> %i.nh, %i.mk
  %i.oi = fadd fast <4 x float> %i.oa, %i.oh
  %i.oj = fmul fast <4 x float> %i.no, %i.mk
  %i.ok = fadd fast <4 x float> %i.oc, %i.oj
  %i.ol = fmul fast <4 x float> %i.mv, %i.mo
  %i.om = fadd fast <4 x float> %i.oe, %i.ol
  %i.on = fmul fast <4 x float> %i.nc, %i.mo
  %i.oo = fadd fast <4 x float> %i.og, %i.on
  %i.op = fmul fast <4 x float> %i.nj, %i.mo
  %i.oq = fadd fast <4 x float> %i.oi, %i.op
  %i.or = fmul fast <4 x float> %i.nq, %i.mo
  %i.os = fadd fast <4 x float> %i.ok, %i.or
  %i.ot = shl nuw nsw i64 %indvars.iv.i, 2        ; 4 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %.0239421.i, i64 %i.ot
  store <4 x float> %i.om, ptr %i.ou, align 16, !tbaa !20
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.0237422.i, i64 %i.ot
  store <4 x float> %i.oo, ptr %i.ov, align 16, !tbaa !20
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.0235423.i, i64 %i.ot
  store <4 x float> %i.oq, ptr %i.ow, align 16, !tbaa !20
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.0234424.i, i64 %i.ot
  store <4 x float> %i.os, ptr %i.ox, align 16, !tbaa !20
  %i.oy = getelementptr inbounds nuw i8, ptr %.0225409.i, i64 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !160

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph413.i, %.lr.ph416.i, %.lr.ph419.i, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %.1240.i = phi ptr [ %.0239421.i, %bb.ae ], [ %.0237422.i, %bb.ag ], [ %.0235423.i, %bb.ai ], [ %.0234424.i, %bb.ak ], [ %.0239421.i, %bb.al ], [ %.0234424.i, %.lr.ph413.i ], [ %.0237422.i, %.lr.ph419.i ], [ %.0235423.i, %.lr.ph416.i ], [ %.0239421.i, %.lr.ph.i ] ; 5 uses
  %.1238.i = phi ptr [ %.0237422.i, %bb.ae ], [ %.0235423.i, %bb.ag ], [ %.0234424.i, %bb.ai ], [ %.0239421.i, %bb.ak ], [ %.0237422.i, %bb.al ], [ %.0239421.i, %.lr.ph413.i ], [ %.0235423.i, %.lr.ph419.i ], [ %.0234424.i, %.lr.ph416.i ], [ %.0237422.i, %.lr.ph.i ] ; 5 uses
  %.1236.i = phi ptr [ %.0235423.i, %bb.ae ], [ %.0234424.i, %bb.ag ], [ %.0239421.i, %bb.ai ], [ %.0237422.i, %bb.ak ], [ %.0235423.i, %bb.al ], [ %.0237422.i, %.lr.ph413.i ], [ %.0234424.i, %.lr.ph419.i ], [ %.0239421.i, %.lr.ph416.i ], [ %.0235423.i, %.lr.ph.i ] ; 5 uses
  %.1.i = phi ptr [ %.0234424.i, %bb.ae ], [ %.0239421.i, %bb.ag ], [ %.0237422.i, %bb.ai ], [ %.0235423.i, %bb.ak ], [ %.0234424.i, %bb.al ], [ %.0235423.i, %.lr.ph413.i ], [ %.0239421.i, %.lr.ph419.i ], [ %.0237422.i, %.lr.ph416.i ], [ %.0234424.i, %.lr.ph.i ] ; 5 uses
  %.1.i271 = ptrtoaddr ptr %.1.i to i64
  %.1236.i273 = ptrtoaddr ptr %.1236.i to i64
  %.1238.i276 = ptrtoaddr ptr %.1238.i to i64
  %.1240.i279 = ptrtoaddr ptr %.1240.i to i64
  %i.oz = mul i64 %i.bx, %indvars.iv447.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.oz ; 3 uses
  %i.pb = load <4 x float>, ptr %.0247420.i, align 4, !tbaa !61 ; 5 uses
  %i.pc = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pd = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.pe = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.pf = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  br i1 %i.bu, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.loopexit.i.i:                          ; preds = %.lr.ph.i.i
  %i.pg = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.loopexit.i
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i ], [ %i.pg, %.preheader.loopexit.i.i ] ; 2 uses
  %i.ph = icmp slt i32 %.0.lcssa.i.i, %i.bv
  br i1 %i.ph, label %.lr.ph45.preheader.i.i, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i

.lr.ph45.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.pi = zext i32 %.0.lcssa.i.i to i64           ; 5 uses
  %i.pj = sub nsw i64 %i.bw, %i.pi                ; 3 uses
  %min.iters.check283 = icmp ult i64 %i.pj, 4
  br i1 %min.iters.check283, label %.lr.ph45.i.i.preheader, label %vector.memcheck270

vector.memcheck270:                               ; preds = %.lr.ph45.preheader.i.i
  %i.pk = sub i64 %.1.i271, %i.du
  %diff.check272 = icmp ugt i64 %i.pk, -16
  %i.pl = sub i64 %.1236.i273, %i.du
  %diff.check274 = icmp ugt i64 %i.pl, -16
  %conflict.rdx275 = or i1 %diff.check272, %diff.check274
  %i.pm = sub i64 %.1238.i276, %i.du
  %diff.check277 = icmp ugt i64 %i.pm, -16
  %conflict.rdx278 = or i1 %conflict.rdx275, %diff.check277
  %i.pn = sub i64 %.1240.i279, %i.du
  %diff.check280 = icmp ugt i64 %i.pn, -16
  %conflict.rdx281 = or i1 %conflict.rdx278, %diff.check280
  br i1 %conflict.rdx281, label %.lr.ph45.i.i.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %vector.memcheck270
  %n.vec285 = and i64 %i.pj, -4                   ; 3 uses
  %i.po = add nsw i64 %n.vec285, %i.pi
  br label %vector.body294

vector.body294:                                   ; preds = %vector.body294, %vector.ph284
  %index295 = phi i64 [ 0, %vector.ph284 ], [ %index.next300, %vector.body294 ] ; 2 uses
  %i.pp = add nuw i64 %index295, %i.pi            ; 5 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %i.pp
  %wide.load296 = load <4 x float>, ptr %i.pq, align 4, !tbaa !61
  %i.pr = fmul fast <4 x float> %wide.load296, %i.pc
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %.1238.i, i64 %i.pp
  %wide.load297 = load <4 x float>, ptr %i.ps, align 4, !tbaa !61
  %i.pt = fmul fast <4 x float> %wide.load297, %i.pd
  %i.pu = fadd fast <4 x float> %i.pt, %i.pr
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %.1236.i, i64 %i.pp
  %wide.load298 = load <4 x float>, ptr %i.pv, align 4, !tbaa !61
  %i.pw = fmul fast <4 x float> %wide.load298, %i.pe
  %i.px = fadd fast <4 x float> %i.pu, %i.pw
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %i.pp
  %wide.load299 = load <4 x float>, ptr %i.py, align 4, !tbaa !61
  %i.pz = fmul fast <4 x float> %wide.load299, %i.pf
  %i.qa = fadd fast <4 x float> %i.px, %i.pz
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %i.pp
  store <4 x float> %i.qa, ptr %i.qb, align 4, !tbaa !61
  %index.next300 = add nuw i64 %index295, 4       ; 2 uses
  %i.qc = icmp eq i64 %index.next300, %n.vec285
  br i1 %i.qc, label %middle.block301, label %vector.body294, !llvm.loop !161

middle.block301:                                  ; preds = %vector.body294
  %cmp.n302 = icmp eq i64 %i.pj, %n.vec285
  br i1 %cmp.n302, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i, label %.lr.ph45.i.i.preheader

.lr.ph45.i.i.preheader:                           ; preds = %vector.memcheck270, %.lr.ph45.preheader.i.i, %middle.block301
  %indvars.iv47.i.i.ph = phi i64 [ %i.pi, %vector.memcheck270 ], [ %i.pi, %.lr.ph45.preheader.i.i ], [ %i.po, %middle.block301 ]
  br label %.lr.ph45.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.loopexit.i ] ; 6 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %indvars.iv.i.i
  %i.qe = load <4 x float>, ptr %i.qd, align 1, !tbaa !20
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.1238.i, i64 %indvars.iv.i.i
  %i.qg = load <4 x float>, ptr %i.qf, align 1, !tbaa !20
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.1236.i, i64 %indvars.iv.i.i
  %i.qi = load <4 x float>, ptr %i.qh, align 1, !tbaa !20
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %indvars.iv.i.i
  %i.qk = load <4 x float>, ptr %i.qj, align 1, !tbaa !20
  %i.ql = fmul fast <4 x float> %i.qe, %i.pc
  %i.qm = fmul fast <4 x float> %i.qg, %i.pd
  %i.qn = fadd fast <4 x float> %i.qm, %i.ql
  %i.qo = fmul fast <4 x float> %i.qi, %i.pe
  %i.qp = fadd fast <4 x float> %i.qn, %i.qo
  %i.qq = fmul fast <4 x float> %i.qk, %i.pf
  %i.qr = fadd fast <4 x float> %i.qp, %i.qq
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv.i.i
  store <4 x float> %i.qr, ptr %i.qs, align 1, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 4 ; 3 uses
  %18 = or disjoint i64 %indvars.iv.next.i.i, 3
  %i.qt = icmp samesign ult i64 %18, %i.bw
  br i1 %i.qt, label %.lr.ph.i.i, label %.preheader.loopexit.i.i, !llvm.loop !162

.lr.ph45.i.i:                                     ; preds = %.lr.ph45.i.i.preheader, %.lr.ph45.i.i
  %indvars.iv47.i.i = phi i64 [ %indvars.iv.next48.i.i, %.lr.ph45.i.i ], [ %indvars.iv47.i.i.ph, %.lr.ph45.i.i.preheader ] ; 6 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %indvars.iv47.i.i
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !61
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %.1238.i, i64 %indvars.iv47.i.i
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !61
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %.1236.i, i64 %indvars.iv47.i.i
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !61
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %indvars.iv47.i.i
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !61
  %i.rc = insertelement <4 x float> poison, float %i.qv, i64 0
  %i.rd = insertelement <4 x float> %i.rc, float %i.qx, i64 1
  %i.re = insertelement <4 x float> %i.rd, float %i.qz, i64 2
  %i.rf = insertelement <4 x float> %i.re, float %i.rb, i64 3
  %i.rg = fmul fast <4 x float> %i.rf, %i.pb
  %i.rh = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.rg)
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv47.i.i
  store float %i.rh, ptr %i.ri, align 4, !tbaa !61
  %indvars.iv.next48.i.i = add nuw nsw i64 %indvars.iv47.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next48.i.i, %i.bw
  br i1 %exitcond.not.i.i, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i, label %.lr.ph45.i.i, !llvm.loop !163

_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i: ; preds = %.lr.ph45.i.i, %middle.block301, %.preheader.i.i
  %i.rj = getelementptr inbounds nuw i8, ptr %.0247420.i, i64 16
  %indvars.iv.next448.i = add nuw nsw i64 %indvars.iv447.i, 1 ; 2 uses
  %exitcond451.not.i = icmp eq i64 %indvars.iv.next448.i, %wide.trip.count450.i
  br i1 %exitcond451.not.i, label %._crit_edge.i, label %bb.ae, !llvm.loop !164

bb.am:                                            ; preds = %bb.ad
  %i.rk = atomicrmw add ptr %i.ds, i32 -1 acq_rel, align 4
  %i.rl = icmp eq i32 %i.rk, 1
  br i1 %i.rl, label %bb.an, label %_ZN4ncnn3MatD2Ev.exit254.i

bb.an:                                            ; preds = %bb.am
  %i.rm = load ptr, ptr %i.z, align 8, !tbaa !42  ; 3 uses
  %.not3.i277.i = icmp eq ptr %i.rm, null
  %i.rn = load ptr, ptr %16, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i277.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ro = load ptr, ptr %i.rm, align 8, !tbaa !13
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.rq = load ptr, ptr %i.rp, align 8
  invoke void %i.rq(ptr noundef nonnull align 8 dereferenceable(8) %i.rm, ptr noundef %i.rn)
          to label %_ZN4ncnn3MatD2Ev.exit254.i unwind label %bb.ar, !inline_history !1

bb.ap:                                            ; preds = %bb.an
  %.not.i291.i = icmp eq ptr %i.rn, null
  br i1 %.not.i291.i, label %_ZN4ncnn3MatD2Ev.exit254.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.rn) #6
  br label %_ZN4ncnn3MatD2Ev.exit254.i

bb.ar:                                            ; preds = %bb.ao
  %i.rr = landingpad { ptr, i32 }
          catch ptr null
  %i.rs = extractvalue { ptr, i32 } %i.rr, 0
  call void @__clang_call_terminate(ptr %i.rs) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit254.i:                       ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.ad, %bb.ac
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.dq, %bb.ac ], [ %i.dr, %bb.am ], [ %i.dr, %bb.ad ], [ %i.dr, %bb.ao ], [ %i.dr, %bb.ap ], [ %i.dr, %bb.aq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.rt = load ptr, ptr %i.v, align 8, !tbaa !41  ; 2 uses
  %.not.i280.i = icmp eq ptr %i.rt, null
  br i1 %.not.i280.i, label %_ZN4ncnn3MatD2Ev.exit253.i, label %bb.as

bb.as:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit254.i
  %i.ru = atomicrmw add ptr %i.rt, i32 -1 acq_rel, align 4
  %i.rv = icmp eq i32 %i.ru, 1
  br i1 %i.rv, label %bb.at, label %_ZN4ncnn3MatD2Ev.exit253.i

bb.at:                                            ; preds = %bb.as
  %i.rw = load ptr, ptr %i.w, align 8, !tbaa !42  ; 3 uses
  %.not3.i281.i = icmp eq ptr %i.rw, null
  %i.rx = load ptr, ptr %15, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i281.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ry = load ptr, ptr %i.rw, align 8, !tbaa !13
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  %i.sa = load ptr, ptr %i.rz, align 8
  invoke void %i.sa(ptr noundef nonnull align 8 dereferenceable(8) %i.rw, ptr noundef %i.rx)
          to label %_ZN4ncnn3MatD2Ev.exit253.i unwind label %bb.ax, !inline_history !1

bb.av:                                            ; preds = %bb.at
  %.not.i289.i = icmp eq ptr %i.rx, null
  br i1 %.not.i289.i, label %_ZN4ncnn3MatD2Ev.exit253.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.rx) #6
  br label %_ZN4ncnn3MatD2Ev.exit253.i

bb.ax:                                            ; preds = %bb.au
  %i.sb = landingpad { ptr, i32 }
          catch ptr null
  %i.sc = extractvalue { ptr, i32 } %i.sb, 0
  call void @__clang_call_terminate(ptr %i.sc) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit253.i:                       ; preds = %bb.aw, %bb.av, %bb.au, %bb.as, %_ZN4ncnn3MatD2Ev.exit254.i, %bb.ab
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.dp, %bb.ab ], [ %.pn.pn.pn.i, %bb.as ], [ %.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit254.i ], [ %.pn.pn.pn.i, %bb.au ], [ %.pn.pn.pn.i, %bb.av ], [ %.pn.pn.pn.i, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  %i.sd = load ptr, ptr %i.s, align 8, !tbaa !41  ; 2 uses
  %.not.i284.i = icmp eq ptr %i.sd, null
  br i1 %.not.i284.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit253.i
  %i.se = atomicrmw add ptr %i.sd, i32 -1 acq_rel, align 4
  %i.sf = icmp eq i32 %i.se, 1
  br i1 %i.sf, label %bb.az, label %_ZN4ncnn3MatD2Ev.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.sg = load ptr, ptr %i.t, align 8, !tbaa !42  ; 3 uses
  %.not3.i285.i = icmp eq ptr %i.sg, null
  %i.sh = load ptr, ptr %14, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i285.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.si = load ptr, ptr %i.sg, align 8, !tbaa !13
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 24
  %i.sk = load ptr, ptr %i.sj, align 8
  invoke void %i.sk(ptr noundef nonnull align 8 dereferenceable(8) %i.sg, ptr noundef %i.sh)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.bd, !inline_history !1

bb.bb:                                            ; preds = %bb.az
  %.not.i288.i = icmp eq ptr %i.sh, null
  br i1 %.not.i288.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.sh) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.bd:                                            ; preds = %bb.ba
  %i.sl = landingpad { ptr, i32 }
          catch ptr null
  %i.sm = extractvalue { ptr, i32 } %i.sl, 0
  call void @__clang_call_terminate(ptr %i.sm) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ay, %_ZN4ncnn3MatD2Ev.exit253.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  br label %.body

_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit256.i, %bb.v, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  %.pr = load i32, ptr %5, align 4, !tbaa !28
  br label %bb.be

bb.be:                                            ; preds = %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.sn = phi i32 [ %.pr, %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.bj, %_ZNK4ncnn3Mat7channelEi.exit ]
  %i.so = icmp eq i32 %i.sn, 1
  br i1 %i.so, label %bb.bf, label %_ZN4ncnn3MatD2Ev.exit

bb.bf:                                            ; preds = %bb.be
  %i.sp = load ptr, ptr %6, align 8, !tbaa !64    ; 5 uses
  %i.sq = load ptr, ptr %7, align 8, !tbaa !62    ; 6 uses
  %i.sr = load ptr, ptr %8, align 8, !tbaa !64
  %i.ss = load ptr, ptr %9, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  store i64 0, ptr %i.ag, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.af, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.az, i64 noundef 4, ptr noundef null)
          to label %.noexc50 unwind label %bb.di

.noexc50:                                         ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  store i64 0, ptr %i.aj, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.az, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i unwind label %bb.ce

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i:       ; preds = %.noexc50
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  store i64 0, ptr %i.am, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.al, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.az, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i unwind label %bb.cf

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i:       ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  store i64 0, ptr %i.ap, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ao, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.az, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.cg

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i
  %i.st = icmp sgt i32 %i.ba, 0
  br i1 %i.st, label %.lr.ph347.i, label %._crit_edge.i32

.lr.ph347.i:                                      ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.su = load ptr, ptr %13, align 8, !tbaa !43
end_hunk_4
begin_hunk_5_@_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.7:bb.a
  %i.xr = mul i64 %i.tc, %i.xq
  %i.xs = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.xr
  br i1 %i.sy, label %.lr.ph333.i, label %.loopexit.i33

.lr.ph333.i:                                      ; preds = %bb.cn, %.lr.ph333.i
  %indvars.iv352.i = phi i64 [ %indvars.iv.next353.i, %.lr.ph333.i ], [ 0, %bb.cn ] ; 5 uses
  %.0264331.i = phi ptr [ %i.yp, %.lr.ph333.i ], [ %i.sp, %bb.cn ] ; 2 uses
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %indvars.iv352.i
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !28
  %i.xv = sext i32 %i.xu to i64                   ; 3 uses
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.xk, i64 %i.xv
  %i.xx = getelementptr inbounds [4 x i8], ptr %i.xo, i64 %i.xv
  %i.xy = getelementptr inbounds [4 x i8], ptr %i.xs, i64 %i.xv
  %i.xz = getelementptr inbounds i8, ptr %i.xw, i64 -4
  %i.ya = load <4 x float>, ptr %.0264331.i, align 4, !tbaa !61 ; 3 uses
  %i.yb = load <4 x float>, ptr %i.xz, align 4, !tbaa !61
  %i.yc = fmul fast <4 x float> %i.yb, %i.ya
  %i.yd = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.yc)
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv352.i
  store float %i.yd, ptr %i.ye, align 4, !tbaa !61
  %i.yf = getelementptr inbounds i8, ptr %i.xx, i64 -4
  %i.yg = load <4 x float>, ptr %i.yf, align 4, !tbaa !61
  %i.yh = fmul fast <4 x float> %i.yg, %i.ya
  %i.yi = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.yh)
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %indvars.iv352.i
  store float %i.yi, ptr %i.yj, align 4, !tbaa !61
  %i.yk = getelementptr inbounds i8, ptr %i.xy, i64 -4
  %i.yl = load <4 x float>, ptr %i.yk, align 4, !tbaa !61
  %i.ym = fmul fast <4 x float> %i.yl, %i.ya
  %i.yn = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ym)
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %indvars.iv352.i
  store float %i.yn, ptr %i.yo, align 4, !tbaa !61
  %i.yp = getelementptr inbounds nuw i8, ptr %.0264331.i, i64 16
  %indvars.iv.next353.i = add nuw nsw i64 %indvars.iv352.i, 1 ; 2 uses
  %exitcond356.not.i = icmp eq i64 %indvars.iv.next353.i, %i.ta
  br i1 %exitcond356.not.i, label %.loopexit.i33, label %.lr.ph333.i, !llvm.loop !167

bb.co:                                            ; preds = %bb.cm
  %i.yq = add nsw i32 %i.vb, -1
  %i.yr = sext i32 %i.yq to i64
  %i.ys = mul i64 %i.tc, %i.yr
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ys
  %i.yu = sext i32 %i.vb to i64
  %i.yv = mul i64 %i.tc, %i.yu
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.yv
  %i.yx = add nsw i32 %i.vb, 1
  %i.yy = sext i32 %i.yx to i64
  %i.yz = mul i64 %i.tc, %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.yz
  %i.zb = add nsw i32 %i.vb, 2
  %i.zc = sext i32 %i.zb to i64
  %i.zd = mul i64 %i.tc, %i.zc
  %i.ze = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.zd
  br i1 %i.sy, label %.lr.ph.i46, label %.loopexit.i33

.lr.ph.i46:                                       ; preds = %bb.co, %.lr.ph.i46
  %indvars.iv.i47 = phi i64 [ %indvars.iv.next.i48, %.lr.ph.i46 ], [ 0, %bb.co ] ; 6 uses
  %.0258329.i = phi ptr [ %i.aah, %.lr.ph.i46 ], [ %i.sp, %bb.co ] ; 2 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %indvars.iv.i47
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !28
  %i.zh = sext i32 %i.zg to i64                   ; 4 uses
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.yt, i64 %i.zh
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.yw, i64 %i.zh
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.za, i64 %i.zh
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.ze, i64 %i.zh
  %i.zm = getelementptr inbounds i8, ptr %i.zi, i64 -4
  %i.zn = load <4 x float>, ptr %.0258329.i, align 4, !tbaa !61 ; 4 uses
  %i.zo = load <4 x float>, ptr %i.zm, align 4, !tbaa !61
  %i.zp = fmul fast <4 x float> %i.zo, %i.zn
  %i.zq = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.zp)
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv.i47
  store float %i.zq, ptr %i.zr, align 4, !tbaa !61
  %i.zs = getelementptr inbounds i8, ptr %i.zj, i64 -4
  %i.zt = load <4 x float>, ptr %i.zs, align 4, !tbaa !61
  %i.zu = fmul fast <4 x float> %i.zt, %i.zn
  %i.zv = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.zu)
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %indvars.iv.i47
  store float %i.zv, ptr %i.zw, align 4, !tbaa !61
  %i.zx = getelementptr inbounds i8, ptr %i.zk, i64 -4
  %i.zy = load <4 x float>, ptr %i.zx, align 4, !tbaa !61
  %i.zz = fmul fast <4 x float> %i.zy, %i.zn
  %i.aaa = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.zz)
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %indvars.iv.i47
  store float %i.aaa, ptr %i.aab, align 4, !tbaa !61
  %i.aac = getelementptr inbounds i8, ptr %i.zl, i64 -4
  %i.aad = load <4 x float>, ptr %i.aac, align 4, !tbaa !61
  %i.aae = fmul fast <4 x float> %i.aad, %i.zn
  %i.aaf = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.aae)
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %.0255342.i, i64 %indvars.iv.i47
  store float %i.aaf, ptr %i.aag, align 4, !tbaa !61
  %i.aah = getelementptr inbounds nuw i8, ptr %.0258329.i, i64 16
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, %i.ta
  br i1 %exitcond.not.i49, label %.loopexit.i33, label %.lr.ph.i46, !llvm.loop !168

.loopexit.i33.loopexit.unr-lcssa:                 ; preds = %.lr.ph339.i
  br i1 %lcmp.mod.not, label %.loopexit.i33, label %.lr.ph339.i.epil.preheader

.lr.ph339.i.epil.preheader:                       ; preds = %.loopexit.i33.loopexit.unr-lcssa, %.lr.ph339.i.preheader
  %indvars.iv362.i.epil.init = phi i64 [ 0, %.lr.ph339.i.preheader ], [ %indvars.iv.next363.i.1, %.loopexit.i33.loopexit.unr-lcssa ] ; 2 uses
  %.0261338.i.epil.init = phi ptr [ %i.sp, %.lr.ph339.i.preheader ], [ %i.we, %.loopexit.i33.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod310)
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %indvars.iv362.i.epil.init
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !28
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds [4 x i8], ptr %i.vi, i64 %i.aak
  %i.aam = getelementptr inbounds i8, ptr %i.aal, i64 -4
  %i.aan = load <4 x float>, ptr %.0261338.i.epil.init, align 4, !tbaa !61
  %i.aao = load <4 x float>, ptr %i.aam, align 4, !tbaa !61
  %i.aap = fmul fast <4 x float> %i.aao, %i.aan
  %i.aaq = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.aap)
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv362.i.epil.init
  store float %i.aaq, ptr %i.aar, align 4, !tbaa !61
  br label %.loopexit.i33

.loopexit.i33:                                    ; preds = %.lr.ph.i46, %.lr.ph333.i, %.lr.ph336.i, %.lr.ph339.i.epil.preheader, %.loopexit.i33.loopexit.unr-lcssa, %bb.co, %bb.cn, %bb.cl, %bb.cj, %bb.ch
  %.1256.i = phi ptr [ %.0255342.i, %bb.ch ], [ %.0249345.i, %bb.cj ], [ %.0251344.i, %bb.cl ], [ %.0253343.i, %bb.cn ], [ %.0255342.i, %bb.co ], [ %.0253343.i, %.lr.ph333.i ], [ %.0249345.i, %.lr.ph339.i.epil.preheader ], [ %.0251344.i, %.lr.ph336.i ], [ %.0249345.i, %.loopexit.i33.loopexit.unr-lcssa ], [ %.0255342.i, %.lr.ph.i46 ] ; 5 uses
  %.1254.i = phi ptr [ %.0253343.i, %bb.ch ], [ %.0255342.i, %bb.cj ], [ %.0249345.i, %bb.cl ], [ %.0251344.i, %bb.cn ], [ %.0253343.i, %bb.co ], [ %.0251344.i, %.lr.ph333.i ], [ %.0255342.i, %.lr.ph339.i.epil.preheader ], [ %.0249345.i, %.lr.ph336.i ], [ %.0255342.i, %.loopexit.i33.loopexit.unr-lcssa ], [ %.0253343.i, %.lr.ph.i46 ] ; 5 uses
  %.1252.i = phi ptr [ %.0251344.i, %bb.ch ], [ %.0253343.i, %bb.cj ], [ %.0255342.i, %bb.cl ], [ %.0249345.i, %bb.cn ], [ %.0251344.i, %bb.co ], [ %.0249345.i, %.lr.ph333.i ], [ %.0253343.i, %.lr.ph339.i.epil.preheader ], [ %.0255342.i, %.lr.ph336.i ], [ %.0253343.i, %.loopexit.i33.loopexit.unr-lcssa ], [ %.0251344.i, %.lr.ph.i46 ] ; 5 uses
  %.1250.i = phi ptr [ %.0249345.i, %bb.ch ], [ %.0251344.i, %bb.cj ], [ %.0253343.i, %bb.cl ], [ %.0255342.i, %bb.cn ], [ %.0249345.i, %bb.co ], [ %.0255342.i, %.lr.ph333.i ], [ %.0251344.i, %.lr.ph339.i.epil.preheader ], [ %.0253343.i, %.lr.ph336.i ], [ %.0251344.i, %.loopexit.i33.loopexit.unr-lcssa ], [ %.0249345.i, %.lr.ph.i46 ] ; 5 uses
  %.1256.i252 = ptrtoaddr ptr %.1256.i to i64
  %.1254.i253 = ptrtoaddr ptr %.1254.i to i64
  %.1252.i255 = ptrtoaddr ptr %.1252.i to i64
  %.1250.i258 = ptrtoaddr ptr %.1250.i to i64
  %i.aas = mul i64 %i.tb, %indvars.iv367.i
  %i.aat = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.aas ; 3 uses
  %i.aau = load <4 x float>, ptr %.0346.i, align 4, !tbaa !61 ; 5 uses
  %i.aav = shufflevector <4 x float> %i.aau, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aaw = shufflevector <4 x float> %i.aau, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.aax = shufflevector <4 x float> %i.aau, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.aay = shufflevector <4 x float> %i.aau, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  br i1 %i.sz, label %.lr.ph.i.i42, label %.preheader.i.i34

.preheader.loopexit.i.i45:                        ; preds = %.lr.ph.i.i42
  %i.aaz = trunc nuw nsw i64 %indvars.iv.next.i.i44 to i32
  br label %.preheader.i.i34

.preheader.i.i34:                                 ; preds = %.preheader.loopexit.i.i45, %.loopexit.i33
  %.0.lcssa.i.i35 = phi i32 [ 0, %.loopexit.i33 ], [ %i.aaz, %.preheader.loopexit.i.i45 ] ; 2 uses
  %i.aba = icmp slt i32 %.0.lcssa.i.i35, %i.az
  br i1 %i.aba, label %.lr.ph45.preheader.i.i37, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i36

.lr.ph45.preheader.i.i37:                         ; preds = %.preheader.i.i34
  %i.abb = zext i32 %.0.lcssa.i.i35 to i64        ; 5 uses
  %i.abc = sub nsw i64 %i.ta, %i.abb              ; 3 uses
  %min.iters.check = icmp ult i64 %i.abc, 4
  br i1 %min.iters.check, label %.lr.ph45.i.i38.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph45.preheader.i.i37
  %i.abd = sub i64 %.1256.i252, %i.uz
  %diff.check = icmp ugt i64 %i.abd, -16
  %i.abe = sub i64 %.1254.i253, %i.uz
  %diff.check254 = icmp ugt i64 %i.abe, -16
  %conflict.rdx = or i1 %diff.check, %diff.check254
  %i.abf = sub i64 %.1252.i255, %i.uz
  %diff.check256 = icmp ugt i64 %i.abf, -16
  %conflict.rdx257 = or i1 %conflict.rdx, %diff.check256
  %i.abg = sub i64 %.1250.i258, %i.uz
  %diff.check259 = icmp ugt i64 %i.abg, -16
  %conflict.rdx260 = or i1 %conflict.rdx257, %diff.check259
  br i1 %conflict.rdx260, label %.lr.ph45.i.i38.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.abc, -4                     ; 3 uses
  %i.abh = add nsw i64 %n.vec, %i.abb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abi = add nuw i64 %index, %i.abb             ; 5 uses
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %i.abi
  %wide.load = load <4 x float>, ptr %i.abj, align 4, !tbaa !61
  %i.abk = fmul fast <4 x float> %wide.load, %i.aav
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %i.abi
  %wide.load267 = load <4 x float>, ptr %i.abl, align 4, !tbaa !61
  %i.abm = fmul fast <4 x float> %wide.load267, %i.aaw
  %i.abn = fadd fast <4 x float> %i.abm, %i.abk
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %i.abi
  %wide.load268 = load <4 x float>, ptr %i.abo, align 4, !tbaa !61
  %i.abp = fmul fast <4 x float> %wide.load268, %i.aax
  %i.abq = fadd fast <4 x float> %i.abn, %i.abp
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %i.abi
  %wide.load269 = load <4 x float>, ptr %i.abr, align 4, !tbaa !61
  %i.abs = fmul fast <4 x float> %wide.load269, %i.aay
  %i.abt = fadd fast <4 x float> %i.abq, %i.abs
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.aat, i64 %i.abi
  store <4 x float> %i.abt, ptr %i.abu, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abv = icmp eq i64 %index.next, %n.vec
  br i1 %i.abv, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abc, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i36, label %.lr.ph45.i.i38.preheader

.lr.ph45.i.i38.preheader:                         ; preds = %vector.memcheck, %.lr.ph45.preheader.i.i37, %middle.block
  %indvars.iv47.i.i39.ph = phi i64 [ %i.abb, %vector.memcheck ], [ %i.abb, %.lr.ph45.preheader.i.i37 ], [ %i.abh, %middle.block ]
  br label %.lr.ph45.i.i38

.lr.ph.i.i42:                                     ; preds = %.loopexit.i33, %.lr.ph.i.i42
  %indvars.iv.i.i43 = phi i64 [ %indvars.iv.next.i.i44, %.lr.ph.i.i42 ], [ 0, %.loopexit.i33 ] ; 6 uses
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv.i.i43
  %i.abx = load <4 x float>, ptr %i.abw, align 1, !tbaa !20
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv.i.i43
  %i.abz = load <4 x float>, ptr %i.aby, align 1, !tbaa !20
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv.i.i43
  %i.acb = load <4 x float>, ptr %i.aca, align 1, !tbaa !20
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv.i.i43
  %i.acd = load <4 x float>, ptr %i.acc, align 1, !tbaa !20
  %i.ace = fmul fast <4 x float> %i.abx, %i.aav
  %i.acf = fmul fast <4 x float> %i.abz, %i.aaw
  %i.acg = fadd fast <4 x float> %i.acf, %i.ace
  %i.ach = fmul fast <4 x float> %i.acb, %i.aax
  %i.aci = fadd fast <4 x float> %i.acg, %i.ach
  %i.acj = fmul fast <4 x float> %i.acd, %i.aay
  %i.ack = fadd fast <4 x float> %i.aci, %i.acj
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.aat, i64 %indvars.iv.i.i43
  store <4 x float> %i.ack, ptr %i.acl, align 1, !tbaa !20
  %indvars.iv.next.i.i44 = add nuw nsw i64 %indvars.iv.i.i43, 4 ; 3 uses
  %19 = or disjoint i64 %indvars.iv.next.i.i44, 3
  %i.acm = icmp samesign ult i64 %19, %i.ta
  br i1 %i.acm, label %.lr.ph.i.i42, label %.preheader.loopexit.i.i45, !llvm.loop !162

.lr.ph45.i.i38:                                   ; preds = %.lr.ph45.i.i38.preheader, %.lr.ph45.i.i38
  %indvars.iv47.i.i39 = phi i64 [ %indvars.iv.next48.i.i40, %.lr.ph45.i.i38 ], [ %indvars.iv47.i.i39.ph, %.lr.ph45.i.i38.preheader ] ; 6 uses
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv47.i.i39
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !61
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv47.i.i39
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !61
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv47.i.i39
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !61
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv47.i.i39
  %i.acu = load float, ptr %i.act, align 4, !tbaa !61
  %i.acv = insertelement <4 x float> poison, float %i.aco, i64 0
  %i.acw = insertelement <4 x float> %i.acv, float %i.acq, i64 1
  %i.acx = insertelement <4 x float> %i.acw, float %i.acs, i64 2
  %i.acy = insertelement <4 x float> %i.acx, float %i.acu, i64 3
  %i.acz = fmul fast <4 x float> %i.acy, %i.aau
  %i.ada = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.acz)
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.aat, i64 %indvars.iv47.i.i39
  store float %i.ada, ptr %i.adb, align 4, !tbaa !61
  %indvars.iv.next48.i.i40 = add nuw nsw i64 %indvars.iv47.i.i39, 1 ; 2 uses
  %exitcond.not.i.i41 = icmp eq i64 %indvars.iv.next48.i.i40, %i.ta
  br i1 %exitcond.not.i.i41, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i36, label %.lr.ph45.i.i38, !llvm.loop !170

_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i36: ; preds = %.lr.ph45.i.i38, %middle.block, %.preheader.i.i34
  %i.adc = getelementptr inbounds nuw i8, ptr %.0346.i, i64 16
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next368.i, %wide.trip.count370.i
  br i1 %exitcond371.not.i, label %._crit_edge.i32, label %bb.ch, !llvm.loop !171

bb.cp:                                            ; preds = %bb.cg
  %i.add = atomicrmw add ptr %i.ux, i32 -1 acq_rel, align 4
  %i.ade = icmp eq i32 %i.add, 1
  br i1 %i.ade, label %bb.cq, label %_ZN4ncnn3MatD2Ev.exit272.i

bb.cq:                                            ; preds = %bb.cp
  %i.adf = load ptr, ptr %i.al, align 8, !tbaa !42 ; 3 uses
  %.not3.i295.i = icmp eq ptr %i.adf, null
  %i.adg = load ptr, ptr %12, align 8, !tbaa !43  ; 3 uses
  br i1 %.not3.i295.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.adh = load ptr, ptr %i.adf, align 8, !tbaa !13
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 24
  %i.adj = load ptr, ptr %i.adi, align 8
  invoke void %i.adj(ptr noundef nonnull align 8 dereferenceable(8) %i.adf, ptr noundef %i.adg)
          to label %_ZN4ncnn3MatD2Ev.exit272.i unwind label %bb.cu, !inline_history !1

bb.cs:                                            ; preds = %bb.cq
  %.not.i309.i = icmp eq ptr %i.adg, null
  br i1 %.not.i309.i, label %_ZN4ncnn3MatD2Ev.exit272.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @free(ptr noundef nonnull %i.adg) #6
  br label %_ZN4ncnn3MatD2Ev.exit272.i

bb.cu:                                            ; preds = %bb.cr
  %i.adk = landingpad { ptr, i32 }
          catch ptr null
  %i.adl = extractvalue { ptr, i32 } %i.adk, 0
  call void @__clang_call_terminate(ptr %i.adl) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit272.i:                       ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cp, %bb.cg, %bb.cf
  %.pn.pn.i = phi { ptr, i32 } [ %i.uv, %bb.cf ], [ %i.uw, %bb.cp ], [ %i.uw, %bb.cg ], [ %i.uw, %bb.cr ], [ %i.uw, %bb.cs ], [ %i.uw, %bb.ct ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  %i.adm = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %.not.i298.i = icmp eq ptr %i.adm, null
  br i1 %.not.i298.i, label %_ZN4ncnn3MatD2Ev.exit271.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit272.i
  %i.adn = atomicrmw add ptr %i.adm, i32 -1 acq_rel, align 4
  %i.ado = icmp eq i32 %i.adn, 1
  br i1 %i.ado, label %bb.cw, label %_ZN4ncnn3MatD2Ev.exit271.i

bb.cw:                                            ; preds = %bb.cv
  %i.adp = load ptr, ptr %i.ai, align 8, !tbaa !42 ; 3 uses
  %.not3.i299.i = icmp eq ptr %i.adp, null
  %i.adq = load ptr, ptr %11, align 8, !tbaa !43  ; 3 uses
  br i1 %.not3.i299.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.adr = load ptr, ptr %i.adp, align 8, !tbaa !13
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 24
  %i.adt = load ptr, ptr %i.ads, align 8
  invoke void %i.adt(ptr noundef nonnull align 8 dereferenceable(8) %i.adp, ptr noundef %i.adq)
          to label %_ZN4ncnn3MatD2Ev.exit271.i unwind label %bb.da, !inline_history !1

bb.cy:                                            ; preds = %bb.cw
  %.not.i307.i = icmp eq ptr %i.adq, null
  br i1 %.not.i307.i, label %_ZN4ncnn3MatD2Ev.exit271.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @free(ptr noundef nonnull %i.adq) #6
  br label %_ZN4ncnn3MatD2Ev.exit271.i

bb.da:                                            ; preds = %bb.cx
  %i.adu = landingpad { ptr, i32 }
          catch ptr null
  %i.adv = extractvalue { ptr, i32 } %i.adu, 0
  call void @__clang_call_terminate(ptr %i.adv) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit271.i:                       ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cv, %_ZN4ncnn3MatD2Ev.exit272.i, %bb.ce
  %.pn.pn.pn.i30 = phi { ptr, i32 } [ %i.uu, %bb.ce ], [ %.pn.pn.i, %bb.cv ], [ %.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit272.i ], [ %.pn.pn.i, %bb.cx ], [ %.pn.pn.i, %bb.cy ], [ %.pn.pn.i, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.adw = load ptr, ptr %i.ae, align 8, !tbaa !41 ; 2 uses
  %.not.i302.i = icmp eq ptr %i.adw, null
  br i1 %.not.i302.i, label %_ZN4ncnn3MatD2Ev.exit.i31, label %bb.db

bb.db:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit271.i
  %i.adx = atomicrmw add ptr %i.adw, i32 -1 acq_rel, align 4
  %i.ady = icmp eq i32 %i.adx, 1
  br i1 %i.ady, label %bb.dc, label %_ZN4ncnn3MatD2Ev.exit.i31

bb.dc:                                            ; preds = %bb.db
  %i.adz = load ptr, ptr %i.af, align 8, !tbaa !42 ; 3 uses
  %.not3.i303.i = icmp eq ptr %i.adz, null
  %i.aea = load ptr, ptr %10, align 8, !tbaa !43  ; 3 uses
  br i1 %.not3.i303.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aeb = load ptr, ptr %i.adz, align 8, !tbaa !13
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 24
  %i.aed = load ptr, ptr %i.aec, align 8
  invoke void %i.aed(ptr noundef nonnull align 8 dereferenceable(8) %i.adz, ptr noundef %i.aea)
          to label %_ZN4ncnn3MatD2Ev.exit.i31 unwind label %bb.dg, !inline_history !1

bb.de:                                            ; preds = %bb.dc
  %.not.i306.i = icmp eq ptr %i.aea, null
  br i1 %.not.i306.i, label %_ZN4ncnn3MatD2Ev.exit.i31, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @free(ptr noundef nonnull %i.aea) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i31

bb.dg:                                            ; preds = %bb.dd
  %i.aee = landingpad { ptr, i32 }
          catch ptr null
  %i.aef = extractvalue { ptr, i32 } %i.aee, 0
  call void @__clang_call_terminate(ptr %i.aef) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i31:                        ; preds = %bb.df, %bb.de, %bb.dd, %bb.db, %_ZN4ncnn3MatD2Ev.exit271.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %.body

_ZN4ncnnL20resize_bicubic_imageERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit274.i, %bb.by, %bb.ca, %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL20resize_bicubic_imageERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.be
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.aeg = load i32, ptr %i.b, align 4, !tbaa !28
  %i.aeh = sext i32 %i.aeg to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.aeh
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.dh

bb.dh:                                            ; preds = %._crit_edge, %bb.a
  ret void

bb.di:                                            ; preds = %bb.bf, %bb.c
  %i.aei = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.di, %_ZN4ncnn3MatD2Ev.exit.i31, %_ZN4ncnn3MatD2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.aei, %bb.di ], [ %.pn.pn.pn.i30, %_ZN4ncnn3MatD2Ev.exit.i31 ]
  %i.aej = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.aej) #22
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #15

declare void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1
end_hunk_5
begin_hunk_6_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.9:bb.a
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not72 = icmp sgt i32 %i.k, %i.j
  br i1 %.not72, label %._crit_edge76, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !28     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph75.split.preheader, label %._crit_edge76

.lr.ph75.split.preheader:                         ; preds = %.lr.ph75
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph75.split

.lr.ph75.split:                                   ; preds = %.lr.ph75.split.preheader, %._crit_edge71
  %i.t = phi i32 [ %i.p, %.lr.ph75.split.preheader ], [ %i.cp, %._crit_edge71 ] ; 6 uses
  %i.u = phi i32 [ %i.p, %.lr.ph75.split.preheader ], [ %i.cq, %._crit_edge71 ] ; 2 uses
  %indvars.iv98 = phi i64 [ %i.r, %.lr.ph75.split.preheader ], [ %indvars.iv.next99, %._crit_edge71 ] ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = load i32, ptr %i.l, align 4, !tbaa !29
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %indvars.iv98, %i.y
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !32
  %i.ab = mul i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !43
  %i.ae = load i32, ptr %i.n, align 4, !tbaa !29
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %indvars.iv98, %i.af
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !32
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.al = icmp sgt i32 %i.u, 0
  br i1 %i.al, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %.lr.ph75.split
  %i.am = load i32, ptr %8, align 4, !tbaa !28    ; 8 uses
  %i.an = icmp sgt i32 %i.am, 3
  br i1 %i.an, label %.lr.ph70.split.preheader, label %.lr.ph70.split.us

.lr.ph70.split.preheader:                         ; preds = %.lr.ph70
  %i.ao = add i64 %i.ab, %i.w
  br label %.lr.ph70.split

.lr.ph70.split.us:                                ; preds = %.lr.ph70
  %i.ap = load ptr, ptr %7, align 8, !tbaa !62
  %i.aq = icmp sgt i32 %i.am, 0
  %i.ar = sext i32 %i.am to i64
  br i1 %i.aq, label %.preheader.us.preheader, label %._crit_edge71

.preheader.us.preheader:                          ; preds = %.lr.ph70.split.us
  %i.as = zext nneg i32 %i.am to i64
  %smax = call i32 @llvm.smax.i32(i32 %i.t, i32 1)
  %wide.trip.count85 = zext nneg i32 %smax to i64
  %exitcond.not = icmp eq i32 %i.am, 1
  %exitcond.not.1 = icmp eq i32 %i.am, 2
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv82 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next83, %._crit_edge.us ] ; 2 uses
  %.05267.us = phi ptr [ %i.ak, %.preheader.us.preheader ], [ %i.cn, %._crit_edge.us ] ; 2 uses
  %.05366.us = phi ptr [ %i.aj, %.preheader.us.preheader ], [ %i.co, %._crit_edge.us ] ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv82
  %i.au = load i32, ptr %i.at, align 4, !tbaa !28
  %i.av = mul nsw i32 %i.am, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.aw ; 4 uses
  %i.ay = load <2 x float>, ptr %.05267.us, align 4, !tbaa !61 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.as ; 3 uses
  %i.az = load i16, ptr %i.ax, align 2, !tbaa !72
  %i.ba = load i16, ptr %invariant.gep, align 2, !tbaa !72
  %i.bb = insertelement <2 x i16> poison, i16 %i.az, i64 0
  %i.bc = insertelement <2 x i16> %i.bb, i16 %i.ba, i64 1
  %i.bd = zext <2 x i16> %i.bc to <2 x i32>
  %i.be = shl nuw <2 x i32> %i.bd, splat (i32 16)
  %i.bf = bitcast <2 x i32> %i.be to <2 x float>
  %i.bg = fmul fast <2 x float> %i.ay, %i.bf
  %i.bh = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bg)
  %i.bi = bitcast float %i.bh to i32
  %i.bj = lshr i32 %i.bi, 16
  %i.bk = trunc nuw i32 %i.bj to i16
  store i16 %i.bk, ptr %.05366.us, align 2, !tbaa !72
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.preheader.us
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !72
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2
  %i.bn = load i16, ptr %gep.1, align 2, !tbaa !72
  %i.bo = insertelement <2 x i16> poison, i16 %i.bm, i64 0
  %i.bp = insertelement <2 x i16> %i.bo, i16 %i.bn, i64 1
  %i.bq = zext <2 x i16> %i.bp to <2 x i32>
  %i.br = shl nuw <2 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <2 x i32> %i.br to <2 x float>
  %i.bt = fmul fast <2 x float> %i.ay, %i.bs
  %i.bu = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bt)
  %i.bv = bitcast float %i.bu to i32
  %i.bw = lshr i32 %i.bv, 16
  %i.bx = trunc nuw i32 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %.05366.us, i64 2
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !72
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !72
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.cb = load i16, ptr %gep.2, align 2, !tbaa !72
  %i.cc = insertelement <2 x i16> poison, i16 %i.ca, i64 0
  %i.cd = insertelement <2 x i16> %i.cc, i16 %i.cb, i64 1
  %i.ce = zext <2 x i16> %i.cd to <2 x i32>
  %i.cf = shl nuw <2 x i32> %i.ce, splat (i32 16)
  %i.cg = bitcast <2 x i32> %i.cf to <2 x float>
  %i.ch = fmul fast <2 x float> %i.ay, %i.cg
  %i.ci = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.ch)
  %i.cj = bitcast float %i.ci to i32
  %i.ck = lshr i32 %i.cj, 16
  %i.cl = trunc nuw i32 %i.ck to i16
  %i.cm = getelementptr inbounds nuw i8, ptr %.05366.us, i64 4
  store i16 %i.cl, ptr %i.cm, align 2, !tbaa !72
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.preheader.us
  %i.cn = getelementptr inbounds nuw i8, ptr %.05267.us, i64 8
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.05366.us, i64 %i.ar
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %._crit_edge71, label %.preheader.us, !llvm.loop !180

._crit_edge71:                                    ; preds = %._crit_edge.us, %._crit_edge, %.lr.ph70.split.us, %.lr.ph75.split
  %i.cp = phi i32 [ %i.hb, %._crit_edge ], [ %i.t, %.lr.ph75.split ], [ %i.t, %.lr.ph70.split.us ], [ %i.t, %._crit_edge.us ]
  %i.cq = phi i32 [ %i.hb, %._crit_edge ], [ %i.u, %.lr.ph75.split ], [ %i.t, %.lr.ph70.split.us ], [ %i.t, %._crit_edge.us ]
  %indvars.iv.next99 = add nsw i64 %indvars.iv98, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next99 to i32
  %exitcond101.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond101.not, label %._crit_edge76, label %.lr.ph75.split, !llvm.loop !181

.lr.ph70.split:                                   ; preds = %.lr.ph70.split.preheader, %._crit_edge
  %i.cr = phi i32 [ %i.dd, %._crit_edge ], [ %i.am, %.lr.ph70.split.preheader ] ; 4 uses
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %._crit_edge ], [ 0, %.lr.ph70.split.preheader ] ; 2 uses
  %.05267 = phi ptr [ %i.gz, %._crit_edge ], [ %i.ak, %.lr.ph70.split.preheader ] ; 2 uses
  %.05366 = phi ptr [ %i.ha, %._crit_edge ], [ %i.aj, %.lr.ph70.split.preheader ] ; 7 uses
  %.05366117 = ptrtoaddr ptr %.05366 to i64
  %i.cs = load ptr, ptr %7, align 8, !tbaa !62
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv95
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !28
  %i.cv = mul i32 %i.cr, %i.cu
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.cw ; 6 uses
  %i.cy = load <2 x float>, ptr %.05267, align 4, !tbaa !61 ; 7 uses
  %i.cz = icmp sgt i32 %i.cr, 3
  br i1 %i.cz, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.lr.ph70.split
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> zeroinitializer
  %i.db = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.e

.preheader.loopexit:                              ; preds = %bb.e
  %i.dc = trunc nuw nsw i64 %indvars.iv.next88 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.lr.ph70.split
  %i.dd = phi i32 [ %i.cr, %.lr.ph70.split ], [ %i.fu, %.preheader.loopexit ] ; 5 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph70.split ], [ %i.dc, %.preheader.loopexit ] ; 2 uses
  %i.de = icmp slt i32 %.0.lcssa, %i.dd
  br i1 %i.de, label %.lr.ph65.preheader, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.dd to i64
  br label %._crit_edge

.lr.ph65.preheader:                               ; preds = %.preheader
  %i.df = zext i32 %.0.lcssa to i64               ; 5 uses
  %9 = zext nneg i32 %i.dd to i64                 ; 4 uses
  %wide.trip.count93 = zext nneg i32 %i.dd to i64 ; 5 uses
  %invariant.gep113 = getelementptr [2 x i8], ptr %i.cx, i64 %9 ; 4 uses
  %i.dg = sub nsw i64 %wide.trip.count93, %i.df   ; 3 uses
  %min.iters.check = icmp ult i64 %i.dg, 8
  br i1 %min.iters.check, label %.lr.ph65.preheader122, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph65.preheader
  %i.dh = sub i64 %.05366117, %i.ao               ; 2 uses
  %i.di = add nsw i64 %i.cw, %wide.trip.count93
  %i.dj = shl nsw i64 %i.di, 1
  %i.dk = sub i64 %i.dj, %i.dh
  %diff.check = icmp ugt i64 %i.dk, -16
  %i.dl = shl nsw i64 %i.cw, 1
  %i.dm = sub i64 %i.dl, %i.dh
  %diff.check118 = icmp ugt i64 %i.dm, -16
  %conflict.rdx = or i1 %diff.check, %diff.check118
  br i1 %conflict.rdx, label %.lr.ph65.preheader122, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dg, -8                      ; 3 uses
  %i.dn = add nsw i64 %n.vec, %i.df
  %broadcast.splat = shufflevector <2 x float> %i.cy, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat120 = shufflevector <2 x float> %i.cy, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.do = add nuw i64 %index, %i.df               ; 3 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.do
  %wide.load = load <8 x i16>, ptr %i.dp, align 2, !tbaa !72
  %i.dq = zext <8 x i16> %wide.load to <8 x i32>
  %i.dr = shl nuw <8 x i32> %i.dq, splat (i32 16)
  %i.ds = bitcast <8 x i32> %i.dr to <8 x float>
  %i.dt = fmul fast <8 x float> %broadcast.splat, %i.ds
  %i.du = getelementptr [2 x i8], ptr %invariant.gep113, i64 %i.do
  %wide.load121 = load <8 x i16>, ptr %i.du, align 2, !tbaa !72
  %i.dv = zext <8 x i16> %wide.load121 to <8 x i32>
  %i.dw = shl nuw <8 x i32> %i.dv, splat (i32 16)
  %i.dx = bitcast <8 x i32> %i.dw to <8 x float>
  %i.dy = fmul fast <8 x float> %broadcast.splat120, %i.dx
  %i.dz = fadd fast <8 x float> %i.dy, %i.dt
  %i.ea = bitcast <8 x float> %i.dz to <8 x i32>
  %i.eb = lshr <8 x i32> %i.ea, splat (i32 16)
  %i.ec = trunc nuw <8 x i32> %i.eb to <8 x i16>
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.05366, i64 %i.do
  store <8 x i16> %i.ec, ptr %i.ed, align 2, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph65.preheader122

.lr.ph65.preheader122:                            ; preds = %vector.memcheck, %.lr.ph65.preheader, %middle.block
  %indvars.iv90.ph = phi i64 [ %i.df, %vector.memcheck ], [ %i.df, %.lr.ph65.preheader ], [ %i.dn, %middle.block ] ; 7 uses
  %i.ef = sub nsw i64 %wide.trip.count93, %indvars.iv90.ph
  %xtraiter = and i64 %i.ef, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph65.prol.loopexit, label %.lr.ph65.prol

.lr.ph65.prol:                                    ; preds = %.lr.ph65.preheader122
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv90.ph
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !72
  %gep114.prol = getelementptr [2 x i8], ptr %invariant.gep113, i64 %indvars.iv90.ph
  %i.ei = load i16, ptr %gep114.prol, align 2, !tbaa !72
  %i.ej = insertelement <2 x i16> poison, i16 %i.eh, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  %i.em = shl nuw <2 x i32> %i.el, splat (i32 16)
  %i.en = bitcast <2 x i32> %i.em to <2 x float>
  %i.eo = fmul fast <2 x float> %i.cy, %i.en
  %i.ep = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.eo)
  %i.eq = bitcast float %i.ep to i32
  %i.er = lshr i32 %i.eq, 16
  %i.es = trunc nuw i32 %i.er to i16
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %.05366, i64 %indvars.iv90.ph
  store i16 %i.es, ptr %i.et, align 2, !tbaa !72
  %indvars.iv.next91.prol = add nuw nsw i64 %indvars.iv90.ph, 1
  br label %.lr.ph65.prol.loopexit

.lr.ph65.prol.loopexit:                           ; preds = %.lr.ph65.prol, %.lr.ph65.preheader122
  %indvars.iv90.unr = phi i64 [ %indvars.iv90.ph, %.lr.ph65.preheader122 ], [ %indvars.iv.next91.prol, %.lr.ph65.prol ]
  %i.eu = add nsw i64 %wide.trip.count93, -1
  %i.ev = icmp eq i64 %indvars.iv90.ph, %i.eu
  br i1 %i.ev, label %._crit_edge, label %.lr.ph65

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv87 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next88, %bb.e ] ; 3 uses
  %i.ew = phi i32 [ %i.cr, %.lr.ph ], [ %i.fu, %bb.e ]
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv87 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 1, !tbaa !20
  %i.ez = insertelement <2 x i64> poison, i64 %i.ey, i64 0
  %i.fa = bitcast <2 x i64> %i.ez to <8 x i16>
  %i.fb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fc = bitcast <8 x i16> %i.fb to <4 x float>
  %i.fd = sext i32 %i.ew to i64
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 1, !tbaa !20
  %i.fg = insertelement <2 x i64> poison, i64 %i.ff, i64 0
  %i.fh = bitcast <2 x i64> %i.fg to <8 x i16>
  %i.fi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fj = bitcast <8 x i16> %i.fi to <4 x float>
  %i.fk = fmul fast <4 x float> %i.da, %i.fc
  %i.fl = fmul fast <4 x float> %i.db, %i.fj
  %i.fm = fadd fast <4 x float> %i.fl, %i.fk
  %i.fn = bitcast <4 x float> %i.fm to <8 x i16>
  %i.fo = shufflevector <8 x i16> %i.fn, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.fp = bitcast <8 x i16> %i.fo to <4 x float>
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fr = bitcast <4 x float> %i.fq to <2 x i64>
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %.05366, i64 %indvars.iv87
  %i.ft = extractelement <2 x i64> %i.fr, i64 0
  store i64 %i.ft, ptr %i.fs, align 1, !tbaa !20
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 4 ; 3 uses
  %10 = or disjoint i64 %indvars.iv.next88, 3
  %i.fu = load i32, ptr %8, align 4, !tbaa !28    ; 3 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = icmp slt i64 %10, %i.fv
  br i1 %i.fw, label %bb.e, label %.preheader.loopexit, !llvm.loop !183

.lr.ph65:                                         ; preds = %.lr.ph65.prol.loopexit, %.lr.ph65
  %indvars.iv90 = phi i64 [ %indvars.iv.next91.1, %.lr.ph65 ], [ %indvars.iv90.unr, %.lr.ph65.prol.loopexit ] ; 5 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv90
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !72
  %gep114 = getelementptr [2 x i8], ptr %invariant.gep113, i64 %indvars.iv90
  %i.fz = load i16, ptr %gep114, align 2, !tbaa !72
  %i.ga = insertelement <2 x i16> poison, i16 %i.fy, i64 0
  %i.gb = insertelement <2 x i16> %i.ga, i16 %i.fz, i64 1
  %i.gc = zext <2 x i16> %i.gb to <2 x i32>
  %i.gd = shl nuw <2 x i32> %i.gc, splat (i32 16)
  %i.ge = bitcast <2 x i32> %i.gd to <2 x float>
  %i.gf = fmul fast <2 x float> %i.cy, %i.ge
  %i.gg = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.gf)
  %i.gh = bitcast float %i.gg to i32
  %i.gi = lshr i32 %i.gh, 16
  %i.gj = trunc nuw i32 %i.gi to i16
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %.05366, i64 %indvars.iv90
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !72
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 3 uses
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv.next91
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !72
  %gep114.1 = getelementptr [2 x i8], ptr %invariant.gep113, i64 %indvars.iv.next91
  %i.gn = load i16, ptr %gep114.1, align 2, !tbaa !72
  %i.go = insertelement <2 x i16> poison, i16 %i.gm, i64 0
  %i.gp = insertelement <2 x i16> %i.go, i16 %i.gn, i64 1
  %i.gq = zext <2 x i16> %i.gp to <2 x i32>
  %i.gr = shl nuw <2 x i32> %i.gq, splat (i32 16)
  %i.gs = bitcast <2 x i32> %i.gr to <2 x float>
  %i.gt = fmul fast <2 x float> %i.cy, %i.gs
  %i.gu = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.gt)
  %i.gv = bitcast float %i.gu to i32
  %i.gw = lshr i32 %i.gv, 16
  %i.gx = trunc nuw i32 %i.gw to i16
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %.05366, i64 %indvars.iv.next91
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !72
  %indvars.iv.next91.1 = add nuw nsw i64 %indvars.iv90, 2 ; 2 uses
  %exitcond94.not.1 = icmp eq i64 %indvars.iv.next91.1, %wide.trip.count93
  br i1 %exitcond94.not.1, label %._crit_edge, label %.lr.ph65, !llvm.loop !184

._crit_edge:                                      ; preds = %.lr.ph65.prol.loopexit, %.lr.ph65, %middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %9, %middle.block ], [ %9, %.lr.ph65 ], [ %9, %.lr.ph65.prol.loopexit ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.05267, i64 8
  %i.ha = getelementptr inbounds [2 x i8], ptr %.05366, i64 %.pre-phi
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.hb = load i32, ptr %6, align 4, !tbaa !28    ; 3 uses
  %i.hc = sext i32 %i.hb to i64
  %i.hd = icmp slt i64 %indvars.iv.next96, %i.hc
  br i1 %i.hd, label %.lr.ph70.split, label %._crit_edge71, !llvm.loop !185

._crit_edge76:                                    ; preds = %._crit_edge71, %.lr.ph75, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge76, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not95 = icmp sgt i32 %i.k, %i.j
  br i1 %.not95, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !28     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph98.split.preheader, label %._crit_edge99

.lr.ph98.split.preheader:                         ; preds = %.lr.ph98
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph98.split

.lr.ph98.split:                                   ; preds = %.lr.ph98.split.preheader, %._crit_edge94
  %i.t = phi i32 [ %i.p, %.lr.ph98.split.preheader ], [ %i.am, %._crit_edge94 ] ; 2 uses
  %indvars.iv110 = phi i64 [ %i.r, %.lr.ph98.split.preheader ], [ %indvars.iv.next111, %._crit_edge94 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !29
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv110, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !32
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph93.preheader, label %._crit_edge94

.lr.ph93.preheader:                               ; preds = %.lr.ph98.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !64
  %i.ae = load ptr, ptr %4, align 8, !tbaa !43
  %i.af = load i32, ptr %i.n, align 4, !tbaa !29
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv110, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !32
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !28
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph93

._crit_edge94:                                    ; preds = %._crit_edge, %.lr.ph98.split
  %i.am = phi i32 [ %i.t, %.lr.ph98.split ], [ %i.fl, %._crit_edge ]
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next111 to i32
  %exitcond113.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond113.not, label %._crit_edge99, label %.lr.ph98.split, !llvm.loop !186

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %._crit_edge
  %i.an = phi i32 [ %.pre, %.lr.ph93.preheader ], [ %i.bb, %._crit_edge ] ; 4 uses
  %indvars.iv107 = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next108, %._crit_edge ] ; 2 uses
  %.06690 = phi ptr [ %i.ad, %.lr.ph93.preheader ], [ %i.fj, %._crit_edge ] ; 2 uses
  %.06789 = phi ptr [ %i.ak, %.lr.ph93.preheader ], [ %i.fk, %._crit_edge ] ; 5 uses
  %.06789126 = ptrtoaddr ptr %.06789 to i64       ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !62
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv107
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.as ; 7 uses
  %i.au = load <4 x float>, ptr %.06690, align 4, !tbaa !61 ; 9 uses
  %i.av = icmp sgt i32 %i.an, 3
  br i1 %i.av, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.lr.ph93
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ax = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ay = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.az = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

.preheader.loopexit:                              ; preds = %bb.c
  %i.ba = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.lr.ph93
  %i.bb = phi i32 [ %i.an, %.lr.ph93 ], [ %13, %.preheader.loopexit ] ; 6 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph93 ], [ %i.ba, %.preheader.loopexit ] ; 2 uses
  %i.bc = icmp slt i32 %.0.lcssa, %i.bb
  br i1 %i.bc, label %.lr.ph88, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre114 = sext i32 %i.bb to i64
  br label %._crit_edge

.lr.ph88:                                         ; preds = %.preheader
  %i.bd = shl nuw nsw i32 %i.bb, 1
  %9 = zext i32 %.0.lcssa to i64                  ; 5 uses
  %10 = zext nneg i32 %i.bb to i64                ; 5 uses
  %11 = zext nneg i32 %i.bd to i64                ; 2 uses
  %wide.trip.count = zext i32 %i.bb to i64        ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.at, i64 %10 ; 2 uses
  %invariant.gep123 = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %11 ; 2 uses
  %i.be = sub nsw i64 %wide.trip.count, %9        ; 3 uses
  %min.iters.check = icmp ult i64 %i.be, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph88
  %i.bf = sub i64 %.06789126, %i.al               ; 2 uses
  %i.bg = add nsw i64 %i.as, %11
  %i.bh = shl nsw i64 %i.bg, 1
  %i.bi = sub i64 %i.bh, %i.bf
  %diff.check = icmp ugt i64 %i.bi, -16
  %i.bj = add nsw i64 %i.as, %wide.trip.count
  %i.bk = shl nsw i64 %i.bj, 1
  %i.bl = sub i64 %i.bk, %i.bf
  %diff.check127 = icmp ugt i64 %i.bl, -16
  %conflict.rdx = or i1 %diff.check, %diff.check127
  %i.bm = sub i64 %.06789126, %i.al               ; 2 uses
  %i.bn = shl nsw i64 %i.as, 1                    ; 2 uses
  %i.bo = sub i64 %i.bn, %i.bm
  %diff.check128 = icmp ugt i64 %i.bo, -16
  %conflict.rdx129 = or i1 %conflict.rdx, %diff.check128
  %i.bp = shl nuw nsw i64 %wide.trip.count, 1
  %i.bq = add i64 %i.bm, %i.bp
  %i.br = sub i64 %i.bn, %i.bq
  %diff.check130 = icmp ugt i64 %i.br, -16
  %conflict.rdx131 = or i1 %conflict.rdx129, %diff.check130
  br i1 %conflict.rdx131, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, -8                      ; 3 uses
  %i.bs = add nsw i64 %n.vec, %9
  %broadcast.splat = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat133 = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat135 = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat137 = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = add nuw i64 %index, %9                  ; 5 uses
  %i.bu = sub nsw i64 %i.bt, %10
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.bu
  %wide.load = load <8 x i16>, ptr %i.bv, align 2, !tbaa !72
  %i.bw = zext <8 x i16> %wide.load to <8 x i32>
  %i.bx = shl nuw <8 x i32> %i.bw, splat (i32 16)
  %i.by = bitcast <8 x i32> %i.bx to <8 x float>
  %i.bz = fmul fast <8 x float> %broadcast.splat, %i.by
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bt
  %wide.load138 = load <8 x i16>, ptr %i.ca, align 2, !tbaa !72
  %i.cb = zext <8 x i16> %wide.load138 to <8 x i32>
  %i.cc = shl nuw <8 x i32> %i.cb, splat (i32 16)
  %i.cd = bitcast <8 x i32> %i.cc to <8 x float>
  %i.ce = fmul fast <8 x float> %broadcast.splat133, %i.cd
  %i.cf = fadd fast <8 x float> %i.ce, %i.bz
  %i.cg = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bt
  %wide.load139 = load <8 x i16>, ptr %i.cg, align 2, !tbaa !72
  %i.ch = zext <8 x i16> %wide.load139 to <8 x i32>
  %i.ci = shl nuw <8 x i32> %i.ch, splat (i32 16)
  %i.cj = bitcast <8 x i32> %i.ci to <8 x float>
  %i.ck = fmul fast <8 x float> %broadcast.splat135, %i.cj
  %i.cl = fadd fast <8 x float> %i.cf, %i.ck
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep123, i64 %i.bt
  %wide.load140 = load <8 x i16>, ptr %i.cm, align 2, !tbaa !72
  %i.cn = zext <8 x i16> %wide.load140 to <8 x i32>
  %i.co = shl nuw <8 x i32> %i.cn, splat (i32 16)
  %i.cp = bitcast <8 x i32> %i.co to <8 x float>
  %i.cq = fmul fast <8 x float> %broadcast.splat137, %i.cp
  %i.cr = fadd fast <8 x float> %i.cl, %i.cq
  %i.cs = bitcast <8 x float> %i.cr to <8 x i32>
  %i.ct = lshr <8 x i32> %i.cs, splat (i32 16)
  %i.cu = trunc nuw <8 x i32> %i.ct to <8 x i16>
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.06789, i64 %i.bt
  store <8 x i16> %i.cu, ptr %i.cv, align 2, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph88, %middle.block
  %indvars.iv104.ph = phi i64 [ %9, %vector.memcheck ], [ %9, %.lr.ph88 ], [ %i.bs, %middle.block ]
  br label %scalar.ph

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.cx = phi i32 [ %i.an, %.lr.ph ], [ %13, %bb.c ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.cz = sext i32 %i.cx to i64                   ; 2 uses
  %i.da = sub nsw i64 0, %i.cz
  %i.db = getelementptr inbounds [2 x i8], ptr %i.cy, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 1, !tbaa !20
  %i.dd = insertelement <2 x i64> poison, i64 %i.dc, i64 0
  %i.de = bitcast <2 x i64> %i.dd to <8 x i16>
  %i.df = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.de, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dg = bitcast <8 x i16> %i.df to <4 x float>
  %i.dh = load i64, ptr %i.cy, align 1, !tbaa !20
  %i.di = insertelement <2 x i64> poison, i64 %i.dh, i64 0
  %i.dj = bitcast <2 x i64> %i.di to <8 x i16>
  %i.dk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dl = bitcast <8 x i16> %i.dk to <4 x float>
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.cy, i64 %i.cz
  %i.dn = load i64, ptr %i.dm, align 1, !tbaa !20
  %i.do = insertelement <2 x i64> poison, i64 %i.dn, i64 0
  %i.dp = bitcast <2 x i64> %i.do to <8 x i16>
  %i.dq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dr = bitcast <8 x i16> %i.dq to <4 x float>
  %i.ds = shl nuw nsw i32 %i.cx, 1
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 1, !tbaa !20
  %i.dw = insertelement <2 x i64> poison, i64 %i.dv, i64 0
  %i.dx = bitcast <2 x i64> %i.dw to <8 x i16>
  %i.dy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dz = bitcast <8 x i16> %i.dy to <4 x float>
  %i.ea = fmul fast <4 x float> %i.aw, %i.dg
  %i.eb = fmul fast <4 x float> %i.ax, %i.dl
  %i.ec = fadd fast <4 x float> %i.eb, %i.ea
  %i.ed = fmul fast <4 x float> %i.ay, %i.dr
  %i.ee = fadd fast <4 x float> %i.ec, %i.ed
  %i.ef = fmul fast <4 x float> %i.az, %i.dz
  %i.eg = fadd fast <4 x float> %i.ee, %i.ef
  %i.eh = bitcast <4 x float> %i.eg to <8 x i16>
  %i.ei = shufflevector <8 x i16> %i.eh, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ej = bitcast <8 x i16> %i.ei to <4 x float>
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.el = bitcast <4 x float> %i.ek to <2 x i64>
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %.06789, i64 %indvars.iv
  %i.en = extractelement <2 x i64> %i.el, i64 0
  store i64 %i.en, ptr %i.em, align 1, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %12 = or disjoint i64 %indvars.iv.next, 3
  %13 = load i32, ptr %8, align 4, !tbaa !28      ; 3 uses
  %14 = sext i32 %13 to i64
  %i.eo = icmp slt i64 %12, %14
  br i1 %i.eo, label %bb.c, label %.preheader.loopexit, !llvm.loop !188

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %scalar.ph ], [ %indvars.iv104.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ep = sub nsw i64 %indvars.iv104, %10
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !72
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv104
  %i.et = load i16, ptr %i.es, align 2, !tbaa !72
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv104
  %i.eu = load i16, ptr %gep, align 2, !tbaa !72
  %gep124 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep123, i64 %indvars.iv104
  %i.ev = load i16, ptr %gep124, align 2, !tbaa !72
  %i.ew = insertelement <4 x i16> poison, i16 %i.er, i64 0
  %i.ex = insertelement <4 x i16> %i.ew, i16 %i.et, i64 1
  %i.ey = insertelement <4 x i16> %i.ex, i16 %i.eu, i64 2
  %i.ez = insertelement <4 x i16> %i.ey, i16 %i.ev, i64 3
  %i.fa = zext <4 x i16> %i.ez to <4 x i32>
  %i.fb = shl nuw <4 x i32> %i.fa, splat (i32 16)
  %i.fc = bitcast <4 x i32> %i.fb to <4 x float>
  %i.fd = fmul fast <4 x float> %i.au, %i.fc
  %i.fe = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fd)
  %i.ff = bitcast float %i.fe to i32
  %i.fg = lshr i32 %i.ff, 16
  %i.fh = trunc nuw i32 %i.fg to i16
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %.06789, i64 %indvars.iv104
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !72
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !189

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre114, %.preheader.._crit_edge_crit_edge ], [ %10, %middle.block ], [ %10, %scalar.ph ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.06690, i64 16
  %i.fk = getelementptr inbounds [2 x i8], ptr %.06789, i64 %.pre-phi
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.fl = load i32, ptr %6, align 4, !tbaa !28    ; 2 uses
  %i.fm = sext i32 %i.fl to i64
  %i.fn = icmp slt i64 %indvars.iv.next108, %i.fm
  br i1 %i.fn, label %.lr.ph93, label %._crit_edge94, !llvm.loop !190

._crit_edge99:                                    ; preds = %._crit_edge94, %.lr.ph98, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge99, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.11(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not85 = icmp sgt i32 %i.k, %i.j
  br i1 %.not85, label %._crit_edge87, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load i32, ptr %5, align 4, !tbaa !28     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge87

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.v = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.t, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next92, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !43, !noalias !198
  %i.y = load i64, ptr %i.m, align 8, !tbaa !37, !noalias !198
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !32, !noalias !198 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !43, !noalias !199
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !37, !noalias !199
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !32, !noalias !199 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !29, !noalias !199
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !29, !noalias !198
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ag, %i.al
  %i.aq = load i32, ptr %8, align 4, !tbaa !28    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre95 = load i32, ptr %i.b, align 4, !tbaa !28
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph84, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.as = phi i32 [ %i.u, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre95, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.u, %.lr.ph84 ] ; 2 uses
  %i.at = phi i32 [ %i.v, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.v, %.lr.ph84 ]
  %i.au = phi i32 [ %i.w, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.lr.ph84 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1
  %i.av = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv91, %i.av
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !195

.lr.ph84.split:                                   ; preds = %.lr.ph84, %._crit_edge
  %i.aw = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph84 ]
  %i.ax = phi i32 [ %i.bm, %._crit_edge ], [ %i.aq, %.lr.ph84 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph84 ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = uitofp ninf nsz nneg i32 %i.ay to float
  %i.ba = load float, ptr %6, align 4, !tbaa !61
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fptosi float %i.bb to i32
  %i.bd = load i32, ptr %7, align 4, !tbaa !28
  %i.be = add nsw i32 %i.bd, -1
  %.sroa.speculated51 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = sext i32 %.sroa.speculated51 to i64
  %i.bg = mul i64 %i.ao, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bg
  %i.bi = icmp sgt i32 %i.ax, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph84.split
  %i.bj = mul i64 %i.ap, %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  %.pre = load i32, ptr %11, align 4, !tbaa !28
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre94 = load i32, ptr %5, align 4, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph84.split
  %i.bl = phi i32 [ %.pre94, %._crit_edge.loopexit ], [ %i.aw, %.lr.ph84.split ] ; 4 uses
  %i.bm = phi i32 [ %i.cf, %._crit_edge.loopexit ], [ %i.ax, %.lr.ph84.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !196

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bp = phi i32 [ %i.cb, %.lr.ph ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.03682 = phi i32 [ %i.ce, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03781 = phi ptr [ %i.cd, %.lr.ph ], [ %i.bk, %.lr.ph.preheader ] ; 2 uses
  %i.bq = uitofp ninf nsz nneg i32 %.03682 to float
  %i.br = load float, ptr %9, align 4, !tbaa !61
  %i.bs = fmul fast float %i.br, %i.bq
  %i.bt = fptosi float %i.bs to i32
  %i.bu = load i32, ptr %10, align 4, !tbaa !28
  %i.bv = add nsw i32 %i.bu, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bt)
  %i.bw = mul nsw i32 %.sroa.speculated, %i.bp
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.bx
  %i.bz = sext i32 %i.bp to i64
  %i.ca = shl nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.03781, ptr align 2 %i.by, i64 %i.ca, i1 false)
  %i.cb = load i32, ptr %11, align 4, !tbaa !28   ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %.03781, i64 %i.cc
  %i.ce = add nuw nsw i32 %.03682, 1              ; 2 uses
  %i.cf = load i32, ptr %8, align 4, !tbaa !28    ; 2 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !197

._crit_edge87:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge87, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.12(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 10 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.az
end_hunk_6
begin_hunk_7_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.12:bb.a
  %indvars.iv160.i = phi i64 [ %indvars.iv.next161.i, %.lr.ph151.i ], [ 0, %bb.s ] ; 3 uses
  %.079149.i = phi ptr [ %i.dq, %.lr.ph151.i ], [ %i.ay, %bb.s ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv160.i
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !28
  %i.cr = shl nsw i32 %i.cq, 2
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.cs ; 2 uses
  %i.cu = load float, ptr %.079149.i, align 4, !tbaa !61
  %i.cv = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cx = getelementptr inbounds nuw i8, ptr %.079149.i, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !61
  %i.cz = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = load i64, ptr %i.ct, align 1, !tbaa !20
  %i.dc = insertelement <2 x i64> poison, i64 %i.db, i64 0
  %i.dd = bitcast <2 x i64> %i.dc to <8 x i16>
  %i.de = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.df = bitcast <8 x i16> %i.de to <4 x float>
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dh = load i64, ptr %i.dg, align 1, !tbaa !20
  %i.di = insertelement <2 x i64> poison, i64 %i.dh, i64 0
  %i.dj = bitcast <2 x i64> %i.di to <8 x i16>
  %i.dk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dl = bitcast <8 x i16> %i.dk to <4 x float>
  %i.dm = fmul fast <4 x float> %i.cw, %i.df
  %i.dn = fmul fast <4 x float> %i.da, %i.dl
  %i.do = fadd fast <4 x float> %i.dn, %i.dm
  %.idx.i = shl nuw nsw i64 %indvars.iv160.i, 4
  %i.dp = getelementptr inbounds nuw i8, ptr %.083153.i, i64 %.idx.i
  store <4 x float> %i.do, ptr %i.dp, align 16, !tbaa !20
  %i.dq = getelementptr inbounds nuw i8, ptr %.079149.i, i64 8
  %indvars.iv.next161.i = add nuw nsw i64 %indvars.iv160.i, 1 ; 2 uses
  %exitcond164.not.i = icmp eq i64 %indvars.iv.next161.i, %wide.trip.count.i
  br i1 %exitcond164.not.i, label %.loopexit.i.thread138, label %.lr.ph151.i, !llvm.loop !204

bb.t:                                             ; preds = %bb.r
  %i.dr = sext i32 %i.ch to i64
  %i.ds = mul i64 %i.bi, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ds
  %i.du = add nsw i32 %i.ch, 1
  %i.dv = sext i32 %i.du to i64
  %i.dw = mul i64 %i.bi, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.dw
  br i1 %i.bf, label %.lr.ph.i, label %.loopexit.i.thread

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.t ] ; 3 uses
  %.077147.i = phi ptr [ %i.fq, %.lr.ph.i ], [ %i.ay, %bb.t ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !28
  %i.ea = shl nsw i32 %i.dz, 2
  %i.eb = sext i32 %i.ea to i64                   ; 2 uses
  %i.ec = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.eb ; 2 uses
  %i.ee = load float, ptr %.077147.i, align 4, !tbaa !61
  %i.ef = insertelement <4 x float> poison, float %i.ee, i64 0
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.077147.i, i64 4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !61
  %i.ej = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.el = load i64, ptr %i.ec, align 1, !tbaa !20
  %i.em = insertelement <2 x i64> poison, i64 %i.el, i64 0
  %i.en = bitcast <2 x i64> %i.em to <8 x i16>
  %i.eo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.en, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ep = bitcast <8 x i16> %i.eo to <4 x float>
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.er = load i64, ptr %i.eq, align 1, !tbaa !20
  %i.es = insertelement <2 x i64> poison, i64 %i.er, i64 0
  %i.et = bitcast <2 x i64> %i.es to <8 x i16>
  %i.eu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.et, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ev = bitcast <8 x i16> %i.eu to <4 x float>
  %i.ew = load i64, ptr %i.ed, align 1, !tbaa !20
  %i.ex = insertelement <2 x i64> poison, i64 %i.ew, i64 0
  %i.ey = bitcast <2 x i64> %i.ex to <8 x i16>
  %i.ez = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ey, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fa = bitcast <8 x i16> %i.ez to <4 x float>
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.fc = load i64, ptr %i.fb, align 1, !tbaa !20
  %i.fd = insertelement <2 x i64> poison, i64 %i.fc, i64 0
  %i.fe = bitcast <2 x i64> %i.fd to <8 x i16>
  %i.ff = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fg = bitcast <8 x i16> %i.ff to <4 x float>
  %i.fh = fmul fast <4 x float> %i.eg, %i.ep
  %i.fi = fmul fast <4 x float> %i.eg, %i.fa
  %i.fj = fmul fast <4 x float> %i.ek, %i.ev
  %i.fk = fadd fast <4 x float> %i.fj, %i.fh
  %i.fl = fmul fast <4 x float> %i.ek, %i.fg
  %i.fm = fadd fast <4 x float> %i.fl, %i.fi
  %i.fn = shl nuw nsw i64 %indvars.iv.i, 2        ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.083153.i, i64 %i.fn
  store <4 x float> %i.fk, ptr %i.fo, align 16, !tbaa !20
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.082154.i, i64 %i.fn
  store <4 x float> %i.fm, ptr %i.fp, align 16, !tbaa !20
  %i.fq = getelementptr inbounds nuw i8, ptr %.077147.i, i64 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i.thread138, label %.lr.ph.i, !llvm.loop !205

.loopexit.i.thread:                               ; preds = %bb.t, %bb.s
  %.184.i.ph = phi ptr [ %.083153.i, %bb.t ], [ %.082154.i, %bb.s ]
  %.1.i.ph = phi ptr [ %.082154.i, %bb.t ], [ %.083153.i, %bb.s ]
  %i.fr = mul i64 %i.bj, %indvars.iv165.i
  %i.fs = load <2 x float>, ptr %.095152.i, align 4, !tbaa !61
  br label %.preheader.i.i

.loopexit.i.thread138:                            ; preds = %.lr.ph.i, %.lr.ph151.i
  %.184.i.ph136 = phi ptr [ %.082154.i, %.lr.ph151.i ], [ %.083153.i, %.lr.ph.i ]
  %.1.i.ph137 = phi ptr [ %.083153.i, %.lr.ph151.i ], [ %.082154.i, %.lr.ph.i ]
  %i.ft = mul i64 %i.bj, %indvars.iv165.i
  %i.fu = load <2 x float>, ptr %.095152.i, align 4, !tbaa !61 ; 3 uses
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fw = shufflevector <2 x float> %i.fu, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.lr.ph.i.i.preheader

.loopexit.i:                                      ; preds = %bb.q
  %i.fx = mul i64 %i.bj, %indvars.iv165.i         ; 2 uses
  %i.fy = load <2 x float>, ptr %.095152.i, align 4, !tbaa !61 ; 4 uses
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ga = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br i1 %i.bf, label %.lr.ph.i.i.preheader, label %.preheader.i.i

.lr.ph.i.i.preheader:                             ; preds = %.loopexit.i.thread138, %.loopexit.i
  %i.gb = phi <4 x float> [ %i.fw, %.loopexit.i.thread138 ], [ %i.ga, %.loopexit.i ]
  %i.gc = phi <4 x float> [ %i.fv, %.loopexit.i.thread138 ], [ %i.fz, %.loopexit.i ]
  %i.gd = phi i64 [ %i.ft, %.loopexit.i.thread138 ], [ %i.fx, %.loopexit.i ] ; 2 uses
  %.1.i142 = phi ptr [ %.1.i.ph137, %.loopexit.i.thread138 ], [ %.082154.i, %.loopexit.i ] ; 2 uses
  %.184.i141 = phi ptr [ %.184.i.ph136, %.loopexit.i.thread138 ], [ %.083153.i, %.loopexit.i ] ; 2 uses
  %i.ge = phi <2 x float> [ %i.fu, %.loopexit.i.thread138 ], [ %i.fy, %.loopexit.i ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.gd
  br label %.lr.ph.i.i

.preheader.loopexit.i.i:                          ; preds = %.lr.ph.i.i
  %i.gg = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.thread, %.preheader.loopexit.i.i, %.loopexit.i
  %i.gh = phi i64 [ %i.fx, %.loopexit.i ], [ %i.gd, %.preheader.loopexit.i.i ], [ %i.fr, %.loopexit.i.thread ]
  %.1.i90 = phi ptr [ %.082154.i, %.loopexit.i ], [ %.1.i142, %.preheader.loopexit.i.i ], [ %.1.i.ph, %.loopexit.i.thread ] ; 3 uses
  %.184.i89 = phi ptr [ %.083153.i, %.loopexit.i ], [ %.184.i141, %.preheader.loopexit.i.i ], [ %.184.i.ph, %.loopexit.i.thread ] ; 3 uses
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i ], [ %i.gg, %.preheader.loopexit.i.i ], [ 0, %.loopexit.i.thread ] ; 2 uses
  %i.gi = phi <2 x float> [ %i.fy, %.loopexit.i ], [ %i.ge, %.preheader.loopexit.i.i ], [ %i.fs, %.loopexit.i.thread ] ; 3 uses
  %i.gj = icmp slt i32 %.0.lcssa.i.i, %i.bg
  br i1 %i.gj, label %.lr.ph29.preheader.i.i, label %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i

.lr.ph29.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.gk = zext i32 %.0.lcssa.i.i to i64           ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.gh ; 2 uses
  %i.gm = sub nsw i64 %i.bh, %i.gk                ; 3 uses
  %min.iters.check153 = icmp ult i64 %i.gm, 8
  br i1 %min.iters.check153, label %.lr.ph29.i.i.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %.lr.ph29.preheader.i.i
  %n.vec155 = and i64 %i.gm, -8                   ; 3 uses
  %i.gn = add nsw i64 %n.vec155, %i.gk
  %broadcast.splat157 = shufflevector <2 x float> %i.gi, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat159 = shufflevector <2 x float> %i.gi, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph154
  %index161 = phi i64 [ 0, %vector.ph154 ], [ %index.next166, %vector.body160 ] ; 2 uses
  %i.go = add nuw i64 %index161, %i.gk            ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.184.i89, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.load162 = load <4 x float>, ptr %i.gp, align 4, !tbaa !61
  %wide.load163 = load <4 x float>, ptr %i.gq, align 4, !tbaa !61
  %i.gr = fmul fast <4 x float> %wide.load162, %broadcast.splat157
  %i.gs = fmul fast <4 x float> %wide.load163, %broadcast.splat157
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.1.i90, i64 %i.go ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %wide.load164 = load <4 x float>, ptr %i.gt, align 4, !tbaa !61
  %wide.load165 = load <4 x float>, ptr %i.gu, align 4, !tbaa !61
  %i.gv = fmul fast <4 x float> %wide.load164, %broadcast.splat159
  %i.gw = fmul fast <4 x float> %wide.load165, %broadcast.splat159
  %i.gx = fadd fast <4 x float> %i.gv, %i.gr
  %i.gy = fadd fast <4 x float> %i.gw, %i.gs
  %i.gz = bitcast <4 x float> %i.gx to <4 x i32>
  %i.ha = bitcast <4 x float> %i.gy to <4 x i32>
  %i.hb = lshr <4 x i32> %i.gz, splat (i32 16)
  %i.hc = lshr <4 x i32> %i.ha, splat (i32 16)
  %i.hd = trunc nuw <4 x i32> %i.hb to <4 x i16>
  %i.he = trunc nuw <4 x i32> %i.hc to <4 x i16>
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.go ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store <4 x i16> %i.hd, ptr %i.hf, align 2, !tbaa !72
  store <4 x i16> %i.he, ptr %i.hg, align 2, !tbaa !72
  %index.next166 = add nuw i64 %index161, 8       ; 2 uses
  %i.hh = icmp eq i64 %index.next166, %n.vec155
  br i1 %i.hh, label %middle.block167, label %vector.body160, !llvm.loop !206

middle.block167:                                  ; preds = %vector.body160
  %cmp.n168 = icmp eq i64 %i.gm, %n.vec155
  br i1 %cmp.n168, label %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i, label %.lr.ph29.i.i.preheader

.lr.ph29.i.i.preheader:                           ; preds = %.lr.ph29.preheader.i.i, %middle.block167
  %indvars.iv31.i.i.ph = phi i64 [ %i.gk, %.lr.ph29.preheader.i.i ], [ %i.gn, %middle.block167 ]
  br label %.lr.ph29.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.184.i141, i64 %indvars.iv.i.i
  %i.hj = load <4 x float>, ptr %i.hi, align 1, !tbaa !20
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.1.i142, i64 %indvars.iv.i.i
  %i.hl = load <4 x float>, ptr %i.hk, align 1, !tbaa !20
  %i.hm = fmul fast <4 x float> %i.hj, %i.gc
  %i.hn = fmul fast <4 x float> %i.hl, %i.gb
  %i.ho = fadd fast <4 x float> %i.hn, %i.hm
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.gf, i64 %indvars.iv.i.i
  %i.hq = bitcast <4 x float> %i.ho to <8 x i16>
  %i.hr = shufflevector <8 x i16> %i.hq, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.hs = bitcast <8 x i16> %i.hr to <4 x float>
  %i.ht = shufflevector <4 x float> %i.hs, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.hu = bitcast <4 x float> %i.ht to <2 x i64>
  %i.hv = extractelement <2 x i64> %i.hu, i64 0
  store i64 %i.hv, ptr %i.hp, align 1, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 4 ; 3 uses
  %14 = or disjoint i64 %indvars.iv.next.i.i, 3
  %i.hw = icmp samesign ult i64 %14, %i.bh
  br i1 %i.hw, label %.lr.ph.i.i, label %.preheader.loopexit.i.i, !llvm.loop !207

.lr.ph29.i.i:                                     ; preds = %.lr.ph29.i.i.preheader, %.lr.ph29.i.i
  %indvars.iv31.i.i = phi i64 [ %indvars.iv.next32.i.i, %.lr.ph29.i.i ], [ %indvars.iv31.i.i.ph, %.lr.ph29.i.i.preheader ] ; 4 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.184.i89, i64 %indvars.iv31.i.i
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !61
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.1.i90, i64 %indvars.iv31.i.i
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !61
  %i.ib = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.ic = insertelement <2 x float> %i.ib, float %i.ia, i64 1
  %i.id = fmul fast <2 x float> %i.ic, %i.gi
  %i.ie = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.id)
  %i.if = bitcast float %i.ie to i32
  %i.ig = lshr i32 %i.if, 16
  %i.ih = trunc nuw i32 %i.ig to i16
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %indvars.iv31.i.i
  store i16 %i.ih, ptr %i.ii, align 2, !tbaa !72
  %indvars.iv.next32.i.i = add nuw nsw i64 %indvars.iv31.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next32.i.i, %i.bh
  br i1 %exitcond.not.i.i, label %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i, label %.lr.ph29.i.i, !llvm.loop !208

_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i: ; preds = %.lr.ph29.i.i, %middle.block167, %.preheader.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %.095152.i, i64 8
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 1 ; 2 uses
  %exitcond169.not.i = icmp eq i64 %indvars.iv.next166.i, %wide.trip.count168.i
  br i1 %exitcond169.not.i, label %._crit_edge.i, label %bb.q, !llvm.loop !209

bb.u:                                             ; preds = %bb.p
  %i.ik = atomicrmw add ptr %i.cf, i32 -1 acq_rel, align 4
  %i.il = icmp eq i32 %i.ik, 1
  br i1 %i.il, label %bb.v, label %_ZN4ncnn3MatD2Ev.exit.i

bb.v:                                             ; preds = %bb.u
  %i.im = load ptr, ptr %i.t, align 8, !tbaa !42  ; 3 uses
  %.not3.i119.i = icmp eq ptr %i.im, null
  %i.in = load ptr, ptr %12, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i119.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.io = load ptr, ptr %i.im, align 8, !tbaa !13
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8
  invoke void %i.iq(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef %i.in)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.z, !inline_history !1

bb.x:                                             ; preds = %bb.v
  %.not.i122.i = icmp eq ptr %i.in, null
  br i1 %.not.i122.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.in) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.z:                                             ; preds = %bb.w
  %i.ir = landingpad { ptr, i32 }
          catch ptr null
  %i.is = extractvalue { ptr, i32 } %i.ir, 0
  call void @__clang_call_terminate(ptr %i.is) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.y, %bb.x, %bb.w, %bb.u, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  br label %.body

_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit108.i, %bb.j, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  %.pr = load i32, ptr %5, align 4, !tbaa !28
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.it = phi i32 [ %.pr, %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.aw, %_ZNK4ncnn3Mat7channelEi.exit ]
  %i.iu = icmp eq i32 %i.it, 1
  br i1 %i.iu, label %bb.ab, label %_ZN4ncnn3MatD2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.iv = load ptr, ptr %6, align 8, !tbaa !64    ; 3 uses
  %i.iw = load ptr, ptr %7, align 8, !tbaa !62    ; 4 uses
  %i.ix = load ptr, ptr %8, align 8, !tbaa !64
  %i.iy = load ptr, ptr %9, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  store i64 0, ptr %i.aa, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.z, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.an, i64 noundef 4, ptr noundef null)
          to label %.noexc50 unwind label %bb.ba

.noexc50:                                         ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  store i64 0, ptr %i.ad, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.an, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.ao

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %.noexc50
  %i.iz = icmp sgt i32 %i.ao, 0
  br i1 %i.iz, label %.lr.ph124.i, label %._crit_edge.i31

.lr.ph124.i:                                      ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.ja = load ptr, ptr %11, align 8, !tbaa !43
  %i.jb = load ptr, ptr %10, align 8, !tbaa !43
  %i.jc = icmp sgt i32 %i.an, 0                   ; 2 uses
  %i.jd = icmp sgt i32 %i.an, 3
  %i.je = zext i32 %i.an to i64                   ; 6 uses
  %wide.trip.count135.i = zext nneg i32 %i.ao to i64
  %i.jf = mul i64 %i.aj, %i.am                    ; 3 uses
  %i.jg = mul i64 %i.as, %i.av                    ; 2 uses
  %xtraiter = and i64 %i.je, 1
  %i.jh = icmp eq i32 %i.an, 1
  %unroll_iter = and i64 %i.je, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod172 = trunc i32 %i.an to i1
  br label %bb.ap

._crit_edge.i31:                                  ; preds = %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i36, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.ji = load ptr, ptr %i.ab, align 8, !tbaa !41 ; 2 uses
  %.not.i93.i = icmp eq ptr %i.ji, null
  br i1 %.not.i93.i, label %_ZN4ncnn3MatD2Ev.exit91.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i31
  %i.jj = atomicrmw add ptr %i.ji, i32 -1 acq_rel, align 4
  %i.jk = icmp eq i32 %i.jj, 1
  br i1 %i.jk, label %bb.ad, label %_ZN4ncnn3MatD2Ev.exit91.i

bb.ad:                                            ; preds = %bb.ac
  %i.jl = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 3 uses
  %.not3.i94.i = icmp eq ptr %i.jl, null
  %i.jm = load ptr, ptr %11, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i94.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jn = load ptr, ptr %i.jl, align 8, !tbaa !13
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8
  invoke void %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %i.jl, ptr noundef %i.jm)
          to label %_ZN4ncnn3MatD2Ev.exit91.i unwind label %bb.ah, !inline_history !1

bb.af:                                            ; preds = %bb.ad
  %.not.i108.i = icmp eq ptr %i.jm, null
  br i1 %.not.i108.i, label %_ZN4ncnn3MatD2Ev.exit91.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.jm) #6
  br label %_ZN4ncnn3MatD2Ev.exit91.i

bb.ah:                                            ; preds = %bb.ae
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit91.i:                        ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac, %._crit_edge.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.js = load ptr, ptr %i.y, align 8, !tbaa !41  ; 2 uses
  %.not.i97.i = icmp eq ptr %i.js, null
  br i1 %.not.i97.i, label %_ZN4ncnnL27resize_bilinear_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit91.i
  %i.jt = atomicrmw add ptr %i.js, i32 -1 acq_rel, align 4
  %i.ju = icmp eq i32 %i.jt, 1
  br i1 %i.ju, label %bb.aj, label %_ZN4ncnnL27resize_bilinear_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.jv = load ptr, ptr %i.z, align 8, !tbaa !42  ; 3 uses
  %.not3.i98.i = icmp eq ptr %i.jv, null
  %i.jw = load ptr, ptr %10, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i98.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jx = load ptr, ptr %i.jv, align 8, !tbaa !13
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8
  invoke void %i.jz(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, ptr noundef %i.jw)
          to label %_ZN4ncnnL27resize_bilinear_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit unwind label %bb.an, !inline_history !1

bb.al:                                            ; preds = %bb.aj
  %.not.i106.i = icmp eq ptr %i.jw, null
  br i1 %.not.i106.i, label %_ZN4ncnnL27resize_bilinear_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef nonnull %i.jw) #6
  br label %_ZN4ncnnL27resize_bilinear_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.an:                                            ; preds = %bb.ak
  %i.ka = landingpad { ptr, i32 }
          catch ptr null
  %i.kb = extractvalue { ptr, i32 } %i.ka, 0
  call void @__clang_call_terminate(ptr %i.kb) #22
  unreachable

bb.ao:                                            ; preds = %.noexc50
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.kd = load ptr, ptr %i.y, align 8, !tbaa !41  ; 2 uses
  %.not.i101.i = icmp eq ptr %i.kd, null
  br i1 %.not.i101.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.at

end_hunk_7
begin_hunk_8_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.12:bb.a

bb.aq:                                            ; preds = %bb.ap
  %i.kh = add nsw i32 %.084120.i, 1
  %i.ki = icmp eq i32 %i.kf, %i.kh
  br i1 %i.ki, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.kj = add nsw i32 %i.kf, 1
  %i.kk = sext i32 %i.kj to i64
  %i.kl = mul i64 %i.jf, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.kl ; 3 uses
  br i1 %i.jc, label %.lr.ph118.i.preheader, label %.loopexit.i32.thread

.lr.ph118.i.preheader:                            ; preds = %bb.ar
  br i1 %i.jh, label %.lr.ph118.i.epil.preheader, label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %.lr.ph118.i.preheader, %.lr.ph118.i
  %indvars.iv127.i = phi i64 [ %indvars.iv.next128.i.1, %.lr.ph118.i ], [ 0, %.lr.ph118.i.preheader ] ; 4 uses
  %.087116.i = phi ptr [ %i.lm, %.lr.ph118.i ], [ %i.iv, %.lr.ph118.i.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph118.i ], [ 0, %.lr.ph118.i.preheader ]
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv127.i
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !28
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [2 x i8], ptr %i.km, i64 %i.kp
  %i.kr = load <2 x float>, ptr %.087116.i, align 4, !tbaa !61
  %i.ks = load <2 x i16>, ptr %i.kq, align 2, !tbaa !72
  %i.kt = zext <2 x i16> %i.ks to <2 x i32>
  %i.ku = shl nuw <2 x i32> %i.kt, splat (i32 16)
  %i.kv = bitcast <2 x i32> %i.ku to <2 x float>
  %i.kw = fmul fast <2 x float> %i.kr, %i.kv
  %i.kx = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.kw)
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.081122.i, i64 %indvars.iv127.i
  store float %i.kx, ptr %i.ky, align 4, !tbaa !61
  %i.kz = getelementptr inbounds nuw i8, ptr %.087116.i, i64 8
  %indvars.iv.next128.i = or disjoint i64 %indvars.iv127.i, 1 ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.next128.i
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !28
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [2 x i8], ptr %i.km, i64 %i.lc
  %i.le = load <2 x float>, ptr %i.kz, align 4, !tbaa !61
  %i.lf = load <2 x i16>, ptr %i.ld, align 2, !tbaa !72
  %i.lg = zext <2 x i16> %i.lf to <2 x i32>
  %i.lh = shl nuw <2 x i32> %i.lg, splat (i32 16)
  %i.li = bitcast <2 x i32> %i.lh to <2 x float>
  %i.lj = fmul fast <2 x float> %i.le, %i.li
  %i.lk = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.lj)
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.081122.i, i64 %indvars.iv.next128.i
  store float %i.lk, ptr %i.ll, align 4, !tbaa !61
  %i.lm = getelementptr inbounds nuw i8, ptr %.087116.i, i64 16 ; 2 uses
  %indvars.iv.next128.i.1 = add nuw nsw i64 %indvars.iv127.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i32.loopexit.unr-lcssa, label %.lr.ph118.i, !llvm.loop !210

bb.as:                                            ; preds = %bb.aq
  %i.ln = sext i32 %i.kf to i64
  %i.lo = mul i64 %i.jf, %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.lo
  %i.lq = add nsw i32 %i.kf, 1
  %i.lr = sext i32 %i.lq to i64
  %i.ls = mul i64 %i.jf, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ls
  br i1 %i.jc, label %.lr.ph.i46, label %.loopexit.i32.thread

.lr.ph.i46:                                       ; preds = %bb.as, %.lr.ph.i46
  %indvars.iv.i47 = phi i64 [ %indvars.iv.next.i48, %.lr.ph.i46 ], [ 0, %bb.as ] ; 4 uses
  %.080114.i = phi ptr [ %i.mo, %.lr.ph.i46 ], [ %i.iv, %bb.as ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.i47
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !28
  %i.lw = sext i32 %i.lv to i64                   ; 2 uses
  %i.lx = getelementptr inbounds [2 x i8], ptr %i.lp, i64 %i.lw
  %i.ly = getelementptr inbounds [2 x i8], ptr %i.lt, i64 %i.lw
  %i.lz = load <2 x float>, ptr %.080114.i, align 4, !tbaa !61 ; 2 uses
  %i.ma = load <2 x i16>, ptr %i.lx, align 2, !tbaa !72
  %i.mb = zext <2 x i16> %i.ma to <2 x i32>
  %i.mc = shl nuw <2 x i32> %i.mb, splat (i32 16)
  %i.md = bitcast <2 x i32> %i.mc to <2 x float>
  %i.me = fmul fast <2 x float> %i.lz, %i.md
  %i.mf = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.me)
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.081122.i, i64 %indvars.iv.i47
  store float %i.mf, ptr %i.mg, align 4, !tbaa !61
  %i.mh = load <2 x i16>, ptr %i.ly, align 2, !tbaa !72
  %i.mi = zext <2 x i16> %i.mh to <2 x i32>
  %i.mj = shl nuw <2 x i32> %i.mi, splat (i32 16)
  %i.mk = bitcast <2 x i32> %i.mj to <2 x float>
  %i.ml = fmul fast <2 x float> %i.lz, %i.mk
  %i.mm = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.ml)
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.082121.i, i64 %indvars.iv.i47
  store float %i.mm, ptr %i.mn, align 4, !tbaa !61
  %i.mo = getelementptr inbounds nuw i8, ptr %.080114.i, i64 8
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, %i.je
  br i1 %exitcond.not.i49, label %.loopexit.i32, label %.lr.ph.i46, !llvm.loop !211

.loopexit.i32.thread:                             ; preds = %bb.as, %bb.ar
  %.183.i.ph = phi ptr [ %.082121.i, %bb.as ], [ %.081122.i, %bb.ar ]
  %.1.i33.ph = phi ptr [ %.081122.i, %bb.as ], [ %.082121.i, %bb.ar ]
  %i.mp = mul i64 %i.jg, %indvars.iv132.i
  %i.mq = load <2 x float>, ptr %.0123.i, align 4, !tbaa !61
  br label %.preheader.i.i34

.loopexit.i32.loopexit.unr-lcssa:                 ; preds = %.lr.ph118.i
  br i1 %lcmp.mod.not, label %.loopexit.i32, label %.lr.ph118.i.epil.preheader

.lr.ph118.i.epil.preheader:                       ; preds = %.loopexit.i32.loopexit.unr-lcssa, %.lr.ph118.i.preheader
  %indvars.iv127.i.epil.init = phi i64 [ 0, %.lr.ph118.i.preheader ], [ %indvars.iv.next128.i.1, %.loopexit.i32.loopexit.unr-lcssa ] ; 2 uses
  %.087116.i.epil.init = phi ptr [ %i.iv, %.lr.ph118.i.preheader ], [ %i.lm, %.loopexit.i32.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod172)
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv127.i.epil.init
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !28
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr inbounds [2 x i8], ptr %i.km, i64 %i.mt
  %i.mv = load <2 x float>, ptr %.087116.i.epil.init, align 4, !tbaa !61
  %i.mw = load <2 x i16>, ptr %i.mu, align 2, !tbaa !72
  %i.mx = zext <2 x i16> %i.mw to <2 x i32>
  %i.my = shl nuw <2 x i32> %i.mx, splat (i32 16)
  %i.mz = bitcast <2 x i32> %i.my to <2 x float>
  %i.na = fmul fast <2 x float> %i.mv, %i.mz
  %i.nb = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.na)
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.081122.i, i64 %indvars.iv127.i.epil.init
  store float %i.nb, ptr %i.nc, align 4, !tbaa !61
  br label %.loopexit.i32

.loopexit.i32:                                    ; preds = %.lr.ph.i46, %.lr.ph118.i.epil.preheader, %.loopexit.i32.loopexit.unr-lcssa, %bb.ap
  %.183.i = phi ptr [ %.082121.i, %bb.ap ], [ %.081122.i, %.lr.ph118.i.epil.preheader ], [ %.081122.i, %.loopexit.i32.loopexit.unr-lcssa ], [ %.082121.i, %.lr.ph.i46 ] ; 3 uses
  %.1.i33 = phi ptr [ %.081122.i, %bb.ap ], [ %.082121.i, %.lr.ph118.i.epil.preheader ], [ %.082121.i, %.loopexit.i32.loopexit.unr-lcssa ], [ %.081122.i, %.lr.ph.i46 ] ; 3 uses
  %i.nd = mul i64 %i.jg, %indvars.iv132.i         ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.nd
  %i.nf = load <2 x float>, ptr %.0123.i, align 4, !tbaa !61 ; 4 uses
  %i.ng = shufflevector <2 x float> %i.nf, <2 x float> poison, <4 x i32> zeroinitializer
  %i.nh = shufflevector <2 x float> %i.nf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br i1 %i.jd, label %.lr.ph.i.i42, label %.preheader.i.i34

.preheader.loopexit.i.i45:                        ; preds = %.lr.ph.i.i42
  %i.ni = trunc nuw nsw i64 %indvars.iv.next.i.i44 to i32
  br label %.preheader.i.i34

.preheader.i.i34:                                 ; preds = %.loopexit.i32.thread, %.preheader.loopexit.i.i45, %.loopexit.i32
  %i.nj = phi i64 [ %i.nd, %.loopexit.i32 ], [ %i.nd, %.preheader.loopexit.i.i45 ], [ %i.mp, %.loopexit.i32.thread ]
  %.1.i3394 = phi ptr [ %.1.i33, %.loopexit.i32 ], [ %.1.i33, %.preheader.loopexit.i.i45 ], [ %.1.i33.ph, %.loopexit.i32.thread ] ; 3 uses
  %.183.i93 = phi ptr [ %.183.i, %.loopexit.i32 ], [ %.183.i, %.preheader.loopexit.i.i45 ], [ %.183.i.ph, %.loopexit.i32.thread ] ; 3 uses
  %.0.lcssa.i.i35 = phi i32 [ 0, %.loopexit.i32 ], [ %i.ni, %.preheader.loopexit.i.i45 ], [ 0, %.loopexit.i32.thread ] ; 2 uses
  %i.nk = phi <2 x float> [ %i.nf, %.loopexit.i32 ], [ %i.nf, %.preheader.loopexit.i.i45 ], [ %i.mq, %.loopexit.i32.thread ] ; 3 uses
  %i.nl = icmp slt i32 %.0.lcssa.i.i35, %i.an
  br i1 %i.nl, label %.lr.ph29.preheader.i.i37, label %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i36

.lr.ph29.preheader.i.i37:                         ; preds = %.preheader.i.i34
  %i.nm = zext i32 %.0.lcssa.i.i35 to i64         ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.nj ; 2 uses
  %i.no = sub nsw i64 %i.je, %i.nm                ; 3 uses
  %min.iters.check = icmp ult i64 %i.no, 8
  br i1 %min.iters.check, label %.lr.ph29.i.i38.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph29.preheader.i.i37
  %n.vec = and i64 %i.no, -8                      ; 3 uses
  %i.np = add nsw i64 %n.vec, %i.nm
  %broadcast.splat = shufflevector <2 x float> %i.nk, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat148 = shufflevector <2 x float> %i.nk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nq = add nuw i64 %index, %i.nm               ; 3 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.1.i3394, i64 %i.nq ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %wide.load = load <4 x float>, ptr %i.nr, align 4, !tbaa !61
  %wide.load149 = load <4 x float>, ptr %i.ns, align 4, !tbaa !61
  %i.nt = fmul fast <4 x float> %wide.load, %broadcast.splat
  %i.nu = fmul fast <4 x float> %wide.load149, %broadcast.splat
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.183.i93, i64 %i.nq ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %wide.load150 = load <4 x float>, ptr %i.nv, align 4, !tbaa !61
  %wide.load151 = load <4 x float>, ptr %i.nw, align 4, !tbaa !61
  %i.nx = fmul fast <4 x float> %wide.load150, %broadcast.splat148
  %i.ny = fmul fast <4 x float> %wide.load151, %broadcast.splat148
  %i.nz = fadd fast <4 x float> %i.nx, %i.nt
  %i.oa = fadd fast <4 x float> %i.ny, %i.nu
  %i.ob = bitcast <4 x float> %i.nz to <4 x i32>
  %i.oc = bitcast <4 x float> %i.oa to <4 x i32>
  %i.od = lshr <4 x i32> %i.ob, splat (i32 16)
  %i.oe = lshr <4 x i32> %i.oc, splat (i32 16)
  %i.of = trunc nuw <4 x i32> %i.od to <4 x i16>
  %i.og = trunc nuw <4 x i32> %i.oe to <4 x i16>
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.nn, i64 %i.nq ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store <4 x i16> %i.of, ptr %i.oh, align 2, !tbaa !72
  store <4 x i16> %i.og, ptr %i.oi, align 2, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.oj = icmp eq i64 %index.next, %n.vec
  br i1 %i.oj, label %middle.block, label %vector.body, !llvm.loop !212

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.no, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i36, label %.lr.ph29.i.i38.preheader

.lr.ph29.i.i38.preheader:                         ; preds = %.lr.ph29.preheader.i.i37, %middle.block
  %indvars.iv31.i.i39.ph = phi i64 [ %i.nm, %.lr.ph29.preheader.i.i37 ], [ %i.np, %middle.block ]
  br label %.lr.ph29.i.i38

.lr.ph.i.i42:                                     ; preds = %.loopexit.i32, %.lr.ph.i.i42
  %indvars.iv.i.i43 = phi i64 [ %indvars.iv.next.i.i44, %.lr.ph.i.i42 ], [ 0, %.loopexit.i32 ] ; 4 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %.1.i33, i64 %indvars.iv.i.i43
  %i.ol = load <4 x float>, ptr %i.ok, align 1, !tbaa !20
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.183.i, i64 %indvars.iv.i.i43
  %i.on = load <4 x float>, ptr %i.om, align 1, !tbaa !20
  %i.oo = fmul fast <4 x float> %i.ol, %i.ng
  %i.op = fmul fast <4 x float> %i.on, %i.nh
  %i.oq = fadd fast <4 x float> %i.op, %i.oo
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %indvars.iv.i.i43
  %i.os = bitcast <4 x float> %i.oq to <8 x i16>
  %i.ot = shufflevector <8 x i16> %i.os, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ou = bitcast <8 x i16> %i.ot to <4 x float>
  %i.ov = shufflevector <4 x float> %i.ou, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ow = bitcast <4 x float> %i.ov to <2 x i64>
  %i.ox = extractelement <2 x i64> %i.ow, i64 0
  store i64 %i.ox, ptr %i.or, align 1, !tbaa !20
  %indvars.iv.next.i.i44 = add nuw nsw i64 %indvars.iv.i.i43, 4 ; 3 uses
  %15 = or disjoint i64 %indvars.iv.next.i.i44, 3
  %i.oy = icmp samesign ult i64 %15, %i.je
  br i1 %i.oy, label %.lr.ph.i.i42, label %.preheader.loopexit.i.i45, !llvm.loop !207

.lr.ph29.i.i38:                                   ; preds = %.lr.ph29.i.i38.preheader, %.lr.ph29.i.i38
  %indvars.iv31.i.i39 = phi i64 [ %indvars.iv.next32.i.i40, %.lr.ph29.i.i38 ], [ %indvars.iv31.i.i39.ph, %.lr.ph29.i.i38.preheader ] ; 4 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %.1.i3394, i64 %indvars.iv31.i.i39
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !61
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.183.i93, i64 %indvars.iv31.i.i39
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !61
  %i.pd = insertelement <2 x float> poison, float %i.pa, i64 0
  %i.pe = insertelement <2 x float> %i.pd, float %i.pc, i64 1
  %i.pf = fmul fast <2 x float> %i.pe, %i.nk
  %i.pg = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.pf)
  %i.ph = bitcast float %i.pg to i32
  %i.pi = lshr i32 %i.ph, 16
  %i.pj = trunc nuw i32 %i.pi to i16
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %i.nn, i64 %indvars.iv31.i.i39
  store i16 %i.pj, ptr %i.pk, align 2, !tbaa !72
  %indvars.iv.next32.i.i40 = add nuw nsw i64 %indvars.iv31.i.i39, 1 ; 2 uses
  %exitcond.not.i.i41 = icmp eq i64 %indvars.iv.next32.i.i40, %i.je
  br i1 %exitcond.not.i.i41, label %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i36, label %.lr.ph29.i.i38, !llvm.loop !213

_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i36: ; preds = %.lr.ph29.i.i38, %middle.block, %.preheader.i.i34
  %i.pl = getelementptr inbounds nuw i8, ptr %.0123.i, i64 8
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %exitcond136.not.i = icmp eq i64 %indvars.iv.next133.i, %wide.trip.count135.i
  br i1 %exitcond136.not.i, label %._crit_edge.i31, label %bb.ap, !llvm.loop !214

bb.at:                                            ; preds = %bb.ao
  %i.pm = atomicrmw add ptr %i.kd, i32 -1 acq_rel, align 4
  %i.pn = icmp eq i32 %i.pm, 1
  br i1 %i.pn, label %bb.au, label %_ZN4ncnn3MatD2Ev.exit.i30

bb.au:                                            ; preds = %bb.at
  %i.po = load ptr, ptr %i.z, align 8, !tbaa !42  ; 3 uses
  %.not3.i102.i = icmp eq ptr %i.po, null
  %i.pp = load ptr, ptr %10, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i102.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pq = load ptr, ptr %i.po, align 8, !tbaa !13
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 24
  %i.ps = load ptr, ptr %i.pr, align 8
  invoke void %i.ps(ptr noundef nonnull align 8 dereferenceable(8) %i.po, ptr noundef %i.pp)
          to label %_ZN4ncnn3MatD2Ev.exit.i30 unwind label %bb.ay, !inline_history !1

bb.aw:                                            ; preds = %bb.au
  %.not.i105.i = icmp eq ptr %i.pp, null
  br i1 %.not.i105.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.pp) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i30

bb.ay:                                            ; preds = %bb.av
  %i.pt = landingpad { ptr, i32 }
          catch ptr null
  %i.pu = extractvalue { ptr, i32 } %i.pt, 0
  call void @__clang_call_terminate(ptr %i.pu) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i30:                        ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %.body

_ZN4ncnnL27resize_bilinear_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit91.i, %bb.ai, %bb.ak, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL27resize_bilinear_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.aa
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.pv = load i32, ptr %i.b, align 4, !tbaa !28
  %i.pw = sext i32 %i.pv to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.pw
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge, %bb.a
  ret void

bb.ba:                                            ; preds = %bb.ab, %bb.c
  %i.px = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.ba, %_ZN4ncnn3MatD2Ev.exit.i30, %_ZN4ncnn3MatD2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ce, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.px, %bb.ba ], [ %i.kc, %_ZN4ncnn3MatD2Ev.exit.i30 ]
  %i.py = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.py) #22
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.13(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 10 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.di

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not183 = icmp sgt i32 %i.k, %i.j
  br i1 %.not183, label %._crit_edge, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.aq = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.aq, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.ar = load i32, ptr %i.l, align 4, !tbaa !29, !noalias !236
  %i.as = load ptr, ptr %3, align 8, !tbaa !43, !noalias !236
  %i.at = load i64, ptr %i.m, align 8, !tbaa !37, !noalias !236
  %i.au = mul i64 %i.at, %indvars.iv
  %i.av = load i64, ptr %i.n, align 8, !tbaa !32, !noalias !236 ; 3 uses
  %i.aw = mul i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw ; 17 uses
  %i.ay = sext i32 %i.ar to i64                   ; 2 uses
  %i.az = load i32, ptr %i.o, align 4, !tbaa !29, !noalias !237 ; 18 uses
  %i.ba = load i32, ptr %i.p, align 8, !tbaa !27, !noalias !237 ; 4 uses
  %i.bb = load ptr, ptr %4, align 8, !tbaa !43, !noalias !237
  %i.bc = load i64, ptr %i.q, align 8, !tbaa !37, !noalias !237
  %i.bd = mul i64 %i.bc, %indvars.iv
  %i.be = load i64, ptr %i.r, align 8, !tbaa !32, !noalias !237 ; 3 uses
  %i.bf = mul i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bf ; 2 uses
  %i.bh = sext i32 %i.az to i64                   ; 2 uses
  %i.bi = load i32, ptr %5, align 4, !tbaa !28    ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 4
  br i1 %i.bj, label %bb.c, label %bb.bf

bb.c:                                             ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.bk = load ptr, ptr %6, align 8, !tbaa !64    ; 4 uses
  %i.bl = load ptr, ptr %7, align 8, !tbaa !62    ; 4 uses
  %i.bm = load ptr, ptr %8, align 8, !tbaa !64
  %i.bn = load ptr, ptr %9, align 8, !tbaa !62
end_hunk_8
begin_hunk_9_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.13:bb.a
  %i.pk = bitcast <8 x i16> %i.pj to <4 x float>
  %i.pl = load i64, ptr %i.pe, align 1, !tbaa !20
  %i.pm = insertelement <2 x i64> poison, i64 %i.pl, i64 0
  %i.pn = bitcast <2 x i64> %i.pm to <8 x i16>
  %i.po = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pp = bitcast <8 x i16> %i.po to <4 x float>
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pr = load i64, ptr %i.pq, align 1, !tbaa !20
  %i.ps = insertelement <2 x i64> poison, i64 %i.pr, i64 0
  %i.pt = bitcast <2 x i64> %i.ps to <8 x i16>
  %i.pu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pv = bitcast <8 x i16> %i.pu to <4 x float>
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.px = load i64, ptr %i.pw, align 1, !tbaa !20
  %i.py = insertelement <2 x i64> poison, i64 %i.px, i64 0
  %i.pz = bitcast <2 x i64> %i.py to <8 x i16>
  %i.qa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qb = bitcast <8 x i16> %i.qa to <4 x float>
  %i.qc = fmul fast <4 x float> %i.oq, %i.pk
  %i.qd = fmul fast <4 x float> %i.ou, %i.pp
  %i.qe = fadd fast <4 x float> %i.qd, %i.qc
  %i.qf = fmul fast <4 x float> %i.oy, %i.pv
  %i.qg = fadd fast <4 x float> %i.qe, %i.qf
  %i.qh = fmul fast <4 x float> %i.pc, %i.qb
  %i.qi = fadd fast <4 x float> %i.qg, %i.qh
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %.0229431.i, i64 %i.pd
  store <4 x float> %i.qi, ptr %i.qj, align 16, !tbaa !20
  %i.qk = getelementptr inbounds i8, ptr %i.on, i64 -8
  %i.ql = load i64, ptr %i.qk, align 1, !tbaa !20
  %i.qm = insertelement <2 x i64> poison, i64 %i.ql, i64 0
  %i.qn = bitcast <2 x i64> %i.qm to <8 x i16>
  %i.qo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qp = bitcast <8 x i16> %i.qo to <4 x float>
  %i.qq = load i64, ptr %i.on, align 1, !tbaa !20
  %i.qr = insertelement <2 x i64> poison, i64 %i.qq, i64 0
  %i.qs = bitcast <2 x i64> %i.qr to <8 x i16>
  %i.qt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qu = bitcast <8 x i16> %i.qt to <4 x float>
  %i.qv = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.qw = load i64, ptr %i.qv, align 1, !tbaa !20
  %i.qx = insertelement <2 x i64> poison, i64 %i.qw, i64 0
  %i.qy = bitcast <2 x i64> %i.qx to <8 x i16>
  %i.qz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ra = bitcast <8 x i16> %i.qz to <4 x float>
  %i.rb = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.rc = load i64, ptr %i.rb, align 1, !tbaa !20
  %i.rd = insertelement <2 x i64> poison, i64 %i.rc, i64 0
  %i.re = bitcast <2 x i64> %i.rd to <8 x i16>
  %i.rf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.re, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rg = bitcast <8 x i16> %i.rf to <4 x float>
  %i.rh = fmul fast <4 x float> %i.oq, %i.qp
  %i.ri = fmul fast <4 x float> %i.ou, %i.qu
  %i.rj = fadd fast <4 x float> %i.ri, %i.rh
  %i.rk = fmul fast <4 x float> %i.oy, %i.ra
  %i.rl = fadd fast <4 x float> %i.rj, %i.rk
  %i.rm = fmul fast <4 x float> %i.pc, %i.rg
  %i.rn = fadd fast <4 x float> %i.rl, %i.rm
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %.0227432.i, i64 %i.pd
  store <4 x float> %i.rn, ptr %i.ro, align 16, !tbaa !20
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %.v.v.2.i ; 4 uses
  %i.rp = getelementptr inbounds i8, ptr %gep.2.i, i64 -8
  %i.rq = load i64, ptr %i.rp, align 1, !tbaa !20
  %i.rr = insertelement <2 x i64> poison, i64 %i.rq, i64 0
  %i.rs = bitcast <2 x i64> %i.rr to <8 x i16>
  %i.rt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ru = bitcast <8 x i16> %i.rt to <4 x float>
  %i.rv = load i64, ptr %gep.2.i, align 1, !tbaa !20
  %i.rw = insertelement <2 x i64> poison, i64 %i.rv, i64 0
  %i.rx = bitcast <2 x i64> %i.rw to <8 x i16>
  %i.ry = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rz = bitcast <8 x i16> %i.ry to <4 x float>
  %i.sa = getelementptr inbounds nuw i8, ptr %gep.2.i, i64 8
  %i.sb = load i64, ptr %i.sa, align 1, !tbaa !20
  %i.sc = insertelement <2 x i64> poison, i64 %i.sb, i64 0
  %i.sd = bitcast <2 x i64> %i.sc to <8 x i16>
  %i.se = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sf = bitcast <8 x i16> %i.se to <4 x float>
  %i.sg = getelementptr inbounds nuw i8, ptr %gep.2.i, i64 16
  %i.sh = load i64, ptr %i.sg, align 1, !tbaa !20
  %i.si = insertelement <2 x i64> poison, i64 %i.sh, i64 0
  %i.sj = bitcast <2 x i64> %i.si to <8 x i16>
  %i.sk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sl = bitcast <8 x i16> %i.sk to <4 x float>
  %i.sm = fmul fast <4 x float> %i.oq, %i.ru
  %i.sn = fmul fast <4 x float> %i.ou, %i.rz
  %i.so = fadd fast <4 x float> %i.sn, %i.sm
  %i.sp = fmul fast <4 x float> %i.oy, %i.sf
  %i.sq = fadd fast <4 x float> %i.so, %i.sp
  %i.sr = fmul fast <4 x float> %i.pc, %i.sl
  %i.ss = fadd fast <4 x float> %i.sq, %i.sr
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.0225433.i, i64 %i.pd
  store <4 x float> %i.ss, ptr %i.st, align 16, !tbaa !20
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %.v.v.3.i ; 4 uses
  %i.su = getelementptr inbounds i8, ptr %gep.3.i, i64 -8
  %i.sv = load i64, ptr %i.su, align 1, !tbaa !20
  %i.sw = insertelement <2 x i64> poison, i64 %i.sv, i64 0
  %i.sx = bitcast <2 x i64> %i.sw to <8 x i16>
  %i.sy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sz = bitcast <8 x i16> %i.sy to <4 x float>
  %i.ta = load i64, ptr %gep.3.i, align 1, !tbaa !20
  %i.tb = insertelement <2 x i64> poison, i64 %i.ta, i64 0
  %i.tc = bitcast <2 x i64> %i.tb to <8 x i16>
  %i.td = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.te = bitcast <8 x i16> %i.td to <4 x float>
  %i.tf = getelementptr inbounds nuw i8, ptr %gep.3.i, i64 8
  %i.tg = load i64, ptr %i.tf, align 1, !tbaa !20
  %i.th = insertelement <2 x i64> poison, i64 %i.tg, i64 0
  %i.ti = bitcast <2 x i64> %i.th to <8 x i16>
  %i.tj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ti, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tk = bitcast <8 x i16> %i.tj to <4 x float>
  %i.tl = getelementptr inbounds nuw i8, ptr %gep.3.i, i64 16
  %i.tm = load i64, ptr %i.tl, align 1, !tbaa !20
  %i.tn = insertelement <2 x i64> poison, i64 %i.tm, i64 0
  %i.to = bitcast <2 x i64> %i.tn to <8 x i16>
  %i.tp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.to, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tq = bitcast <8 x i16> %i.tp to <4 x float>
  %i.tr = fmul fast <4 x float> %i.oq, %i.sz
  %i.ts = fmul fast <4 x float> %i.ou, %i.te
  %i.tt = fadd fast <4 x float> %i.ts, %i.tr
  %i.tu = fmul fast <4 x float> %i.oy, %i.tk
  %i.tv = fadd fast <4 x float> %i.tt, %i.tu
  %i.tw = fmul fast <4 x float> %i.pc, %i.tq
  %i.tx = fadd fast <4 x float> %i.tv, %i.tw
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %.0224434.i, i64 %i.pd
  store <4 x float> %i.tx, ptr %i.ty, align 16, !tbaa !20
  %i.tz = getelementptr inbounds nuw i8, ptr %.0214416.i, i64 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.thread410.3.i, !llvm.loop !224

.loopexit.i:                                      ; preds = %.thread410.3.i, %bb.al, %.lr.ph426.i, %.lr.ph429.i, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %.1230.i = phi ptr [ %.0229431.i, %bb.ae ], [ %.0227432.i, %bb.ag ], [ %.0225433.i, %bb.ai ], [ %.0224434.i, %bb.ak ], [ %.0229431.i, %bb.am ], [ %.0224434.i, %bb.al ], [ %.0227432.i, %.lr.ph429.i ], [ %.0225433.i, %.lr.ph426.i ], [ %.0229431.i, %.thread410.3.i ] ; 4 uses
  %.1228.i = phi ptr [ %.0227432.i, %bb.ae ], [ %.0225433.i, %bb.ag ], [ %.0224434.i, %bb.ai ], [ %.0229431.i, %bb.ak ], [ %.0227432.i, %bb.am ], [ %.0229431.i, %bb.al ], [ %.0225433.i, %.lr.ph429.i ], [ %.0224434.i, %.lr.ph426.i ], [ %.0227432.i, %.thread410.3.i ] ; 4 uses
  %.1226.i = phi ptr [ %.0225433.i, %bb.ae ], [ %.0224434.i, %bb.ag ], [ %.0229431.i, %bb.ai ], [ %.0227432.i, %bb.ak ], [ %.0225433.i, %bb.am ], [ %.0227432.i, %bb.al ], [ %.0224434.i, %.lr.ph429.i ], [ %.0229431.i, %.lr.ph426.i ], [ %.0225433.i, %.thread410.3.i ] ; 4 uses
  %.1.i = phi ptr [ %.0224434.i, %bb.ae ], [ %.0229431.i, %bb.ag ], [ %.0227432.i, %bb.ai ], [ %.0225433.i, %bb.ak ], [ %.0224434.i, %bb.am ], [ %.0225433.i, %bb.al ], [ %.0229431.i, %.lr.ph429.i ], [ %.0227432.i, %.lr.ph426.i ], [ %.0224434.i, %.thread410.3.i ] ; 4 uses
  %i.ua = mul i64 %i.bw, %indvars.iv458.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ua ; 3 uses
  %i.uc = load <4 x float>, ptr %.0257430.i, align 4, !tbaa !61 ; 5 uses
  %i.ud = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ue = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.uf = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.ug = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  br i1 %i.bt, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.loopexit.i.i:                          ; preds = %.lr.ph.i.i
  %i.uh = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.loopexit.i
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i ], [ %i.uh, %.preheader.loopexit.i.i ] ; 2 uses
  %i.ui = icmp slt i32 %.0.lcssa.i.i, %i.bu
  br i1 %i.ui, label %.lr.ph47.preheader.i.i, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i

.lr.ph47.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.uj = zext i32 %.0.lcssa.i.i to i64           ; 4 uses
  %i.uk = sub nsw i64 %i.bv, %i.uj                ; 3 uses
  %min.iters.check261 = icmp ult i64 %i.uk, 4
  br i1 %min.iters.check261, label %.lr.ph47.i.i.preheader, label %vector.ph262

vector.ph262:                                     ; preds = %.lr.ph47.preheader.i.i
  %n.vec263 = and i64 %i.uk, -4                   ; 3 uses
  %i.ul = add nsw i64 %n.vec263, %i.uj
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph262
  %index273 = phi i64 [ 0, %vector.ph262 ], [ %index.next278, %vector.body272 ] ; 2 uses
  %i.um = add nuw i64 %index273, %i.uj            ; 5 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %.1230.i, i64 %i.um
  %wide.load274 = load <4 x float>, ptr %i.un, align 4, !tbaa !61
  %i.uo = fmul fast <4 x float> %wide.load274, %i.ud
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %.1228.i, i64 %i.um
  %wide.load275 = load <4 x float>, ptr %i.up, align 4, !tbaa !61
  %i.uq = fmul fast <4 x float> %wide.load275, %i.ue
  %i.ur = fadd fast <4 x float> %i.uq, %i.uo
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.1226.i, i64 %i.um
  %wide.load276 = load <4 x float>, ptr %i.us, align 4, !tbaa !61
  %i.ut = fmul fast <4 x float> %wide.load276, %i.uf
  %i.uu = fadd fast <4 x float> %i.ur, %i.ut
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %i.um
  %wide.load277 = load <4 x float>, ptr %i.uv, align 4, !tbaa !61
  %i.uw = fmul fast <4 x float> %wide.load277, %i.ug
  %i.ux = fadd fast <4 x float> %i.uu, %i.uw
  %i.uy = bitcast <4 x float> %i.ux to <4 x i32>
  %i.uz = lshr <4 x i32> %i.uy, splat (i32 16)
  %i.va = trunc nuw <4 x i32> %i.uz to <4 x i16>
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %i.ub, i64 %i.um
  store <4 x i16> %i.va, ptr %i.vb, align 2, !tbaa !72
  %index.next278 = add nuw i64 %index273, 4       ; 2 uses
  %i.vc = icmp eq i64 %index.next278, %n.vec263
  br i1 %i.vc, label %middle.block279, label %vector.body272, !llvm.loop !225

middle.block279:                                  ; preds = %vector.body272
  %cmp.n280 = icmp eq i64 %i.uk, %n.vec263
  br i1 %cmp.n280, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i, label %.lr.ph47.i.i.preheader

.lr.ph47.i.i.preheader:                           ; preds = %.lr.ph47.preheader.i.i, %middle.block279
  %indvars.iv49.i.i.ph = phi i64 [ %i.uj, %.lr.ph47.preheader.i.i ], [ %i.ul, %middle.block279 ]
  br label %.lr.ph47.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.loopexit.i ] ; 6 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.1230.i, i64 %indvars.iv.i.i
  %i.ve = load <4 x float>, ptr %i.vd, align 1, !tbaa !20
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %.1228.i, i64 %indvars.iv.i.i
  %i.vg = load <4 x float>, ptr %i.vf, align 1, !tbaa !20
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %.1226.i, i64 %indvars.iv.i.i
  %i.vi = load <4 x float>, ptr %i.vh, align 1, !tbaa !20
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %indvars.iv.i.i
  %i.vk = load <4 x float>, ptr %i.vj, align 1, !tbaa !20
  %i.vl = fmul fast <4 x float> %i.ve, %i.ud
  %i.vm = fmul fast <4 x float> %i.vg, %i.ue
  %i.vn = fadd fast <4 x float> %i.vm, %i.vl
  %i.vo = fmul fast <4 x float> %i.vi, %i.uf
  %i.vp = fadd fast <4 x float> %i.vn, %i.vo
  %i.vq = fmul fast <4 x float> %i.vk, %i.ug
  %i.vr = fadd fast <4 x float> %i.vp, %i.vq
  %i.vs = getelementptr inbounds nuw [2 x i8], ptr %i.ub, i64 %indvars.iv.i.i
  %i.vt = bitcast <4 x float> %i.vr to <8 x i16>
  %i.vu = shufflevector <8 x i16> %i.vt, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.vv = bitcast <8 x i16> %i.vu to <4 x float>
  %i.vw = shufflevector <4 x float> %i.vv, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.vx = bitcast <4 x float> %i.vw to <2 x i64>
  %i.vy = extractelement <2 x i64> %i.vx, i64 0
  store i64 %i.vy, ptr %i.vs, align 1, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 4 ; 3 uses
  %18 = or disjoint i64 %indvars.iv.next.i.i, 3
  %i.vz = icmp samesign ult i64 %18, %i.bv
  br i1 %i.vz, label %.lr.ph.i.i, label %.preheader.loopexit.i.i, !llvm.loop !226

.lr.ph47.i.i:                                     ; preds = %.lr.ph47.i.i.preheader, %.lr.ph47.i.i
  %indvars.iv49.i.i = phi i64 [ %indvars.iv.next50.i.i, %.lr.ph47.i.i ], [ %indvars.iv49.i.i.ph, %.lr.ph47.i.i.preheader ] ; 6 uses
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %.1230.i, i64 %indvars.iv49.i.i
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !61
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %.1228.i, i64 %indvars.iv49.i.i
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !61
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %.1226.i, i64 %indvars.iv49.i.i
  %i.wf = load float, ptr %i.we, align 4, !tbaa !61
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %indvars.iv49.i.i
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !61
  %i.wi = insertelement <4 x float> poison, float %i.wb, i64 0
  %i.wj = insertelement <4 x float> %i.wi, float %i.wd, i64 1
  %i.wk = insertelement <4 x float> %i.wj, float %i.wf, i64 2
  %i.wl = insertelement <4 x float> %i.wk, float %i.wh, i64 3
  %i.wm = fmul fast <4 x float> %i.wl, %i.uc
  %i.wn = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.wm)
  %i.wo = bitcast float %i.wn to i32
  %i.wp = lshr i32 %i.wo, 16
  %i.wq = trunc nuw i32 %i.wp to i16
  %i.wr = getelementptr inbounds nuw [2 x i8], ptr %i.ub, i64 %indvars.iv49.i.i
  store i16 %i.wq, ptr %i.wr, align 2, !tbaa !72
  %indvars.iv.next50.i.i = add nuw nsw i64 %indvars.iv49.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next50.i.i, %i.bv
  br i1 %exitcond.not.i.i, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i, label %.lr.ph47.i.i, !llvm.loop !227

_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i: ; preds = %.lr.ph47.i.i, %middle.block279, %.preheader.i.i
  %i.ws = getelementptr inbounds nuw i8, ptr %.0257430.i, i64 16
  %indvars.iv.next459.i = add nuw nsw i64 %indvars.iv458.i, 1 ; 2 uses
  %exitcond462.not.i = icmp eq i64 %indvars.iv.next459.i, %wide.trip.count461.i
  br i1 %exitcond462.not.i, label %._crit_edge.i, label %bb.ae, !llvm.loop !228

bb.an:                                            ; preds = %bb.ad
  %i.wt = atomicrmw add ptr %i.dp, i32 -1 acq_rel, align 4
  %i.wu = icmp eq i32 %i.wt, 1
  br i1 %i.wu, label %bb.ao, label %_ZN4ncnn3MatD2Ev.exit290.i

bb.ao:                                            ; preds = %bb.an
  %i.wv = load ptr, ptr %i.z, align 8, !tbaa !42  ; 3 uses
  %.not3.i313.i = icmp eq ptr %i.wv, null
  %i.ww = load ptr, ptr %16, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i313.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.wx = load ptr, ptr %i.wv, align 8, !tbaa !13
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 24
  %i.wz = load ptr, ptr %i.wy, align 8
  invoke void %i.wz(ptr noundef nonnull align 8 dereferenceable(8) %i.wv, ptr noundef %i.ww)
          to label %_ZN4ncnn3MatD2Ev.exit290.i unwind label %bb.as, !inline_history !1

bb.aq:                                            ; preds = %bb.ao
  %.not.i327.i = icmp eq ptr %i.ww, null
  br i1 %.not.i327.i, label %_ZN4ncnn3MatD2Ev.exit290.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef nonnull %i.ww) #6
  br label %_ZN4ncnn3MatD2Ev.exit290.i

bb.as:                                            ; preds = %bb.ap
  %i.xa = landingpad { ptr, i32 }
          catch ptr null
  %i.xb = extractvalue { ptr, i32 } %i.xa, 0
  call void @__clang_call_terminate(ptr %i.xb) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit290.i:                       ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.ad, %bb.ac
  %.pn284.pn.pn.i = phi { ptr, i32 } [ %i.dn, %bb.ac ], [ %i.do, %bb.an ], [ %i.do, %bb.ad ], [ %i.do, %bb.ap ], [ %i.do, %bb.aq ], [ %i.do, %bb.ar ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.xc = load ptr, ptr %i.v, align 8, !tbaa !41  ; 2 uses
  %.not.i316.i = icmp eq ptr %i.xc, null
  br i1 %.not.i316.i, label %_ZN4ncnn3MatD2Ev.exit289.i, label %bb.at

bb.at:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit290.i
  %i.xd = atomicrmw add ptr %i.xc, i32 -1 acq_rel, align 4
  %i.xe = icmp eq i32 %i.xd, 1
  br i1 %i.xe, label %bb.au, label %_ZN4ncnn3MatD2Ev.exit289.i

bb.au:                                            ; preds = %bb.at
  %i.xf = load ptr, ptr %i.w, align 8, !tbaa !42  ; 3 uses
  %.not3.i317.i = icmp eq ptr %i.xf, null
  %i.xg = load ptr, ptr %15, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i317.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.xh = load ptr, ptr %i.xf, align 8, !tbaa !13
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 24
  %i.xj = load ptr, ptr %i.xi, align 8
  invoke void %i.xj(ptr noundef nonnull align 8 dereferenceable(8) %i.xf, ptr noundef %i.xg)
          to label %_ZN4ncnn3MatD2Ev.exit289.i unwind label %bb.ay, !inline_history !1

bb.aw:                                            ; preds = %bb.au
  %.not.i325.i = icmp eq ptr %i.xg, null
  br i1 %.not.i325.i, label %_ZN4ncnn3MatD2Ev.exit289.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.xg) #6
  br label %_ZN4ncnn3MatD2Ev.exit289.i

bb.ay:                                            ; preds = %bb.av
  %i.xk = landingpad { ptr, i32 }
          catch ptr null
  %i.xl = extractvalue { ptr, i32 } %i.xk, 0
  call void @__clang_call_terminate(ptr %i.xl) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit289.i:                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at, %_ZN4ncnn3MatD2Ev.exit290.i, %bb.ab
  %.pn284.pn.pn.pn.i = phi { ptr, i32 } [ %i.dm, %bb.ab ], [ %.pn284.pn.pn.i, %bb.at ], [ %.pn284.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit290.i ], [ %.pn284.pn.pn.i, %bb.av ], [ %.pn284.pn.pn.i, %bb.aw ], [ %.pn284.pn.pn.i, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  %i.xm = load ptr, ptr %i.s, align 8, !tbaa !41  ; 2 uses
  %.not.i320.i = icmp eq ptr %i.xm, null
  br i1 %.not.i320.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit289.i
  %i.xn = atomicrmw add ptr %i.xm, i32 -1 acq_rel, align 4
  %i.xo = icmp eq i32 %i.xn, 1
  br i1 %i.xo, label %bb.ba, label %_ZN4ncnn3MatD2Ev.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.xp = load ptr, ptr %i.t, align 8, !tbaa !42  ; 3 uses
  %.not3.i321.i = icmp eq ptr %i.xp, null
  %i.xq = load ptr, ptr %14, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i321.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.xr = load ptr, ptr %i.xp, align 8, !tbaa !13
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 24
  %i.xt = load ptr, ptr %i.xs, align 8
  invoke void %i.xt(ptr noundef nonnull align 8 dereferenceable(8) %i.xp, ptr noundef %i.xq)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.be, !inline_history !1

bb.bc:                                            ; preds = %bb.ba
  %.not.i324.i = icmp eq ptr %i.xq, null
  br i1 %.not.i324.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.xq) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.be:                                            ; preds = %bb.bb
  %i.xu = landingpad { ptr, i32 }
          catch ptr null
  %i.xv = extractvalue { ptr, i32 } %i.xu, 0
  call void @__clang_call_terminate(ptr %i.xv) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az, %_ZN4ncnn3MatD2Ev.exit289.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  br label %.body

_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit292.i, %bb.v, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  %.pr = load i32, ptr %5, align 4, !tbaa !28
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.xw = phi i32 [ %.pr, %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.bi, %_ZNK4ncnn3Mat7channelEi.exit ]
  %i.xx = icmp eq i32 %i.xw, 1
  br i1 %i.xx, label %bb.bg, label %_ZN4ncnn3MatD2Ev.exit

bb.bg:                                            ; preds = %bb.bf
  %i.xy = load ptr, ptr %6, align 8, !tbaa !64    ; 5 uses
  %i.xz = load ptr, ptr %7, align 8, !tbaa !62    ; 6 uses
  %i.ya = load ptr, ptr %8, align 8, !tbaa !64
  %i.yb = load ptr, ptr %9, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  store i64 0, ptr %i.ag, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.af, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.az, i64 noundef 4, ptr noundef null)
          to label %.noexc49 unwind label %bb.dj

.noexc49:                                         ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  store i64 0, ptr %i.aj, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.az, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i unwind label %bb.cf

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i:       ; preds = %.noexc49
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  store i64 0, ptr %i.am, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.al, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.az, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i unwind label %bb.cg

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i:       ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  store i64 0, ptr %i.ap, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ao, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.az, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.ch

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i
  %i.yc = icmp sgt i32 %i.ba, 0
  br i1 %i.yc, label %.lr.ph347.i, label %._crit_edge.i31
end_hunk_9
begin_hunk_10_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.13:bb.a
  %i.adm = sext i32 %i.adl to i64                 ; 3 uses
  %i.adn = getelementptr inbounds [2 x i8], ptr %i.adb, i64 %i.adm
  %i.ado = getelementptr inbounds [2 x i8], ptr %i.adf, i64 %i.adm
  %i.adp = getelementptr inbounds [2 x i8], ptr %i.adj, i64 %i.adm
  %i.adq = getelementptr inbounds i8, ptr %i.adn, i64 -2
  %i.adr = load <4 x float>, ptr %.0264331.i, align 4, !tbaa !61 ; 3 uses
  %i.ads = load <4 x i16>, ptr %i.adq, align 2, !tbaa !72
  %i.adt = zext <4 x i16> %i.ads to <4 x i32>
  %i.adu = shl nuw <4 x i32> %i.adt, splat (i32 16)
  %i.adv = bitcast <4 x i32> %i.adu to <4 x float>
  %i.adw = fmul fast <4 x float> %i.adr, %i.adv
  %i.adx = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.adw)
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv352.i
  store float %i.adx, ptr %i.ady, align 4, !tbaa !61
  %i.adz = getelementptr inbounds i8, ptr %i.ado, i64 -2
  %i.aea = load <4 x i16>, ptr %i.adz, align 2, !tbaa !72
  %i.aeb = zext <4 x i16> %i.aea to <4 x i32>
  %i.aec = shl nuw <4 x i32> %i.aeb, splat (i32 16)
  %i.aed = bitcast <4 x i32> %i.aec to <4 x float>
  %i.aee = fmul fast <4 x float> %i.adr, %i.aed
  %i.aef = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.aee)
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %indvars.iv352.i
  store float %i.aef, ptr %i.aeg, align 4, !tbaa !61
  %i.aeh = getelementptr inbounds i8, ptr %i.adp, i64 -2
  %i.aei = load <4 x i16>, ptr %i.aeh, align 2, !tbaa !72
  %i.aej = zext <4 x i16> %i.aei to <4 x i32>
  %i.aek = shl nuw <4 x i32> %i.aej, splat (i32 16)
  %i.ael = bitcast <4 x i32> %i.aek to <4 x float>
  %i.aem = fmul fast <4 x float> %i.adr, %i.ael
  %i.aen = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.aem)
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %indvars.iv352.i
  store float %i.aen, ptr %i.aeo, align 4, !tbaa !61
  %i.aep = getelementptr inbounds nuw i8, ptr %.0264331.i, i64 16
  %indvars.iv.next353.i = add nuw nsw i64 %indvars.iv352.i, 1 ; 2 uses
  %exitcond356.not.i = icmp eq i64 %indvars.iv.next353.i, %i.yj
  br i1 %exitcond356.not.i, label %.loopexit.i32, label %.lr.ph333.i, !llvm.loop !231

bb.cp:                                            ; preds = %bb.cn
  %i.aeq = add nsw i32 %i.aag, -1
  %i.aer = sext i32 %i.aeq to i64
  %i.aes = mul i64 %i.yl, %i.aer
  %i.aet = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aes
  %i.aeu = sext i32 %i.aag to i64
  %i.aev = mul i64 %i.yl, %i.aeu
  %i.aew = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aev
  %i.aex = add nsw i32 %i.aag, 1
  %i.aey = sext i32 %i.aex to i64
  %i.aez = mul i64 %i.yl, %i.aey
  %i.afa = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aez
  %i.afb = add nsw i32 %i.aag, 2
  %i.afc = sext i32 %i.afb to i64
  %i.afd = mul i64 %i.yl, %i.afc
  %i.afe = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.afd
  br i1 %i.yh, label %.lr.ph.i45, label %.loopexit.i32

.lr.ph.i45:                                       ; preds = %bb.cp, %.lr.ph.i45
  %indvars.iv.i46 = phi i64 [ %indvars.iv.next.i47, %.lr.ph.i45 ], [ 0, %bb.cp ] ; 6 uses
  %.0258329.i = phi ptr [ %i.agt, %.lr.ph.i45 ], [ %i.xy, %bb.cp ] ; 2 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %indvars.iv.i46
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !28
  %i.afh = sext i32 %i.afg to i64                 ; 4 uses
  %i.afi = getelementptr inbounds [2 x i8], ptr %i.aet, i64 %i.afh
  %i.afj = getelementptr inbounds [2 x i8], ptr %i.aew, i64 %i.afh
  %i.afk = getelementptr inbounds [2 x i8], ptr %i.afa, i64 %i.afh
  %i.afl = getelementptr inbounds [2 x i8], ptr %i.afe, i64 %i.afh
  %i.afm = getelementptr inbounds i8, ptr %i.afi, i64 -2
  %i.afn = load <4 x float>, ptr %.0258329.i, align 4, !tbaa !61 ; 4 uses
  %i.afo = load <4 x i16>, ptr %i.afm, align 2, !tbaa !72
  %i.afp = zext <4 x i16> %i.afo to <4 x i32>
  %i.afq = shl nuw <4 x i32> %i.afp, splat (i32 16)
  %i.afr = bitcast <4 x i32> %i.afq to <4 x float>
  %i.afs = fmul fast <4 x float> %i.afn, %i.afr
  %i.aft = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.afs)
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv.i46
  store float %i.aft, ptr %i.afu, align 4, !tbaa !61
  %i.afv = getelementptr inbounds i8, ptr %i.afj, i64 -2
  %i.afw = load <4 x i16>, ptr %i.afv, align 2, !tbaa !72
  %i.afx = zext <4 x i16> %i.afw to <4 x i32>
  %i.afy = shl nuw <4 x i32> %i.afx, splat (i32 16)
  %i.afz = bitcast <4 x i32> %i.afy to <4 x float>
  %i.aga = fmul fast <4 x float> %i.afn, %i.afz
  %i.agb = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.aga)
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %indvars.iv.i46
  store float %i.agb, ptr %i.agc, align 4, !tbaa !61
  %i.agd = getelementptr inbounds i8, ptr %i.afk, i64 -2
  %i.age = load <4 x i16>, ptr %i.agd, align 2, !tbaa !72
  %i.agf = zext <4 x i16> %i.age to <4 x i32>
  %i.agg = shl nuw <4 x i32> %i.agf, splat (i32 16)
  %i.agh = bitcast <4 x i32> %i.agg to <4 x float>
  %i.agi = fmul fast <4 x float> %i.afn, %i.agh
  %i.agj = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.agi)
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %indvars.iv.i46
  store float %i.agj, ptr %i.agk, align 4, !tbaa !61
  %i.agl = getelementptr inbounds i8, ptr %i.afl, i64 -2
  %i.agm = load <4 x i16>, ptr %i.agl, align 2, !tbaa !72
  %i.agn = zext <4 x i16> %i.agm to <4 x i32>
  %i.ago = shl nuw <4 x i32> %i.agn, splat (i32 16)
  %i.agp = bitcast <4 x i32> %i.ago to <4 x float>
  %i.agq = fmul fast <4 x float> %i.afn, %i.agp
  %i.agr = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.agq)
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %.0255342.i, i64 %indvars.iv.i46
  store float %i.agr, ptr %i.ags, align 4, !tbaa !61
  %i.agt = getelementptr inbounds nuw i8, ptr %.0258329.i, i64 16
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i46, 1 ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %indvars.iv.next.i47, %i.yj
  br i1 %exitcond.not.i48, label %.loopexit.i32, label %.lr.ph.i45, !llvm.loop !232

.loopexit.i32.loopexit.unr-lcssa:                 ; preds = %.lr.ph339.i
  br i1 %lcmp.mod.not, label %.loopexit.i32, label %.lr.ph339.i.epil.preheader

.lr.ph339.i.epil.preheader:                       ; preds = %.loopexit.i32.loopexit.unr-lcssa, %.lr.ph339.i.preheader
  %indvars.iv362.i.epil.init = phi i64 [ 0, %.lr.ph339.i.preheader ], [ %indvars.iv.next363.i.1, %.loopexit.i32.loopexit.unr-lcssa ] ; 2 uses
  %.0261338.i.epil.init = phi ptr [ %i.xy, %.lr.ph339.i.preheader ], [ %i.abp, %.loopexit.i32.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod288)
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %indvars.iv362.i.epil.init
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !28
  %i.agw = sext i32 %i.agv to i64
  %i.agx = getelementptr inbounds [2 x i8], ptr %i.aan, i64 %i.agw
  %i.agy = getelementptr inbounds i8, ptr %i.agx, i64 -2
  %i.agz = load <4 x float>, ptr %.0261338.i.epil.init, align 4, !tbaa !61
  %i.aha = load <4 x i16>, ptr %i.agy, align 2, !tbaa !72
  %i.ahb = zext <4 x i16> %i.aha to <4 x i32>
  %i.ahc = shl nuw <4 x i32> %i.ahb, splat (i32 16)
  %i.ahd = bitcast <4 x i32> %i.ahc to <4 x float>
  %i.ahe = fmul fast <4 x float> %i.agz, %i.ahd
  %i.ahf = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ahe)
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv362.i.epil.init
  store float %i.ahf, ptr %i.ahg, align 4, !tbaa !61
  br label %.loopexit.i32

.loopexit.i32:                                    ; preds = %.lr.ph.i45, %.lr.ph333.i, %.lr.ph336.i, %.lr.ph339.i.epil.preheader, %.loopexit.i32.loopexit.unr-lcssa, %bb.cp, %bb.co, %bb.cm, %bb.ck, %bb.ci
  %.1256.i = phi ptr [ %.0255342.i, %bb.ci ], [ %.0249345.i, %bb.ck ], [ %.0251344.i, %bb.cm ], [ %.0253343.i, %bb.co ], [ %.0255342.i, %bb.cp ], [ %.0253343.i, %.lr.ph333.i ], [ %.0249345.i, %.lr.ph339.i.epil.preheader ], [ %.0251344.i, %.lr.ph336.i ], [ %.0249345.i, %.loopexit.i32.loopexit.unr-lcssa ], [ %.0255342.i, %.lr.ph.i45 ] ; 4 uses
  %.1254.i = phi ptr [ %.0253343.i, %bb.ci ], [ %.0255342.i, %bb.ck ], [ %.0249345.i, %bb.cm ], [ %.0251344.i, %bb.co ], [ %.0253343.i, %bb.cp ], [ %.0251344.i, %.lr.ph333.i ], [ %.0255342.i, %.lr.ph339.i.epil.preheader ], [ %.0249345.i, %.lr.ph336.i ], [ %.0255342.i, %.loopexit.i32.loopexit.unr-lcssa ], [ %.0253343.i, %.lr.ph.i45 ] ; 4 uses
  %.1252.i = phi ptr [ %.0251344.i, %bb.ci ], [ %.0253343.i, %bb.ck ], [ %.0255342.i, %bb.cm ], [ %.0249345.i, %bb.co ], [ %.0251344.i, %bb.cp ], [ %.0249345.i, %.lr.ph333.i ], [ %.0253343.i, %.lr.ph339.i.epil.preheader ], [ %.0255342.i, %.lr.ph336.i ], [ %.0253343.i, %.loopexit.i32.loopexit.unr-lcssa ], [ %.0251344.i, %.lr.ph.i45 ] ; 4 uses
  %.1250.i = phi ptr [ %.0249345.i, %bb.ci ], [ %.0251344.i, %bb.ck ], [ %.0253343.i, %bb.cm ], [ %.0255342.i, %bb.co ], [ %.0249345.i, %bb.cp ], [ %.0255342.i, %.lr.ph333.i ], [ %.0251344.i, %.lr.ph339.i.epil.preheader ], [ %.0253343.i, %.lr.ph336.i ], [ %.0251344.i, %.loopexit.i32.loopexit.unr-lcssa ], [ %.0249345.i, %.lr.ph.i45 ] ; 4 uses
  %i.ahh = mul i64 %i.yk, %indvars.iv367.i
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ahh ; 3 uses
  %i.ahj = load <4 x float>, ptr %.0346.i, align 4, !tbaa !61 ; 5 uses
  %i.ahk = shufflevector <4 x float> %i.ahj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ahl = shufflevector <4 x float> %i.ahj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ahm = shufflevector <4 x float> %i.ahj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.ahn = shufflevector <4 x float> %i.ahj, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  br i1 %i.yi, label %.lr.ph.i.i41, label %.preheader.i.i33

.preheader.loopexit.i.i44:                        ; preds = %.lr.ph.i.i41
  %i.aho = trunc nuw nsw i64 %indvars.iv.next.i.i43 to i32
  br label %.preheader.i.i33

.preheader.i.i33:                                 ; preds = %.preheader.loopexit.i.i44, %.loopexit.i32
  %.0.lcssa.i.i34 = phi i32 [ 0, %.loopexit.i32 ], [ %i.aho, %.preheader.loopexit.i.i44 ] ; 2 uses
  %i.ahp = icmp slt i32 %.0.lcssa.i.i34, %i.az
  br i1 %i.ahp, label %.lr.ph47.preheader.i.i36, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i35

.lr.ph47.preheader.i.i36:                         ; preds = %.preheader.i.i33
  %i.ahq = zext i32 %.0.lcssa.i.i34 to i64        ; 4 uses
  %i.ahr = sub nsw i64 %i.yj, %i.ahq              ; 3 uses
  %min.iters.check = icmp ult i64 %i.ahr, 4
  br i1 %min.iters.check, label %.lr.ph47.i.i37.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph47.preheader.i.i36
  %n.vec = and i64 %i.ahr, -4                     ; 3 uses
  %i.ahs = add nsw i64 %n.vec, %i.ahq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aht = add nuw i64 %index, %i.ahq             ; 5 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %i.aht
  %wide.load = load <4 x float>, ptr %i.ahu, align 4, !tbaa !61
  %i.ahv = fmul fast <4 x float> %wide.load, %i.ahk
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %i.aht
  %wide.load257 = load <4 x float>, ptr %i.ahw, align 4, !tbaa !61
  %i.ahx = fmul fast <4 x float> %wide.load257, %i.ahl
  %i.ahy = fadd fast <4 x float> %i.ahx, %i.ahv
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %i.aht
  %wide.load258 = load <4 x float>, ptr %i.ahz, align 4, !tbaa !61
  %i.aia = fmul fast <4 x float> %wide.load258, %i.ahm
  %i.aib = fadd fast <4 x float> %i.ahy, %i.aia
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %i.aht
  %wide.load259 = load <4 x float>, ptr %i.aic, align 4, !tbaa !61
  %i.aid = fmul fast <4 x float> %wide.load259, %i.ahn
  %i.aie = fadd fast <4 x float> %i.aib, %i.aid
  %i.aif = bitcast <4 x float> %i.aie to <4 x i32>
  %i.aig = lshr <4 x i32> %i.aif, splat (i32 16)
  %i.aih = trunc nuw <4 x i32> %i.aig to <4 x i16>
  %i.aii = getelementptr inbounds nuw [2 x i8], ptr %i.ahi, i64 %i.aht
  store <4 x i16> %i.aih, ptr %i.aii, align 2, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aij = icmp eq i64 %index.next, %n.vec
  br i1 %i.aij, label %middle.block, label %vector.body, !llvm.loop !233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ahr, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i35, label %.lr.ph47.i.i37.preheader

.lr.ph47.i.i37.preheader:                         ; preds = %.lr.ph47.preheader.i.i36, %middle.block
  %indvars.iv49.i.i38.ph = phi i64 [ %i.ahq, %.lr.ph47.preheader.i.i36 ], [ %i.ahs, %middle.block ]
  br label %.lr.ph47.i.i37

.lr.ph.i.i41:                                     ; preds = %.loopexit.i32, %.lr.ph.i.i41
  %indvars.iv.i.i42 = phi i64 [ %indvars.iv.next.i.i43, %.lr.ph.i.i41 ], [ 0, %.loopexit.i32 ] ; 6 uses
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv.i.i42
  %i.ail = load <4 x float>, ptr %i.aik, align 1, !tbaa !20
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv.i.i42
  %i.ain = load <4 x float>, ptr %i.aim, align 1, !tbaa !20
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv.i.i42
  %i.aip = load <4 x float>, ptr %i.aio, align 1, !tbaa !20
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv.i.i42
  %i.air = load <4 x float>, ptr %i.aiq, align 1, !tbaa !20
  %i.ais = fmul fast <4 x float> %i.ail, %i.ahk
  %i.ait = fmul fast <4 x float> %i.ain, %i.ahl
  %i.aiu = fadd fast <4 x float> %i.ait, %i.ais
  %i.aiv = fmul fast <4 x float> %i.aip, %i.ahm
  %i.aiw = fadd fast <4 x float> %i.aiu, %i.aiv
  %i.aix = fmul fast <4 x float> %i.air, %i.ahn
  %i.aiy = fadd fast <4 x float> %i.aiw, %i.aix
  %i.aiz = getelementptr inbounds nuw [2 x i8], ptr %i.ahi, i64 %indvars.iv.i.i42
  %i.aja = bitcast <4 x float> %i.aiy to <8 x i16>
  %i.ajb = shufflevector <8 x i16> %i.aja, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ajc = bitcast <8 x i16> %i.ajb to <4 x float>
  %i.ajd = shufflevector <4 x float> %i.ajc, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aje = bitcast <4 x float> %i.ajd to <2 x i64>
  %i.ajf = extractelement <2 x i64> %i.aje, i64 0
  store i64 %i.ajf, ptr %i.aiz, align 1, !tbaa !20
  %indvars.iv.next.i.i43 = add nuw nsw i64 %indvars.iv.i.i42, 4 ; 3 uses
  %19 = or disjoint i64 %indvars.iv.next.i.i43, 3
  %i.ajg = icmp samesign ult i64 %19, %i.yj
  br i1 %i.ajg, label %.lr.ph.i.i41, label %.preheader.loopexit.i.i44, !llvm.loop !226

.lr.ph47.i.i37:                                   ; preds = %.lr.ph47.i.i37.preheader, %.lr.ph47.i.i37
  %indvars.iv49.i.i38 = phi i64 [ %indvars.iv.next50.i.i39, %.lr.ph47.i.i37 ], [ %indvars.iv49.i.i38.ph, %.lr.ph47.i.i37.preheader ] ; 6 uses
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv49.i.i38
  %i.aji = load float, ptr %i.ajh, align 4, !tbaa !61
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv49.i.i38
  %i.ajk = load float, ptr %i.ajj, align 4, !tbaa !61
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv49.i.i38
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !61
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv49.i.i38
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !61
  %i.ajp = insertelement <4 x float> poison, float %i.aji, i64 0
  %i.ajq = insertelement <4 x float> %i.ajp, float %i.ajk, i64 1
  %i.ajr = insertelement <4 x float> %i.ajq, float %i.ajm, i64 2
  %i.ajs = insertelement <4 x float> %i.ajr, float %i.ajo, i64 3
  %i.ajt = fmul fast <4 x float> %i.ajs, %i.ahj
  %i.aju = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ajt)
  %i.ajv = bitcast float %i.aju to i32
  %i.ajw = lshr i32 %i.ajv, 16
  %i.ajx = trunc nuw i32 %i.ajw to i16
  %i.ajy = getelementptr inbounds nuw [2 x i8], ptr %i.ahi, i64 %indvars.iv49.i.i38
  store i16 %i.ajx, ptr %i.ajy, align 2, !tbaa !72
  %indvars.iv.next50.i.i39 = add nuw nsw i64 %indvars.iv49.i.i38, 1 ; 2 uses
  %exitcond.not.i.i40 = icmp eq i64 %indvars.iv.next50.i.i39, %i.yj
  br i1 %exitcond.not.i.i40, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i35, label %.lr.ph47.i.i37, !llvm.loop !234

_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i35: ; preds = %.lr.ph47.i.i37, %middle.block, %.preheader.i.i33
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0346.i, i64 16
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next368.i, %wide.trip.count370.i
  br i1 %exitcond371.not.i, label %._crit_edge.i31, label %bb.ci, !llvm.loop !235

bb.cq:                                            ; preds = %bb.ch
  %i.aka = atomicrmw add ptr %i.aae, i32 -1 acq_rel, align 4
  %i.akb = icmp eq i32 %i.aka, 1
  br i1 %i.akb, label %bb.cr, label %_ZN4ncnn3MatD2Ev.exit272.i

bb.cr:                                            ; preds = %bb.cq
  %i.akc = load ptr, ptr %i.al, align 8, !tbaa !42 ; 3 uses
  %.not3.i295.i = icmp eq ptr %i.akc, null
  %i.akd = load ptr, ptr %12, align 8, !tbaa !43  ; 3 uses
  br i1 %.not3.i295.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ake = load ptr, ptr %i.akc, align 8, !tbaa !13
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 24
  %i.akg = load ptr, ptr %i.akf, align 8
  invoke void %i.akg(ptr noundef nonnull align 8 dereferenceable(8) %i.akc, ptr noundef %i.akd)
          to label %_ZN4ncnn3MatD2Ev.exit272.i unwind label %bb.cv, !inline_history !1

bb.ct:                                            ; preds = %bb.cr
  %.not.i309.i = icmp eq ptr %i.akd, null
  br i1 %.not.i309.i, label %_ZN4ncnn3MatD2Ev.exit272.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @free(ptr noundef nonnull %i.akd) #6
  br label %_ZN4ncnn3MatD2Ev.exit272.i

bb.cv:                                            ; preds = %bb.cs
  %i.akh = landingpad { ptr, i32 }
          catch ptr null
  %i.aki = extractvalue { ptr, i32 } %i.akh, 0
  call void @__clang_call_terminate(ptr %i.aki) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit272.i:                       ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cq, %bb.ch, %bb.cg
  %.pn.pn.i = phi { ptr, i32 } [ %i.aac, %bb.cg ], [ %i.aad, %bb.cq ], [ %i.aad, %bb.ch ], [ %i.aad, %bb.cs ], [ %i.aad, %bb.ct ], [ %i.aad, %bb.cu ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  %i.akj = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %.not.i298.i = icmp eq ptr %i.akj, null
  br i1 %.not.i298.i, label %_ZN4ncnn3MatD2Ev.exit271.i, label %bb.cw

bb.cw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit272.i
  %i.akk = atomicrmw add ptr %i.akj, i32 -1 acq_rel, align 4
  %i.akl = icmp eq i32 %i.akk, 1
  br i1 %i.akl, label %bb.cx, label %_ZN4ncnn3MatD2Ev.exit271.i

bb.cx:                                            ; preds = %bb.cw
  %i.akm = load ptr, ptr %i.ai, align 8, !tbaa !42 ; 3 uses
  %.not3.i299.i = icmp eq ptr %i.akm, null
  %i.akn = load ptr, ptr %11, align 8, !tbaa !43  ; 3 uses
  br i1 %.not3.i299.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ako = load ptr, ptr %i.akm, align 8, !tbaa !13
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 24
  %i.akq = load ptr, ptr %i.akp, align 8
  invoke void %i.akq(ptr noundef nonnull align 8 dereferenceable(8) %i.akm, ptr noundef %i.akn)
          to label %_ZN4ncnn3MatD2Ev.exit271.i unwind label %bb.db, !inline_history !1

bb.cz:                                            ; preds = %bb.cx
  %.not.i307.i = icmp eq ptr %i.akn, null
  br i1 %.not.i307.i, label %_ZN4ncnn3MatD2Ev.exit271.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @free(ptr noundef nonnull %i.akn) #6
  br label %_ZN4ncnn3MatD2Ev.exit271.i

bb.db:                                            ; preds = %bb.cy
  %i.akr = landingpad { ptr, i32 }
          catch ptr null
  %i.aks = extractvalue { ptr, i32 } %i.akr, 0
  call void @__clang_call_terminate(ptr %i.aks) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit271.i:                       ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cw, %_ZN4ncnn3MatD2Ev.exit272.i, %bb.cf
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.aab, %bb.cf ], [ %.pn.pn.i, %bb.cw ], [ %.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit272.i ], [ %.pn.pn.i, %bb.cy ], [ %.pn.pn.i, %bb.cz ], [ %.pn.pn.i, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.akt = load ptr, ptr %i.ae, align 8, !tbaa !41 ; 2 uses
  %.not.i302.i = icmp eq ptr %i.akt, null
  br i1 %.not.i302.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.dc

bb.dc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit271.i
  %i.aku = atomicrmw add ptr %i.akt, i32 -1 acq_rel, align 4
  %i.akv = icmp eq i32 %i.aku, 1
  br i1 %i.akv, label %bb.dd, label %_ZN4ncnn3MatD2Ev.exit.i30

bb.dd:                                            ; preds = %bb.dc
  %i.akw = load ptr, ptr %i.af, align 8, !tbaa !42 ; 3 uses
  %.not3.i303.i = icmp eq ptr %i.akw, null
  %i.akx = load ptr, ptr %10, align 8, !tbaa !43  ; 3 uses
  br i1 %.not3.i303.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.aky = load ptr, ptr %i.akw, align 8, !tbaa !13
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 24
  %i.ala = load ptr, ptr %i.akz, align 8
  invoke void %i.ala(ptr noundef nonnull align 8 dereferenceable(8) %i.akw, ptr noundef %i.akx)
          to label %_ZN4ncnn3MatD2Ev.exit.i30 unwind label %bb.dh, !inline_history !1

bb.df:                                            ; preds = %bb.dd
  %.not.i306.i = icmp eq ptr %i.akx, null
  br i1 %.not.i306.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @free(ptr noundef nonnull %i.akx) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i30

bb.dh:                                            ; preds = %bb.de
  %i.alb = landingpad { ptr, i32 }
          catch ptr null
  %i.alc = extractvalue { ptr, i32 } %i.alb, 0
  call void @__clang_call_terminate(ptr %i.alc) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i30:                        ; preds = %bb.dg, %bb.df, %bb.de, %bb.dc, %_ZN4ncnn3MatD2Ev.exit271.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %.body

_ZN4ncnnL26resize_bicubic_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit274.i, %bb.bz, %bb.cb, %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL26resize_bicubic_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.bf
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ald = load i32, ptr %i.b, align 4, !tbaa !28
  %i.ale = sext i32 %i.ald to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ale
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.di

bb.di:                                            ; preds = %._crit_edge, %bb.a
  ret void

bb.dj:                                            ; preds = %bb.bg, %bb.c
  %i.alf = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.dj, %_ZN4ncnn3MatD2Ev.exit.i30, %_ZN4ncnn3MatD2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn284.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.alf, %bb.dj ], [ %.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i30 ]
  %i.alg = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.alg) #22
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

end_hunk_10
