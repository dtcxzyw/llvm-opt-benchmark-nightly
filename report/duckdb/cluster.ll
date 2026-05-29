inline.NumInlined: 12
begin_hunk_0_@_ZN13duckdb_brotli29BrotliHistogramReindexLiteralEPNS_13MemoryManagerEPNS_16HistogramLiteralEPjm:bb.a
  %.152.1 = phi i32 [ %i.s, %bb.c ], [ %.152, %.lr.ph62.1 ] ; 3 uses
  %i.t = add nuw i64 %.161, 2                     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph62, !llvm.loop !105

._crit_edge.unr-lcssa:                            ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph62.epil.preheader

.lr.ph62.epil.preheader:                          ; preds = %._crit_edge.unr-lcssa, %.lr.ph62.preheader
  %.161.epil.init = phi i64 [ 0, %.lr.ph62.preheader ], [ %i.t, %._crit_edge.unr-lcssa ]
  %.05160.epil.init = phi i32 [ 0, %.lr.ph62.preheader ], [ %.152.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod91 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.161.epil.init
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %.lr.ph62.epil.preheader
  store i32 %.05160.epil.init, ptr %i.x, align 4, !tbaa !3
  %i.aa = add i32 %.05160.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph62.epil.preheader, %bb.e, %._crit_edge.unr-lcssa
  %.152.lcssa = phi i32 [ %.152.1, %._crit_edge.unr-lcssa ], [ %i.aa, %bb.e ], [ %.05160.epil.init, %.lr.ph62.epil.preheader ] ; 2 uses
  %.not58 = icmp eq i32 %.152.lcssa, 0
  br i1 %.not58, label %.lr.ph66.preheader, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ab = zext i32 %.152.lcssa to i64
  %i.ac = mul nuw nsw i64 %i.ab, 1040
  %i.ad = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.ac)
  br label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %._crit_edge, %bb.f
  %.ph = phi ptr [ null, %._crit_edge ], [ %i.ad, %bb.f ] ; 7 uses
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %bb.h
  %.264 = phi i64 [ %i.ap, %bb.h ], [ 0, %.lr.ph66.preheader ] ; 2 uses
  %.25363 = phi i32 [ %.354, %bb.h ], [ 0, %.lr.ph66.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.264 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3  ; 2 uses
  %i.aj = icmp eq i32 %i.ai, %.25363
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph66
  %i.ak = getelementptr inbounds nuw [1040 x i8], ptr %1, i64 %i.ag
  %i.al = zext i32 %.25363 to i64
  %i.am = getelementptr inbounds nuw [1040 x i8], ptr %.ph, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.am, ptr noundef nonnull align 8 dereferenceable(1040) %i.ak, i64 1040, i1 false), !tbaa.struct !16
  %i.an = add i32 %.25363, 1
  %.pre = load i32, ptr %i.ae, align 4, !tbaa !3
  %.phi.trans.insert = zext i32 %.pre to i64
  %.phi.trans.insert80 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.phi.trans.insert
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph66
  %i.ao = phi i32 [ %.pre81, %bb.g ], [ %i.ai, %.lr.ph66 ]
  %.354 = phi i32 [ %i.an, %bb.g ], [ %.25363, %.lr.ph66 ] ; 5 uses
  store i32 %i.ao, ptr %i.ae, align 4, !tbaa !3
  %i.ap = add nuw i64 %.264, 1                    ; 2 uses
  %exitcond78.not = icmp eq i64 %i.ap, %3
  br i1 %exitcond78.not, label %._crit_edge67, label %.lr.ph66, !llvm.loop !106

._crit_edge67:                                    ; preds = %bb.h
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.b)
  %i.aq = zext i32 %.354 to i64                   ; 4 uses
  %.not77 = icmp eq i32 %.354, 0
  br i1 %.not77, label %._crit_edge72, label %.lr.ph71.preheader

.lr.ph71.preheader:                               ; preds = %._crit_edge67
  %xtraiter92 = and i64 %i.aq, 1
  %i.ar = icmp eq i32 %.354, 1
  br i1 %i.ar, label %.lr.ph71.epil.preheader, label %.lr.ph71.preheader.new

.lr.ph71.preheader.new:                           ; preds = %.lr.ph71.preheader
  %unroll_iter95 = and i64 %i.aq, 4294967294
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71, %.lr.ph71.preheader.new
  %.369 = phi i64 [ 0, %.lr.ph71.preheader.new ], [ %i.ax, %.lr.ph71 ] ; 4 uses
  %niter96 = phi i64 [ 0, %.lr.ph71.preheader.new ], [ %niter96.next.1, %.lr.ph71 ]
  %i.as = getelementptr inbounds nuw [1040 x i8], ptr %.ph, i64 %.369
  %i.at = getelementptr inbounds nuw [1040 x i8], ptr %1, i64 %.369
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.at, ptr noundef nonnull align 8 dereferenceable(1040) %i.as, i64 1040, i1 false), !tbaa.struct !16
  %i.au = or disjoint i64 %.369, 1                ; 2 uses
  %i.av = getelementptr inbounds nuw [1040 x i8], ptr %.ph, i64 %i.au
  %i.aw = getelementptr inbounds nuw [1040 x i8], ptr %1, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.aw, ptr noundef nonnull align 8 dereferenceable(1040) %i.av, i64 1040, i1 false), !tbaa.struct !16
  %i.ax = add nuw nsw i64 %.369, 2                ; 2 uses
  %niter96.next.1 = add i64 %niter96, 2           ; 2 uses
  %niter96.ncmp.1 = icmp eq i64 %niter96.next.1, %unroll_iter95
  br i1 %niter96.ncmp.1, label %._crit_edge72.loopexit.unr-lcssa, label %.lr.ph71, !llvm.loop !107

._crit_edge72.loopexit.unr-lcssa:                 ; preds = %.lr.ph71
  %lcmp.mod93.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod93.not, label %._crit_edge72, label %.lr.ph71.epil.preheader

.lr.ph71.epil.preheader:                          ; preds = %._crit_edge72.loopexit.unr-lcssa, %.lr.ph71.preheader
  %.369.epil.init = phi i64 [ 0, %.lr.ph71.preheader ], [ %i.ax, %._crit_edge72.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod94 = trunc i32 %.354 to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.ay = getelementptr inbounds nuw [1040 x i8], ptr %.ph, i64 %.369.epil.init
  %i.az = getelementptr inbounds nuw [1040 x i8], ptr %1, i64 %.369.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.az, ptr noundef nonnull align 8 dereferenceable(1040) %i.ay, i64 1040, i1 false), !tbaa.struct !16
  br label %._crit_edge72

._crit_edge72:                                    ; preds = %.lr.ph71.epil.preheader, %._crit_edge72.loopexit.unr-lcssa, %._crit_edge67.thread, %._crit_edge67
  %i.ba = phi i64 [ 0, %._crit_edge67.thread ], [ 0, %._crit_edge67 ], [ %i.aq, %._crit_edge72.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph71.epil.preheader ]
  %i.bb = phi ptr [ null, %._crit_edge67.thread ], [ %.ph, %._crit_edge67 ], [ %.ph, %._crit_edge72.loopexit.unr-lcssa ], [ %.ph, %.lr.ph71.epil.preheader ]
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.bb)
  ret i64 %i.ba
}

declare noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13duckdb_brotli30BrotliClusterHistogramsLiteralEPNS_13MemoryManagerEPKNS_16HistogramLiteralEmmPS2_PmPj(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef captures(none) %4, ptr noundef writeonly captures(none) %5, ptr noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0                       ; 2 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl i64 %2, 2                            ; 2 uses
  %i.b = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.a)
  %i.c = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.e = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.f = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 49176) ; 4 uses
  %i.g = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 1040) ; 4 uses
  br i1 %.not, label %._crit_edge127, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader149, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> splat (i32 1), ptr %i.h, align 4, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.i, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.lr.ph121.preheader, label %.lr.ph.preheader149

.lr.ph.preheader149:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0109119.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader149, %.lr.ph
  %.0109119 = phi i64 [ %i.l, %.lr.ph ], [ %.0109119.ph, %.lr.ph.preheader149 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0109119
  store i32 1, ptr %i.k, align 4, !tbaa !3
  %i.l = add nuw i64 %.0109119, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %.lr.ph121.preheader, label %.lr.ph, !llvm.loop !109

.lr.ph121.preheader:                              ; preds = %.lr.ph, %middle.block
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.lr.ph121
  %.1120 = phi i64 [ %i.s, %.lr.ph121 ], [ 0, %.lr.ph121.preheader ] ; 5 uses
  %i.m = getelementptr inbounds nuw [1040 x i8], ptr %1, i64 %.1120 ; 2 uses
  %i.n = getelementptr inbounds nuw [1040 x i8], ptr %4, i64 %.1120 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.n, ptr noundef nonnull align 8 dereferenceable(1040) %i.m, i64 1040, i1 false), !tbaa.struct !16
  %i.o = tail call noundef double @_ZN13duckdb_brotli27BrotliPopulationCostLiteralEPKNS_16HistogramLiteralE(ptr noundef nonnull %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1032
  store double %i.o, ptr %i.p, align 8, !tbaa !9
  %i.q = trunc i64 %.1120 to i32
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.1120
  store i32 %i.q, ptr %i.r, align 4, !tbaa !3
  %i.s = add nuw i64 %.1120, 1                    ; 2 uses
  %exitcond132.not = icmp eq i64 %i.s, %2
  br i1 %exitcond132.not, label %.lr.ph123, label %.lr.ph121, !llvm.loop !110

.lr.ph123:                                        ; preds = %.lr.ph121, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ %2, %.lr.ph121 ] ; 4 uses
  %.0108125 = phi i64 [ %i.ak, %._crit_edge ], [ 0, %.lr.ph121 ] ; 3 uses
  %.2124 = phi i64 [ %i.al, %._crit_edge ], [ 0, %.lr.ph121 ] ; 5 uses
  %umax137 = tail call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  %umin = tail call i64 @llvm.umin.i64(i64 %umax137, i64 64) ; 2 uses
  %i.t = tail call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  %umax = tail call i64 @llvm.umin.i64(i64 %i.t, i64 64)
  %i.u = sub nuw i64 %2, %.2124
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %i.u, i64 64) ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %i.e, i64 %.0108125 ; 2 uses
  %min.iters.check139 = icmp ult i64 %indvars.iv, 8
  br i1 %min.iters.check139, label %scalar.ph138.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %.lr.ph123
  %n.vec142 = and i64 %umin, 120                  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %.2124, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw <4 x i64> splat (i64 4), %broadcast.splat
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph140
  %index144 = phi i64 [ 0, %vector.ph140 ], [ %index.next145, %vector.body143 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph140 ], [ %vec.ind.next, %vector.body143 ] ; 3 uses
  %i.x = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %.reass = add nuw <4 x i64> %vec.ind, %invariant.op
  %i.y = trunc <4 x i64> %i.x to <4 x i32>
  %i.z = trunc <4 x i64> %.reass to <4 x i32>
  %i.aa = getelementptr [4 x i8], ptr %i.w, i64 %index144 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  store <4 x i32> %i.y, ptr %i.aa, align 4, !tbaa !3
  store <4 x i32> %i.z, ptr %i.ab, align 4, !tbaa !3
  %index.next145 = add nuw i64 %index144, 8       ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.ac = icmp eq i64 %index.next145, %n.vec142
  br i1 %i.ac, label %middle.block146, label %vector.body143, !llvm.loop !111

middle.block146:                                  ; preds = %vector.body143
  %cmp.n147 = icmp eq i64 %umin, %n.vec142
  br i1 %cmp.n147, label %._crit_edge, label %scalar.ph138.preheader

scalar.ph138.preheader:                           ; preds = %.lr.ph123, %middle.block146
  %.0107122.ph = phi i64 [ 0, %.lr.ph123 ], [ %n.vec142, %middle.block146 ]
  br label %scalar.ph138

scalar.ph138:                                     ; preds = %scalar.ph138.preheader, %scalar.ph138
  %.0107122 = phi i64 [ %i.ag, %scalar.ph138 ], [ %.0107122.ph, %scalar.ph138.preheader ] ; 3 uses
  %i.ad = add nuw nsw i64 %.0107122, %.2124
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr [4 x i8], ptr %i.w, i64 %.0107122
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !3
  %i.ag = add nuw nsw i64 %.0107122, 1            ; 2 uses
  %exitcond133.not = icmp eq i64 %i.ag, %umax
  br i1 %exitcond133.not, label %._crit_edge, label %scalar.ph138, !llvm.loop !112

._crit_edge:                                      ; preds = %scalar.ph138, %middle.block146
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2124
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0108125
  %i.aj = tail call noundef i64 @_ZN13duckdb_brotli29BrotliHistogramCombineLiteralEPNS_16HistogramLiteralES1_PjS2_S2_PNS_13HistogramPairEmmmm(ptr noundef %4, ptr noundef %i.g, ptr noundef %i.d, ptr noundef %i.ah, ptr noundef %i.ai, ptr noundef %i.f, i64 noundef %i.v, i64 noundef %i.v, i64 noundef %3, i64 noundef 2048)
  %i.ak = add i64 %i.aj, %.0108125                ; 2 uses
  %i.al = add i64 %.2124, 64                      ; 2 uses
  %i.am = icmp ult i64 %i.al, %2
  %indvars.iv.next = add i64 %indvars.iv, -64
  br i1 %i.am, label %.lr.ph123, label %._crit_edge127, !llvm.loop !113

._crit_edge127:                                   ; preds = %._crit_edge, %.thread
  %.0108.lcssa = phi i64 [ 0, %.thread ], [ %i.ak, %._crit_edge ] ; 4 uses
  %i.an = shl i64 %.0108.lcssa, 6
  %i.ao = lshr i64 %.0108.lcssa, 1
  %i.ap = mul i64 %i.ao, %.0108.lcssa
  %i.aq = tail call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.ap) ; 3 uses
  %i.ar = icmp ugt i64 %i.aq, 2047
  br i1 %i.ar, label %.preheader, label %bb.d

.preheader:                                       ; preds = %._crit_edge127, %.preheader
  %.0 = phi i64 [ %i.as, %.preheader ], [ 2048, %._crit_edge127 ] ; 3 uses
  %.not116 = icmp ugt i64 %.0, %i.aq
  %i.as = shl i64 %.0, 1
  br i1 %.not116, label %bb.c, label %.preheader, !llvm.loop !114

bb.c:                                             ; preds = %.preheader
  %i.at = mul i64 %.0, 24
  %i.au = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.at) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49152) %i.au, ptr noundef nonnull align 8 dereferenceable(49152) %i.f, i64 49152, i1 false)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge127
  %.0110 = phi ptr [ %i.au, %bb.c ], [ %i.f, %._crit_edge127 ] ; 2 uses
  %i.av = tail call noundef i64 @_ZN13duckdb_brotli29BrotliHistogramCombineLiteralEPNS_16HistogramLiteralES1_PjS2_S2_PNS_13HistogramPairEmmmm(ptr noundef %4, ptr noundef %i.g, ptr noundef %i.d, ptr noundef %6, ptr noundef %i.e, ptr noundef %.0110, i64 noundef %.0108.lcssa, i64 noundef %2, i64 noundef %3, i64 noundef %i.aq)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %.0110)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.d)
  tail call void @_ZN13duckdb_brotli27BrotliHistogramRemapLiteralEPKNS_16HistogramLiteralEmPKjmPS0_S5_Pj(ptr noundef %1, i64 noundef %2, ptr noundef %i.e, i64 noundef %i.av, ptr noundef %4, ptr noundef %i.g, ptr noundef %6)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.g)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.e)
  %i.aw = tail call noundef i64 @_ZN13duckdb_brotli29BrotliHistogramReindexLiteralEPNS_13MemoryManagerEPNS_16HistogramLiteralEPjm(ptr noundef %0, ptr noundef %4, ptr noundef %6, i64 noundef %2)
  store i64 %i.aw, ptr %5, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13duckdb_brotli34BrotliCompareAndPushToQueueCommandEPKNS_16HistogramCommandEPS0_PKjjjmPNS_13HistogramPairEPm(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, ptr noundef captures(none) %6, ptr noundef captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, %4
  br i1 %i.a, label %.critedge61, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.umax.i32(i32 %4, i32 %3) ; 4 uses
  %spec.select59 = tail call i32 @llvm.umin.i32(i32 %4, i32 %3) ; 4 uses
  %i.b = zext i32 %spec.select59 to i64           ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3    ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = zext i32 %spec.select to i64             ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = add nuw nsw i64 %i.i, %i.e               ; 3 uses
  %i.k = uitofp i32 %i.d to double                ; 2 uses
  %i.l = icmp ult i32 %i.d, 256
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.e
  %i.n = load double, ptr %i.m, align 8, !tbaa !7
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit67

bb.d:                                             ; preds = %bb.b
  %i.o = tail call double @log2(double noundef %i.k) #7, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit67

_ZN13duckdb_brotliL8FastLog2Em.exit67:            ; preds = %bb.c, %bb.d
  %.0.i66 = phi double [ %i.n, %bb.c ], [ %i.o, %bb.d ]
  %i.p = uitofp i32 %i.h to double                ; 2 uses
  %i.q = icmp ult i32 %i.h, 256
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit67
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.i
  %i.s = load double, ptr %i.r, align 8, !tbaa !7
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit65

bb.f:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit67
  %i.t = tail call double @log2(double noundef %i.p) #7, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit65

_ZN13duckdb_brotliL8FastLog2Em.exit65:            ; preds = %bb.e, %bb.f
  %.0.i64 = phi double [ %i.s, %bb.e ], [ %i.t, %bb.f ]
  %i.u = fmul double %.0.i64, %i.p
  %i.v = tail call double @llvm.fmuladd.f64(double %i.k, double %.0.i66, double %i.u)
  %i.w = uitofp nneg i64 %i.j to double           ; 2 uses
  %i.x = icmp samesign ult i64 %i.j, 256
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit65
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.j
  %i.z = load double, ptr %i.y, align 8, !tbaa !7
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit

bb.h:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit65
  %i.aa = tail call double @log2(double noundef %i.w) #7, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit

_ZN13duckdb_brotliL8FastLog2Em.exit:              ; preds = %bb.g, %bb.h
  %.0.i63 = phi double [ %i.z, %bb.g ], [ %i.aa, %bb.h ]
  %i.ab = fneg double %i.w
  %i.ac = tail call noundef double @llvm.fmuladd.f64(double %i.ab, double %.0.i63, double %i.v)
  %i.ad = fmul double %i.ac, 5.000000e-01
  %i.ae = getelementptr inbounds nuw [2832 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2824
  %i.ag = load double, ptr %i.af, align 8, !tbaa !115 ; 2 uses
  %i.ah = fsub double %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw [2832 x i8], ptr %0, i64 %i.f ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2824
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !115 ; 2 uses
  %i.al = fsub double %i.ah, %i.ak                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 2816
  %i.an = load i64, ptr %i.am, align 8, !tbaa !117
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 2816 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !117
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load i64, ptr %7, align 8, !tbaa !13
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %vector.memcheck, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.av = load double, ptr %i.au, align 8, !tbaa !14 ; 2 uses
  %i.aw = fcmp olt double %i.av, 0.000000e+00
  %i.ax = select i1 %i.aw, double 0.000000e+00, double %i.av
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.j, %bb.k
  %i.ay = phi double [ %i.ax, %bb.k ], [ f0x547D42AEA2879F2E, %bb.j ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %1, ptr noundef nonnull align 8 dereferenceable(2832) %i.ae, i64 2832, i1 false), !tbaa.struct !118
  %i.az = load i64, ptr %i.ap, align 8, !tbaa !117
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2816 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !117
  %i.bc = add i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !117
  %i.bd = mul nuw nsw i64 %i.f, 2832
  %i.be = getelementptr i8, ptr %0, i64 %i.bd
  %scevgep = getelementptr i8, ptr %i.be, i64 2816
  %bound0 = icmp ult ptr %1, %scevgep
  %bound1 = icmp ult ptr %i.ai, %i.ba
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <4 x i32>, ptr %i.bf, align 4, !tbaa !3, !alias.scope !119
  %wide.load84 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !3, !alias.scope !119
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %wide.load85 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !3, !alias.scope !122, !noalias !119
  %wide.load86 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !3, !alias.scope !122, !noalias !119
  %i.bj = add <4 x i32> %wide.load85, %wide.load
  %i.bk = add <4 x i32> %wide.load86, %wide.load84
  store <4 x i32> %i.bj, ptr %i.bh, align 4, !tbaa !3, !alias.scope !122, !noalias !119
  store <4 x i32> %i.bk, ptr %i.bi, align 4, !tbaa !3, !alias.scope !122, !noalias !119
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index.next ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !3, !alias.scope !119
  %wide.load84.1 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !3, !alias.scope !119
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load85.1 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !3, !alias.scope !122, !noalias !119
  %wide.load86.1 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !3, !alias.scope !122, !noalias !119
  %i.bp = add <4 x i32> %wide.load85.1, %wide.load.1
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotli29BrotliHistogramReindexCommandEPNS_13MemoryManagerEPNS_16HistogramCommandEPjm:bb.a
  %i.s = add i32 %.152, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph62.1
  %.152.1 = phi i32 [ %i.s, %bb.c ], [ %.152, %.lr.ph62.1 ] ; 3 uses
  %i.t = add nuw i64 %.161, 2                     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph62, !llvm.loop !197

._crit_edge.unr-lcssa:                            ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph62.epil.preheader

.lr.ph62.epil.preheader:                          ; preds = %._crit_edge.unr-lcssa, %.lr.ph62.preheader
  %.161.epil.init = phi i64 [ 0, %.lr.ph62.preheader ], [ %i.t, %._crit_edge.unr-lcssa ]
  %.05160.epil.init = phi i32 [ 0, %.lr.ph62.preheader ], [ %.152.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod91 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.161.epil.init
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %.lr.ph62.epil.preheader
  store i32 %.05160.epil.init, ptr %i.x, align 4, !tbaa !3
  %i.aa = add i32 %.05160.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph62.epil.preheader, %bb.e, %._crit_edge.unr-lcssa
  %.152.lcssa = phi i32 [ %.152.1, %._crit_edge.unr-lcssa ], [ %i.aa, %bb.e ], [ %.05160.epil.init, %.lr.ph62.epil.preheader ] ; 2 uses
  %.not58 = icmp eq i32 %.152.lcssa, 0
  br i1 %.not58, label %.lr.ph66.preheader, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ab = zext i32 %.152.lcssa to i64
  %i.ac = mul nuw nsw i64 %i.ab, 2832
  %i.ad = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.ac)
  br label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %._crit_edge, %bb.f
  %.ph = phi ptr [ null, %._crit_edge ], [ %i.ad, %bb.f ] ; 7 uses
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %bb.h
  %.264 = phi i64 [ %i.ap, %bb.h ], [ 0, %.lr.ph66.preheader ] ; 2 uses
  %.25363 = phi i32 [ %.354, %bb.h ], [ 0, %.lr.ph66.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.264 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3  ; 2 uses
  %i.aj = icmp eq i32 %i.ai, %.25363
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph66
  %i.ak = getelementptr inbounds nuw [2832 x i8], ptr %1, i64 %i.ag
  %i.al = zext i32 %.25363 to i64
  %i.am = getelementptr inbounds nuw [2832 x i8], ptr %.ph, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.am, ptr noundef nonnull align 8 dereferenceable(2832) %i.ak, i64 2832, i1 false), !tbaa.struct !118
  %i.an = add i32 %.25363, 1
  %.pre = load i32, ptr %i.ae, align 4, !tbaa !3
  %.phi.trans.insert = zext i32 %.pre to i64
  %.phi.trans.insert80 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.phi.trans.insert
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph66
  %i.ao = phi i32 [ %.pre81, %bb.g ], [ %i.ai, %.lr.ph66 ]
  %.354 = phi i32 [ %i.an, %bb.g ], [ %.25363, %.lr.ph66 ] ; 5 uses
  store i32 %i.ao, ptr %i.ae, align 4, !tbaa !3
  %i.ap = add nuw i64 %.264, 1                    ; 2 uses
  %exitcond78.not = icmp eq i64 %i.ap, %3
  br i1 %exitcond78.not, label %._crit_edge67, label %.lr.ph66, !llvm.loop !198

._crit_edge67:                                    ; preds = %bb.h
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.b)
  %i.aq = zext i32 %.354 to i64                   ; 4 uses
  %.not77 = icmp eq i32 %.354, 0
  br i1 %.not77, label %._crit_edge72, label %.lr.ph71.preheader

.lr.ph71.preheader:                               ; preds = %._crit_edge67
  %xtraiter92 = and i64 %i.aq, 1
  %i.ar = icmp eq i32 %.354, 1
  br i1 %i.ar, label %.lr.ph71.epil.preheader, label %.lr.ph71.preheader.new

.lr.ph71.preheader.new:                           ; preds = %.lr.ph71.preheader
  %unroll_iter95 = and i64 %i.aq, 4294967294
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71, %.lr.ph71.preheader.new
  %.369 = phi i64 [ 0, %.lr.ph71.preheader.new ], [ %i.ax, %.lr.ph71 ] ; 4 uses
  %niter96 = phi i64 [ 0, %.lr.ph71.preheader.new ], [ %niter96.next.1, %.lr.ph71 ]
  %i.as = getelementptr inbounds nuw [2832 x i8], ptr %.ph, i64 %.369
  %i.at = getelementptr inbounds nuw [2832 x i8], ptr %1, i64 %.369
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.at, ptr noundef nonnull align 8 dereferenceable(2832) %i.as, i64 2832, i1 false), !tbaa.struct !118
  %i.au = or disjoint i64 %.369, 1                ; 2 uses
  %i.av = getelementptr inbounds nuw [2832 x i8], ptr %.ph, i64 %i.au
  %i.aw = getelementptr inbounds nuw [2832 x i8], ptr %1, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.aw, ptr noundef nonnull align 8 dereferenceable(2832) %i.av, i64 2832, i1 false), !tbaa.struct !118
  %i.ax = add nuw nsw i64 %.369, 2                ; 2 uses
  %niter96.next.1 = add i64 %niter96, 2           ; 2 uses
  %niter96.ncmp.1 = icmp eq i64 %niter96.next.1, %unroll_iter95
  br i1 %niter96.ncmp.1, label %._crit_edge72.loopexit.unr-lcssa, label %.lr.ph71, !llvm.loop !199

._crit_edge72.loopexit.unr-lcssa:                 ; preds = %.lr.ph71
  %lcmp.mod93.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod93.not, label %._crit_edge72, label %.lr.ph71.epil.preheader

.lr.ph71.epil.preheader:                          ; preds = %._crit_edge72.loopexit.unr-lcssa, %.lr.ph71.preheader
  %.369.epil.init = phi i64 [ 0, %.lr.ph71.preheader ], [ %i.ax, %._crit_edge72.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod94 = trunc i32 %.354 to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.ay = getelementptr inbounds nuw [2832 x i8], ptr %.ph, i64 %.369.epil.init
  %i.az = getelementptr inbounds nuw [2832 x i8], ptr %1, i64 %.369.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.az, ptr noundef nonnull align 8 dereferenceable(2832) %i.ay, i64 2832, i1 false), !tbaa.struct !118
  br label %._crit_edge72

._crit_edge72:                                    ; preds = %.lr.ph71.epil.preheader, %._crit_edge72.loopexit.unr-lcssa, %._crit_edge67.thread, %._crit_edge67
  %i.ba = phi i64 [ 0, %._crit_edge67.thread ], [ 0, %._crit_edge67 ], [ %i.aq, %._crit_edge72.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph71.epil.preheader ]
  %i.bb = phi ptr [ null, %._crit_edge67.thread ], [ %.ph, %._crit_edge67 ], [ %.ph, %._crit_edge72.loopexit.unr-lcssa ], [ %.ph, %.lr.ph71.epil.preheader ]
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.bb)
  ret i64 %i.ba
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13duckdb_brotli30BrotliClusterHistogramsCommandEPNS_13MemoryManagerEPKNS_16HistogramCommandEmmPS2_PmPj(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef captures(none) %4, ptr noundef writeonly captures(none) %5, ptr noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0                       ; 2 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl i64 %2, 2                            ; 2 uses
  %i.b = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.a)
  %i.c = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.e = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.f = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 49176) ; 4 uses
  %i.g = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 2832) ; 4 uses
  br i1 %.not, label %._crit_edge127, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader149, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> splat (i32 1), ptr %i.h, align 4, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.i, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.lr.ph121.preheader, label %.lr.ph.preheader149

.lr.ph.preheader149:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0109119.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader149, %.lr.ph
  %.0109119 = phi i64 [ %i.l, %.lr.ph ], [ %.0109119.ph, %.lr.ph.preheader149 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0109119
  store i32 1, ptr %i.k, align 4, !tbaa !3
  %i.l = add nuw i64 %.0109119, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %.lr.ph121.preheader, label %.lr.ph, !llvm.loop !201

.lr.ph121.preheader:                              ; preds = %.lr.ph, %middle.block
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.lr.ph121
  %.1120 = phi i64 [ %i.s, %.lr.ph121 ], [ 0, %.lr.ph121.preheader ] ; 5 uses
  %i.m = getelementptr inbounds nuw [2832 x i8], ptr %1, i64 %.1120 ; 2 uses
  %i.n = getelementptr inbounds nuw [2832 x i8], ptr %4, i64 %.1120 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.n, ptr noundef nonnull align 8 dereferenceable(2832) %i.m, i64 2832, i1 false), !tbaa.struct !118
  %i.o = tail call noundef double @_ZN13duckdb_brotli27BrotliPopulationCostCommandEPKNS_16HistogramCommandE(ptr noundef nonnull %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 2824
  store double %i.o, ptr %i.p, align 8, !tbaa !115
  %i.q = trunc i64 %.1120 to i32
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.1120
  store i32 %i.q, ptr %i.r, align 4, !tbaa !3
  %i.s = add nuw i64 %.1120, 1                    ; 2 uses
  %exitcond132.not = icmp eq i64 %i.s, %2
  br i1 %exitcond132.not, label %.lr.ph123, label %.lr.ph121, !llvm.loop !202

.lr.ph123:                                        ; preds = %.lr.ph121, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ %2, %.lr.ph121 ] ; 4 uses
  %.0108125 = phi i64 [ %i.ak, %._crit_edge ], [ 0, %.lr.ph121 ] ; 3 uses
  %.2124 = phi i64 [ %i.al, %._crit_edge ], [ 0, %.lr.ph121 ] ; 5 uses
  %umax137 = tail call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  %umin = tail call i64 @llvm.umin.i64(i64 %umax137, i64 64) ; 2 uses
  %i.t = tail call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  %umax = tail call i64 @llvm.umin.i64(i64 %i.t, i64 64)
  %i.u = sub nuw i64 %2, %.2124
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %i.u, i64 64) ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %i.e, i64 %.0108125 ; 2 uses
  %min.iters.check139 = icmp ult i64 %indvars.iv, 8
  br i1 %min.iters.check139, label %scalar.ph138.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %.lr.ph123
  %n.vec142 = and i64 %umin, 120                  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %.2124, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw <4 x i64> splat (i64 4), %broadcast.splat
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph140
  %index144 = phi i64 [ 0, %vector.ph140 ], [ %index.next145, %vector.body143 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph140 ], [ %vec.ind.next, %vector.body143 ] ; 3 uses
  %i.x = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %.reass = add nuw <4 x i64> %vec.ind, %invariant.op
  %i.y = trunc <4 x i64> %i.x to <4 x i32>
  %i.z = trunc <4 x i64> %.reass to <4 x i32>
  %i.aa = getelementptr [4 x i8], ptr %i.w, i64 %index144 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  store <4 x i32> %i.y, ptr %i.aa, align 4, !tbaa !3
  store <4 x i32> %i.z, ptr %i.ab, align 4, !tbaa !3
  %index.next145 = add nuw i64 %index144, 8       ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.ac = icmp eq i64 %index.next145, %n.vec142
  br i1 %i.ac, label %middle.block146, label %vector.body143, !llvm.loop !203

middle.block146:                                  ; preds = %vector.body143
  %cmp.n147 = icmp eq i64 %umin, %n.vec142
  br i1 %cmp.n147, label %._crit_edge, label %scalar.ph138.preheader

scalar.ph138.preheader:                           ; preds = %.lr.ph123, %middle.block146
  %.0107122.ph = phi i64 [ 0, %.lr.ph123 ], [ %n.vec142, %middle.block146 ]
  br label %scalar.ph138

scalar.ph138:                                     ; preds = %scalar.ph138.preheader, %scalar.ph138
  %.0107122 = phi i64 [ %i.ag, %scalar.ph138 ], [ %.0107122.ph, %scalar.ph138.preheader ] ; 3 uses
  %i.ad = add nuw nsw i64 %.0107122, %.2124
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr [4 x i8], ptr %i.w, i64 %.0107122
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !3
  %i.ag = add nuw nsw i64 %.0107122, 1            ; 2 uses
  %exitcond133.not = icmp eq i64 %i.ag, %umax
  br i1 %exitcond133.not, label %._crit_edge, label %scalar.ph138, !llvm.loop !204

._crit_edge:                                      ; preds = %scalar.ph138, %middle.block146
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2124
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0108125
  %i.aj = tail call noundef i64 @_ZN13duckdb_brotli29BrotliHistogramCombineCommandEPNS_16HistogramCommandES1_PjS2_S2_PNS_13HistogramPairEmmmm(ptr noundef %4, ptr noundef %i.g, ptr noundef %i.d, ptr noundef %i.ah, ptr noundef %i.ai, ptr noundef %i.f, i64 noundef %i.v, i64 noundef %i.v, i64 noundef %3, i64 noundef 2048)
  %i.ak = add i64 %i.aj, %.0108125                ; 2 uses
  %i.al = add i64 %.2124, 64                      ; 2 uses
  %i.am = icmp ult i64 %i.al, %2
  %indvars.iv.next = add i64 %indvars.iv, -64
  br i1 %i.am, label %.lr.ph123, label %._crit_edge127, !llvm.loop !205

._crit_edge127:                                   ; preds = %._crit_edge, %.thread
  %.0108.lcssa = phi i64 [ 0, %.thread ], [ %i.ak, %._crit_edge ] ; 4 uses
  %i.an = shl i64 %.0108.lcssa, 6
  %i.ao = lshr i64 %.0108.lcssa, 1
  %i.ap = mul i64 %i.ao, %.0108.lcssa
  %i.aq = tail call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.ap) ; 3 uses
  %i.ar = icmp ugt i64 %i.aq, 2047
  br i1 %i.ar, label %.preheader, label %bb.d

.preheader:                                       ; preds = %._crit_edge127, %.preheader
  %.0 = phi i64 [ %i.as, %.preheader ], [ 2048, %._crit_edge127 ] ; 3 uses
  %.not116 = icmp ugt i64 %.0, %i.aq
  %i.as = shl i64 %.0, 1
  br i1 %.not116, label %bb.c, label %.preheader, !llvm.loop !206

bb.c:                                             ; preds = %.preheader
  %i.at = mul i64 %.0, 24
  %i.au = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.at) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49152) %i.au, ptr noundef nonnull align 8 dereferenceable(49152) %i.f, i64 49152, i1 false)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge127
  %.0110 = phi ptr [ %i.au, %bb.c ], [ %i.f, %._crit_edge127 ] ; 2 uses
  %i.av = tail call noundef i64 @_ZN13duckdb_brotli29BrotliHistogramCombineCommandEPNS_16HistogramCommandES1_PjS2_S2_PNS_13HistogramPairEmmmm(ptr noundef %4, ptr noundef %i.g, ptr noundef %i.d, ptr noundef %6, ptr noundef %i.e, ptr noundef %.0110, i64 noundef %.0108.lcssa, i64 noundef %2, i64 noundef %3, i64 noundef %i.aq)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %.0110)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.d)
  tail call void @_ZN13duckdb_brotli27BrotliHistogramRemapCommandEPKNS_16HistogramCommandEmPKjmPS0_S5_Pj(ptr noundef %1, i64 noundef %2, ptr noundef %i.e, i64 noundef %i.av, ptr noundef %4, ptr noundef %i.g, ptr noundef %6)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.g)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.e)
  %i.aw = tail call noundef i64 @_ZN13duckdb_brotli29BrotliHistogramReindexCommandEPNS_13MemoryManagerEPNS_16HistogramCommandEPjm(ptr noundef %0, ptr noundef %4, ptr noundef %6, i64 noundef %2)
  store i64 %i.aw, ptr %5, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13duckdb_brotli35BrotliCompareAndPushToQueueDistanceEPKNS_17HistogramDistanceEPS0_PKjjjmPNS_13HistogramPairEPm(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, ptr noundef captures(none) %6, ptr noundef captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, %4
  br i1 %i.a, label %.critedge61, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.umax.i32(i32 %4, i32 %3) ; 4 uses
  %spec.select59 = tail call i32 @llvm.umin.i32(i32 %4, i32 %3) ; 4 uses
  %i.b = zext i32 %spec.select59 to i64           ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3    ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = zext i32 %spec.select to i64             ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = add nuw nsw i64 %i.i, %i.e               ; 3 uses
  %i.k = uitofp i32 %i.d to double                ; 2 uses
  %i.l = icmp ult i32 %i.d, 256
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.e
  %i.n = load double, ptr %i.m, align 8, !tbaa !7
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit67

bb.d:                                             ; preds = %bb.b
  %i.o = tail call double @log2(double noundef %i.k) #7, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit67

_ZN13duckdb_brotliL8FastLog2Em.exit67:            ; preds = %bb.c, %bb.d
  %.0.i66 = phi double [ %i.n, %bb.c ], [ %i.o, %bb.d ]
  %i.p = uitofp i32 %i.h to double                ; 2 uses
  %i.q = icmp ult i32 %i.h, 256
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit67
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.i
  %i.s = load double, ptr %i.r, align 8, !tbaa !7
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit65

bb.f:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit67
  %i.t = tail call double @log2(double noundef %i.p) #7, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit65

_ZN13duckdb_brotliL8FastLog2Em.exit65:            ; preds = %bb.e, %bb.f
  %.0.i64 = phi double [ %i.s, %bb.e ], [ %i.t, %bb.f ]
  %i.u = fmul double %.0.i64, %i.p
  %i.v = tail call double @llvm.fmuladd.f64(double %i.k, double %.0.i66, double %i.u)
  %i.w = uitofp nneg i64 %i.j to double           ; 2 uses
  %i.x = icmp samesign ult i64 %i.j, 256
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit65
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.j
  %i.z = load double, ptr %i.y, align 8, !tbaa !7
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit

bb.h:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit65
  %i.aa = tail call double @log2(double noundef %i.w) #7, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit

_ZN13duckdb_brotliL8FastLog2Em.exit:              ; preds = %bb.g, %bb.h
  %.0.i63 = phi double [ %i.z, %bb.g ], [ %i.aa, %bb.h ]
  %i.ab = fneg double %i.w
  %i.ac = tail call noundef double @llvm.fmuladd.f64(double %i.ab, double %.0.i63, double %i.v)
  %i.ad = fmul double %i.ac, 5.000000e-01
  %i.ae = getelementptr inbounds nuw [2192 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2184
  %i.ag = load double, ptr %i.af, align 8, !tbaa !207 ; 2 uses
  %i.ah = fsub double %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw [2192 x i8], ptr %0, i64 %i.f ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2184
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !207 ; 2 uses
  %i.al = fsub double %i.ah, %i.ak                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 2176
  %i.an = load i64, ptr %i.am, align 8, !tbaa !209
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 2176 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !209
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load i64, ptr %7, align 8, !tbaa !13
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %vector.memcheck, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.av = load double, ptr %i.au, align 8, !tbaa !14 ; 2 uses
  %i.aw = fcmp olt double %i.av, 0.000000e+00
  %i.ax = select i1 %i.aw, double 0.000000e+00, double %i.av
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.j, %bb.k
  %i.ay = phi double [ %i.ax, %bb.k ], [ f0x547D42AEA2879F2E, %bb.j ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %1, ptr noundef nonnull align 8 dereferenceable(2192) %i.ae, i64 2192, i1 false), !tbaa.struct !210
  %i.az = load i64, ptr %i.ap, align 8, !tbaa !209
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2176 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !209
  %i.bc = add i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !209
  %i.bd = mul nuw nsw i64 %i.f, 2192
  %i.be = getelementptr i8, ptr %0, i64 %i.bd
  %scevgep = getelementptr i8, ptr %i.be, i64 2176
  %bound0 = icmp ult ptr %1, %scevgep
  %bound1 = icmp ult ptr %i.ai, %i.ba
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <4 x i32>, ptr %i.bf, align 4, !tbaa !3, !alias.scope !211
  %wide.load84 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !3, !alias.scope !211
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %wide.load85 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !3, !alias.scope !214, !noalias !211
  %wide.load86 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !3, !alias.scope !214, !noalias !211
  %i.bj = add <4 x i32> %wide.load85, %wide.load
  %i.bk = add <4 x i32> %wide.load86, %wide.load84
  store <4 x i32> %i.bj, ptr %i.bh, align 4, !tbaa !3, !alias.scope !214, !noalias !211
  store <4 x i32> %i.bk, ptr %i.bi, align 4, !tbaa !3, !alias.scope !214, !noalias !211
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index.next ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !3, !alias.scope !211
  %wide.load84.1 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !3, !alias.scope !211
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load85.1 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !3, !alias.scope !214, !noalias !211
  %wide.load86.1 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !3, !alias.scope !214, !noalias !211
  %i.bp = add <4 x i32> %wide.load85.1, %wide.load.1
end_hunk_1
begin_hunk_2_@_ZN13duckdb_brotli30BrotliHistogramReindexDistanceEPNS_13MemoryManagerEPNS_17HistogramDistanceEPjm:bb.a
  %i.s = add i32 %.152, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph62.1
  %.152.1 = phi i32 [ %i.s, %bb.c ], [ %.152, %.lr.ph62.1 ] ; 3 uses
  %i.t = add nuw i64 %.161, 2                     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph62, !llvm.loop !289

._crit_edge.unr-lcssa:                            ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph62.epil.preheader

.lr.ph62.epil.preheader:                          ; preds = %._crit_edge.unr-lcssa, %.lr.ph62.preheader
  %.161.epil.init = phi i64 [ 0, %.lr.ph62.preheader ], [ %i.t, %._crit_edge.unr-lcssa ]
  %.05160.epil.init = phi i32 [ 0, %.lr.ph62.preheader ], [ %.152.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod91 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.161.epil.init
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %.lr.ph62.epil.preheader
  store i32 %.05160.epil.init, ptr %i.x, align 4, !tbaa !3
  %i.aa = add i32 %.05160.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph62.epil.preheader, %bb.e, %._crit_edge.unr-lcssa
  %.152.lcssa = phi i32 [ %.152.1, %._crit_edge.unr-lcssa ], [ %i.aa, %bb.e ], [ %.05160.epil.init, %.lr.ph62.epil.preheader ] ; 2 uses
  %.not58 = icmp eq i32 %.152.lcssa, 0
  br i1 %.not58, label %.lr.ph66.preheader, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ab = zext i32 %.152.lcssa to i64
  %i.ac = mul nuw nsw i64 %i.ab, 2192
  %i.ad = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.ac)
  br label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %._crit_edge, %bb.f
  %.ph = phi ptr [ null, %._crit_edge ], [ %i.ad, %bb.f ] ; 7 uses
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %bb.h
  %.264 = phi i64 [ %i.ap, %bb.h ], [ 0, %.lr.ph66.preheader ] ; 2 uses
  %.25363 = phi i32 [ %.354, %bb.h ], [ 0, %.lr.ph66.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.264 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3  ; 2 uses
  %i.aj = icmp eq i32 %i.ai, %.25363
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph66
  %i.ak = getelementptr inbounds nuw [2192 x i8], ptr %1, i64 %i.ag
  %i.al = zext i32 %.25363 to i64
  %i.am = getelementptr inbounds nuw [2192 x i8], ptr %.ph, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.am, ptr noundef nonnull align 8 dereferenceable(2192) %i.ak, i64 2192, i1 false), !tbaa.struct !210
  %i.an = add i32 %.25363, 1
  %.pre = load i32, ptr %i.ae, align 4, !tbaa !3
  %.phi.trans.insert = zext i32 %.pre to i64
  %.phi.trans.insert80 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.phi.trans.insert
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph66
  %i.ao = phi i32 [ %.pre81, %bb.g ], [ %i.ai, %.lr.ph66 ]
  %.354 = phi i32 [ %i.an, %bb.g ], [ %.25363, %.lr.ph66 ] ; 5 uses
  store i32 %i.ao, ptr %i.ae, align 4, !tbaa !3
  %i.ap = add nuw i64 %.264, 1                    ; 2 uses
  %exitcond78.not = icmp eq i64 %i.ap, %3
  br i1 %exitcond78.not, label %._crit_edge67, label %.lr.ph66, !llvm.loop !290

._crit_edge67:                                    ; preds = %bb.h
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.b)
  %i.aq = zext i32 %.354 to i64                   ; 4 uses
  %.not77 = icmp eq i32 %.354, 0
  br i1 %.not77, label %._crit_edge72, label %.lr.ph71.preheader

.lr.ph71.preheader:                               ; preds = %._crit_edge67
  %xtraiter92 = and i64 %i.aq, 1
  %i.ar = icmp eq i32 %.354, 1
  br i1 %i.ar, label %.lr.ph71.epil.preheader, label %.lr.ph71.preheader.new

.lr.ph71.preheader.new:                           ; preds = %.lr.ph71.preheader
  %unroll_iter95 = and i64 %i.aq, 4294967294
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71, %.lr.ph71.preheader.new
  %.369 = phi i64 [ 0, %.lr.ph71.preheader.new ], [ %i.ax, %.lr.ph71 ] ; 4 uses
  %niter96 = phi i64 [ 0, %.lr.ph71.preheader.new ], [ %niter96.next.1, %.lr.ph71 ]
  %i.as = getelementptr inbounds nuw [2192 x i8], ptr %.ph, i64 %.369
  %i.at = getelementptr inbounds nuw [2192 x i8], ptr %1, i64 %.369
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.at, ptr noundef nonnull align 8 dereferenceable(2192) %i.as, i64 2192, i1 false), !tbaa.struct !210
  %i.au = or disjoint i64 %.369, 1                ; 2 uses
  %i.av = getelementptr inbounds nuw [2192 x i8], ptr %.ph, i64 %i.au
  %i.aw = getelementptr inbounds nuw [2192 x i8], ptr %1, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.aw, ptr noundef nonnull align 8 dereferenceable(2192) %i.av, i64 2192, i1 false), !tbaa.struct !210
  %i.ax = add nuw nsw i64 %.369, 2                ; 2 uses
  %niter96.next.1 = add i64 %niter96, 2           ; 2 uses
  %niter96.ncmp.1 = icmp eq i64 %niter96.next.1, %unroll_iter95
  br i1 %niter96.ncmp.1, label %._crit_edge72.loopexit.unr-lcssa, label %.lr.ph71, !llvm.loop !291

._crit_edge72.loopexit.unr-lcssa:                 ; preds = %.lr.ph71
  %lcmp.mod93.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod93.not, label %._crit_edge72, label %.lr.ph71.epil.preheader

.lr.ph71.epil.preheader:                          ; preds = %._crit_edge72.loopexit.unr-lcssa, %.lr.ph71.preheader
  %.369.epil.init = phi i64 [ 0, %.lr.ph71.preheader ], [ %i.ax, %._crit_edge72.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod94 = trunc i32 %.354 to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.ay = getelementptr inbounds nuw [2192 x i8], ptr %.ph, i64 %.369.epil.init
  %i.az = getelementptr inbounds nuw [2192 x i8], ptr %1, i64 %.369.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.az, ptr noundef nonnull align 8 dereferenceable(2192) %i.ay, i64 2192, i1 false), !tbaa.struct !210
  br label %._crit_edge72

._crit_edge72:                                    ; preds = %.lr.ph71.epil.preheader, %._crit_edge72.loopexit.unr-lcssa, %._crit_edge67.thread, %._crit_edge67
  %i.ba = phi i64 [ 0, %._crit_edge67.thread ], [ 0, %._crit_edge67 ], [ %i.aq, %._crit_edge72.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph71.epil.preheader ]
  %i.bb = phi ptr [ null, %._crit_edge67.thread ], [ %.ph, %._crit_edge67 ], [ %.ph, %._crit_edge72.loopexit.unr-lcssa ], [ %.ph, %.lr.ph71.epil.preheader ]
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.bb)
  ret i64 %i.ba
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13duckdb_brotli31BrotliClusterHistogramsDistanceEPNS_13MemoryManagerEPKNS_17HistogramDistanceEmmPS2_PmPj(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef captures(none) %4, ptr noundef writeonly captures(none) %5, ptr noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0                       ; 2 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl i64 %2, 2                            ; 2 uses
  %i.b = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.a)
  %i.c = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.e = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.f = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 49176) ; 4 uses
  %i.g = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 2192) ; 4 uses
  br i1 %.not, label %._crit_edge127, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader149, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> splat (i32 1), ptr %i.h, align 4, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.i, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !292

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.lr.ph121.preheader, label %.lr.ph.preheader149

.lr.ph.preheader149:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0109119.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader149, %.lr.ph
  %.0109119 = phi i64 [ %i.l, %.lr.ph ], [ %.0109119.ph, %.lr.ph.preheader149 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0109119
  store i32 1, ptr %i.k, align 4, !tbaa !3
  %i.l = add nuw i64 %.0109119, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %.lr.ph121.preheader, label %.lr.ph, !llvm.loop !293

.lr.ph121.preheader:                              ; preds = %.lr.ph, %middle.block
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.lr.ph121
  %.1120 = phi i64 [ %i.s, %.lr.ph121 ], [ 0, %.lr.ph121.preheader ] ; 5 uses
  %i.m = getelementptr inbounds nuw [2192 x i8], ptr %1, i64 %.1120 ; 2 uses
  %i.n = getelementptr inbounds nuw [2192 x i8], ptr %4, i64 %.1120 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.n, ptr noundef nonnull align 8 dereferenceable(2192) %i.m, i64 2192, i1 false), !tbaa.struct !210
  %i.o = tail call noundef double @_ZN13duckdb_brotli28BrotliPopulationCostDistanceEPKNS_17HistogramDistanceE(ptr noundef nonnull %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 2184
  store double %i.o, ptr %i.p, align 8, !tbaa !207
  %i.q = trunc i64 %.1120 to i32
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.1120
  store i32 %i.q, ptr %i.r, align 4, !tbaa !3
  %i.s = add nuw i64 %.1120, 1                    ; 2 uses
  %exitcond132.not = icmp eq i64 %i.s, %2
  br i1 %exitcond132.not, label %.lr.ph123, label %.lr.ph121, !llvm.loop !294

.lr.ph123:                                        ; preds = %.lr.ph121, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ %2, %.lr.ph121 ] ; 4 uses
  %.0108125 = phi i64 [ %i.ak, %._crit_edge ], [ 0, %.lr.ph121 ] ; 3 uses
  %.2124 = phi i64 [ %i.al, %._crit_edge ], [ 0, %.lr.ph121 ] ; 5 uses
  %umax137 = tail call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  %umin = tail call i64 @llvm.umin.i64(i64 %umax137, i64 64) ; 2 uses
  %i.t = tail call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  %umax = tail call i64 @llvm.umin.i64(i64 %i.t, i64 64)
  %i.u = sub nuw i64 %2, %.2124
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %i.u, i64 64) ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %i.e, i64 %.0108125 ; 2 uses
  %min.iters.check139 = icmp ult i64 %indvars.iv, 8
  br i1 %min.iters.check139, label %scalar.ph138.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %.lr.ph123
  %n.vec142 = and i64 %umin, 120                  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %.2124, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw <4 x i64> splat (i64 4), %broadcast.splat
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph140
  %index144 = phi i64 [ 0, %vector.ph140 ], [ %index.next145, %vector.body143 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph140 ], [ %vec.ind.next, %vector.body143 ] ; 3 uses
  %i.x = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %.reass = add nuw <4 x i64> %vec.ind, %invariant.op
  %i.y = trunc <4 x i64> %i.x to <4 x i32>
  %i.z = trunc <4 x i64> %.reass to <4 x i32>
  %i.aa = getelementptr [4 x i8], ptr %i.w, i64 %index144 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  store <4 x i32> %i.y, ptr %i.aa, align 4, !tbaa !3
  store <4 x i32> %i.z, ptr %i.ab, align 4, !tbaa !3
  %index.next145 = add nuw i64 %index144, 8       ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.ac = icmp eq i64 %index.next145, %n.vec142
  br i1 %i.ac, label %middle.block146, label %vector.body143, !llvm.loop !295

middle.block146:                                  ; preds = %vector.body143
  %cmp.n147 = icmp eq i64 %umin, %n.vec142
  br i1 %cmp.n147, label %._crit_edge, label %scalar.ph138.preheader

scalar.ph138.preheader:                           ; preds = %.lr.ph123, %middle.block146
  %.0107122.ph = phi i64 [ 0, %.lr.ph123 ], [ %n.vec142, %middle.block146 ]
  br label %scalar.ph138

scalar.ph138:                                     ; preds = %scalar.ph138.preheader, %scalar.ph138
  %.0107122 = phi i64 [ %i.ag, %scalar.ph138 ], [ %.0107122.ph, %scalar.ph138.preheader ] ; 3 uses
  %i.ad = add nuw nsw i64 %.0107122, %.2124
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr [4 x i8], ptr %i.w, i64 %.0107122
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !3
  %i.ag = add nuw nsw i64 %.0107122, 1            ; 2 uses
  %exitcond133.not = icmp eq i64 %i.ag, %umax
  br i1 %exitcond133.not, label %._crit_edge, label %scalar.ph138, !llvm.loop !296

._crit_edge:                                      ; preds = %scalar.ph138, %middle.block146
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2124
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0108125
  %i.aj = tail call noundef i64 @_ZN13duckdb_brotli30BrotliHistogramCombineDistanceEPNS_17HistogramDistanceES1_PjS2_S2_PNS_13HistogramPairEmmmm(ptr noundef %4, ptr noundef %i.g, ptr noundef %i.d, ptr noundef %i.ah, ptr noundef %i.ai, ptr noundef %i.f, i64 noundef %i.v, i64 noundef %i.v, i64 noundef %3, i64 noundef 2048)
  %i.ak = add i64 %i.aj, %.0108125                ; 2 uses
  %i.al = add i64 %.2124, 64                      ; 2 uses
  %i.am = icmp ult i64 %i.al, %2
  %indvars.iv.next = add i64 %indvars.iv, -64
  br i1 %i.am, label %.lr.ph123, label %._crit_edge127, !llvm.loop !297

._crit_edge127:                                   ; preds = %._crit_edge, %.thread
  %.0108.lcssa = phi i64 [ 0, %.thread ], [ %i.ak, %._crit_edge ] ; 4 uses
  %i.an = shl i64 %.0108.lcssa, 6
  %i.ao = lshr i64 %.0108.lcssa, 1
  %i.ap = mul i64 %i.ao, %.0108.lcssa
  %i.aq = tail call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.ap) ; 3 uses
  %i.ar = icmp ugt i64 %i.aq, 2047
  br i1 %i.ar, label %.preheader, label %bb.d

.preheader:                                       ; preds = %._crit_edge127, %.preheader
  %.0 = phi i64 [ %i.as, %.preheader ], [ 2048, %._crit_edge127 ] ; 3 uses
  %.not116 = icmp ugt i64 %.0, %i.aq
  %i.as = shl i64 %.0, 1
  br i1 %.not116, label %bb.c, label %.preheader, !llvm.loop !298

bb.c:                                             ; preds = %.preheader
  %i.at = mul i64 %.0, 24
  %i.au = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.at) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49152) %i.au, ptr noundef nonnull align 8 dereferenceable(49152) %i.f, i64 49152, i1 false)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge127
  %.0110 = phi ptr [ %i.au, %bb.c ], [ %i.f, %._crit_edge127 ] ; 2 uses
  %i.av = tail call noundef i64 @_ZN13duckdb_brotli30BrotliHistogramCombineDistanceEPNS_17HistogramDistanceES1_PjS2_S2_PNS_13HistogramPairEmmmm(ptr noundef %4, ptr noundef %i.g, ptr noundef %i.d, ptr noundef %6, ptr noundef %i.e, ptr noundef %.0110, i64 noundef %.0108.lcssa, i64 noundef %2, i64 noundef %3, i64 noundef %i.aq)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %.0110)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.d)
  tail call void @_ZN13duckdb_brotli28BrotliHistogramRemapDistanceEPKNS_17HistogramDistanceEmPKjmPS0_S5_Pj(ptr noundef %1, i64 noundef %2, ptr noundef %i.e, i64 noundef %i.av, ptr noundef %4, ptr noundef %i.g, ptr noundef %6)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.g)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.e)
  %i.aw = tail call noundef i64 @_ZN13duckdb_brotli30BrotliHistogramReindexDistanceEPNS_13MemoryManagerEPNS_17HistogramDistanceEPjm(ptr noundef %0, ptr noundef %4, ptr noundef %6, i64 noundef %2)
  store i64 %i.aw, ptr %5, align 8, !tbaa !13
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!10, !8, i64 1032}
!10 = !{!"_ZTSN13duckdb_brotli16HistogramLiteralE", !5, i64 0, !11, i64 1024, !8, i64 1032}
!11 = !{!"long", !5, i64 0}
!12 = !{!10, !11, i64 1024}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !8, i64 16}
!15 = !{!"_ZTSN13duckdb_brotli13HistogramPairE", !4, i64 0, !4, i64 4, !8, i64 8, !8, i64 16}
!16 = !{i64 0, i64 1024, !17, i64 1024, i64 8, !13, i64 1032, i64 8, !7}
!17 = !{!5, !5, i64 0}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = !{!22}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !24, !25, !26}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !24, !25}
!28 = !{!15, !4, i64 4}
!29 = !{!15, !4, i64 0}
!30 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 8, !7, i64 16, i64 8, !7}
!31 = distinct !{!31, !24}
!32 = !{!33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!36}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !24, !25, !26}
!38 = distinct !{!38, !24, !25}
!39 = distinct !{!39, !24}
!40 = distinct !{!40, !24}
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!45}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !24, !25, !26}
!47 = distinct !{!47, !24, !25}
!48 = !{!15, !8, i64 8}
!49 = distinct !{!49, !24, !25, !26}
!50 = distinct !{!50, !24, !26, !25}
!51 = distinct !{!51, !24}
!52 = distinct !{!52, !24}
!53 = !{!54}
!54 = distinct !{!54, !55}
!55 = distinct !{!55, !"LVerDomain"}
!56 = !{!57}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !24, !25, !26}
!59 = distinct !{!59, !24, !25}
!60 = distinct !{!60, !24}
!61 = !{!62}
!62 = distinct !{!62, !63}
!63 = distinct !{!63, !"LVerDomain"}
!64 = !{!65}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !24, !25, !26}
!67 = distinct !{!67, !24, !25}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = !{!72}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !24, !25, !26}
!74 = distinct !{!74, !24, !25}
!75 = !{!76}
!76 = distinct !{!76, !77}
!77 = distinct !{!77, !"LVerDomain"}
!78 = !{!79}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !24, !25, !26}
!81 = distinct !{!81, !24, !25}
!82 = distinct !{!82, !24, !83}
!83 = !{!"llvm.loop.unswitch.partial.disable"}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = distinct !{!86, !24}
!87 = distinct !{!87, !24}
!88 = !{!89}
!89 = distinct !{!89, !90}
!90 = distinct !{!90, !"LVerDomain"}
!91 = !{!92}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !24, !25, !26}
!94 = distinct !{!94, !24, !25}
!95 = distinct !{!95, !85}
!96 = distinct !{!96, !24}
!97 = !{!98}
!98 = distinct !{!98, !99}
!99 = distinct !{!99, !"LVerDomain"}
!100 = !{!101}
!101 = distinct !{!101, !99}
end_hunk_2
