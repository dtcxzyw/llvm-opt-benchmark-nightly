inline.NumInlined: 62
inline.NumDeleted: 31
begin_hunk_0_@deflate_flush_block:.preheader587

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
  %lcmp.mod104 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
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
  %xtraiter105 = and i64 %i.g, 3                  ; 3 uses
  %unroll_iter109 = and i64 %i.g, -4
  br label %.preheader47.i

.preheader47.i:                                   ; preds = %.preheader47.i, %.preheader47.i.preheader
  %indvars.iv66.i = phi i64 [ 1, %.preheader47.i.preheader ], [ %indvars.iv.next67.i.3, %.preheader47.i ] ; 5 uses
  %.03955.i = phi i32 [ 0, %.preheader47.i.preheader ], [ %i.ap, %.preheader47.i ] ; 2 uses
  %niter110 = phi i64 [ 0, %.preheader47.i.preheader ], [ %niter110.next.3, %.preheader47.i ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv66.i ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  store i32 %.03955.i, ptr %i.ab, align 4, !tbaa !3
  %i.ad = add i32 %i.ac, %.03955.i                ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv66.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !3
  %i.ah = add i32 %i.ag, %i.ad                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv66.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !3
  %i.al = add i32 %i.ak, %i.ah                    ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv66.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  store i32 %i.al, ptr %i.an, align 4, !tbaa !3
  %i.ap = add i32 %i.ao, %i.al                    ; 3 uses
  %indvars.iv.next67.i.3 = add nuw nsw i64 %indvars.iv66.i, 4 ; 2 uses
  %niter110.next.3 = add nuw nsw i64 %niter110, 4 ; 2 uses
  %niter110.ncmp.3 = icmp eq i64 %niter110.next.3, %unroll_iter109
  br i1 %niter110.ncmp.3, label %.preheader.i.preheader.unr-lcssa, label %.preheader47.i, !llvm.loop !108

.preheader.i.preheader.unr-lcssa:                 ; preds = %.preheader47.i
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %.preheader.i.preheader, label %.preheader47.i.epil.preheader

.preheader47.i.epil.preheader:                    ; preds = %.preheader.i.preheader.unr-lcssa
  %lcmp.mod108 = icmp ne i64 %xtraiter105, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.preheader47.i.epil

.preheader47.i.epil:                              ; preds = %.preheader47.i.epil, %.preheader47.i.epil.preheader
  %indvars.iv66.i.epil = phi i64 [ %indvars.iv.next67.i.epil, %.preheader47.i.epil ], [ %indvars.iv.next67.i.3, %.preheader47.i.epil.preheader ] ; 2 uses
  %.03955.i.epil = phi i32 [ %i.as, %.preheader47.i.epil ], [ %i.ap, %.preheader47.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader47.i.epil ], [ 0, %.preheader47.i.epil.preheader ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv66.i.epil ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  store i32 %.03955.i.epil, ptr %i.aq, align 4, !tbaa !3
  %i.as = add i32 %i.ar, %.03955.i.epil           ; 2 uses
  %indvars.iv.next67.i.epil = add nuw nsw i64 %indvars.iv66.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter105
  br i1 %epil.iter.cmp.not, label %.preheader.i.preheader, label %.preheader47.i.epil, !llvm.loop !109

.preheader.i.preheader:                           ; preds = %.preheader47.i.epil, %.preheader.i.preheader.unr-lcssa
  %.lcssa103 = phi i32 [ %i.ap, %.preheader.i.preheader.unr-lcssa ], [ %i.as, %.preheader47.i.epil ] ; 4 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.e
  %indvars.iv71.i = phi i64 [ %indvars.iv.next72.i, %bb.e ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv71.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 3 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.av = shl i32 %i.au, 10
  %i.aw = trunc nuw nsw i64 %indvars.iv71.i to i32
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
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv71.i
  store i8 0, ptr %i.bf, align 1, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count.i
  br i1 %exitcond75.not.i, label %bb.f, label %.preheader.i, !llvm.loop !110

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
  %.08.i.i.i = phi i32 [ %i.bp, %.lr.ph.preheader.i.i.i ], [ %i.cl, %heapify_subtree.exit.i.i.i ]
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
  %i.bx = phi i32 [ %i.cj, %bb.i ], [ %i.bv, %.lr.ph.i.preheader.i.i.i ] ; 5 uses
  %.028.i.i.i.i = phi i32 [ %.022.i.i.i.i, %bb.i ], [ %i.bw, %.lr.ph.i.preheader.i.i.i ]
  %i.by = icmp ult i32 %i.bx, %i.bn
  br i1 %i.by, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bz = or disjoint i32 %i.bx, 1                ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = zext i32 %i.bx to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = icmp ugt i32 %i.cc, %i.cf
  %spec.select.i.i.i.i = select i1 %i.cg, i32 %i.bz, i32 %i.bx
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.022.i.i.i.i = phi i32 [ %i.bx, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.g ] ; 3 uses
  %5 = zext i32 %.022.i.i.i.i to i64              ; 2 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !3        ; 2 uses
  %.not26.i.i.i.i = icmp ult i32 %i.bt, %7
  %i.ch = zext i32 %.028.i.i.i.i to i64           ; 2 uses
  br i1 %.not26.i.i.i.i, label %bb.i, label %heapify_subtree.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ch
  store i32 %7, ptr %i.ci, align 4, !tbaa !3
  %i.cj = shl i32 %.022.i.i.i.i, 1                ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.cj, %i.bn
  br i1 %.not.i.i.i.i, label %heapify_subtree.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !111

heapify_subtree.exit.i.i.i:                       ; preds = %bb.i, %bb.h, %.lr.ph.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %indvars.iv.i.i.i, %.lr.ph.i.i.i ], [ %5, %bb.i ], [ %i.ch, %bb.h ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.pre-phi.i.i.i.i
  store i32 %i.bt, ptr %i.ck, align 4, !tbaa !3
  %i.cl = add nsw i32 %.08.i.i.i, -1              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cl, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1
  br i1 %.not.i.i.i, label %heapify_array.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !112

heapify_array.exit.i.i:                           ; preds = %heapify_subtree.exit.i.i.i, %bb.f
  %i.cm = icmp ugt i32 %i.bn, 1
  br i1 %i.cm, label %.lr.ph.preheader.i.i, label %sort_symbols.exit

.lr.ph.preheader.i.i:                             ; preds = %heapify_array.exit.i.i
  %i.cn = zext i32 %i.bn to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %heapify_subtree.exit.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.cn, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %heapify_subtree.exit.i.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3  ; 3 uses
  %i.cq = load i32, ptr %i.bk, align 4, !tbaa !3
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !3
  store i32 %i.cp, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32 ; 3 uses
  %.not27.i.i.i = icmp eq i64 %indvars.iv.i.i, 2
  br i1 %.not27.i.i.i, label %sort_symbols.exit, label %.lr.ph.i13.i.i

.lr.ph.i13.i.i:                                   ; preds = %.lr.ph.i.i, %bb.l
  %i.cr = phi i32 [ %i.dd, %bb.l ], [ 2, %.lr.ph.i.i ] ; 5 uses
  %.028.i.i.i = phi i32 [ %.022.i.i.i, %bb.l ], [ 1, %.lr.ph.i.i ]
  %i.cs = icmp ult i32 %i.cr, %indvars.i.i
  br i1 %i.cs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i13.i.i
  %i.ct = or disjoint i32 %i.cr, 1                ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cr to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = icmp ugt i32 %i.cw, %i.cz
  %spec.select.i.i.i = select i1 %i.da, i32 %i.ct, i32 %i.cr
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i13.i.i
  %.022.i.i.i = phi i32 [ %i.cr, %.lr.ph.i13.i.i ], [ %spec.select.i.i.i, %bb.j ] ; 3 uses
  %8 = zext i32 %.022.i.i.i to i64                ; 2 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !3       ; 2 uses
  %.not26.i.i.i = icmp ult i32 %i.cp, %10
  %i.db = zext i32 %.028.i.i.i to i64             ; 2 uses
  br i1 %.not26.i.i.i, label %bb.l, label %heapify_subtree.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.db
  store i32 %10, ptr %i.dc, align 4, !tbaa !3
  %i.dd = shl i32 %.022.i.i.i, 1                  ; 2 uses
  %.not.i14.i.i = icmp ugt i32 %i.dd, %indvars.i.i
  br i1 %.not.i14.i.i, label %heapify_subtree.exit.i.i, label %.lr.ph.i13.i.i, !llvm.loop !111

heapify_subtree.exit.i.i:                         ; preds = %bb.l, %bb.k
  %.pre-phi.i.i.i = phi i64 [ %i.db, %bb.k ], [ %8, %bb.l ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.pre-phi.i.i.i
  store i32 %i.cp, ptr %i.de, align 4, !tbaa !3
  %i.df = icmp ugt i32 %indvars.i.i, 1
  br i1 %i.df, label %.lr.ph.i.i, label %sort_symbols.exit, !llvm.loop !113

sort_symbols.exit:                                ; preds = %.lr.ph.i.i, %heapify_subtree.exit.i.i, %heapify_array.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  switch i32 %.lcssa103, label %bb.n [
    i32 0, label %bb.z
    i32 1, label %bb.m
  ], !prof !114

bb.m:                                             ; preds = %sort_symbols.exit
  %i.dg = load i32, ptr %4, align 4, !tbaa !3
  %i.dh = and i32 %i.dg, 1023
  %i.di = tail call i32 @llvm.umax.i32(i32 %i.dh, i32 1)
  store i32 0, ptr %4, align 4, !tbaa !3
  store i8 1, ptr %3, align 1, !tbaa !20
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dj
  store i32 1, ptr %i.dk, align 4, !tbaa !3
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 %i.dj
  store i8 1, ptr %i.dl, align 1, !tbaa !20
  br label %bb.z

bb.n:                                             ; preds = %sort_symbols.exit
  %i.dm = add i32 %.lcssa103, -1                  ; 3 uses
  %wide.trip.count.i24 = zext i32 %i.dm to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.v, %bb.n
  %indvars.iv.i25 = phi i64 [ %indvars.iv.next.i27, %bb.v ], [ 0, %bb.n ] ; 6 uses
  %.056.i = phi i32 [ %.157.i, %bb.v ], [ 0, %bb.n ] ; 7 uses
  %.055.i = phi i32 [ %.1.i, %bb.v ], [ 0, %bb.n ] ; 7 uses
  %i.dn = add i32 %.056.i, 1                      ; 3 uses
  %.not.i26 = icmp ugt i32 %i.dn, %i.dm
  br i1 %.not.i26, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.do = zext i32 %.055.i to i64                 ; 2 uses
  %i.dp = icmp eq i64 %indvars.iv.i25, %i.do
  %.phi.trans.insert.i = zext i32 %i.dn to i64
  %.phi.trans.insert64.i = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.phi.trans.insert.i
  %.pre.i = load i32, ptr %.phi.trans.insert64.i, align 4, !tbaa !3
  %.pre74.i = and i32 %.pre.i, -1024              ; 2 uses
  br i1 %i.dp, label %._crit_edge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.do
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = and i32 %i.dr, -1024
  %.not61.i = icmp ugt i32 %.pre74.i, %i.ds
  br i1 %.not61.i, label %bb.r, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.q, %bb.p
  %i.dt = zext i32 %.056.i to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = and i32 %i.dv, -1024
  %i.dx = add i32 %i.dw, %.pre74.i
  %i.dy = add i32 %.056.i, 2
  br label %bb.v

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.dz = add i32 %.055.i, 2                      ; 2 uses
  %i.ea = zext i32 %i.dz to i64
  %.not62.i = icmp samesign ult i64 %indvars.iv.i25, %i.ea
  br i1 %.not62.i, label %._crit_edge65.i, label %bb.s

._crit_edge65.i:                                  ; preds = %bb.r
  %.phi.trans.insert66.i = zext i32 %.056.i to i64
  %.phi.trans.insert67.i = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.phi.trans.insert66.i
  %.pre68.i = load i32, ptr %.phi.trans.insert67.i, align 4, !tbaa !3
  %.pre69.i = and i32 %.pre68.i, -1024
  %.pre71.i = add i32 %.055.i, 1
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.eb = icmp ugt i32 %.056.i, %i.dm
  %.pre77.i = add i32 %.055.i, 1                  ; 2 uses
  %.pre79.i = zext i32 %.pre77.i to i64           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.pre79.i
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3 ; 2 uses
  %.pre63 = and i32 %.pre, -1024                  ; 2 uses
  br i1 %i.eb, label %._crit_edge76.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = zext i32 %.056.i to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3
  %i.ef = and i32 %i.ee, -1024                    ; 2 uses
  %i.eg = icmp ult i32 %.pre63, %i.ef
  br i1 %i.eg, label %._crit_edge76.i, label %bb.u

._crit_edge76.i:                                  ; preds = %bb.s, %bb.t
  %i.eh = zext i32 %.055.i to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.eh ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3  ; 2 uses
  %i.ek = and i32 %i.ej, -1024
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.pre79.i
  %i.em = add i32 %.pre63, %i.ek
  %i.en = trunc nuw i64 %indvars.iv.i25 to i32
  %i.eo = shl i32 %i.en, 10                       ; 2 uses
  %i.ep = and i32 %i.ej, 1023
  %i.eq = or disjoint i32 %i.ep, %i.eo
  store i32 %i.eq, ptr %i.ei, align 4, !tbaa !3
  %i.er = and i32 %.pre, 1023
  %i.es = or disjoint i32 %i.er, %i.eo
  store i32 %i.es, ptr %i.el, align 4, !tbaa !3
  br label %bb.v

bb.u:                                             ; preds = %bb.t, %._crit_edge65.i
  %.pre-phi72.i = phi i32 [ %.pre71.i, %._crit_edge65.i ], [ %.pre77.i, %bb.t ]
  %.pre-phi70.i = phi i32 [ %.pre69.i, %._crit_edge65.i ], [ %i.ef, %bb.t ]
  %i.et = zext i32 %.055.i to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3  ; 2 uses
  %i.ew = and i32 %i.ev, -1024
  %i.ex = add i32 %i.ew, %.pre-phi70.i
  %i.ey = trunc nuw i64 %indvars.iv.i25 to i32
  %i.ez = shl i32 %i.ey, 10
  %i.fa = and i32 %i.ev, 1023
  %i.fb = or disjoint i32 %i.fa, %i.ez
  store i32 %i.fb, ptr %i.eu, align 4, !tbaa !3
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge76.i, %._crit_edge.i
  %.157.i = phi i32 [ %i.dy, %._crit_edge.i ], [ %.056.i, %._crit_edge76.i ], [ %i.dn, %bb.u ]
  %.1.i = phi i32 [ %.055.i, %._crit_edge.i ], [ %i.dz, %._crit_edge76.i ], [ %.pre-phi72.i, %bb.u ]
  %.0.i = phi i32 [ %i.dx, %._crit_edge.i ], [ %i.em, %._crit_edge76.i ], [ %i.ex, %bb.u ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i25 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3
  %i.fe = and i32 %i.fd, 1023
  %i.ff = or i32 %i.fe, %.0.i
  store i32 %i.ff, ptr %i.fc, align 4, !tbaa !3
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %exitcond.not.i28 = icmp eq i64 %indvars.iv.next.i27, %wide.trip.count.i24
  br i1 %exitcond.not.i28, label %build_tree.exit, label %bb.o, !llvm.loop !115

build_tree.exit:                                  ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.fg = add i32 %.lcssa103, -2
  %i.fh = shl nuw nsw i32 %1, 2
  %narrow.i = add nuw nsw i32 %i.fh, 4
  %i.fi = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, i8 0, i64 %i.fi, i1 false), !tbaa !3
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 2, ptr %i.fj, align 4, !tbaa !3
  %i.fk = zext i32 %i.fg to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fn = and i32 %i.fm, 1023
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !3
  %.03136.i = add i32 %.lcssa103, -3              ; 2 uses
  %i.fo = icmp sgt i32 %.03136.i, -1
  br i1 %i.fo, label %.lr.ph.preheader.i, label %compute_length_counts.exit

.lr.ph.preheader.i:                               ; preds = %build_tree.exit
  %i.fp = zext nneg i32 %.03136.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit.i, %.lr.ph.preheader.i
  %indvars.iv.i30 = phi i64 [ %i.fp, %.lr.ph.preheader.i ], [ %indvars.iv.next.i34, %.loopexit.i ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i30 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3  ; 2 uses
  %i.fs = lshr i32 %i.fr, 10
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3
  %i.fw = lshr i32 %i.fv, 10                      ; 2 uses
  %i.fx = add nuw nsw i32 %i.fw, 1                ; 3 uses
  %i.fy = and i32 %i.fr, 1023
  %i.fz = shl i32 %i.fx, 10
  %i.ga = or disjoint i32 %i.fz, %i.fy
  store i32 %i.ga, ptr %i.fq, align 4, !tbaa !3
  %.not34.i = icmp samesign ult i32 %i.fx, %1
  br i1 %.not34.i, label %.lr.ph..loopexit_crit_edge.i, label %.preheader.i31

.lr.ph..loopexit_crit_edge.i:                     ; preds = %.lr.ph.i
  %.phi.trans.insert.i35 = zext nneg i32 %i.fx to i64 ; 2 uses
  %.phi.trans.insert40.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.phi.trans.insert.i35
  %.pre.i36 = load i32, ptr %.phi.trans.insert40.i, align 4, !tbaa !3
  %i.gb = add nuw nsw i32 %i.fw, 2
  br label %.loopexit.i

.preheader.i31:                                   ; preds = %.lr.ph.i, %.preheader.i31
  %.0.i32 = phi i32 [ %i.gc, %.preheader.i31 ], [ %1, %.lr.ph.i ] ; 2 uses
  %i.gc = add i32 %.0.i32, -1                     ; 2 uses
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3  ; 2 uses
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %.preheader.i31, label %.loopexit.i, !llvm.loop !116

.loopexit.i:                                      ; preds = %.preheader.i31, %.lr.ph..loopexit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i35, %.lr.ph..loopexit_crit_edge.i ], [ %i.gd, %.preheader.i31 ]
  %i.gh = phi i32 [ %.pre.i36, %.lr.ph..loopexit_crit_edge.i ], [ %i.gf, %.preheader.i31 ]
  %.1.i33 = phi i32 [ %i.gb, %.lr.ph..loopexit_crit_edge.i ], [ %.0.i32, %.preheader.i31 ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre-phi.i
  %i.gj = add i32 %i.gh, -1
end_hunk_0
