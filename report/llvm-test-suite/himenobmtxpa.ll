inline.NumInlined: 28
begin_hunk_0_@mat_set_init:bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !8
  %i.n = zext nneg i32 %i.e to i64                ; 2 uses
  %wide.trip.count45 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.k, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader25.us.us

.preheader25.us.us:                               ; preds = %._crit_edge28.split.us.us.us, %.preheader25.lr.ph.split.us.split.us
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %._crit_edge28.split.us.us.us ], [ 0, %.preheader25.lr.ph.split.us.split.us ] ; 4 uses
  %i.o = mul nuw nsw i64 %indvars.iv42, %indvars.iv42
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = uitofp nneg i32 %i.p to float
  %i.r = fdiv float %i.q, %i.i                    ; 2 uses
  %i.s = mul nuw nsw i64 %indvars.iv42, %i.n
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader25.us.us
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %._crit_edge.us.us.us ], [ 0, %.preheader25.us.us ] ; 2 uses
  %i.t = add nuw nsw i64 %i.s, %indvars.iv37
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = mul i32 %i.k, %i.u
  %i.w = sext i32 %i.v to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.m, i64 %i.w ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us.us ] ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  store <4 x float> %broadcast.splat, ptr %i.x, align 4, !tbaa !15
  store <4 x float> %broadcast.splat, ptr %i.y, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.r, ptr %gep, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !50

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %i.n
  br i1 %exitcond41.not, label %._crit_edge28.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !22

._crit_edge28.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %._crit_edge, label %.preheader25.us.us, !llvm.loop !23

._crit_edge:                                      ; preds = %._crit_edge28.split.us.us.us, %.preheader25.lr.ph.split.us, %.preheader25.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @mat_set(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader23.lr.ph, label %._crit_edge

.preheader23.lr.ph:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = mul nsw i32 %i.b, %1
  br i1 %i.f, label %.preheader23.lr.ph.split.us, label %._crit_edge

.preheader23.lr.ph.split.us:                      ; preds = %.preheader23.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14   ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.preheader23.lr.ph.split.us.split.us, label %._crit_edge

.preheader23.lr.ph.split.us.split.us:             ; preds = %.preheader23.lr.ph.split.us
  %i.k = load ptr, ptr %0, align 8, !tbaa !8
  %wide.trip.count38 = zext nneg i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.i, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader23.us.us

.preheader23.us.us:                               ; preds = %._crit_edge26.split.us.us.us, %.preheader23.lr.ph.split.us.split.us
  %.02127.us.us = phi i32 [ 0, %.preheader23.lr.ph.split.us.split.us ], [ %i.u, %._crit_edge26.split.us.us.us ] ; 2 uses
  %i.l = add i32 %i.g, %.02127.us.us
  %i.m = mul i32 %i.e, %i.l
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader23.us.us
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %._crit_edge.us.us.us ], [ 0, %.preheader23.us.us ] ; 2 uses
  %i.n = trunc nuw nsw i64 %indvars.iv35 to i32
  %i.o = add i32 %i.m, %i.n
  %i.p = mul i32 %i.i, %i.o
  %i.q = sext i32 %i.p to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.k, i64 %i.q ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us.us ] ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16
  store <4 x float> %broadcast.splat, ptr %i.r, align 4, !tbaa !15
  store <4 x float> %broadcast.splat, ptr %i.s, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %2, ptr %gep, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !52

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge26.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !26

._crit_edge26.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %i.u = add nuw nsw i32 %.02127.us.us, 1         ; 2 uses
  %exitcond40.not = icmp eq i32 %i.u, %i.b
  br i1 %exitcond40.not, label %._crit_edge, label %.preheader23.us.us, !llvm.loop !27

._crit_edge:                                      ; preds = %._crit_edge26.split.us.us.us, %.preheader23.lr.ph.split.us, %.preheader23.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @jacobi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14   ; 8 uses
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.preheader391.lr.ph, label %._crit_edge419

.preheader391.lr.ph:                              ; preds = %bb.a
  %i.d = add i32 %i.b, -1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !13   ; 6 uses
  %i.g = add i32 %i.f, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !12   ; 2 uses
  %i.j = add i32 %i.i, -1                         ; 2 uses
  %i.k = icmp slt i32 %i.i, 3                     ; 2 uses
  %factor.op.mul394 = mul i32 %i.b, %i.f          ; 3 uses
  %i.l = icmp slt i32 %i.f, 3                     ; 2 uses
  %i.m = icmp slt i32 %i.b, 3                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.ac = sext i32 %i.b to i64                    ; 3 uses
  %i.ad = zext i32 %i.f to i64
  %wide.trip.count433 = zext nneg i32 %i.j to i64
  %wide.trip.count428 = zext i32 %i.g to i64
  %wide.trip.count = zext i32 %i.d to i64         ; 4 uses
  %wide.trip.count451 = zext nneg i32 %i.j to i64
  %wide.trip.count446 = zext i32 %i.g to i64
  %wide.trip.count441 = zext i32 %i.d to i64
  %i.ae = add i32 %i.f, 1
  %i.af = mul i32 %i.b, %i.ae
  %i.ag = mul i32 %i.f, %i.b
  %brmerge = select i1 %i.k, i1 true, i1 %i.l
  %brmerge.a = select i1 %brmerge, i1 true, i1 %i.m
  %brmerge534 = select i1 %i.k, i1 true, i1 %i.l
  %brmerge537 = select i1 %brmerge534, i1 true, i1 %i.m
  %8 = add nsw i64 %wide.trip.count, -1           ; 3 uses
  %min.iters.check = icmp ult i64 %8, 8
  %n.vec = and i64 %8, -8                         ; 3 uses
  %i.ah = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %8, %n.vec
  br label %.preheader391

.preheader391:                                    ; preds = %.preheader391.lr.ph, %._crit_edge
  %.0385418 = phi i32 [ 0, %.preheader391.lr.ph ], [ %i.iu, %._crit_edge ]
  br i1 %brmerge.a, label %._crit_edge, label %.preheader389.lr.ph.split.us.split.us

.preheader389.lr.ph.split.us.split.us:            ; preds = %.preheader391
  %i.ai = load ptr, ptr %1, align 8, !tbaa !8     ; 4 uses
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !12  ; 3 uses
  %i.ak = load i32, ptr %i.o, align 8, !tbaa !13  ; 4 uses
  %i.al = load i32, ptr %i.p, align 4, !tbaa !14  ; 4 uses
  %i.am = load ptr, ptr %4, align 8, !tbaa !8     ; 19 uses
  %i.an = shl nsw i32 %i.aj, 1
  %i.ao = load ptr, ptr %2, align 8, !tbaa !8     ; 3 uses
  %i.ap = load i32, ptr %i.q, align 4, !tbaa !12  ; 2 uses
  %i.aq = load i32, ptr %i.r, align 8, !tbaa !13  ; 3 uses
  %i.ar = load i32, ptr %i.s, align 4, !tbaa !14  ; 3 uses
  %i.as = shl nsw i32 %i.ap, 1
  %i.at = load ptr, ptr %3, align 8, !tbaa !8     ; 3 uses
  %i.au = load i32, ptr %i.t, align 4, !tbaa !12  ; 2 uses
  %i.av = load i32, ptr %i.u, align 8, !tbaa !13  ; 3 uses
  %i.aw = load i32, ptr %i.v, align 4, !tbaa !14  ; 3 uses
  %i.ax = shl nsw i32 %i.au, 1
  %i.ay = load ptr, ptr %6, align 8, !tbaa !8
  %i.az = load i32, ptr %i.w, align 8, !tbaa !13
  %i.ba = load i32, ptr %i.x, align 4, !tbaa !14
  %i.bb = mul nsw i32 %i.aj, 3
  %i.bc = load ptr, ptr %5, align 8, !tbaa !8
  %i.bd = load i32, ptr %i.y, align 8, !tbaa !13
  %i.be = load i32, ptr %i.z, align 4, !tbaa !14
  %i.bf = load ptr, ptr %7, align 8, !tbaa !8
  %i.bg = load i32, ptr %i.aa, align 8, !tbaa !13
  %i.bh = load i32, ptr %i.ab, align 4, !tbaa !14
  br label %.preheader389.us.us

.preheader389.us.us:                              ; preds = %._crit_edge397.split.us.us.us, %.preheader389.lr.ph.split.us.split.us
  %indvars.iv430 = phi i64 [ %indvars.iv.next431, %._crit_edge397.split.us.us.us ], [ 1, %.preheader389.lr.ph.split.us.split.us ] ; 9 uses
  %.1382399.us.us = phi float [ %i.gu, %._crit_edge397.split.us.us.us ], [ 0.000000e+00, %.preheader389.lr.ph.split.us.split.us ]
  %i.bi = trunc nuw nsw i64 %indvars.iv430 to i32 ; 8 uses
  %factor.op.mul.reass.us.us = mul i32 %factor.op.mul394, %i.bi
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 1 ; 3 uses
  %i.bj = trunc nuw nsw i64 %indvars.iv.next431 to i32
  %i.bk = mul i32 %factor.op.mul394, %i.bj
  %i.bl = trunc i64 %indvars.iv430 to i32
  %i.bm = add i32 %i.bl, -1
  %i.bn = mul i32 %factor.op.mul394, %i.bm
  %i.bo = add i32 %i.aj, %i.bi
  %i.bp = mul i32 %i.bo, %i.ak
  %i.bq = add i32 %i.an, %i.bi
  %i.br = mul i32 %i.bq, %i.ak
  %i.bs = add i32 %i.ap, %i.bi
  %i.bt = mul i32 %i.bs, %i.aq
  %i.bu = add i32 %i.as, %i.bi
  %i.bv = mul i32 %i.bu, %i.aq
  %i.bw = add i32 %i.au, %i.bi
  %i.bx = mul i32 %i.bw, %i.av
  %i.by = add i32 %i.ax, %i.bi
  %i.bz = mul i32 %i.by, %i.av
  %i.ca = add i32 %i.bb, %i.bi
  %i.cb = mul i32 %i.ca, %i.ak
  %i.cc = sext i32 %i.bk to i64                   ; 3 uses
  %i.cd = sext i32 %factor.op.mul.reass.us.us to i64 ; 3 uses
  %i.ce = sext i32 %i.bn to i64                   ; 3 uses
  %i.cf = trunc i64 %indvars.iv430 to i32
  %i.cg = mul i32 %i.ak, %i.cf
  %i.ch = trunc i64 %indvars.iv430 to i32
  %i.ci = mul i32 %i.aq, %i.ch
  %i.cj = trunc i64 %indvars.iv430 to i32
  %i.ck = mul i32 %i.av, %i.cj
  %i.cl = trunc i64 %indvars.iv430 to i32
  %i.cm = mul i32 %i.az, %i.cl
  %i.cn = trunc i64 %indvars.iv430 to i32
  %i.co = mul i32 %i.bd, %i.cn
  %i.cp = trunc i64 %indvars.iv430 to i32
  %i.cq = mul i32 %i.bg, %i.cp
  %invariant.gep520 = getelementptr [4 x i8], ptr %i.am, i64 %i.cc
  %invariant.gep522 = getelementptr [4 x i8], ptr %i.am, i64 %i.cc
  %invariant.gep524 = getelementptr [4 x i8], ptr %i.am, i64 %i.ce
  %invariant.gep526 = getelementptr [4 x i8], ptr %i.am, i64 %i.ce
  br label %.preheader387.us.us.us

.preheader387.us.us.us:                           ; preds = %._crit_edge.us.us.us, %.preheader389.us.us
  %indvars.iv425 = phi i64 [ %indvars.iv.next426, %._crit_edge.us.us.us ], [ 1, %.preheader389.us.us ] ; 4 uses
  %.2395.us.us.us = phi float [ %i.gu, %._crit_edge.us.us.us ], [ %.1382399.us.us, %.preheader389.us.us ]
  %i.cr = trunc nuw nsw i64 %indvars.iv425 to i32 ; 13 uses
  %i.cs = add i32 %i.cg, %i.cr
  %i.ct = mul i32 %i.cs, %i.al
  %i.cu = mul nuw nsw i64 %indvars.iv425, %i.ac   ; 3 uses
  %i.cv = add nsw i64 %i.cu, %i.cc                ; 3 uses
  %i.cw = add i32 %i.bp, %i.cr
  %i.cx = mul i32 %i.cw, %i.al
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1 ; 3 uses
  %i.cy = mul nuw nsw i64 %indvars.iv.next426, %i.ac ; 3 uses
  %i.cz = add nsw i64 %i.cy, %i.cd                ; 3 uses
  %i.da = add i32 %i.br, %i.cr
  %i.db = mul i32 %i.da, %i.al
  %i.dc = add nsw i64 %i.cu, %i.cd                ; 3 uses
  %i.dd = add i32 %i.ci, %i.cr
  %i.de = mul i32 %i.dd, %i.ar
  %i.df = add nsw i64 %indvars.iv425, -1
  %i.dg = mul nsw i64 %i.df, %i.ac                ; 3 uses
  %i.dh = add i32 %i.bt, %i.cr
  %i.di = mul i32 %i.dh, %i.ar
  %i.dj = add nsw i64 %i.dg, %i.cd                ; 3 uses
  %i.dk = add i32 %i.bv, %i.cr
  %i.dl = mul i32 %i.dk, %i.ar
  %i.dm = add nsw i64 %i.cu, %i.ce                ; 3 uses
  %i.dn = add i32 %i.ck, %i.cr
  %i.do = mul i32 %i.dn, %i.aw
  %i.dp = add i32 %i.bx, %i.cr
  %i.dq = mul i32 %i.dp, %i.aw
  %i.dr = add i32 %i.bz, %i.cr
  %i.ds = mul i32 %i.dr, %i.aw
  %i.dt = add i32 %i.cm, %i.cr
  %i.du = mul i32 %i.dt, %i.ba
  %i.dv = add i32 %i.cb, %i.cr
  %i.dw = mul i32 %i.dv, %i.al
  %i.dx = add i32 %i.co, %i.cr
  %i.dy = mul i32 %i.dx, %i.be
  %i.dz = add i32 %i.cq, %i.cr
  %i.ea = mul i32 %i.dz, %i.bh
  %i.eb = sext i32 %i.ct to i64
  %i.ec = sext i32 %i.cx to i64
  %i.ed = sext i32 %i.db to i64
  %i.ee = sext i32 %i.de to i64
  %i.ef = sext i32 %i.di to i64
  %i.eg = sext i32 %i.dl to i64
  %i.eh = sext i32 %i.do to i64
  %i.ei = sext i32 %i.dq to i64
  %i.ej = sext i32 %i.ds to i64
  %i.ek = sext i32 %i.du to i64
  %i.el = sext i32 %i.dw to i64
  %i.em = sext i32 %i.dy to i64
  %i.en = sext i32 %i.ea to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.ai, i64 %i.eb
  %invariant.gep466 = getelementptr [4 x i8], ptr %i.am, i64 %i.cv
  %invariant.gep468 = getelementptr [4 x i8], ptr %i.ai, i64 %i.ec
  %invariant.gep470 = getelementptr [4 x i8], ptr %i.am, i64 %i.cz
  %invariant.gep472 = getelementptr [4 x i8], ptr %i.ai, i64 %i.ed
  %invariant.gep474 = getelementptr [4 x i8], ptr %i.am, i64 %i.dc
  %invariant.gep476 = getelementptr [4 x i8], ptr %i.ao, i64 %i.ee
  %gep521 = getelementptr [4 x i8], ptr %invariant.gep520, i64 %i.cy
  %gep523 = getelementptr [4 x i8], ptr %invariant.gep522, i64 %i.dg
  %gep525 = getelementptr [4 x i8], ptr %invariant.gep524, i64 %i.cy
  %gep527 = getelementptr [4 x i8], ptr %invariant.gep526, i64 %i.dg
  %invariant.gep478 = getelementptr [4 x i8], ptr %i.ao, i64 %i.ef
  %invariant.gep480 = getelementptr [4 x i8], ptr %i.am, i64 %i.cz
  %invariant.gep482 = getelementptr [4 x i8], ptr %i.am, i64 %i.dj
  %invariant.gep484 = getelementptr [4 x i8], ptr %i.am, i64 %i.cz
  %invariant.gep486 = getelementptr [4 x i8], ptr %i.am, i64 %i.dj
  %invariant.gep488 = getelementptr [4 x i8], ptr %i.ao, i64 %i.eg
  %invariant.gep490 = getelementptr [4 x i8], ptr %i.am, i64 %i.cv
  %invariant.gep492 = getelementptr [4 x i8], ptr %i.am, i64 %i.dm
  %invariant.gep494 = getelementptr [4 x i8], ptr %i.am, i64 %i.cv
  %invariant.gep496 = getelementptr [4 x i8], ptr %i.am, i64 %i.dm
  %invariant.gep498 = getelementptr [4 x i8], ptr %i.at, i64 %i.eh
  %invariant.gep500 = getelementptr [4 x i8], ptr %i.am, i64 %i.dm
  %invariant.gep502 = getelementptr [4 x i8], ptr %i.at, i64 %i.ei
  %invariant.gep504 = getelementptr [4 x i8], ptr %i.am, i64 %i.dj
  %invariant.gep506 = getelementptr [4 x i8], ptr %i.at, i64 %i.ej
  %invariant.gep508 = getelementptr [4 x i8], ptr %i.am, i64 %i.dc
  %invariant.gep510 = getelementptr [4 x i8], ptr %i.ay, i64 %i.ek
  %invariant.gep512 = getelementptr [4 x i8], ptr %i.ai, i64 %i.el
  %invariant.gep514 = getelementptr [4 x i8], ptr %i.am, i64 %i.dc
  %invariant.gep516 = getelementptr [4 x i8], ptr %i.bc, i64 %i.em
  %invariant.gep518 = getelementptr [4 x i8], ptr %i.bf, i64 %i.en
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader387.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 1, %.preheader387.us.us.us ] ; 24 uses
  %.3393.us.us.us = phi float [ %i.gu, %bb.b ], [ %.2395.us.us.us, %.preheader387.us.us.us ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.eo = load float, ptr %gep, align 4, !tbaa !15
  %gep467 = getelementptr [4 x i8], ptr %invariant.gep466, i64 %indvars.iv
  %i.ep = load float, ptr %gep467, align 4, !tbaa !15
  %gep469 = getelementptr [4 x i8], ptr %invariant.gep468, i64 %indvars.iv
  %i.eq = load float, ptr %gep469, align 4, !tbaa !15
  %gep471 = getelementptr [4 x i8], ptr %invariant.gep470, i64 %indvars.iv
  %i.er = load float, ptr %gep471, align 4, !tbaa !15
  %i.es = fmul float %i.eq, %i.er
  %i.et = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.ep, float %i.es)
  %gep473 = getelementptr [4 x i8], ptr %invariant.gep472, i64 %indvars.iv
  %i.eu = load float, ptr %gep473, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 7 uses
  %gep475 = getelementptr [4 x i8], ptr %invariant.gep474, i64 %indvars.iv.next
  %i.ev = load float, ptr %gep475, align 4, !tbaa !15
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.ev, float %i.et)
  %gep477 = getelementptr [4 x i8], ptr %invariant.gep476, i64 %indvars.iv
  %i.ex = load float, ptr %gep477, align 4, !tbaa !15
  %i.ey = getelementptr [4 x i8], ptr %gep521, i64 %indvars.iv
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !15
  %i.fa = getelementptr [4 x i8], ptr %gep523, i64 %indvars.iv
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !15
  %i.fc = fsub float %i.ez, %i.fb
  %i.fd = getelementptr [4 x i8], ptr %gep525, i64 %indvars.iv
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !15
  %i.ff = fsub float %i.fc, %i.fe
  %i.fg = getelementptr [4 x i8], ptr %gep527, i64 %indvars.iv
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !15
  %i.fi = fadd float %i.ff, %i.fh
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.fi, float %i.ew)
  %gep479 = getelementptr [4 x i8], ptr %invariant.gep478, i64 %indvars.iv
  %i.fk = load float, ptr %gep479, align 4, !tbaa !15
  %gep481 = getelementptr [4 x i8], ptr %invariant.gep480, i64 %indvars.iv.next
  %i.fl = load float, ptr %gep481, align 4, !tbaa !15
  %gep483 = getelementptr [4 x i8], ptr %invariant.gep482, i64 %indvars.iv.next
  %i.fm = load float, ptr %gep483, align 4, !tbaa !15
  %i.fn = fsub float %i.fl, %i.fm
  %i.fo = add nsw i64 %indvars.iv, -1             ; 5 uses
  %gep485 = getelementptr [4 x i8], ptr %invariant.gep484, i64 %i.fo
  %i.fp = load float, ptr %gep485, align 4, !tbaa !15
  %i.fq = fsub float %i.fn, %i.fp
  %gep487 = getelementptr [4 x i8], ptr %invariant.gep486, i64 %i.fo
  %i.fr = load float, ptr %gep487, align 4, !tbaa !15
  %i.fs = fadd float %i.fq, %i.fr
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fs, float %i.fj)
  %gep489 = getelementptr [4 x i8], ptr %invariant.gep488, i64 %indvars.iv
  %i.fu = load float, ptr %gep489, align 4, !tbaa !15
  %gep491 = getelementptr [4 x i8], ptr %invariant.gep490, i64 %indvars.iv.next
  %i.fv = load float, ptr %gep491, align 4, !tbaa !15
  %gep493 = getelementptr [4 x i8], ptr %invariant.gep492, i64 %indvars.iv.next
  %i.fw = load float, ptr %gep493, align 4, !tbaa !15
  %i.fx = fsub float %i.fv, %i.fw
  %gep495 = getelementptr [4 x i8], ptr %invariant.gep494, i64 %i.fo
  %i.fy = load float, ptr %gep495, align 4, !tbaa !15
  %i.fz = fsub float %i.fx, %i.fy
  %gep497 = getelementptr [4 x i8], ptr %invariant.gep496, i64 %i.fo
  %i.ga = load float, ptr %gep497, align 4, !tbaa !15
  %i.gb = fadd float %i.fz, %i.ga
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.gb, float %i.ft)
  %gep499 = getelementptr [4 x i8], ptr %invariant.gep498, i64 %indvars.iv
  %i.gd = load float, ptr %gep499, align 4, !tbaa !15
  %gep501 = getelementptr [4 x i8], ptr %invariant.gep500, i64 %indvars.iv
  %i.ge = load float, ptr %gep501, align 4, !tbaa !15
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.ge, float %i.gc)
  %gep503 = getelementptr [4 x i8], ptr %invariant.gep502, i64 %indvars.iv
  %i.gg = load float, ptr %gep503, align 4, !tbaa !15
  %gep505 = getelementptr [4 x i8], ptr %invariant.gep504, i64 %indvars.iv
  %i.gh = load float, ptr %gep505, align 4, !tbaa !15
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.gh, float %i.gf)
  %gep507 = getelementptr [4 x i8], ptr %invariant.gep506, i64 %indvars.iv
  %i.gj = load float, ptr %gep507, align 4, !tbaa !15
  %gep509 = getelementptr [4 x i8], ptr %invariant.gep508, i64 %i.fo
  %i.gk = load float, ptr %gep509, align 4, !tbaa !15
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.gj, float %i.gk, float %i.gi)
  %gep511 = getelementptr [4 x i8], ptr %invariant.gep510, i64 %indvars.iv
  %i.gm = load float, ptr %gep511, align 4, !tbaa !15
  %i.gn = fadd float %i.gl, %i.gm
  %gep513 = getelementptr [4 x i8], ptr %invariant.gep512, i64 %indvars.iv
  %i.go = load float, ptr %gep513, align 4, !tbaa !15
  %gep515 = getelementptr [4 x i8], ptr %invariant.gep514, i64 %indvars.iv
  %i.gp = load float, ptr %gep515, align 4, !tbaa !15 ; 2 uses
  %i.gq = fneg float %i.gp
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.gn, float %i.go, float %i.gq)
  %gep517 = getelementptr [4 x i8], ptr %invariant.gep516, i64 %indvars.iv
  %i.gs = load float, ptr %gep517, align 4, !tbaa !15
  %i.gt = fmul float %i.gr, %i.gs                 ; 3 uses
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gt, float %i.gt, float %.3393.us.us.us) ; 5 uses
  %i.gv = load float, ptr @omega, align 4, !tbaa !15
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.gv, float %i.gt, float %i.gp)
  %gep519 = getelementptr [4 x i8], ptr %invariant.gep518, i64 %indvars.iv
  store float %i.gw, ptr %gep519, align 4, !tbaa !15
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %bb.b, !llvm.loop !53

._crit_edge.us.us.us:                             ; preds = %bb.b
  %exitcond429.not = icmp eq i64 %indvars.iv.next426, %wide.trip.count428
  br i1 %exitcond429.not, label %._crit_edge397.split.us.us.us, label %.preheader387.us.us.us, !llvm.loop !54

._crit_edge397.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %exitcond434.not = icmp eq i64 %indvars.iv.next431, %wide.trip.count433
  br i1 %exitcond434.not, label %.preheader390, label %.preheader389.us.us, !llvm.loop !55

.preheader390:                                    ; preds = %._crit_edge397.split.us.us.us
  br i1 %brmerge537, label %._crit_edge, label %.preheader388.lr.ph.split.us.split.us

.preheader388.lr.ph.split.us.split.us:            ; preds = %.preheader390
  %i.gx = load ptr, ptr %7, align 8, !tbaa !8     ; 2 uses
  %i.gy = ptrtoaddr ptr %i.gx to i64
  %i.gz = load i32, ptr %i.aa, align 8, !tbaa !13 ; 3 uses
  %i.ha = load i32, ptr %i.ab, align 4, !tbaa !14 ; 4 uses
  %i.hb = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.hc = ptrtoaddr ptr %i.hb to i64
  %i.hd = add i32 %i.gz, 1
  %i.he = mul i32 %i.ha, %i.hd
  %i.hf = mul i32 %i.gz, %i.ha
  br label %.preheader388.us.us

.preheader388.us.us:                              ; preds = %._crit_edge410.split.us.us.us, %.preheader388.lr.ph.split.us.split.us
  %indvar = phi i32 [ %indvar.next, %._crit_edge410.split.us.us.us ], [ 0, %.preheader388.lr.ph.split.us.split.us ] ; 3 uses
  %indvars.iv448 = phi i64 [ %indvars.iv.next449, %._crit_edge410.split.us.us.us ], [ 1, %.preheader388.lr.ph.split.us.split.us ] ; 3 uses
  %i.hg = mul i32 %i.ag, %indvar
  %i.hh = add i32 %i.af, %i.hg
  %i.hi = mul i32 %i.hf, %indvar
  %i.hj = add i32 %i.he, %i.hi
  %i.hk = mul nuw nsw i64 %indvars.iv448, %i.ad
  %i.hl = trunc i64 %indvars.iv448 to i32
  %i.hm = mul i32 %i.gz, %i.hl
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us417, %.preheader388.us.us
  %indvar540 = phi i32 [ %indvar.next541, %._crit_edge.us.us.us417 ], [ 0, %.preheader388.us.us ] ; 3 uses
  %indvars.iv443 = phi i64 [ %indvars.iv.next444, %._crit_edge.us.us.us417 ], [ 1, %.preheader388.us.us ] ; 3 uses
  %i.hn = trunc nuw nsw i64 %indvars.iv443 to i32
  %i.ho = add i32 %i.hm, %i.hn
  %i.hp = mul i32 %i.ho, %i.ha
  %i.hq = add nuw nsw i64 %indvars.iv443, %i.hk
  %i.hr = trunc nuw i64 %i.hq to i32
  %i.hs = mul i32 %i.b, %i.hr
  %i.ht = sext i32 %i.hp to i64
  %i.hu = sext i32 %i.hs to i64
  %invariant.gep528 = getelementptr [4 x i8], ptr %i.gx, i64 %i.ht ; 6 uses
  %invariant.gep530 = getelementptr [4 x i8], ptr %i.hb, i64 %i.hu ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us.us
  %i.hv = mul i32 %i.ha, %indvar540
  %i.hw = add i32 %i.hj, %i.hv
  %i.hx = sext i32 %i.hw to i64
  %i.hy = shl nsw i64 %i.hx, 2
  %i.hz = mul i32 %i.b, %indvar540
  %i.ia = add i32 %i.hh, %i.hz
  %i.ib = sext i32 %i.ia to i64
  %i.ic = shl nsw i64 %i.ib, 2
  %i.id = add i64 %i.ic, %i.hc
  %i.ie = add i64 %i.hy, %i.gy
  %i.if = sub i64 %i.id, %i.ie
  %diff.check = icmp ult i64 %i.if, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.ig = or disjoint i64 %index, 1               ; 2 uses
  %i.ih = getelementptr [4 x i8], ptr %invariant.gep528, i64 %i.ig ; 2 uses
  %i.ii = getelementptr i8, ptr %i.ih, i64 16
  %wide.load = load <4 x float>, ptr %i.ih, align 4, !tbaa !15
  %wide.load542 = load <4 x float>, ptr %i.ii, align 4, !tbaa !15
  %i.ij = getelementptr [4 x i8], ptr %invariant.gep530, i64 %i.ig ; 2 uses
  %i.ik = getelementptr i8, ptr %i.ij, i64 16
  store <4 x float> %wide.load, ptr %i.ij, align 4, !tbaa !15
  store <4 x float> %wide.load542, ptr %i.ik, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.il = icmp eq i64 %index.next, %n.vec
  br i1 %i.il, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us417, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us, %middle.block
  %indvars.iv438.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader.us.us.us ], [ %i.ah, %middle.block ] ; 4 uses
  %i.im = sub nsw i64 %wide.trip.count, %indvars.iv438.ph
  %xtraiter = and i64 %i.im, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv438.prol = phi i64 [ %indvars.iv.next439.prol, %scalar.ph.prol ], [ %indvars.iv438.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep529.prol = getelementptr [4 x i8], ptr %invariant.gep528, i64 %indvars.iv438.prol
  %i.in = load float, ptr %gep529.prol, align 4, !tbaa !15
  %gep531.prol = getelementptr [4 x i8], ptr %invariant.gep530, i64 %indvars.iv438.prol
  store float %i.in, ptr %gep531.prol, align 4, !tbaa !15
  %indvars.iv.next439.prol = add nuw nsw i64 %indvars.iv438.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !57

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv438.unr = phi i64 [ %indvars.iv438.ph, %scalar.ph.preheader ], [ %indvars.iv.next439.prol, %scalar.ph.prol ]
  %i.io = sub nsw i64 %indvars.iv438.ph, %wide.trip.count
  %i.ip = icmp ugt i64 %i.io, -4
  br i1 %i.ip, label %._crit_edge.us.us.us417, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv438 = phi i64 [ %indvars.iv.next439.3, %scalar.ph ], [ %indvars.iv438.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep529 = getelementptr [4 x i8], ptr %invariant.gep528, i64 %indvars.iv438
  %i.iq = load float, ptr %gep529, align 4, !tbaa !15
  %gep531 = getelementptr [4 x i8], ptr %invariant.gep530, i64 %indvars.iv438
  store float %i.iq, ptr %gep531, align 4, !tbaa !15
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1 ; 2 uses
  %gep529.1 = getelementptr [4 x i8], ptr %invariant.gep528, i64 %indvars.iv.next439
  %i.ir = load float, ptr %gep529.1, align 4, !tbaa !15
  %gep531.1 = getelementptr [4 x i8], ptr %invariant.gep530, i64 %indvars.iv.next439
  store float %i.ir, ptr %gep531.1, align 4, !tbaa !15
  %indvars.iv.next439.1 = add nuw nsw i64 %indvars.iv438, 2 ; 2 uses
  %gep529.2 = getelementptr [4 x i8], ptr %invariant.gep528, i64 %indvars.iv.next439.1
  %i.is = load float, ptr %gep529.2, align 4, !tbaa !15
  %gep531.2 = getelementptr [4 x i8], ptr %invariant.gep530, i64 %indvars.iv.next439.1
  store float %i.is, ptr %gep531.2, align 4, !tbaa !15
  %indvars.iv.next439.2 = add nuw nsw i64 %indvars.iv438, 3 ; 2 uses
  %gep529.3 = getelementptr [4 x i8], ptr %invariant.gep528, i64 %indvars.iv.next439.2
  %i.it = load float, ptr %gep529.3, align 4, !tbaa !15
  %gep531.3 = getelementptr [4 x i8], ptr %invariant.gep530, i64 %indvars.iv.next439.2
  store float %i.it, ptr %gep531.3, align 4, !tbaa !15
  %indvars.iv.next439.3 = add nuw nsw i64 %indvars.iv438, 4 ; 2 uses
  %exitcond442.not.3 = icmp eq i64 %indvars.iv.next439.3, %wide.trip.count441
  br i1 %exitcond442.not.3, label %._crit_edge.us.us.us417, label %scalar.ph, !llvm.loop !58

._crit_edge.us.us.us417:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next444, %wide.trip.count446
  %indvar.next541 = add i32 %indvar540, 1
  br i1 %exitcond447.not, label %._crit_edge410.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !59

._crit_edge410.split.us.us.us:                    ; preds = %._crit_edge.us.us.us417
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 2 uses
  %exitcond452.not = icmp eq i64 %indvars.iv.next449, %wide.trip.count451
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond452.not, label %._crit_edge, label %.preheader388.us.us, !llvm.loop !60

._crit_edge:                                      ; preds = %._crit_edge410.split.us.us.us, %.preheader390, %.preheader391
  %.1382.lcssa457 = phi float [ %i.gu, %.preheader390 ], [ 0.000000e+00, %.preheader391 ], [ %i.gu, %._crit_edge410.split.us.us.us ]
  %i.iu = add nuw nsw i32 %.0385418, 1            ; 2 uses
  %exitcond453.not = icmp eq i32 %i.iu, %0
  br i1 %exitcond453.not, label %._crit_edge419, label %.preheader391, !llvm.loop !61

._crit_edge419:                                   ; preds = %._crit_edge, %bb.a
  %.0381.lcssa = phi float [ undef, %bb.a ], [ %.1382.lcssa457, %._crit_edge ]
  ret float %.0381.lcssa
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @clearMat(ptr nofree noundef captures(none) initializes((8, 24)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @fflop(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = add nsw i32 %2, -2
  %i.b = sitofp i32 %i.a to double
  %i.c = add nsw i32 %1, -2
  %i.d = sitofp i32 %i.c to double
  %i.e = fmul nnan double %i.d, %i.b
  %i.f = add nsw i32 %0, -2
  %i.g = sitofp i32 %i.f to double
  %i.h = fmul double %i.e, %i.g
  %i.i = fmul double %i.h, 3.400000e+01
  ret double %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @mflops(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = fdiv double %2, %1
  %i.b = fmul double %i.a, f0x3EB0C6F7A0B5ED8D
  %i.c = sitofp i32 %0 to double
  %i.d = fmul double %i.b, %i.c
  ret double %i.d
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @set_param(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
sub_0:
  %i.a = load i8, ptr %1, align 1
  switch i8 %i.a, label %.tail68.thread [
    i8 88, label %sub_1
    i8 120, label %sub_136
    i8 83, label %.tail39
    i8 115, label %.tail43
    i8 77, label %.tail47
end_hunk_0
