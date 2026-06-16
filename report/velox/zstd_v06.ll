inline.NumInlined: 337
inline.NumDeleted: 52
begin_hunk_0_@FSEv06_decompress:bb.a
.epil.preheader:                                  ; preds = %.preheader77.lr.ph.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader77.lr.ph.i.unr-lcssa ] ; 3 uses
  %.06480.i.epil.init = phi i32 [ %i.p, %.lr.ph.i ], [ %.165.i.1, %.preheader77.lr.ph.i.unr-lcssa ] ; 3 uses
  %.sroa.4.079.i.epil.init = phi i16 [ 1, %.lr.ph.i ], [ %.sroa.4.2.i.1, %.preheader77.lr.ph.i.unr-lcssa ] ; 2 uses
  %lcmp.mod43 = trunc i32 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !10 ; 3 uses
  %i.aq = icmp eq i16 %i.ap, -1
  br i1 %i.aq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.epil.preheader
  %i.ar = sext i16 %i.ap to i32
  %.not76.i.epil = icmp sgt i32 %i.s, %i.ar
  %spec.select.i.epil = select i1 %.not76.i.epil, i16 %.sroa.4.079.i.epil.init, i16 0
  br label %.preheader77.lr.ph.i.epilog-lcssa

bb.n:                                             ; preds = %.epil.preheader
  %i.as = trunc i64 %indvars.iv.i.epil.init to i8
  %i.at = add i32 %.06480.i.epil.init, -1
  %i.au = zext i32 %.06480.i.epil.init to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 %i.as, ptr %i.aw, align 2, !tbaa !14
  br label %.preheader77.lr.ph.i.epilog-lcssa

.preheader77.lr.ph.i.epilog-lcssa:                ; preds = %bb.n, %bb.m
  %.sink.i.epil = phi i16 [ 1, %bb.n ], [ %i.ap, %bb.m ]
  %.sroa.4.2.i.epil = phi i16 [ %.sroa.4.079.i.epil.init, %bb.n ], [ %spec.select.i.epil, %bb.m ]
  %.165.i.epil = phi i32 [ %i.at, %bb.n ], [ %.06480.i.epil.init, %bb.m ]
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.epil.init
  store i16 %.sink.i.epil, ptr %i.ax, align 2, !tbaa !10
  br label %.preheader77.lr.ph.i

.preheader77.lr.ph.i:                             ; preds = %.preheader77.lr.ph.i.unr-lcssa, %.preheader77.lr.ph.i.epilog-lcssa
  %.sroa.4.2.i.lcssa = phi i16 [ %.sroa.4.2.i.1, %.preheader77.lr.ph.i.unr-lcssa ], [ %.sroa.4.2.i.epil, %.preheader77.lr.ph.i.epilog-lcssa ]
  %.165.i.lcssa = phi i32 [ %.165.i.1, %.preheader77.lr.ph.i.unr-lcssa ], [ %.165.i.epil, %.preheader77.lr.ph.i.epilog-lcssa ] ; 3 uses
  %i.ay = trunc nuw nsw i32 %i.l to i16
  store i16 %i.ay, ptr %i.c, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %.sroa.4.2.i.lcssa, ptr %.sroa.4.0..sroa_idx.i, align 2
  %i.az = lshr i32 %i.o, 3
  %i.ba = lshr i32 %i.o, 1
  %i.bb = add nuw nsw i32 %i.az, 3
  %i.bc = add nuw nsw i32 %i.bb, %i.ba            ; 3 uses
  br label %.preheader77.i

.preheader77.i:                                   ; preds = %._crit_edge85.i, %.preheader77.lr.ph.i
  %indvars.iv93.i = phi i64 [ 0, %.preheader77.lr.ph.i ], [ %indvars.iv.next94.i, %._crit_edge85.i ] ; 3 uses
  %.06888.i = phi i32 [ 0, %.preheader77.lr.ph.i ], [ %.169.lcssa.i, %._crit_edge85.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv93.i
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !10 ; 5 uses
  %i.bf = icmp sgt i16 %i.be, 0
  br i1 %i.bf, label %.lr.ph84.i, label %._crit_edge85.i

.lr.ph84.i:                                       ; preds = %.preheader77.i
  %i.bg = trunc i64 %indvars.iv93.i to i8         ; 3 uses
  %i.bh = icmp eq i16 %i.be, 1
  br i1 %i.bh, label %.epil.preheader44, label %.lr.ph84.i.new

.lr.ph84.i.new:                                   ; preds = %.lr.ph84.i
  %i.bi = and i16 %i.be, 32766
  %unroll_iter49 = zext nneg i16 %i.bi to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph84.i.new
  %.16982.i = phi i32 [ %.06888.i, %.lr.ph84.i.new ], [ %.2.i.1, %bb.s ] ; 2 uses
  %niter50 = phi i32 [ 0, %.lr.ph84.i.new ], [ %niter50.next.1, %bb.s ]
  %i.bj = zext nneg i32 %.16982.i to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i8 %i.bg, ptr %i.bl, align 2, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.169.pn.i = phi i32 [ %.16982.i, %bb.o ], [ %.2.i, %bb.p ]
  %.pn.i = add nuw i32 %i.bc, %.169.pn.i
  %.2.i = and i32 %.pn.i, %i.p                    ; 4 uses
  %i.bm = icmp ugt i32 %.2.i, %.165.i.lcssa
  br i1 %i.bm, label %bb.p, label %bb.q, !llvm.loop !17

bb.q:                                             ; preds = %bb.p
  %i.bn = zext nneg i32 %.2.i to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  store i8 %i.bg, ptr %i.bp, align 2, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.169.pn.i.1 = phi i32 [ %.2.i, %bb.q ], [ %.2.i.1, %bb.r ]
  %.pn.i.1 = add nuw i32 %i.bc, %.169.pn.i.1
  %.2.i.1 = and i32 %.pn.i.1, %i.p                ; 5 uses
  %i.bq = icmp ugt i32 %.2.i.1, %.165.i.lcssa
  br i1 %i.bq, label %bb.r, label %bb.s, !llvm.loop !17

bb.s:                                             ; preds = %bb.r
  %niter50.next.1 = add i32 %niter50, 2           ; 2 uses
  %niter50.ncmp.1 = icmp eq i32 %niter50.next.1, %unroll_iter49
  br i1 %niter50.ncmp.1, label %._crit_edge85.i.loopexit.unr-lcssa, label %bb.o, !llvm.loop !18

._crit_edge85.i.loopexit.unr-lcssa:               ; preds = %bb.s
  %i.br = and i16 %i.be, 1
  %lcmp.mod46.not = icmp eq i16 %i.br, 0
  br i1 %lcmp.mod46.not, label %._crit_edge85.i, label %.epil.preheader44

.epil.preheader44:                                ; preds = %._crit_edge85.i.loopexit.unr-lcssa, %.lr.ph84.i
  %.16982.i.epil.init = phi i32 [ %.06888.i, %.lr.ph84.i ], [ %.2.i.1, %._crit_edge85.i.loopexit.unr-lcssa ] ; 2 uses
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
  %wide.trip.count102.i = zext nneg i32 %i.o to i64
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
  %exitcond103.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count102.i
  br i1 %exitcond103.not.i, label %bb.u, label %.preheader.i, !llvm.loop !22

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
  %i.h = load i32, ptr %i.c, align 4, !tbaa !3    ; 7 uses
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
  %3 = zext i32 %i.h to i64                       ; 2 uses
  %xtraiter = and i64 %3, 1
  %i.m = icmp eq i32 %i.h, 1
  br i1 %i.m, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, 4294967294
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
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
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
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
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
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
  %i.b = zext i8 %i.a to i64                      ; 6 uses
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
  %i.i = add nsw i64 %i.b, -127                   ; 4 uses
  %i.j = add nsw i64 %i.b, -126
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %.not90 = icmp ult i64 %i.k, %5
  br i1 %.not90, label %iter.check, label %.critedge95

iter.check:                                       ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 4 uses
  %i.m = trunc nuw nsw i64 %i.i to i32            ; 3 uses
  %umax2 = tail call i32 @llvm.umax.i32(i32 %i.m, i32 2)
  %i.n = add nsw i32 %umax2, -1
  %i.o = lshr i32 %i.n, 1
  %narrow = add nuw i32 %i.o, 1
  %i.p = zext i32 %narrow to i64                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.i, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %umax = tail call i32 @llvm.umax.i32(i32 %i.m, i32 2)
  %i.q = add nsw i32 %umax, -1
  %i.r = lshr i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  %scevgep = getelementptr i8, ptr %i.u, i64 2
  %i.v = getelementptr i8, ptr %4, i64 %i.s
  %scevgep1 = getelementptr i8, ptr %i.v, i64 2
  %bound0 = icmp ult ptr %0, %scevgep1
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.i, 31
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.p, 12
  %n.vec = and i64 %i.p, 4294967280               ; 4 uses
  %i.w = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = shl i64 %index, 1                        ; 2 uses
  %i.y = and i64 %index, 9223372036854775792
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.z, align 1, !tbaa !27, !alias.scope !37
  %wide.load4 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !27, !alias.scope !37
  %i.ab = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.ac = lshr <8 x i8> %wide.load4, splat (i8 4)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load5 = load <8 x i8>, ptr %i.z, align 1, !tbaa !27, !alias.scope !37
  %wide.load6 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !27, !alias.scope !37
  %i.ag = and <8 x i8> %wide.load5, splat (i8 15)
  %i.ah = and <8 x i8> %wide.load6, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.ab, <8 x i8> %i.ag, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.ad, align 1, !tbaa !27, !alias.scope !40, !noalias !37
  %interleaved.vec7 = shufflevector <8 x i8> %i.ac, <8 x i8> %i.ah, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec7, ptr %i.af, align 1, !tbaa !27, !alias.scope !40, !noalias !37
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !42
end_hunk_0
