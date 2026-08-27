Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/xtc3?download=true
inline.NumInlined: 116
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@Ptngc_unpack_array_xtc3:bb.a

.lr.ph:                                           ; preds = %bb.aa, %.lr.ph
  %.3125 = phi i32 [ %i.gr, %.lr.ph ], [ 0, %bb.aa ]
  %.288124 = phi i32 [ %i.gq, %.lr.ph ], [ %.086146, %bb.aa ] ; 2 uses
  call fastcc void @unpack_one_large(ptr noundef %4, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.c, ptr noundef %i.a, ptr noundef %1, i32 noundef %.288124, i32 noundef 0, i32 noundef %3, i32 noundef %.096142)
  %i.gq = add nsw i32 %.288124, 3                 ; 2 uses
  %i.gr = add nuw nsw i32 %.3125, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gr, %i.go
  br i1 %exitcond.not, label %.loopexit121.loopexit, label %.lr.ph, !llvm.loop !109

bb.ab:                                            ; preds = %bb.v
  %.old116 = icmp slt i32 %.093144, %.old
  br i1 %.old116, label %bb.ac, label %.fold.split

bb.ac:                                            ; preds = %bb.ab
  %i.gs = add nsw i32 %.093144, 1
  %i.gt = sext i32 %.093144 to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !8
  br label %.loopexit121

bb.ad:                                            ; preds = %bb.v
  %i.gw = sub nuw nsw i32 1, %.0100140
  br label %.loopexit121

bb.ae:                                            ; preds = %bb.v
  br label %.loopexit121

bb.af:                                            ; preds = %bb.v
  br label %.loopexit121

.fold.split:                                      ; preds = %bb.z, %bb.ab, %bb.v
  br label %.loopexit121

.loopexit121.loopexit:                            ; preds = %.lr.ph
  %i.gx = sub i32 %.0102139, %i.go
  br label %.loopexit121

.loopexit121:                                     ; preds = %.loopexit121.loopexit, %bb.aa, %bb.v, %.fold.split, %bb.ad, %bb.ae, %bb.af, %bb.ac, %bb.w, %.loopexit
  %.3105 = phi i32 [ %i.gh, %.loopexit ], [ %i.ep, %bb.w ], [ %.0102139, %.fold.split ], [ %.0102139, %bb.ac ], [ %.0102139, %bb.ad ], [ %.0102139, %bb.v ], [ %.0102139, %bb.ae ], [ %.0102139, %bb.af ], [ %.0102139, %bb.aa ], [ %i.gx, %.loopexit121.loopexit ] ; 3 uses
  %.1101 = phi i32 [ %.0100140, %.loopexit ], [ %.0100140, %bb.w ], [ %.0100140, %.fold.split ], [ %.0100140, %bb.ac ], [ %i.gw, %bb.ad ], [ %.0100140, %bb.v ], [ %.0100140, %bb.ae ], [ %.0100140, %bb.af ], [ %.0100140, %bb.aa ], [ %.0100140, %.loopexit121.loopexit ]
  %.199 = phi i32 [ %.098141, %.loopexit ], [ %.098141, %bb.w ], [ %.098141, %.fold.split ], [ %i.gv, %bb.ac ], [ %.098141, %bb.ad ], [ %.098141, %bb.v ], [ %.098141, %bb.ae ], [ %.098141, %bb.af ], [ %.098141, %bb.aa ], [ %.098141, %.loopexit121.loopexit ]
  %.197 = phi i32 [ %.096142, %.loopexit ], [ %.096142, %bb.w ], [ %.096142, %.fold.split ], [ %.096142, %bb.ac ], [ %.096142, %bb.ad ], [ 0, %bb.v ], [ 1, %bb.ae ], [ 2, %bb.af ], [ %.096142, %bb.aa ], [ %.096142, %.loopexit121.loopexit ]
  %.194 = phi i32 [ %.093144, %.loopexit ], [ %.093144, %bb.w ], [ %.093144, %.fold.split ], [ %i.gs, %bb.ac ], [ %.093144, %bb.ad ], [ %.093144, %bb.v ], [ %.093144, %bb.ae ], [ %.093144, %bb.af ], [ %i.gl, %bb.aa ], [ %i.gl, %.loopexit121.loopexit ]
  %.292 = phi i32 [ %.191.lcssa, %.loopexit ], [ %.090145, %bb.w ], [ %.090145, %.fold.split ], [ %.090145, %bb.ac ], [ %.090145, %bb.ad ], [ %.090145, %bb.v ], [ %.090145, %bb.ae ], [ %.090145, %bb.af ], [ %.090145, %bb.aa ], [ %.090145, %.loopexit121.loopexit ]
  %.389 = phi i32 [ %i.gj, %.loopexit ], [ %i.eq, %bb.w ], [ %.086146, %.fold.split ], [ %.086146, %bb.ac ], [ %.086146, %bb.ad ], [ %.086146, %bb.v ], [ %.086146, %bb.ae ], [ %.086146, %bb.af ], [ %.086146, %bb.aa ], [ %i.gq, %.loopexit121.loopexit ]
  %i.gy = icmp sgt i32 %.3105, 0
  %i.gz = icmp samesign ult i64 %indvars.iv.next170, %i.ek
  %i.ha = select i1 %i.gy, i1 %i.gz, i1 false
  br i1 %i.ha, label %bb.v, label %._crit_edge149, !llvm.loop !110

._crit_edge149:                                   ; preds = %.loopexit121, %bb.u
  %.0102.lcssa = phi i32 [ %i.ax, %bb.u ], [ %.3105, %.loopexit121 ]
  %i.hb = icmp slt i32 %.0102.lcssa, 0
  br i1 %i.hb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge149
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hd = tail call i64 @fwrite(ptr nonnull @.str.5, i64 59, i64 1, ptr %i.hc) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

bb.ah:                                            ; preds = %._crit_edge149
  %i.he = load ptr, ptr %4, align 8, !tbaa !51
  tail call void @free(ptr noundef %i.he) #12
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.hg) #12
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.hi) #12
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !61
  tail call void @free(ptr noundef %i.hk) #12
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !66
  tail call void @free(ptr noundef %i.hm) #12
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.ho) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decompress_base_block(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16385 x i32], align 16           ; 10 uses
  %i.b = alloca [16385 x i32], align 16           ; 4 uses
  %i.c = alloca [16385 x i32], align 16           ; 10 uses
  %i.d = alloca [16385 x i32], align 16           ; 4 uses
  %i.e = alloca [16385 x i32], align 16           ; 10 uses
  %i.f = alloca [16385 x i32], align 16           ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.h = load i32, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.i, ptr %0, align 8, !tbaa !106
  %i.j = sext i32 %1 to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.k, ptr noundef nonnull @.str, i32 noundef 1879) #12 ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !20
  %i.m = load ptr, ptr %0, align 8, !tbaa !106    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.n = load i16, ptr %i.m, align 1              ; 7 uses
  %i.o = zext i16 %i.n to i32                     ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !52
  %i.r = zext i8 %i.q to i32
  %i.s = icmp ugt i16 %i.n, 16384
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.10, i32 noundef %i.o) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.v = sdiv i32 %1, 3
  %.off.i = add i32 %1, 2
  %.not109.i = icmp ult i32 %.off.i, 5
  %i.w = add nuw nsw i32 %i.o, 1                  ; 5 uses
  %i.x = shl nuw nsw i32 %i.w, 2
  %i.y = zext nneg i32 %i.x to i64                ; 3 uses
  %.not102.i = icmp eq i16 %i.n, 0
  %wide.trip.count.i.i = zext nneg i16 %i.n to i64 ; 4 uses
  br i1 %.not109.i, label %base_decompress.exit, label %.lr.ph117.preheader.i

.lr.ph117.preheader.i:                            ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.aa = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.ab = add nuw nsw i64 %i.aa, 4
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.ac = icmp eq i16 %i.n, 1
  %unroll_iter = and i64 %wide.trip.count.i.i, 32766
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod16 = trunc i16 %i.n to i1
  br label %.lr.ph117.i

.lr.ph117.i:                                      ; preds = %._crit_edge118.i, %.lr.ph117.preheader.i
  %.0120.i = phi ptr [ %i.fb, %._crit_edge118.i ], [ %i.z, %.lr.ph117.preheader.i ]
  %.059119.i = phi i32 [ %i.fk, %._crit_edge118.i ], [ 0, %.lr.ph117.preheader.i ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph117.i
  %.1115.i = phi ptr [ %.0120.i, %.lr.ph117.i ], [ %i.fb, %._crit_edge.i ] ; 3 uses
  %.061114.i = phi i32 [ 0, %.lr.ph117.i ], [ %.162.i, %._crit_edge.i ]
  %.063113.i = phi i32 [ 0, %.lr.ph117.i ], [ %i.bm, %._crit_edge.i ] ; 2 uses
  %.065112.i = phi i32 [ %.059119.i, %.lr.ph117.i ], [ %i.fi, %._crit_edge.i ] ; 2 uses
  %.066111.i = phi i32 [ %i.v, %.lr.ph117.i ], [ %i.fj, %._crit_edge.i ] ; 11 uses
  %.067110.i = phi i32 [ 0, %.lr.ph117.i ], [ %.269.i, %._crit_edge.i ]
  %i.ad = icmp eq i32 %.063113.i, 0
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %.1115.i, align 1         ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.1115.i, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, i8 0, i64 %i.y, i1 false)
  br i1 %.not102.i, label %base_bytes.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = add i32 %i.ae, -1                       ; 2 uses
  call void @Ptngc_largeint_add(i32 noundef %i.ag, ptr noundef nonnull %i.c, i32 noundef %i.w) #12
  %cond = icmp eq i16 %i.n, 1
  br i1 %cond, label %.lr.ph33.i.i.epil.preheader, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.f, %.peel.next.i.i
  %.02228.i.i = phi i32 [ %i.ah, %.peel.next.i.i ], [ 1, %bb.f ]
  call void @Ptngc_largeint_mul(i32 noundef %i.ae, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.w) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, ptr noundef nonnull align 16 dereferenceable(1) %i.d, i64 %i.y, i1 false)
  call void @Ptngc_largeint_add(i32 noundef %i.ag, ptr noundef nonnull %i.c, i32 noundef %i.w) #12
  %i.ah = add nuw nsw i32 %.02228.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ah, %i.o
  br i1 %exitcond.not.i.i, label %.lr.ph33.i.i.preheader, label %.peel.next.i.i, !llvm.loop !94

.lr.ph33.i.i.preheader:                           ; preds = %.peel.next.i.i
  br i1 %i.ac, label %.lr.ph33.i.i.epil.preheader, label %.lr.ph33.i.i

.lr.ph33.i.i:                                     ; preds = %.lr.ph33.i.i.preheader, %.loopexit.i.i.1
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.loopexit.i.i.1 ], [ 0, %.lr.ph33.i.i.preheader ] ; 4 uses
  %.032.i.i = phi i32 [ %.3.i.i.1, %.loopexit.i.i.1 ], [ 0, %.lr.ph33.i.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.loopexit.i.i.1 ], [ 0, %.lr.ph33.i.i.preheader ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !8  ; 5 uses
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph33.i.i
  %i.ak = and i32 %i.aj, 255
  %.not25.i.i = icmp eq i32 %i.ak, 0
  %indvars.iv.i.tr.i = trunc i64 %indvars.iv.i.i to i32
  %i.al = shl i32 %indvars.iv.i.tr.i, 2           ; 4 uses
  %i.am = or disjoint i32 %i.al, 1
  %.2.i.i = select i1 %.not25.i.i, i32 %.032.i.i, i32 %i.am
  %i.an = and i32 %i.aj, 65280
  %.not25.1.i.i = icmp eq i32 %i.an, 0
  %i.ao = or disjoint i32 %i.al, 2
  %.2.1.i.i = select i1 %.not25.1.i.i, i32 %.2.i.i, i32 %i.ao
  %i.ap = and i32 %i.aj, 16711680
  %.not25.2.i.i = icmp eq i32 %i.ap, 0
  %i.aq = or disjoint i32 %i.al, 3
  %.2.2.i.i = select i1 %.not25.2.i.i, i32 %.2.1.i.i, i32 %i.aq
  %.not25.3.i.i = icmp ult i32 %i.aj, 16777216
  %i.ar = or disjoint i32 %i.al, 4
  %.2.3.i.i = select i1 %.not25.3.i.i, i32 %.2.2.i.i, i32 %i.ar
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %.lr.ph33.i.i
  %.3.i.i = phi i32 [ %.032.i.i, %.lr.ph33.i.i ], [ %.2.3.i.i, %.preheader.i.i ] ; 2 uses
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8  ; 5 uses
  %.not.i.i.1 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.1, label %.loopexit.i.i.1, label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %.loopexit.i.i
  %i.au = and i32 %i.at, 255
  %.not25.i.i.1 = icmp eq i32 %i.au, 0
  %indvars.iv.i.tr.i.1 = trunc i64 %indvars.iv.next.i.i to i32
  %i.av = shl i32 %indvars.iv.i.tr.i.1, 2         ; 4 uses
  %i.aw = or disjoint i32 %i.av, 1
  %.2.i.i.1 = select i1 %.not25.i.i.1, i32 %.3.i.i, i32 %i.aw
  %i.ax = and i32 %i.at, 65280
  %.not25.1.i.i.1 = icmp eq i32 %i.ax, 0
  %i.ay = or disjoint i32 %i.av, 2
  %.2.1.i.i.1 = select i1 %.not25.1.i.i.1, i32 %.2.i.i.1, i32 %i.ay
  %i.az = and i32 %i.at, 16711680
  %.not25.2.i.i.1 = icmp eq i32 %i.az, 0
  %i.ba = or disjoint i32 %i.av, 3
  %.2.2.i.i.1 = select i1 %.not25.2.i.i.1, i32 %.2.1.i.i.1, i32 %i.ba
  %.not25.3.i.i.1 = icmp ult i32 %i.at, 16777216
  %i.bb = add i32 %i.av, 4
  %.2.3.i.i.1 = select i1 %.not25.3.i.i.1, i32 %.2.2.i.i.1, i32 %i.bb
  br label %.loopexit.i.i.1

.loopexit.i.i.1:                                  ; preds = %.preheader.i.i.1, %.loopexit.i.i
  %.3.i.i.1 = phi i32 [ %.3.i.i, %.loopexit.i.i ], [ %.2.3.i.i.1, %.preheader.i.i.1 ] ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %base_bytes.exit.i.loopexit.unr-lcssa, label %.lr.ph33.i.i, !llvm.loop !96

base_bytes.exit.i.loopexit.unr-lcssa:             ; preds = %.loopexit.i.i.1
  br i1 %lcmp.mod.not, label %base_bytes.exit.i, label %.lr.ph33.i.i.epil.preheader

.lr.ph33.i.i.epil.preheader:                      ; preds = %bb.f, %base_bytes.exit.i.loopexit.unr-lcssa, %.lr.ph33.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph33.i.i.preheader ], [ %indvars.iv.next.i.i.1, %base_bytes.exit.i.loopexit.unr-lcssa ], [ 0, %bb.f ] ; 2 uses
  %.032.i.i.epil.init = phi i32 [ 0, %.lr.ph33.i.i.preheader ], [ %.3.i.i.1, %base_bytes.exit.i.loopexit.unr-lcssa ], [ 0, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod16)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i.epil.init
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8  ; 5 uses
  %.not.i.i.epil = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.epil, label %base_bytes.exit.i, label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.lr.ph33.i.i.epil.preheader
  %i.be = and i32 %i.bd, 255
  %.not25.i.i.epil = icmp eq i32 %i.be, 0
  %indvars.iv.i.tr.i.epil = trunc i64 %indvars.iv.i.i.epil.init to i32
  %i.bf = shl i32 %indvars.iv.i.tr.i.epil, 2      ; 4 uses
  %i.bg = or disjoint i32 %i.bf, 1
  %.2.i.i.epil = select i1 %.not25.i.i.epil, i32 %.032.i.i.epil.init, i32 %i.bg
  %i.bh = and i32 %i.bd, 65280
  %.not25.1.i.i.epil = icmp eq i32 %i.bh, 0
  %i.bi = or disjoint i32 %i.bf, 2
  %.2.1.i.i.epil = select i1 %.not25.1.i.i.epil, i32 %.2.i.i.epil, i32 %i.bi
  %i.bj = and i32 %i.bd, 16711680
  %.not25.2.i.i.epil = icmp eq i32 %i.bj, 0
  %i.bk = or disjoint i32 %i.bf, 3
  %.2.2.i.i.epil = select i1 %.not25.2.i.i.epil, i32 %.2.1.i.i.epil, i32 %i.bk
  %.not25.3.i.i.epil = icmp ult i32 %i.bd, 16777216
  %i.bl = add i32 %i.bf, 4
  %.2.3.i.i.epil = select i1 %.not25.3.i.i.epil, i32 %.2.2.i.i.epil, i32 %i.bl
  br label %base_bytes.exit.i

base_bytes.exit.i:                                ; preds = %base_bytes.exit.i.loopexit.unr-lcssa, %.preheader.i.i.epil, %.lr.ph33.i.i.epil.preheader, %bb.e
  %.0.lcssa.i.i = phi i32 [ 0, %bb.e ], [ %.3.i.i.1, %base_bytes.exit.i.loopexit.unr-lcssa ], [ %.032.i.i.epil.init, %.lr.ph33.i.i.epil.preheader ], [ %.2.3.i.i.epil, %.preheader.i.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.g

bb.g:                                             ; preds = %base_bytes.exit.i, %bb.d
  %.168.i = phi i32 [ %.0.lcssa.i.i, %base_bytes.exit.i ], [ %.067110.i, %bb.d ]
  %.164.i = phi i32 [ %i.r, %base_bytes.exit.i ], [ %.063113.i, %bb.d ]
  %.162.i = phi i32 [ %i.ae, %base_bytes.exit.i ], [ %.061114.i, %bb.d ] ; 4 uses
  %.2.i = phi ptr [ %i.af, %base_bytes.exit.i ], [ %.1115.i, %bb.d ] ; 6 uses
  %i.bm = add nsw i32 %.164.i, -1
  %i.bn = icmp slt i32 %.066111.i, %i.o
  br i1 %i.bn, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bo = add nsw i32 %.066111.i, 1               ; 4 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 2                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.bq, i1 false)
  %i.br = icmp sgt i32 %.066111.i, 0
  br i1 %i.br, label %bb.i, label %base_bytes.exit101.i

bb.i:                                             ; preds = %bb.h
  %i.bs = add i32 %.162.i, -1                     ; 2 uses
  call void @Ptngc_largeint_add(i32 noundef %i.bs, ptr noundef nonnull %i.a, i32 noundef %i.bo) #12
  %exitcond.peel.not.i78.i = icmp eq i32 %.066111.i, 1
  br i1 %exitcond.peel.not.i78.i, label %.lr.ph33.preheader.i82.i, label %.peel.next.i79.i

.lr.ph33.preheader.i82.i:                         ; preds = %.peel.next.i79.i, %bb.i
  %wide.trip.count.i83.i = zext nneg i32 %.066111.i to i64 ; 2 uses
  %xtraiter17 = and i64 %wide.trip.count.i83.i, 1
  %i.bt = icmp eq i32 %.066111.i, 1
  br i1 %i.bt, label %.lr.ph33.i84.i.epil.preheader, label %.lr.ph33.preheader.i82.i.new

.lr.ph33.preheader.i82.i.new:                     ; preds = %.lr.ph33.preheader.i82.i
  %unroll_iter21 = and i64 %wide.trip.count.i83.i, 2147483646
  br label %.lr.ph33.i84.i

.peel.next.i79.i:                                 ; preds = %bb.i, %.peel.next.i79.i
  %.02228.i80.i = phi i32 [ %i.bu, %.peel.next.i79.i ], [ 1, %bb.i ]
  call void @Ptngc_largeint_mul(i32 noundef %.162.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.bo) #12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.bq, i1 false)
  call void @Ptngc_largeint_add(i32 noundef %i.bs, ptr noundef nonnull %i.a, i32 noundef %i.bo) #12
  %i.bu = add nuw nsw i32 %.02228.i80.i, 1        ; 2 uses
  %exitcond.not.i81.i = icmp eq i32 %i.bu, %.066111.i
  br i1 %exitcond.not.i81.i, label %.lr.ph33.preheader.i82.i, label %.peel.next.i79.i, !llvm.loop !94

.lr.ph33.i84.i:                                   ; preds = %.loopexit.i97.i.1, %.lr.ph33.preheader.i82.i.new
  %indvars.iv.i85.i = phi i64 [ 0, %.lr.ph33.preheader.i82.i.new ], [ %indvars.iv.next.i99.i.1, %.loopexit.i97.i.1 ] ; 4 uses
  %.032.i86.i = phi i32 [ 0, %.lr.ph33.preheader.i82.i.new ], [ %.3.i98.i.1, %.loopexit.i97.i.1 ] ; 2 uses
  %niter22 = phi i64 [ 0, %.lr.ph33.preheader.i82.i.new ], [ %niter22.next.1, %.loopexit.i97.i.1 ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i85.i
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !8  ; 5 uses
  %.not.i87.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i87.i, label %.loopexit.i97.i, label %.preheader.i88.i

.preheader.i88.i:                                 ; preds = %.lr.ph33.i84.i
  %i.bx = and i32 %i.bw, 255
  %.not25.i89.i = icmp eq i32 %i.bx, 0
  %indvars.iv.i85.tr.i = trunc i64 %indvars.iv.i85.i to i32
  %i.by = shl i32 %indvars.iv.i85.tr.i, 2         ; 4 uses
  %i.bz = or disjoint i32 %i.by, 1
  %.2.i90.i = select i1 %.not25.i89.i, i32 %.032.i86.i, i32 %i.bz
  %i.ca = and i32 %i.bw, 65280
  %.not25.1.i91.i = icmp eq i32 %i.ca, 0
  %i.cb = or disjoint i32 %i.by, 2
  %.2.1.i92.i = select i1 %.not25.1.i91.i, i32 %.2.i90.i, i32 %i.cb
  %i.cc = and i32 %i.bw, 16711680
  %.not25.2.i93.i = icmp eq i32 %i.cc, 0
  %i.cd = or disjoint i32 %i.by, 3
  %.2.2.i94.i = select i1 %.not25.2.i93.i, i32 %.2.1.i92.i, i32 %i.cd
  %.not25.3.i95.i = icmp ult i32 %i.bw, 16777216
  %i.ce = or disjoint i32 %i.by, 4
  %.2.3.i96.i = select i1 %.not25.3.i95.i, i32 %.2.2.i94.i, i32 %i.ce
  br label %.loopexit.i97.i

.loopexit.i97.i:                                  ; preds = %.preheader.i88.i, %.lr.ph33.i84.i
  %.3.i98.i = phi i32 [ %.032.i86.i, %.lr.ph33.i84.i ], [ %.2.3.i96.i, %.preheader.i88.i ] ; 2 uses
  %indvars.iv.next.i99.i = or disjoint i64 %indvars.iv.i85.i, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i99.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !8  ; 5 uses
  %.not.i87.i.1 = icmp eq i32 %i.cg, 0
  br i1 %.not.i87.i.1, label %.loopexit.i97.i.1, label %.preheader.i88.i.1

.preheader.i88.i.1:                               ; preds = %.loopexit.i97.i
  %i.ch = and i32 %i.cg, 255
  %.not25.i89.i.1 = icmp eq i32 %i.ch, 0
  %indvars.iv.i85.tr.i.1 = trunc i64 %indvars.iv.next.i99.i to i32
  %i.ci = shl i32 %indvars.iv.i85.tr.i.1, 2       ; 4 uses
  %i.cj = or disjoint i32 %i.ci, 1
  %.2.i90.i.1 = select i1 %.not25.i89.i.1, i32 %.3.i98.i, i32 %i.cj
  %i.ck = and i32 %i.cg, 65280
  %.not25.1.i91.i.1 = icmp eq i32 %i.ck, 0
  %i.cl = or disjoint i32 %i.ci, 2
  %.2.1.i92.i.1 = select i1 %.not25.1.i91.i.1, i32 %.2.i90.i.1, i32 %i.cl
  %i.cm = and i32 %i.cg, 16711680
  %.not25.2.i93.i.1 = icmp eq i32 %i.cm, 0
  %i.cn = or disjoint i32 %i.ci, 3
  %.2.2.i94.i.1 = select i1 %.not25.2.i93.i.1, i32 %.2.1.i92.i.1, i32 %i.cn
  %.not25.3.i95.i.1 = icmp ult i32 %i.cg, 16777216
  %i.co = add i32 %i.ci, 4
  %.2.3.i96.i.1 = select i1 %.not25.3.i95.i.1, i32 %.2.2.i94.i.1, i32 %i.co
  br label %.loopexit.i97.i.1

.loopexit.i97.i.1:                                ; preds = %.preheader.i88.i.1, %.loopexit.i97.i
  %.3.i98.i.1 = phi i32 [ %.3.i98.i, %.loopexit.i97.i ], [ %.2.3.i96.i.1, %.preheader.i88.i.1 ] ; 3 uses
  %indvars.iv.next.i99.i.1 = add nuw nsw i64 %indvars.iv.i85.i, 2 ; 2 uses
  %niter22.next.1 = add i64 %niter22, 2           ; 2 uses
  %niter22.ncmp.1 = icmp eq i64 %niter22.next.1, %unroll_iter21
  br i1 %niter22.ncmp.1, label %base_bytes.exit101.i.loopexit.unr-lcssa, label %.lr.ph33.i84.i, !llvm.loop !96

base_bytes.exit101.i.loopexit.unr-lcssa:          ; preds = %.loopexit.i97.i.1
  %lcmp.mod18.not = icmp eq i64 %xtraiter17, 0
  br i1 %lcmp.mod18.not, label %base_bytes.exit101.i, label %.lr.ph33.i84.i.epil.preheader

.lr.ph33.i84.i.epil.preheader:                    ; preds = %base_bytes.exit101.i.loopexit.unr-lcssa, %.lr.ph33.preheader.i82.i
  %indvars.iv.i85.i.epil.init = phi i64 [ 0, %.lr.ph33.preheader.i82.i ], [ %indvars.iv.next.i99.i.1, %base_bytes.exit101.i.loopexit.unr-lcssa ] ; 2 uses
  %.032.i86.i.epil.init = phi i32 [ 0, %.lr.ph33.preheader.i82.i ], [ %.3.i98.i.1, %base_bytes.exit101.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod20 = trunc i32 %.066111.i to i1
  call void @llvm.assume(i1 %lcmp.mod20)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i85.i.epil.init
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !8  ; 5 uses
  %.not.i87.i.epil = icmp eq i32 %i.cq, 0
  br i1 %.not.i87.i.epil, label %base_bytes.exit101.i, label %.preheader.i88.i.epil

.preheader.i88.i.epil:                            ; preds = %.lr.ph33.i84.i.epil.preheader
  %i.cr = and i32 %i.cq, 255
  %.not25.i89.i.epil = icmp eq i32 %i.cr, 0
  %indvars.iv.i85.tr.i.epil = trunc i64 %indvars.iv.i85.i.epil.init to i32
  %i.cs = shl i32 %indvars.iv.i85.tr.i.epil, 2    ; 4 uses
  %i.ct = or disjoint i32 %i.cs, 1
  %.2.i90.i.epil = select i1 %.not25.i89.i.epil, i32 %.032.i86.i.epil.init, i32 %i.ct
  %i.cu = and i32 %i.cq, 65280
  %.not25.1.i91.i.epil = icmp eq i32 %i.cu, 0
  %i.cv = or disjoint i32 %i.cs, 2
  %.2.1.i92.i.epil = select i1 %.not25.1.i91.i.epil, i32 %.2.i90.i.epil, i32 %i.cv
  %i.cw = and i32 %i.cq, 16711680
  %.not25.2.i93.i.epil = icmp eq i32 %i.cw, 0
  %i.cx = or disjoint i32 %i.cs, 3
  %.2.2.i94.i.epil = select i1 %.not25.2.i93.i.epil, i32 %.2.1.i92.i.epil, i32 %i.cx
  %.not25.3.i95.i.epil = icmp ult i32 %i.cq, 16777216
  %i.cy = add i32 %i.cs, 4
  %.2.3.i96.i.epil = select i1 %.not25.3.i95.i.epil, i32 %.2.2.i94.i.epil, i32 %i.cy
  br label %base_bytes.exit101.i

base_bytes.exit101.i:                             ; preds = %base_bytes.exit101.i.loopexit.unr-lcssa, %.preheader.i88.i.epil, %.lr.ph33.i84.i.epil.preheader, %bb.h
  %.0.lcssa.i77.i = phi i32 [ 0, %bb.h ], [ %.3.i98.i.1, %base_bytes.exit101.i.loopexit.unr-lcssa ], [ %.032.i86.i.epil.init, %.lr.ph33.i84.i.epil.preheader ], [ %.2.3.i96.i.epil, %.preheader.i88.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.j

bb.j:                                             ; preds = %base_bytes.exit101.i, %bb.g
  %.269.i = phi i32 [ %.0.lcssa.i77.i, %base_bytes.exit101.i ], [ %.168.i, %bb.g ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.e, i8 0, i64 %i.y, i1 false)
  %i.cz = sdiv i32 %.269.i, 4
  %.not75.i = icmp sle i32 %i.cz, %i.o
  %i.da = icmp sgt i32 %.269.i, 0
  %or.cond.i = and i1 %i.da, %.not75.i
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %.loopexit103.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %wide.trip.count.i = zext nneg i32 %.269.i to i64 ; 2 uses
  %xtraiter23 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.db = icmp ult i32 %.269.i, 4
  br i1 %i.db, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter26 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 9 uses
  %niter27 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter27.next.3, %.lr.ph.i ]
  %i.dc = lshr exact i64 %indvars.iv.i, 2
  %i.dd = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !52
  %i.df = zext i8 %i.de to i32
  %i.dg = and i64 %i.dc, 1073741823
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !8
  %i.dj = or i32 %i.di, %i.df
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !8
  %i.dk = lshr exact i64 %indvars.iv.i, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !52
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 8
  %i.dq = and i64 %i.dk, 1073741823
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !8
  %i.dt = or i32 %i.dp, %i.ds
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !8
  %i.du = lshr exact i64 %indvars.iv.i, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !52
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 16
  %i.ea = and i64 %i.du, 1073741823
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !8
  %i.ed = or i32 %i.dz, %i.ec
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !8
  %i.ee = lshr exact i64 %indvars.iv.i, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !52
  %i.ei = zext i8 %i.eh to i32
  %i.ej = shl nuw i32 %i.ei, 24
  %i.ek = and i64 %i.ee, 1073741823
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !8
  %i.en = or i32 %i.ej, %i.em
  store i32 %i.en, ptr %i.el, align 4, !tbaa !8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter27.next.3 = add i64 %niter27, 4           ; 2 uses
  %niter27.ncmp.3 = icmp eq i64 %niter27.next.3, %unroll_iter26
  br i1 %niter27.ncmp.3, label %.loopexit103.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !111

.loopexit103.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  %lcmp.mod24.not = icmp eq i64 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.loopexit103.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit103.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.loopexit103.i.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter23, 0
  call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.eo = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  %i.ep = lshr i64 %indvars.iv.i.epil, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i.epil
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !52
  %i.es = zext i8 %i.er to i32
  %i.et = shl i32 %i.eo, 3
  %i.eu = and i32 %i.et, 24
  %i.ev = shl nuw i32 %i.es, %i.eu
  %i.ew = and i64 %i.ep, 1073741823
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !8
  %i.ez = or i32 %i.ev, %i.ey
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter23
  br i1 %epil.iter.cmp.not, label %.loopexit103.i, label %.lr.ph.i.epil, !llvm.loop !112

.loopexit103.i:                                   ; preds = %.loopexit103.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.j
  %i.fa = sext i32 %.269.i to i64
  %i.fb = getelementptr inbounds i8, ptr %.2.i, i64 %i.fa ; 2 uses
  %spec.select.i = call i32 @llvm.smin.i32(i32 %.066111.i, i32 %i.o) ; 3 uses
  %i.fc = icmp sgt i32 %spec.select.i, 0
  br i1 %i.fc, label %.lr.ph108.preheader.i, label %._crit_edge.i

.lr.ph108.preheader.i:                            ; preds = %.loopexit103.i
  %i.fd = sext i32 %.066111.i to i64
  %smin.i = call i64 @llvm.smin.i64(i64 %i.fd, i64 %wide.trip.count.i.i)
  %i.fe = sext i32 %.065112.i to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.l, i64 %i.fe
  br label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %.lr.ph108.i, %.lr.ph108.preheader.i
  %indvars.iv126.i = phi i64 [ %smin.i, %.lr.ph108.preheader.i ], [ %indvars.iv.next127.i, %.lr.ph108.i ] ; 2 uses
  %indvars.iv.next127.i = add nsw i64 %indvars.iv126.i, -1 ; 2 uses
  %i.ff = call i32 @Ptngc_largeint_div(i32 noundef %.162.i, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef %i.w) #12
  %.idx.i = mul i64 %indvars.iv.next127.i, 12
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.idx.i
  store i32 %i.ff, ptr %gep.i, align 4, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.e, ptr noundef nonnull align 16 dereferenceable(1) %i.f, i64 %i.ab, i1 false), !tbaa !8
  %i.fg = icmp sgt i64 %indvars.iv126.i, 1
  br i1 %i.fg, label %.lr.ph108.i, label %._crit_edge.i, !llvm.loop !114

._crit_edge.i:                                    ; preds = %.lr.ph108.i, %.loopexit103.i
  %i.fh = mul nsw i32 %spec.select.i, 3
  %i.fi = add nsw i32 %i.fh, %.065112.i
  %i.fj = sub nsw i32 %.066111.i, %spec.select.i  ; 2 uses
  %.not.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i, label %._crit_edge118.i, label %bb.d, !llvm.loop !115

._crit_edge118.i:                                 ; preds = %._crit_edge.i
  %i.fk = add nuw nsw i32 %.059119.i, 1           ; 2 uses
  %exitcond128.not.i = icmp eq i32 %i.fk, 3
  br i1 %exitcond128.not.i, label %base_decompress.exit.loopexit, label %.lr.ph117.i, !llvm.loop !116

base_decompress.exit.loopexit:                    ; preds = %._crit_edge118.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !106
  br label %base_decompress.exit

base_decompress.exit:                             ; preds = %base_decompress.exit.loopexit, %bb.c
  %i.fl = phi ptr [ %.pre, %base_decompress.exit.loopexit ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.fm = sext i32 %i.h to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 %i.fm
  store ptr %i.fn, ptr %0, align 8, !tbaa !106
  ret void
}
end_hunk_0
begin_hunk_1_@unpack_one_large:bb.a
  %i.p = load i32, ptr %2, align 4, !tbaa !8      ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.q ; 2 uses
  %i.s = load <2 x i32>, ptr %i.r, align 4, !tbaa !8 ; 2 uses
  %i.t = add nsw <2 x i32> %i.s, splat (i32 1)
  %i.u = sdiv <2 x i32> %i.t, splat (i32 2)       ; 2 uses
  %i.v = and <2 x i32> %i.s, splat (i32 1)
  %i.w = icmp eq <2 x i32> %i.v, zeroinitializer
  %i.x = sub nsw <2 x i32> zeroinitializer, %i.u
  %i.y = select <2 x i1> %i.w, <2 x i32> %i.x, <2 x i32> %i.u
  %i.z = load <2 x i32>, ptr %4, align 4, !tbaa !8
  %i.aa = add nsw <2 x i32> %i.y, %i.z
  %i.ab = getelementptr i8, ptr %i.r, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8  ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1
  %i.ae = sdiv i32 %i.ad, 2                       ; 2 uses
  %i.af = and i32 %i.ac, 1
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = sub nsw i32 0, %i.ae
  %spec.select.i57 = select i1 %i.ag, i32 %i.ah, i32 %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %i.ak = add nsw i32 %spec.select.i57, %i.aj
  br label %.sink.split

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !66 ; 2 uses
  %.not55 = icmp eq ptr %i.am, null
  br i1 %.not55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  %.neg = mul i32 %9, -3
  %i.aq = add i32 %.neg, %7
  %i.ar = mul nuw nsw i32 %8, 3
  %i.as = add i32 %i.aq, %i.ar                    ; 3 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %6, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = load <2 x i32>, ptr %i.ap, align 4, !tbaa !8 ; 2 uses
  %i.ax = add nsw <2 x i32> %i.aw, splat (i32 1)
  %i.ay = sdiv <2 x i32> %i.ax, splat (i32 2)     ; 2 uses
  %i.az = and <2 x i32> %i.aw, splat (i32 1)
  %i.ba = icmp eq <2 x i32> %i.az, zeroinitializer
  %i.bb = sub nsw <2 x i32> zeroinitializer, %i.ay
  %i.bc = select <2 x i1> %i.ba, <2 x i32> %i.bb, <2 x i32> %i.ay
  %i.bd = add i32 %i.as, 1
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %6, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bh = insertelement <2 x i32> poison, i32 %i.av, i64 0
  %i.bi = insertelement <2 x i32> %i.bh, i32 %i.bg, i64 1
  %i.bj = add nsw <2 x i32> %i.bc, %i.bi
  %i.bk = getelementptr i8, ptr %i.ap, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !8  ; 2 uses
  %i.bm = add nsw i32 %i.bl, 1
  %i.bn = sdiv i32 %i.bm, 2                       ; 2 uses
  %i.bo = and i32 %i.bl, 1
  %i.bp = icmp eq i32 %i.bo, 0
  %i.bq = sub nsw i32 0, %i.bn
  %spec.select.i60 = select i1 %i.bp, i32 %i.bq, i32 %i.bn
  %i.br = add i32 %i.as, 2
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !8
  %i.bv = add nsw i32 %spec.select.i60, %i.bu
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.g, %bb.e
  %.sink64 = phi i32 [ %i.p, %bb.e ], [ %i.an, %bb.g ], [ %i.c, %bb.c ]
  %.sink63 = phi ptr [ %2, %bb.e ], [ %3, %bb.g ], [ %1, %bb.c ]
  %.sroa.12.0.ph = phi i32 [ %i.ak, %bb.e ], [ %i.bv, %bb.g ], [ %i.m, %bb.c ]
  %i.bw = phi <2 x i32> [ %i.aa, %bb.e ], [ %i.bj, %bb.g ], [ %i.h, %bb.c ]
  %i.bx = add nsw i32 %.sink64, 3
  store i32 %i.bx, ptr %.sink63, align 4, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %.sroa.12.0 = phi i32 [ 0, %bb.f ], [ %.sroa.12.0.ph, %.sink.split ] ; 2 uses
  %i.by = phi <2 x i32> [ zeroinitializer, %bb.f ], [ %i.bw, %.sink.split ] ; 2 uses
  store <2 x i32> %i.by, ptr %4, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 4
  %i.bz = sext i32 %7 to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bz ; 2 uses
  store <2 x i32> %i.by, ptr %i.ca, align 4, !tbaa !8
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  store i32 %.sroa.12.0, ptr %i.cb, align 4, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare ptr @Ptngc_warnrealloc_x(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @base_bytes(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16385 x i32], align 16           ; 10 uses
  %i.b = alloca [16385 x i32], align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = add nsw i32 %1, 1                        ; 4 uses
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.e, i1 false)
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %0, -1                           ; 2 uses
  call void @Ptngc_largeint_add(i32 noundef %i.g, ptr noundef nonnull %i.a, i32 noundef %i.c) #12
  %exitcond.peel.not = icmp eq i32 %1, 1
  br i1 %exitcond.peel.not, label %.lr.ph33.preheader, label %.peel.next

.lr.ph33.preheader:                               ; preds = %.peel.next, %bb.b
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %1, 1
  br i1 %i.h, label %.lr.ph33.epil.preheader, label %.lr.ph33.preheader.new

.lr.ph33.preheader.new:                           ; preds = %.lr.ph33.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph33

.peel.next:                                       ; preds = %bb.b, %.peel.next
  %.02228 = phi i32 [ %i.i, %.peel.next ], [ 1, %bb.b ]
  call void @Ptngc_largeint_mul(i32 noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.e, i1 false)
  call void @Ptngc_largeint_add(i32 noundef %i.g, ptr noundef nonnull %i.a, i32 noundef %i.c) #12
  %i.i = add nuw nsw i32 %.02228, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.i, %1
  br i1 %exitcond.not, label %.lr.ph33.preheader, label %.peel.next, !llvm.loop !94

.lr.ph33:                                         ; preds = %.loopexit.1, %.lr.ph33.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph33.preheader.new ], [ %indvars.iv.next.1, %.loopexit.1 ] ; 4 uses
  %.032 = phi i32 [ 0, %.lr.ph33.preheader.new ], [ %.3.1, %.loopexit.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph33.preheader.new ], [ %niter.next.1, %.loopexit.1 ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 8, !tbaa !8    ; 5 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph33
  %i.l = shl nuw nsw i64 %indvars.iv, 2           ; 4 uses
  %i.m = and i32 %i.k, 255
  %.not25 = icmp eq i32 %i.m, 0
  %i.n = trunc i64 %i.l to i32
  %i.o = or disjoint i32 %i.n, 1
  %.2 = select i1 %.not25, i32 %.032, i32 %i.o
  %i.p = and i32 %i.k, 65280
  %.not25.1 = icmp eq i32 %i.p, 0
  %i.q = trunc i64 %i.l to i32
  %i.r = or disjoint i32 %i.q, 2
  %.2.1 = select i1 %.not25.1, i32 %.2, i32 %i.r
  %i.s = and i32 %i.k, 16711680
  %.not25.2 = icmp eq i32 %i.s, 0
  %i.t = trunc i64 %i.l to i32
  %i.u = or disjoint i32 %i.t, 3
  %.2.2 = select i1 %.not25.2, i32 %.2.1, i32 %i.u
  %.not25.3 = icmp ult i32 %i.k, 16777216
  %i.v = trunc i64 %i.l to i32
  %i.w = or disjoint i32 %i.v, 4
  %.2.3 = select i1 %.not25.3, i32 %.2.2, i32 %i.w
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.lr.ph33
  %.3 = phi i32 [ %.032, %.lr.ph33 ], [ %.2.3, %.preheader ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8    ; 5 uses
  %.not.1 = icmp eq i32 %i.y, 0
  br i1 %.not.1, label %.loopexit.1, label %.preheader.1

.preheader.1:                                     ; preds = %.loopexit
  %i.z = shl nuw nsw i64 %indvars.iv.next, 2      ; 4 uses
  %i.aa = and i32 %i.y, 255
  %.not25.145 = icmp eq i32 %i.aa, 0
  %i.ab = trunc i64 %i.z to i32
  %i.ac = or disjoint i32 %i.ab, 1
  %.2.146 = select i1 %.not25.145, i32 %.3, i32 %i.ac
  %i.ad = and i32 %i.y, 65280
  %.not25.1.1 = icmp eq i32 %i.ad, 0
  %i.ae = trunc i64 %i.z to i32
  %i.af = or disjoint i32 %i.ae, 2
  %.2.1.1 = select i1 %.not25.1.1, i32 %.2.146, i32 %i.af
  %i.ag = and i32 %i.y, 16711680
  %.not25.2.1 = icmp eq i32 %i.ag, 0
  %i.ah = trunc i64 %i.z to i32
  %i.ai = or disjoint i32 %i.ah, 3
  %.2.2.1 = select i1 %.not25.2.1, i32 %.2.1.1, i32 %i.ai
  %.not25.3.1 = icmp ult i32 %i.y, 16777216
  %i.aj = trunc i64 %i.z to i32
  %i.ak = add i32 %i.aj, 4
  %.2.3.1 = select i1 %.not25.3.1, i32 %.2.2.1, i32 %i.ak
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.preheader.1, %.loopexit
  %.3.1 = phi i32 [ %.3, %.loopexit ], [ %.2.3.1, %.preheader.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph33, !llvm.loop !96

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.loopexit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph33.epil.preheader

.lr.ph33.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph33.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph33.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.032.epil.init = phi i32 [ 0, %.lr.ph33.preheader ], [ %.3.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod44 = trunc i32 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod44)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8  ; 5 uses
  %.not.epil = icmp eq i32 %i.am, 0
  br i1 %.not.epil, label %._crit_edge, label %.preheader.epil

.preheader.epil:                                  ; preds = %.lr.ph33.epil.preheader
  %i.an = shl nuw nsw i64 %indvars.iv.epil.init, 2 ; 4 uses
  %i.ao = and i32 %i.am, 255
  %.not25.epil = icmp eq i32 %i.ao, 0
  %i.ap = trunc i64 %i.an to i32
  %i.aq = or disjoint i32 %i.ap, 1
  %.2.epil = select i1 %.not25.epil, i32 %.032.epil.init, i32 %i.aq
  %i.ar = and i32 %i.am, 65280
  %.not25.1.epil = icmp eq i32 %i.ar, 0
  %i.as = trunc i64 %i.an to i32
  %i.at = or disjoint i32 %i.as, 2
  %.2.1.epil = select i1 %.not25.1.epil, i32 %.2.epil, i32 %i.at
  %i.au = and i32 %i.am, 16711680
  %.not25.2.epil = icmp eq i32 %i.au, 0
  %i.av = trunc i64 %i.an to i32
  %i.aw = or disjoint i32 %i.av, 3
  %.2.2.epil = select i1 %.not25.2.epil, i32 %.2.1.epil, i32 %i.aw
  %.not25.3.epil = icmp ult i32 %i.am, 16777216
  %i.ax = trunc i64 %i.an to i32
  %i.ay = add i32 %i.ax, 4
  %.2.3.epil = select i1 %.not25.3.epil, i32 %.2.2.epil, i32 %i.ay
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader.epil, %.lr.ph33.epil.preheader, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.3.1, %._crit_edge.loopexit.unr-lcssa ], [ %.032.epil.init, %.lr.ph33.epil.preheader ], [ %.2.3.epil, %.preheader.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0.lcssa
}

declare void @Ptngc_largeint_mul(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Ptngc_largeint_add(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bwlzh_decompress(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Ptngc_largeint_div(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umax.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i16> @llvm.masked.load.v3i16.p0(ptr captures(none), <3 x i1>, <3 x i16>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !5, i64 120}
!10 = !{!"xtc3_context", !11, i64 0, !5, i64 8, !5, i64 12, !11, i64 16, !5, i64 24, !5, i64 28, !11, i64 32, !5, i64 40, !5, i64 44, !11, i64 48, !5, i64 56, !5, i64 60, !11, i64 64, !5, i64 72, !5, i64 76, !11, i64 80, !5, i64 88, !5, i64 92, !6, i64 96, !6, i64 108, !5, i64 120, !6, i64 124, !6, i64 12412, !5, i64 16508}
!11 = !{!"p1 int", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!10, !5, i64 16508}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!19 = distinct !{!19, !15}
!20 = !{!11, !11, i64 0}
!21 = distinct !{!21, !15, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"branch_weights", i32 8, i32 24}
!25 = distinct !{!25, !15, !22, !23}
!26 = distinct !{!26, !15, !22, !23}
!27 = distinct !{!27, !15, !23, !22}
!28 = distinct !{!28, !15, !22, !23}
!29 = !{!"branch_weights", i32 4, i32 28}
!30 = distinct !{!30, !15, !22, !23}
!31 = distinct !{!31, !15, !23, !22}
!32 = distinct !{!32, !15, !23, !22}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15, !22, !23}
!35 = distinct !{!35, !15, !22, !23}
!36 = distinct !{!36, !15, !23, !22}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15, !22, !23}
!39 = !{!"branch_weights", i32 8, i32 8}
!40 = distinct !{!40, !15, !22, !23}
!41 = distinct !{!41, !15, !23, !22}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15, !22, !23}
!46 = distinct !{!46, !15, !22, !23}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15, !23, !22}
!49 = distinct !{!49, !15}
!50 = !{!10, !5, i64 8}
!51 = !{!10, !11, i64 0}
!52 = !{!6, !6, i64 0}
!53 = !{!10, !5, i64 24}
!54 = !{!10, !11, i64 16}
!55 = !{!10, !5, i64 40}
!56 = !{!10, !11, i64 32}
!57 = distinct !{!57, !15, !22, !23}
!58 = distinct !{!58, !15, !22, !23}
!59 = distinct !{!59, !15, !23, !22}
!60 = !{!10, !5, i64 56}
!61 = !{!10, !11, i64 48}
!62 = distinct !{!62, !15, !22, !23}
!63 = distinct !{!63, !15, !22, !23}
!64 = distinct !{!64, !15, !23, !22}
!65 = !{!10, !5, i64 72}
!66 = !{!10, !11, i64 64}
!67 = distinct !{!67, !15, !22, !23}
!68 = distinct !{!68, !15, !22, !23}
!69 = distinct !{!69, !15, !23, !22}
!70 = !{!10, !5, i64 88}
!71 = !{!10, !11, i64 80}
end_hunk_1
