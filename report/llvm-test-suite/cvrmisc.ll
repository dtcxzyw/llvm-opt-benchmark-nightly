inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.3 = private unnamed_addr constant [30 x i8] c"# %s\09Time was %s, cost is %s\0A\00", align 1
@total_time = external local_unnamed_addr global [16 x i64], align 16
@total_calls = external local_unnamed_addr global [16 x i32], align 16
@trace = external local_unnamed_addr global i32, align 4
@total_name = external local_unnamed_addr global [16 x ptr], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"espresso: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @cover_cost(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (ptr, ...) @cube1list(ptr noundef %0) #11 ; 3 uses
  tail call void (ptr, ...) @massive_count(ptr noundef %i.a) #11
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11   ; 4 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.h, i8 0, i64 20, i1 false)
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !16 ; 6 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 8), align 8, !tbaa !20 ; 8 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr i8, ptr %1, i64 8
  %i.l = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep71 = getelementptr i8, ptr %i.k, i64 %i.l
  %bound0 = icmp ult ptr %i.h, %scevgep71
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi72 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <4 x i32>, ptr %i.m, align 4, !tbaa !4, !alias.scope !22
  %wide.load73 = load <4 x i32>, ptr %i.n, align 4, !tbaa !4, !alias.scope !22
  %i.o = add <4 x i32> %vec.phi, %wide.load       ; 2 uses
  %i.p = add <4 x i32> %vec.phi72, %wide.load73   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.p, %i.o
  %i.r = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.r, ptr %i.h, align 4, !tbaa !28, !alias.scope !29, !noalias !22
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.r, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.s = phi i32 [ %i.v, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.prol
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = add nsw i32 %i.s, %i.u                   ; 4 uses
  store i32 %i.v, ptr %i.h, align 4, !tbaa !28
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !31

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %i.w = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %.preheader, label %scalar.ph

.preheader:                                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %i.y = phi i32 [ 0, %bb.c ], [ %i.r, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.av, %scalar.ph ]
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !33 ; 2 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 3 uses
  %i.ab = icmp slt i32 %i.i, %i.aa
  br i1 %i.ab, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.preheader
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 112), align 8, !tbaa !34
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 8), align 8 ; 2 uses
  %i.af = sext i32 %i.i to i64
  %wide.trip.count67 = sext i32 %i.aa to i64
  br label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ag = phi i32 [ %i.av, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = add nsw i32 %i.ag, %i.ai                ; 2 uses
  store i32 %i.aj, ptr %i.h, align 4, !tbaa !28
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = add nsw i32 %i.aj, %i.am                ; 2 uses
  store i32 %i.an, ptr %i.h, align 4, !tbaa !28
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = add nsw i32 %i.an, %i.aq                ; 2 uses
  store i32 %i.ar, ptr %i.h, align 4, !tbaa !28
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = add nsw i32 %i.ar, %i.au                ; 3 uses
  store i32 %i.av, ptr %i.h, align 4, !tbaa !28
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %scalar.ph, !llvm.loop !35

bb.d:                                             ; preds = %.lr.ph53, %bb.g
  %indvars.iv64 = phi i64 [ %i.af, %.lr.ph53 ], [ %indvars.iv.next65, %bb.g ] ; 5 uses
  %storemerge57 = phi i32 [ 0, %.lr.ph53 ], [ %storemerge, %bb.g ] ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %indvars.iv64
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %.not48 = icmp eq i32 %i.ax, 0
  br i1 %.not48, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %indvars.iv64
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = mul nsw i32 %i.az, %i.d
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %indvars.iv64
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = sub i32 %i.ba, %i.bc
  %i.be = add nsw i32 %i.bd, %storemerge57
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %indvars.iv64
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = add nsw i32 %storemerge57, %i.bg
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %storemerge = phi i32 [ %i.bh, %bb.f ], [ %i.be, %bb.e ] ; 3 uses
  store i32 %storemerge, ptr %i.f, align 4, !tbaa !36
  %indvars.iv.next65 = add nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %i.bi = phi i32 [ 0, %.preheader ], [ %storemerge, %bb.g ]
  %.not47 = icmp eq i32 %i.i, %i.z
  br i1 %.not47, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !37
  %i.bk = sext i32 %i.aa to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = mul nsw i32 %i.bm, %i.d
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 8), align 8, !tbaa !20
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bk
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = sub nsw i32 %i.bn, %i.bq                ; 2 uses
  store i32 %i.br, ptr %i.g, align 4, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.bs = phi i32 [ %i.br, %bb.h ], [ 0, %._crit_edge ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !39 ; 2 uses
  %i.bv = load i32, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.bw = mul nsw i32 %i.bv, %i.d                 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %.idx = shl nuw nsw i64 %i.bx, 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx
  %i.bz = icmp sgt i32 %i.bw, 0
  br i1 %i.bz, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %bb.i
  %i.ca = sext i32 %i.bv to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph60, %bb.j
  %i.cb = phi i32 [ 0, %.lr.ph60 ], [ %i.ce, %bb.j ]
  %.04358 = phi ptr [ %i.bu, %.lr.ph60 ], [ %i.cf, %bb.j ] ; 2 uses
  %i.cc = load i32, ptr %.04358, align 4, !tbaa !4
  %i.cd = lshr i32 %i.cc, 15
  %.lobit = and i32 %i.cd, 1
  %i.ce = add nuw nsw i32 %.lobit, %i.cb          ; 2 uses
  store i32 %i.ce, ptr %i.e, align 4, !tbaa !41
  %i.cf = getelementptr inbounds [4 x i8], ptr %.04358, i64 %i.ca ; 2 uses
  %i.cg = icmp ult ptr %i.cf, %i.by
  br i1 %i.cg, label %bb.j, label %._crit_edge61

._crit_edge61:                                    ; preds = %bb.j, %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = add nsw i32 %i.bs, %i.y
  %i.cj = add nsw i32 %i.ci, %i.bi
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !42
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @massive_count(...) local_unnamed_addr #2

declare ptr @cube1list(...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef nonnull ptr @fmt_cost(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !16
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !33
  %i.c = add nsw i32 %i.b, -1
  %i.d = icmp eq i32 %i.a, %i.c                   ; 3 uses
  %i.e = load i32, ptr %0, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28
  %. = select i1 %i.d, i64 8, i64 12
  %.12 = select i1 %i.d, i64 16, i64 8
  %.str..str.1 = select i1 %i.d, ptr @.str, ptr @.str.1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @fmt_cost.s, ptr noundef nonnull dereferenceable(1) %.str..str.1, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k) #11 ; 0 uses
  ret ptr @fmt_cost.s
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @print_cost(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.cost_struct, align 4        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @cover_cost(ptr noundef %0, ptr noundef nonnull %1)
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !16
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !33
  %i.c = add nsw i32 %i.b, -1
  %i.d = icmp eq i32 %i.a, %i.c                   ; 3 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28
  %.str..str.1.i = select i1 %i.d, ptr @.str, ptr @.str.1
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.gep1 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 4 ; 2 uses
  %.sroa.gep1.val = load i32, ptr %.sroa.gep1, align 4
  %i.h = select i1 %i.d, i32 %.sroa.gep.val, i32 %.sroa.gep1.val
  %.sroa.gep2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.gep2.val = load i32, ptr %.sroa.gep2, align 4
  %i.i = select i1 %i.d, i32 %.sroa.gep2.val, i32 %.sroa.gep.val
  %i.j = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @fmt_cost.s, ptr noundef nonnull dereferenceable(1) %.str..str.1.i, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %i.h, i32 noundef %i.i) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret ptr @fmt_cost.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_cost(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load <4 x i32>, ptr %0, align 4, !tbaa !4
  store <4 x i32> %i.a, ptr %1, align 4, !tbaa !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x i32>, ptr %i.b, align 4, !tbaa !4
  store <2 x i32> %i.d, ptr %i.c, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @size_stamp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.cost_struct, align 4        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @cover_cost(ptr noundef %0, ptr noundef nonnull %2)
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !16
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !33
  %i.c = add nsw i32 %i.b, -1
  %i.d = icmp eq i32 %i.a, %i.c                   ; 3 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28
  %.str..str.1.i.i = select i1 %i.d, ptr @.str, ptr @.str.1
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.gep1.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.gep.val.i = load i32, ptr %.sroa.gep.i, align 4 ; 2 uses
  %.sroa.gep1.val.i = load i32, ptr %.sroa.gep1.i, align 4
  %i.h = select i1 %i.d, i32 %.sroa.gep.val.i, i32 %.sroa.gep1.val.i
  %.sroa.gep2.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.gep2.val.i = load i32, ptr %.sroa.gep2.i, align 4
  %i.i = select i1 %i.d, i32 %.sroa.gep2.val.i, i32 %.sroa.gep.val.i
  %i.j = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @fmt_cost.s, ptr noundef nonnull dereferenceable(1) %.str..str.1.i.i, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %i.h, i32 noundef %i.i) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %1, ptr noundef nonnull @fmt_cost.s) ; 0 uses
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !43
  %i.m = tail call i32 @fflush(ptr noundef %i.l)  ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @print_trace(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cost_struct, align 4        ; 8 uses
  %i.a = tail call ptr @util_print_time(i64 noundef %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @cover_cost(ptr noundef %0, ptr noundef nonnull %3)
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !16
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !33
  %i.d = add nsw i32 %i.c, -1
  %i.e = icmp eq i32 %i.b, %i.d                   ; 3 uses
  %i.f = load i32, ptr %3, align 4, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28
  %.str..str.1.i.i = select i1 %i.e, ptr @.str, ptr @.str.1
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.gep1.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.gep.val.i = load i32, ptr %.sroa.gep.i, align 4 ; 2 uses
  %.sroa.gep1.val.i = load i32, ptr %.sroa.gep1.i, align 4
  %i.i = select i1 %i.e, i32 %.sroa.gep.val.i, i32 %.sroa.gep1.val.i
  %.sroa.gep2.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.gep2.val.i = load i32, ptr %.sroa.gep2.i, align 4
  %i.j = select i1 %i.e, i32 %.sroa.gep2.val.i, i32 %.sroa.gep.val.i
  %i.k = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @fmt_cost.s, ptr noundef nonnull dereferenceable(1) %.str..str.1.i.i, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.i, i32 noundef %i.j) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %1, ptr noundef %i.a, ptr noundef nonnull @fmt_cost.s) ; 0 uses
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !43
  %i.n = tail call i32 @fflush(ptr noundef %i.m)  ; 0 uses
  ret void
}

declare ptr @util_print_time(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @totals(i64 noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) initializes((0, 24)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 (...) @util_cpu_time() #11
  %i.b = sub nsw i64 %i.a, %0                     ; 2 uses
  %i.c = sext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [8 x i8], ptr @total_time, i64 %i.c ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  %i.f = add nsw i64 %i.e, %i.b
  store i64 %i.f, ptr %i.d, align 8, !tbaa !45
  %i.g = getelementptr inbounds [4 x i8], ptr @total_calls, i64 %i.c ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !4
  tail call void @cover_cost(ptr noundef %2, ptr noundef %3)
  %i.j = load i32, ptr @trace, align 4, !tbaa !4
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds [8 x i8], ptr @total_name, i64 %i.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.m = tail call ptr @util_print_time(i64 noundef %i.b) #11
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !16
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !33
  %i.p = add nsw i32 %i.o, -1
  %i.q = icmp eq i32 %i.n, %i.p                   ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !14
end_hunk_0
