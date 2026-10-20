Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/compression?download=true
inline.NumInlined: 100
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 129
begin_hunk_0_@do_end_block_check:bb.a
  %i.v = load <2 x i32>, ptr %0, align 4, !tbaa !16
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
  %i.bc = load i32, ptr %i.h, align 4, !tbaa !55  ; 2 uses
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
  %.034 = phi i32 [ %i.bp, %bb.b ], [ %i.bg, %.preheader ]
  %i.bq = lshr i32 %1, 12
  %i.br = mul i32 %i.b, %i.bq
  %i.bs = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.al)
  %op.rdx = add i32 %i.bs, %i.at
  %op.rdx80 = add i32 %i.bb, %i.br
  %op.rdx81 = add i32 %op.rdx, %op.rdx80
  %.not42.not = icmp ult i32 %op.rdx81, %.034
  br i1 %.not42.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi = phi i32 [ %.pre77, %._crit_edge ], [ %i.bd, %bb.c ]
  %i.bt = phi <4 x i32> [ %i.d, %._crit_edge ], [ %i.l, %bb.c ]
  %i.bu = phi <4 x i32> [ %i.c, %._crit_edge ], [ %i.m, %bb.c ]
  %i.bv = phi <4 x i32> [ %i.f, %._crit_edge ], [ %i.p, %bb.c ]
  %i.bw = phi <4 x i32> [ %i.e, %._crit_edge ], [ %i.q, %bb.c ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.by = load <2 x i32>, ptr %0, align 4, !tbaa !16
  %i.bz = load <2 x i32>, ptr %i.bx, align 4, !tbaa !16
  %i.ca = add <2 x i32> %i.bz, %i.by
  store <2 x i32> %i.ca, ptr %i.bx, align 4, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = add <4 x i32> %i.bt, %i.bu
  store <4 x i32> zeroinitializer, ptr %0, align 4, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %i.cc, ptr %i.cb, align 4, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cf = add <4 x i32> %i.bv, %i.bw
  store <4 x i32> zeroinitializer, ptr %i.cd, align 4, !tbaa !16
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.cg, align 4, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <4 x i32> %i.cf, ptr %i.ce, align 4, !tbaa !16
  store i32 0, ptr %i.ch, align 4, !tbaa !16
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.pre-phi, ptr %i.a, align 4, !tbaa !60
  store i32 0, ptr %i.ci, align 4, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @deflate_optimize_and_flush_block(ptr noundef initializes((40, 1320)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #14 {
bb.a:
  %8 = alloca %struct.deflate_sequence, align 4   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9011684
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 23 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1280) %i.c, i8 0, i64 1280, i1 false)
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !36
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !36
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !36
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !36
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !16
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %deflate_choose_all_literals.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !221

deflate_choose_all_literals.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %deflate_choose_all_literals.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %deflate_choose_all_literals.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %deflate_choose_all_literals.exit.loopexit.unr-lcssa ]
  %lcmp.mod481 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod481)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.epil
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !36
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !16
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !16
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %deflate_choose_all_literals.exit, label %.lr.ph.i.epil, !llvm.loop !222

deflate_choose_all_literals.exit:                 ; preds = %deflate_choose_all_literals.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  store i32 1, ptr %i.al, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 20 uses
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.c, ptr noundef nonnull %i.an, ptr noundef nonnull %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2976 ; 14 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2560 ; 2 uses
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.ao, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq)
  %i.ar = tail call fastcc i32 @deflate_compute_true_cost(ptr noundef nonnull %0) ; 2 uses
  %i.as = add i32 %3, 257                         ; 2 uses
  %i.at = icmp ult i32 %i.as, 305000
  %narrow = select i1 %i.at, i32 %i.as, i32 304999 ; 3 uses
  %.not182 = icmp ugt i32 %3, %narrow
  br i1 %.not182, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %deflate_choose_all_literals.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6532420 ; 9 uses
  %i.av = zext i32 %3 to i64                      ; 4 uses
  %i.aw = add nuw nsw i32 %narrow, 1
  %wide.trip.count = zext nneg i32 %i.aw to i64
  %9 = zext nneg i32 %narrow to i64               ; 2 uses
  %10 = add nuw nsw i64 %9, 1
  %11 = sub nsw i64 %10, %i.av
  %12 = sub nsw i64 %9, %i.av
  %xtraiter482 = and i64 %11, 7                   ; 2 uses
  %lcmp.mod483.not = icmp eq i64 %xtraiter482, 0
  br i1 %lcmp.mod483.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.av, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.prol
  store i32 -2147483648, ptr %i.ax, align 4, !tbaa !36
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter482
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !223

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.av, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.ay = icmp ult i64 %12, 7
  br i1 %i.ay, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 9 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !36
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !36
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !36
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i32 -2147483648, ptr %i.bf, align 4, !tbaa !36
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !36
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store i32 -2147483648, ptr %i.bj, align 4, !tbaa !36
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store i32 -2147483648, ptr %i.bl, align 4, !tbaa !36
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  store i32 -2147483648, ptr %i.bn, align 4, !tbaa !36
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph.new, !llvm.loop !224

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %deflate_choose_all_literals.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 9011696
  %i.bp = load i32, ptr %i.bo, align 16, !tbaa !36
  %.not84 = icmp ugt i32 %3, %i.bp
  br i1 %.not84, label %.thread, label %vector.memcheck

.thread:                                          ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  br label %.lr.ph.preheader.i.i

vector.memcheck:                                  ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8974608 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8972420 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2188) %i.bq, ptr noundef nonnull align 4 dereferenceable(2188) %i.br, i64 2188, i1 false), !tbaa.struct !284
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4288 ; 6 uses
  %i.bt = getelementptr i8, ptr %0, i64 8973444
  %i.bu = getelementptr i8, ptr %0, i64 4544
  %bound0 = icmp ult ptr %i.br, %i.bu
  %bound1 = icmp ult ptr %i.bs, %i.bt
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %wide.load = load <4 x i8>, ptr %i.bv, align 1, !tbaa !36, !alias.scope !285 ; 2 uses
  %wide.load201 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !36, !alias.scope !285 ; 2 uses
  %i.bx = icmp eq <4 x i8> %wide.load, zeroinitializer
  %i.by = icmp eq <4 x i8> %wide.load201, zeroinitializer
  %i.bz = zext <4 x i8> %wide.load to <4 x i32>
  %i.ca = zext <4 x i8> %wide.load201 to <4 x i32>
  %i.cb = shl nuw nsw <4 x i32> %i.bz, splat (i32 4)
  %i.cc = shl nuw nsw <4 x i32> %i.ca, splat (i32 4)
  %i.cd = select <4 x i1> %i.bx, <4 x i32> splat (i32 208), <4 x i32> %i.cb
  %i.ce = select <4 x i1> %i.by, <4 x i32> splat (i32 208), <4 x i32> %i.cc
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <4 x i32> %i.cd, ptr %i.cf, align 4, !tbaa !36, !alias.scope !286, !noalias !285
  store <4 x i32> %i.ce, ptr %i.cg, align 4, !tbaa !36, !alias.scope !286, !noalias !285
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ch = icmp eq i64 %index.next, 256
  br i1 %i.ch, label %.preheader40.i, label %vector.body, !llvm.loop !228

.preheader40.i:                                   ; preds = %vector.body, %scalar.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8973444 ; 2 uses
  br label %bb.b

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i89.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv.i88
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !36  ; 2 uses
  %.not37.i = icmp eq i8 %i.ck, 0
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 4
  %i.cn = select i1 %.not37.i, i32 208, i32 %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i88
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !36
  %indvars.iv.next.i89 = or disjoint i64 %indvars.iv.i88, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv.next.i89
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !36  ; 2 uses
  %.not37.i.1 = icmp eq i8 %i.cq, 0
  %i.cr = zext i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 4
  %i.ct = select i1 %.not37.i.1, i32 208, i32 %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next.i89
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !36
  %indvars.iv.next.i89.1 = add nuw nsw i64 %indvars.iv.i88, 2 ; 2 uses
  %exitcond.not.i90.1 = icmp eq i64 %indvars.iv.next.i89.1, 256
  br i1 %exitcond.not.i90.1, label %.preheader40.i, label %scalar.ph, !llvm.loop !229

.preheader.i:                                     ; preds = %bb.b
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4576 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8974480 ; 4 uses
  %i.cx = getelementptr i8, ptr %0, i64 8974600
  %i.cy = getelementptr i8, ptr %0, i64 4606
  %bound0209 = icmp ult ptr %i.cw, %i.cy
  %bound1210 = icmp ult ptr %i.cv, %i.cx
  %found.conflict211 = and i1 %bound0209, %bound1210
  br i1 %found.conflict211, label %scalar.ph207.preheader, label %vector.body213

scalar.ph207.preheader:                           ; preds = %vector.body213, %.preheader.i
  %indvars.iv49.i.ph = phi i64 [ 0, %.preheader.i ], [ 24, %vector.body213 ]
  br label %scalar.ph207

vector.body213:                                   ; preds = %.preheader.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 4580
  %wide.load215 = load <4 x i8>, ptr %i.cv, align 16, !tbaa !36, !alias.scope !287 ; 2 uses
  %wide.load216 = load <4 x i8>, ptr %i.cz, align 4, !tbaa !36, !alias.scope !287 ; 2 uses
  %i.da = icmp eq <4 x i8> %wide.load215, zeroinitializer
  %i.db = icmp eq <4 x i8> %wide.load216, zeroinitializer
  %i.dc = select <4 x i1> %i.da, <4 x i8> splat (i8 10), <4 x i8> %wide.load215
  %i.dd = select <4 x i1> %i.db, <4 x i8> splat (i8 10), <4 x i8> %wide.load216
  %i.de = zext <4 x i8> %i.dc to <4 x i32>
  %i.df = zext <4 x i8> %i.dd to <4 x i32>
  %i.dg = add nuw nsw <4 x i32> %i.df, <i32 1, i32 1, i32 2, i32 2>
  %i.dh = shl nuw nsw <4 x i32> %i.de, splat (i32 4)
  %i.di = shl nuw nsw <4 x i32> %i.dg, splat (i32 4)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8974496
  store <4 x i32> %i.dh, ptr %i.cw, align 16, !tbaa !36, !alias.scope !288, !noalias !287
  store <4 x i32> %i.di, ptr %i.dj, align 16, !tbaa !36, !alias.scope !288, !noalias !287
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4584
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 4588
  %wide.load215.1 = load <4 x i8>, ptr %i.dk, align 8, !tbaa !36, !alias.scope !287 ; 2 uses
  %wide.load216.1 = load <4 x i8>, ptr %i.dl, align 4, !tbaa !36, !alias.scope !287 ; 2 uses
  %i.dm = icmp eq <4 x i8> %wide.load215.1, zeroinitializer
  %i.dn = icmp eq <4 x i8> %wide.load216.1, zeroinitializer
  %i.do = select <4 x i1> %i.dm, <4 x i8> splat (i8 10), <4 x i8> %wide.load215.1
  %i.dp = select <4 x i1> %i.dn, <4 x i8> splat (i8 10), <4 x i8> %wide.load216.1
  %i.dq = zext <4 x i8> %i.do to <4 x i32>
  %i.dr = zext <4 x i8> %i.dp to <4 x i32>
  %i.ds = add nuw nsw <4 x i32> %i.dq, <i32 3, i32 3, i32 4, i32 4>
  %i.dt = add nuw nsw <4 x i32> %i.dr, <i32 5, i32 5, i32 6, i32 6>
  %i.du = shl nuw nsw <4 x i32> %i.ds, splat (i32 4)
  %i.dv = shl nuw nsw <4 x i32> %i.dt, splat (i32 4)
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8974512
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8974528
  store <4 x i32> %i.du, ptr %i.dw, align 16, !tbaa !36, !alias.scope !288, !noalias !287
  store <4 x i32> %i.dv, ptr %i.dx, align 16, !tbaa !36, !alias.scope !288, !noalias !287
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 4596
  %wide.load215.2 = load <4 x i8>, ptr %i.dy, align 16, !tbaa !36, !alias.scope !287 ; 2 uses
  %wide.load216.2 = load <4 x i8>, ptr %i.dz, align 4, !tbaa !36, !alias.scope !287 ; 2 uses
  %i.ea = icmp eq <4 x i8> %wide.load215.2, zeroinitializer
  %i.eb = icmp eq <4 x i8> %wide.load216.2, zeroinitializer
  %i.ec = select <4 x i1> %i.ea, <4 x i8> splat (i8 10), <4 x i8> %wide.load215.2
  %i.ed = select <4 x i1> %i.eb, <4 x i8> splat (i8 10), <4 x i8> %wide.load216.2
  %i.ee = zext <4 x i8> %i.ec to <4 x i32>
  %i.ef = zext <4 x i8> %i.ed to <4 x i32>
  %i.eg = add nuw nsw <4 x i32> %i.ee, <i32 7, i32 7, i32 8, i32 8>
  %i.eh = add nuw nsw <4 x i32> %i.ef, <i32 9, i32 9, i32 10, i32 10>
  %i.ei = shl nuw nsw <4 x i32> %i.eg, splat (i32 4)
  %i.ej = shl nuw nsw <4 x i32> %i.eh, splat (i32 4)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8974544
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8974560
  store <4 x i32> %i.ei, ptr %i.ek, align 16, !tbaa !36, !alias.scope !288, !noalias !287
  store <4 x i32> %i.ej, ptr %i.el, align 16, !tbaa !36, !alias.scope !288, !noalias !287
  br label %scalar.ph207.preheader

bb.b:                                             ; preds = %bb.b, %.preheader40.i
  %indvars.iv45.i = phi i64 [ 3, %.preheader40.i ], [ %indvars.iv.next46.i.1, %bb.b ] ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv45.i
  %i.en = load i8, ptr %i.em, align 1, !tbaa !36
  %i.eo = zext i8 %i.en to i64                    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 257
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !36  ; 2 uses
  %.not36.i = icmp eq i8 %i.er, 0
  %narrow39.i = select i1 %.not36.i, i8 13, i8 %i.er
  %spec.select.i = zext i8 %narrow39.i to i32
  %i.es = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.eo
  %i.et = load i8, ptr %i.es, align 1, !tbaa !36
  %i.eu = zext i8 %i.et to i32
  %i.ev = add nuw nsw i32 %spec.select.i, %i.eu
  %i.ew = shl nuw nsw i32 %i.ev, 4
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv45.i
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !36
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next46.i
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !36
  %i.fa = zext i8 %i.ez to i64                    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 257
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !36  ; 2 uses
  %.not36.i.1 = icmp eq i8 %i.fd, 0
  %narrow39.i.1 = select i1 %.not36.i.1, i8 13, i8 %i.fd
  %spec.select.i.1 = zext i8 %narrow39.i.1 to i32
  %i.fe = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.fa
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !36
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add nuw nsw i32 %spec.select.i.1, %i.fg
  %i.fi = shl nuw nsw i32 %i.fh, 4
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next46.i
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !36
  %indvars.iv.next46.i.1 = add nuw nsw i64 %indvars.iv45.i, 2 ; 2 uses
  %exitcond48.not.i.1 = icmp eq i64 %indvars.iv.next46.i.1, 259
  br i1 %exitcond48.not.i.1, label %.preheader.i, label %bb.b, !llvm.loop !233

scalar.ph207:                                     ; preds = %scalar.ph207, %scalar.ph207.preheader
  %indvars.iv49.i = phi i64 [ %indvars.iv49.i.ph, %scalar.ph207.preheader ], [ %indvars.iv.next50.i.1, %scalar.ph207 ] ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv49.i
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !36  ; 2 uses
  %.not.i91 = icmp eq i8 %i.fl, 0
  %narrow.i = select i1 %.not.i91, i8 10, i8 %i.fl
  %spec.select38.i = zext i8 %narrow.i to i32
  %i.fm = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv49.i
  %i.fn = load i8, ptr %i.fm, align 2, !tbaa !36
  %i.fo = zext i8 %i.fn to i32
  %i.fp = add nuw nsw i32 %spec.select38.i, %i.fo
  %i.fq = shl nuw nsw i32 %i.fp, 4
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv49.i
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !36
  %indvars.iv.next50.i = or disjoint i64 %indvars.iv49.i, 1 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv.next50.i
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !36  ; 2 uses
  %.not.i91.1 = icmp eq i8 %i.ft, 0
  %narrow.i.1 = select i1 %.not.i91.1, i8 10, i8 %i.ft
  %spec.select38.i.1 = zext i8 %narrow.i.1 to i32
end_hunk_0
