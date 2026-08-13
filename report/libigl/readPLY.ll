inline.NumInlined: 12185
inline.NumDeleted: 3089
loop-unroll.NumCompletelyUnrolled: 257
loop-unroll.NumRuntimeUnrolled: 145
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_ZN3igl30_tinyply_tristrips_to_trifacesIaN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm:bb.a
  %.05175.us = phi i64 [ %.253.us.lcssa, %._crit_edge.us ], [ 0, %.preheader72.us.preheader ] ; 2 uses
  %i.e = mul nsw i64 %.05076.us, %3               ; 7 uses
  %invariant.gep.us = getelementptr i8, ptr %i.b, i64 %i.e ; 3 uses
  br i1 %i.d, label %.epil.preheader, label %.preheader72.us.new

.preheader72.us.new:                              ; preds = %.preheader72.us, %bb.g
  %.04974.us = phi i64 [ %i.ae, %bb.g ], [ 0, %.preheader72.us ] ; 4 uses
  %.15273.us = phi i64 [ %.253.us.1, %bb.g ], [ %.05175.us, %.preheader72.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.g ], [ 0, %.preheader72.us ]
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %.04974.us
  %i.f = load i8, ptr %gep.us, align 1, !tbaa !34
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.preheader72.us.new
  %i.h = getelementptr i8, ptr %i.b, i64 %.04974.us ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 1
  %i.j = getelementptr i8, ptr %i.i, i64 %i.e
  %i.k = load i8, ptr %i.j, align 1, !tbaa !34
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.h, i64 2
  %i.n = getelementptr i8, ptr %i.m, i64 %i.e
  %i.o = load i8, ptr %i.n, align 1, !tbaa !34
  %i.p = icmp sgt i8 %i.o, -1
  %i.q = zext i1 %i.p to i64
  %spec.select.us = add i64 %.15273.us, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.preheader72.us.new
  %.253.us = phi i64 [ %.15273.us, %.preheader72.us.new ], [ %spec.select.us, %bb.c ], [ %.15273.us, %bb.b ] ; 3 uses
  %i.r = or disjoint i64 %.04974.us, 1            ; 2 uses
  %gep.us.1 = getelementptr i8, ptr %invariant.gep.us, i64 %i.r
  %i.s = load i8, ptr %gep.us.1, align 1, !tbaa !34
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.b, i64 %i.r     ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 1
  %i.w = getelementptr i8, ptr %i.v, i64 %i.e
  %i.x = load i8, ptr %i.w, align 1, !tbaa !34
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %i.u, i64 2
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.e
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !34
  %i.ac = icmp sgt i8 %i.ab, -1
  %i.ad = zext i1 %i.ac to i64
  %spec.select.us.1 = add i64 %.253.us, %i.ad
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.253.us.1 = phi i64 [ %.253.us, %bb.d ], [ %spec.select.us.1, %bb.f ], [ %.253.us, %bb.e ] ; 3 uses
  %i.ae = add nuw i64 %.04974.us, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader72.us.new, !llvm.loop !345

._crit_edge.us.unr-lcssa:                         ; preds = %bb.g
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader72.us
  %.04974.us.epil.init = phi i64 [ 0, %.preheader72.us ], [ %i.ae, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.15273.us.epil.init = phi i64 [ %.05175.us, %.preheader72.us ], [ %.253.us.1, %._crit_edge.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %gep.us.epil = getelementptr i8, ptr %invariant.gep.us, i64 %.04974.us.epil.init
  %i.af = load i8, ptr %gep.us.epil, align 1, !tbaa !34
  %i.ag = icmp sgt i8 %i.af, -1
  br i1 %i.ag, label %bb.h, label %._crit_edge.us

bb.h:                                             ; preds = %.epil.preheader
  %i.ah = getelementptr i8, ptr %i.b, i64 %.04974.us.epil.init ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.e
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !34
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.i, label %._crit_edge.us

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr i8, ptr %i.ah, i64 2
  %i.an = getelementptr i8, ptr %i.am, i64 %i.e
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !34
  %i.ap = icmp sgt i8 %i.ao, -1
  %i.aq = zext i1 %i.ap to i64
  %spec.select.us.epil = add i64 %.15273.us.epil.init, %i.aq
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.epil.preheader, %bb.h, %bb.i, %._crit_edge.us.unr-lcssa
  %.253.us.lcssa = phi i64 [ %.253.us.1, %._crit_edge.us.unr-lcssa ], [ %.15273.us.epil.init, %.epil.preheader ], [ %spec.select.us.epil, %bb.i ], [ %.15273.us.epil.init, %bb.h ] ; 4 uses
  %i.ar = add nuw i64 %.05076.us, 1               ; 2 uses
  %exitcond91.not = icmp eq i64 %i.ar, %2
  br i1 %exitcond91.not, label %._crit_edge77, label %.preheader72.us, !llvm.loop !346

._crit_edge77:                                    ; preds = %._crit_edge.us
  %i.as = icmp sgt i64 %.253.us.lcssa, 3074457345618258602
  br i1 %i.as, label %bb.j, label %.preheader.preheader

bb.j:                                             ; preds = %._crit_edge77
  %i.at = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.at, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.preheader.preheader:                             ; preds = %._crit_edge77
  %i.au = mul nsw i64 %.253.us.lcssa, 3
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.au, i64 noundef %.253.us.lcssa, i64 noundef 3)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = add i64 %3, -3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.04685 = phi i64 [ %i.ay, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.04784 = phi i64 [ %.2, %._crit_edge ], [ 0, %.preheader.preheader ]
  %i.ax = mul nsw i64 %.04685, %3                 ; 4 uses
  %invariant.gep = getelementptr i8, ptr %i.b, i64 %i.ax ; 2 uses
  br label %bb.k

._crit_edge86.split.sink.split:                   ; preds = %.preheader72.lr.ph, %bb.a
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 noundef 0, i64 noundef 3)
  br label %._crit_edge86.split

._crit_edge86.split:                              ; preds = %._crit_edge, %._crit_edge86.split.sink.split
  ret i1 true

._crit_edge:                                      ; preds = %._crit_edge94
  %i.ay = add nuw i64 %.04685, 1                  ; 2 uses
  %exitcond93.not = icmp eq i64 %i.ay, %2
  br i1 %exitcond93.not, label %._crit_edge86.split, label %.preheader, !llvm.loop !347

bb.k:                                             ; preds = %.preheader, %._crit_edge94
  %.081 = phi i64 [ 0, %.preheader ], [ %i.bb, %._crit_edge94 ] ; 4 uses
  %.04580 = phi i32 [ 0, %.preheader ], [ %.1, %._crit_edge94 ] ; 2 uses
  %.14879 = phi i64 [ %.04784, %.preheader ], [ %.2, %._crit_edge94 ] ; 5 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.081
  %i.az = load i8, ptr %gep, align 1, !tbaa !34   ; 2 uses
  %i.ba = icmp sgt i8 %i.az, -1
  %i.bb = add nuw i64 %.081, 1                    ; 3 uses
  br i1 %i.ba, label %bb.l, label %._crit_edge94

bb.l:                                             ; preds = %bb.k
  %gep83 = getelementptr i8, ptr %invariant.gep, i64 %i.bb
  %i.bc = load i8, ptr %gep83, align 1, !tbaa !34
  %i.bd = icmp sgt i8 %i.bc, -1
  br i1 %i.bd, label %bb.m, label %._crit_edge94

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr i8, ptr %i.b, i64 %.081
  %i.bf = getelementptr i8, ptr %i.be, i64 2
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.ax
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !34
  %i.bi = icmp sgt i8 %i.bh, -1
  br i1 %i.bi, label %bb.n, label %._crit_edge94

bb.n:                                             ; preds = %bb.m
  %i.bj = zext nneg i8 %i.az to i32
  %i.bk = load ptr, ptr %1, align 8, !tbaa !37
  %i.bl = getelementptr [4 x i8], ptr %i.bk, i64 %.14879 ; 3 uses
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !100
  %i.bm = zext nneg i32 %.04580 to i64
  %i.bn = getelementptr i8, ptr %i.b, i64 %i.bb   ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bm
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.ax
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !34
  %i.br = sext i8 %i.bq to i32
  %i.bs = load i64, ptr %i.av, align 8, !tbaa !286 ; 2 uses
  %i.bt = getelementptr [4 x i8], ptr %i.bl, i64 %i.bs
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !100
  %i.bu = xor i32 %.04580, 1                      ; 2 uses
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %i.bn, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.ax
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !34
  %i.bz = sext i8 %i.by to i32
  %.idx = shl i64 %i.bs, 3
  %i.ca = getelementptr i8, ptr %i.bl, i64 %.idx
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !100
  %i.cb = add i64 %.14879, 1
  br label %._crit_edge94

._crit_edge94:                                    ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %.2 = phi i64 [ %i.cb, %bb.n ], [ %.14879, %bb.l ], [ %.14879, %bb.m ], [ %.14879, %bb.k ] ; 2 uses
  %.1 = phi i32 [ %i.bu, %bb.n ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.k ]
  %exitcond92.not = icmp eq i64 %.081, %i.aw
  br i1 %exitcond92.not, label %._crit_edge, label %bb.k, !llvm.loop !348
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 4 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge84.split.sink.split, label %.preheader72.lr.ph

.preheader72.lr.ph:                               ; preds = %bb.a
  %i.c = add i64 %3, -2                           ; 4 uses
  %.not85 = icmp eq i64 %i.c, 0
  br i1 %.not85, label %._crit_edge84.split.sink.split, label %.preheader72.us.lver.check

.preheader72.us.lver.check:                       ; preds = %.preheader72.lr.ph
  %flatten.mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.c) ; 2 uses
  %flatten.overflow = extractvalue { i64, i1 } %flatten.mul, 1
  br i1 %flatten.overflow, label %._crit_edge77.a, label %.preheader72.us.preheader

.preheader72.us.preheader:                        ; preds = %.preheader72.us.lver.check
  %flatten.tripcount = extractvalue { i64, i1 } %flatten.mul, 0
  %umax = tail call i64 @llvm.umax.i64(i64 %flatten.tripcount, i64 1)
  br label %._crit_edge77

._crit_edge77.a:                                  ; preds = %.preheader72.us.lver.check
  %i.d = add i64 %2, -1
  %i.e = mul i64 %i.d, %i.c
  %i.f = add i64 %3, %i.e
  %i.g = add i64 %i.f, -2
  br label %._crit_edge77

._crit_edge77:                                    ; preds = %.preheader72.us.preheader, %._crit_edge77.a
  %.051.lcssa = phi i64 [ %umax, %.preheader72.us.preheader ], [ %i.g, %._crit_edge77.a ] ; 3 uses
  %4 = icmp sgt i64 %.051.lcssa, 3074457345618258602
  br i1 %4, label %bb.b, label %.preheader.lr.ph.split

bb.b:                                             ; preds = %._crit_edge77
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.preheader.lr.ph.split:                           ; preds = %._crit_edge77
  %i.i = mul nsw i64 %.051.lcssa, 3
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.i, i64 noundef %.051.lcssa, i64 noundef 3)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %1, align 8, !tbaa !37     ; 3 uses
  %i.l = load i64, ptr %i.j, align 8, !tbaa !286  ; 4 uses
  %.idx = shl i64 %i.l, 3                         ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.m = icmp eq i64 %3, 3
  %unroll_iter = and i64 %i.c, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod100 = trunc i64 %3 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.04683 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %i.ad, %._crit_edge ] ; 2 uses
  %.04782 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %i.n = mul nsw i64 %.04683, %3                  ; 7 uses
  %invariant.gep = getelementptr i8, ptr %i.b, i64 %i.n ; 3 uses
  br i1 %i.m, label %.epil.preheader, label %.preheader.new

._crit_edge84.split.sink.split:                   ; preds = %.preheader72.lr.ph, %bb.a
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 noundef 0, i64 noundef 3)
  br label %._crit_edge84.split

._crit_edge84.split:                              ; preds = %._crit_edge, %._crit_edge84.split.sink.split
  ret i1 true

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %.081.epil.init = phi i64 [ 0, %.preheader ], [ %i.as, %._crit_edge.unr-lcssa ] ; 2 uses
  %.14879.epil.init = phi i64 [ %.04782, %.preheader ], [ %i.bh, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %.081.epil.init
  %i.o = load i8, ptr %gep.epil, align 1, !tbaa !34
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr [4 x i8], ptr %i.k, i64 %.14879.epil.init ; 3 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !100
  %i.r = getelementptr i8, ptr %i.b, i64 %.081.epil.init ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = getelementptr i8, ptr %i.s, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !tbaa !34
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr [4 x i8], ptr %i.q, i64 %i.l
  store i32 %i.v, ptr %i.w, align 4, !tbaa !100
  %i.x = getelementptr i8, ptr %i.r, i64 2
  %i.y = getelementptr i8, ptr %i.x, i64 %i.n
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr i8, ptr %i.q, i64 %.idx
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !100
  %i.ac = add i64 %.14879.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bh, %._crit_edge.unr-lcssa ], [ %i.ac, %.epil.preheader ]
  %i.ad = add nuw i64 %.04683, 1                  ; 2 uses
  %exitcond90.not = icmp eq i64 %i.ad, %2
  br i1 %exitcond90.not, label %._crit_edge84.split, label %.preheader, !llvm.loop !349

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.081 = phi i64 [ %i.as, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %.14879 = phi i64 [ %i.bh, %.preheader.new ], [ %.04782, %.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ae = or disjoint i64 %.081, 1                ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.081
  %i.af = load i8, ptr %gep, align 1, !tbaa !34
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr [4 x i8], ptr %i.k, i64 %.14879 ; 3 uses
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !100
  %i.ai = getelementptr i8, ptr %i.b, i64 %i.ae   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.n
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !34
  %i.al = zext i8 %i.ak to i32
  %i.am = getelementptr [4 x i8], ptr %i.ah, i64 %i.l
  store i32 %i.al, ptr %i.am, align 4, !tbaa !100
  %i.an = getelementptr i8, ptr %i.ai, i64 1
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.n
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !34
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr i8, ptr %i.ah, i64 %.idx
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !100
  %i.as = add nuw i64 %.081, 2                    ; 3 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.ae
  %i.at = load i8, ptr %gep.1, align 1, !tbaa !34
  %i.au = zext i8 %i.at to i32
  %i.av = getelementptr [4 x i8], ptr %i.k, i64 %.14879
  %i.aw = getelementptr i8, ptr %i.av, i64 4      ; 3 uses
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !100
  %i.ax = getelementptr i8, ptr %i.b, i64 %i.as   ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 1
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.n
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !34
  %i.bb = zext i8 %i.ba to i32
  %i.bc = getelementptr [4 x i8], ptr %i.aw, i64 %i.l
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !100
  %i.bd = getelementptr i8, ptr %i.ax, i64 %i.n
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !34
  %i.bf = zext i8 %i.be to i32
  %i.bg = getelementptr i8, ptr %i.aw, i64 %.idx
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !100
  %i.bh = add i64 %.14879, 2                      ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !350
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIsN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 7 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge86.split.sink.split, label %.preheader72.lr.ph

.preheader72.lr.ph:                               ; preds = %bb.a
  %i.c = add i64 %3, -2                           ; 2 uses
  %.not87 = icmp eq i64 %i.c, 0
  br i1 %.not87, label %._crit_edge86.split.sink.split, label %.preheader72.us.preheader

.preheader72.us.preheader:                        ; preds = %.preheader72.lr.ph
  %xtraiter = and i64 %3, 1
  %i.d = icmp eq i64 %3, 3
  %unroll_iter = and i64 %i.c, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod108 = trunc i64 %3 to i1
  br label %.preheader72.us

.preheader72.us:                                  ; preds = %.preheader72.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.ar, %._crit_edge.us ], [ 0, %.preheader72.us.preheader ] ; 2 uses
  %.05175.us = phi i64 [ %.253.us.lcssa, %._crit_edge.us ], [ 0, %.preheader72.us.preheader ] ; 2 uses
  %i.e = mul nsw i64 %.05076.us, %3               ; 7 uses
  %invariant.gep.us = getelementptr [2 x i8], ptr %i.b, i64 %i.e ; 3 uses
  br i1 %i.d, label %.epil.preheader, label %.preheader72.us.new

.preheader72.us.new:                              ; preds = %.preheader72.us, %bb.g
  %.04974.us = phi i64 [ %i.ae, %bb.g ], [ 0, %.preheader72.us ] ; 4 uses
  %.15273.us = phi i64 [ %.253.us.1, %bb.g ], [ %.05175.us, %.preheader72.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.g ], [ 0, %.preheader72.us ]
  %gep.us = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %.04974.us
  %i.f = load i16, ptr %gep.us, align 2, !tbaa !206
  %i.g = icmp sgt i16 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.preheader72.us.new
  %i.h = getelementptr [2 x i8], ptr %i.b, i64 %.04974.us ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 2
  %i.j = getelementptr [2 x i8], ptr %i.i, i64 %i.e
  %i.k = load i16, ptr %i.j, align 2, !tbaa !206
  %i.l = icmp sgt i16 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.h, i64 4
  %i.n = getelementptr [2 x i8], ptr %i.m, i64 %i.e
  %i.o = load i16, ptr %i.n, align 2, !tbaa !206
  %i.p = icmp sgt i16 %i.o, -1
  %i.q = zext i1 %i.p to i64
  %spec.select.us = add i64 %.15273.us, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.preheader72.us.new
  %.253.us = phi i64 [ %.15273.us, %.preheader72.us.new ], [ %spec.select.us, %bb.c ], [ %.15273.us, %bb.b ] ; 3 uses
  %i.r = or disjoint i64 %.04974.us, 1            ; 2 uses
  %gep.us.1 = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %i.r
  %i.s = load i16, ptr %gep.us.1, align 2, !tbaa !206
  %i.t = icmp sgt i16 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr [2 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 2
  %i.w = getelementptr [2 x i8], ptr %i.v, i64 %i.e
  %i.x = load i16, ptr %i.w, align 2, !tbaa !206
  %i.y = icmp sgt i16 %i.x, -1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %i.u, i64 4
  %i.aa = getelementptr [2 x i8], ptr %i.z, i64 %i.e
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !206
  %i.ac = icmp sgt i16 %i.ab, -1
  %i.ad = zext i1 %i.ac to i64
  %spec.select.us.1 = add i64 %.253.us, %i.ad
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.253.us.1 = phi i64 [ %.253.us, %bb.d ], [ %spec.select.us.1, %bb.f ], [ %.253.us, %bb.e ] ; 3 uses
  %i.ae = add nuw i64 %.04974.us, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader72.us.new, !llvm.loop !351

._crit_edge.us.unr-lcssa:                         ; preds = %bb.g
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader72.us
  %.04974.us.epil.init = phi i64 [ 0, %.preheader72.us ], [ %i.ae, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.15273.us.epil.init = phi i64 [ %.05175.us, %.preheader72.us ], [ %.253.us.1, %._crit_edge.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %gep.us.epil = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %.04974.us.epil.init
  %i.af = load i16, ptr %gep.us.epil, align 2, !tbaa !206
  %i.ag = icmp sgt i16 %i.af, -1
  br i1 %i.ag, label %bb.h, label %._crit_edge.us

bb.h:                                             ; preds = %.epil.preheader
  %i.ah = getelementptr [2 x i8], ptr %i.b, i64 %.04974.us.epil.init ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 2
  %i.aj = getelementptr [2 x i8], ptr %i.ai, i64 %i.e
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !206
  %i.al = icmp sgt i16 %i.ak, -1
  br i1 %i.al, label %bb.i, label %._crit_edge.us

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr i8, ptr %i.ah, i64 4
  %i.an = getelementptr [2 x i8], ptr %i.am, i64 %i.e
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !206
  %i.ap = icmp sgt i16 %i.ao, -1
  %i.aq = zext i1 %i.ap to i64
  %spec.select.us.epil = add i64 %.15273.us.epil.init, %i.aq
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.epil.preheader, %bb.h, %bb.i, %._crit_edge.us.unr-lcssa
  %.253.us.lcssa = phi i64 [ %.253.us.1, %._crit_edge.us.unr-lcssa ], [ %.15273.us.epil.init, %.epil.preheader ], [ %spec.select.us.epil, %bb.i ], [ %.15273.us.epil.init, %bb.h ] ; 4 uses
  %i.ar = add nuw i64 %.05076.us, 1               ; 2 uses
  %exitcond91.not = icmp eq i64 %i.ar, %2
  br i1 %exitcond91.not, label %._crit_edge77, label %.preheader72.us, !llvm.loop !352

._crit_edge77:                                    ; preds = %._crit_edge.us
  %i.as = icmp sgt i64 %.253.us.lcssa, 3074457345618258602
  br i1 %i.as, label %bb.j, label %.preheader.preheader

bb.j:                                             ; preds = %._crit_edge77
  %i.at = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.at, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.preheader.preheader:                             ; preds = %._crit_edge77
  %i.au = mul nsw i64 %.253.us.lcssa, 3
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.au, i64 noundef %.253.us.lcssa, i64 noundef 3)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = add i64 %3, -3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.04685 = phi i64 [ %i.ay, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.04784 = phi i64 [ %.2, %._crit_edge ], [ 0, %.preheader.preheader ]
  %i.ax = mul nsw i64 %.04685, %3                 ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.b, i64 %i.ax ; 2 uses
  br label %bb.k

._crit_edge86.split.sink.split:                   ; preds = %.preheader72.lr.ph, %bb.a
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 noundef 0, i64 noundef 3)
  br label %._crit_edge86.split

._crit_edge86.split:                              ; preds = %._crit_edge, %._crit_edge86.split.sink.split
  ret i1 true

._crit_edge:                                      ; preds = %._crit_edge94
  %i.ay = add nuw i64 %.04685, 1                  ; 2 uses
  %exitcond93.not = icmp eq i64 %i.ay, %2
  br i1 %exitcond93.not, label %._crit_edge86.split, label %.preheader, !llvm.loop !353

bb.k:                                             ; preds = %.preheader, %._crit_edge94
  %.081 = phi i64 [ 0, %.preheader ], [ %i.bb, %._crit_edge94 ] ; 4 uses
  %.04580 = phi i32 [ 0, %.preheader ], [ %.1, %._crit_edge94 ] ; 2 uses
  %.14879 = phi i64 [ %.04784, %.preheader ], [ %.2, %._crit_edge94 ] ; 5 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %.081
  %i.az = load i16, ptr %gep, align 2, !tbaa !206 ; 2 uses
  %i.ba = icmp sgt i16 %i.az, -1
  %i.bb = add nuw i64 %.081, 1                    ; 3 uses
  br i1 %i.ba, label %bb.l, label %._crit_edge94

bb.l:                                             ; preds = %bb.k
  %gep83 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bb
  %i.bc = load i16, ptr %gep83, align 2, !tbaa !206
  %i.bd = icmp sgt i16 %i.bc, -1
  br i1 %i.bd, label %bb.m, label %._crit_edge94

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr [2 x i8], ptr %i.b, i64 %.081
  %i.bf = getelementptr i8, ptr %i.be, i64 4
  %i.bg = getelementptr [2 x i8], ptr %i.bf, i64 %i.ax
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !206
  %i.bi = icmp sgt i16 %i.bh, -1
  br i1 %i.bi, label %bb.n, label %._crit_edge94

bb.n:                                             ; preds = %bb.m
  %i.bj = zext nneg i16 %i.az to i32
  %i.bk = load ptr, ptr %1, align 8, !tbaa !37
  %i.bl = getelementptr [4 x i8], ptr %i.bk, i64 %.14879 ; 3 uses
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !100
  %i.bm = zext nneg i32 %.04580 to i64
  %i.bn = getelementptr [2 x i8], ptr %i.b, i64 %i.bb ; 2 uses
  %i.bo = getelementptr [2 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = getelementptr [2 x i8], ptr %i.bo, i64 %i.ax
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !206
  %i.br = sext i16 %i.bq to i32
  %i.bs = load i64, ptr %i.av, align 8, !tbaa !286 ; 2 uses
  %i.bt = getelementptr [4 x i8], ptr %i.bl, i64 %i.bs
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !100
  %i.bu = xor i32 %.04580, 1                      ; 2 uses
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr [2 x i8], ptr %i.bn, i64 %i.bv
  %i.bx = getelementptr [2 x i8], ptr %i.bw, i64 %i.ax
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !206
  %i.bz = sext i16 %i.by to i32
  %.idx = shl i64 %i.bs, 3
  %i.ca = getelementptr i8, ptr %i.bl, i64 %.idx
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !100
  %i.cb = add i64 %.14879, 1
  br label %._crit_edge94

._crit_edge94:                                    ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %.2 = phi i64 [ %i.cb, %bb.n ], [ %.14879, %bb.l ], [ %.14879, %bb.m ], [ %.14879, %bb.k ] ; 2 uses
  %.1 = phi i32 [ %i.bu, %bb.n ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.k ]
  %exitcond92.not = icmp eq i64 %.081, %i.aw
  br i1 %exitcond92.not, label %._crit_edge, label %bb.k, !llvm.loop !354
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesItN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 4 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge84.split.sink.split, label %.preheader72.lr.ph

.preheader72.lr.ph:                               ; preds = %bb.a
  %i.c = add i64 %3, -2                           ; 4 uses
  %.not85 = icmp eq i64 %i.c, 0
  br i1 %.not85, label %._crit_edge84.split.sink.split, label %.preheader72.us.lver.check

.preheader72.us.lver.check:                       ; preds = %.preheader72.lr.ph
  %flatten.mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.c) ; 2 uses
  %flatten.overflow = extractvalue { i64, i1 } %flatten.mul, 1
  br i1 %flatten.overflow, label %._crit_edge77.a, label %.preheader72.us.preheader

.preheader72.us.preheader:                        ; preds = %.preheader72.us.lver.check
  %flatten.tripcount = extractvalue { i64, i1 } %flatten.mul, 0
  %umax = tail call i64 @llvm.umax.i64(i64 %flatten.tripcount, i64 1)
  br label %._crit_edge77

._crit_edge77.a:                                  ; preds = %.preheader72.us.lver.check
  %i.d = add i64 %2, -1
  %i.e = mul i64 %i.d, %i.c
  %i.f = add i64 %3, %i.e
  %i.g = add i64 %i.f, -2
  br label %._crit_edge77

._crit_edge77:                                    ; preds = %.preheader72.us.preheader, %._crit_edge77.a
  %.051.lcssa = phi i64 [ %umax, %.preheader72.us.preheader ], [ %i.g, %._crit_edge77.a ] ; 3 uses
  %4 = icmp sgt i64 %.051.lcssa, 3074457345618258602
  br i1 %4, label %bb.b, label %.preheader.lr.ph.split

bb.b:                                             ; preds = %._crit_edge77
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.preheader.lr.ph.split:                           ; preds = %._crit_edge77
  %i.i = mul nsw i64 %.051.lcssa, 3
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.i, i64 noundef %.051.lcssa, i64 noundef 3)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %1, align 8, !tbaa !37     ; 3 uses
  %i.l = load i64, ptr %i.j, align 8, !tbaa !286  ; 4 uses
  %.idx = shl i64 %i.l, 3                         ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.m = icmp eq i64 %3, 3
  %unroll_iter = and i64 %i.c, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod100 = trunc i64 %3 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.04683 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %i.ad, %._crit_edge ] ; 2 uses
  %.04782 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %i.n = mul nsw i64 %.04683, %3                  ; 7 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.b, i64 %i.n ; 3 uses
  br i1 %i.m, label %.epil.preheader, label %.preheader.new

._crit_edge84.split.sink.split:                   ; preds = %.preheader72.lr.ph, %bb.a
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 noundef 0, i64 noundef 3)
  br label %._crit_edge84.split

._crit_edge84.split:                              ; preds = %._crit_edge, %._crit_edge84.split.sink.split
  ret i1 true

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %.081.epil.init = phi i64 [ 0, %.preheader ], [ %i.as, %._crit_edge.unr-lcssa ] ; 2 uses
  %.14879.epil.init = phi i64 [ %.04782, %.preheader ], [ %i.bh, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %gep.epil = getelementptr [2 x i8], ptr %invariant.gep, i64 %.081.epil.init
  %i.o = load i16, ptr %gep.epil, align 2, !tbaa !206
  %i.p = zext i16 %i.o to i32
  %i.q = getelementptr [4 x i8], ptr %i.k, i64 %.14879.epil.init ; 3 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !100
  %i.r = getelementptr [2 x i8], ptr %i.b, i64 %.081.epil.init ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 2
  %i.t = getelementptr [2 x i8], ptr %i.s, i64 %i.n
  %i.u = load i16, ptr %i.t, align 2, !tbaa !206
  %i.v = zext i16 %i.u to i32
  %i.w = getelementptr [4 x i8], ptr %i.q, i64 %i.l
  store i32 %i.v, ptr %i.w, align 4, !tbaa !100
  %i.x = getelementptr i8, ptr %i.r, i64 4
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.n
  %i.z = load i16, ptr %i.y, align 2, !tbaa !206
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr i8, ptr %i.q, i64 %.idx
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !100
  %i.ac = add i64 %.14879.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bh, %._crit_edge.unr-lcssa ], [ %i.ac, %.epil.preheader ]
  %i.ad = add nuw i64 %.04683, 1                  ; 2 uses
  %exitcond90.not = icmp eq i64 %i.ad, %2
  br i1 %exitcond90.not, label %._crit_edge84.split, label %.preheader, !llvm.loop !355

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.081 = phi i64 [ %i.as, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %.14879 = phi i64 [ %i.bh, %.preheader.new ], [ %.04782, %.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ae = or disjoint i64 %.081, 1                ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %.081
  %i.af = load i16, ptr %gep, align 2, !tbaa !206
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr [4 x i8], ptr %i.k, i64 %.14879 ; 3 uses
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !100
  %i.ai = getelementptr [2 x i8], ptr %i.b, i64 %i.ae ; 2 uses
  %i.aj = getelementptr [2 x i8], ptr %i.ai, i64 %i.n
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !206
  %i.al = zext i16 %i.ak to i32
  %i.am = getelementptr [4 x i8], ptr %i.ah, i64 %i.l
  store i32 %i.al, ptr %i.am, align 4, !tbaa !100
  %i.an = getelementptr i8, ptr %i.ai, i64 2
  %i.ao = getelementptr [2 x i8], ptr %i.an, i64 %i.n
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !206
  %i.aq = zext i16 %i.ap to i32
  %i.ar = getelementptr i8, ptr %i.ah, i64 %.idx
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !100
  %i.as = add nuw i64 %.081, 2                    ; 3 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ae
  %i.at = load i16, ptr %gep.1, align 2, !tbaa !206
  %i.au = zext i16 %i.at to i32
  %i.av = getelementptr [4 x i8], ptr %i.k, i64 %.14879
  %i.aw = getelementptr i8, ptr %i.av, i64 4      ; 3 uses
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !100
  %i.ax = getelementptr [2 x i8], ptr %i.b, i64 %i.as ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 2
  %i.az = getelementptr [2 x i8], ptr %i.ay, i64 %i.n
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !206
  %i.bb = zext i16 %i.ba to i32
  %i.bc = getelementptr [4 x i8], ptr %i.aw, i64 %i.l
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !100
  %i.bd = getelementptr [2 x i8], ptr %i.ax, i64 %i.n
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !206
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr i8, ptr %i.aw, i64 %.idx
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !100
  %i.bh = add i64 %.14879, 2                      ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !356
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIiN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 7 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge86.split.sink.split, label %.preheader72.lr.ph

.preheader72.lr.ph:                               ; preds = %bb.a
  %i.c = add i64 %3, -2                           ; 2 uses
  %.not87 = icmp eq i64 %i.c, 0
  br i1 %.not87, label %._crit_edge86.split.sink.split, label %.preheader72.us.preheader

.preheader72.us.preheader:                        ; preds = %.preheader72.lr.ph
  %xtraiter = and i64 %3, 1
  %i.d = icmp eq i64 %3, 3
  %unroll_iter = and i64 %i.c, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod108 = trunc i64 %3 to i1
  br label %.preheader72.us

.preheader72.us:                                  ; preds = %.preheader72.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.ar, %._crit_edge.us ], [ 0, %.preheader72.us.preheader ] ; 2 uses
  %.05175.us = phi i64 [ %.253.us.lcssa, %._crit_edge.us ], [ 0, %.preheader72.us.preheader ] ; 2 uses
  %i.e = mul nsw i64 %.05076.us, %3               ; 7 uses
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.b, i64 %i.e ; 3 uses
  br i1 %i.d, label %.epil.preheader, label %.preheader72.us.new

.preheader72.us.new:                              ; preds = %.preheader72.us, %bb.g
  %.04974.us = phi i64 [ %i.ae, %bb.g ], [ 0, %.preheader72.us ] ; 4 uses
  %.15273.us = phi i64 [ %.253.us.1, %bb.g ], [ %.05175.us, %.preheader72.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.g ], [ 0, %.preheader72.us ]
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %.04974.us
  %i.f = load i32, ptr %gep.us, align 4, !tbaa !100
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.preheader72.us.new
  %i.h = getelementptr [4 x i8], ptr %i.b, i64 %.04974.us ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %i.e
  %i.k = load i32, ptr %i.j, align 4, !tbaa !100
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.h, i64 8
  %i.n = getelementptr [4 x i8], ptr %i.m, i64 %i.e
  %i.o = load i32, ptr %i.n, align 4, !tbaa !100
  %i.p = icmp sgt i32 %i.o, -1
  %i.q = zext i1 %i.p to i64
  %spec.select.us = add i64 %.15273.us, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.preheader72.us.new
  %.253.us = phi i64 [ %.15273.us, %.preheader72.us.new ], [ %spec.select.us, %bb.c ], [ %.15273.us, %bb.b ] ; 3 uses
  %i.r = or disjoint i64 %.04974.us, 1            ; 2 uses
  %gep.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.r
  %i.s = load i32, ptr %gep.us.1, align 4, !tbaa !100
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr [4 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %i.e
  %i.x = load i32, ptr %i.w, align 4, !tbaa !100
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %i.u, i64 8
  %i.aa = getelementptr [4 x i8], ptr %i.z, i64 %i.e
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !100
  %i.ac = icmp sgt i32 %i.ab, -1
  %i.ad = zext i1 %i.ac to i64
  %spec.select.us.1 = add i64 %.253.us, %i.ad
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.253.us.1 = phi i64 [ %.253.us, %bb.d ], [ %spec.select.us.1, %bb.f ], [ %.253.us, %bb.e ] ; 3 uses
  %i.ae = add nuw i64 %.04974.us, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader72.us.new, !llvm.loop !357

._crit_edge.us.unr-lcssa:                         ; preds = %bb.g
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader72.us
  %.04974.us.epil.init = phi i64 [ 0, %.preheader72.us ], [ %i.ae, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.15273.us.epil.init = phi i64 [ %.05175.us, %.preheader72.us ], [ %.253.us.1, %._crit_edge.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %gep.us.epil = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %.04974.us.epil.init
  %i.af = load i32, ptr %gep.us.epil, align 4, !tbaa !100
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.h, label %._crit_edge.us

bb.h:                                             ; preds = %.epil.preheader
  %i.ah = getelementptr [4 x i8], ptr %i.b, i64 %.04974.us.epil.init ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %i.e
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !100
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.i, label %._crit_edge.us

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr i8, ptr %i.ah, i64 8
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.e
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !100
  %i.ap = icmp sgt i32 %i.ao, -1
  %i.aq = zext i1 %i.ap to i64
  %spec.select.us.epil = add i64 %.15273.us.epil.init, %i.aq
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.epil.preheader, %bb.h, %bb.i, %._crit_edge.us.unr-lcssa
  %.253.us.lcssa = phi i64 [ %.253.us.1, %._crit_edge.us.unr-lcssa ], [ %.15273.us.epil.init, %.epil.preheader ], [ %spec.select.us.epil, %bb.i ], [ %.15273.us.epil.init, %bb.h ] ; 4 uses
  %i.ar = add nuw i64 %.05076.us, 1               ; 2 uses
  %exitcond91.not = icmp eq i64 %i.ar, %2
  br i1 %exitcond91.not, label %._crit_edge77, label %.preheader72.us, !llvm.loop !358

._crit_edge77:                                    ; preds = %._crit_edge.us
  %i.as = icmp sgt i64 %.253.us.lcssa, 3074457345618258602
  br i1 %i.as, label %bb.j, label %.preheader.preheader

bb.j:                                             ; preds = %._crit_edge77
  %i.at = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.at, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.preheader.preheader:                             ; preds = %._crit_edge77
  %i.au = mul nsw i64 %.253.us.lcssa, 3
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.au, i64 noundef %.253.us.lcssa, i64 noundef 3)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = add i64 %3, -3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.04685 = phi i64 [ %i.ay, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.04784 = phi i64 [ %.2, %._crit_edge ], [ 0, %.preheader.preheader ]
  %i.ax = mul nsw i64 %.04685, %3                 ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.b, i64 %i.ax ; 2 uses
  br label %bb.k

._crit_edge86.split.sink.split:                   ; preds = %.preheader72.lr.ph, %bb.a
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 noundef 0, i64 noundef 3)
  br label %._crit_edge86.split

._crit_edge86.split:                              ; preds = %._crit_edge, %._crit_edge86.split.sink.split
  ret i1 true

._crit_edge:                                      ; preds = %._crit_edge94
  %i.ay = add nuw i64 %.04685, 1                  ; 2 uses
  %exitcond93.not = icmp eq i64 %i.ay, %2
  br i1 %exitcond93.not, label %._crit_edge86.split, label %.preheader, !llvm.loop !359

bb.k:                                             ; preds = %.preheader, %._crit_edge94
  %.081 = phi i64 [ 0, %.preheader ], [ %i.bb, %._crit_edge94 ] ; 4 uses
  %.04580 = phi i32 [ 0, %.preheader ], [ %.1, %._crit_edge94 ] ; 2 uses
  %.14879 = phi i64 [ %.04784, %.preheader ], [ %.2, %._crit_edge94 ] ; 5 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.081
  %i.az = load i32, ptr %gep, align 4, !tbaa !100 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  %i.bb = add nuw i64 %.081, 1                    ; 3 uses
  br i1 %i.ba, label %bb.l, label %._crit_edge94

bb.l:                                             ; preds = %bb.k
  %gep83 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bb
  %i.bc = load i32, ptr %gep83, align 4, !tbaa !100
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.m, label %._crit_edge94

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr [4 x i8], ptr %i.b, i64 %.081
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %i.ax
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !100
  %i.bi = icmp sgt i32 %i.bh, -1
  br i1 %i.bi, label %bb.n, label %._crit_edge94

bb.n:                                             ; preds = %bb.m
  %i.bj = load ptr, ptr %1, align 8, !tbaa !37
  %i.bk = getelementptr [4 x i8], ptr %i.bj, i64 %.14879 ; 3 uses
  store i32 %i.az, ptr %i.bk, align 4, !tbaa !100
  %i.bl = zext nneg i32 %.04580 to i64
  %i.bm = getelementptr [4 x i8], ptr %i.b, i64 %i.bb ; 2 uses
  %i.bn = getelementptr [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = getelementptr [4 x i8], ptr %i.bn, i64 %i.ax
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !100
  %i.bq = load i64, ptr %i.av, align 8, !tbaa !286 ; 2 uses
  %i.br = getelementptr [4 x i8], ptr %i.bk, i64 %i.bq
  store i32 %i.bp, ptr %i.br, align 4, !tbaa !100
  %i.bs = xor i32 %.04580, 1                      ; 2 uses
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr [4 x i8], ptr %i.bm, i64 %i.bt
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %i.ax
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !100
  %.idx = shl i64 %i.bq, 3
  %i.bx = getelementptr i8, ptr %i.bk, i64 %.idx
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !100
  %i.by = add i64 %.14879, 1
  br label %._crit_edge94

._crit_edge94:                                    ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %.2 = phi i64 [ %i.by, %bb.n ], [ %.14879, %bb.l ], [ %.14879, %bb.m ], [ %.14879, %bb.k ] ; 2 uses
  %.1 = phi i32 [ %i.bs, %bb.n ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.k ]
  %exitcond92.not = icmp eq i64 %.081, %i.aw
  br i1 %exitcond92.not, label %._crit_edge, label %bb.k, !llvm.loop !360
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIjN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 4 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge84.split.sink.split, label %.preheader72.lr.ph

.preheader72.lr.ph:                               ; preds = %bb.a
  %i.c = add i64 %3, -2                           ; 4 uses
  %.not85 = icmp eq i64 %i.c, 0
  br i1 %.not85, label %._crit_edge84.split.sink.split, label %.preheader72.us.lver.check

.preheader72.us.lver.check:                       ; preds = %.preheader72.lr.ph
  %flatten.mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.c) ; 2 uses
  %flatten.overflow = extractvalue { i64, i1 } %flatten.mul, 1
  br i1 %flatten.overflow, label %._crit_edge77.a, label %.preheader72.us.preheader

.preheader72.us.preheader:                        ; preds = %.preheader72.us.lver.check
  %flatten.tripcount = extractvalue { i64, i1 } %flatten.mul, 0
  %umax = tail call i64 @llvm.umax.i64(i64 %flatten.tripcount, i64 1)
  br label %._crit_edge77

._crit_edge77.a:                                  ; preds = %.preheader72.us.lver.check
  %i.d = add i64 %2, -1
  %i.e = mul i64 %i.d, %i.c
  %i.f = add i64 %3, %i.e
  %i.g = add i64 %i.f, -2
  br label %._crit_edge77

._crit_edge77:                                    ; preds = %.preheader72.us.preheader, %._crit_edge77.a
  %.051.lcssa = phi i64 [ %umax, %.preheader72.us.preheader ], [ %i.g, %._crit_edge77.a ] ; 3 uses
  %4 = icmp sgt i64 %.051.lcssa, 3074457345618258602
  br i1 %4, label %bb.b, label %.preheader.lr.ph.split

bb.b:                                             ; preds = %._crit_edge77
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.preheader.lr.ph.split:                           ; preds = %._crit_edge77
  %i.i = mul nsw i64 %.051.lcssa, 3
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.i, i64 noundef %.051.lcssa, i64 noundef 3)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %1, align 8, !tbaa !37     ; 3 uses
  %i.l = load i64, ptr %i.j, align 8, !tbaa !286  ; 4 uses
  %.idx = shl i64 %i.l, 3                         ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.m = icmp eq i64 %3, 3
  %unroll_iter = and i64 %i.c, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod100 = trunc i64 %3 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.04683 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %i.aa, %._crit_edge ] ; 2 uses
  %.04782 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %i.n = mul nsw i64 %.04683, %3                  ; 7 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.b, i64 %i.n ; 3 uses
  br i1 %i.m, label %.epil.preheader, label %.preheader.new

._crit_edge84.split.sink.split:                   ; preds = %.preheader72.lr.ph, %bb.a
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 noundef 0, i64 noundef 3)
  br label %._crit_edge84.split

._crit_edge84.split:                              ; preds = %._crit_edge, %._crit_edge84.split.sink.split
  ret i1 true

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %.081.epil.init = phi i64 [ 0, %.preheader ], [ %i.am, %._crit_edge.unr-lcssa ] ; 2 uses
  %.14879.epil.init = phi i64 [ %.04782, %.preheader ], [ %i.ay, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %.081.epil.init
  %i.o = load i32, ptr %gep.epil, align 4, !tbaa !100
  %i.p = getelementptr [4 x i8], ptr %i.k, i64 %.14879.epil.init ; 3 uses
  store i32 %i.o, ptr %i.p, align 4, !tbaa !100
  %i.q = getelementptr [4 x i8], ptr %i.b, i64 %.081.epil.init ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = getelementptr [4 x i8], ptr %i.r, i64 %i.n
  %i.t = load i32, ptr %i.s, align 4, !tbaa !100
  %i.u = getelementptr [4 x i8], ptr %i.p, i64 %i.l
  store i32 %i.t, ptr %i.u, align 4, !tbaa !100
  %i.v = getelementptr i8, ptr %i.q, i64 8
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %i.n
  %i.x = load i32, ptr %i.w, align 4, !tbaa !100
  %i.y = getelementptr i8, ptr %i.p, i64 %.idx
  store i32 %i.x, ptr %i.y, align 4, !tbaa !100
  %i.z = add i64 %.14879.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ay, %._crit_edge.unr-lcssa ], [ %i.z, %.epil.preheader ]
  %i.aa = add nuw i64 %.04683, 1                  ; 2 uses
  %exitcond90.not = icmp eq i64 %i.aa, %2
  br i1 %exitcond90.not, label %._crit_edge84.split, label %.preheader, !llvm.loop !361

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.081 = phi i64 [ %i.am, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %.14879 = phi i64 [ %i.ay, %.preheader.new ], [ %.04782, %.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ab = or disjoint i64 %.081, 1                ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.081
  %i.ac = load i32, ptr %gep, align 4, !tbaa !100
  %i.ad = getelementptr [4 x i8], ptr %i.k, i64 %.14879 ; 3 uses
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !100
  %i.ae = getelementptr [4 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.n
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !100
  %i.ah = getelementptr [4 x i8], ptr %i.ad, i64 %i.l
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !100
  %i.ai = getelementptr i8, ptr %i.ae, i64 4
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %i.n
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !100
  %i.al = getelementptr i8, ptr %i.ad, i64 %.idx
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !100
  %i.am = add nuw i64 %.081, 2                    ; 3 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ab
  %i.an = load i32, ptr %gep.1, align 4, !tbaa !100
  %i.ao = getelementptr [4 x i8], ptr %i.k, i64 %.14879
  %i.ap = getelementptr i8, ptr %i.ao, i64 4      ; 3 uses
  store i32 %i.an, ptr %i.ap, align 4, !tbaa !100
  %i.aq = getelementptr [4 x i8], ptr %i.b, i64 %i.am ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %i.n
  %i.at = load i32, ptr %i.as, align 4, !tbaa !100
  %i.au = getelementptr [4 x i8], ptr %i.ap, i64 %i.l
  store i32 %i.at, ptr %i.au, align 4, !tbaa !100
  %i.av = getelementptr [4 x i8], ptr %i.aq, i64 %i.n
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !100
  %i.ax = getelementptr i8, ptr %i.ap, i64 %.idx
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !100
  %i.ay = add i64 %.14879, 2                      ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !362
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIfN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 7 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge86.split.sink.split, label %.preheader72.lr.ph

.preheader72.lr.ph:                               ; preds = %bb.a
  %i.c = add i64 %3, -2                           ; 2 uses
  %.not87 = icmp eq i64 %i.c, 0
  br i1 %.not87, label %._crit_edge86.split.sink.split, label %.preheader72.us.preheader

.preheader72.us.preheader:                        ; preds = %.preheader72.lr.ph
  %xtraiter = and i64 %3, 1
  %i.d = icmp eq i64 %3, 3
  %unroll_iter = and i64 %i.c, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod108 = trunc i64 %3 to i1
  br label %.preheader72.us

.preheader72.us:                                  ; preds = %.preheader72.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.ar, %._crit_edge.us ], [ 0, %.preheader72.us.preheader ] ; 2 uses
  %.05175.us = phi i64 [ %.253.us.lcssa, %._crit_edge.us ], [ 0, %.preheader72.us.preheader ] ; 2 uses
  %i.e = mul nsw i64 %.05076.us, %3               ; 7 uses
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.b, i64 %i.e ; 3 uses
  br i1 %i.d, label %.epil.preheader, label %.preheader72.us.new

.preheader72.us.new:                              ; preds = %.preheader72.us, %bb.i
  %.04974.us = phi i64 [ %i.ae, %bb.i ], [ 0, %.preheader72.us ] ; 4 uses
  %.15273.us = phi i64 [ %.253.us.1, %bb.i ], [ %.05175.us, %.preheader72.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.i ], [ 0, %.preheader72.us ]
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %.04974.us
  %i.f = load float, ptr %gep.us, align 4, !tbaa !216
  %i.g = fcmp ult float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.preheader72.us.new
  %i.h = getelementptr [4 x i8], ptr %i.b, i64 %.04974.us ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %i.e
  %i.k = load float, ptr %i.j, align 4, !tbaa !216
  %i.l = fcmp ult float %i.k, 0.000000e+00
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.h, i64 8
  %i.n = getelementptr [4 x i8], ptr %i.m, i64 %i.e
  %i.o = load float, ptr %i.n, align 4, !tbaa !216
  %i.p = fcmp ult float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add i64 %.15273.us, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %.preheader72.us.new
  %.253.us = phi i64 [ %i.q, %bb.d ], [ %.15273.us, %bb.c ], [ %.15273.us, %bb.b ], [ %.15273.us, %.preheader72.us.new ] ; 4 uses
  %i.r = or disjoint i64 %.04974.us, 1            ; 2 uses
  %gep.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.r
  %i.s = load float, ptr %gep.us.1, align 4, !tbaa !216
  %i.t = fcmp ult float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr [4 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %i.e
  %i.x = load float, ptr %i.w, align 4, !tbaa !216
  %i.y = fcmp ult float %i.x, 0.000000e+00
  br i1 %i.y, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.u, i64 8
  %i.aa = getelementptr [4 x i8], ptr %i.z, i64 %i.e
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !216
  %i.ac = fcmp ult float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = add i64 %.253.us, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.253.us.1 = phi i64 [ %i.ad, %bb.h ], [ %.253.us, %bb.g ], [ %.253.us, %bb.f ], [ %.253.us, %bb.e ] ; 3 uses
  %i.ae = add nuw i64 %.04974.us, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader72.us.new, !llvm.loop !363

._crit_edge.us.unr-lcssa:                         ; preds = %bb.i
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader72.us
  %.04974.us.epil.init = phi i64 [ 0, %.preheader72.us ], [ %i.ae, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.15273.us.epil.init = phi i64 [ %.05175.us, %.preheader72.us ], [ %.253.us.1, %._crit_edge.us.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %gep.us.epil = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %.04974.us.epil.init
  %i.af = load float, ptr %gep.us.epil, align 4, !tbaa !216
  %i.ag = fcmp ult float %i.af, 0.000000e+00
  br i1 %i.ag, label %._crit_edge.us, label %bb.j

bb.j:                                             ; preds = %.epil.preheader
end_hunk_0
begin_hunk_1_@_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm:bb.a
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store ptr %i.c, ptr %10, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.d = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIadEEKNS_3MapINS1_IaLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %10) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  store ptr %i.f, ptr %9, align 8
  %.sroa.4.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i33, align 8
  %.sroa.5.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i34, align 8
  %i.g = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIhdEEKNS_3MapINS1_IhLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store ptr %i.i, ptr %8, align 8
  %.sroa.4.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i35, align 8
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i36, align 8
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIsdEEKNS_3MapINS1_IsLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %i.l, ptr %7, align 8
  %.sroa.4.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i37, align 8
  %.sroa.5.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i38, align 8
  %i.m = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opItdEEKNS_3MapINS1_ItLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store ptr %i.o, ptr %6, align 8
  %.sroa.4.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i39, align 8
  %.sroa.5.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i40, align 8
  %i.p = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIidEEKNS_3MapINS1_IiLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %i.r, ptr %5, align 8
  %.sroa.4.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i41, align 8
  %.sroa.5.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i42, align 8
  %i.s = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIjdEEKNS_3MapINS1_IjLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %i.u, ptr %4, align 8
  %.sroa.4.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i43, align 8
  %.sroa.5.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i44, align 8
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIfdEEKNS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixIdN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ %i.w, %bb.i ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %4 = alloca %"class.Eigen::CwiseUnaryOp.456", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::CwiseUnaryOp.442", align 8 ; 6 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !148
  switch i8 %i.a, label %bb.j [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
    i8 8, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixIhN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixIsN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixItN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixIiN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixIjN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %i.i, ptr %5, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIfiEEKNS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %i.l, ptr %4, align 8
  %.sroa.4.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i33, align 8
  %.sroa.5.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i34, align 8
  %i.m = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdiEEKNS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.i ], [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ], [ true, %bb.h ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl26tinyply_tristrips_to_facesIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !148
  switch i8 %i.a, label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.k
    i8 8, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIaN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149  ; 4 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %._crit_edge84.split.sink.split.i, label %.preheader72.lr.ph.i

.preheader72.lr.ph.i:                             ; preds = %bb.c
  %i.e = add i64 %3, -2                           ; 4 uses
  %.not85.i = icmp eq i64 %i.e, 0
  br i1 %.not85.i, label %._crit_edge84.split.sink.split.i, label %.preheader72.us.lver.check.i

.preheader72.us.lver.check.i:                     ; preds = %.preheader72.lr.ph.i
  %flatten.mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.e) ; 2 uses
  %flatten.overflow.i = extractvalue { i64, i1 } %flatten.mul.i, 1
  br i1 %flatten.overflow.i, label %.preheader72.us.lver.orig.preheader.i, label %.preheader72.us.preheader.i

.preheader72.us.preheader.i:                      ; preds = %.preheader72.us.lver.check.i
  %flatten.tripcount.i = extractvalue { i64, i1 } %flatten.mul.i, 0
  %umax.i = tail call i64 @llvm.umax.i64(i64 %flatten.tripcount.i, i64 1)
  br label %.preheader.lr.ph.split.i

.preheader72.us.lver.orig.preheader.i:            ; preds = %.preheader72.us.lver.check.i
  %4 = mul i64 %i.e, %2
  br label %.preheader.lr.ph.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader72.us.lver.orig.preheader.i, %.preheader72.us.preheader.i
  %.051.lcssa.ph.ph.i = phi i64 [ %4, %.preheader72.us.lver.orig.preheader.i ], [ %umax.i, %.preheader72.us.preheader.i ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.051.lcssa.ph.ph.i, i64 noundef 3)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %1, align 8, !tbaa !405    ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !tbaa !407  ; 4 uses
  %.idx.i = shl i64 %i.h, 3                       ; 3 uses
  %xtraiter108 = and i64 %3, 1
  %i.i = icmp eq i64 %3, 3
  %unroll_iter112 = and i64 %i.e, -2
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  %lcmp.mod111 = trunc i64 %3 to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.04683.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ac, %._crit_edge.i ] ; 2 uses
  %.04782.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %.lcssa, %._crit_edge.i ] ; 2 uses
  %i.j = mul nsw i64 %.04683.i, %3                ; 7 uses
  %invariant.gep.i = getelementptr i8, ptr %i.d, i64 %i.j ; 3 uses
  br i1 %i.i, label %.epil.preheader107, label %.preheader.i.new

._crit_edge84.split.sink.split.i:                 ; preds = %.preheader72.lr.ph.i, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !407
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge84.split.sink.split.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !405
  tail call void @free(ptr noundef %i.m) #32
  store ptr null, ptr %1, align 8, !tbaa !405
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit: ; preds = %._crit_edge84.split.sink.split.i, %bb.d
  store i64 0, ptr %i.k, align 8, !tbaa !407
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod109.not, label %._crit_edge.i, label %.epil.preheader107

.epil.preheader107:                               ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %.081.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %i.ar, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.14879.i.epil.init = phi i64 [ %.04782.i, %.preheader.i ], [ %i.bg, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %gep.i.epil = getelementptr i8, ptr %invariant.gep.i, i64 %.081.i.epil.init
  %i.n = load i8, ptr %gep.i.epil, align 1, !tbaa !34
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr [4 x i8], ptr %i.g, i64 %.14879.i.epil.init ; 3 uses
  store i32 %i.o, ptr %i.p, align 4, !tbaa !100
  %i.q = getelementptr i8, ptr %i.d, i64 %.081.i.epil.init ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 1
  %i.s = getelementptr i8, ptr %i.r, i64 %i.j
  %i.t = load i8, ptr %i.s, align 1, !tbaa !34
  %i.u = zext i8 %i.t to i32
  %i.v = getelementptr [4 x i8], ptr %i.p, i64 %i.h
  store i32 %i.u, ptr %i.v, align 4, !tbaa !100
  %i.w = getelementptr i8, ptr %i.q, i64 2
  %i.x = getelementptr i8, ptr %i.w, i64 %i.j
  %i.y = load i8, ptr %i.x, align 1, !tbaa !34
  %i.z = zext i8 %i.y to i32
  %i.aa = getelementptr i8, ptr %i.p, i64 %.idx.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !100
  %i.ab = add i64 %.14879.i.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader107
  %.lcssa = phi i64 [ %i.bg, %._crit_edge.i.unr-lcssa ], [ %i.ab, %.epil.preheader107 ]
  %i.ac = add nuw i64 %.04683.i, 1                ; 2 uses
  %exitcond90.not.i = icmp eq i64 %i.ac, %2
  br i1 %exitcond90.not.i, label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %.preheader.i, !llvm.loop !408

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %.081.i = phi i64 [ %i.ar, %.preheader.i.new ], [ 0, %.preheader.i ] ; 3 uses
  %.14879.i = phi i64 [ %i.bg, %.preheader.i.new ], [ %.04782.i, %.preheader.i ] ; 3 uses
  %niter113 = phi i64 [ %niter113.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.ad = or disjoint i64 %.081.i, 1              ; 2 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.081.i
  %i.ae = load i8, ptr %gep.i, align 1, !tbaa !34
  %i.af = zext i8 %i.ae to i32
  %i.ag = getelementptr [4 x i8], ptr %i.g, i64 %.14879.i ; 3 uses
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !100
  %i.ah = getelementptr i8, ptr %i.d, i64 %i.ad   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.j
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !34
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr [4 x i8], ptr %i.ag, i64 %i.h
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !100
  %i.am = getelementptr i8, ptr %i.ah, i64 1
  %i.an = getelementptr i8, ptr %i.am, i64 %i.j
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !34
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr i8, ptr %i.ag, i64 %.idx.i
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !100
  %i.ar = add nuw i64 %.081.i, 2                  ; 3 uses
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.ad
  %i.as = load i8, ptr %gep.i.1, align 1, !tbaa !34
  %i.at = zext i8 %i.as to i32
  %i.au = getelementptr [4 x i8], ptr %i.g, i64 %.14879.i
  %i.av = getelementptr i8, ptr %i.au, i64 4      ; 3 uses
  store i32 %i.at, ptr %i.av, align 4, !tbaa !100
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.ar   ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 1
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.j
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !34
  %i.ba = zext i8 %i.az to i32
  %i.bb = getelementptr [4 x i8], ptr %i.av, i64 %i.h
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !100
  %i.bc = getelementptr i8, ptr %i.aw, i64 %i.j
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !34
  %i.be = zext i8 %i.bd to i32
  %i.bf = getelementptr i8, ptr %i.av, i64 %.idx.i
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !100
  %i.bg = add i64 %.14879.i, 2                    ; 3 uses
  %niter113.next.1 = add nuw i64 %niter113, 2     ; 2 uses
  %niter113.ncmp.1 = icmp eq i64 %niter113.next.1, %unroll_iter112
  br i1 %niter113.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !409

bb.e:                                             ; preds = %bb.a
  %i.bh = tail call noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIsN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

bb.f:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !149 ; 4 uses
  %.not.i33 = icmp eq i64 %2, 0
  br i1 %.not.i33, label %._crit_edge84.split.sink.split.i49, label %.preheader72.lr.ph.i34

.preheader72.lr.ph.i34:                           ; preds = %bb.f
  %i.bk = add i64 %3, -2                          ; 4 uses
  %.not85.i35 = icmp eq i64 %i.bk, 0
  br i1 %.not85.i35, label %._crit_edge84.split.sink.split.i49, label %.preheader72.us.lver.check.i36

.preheader72.us.lver.check.i36:                   ; preds = %.preheader72.lr.ph.i34
  %flatten.mul.i37 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.bk) ; 2 uses
  %flatten.overflow.i38 = extractvalue { i64, i1 } %flatten.mul.i37, 1
  br i1 %flatten.overflow.i38, label %.preheader72.us.lver.orig.preheader.i56, label %.preheader72.us.preheader.i39

.preheader72.us.preheader.i39:                    ; preds = %.preheader72.us.lver.check.i36
  %flatten.tripcount.i40 = extractvalue { i64, i1 } %flatten.mul.i37, 0
  %umax.i41 = tail call i64 @llvm.umax.i64(i64 %flatten.tripcount.i40, i64 1)
  br label %.preheader.lr.ph.split.i36

.preheader72.us.lver.orig.preheader.i56:          ; preds = %.preheader72.us.lver.check.i36
  %5 = mul i64 %i.bk, %2
  br label %.preheader.lr.ph.split.i36

.preheader.lr.ph.split.i36:                       ; preds = %.preheader72.us.lver.orig.preheader.i56, %.preheader72.us.preheader.i39
  %.051.lcssa.ph.ph.i43 = phi i64 [ %5, %.preheader72.us.lver.orig.preheader.i56 ], [ %umax.i41, %.preheader72.us.preheader.i39 ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.051.lcssa.ph.ph.i43, i64 noundef 3)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %1, align 8, !tbaa !405   ; 3 uses
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !407 ; 4 uses
  %.idx.i37 = shl i64 %i.bn, 3                    ; 3 uses
  %xtraiter101 = and i64 %3, 1
  %i.bo = icmp eq i64 %3, 3
  %unroll_iter105 = and i64 %i.bk, -2
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  %lcmp.mod104 = trunc i64 %3 to i1
  br label %.preheader.i38

.preheader.i38:                                   ; preds = %._crit_edge.i47, %.preheader.lr.ph.split.i36
  %.04683.i39 = phi i64 [ 0, %.preheader.lr.ph.split.i36 ], [ %i.ci, %._crit_edge.i47 ] ; 2 uses
  %.04782.i40 = phi i64 [ 0, %.preheader.lr.ph.split.i36 ], [ %.lcssa95, %._crit_edge.i47 ] ; 2 uses
  %i.bp = mul nsw i64 %.04683.i39, %3             ; 7 uses
  %invariant.gep.i41 = getelementptr [2 x i8], ptr %i.bj, i64 %i.bp ; 3 uses
  br i1 %i.bo, label %.epil.preheader100, label %.preheader.i38.new

._crit_edge84.split.sink.split.i49:               ; preds = %.preheader72.lr.ph.i34, %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !407
  %.not.i.i67 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i67, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit68, label %bb.g

bb.g:                                             ; preds = %._crit_edge84.split.sink.split.i49
  %i.bs = load ptr, ptr %1, align 8, !tbaa !405
  tail call void @free(ptr noundef %i.bs) #32
  store ptr null, ptr %1, align 8, !tbaa !405
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit68

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit68: ; preds = %._crit_edge84.split.sink.split.i49, %bb.g
  store i64 0, ptr %i.bq, align 8, !tbaa !407
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

._crit_edge.i47.unr-lcssa:                        ; preds = %.preheader.i38.new
  br i1 %lcmp.mod102.not, label %._crit_edge.i47, label %.epil.preheader100

.epil.preheader100:                               ; preds = %._crit_edge.i47.unr-lcssa, %.preheader.i38
  %.081.i42.epil.init = phi i64 [ 0, %.preheader.i38 ], [ %i.cx, %._crit_edge.i47.unr-lcssa ] ; 2 uses
  %.14879.i44.epil.init = phi i64 [ %.04782.i40, %.preheader.i38 ], [ %i.dm, %._crit_edge.i47.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %gep.i45.epil = getelementptr [2 x i8], ptr %invariant.gep.i41, i64 %.081.i42.epil.init
  %i.bt = load i16, ptr %gep.i45.epil, align 2, !tbaa !206
  %i.bu = zext i16 %i.bt to i32
  %i.bv = getelementptr [4 x i8], ptr %i.bm, i64 %.14879.i44.epil.init ; 3 uses
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !100
  %i.bw = getelementptr [2 x i8], ptr %i.bj, i64 %.081.i42.epil.init ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 2
  %i.by = getelementptr [2 x i8], ptr %i.bx, i64 %i.bp
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !206
  %i.ca = zext i16 %i.bz to i32
  %i.cb = getelementptr [4 x i8], ptr %i.bv, i64 %i.bn
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !100
  %i.cc = getelementptr i8, ptr %i.bw, i64 4
  %i.cd = getelementptr [2 x i8], ptr %i.cc, i64 %i.bp
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !206
  %i.cf = zext i16 %i.ce to i32
  %i.cg = getelementptr i8, ptr %i.bv, i64 %.idx.i37
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !100
  %i.ch = add i64 %.14879.i44.epil.init, 1
  br label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %._crit_edge.i47.unr-lcssa, %.epil.preheader100
  %.lcssa95 = phi i64 [ %i.dm, %._crit_edge.i47.unr-lcssa ], [ %i.ch, %.epil.preheader100 ]
  %i.ci = add nuw i64 %.04683.i39, 1              ; 2 uses
  %exitcond90.not.i48 = icmp eq i64 %i.ci, %2
  br i1 %exitcond90.not.i48, label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %.preheader.i38, !llvm.loop !410

.preheader.i38.new:                               ; preds = %.preheader.i38, %.preheader.i38.new
  %.081.i42 = phi i64 [ %i.cx, %.preheader.i38.new ], [ 0, %.preheader.i38 ] ; 3 uses
  %.14879.i44 = phi i64 [ %i.dm, %.preheader.i38.new ], [ %.04782.i40, %.preheader.i38 ] ; 3 uses
  %niter106 = phi i64 [ %niter106.next.1, %.preheader.i38.new ], [ 0, %.preheader.i38 ]
  %i.cj = or disjoint i64 %.081.i42, 1            ; 2 uses
  %gep.i45 = getelementptr [2 x i8], ptr %invariant.gep.i41, i64 %.081.i42
  %i.ck = load i16, ptr %gep.i45, align 2, !tbaa !206
  %i.cl = zext i16 %i.ck to i32
  %i.cm = getelementptr [4 x i8], ptr %i.bm, i64 %.14879.i44 ; 3 uses
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !100
  %i.cn = getelementptr [2 x i8], ptr %i.bj, i64 %i.cj ; 2 uses
  %i.co = getelementptr [2 x i8], ptr %i.cn, i64 %i.bp
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !206
  %i.cq = zext i16 %i.cp to i32
  %i.cr = getelementptr [4 x i8], ptr %i.cm, i64 %i.bn
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !100
  %i.cs = getelementptr i8, ptr %i.cn, i64 2
  %i.ct = getelementptr [2 x i8], ptr %i.cs, i64 %i.bp
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !206
  %i.cv = zext i16 %i.cu to i32
  %i.cw = getelementptr i8, ptr %i.cm, i64 %.idx.i37
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !100
  %i.cx = add nuw i64 %.081.i42, 2                ; 3 uses
  %gep.i45.1 = getelementptr [2 x i8], ptr %invariant.gep.i41, i64 %i.cj
  %i.cy = load i16, ptr %gep.i45.1, align 2, !tbaa !206
  %i.cz = zext i16 %i.cy to i32
  %i.da = getelementptr [4 x i8], ptr %i.bm, i64 %.14879.i44
  %i.db = getelementptr i8, ptr %i.da, i64 4      ; 3 uses
  store i32 %i.cz, ptr %i.db, align 4, !tbaa !100
  %i.dc = getelementptr [2 x i8], ptr %i.bj, i64 %i.cx ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 2
  %i.de = getelementptr [2 x i8], ptr %i.dd, i64 %i.bp
  %i.df = load i16, ptr %i.de, align 2, !tbaa !206
  %i.dg = zext i16 %i.df to i32
  %i.dh = getelementptr [4 x i8], ptr %i.db, i64 %i.bn
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !100
  %i.di = getelementptr [2 x i8], ptr %i.dc, i64 %i.bp
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !206
  %i.dk = zext i16 %i.dj to i32
  %i.dl = getelementptr i8, ptr %i.db, i64 %.idx.i37
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !100
  %i.dm = add i64 %.14879.i44, 2                  ; 3 uses
  %niter106.next.1 = add nuw i64 %niter106, 2     ; 2 uses
  %niter106.ncmp.1 = icmp eq i64 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %._crit_edge.i47.unr-lcssa, label %.preheader.i38.new, !llvm.loop !411

bb.h:                                             ; preds = %bb.a
  %i.dn = tail call noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIiN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

bb.i:                                             ; preds = %bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !149 ; 4 uses
  %.not.i50 = icmp eq i64 %2, 0
  br i1 %.not.i50, label %._crit_edge84.split.sink.split.i66, label %.preheader72.lr.ph.i51

.preheader72.lr.ph.i51:                           ; preds = %bb.i
  %i.dq = add i64 %3, -2                          ; 4 uses
  %.not85.i52 = icmp eq i64 %i.dq, 0
  br i1 %.not85.i52, label %._crit_edge84.split.sink.split.i66, label %.preheader72.us.lver.check.i61

.preheader72.us.lver.check.i61:                   ; preds = %.preheader72.lr.ph.i51
  %flatten.mul.i62 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.dq) ; 2 uses
  %flatten.overflow.i63 = extractvalue { i64, i1 } %flatten.mul.i62, 1
  br i1 %flatten.overflow.i63, label %.preheader72.us.lver.orig.preheader.i81, label %.preheader72.us.preheader.i64

.preheader72.us.preheader.i64:                    ; preds = %.preheader72.us.lver.check.i61
  %flatten.tripcount.i65 = extractvalue { i64, i1 } %flatten.mul.i62, 0
  %umax.i66 = tail call i64 @llvm.umax.i64(i64 %flatten.tripcount.i65, i64 1)
  br label %.preheader.lr.ph.split.i53

.preheader72.us.lver.orig.preheader.i81:          ; preds = %.preheader72.us.lver.check.i61
  %6 = mul i64 %i.dq, %2
  br label %.preheader.lr.ph.split.i53

.preheader.lr.ph.split.i53:                       ; preds = %.preheader72.us.lver.orig.preheader.i81, %.preheader72.us.preheader.i64
  %.051.lcssa.ph.ph.i68 = phi i64 [ %6, %.preheader72.us.lver.orig.preheader.i81 ], [ %umax.i66, %.preheader72.us.preheader.i64 ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.051.lcssa.ph.ph.i68, i64 noundef 3)
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ds = load ptr, ptr %1, align 8, !tbaa !405   ; 3 uses
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !407 ; 4 uses
  %.idx.i54 = shl i64 %i.dt, 3                    ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.du = icmp eq i64 %3, 3
  %unroll_iter = and i64 %i.dq, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod99 = trunc i64 %3 to i1
  br label %.preheader.i55

.preheader.i55:                                   ; preds = %._crit_edge.i64, %.preheader.lr.ph.split.i53
  %.04683.i56 = phi i64 [ 0, %.preheader.lr.ph.split.i53 ], [ %i.el, %._crit_edge.i64 ] ; 2 uses
  %.04782.i57 = phi i64 [ 0, %.preheader.lr.ph.split.i53 ], [ %.lcssa97, %._crit_edge.i64 ] ; 2 uses
  %i.dv = mul nsw i64 %.04683.i56, %3             ; 7 uses
  %invariant.gep.i58 = getelementptr [4 x i8], ptr %i.dp, i64 %i.dv ; 3 uses
  br i1 %i.du, label %.epil.preheader, label %.preheader.i55.new

._crit_edge84.split.sink.split.i66:               ; preds = %.preheader72.lr.ph.i51, %bb.i
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !407
  %.not.i.i69 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i69, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit70, label %bb.j

bb.j:                                             ; preds = %._crit_edge84.split.sink.split.i66
  %i.dy = load ptr, ptr %1, align 8, !tbaa !405
  tail call void @free(ptr noundef %i.dy) #32
  store ptr null, ptr %1, align 8, !tbaa !405
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit70

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit70: ; preds = %._crit_edge84.split.sink.split.i66, %bb.j
  store i64 0, ptr %i.dw, align 8, !tbaa !407
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

._crit_edge.i64.unr-lcssa:                        ; preds = %.preheader.i55.new
  br i1 %lcmp.mod.not, label %._crit_edge.i64, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i64.unr-lcssa, %.preheader.i55
  %.081.i59.epil.init = phi i64 [ 0, %.preheader.i55 ], [ %i.ex, %._crit_edge.i64.unr-lcssa ] ; 2 uses
  %.14879.i61.epil.init = phi i64 [ %.04782.i57, %.preheader.i55 ], [ %i.fj, %._crit_edge.i64.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %gep.i62.epil = getelementptr [4 x i8], ptr %invariant.gep.i58, i64 %.081.i59.epil.init
  %i.dz = load i32, ptr %gep.i62.epil, align 4, !tbaa !100
  %i.ea = getelementptr [4 x i8], ptr %i.ds, i64 %.14879.i61.epil.init ; 3 uses
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !100
  %i.eb = getelementptr [4 x i8], ptr %i.dp, i64 %.081.i59.epil.init ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 4
  %i.ed = getelementptr [4 x i8], ptr %i.ec, i64 %i.dv
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !100
  %i.ef = getelementptr [4 x i8], ptr %i.ea, i64 %i.dt
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !100
  %i.eg = getelementptr i8, ptr %i.eb, i64 8
  %i.eh = getelementptr [4 x i8], ptr %i.eg, i64 %i.dv
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !100
  %i.ej = getelementptr i8, ptr %i.ea, i64 %.idx.i54
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !100
  %i.ek = add i64 %.14879.i61.epil.init, 1
  br label %._crit_edge.i64

._crit_edge.i64:                                  ; preds = %._crit_edge.i64.unr-lcssa, %.epil.preheader
  %.lcssa97 = phi i64 [ %i.fj, %._crit_edge.i64.unr-lcssa ], [ %i.ek, %.epil.preheader ]
  %i.el = add nuw i64 %.04683.i56, 1              ; 2 uses
  %exitcond90.not.i65 = icmp eq i64 %i.el, %2
  br i1 %exitcond90.not.i65, label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %.preheader.i55, !llvm.loop !412

.preheader.i55.new:                               ; preds = %.preheader.i55, %.preheader.i55.new
  %.081.i59 = phi i64 [ %i.ex, %.preheader.i55.new ], [ 0, %.preheader.i55 ] ; 3 uses
  %.14879.i61 = phi i64 [ %i.fj, %.preheader.i55.new ], [ %.04782.i57, %.preheader.i55 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i55.new ], [ 0, %.preheader.i55 ]
  %i.em = or disjoint i64 %.081.i59, 1            ; 2 uses
  %gep.i62 = getelementptr [4 x i8], ptr %invariant.gep.i58, i64 %.081.i59
  %i.en = load i32, ptr %gep.i62, align 4, !tbaa !100
  %i.eo = getelementptr [4 x i8], ptr %i.ds, i64 %.14879.i61 ; 3 uses
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !100
  %i.ep = getelementptr [4 x i8], ptr %i.dp, i64 %i.em ; 2 uses
  %i.eq = getelementptr [4 x i8], ptr %i.ep, i64 %i.dv
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !100
  %i.es = getelementptr [4 x i8], ptr %i.eo, i64 %i.dt
  store i32 %i.er, ptr %i.es, align 4, !tbaa !100
  %i.et = getelementptr i8, ptr %i.ep, i64 4
  %i.eu = getelementptr [4 x i8], ptr %i.et, i64 %i.dv
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !100
  %i.ew = getelementptr i8, ptr %i.eo, i64 %.idx.i54
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !100
  %i.ex = add nuw i64 %.081.i59, 2                ; 3 uses
  %gep.i62.1 = getelementptr [4 x i8], ptr %invariant.gep.i58, i64 %i.em
  %i.ey = load i32, ptr %gep.i62.1, align 4, !tbaa !100
  %i.ez = getelementptr [4 x i8], ptr %i.ds, i64 %.14879.i61
  %i.fa = getelementptr i8, ptr %i.ez, i64 4      ; 3 uses
  store i32 %i.ey, ptr %i.fa, align 4, !tbaa !100
  %i.fb = getelementptr [4 x i8], ptr %i.dp, i64 %i.ex ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 4
  %i.fd = getelementptr [4 x i8], ptr %i.fc, i64 %i.dv
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !100
  %i.ff = getelementptr [4 x i8], ptr %i.fa, i64 %i.dt
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !100
  %i.fg = getelementptr [4 x i8], ptr %i.fb, i64 %i.dv
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !100
  %i.fi = getelementptr i8, ptr %i.fa, i64 %.idx.i54
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !100
  %i.fj = add i64 %.14879.i61, 2                  ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i64.unr-lcssa, label %.preheader.i55.new, !llvm.loop !413

bb.k:                                             ; preds = %bb.a
  %i.fk = tail call noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIfN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

bb.l:                                             ; preds = %bb.a
  %i.fl = tail call noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIdN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit: ; preds = %._crit_edge.i64, %._crit_edge.i47, %._crit_edge.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit70, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit68, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit, %bb.a, %bb.l, %bb.k, %bb.h, %bb.e, %bb.b
  %.0 = phi i1 [ %i.fl, %bb.l ], [ %i.b, %bb.b ], [ false, %bb.a ], [ %i.bh, %bb.e ], [ true, %._crit_edge.i ], [ %i.dn, %bb.h ], [ true, %._crit_edge.i47 ], [ %i.fk, %bb.k ], [ true, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit ], [ true, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit68 ], [ true, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit70 ], [ true, %._crit_edge.i64 ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixIdN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 9 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 3 uses
  %i.d = icmp eq i64 %2, 0
  %i.e = icmp eq i64 %3, 0
  %or.cond.i.i.i.i = or i1 %i.d, %i.e
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sdiv i64 9223372036854775807, %3
  %i.g = icmp sgt i64 %2, %i.f
  br i1 %i.g, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i: ; preds = %bb.b, %bb.a
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !414
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, %2
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %3, 3
  %or.cond.i.i.i.i.i.i.i.i = and i1 %.not8.i.i.i.i.i.i.i.i, %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.d, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !414
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i
  %i.k = phi i64 [ %.pr.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i ], [ %2, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i ] ; 22 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !416    ; 9 uses
  %i.m = ptrtoaddr ptr %i.l to i64                ; 3 uses
  %i.n = icmp sgt i64 %i.k, 0
  br i1 %i.n, label %.split.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEaSINS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEERS2_RKNS_9EigenBaseIT_EE.exit

.split.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.k, 10
  %ident.check.not = icmp ne i64 %3, 1
  %or.cond.not44 = or i1 %min.iters.check, %ident.check.not
  %i.o = sub i64 %i.c, %i.m
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond41 = select i1 %or.cond.not44, i1 true, i1 %diff.check
  br i1 %or.cond41, label %.split.i.i.i.i.i.i.i.i.preheader45, label %vector.ph

vector.ph:                                        ; preds = %.split.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.k, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %wide.load = load <2 x double>, ptr %i.q, align 8, !tbaa !188
  %wide.load8 = load <2 x double>, ptr %i.r, align 8, !tbaa !188
  %i.s = getelementptr i8, ptr %i.p, i64 16
  store <2 x double> %wide.load, ptr %i.p, align 8, !tbaa !188
  store <2 x double> %wide.load8, ptr %i.s, align 8, !tbaa !188
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !417

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.preheader45

.split.i.i.i.i.i.i.i.i.preheader45:               ; preds = %.split.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.split.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.i.i.i.i.i.i.i.i.prol.loopexit, label %.split.i.i.i.i.i.i.i.i.prol

.split.i.i.i.i.i.i.i.i.prol:                      ; preds = %.split.i.i.i.i.i.i.i.i.preheader45, %.split.i.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.x, %.split.i.i.i.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.i.i.i.ph, %.split.i.i.i.i.i.i.i.i.preheader45 ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm:bb.a

vector.body105:                                   ; preds = %vector.body105, %vector.ph103
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next109, %vector.body105 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %index106 ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %index106 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %wide.load107 = load <4 x i16>, ptr %i.eg, align 2, !tbaa !206
  %wide.load108 = load <4 x i16>, ptr %i.eh, align 2, !tbaa !206
  %i.ei = zext <4 x i16> %wide.load107 to <4 x i32>
  %i.ej = zext <4 x i16> %wide.load108 to <4 x i32>
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <4 x i32> %i.ei, ptr %i.ef, align 4, !tbaa !100
  store <4 x i32> %i.ej, ptr %i.ek, align 4, !tbaa !100
  %index.next109 = add nuw i64 %index106, 8       ; 2 uses
  %i.el = icmp eq i64 %index.next109, %n.vec104
  br i1 %i.el, label %middle.block110, label %vector.body105, !llvm.loop !662

middle.block110:                                  ; preds = %vector.body105
  %cmp.n111 = icmp eq i64 %smax.i.i.i.i.i.i.i.i.i60, %n.vec104
  br i1 %cmp.n111, label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %scalar.ph101.preheader

scalar.ph101.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i59, %middle.block110
  %.05.i.i.i.i.i.i.i.i.i61.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i59 ], [ %n.vec104, %middle.block110 ]
  br label %scalar.ph101

scalar.ph101:                                     ; preds = %scalar.ph101.preheader, %scalar.ph101
  %.05.i.i.i.i.i.i.i.i.i61 = phi i64 [ %i.eq, %scalar.ph101 ], [ %.05.i.i.i.i.i.i.i.i.i61.ph, %scalar.ph101.preheader ] ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.05.i.i.i.i.i.i.i.i.i61
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %.05.i.i.i.i.i.i.i.i.i61
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !206
  %i.ep = zext i16 %i.eo to i32
  store i32 %i.ep, ptr %i.em, align 4, !tbaa !100
  %i.eq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i61, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i62 = icmp eq i64 %i.eq, %smax.i.i.i.i.i.i.i.i.i60
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i62, label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %scalar.ph101, !llvm.loop !663

bb.r:                                             ; preds = %bb.a
  %i.er = tail call noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixIiN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

bb.s:                                             ; preds = %bb.a
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !149 ; 7 uses
  %i.eu = ptrtoaddr ptr %i.et to i64
  %i.ev = icmp eq i64 %2, 0
  %i.ew = icmp eq i64 %3, 0
  %or.cond.i.i.i.i.i63 = or i1 %i.ev, %i.ew
  br i1 %or.cond.i.i.i.i.i63, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIjiEEKNS_3MapINS1_IjLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ex = sdiv i64 9223372036854775807, %3
  %i.ey = icmp sgt i64 %2, %i.ex
  br i1 %i.ey, label %bb.u, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIjiEEKNS_3MapINS1_IjLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.ez = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ez, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.ez, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIjiEEKNS_3MapINS1_IjLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.t, %bb.s
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !641
  %.not.i.i.i.i.i.i.i.i.i64 = icmp eq i64 %i.fb, %2
  %.not8.i.i.i.i.i.i.i.i.i65 = icmp eq i64 %3, 3
  %or.cond.i.i.i.i.i.i.i.i.i66 = and i1 %.not8.i.i.i.i.i.i.i.i.i65, %.not.i.i.i.i.i.i.i.i.i64
  br i1 %or.cond.i.i.i.i.i.i.i.i.i66, label %bb.v, label %thread-pre-split.i.i.i.i.i.i.i.i67

thread-pre-split.i.i.i.i.i.i.i.i67:               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIjiEEKNS_3MapINS1_IjLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  %.pr.i.i.i.i.i.i.i.i68 = load i64, ptr %i.fa, align 8, !tbaa !641
  br label %bb.v

bb.v:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i67, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIjiEEKNS_3MapINS1_IjLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.fc = phi i64 [ %.pr.i.i.i.i.i.i.i.i68, %thread-pre-split.i.i.i.i.i.i.i.i67 ], [ %2, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIjiEEKNS_3MapINS1_IjLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i ] ; 2 uses
  %i.fd = load ptr, ptr %1, align 8, !tbaa !643   ; 7 uses
  %i.fe = icmp sgt i64 %i.fc, 0
  br i1 %i.fe, label %.lr.ph.i.i.i.i.i.i.i.i.i69, label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

.lr.ph.i.i.i.i.i.i.i.i.i69:                       ; preds = %bb.v
  %i.ff = ptrtoaddr ptr %i.fd to i64
  %i.fg = mul i64 %i.fc, 3                        ; 2 uses
  %smax.i.i.i.i.i.i.i.i.i70 = tail call i64 @llvm.smax.i64(i64 %i.fg, i64 1) ; 5 uses
  %min.iters.check = icmp slt i64 %i.fg, 8
  %i.fh = sub i64 %i.eu, %i.ff
  %diff.check = icmp ugt i64 %i.fh, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i69
  %n.vec = and i64 %smax.i.i.i.i.i.i.i.i.i70, 9223372036854775800 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %index ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %index ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load = load <4 x i32>, ptr %i.fj, align 4, !tbaa !100
  %wide.load100 = load <4 x i32>, ptr %i.fk, align 4, !tbaa !100
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <4 x i32> %wide.load, ptr %i.fi, align 4, !tbaa !100
  store <4 x i32> %wide.load100, ptr %i.fl, align 4, !tbaa !100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !664

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %smax.i.i.i.i.i.i.i.i.i70, %n.vec
  br i1 %cmp.n, label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i69, %middle.block
  %.05.i.i.i.i.i.i.i.i.i71.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i69 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %smax.i.i.i.i.i.i.i.i.i70, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.05.i.i.i.i.i.i.i.i.i71.prol = phi i64 [ %i.fq, %scalar.ph.prol ], [ %.05.i.i.i.i.i.i.i.i.i71.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.05.i.i.i.i.i.i.i.i.i71.prol
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.05.i.i.i.i.i.i.i.i.i71.prol
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !100
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !100
  %i.fq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i71.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !665

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.i.i.i.i.i.i.i.i.i71.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i71.ph, %scalar.ph.preheader ], [ %i.fq, %scalar.ph.prol ]
  %i.fr = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i71.ph, %smax.i.i.i.i.i.i.i.i.i70
  %i.fs = icmp ugt i64 %i.fr, -4
  br i1 %i.fs, label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.i.i.i.i.i.i.i.i.i71 = phi i64 [ %i.gi, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.i.i71.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.05.i.i.i.i.i.i.i.i.i71
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.05.i.i.i.i.i.i.i.i.i71
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !100
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !100
  %i.fw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i71, 1 ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.fw
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !100
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !100
  %i.ga = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i71, 2 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.ga
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.ga
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !100
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !100
  %i.ge = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i71, 3 ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.ge
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.ge
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !100
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !100
  %i.gi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i71, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i72.3 = icmp eq i64 %i.gi, %smax.i.i.i.i.i.i.i.i.i70
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i72.3, label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %scalar.ph, !llvm.loop !666

bb.w:                                             ; preds = %bb.a
  %i.gj = tail call noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixIfN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

bb.x:                                             ; preds = %bb.a
  %i.gk = tail call noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixIdN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph101, %scalar.ph113, %scalar.ph127.prol.loopexit, %scalar.ph127, %scalar.ph145.prol.loopexit, %scalar.ph145, %middle.block, %middle.block110, %middle.block122, %middle.block136, %middle.block154, %bb.v, %bb.q, %bb.m, %bb.i, %bb.e, %bb.a, %bb.x, %bb.w, %bb.r
  %.0 = phi i1 [ %i.gk, %bb.x ], [ false, %bb.a ], [ true, %middle.block154 ], [ true, %middle.block136 ], [ true, %middle.block122 ], [ %i.er, %bb.r ], [ true, %middle.block110 ], [ %i.gj, %bb.w ], [ true, %bb.e ], [ true, %bb.i ], [ true, %bb.m ], [ true, %bb.q ], [ true, %bb.v ], [ true, %middle.block ], [ true, %scalar.ph101 ], [ true, %scalar.ph145.prol.loopexit ], [ true, %scalar.ph127.prol.loopexit ], [ true, %scalar.ph113 ], [ true, %scalar.ph145 ], [ true, %scalar.ph127 ], [ true, %scalar.ph ], [ true, %scalar.ph.prol.loopexit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl26tinyply_tristrips_to_facesIN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !148
  switch i8 %i.a, label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.k
    i8 8, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIaN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149  ; 4 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %._crit_edge86.split.sink.split.i, label %.preheader74.lr.ph.i

.preheader74.lr.ph.i:                             ; preds = %bb.c
  %i.e = add i64 %3, -2                           ; 4 uses
  %.not87.i = icmp eq i64 %i.e, 0
  br i1 %.not87.i, label %._crit_edge86.split.sink.split.i, label %.preheader74.us.lver.check.i

.preheader74.us.lver.check.i:                     ; preds = %.preheader74.lr.ph.i
  %flatten.mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.e) ; 2 uses
  %flatten.overflow.i = extractvalue { i64, i1 } %flatten.mul.i, 1
  br i1 %flatten.overflow.i, label %.preheader74.us.lver.orig.preheader.i, label %.preheader74.us.preheader.i

.preheader74.us.preheader.i:                      ; preds = %.preheader74.us.lver.check.i
  %flatten.tripcount.i = extractvalue { i64, i1 } %flatten.mul.i, 0
  %umax.i = tail call i64 @llvm.umax.i64(i64 %flatten.tripcount.i, i64 1)
  br label %.preheader.lr.ph.split.i

.preheader74.us.lver.orig.preheader.i:            ; preds = %.preheader74.us.lver.check.i
  %4 = mul i64 %i.e, %2
  br label %.preheader.lr.ph.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader74.us.lver.orig.preheader.i, %.preheader74.us.preheader.i
  %.051.lcssa.ph.ph.i = phi i64 [ %4, %.preheader74.us.lver.orig.preheader.i ], [ %umax.i, %.preheader74.us.preheader.i ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.051.lcssa.ph.ph.i, i64 noundef 3)
  %i.f = load ptr, ptr %1, align 8, !tbaa !643    ; 3 uses
  %xtraiter108 = and i64 %3, 1
  %i.g = icmp eq i64 %3, 3
  %unroll_iter112 = and i64 %i.e, -2
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  %lcmp.mod111 = trunc i64 %3 to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.04685.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.aa, %._crit_edge.i ] ; 2 uses
  %.04784.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %.lcssa, %._crit_edge.i ] ; 2 uses
  %i.h = mul nsw i64 %.04685.i, %3                ; 7 uses
  %invariant.gep.i = getelementptr i8, ptr %i.d, i64 %i.h ; 3 uses
  br i1 %i.g, label %.epil.preheader107, label %.preheader.i.new

._crit_edge86.split.sink.split.i:                 ; preds = %.preheader74.lr.ph.i, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !641
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge86.split.sink.split.i
  %i.k = load ptr, ptr %1, align 8, !tbaa !643
  tail call void @free(ptr noundef %i.k) #32
  store ptr null, ptr %1, align 8, !tbaa !643
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit: ; preds = %._crit_edge86.split.sink.split.i, %bb.d
  store i64 0, ptr %i.i, align 8, !tbaa !641
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod109.not, label %._crit_edge.i, label %.epil.preheader107

.epil.preheader107:                               ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %.083.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %i.ap, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.14881.i.epil.init = phi i64 [ %.04784.i, %.preheader.i ], [ %i.bf, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %gep.i.epil = getelementptr i8, ptr %invariant.gep.i, i64 %.083.i.epil.init
  %i.l = load i8, ptr %gep.i.epil, align 1, !tbaa !34
  %i.m = zext i8 %i.l to i32
  %.idx.i.i.i.i.epil = mul i64 %.14881.i.epil.init, 12
  %i.n = getelementptr i8, ptr %i.f, i64 %.idx.i.i.i.i.epil ; 3 uses
  store i32 %i.m, ptr %i.n, align 4, !tbaa !100
  %i.o = getelementptr i8, ptr %i.d, i64 %.083.i.epil.init ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr i8, ptr %i.p, i64 %i.h
  %i.r = load i8, ptr %i.q, align 1, !tbaa !34
  %i.s = zext i8 %i.r to i32
  %i.t = getelementptr i8, ptr %i.n, i64 4
  store i32 %i.s, ptr %i.t, align 4, !tbaa !100
  %i.u = getelementptr i8, ptr %i.o, i64 2
  %i.v = getelementptr i8, ptr %i.u, i64 %i.h
  %i.w = load i8, ptr %i.v, align 1, !tbaa !34
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr i8, ptr %i.n, i64 8
  store i32 %i.x, ptr %i.y, align 4, !tbaa !100
  %i.z = add i64 %.14881.i.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader107
  %.lcssa = phi i64 [ %i.bf, %._crit_edge.i.unr-lcssa ], [ %i.z, %.epil.preheader107 ]
  %i.aa = add nuw i64 %.04685.i, 1                ; 2 uses
  %exitcond92.not.i = icmp eq i64 %i.aa, %2
  br i1 %exitcond92.not.i, label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %.preheader.i, !llvm.loop !667

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %.083.i = phi i64 [ %i.ap, %.preheader.i.new ], [ 0, %.preheader.i ] ; 3 uses
  %.14881.i = phi i64 [ %i.bf, %.preheader.i.new ], [ %.04784.i, %.preheader.i ] ; 3 uses
  %niter113 = phi i64 [ %niter113.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.ab = or disjoint i64 %.083.i, 1              ; 2 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.083.i
  %i.ac = load i8, ptr %gep.i, align 1, !tbaa !34
  %i.ad = zext i8 %i.ac to i32
  %.idx.i.i.i.i = mul i64 %.14881.i, 12
  %i.ae = getelementptr i8, ptr %i.f, i64 %.idx.i.i.i.i ; 3 uses
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !100
  %i.af = getelementptr i8, ptr %i.d, i64 %i.ab   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.h
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !34
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr i8, ptr %i.ae, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !100
  %i.ak = getelementptr i8, ptr %i.af, i64 1
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.h
  %i.am = load i8, ptr %i.al, align 1, !tbaa !34
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr i8, ptr %i.ae, i64 8
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !100
  %i.ap = add nuw i64 %.083.i, 2                  ; 3 uses
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.ab
  %i.aq = load i8, ptr %gep.i.1, align 1, !tbaa !34
  %i.ar = zext i8 %i.aq to i32
  %i.as = mul i64 %.14881.i, 12
  %i.at = getelementptr i8, ptr %i.f, i64 %i.as   ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 12
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !100
  %i.av = getelementptr i8, ptr %i.d, i64 %i.ap   ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 1
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.h
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !34
  %i.az = zext i8 %i.ay to i32
  %i.ba = getelementptr i8, ptr %i.at, i64 16
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !100
  %i.bb = getelementptr i8, ptr %i.av, i64 %i.h
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !34
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr i8, ptr %i.at, i64 20
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !100
  %i.bf = add i64 %.14881.i, 2                    ; 3 uses
  %niter113.next.1 = add nuw i64 %niter113, 2     ; 2 uses
  %niter113.ncmp.1 = icmp eq i64 %niter113.next.1, %unroll_iter112
  br i1 %niter113.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !668

bb.e:                                             ; preds = %bb.a
  %i.bg = tail call noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIsN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

bb.f:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !149 ; 4 uses
  %.not.i33 = icmp eq i64 %2, 0
  br i1 %.not.i33, label %._crit_edge86.split.sink.split.i49, label %.preheader74.lr.ph.i34

.preheader74.lr.ph.i34:                           ; preds = %bb.f
  %i.bj = add i64 %3, -2                          ; 4 uses
  %.not87.i35 = icmp eq i64 %i.bj, 0
  br i1 %.not87.i35, label %._crit_edge86.split.sink.split.i49, label %.preheader74.us.lver.check.i36

.preheader74.us.lver.check.i36:                   ; preds = %.preheader74.lr.ph.i34
  %flatten.mul.i37 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.bj) ; 2 uses
  %flatten.overflow.i38 = extractvalue { i64, i1 } %flatten.mul.i37, 1
  br i1 %flatten.overflow.i38, label %.preheader74.us.lver.orig.preheader.i56, label %.preheader74.us.preheader.i39

.preheader74.us.preheader.i39:                    ; preds = %.preheader74.us.lver.check.i36
  %flatten.tripcount.i40 = extractvalue { i64, i1 } %flatten.mul.i37, 0
  %umax.i41 = tail call i64 @llvm.umax.i64(i64 %flatten.tripcount.i40, i64 1)
  br label %.preheader.lr.ph.split.i36

.preheader74.us.lver.orig.preheader.i56:          ; preds = %.preheader74.us.lver.check.i36
  %5 = mul i64 %i.bj, %2
  br label %.preheader.lr.ph.split.i36

.preheader.lr.ph.split.i36:                       ; preds = %.preheader74.us.lver.orig.preheader.i56, %.preheader74.us.preheader.i39
  %.051.lcssa.ph.ph.i43 = phi i64 [ %5, %.preheader74.us.lver.orig.preheader.i56 ], [ %umax.i41, %.preheader74.us.preheader.i39 ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.051.lcssa.ph.ph.i43, i64 noundef 3)
  %i.bk = load ptr, ptr %1, align 8, !tbaa !643   ; 3 uses
  %xtraiter101 = and i64 %3, 1
  %i.bl = icmp eq i64 %3, 3
  %unroll_iter105 = and i64 %i.bj, -2
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  %lcmp.mod104 = trunc i64 %3 to i1
  br label %.preheader.i37

.preheader.i37:                                   ; preds = %._crit_edge.i47, %.preheader.lr.ph.split.i36
  %.04685.i38 = phi i64 [ 0, %.preheader.lr.ph.split.i36 ], [ %i.cf, %._crit_edge.i47 ] ; 2 uses
  %.04784.i39 = phi i64 [ 0, %.preheader.lr.ph.split.i36 ], [ %.lcssa95, %._crit_edge.i47 ] ; 2 uses
  %i.bm = mul nsw i64 %.04685.i38, %3             ; 7 uses
  %invariant.gep.i40 = getelementptr [2 x i8], ptr %i.bi, i64 %i.bm ; 3 uses
  br i1 %i.bl, label %.epil.preheader100, label %.preheader.i37.new

._crit_edge86.split.sink.split.i49:               ; preds = %.preheader74.lr.ph.i34, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !641
  %.not.i.i67 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i67, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit68, label %bb.g

bb.g:                                             ; preds = %._crit_edge86.split.sink.split.i49
  %i.bp = load ptr, ptr %1, align 8, !tbaa !643
  tail call void @free(ptr noundef %i.bp) #32
  store ptr null, ptr %1, align 8, !tbaa !643
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit68

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit68: ; preds = %._crit_edge86.split.sink.split.i49, %bb.g
  store i64 0, ptr %i.bn, align 8, !tbaa !641
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

._crit_edge.i47.unr-lcssa:                        ; preds = %.preheader.i37.new
  br i1 %lcmp.mod102.not, label %._crit_edge.i47, label %.epil.preheader100

.epil.preheader100:                               ; preds = %._crit_edge.i47.unr-lcssa, %.preheader.i37
  %.083.i41.epil.init = phi i64 [ 0, %.preheader.i37 ], [ %i.cu, %._crit_edge.i47.unr-lcssa ] ; 2 uses
  %.14881.i43.epil.init = phi i64 [ %.04784.i39, %.preheader.i37 ], [ %i.dk, %._crit_edge.i47.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %gep.i44.epil = getelementptr [2 x i8], ptr %invariant.gep.i40, i64 %.083.i41.epil.init
  %i.bq = load i16, ptr %gep.i44.epil, align 2, !tbaa !206
  %i.br = zext i16 %i.bq to i32
  %.idx.i.i.i.i45.epil = mul i64 %.14881.i43.epil.init, 12
  %i.bs = getelementptr i8, ptr %i.bk, i64 %.idx.i.i.i.i45.epil ; 3 uses
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !100
  %i.bt = getelementptr [2 x i8], ptr %i.bi, i64 %.083.i41.epil.init ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 2
  %i.bv = getelementptr [2 x i8], ptr %i.bu, i64 %i.bm
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !206
  %i.bx = zext i16 %i.bw to i32
  %i.by = getelementptr i8, ptr %i.bs, i64 4
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !100
  %i.bz = getelementptr i8, ptr %i.bt, i64 4
  %i.ca = getelementptr [2 x i8], ptr %i.bz, i64 %i.bm
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !206
  %i.cc = zext i16 %i.cb to i32
  %i.cd = getelementptr i8, ptr %i.bs, i64 8
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !100
  %i.ce = add i64 %.14881.i43.epil.init, 1
  br label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %._crit_edge.i47.unr-lcssa, %.epil.preheader100
  %.lcssa95 = phi i64 [ %i.dk, %._crit_edge.i47.unr-lcssa ], [ %i.ce, %.epil.preheader100 ]
  %i.cf = add nuw i64 %.04685.i38, 1              ; 2 uses
  %exitcond92.not.i48 = icmp eq i64 %i.cf, %2
  br i1 %exitcond92.not.i48, label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %.preheader.i37, !llvm.loop !669

.preheader.i37.new:                               ; preds = %.preheader.i37, %.preheader.i37.new
  %.083.i41 = phi i64 [ %i.cu, %.preheader.i37.new ], [ 0, %.preheader.i37 ] ; 3 uses
  %.14881.i43 = phi i64 [ %i.dk, %.preheader.i37.new ], [ %.04784.i39, %.preheader.i37 ] ; 3 uses
  %niter106 = phi i64 [ %niter106.next.1, %.preheader.i37.new ], [ 0, %.preheader.i37 ]
  %i.cg = or disjoint i64 %.083.i41, 1            ; 2 uses
  %gep.i44 = getelementptr [2 x i8], ptr %invariant.gep.i40, i64 %.083.i41
  %i.ch = load i16, ptr %gep.i44, align 2, !tbaa !206
  %i.ci = zext i16 %i.ch to i32
  %.idx.i.i.i.i45 = mul i64 %.14881.i43, 12
  %i.cj = getelementptr i8, ptr %i.bk, i64 %.idx.i.i.i.i45 ; 3 uses
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !100
  %i.ck = getelementptr [2 x i8], ptr %i.bi, i64 %i.cg ; 2 uses
  %i.cl = getelementptr [2 x i8], ptr %i.ck, i64 %i.bm
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !206
  %i.cn = zext i16 %i.cm to i32
  %i.co = getelementptr i8, ptr %i.cj, i64 4
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !100
  %i.cp = getelementptr i8, ptr %i.ck, i64 2
  %i.cq = getelementptr [2 x i8], ptr %i.cp, i64 %i.bm
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !206
  %i.cs = zext i16 %i.cr to i32
  %i.ct = getelementptr i8, ptr %i.cj, i64 8
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !100
  %i.cu = add nuw i64 %.083.i41, 2                ; 3 uses
  %gep.i44.1 = getelementptr [2 x i8], ptr %invariant.gep.i40, i64 %i.cg
  %i.cv = load i16, ptr %gep.i44.1, align 2, !tbaa !206
  %i.cw = zext i16 %i.cv to i32
  %i.cx = mul i64 %.14881.i43, 12
  %i.cy = getelementptr i8, ptr %i.bk, i64 %i.cx  ; 3 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 12
  store i32 %i.cw, ptr %i.cz, align 4, !tbaa !100
  %i.da = getelementptr [2 x i8], ptr %i.bi, i64 %i.cu ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 2
  %i.dc = getelementptr [2 x i8], ptr %i.db, i64 %i.bm
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !206
  %i.de = zext i16 %i.dd to i32
  %i.df = getelementptr i8, ptr %i.cy, i64 16
  store i32 %i.de, ptr %i.df, align 4, !tbaa !100
  %i.dg = getelementptr [2 x i8], ptr %i.da, i64 %i.bm
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !206
  %i.di = zext i16 %i.dh to i32
  %i.dj = getelementptr i8, ptr %i.cy, i64 20
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !100
  %i.dk = add i64 %.14881.i43, 2                  ; 3 uses
  %niter106.next.1 = add nuw i64 %niter106, 2     ; 2 uses
  %niter106.ncmp.1 = icmp eq i64 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %._crit_edge.i47.unr-lcssa, label %.preheader.i37.new, !llvm.loop !670

bb.h:                                             ; preds = %bb.a
  %i.dl = tail call noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIiN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

bb.i:                                             ; preds = %bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !149 ; 4 uses
  %.not.i50 = icmp eq i64 %2, 0
  br i1 %.not.i50, label %._crit_edge86.split.sink.split.i66, label %.preheader74.lr.ph.i51

.preheader74.lr.ph.i51:                           ; preds = %bb.i
  %i.do = add i64 %3, -2                          ; 4 uses
  %.not87.i52 = icmp eq i64 %i.do, 0
  br i1 %.not87.i52, label %._crit_edge86.split.sink.split.i66, label %.preheader74.us.lver.check.i61

.preheader74.us.lver.check.i61:                   ; preds = %.preheader74.lr.ph.i51
  %flatten.mul.i62 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.do) ; 2 uses
  %flatten.overflow.i63 = extractvalue { i64, i1 } %flatten.mul.i62, 1
  br i1 %flatten.overflow.i63, label %.preheader74.us.lver.orig.preheader.i81, label %.preheader74.us.preheader.i64

.preheader74.us.preheader.i64:                    ; preds = %.preheader74.us.lver.check.i61
  %flatten.tripcount.i65 = extractvalue { i64, i1 } %flatten.mul.i62, 0
  %umax.i66 = tail call i64 @llvm.umax.i64(i64 %flatten.tripcount.i65, i64 1)
  br label %.preheader.lr.ph.split.i53

.preheader74.us.lver.orig.preheader.i81:          ; preds = %.preheader74.us.lver.check.i61
  %6 = mul i64 %i.do, %2
  br label %.preheader.lr.ph.split.i53

.preheader.lr.ph.split.i53:                       ; preds = %.preheader74.us.lver.orig.preheader.i81, %.preheader74.us.preheader.i64
  %.051.lcssa.ph.ph.i68 = phi i64 [ %6, %.preheader74.us.lver.orig.preheader.i81 ], [ %umax.i66, %.preheader74.us.preheader.i64 ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.051.lcssa.ph.ph.i68, i64 noundef 3)
  %i.dp = load ptr, ptr %1, align 8, !tbaa !643   ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.dq = icmp eq i64 %3, 3
  %unroll_iter = and i64 %i.do, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod99 = trunc i64 %3 to i1
  br label %.preheader.i54

.preheader.i54:                                   ; preds = %._crit_edge.i64, %.preheader.lr.ph.split.i53
  %.04685.i55 = phi i64 [ 0, %.preheader.lr.ph.split.i53 ], [ %i.eh, %._crit_edge.i64 ] ; 2 uses
  %.04784.i56 = phi i64 [ 0, %.preheader.lr.ph.split.i53 ], [ %.lcssa97, %._crit_edge.i64 ] ; 2 uses
  %i.dr = mul nsw i64 %.04685.i55, %3             ; 7 uses
  %invariant.gep.i57 = getelementptr [4 x i8], ptr %i.dn, i64 %i.dr ; 3 uses
  br i1 %i.dq, label %.epil.preheader, label %.preheader.i54.new

._crit_edge86.split.sink.split.i66:               ; preds = %.preheader74.lr.ph.i51, %bb.i
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !641
  %.not.i.i69 = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i69, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit70, label %bb.j

bb.j:                                             ; preds = %._crit_edge86.split.sink.split.i66
  %i.du = load ptr, ptr %1, align 8, !tbaa !643
  tail call void @free(ptr noundef %i.du) #32
  store ptr null, ptr %1, align 8, !tbaa !643
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit70

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit70: ; preds = %._crit_edge86.split.sink.split.i66, %bb.j
  store i64 0, ptr %i.ds, align 8, !tbaa !641
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

._crit_edge.i64.unr-lcssa:                        ; preds = %.preheader.i54.new
  br i1 %lcmp.mod.not, label %._crit_edge.i64, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i64.unr-lcssa, %.preheader.i54
  %.083.i58.epil.init = phi i64 [ 0, %.preheader.i54 ], [ %i.et, %._crit_edge.i64.unr-lcssa ] ; 2 uses
  %.14881.i60.epil.init = phi i64 [ %.04784.i56, %.preheader.i54 ], [ %i.fg, %._crit_edge.i64.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %gep.i61.epil = getelementptr [4 x i8], ptr %invariant.gep.i57, i64 %.083.i58.epil.init
  %i.dv = load i32, ptr %gep.i61.epil, align 4, !tbaa !100
  %.idx.i.i.i.i62.epil = mul i64 %.14881.i60.epil.init, 12
  %i.dw = getelementptr i8, ptr %i.dp, i64 %.idx.i.i.i.i62.epil ; 3 uses
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !100
  %i.dx = getelementptr [4 x i8], ptr %i.dn, i64 %.083.i58.epil.init ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  %i.dz = getelementptr [4 x i8], ptr %i.dy, i64 %i.dr
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !100
  %i.eb = getelementptr i8, ptr %i.dw, i64 4
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !100
  %i.ec = getelementptr i8, ptr %i.dx, i64 8
  %i.ed = getelementptr [4 x i8], ptr %i.ec, i64 %i.dr
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !100
  %i.ef = getelementptr i8, ptr %i.dw, i64 8
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !100
  %i.eg = add i64 %.14881.i60.epil.init, 1
  br label %._crit_edge.i64

._crit_edge.i64:                                  ; preds = %._crit_edge.i64.unr-lcssa, %.epil.preheader
  %.lcssa97 = phi i64 [ %i.fg, %._crit_edge.i64.unr-lcssa ], [ %i.eg, %.epil.preheader ]
  %i.eh = add nuw i64 %.04685.i55, 1              ; 2 uses
  %exitcond92.not.i65 = icmp eq i64 %i.eh, %2
  br i1 %exitcond92.not.i65, label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %.preheader.i54, !llvm.loop !671

.preheader.i54.new:                               ; preds = %.preheader.i54, %.preheader.i54.new
  %.083.i58 = phi i64 [ %i.et, %.preheader.i54.new ], [ 0, %.preheader.i54 ] ; 3 uses
  %.14881.i60 = phi i64 [ %i.fg, %.preheader.i54.new ], [ %.04784.i56, %.preheader.i54 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i54.new ], [ 0, %.preheader.i54 ]
  %i.ei = or disjoint i64 %.083.i58, 1            ; 2 uses
  %gep.i61 = getelementptr [4 x i8], ptr %invariant.gep.i57, i64 %.083.i58
  %i.ej = load i32, ptr %gep.i61, align 4, !tbaa !100
  %.idx.i.i.i.i62 = mul i64 %.14881.i60, 12
  %i.ek = getelementptr i8, ptr %i.dp, i64 %.idx.i.i.i.i62 ; 3 uses
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !100
  %i.el = getelementptr [4 x i8], ptr %i.dn, i64 %i.ei ; 2 uses
  %i.em = getelementptr [4 x i8], ptr %i.el, i64 %i.dr
  %i.en = load i32, ptr %i.em, align 4, !tbaa !100
  %i.eo = getelementptr i8, ptr %i.ek, i64 4
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !100
  %i.ep = getelementptr i8, ptr %i.el, i64 4
  %i.eq = getelementptr [4 x i8], ptr %i.ep, i64 %i.dr
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !100
  %i.es = getelementptr i8, ptr %i.ek, i64 8
  store i32 %i.er, ptr %i.es, align 4, !tbaa !100
  %i.et = add nuw i64 %.083.i58, 2                ; 3 uses
  %gep.i61.1 = getelementptr [4 x i8], ptr %invariant.gep.i57, i64 %i.ei
  %i.eu = load i32, ptr %gep.i61.1, align 4, !tbaa !100
  %i.ev = mul i64 %.14881.i60, 12
  %i.ew = getelementptr i8, ptr %i.dp, i64 %i.ev  ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 12
  store i32 %i.eu, ptr %i.ex, align 4, !tbaa !100
  %i.ey = getelementptr [4 x i8], ptr %i.dn, i64 %i.et ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 4
  %i.fa = getelementptr [4 x i8], ptr %i.ez, i64 %i.dr
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !100
  %i.fc = getelementptr i8, ptr %i.ew, i64 16
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !100
  %i.fd = getelementptr [4 x i8], ptr %i.ey, i64 %i.dr
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !100
  %i.ff = getelementptr i8, ptr %i.ew, i64 20
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !100
  %i.fg = add i64 %.14881.i60, 2                  ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i64.unr-lcssa, label %.preheader.i54.new, !llvm.loop !672

bb.k:                                             ; preds = %bb.a
  %i.fh = tail call noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIfN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

bb.l:                                             ; preds = %bb.a
  %i.fi = tail call noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIdN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit: ; preds = %._crit_edge.i64, %._crit_edge.i47, %._crit_edge.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit70, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit68, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit, %bb.a, %bb.l, %bb.k, %bb.h, %bb.e, %bb.b
  %.0 = phi i1 [ %i.fi, %bb.l ], [ %i.b, %bb.b ], [ false, %bb.a ], [ %i.bg, %bb.e ], [ true, %._crit_edge.i ], [ %i.dl, %bb.h ], [ true, %._crit_edge.i47 ], [ %i.fh, %bb.k ], [ true, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit ], [ true, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit68 ], [ true, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit70 ], [ true, %._crit_edge.i64 ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixIiN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 8 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = icmp eq i64 %2, 0
  %i.e = icmp eq i64 %3, 0
  %or.cond.i.i.i.i = or i1 %i.d, %i.e
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IiLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sdiv i64 9223372036854775807, %3
  %i.g = icmp sgt i64 %2, %i.f
  br i1 %i.g, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IiLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IiLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i: ; preds = %bb.b, %bb.a
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !641
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, %2
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %3, 3
  %or.cond.i.i.i.i.i.i.i.i = and i1 %.not8.i.i.i.i.i.i.i.i, %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.d, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IiLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !641
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IiLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i
  %i.k = phi i64 [ %.pr.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i ], [ %2, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IiLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i ] ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !643    ; 8 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = mul i64 %i.k, 3                          ; 6 uses
  %i.o = sdiv i64 %i.n, 4                         ; 2 uses
  %i.p = shl nsw i64 %i.o, 2                      ; 5 uses
  %i.q = icmp sgt i64 %i.k, 1
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %i.r = icmp slt i64 %i.p, %i.n
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEaSINS_3MapINS1_IiLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEERS2_RKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.s = shl nsw i64 %i.o, 2
  %i.t = sub i64 %i.n, %i.s                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.t, 8
  %i.u = sub i64 %i.c, %i.m
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.t, -8                       ; 3 uses
  %i.v = add i64 %i.p, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = add i64 %i.p, %index                     ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !100
  %wide.load10 = load <4 x i32>, ptr %i.z, align 4, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x i32> %wide.load, ptr %i.x, align 4, !tbaa !100
  store <4 x i32> %wide.load10, ptr %i.aa, align 4, !tbaa !100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !673

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEaSINS_3MapINS1_IiLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader11
end_hunk_2
begin_hunk_3_@_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm:bb.a
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.05.i.i.i.i.i.i.i.i.i71.prol
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.05.i.i.i.i.i.i.i.i.i71.prol
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !100
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !100
  %i.fp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i71.prol, 1 ; 2 uses
  %prol.iter195.next = add i64 %prol.iter195, 1   ; 2 uses
  %prol.iter195.cmp.not = icmp eq i64 %prol.iter195.next, %xtraiter193
  br i1 %prol.iter195.cmp.not, label %scalar.ph119.prol.loopexit, label %scalar.ph119.prol, !llvm.loop !864

scalar.ph119.prol.loopexit:                       ; preds = %scalar.ph119.prol, %scalar.ph119.preheader
  %.05.i.i.i.i.i.i.i.i.i71.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i71.ph, %scalar.ph119.preheader ], [ %i.fp, %scalar.ph119.prol ]
  %i.fq = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i71.ph, %smax.i.i.i.i.i.i.i.i.i70
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %scalar.ph119

scalar.ph119:                                     ; preds = %scalar.ph119.prol.loopexit, %scalar.ph119
  %.05.i.i.i.i.i.i.i.i.i71 = phi i64 [ %i.gh, %scalar.ph119 ], [ %.05.i.i.i.i.i.i.i.i.i71.unr, %scalar.ph119.prol.loopexit ] ; 6 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.05.i.i.i.i.i.i.i.i.i71
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.05.i.i.i.i.i.i.i.i.i71
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !100
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !100
  %i.fv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i71, 1 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fv
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.fv
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !100
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !100
  %i.fz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i71, 2 ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.fz
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !100
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !100
  %i.gd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i71, 3 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.gd
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.gd
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !100
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !100
  %i.gh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i71, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i72.3 = icmp eq i64 %i.gh, %smax.i.i.i.i.i.i.i.i.i70
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i72.3, label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %scalar.ph119, !llvm.loop !865

bb.v:                                             ; preds = %bb.a
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !149 ; 7 uses
  %i.gk = ptrtoaddr ptr %i.gj to i64
  %i.gl = icmp eq i64 %2, 0
  %i.gm = icmp eq i64 %3, 0
  %or.cond.i.i.i.i.i73 = or i1 %i.gl, %i.gm
  br i1 %or.cond.i.i.i.i.i73, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IjLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gn = sdiv i64 9223372036854775807, %3
  %i.go = icmp sgt i64 %2, %i.gn
  br i1 %i.go, label %bb.x, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IjLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.gp = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gp, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.gp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IjLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.w, %bb.v
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !840
  %.not.i.i.i.i.i.i.i.i.i74 = icmp eq i64 %i.gr, %2
  %.not8.i.i.i.i.i.i.i.i.i75 = icmp eq i64 %3, 3
  %or.cond.i.i.i.i.i.i.i.i.i76 = and i1 %.not8.i.i.i.i.i.i.i.i.i75, %.not.i.i.i.i.i.i.i.i.i74
  br i1 %or.cond.i.i.i.i.i.i.i.i.i76, label %bb.y, label %thread-pre-split.i.i.i.i.i.i.i.i77

thread-pre-split.i.i.i.i.i.i.i.i77:               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IjLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  %.pr.i.i.i.i.i.i.i.i78 = load i64, ptr %i.gq, align 8, !tbaa !840
  br label %bb.y

bb.y:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i77, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IjLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.gs = phi i64 [ %.pr.i.i.i.i.i.i.i.i78, %thread-pre-split.i.i.i.i.i.i.i.i77 ], [ %2, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IjLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i ] ; 2 uses
  %i.gt = load ptr, ptr %1, align 8, !tbaa !842   ; 7 uses
  %i.gu = icmp sgt i64 %i.gs, 0
  br i1 %i.gu, label %.lr.ph.i.i.i.i.i.i.i.i.i79, label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

.lr.ph.i.i.i.i.i.i.i.i.i79:                       ; preds = %bb.y
  %i.gv = ptrtoaddr ptr %i.gt to i64
  %i.gw = mul i64 %i.gs, 3                        ; 2 uses
  %smax.i.i.i.i.i.i.i.i.i80 = tail call i64 @llvm.smax.i64(i64 %i.gw, i64 1) ; 5 uses
  %min.iters.check = icmp slt i64 %i.gw, 8
  %i.gx = sub i64 %i.gk, %i.gv
  %diff.check = icmp ugt i64 %i.gx, -32
  %or.cond187 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond187, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i79
  %n.vec = and i64 %smax.i.i.i.i.i.i.i.i.i80, 9223372036854775800 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %index ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %index ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %wide.load = load <4 x i32>, ptr %i.gz, align 4, !tbaa !100
  %wide.load116 = load <4 x i32>, ptr %i.ha, align 4, !tbaa !100
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store <4 x i32> %wide.load, ptr %i.gy, align 4, !tbaa !100
  store <4 x i32> %wide.load116, ptr %i.hb, align 4, !tbaa !100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !866

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %smax.i.i.i.i.i.i.i.i.i80, %n.vec
  br i1 %cmp.n, label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i79, %middle.block
  %.05.i.i.i.i.i.i.i.i.i81.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i79 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %smax.i.i.i.i.i.i.i.i.i80, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.05.i.i.i.i.i.i.i.i.i81.prol = phi i64 [ %i.hg, %scalar.ph.prol ], [ %.05.i.i.i.i.i.i.i.i.i81.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %.05.i.i.i.i.i.i.i.i.i81.prol
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %.05.i.i.i.i.i.i.i.i.i81.prol
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !100
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !100
  %i.hg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i81.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !867

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.i.i.i.i.i.i.i.i.i81.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i81.ph, %scalar.ph.preheader ], [ %i.hg, %scalar.ph.prol ]
  %i.hh = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i81.ph, %smax.i.i.i.i.i.i.i.i.i80
  %i.hi = icmp ugt i64 %i.hh, -4
  br i1 %i.hi, label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.i.i.i.i.i.i.i.i.i81 = phi i64 [ %i.hy, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.i.i81.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %.05.i.i.i.i.i.i.i.i.i81
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %.05.i.i.i.i.i.i.i.i.i81
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !100
  store i32 %i.hl, ptr %i.hj, align 4, !tbaa !100
  %i.hm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i81, 1 ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.hm
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.hm
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !100
  store i32 %i.hp, ptr %i.hn, align 4, !tbaa !100
  %i.hq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i81, 2 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.hq
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.hq
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !100
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !100
  %i.hu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i81, 3 ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.hu
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !100
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !100
  %i.hy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i81, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i82.3 = icmp eq i64 %i.hy, %smax.i.i.i.i.i.i.i.i.i80
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i82.3, label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %scalar.ph, !llvm.loop !868

bb.z:                                             ; preds = %bb.a
  %i.hz = tail call noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixIfN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

bb.aa:                                            ; preds = %bb.a
  %i.ia = tail call noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixIdN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

_ZN3igl25_tinyply_buffer_to_matrixIaN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph119.prol.loopexit, %scalar.ph119, %scalar.ph131, %scalar.ph143, %scalar.ph157.prol.loopexit, %scalar.ph157, %scalar.ph175.prol.loopexit, %scalar.ph175, %middle.block, %middle.block128, %middle.block140, %middle.block152, %middle.block166, %middle.block184, %bb.y, %bb.u, %bb.q, %bb.m, %bb.i, %bb.e, %bb.a, %bb.aa, %bb.z
  %.0 = phi i1 [ %i.ia, %bb.aa ], [ false, %bb.a ], [ true, %middle.block152 ], [ true, %middle.block140 ], [ true, %middle.block128 ], [ true, %middle.block184 ], [ true, %middle.block166 ], [ %i.hz, %bb.z ], [ true, %bb.e ], [ true, %bb.i ], [ true, %bb.m ], [ true, %bb.q ], [ true, %bb.u ], [ true, %bb.y ], [ true, %middle.block ], [ true, %scalar.ph119.prol.loopexit ], [ true, %scalar.ph175.prol.loopexit ], [ true, %scalar.ph157.prol.loopexit ], [ true, %scalar.ph143 ], [ true, %scalar.ph131 ], [ true, %scalar.ph175 ], [ true, %scalar.ph157 ], [ true, %scalar.ph119 ], [ true, %scalar.ph ], [ true, %scalar.ph.prol.loopexit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl26tinyply_tristrips_to_facesIN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !148
  switch i8 %i.a, label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.k
    i8 8, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIaN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149  ; 4 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %._crit_edge86.split.sink.split.i, label %.preheader74.lr.ph.i

.preheader74.lr.ph.i:                             ; preds = %bb.c
  %i.e = add i64 %3, -2                           ; 4 uses
  %.not87.i = icmp eq i64 %i.e, 0
  br i1 %.not87.i, label %._crit_edge86.split.sink.split.i, label %.preheader74.us.lver.check.i

.preheader74.us.lver.check.i:                     ; preds = %.preheader74.lr.ph.i
  %flatten.mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.e) ; 2 uses
  %flatten.overflow.i = extractvalue { i64, i1 } %flatten.mul.i, 1
  br i1 %flatten.overflow.i, label %.preheader74.us.lver.orig.preheader.i, label %.preheader74.us.preheader.i

.preheader74.us.preheader.i:                      ; preds = %.preheader74.us.lver.check.i
  %flatten.tripcount.i = extractvalue { i64, i1 } %flatten.mul.i, 0
  %umax.i = tail call i64 @llvm.umax.i64(i64 %flatten.tripcount.i, i64 1)
  br label %.preheader.lr.ph.split.i

.preheader74.us.lver.orig.preheader.i:            ; preds = %.preheader74.us.lver.check.i
  %4 = mul i64 %i.e, %2
  br label %.preheader.lr.ph.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader74.us.lver.orig.preheader.i, %.preheader74.us.preheader.i
  %.051.lcssa.ph.ph.i = phi i64 [ %4, %.preheader74.us.lver.orig.preheader.i ], [ %umax.i, %.preheader74.us.preheader.i ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.051.lcssa.ph.ph.i, i64 noundef 3)
  %i.f = load ptr, ptr %1, align 8, !tbaa !842    ; 3 uses
  %xtraiter108 = and i64 %3, 1
  %i.g = icmp eq i64 %3, 3
  %unroll_iter112 = and i64 %i.e, -2
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  %lcmp.mod111 = trunc i64 %3 to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.04685.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.aa, %._crit_edge.i ] ; 2 uses
  %.04784.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %.lcssa, %._crit_edge.i ] ; 2 uses
  %i.h = mul nsw i64 %.04685.i, %3                ; 7 uses
  %invariant.gep.i = getelementptr i8, ptr %i.d, i64 %i.h ; 3 uses
  br i1 %i.g, label %.epil.preheader107, label %.preheader.i.new

._crit_edge86.split.sink.split.i:                 ; preds = %.preheader74.lr.ph.i, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !840
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge86.split.sink.split.i
  %i.k = load ptr, ptr %1, align 8, !tbaa !842
  tail call void @free(ptr noundef %i.k) #32
  store ptr null, ptr %1, align 8, !tbaa !842
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit: ; preds = %._crit_edge86.split.sink.split.i, %bb.d
  store i64 0, ptr %i.i, align 8, !tbaa !840
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod109.not, label %._crit_edge.i, label %.epil.preheader107

.epil.preheader107:                               ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %.083.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %i.ap, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.14881.i.epil.init = phi i64 [ %.04784.i, %.preheader.i ], [ %i.bf, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %gep.i.epil = getelementptr i8, ptr %invariant.gep.i, i64 %.083.i.epil.init
  %i.l = load i8, ptr %gep.i.epil, align 1, !tbaa !34
  %i.m = zext i8 %i.l to i32
  %.idx.i.i.i.i.epil = mul i64 %.14881.i.epil.init, 12
  %i.n = getelementptr i8, ptr %i.f, i64 %.idx.i.i.i.i.epil ; 3 uses
  store i32 %i.m, ptr %i.n, align 4, !tbaa !100
  %i.o = getelementptr i8, ptr %i.d, i64 %.083.i.epil.init ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr i8, ptr %i.p, i64 %i.h
  %i.r = load i8, ptr %i.q, align 1, !tbaa !34
  %i.s = zext i8 %i.r to i32
  %i.t = getelementptr i8, ptr %i.n, i64 4
  store i32 %i.s, ptr %i.t, align 4, !tbaa !100
  %i.u = getelementptr i8, ptr %i.o, i64 2
  %i.v = getelementptr i8, ptr %i.u, i64 %i.h
  %i.w = load i8, ptr %i.v, align 1, !tbaa !34
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr i8, ptr %i.n, i64 8
  store i32 %i.x, ptr %i.y, align 4, !tbaa !100
  %i.z = add i64 %.14881.i.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader107
  %.lcssa = phi i64 [ %i.bf, %._crit_edge.i.unr-lcssa ], [ %i.z, %.epil.preheader107 ]
  %i.aa = add nuw i64 %.04685.i, 1                ; 2 uses
  %exitcond92.not.i = icmp eq i64 %i.aa, %2
  br i1 %exitcond92.not.i, label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %.preheader.i, !llvm.loop !869

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %.083.i = phi i64 [ %i.ap, %.preheader.i.new ], [ 0, %.preheader.i ] ; 3 uses
  %.14881.i = phi i64 [ %i.bf, %.preheader.i.new ], [ %.04784.i, %.preheader.i ] ; 3 uses
  %niter113 = phi i64 [ %niter113.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.ab = or disjoint i64 %.083.i, 1              ; 2 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.083.i
  %i.ac = load i8, ptr %gep.i, align 1, !tbaa !34
  %i.ad = zext i8 %i.ac to i32
  %.idx.i.i.i.i = mul i64 %.14881.i, 12
  %i.ae = getelementptr i8, ptr %i.f, i64 %.idx.i.i.i.i ; 3 uses
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !100
  %i.af = getelementptr i8, ptr %i.d, i64 %i.ab   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.h
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !34
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr i8, ptr %i.ae, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !100
  %i.ak = getelementptr i8, ptr %i.af, i64 1
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.h
  %i.am = load i8, ptr %i.al, align 1, !tbaa !34
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr i8, ptr %i.ae, i64 8
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !100
  %i.ap = add nuw i64 %.083.i, 2                  ; 3 uses
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.ab
  %i.aq = load i8, ptr %gep.i.1, align 1, !tbaa !34
  %i.ar = zext i8 %i.aq to i32
  %i.as = mul i64 %.14881.i, 12
  %i.at = getelementptr i8, ptr %i.f, i64 %i.as   ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 12
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !100
  %i.av = getelementptr i8, ptr %i.d, i64 %i.ap   ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 1
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.h
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !34
  %i.az = zext i8 %i.ay to i32
  %i.ba = getelementptr i8, ptr %i.at, i64 16
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !100
  %i.bb = getelementptr i8, ptr %i.av, i64 %i.h
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !34
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr i8, ptr %i.at, i64 20
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !100
  %i.bf = add i64 %.14881.i, 2                    ; 3 uses
  %niter113.next.1 = add nuw i64 %niter113, 2     ; 2 uses
  %niter113.ncmp.1 = icmp eq i64 %niter113.next.1, %unroll_iter112
  br i1 %niter113.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !870

bb.e:                                             ; preds = %bb.a
  %i.bg = tail call noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIsN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

bb.f:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !149 ; 4 uses
  %.not.i33 = icmp eq i64 %2, 0
  br i1 %.not.i33, label %._crit_edge86.split.sink.split.i49, label %.preheader74.lr.ph.i34

.preheader74.lr.ph.i34:                           ; preds = %bb.f
  %i.bj = add i64 %3, -2                          ; 4 uses
  %.not87.i35 = icmp eq i64 %i.bj, 0
  br i1 %.not87.i35, label %._crit_edge86.split.sink.split.i49, label %.preheader74.us.lver.check.i36

.preheader74.us.lver.check.i36:                   ; preds = %.preheader74.lr.ph.i34
  %flatten.mul.i37 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.bj) ; 2 uses
  %flatten.overflow.i38 = extractvalue { i64, i1 } %flatten.mul.i37, 1
  br i1 %flatten.overflow.i38, label %.preheader74.us.lver.orig.preheader.i56, label %.preheader74.us.preheader.i39

.preheader74.us.preheader.i39:                    ; preds = %.preheader74.us.lver.check.i36
  %flatten.tripcount.i40 = extractvalue { i64, i1 } %flatten.mul.i37, 0
  %umax.i41 = tail call i64 @llvm.umax.i64(i64 %flatten.tripcount.i40, i64 1)
  br label %.preheader.lr.ph.split.i36

.preheader74.us.lver.orig.preheader.i56:          ; preds = %.preheader74.us.lver.check.i36
  %5 = mul i64 %i.bj, %2
  br label %.preheader.lr.ph.split.i36

.preheader.lr.ph.split.i36:                       ; preds = %.preheader74.us.lver.orig.preheader.i56, %.preheader74.us.preheader.i39
  %.051.lcssa.ph.ph.i43 = phi i64 [ %5, %.preheader74.us.lver.orig.preheader.i56 ], [ %umax.i41, %.preheader74.us.preheader.i39 ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.051.lcssa.ph.ph.i43, i64 noundef 3)
  %i.bk = load ptr, ptr %1, align 8, !tbaa !842   ; 3 uses
  %xtraiter101 = and i64 %3, 1
  %i.bl = icmp eq i64 %3, 3
  %unroll_iter105 = and i64 %i.bj, -2
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  %lcmp.mod104 = trunc i64 %3 to i1
  br label %.preheader.i37

.preheader.i37:                                   ; preds = %._crit_edge.i47, %.preheader.lr.ph.split.i36
  %.04685.i38 = phi i64 [ 0, %.preheader.lr.ph.split.i36 ], [ %i.cf, %._crit_edge.i47 ] ; 2 uses
  %.04784.i39 = phi i64 [ 0, %.preheader.lr.ph.split.i36 ], [ %.lcssa95, %._crit_edge.i47 ] ; 2 uses
  %i.bm = mul nsw i64 %.04685.i38, %3             ; 7 uses
  %invariant.gep.i40 = getelementptr [2 x i8], ptr %i.bi, i64 %i.bm ; 3 uses
  br i1 %i.bl, label %.epil.preheader100, label %.preheader.i37.new

._crit_edge86.split.sink.split.i49:               ; preds = %.preheader74.lr.ph.i34, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !840
  %.not.i.i67 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i67, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit68, label %bb.g

bb.g:                                             ; preds = %._crit_edge86.split.sink.split.i49
  %i.bp = load ptr, ptr %1, align 8, !tbaa !842
  tail call void @free(ptr noundef %i.bp) #32
  store ptr null, ptr %1, align 8, !tbaa !842
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit68

_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit68: ; preds = %._crit_edge86.split.sink.split.i49, %bb.g
  store i64 0, ptr %i.bn, align 8, !tbaa !840
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

._crit_edge.i47.unr-lcssa:                        ; preds = %.preheader.i37.new
  br i1 %lcmp.mod102.not, label %._crit_edge.i47, label %.epil.preheader100

.epil.preheader100:                               ; preds = %._crit_edge.i47.unr-lcssa, %.preheader.i37
  %.083.i41.epil.init = phi i64 [ 0, %.preheader.i37 ], [ %i.cu, %._crit_edge.i47.unr-lcssa ] ; 2 uses
  %.14881.i43.epil.init = phi i64 [ %.04784.i39, %.preheader.i37 ], [ %i.dk, %._crit_edge.i47.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %gep.i44.epil = getelementptr [2 x i8], ptr %invariant.gep.i40, i64 %.083.i41.epil.init
  %i.bq = load i16, ptr %gep.i44.epil, align 2, !tbaa !206
  %i.br = zext i16 %i.bq to i32
  %.idx.i.i.i.i45.epil = mul i64 %.14881.i43.epil.init, 12
  %i.bs = getelementptr i8, ptr %i.bk, i64 %.idx.i.i.i.i45.epil ; 3 uses
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !100
  %i.bt = getelementptr [2 x i8], ptr %i.bi, i64 %.083.i41.epil.init ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 2
  %i.bv = getelementptr [2 x i8], ptr %i.bu, i64 %i.bm
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !206
  %i.bx = zext i16 %i.bw to i32
  %i.by = getelementptr i8, ptr %i.bs, i64 4
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !100
  %i.bz = getelementptr i8, ptr %i.bt, i64 4
  %i.ca = getelementptr [2 x i8], ptr %i.bz, i64 %i.bm
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !206
  %i.cc = zext i16 %i.cb to i32
  %i.cd = getelementptr i8, ptr %i.bs, i64 8
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !100
  %i.ce = add i64 %.14881.i43.epil.init, 1
  br label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %._crit_edge.i47.unr-lcssa, %.epil.preheader100
  %.lcssa95 = phi i64 [ %i.dk, %._crit_edge.i47.unr-lcssa ], [ %i.ce, %.epil.preheader100 ]
  %i.cf = add nuw i64 %.04685.i38, 1              ; 2 uses
  %exitcond92.not.i48 = icmp eq i64 %i.cf, %2
  br i1 %exitcond92.not.i48, label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %.preheader.i37, !llvm.loop !871

.preheader.i37.new:                               ; preds = %.preheader.i37, %.preheader.i37.new
  %.083.i41 = phi i64 [ %i.cu, %.preheader.i37.new ], [ 0, %.preheader.i37 ] ; 3 uses
  %.14881.i43 = phi i64 [ %i.dk, %.preheader.i37.new ], [ %.04784.i39, %.preheader.i37 ] ; 3 uses
  %niter106 = phi i64 [ %niter106.next.1, %.preheader.i37.new ], [ 0, %.preheader.i37 ]
  %i.cg = or disjoint i64 %.083.i41, 1            ; 2 uses
  %gep.i44 = getelementptr [2 x i8], ptr %invariant.gep.i40, i64 %.083.i41
  %i.ch = load i16, ptr %gep.i44, align 2, !tbaa !206
  %i.ci = zext i16 %i.ch to i32
  %.idx.i.i.i.i45 = mul i64 %.14881.i43, 12
  %i.cj = getelementptr i8, ptr %i.bk, i64 %.idx.i.i.i.i45 ; 3 uses
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !100
  %i.ck = getelementptr [2 x i8], ptr %i.bi, i64 %i.cg ; 2 uses
  %i.cl = getelementptr [2 x i8], ptr %i.ck, i64 %i.bm
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !206
  %i.cn = zext i16 %i.cm to i32
  %i.co = getelementptr i8, ptr %i.cj, i64 4
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !100
  %i.cp = getelementptr i8, ptr %i.ck, i64 2
  %i.cq = getelementptr [2 x i8], ptr %i.cp, i64 %i.bm
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !206
  %i.cs = zext i16 %i.cr to i32
  %i.ct = getelementptr i8, ptr %i.cj, i64 8
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !100
  %i.cu = add nuw i64 %.083.i41, 2                ; 3 uses
  %gep.i44.1 = getelementptr [2 x i8], ptr %invariant.gep.i40, i64 %i.cg
  %i.cv = load i16, ptr %gep.i44.1, align 2, !tbaa !206
  %i.cw = zext i16 %i.cv to i32
  %i.cx = mul i64 %.14881.i43, 12
  %i.cy = getelementptr i8, ptr %i.bk, i64 %i.cx  ; 3 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 12
  store i32 %i.cw, ptr %i.cz, align 4, !tbaa !100
  %i.da = getelementptr [2 x i8], ptr %i.bi, i64 %i.cu ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 2
  %i.dc = getelementptr [2 x i8], ptr %i.db, i64 %i.bm
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !206
  %i.de = zext i16 %i.dd to i32
  %i.df = getelementptr i8, ptr %i.cy, i64 16
  store i32 %i.de, ptr %i.df, align 4, !tbaa !100
  %i.dg = getelementptr [2 x i8], ptr %i.da, i64 %i.bm
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !206
  %i.di = zext i16 %i.dh to i32
  %i.dj = getelementptr i8, ptr %i.cy, i64 20
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !100
  %i.dk = add i64 %.14881.i43, 2                  ; 3 uses
  %niter106.next.1 = add nuw i64 %niter106, 2     ; 2 uses
  %niter106.ncmp.1 = icmp eq i64 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %._crit_edge.i47.unr-lcssa, label %.preheader.i37.new, !llvm.loop !872

bb.h:                                             ; preds = %bb.a
  %i.dl = tail call noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIiN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

bb.i:                                             ; preds = %bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !149 ; 4 uses
  %.not.i50 = icmp eq i64 %2, 0
  br i1 %.not.i50, label %._crit_edge86.split.sink.split.i66, label %.preheader74.lr.ph.i51

.preheader74.lr.ph.i51:                           ; preds = %bb.i
  %i.do = add i64 %3, -2                          ; 4 uses
  %.not87.i52 = icmp eq i64 %i.do, 0
  br i1 %.not87.i52, label %._crit_edge86.split.sink.split.i66, label %.preheader74.us.lver.check.i61

.preheader74.us.lver.check.i61:                   ; preds = %.preheader74.lr.ph.i51
  %flatten.mul.i62 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.do) ; 2 uses
  %flatten.overflow.i63 = extractvalue { i64, i1 } %flatten.mul.i62, 1
  br i1 %flatten.overflow.i63, label %.preheader74.us.lver.orig.preheader.i81, label %.preheader74.us.preheader.i64

.preheader74.us.preheader.i64:                    ; preds = %.preheader74.us.lver.check.i61
  %flatten.tripcount.i65 = extractvalue { i64, i1 } %flatten.mul.i62, 0
  %umax.i66 = tail call i64 @llvm.umax.i64(i64 %flatten.tripcount.i65, i64 1)
  br label %.preheader.lr.ph.split.i53

.preheader74.us.lver.orig.preheader.i81:          ; preds = %.preheader74.us.lver.check.i61
  %6 = mul i64 %i.do, %2
  br label %.preheader.lr.ph.split.i53

.preheader.lr.ph.split.i53:                       ; preds = %.preheader74.us.lver.orig.preheader.i81, %.preheader74.us.preheader.i64
  %.051.lcssa.ph.ph.i68 = phi i64 [ %6, %.preheader74.us.lver.orig.preheader.i81 ], [ %umax.i66, %.preheader74.us.preheader.i64 ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.051.lcssa.ph.ph.i68, i64 noundef 3)
  %i.dp = load ptr, ptr %1, align 8, !tbaa !842   ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.dq = icmp eq i64 %3, 3
  %unroll_iter = and i64 %i.do, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod99 = trunc i64 %3 to i1
  br label %.preheader.i54

.preheader.i54:                                   ; preds = %._crit_edge.i64, %.preheader.lr.ph.split.i53
  %.04685.i55 = phi i64 [ 0, %.preheader.lr.ph.split.i53 ], [ %i.eh, %._crit_edge.i64 ] ; 2 uses
  %.04784.i56 = phi i64 [ 0, %.preheader.lr.ph.split.i53 ], [ %.lcssa97, %._crit_edge.i64 ] ; 2 uses
  %i.dr = mul nsw i64 %.04685.i55, %3             ; 7 uses
  %invariant.gep.i57 = getelementptr [4 x i8], ptr %i.dn, i64 %i.dr ; 3 uses
  br i1 %i.dq, label %.epil.preheader, label %.preheader.i54.new

._crit_edge86.split.sink.split.i66:               ; preds = %.preheader74.lr.ph.i51, %bb.i
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !840
  %.not.i.i69 = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i69, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit70, label %bb.j

bb.j:                                             ; preds = %._crit_edge86.split.sink.split.i66
  %i.du = load ptr, ptr %1, align 8, !tbaa !842
  tail call void @free(ptr noundef %i.du) #32
  store ptr null, ptr %1, align 8, !tbaa !842
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit70

_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit70: ; preds = %._crit_edge86.split.sink.split.i66, %bb.j
  store i64 0, ptr %i.ds, align 8, !tbaa !840
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

._crit_edge.i64.unr-lcssa:                        ; preds = %.preheader.i54.new
  br i1 %lcmp.mod.not, label %._crit_edge.i64, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i64.unr-lcssa, %.preheader.i54
  %.083.i58.epil.init = phi i64 [ 0, %.preheader.i54 ], [ %i.et, %._crit_edge.i64.unr-lcssa ] ; 2 uses
  %.14881.i60.epil.init = phi i64 [ %.04784.i56, %.preheader.i54 ], [ %i.fg, %._crit_edge.i64.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %gep.i61.epil = getelementptr [4 x i8], ptr %invariant.gep.i57, i64 %.083.i58.epil.init
  %i.dv = load i32, ptr %gep.i61.epil, align 4, !tbaa !100
  %.idx.i.i.i.i62.epil = mul i64 %.14881.i60.epil.init, 12
  %i.dw = getelementptr i8, ptr %i.dp, i64 %.idx.i.i.i.i62.epil ; 3 uses
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !100
  %i.dx = getelementptr [4 x i8], ptr %i.dn, i64 %.083.i58.epil.init ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  %i.dz = getelementptr [4 x i8], ptr %i.dy, i64 %i.dr
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !100
  %i.eb = getelementptr i8, ptr %i.dw, i64 4
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !100
  %i.ec = getelementptr i8, ptr %i.dx, i64 8
  %i.ed = getelementptr [4 x i8], ptr %i.ec, i64 %i.dr
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !100
  %i.ef = getelementptr i8, ptr %i.dw, i64 8
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !100
  %i.eg = add i64 %.14881.i60.epil.init, 1
  br label %._crit_edge.i64

._crit_edge.i64:                                  ; preds = %._crit_edge.i64.unr-lcssa, %.epil.preheader
  %.lcssa97 = phi i64 [ %i.fg, %._crit_edge.i64.unr-lcssa ], [ %i.eg, %.epil.preheader ]
  %i.eh = add nuw i64 %.04685.i55, 1              ; 2 uses
  %exitcond92.not.i65 = icmp eq i64 %i.eh, %2
  br i1 %exitcond92.not.i65, label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit, label %.preheader.i54, !llvm.loop !873

.preheader.i54.new:                               ; preds = %.preheader.i54, %.preheader.i54.new
  %.083.i58 = phi i64 [ %i.et, %.preheader.i54.new ], [ 0, %.preheader.i54 ] ; 3 uses
  %.14881.i60 = phi i64 [ %i.fg, %.preheader.i54.new ], [ %.04784.i56, %.preheader.i54 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i54.new ], [ 0, %.preheader.i54 ]
  %i.ei = or disjoint i64 %.083.i58, 1            ; 2 uses
  %gep.i61 = getelementptr [4 x i8], ptr %invariant.gep.i57, i64 %.083.i58
  %i.ej = load i32, ptr %gep.i61, align 4, !tbaa !100
  %.idx.i.i.i.i62 = mul i64 %.14881.i60, 12
  %i.ek = getelementptr i8, ptr %i.dp, i64 %.idx.i.i.i.i62 ; 3 uses
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !100
  %i.el = getelementptr [4 x i8], ptr %i.dn, i64 %i.ei ; 2 uses
  %i.em = getelementptr [4 x i8], ptr %i.el, i64 %i.dr
  %i.en = load i32, ptr %i.em, align 4, !tbaa !100
  %i.eo = getelementptr i8, ptr %i.ek, i64 4
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !100
  %i.ep = getelementptr i8, ptr %i.el, i64 4
  %i.eq = getelementptr [4 x i8], ptr %i.ep, i64 %i.dr
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !100
  %i.es = getelementptr i8, ptr %i.ek, i64 8
  store i32 %i.er, ptr %i.es, align 4, !tbaa !100
  %i.et = add nuw i64 %.083.i58, 2                ; 3 uses
  %gep.i61.1 = getelementptr [4 x i8], ptr %invariant.gep.i57, i64 %i.ei
  %i.eu = load i32, ptr %gep.i61.1, align 4, !tbaa !100
  %i.ev = mul i64 %.14881.i60, 12
  %i.ew = getelementptr i8, ptr %i.dp, i64 %i.ev  ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 12
  store i32 %i.eu, ptr %i.ex, align 4, !tbaa !100
  %i.ey = getelementptr [4 x i8], ptr %i.dn, i64 %i.et ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 4
  %i.fa = getelementptr [4 x i8], ptr %i.ez, i64 %i.dr
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !100
  %i.fc = getelementptr i8, ptr %i.ew, i64 16
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !100
  %i.fd = getelementptr [4 x i8], ptr %i.ey, i64 %i.dr
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !100
  %i.ff = getelementptr i8, ptr %i.ew, i64 20
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !100
  %i.fg = add i64 %.14881.i60, 2                  ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i64.unr-lcssa, label %.preheader.i54.new, !llvm.loop !874

bb.k:                                             ; preds = %bb.a
  %i.fh = tail call noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIfN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

bb.l:                                             ; preds = %bb.a
  %i.fi = tail call noundef zeroext i1 @_ZN3igl30_tinyply_tristrips_to_trifacesIdN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  br label %_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit

_ZN3igl30_tinyply_tristrips_to_trifacesIhN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm.exit: ; preds = %._crit_edge.i64, %._crit_edge.i47, %._crit_edge.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit70, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit68, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit, %bb.a, %bb.l, %bb.k, %bb.h, %bb.e, %bb.b
  %.0 = phi i1 [ %i.fi, %bb.l ], [ %i.b, %bb.b ], [ false, %bb.a ], [ %i.bg, %bb.e ], [ true, %._crit_edge.i ], [ %i.dl, %bb.h ], [ true, %._crit_edge.i47 ], [ %i.fh, %bb.k ], [ true, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit ], [ true, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit68 ], [ true, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll.exit70 ], [ true, %._crit_edge.i64 ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixIfN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %i.c = icmp eq i64 %2, 0
  %i.d = icmp eq i64 %3, 0
  %or.cond.i.i.i.i = or i1 %i.c, %i.d
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIfjEEKNS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sdiv i64 9223372036854775807, %3
  %i.f = icmp sgt i64 %2, %i.e
  br i1 %i.f, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIfjEEKNS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIfjEEKNS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i: ; preds = %bb.b, %bb.a
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !840
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.i, %2
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %3, 3
  %or.cond.i.i.i.i.i.i.i.i = and i1 %.not8.i.i.i.i.i.i.i.i, %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.d, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIfjEEKNS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !840
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIfjEEKNS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i
  %i.j = phi i64 [ %.pr.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i ], [ %2, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIfjEEKNS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i ] ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !842    ; 2 uses
  %i.l = icmp sgt i64 %i.j, 0
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIfjEEKNS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEERS2_RKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.m = mul i64 %i.j, 3                          ; 2 uses
  %smax.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 1) ; 3 uses
  %min.iters.check = icmp slt i64 %i.m, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %n.vec = and i64 %smax.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <4 x float>, ptr %i.o, align 4, !tbaa !216
  %wide.load12 = load <4 x float>, ptr %i.p, align 4, !tbaa !216
  %i.q = fptoui <4 x float> %wide.load to <4 x i32>
  %i.r = fptoui <4 x float> %wide.load12 to <4 x i32>
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %i.q, ptr %i.n, align 4, !tbaa !100
  store <4 x i32> %i.r, ptr %i.s, align 4, !tbaa !100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !875

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %smax.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIfjEEKNS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.05.i.i.i.i.i.i.i.i
  %i.w = load float, ptr %i.v, align 4, !tbaa !216
  %i.x = fptoui float %i.w to i32
  store i32 %i.x, ptr %i.u, align 4, !tbaa !100
end_hunk_3
begin_hunk_4_@_GLOBAL__sub_I_readPLY.cpp:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i: ; preds = %_ZN3igl7tinyply12PropertyInfoD2Ev.exit218.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.jn = load ptr, ptr %i.cb, align 8, !tbaa !30 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.cc
  br i1 %i.jo, label %_ZN3igl7tinyply12PropertyInfoD2Ev.exit224.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i222.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i222.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i
  %i.jp = load i64, ptr %i.cc, align 8, !tbaa !34
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #34
  br label %_ZN3igl7tinyply12PropertyInfoD2Ev.exit224.i

_ZN3igl7tinyply12PropertyInfoD2Ev.exit224.i:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i222.i
  %i.jr = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.by
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i: ; preds = %_ZN3igl7tinyply12PropertyInfoD2Ev.exit224.i
  %i.jt = load i64, ptr %i.by, align 8, !tbaa !34
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i: ; preds = %_ZN3igl7tinyply12PropertyInfoD2Ev.exit224.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.jv = load ptr, ptr %i.bp, align 8, !tbaa !30 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.bq
  br i1 %i.jw, label %_ZN3igl7tinyply12PropertyInfoD2Ev.exit230.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i228.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i228.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i
  %i.jx = load i64, ptr %i.bq, align 8, !tbaa !34
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #34
  br label %_ZN3igl7tinyply12PropertyInfoD2Ev.exit230.i

_ZN3igl7tinyply12PropertyInfoD2Ev.exit230.i:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i228.i
  %i.jz = load ptr, ptr %12, align 8, !tbaa !30   ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.bm
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231.i: ; preds = %_ZN3igl7tinyply12PropertyInfoD2Ev.exit230.i
  %i.kb = load i64, ptr %i.bm, align 8, !tbaa !34
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i: ; preds = %_ZN3igl7tinyply12PropertyInfoD2Ev.exit230.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.kd = load ptr, ptr %i.bc, align 8, !tbaa !30 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.bd
  br i1 %i.ke, label %_ZN3igl7tinyply12PropertyInfoD2Ev.exit236.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i234.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i234.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i
  %i.kf = load i64, ptr %i.bd, align 8, !tbaa !34
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #34
  br label %_ZN3igl7tinyply12PropertyInfoD2Ev.exit236.i

_ZN3igl7tinyply12PropertyInfoD2Ev.exit236.i:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i234.i
  %i.kh = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.az
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i: ; preds = %_ZN3igl7tinyply12PropertyInfoD2Ev.exit236.i
  %i.kj = load i64, ptr %i.az, align 8, !tbaa !34
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i: ; preds = %_ZN3igl7tinyply12PropertyInfoD2Ev.exit236.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.kl = load ptr, ptr %i.aq, align 8, !tbaa !30 ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.ar
  br i1 %i.km, label %_ZN3igl7tinyply12PropertyInfoD2Ev.exit242.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i240.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i240.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i
  %i.kn = load i64, ptr %i.ar, align 8, !tbaa !34
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #34
  br label %_ZN3igl7tinyply12PropertyInfoD2Ev.exit242.i

_ZN3igl7tinyply12PropertyInfoD2Ev.exit242.i:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i240.i
  %i.kp = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.an
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243.i: ; preds = %_ZN3igl7tinyply12PropertyInfoD2Ev.exit242.i
  %i.kr = load i64, ptr %i.an, align 8, !tbaa !34
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i: ; preds = %_ZN3igl7tinyply12PropertyInfoD2Ev.exit242.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.kt = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.af
  br i1 %i.ku, label %_ZN3igl7tinyply12PropertyInfoD2Ev.exit248.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i246.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i246.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i
  %i.kv = load i64, ptr %i.af, align 8, !tbaa !34
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #34
  br label %_ZN3igl7tinyply12PropertyInfoD2Ev.exit248.i

_ZN3igl7tinyply12PropertyInfoD2Ev.exit248.i:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i246.i
  %i.kx = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.ab
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249.i: ; preds = %_ZN3igl7tinyply12PropertyInfoD2Ev.exit248.i
  %i.kz = load i64, ptr %i.ab, align 8, !tbaa !34
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.la) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i: ; preds = %_ZN3igl7tinyply12PropertyInfoD2Ev.exit248.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.lb = load ptr, ptr %i.s, align 8, !tbaa !30  ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.t
  br i1 %i.lc, label %_ZN3igl7tinyply12PropertyInfoD2Ev.exit254.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i252.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i252.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i
  %i.ld = load i64, ptr %i.t, align 8, !tbaa !34
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.le) #34
  br label %_ZN3igl7tinyply12PropertyInfoD2Ev.exit254.i

_ZN3igl7tinyply12PropertyInfoD2Ev.exit254.i:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i252.i
  %i.lf = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.p
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.i: ; preds = %_ZN3igl7tinyply12PropertyInfoD2Ev.exit254.i
  %i.lh = load i64, ptr %i.p, align 8, !tbaa !34
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i: ; preds = %_ZN3igl7tinyply12PropertyInfoD2Ev.exit254.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.lj = load ptr, ptr %i.g, align 8, !tbaa !30  ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.h
  br i1 %i.lk, label %_ZN3igl7tinyply12PropertyInfoD2Ev.exit260.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i258.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i258.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i
  %i.ll = load i64, ptr %i.h, align 8, !tbaa !34
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.lm) #34
  br label %_ZN3igl7tinyply12PropertyInfoD2Ev.exit260.i

_ZN3igl7tinyply12PropertyInfoD2Ev.exit260.i:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i258.i
  %i.ln = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.d
  br i1 %i.lo, label %.loopexit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i: ; preds = %_ZN3igl7tinyply12PropertyInfoD2Ev.exit260.i
  %i.lp = load i64, ptr %i.d, align 8, !tbaa !34
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lq) #34
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN3igl7tinyply12PropertyInfoD2Ev.exit260.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  resume { ptr, i32 } %i.hm

__cxx_global_var_init.3.exit:                     ; preds = %_ZN3igl7tinyply12PropertyInfoD2Ev.exit203.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  %i.lr = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEED2Ev, ptr nonnull @_ZN3igl7tinyplyL13PropertyTableE, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #29

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind memory(none) }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold noreturn }
attributes #24 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { builtin nounwind }
attributes #35 = { noreturn }
attributes #36 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !12, i64 0}
!10 = !{!"_ZTSSt15_Rb_tree_header", !11, i64 0, !15, i64 32}
!11 = !{!"_ZTSSt18_Rb_tree_node_base", !12, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!12 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!13 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!10, !13, i64 8}
!17 = !{!10, !13, i64 16}
!18 = !{!10, !13, i64 24}
!19 = !{!10, !15, i64 32}
!20 = !{!13, !13, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"_ZTSN3igl7tinyply4TypeE", !7, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!28 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!29 = !{!27, !28, i64 8}
!30 = !{!31, !33, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !15, i64 8, !7, i64 16}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!33 = !{!"p1 omnipotent char", !14, i64 0}
!34 = !{!7, !7, i64 0}
!35 = distinct !{!35, !24}
!36 = !{!27, !28, i64 16}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !39, i64 0, !15, i64 8, !15, i64 16}
!39 = !{!"p1 int", !14, i64 0}
!40 = !{!41, !42, i64 0}
!41 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !42, i64 0, !15, i64 8, !15, i64 16}
!42 = !{!"p1 double", !14, i64 0}
!43 = !{!44, !33, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!45 = !{!44, !33, i64 8}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !8, i64 0}
!48 = !{!49, !15, i64 8}
!49 = !{!"_ZTSSi", !15, i64 8}
!50 = !{ptr @_ZN3igl16FileMemoryStreamD1Ev}
!51 = !{!44, !33, i64 16}
!52 = distinct !{null}
!53 = !{!54, !56, i64 32}
!54 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !55, i64 24, !56, i64 28, !56, i64 32, !57, i64 40, !58, i64 48, !7, i64 64, !6, i64 192, !59, i64 200, !60, i64 208}
!55 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!56 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!57 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!58 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !15, i64 8}
!59 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!60 = !{!"_ZTSSt6locale", !61, i64 0}
!61 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!62 = !{!31, !15, i64 8}
!63 = !{!64, !68, i64 240}
!64 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !54, i64 0, !65, i64 216, !7, i64 224, !66, i64 225, !67, i64 232, !68, i64 240, !69, i64 248, !70, i64 256}
!65 = !{!"p1 _ZTSSo", !14, i64 0}
!66 = !{!"bool", !7, i64 0}
!67 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 0}
!68 = !{!"p1 _ZTSSt5ctypeIcE", !14, i64 0}
!69 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!70 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!71 = !{!72, !7, i64 56}
!72 = !{!"_ZTSSt5ctypeIcE", !73, i64 0, !74, i64 16, !66, i64 24, !39, i64 32, !39, i64 40, !75, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!73 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!74 = !{!"p1 _ZTS15__locale_struct", !14, i64 0}
!75 = !{!"p1 short", !14, i64 0}
!76 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!77 = !{!32, !33, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !14, i64 0}
!80 = !{!28, !28, i64 0}
!81 = !{!15, !15, i64 0}
!82 = !{!83, !83, i64 0}
!83 = !{!"p1 _ZTSN3igl7tinyply10PlyElementE", !14, i64 0}
!84 = !{!85, !85, i64 0}
!85 = !{!"p1 _ZTSN3igl7tinyply11PlyPropertyE", !14, i64 0}
!86 = distinct !{!86, !24}
!87 = !{!88, !85, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN3igl7tinyply11PlyPropertyESaIS2_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!89 = !{!88, !85, i64 8}
!90 = distinct !{!90, !24}
!91 = !{!88, !85, i64 16}
!92 = !{!14, !14, i64 0}
!93 = !{!94, !95, i64 0}
!94 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !95, i64 0}
!95 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!96 = !{!97, !6, i64 8}
!97 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!98 = !{!97, !6, i64 12}
!99 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!100 = !{!6, !6, i64 0}
!101 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!102 = distinct !{ptr @_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!103 = !{!104, !105, i64 0}
!104 = !{!"_ZTSSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EE", !105, i64 0, !94, i64 8}
!105 = !{!"p1 _ZTSN3igl7tinyply7PlyDataE", !14, i64 0}
!106 = !{!107, !15, i64 32}
!107 = !{!"_ZTSN3igl7tinyply7PlyDataE", !22, i64 0, !108, i64 8, !15, i64 32, !66, i64 40}
!108 = !{!"_ZTSN3igl7tinyply6BufferE", !33, i64 0, !109, i64 8, !15, i64 16}
!109 = !{!"_ZTSSt10unique_ptrIhN3igl7tinyply6Buffer12delete_arrayEE", !110, i64 0}
!110 = !{!"_ZTSSt15__uniq_ptr_dataIhN3igl7tinyply6Buffer12delete_arrayELb1ELb1EE", !111, i64 0}
!111 = !{!"_ZTSSt15__uniq_ptr_implIhN3igl7tinyply6Buffer12delete_arrayEE", !112, i64 0}
!112 = !{!"_ZTSSt5tupleIJPhN3igl7tinyply6Buffer12delete_arrayEEE", !113, i64 0}
!113 = !{!"_ZTSSt11_Tuple_implILm0EJPhN3igl7tinyply6Buffer12delete_arrayEEE", !114, i64 0}
!114 = !{!"_ZTSSt10_Head_baseILm0EPhLb0EE", !33, i64 0}
!115 = !{!108, !15, i64 16}
!116 = distinct !{!116, !24}
!117 = !{!118, !6, i64 0}
!118 = !{!"_ZTSN3igl7tinyply12PropertyInfoE", !6, i64 0, !31, i64 8}
!119 = !{!11, !13, i64 24}
!120 = !{!11, !13, i64 16}
!121 = distinct !{!121, !24}
!122 = !{!123, !22, i64 0}
!123 = !{!"_ZTSSt4pairIKN3igl7tinyply4TypeENS1_12PropertyInfoEE", !22, i64 0, !118, i64 8}
!124 = !{!125, !33, i64 64}
!125 = !{!"_ZTSN3igl16FileMemoryBufferE", !126, i64 0, !33, i64 64, !33, i64 72, !15, i64 80}
!126 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !33, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !60, i64 56}
!127 = !{!125, !33, i64 72}
!128 = !{!125, !15, i64 80}
!129 = !{!126, !33, i64 8}
!130 = !{!126, !33, i64 16}
!131 = !{!126, !33, i64 24}
!132 = !{!64, !65, i64 216}
!133 = !{!64, !7, i64 224}
!134 = !{!64, !66, i64 225}
!135 = !{ptr @_ZN3igl16FileMemoryStreamD0Ev, ptr @_ZN3igl16FileMemoryStreamD1Ev}
!136 = !{ptr @_ZN3igl16FileMemoryStreamD0Ev}
!137 = !{!138, !15, i64 32}
!138 = !{!"_ZTSN3igl7tinyply10PlyElementE", !31, i64 0, !15, i64 32, !139, i64 40}
!139 = !{!"_ZTSSt6vectorIN3igl7tinyply11PlyPropertyESaIS2_EE", !140, i64 0}
!140 = !{!"_ZTSSt12_Vector_baseIN3igl7tinyply11PlyPropertyESaIS2_EE", !141, i64 0}
!141 = !{!"_ZTSNSt12_Vector_baseIN3igl7tinyply11PlyPropertyESaIS2_EE12_Vector_implE", !88, i64 0}
!142 = !{!143, !83, i64 0}
!143 = !{!"_ZTSNSt12_Vector_baseIN3igl7tinyply10PlyElementESaIS2_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!144 = !{!143, !83, i64 8}
!145 = distinct !{!145, !24}
!146 = !{!143, !83, i64 16}
!147 = distinct !{null, null}
!148 = !{!107, !22, i64 0}
!149 = !{!108, !33, i64 0}
!150 = !{!151, !42, i64 0}
!151 = !{!"_ZTSN5Eigen7MapBaseINS_3MapINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEE", !42, i64 0, !152, i64 8, !152, i64 16}
!152 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !15, i64 0}
!153 = !{!152, !15, i64 0}
!154 = !{!155, !39, i64 0}
!155 = !{!"_ZTSN5Eigen7MapBaseINS_3MapINS_6MatrixIiLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEE", !39, i64 0, !152, i64 8, !152, i64 16}
!156 = distinct !{!156, !24}
!157 = distinct !{!157, !24}
end_hunk_4
