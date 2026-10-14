Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5VM?download=true
inline.NumInlined: 16
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@H5VM_array_offset:bb.a
  %i.a = alloca [33 x i64], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.09.i = add i32 %0, -1                         ; 3 uses
  %i.b = icmp sgt i32 %.09.i, -1
  br i1 %i.b, label %.lr.ph.preheader.i, label %H5VM_array_down.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.c = zext nneg i32 %.09.i to i64              ; 3 uses
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.e = icmp ult i32 %.09.i, 3
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.d, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ %i.c, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %.0810.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.u, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store i64 %.0810.i, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17
  %i.i = mul i64 %i.h, %.0810.i                   ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store i64 %i.i, ptr %i.j, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = mul i64 %i.l, %i.i                       ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.1
  store i64 %i.m, ptr %i.n, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17
  %i.q = mul i64 %i.p, %i.m                       ; 2 uses
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.2
  store i64 %i.q, ptr %i.r, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.2
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17
  %i.u = mul i64 %i.t, %i.q                       ; 2 uses
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i5.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !5

H5VM_array_down.exit:                             ; preds = %bb.a
  %.not.i4 = icmp eq i32 %0, 0
  br i1 %.not.i4, label %H5VM_array_offset_pre.exit, label %.lr.ph.preheader.i5

.lr.ph.preheader.i5.loopexit.unr-lcssa:           ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i5, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.preheader.i5.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ %i.c, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.lr.ph.preheader.i5.loopexit.unr-lcssa ]
  %.0810.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.u, %.lr.ph.preheader.i5.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %.0810.i.epil = phi i64 [ %.0810.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.y, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.epil
  store i64 %.0810.i.epil, ptr %i.v, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.epil
  %i.x = load i64, ptr %i.w, align 8, !tbaa !17
  %i.y = mul i64 %i.x, %.0810.i.epil
  %indvars.iv.next.i.epil = add nsw i64 %indvars.iv.i.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i5, label %.lr.ph.i.epil, !llvm.loop !41

.lr.ph.preheader.i5:                              ; preds = %.lr.ph.preheader.i5.loopexit.unr-lcssa, %.lr.ph.i.epil, %H5VM_array_down.exit
  %wide.trip.count.i = zext i32 %0 to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.i6.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i5
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi10 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <2 x i64>, ptr %i.z, align 16, !tbaa !17
  %wide.load11 = load <2 x i64>, ptr %i.aa, align 16, !tbaa !17
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load12 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !17
  %wide.load13 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !17
  %i.ad = mul <2 x i64> %wide.load12, %wide.load
  %i.ae = mul <2 x i64> %wide.load13, %wide.load11
  %i.af = add <2 x i64> %i.ad, %vec.phi           ; 2 uses
  %i.ag = add <2 x i64> %i.ae, %vec.phi10         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ag, %i.af
  %i.ai = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %H5VM_array_offset_pre.exit, label %.lr.ph.i6.preheader

.lr.ph.i6.preheader:                              ; preds = %.lr.ph.preheader.i5, %middle.block
  %indvars.iv.i7.ph = phi i64 [ 0, %.lr.ph.preheader.i5 ], [ %n.vec, %middle.block ]
  %.010.i.ph = phi i64 [ 0, %.lr.ph.preheader.i5 ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.preheader, %.lr.ph.i6
  %indvars.iv.i7 = phi i64 [ %indvars.iv.next.i8, %.lr.ph.i6 ], [ %indvars.iv.i7.ph, %.lr.ph.i6.preheader ] ; 3 uses
  %.010.i = phi i64 [ %i.ao, %.lr.ph.i6 ], [ %.010.i.ph, %.lr.ph.i6.preheader ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i7
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i7
  %i.am = load i64, ptr %i.al, align 8, !tbaa !17
  %i.an = mul i64 %i.am, %i.ak
  %i.ao = add i64 %i.an, %.010.i                  ; 2 uses
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i7, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i8, %wide.trip.count.i
  br i1 %exitcond.not.i, label %H5VM_array_offset_pre.exit, label %.lr.ph.i6, !llvm.loop !43

H5VM_array_offset_pre.exit:                       ; preds = %.lr.ph.i6, %middle.block, %H5VM_array_down.exit
  %.0.lcssa.i = phi i64 [ 0, %H5VM_array_down.exit ], [ %i.ai, %middle.block ], [ %i.ao, %.lr.ph.i6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @H5VM_array_calc_pre(i64 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.01011 = phi i64 [ %0, %.lr.ph.preheader.new ], [ %i.m, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  %i.d = udiv i64 %.01011, %i.c
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store i64 %i.d, ptr %i.e, align 8, !tbaa !17
  %i.f = load i64, ptr %i.b, align 8, !tbaa !17
  %i.g = urem i64 %.01011, %i.f                   ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17
  %i.j = udiv i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store i64 %i.j, ptr %i.k, align 8, !tbaa !17
  %i.l = load i64, ptr %i.h, align 8, !tbaa !17
  %i.m = urem i64 %i.g, %i.l                      ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !6

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01011.epil.init = phi i64 [ %0, %.lr.ph.preheader ], [ %i.m, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod14 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17
  %i.p = udiv i64 %.01011.epil.init, %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil.init
  store i64 %i.p, ptr %i.q, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @H5VM_array_calc(i64 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [33 x i64], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.09.i = add i32 %1, -1                         ; 3 uses
  %i.b = icmp sgt i32 %.09.i, -1
  br i1 %i.b, label %.lr.ph.preheader.i, label %H5VM_array_down.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.c = zext nneg i32 %.09.i to i64              ; 3 uses
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.e = icmp ult i32 %.09.i, 3
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.d, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ %i.c, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %.0810.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.u, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store i64 %.0810.i, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17
  %i.i = mul i64 %i.h, %.0810.i                   ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store i64 %i.i, ptr %i.j, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = mul i64 %i.l, %i.i                       ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.1
  store i64 %i.m, ptr %i.n, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.1
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17
  %i.q = mul i64 %i.p, %i.m                       ; 2 uses
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.2
  store i64 %i.q, ptr %i.r, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.2
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17
  %i.u = mul i64 %i.t, %i.q                       ; 2 uses
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i7.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !5

H5VM_array_down.exit:                             ; preds = %bb.a
  %.not.i6 = icmp eq i32 %1, 0
  br i1 %.not.i6, label %H5VM_array_calc_pre.exit, label %.lr.ph.preheader.i7

.lr.ph.preheader.i7.loopexit.unr-lcssa:           ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i7, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.preheader.i7.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ %i.c, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.lr.ph.preheader.i7.loopexit.unr-lcssa ]
  %.0810.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.u, %.lr.ph.preheader.i7.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %.0810.i.epil = phi i64 [ %.0810.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.y, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.epil
  store i64 %.0810.i.epil, ptr %i.v, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.epil
  %i.x = load i64, ptr %i.w, align 8, !tbaa !17
  %i.y = mul i64 %i.x, %.0810.i.epil
  %indvars.iv.next.i.epil = add nsw i64 %indvars.iv.i.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i7, label %.lr.ph.i.epil, !llvm.loop !44

.lr.ph.preheader.i7:                              ; preds = %.lr.ph.preheader.i7.loopexit.unr-lcssa, %.lr.ph.i.epil, %H5VM_array_down.exit
  %wide.trip.count.i = zext i32 %1 to i64         ; 2 uses
  %xtraiter13 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %4 = add i32 %1, -1
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %.lr.ph.i8.epil.preheader, label %.lr.ph.preheader.i7.new

.lr.ph.preheader.i7.new:                          ; preds = %.lr.ph.preheader.i7
  %unroll_iter17 = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.lr.ph.i8, %.lr.ph.preheader.i7.new
  %indvars.iv.i9 = phi i64 [ 0, %.lr.ph.preheader.i7.new ], [ %indvars.iv.next.i10.1.a, %.lr.ph.i8 ] ; 6 uses
  %.01011.i = phi i64 [ %0, %.lr.ph.preheader.i7.new ], [ %i.ai, %.lr.ph.i8 ] ; 2 uses
  %niter18 = phi i64 [ 0, %.lr.ph.preheader.i7.new ], [ %niter18.next.1, %.lr.ph.i8 ]
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i9
  %7 = load i64, ptr %6, align 16, !tbaa !17      ; 2 uses
  %8 = udiv i64 %.01011.i, %7
  %9 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i9
  store i64 %8, ptr %9, align 8, !tbaa !17
  %10 = urem i64 %.01011.i, %7                    ; 2 uses
  %indvars.iv.next.i10 = or disjoint i64 %indvars.iv.i9, 1 ; 2 uses
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i10
  %12 = load i64, ptr %11, align 8, !tbaa !17     ; 2 uses
  %13 = udiv i64 %10, %12
  %14 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i10
  store i64 %13, ptr %14, align 8, !tbaa !17
  %15 = urem i64 %10, %12                         ; 2 uses
  %indvars.iv.next.i10.1 = or disjoint i64 %indvars.iv.i9, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i10.1
  %i.aa = load i64, ptr %i.z, align 16, !tbaa !17 ; 2 uses
  %i.ab = udiv i64 %15, %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i10.1
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !17
  %i.ad = urem i64 %15, %i.aa                     ; 2 uses
  %indvars.iv.next.i10.a = or disjoint i64 %indvars.iv.i9, 3 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i10.a
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.ag = udiv i64 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i10.a
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !17
  %i.ai = urem i64 %i.ad, %i.af                   ; 2 uses
  %indvars.iv.next.i10.1.a = add nuw nsw i64 %indvars.iv.i9, 4 ; 2 uses
  %niter18.next.1 = add i64 %niter18, 4           ; 2 uses
  %niter18.ncmp.1 = icmp eq i64 %niter18.next.1, %unroll_iter17
  br i1 %niter18.ncmp.1, label %H5VM_array_calc_pre.exit.loopexit.unr-lcssa, label %.lr.ph.i8, !llvm.loop !6

H5VM_array_calc_pre.exit.loopexit.unr-lcssa:      ; preds = %.lr.ph.i8
  %lcmp.mod15.not = icmp eq i64 %xtraiter13, 0
  br i1 %lcmp.mod15.not, label %H5VM_array_calc_pre.exit, label %.lr.ph.i8.epil.preheader

.lr.ph.i8.epil.preheader:                         ; preds = %H5VM_array_calc_pre.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i7
  %indvars.iv.i9.epil.init = phi i64 [ 0, %.lr.ph.preheader.i7 ], [ %indvars.iv.next.i10.1.a, %H5VM_array_calc_pre.exit.loopexit.unr-lcssa ]
  %.01011.i.epil.init = phi i64 [ %0, %.lr.ph.preheader.i7 ], [ %i.ai, %H5VM_array_calc_pre.exit.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter13, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.i8.epil.preheader.a

.lr.ph.i8.epil.preheader.a:                       ; preds = %.lr.ph.i8.epil.preheader.a, %.lr.ph.i8.epil.preheader
  %indvars.iv.i9.epil.init.a = phi i64 [ %indvars.iv.i9.epil.init, %.lr.ph.i8.epil.preheader ], [ %indvars.iv.next.i10.epil, %.lr.ph.i8.epil.preheader.a ] ; 3 uses
  %.01011.i.epil.init.a = phi i64 [ %.01011.i.epil.init, %.lr.ph.i8.epil.preheader ], [ %16, %.lr.ph.i8.epil.preheader.a ] ; 2 uses
  %epil.iter14 = phi i64 [ 0, %.lr.ph.i8.epil.preheader ], [ %epil.iter14.next, %.lr.ph.i8.epil.preheader.a ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i9.epil.init.a
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !17 ; 2 uses
  %i.al = udiv i64 %.01011.i.epil.init.a, %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i9.epil.init.a
  store i64 %i.al, ptr %i.am, align 8, !tbaa !17
  %16 = urem i64 %.01011.i.epil.init.a, %i.ak
  %indvars.iv.next.i10.epil = add nuw nsw i64 %indvars.iv.i9.epil.init.a, 1
  %epil.iter14.next = add i64 %epil.iter14, 1     ; 2 uses
  %epil.iter14.cmp.not = icmp eq i64 %epil.iter14.next, %xtraiter13
  br i1 %epil.iter14.cmp.not, label %H5VM_array_calc_pre.exit, label %.lr.ph.i8.epil.preheader.a, !llvm.loop !45

H5VM_array_calc_pre.exit:                         ; preds = %H5VM_array_calc_pre.exit.loopexit.unr-lcssa, %.lr.ph.i8.epil.preheader.a, %H5VM_array_down.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i64 @H5VM_chunk_index(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [33 x i64], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not.i = icmp eq i32 %0, 0
  br i1 %.not.i, label %H5VM_chunk_index_scaled.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %0 to i64         ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.b = icmp eq i32 %0, 1
  br i1 %i.b, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = udiv i64 %i.d, %i.f
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store i64 %i.g, ptr %i.h, align 16, !tbaa !17
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = udiv i64 %i.j, %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store i64 %i.m, ptr %i.n, align 8, !tbaa !17
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i.i.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !7

.lr.ph.i.i.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i.i.preheader.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.lr.ph.i.i.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod11 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.epil.init
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17
  %i.s = udiv i64 %i.p, %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.epil.init
  store i64 %i.s, ptr %i.t, align 8, !tbaa !17
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.preheader.unr-lcssa, %.lr.ph.i.epil.preheader
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi4 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x i64>, ptr %i.u, align 8, !tbaa !17
  %wide.load5 = load <2 x i64>, ptr %i.v, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load6 = load <2 x i64>, ptr %i.w, align 16, !tbaa !17
  %wide.load7 = load <2 x i64>, ptr %i.x, align 16, !tbaa !17
  %i.y = mul <2 x i64> %wide.load6, %wide.load
  %i.z = mul <2 x i64> %wide.load7, %wide.load5
  %i.aa = add <2 x i64> %i.y, %vec.phi            ; 2 uses
  %i.ab = add <2 x i64> %i.z, %vec.phi4           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %H5VM_chunk_index_scaled.exit, label %.lr.ph.i.i.preheader8

.lr.ph.i.i.preheader8:                            ; preds = %.lr.ph.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader8, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader8 ] ; 3 uses
  %.010.i.i = phi i64 [ %i.aj, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader8 ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !17
  %i.ai = mul i64 %i.ah, %i.af
  %i.aj = add i64 %i.ai, %.010.i.i                ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond.not.i.i, label %H5VM_chunk_index_scaled.exit, label %.lr.ph.i.i, !llvm.loop !47

H5VM_chunk_index_scaled.exit:                     ; preds = %.lr.ph.i.i, %middle.block, %bb.a
  %.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.ad, %middle.block ], [ %i.aj, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0.lcssa.i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @H5VM_chunk_index_scaled(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %H5VM_array_offset_pre.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %0 to i64           ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17
  %i.f = udiv i64 %i.c, %i.e
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store i64 %i.f, ptr %i.g, align 8, !tbaa !17
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17
  %i.l = udiv i64 %i.i, %i.k
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  store i64 %i.l, ptr %i.m, align 8, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.unr-lcssa, label %.lr.ph, !llvm.loop !7

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.lr.ph.preheader.i.unr-lcssa ] ; 3 uses
  %lcmp.mod21 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17
  %i.r = udiv i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil.init
  store i64 %i.r, ptr %i.s, align 8, !tbaa !17
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph.epil.preheader
  %wide.trip.count.i = zext i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi15 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !tbaa !17
  %wide.load16 = load <2 x i64>, ptr %i.u, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load17 = load <2 x i64>, ptr %i.v, align 8, !tbaa !17
  %wide.load18 = load <2 x i64>, ptr %i.w, align 8, !tbaa !17
  %i.x = mul <2 x i64> %wide.load17, %wide.load
  %i.y = mul <2 x i64> %wide.load18, %wide.load16
  %i.z = add <2 x i64> %i.x, %vec.phi             ; 2 uses
  %i.aa = add <2 x i64> %i.y, %vec.phi15          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %H5VM_array_offset_pre.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.010.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.010.i = phi i64 [ %i.ai, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !17
  %i.ah = mul i64 %i.ag, %i.ae
  %i.ai = add i64 %i.ah, %.010.i                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %H5VM_array_offset_pre.exit, label %.lr.ph.i, !llvm.loop !49

H5VM_array_offset_pre.exit:                       ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ac, %middle.block ], [ %i.ai, %.lr.ph.i ]
  ret i64 %.0.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @H5VM_chunk_scaled(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %0 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17
  %i.f = udiv i64 %i.c, %i.e
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store i64 %i.f, ptr %i.g, align 8, !tbaa !17
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17
  %i.l = udiv i64 %i.i, %i.k
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store i64 %i.l, ptr %i.m, align 8, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !50

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod10 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17
  %i.r = udiv i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil.init
  store i64 %i.r, ptr %i.s, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @H5VM_opvv(i64 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9) local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.a ; 4 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.a ; 4 uses
  %i.d = load i64, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.d ; 4 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !17   ; 5 uses
  %i.h = load i64, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.i = load i64, ptr %i.e, align 8, !tbaa !17   ; 4 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %0 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %4 ; 2 uses
  %i.m = icmp ult i64 %i.i, %i.g
  br i1 %i.m, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.v, %bb.p, %bb.a
  %.0151 = phi ptr [ %i.c, %bb.a ], [ %i.al, %bb.p ], [ %i.az, %bb.v ] ; 4 uses
  %.0145 = phi ptr [ %i.f, %bb.a ], [ %.2147, %bb.p ], [ %i.ay, %bb.v ]
  %.0140 = phi ptr [ %i.b, %bb.a ], [ %i.an, %bb.p ], [ %i.be, %bb.v ] ; 3 uses
  %.0135 = phi ptr [ %i.e, %bb.a ], [ %.2137, %bb.p ], [ %i.bc, %bb.v ]
  %.0129 = phi i64 [ %i.h, %bb.a ], [ %i.am, %bb.p ], [ %i.bb, %bb.v ]
  %.0123 = phi i64 [ %i.j, %bb.a ], [ %i.aj, %bb.p ], [ %i.ba, %bb.v ]
  %.0118 = phi i64 [ %i.g, %bb.a ], [ %i.ao, %bb.p ], [ %i.bf, %bb.v ]
  %.0114 = phi i64 [ %i.i, %bb.a ], [ %i.ak, %bb.p ], [ %i.bd, %bb.v ]
  %.0 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.p ], [ %i.bh, %bb.v ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.1146 = phi ptr [ %.0145, %bb.b ], [ %i.v, %bb.g ]
  %.1136 = phi ptr [ %.0135, %bb.b ], [ %i.x, %bb.g ]
  %.1130 = phi i64 [ %.0129, %bb.b ], [ %i.t, %bb.g ] ; 2 uses
  %.1124 = phi i64 [ %.0123, %bb.b ], [ %i.w, %bb.g ]
  %.1119 = phi i64 [ %.0118, %bb.b ], [ %i.u, %bb.g ]
  %.1115 = phi i64 [ %.0114, %bb.b ], [ %i.y, %bb.g ] ; 4 uses
  %.0110 = phi i64 [ 0, %bb.b ], [ %i.s, %bb.g ]
  %i.n = tail call i32 %8(i64 noundef %.1130, i64 noundef %.1124, i64 noundef %.1115, ptr noundef %9) #8
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr @H5E_INTERNAL_g, align 8, !tbaa !17
  %i.q = load i64, ptr @H5E_CANTOPERATE_g, align 8, !tbaa !17
  %i.r = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VM_opvv, i32 noundef 1178, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.s = add i64 %.0110, %.1115                   ; 3 uses
  %i.t = add i64 %.1115, %.1130                   ; 4 uses
  %i.u = sub i64 %.1119, %.1115                   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.1146, i64 8 ; 6 uses
  %.not = icmp ult ptr %i.v, %i.l
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.t, ptr %.0151, align 8, !tbaa !17
  store i64 %i.u, ptr %.0140, align 8, !tbaa !17
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.1136, i64 8 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !17   ; 4 uses
  %i.z = icmp ult i64 %i.y, %i.u
  br i1 %i.z, label %bb.c, label %bb.h, !llvm.loop !51

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i64 %i.s, %.0                   ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.y
  br i1 %i.ab, label %bb.j, label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.ac = icmp ult i64 %i.g, %i.i
  br i1 %i.ac, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.v, %bb.i, %bb.h
  %.1152 = phi ptr [ %.0151, %bb.h ], [ %i.az, %bb.v ], [ %i.c, %bb.i ]
  %.2147 = phi ptr [ %i.v, %bb.h ], [ %i.ay, %bb.v ], [ %i.f, %bb.i ] ; 4 uses
  %.1141 = phi ptr [ %.0140, %bb.h ], [ %i.be, %bb.v ], [ %i.b, %bb.i ]
  %.2137 = phi ptr [ %i.x, %bb.h ], [ %i.bc, %bb.v ], [ %i.e, %bb.i ] ; 3 uses
  %.2131 = phi i64 [ %i.t, %bb.h ], [ %i.bb, %bb.v ], [ %i.h, %bb.i ]
  %.2125 = phi i64 [ %i.w, %bb.h ], [ %i.ba, %bb.v ], [ %i.j, %bb.i ]
  %.2120 = phi i64 [ %i.u, %bb.h ], [ %i.bf, %bb.v ], [ %i.g, %bb.i ]
  %.2116 = phi i64 [ %i.y, %bb.h ], [ %i.bd, %bb.v ], [ %i.i, %bb.i ]
  %.1 = phi i64 [ %i.aa, %bb.h ], [ %i.bh, %bb.v ], [ 0, %bb.i ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.j
  %.2153 = phi ptr [ %.1152, %bb.j ], [ %i.al, %bb.o ]
  %.2142 = phi ptr [ %.1141, %bb.j ], [ %i.an, %bb.o ]
  %.3132 = phi i64 [ %.2131, %bb.j ], [ %i.am, %bb.o ]
  %.3126 = phi i64 [ %.2125, %bb.j ], [ %i.aj, %bb.o ] ; 2 uses
  %.3121 = phi i64 [ %.2120, %bb.j ], [ %i.ao, %bb.o ] ; 4 uses
  %.3117 = phi i64 [ %.2116, %bb.j ], [ %i.ak, %bb.o ]
  %.1111 = phi i64 [ 0, %bb.j ], [ %i.ai, %bb.o ]
  %i.ad = tail call i32 %8(i64 noundef %.3132, i64 noundef %.3126, i64 noundef %.3121, ptr noundef %9) #8
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = load i64, ptr @H5E_INTERNAL_g, align 8, !tbaa !17
  %i.ag = load i64, ptr @H5E_CANTOPERATE_g, align 8, !tbaa !17
  %i.ah = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VM_opvv, i32 noundef 1220, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.ai = add i64 %.1111, %.3121                  ; 3 uses
  %i.aj = add i64 %.3121, %.3126                  ; 4 uses
  %i.ak = sub i64 %.3117, %.3121                  ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.2153, i64 8 ; 6 uses
  %.not180 = icmp ult ptr %i.al, %i.k
  br i1 %.not180, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.aj, ptr %.2147, align 8, !tbaa !17
  store i64 %i.ak, ptr %.2137, align 8, !tbaa !17
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.am = load i64, ptr %i.al, align 8, !tbaa !17 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.2142, i64 8 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !17 ; 5 uses
  %i.ap = icmp ult i64 %i.ao, %i.ak
  br i1 %i.ap, label %bb.k, label %bb.p, !llvm.loop !52

bb.p:                                             ; preds = %bb.o
  %i.aq = add nsw i64 %i.ai, %.1                  ; 2 uses
  %i.ar = icmp ult i64 %i.ak, %i.ao
  br i1 %i.ar, label %bb.b, label %bb.q

bb.q:                                             ; preds = %bb.i, %bb.p, %bb.h
  %.3154 = phi ptr [ %i.al, %bb.p ], [ %.0151, %bb.h ], [ %i.c, %bb.i ]
  %.3148 = phi ptr [ %.2147, %bb.p ], [ %i.v, %bb.h ], [ %i.f, %bb.i ]
  %.3143 = phi ptr [ %i.an, %bb.p ], [ %.0140, %bb.h ], [ %i.b, %bb.i ]
  %.3138 = phi ptr [ %.2137, %bb.p ], [ %i.x, %bb.h ], [ %i.e, %bb.i ]
  %.4133 = phi i64 [ %i.am, %bb.p ], [ %i.t, %bb.h ], [ %i.h, %bb.i ]
  %.4127 = phi i64 [ %i.aj, %bb.p ], [ %i.w, %bb.h ], [ %i.j, %bb.i ]
  %.4122 = phi i64 [ %i.ao, %bb.p ], [ %i.u, %bb.h ], [ %i.g, %bb.i ]
  %.2 = phi i64 [ %i.aq, %bb.p ], [ %i.aa, %bb.h ], [ 0, %bb.i ] ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %bb.q
  %.4155 = phi ptr [ %.3154, %bb.q ], [ %i.az, %bb.u ]
  %.4149 = phi ptr [ %.3148, %bb.q ], [ %i.ay, %bb.u ]
  %.4144 = phi ptr [ %.3143, %bb.q ], [ %i.be, %bb.u ]
  %.4139 = phi ptr [ %.3138, %bb.q ], [ %i.bc, %bb.u ]
  %.5134 = phi i64 [ %.4133, %bb.q ], [ %i.bb, %bb.u ]
  %.5128 = phi i64 [ %.4127, %bb.q ], [ %i.ba, %bb.u ]
  %.5 = phi i64 [ %.4122, %bb.q ], [ %i.bd, %bb.u ] ; 2 uses
  %.2112 = phi i64 [ 0, %bb.q ], [ %i.ax, %bb.u ]
  %i.as = tail call i32 %8(i64 noundef %.5134, i64 noundef %.5128, i64 noundef %.5, ptr noundef %9) #8
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.au = load i64, ptr @H5E_INTERNAL_g, align 8, !tbaa !17
  %i.av = load i64, ptr @H5E_CANTOPERATE_g, align 8, !tbaa !17
  %i.aw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VM_opvv, i32 noundef 1262, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.ax = add i64 %.2112, %.5                     ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.4149, i64 8 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.4155, i64 8 ; 6 uses
  %.not181 = icmp ult ptr %i.ay, %i.l
  %.not182 = icmp ult ptr %i.az, %i.k
  %or.cond = select i1 %.not181, i1 %.not182, i1 false
  br i1 %or.cond, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !17 ; 3 uses
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !17 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.4139, i64 8 ; 4 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !17 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.4144, i64 8 ; 4 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !17 ; 4 uses
  %i.bg = icmp eq i64 %i.bf, %i.bd
  br i1 %i.bg, label %bb.r, label %bb.v, !llvm.loop !53

bb.v:                                             ; preds = %bb.u
  %i.bh = add nsw i64 %i.ax, %.2                  ; 2 uses
  %i.bi = icmp ult i64 %i.bf, %i.bd
  br i1 %i.bi, label %bb.j, label %bb.b

.loopexit:                                        ; preds = %bb.t, %bb.n, %bb.f
  %.5156 = phi ptr [ %.0151, %bb.f ], [ %i.al, %bb.n ], [ %i.az, %bb.t ]
  %.5150 = phi ptr [ %i.v, %bb.f ], [ %.2147, %bb.n ], [ %i.ay, %bb.t ]
  %.3113 = phi i64 [ %i.s, %bb.f ], [ %i.ai, %bb.n ], [ %i.ax, %bb.t ]
  %.3 = phi i64 [ %.0, %bb.f ], [ %.1, %bb.n ], [ %.2, %bb.t ]
  %i.bj = add nsw i64 %.3, %.3113
  %i.bk = ptrtoint ptr %.5156 to i64
  %i.bl = ptrtoint ptr %3 to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 3
  store i64 %i.bn, ptr %1, align 8, !tbaa !17
  %i.bo = ptrtoint ptr %.5150 to i64
  %i.bp = ptrtoint ptr %7 to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 3
  store i64 %i.br, ptr %5, align 8, !tbaa !17
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %bb.s, %bb.l, %bb.d
  %.4 = phi i64 [ -1, %bb.d ], [ %i.bj, %.loopexit ], [ -1, %bb.l ], [ -1, %bb.s ]
  ret i64 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @H5VM_memcpyvv(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.a ; 4 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.a ; 4 uses
  %i.d = load i64, ptr %7, align 8, !tbaa !17     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.d ; 4 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !17   ; 5 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !17   ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %1 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %6 ; 2 uses
  %i.k = load i64, ptr %i.c, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k ; 3 uses
  %i.m = load i64, ptr %i.f, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 %i.m ; 3 uses
  %i.o = icmp ult i64 %i.h, %i.g
  br i1 %i.o, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.p, %bb.l, %bb.a
  %.0147 = phi ptr [ %i.l, %bb.a ], [ %i.am, %bb.l ], [ %i.ba, %bb.p ]
  %.0141 = phi ptr [ %i.n, %bb.a ], [ %i.ai, %bb.l ], [ %i.aw, %bb.p ]
  %.0135 = phi ptr [ %i.c, %bb.a ], [ %i.af, %bb.l ], [ %i.as, %bb.p ] ; 5 uses
  %.0129 = phi ptr [ %i.f, %bb.a ], [ %.2131, %bb.l ], [ %i.ar, %bb.p ]
  %.0124 = phi ptr [ %i.b, %bb.a ], [ %i.aj, %bb.l ], [ %i.ax, %bb.p ] ; 3 uses
  %.0119 = phi ptr [ %i.e, %bb.a ], [ %.2121, %bb.l ], [ %i.at, %bb.p ]
  %.0115 = phi i64 [ %i.g, %bb.a ], [ %i.ak, %bb.l ], [ %i.ay, %bb.p ]
  %.0111 = phi i64 [ %i.h, %bb.a ], [ %i.ae, %bb.l ], [ %i.au, %bb.p ]
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ao, %bb.l ], [ %i.bc, %bb.p ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.1148 = phi ptr [ %.0147, %bb.b ], [ %i.u, %bb.e ] ; 2 uses
  %.1142 = phi ptr [ %.0141, %bb.b ], [ %i.y, %bb.e ]
  %.1130 = phi ptr [ %.0129, %bb.b ], [ %i.r, %bb.e ]
  %.1120 = phi ptr [ %.0119, %bb.b ], [ %i.v, %bb.e ]
  %.1116 = phi i64 [ %.0115, %bb.b ], [ %i.q, %bb.e ]
  %.1112 = phi i64 [ %.0111, %bb.b ], [ %i.w, %bb.e ] ; 4 uses
  %.0107 = phi i64 [ 0, %bb.b ], [ %i.p, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1148, ptr align 1 %.1142, i64 %.1112, i1 false)
  %i.p = add i64 %.0107, %.1112                   ; 4 uses
  %i.q = sub i64 %.1116, %.1112                   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.1130, i64 8 ; 6 uses
  %.not = icmp ult ptr %i.r, %i.j
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %.0135, align 8, !tbaa !17
  %i.t = add i64 %i.s, %i.p
  store i64 %i.t, ptr %.0135, align 8, !tbaa !17
  store i64 %i.q, ptr %.0124, align 8, !tbaa !17
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.1148, i64 %.1112 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.1120, i64 8 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17   ; 4 uses
  %i.x = load i64, ptr %i.r, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 %i.x ; 3 uses
  %i.z = icmp ult i64 %i.w, %i.q
  br i1 %i.z, label %bb.c, label %bb.f, !llvm.loop !54

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i64 %i.p, %.0                   ; 2 uses
  %i.ab = icmp ult i64 %i.q, %i.w
  br i1 %i.ab, label %bb.h, label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.ac = icmp ult i64 %i.g, %i.h
  br i1 %i.ac, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.p, %bb.g, %bb.f
  %.2149 = phi ptr [ %i.u, %bb.f ], [ %i.ba, %bb.p ], [ %i.l, %bb.g ]
  %.2143 = phi ptr [ %i.y, %bb.f ], [ %i.aw, %bb.p ], [ %i.n, %bb.g ]
  %.1136 = phi ptr [ %.0135, %bb.f ], [ %i.as, %bb.p ], [ %i.c, %bb.g ]
  %.2131 = phi ptr [ %i.r, %bb.f ], [ %i.ar, %bb.p ], [ %i.f, %bb.g ] ; 5 uses
  %.1125 = phi ptr [ %.0124, %bb.f ], [ %i.ax, %bb.p ], [ %i.b, %bb.g ]
  %.2121 = phi ptr [ %i.v, %bb.f ], [ %i.at, %bb.p ], [ %i.e, %bb.g ] ; 3 uses
  %.2117 = phi i64 [ %i.q, %bb.f ], [ %i.ay, %bb.p ], [ %i.g, %bb.g ]
  %.2113 = phi i64 [ %i.w, %bb.f ], [ %i.au, %bb.p ], [ %i.h, %bb.g ]
  %.1 = phi i64 [ %i.aa, %bb.f ], [ %i.bc, %bb.p ], [ 0, %bb.g ] ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.3150 = phi ptr [ %.2149, %bb.h ], [ %i.am, %bb.k ]
  %.3144 = phi ptr [ %.2143, %bb.h ], [ %i.ai, %bb.k ] ; 2 uses
  %.2137 = phi ptr [ %.1136, %bb.h ], [ %i.af, %bb.k ]
  %.2126 = phi ptr [ %.1125, %bb.h ], [ %i.aj, %bb.k ]
  %.3118 = phi i64 [ %.2117, %bb.h ], [ %i.ak, %bb.k ] ; 4 uses
  %.3114 = phi i64 [ %.2113, %bb.h ], [ %i.ae, %bb.k ]
  %.1108 = phi i64 [ 0, %bb.h ], [ %i.ad, %bb.k ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.3150, ptr align 1 %.3144, i64 %.3118, i1 false)
  %i.ad = add i64 %.1108, %.3118                  ; 4 uses
  %i.ae = sub i64 %.3114, %.3118                  ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.2137, i64 8 ; 6 uses
  %.not176 = icmp ult ptr %i.af, %i.i
  br i1 %.not176, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i64, ptr %.2131, align 8, !tbaa !17
  %i.ah = add i64 %i.ag, %i.ad
  store i64 %i.ah, ptr %.2131, align 8, !tbaa !17
  store i64 %i.ae, ptr %.2121, align 8, !tbaa !17
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.3144, i64 %.3118 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.2126, i64 8 ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !17 ; 5 uses
  %i.al = load i64, ptr %i.af, align 8, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al ; 3 uses
  %i.an = icmp ult i64 %i.ak, %i.ae
  br i1 %i.an, label %bb.i, label %bb.l, !llvm.loop !55

bb.l:                                             ; preds = %bb.k
  %i.ao = add nsw i64 %i.ad, %.1                  ; 2 uses
  %i.ap = icmp ult i64 %i.ae, %i.ak
  br i1 %i.ap, label %bb.b, label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.l, %bb.f
  %.4151 = phi ptr [ %i.am, %bb.l ], [ %i.u, %bb.f ], [ %i.l, %bb.g ]
  %.4145 = phi ptr [ %i.ai, %bb.l ], [ %i.y, %bb.f ], [ %i.n, %bb.g ]
  %.3138 = phi ptr [ %i.af, %bb.l ], [ %.0135, %bb.f ], [ %i.c, %bb.g ]
  %.3132 = phi ptr [ %.2131, %bb.l ], [ %i.r, %bb.f ], [ %i.f, %bb.g ]
  %.3127 = phi ptr [ %i.aj, %bb.l ], [ %.0124, %bb.f ], [ %i.b, %bb.g ]
  %.3122 = phi ptr [ %.2121, %bb.l ], [ %i.v, %bb.f ], [ %i.e, %bb.g ]
  %.4 = phi i64 [ %i.ak, %bb.l ], [ %i.q, %bb.f ], [ %i.g, %bb.g ]
  %.2 = phi i64 [ %i.ao, %bb.l ], [ %i.aa, %bb.f ], [ 0, %bb.g ] ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.5152 = phi ptr [ %.4151, %bb.m ], [ %i.ba, %bb.o ]
  %.5146 = phi ptr [ %.4145, %bb.m ], [ %i.aw, %bb.o ]
  %.4139 = phi ptr [ %.3138, %bb.m ], [ %i.as, %bb.o ]
  %.4133 = phi ptr [ %.3132, %bb.m ], [ %i.ar, %bb.o ]
  %.4128 = phi ptr [ %.3127, %bb.m ], [ %i.ax, %bb.o ]
  %.4123 = phi ptr [ %.3122, %bb.m ], [ %i.at, %bb.o ]
  %.5 = phi i64 [ %.4, %bb.m ], [ %i.au, %bb.o ]  ; 2 uses
  %.2109 = phi i64 [ 0, %bb.m ], [ %i.aq, %bb.o ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.5152, ptr align 1 %.5146, i64 %.5, i1 false)
  %i.aq = add i64 %.2109, %.5                     ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.4133, i64 8 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.4139, i64 8 ; 6 uses
  %.not177 = icmp ult ptr %i.ar, %i.j
  %.not178 = icmp ult ptr %i.as, %i.i
  %or.cond = select i1 %.not177, i1 %.not178, i1 false
  br i1 %or.cond, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %.4123, i64 8 ; 4 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !17 ; 5 uses
  %i.av = load i64, ptr %i.ar, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.4128, i64 8 ; 4 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !17 ; 4 uses
  %i.az = load i64, ptr %i.as, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.az ; 3 uses
  %i.bb = icmp eq i64 %i.ay, %i.au
  br i1 %i.bb, label %bb.n, label %bb.p, !llvm.loop !56

bb.p:                                             ; preds = %bb.o
  %i.bc = add nsw i64 %i.aq, %.2                  ; 2 uses
  %i.bd = icmp ult i64 %i.ay, %i.au
  br i1 %i.bd, label %bb.h, label %bb.b

.loopexit:                                        ; preds = %bb.n, %bb.j, %bb.d
  %.5140 = phi ptr [ %.0135, %bb.d ], [ %i.af, %bb.j ], [ %i.as, %bb.n ]
  %.5134 = phi ptr [ %i.r, %bb.d ], [ %.2131, %bb.j ], [ %i.ar, %bb.n ]
  %.3110 = phi i64 [ %i.p, %bb.d ], [ %i.ad, %bb.j ], [ %i.aq, %bb.n ]
  %.3 = phi i64 [ %.0, %bb.d ], [ %.1, %bb.j ], [ %.2, %bb.n ]
  %i.be = add nsw i64 %.3, %.3110
  %i.bf = ptrtoint ptr %.5140 to i64
  %i.bg = ptrtoint ptr %4 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  store i64 %i.bi, ptr %2, align 8, !tbaa !17
  %i.bj = ptrtoint ptr %.5134 to i64
  %i.bk = ptrtoint ptr %9 to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  store i64 %i.bm, ptr %7, align 8, !tbaa !17
  ret i64 %i.be
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !18}
!1 = distinct !{!1, !18}
!2 = distinct !{!2, !18}
!3 = distinct !{!3, !18}
!4 = distinct !{!4, !18}
!5 = distinct !{!5, !18}
!6 = distinct !{!6, !18}
!7 = distinct !{!7, !18}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"long", !12, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !18, !20, !21}
!40 = distinct !{!40, !18, !21, !20}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !18, !20, !21}
!43 = distinct !{!43, !18, !21, !20}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !18, !20, !21}
!47 = distinct !{!47, !18, !21, !20}
!48 = distinct !{!48, !18, !20, !21}
!49 = distinct !{!49, !18, !21, !20}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !18}
end_hunk_0
