inline.NumInlined: 62
inline.NumDeleted: 31
begin_hunk_0_@do_end_block_check:bb.a
  %i.v = load <2 x i32>, ptr %0, align 4, !tbaa !3
  %i.w = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = shufflevector <4 x i32> %i.m, <4 x i32> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.y = shufflevector <8 x i32> %i.w, <8 x i32> %i.x, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.z = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %i.aa = shufflevector <8 x i32> %i.z, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ab = mul <8 x i32> %i.aa, %i.u               ; 2 uses
  %i.ac = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %i.ad = shufflevector <8 x i32> %i.ac, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ae = mul <8 x i32> %i.y, %i.ad               ; 2 uses
  %i.af = icmp ugt <8 x i32> %i.ae, %i.ab
  %i.ag = shufflevector <8 x i1> %i.af, <8 x i1> poison, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ah = shufflevector <8 x i32> %i.ae, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ai = shufflevector <8 x i32> %i.ab, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aj = sub nuw <8 x i32> %i.ah, %i.ai
  %i.ak = sub nuw <8 x i32> %i.ai, %i.ah
  %i.al = select <8 x i1> %i.ag, <8 x i32> %i.aj, <8 x i32> %i.ak
  %i.am = extractelement <4 x i32> %i.p, i64 2
  %i.an = mul i32 %i.i, %i.am                     ; 3 uses
  %i.ao = extractelement <4 x i32> %i.q, i64 2
  %i.ap = mul i32 %i.ao, %i.b                     ; 3 uses
  %i.aq = icmp ugt i32 %i.ap, %i.an
  %i.ar = sub nuw i32 %i.ap, %i.an
  %i.as = sub nuw i32 %i.an, %i.ap
  %i.at = select i1 %i.aq, i32 %i.ar, i32 %i.as
  %i.au = extractelement <4 x i32> %i.p, i64 3
  %i.av = mul i32 %i.i, %i.au                     ; 3 uses
  %i.aw = extractelement <4 x i32> %i.q, i64 3
  %i.ax = mul i32 %i.aw, %i.b                     ; 3 uses
  %i.ay = icmp ugt i32 %i.ax, %i.av
  %i.az = sub nuw i32 %i.ax, %i.av
  %i.ba = sub nuw i32 %i.av, %i.ax
  %i.bb = select i1 %i.ay, i32 %i.az, i32 %i.ba
  %i.bc = load i32, ptr %i.h, align 4, !tbaa !56  ; 2 uses
  %i.bd = add i32 %i.bc, %i.b                     ; 3 uses
  %i.be = mul i32 %i.bc, 200
  %i.bf = lshr i32 %i.be, 9
  %i.bg = mul i32 %i.bf, %i.b                     ; 3 uses
  %i.bh = icmp ult i32 %1, 10000
  %i.bi = icmp ult i32 %i.bd, 8192
  %or.cond = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.bj = zext i32 %i.bg to i64
  %i.bk = sub nuw nsw i32 8192, %i.bd
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = mul nuw nsw i64 %i.bj, %i.bl
  %i.bn = lshr i64 %i.bm, 13
  %i.bo = trunc nuw i64 %i.bn to i32
  %i.bp = add i32 %i.bg, %i.bo
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %.035 = phi i32 [ %i.bp, %bb.b ], [ %i.bg, %.preheader ]
  %i.bq = lshr i32 %1, 12
  %i.br = mul i32 %i.b, %i.bq
  %i.bs = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.al)
  %op.rdx = add i32 %i.bs, %i.at
  %op.rdx80 = add i32 %i.bb, %i.br
  %op.rdx81 = add i32 %op.rdx, %op.rdx80
  %.not42.not = icmp ult i32 %op.rdx81, %.035
  br i1 %.not42.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi = phi i32 [ %.pre77, %._crit_edge ], [ %i.bd, %bb.c ]
  %i.bt = phi <4 x i32> [ %i.d, %._crit_edge ], [ %i.l, %bb.c ]
  %i.bu = phi <4 x i32> [ %i.c, %._crit_edge ], [ %i.m, %bb.c ]
  %i.bv = phi <4 x i32> [ %i.f, %._crit_edge ], [ %i.p, %bb.c ]
  %i.bw = phi <4 x i32> [ %i.e, %._crit_edge ], [ %i.q, %bb.c ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.by = load <2 x i32>, ptr %0, align 4, !tbaa !3
  %i.bz = load <2 x i32>, ptr %i.bx, align 4, !tbaa !3
  %i.ca = add <2 x i32> %i.bz, %i.by
  store <2 x i32> %i.ca, ptr %i.bx, align 4, !tbaa !3
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = add <4 x i32> %i.bt, %i.bu
  store <4 x i32> zeroinitializer, ptr %0, align 4, !tbaa !3
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %i.cc, ptr %i.cb, align 4, !tbaa !3
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cf = add <4 x i32> %i.bv, %i.bw
  store <4 x i32> zeroinitializer, ptr %i.cd, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.cg, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <4 x i32> %i.cf, ptr %i.ce, align 4, !tbaa !3
  store i32 0, ptr %i.ch, align 4, !tbaa !3
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.pre-phi, ptr %i.a, align 4, !tbaa !81
  store i32 0, ptr %i.ci, align 4, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @deflate_optimize_and_flush_block(ptr noundef initializes((32, 1312)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #11 {
bb.a:
  %8 = alloca %struct.deflate_sequence, align 4   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9011684
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 23 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1280) %i.c, i8 0, i64 1280, i1 false)
  %.not.i = icmp eq i32 %3, 0                     ; 3 uses
  br i1 %.not.i, label %deflate_choose_all_literals.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %3 to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.d = icmp ult i32 %3, 4
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !20
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !20
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !20
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !20
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %deflate_choose_all_literals.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !130

deflate_choose_all_literals.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %deflate_choose_all_literals.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %deflate_choose_all_literals.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %deflate_choose_all_literals.exit.loopexit.unr-lcssa ]
  %lcmp.mod347 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod347)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.epil
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !3
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %deflate_choose_all_literals.exit, label %.lr.ph.i.epil, !llvm.loop !131

deflate_choose_all_literals.exit:                 ; preds = %deflate_choose_all_literals.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  store i32 1, ptr %i.al, align 32, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2680 ; 20 uses
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.c, ptr noundef nonnull %i.an, ptr noundef nonnull %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2968 ; 14 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2552 ; 2 uses
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.ao, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq)
  %i.ar = tail call fastcc i32 @deflate_compute_true_cost(ptr noundef nonnull %0)
  %i.as = add i32 %3, 257                         ; 2 uses
  %i.at = icmp ult i32 %i.as, 305000
  %narrow = select i1 %i.at, i32 %i.as, i32 304999 ; 3 uses
  %.not114 = icmp ugt i32 %3, %narrow
  br i1 %.not114, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %deflate_choose_all_literals.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  br label %.lr.ph.preheader.i.i

.lr.ph:                                           ; preds = %deflate_choose_all_literals.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6532420 ; 9 uses
  %i.av = zext i32 %3 to i64                      ; 4 uses
  %i.aw = add nuw nsw i32 %narrow, 1
  %wide.trip.count = zext nneg i32 %i.aw to i64
  %9 = zext nneg i32 %narrow to i64               ; 2 uses
  %10 = add nuw nsw i64 %9, 1
  %11 = sub nsw i64 %10, %i.av
  %12 = sub nsw i64 %9, %i.av
  %xtraiter348 = and i64 %11, 7                   ; 2 uses
  %lcmp.mod349.not = icmp eq i64 %xtraiter348, 0
  br i1 %lcmp.mod349.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.av, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.prol
  store i32 -2147483648, ptr %i.ax, align 4, !tbaa !20
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter348
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !132

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.av, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.ay = icmp ult i64 %12, 7
  br i1 %i.ay, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 9 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !20
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !20
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !20
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i32 -2147483648, ptr %i.bf, align 4, !tbaa !20
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !20
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store i32 -2147483648, ptr %i.bj, align 4, !tbaa !20
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store i32 -2147483648, ptr %i.bl, align 4, !tbaa !20
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  store i32 -2147483648, ptr %i.bn, align 4, !tbaa !20
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph.new, !llvm.loop !133

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  br i1 %.not.i, label %vector.ph, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bo = lshr i32 %3, 11                         ; 2 uses
  %wide.trip.count.i.i = zext i32 %3 to i64       ; 2 uses
  %xtraiter350 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.bp = add i32 %3, -1
  %i.bq = icmp ult i32 %i.bp, 3
  br i1 %i.bq, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter354 = and i64 %wide.trip.count.i.i, 4294967292
  br label %.lr.ph.i.i

vector.ph.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i
  %lcmp.mod352.not = icmp eq i64 %xtraiter350, 0
  br i1 %lcmp.mod352.not, label %vector.ph, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %vector.ph.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %vector.ph.loopexit.unr-lcssa ]
  %lcmp.mod353 = icmp ne i64 %xtraiter350, 0
  tail call void @llvm.assume(i1 %lcmp.mod353)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter351 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter351.next, %.lr.ph.i.i.epil ]
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i.epil
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !20
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !3
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter351.next = add i64 %epil.iter351, 1   ; 2 uses
  %epil.iter351.cmp.not = icmp eq i64 %epil.iter351.next, %xtraiter350
  br i1 %epil.iter351.cmp.not, label %vector.ph, label %.lr.ph.i.i.epil, !llvm.loop !134

vector.ph:                                        ; preds = %vector.ph.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %._crit_edge
  %i.bx = phi i32 [ 0, %._crit_edge ], [ %i.bo, %.lr.ph.i.i.epil ], [ %i.bo, %vector.ph.loopexit.unr-lcssa ]
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %vec.phi132 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.co, %vector.body ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !3
  %wide.load133 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !3
  %i.ca = icmp ugt <4 x i32> %wide.load, %broadcast.splat
  %i.cb = icmp ugt <4 x i32> %wide.load133, %broadcast.splat
  %i.cc = zext <4 x i1> %i.ca to <4 x i32>
  %i.cd = zext <4 x i1> %i.cb to <4 x i32>
  %i.ce = add <4 x i32> %vec.phi, %i.cc
  %i.cf = add <4 x i32> %vec.phi132, %i.cd
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %wide.load.1 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !3
  %wide.load133.1 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !3
  %i.cj = icmp ugt <4 x i32> %wide.load.1, %broadcast.splat
  %i.ck = icmp ugt <4 x i32> %wide.load133.1, %broadcast.splat
  %i.cl = zext <4 x i1> %i.cj to <4 x i32>
  %i.cm = zext <4 x i1> %i.ck to <4 x i32>
  %i.cn = add <4 x i32> %i.ce, %i.cl              ; 2 uses
  %i.co = add <4 x i32> %i.cf, %i.cm              ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.cp = icmp eq i64 %index.next.1, 256
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.co, %i.cn
  %i.cq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 5 uses
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.cq, i32 1) ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !19 ; 3 uses
  %i.ct = icmp ugt i32 %i.cq, 79
  br i1 %i.ct, label %choose_min_match_len.exit.i.i, label %bb.b

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %niter355 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter355.next.3, %.lr.ph.i.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !20
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !3
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !20
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !3
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !20
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !3
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 3
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !20
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dr ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !3
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter355.next.3 = add i64 %niter355, 4         ; 2 uses
  %niter355.ncmp.3 = icmp eq i64 %niter355.next.3, %unroll_iter354
  br i1 %niter355.ncmp.3, label %vector.ph.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !136

bb.b:                                             ; preds = %middle.block
  %i.dv = zext nneg i32 %spec.store.select.i.i to i64
  %i.dw = getelementptr inbounds nuw i8, ptr @choose_min_match_len.min_lens, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !20
  %i.dy = zext i8 %i.dx to i32                    ; 4 uses
  %i.dz = icmp ult i32 %i.cs, 16
  br i1 %i.dz, label %bb.c, label %choose_min_match_len.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.ea = icmp samesign ult i32 %i.cs, 5
  br i1 %i.ea, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.eb = icmp samesign ugt i32 %i.cq, 44
  %i.ec = select i1 %i.eb, i32 %i.dy, i32 4
  br label %choose_min_match_len.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ed = icmp samesign ult i32 %i.cs, 10
  br i1 %i.ed, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ee = icmp samesign ugt i32 %i.cq, 15
  %i.ef = select i1 %i.ee, i32 %i.dy, i32 5
  br label %choose_min_match_len.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.eg = icmp samesign ugt i32 %i.cq, 7
  %i.eh = select i1 %i.eg, i32 %i.dy, i32 7
  br label %choose_min_match_len.exit.i.i

choose_min_match_len.exit.i.i:                    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %middle.block
  %.013.i.i.i = phi i32 [ 3, %middle.block ], [ %i.ec, %bb.d ], [ %i.ef, %bb.f ], [ %i.eh, %bb.g ], [ %i.dy, %bb.b ] ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 9010648 ; 2 uses
  %i.ej = zext nneg i32 %.013.i.i.i to i64        ; 4 uses
  %i.ek = add i32 %.013.i.i.i, 1
  %i.el = zext i32 %i.ek to i64
  %i.em = sub nsw i64 260, %i.el                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.em, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %choose_min_match_len.exit.i.i
  %i.en = add i32 %.013.i.i.i, 1
  %i.eo = zext i32 %i.en to i64
  %i.ep = sub nsw i64 259, %i.eo                  ; 2 uses
  %i.eq = trunc i64 %i.ep to i32
  %i.er = sub i32 -2, %.013.i.i.i
  %i.es = icmp ult i32 %i.er, %i.eq
  %i.et = icmp ugt i64 %i.ep, 4294967295
  %i.eu = or i1 %i.es, %i.et
  br i1 %i.eu, label %scalar.ph.preheader, label %vector.ph134

vector.ph134:                                     ; preds = %vector.scevcheck
  %n.vec = and i64 %i.em, -8                      ; 3 uses
  %i.ev = add nsw i64 %n.vec, %i.ej
  %i.ew = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %3, i64 0
  %broadcast.splatinsert135 = insertelement <4 x i32> poison, i32 %.013.i.i.i, i64 0
  %broadcast.splat136 = shufflevector <4 x i32> %broadcast.splatinsert135, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat136, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep = getelementptr [4 x i8], ptr %i.ei, i64 %i.ej
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph134
  %index138 = phi i64 [ 0, %vector.ph134 ], [ %index.next145, %vector.body137 ] ; 2 uses
  %vec.phi139 = phi <4 x i32> [ zeroinitializer, %vector.ph134 ], [ %i.ey, %vector.body137 ]
  %vec.phi140 = phi <4 x i32> [ zeroinitializer, %vector.ph134 ], [ %i.ez, %vector.body137 ]
  %vec.phi141 = phi <4 x i32> [ %i.ew, %vector.ph134 ], [ %i.fc, %vector.body137 ]
  %vec.phi142 = phi <4 x i32> [ zeroinitializer, %vector.ph134 ], [ %i.fd, %vector.body137 ]
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph134 ], [ %vec.ind.next, %vector.body137 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index138 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load143 = load <4 x i32>, ptr %gep, align 4, !tbaa !20 ; 2 uses
  %wide.load144 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !20 ; 2 uses
end_hunk_0
