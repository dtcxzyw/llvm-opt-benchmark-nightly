inline.NumInlined: 337
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0_@HUFv06_readDTableX2:bb.a
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 0, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.f = call fastcc i64 @HUFv06_readStats(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.c, ptr noundef %1, i64 noundef %2) ; 4 uses
  %i.g = icmp ult i64 %i.f, -119
  br i1 %i.g, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.c, align 4, !tbaa !3    ; 8 uses
  %i.i = load i16, ptr %0, align 2, !tbaa !10
  %i.j = zext i16 %i.i to i32
  %i.k = icmp ugt i32 %i.h, %i.j
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = trunc nuw i32 %i.h to i16
  store i16 %i.l, ptr %0, align 2, !tbaa !10
  %.not37 = icmp eq i32 %i.h, 0
  br i1 %.not37, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i32 %i.h, 1
  %i.m = icmp eq i32 %i.h, 1
  br i1 %i.m, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.h, -2
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ]
  %.03438.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ac, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod74 = trunc i32 %i.h to i1
  call void @llvm.assume(i1 %lcmp.mod74)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  store i32 %.03438.epil.init, ptr %i.n, align 4, !tbaa !3
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.c
  %i.o = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %.loopexit, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader
  %i.p = trunc i32 %i.h to i8
  %i.q = add i8 %i.p, 1
  %wide.trip.count52 = zext i32 %i.o to i64
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.03438 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = trunc i64 %indvars.iv to i32
  %i.u = add nsw i32 %i.t, -1
  %i.v = shl i32 %i.s, %i.u
  %i.w = add i32 %i.v, %.03438                    ; 2 uses
  store i32 %.03438, ptr %i.r, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = trunc i64 %indvars.iv.next to i32
  %i.aa = add i32 %i.z, -1
  %i.ab = shl i32 %i.y, %i.aa
  %i.ac = add i32 %i.ab, %i.w                     ; 2 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !29

bb.d:                                             ; preds = %.lr.ph43, %._crit_edge
  %indvars.iv49 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next50, %._crit_edge ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv49
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27  ; 3 uses
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = ashr i32 %i.ag, 1
  %i.ai = trunc i64 %indvars.iv49 to i8           ; 3 uses
  %i.aj = sub i8 %i.q, %i.ae                      ; 3 uses
  %i.ak = zext i8 %i.ae to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3  ; 3 uses
  %i.an = add i32 %i.ah, %i.am                    ; 3 uses
  %i.ao = icmp ult i32 %i.am, %i.an
  br i1 %i.ao, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.d
  %i.ap = zext i32 %i.am to i64                   ; 6 uses
  %wide.trip.count = zext i32 %i.an to i64        ; 2 uses
  %i.aq = sub nsw i64 %wide.trip.count, %i.ap     ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check, label %.lr.ph41.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check59 = icmp ult i64 %i.aq, 16
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aq, 12
  %n.vec = and i64 %i.aq, -16                     ; 4 uses
  %i.ar = add nsw i64 %n.vec, %i.ap
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splatinsert60 = insertelement <8 x i8> poison, i8 %i.aj, i64 0
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert60, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = add i64 %index, %i.ap                   ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.as
  %i.au = getelementptr [2 x i8], ptr %i.e, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 16
  store <16 x i8> %interleaved.vec, ptr %i.at, align 1, !tbaa !27
  store <16 x i8> %interleaved.vec, ptr %i.av, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec64 = and i64 %i.aq, -4                    ; 3 uses
  %i.ax = add nsw i64 %n.vec64, %i.ap
  %broadcast.splatinsert65 = insertelement <4 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splatinsert67 = insertelement <4 x i8> poison, i8 %i.aj, i64 0
  %invariant.gep = getelementptr [2 x i8], ptr %i.e, i64 %i.ap
  %interleaved.vec70 = shufflevector <4 x i8> %broadcast.splatinsert65, <4 x i8> %broadcast.splatinsert67, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index69 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next71, %vec.epilog.vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index69
  store <8 x i8> %interleaved.vec70, ptr %gep, align 1, !tbaa !27
  %index.next71 = add nuw i64 %index69, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next71, %n.vec64
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n72 = icmp eq i64 %i.aq, %n.vec64
  br i1 %cmp.n72, label %._crit_edge, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv45.ph = phi i64 [ %i.ap, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %.lr.ph41
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph41 ], [ %indvars.iv45.ph, %.lr.ph41.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv45 ; 2 uses
  store i8 %i.ai, ptr %i.az, align 1, !tbaa !27
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.aj, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !27
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count
  br i1 %exitcond48.not, label %._crit_edge, label %.lr.ph41, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph41, %middle.block, %vec.epilog.middle.block, %bb.d
  store i32 %i.an, ptr %i.al, align 4, !tbaa !3
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %.loopexit, label %bb.d, !llvm.loop !36

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %bb.b, %bb.a
  %.0 = phi i64 [ -44, %bb.b ], [ %i.f, %bb.a ], [ %i.f, %.preheader ], [ %i.f, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i64 %.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -119, -9223372036854775808) i64 @HUFv06_readStats(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr noundef %4, i64 noundef %5) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %.critedge95, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %4, align 1, !tbaa !27      ; 3 uses
  %i.b = zext i8 %i.a to i64                      ; 8 uses
  %i.c = icmp slt i8 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ugt i8 %i.a, -15
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr [4 x i8], ptr @HUFv06_readStats.l, i64 %i.b
  %i.f = getelementptr i8, ptr %i.e, i64 -968
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  %i.h = zext i32 %i.g to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, i8 1, i64 256, i1 false)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.i = add nsw i64 %i.b, -127                   ; 5 uses
  %i.j = add nsw i64 %i.b, -126
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %.not90 = icmp ult i64 %i.k, %5
  br i1 %.not90, label %iter.check, label %.critedge95

iter.check:                                       ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 4 uses
  %umax2 = tail call i64 @llvm.umax.i64(i64 %i.i, i64 2)
  %6 = add nsw i64 %umax2, -1
  %7 = lshr i64 %6, 1
  %8 = add nuw i64 %7, 1                          ; 5 uses
  %min.iters.check = icmp ult i64 %i.i, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %9 = add nsw i64 %i.b, -128
  %10 = lshr i64 %9, 1
  %11 = and i64 %i.b, 126
  %i.m = getelementptr i8, ptr %0, i64 %11
  %scevgep = getelementptr i8, ptr %i.m, i64 2
  %i.n = getelementptr i8, ptr %4, i64 %10
  %scevgep1 = getelementptr i8, ptr %i.n, i64 2
  %bound0 = icmp ult ptr %0, %scevgep1
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.i, 31
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %8, 12
  %n.vec = and i64 %8, -16                        ; 4 uses
  %i.o = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 1                        ; 2 uses
  %i.q = and i64 %index, 9223372036854775792
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.r, align 1, !tbaa !27, !alias.scope !37
  %wide.load4 = load <8 x i8>, ptr %i.s, align 1, !tbaa !27, !alias.scope !37
  %i.t = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.u = lshr <8 x i8> %wide.load4, splat (i8 4)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load5 = load <8 x i8>, ptr %i.r, align 1, !tbaa !27, !alias.scope !37
  %wide.load6 = load <8 x i8>, ptr %i.s, align 1, !tbaa !27, !alias.scope !37
  %i.y = and <8 x i8> %wide.load5, splat (i8 15)
  %i.z = and <8 x i8> %wide.load6, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.t, <8 x i8> %i.y, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.v, align 1, !tbaa !27, !alias.scope !40, !noalias !37
  %interleaved.vec7 = shufflevector <8 x i8> %i.u, <8 x i8> %i.z, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec7, ptr %i.x, align 1, !tbaa !27, !alias.scope !40, !noalias !37
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %8, -4                        ; 3 uses
  %i.ab = shl i64 %n.vec9, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = shl i64 %index10, 1
  %i.ad = and i64 %index10, 9223372036854775804
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ad
  %wide.load11 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !27, !alias.scope !37 ; 2 uses
  %i.af = lshr <4 x i8> %wide.load11, splat (i8 4)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ah = and <4 x i8> %wide.load11, splat (i8 15)
  %interleaved.vec13 = shufflevector <4 x i8> %i.af, <4 x i8> %i.ah, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec13, ptr %i.ag, align 1, !tbaa !27, !alias.scope !40, !noalias !37
  %index.next14 = add nuw i64 %index10, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next14, %n.vec9
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !43

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n15 = icmp eq i64 %8, %n.vec9
  br i1 %cmp.n15, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %i.aj = lshr exact i64 %indvars.iv, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !27
  %i.am = lshr i8 %i.al, 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.am, ptr %i.an, align 1, !tbaa !27
  %i.ao = load i8, ptr %i.ak, align 1, !tbaa !27
  %i.ap = and i8 %i.ao, 15
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store i8 %i.ap, ptr %i.ar, align 1, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.as = icmp samesign ugt i64 %i.i, %indvars.iv.next
  br i1 %i.as, label %.lr.ph, label %.loopexit.thread, !llvm.loop !44

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  br label %.lr.ph104.preheader

bb.f:                                             ; preds = %bb.b
  %.not88 = icmp ugt i64 %5, %i.b
  br i1 %.not88, label %bb.g, label %.critedge95

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.au = tail call i64 @FSEv06_decompress(ptr noundef nonnull %0, i64 noundef 255, ptr noundef nonnull %i.at, i64 noundef %i.b) ; 3 uses
  %i.av = icmp ult i64 %i.au, -119
  br i1 %i.av, label %.loopexit, label %.critedge95

.loopexit:                                        ; preds = %bb.g, %bb.d
  %.075 = phi i64 [ %i.h, %bb.d ], [ %i.au, %bb.g ] ; 2 uses
  %.074 = phi i64 [ 0, %bb.d ], [ %i.b, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  %.not91101.not = icmp eq i64 %.075, 0
  br i1 %.not91101.not, label %.critedge95, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %.loopexit.thread, %.loopexit
  %.074120 = phi i64 [ %i.k, %.loopexit.thread ], [ %.074, %.loopexit ]
  %.075118 = phi i64 [ %i.i, %.loopexit.thread ], [ %.075, %.loopexit ] ; 3 uses
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %bb.h
  %i.aw = phi i64 [ %i.bk, %bb.h ], [ 0, %.lr.ph104.preheader ]
  %.073103 = phi i32 [ %i.bi, %bb.h ], [ 0, %.lr.ph104.preheader ]
  %.076102 = phi i32 [ %i.bj, %bb.h ], [ 0, %.lr.ph104.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !27  ; 2 uses
  %i.az = icmp ugt i8 %i.ay, 15
  br i1 %i.az, label %.critedge95, label %bb.h

bb.h:                                             ; preds = %.lr.ph104
  %i.ba = zext nneg i8 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !3
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !27
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = ashr i32 %i.bg, 1
  %i.bi = add i32 %i.bh, %.073103                 ; 4 uses
  %i.bj = add i32 %.076102, 1                     ; 2 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %.not91 = icmp ugt i64 %.075118, %i.bk
  br i1 %.not91, label %.lr.ph104, label %.critedge, !llvm.loop !45

.critedge:                                        ; preds = %bb.h
  %.old = icmp eq i32 %i.bi, 0
  br i1 %.old, label %.critedge95, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.bl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bi, i1 true) ; 2 uses
  %i.bm = xor i32 %i.bl, 31                       ; 2 uses
  %i.bn = icmp samesign ugt i32 %i.bm, 15
  br i1 %i.bn, label %.critedge95, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = sub nuw nsw i32 32, %i.bl
  store i32 %i.bo, ptr %3, align 4, !tbaa !3
  %i.bp = shl nuw nsw i32 2, %i.bm
  %i.bq = sub i32 %i.bp, %i.bi                    ; 2 uses
  %i.br = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bq, i1 true) ; 2 uses
  %i.bs = lshr exact i32 -2147483648, %i.br
  %.not92 = icmp eq i32 %i.bs, %i.bq
  br i1 %.not92, label %bb.k, label %.critedge95

bb.k:                                             ; preds = %bb.j
  %i.bt = sub nuw nsw i32 32, %i.br               ; 2 uses
  %i.bu = trunc nuw nsw i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %.075118
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !27
  %i.bw = zext nneg i32 %i.bt to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !3
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3  ; 2 uses
  %i.cc = icmp ugt i32 %i.cb, 1
  %i.cd = and i32 %i.cb, 1
  %.not93 = icmp eq i32 %i.cd, 0
  %or.cond = and i1 %i.cc, %.not93
  br i1 %or.cond, label %bb.l, label %.critedge95

bb.l:                                             ; preds = %bb.k
  %i.ce = trunc nuw i64 %.075118 to i32
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %2, align 4, !tbaa !3
  %i.cg = add nuw nsw i64 %.074120, 1
  br label %.critedge95

.critedge95:                                      ; preds = %.lr.ph104, %.loopexit, %bb.j, %bb.i, %bb.k, %.critedge, %bb.g, %bb.f, %bb.e, %bb.a, %bb.l
  %.3 = phi i64 [ %i.au, %bb.g ], [ -20, %bb.i ], [ %i.cg, %bb.l ], [ -20, %bb.j ], [ -20, %bb.k ], [ -72, %bb.a ], [ -72, %bb.f ], [ -72, %bb.e ], [ -20, %.critedge ], [ -20, %.loopexit ], [ -20, %.lr.ph104 ]
  ret i64 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv06_decompress1X2_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #11 {
bb.a:
  %5 = alloca %struct.BITv06_DStream_t, align 8   ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = load i16, ptr %4, align 2, !tbaa !10
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %BITv06_initDStream.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %3, 7
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %2, ptr %i.g, align 8, !tbaa !46
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !51
  %.val.i = load i64, ptr %i.i, align 1           ; 2 uses
  store i64 %.val.i, ptr %5, align 8, !tbaa !52
  %i.k = lshr i64 %.val.i, 56                     ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %BITv06_initDStream.exit.thread, label %BITv06_initDStream.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.m, align 8, !tbaa !51
  %i.n = load i8, ptr %2, align 1, !tbaa !27
  %i.o = zext i8 %i.n to i64                      ; 7 uses
  store i64 %i.o, ptr %5, align 8, !tbaa !52
  switch i64 %3, label %bb.k [
    i64 7, label %bb.e
    i64 6, label %bb.f
    i64 5, label %bb.g
    i64 4, label %bb.h
    i64 3, label %bb.i
    i64 2, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.q = load i8, ptr %i.p, align 1, !tbaa !27
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 48
  %i.t = or disjoint i64 %i.s, %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = phi i64 [ %i.t, %bb.e ], [ %i.o, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.w = load i8, ptr %i.v, align 1, !tbaa !27
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 40
  %i.z = add nuw nsw i64 %i.y, %i.u
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.aa = phi i64 [ %i.z, %bb.f ], [ %i.o, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !27
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 32
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ag = phi i64 [ %i.af, %bb.g ], [ %i.o, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !27
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 24
  %i.al = add nuw nsw i64 %i.ak, %i.ag
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.am = phi i64 [ %i.al, %bb.h ], [ %i.o, %bb.d ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !27
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 16
  %i.ar = add nuw nsw i64 %i.aq, %i.am
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.as = phi i64 [ %i.ar, %bb.i ], [ %i.o, %bb.d ]
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !27
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 8
  %i.ax = add nuw nsw i64 %i.aw, %i.as
  store i64 %i.ax, ptr %5, align 8, !tbaa !52
  br label %bb.k
end_hunk_0
begin_hunk_1_@ZSTDv06_buildSeqTable:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i20.epil.init
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !10 ; 3 uses
  %i.ds = icmp eq i16 %i.dr, -1
  br i1 %i.ds, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.epil.preheader
  %i.dt = sext i16 %i.dr to i32
  %.not76.i23.epil = icmp sgt i32 %i.cu, %i.dt
  %spec.select.i24.epil = select i1 %.not76.i23.epil, i16 %.sroa.4.079.i22.epil.init, i16 0
  br label %.preheader77.lr.ph.i30.epilog-lcssa

bb.af:                                            ; preds = %.epil.preheader
  %i.du = trunc i64 %indvars.iv.i20.epil.init to i8
  %i.dv = add i32 %.06480.i21.epil.init, -1
  %i.dw = zext i32 %.06480.i21.epil.init to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  store i8 %i.du, ptr %i.dy, align 2, !tbaa !14
  br label %.preheader77.lr.ph.i30.epilog-lcssa

.preheader77.lr.ph.i30.epilog-lcssa:              ; preds = %bb.af, %bb.ae
  %.sink.i25.epil = phi i16 [ 1, %bb.af ], [ %i.dr, %bb.ae ]
  %.sroa.4.2.i26.epil = phi i16 [ %.sroa.4.079.i22.epil.init, %bb.af ], [ %spec.select.i24.epil, %bb.ae ]
  %.165.i27.epil = phi i32 [ %i.dv, %bb.af ], [ %.06480.i21.epil.init, %bb.ae ]
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i20.epil.init
  store i16 %.sink.i25.epil, ptr %i.dz, align 2, !tbaa !10
  br label %.preheader77.lr.ph.i30

.preheader77.lr.ph.i30:                           ; preds = %.preheader77.lr.ph.i30.unr-lcssa, %.preheader77.lr.ph.i30.epilog-lcssa
  %.sroa.4.2.i26.lcssa = phi i16 [ %.sroa.4.2.i26.1, %.preheader77.lr.ph.i30.unr-lcssa ], [ %.sroa.4.2.i26.epil, %.preheader77.lr.ph.i30.epilog-lcssa ]
  %.165.i27.lcssa = phi i32 [ %.165.i27.1, %.preheader77.lr.ph.i30.unr-lcssa ], [ %.165.i27.epil, %.preheader77.lr.ph.i30.epilog-lcssa ] ; 3 uses
  %i.ea = trunc nuw nsw i32 %i.cm to i16
  store i16 %i.ea, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.4.2.i26.lcssa, ptr %.sroa.4.0..sroa_idx.i31, align 2
  %i.eb = lshr i32 %i.cq, 3
  %i.ec = lshr i32 %i.cq, 1
  %i.ed = add nuw nsw i32 %i.eb, 3
  %i.ee = add nuw nsw i32 %i.ed, %i.ec            ; 3 uses
  br label %.preheader77.i33

.preheader77.i33:                                 ; preds = %._crit_edge85.i36, %.preheader77.lr.ph.i30
  %indvars.iv93.i34 = phi i64 [ 0, %.preheader77.lr.ph.i30 ], [ %indvars.iv.next94.i38, %._crit_edge85.i36 ] ; 3 uses
  %.06888.i35 = phi i32 [ 0, %.preheader77.lr.ph.i30 ], [ %.169.lcssa.i37, %._crit_edge85.i36 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv93.i34
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !10 ; 5 uses
  %i.eh = icmp sgt i16 %i.eg, 0
  br i1 %i.eh, label %.lr.ph84.i49, label %._crit_edge85.i36

.lr.ph84.i49:                                     ; preds = %.preheader77.i33
  %i.ei = trunc i64 %indvars.iv93.i34 to i8       ; 3 uses
  %i.ej = icmp eq i16 %i.eg, 1
  br i1 %i.ej, label %.epil.preheader67, label %.lr.ph84.i49.new

.lr.ph84.i49.new:                                 ; preds = %.lr.ph84.i49
  %i.ek = and i16 %i.eg, 32766
  %unroll_iter72 = zext nneg i16 %i.ek to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ak, %.lr.ph84.i49.new
  %.16982.i51 = phi i32 [ %.06888.i35, %.lr.ph84.i49.new ], [ %.2.i54.1, %bb.ak ] ; 2 uses
  %niter73 = phi i32 [ 0, %.lr.ph84.i49.new ], [ %niter73.next.1, %bb.ak ]
  %i.el = zext nneg i32 %.16982.i51 to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store i8 %i.ei, ptr %i.en, align 2, !tbaa !14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.169.pn.i52 = phi i32 [ %.16982.i51, %bb.ag ], [ %.2.i54, %bb.ah ]
  %.pn.i53 = add nuw nsw i32 %i.ee, %.169.pn.i52
  %.2.i54 = and i32 %.pn.i53, %i.cr               ; 4 uses
  %i.eo = icmp ugt i32 %.2.i54, %.165.i27.lcssa
  br i1 %i.eo, label %bb.ah, label %bb.ai, !llvm.loop !17

bb.ai:                                            ; preds = %bb.ah
  %i.ep = zext nneg i32 %.2.i54 to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  store i8 %i.ei, ptr %i.er, align 2, !tbaa !14
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.169.pn.i52.1 = phi i32 [ %.2.i54, %bb.ai ], [ %.2.i54.1, %bb.aj ]
  %.pn.i53.1 = add nuw nsw i32 %i.ee, %.169.pn.i52.1
  %.2.i54.1 = and i32 %.pn.i53.1, %i.cr           ; 5 uses
  %i.es = icmp ugt i32 %.2.i54.1, %.165.i27.lcssa
  br i1 %i.es, label %bb.aj, label %bb.ak, !llvm.loop !17

bb.ak:                                            ; preds = %bb.aj
  %niter73.next.1 = add i32 %niter73, 2           ; 2 uses
  %niter73.ncmp.1 = icmp eq i32 %niter73.next.1, %unroll_iter72
  br i1 %niter73.ncmp.1, label %._crit_edge85.i36.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !18

._crit_edge85.i36.loopexit.unr-lcssa:             ; preds = %bb.ak
  %i.et = and i16 %i.eg, 1
  %lcmp.mod69.not = icmp eq i16 %i.et, 0
  br i1 %lcmp.mod69.not, label %._crit_edge85.i36, label %.epil.preheader67

.epil.preheader67:                                ; preds = %._crit_edge85.i36.loopexit.unr-lcssa, %.lr.ph84.i49
  %.16982.i51.epil.init = phi i32 [ %.06888.i35, %.lr.ph84.i49 ], [ %.2.i54.1, %._crit_edge85.i36.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i16 %i.eg to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.eu = zext nneg i32 %.16982.i51.epil.init to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  store i8 %i.ei, ptr %i.ew, align 2, !tbaa !14
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader67
  %.169.pn.i52.epil = phi i32 [ %.16982.i51.epil.init, %.epil.preheader67 ], [ %.2.i54.epil, %bb.al ]
  %.pn.i53.epil = add nuw nsw i32 %i.ee, %.169.pn.i52.epil
  %.2.i54.epil = and i32 %.pn.i53.epil, %i.cr     ; 3 uses
  %i.ex = icmp ugt i32 %.2.i54.epil, %.165.i27.lcssa
  br i1 %i.ex, label %bb.al, label %._crit_edge85.i36, !llvm.loop !17

._crit_edge85.i36:                                ; preds = %._crit_edge85.i36.loopexit.unr-lcssa, %bb.al, %.preheader77.i33
  %.169.lcssa.i37 = phi i32 [ %.06888.i35, %.preheader77.i33 ], [ %.2.i54.1, %._crit_edge85.i36.loopexit.unr-lcssa ], [ %.2.i54.epil, %bb.al ] ; 2 uses
  %indvars.iv.next94.i38 = add nuw nsw i64 %indvars.iv93.i34, 1 ; 2 uses
  %exitcond97.not.i39 = icmp eq i64 %indvars.iv.next94.i38, %wide.trip.count.i19
  br i1 %exitcond97.not.i39, label %._crit_edge89.i40, label %.preheader77.i33, !llvm.loop !19

._crit_edge89.i40:                                ; preds = %._crit_edge85.i36
  %.not.i41 = icmp eq i32 %.169.lcssa.i37, 0
  br i1 %.not.i41, label %.preheader.preheader.i43, label %FSEv06_buildDTable.exit56

.preheader.preheader.i43:                         ; preds = %._crit_edge89.i40
  %wide.trip.count101.i44 = zext nneg i32 %i.cq to i64
  br label %.preheader.i45

.preheader.i45:                                   ; preds = %.preheader.i45, %.preheader.preheader.i43
  %indvars.iv98.i46 = phi i64 [ 0, %.preheader.preheader.i43 ], [ %indvars.iv.next99.i47, %.preheader.i45 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv98.i46 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fa = load i8, ptr %i.ez, align 2, !tbaa !14
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fb ; 2 uses
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !10 ; 2 uses
  %i.fe = add i16 %i.fd, 1
  store i16 %i.fe, ptr %i.fc, align 2, !tbaa !10
  %i.ff = zext i16 %i.fd to i32                   ; 2 uses
  %i.fg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ff, i1 true)
  %i.fh = xor i32 %i.fg, 31
  %i.fi = sub nsw i32 %i.cm, %i.fh                ; 2 uses
  %i.fj = trunc nsw i32 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 3
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !20
  %i.fl = and i32 %i.fi, 255
  %i.fm = shl i32 %i.ff, %i.fl
  %i.fn = sub i32 %i.fm, %i.cq
  %i.fo = trunc i32 %i.fn to i16
  store i16 %i.fo, ptr %i.ey, align 2, !tbaa !21
  %indvars.iv.next99.i47 = add nuw nsw i64 %indvars.iv98.i46, 1 ; 2 uses
  %exitcond102.not.i48 = icmp eq i64 %indvars.iv.next99.i47, %wide.trip.count101.i44
  br i1 %exitcond102.not.i48, label %FSEv06_buildDTable.exit56, label %.preheader.i45, !llvm.loop !22

FSEv06_buildDTable.exit56:                        ; preds = %.preheader.i45, %bb.w, %._crit_edge89.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.am

bb.am:                                            ; preds = %bb.v, %bb.u, %FSEv06_buildDTable.exit56
  %.0 = phi i64 [ %i.ck, %FSEv06_buildDTable.exit56 ], [ -20, %bb.u ], [ -20, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.an

bb.an:                                            ; preds = %bb.t, %bb.c, %bb.b, %bb.am, %FSEv06_buildDTable.exit, %bb.d
  %.1 = phi i64 [ %.0, %bb.am ], [ -72, %bb.b ], [ 1, %bb.d ], [ %., %bb.t ], [ 0, %FSEv06_buildDTable.exit ], [ -20, %bb.c ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !5, i64 0}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = !{!15, !5, i64 2}
!15 = !{!"", !11, i64 0, !5, i64 2, !5, i64 3}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = !{!15, !5, i64 3}
!21 = !{!15, !11, i64 0}
!22 = distinct !{!22, !8}
!23 = !{!24, !11, i64 0}
!24 = !{!"", !11, i64 0, !11, i64 2}
!25 = !{!24, !11, i64 2}
!26 = distinct !{!26, !8}
!27 = !{!5, !5, i64 0}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8, !31, !32}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"branch_weights", i32 4, i32 12}
!34 = distinct !{!34, !8, !31, !32}
!35 = distinct !{!35, !8, !32, !31}
!36 = distinct !{!36, !8}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !8, !31, !32}
!43 = distinct !{!43, !8, !31, !32}
!44 = distinct !{!44, !8, !31}
!45 = distinct !{!45, !8}
!46 = !{!47, !49, i64 24}
!47 = !{!"", !48, i64 0, !4, i64 8, !49, i64 16, !49, i64 24}
!48 = !{!"long", !5, i64 0}
!49 = !{!"p1 omnipotent char", !50, i64 0}
!50 = !{!"any pointer", !5, i64 0}
!51 = !{!47, !49, i64 16}
!52 = !{!47, !48, i64 0}
!53 = !{!47, !4, i64 8}
!54 = !{!55, !5, i64 0}
!55 = !{!"", !5, i64 0, !5, i64 1}
!56 = !{!55, !5, i64 1}
!57 = distinct !{!57, !8}
!58 = distinct !{!58, !8}
!59 = distinct !{!59, !8}
!60 = distinct !{!60, !8, !31, !32}
!61 = distinct !{!61, !8, !31, !32}
!62 = distinct !{!62, !8, !32, !31}
!63 = distinct !{!63, !8}
!64 = !{!49, !49, i64 0}
!65 = distinct !{!65, !8, !31, !32}
!66 = distinct !{!66, !8, !31, !32}
!67 = distinct !{!67, !8, !32, !31}
!68 = distinct !{!68, !8}
!69 = distinct !{!69, !8}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = distinct !{!72, !8}
!73 = distinct !{!73, !8}
!74 = distinct !{!74, !8, !31, !32}
!75 = distinct !{!75, !71}
!76 = distinct !{!76, !8, !31}
!77 = distinct !{!77, !8}
!78 = distinct !{!78, !8, !31, !32}
!79 = distinct !{!79, !8, !32, !31}
!80 = distinct !{!80, !8, !31, !32}
!81 = distinct !{!81, !8, !31}
!82 = distinct !{!82, !8}
!83 = distinct !{!83, !8, !31, !32}
!84 = distinct !{!84, !8, !32, !31}
!85 = distinct !{!85, !8}
!86 = distinct !{!86, !8}
!87 = distinct !{!87, !8}
!88 = distinct !{!88, !8}
!89 = distinct !{!89, !8}
!90 = !{!91, !4, i64 0}
!91 = !{!"", !4, i64 0, !4, i64 4}
!92 = !{!91, !4, i64 4}
!93 = !{!50, !50, i64 0}
!94 = !{!95, !48, i64 21552}
!95 = !{!"ZSTDv06_DCtx_s", !5, i64 0, !5, i64 2052, !5, i64 3080, !5, i64 5132, !50, i64 21520, !50, i64 21528, !50, i64 21536, !50, i64 21544, !48, i64 21552, !48, i64 21560, !96, i64 21568, !4, i64 21584, !4, i64 21588, !4, i64 21592, !49, i64 21600, !48, i64 21608, !5, i64 21616, !5, i64 152696}
!96 = !{!"ZSTDv06_frameParams_s", !97, i64 0, !4, i64 8}
!97 = !{!"long long", !5, i64 0}
!98 = !{!95, !4, i64 21588}
!99 = !{!95, !4, i64 21592}
!100 = !{!48, !48, i64 0}
!101 = !{!96, !4, i64 8}
!102 = !{!96, !97, i64 0}
!103 = !{!95, !50, i64 21520}
!104 = !{!95, !50, i64 21544}
!105 = !{!95, !50, i64 21528}
!106 = !{!95, !50, i64 21536}
!107 = !{!95, !49, i64 21600}
!108 = !{!95, !48, i64 21608}
!109 = !{!110, !48, i64 0}
!110 = !{!"", !48, i64 0, !50, i64 8}
!111 = !{!110, !50, i64 8}
!112 = distinct !{!112, !8, !31, !32}
!113 = distinct !{!113, !8, !31}
!114 = distinct !{!114, !8, !31, !32}
!115 = !{!"branch_weights", i32 4, i32 28}
!116 = distinct !{!116, !8, !31, !32}
!117 = distinct !{!117, !8, !31}
!118 = distinct !{!118, !8, !31, !32}
!119 = distinct !{!119, !8, !31}
!120 = distinct !{!120, !8, !31, !32}
!121 = distinct !{!121, !8, !31, !32}
!122 = distinct !{!122, !8, !31}
!123 = distinct !{!123, !8, !31, !32}
!124 = distinct !{!124, !8, !31}
!125 = distinct !{!125, !8}
!126 = !{!97, !97, i64 0}
!127 = !{!95, !48, i64 21560}
!128 = !{!95, !4, i64 21584}
!129 = !{!130, !131, i64 0}
!130 = !{!"ZBUFFv06_DCtx_s", !131, i64 0, !96, i64 8, !4, i64 24, !49, i64 32, !48, i64 40, !48, i64 48, !49, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !5, i64 96, !48, i64 112}
!131 = !{!"p1 _ZTS14ZSTDv06_DCtx_s", !50, i64 0}
!132 = !{!130, !4, i64 24}
!133 = !{!130, !49, i64 32}
!134 = !{!130, !49, i64 56}
!135 = !{!130, !48, i64 48}
!136 = !{!130, !48, i64 112}
!137 = !{!130, !48, i64 80}
!138 = !{!130, !48, i64 72}
!139 = !{!130, !4, i64 16}
!140 = !{!130, !48, i64 88}
!141 = !{!130, !48, i64 40}
!142 = !{!130, !48, i64 64}
!143 = distinct !{!143, !8}
end_hunk_1
