Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpBlas?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5Ipopt10IpBlasCopyEiPKdiPdi:bb.a
  store i32 %4, ptr %i.c, align 4, !tbaa !11
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %4, 1
  %.not2026 = icmp eq i32 %0, 0                   ; 2 uses
  br i1 %i.e, label %.preheader, label %.preheader21

.preheader21:                                     ; preds = %bb.c
  br i1 %.not2026, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader21
  %i.f = sext i32 %4 to i64                       ; 9 uses
  %.pre = load double, ptr %1, align 8, !tbaa !9  ; 9 uses
  %xtraiter = and i32 %0, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.125.prol = phi i32 [ %i.g, %.prol.preheader ], [ %0, %.lr.ph ]
  %.11824.prol = phi ptr [ %i.h, %.prol.preheader ], [ %3, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  store double %.pre, ptr %.11824.prol, align 8, !tbaa !9
  %i.g = add nsw i32 %.125.prol, -1               ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %.11824.prol, i64 %i.f ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !18

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.125.unr = phi i32 [ %0, %.lr.ph ], [ %i.g, %.prol.preheader ]
  %.11824.unr = phi ptr [ %3, %.lr.ph ], [ %i.h, %.prol.preheader ]
  %i.i = icmp ult i32 %0, 8
  br i1 %i.i, label %.loopexit, label %.lr.ph.new

.preheader:                                       ; preds = %bb.c
  br i1 %.not2026, label %.loopexit, label %.lr.ph29.preheader

.lr.ph29.preheader:                               ; preds = %.preheader
  %.pre31 = load double, ptr %1, align 8, !tbaa !9 ; 2 uses
  %i.j = zext i32 %0 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph29.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph29.preheader
  %n.vec = and i64 %i.j, 4294967292               ; 4 uses
  %i.k = trunc nuw i64 %n.vec to i32
  %i.l = sub i32 %0, %i.k
  %i.m = shl nuw nsw i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %3, i64 %i.m
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre31, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %3, i64 %i.o  ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !tbaa !9
  store <2 x double> %broadcast.splat, ptr %i.p, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.j
  br i1 %cmp.n, label %.loopexit, label %.lr.ph29.preheader37

.lr.ph29.preheader37:                             ; preds = %.lr.ph29.preheader, %middle.block
  %.028.ph = phi i32 [ %0, %.lr.ph29.preheader ], [ %i.l, %middle.block ]
  %.01727.ph = phi ptr [ %3, %.lr.ph29.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph29

.lr.ph29:                                         ; preds = %.lr.ph29.preheader37, %.lr.ph29
  %.028 = phi i32 [ %i.r, %.lr.ph29 ], [ %.028.ph, %.lr.ph29.preheader37 ]
  %.01727 = phi ptr [ %i.s, %.lr.ph29 ], [ %.01727.ph, %.lr.ph29.preheader37 ] ; 2 uses
  store double %.pre31, ptr %.01727, align 8, !tbaa !9
  %i.r = add nsw i32 %.028, -1                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01727, i64 8
  %.not20 = icmp eq i32 %i.r, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph29, !llvm.loop !20

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.125 = phi i32 [ %i.aa, %.lr.ph.new ], [ %.125.unr, %.prol.loopexit ]
  %.11824 = phi ptr [ %i.ab, %.lr.ph.new ], [ %.11824.unr, %.prol.loopexit ] ; 2 uses
  store double %.pre, ptr %.11824, align 8, !tbaa !9
  %i.t = getelementptr inbounds [8 x i8], ptr %.11824, i64 %i.f ; 2 uses
  store double %.pre, ptr %i.t, align 8, !tbaa !9
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.f ; 2 uses
  store double %.pre, ptr %i.u, align 8, !tbaa !9
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.f ; 2 uses
  store double %.pre, ptr %i.v, align 8, !tbaa !9
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.f ; 2 uses
  store double %.pre, ptr %i.w, align 8, !tbaa !9
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.f ; 2 uses
  store double %.pre, ptr %i.x, align 8, !tbaa !9
  %i.y = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.f ; 2 uses
  store double %.pre, ptr %i.y, align 8, !tbaa !9
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.f ; 2 uses
  store double %.pre, ptr %i.z, align 8, !tbaa !9
  %i.aa = add nsw i32 %.125, -8                   ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.f
  %.not.7 = icmp eq i32 %i.aa, 0
  br i1 %.not.7, label %.loopexit, label %.lr.ph.new, !llvm.loop !21

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %.lr.ph29, %middle.block, %.preheader21, %.preheader, %bb.b
  ret void
}

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt10IpBlasAxpyEidPKdiPdi(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  store double %1, ptr %i.a, align 8, !tbaa !9
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %0, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %3, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 %5, ptr %i.d, align 4, !tbaa !11
  call void @daxpy_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef %4, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %5, 1
  %.not2026 = icmp eq i32 %0, 0                   ; 2 uses
  br i1 %i.f, label %.preheader, label %.preheader21

.preheader21:                                     ; preds = %bb.c
  br i1 %.not2026, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader21
  %i.g = sext i32 %5 to i64                       ; 5 uses
  %xtraiter = and i32 %0, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.125.prol = phi i32 [ %i.k, %.prol.preheader ], [ %0, %.lr.ph ]
  %.11824.prol = phi ptr [ %i.l, %.prol.preheader ], [ %4, %.lr.ph ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.h = load double, ptr %2, align 8, !tbaa !9
  %i.i = load double, ptr %.11824.prol, align 8, !tbaa !9
  %i.j = tail call double @llvm.fmuladd.f64(double %1, double %i.h, double %i.i)
  store double %i.j, ptr %.11824.prol, align 8, !tbaa !9
  %i.k = add nsw i32 %.125.prol, -1               ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %.11824.prol, i64 %i.g ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !22

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.125.unr = phi i32 [ %0, %.lr.ph ], [ %i.k, %.prol.preheader ]
  %.11824.unr = phi ptr [ %4, %.lr.ph ], [ %i.l, %.prol.preheader ]
  %i.m = icmp ult i32 %0, 4
  br i1 %i.m, label %.loopexit, label %.lr.ph.new

.preheader:                                       ; preds = %bb.c
  br i1 %.not2026, label %.loopexit, label %.lr.ph29.preheader

.lr.ph29.preheader:                               ; preds = %.preheader
  %i.n = zext i32 %0 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph29.preheader40, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph29.preheader
  %i.o = add i32 %0, -1
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = getelementptr i8, ptr %4, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = getelementptr i8, ptr %2, i64 8
  %bound0 = icmp ult ptr %4, %i.t
  %bound1 = icmp ult ptr %2, %i.s
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph29.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 4294967292               ; 4 uses
  %i.u = trunc nuw i64 %n.vec to i32
  %i.v = sub i32 %0, %i.u
  %i.w = shl nuw nsw i64 %n.vec, 3
  %i.x = getelementptr i8, ptr %4, i64 %i.w
  %i.y = load double, ptr %2, align 8, !tbaa !9, !alias.scope !34
  %broadcast.splatinsert37 = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat38 = shufflevector <2 x double> %broadcast.splatinsert37, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %4, i64 %i.z  ; 3 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !9, !alias.scope !36, !noalias !34
  %wide.load36 = load <2 x double>, ptr %i.aa, align 8, !tbaa !9, !alias.scope !36, !noalias !34
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %broadcast.splat38, <2 x double> %wide.load)
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %broadcast.splat38, <2 x double> %wide.load36)
  store <2 x double> %i.ab, ptr %next.gep, align 8, !tbaa !9, !alias.scope !36, !noalias !34
  store <2 x double> %i.ac, ptr %i.aa, align 8, !tbaa !9, !alias.scope !36, !noalias !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br i1 %cmp.n, label %.loopexit, label %.lr.ph29.preheader40

.lr.ph29.preheader40:                             ; preds = %vector.memcheck, %.lr.ph29.preheader, %middle.block
  %.028.ph = phi i32 [ %0, %vector.memcheck ], [ %0, %.lr.ph29.preheader ], [ %i.v, %middle.block ] ; 4 uses
  %.01727.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph29.preheader ], [ %i.x, %middle.block ] ; 2 uses
  %i.ae = add nsw i32 %.028.ph, -1
  %xtraiter42 = and i32 %.028.ph, 3               ; 2 uses
  %lcmp.mod43.not = icmp eq i32 %xtraiter42, 0
  br i1 %lcmp.mod43.not, label %.lr.ph29.prol.loopexit, label %.lr.ph29.prol

.lr.ph29.prol:                                    ; preds = %.lr.ph29.preheader40, %.lr.ph29.prol
  %.028.prol = phi i32 [ %i.ai, %.lr.ph29.prol ], [ %.028.ph, %.lr.ph29.preheader40 ]
  %.01727.prol = phi ptr [ %i.aj, %.lr.ph29.prol ], [ %.01727.ph, %.lr.ph29.preheader40 ] ; 3 uses
  %prol.iter44 = phi i32 [ %prol.iter44.next, %.lr.ph29.prol ], [ 0, %.lr.ph29.preheader40 ]
  %i.af = load double, ptr %2, align 8, !tbaa !9
  %i.ag = load double, ptr %.01727.prol, align 8, !tbaa !9
  %i.ah = tail call double @llvm.fmuladd.f64(double %1, double %i.af, double %i.ag)
  store double %i.ah, ptr %.01727.prol, align 8, !tbaa !9
  %i.ai = add nsw i32 %.028.prol, -1              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01727.prol, i64 8 ; 2 uses
  %prol.iter44.next = add i32 %prol.iter44, 1     ; 2 uses
  %prol.iter44.cmp.not = icmp eq i32 %prol.iter44.next, %xtraiter42
  br i1 %prol.iter44.cmp.not, label %.lr.ph29.prol.loopexit, label %.lr.ph29.prol, !llvm.loop !27

.lr.ph29.prol.loopexit:                           ; preds = %.lr.ph29.prol, %.lr.ph29.preheader40
  %.028.unr = phi i32 [ %.028.ph, %.lr.ph29.preheader40 ], [ %i.ai, %.lr.ph29.prol ]
  %.01727.unr = phi ptr [ %.01727.ph, %.lr.ph29.preheader40 ], [ %i.aj, %.lr.ph29.prol ]
  %i.ak = icmp ult i32 %i.ae, 3
  br i1 %i.ak, label %.loopexit, label %.lr.ph29

.lr.ph29:                                         ; preds = %.lr.ph29.prol.loopexit, %.lr.ph29
  %.028 = phi i32 [ %i.ba, %.lr.ph29 ], [ %.028.unr, %.lr.ph29.prol.loopexit ]
  %.01727 = phi ptr [ %i.bb, %.lr.ph29 ], [ %.01727.unr, %.lr.ph29.prol.loopexit ] ; 6 uses
  %i.al = load double, ptr %2, align 8, !tbaa !9
  %i.am = load double, ptr %.01727, align 8, !tbaa !9
  %i.an = tail call double @llvm.fmuladd.f64(double %1, double %i.al, double %i.am)
  store double %i.an, ptr %.01727, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %.01727, i64 8 ; 2 uses
  %i.ap = load double, ptr %2, align 8, !tbaa !9
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !9
  %i.ar = tail call double @llvm.fmuladd.f64(double %1, double %i.ap, double %i.aq)
  store double %i.ar, ptr %i.ao, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %.01727, i64 16 ; 2 uses
  %i.at = load double, ptr %2, align 8, !tbaa !9
  %i.au = load double, ptr %i.as, align 8, !tbaa !9
  %i.av = tail call double @llvm.fmuladd.f64(double %1, double %i.at, double %i.au)
  store double %i.av, ptr %i.as, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %.01727, i64 24 ; 2 uses
  %i.ax = load double, ptr %2, align 8, !tbaa !9
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !9
  %i.az = tail call double @llvm.fmuladd.f64(double %1, double %i.ax, double %i.ay)
  store double %i.az, ptr %i.aw, align 8, !tbaa !9
  %i.ba = add nsw i32 %.028, -4                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01727, i64 32
  %.not20.3 = icmp eq i32 %i.ba, 0
  br i1 %.not20.3, label %.loopexit, label %.lr.ph29, !llvm.loop !28

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.125 = phi i32 [ %i.br, %.lr.ph.new ], [ %.125.unr, %.prol.loopexit ]
  %.11824 = phi ptr [ %i.bs, %.lr.ph.new ], [ %.11824.unr, %.prol.loopexit ] ; 3 uses
  %i.bc = load double, ptr %2, align 8, !tbaa !9
  %i.bd = load double, ptr %.11824, align 8, !tbaa !9
  %i.be = tail call double @llvm.fmuladd.f64(double %1, double %i.bc, double %i.bd)
  store double %i.be, ptr %.11824, align 8, !tbaa !9
  %i.bf = getelementptr inbounds [8 x i8], ptr %.11824, i64 %i.g ; 3 uses
  %i.bg = load double, ptr %2, align 8, !tbaa !9
  %i.bh = load double, ptr %i.bf, align 8, !tbaa !9
  %i.bi = tail call double @llvm.fmuladd.f64(double %1, double %i.bg, double %i.bh)
  store double %i.bi, ptr %i.bf, align 8, !tbaa !9
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.g ; 3 uses
  %i.bk = load double, ptr %2, align 8, !tbaa !9
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !9
  %i.bm = tail call double @llvm.fmuladd.f64(double %1, double %i.bk, double %i.bl)
  store double %i.bm, ptr %i.bj, align 8, !tbaa !9
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.g ; 3 uses
  %i.bo = load double, ptr %2, align 8, !tbaa !9
  %i.bp = load double, ptr %i.bn, align 8, !tbaa !9
  %i.bq = tail call double @llvm.fmuladd.f64(double %1, double %i.bo, double %i.bp)
  store double %i.bq, ptr %i.bn, align 8, !tbaa !9
  %i.br = add nsw i32 %.125, -4                   ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.g
  %.not.3 = icmp eq i32 %i.br, 0
  br i1 %.not.3, label %.loopexit, label %.lr.ph.new, !llvm.loop !29

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %.lr.ph29.prol.loopexit, %.lr.ph29, %middle.block, %.preheader21, %.preheader, %bb.b
  ret void
}

declare void @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt10IpBlasScalEidPdi(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store double %1, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %0, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %3, ptr %i.c, align 4, !tbaa !11
  call void @dscal_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret void
}

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt10IpBlasGemvEbiidPKdiS1_idPdi(i1 noundef zeroext %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8, ptr noundef %9, i32 noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  store double %3, ptr %i.a, align 8, !tbaa !9
  store double %8, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %2, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 %1, ptr %i.d, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %5, ptr %i.e, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 %7, ptr %i.f, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i32 %10, ptr %i.g, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %. = select i1 %0, i8 84, i8 78
  store i8 %., ptr %i.h, align 1, !tbaa !15
  call void @dgemv_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef nonnull %i.e, ptr noundef %6, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef %9, ptr noundef nonnull %i.g, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret void
}

declare void @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt10IpBlasSymvEidPKdiS1_idPdi(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, double noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  store double %1, ptr %i.a, align 8, !tbaa !9
  store double %6, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %0, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 %3, ptr %i.d, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %5, ptr %i.e, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 %8, ptr %i.f, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i8 76, ptr %i.g, align 1, !tbaa !15
  call void @dsymv_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef %4, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef %7, ptr noundef nonnull %i.f, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret void
}

declare void @dsymv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt10IpBlasGemmEbbiiidPKdiS1_idPdi(i1 noundef zeroext %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, double noundef %10, ptr noundef %11, i32 noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  store double %5, ptr %i.a, align 8, !tbaa !9
  store double %10, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %2, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 %3, ptr %i.d, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %4, ptr %i.e, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 %7, ptr %i.f, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i32 %9, ptr %i.g, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  store i32 %12, ptr %i.h, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  %. = select i1 %0, i8 84, i8 78
  store i8 %., ptr %i.i, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  %storemerge10 = select i1 %1, i8 84, i8 78
  store i8 %storemerge10, ptr %i.j, align 1, !tbaa !15
  call void @dgemm_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef %6, ptr noundef nonnull %i.f, ptr noundef %8, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef %11, ptr noundef nonnull %i.h, i32 noundef 1, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret void
}

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt10IpBlasSyrkEbiidPKdidPdi(i1 noundef zeroext %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr noundef %4, i32 noundef %5, double noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  store double %3, ptr %i.a, align 8, !tbaa !9
  store double %6, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %1, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 %2, ptr %i.d, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %5, ptr %i.e, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 %8, ptr %i.f, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i8 76, ptr %i.g, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %. = select i1 %0, i8 84, i8 78
  store i8 %., ptr %i.h, align 1, !tbaa !15
  call void @dsyrk_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef %7, ptr noundef nonnull %i.f, i32 noundef 1, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret void
}

declare void @dsyrk_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt10IpBlasTrsmEbiidPKdiPdi(i1 noundef zeroext %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  store double %3, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %1, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %2, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 %5, ptr %i.d, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %7, ptr %i.e, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i8 76, ptr %i.f, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i8 76, ptr %i.g, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %. = select i1 %0, i8 84, i8 78
  store i8 %., ptr %i.h, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  store i8 78, ptr %i.i, align 1, !tbaa !15
  call void @dtrsm_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef nonnull %i.d, ptr noundef %6, ptr noundef nonnull %i.e, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret void
}

declare void @dtrsm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!5, !5, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!4, !4, i64 0}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !12, !13, !14}
!20 = distinct !{!20, !12, !14, !13}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !10}
!26 = distinct !{!26, !12, !13, !14}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !12, !13}
!29 = distinct !{!29, !12}
!32 = distinct !{!32, i1 false, !"LVerDomain"}
!33 = distinct !{!33, !32}
!34 = !{!33}
!35 = distinct !{!35, !32}
!36 = !{!35}
end_hunk_0
