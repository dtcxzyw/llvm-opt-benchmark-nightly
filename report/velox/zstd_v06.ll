inline.NumInlined: 337
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@HUFv06_readDTableX2:bb.a
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
  store i32 %.03438.epil.init, ptr %i.n, align 4, !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.c
  %i.o = load i32, ptr %i.d, align 4, !tbaa !8    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8
  %i.t = trunc i64 %indvars.iv to i32
  %i.u = add nsw i32 %i.t, -1
  %i.v = shl i32 %i.s, %i.u
  %i.w = add i32 %i.v, %.03438                    ; 2 uses
  store i32 %.03438, ptr %i.r, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %i.z = trunc i64 %indvars.iv.next to i32
  %i.aa = add nsw i32 %i.z, -1
  %i.ab = shl i32 %i.y, %i.aa
  %i.ac = add i32 %i.ab, %i.w                     ; 2 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !31

bb.d:                                             ; preds = %.lr.ph43, %._crit_edge
  %indvars.iv49 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next50, %._crit_edge ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv49
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !29  ; 3 uses
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = ashr i32 %i.ag, 1
  %i.ai = trunc i64 %indvars.iv49 to i8           ; 3 uses
  %i.aj = sub i8 %i.q, %i.ae                      ; 3 uses
  %i.ak = zext i8 %i.ae to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8  ; 3 uses
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
  %i.as = add nuw i64 %index, %i.ap               ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.as
  %i.au = getelementptr [2 x i8], ptr %i.e, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 16
  store <16 x i8> %interleaved.vec, ptr %i.at, align 1, !tbaa !29
  store <16 x i8> %interleaved.vec, ptr %i.av, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.preheader, label %vec.epilog.ph, !prof !35

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
  store <8 x i8> %interleaved.vec70, ptr %gep, align 1, !tbaa !29
  %index.next71 = add nuw i64 %index69, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next71, %n.vec64
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n72 = icmp eq i64 %i.aq, %n.vec64
  br i1 %cmp.n72, label %._crit_edge, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv45.ph = phi i64 [ %i.ap, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %.lr.ph41
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph41 ], [ %indvars.iv45.ph, %.lr.ph41.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv45 ; 2 uses
  store i8 %i.ai, ptr %i.az, align 1, !tbaa !29
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.aj, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !29
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count
  br i1 %exitcond48.not, label %._crit_edge, label %.lr.ph41, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph41, %middle.block, %vec.epilog.middle.block, %bb.d
  store i32 %i.an, ptr %i.al, align 4, !tbaa !8
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %.loopexit, label %bb.d, !llvm.loop !38

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
  %i.a = load i8, ptr %4, align 1, !tbaa !29      ; 3 uses
  %i.b = zext i8 %i.a to i64                      ; 8 uses
  %i.c = icmp slt i8 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ugt i8 %i.a, -15
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr [4 x i8], ptr @HUFv06_readStats.l, i64 %i.b
  %i.f = getelementptr i8, ptr %i.e, i64 -968
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
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
  %i.m = add nsw i64 %umax2, -1
  %i.n = lshr i64 %i.m, 1
  %i.o = add nuw i64 %i.n, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.i, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.p = add nsw i64 %i.b, -128
  %i.q = and i64 %i.b, 126
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %scevgep = getelementptr i8, ptr %i.r, i64 2
  %6 = lshr i64 %i.p, 1
  %i.s = getelementptr i8, ptr %4, i64 %6
  %scevgep1 = getelementptr i8, ptr %i.s, i64 2
  %bound0 = icmp ult ptr %0, %scevgep1
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.i, 31
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.o, 12
  %n.vec = and i64 %i.o, -16                      ; 5 uses
  %i.t = shl i64 %n.vec, 1
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 9
  %wide.load = load <8 x i8>, ptr %i.l, align 1, !tbaa !29, !alias.scope !39 ; 2 uses
  %wide.load4 = load <8 x i8>, ptr %i.u, align 1, !tbaa !29, !alias.scope !39 ; 2 uses
  %i.v = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.w = lshr <8 x i8> %wide.load4, splat (i8 4)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = and <8 x i8> %wide.load, splat (i8 15)
  %i.z = and <8 x i8> %wide.load4, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.v, <8 x i8> %i.y, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %0, align 1, !tbaa !29, !alias.scope !42, !noalias !39
  %interleaved.vec7 = shufflevector <8 x i8> %i.w, <8 x i8> %i.z, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec7, ptr %i.x, align 1, !tbaa !29, !alias.scope !42, !noalias !39
  %i.aa = icmp eq i64 %n.vec, 16
  br i1 %i.aa, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 25
  %wide.load.1 = load <8 x i8>, ptr %i.ab, align 1, !tbaa !29, !alias.scope !39 ; 2 uses
  %wide.load4.1 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !29, !alias.scope !39 ; 2 uses
  %i.ad = lshr <8 x i8> %wide.load.1, splat (i8 4)
  %i.ae = lshr <8 x i8> %wide.load4.1, splat (i8 4)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = and <8 x i8> %wide.load.1, splat (i8 15)
  %i.ai = and <8 x i8> %wide.load4.1, splat (i8 15)
  %interleaved.vec.1 = shufflevector <8 x i8> %i.ad, <8 x i8> %i.ah, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %i.af, align 1, !tbaa !29, !alias.scope !42, !noalias !39
  %interleaved.vec7.1 = shufflevector <8 x i8> %i.ae, <8 x i8> %i.ai, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec7.1, ptr %i.ag, align 1, !tbaa !29, !alias.scope !42, !noalias !39
  %i.aj = icmp eq i64 %n.vec, 32
  br i1 %i.aj, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 33
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 41
  %wide.load.2 = load <8 x i8>, ptr %i.ak, align 1, !tbaa !29, !alias.scope !39 ; 2 uses
  %wide.load4.2 = load <8 x i8>, ptr %i.al, align 1, !tbaa !29, !alias.scope !39 ; 2 uses
  %i.am = lshr <8 x i8> %wide.load.2, splat (i8 4)
  %i.an = lshr <8 x i8> %wide.load4.2, splat (i8 4)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = and <8 x i8> %wide.load.2, splat (i8 15)
  %i.ar = and <8 x i8> %wide.load4.2, splat (i8 15)
  %interleaved.vec.2 = shufflevector <8 x i8> %i.am, <8 x i8> %i.aq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.2, ptr %i.ao, align 1, !tbaa !29, !alias.scope !42, !noalias !39
  %interleaved.vec7.2 = shufflevector <8 x i8> %i.an, <8 x i8> %i.ar, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec7.2, ptr %i.ap, align 1, !tbaa !29, !alias.scope !42, !noalias !39
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %i.o, -4                      ; 3 uses
  %i.as = shl i64 %n.vec9, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ] ; 3 uses
  %i.at = shl nuw i64 %index10, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 %index10
  %wide.load11 = load <4 x i8>, ptr %i.au, align 1, !tbaa !29, !alias.scope !39 ; 2 uses
  %i.av = lshr <4 x i8> %wide.load11, splat (i8 4)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.at
  %i.ax = and <4 x i8> %wide.load11, splat (i8 15)
  %interleaved.vec13 = shufflevector <4 x i8> %i.av, <4 x i8> %i.ax, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec13, ptr %i.aw, align 1, !tbaa !29, !alias.scope !42, !noalias !39
  %index.next14 = add nuw i64 %index10, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next14, %n.vec9
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n15 = icmp eq i64 %i.o, %n.vec9
  br i1 %cmp.n15, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.az = phi i64 [ %i.bj, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 4 uses
  %i.ba = lshr exact i64 %i.az, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ba ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !29
  %i.bd = lshr i8 %i.bc, 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !29
  %i.bf = load i8, ptr %i.bb, align 1, !tbaa !29
  %i.bg = and i8 %i.bf, 15
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.bg, ptr %i.bi, align 1, !tbaa !29
  %i.bj = add nuw nsw i64 %i.az, 2                ; 2 uses
  %i.bk = icmp samesign ugt i64 %i.i, %i.bj
  br i1 %i.bk, label %.lr.ph, label %.loopexit.thread, !llvm.loop !45

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  br label %.lr.ph104.preheader

bb.f:                                             ; preds = %bb.b
  %.not88 = icmp ugt i64 %5, %i.b
  br i1 %.not88, label %bb.g, label %.critedge95

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.bm = tail call i64 @FSEv06_decompress(ptr noundef nonnull %0, i64 noundef 255, ptr noundef nonnull %i.bl, i64 noundef %i.b) ; 3 uses
  %i.bn = icmp ult i64 %i.bm, -119
  br i1 %i.bn, label %.loopexit, label %.critedge95

.loopexit:                                        ; preds = %bb.g, %bb.d
  %.075 = phi i64 [ %i.h, %bb.d ], [ %i.bm, %bb.g ] ; 2 uses
  %.074 = phi i64 [ 0, %bb.d ], [ %i.b, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  %.not91101.not = icmp eq i64 %.075, 0
  br i1 %.not91101.not, label %.critedge95, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %.loopexit.thread, %.loopexit
  %.074119 = phi i64 [ %i.k, %.loopexit.thread ], [ %.074, %.loopexit ]
  %.075117 = phi i64 [ %i.i, %.loopexit.thread ], [ %.075, %.loopexit ] ; 3 uses
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %bb.h
  %i.bo = phi i64 [ %i.cc, %bb.h ], [ 0, %.lr.ph104.preheader ]
  %.073103 = phi i32 [ %i.ca, %bb.h ], [ 0, %.lr.ph104.preheader ]
  %.076102 = phi i32 [ %i.cb, %bb.h ], [ 0, %.lr.ph104.preheader ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !29  ; 2 uses
  %i.br = icmp ugt i8 %i.bq, 15
  br i1 %i.br, label %.critedge95, label %bb.h

bb.h:                                             ; preds = %.lr.ph104
  %i.bs = zext nneg i8 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !8
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !8
  %i.bw = load i8, ptr %i.bp, align 1, !tbaa !29
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = shl nuw i32 1, %i.bx
  %i.bz = ashr i32 %i.by, 1
  %i.ca = add i32 %i.bz, %.073103                 ; 4 uses
  %i.cb = add i32 %.076102, 1                     ; 2 uses
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %.not91 = icmp ugt i64 %.075117, %i.cc
  br i1 %.not91, label %.lr.ph104, label %.critedge, !llvm.loop !46

.critedge:                                        ; preds = %bb.h
  %.old = icmp eq i32 %i.ca, 0
  br i1 %.old, label %.critedge95, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.cd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ca, i1 true) ; 2 uses
  %i.ce = xor i32 %i.cd, 31                       ; 2 uses
  %i.cf = icmp samesign ugt i32 %i.ce, 15
  br i1 %i.cf, label %.critedge95, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = sub nuw nsw i32 32, %i.cd
  store i32 %i.cg, ptr %3, align 4, !tbaa !8
  %i.ch = shl nuw nsw i32 2, %i.ce
  %i.ci = sub i32 %i.ch, %i.ca                    ; 2 uses
  %i.cj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ci, i1 true) ; 2 uses
  %i.ck = lshr exact i32 -2147483648, %i.cj
  %.not92 = icmp eq i32 %i.ck, %i.ci
  br i1 %.not92, label %bb.k, label %.critedge95

bb.k:                                             ; preds = %bb.j
  %i.cl = sub nuw nsw i32 32, %i.cj               ; 2 uses
  %i.cm = trunc nuw nsw i32 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %.075117
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !29
  %i.co = zext nneg i32 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !8
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 4
end_hunk_0
