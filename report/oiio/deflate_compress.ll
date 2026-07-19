inline.NumInlined: 62
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 103
begin_hunk_0_@deflate_flush_block:.preheader587
  %i.aeb = zext nneg i32 %i.aea to i64
  %i.aec = lshr i64 %i.adv, %i.aeb
  %i.aed = ptrtoint ptr %.11483 to i64
  %i.aee = sub i64 %.pre-phi665, %i.aed
  %i.aef = lshr i32 %i.adz, 3
  %i.aeg = zext nneg i32 %i.aef to i64
  %.564 = tail call i64 @llvm.smin.i64(i64 %i.aee, i64 %i.aeg)
  %i.aeh = getelementptr inbounds i8, ptr %.11483, i64 %.564
  %i.aei = and i32 %i.adz, 7
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.k, %.preheader584, %bb.h, %.loopexit
  %.12484 = phi ptr [ %i.aeh, %.loopexit ], [ %i.g, %.preheader584 ], [ %i.sn, %bb.h ], [ %i.tw, %bb.k ], [ %i.g, %bb.j ]
  %.13471 = phi i32 [ %i.aei, %.loopexit ], [ %i.c, %.preheader584 ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.j ]
  %.13 = phi i64 [ %i.aec, %.loopexit ], [ %i.a, %.preheader584 ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.j ]
  store i64 %.13, ptr %1, align 8, !tbaa !88
  store i32 %.13471, ptr %i.b, align 8, !tbaa !91
  store ptr %.12484, ptr %i.d, align 8, !tbaa !92
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @deflate_make_huffman_code(i32 noundef range(i32 19, 289) %0, i32 noundef range(i32 7, 16) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 10 uses
  %i.b = alloca [288 x i32], align 16             ; 13 uses
  %i.c = alloca [16 x i32], align 16              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.d = shl nuw nsw i32 %0, 2
  %i.e = zext nneg i32 %i.d to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.e, i1 false)
  %i.f = add nsw i32 %0, -1                       ; 4 uses
  %wide.trip.count.i = zext nneg i32 %0 to i64    ; 6 uses
  %i.g = add nsw i64 %wide.trip.count.i, -1       ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %wide.trip.count.i, 510
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %..i = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.f)
  %i.k = zext nneg i32 %..i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !3
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %..i.1 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.f)
  %i.r = zext nneg i32 %..i.1 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader47.i.preheader.unr-lcssa, label %bb.b, !llvm.loop !107

.preheader47.i.preheader.unr-lcssa:               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader47.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader47.i.preheader.unr-lcssa, %bb.a
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %.preheader47.i.preheader.unr-lcssa ]
  %lcmp.mod96 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.epil.init
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %..i.epil = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.f)
  %i.x = zext nneg i32 %..i.epil to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !3
  br label %.preheader47.i.preheader

.preheader47.i.preheader:                         ; preds = %.preheader47.i.preheader.unr-lcssa, %.epil.preheader
  %xtraiter97 = and i64 %i.g, 3                   ; 3 uses
  %unroll_iter101 = and i64 %i.g, -4
  br label %.preheader47.i

.preheader47.i:                                   ; preds = %.preheader47.i, %.preheader47.i.preheader
  %indvars.iv64.i = phi i64 [ 1, %.preheader47.i.preheader ], [ %indvars.iv.next65.i.3, %.preheader47.i ] ; 5 uses
  %.03954.i = phi i32 [ 0, %.preheader47.i.preheader ], [ %i.ap, %.preheader47.i ] ; 2 uses
  %niter102 = phi i64 [ 0, %.preheader47.i.preheader ], [ %niter102.next.3, %.preheader47.i ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  store i32 %.03954.i, ptr %i.ab, align 4, !tbaa !3
  %i.ad = add i32 %i.ac, %.03954.i                ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !3
  %i.ah = add i32 %i.ag, %i.ad                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !3
  %i.al = add i32 %i.ak, %i.ah                    ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  store i32 %i.al, ptr %i.an, align 4, !tbaa !3
  %i.ap = add i32 %i.ao, %i.al                    ; 3 uses
  %indvars.iv.next65.i.3 = add nuw nsw i64 %indvars.iv64.i, 4 ; 2 uses
  %niter102.next.3 = add nuw nsw i64 %niter102, 4 ; 2 uses
  %niter102.ncmp.3 = icmp eq i64 %niter102.next.3, %unroll_iter101
  br i1 %niter102.ncmp.3, label %.preheader.i.preheader.unr-lcssa, label %.preheader47.i, !llvm.loop !108

.preheader.i.preheader.unr-lcssa:                 ; preds = %.preheader47.i
  %lcmp.mod98.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %.preheader.i.preheader, label %.preheader47.i.epil.preheader

.preheader47.i.epil.preheader:                    ; preds = %.preheader.i.preheader.unr-lcssa
  %lcmp.mod100 = icmp ne i64 %xtraiter97, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.preheader47.i.epil

.preheader47.i.epil:                              ; preds = %.preheader47.i.epil, %.preheader47.i.epil.preheader
  %indvars.iv64.i.epil = phi i64 [ %indvars.iv.next65.i.epil, %.preheader47.i.epil ], [ %indvars.iv.next65.i.3, %.preheader47.i.epil.preheader ] ; 2 uses
  %.03954.i.epil = phi i32 [ %i.as, %.preheader47.i.epil ], [ %i.ap, %.preheader47.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader47.i.epil ], [ 0, %.preheader47.i.epil.preheader ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i.epil ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  store i32 %.03954.i.epil, ptr %i.aq, align 4, !tbaa !3
  %i.as = add i32 %i.ar, %.03954.i.epil           ; 2 uses
  %indvars.iv.next65.i.epil = add nuw nsw i64 %indvars.iv64.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter97
  br i1 %epil.iter.cmp.not, label %.preheader.i.preheader, label %.preheader47.i.epil, !llvm.loop !109

.preheader.i.preheader:                           ; preds = %.preheader47.i.epil, %.preheader.i.preheader.unr-lcssa
  %.lcssa95 = phi i32 [ %i.ap, %.preheader.i.preheader.unr-lcssa ], [ %i.as, %.preheader47.i.epil ] ; 4 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.e
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %bb.e ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv69.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 3 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.av = shl i32 %i.au, 10
  %i.aw = trunc nuw nsw i64 %indvars.iv69.i to i32
  %i.ax = or i32 %i.av, %i.aw
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.f)
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3  ; 2 uses
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !3
  %i.bd = zext i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bd
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  br label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv69.i
  store i8 0, ptr %i.bf, align 1, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %exitcond73.not.i = icmp eq i64 %indvars.iv.next70.i, %wide.trip.count.i
  br i1 %exitcond73.not.i, label %bb.f, label %.preheader.i, !llvm.loop !110

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr [4 x i8], ptr %i.b, i64 %wide.trip.count.i ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3  ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bj ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bg, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = sub i32 %i.bm, %i.bi                    ; 6 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -4 ; 12 uses
  %i.bp = lshr i32 %i.bn, 1                       ; 2 uses
  %.not7.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not7.i.i.i, label %heapify_array.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.f
  %i.bq = zext i32 %i.bn to i64                   ; 2 uses
  %i.br = lshr i64 %i.bq, 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %heapify_subtree.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.br, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %heapify_subtree.exit.i.i.i ] ; 5 uses
  %.08.i.i.i = phi i32 [ %i.bp, %.lr.ph.preheader.i.i.i ], [ %i.cn, %heapify_subtree.exit.i.i.i ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3  ; 2 uses
  %i.bu = shl nuw i64 %indvars.iv.i.i.i, 1        ; 2 uses
  %.not27.i.i.i.i = icmp ugt i64 %i.bu, %i.bq
  br i1 %.not27.i.i.i.i, label %heapify_subtree.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i.i.i
  %i.bv = trunc nuw i64 %i.bu to i32
  %i.bw = trunc nuw i64 %indvars.iv.i.i.i to i32
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.preheader.i.i.i
  %i.bx = phi i32 [ %i.cl, %bb.i ], [ %i.bv, %.lr.ph.i.preheader.i.i.i ] ; 6 uses
  %.028.i.i.i.i = phi i32 [ %.022.i.i.i.i, %bb.i ], [ %i.bw, %.lr.ph.i.preheader.i.i.i ]
  %i.by = icmp ult i32 %i.bx, %i.bn
  br i1 %i.by, label %bb.g, label %.lr.ph._crit_edge.i.i.i.i

.lr.ph._crit_edge.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i
  %.phi.trans.insert.i.i.i.i = zext i32 %i.bx to i64 ; 2 uses
  %.phi.trans.insert31.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.phi.trans.insert.i.i.i.i
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert31.i.i.i.i, align 4, !tbaa !3
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bz = or disjoint i32 %i.bx, 1                ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3  ; 2 uses
  %i.cd = zext i32 %i.bx to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3  ; 2 uses
  %i.cg = icmp ugt i32 %i.cc, %i.cf
  %spec.select.i.i.i.i = select i1 %i.cg, i32 %i.bz, i32 %i.bx ; 2 uses
  %i.ch = tail call i32 @llvm.umax.i32(i32 %i.cc, i32 %i.cf)
  %.pre33.i.i.i.i = zext i32 %spec.select.i.i.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph._crit_edge.i.i.i.i
  %.pre-phi34.i.i.i.i = phi i64 [ %.phi.trans.insert.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %.pre33.i.i.i.i, %bb.g ]
  %i.ci = phi i32 [ %.pre.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %i.ch, %bb.g ] ; 2 uses
  %.022.i.i.i.i = phi i32 [ %i.bx, %.lr.ph._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.g ] ; 2 uses
  %.not26.i.i.i.i = icmp ult i32 %i.bt, %i.ci
  %i.cj = zext i32 %.028.i.i.i.i to i64           ; 2 uses
  br i1 %.not26.i.i.i.i, label %bb.i, label %heapify_subtree.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cj
  store i32 %i.ci, ptr %i.ck, align 4, !tbaa !3
  %i.cl = shl i32 %.022.i.i.i.i, 1                ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.cl, %i.bn
  br i1 %.not.i.i.i.i, label %heapify_subtree.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !111

heapify_subtree.exit.i.i.i:                       ; preds = %bb.i, %bb.h, %.lr.ph.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %indvars.iv.i.i.i, %.lr.ph.i.i.i ], [ %.pre-phi34.i.i.i.i, %bb.i ], [ %i.cj, %bb.h ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.pre-phi.i.i.i.i
  store i32 %i.bt, ptr %i.cm, align 4, !tbaa !3
  %i.cn = add nsw i32 %.08.i.i.i, -1              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cn, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1
  br i1 %.not.i.i.i, label %heapify_array.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !112

heapify_array.exit.i.i:                           ; preds = %heapify_subtree.exit.i.i.i, %bb.f
  %i.co = icmp ugt i32 %i.bn, 1
  br i1 %i.co, label %.lr.ph.preheader.i.i, label %sort_symbols.exit

.lr.ph.preheader.i.i:                             ; preds = %heapify_array.exit.i.i
  %i.cp = zext i32 %i.bn to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %heapify_subtree.exit.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.cp, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %heapify_subtree.exit.i.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3  ; 3 uses
  %i.cs = load i32, ptr %i.bk, align 4, !tbaa !3
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !3
  store i32 %i.cr, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32 ; 3 uses
  %.not27.i.i.i = icmp eq i64 %indvars.iv.i.i, 2
  br i1 %.not27.i.i.i, label %sort_symbols.exit, label %.lr.ph.i13.i.i

.lr.ph.i13.i.i:                                   ; preds = %.lr.ph.i.i, %bb.l
  %i.ct = phi i32 [ %i.dh, %bb.l ], [ 2, %.lr.ph.i.i ] ; 6 uses
  %.028.i.i.i = phi i32 [ %.022.i.i.i, %bb.l ], [ 1, %.lr.ph.i.i ]
  %i.cu = icmp ult i32 %i.ct, %indvars.i.i
  br i1 %i.cu, label %bb.j, label %.lr.ph._crit_edge.i.i.i

.lr.ph._crit_edge.i.i.i:                          ; preds = %.lr.ph.i13.i.i
  %.phi.trans.insert.i.i.i = zext i32 %i.ct to i64 ; 2 uses
  %.phi.trans.insert31.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.phi.trans.insert.i.i.i
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert31.i.i.i, align 4, !tbaa !3
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i13.i.i
  %i.cv = or disjoint i32 %i.ct, 1                ; 2 uses
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3  ; 2 uses
  %i.cz = zext i32 %i.ct to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3  ; 2 uses
  %i.dc = icmp ugt i32 %i.cy, %i.db
  %spec.select.i.i.i = select i1 %i.dc, i32 %i.cv, i32 %i.ct ; 2 uses
  %i.dd = tail call i32 @llvm.umax.i32(i32 %i.cy, i32 %i.db)
  %.pre33.i.i.i = zext i32 %spec.select.i.i.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph._crit_edge.i.i.i
  %.pre-phi34.i.i.i = phi i64 [ %.phi.trans.insert.i.i.i, %.lr.ph._crit_edge.i.i.i ], [ %.pre33.i.i.i, %bb.j ]
  %i.de = phi i32 [ %.pre.i.i.i, %.lr.ph._crit_edge.i.i.i ], [ %i.dd, %bb.j ] ; 2 uses
  %.022.i.i.i = phi i32 [ %i.ct, %.lr.ph._crit_edge.i.i.i ], [ %spec.select.i.i.i, %bb.j ] ; 2 uses
  %.not26.i.i.i = icmp ult i32 %i.cr, %i.de
  %i.df = zext i32 %.028.i.i.i to i64             ; 2 uses
  br i1 %.not26.i.i.i, label %bb.l, label %heapify_subtree.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.df
  store i32 %i.de, ptr %i.dg, align 4, !tbaa !3
  %i.dh = shl i32 %.022.i.i.i, 1                  ; 2 uses
  %.not.i14.i.i = icmp ugt i32 %i.dh, %indvars.i.i
  br i1 %.not.i14.i.i, label %heapify_subtree.exit.i.i, label %.lr.ph.i13.i.i, !llvm.loop !111

heapify_subtree.exit.i.i:                         ; preds = %bb.l, %bb.k
  %.pre-phi.i.i.i = phi i64 [ %i.df, %bb.k ], [ %.pre-phi34.i.i.i, %bb.l ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.pre-phi.i.i.i
  store i32 %i.cr, ptr %i.di, align 4, !tbaa !3
  %i.dj = icmp ugt i32 %indvars.i.i, 1
  br i1 %i.dj, label %.lr.ph.i.i, label %sort_symbols.exit, !llvm.loop !113

sort_symbols.exit:                                ; preds = %.lr.ph.i.i, %heapify_subtree.exit.i.i, %heapify_array.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  switch i32 %.lcssa95, label %bb.n [
    i32 0, label %bb.z
    i32 1, label %bb.m
  ], !prof !114

bb.m:                                             ; preds = %sort_symbols.exit
  %i.dk = load i32, ptr %4, align 4, !tbaa !3
  %i.dl = and i32 %i.dk, 1023
  %i.dm = tail call i32 @llvm.umax.i32(i32 %i.dl, i32 1)
  store i32 0, ptr %4, align 4, !tbaa !3
  store i8 1, ptr %3, align 1, !tbaa !20
  %i.dn = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dn
  store i32 1, ptr %i.do, align 4, !tbaa !3
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 %i.dn
  store i8 1, ptr %i.dp, align 1, !tbaa !20
  br label %bb.z

bb.n:                                             ; preds = %sort_symbols.exit
  %i.dq = add i32 %.lcssa95, -1                   ; 3 uses
  %wide.trip.count.i24 = zext i32 %i.dq to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.v, %bb.n
  %indvars.iv.i25 = phi i64 [ %indvars.iv.next.i27, %bb.v ], [ 0, %bb.n ] ; 6 uses
  %.056.i = phi i32 [ %.157.i, %bb.v ], [ 0, %bb.n ] ; 7 uses
  %.055.i = phi i32 [ %.1.i, %bb.v ], [ 0, %bb.n ] ; 7 uses
  %i.dr = add i32 %.056.i, 1                      ; 3 uses
  %.not.i26 = icmp ugt i32 %i.dr, %i.dq
  br i1 %.not.i26, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = zext i32 %.055.i to i64                 ; 2 uses
  %i.dt = icmp eq i64 %indvars.iv.i25, %i.ds
  %.phi.trans.insert.i = zext i32 %i.dr to i64
  %.phi.trans.insert64.i = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.phi.trans.insert.i
  %.pre.i = load i32, ptr %.phi.trans.insert64.i, align 4, !tbaa !3
  %.pre74.i = and i32 %.pre.i, -1024              ; 2 uses
  br i1 %i.dt, label %._crit_edge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ds
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = and i32 %i.dv, -1024
  %.not61.i = icmp ugt i32 %.pre74.i, %i.dw
  br i1 %.not61.i, label %bb.r, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.q, %bb.p
  %i.dx = zext i32 %.056.i to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = and i32 %i.dz, -1024
  %i.eb = add i32 %i.ea, %.pre74.i
  %i.ec = add i32 %.056.i, 2
  br label %bb.v

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.ed = add i32 %.055.i, 2                      ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %.not62.i = icmp samesign ult i64 %indvars.iv.i25, %i.ee
  br i1 %.not62.i, label %._crit_edge65.i, label %bb.s

._crit_edge65.i:                                  ; preds = %bb.r
  %.phi.trans.insert66.i = zext i32 %.056.i to i64
  %.phi.trans.insert67.i = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.phi.trans.insert66.i
  %.pre68.i = load i32, ptr %.phi.trans.insert67.i, align 4, !tbaa !3
  %.pre69.i = and i32 %.pre68.i, -1024
  %.pre71.i = add i32 %.055.i, 1
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ef = icmp ugt i32 %.056.i, %i.dq
  %.pre77.i = add i32 %.055.i, 1                  ; 2 uses
end_hunk_0
