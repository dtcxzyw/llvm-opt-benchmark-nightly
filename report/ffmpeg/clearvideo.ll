inline.NumInlined: 26
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 17
begin_hunk_0_@build_vlc:bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.01719 = phi i32 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !31    ; 2 uses
  %i.h = zext i8 %i.g to i32
  %i.i = icmp eq i8 %i.g, -1
  %spec.store.select = select i1 %i.i, i32 303, i32 %i.h ; 3 uses
  %i.j = add i32 %spec.store.select, %.01719
  %i.k = icmp ult i32 %.01719, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.l = trunc i64 %indvars.iv to i8
  %i.m = add nuw nsw i8 %i.l, 1
  %i.n = zext i32 %.01719 to i64
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.n
  %i.o = add nsw i32 %spec.store.select, -1
  %i.p = zext i32 %i.o to i64
  %i.q = add nuw nsw i64 %i.p, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 %i.m, i64 %i.q, i1 false), !tbaa !31
  %i.r = add i32 %.01719, %spec.store.select
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.1.lcssa = phi i32 [ %.01719, %bb.c ], [ %i.r, %.lr.ph ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !101
}

declare ptr @ff_vlc_init_tables_from_lengths(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @extend_edges(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !103  ; 5 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !42   ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !72     ; 2 uses
  %i.h = add nsw i32 %1, -1                       ; 2 uses
  %i.i = and i32 %i.d, %i.h                       ; 2 uses
  %i.j = sub i32 %1, %i.i                         ; 2 uses
  %i.k = and i32 %i.e, %i.h                       ; 2 uses
  %i.l = sub i32 %1, %i.k                         ; 2 uses
  %i.m = icmp eq i32 %i.i, 0                      ; 2 uses
  %i.n = icmp eq i32 %i.k, 0                      ; 2 uses
  %or.cond = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = xor i1 %i.m, true
  %i.o = icmp sgt i32 %i.e, 0
  %or.cond75 = select i1 %.not, i1 %i.o, i1 false
  %i.p = icmp sgt i32 %i.j, 0
  %or.cond76 = and i1 %or.cond75, %i.p
  br i1 %or.cond76, label %.preheader64.preheader, label %.loopexit66

.preheader64.preheader:                           ; preds = %bb.b
  %i.q = sext i32 %i.d to i64
  %i.r = sext i32 %i.f to i64                     ; 9 uses
  %i.s = zext nneg i32 %i.j to i64                ; 9 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.g, i64 %i.q ; 9 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.t = icmp ult i32 %i.e, 8
  br i1 %i.t, label %.preheader64.epil.preheader, label %.preheader64.preheader.new

.preheader64.preheader.new:                       ; preds = %.preheader64.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.preheader64

.preheader64:                                     ; preds = %.preheader64, %.preheader64.preheader.new
  %indvar = phi i64 [ 0, %.preheader64.preheader.new ], [ %indvar.next.7, %.preheader64 ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader64.preheader.new ], [ %niter.next.7, %.preheader64 ]
  %i.u = mul nsw i64 %indvar, %i.r
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep, i8 -128, i64 %i.s, i1 false), !tbaa !31
  %indvar.next = or disjoint i64 %indvar, 1
  %i.v = mul nsw i64 %indvar.next, %i.r
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.v
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep.1, i8 -128, i64 %i.s, i1 false), !tbaa !31
  %indvar.next.1105 = or disjoint i64 %indvar, 2
  %i.w = mul nsw i64 %indvar.next.1105, %i.r
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.w
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep.2, i8 -128, i64 %i.s, i1 false), !tbaa !31
  %indvar.next.2108 = or disjoint i64 %indvar, 3
  %i.x = mul nsw i64 %indvar.next.2108, %i.r
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep.3, i8 -128, i64 %i.s, i1 false), !tbaa !31
  %indvar.next.3 = or disjoint i64 %indvar, 4
  %i.y = mul nsw i64 %indvar.next.3, %i.r
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep.4, i8 -128, i64 %i.s, i1 false), !tbaa !31
  %indvar.next.4 = or disjoint i64 %indvar, 5
  %i.z = mul nsw i64 %indvar.next.4, %i.r
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 %i.z
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep.5, i8 -128, i64 %i.s, i1 false), !tbaa !31
  %indvar.next.5 = or disjoint i64 %indvar, 6
  %i.aa = mul nsw i64 %indvar.next.5, %i.r
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %i.aa
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep.6, i8 -128, i64 %i.s, i1 false), !tbaa !31
  %indvar.next.6 = or disjoint i64 %indvar, 7
  %i.ab = mul nsw i64 %indvar.next.6, %i.r
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep.7, i8 -128, i64 %i.s, i1 false), !tbaa !31
  %indvar.next.7 = add nuw nsw i64 %indvar, 8     ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit66.loopexit.unr-lcssa, label %.preheader64, !llvm.loop !104

.loopexit66.loopexit.unr-lcssa:                   ; preds = %.preheader64
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit66, label %.preheader64.epil.preheader

.preheader64.epil.preheader:                      ; preds = %.loopexit66.loopexit.unr-lcssa, %.preheader64.preheader
  %indvar.epil.init = phi i64 [ 0, %.preheader64.preheader ], [ %indvar.next.7, %.loopexit66.loopexit.unr-lcssa ]
  %lcmp.mod103 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod103)
  br label %.preheader64.epil

.preheader64.epil:                                ; preds = %.preheader64.epil, %.preheader64.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.preheader64.epil.preheader ], [ %indvar.next.epil, %.preheader64.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader64.epil.preheader ], [ %epil.iter.next, %.preheader64.epil ]
  %i.ac = mul nsw i64 %indvar.epil, %i.r
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.ac
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep.epil, i8 -128, i64 %i.s, i1 false), !tbaa !31
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit66, label %.preheader64.epil, !llvm.loop !105

.loopexit66:                                      ; preds = %.loopexit66.loopexit.unr-lcssa, %.preheader64.epil, %bb.b
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.loopexit66
  %i.ad = icmp sgt i32 %i.l, 0
  %i.ae = icmp sgt i32 %i.f, 0
  %or.cond77 = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond77, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.c
  %i.af = mul i32 %i.e, %i.f
  %i.ag = sext i32 %i.af to i64
  %i.ah = zext nneg i32 %i.f to i64
  %scevgep84 = getelementptr i8, ptr %i.g, i64 %i.ag
  %i.ai = zext nneg i32 %i.l to i64
  %i.aj = mul nuw nsw i64 %i.ah, %i.ai
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84, i8 -128, i64 %i.aj, i1 false), !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.c, %.loopexit66
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !102
  %i.al = ashr i32 %i.ak, 1                       ; 2 uses
  %i.am = load i32, ptr %i.b, align 4, !tbaa !103
  %i.an = ashr i32 %i.am, 1                       ; 5 uses
  %i.ao = ashr i32 %1, 1                          ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !42 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72 ; 2 uses
  %i.at = add nsw i32 %i.ao, -1                   ; 4 uses
  %i.au = and i32 %i.al, %i.at                    ; 2 uses
  %i.av = sub i32 %i.ao, %i.au                    ; 2 uses
  %i.aw = and i32 %i.an, %i.at                    ; 2 uses
  %i.ax = sub i32 %i.ao, %i.aw                    ; 2 uses
  %i.ay = icmp eq i32 %i.au, 0                    ; 2 uses
  %i.az = icmp eq i32 %i.aw, 0                    ; 2 uses
  %or.cond.1 = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond.1, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %.not.1 = xor i1 %i.ay, true
  %i.ba = icmp sgt i32 %i.an, 0
  %or.cond75.1 = select i1 %.not.1, i1 %i.ba, i1 false
  %i.bb = icmp sgt i32 %i.av, 0
  %or.cond76.1 = and i1 %or.cond75.1, %i.bb
  br i1 %or.cond76.1, label %.preheader64.preheader.1, label %.loopexit66.1

.preheader64.preheader.1:                         ; preds = %bb.d
  %i.bc = sext i32 %i.al to i64
  %i.bd = sext i32 %i.aq to i64                   ; 9 uses
  %i.be = zext nneg i32 %i.av to i64              ; 9 uses
  %wide.trip.count.1 = zext nneg i32 %i.an to i64 ; 2 uses
  %invariant.gep99 = getelementptr i8, ptr %i.as, i64 %i.bc ; 9 uses
  %xtraiter110 = and i64 %wide.trip.count.1, 7    ; 3 uses
  %i.bf = icmp ult i32 %i.an, 8
  br i1 %i.bf, label %.preheader64.1.epil.preheader, label %.preheader64.preheader.1.new

.preheader64.preheader.1.new:                     ; preds = %.preheader64.preheader.1
  %unroll_iter114 = and i64 %wide.trip.count.1, 2147483640
  br label %.preheader64.1

.preheader64.1:                                   ; preds = %.preheader64.1, %.preheader64.preheader.1.new
  %indvar.1 = phi i64 [ 0, %.preheader64.preheader.1.new ], [ %indvar.next.1.7, %.preheader64.1 ] ; 9 uses
  %niter115 = phi i64 [ 0, %.preheader64.preheader.1.new ], [ %niter115.next.7, %.preheader64.1 ]
  %i.bg = mul i64 %indvar.1, %i.bd
  %gep100 = getelementptr i8, ptr %invariant.gep99, i64 %i.bg
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep100, i8 -128, i64 %i.be, i1 false), !tbaa !31
  %indvar.next.1 = or disjoint i64 %indvar.1, 1
  %i.bh = mul i64 %indvar.next.1, %i.bd
  %gep100.1 = getelementptr i8, ptr %invariant.gep99, i64 %i.bh
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep100.1, i8 -128, i64 %i.be, i1 false), !tbaa !31
  %indvar.next.1.1 = or disjoint i64 %indvar.1, 2
  %i.bi = mul i64 %indvar.next.1.1, %i.bd
  %gep100.2 = getelementptr i8, ptr %invariant.gep99, i64 %i.bi
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep100.2, i8 -128, i64 %i.be, i1 false), !tbaa !31
  %indvar.next.1.2 = or disjoint i64 %indvar.1, 3
  %i.bj = mul i64 %indvar.next.1.2, %i.bd
  %gep100.3 = getelementptr i8, ptr %invariant.gep99, i64 %i.bj
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep100.3, i8 -128, i64 %i.be, i1 false), !tbaa !31
  %indvar.next.1.3 = or disjoint i64 %indvar.1, 4
  %i.bk = mul i64 %indvar.next.1.3, %i.bd
  %gep100.4 = getelementptr i8, ptr %invariant.gep99, i64 %i.bk
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep100.4, i8 -128, i64 %i.be, i1 false), !tbaa !31
  %indvar.next.1.4 = or disjoint i64 %indvar.1, 5
  %i.bl = mul i64 %indvar.next.1.4, %i.bd
  %gep100.5 = getelementptr i8, ptr %invariant.gep99, i64 %i.bl
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep100.5, i8 -128, i64 %i.be, i1 false), !tbaa !31
  %indvar.next.1.5 = or disjoint i64 %indvar.1, 6
  %i.bm = mul i64 %indvar.next.1.5, %i.bd
  %gep100.6 = getelementptr i8, ptr %invariant.gep99, i64 %i.bm
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep100.6, i8 -128, i64 %i.be, i1 false), !tbaa !31
  %indvar.next.1.6 = or disjoint i64 %indvar.1, 7
  %i.bn = mul i64 %indvar.next.1.6, %i.bd
  %gep100.7 = getelementptr i8, ptr %invariant.gep99, i64 %i.bn
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep100.7, i8 -128, i64 %i.be, i1 false), !tbaa !31
  %indvar.next.1.7 = add nuw nsw i64 %indvar.1, 8 ; 2 uses
  %niter115.next.7 = add i64 %niter115, 8         ; 2 uses
  %niter115.ncmp.7 = icmp eq i64 %niter115.next.7, %unroll_iter114
  br i1 %niter115.ncmp.7, label %.loopexit66.1.loopexit.unr-lcssa, label %.preheader64.1, !llvm.loop !104

.loopexit66.1.loopexit.unr-lcssa:                 ; preds = %.preheader64.1
  %lcmp.mod112.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod112.not, label %.loopexit66.1, label %.preheader64.1.epil.preheader

.preheader64.1.epil.preheader:                    ; preds = %.loopexit66.1.loopexit.unr-lcssa, %.preheader64.preheader.1
  %indvar.1.epil.init = phi i64 [ 0, %.preheader64.preheader.1 ], [ %indvar.next.1.7, %.loopexit66.1.loopexit.unr-lcssa ]
  %lcmp.mod113 = icmp ne i64 %xtraiter110, 0
  tail call void @llvm.assume(i1 %lcmp.mod113)
  br label %.preheader64.1.epil

.preheader64.1.epil:                              ; preds = %.preheader64.1.epil, %.preheader64.1.epil.preheader
  %indvar.1.epil = phi i64 [ %indvar.1.epil.init, %.preheader64.1.epil.preheader ], [ %indvar.next.1.epil, %.preheader64.1.epil ] ; 2 uses
  %epil.iter111 = phi i64 [ 0, %.preheader64.1.epil.preheader ], [ %epil.iter111.next, %.preheader64.1.epil ]
  %i.bo = mul i64 %indvar.1.epil, %i.bd
  %gep100.epil = getelementptr i8, ptr %invariant.gep99, i64 %i.bo
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep100.epil, i8 -128, i64 %i.be, i1 false), !tbaa !31
  %indvar.next.1.epil = add nuw nsw i64 %indvar.1.epil, 1
  %epil.iter111.next = add i64 %epil.iter111, 1   ; 2 uses
  %epil.iter111.cmp.not = icmp eq i64 %epil.iter111.next, %xtraiter110
  br i1 %epil.iter111.cmp.not, label %.loopexit66.1, label %.preheader64.1.epil, !llvm.loop !107

.loopexit66.1:                                    ; preds = %.loopexit66.1.loopexit.unr-lcssa, %.preheader64.1.epil, %bb.d
  br i1 %i.az, label %.loopexit.1, label %bb.e

bb.e:                                             ; preds = %.loopexit66.1
  %i.bp = icmp sgt i32 %i.ax, 0
  %i.bq = icmp sgt i32 %i.aq, 0
  %or.cond77.1 = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond77.1, label %.preheader.preheader.1, label %.loopexit.1

.preheader.preheader.1:                           ; preds = %bb.e
  %i.br = mul i32 %i.an, %i.aq
  %i.bs = sext i32 %i.br to i64
  %i.bt = zext nneg i32 %i.aq to i64
  %scevgep84.1 = getelementptr i8, ptr %i.as, i64 %i.bs
  %i.bu = zext nneg i32 %i.ax to i64
  %i.bv = mul nuw nsw i64 %i.bt, %i.bu
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84.1, i8 -128, i64 %i.bv, i1 false), !tbaa !31
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.preheader.preheader.1, %bb.e, %.loopexit66.1
  %i.bw = load i32, ptr %i.a, align 8, !tbaa !102
  %i.bx = ashr i32 %i.bw, 1                       ; 2 uses
  %i.by = load i32, ptr %i.b, align 4, !tbaa !103
  %i.bz = ashr i32 %i.by, 1                       ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !42 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !72 ; 2 uses
  %i.ce = and i32 %i.bx, %i.at                    ; 2 uses
  %i.cf = sub i32 %i.ao, %i.ce                    ; 2 uses
  %i.cg = and i32 %i.bz, %i.at                    ; 2 uses
  %i.ch = sub i32 %i.ao, %i.cg                    ; 2 uses
  %i.ci = icmp eq i32 %i.ce, 0                    ; 2 uses
  %i.cj = icmp eq i32 %i.cg, 0                    ; 2 uses
  %or.cond.2 = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond.2, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.loopexit.1
  %.not.2 = xor i1 %i.ci, true
  %i.ck = icmp sgt i32 %i.bz, 0
  %or.cond75.2 = select i1 %.not.2, i1 %i.ck, i1 false
  %i.cl = icmp sgt i32 %i.cf, 0
  %or.cond76.2 = and i1 %or.cond75.2, %i.cl
  br i1 %or.cond76.2, label %.preheader64.preheader.2, label %.loopexit66.2

.preheader64.preheader.2:                         ; preds = %bb.f
  %i.cm = sext i32 %i.bx to i64
  %i.cn = sext i32 %i.cb to i64                   ; 9 uses
  %i.co = zext nneg i32 %i.cf to i64              ; 9 uses
  %wide.trip.count.2 = zext nneg i32 %i.bz to i64 ; 2 uses
  %invariant.gep101 = getelementptr i8, ptr %i.cd, i64 %i.cm ; 9 uses
  %xtraiter116 = and i64 %wide.trip.count.2, 7    ; 3 uses
  %i.cp = icmp ult i32 %i.bz, 8
  br i1 %i.cp, label %.preheader64.2.epil.preheader, label %.preheader64.preheader.2.new

.preheader64.preheader.2.new:                     ; preds = %.preheader64.preheader.2
  %unroll_iter120 = and i64 %wide.trip.count.2, 2147483640
  br label %.preheader64.2

.preheader64.2:                                   ; preds = %.preheader64.2, %.preheader64.preheader.2.new
  %indvar.2 = phi i64 [ 0, %.preheader64.preheader.2.new ], [ %indvar.next.2.7, %.preheader64.2 ] ; 9 uses
  %niter121 = phi i64 [ 0, %.preheader64.preheader.2.new ], [ %niter121.next.7, %.preheader64.2 ]
  %i.cq = mul i64 %indvar.2, %i.cn
  %gep102 = getelementptr i8, ptr %invariant.gep101, i64 %i.cq
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102, i8 -128, i64 %i.co, i1 false), !tbaa !31
  %indvar.next.2 = or disjoint i64 %indvar.2, 1
  %i.cr = mul i64 %indvar.next.2, %i.cn
  %gep102.1 = getelementptr i8, ptr %invariant.gep101, i64 %i.cr
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102.1, i8 -128, i64 %i.co, i1 false), !tbaa !31
  %indvar.next.2.1 = or disjoint i64 %indvar.2, 2
  %i.cs = mul i64 %indvar.next.2.1, %i.cn
  %gep102.2 = getelementptr i8, ptr %invariant.gep101, i64 %i.cs
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102.2, i8 -128, i64 %i.co, i1 false), !tbaa !31
  %indvar.next.2.2 = or disjoint i64 %indvar.2, 3
  %i.ct = mul i64 %indvar.next.2.2, %i.cn
  %gep102.3 = getelementptr i8, ptr %invariant.gep101, i64 %i.ct
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102.3, i8 -128, i64 %i.co, i1 false), !tbaa !31
  %indvar.next.2.3 = or disjoint i64 %indvar.2, 4
  %i.cu = mul i64 %indvar.next.2.3, %i.cn
  %gep102.4 = getelementptr i8, ptr %invariant.gep101, i64 %i.cu
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102.4, i8 -128, i64 %i.co, i1 false), !tbaa !31
  %indvar.next.2.4 = or disjoint i64 %indvar.2, 5
  %i.cv = mul i64 %indvar.next.2.4, %i.cn
  %gep102.5 = getelementptr i8, ptr %invariant.gep101, i64 %i.cv
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102.5, i8 -128, i64 %i.co, i1 false), !tbaa !31
  %indvar.next.2.5 = or disjoint i64 %indvar.2, 6
  %i.cw = mul i64 %indvar.next.2.5, %i.cn
  %gep102.6 = getelementptr i8, ptr %invariant.gep101, i64 %i.cw
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102.6, i8 -128, i64 %i.co, i1 false), !tbaa !31
  %indvar.next.2.6 = or disjoint i64 %indvar.2, 7
  %i.cx = mul i64 %indvar.next.2.6, %i.cn
  %gep102.7 = getelementptr i8, ptr %invariant.gep101, i64 %i.cx
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102.7, i8 -128, i64 %i.co, i1 false), !tbaa !31
  %indvar.next.2.7 = add nuw nsw i64 %indvar.2, 8 ; 2 uses
  %niter121.next.7 = add i64 %niter121, 8         ; 2 uses
  %niter121.ncmp.7 = icmp eq i64 %niter121.next.7, %unroll_iter120
  br i1 %niter121.ncmp.7, label %.loopexit66.2.loopexit.unr-lcssa, label %.preheader64.2, !llvm.loop !104

.loopexit66.2.loopexit.unr-lcssa:                 ; preds = %.preheader64.2
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %.loopexit66.2, label %.preheader64.2.epil.preheader

.preheader64.2.epil.preheader:                    ; preds = %.loopexit66.2.loopexit.unr-lcssa, %.preheader64.preheader.2
  %indvar.2.epil.init = phi i64 [ 0, %.preheader64.preheader.2 ], [ %indvar.next.2.7, %.loopexit66.2.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter116, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %.preheader64.2.epil

.preheader64.2.epil:                              ; preds = %.preheader64.2.epil, %.preheader64.2.epil.preheader
  %indvar.2.epil = phi i64 [ %indvar.2.epil.init, %.preheader64.2.epil.preheader ], [ %indvar.next.2.epil, %.preheader64.2.epil ] ; 2 uses
  %epil.iter117 = phi i64 [ 0, %.preheader64.2.epil.preheader ], [ %epil.iter117.next, %.preheader64.2.epil ]
  %i.cy = mul i64 %indvar.2.epil, %i.cn
  %gep102.epil = getelementptr i8, ptr %invariant.gep101, i64 %i.cy
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102.epil, i8 -128, i64 %i.co, i1 false), !tbaa !31
  %indvar.next.2.epil = add nuw nsw i64 %indvar.2.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %.loopexit66.2, label %.preheader64.2.epil, !llvm.loop !108

.loopexit66.2:                                    ; preds = %.loopexit66.2.loopexit.unr-lcssa, %.preheader64.2.epil, %bb.f
  br i1 %i.cj, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.loopexit66.2
  %i.cz = icmp sgt i32 %i.ch, 0
  %i.da = icmp sgt i32 %i.cb, 0
  %or.cond77.2 = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %or.cond77.2, label %.preheader.preheader.2, label %.critedge

.preheader.preheader.2:                           ; preds = %bb.g
  %i.db = mul i32 %i.bz, %i.cb
  %i.dc = sext i32 %i.db to i64
  %i.dd = zext nneg i32 %i.cb to i64
  %scevgep84.2 = getelementptr i8, ptr %i.cd, i64 %i.dc
  %i.de = zext nneg i32 %i.ch to i64
  %i.df = mul nuw nsw i64 %i.dd, %i.de
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84.2, i8 -128, i64 %i.df, i1 false), !tbaa !31
  br label %.critedge

.critedge:                                        ; preds = %.loopexit66.2, %bb.g, %.preheader.preheader.2, %.loopexit.1, %.loopexit, %bb.a
  ret void
}

declare i32 @av_frame_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @decode_tile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 3) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 %9, ptr nofree noundef captures(address_is_null) %10) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !99     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !68   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.g = lshr i32 %i.c, 3
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.j = load i32, ptr %i.i, align 1, !tbaa !31
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
  %i.l = and i32 %i.c, 7
  %i.m = shl i32 %i.k, %i.l
  %i.n = lshr i32 %i.m, 23
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !31
  %i.r = sext i16 %i.q to i32                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !31   ; 2 uses
  %i.u = sext i16 %i.t to i32                     ; 2 uses
  %i.v = icmp slt i16 %i.t, 0
  br i1 %i.v, label %bb.c, label %get_vlc2.exit109

bb.c:                                             ; preds = %bb.b
  %i.w = add i32 %i.c, 9
  %i.x = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.w) ; 3 uses
  %i.y = lshr i32 %i.x, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !31
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = and i32 %i.x, 7
  %i.ae = shl i32 %i.ac, %i.ad
  %i.af = add nsw i32 %i.u, 32
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = add i32 %i.ag, %i.r
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !31
  %i.al = sext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !31
  %i.ao = sext i16 %i.an to i32
  br label %get_vlc2.exit109

get_vlc2.exit109:                                 ; preds = %bb.b, %bb.c
  %.167.i106 = phi i32 [ %i.r, %bb.b ], [ %i.al, %bb.c ]
  %.165.i107 = phi i32 [ %i.c, %bb.b ], [ %i.x, %bb.c ]
  %.1.i108 = phi i32 [ %i.u, %bb.b ], [ %i.ao, %bb.c ]
  %i.ap = add i32 %.1.i108, %.165.i107
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.ap)
  store i32 %i.aq, ptr %i.b, align 8, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %get_vlc2.exit109, %bb.a
  %.081 = phi i32 [ %.167.i106, %get_vlc2.exit109 ], [ 0, %bb.a ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !96 ; 3 uses
  %.not91 = icmp eq ptr %i.as, null
  br i1 %.not91, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !68 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !67 ; 4 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !65    ; 4 uses
  %i.ay = lshr i32 %i.au, 3
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 1, !tbaa !31
  %i.bc = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  %i.bd = and i32 %i.au, 7
  %i.be = shl i32 %i.bc, %i.bd
  %i.bf = lshr i32 %i.be, 23
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bg ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !31
  %i.bj = sext i16 %i.bi to i32                   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !31 ; 2 uses
  %i.bm = sext i16 %i.bl to i32                   ; 2 uses
  %i.bn = icmp slt i16 %i.bl, 0
  br i1 %i.bn, label %bb.f, label %get_vlc2.exit105

bb.f:                                             ; preds = %bb.e
  %i.bo = add i32 %i.au, 9
  %i.bp = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %i.bo) ; 3 uses
  %i.bq = lshr i32 %i.bp, 3
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 1, !tbaa !31
  %i.bu = tail call i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bv = and i32 %i.bp, 7
  %i.bw = shl i32 %i.bu, %i.bv
  %i.bx = add nsw i32 %i.bm, 32
  %i.by = lshr i32 %i.bw, %i.bx
  %i.bz = add i32 %i.by, %i.bj
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ca ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !31
  %i.cd = zext i16 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !31
  %i.cg = sext i16 %i.cf to i32
  br label %get_vlc2.exit105

get_vlc2.exit105:                                 ; preds = %bb.e, %bb.f
  %.167.i102 = phi i32 [ %i.bj, %bb.e ], [ %i.cd, %bb.f ] ; 3 uses
  %.165.i103 = phi i32 [ %i.au, %bb.e ], [ %i.bp, %bb.f ]
  %.1.i104 = phi i32 [ %i.bm, %bb.e ], [ %i.cg, %bb.f ]
  %i.ch = add i32 %.1.i104, %.165.i103
  %i.ci = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %i.ch) ; 4 uses
  store i32 %i.ci, ptr %i.at, align 8, !tbaa !68
  %i.cj = and i32 %.167.i102, 65535
  %.not92 = icmp eq i32 %i.cj, 19
  br i1 %.not92, label %bb.h, label %bb.g

bb.g:                                             ; preds = %get_vlc2.exit105
  %i.ck = lshr i32 %.167.i102, 8
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = trunc i32 %.167.i102 to i8
  %i.cn = sext i8 %i.cm to i16
  %i.co = sext i8 %i.cl to i16
  br label %bb.i

bb.h:                                             ; preds = %get_vlc2.exit105
  %i.cp = lshr i32 %i.ci, 3
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 1, !tbaa !31
  %i.ct = add i32 %i.ci, 8
  %i.cu = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %i.ct) ; 4 uses
  store i32 %i.cu, ptr %i.at, align 8, !tbaa !68
  %i.cv = lshr i32 %i.cu, 3
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 1, !tbaa !31
  %i.cz = tail call i32 @llvm.bswap.i32(i32 %i.cy)
  %i.da = tail call i32 @llvm.bswap.i32(i32 %i.cs)
  %i.db = and i32 %i.cu, 7
  %i.dc = and i32 %i.ci, 7
  %i.dd = shl i32 %i.cz, %i.db
  %i.de = shl i32 %i.da, %i.dc
  %i.df = ashr i32 %i.dd, 24
  %i.dg = ashr i32 %i.de, 24
  %i.dh = trunc nsw i32 %i.dg to i16
  %i.di = add i32 %i.cu, 8
  %i.dj = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %i.di)
  store i32 %i.dj, ptr %i.at, align 8, !tbaa !68
  %i.dk = trunc nsw i32 %i.df to i16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0 = phi i16 [ %i.cn, %bb.g ], [ %i.dh, %bb.h ] ; 2 uses
  %.sroa.10.0 = phi i16 [ %i.co, %bb.g ], [ %i.dk, %bb.h ] ; 2 uses
  %.not93 = icmp eq ptr %10, null
  br i1 %.not93, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_0
