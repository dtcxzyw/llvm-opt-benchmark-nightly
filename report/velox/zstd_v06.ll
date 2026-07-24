inline.NumInlined: 337
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0_@FSEv06_decompress:bb.a
  %lcmp.mod48 = trunc i16 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.bs = zext nneg i32 %.16982.i.epil.init to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i8 %i.bg, ptr %i.bu, align 2, !tbaa !14
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader44
  %.169.pn.i.epil = phi i32 [ %.16982.i.epil.init, %.epil.preheader44 ], [ %.2.i.epil, %bb.t ]
  %.pn.i.epil = add nuw i32 %i.bc, %.169.pn.i.epil
  %.2.i.epil = and i32 %.pn.i.epil, %i.p          ; 3 uses
  %i.bv = icmp ugt i32 %.2.i.epil, %.165.i.lcssa
  br i1 %i.bv, label %bb.t, label %._crit_edge85.i, !llvm.loop !17

._crit_edge85.i:                                  ; preds = %._crit_edge85.i.loopexit.unr-lcssa, %bb.t, %.preheader77.i
  %.169.lcssa.i = phi i32 [ %.06888.i, %.preheader77.i ], [ %.2.i.1, %._crit_edge85.i.loopexit.unr-lcssa ], [ %.2.i.epil, %bb.t ] ; 2 uses
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %exitcond97.not.i = icmp eq i64 %indvars.iv.next94.i, %wide.trip.count.i
  br i1 %exitcond97.not.i, label %._crit_edge89.i, label %.preheader77.i, !llvm.loop !19

._crit_edge89.i:                                  ; preds = %._crit_edge85.i
  %.not.i = icmp eq i32 %.169.lcssa.i, 0
  br i1 %.not.i, label %.preheader.preheader.i, label %FSEv06_buildDTable.exit.thread

.preheader.preheader.i:                           ; preds = %._crit_edge89.i
  %wide.trip.count101.i = zext nneg i32 %i.o to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv98.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next99.i, %.preheader.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv98.i ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !14
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bz ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !10 ; 2 uses
  %i.cc = add i16 %i.cb, 1
  store i16 %i.cc, ptr %i.ca, align 2, !tbaa !10
  %i.cd = zext i16 %i.cb to i32                   ; 2 uses
  %i.ce = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cd, i1 true)
  %i.cf = xor i32 %i.ce, 31
  %i.cg = sub nsw i32 %i.l, %i.cf                 ; 2 uses
  %i.ch = trunc nsw i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !20
  %i.cj = and i32 %i.cg, 255
  %i.ck = shl i32 %i.cd, %i.cj
  %i.cl = sub i32 %i.ck, %i.o
  %i.cm = trunc i32 %i.cl to i16
  store i16 %i.cm, ptr %i.bw, align 4, !tbaa !21
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond102.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count101.i
  br i1 %exitcond102.not.i, label %bb.u, label %.preheader.i, !llvm.loop !22

FSEv06_buildDTable.exit.thread:                   ; preds = %._crit_edge89.i, %bb.d, %bb.e
  %.1.i.ph = phi i64 [ -44, %bb.e ], [ -46, %bb.d ], [ -1, %._crit_edge89.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.thread

bb.u:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.cn = call i64 @FSEv06_decompress_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %i.i, i64 noundef %i.j, ptr noundef nonnull %i.c)
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %FSEv06_buildDTable.exit.thread, %bb.a, %bb.u
  %.2 = phi i64 [ -72, %bb.a ], [ %i.cn, %bb.u ], [ %.1.i.ph, %FSEv06_buildDTable.exit.thread ], [ -72, %bb.c ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -119, -9223372036854775808) i64 @HUFv06_readDTableX2(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
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
  %i.aa = add nsw i32 %i.z, -1
  %i.ab = shl i32 %i.y, %i.aa
  %i.ac = add i32 %i.ab, %i.w                     ; 2 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
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
  %i.m = add nsw i64 %umax2, -1
  %i.n = lshr i64 %i.m, 1
  %i.o = add nuw i64 %i.n, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.i, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.p = add nsw i64 %i.b, -128
  %i.q = lshr i64 %i.p, 1
  %i.r = and i64 %i.b, 126
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %scevgep = getelementptr i8, ptr %i.s, i64 2
  %i.t = getelementptr i8, ptr %4, i64 %i.q
  %scevgep1 = getelementptr i8, ptr %i.t, i64 2
  %bound0 = icmp ult ptr %0, %scevgep1
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.i, 31
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.o, 12
  %n.vec = and i64 %i.o, -16                      ; 4 uses
  %i.u = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = shl i64 %index, 1                        ; 2 uses
  %6 = and i64 %index, 9223372036854775792
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %6 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.w, align 1, !tbaa !27, !alias.scope !37
  %wide.load4 = load <8 x i8>, ptr %i.x, align 1, !tbaa !27, !alias.scope !37
  %i.y = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.z = lshr <8 x i8> %wide.load4, splat (i8 4)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load5 = load <8 x i8>, ptr %i.w, align 1, !tbaa !27, !alias.scope !37
  %wide.load6 = load <8 x i8>, ptr %i.x, align 1, !tbaa !27, !alias.scope !37
  %i.ad = and <8 x i8> %wide.load5, splat (i8 15)
  %i.ae = and <8 x i8> %wide.load6, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.y, <8 x i8> %i.ad, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.aa, align 1, !tbaa !27, !alias.scope !40, !noalias !37
  %interleaved.vec7 = shufflevector <8 x i8> %i.z, <8 x i8> %i.ae, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec7, ptr %i.ac, align 1, !tbaa !27, !alias.scope !40, !noalias !37
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %i.o, -4                      ; 3 uses
  %i.ag = shl i64 %n.vec9, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ] ; 3 uses
  %i.ah = shl i64 %index10, 1
  %7 = and i64 %index10, 9223372036854775804
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %7
  %wide.load11 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !27, !alias.scope !37 ; 2 uses
  %i.aj = lshr <4 x i8> %wide.load11, splat (i8 4)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.al = and <4 x i8> %wide.load11, splat (i8 15)
  %interleaved.vec13 = shufflevector <4 x i8> %i.aj, <4 x i8> %i.al, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec13, ptr %i.ak, align 1, !tbaa !27, !alias.scope !40, !noalias !37
  %index.next14 = add nuw i64 %index10, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next14, %n.vec9
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !43

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n15 = icmp eq i64 %i.o, %n.vec9
  br i1 %cmp.n15, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.u, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.an = phi i64 [ %i.ax, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 4 uses
  %i.ao = lshr exact i64 %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ao ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !27
  %i.ar = lshr i8 %i.aq, 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !27
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !27
  %i.au = and i8 %i.at, 15
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !27
  %i.ax = add nuw nsw i64 %i.an, 2                ; 2 uses
  %i.ay = icmp samesign ugt i64 %i.i, %i.ax
  br i1 %i.ay, label %.lr.ph, label %.loopexit.thread, !llvm.loop !44

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  br label %.lr.ph104.preheader

bb.f:                                             ; preds = %bb.b
  %.not88 = icmp ugt i64 %5, %i.b
  br i1 %.not88, label %bb.g, label %.critedge95

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ba = tail call i64 @FSEv06_decompress(ptr noundef nonnull %0, i64 noundef 255, ptr noundef nonnull %i.az, i64 noundef %i.b) ; 3 uses
  %i.bb = icmp ult i64 %i.ba, -119
  br i1 %i.bb, label %.loopexit, label %.critedge95

.loopexit:                                        ; preds = %bb.g, %bb.d
  %.075 = phi i64 [ %i.h, %bb.d ], [ %i.ba, %bb.g ] ; 2 uses
  %.074 = phi i64 [ 0, %bb.d ], [ %i.b, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  %.not91101.not = icmp eq i64 %.075, 0
  br i1 %.not91101.not, label %.critedge95, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %.loopexit.thread, %.loopexit
  %.074119 = phi i64 [ %i.k, %.loopexit.thread ], [ %.074, %.loopexit ]
  %.075117 = phi i64 [ %i.i, %.loopexit.thread ], [ %.075, %.loopexit ] ; 3 uses
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %bb.h
  %i.bc = phi i64 [ %i.bq, %bb.h ], [ 0, %.lr.ph104.preheader ]
  %.073103 = phi i32 [ %i.bo, %bb.h ], [ 0, %.lr.ph104.preheader ]
  %.076102 = phi i32 [ %i.bp, %bb.h ], [ 0, %.lr.ph104.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !27  ; 2 uses
  %i.bf = icmp ugt i8 %i.be, 15
  br i1 %i.bf, label %.critedge95, label %bb.h

bb.h:                                             ; preds = %.lr.ph104
  %i.bg = zext nneg i8 %i.be to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !3
  %i.bk = load i8, ptr %i.bd, align 1, !tbaa !27
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = shl nuw i32 1, %i.bl
  %i.bn = ashr i32 %i.bm, 1
  %i.bo = add i32 %i.bn, %.073103                 ; 4 uses
  %i.bp = add i32 %.076102, 1                     ; 2 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %.not91 = icmp ugt i64 %.075117, %i.bq
  br i1 %.not91, label %.lr.ph104, label %.critedge, !llvm.loop !45

.critedge:                                        ; preds = %bb.h
  %.old = icmp eq i32 %i.bo, 0
  br i1 %.old, label %.critedge95, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.br = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bo, i1 true) ; 2 uses
  %i.bs = xor i32 %i.br, 31                       ; 2 uses
  %i.bt = icmp samesign ugt i32 %i.bs, 15
  br i1 %i.bt, label %.critedge95, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = sub nuw nsw i32 32, %i.br
  store i32 %i.bu, ptr %3, align 4, !tbaa !3
  %i.bv = shl nuw nsw i32 2, %i.bs
  %i.bw = sub i32 %i.bv, %i.bo                    ; 2 uses
  %i.bx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true) ; 2 uses
  %i.by = lshr exact i32 -2147483648, %i.bx
  %.not92 = icmp eq i32 %i.by, %i.bw
  br i1 %.not92, label %bb.k, label %.critedge95

bb.k:                                             ; preds = %bb.j
  %i.bz = sub nuw nsw i32 32, %i.bx               ; 2 uses
  %i.ca = trunc nuw nsw i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %.075117
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !27
  %i.cc = zext nneg i32 %i.bz to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3  ; 2 uses
  %i.ci = icmp ugt i32 %i.ch, 1
  %i.cj = and i32 %i.ch, 1
  %.not93 = icmp eq i32 %i.cj, 0
  %or.cond = and i1 %i.ci, %.not93
  br i1 %or.cond, label %bb.l, label %.critedge95

bb.l:                                             ; preds = %bb.k
  %i.ck = trunc nuw i64 %.075117 to i32
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %2, align 4, !tbaa !3
  %i.cm = add nuw nsw i64 %.074119, 1
  br label %.critedge95

.critedge95:                                      ; preds = %.lr.ph104, %.loopexit, %bb.j, %bb.i, %bb.k, %.critedge, %bb.g, %bb.f, %bb.e, %bb.a, %bb.l
  %.3 = phi i64 [ %i.ba, %bb.g ], [ -20, %bb.i ], [ %i.cm, %bb.l ], [ -20, %bb.j ], [ -20, %bb.k ], [ -72, %bb.a ], [ -72, %bb.f ], [ -72, %bb.e ], [ -20, %.critedge ], [ -20, %.loopexit ], [ -20, %.lr.ph104 ]
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
end_hunk_0
begin_hunk_1_@HUFv06_decodeStreamX2:bb.a
  %i.cz = getelementptr inbounds i8, ptr %i.cf, i64 %i.cy ; 2 uses
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !51
  %i.da = shl i32 %.024.i45, 3
  %i.db = sub i32 %i.ce, %i.da
  br label %BITv06_reloadDStream.exit50

BITv06_reloadDStream.exit50.thread:               ; preds = %bb.g, %bb.i, %.preheader55
  %.3.lcssa = phi ptr [ %.0.lcssa, %.preheader55 ], [ %.312, %bb.g ], [ %i.dp, %bb.i ] ; 2 uses
  %i.dc = icmp ult ptr %.3.lcssa, %2
  br i1 %i.dc, label %.lr.ph.preheader, label %._crit_edge

BITv06_reloadDStream.exit50:                      ; preds = %bb.f, %bb.h
  %.val30.i43.sink.in = phi ptr [ %i.cl, %bb.f ], [ %i.cz, %bb.h ]
  %.val7.i52 = phi i32 [ %i.cm, %bb.f ], [ %i.db, %bb.h ] ; 3 uses
  %.025.i44 = phi i1 [ true, %bb.f ], [ %i.cs, %bb.h ]
  store i32 %.val7.i52, ptr %i.a, align 8, !tbaa !53
  %.val30.i43.sink = load i64, ptr %.val30.i43.sink.in, align 1
  store i64 %.val30.i43.sink, ptr %1, align 8, !tbaa !52
  %i.dd = icmp ult ptr %.312, %2                  ; 2 uses
  %i.de = select i1 %.025.i44, i1 %i.dd, i1 false
  br i1 %i.de, label %bb.i, label %.preheader

.preheader:                                       ; preds = %BITv06_reloadDStream.exit50
  br i1 %i.dd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %BITv06_reloadDStream.exit50.thread, %.preheader
  %.456.ph = phi ptr [ %.312, %.preheader ], [ %.3.lcssa, %BITv06_reloadDStream.exit50.thread ]
  br label %.lr.ph

bb.i:                                             ; preds = %BITv06_reloadDStream.exit50
  %.val.i51 = load i64, ptr %1, align 8, !tbaa !52
  %i.df = and i32 %.val7.i52, 63
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl i64 %.val.i51, %i.dg
  %i.di = lshr i64 %i.dh, %i.g
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.di ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !54
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !56
  %i.dn = zext i8 %i.dm to i32
  %i.do = add i32 %.val7.i52, %i.dn
  store i32 %i.do, ptr %i.a, align 8, !tbaa !53
  %i.dp = getelementptr inbounds nuw i8, ptr %.312, i64 1 ; 2 uses
  store i8 %i.dk, ptr %.312, align 1, !tbaa !27
  %.pre = load i32, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.dq = icmp ugt i32 %.pre, 64
  br i1 %i.dq, label %BITv06_reloadDStream.exit50.thread, label %.lr.ph13, !llvm.loop !58

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.456 = phi ptr [ %i.eb, %.lr.ph ], [ %.456.ph, %.lr.ph.preheader ] ; 2 uses
  %.val.i53 = load i64, ptr %1, align 8, !tbaa !52
  %.val7.i54 = load i32, ptr %i.a, align 8, !tbaa !53 ; 2 uses
  %i.dr = and i32 %.val7.i54, 63
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = shl i64 %.val.i53, %i.ds
  %i.du = lshr i64 %i.dt, %i.g
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.du ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !54
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !56
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add i32 %.val7.i54, %i.dz
  store i32 %i.ea, ptr %i.a, align 8, !tbaa !53
  %i.eb = getelementptr inbounds nuw i8, ptr %.456, i64 1 ; 2 uses
  store i8 %i.dw, ptr %.456, align 1, !tbaa !27
  %i.ec = icmp ult ptr %i.eb, %2
  br i1 %i.ec, label %.lr.ph, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph, %BITv06_reloadDStream.exit50.thread, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv06_decompress1X2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca [17 x i32], align 16              ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca [4097 x i16], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8194) %i.e, i8 0, i64 8194, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 0, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 4 uses
  %i.g = call fastcc i64 @HUFv06_readStats(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.c, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.h = icmp ult i64 %i.g, -119
  br i1 %i.h, label %bb.b, label %HUFv06_readDTableX2.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.c, align 4, !tbaa !3    ; 7 uses
  %i.j = icmp ugt i32 %i.i, 12
  br i1 %i.j, label %HUFv06_readDTableX2.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = trunc nuw nsw i32 %i.i to i16
  store i16 %i.k, ptr %i.e, align 16, !tbaa !10
  %.not37.i = icmp eq i32 %i.i, 0
  br i1 %.not37.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.l = zext nneg i32 %i.i to i64                ; 2 uses
  %xtraiter = and i64 %i.l, 1
  %i.m = icmp eq i32 %i.i, 1
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.l, 14
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader.i.loopexit.unr-lcssa ]
  %.03438.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ac, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod45 = trunc i32 %i.i to i1
  call void @llvm.assume(i1 %lcmp.mod45)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  store i32 %.03438.i.epil.init, ptr %i.n, align 4, !tbaa !3
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %bb.c
  %i.o = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %HUFv06_readDTableX2.exit.thread20, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %.preheader.i
  %i.p = trunc nuw nsw i32 %i.i to i8
  %i.q = add nuw nsw i8 %i.p, 1
  %wide.trip.count52.i = zext i32 %i.o to i64
  br label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %.03438.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = trunc i64 %indvars.iv.i to i32
  %i.u = add nsw i32 %i.t, -1
  %i.v = shl i32 %i.s, %i.u
  %i.w = add i32 %i.v, %.03438.i                  ; 2 uses
  store i32 %.03438.i, ptr %i.r, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = trunc i64 %indvars.iv.next.i to i32
  %i.aa = add i32 %i.z, -1
  %i.ab = shl i32 %i.y, %i.aa
  %i.ac = add i32 %i.ab, %i.w                     ; 2 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !29

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph43.i
  %indvars.iv49.i = phi i64 [ 0, %.lr.ph43.i ], [ %indvars.iv.next50.i, %._crit_edge.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv49.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27  ; 3 uses
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = ashr i32 %i.ag, 1
  %i.ai = trunc i64 %indvars.iv49.i to i8         ; 3 uses
  %i.aj = sub i8 %i.q, %i.ae                      ; 3 uses
  %i.ak = zext i8 %i.ae to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3  ; 3 uses
  %i.an = add i32 %i.ah, %i.am                    ; 3 uses
  %i.ao = icmp ult i32 %i.am, %i.an
  br i1 %i.ao, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.d
  %i.ap = zext i32 %i.am to i64                   ; 6 uses
  %wide.trip.count.i = zext i32 %i.an to i64      ; 2 uses
  %i.aq = sub nsw i64 %wide.trip.count.i, %i.ap   ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check, label %.lr.ph41.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp ult i64 %i.aq, 16
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aq, 12
  %n.vec = and i64 %i.aq, -16                     ; 4 uses
  %i.ar = add nsw i64 %n.vec, %i.ap
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splatinsert31 = insertelement <8 x i8> poison, i8 %i.aj, i64 0
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert31, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = add i64 %index, %i.ap                   ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.as
  %i.au = getelementptr [2 x i8], ptr %i.f, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 16
  store <16 x i8> %interleaved.vec, ptr %i.at, align 2, !tbaa !27
  store <16 x i8> %interleaved.vec, ptr %i.av, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %i.aq, -4                    ; 3 uses
  %i.ax = add nsw i64 %n.vec35, %i.ap
  %broadcast.splatinsert36 = insertelement <4 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splatinsert38 = insertelement <4 x i8> poison, i8 %i.aj, i64 0
  %invariant.gep = getelementptr [2 x i8], ptr %i.f, i64 %i.ap
  %interleaved.vec41 = shufflevector <4 x i8> %broadcast.splatinsert36, <4 x i8> %broadcast.splatinsert38, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index40
  store <8 x i8> %interleaved.vec41, ptr %gep, align 2, !tbaa !27
  %index.next42 = add nuw i64 %index40, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next42, %n.vec35
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !61

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.aq, %n.vec35
  br i1 %cmp.n43, label %._crit_edge.i, label %.lr.ph41.i.preheader

.lr.ph41.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv45.i.ph = phi i64 [ %i.ap, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader, %.lr.ph41.i
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %.lr.ph41.i ], [ %indvars.iv45.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv45.i ; 2 uses
  store i8 %i.ai, ptr %i.az, align 2, !tbaa !27
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !27
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next46.i, %wide.trip.count.i
  br i1 %exitcond48.not.i, label %._crit_edge.i, label %.lr.ph41.i, !llvm.loop !62

._crit_edge.i:                                    ; preds = %.lr.ph41.i, %middle.block, %vec.epilog.middle.block, %bb.d
  store i32 %i.an, ptr %i.al, align 4, !tbaa !3
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count52.i
  br i1 %exitcond53.not.i, label %HUFv06_readDTableX2.exit.thread20, label %bb.d, !llvm.loop !36

HUFv06_readDTableX2.exit.thread:                  ; preds = %bb.b, %bb.a
  %.0.i.ph = phi i64 [ %i.g, %bb.a ], [ -44, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.f

HUFv06_readDTableX2.exit.thread20:                ; preds = %._crit_edge.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not17 = icmp ult i64 %i.g, %3
  br i1 %.not17, label %bb.e, label %bb.f

bb.e:                                             ; preds = %HUFv06_readDTableX2.exit.thread20
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.bb = sub nuw i64 %3, %i.g
  %i.bc = call i64 @HUFv06_decompress1X2_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %i.ba, i64 noundef %i.bb, ptr noundef nonnull %i.e)
  br label %bb.f

bb.f:                                             ; preds = %HUFv06_readDTableX2.exit.thread, %HUFv06_readDTableX2.exit.thread20, %bb.e
  %.0 = phi i64 [ %i.bc, %bb.e ], [ %.0.i.ph, %HUFv06_readDTableX2.exit.thread ], [ -72, %HUFv06_readDTableX2.exit.thread20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv06_decompress4X2_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #11 {
bb.a:
  %5 = alloca %struct.BITv06_DStream_t, align 8   ; 18 uses
  %6 = alloca %struct.BITv06_DStream_t, align 8   ; 18 uses
  %7 = alloca %struct.BITv06_DStream_t, align 8   ; 18 uses
  %8 = alloca %struct.BITv06_DStream_t, align 8   ; 12 uses
  %i.a = icmp ult i64 %3, 10
  br i1 %i.a, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 20 uses
  %i.d = load i16, ptr %4, align 2, !tbaa !10
  %i.e = zext i16 %i.d to i32                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %.val149 = load i16, ptr %2, align 1            ; 5 uses
  %i.f = zext i16 %.val149 to i64                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.val148 = load i16, ptr %i.g, align 1          ; 5 uses
  %i.h = zext i16 %.val148 to i64                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val = load i16, ptr %i.i, align 1             ; 5 uses
  %i.j = zext i16 %.val to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 %i.f     ; 12 uses
  %i.m = getelementptr i8, ptr %i.l, i64 %i.h     ; 12 uses
  %i.n = getelementptr i8, ptr %i.m, i64 %i.j     ; 3 uses
  %i.o = add i64 %1, 3
  %i.p = lshr i64 %i.o, 2                         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 5 uses
  %i.t = add nuw nsw i64 %i.f, 6
  %i.u = add nuw nsw i64 %i.t, %i.h
  %i.v = add nuw nsw i64 %i.u, %i.j               ; 2 uses
  %i.w = sub i64 %3, %i.v
  %i.x = icmp ugt i64 %i.v, %3
  br i1 %i.x, label %BITv06_initDStream.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i16 %.val149, 0
  br i1 %i.y, label %BITv06_initDStream.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp ugt i16 %.val149, 7
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.aa, align 8, !tbaa !46
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !51
  %.val.i = load i64, ptr %i.ab, align 1          ; 2 uses
  store i64 %.val.i, ptr %5, align 8, !tbaa !52
  %i.ad = lshr i64 %.val.i, 56                    ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %BITv06_initDStream.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.af = trunc nuw nsw i64 %i.ad to i32
  %i.ag = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.af, i1 true)
  %i.ah = xor i32 %i.ag, 31
  %i.ai = sub nuw nsw i32 8, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !53
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.k, ptr %i.ak, align 8, !tbaa !51
  %i.al = load i8, ptr %i.k, align 1, !tbaa !27
  %i.am = zext i8 %i.al to i64                    ; 7 uses
  store i64 %i.am, ptr %5, align 8, !tbaa !52
  switch i16 %.val149, label %bb.m [
    i16 7, label %bb.g
    i16 6, label %bb.h
    i16 5, label %bb.i
    i16 4, label %bb.j
    i16 3, label %bb.k
    i16 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !27
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 48
  %i.ar = or disjoint i64 %i.aq, %i.am
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = phi i64 [ %i.ar, %bb.g ], [ %i.am, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.au = load i8, ptr %i.at, align 1, !tbaa !27
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 40
  %i.ax = add nuw nsw i64 %i.aw, %i.as
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ay = phi i64 [ %i.ax, %bb.h ], [ %i.am, %bb.f ]
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !27
  %i.bb = zext i8 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 32
end_hunk_1
begin_hunk_2_@HUFv06_decompress4X2_usingDTable:bb.a

bb.bj:                                            ; preds = %bb.a, %BITv06_initDStream.exit.thread
  %.1137 = phi i64 [ %.0136, %BITv06_initDStream.exit.thread ], [ -20, %bb.a ]
  ret i64 %.1137
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 4) i32 @BITv06_reloadDStream(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53   ; 6 uses
  %i.c = icmp ugt i32 %i.b, 64
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.not = icmp ult ptr %i.e, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i32 %i.b, 3
  %i.j = zext nneg i32 %i.i to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 %i.k ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !51
  %i.m = and i32 %i.b, 7
  store i32 %i.m, ptr %i.a, align 8, !tbaa !53
  %.val30 = load i64, ptr %i.l, align 1
  store i64 %.val30, ptr %0, align 8, !tbaa !52
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.n = icmp eq ptr %i.e, %i.g
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not29 = icmp eq i32 %i.b, 64
  %. = select i1 %.not29, i32 2, i32 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.o = lshr i32 %i.b, 3                         ; 2 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.e, i64 %i.q
  %i.s = icmp ult ptr %i.r, %i.g                  ; 2 uses
  %i.t = ptrtoint ptr %i.e to i64
  %i.u = ptrtoint ptr %i.g to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  %.024 = select i1 %i.s, i32 %i.w, i32 %i.o      ; 2 uses
  %.0 = zext i1 %i.s to i32
  %i.x = zext i32 %.024 to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.e, i64 %i.y ; 2 uses
  store ptr %i.z, ptr %i.d, align 8, !tbaa !51
  %i.aa = shl i32 %.024, 3
  %i.ab = sub i32 %i.b, %i.aa
  store i32 %i.ab, ptr %i.a, align 8, !tbaa !53
  %.val = load i64, ptr %i.z, align 1
  store i64 %.val, ptr %0, align 8, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.f, %bb.c
  %.025 = phi i32 [ %.0, %bb.f ], [ 0, %bb.c ], [ %., %bb.e ], [ 3, %bb.a ]
  ret i32 %.025
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv06_decompress4X2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #11 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca [17 x i32], align 16              ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca [4097 x i16], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8194) %i.e, i8 0, i64 8194, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 0, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 4 uses
  %i.g = call fastcc i64 @HUFv06_readStats(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.c, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.h = icmp ult i64 %i.g, -119
  br i1 %i.h, label %bb.b, label %HUFv06_readDTableX2.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.c, align 4, !tbaa !3    ; 7 uses
  %i.j = icmp ugt i32 %i.i, 12
  br i1 %i.j, label %HUFv06_readDTableX2.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = trunc nuw nsw i32 %i.i to i16
  store i16 %i.k, ptr %i.e, align 16, !tbaa !10
  %.not37.i = icmp eq i32 %i.i, 0
  br i1 %.not37.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.l = zext nneg i32 %i.i to i64                ; 2 uses
  %xtraiter = and i64 %i.l, 1
  %i.m = icmp eq i32 %i.i, 1
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.l, 14
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader.i.loopexit.unr-lcssa ]
  %.03438.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ac, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod45 = trunc i32 %i.i to i1
  call void @llvm.assume(i1 %lcmp.mod45)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  store i32 %.03438.i.epil.init, ptr %i.n, align 4, !tbaa !3
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %bb.c
  %i.o = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %HUFv06_readDTableX2.exit.thread20, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %.preheader.i
  %i.p = trunc nuw nsw i32 %i.i to i8
  %i.q = add nuw nsw i8 %i.p, 1
  %wide.trip.count52.i = zext i32 %i.o to i64
  br label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %.03438.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = trunc i64 %indvars.iv.i to i32
  %i.u = add nsw i32 %i.t, -1
  %i.v = shl i32 %i.s, %i.u
  %i.w = add i32 %i.v, %.03438.i                  ; 2 uses
  store i32 %.03438.i, ptr %i.r, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = trunc i64 %indvars.iv.next.i to i32
  %i.aa = add i32 %i.z, -1
  %i.ab = shl i32 %i.y, %i.aa
  %i.ac = add i32 %i.ab, %i.w                     ; 2 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !29

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph43.i
  %indvars.iv49.i = phi i64 [ 0, %.lr.ph43.i ], [ %indvars.iv.next50.i, %._crit_edge.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv49.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27  ; 3 uses
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = ashr i32 %i.ag, 1
  %i.ai = trunc i64 %indvars.iv49.i to i8         ; 3 uses
  %i.aj = sub i8 %i.q, %i.ae                      ; 3 uses
  %i.ak = zext i8 %i.ae to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3  ; 3 uses
  %i.an = add i32 %i.ah, %i.am                    ; 3 uses
  %i.ao = icmp ult i32 %i.am, %i.an
  br i1 %i.ao, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.d
  %i.ap = zext i32 %i.am to i64                   ; 6 uses
  %wide.trip.count.i = zext i32 %i.an to i64      ; 2 uses
  %i.aq = sub nsw i64 %wide.trip.count.i, %i.ap   ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check, label %.lr.ph41.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp ult i64 %i.aq, 16
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aq, 12
  %n.vec = and i64 %i.aq, -16                     ; 4 uses
  %i.ar = add nsw i64 %n.vec, %i.ap
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splatinsert31 = insertelement <8 x i8> poison, i8 %i.aj, i64 0
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert31, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = add i64 %index, %i.ap                   ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.as
  %i.au = getelementptr [2 x i8], ptr %i.f, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 16
  store <16 x i8> %interleaved.vec, ptr %i.at, align 2, !tbaa !27
  store <16 x i8> %interleaved.vec, ptr %i.av, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %i.aq, -4                    ; 3 uses
  %i.ax = add nsw i64 %n.vec35, %i.ap
  %broadcast.splatinsert36 = insertelement <4 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splatinsert38 = insertelement <4 x i8> poison, i8 %i.aj, i64 0
  %invariant.gep = getelementptr [2 x i8], ptr %i.f, i64 %i.ap
  %interleaved.vec41 = shufflevector <4 x i8> %broadcast.splatinsert36, <4 x i8> %broadcast.splatinsert38, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index40
  store <8 x i8> %interleaved.vec41, ptr %gep, align 2, !tbaa !27
  %index.next42 = add nuw i64 %index40, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next42, %n.vec35
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.aq, %n.vec35
  br i1 %cmp.n43, label %._crit_edge.i, label %.lr.ph41.i.preheader

.lr.ph41.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv45.i.ph = phi i64 [ %i.ap, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader, %.lr.ph41.i
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %.lr.ph41.i ], [ %indvars.iv45.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv45.i ; 2 uses
  store i8 %i.ai, ptr %i.az, align 2, !tbaa !27
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !27
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next46.i, %wide.trip.count.i
  br i1 %exitcond48.not.i, label %._crit_edge.i, label %.lr.ph41.i, !llvm.loop !67

._crit_edge.i:                                    ; preds = %.lr.ph41.i, %middle.block, %vec.epilog.middle.block, %bb.d
  store i32 %i.an, ptr %i.al, align 4, !tbaa !3
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count52.i
  br i1 %exitcond53.not.i, label %HUFv06_readDTableX2.exit.thread20, label %bb.d, !llvm.loop !36

HUFv06_readDTableX2.exit.thread:                  ; preds = %bb.b, %bb.a
  %.0.i.ph = phi i64 [ %i.g, %bb.a ], [ -44, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.f

HUFv06_readDTableX2.exit.thread20:                ; preds = %._crit_edge.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not17 = icmp ult i64 %i.g, %3
  br i1 %.not17, label %bb.e, label %bb.f

bb.e:                                             ; preds = %HUFv06_readDTableX2.exit.thread20
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.bb = sub nuw i64 %3, %i.g
  %i.bc = call i64 @HUFv06_decompress4X2_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %i.ba, i64 noundef %i.bb, ptr noundef nonnull %i.e)
  br label %bb.f

bb.f:                                             ; preds = %HUFv06_readDTableX2.exit.thread, %HUFv06_readDTableX2.exit.thread20, %bb.e
  %.0 = phi i64 [ %i.bc, %bb.e ], [ %.0.i.ph, %HUFv06_readDTableX2.exit.thread ], [ -72, %HUFv06_readDTableX2.exit.thread20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -119, -9223372036854775808) i64 @HUFv06_readDTableX4(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [17 x i32], align 16              ; 5 uses
  %i.b = alloca [17 x i32], align 16              ; 4 uses
  %i.c = alloca [256 x i8], align 16              ; 6 uses
  %3 = alloca [256 x %struct.sortedSymbol_t], align 16 ; 7 uses
  %i.d = alloca [17 x i32], align 16              ; 12 uses
  %i.e = alloca [18 x i32], align 16              ; 5 uses
  %i.f = alloca [16 x [17 x i32]], align 16       ; 14 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.d, i8 0, i64 68, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  %i.j = load i32, ptr %0, align 4, !tbaa !3      ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.l = icmp ugt i32 %i.j, 16
  br i1 %i.l, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call fastcc i64 @HUFv06_readStats(ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.g, ptr noundef %1, i64 noundef %2) ; 3 uses
  %i.n = icmp ult i64 %i.m, -119
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.g, align 4, !tbaa !3    ; 4 uses
  %i.p = icmp ugt i32 %i.o, %i.j
  br i1 %i.p, label %bb.g, label %.preheader76.preheader

.preheader76.preheader:                           ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.o, 1                  ; 6 uses
  br label %.preheader76

.preheader76:                                     ; preds = %.preheader76.preheader, %.preheader76
  %indvars.iv122 = phi i32 [ %i.j, %.preheader76.preheader ], [ %indvars.iv.next123, %.preheader76 ] ; 2 uses
  %indvars.iv117 = phi i32 [ 1, %.preheader76.preheader ], [ %indvars.iv.next118, %.preheader76 ] ; 2 uses
  %indvars.iv98 = phi i32 [ %i.q, %.preheader76.preheader ], [ %indvars.iv.next99, %.preheader76 ] ; 6 uses
  %.067 = phi i32 [ %i.o, %.preheader76.preheader ], [ %i.v, %.preheader76 ] ; 5 uses
  %i.r = zext i32 %.067 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = icmp eq i32 %i.t, 0
  %i.v = add i32 %.067, -1
  %indvars.iv.next99 = add i32 %indvars.iv98, -1
  %indvars.iv.next118 = add i32 %indvars.iv117, 1
  %indvars.iv.next123 = add i32 %indvars.iv122, -1
  br i1 %i.u, label %.preheader76, label %.preheader, !llvm.loop !68

.preheader:                                       ; preds = %.preheader76
  %i.w = add i32 %.067, -1
  %i.x = icmp ult i32 %i.w, -2                    ; 2 uses
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %indvars.iv98 to i64
  %i.y = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.y, 3                     ; 3 uses
  %i.z = add i32 %indvars.iv98, -2
  %i.aa = icmp ult i32 %i.z, 3
  br i1 %i.aa, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.y, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.07177 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = add i32 %i.ac, %.07177                  ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %.07177, ptr %i.ae, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = add i32 %i.ag, %i.ad                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  store i32 %i.ad, ptr %i.ai, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = add i32 %i.ak, %i.ah                    ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  store i32 %i.ah, ptr %i.am, align 4, !tbaa !3
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.2
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = add i32 %i.ao, %i.al                    ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  store i32 %i.al, ptr %i.aq, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !69

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.07177.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod176 = icmp ne i64 %xtraiter, 0
end_hunk_2
