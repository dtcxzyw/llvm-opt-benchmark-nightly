Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fpu_helper?download=true
inline.NumInlined: 830
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 540
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 554
begin_hunk_0_@helper_psraw_xmm:bb.a
  %i.p = trunc nsw i32 %i.o to i16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.p, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.s = load i16, ptr %i.r, align 2
  %i.t = sext i16 %i.s to i32
  %i.u = ashr i32 %i.t, %spec.select
  %i.v = trunc nsw i32 %i.u to i16
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.v, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i16, ptr %i.x, align 2
  %i.z = sext i16 %i.y to i32
  %i.aa = ashr i32 %i.z, %spec.select
  %i.ab = trunc nsw i32 %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.ab, ptr %i.ac, align 2
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = sext i16 %i.ae to i32
  %i.ag = ashr i32 %i.af, %spec.select
  %i.ah = trunc nsw i32 %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = sext i16 %i.ak to i32
  %i.am = ashr i32 %i.al, %spec.select
  %i.an = trunc nsw i32 %i.am to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.an, ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = sext i16 %i.aq to i32
  %i.as = ashr i32 %i.ar, %spec.select
  %i.at = trunc nsw i32 %i.as to i16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.at, ptr %i.au, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psrld_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 2 uses
  %i.b = icmp ugt i64 %i.a, 31
  br i1 %i.b, label %.preheader.preheader, label %.loopexit.loopexit16

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %.loopexit

.loopexit.loopexit16:                             ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %i.a to i32            ; 4 uses
  %i.d = load i32, ptr %2, align 4
  %i.e = lshr i32 %i.d, %i.c
  store i32 %i.e, ptr %1, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = lshr i32 %i.g, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.h, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = lshr i32 %i.k, %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = lshr i32 %i.o, %i.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.p, ptr %i.q, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit16, %.preheader.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pslld_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 2 uses
  %i.b = icmp ugt i64 %i.a, 31
  br i1 %i.b, label %.preheader.preheader, label %.loopexit.loopexit16

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %.loopexit

.loopexit.loopexit16:                             ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %i.a to i32            ; 4 uses
  %i.d = load i32, ptr %2, align 4
  %i.e = shl i32 %i.d, %i.c
  store i32 %i.e, ptr %1, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = shl i32 %i.g, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.h, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = shl i32 %i.k, %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = shl i32 %i.o, %i.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.p, ptr %i.q, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit16, %.preheader.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psrad_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8
  %spec.select11 = tail call i64 @llvm.umin.i64(i64 %i.a, i64 31)
  %spec.select = trunc nuw nsw i64 %spec.select11 to i32 ; 4 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = ashr i32 %i.b, %spec.select
  store i32 %i.c, ptr %1, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = ashr i32 %i.e, %spec.select
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 4
  %i.j = ashr i32 %i.i, %spec.select
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = ashr i32 %i.m, %spec.select
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.n, ptr %i.o, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psrlq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 3 uses
  %i.b = icmp ugt i64 %i.a, 63
  br i1 %i.b, label %.preheader.preheader, label %.loopexit.loopexit16

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %.loopexit

.loopexit.loopexit16:                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = lshr i64 %i.c, %i.a
  store i64 %i.d, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = lshr i64 %i.f, %i.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.g, ptr %i.h, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit16, %.preheader.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psllq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 3 uses
  %i.b = icmp ugt i64 %i.a, 63
  br i1 %i.b, label %.preheader.preheader, label %.loopexit.loopexit16

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %.loopexit

.loopexit.loopexit16:                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = shl i64 %i.c, %i.a
  store i64 %i.d, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = shl i64 %i.f, %i.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.g, ptr %i.h, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit16, %.preheader.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_psrldq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = load i32, ptr %3, align 8                ; 2 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16) ; 16 uses
  %i.d = sub i32 16, %spec.store.select           ; 6 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.split.us, label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %bb.a
  %i.f = sext i32 %i.d to i64
  br label %.split26.us.sink.split

.split.us:                                        ; preds = %bb.a
  %4 = icmp samesign ult i32 %i.d, 16
  %wide.trip.count34 = zext nneg i32 %i.d to i64  ; 13 uses
  br i1 %4, label %.split.us.a, label %iter.check

.split.us.a:                                      ; preds = %.split.us
  %xtraiter47 = and i64 %wide.trip.count34, 3     ; 3 uses
  %i.g = icmp ult i32 %i.d, 4
  br i1 %i.g, label %.preheader21.us.us.epil.preheader, label %.preheader21.us.us.preheader.new

.preheader21.us.us.preheader.new:                 ; preds = %.split.us.a
  %unroll_iter = and i64 %wide.trip.count34, 12
  br label %.preheader21.us.us

iter.check:                                       ; preds = %.split.us
  %i.h = add nsw i64 %wide.trip.count34, -1       ; 2 uses
  %i.i = trunc nsw i64 %i.h to i32
  %i.j = add i32 %spec.store.select, %i.i
  %i.k = icmp slt i32 %i.j, %spec.store.select
  %i.l = icmp ugt i64 %i.h, 4294967295
  %i.m = or i1 %i.k, %i.l
  br i1 %i.m, label %.preheader21.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16)
  %smin = sext i32 %i.n to i64
  %i.o = add i64 %i.a, %smin
  %i.p = sub i64 %i.o, %i.b
  %diff.check = icmp ugt i64 %i.p, -32
  br i1 %diff.check, label %.preheader21.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i32 %i.d, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %wide.trip.count34, 28
  %n.vec = and i64 %wide.trip.count34, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = trunc nuw nsw i64 %index to i32
  %i.s = add i32 %spec.store.select, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %2, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <16 x i8>, ptr %i.u, align 1
  %wide.load42 = load <16 x i8>, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <16 x i8> %wide.load, ptr %i.w, align 1
  store <16 x i8> %wide.load42, ptr %i.x, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count34
  br i1 %cmp.n, label %.split26.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.preheader21.us.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %wide.trip.count34, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 3 uses
  %i.z = trunc nuw nsw i64 %index44 to i32
  %i.aa = add i32 %spec.store.select, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab
  %wide.load45 = load <4 x i8>, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %index44
  store <4 x i8> %wide.load45, ptr %i.ad, align 1
  %index.next46 = add nuw i64 %index44, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next46, %n.vec43
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %n.vec43, %wide.trip.count34
  br i1 %cmp.n47, label %.split26.us, label %.preheader21.us.preheader

.preheader21.us.preheader:                        ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec43, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count34, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader21.us.prol.loopexit, label %.preheader21.us.prol

.preheader21.us.prol:                             ; preds = %.preheader21.us.preheader, %.preheader21.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.preheader21.us.prol ], [ %indvars.iv.ph, %.preheader21.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader21.us.prol ], [ 0, %.preheader21.us.preheader ]
  %i.af = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.ag = add i32 %spec.store.select, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.aj, ptr %i.ak, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader21.us.prol.loopexit, label %.preheader21.us.prol, !llvm.loop !32

.preheader21.us.prol.loopexit:                    ; preds = %.preheader21.us.prol, %.preheader21.us.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader21.us.preheader ], [ %indvars.iv.next.prol, %.preheader21.us.prol ]
  %i.al = sub nsw i64 %indvars.iv.ph, %wide.trip.count34
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %.split26.us, label %.preheader21.us

.preheader21.us.us:                               ; preds = %.preheader21.us.us, %.preheader21.us.us.preheader.new
  %indvars.iv32 = phi i64 [ 0, %.preheader21.us.us.preheader.new ], [ %indvars.iv.next33.3, %.preheader21.us.us ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader21.us.us.preheader.new ], [ %niter.next.3, %.preheader21.us.us ]
  %5 = trunc nuw nsw i64 %indvars.iv32 to i32
  %6 = add i32 %spec.store.select, %5
  %7 = sext i32 %6 to i64
  %gep = getelementptr inbounds i8, ptr %2, i64 %7
  %i.an = load i8, ptr %gep, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv32
  store i8 %i.an, ptr %i.ao, align 1
  %indvars.iv.next33 = or disjoint i64 %indvars.iv32, 1 ; 2 uses
  %8 = trunc nuw nsw i64 %indvars.iv.next33 to i32
  %9 = add i32 %spec.store.select, %8
  %10 = sext i32 %9 to i64
  %gep.1 = getelementptr inbounds i8, ptr %2, i64 %10
  %i.ap = load i8, ptr %gep.1, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next33
  store i8 %i.ap, ptr %i.aq, align 1
  %indvars.iv.next33.1 = or disjoint i64 %indvars.iv32, 2 ; 2 uses
  %11 = trunc nuw nsw i64 %indvars.iv.next33.1 to i32
  %12 = add i32 %spec.store.select, %11
  %13 = sext i32 %12 to i64
  %gep.2 = getelementptr inbounds i8, ptr %2, i64 %13
  %i.ar = load i8, ptr %gep.2, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next33.1
  store i8 %i.ar, ptr %i.as, align 1
  %indvars.iv.next33.2 = or disjoint i64 %indvars.iv32, 3 ; 2 uses
  %14 = trunc nuw nsw i64 %indvars.iv.next33.2 to i32
  %15 = add i32 %spec.store.select, %14
  %16 = sext i32 %15 to i64
  %gep.3 = getelementptr inbounds i8, ptr %2, i64 %16
  %i.at = load i8, ptr %gep.3, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next33.2
  store i8 %i.at, ptr %i.au, align 1
  %indvars.iv.next33.3 = add nuw nsw i64 %indvars.iv32, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.split26.us.sink.split.loopexit.unr-lcssa, label %.preheader21.us.us, !llvm.loop !33

.preheader21.us:                                  ; preds = %.preheader21.us.prol.loopexit, %.preheader21.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader21.us ], [ %indvars.iv.unr, %.preheader21.us.prol.loopexit ] ; 6 uses
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  %i.aw = add i32 %spec.store.select, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.az, ptr %i.ba, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bc = add i32 %spec.store.select, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %2, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.bf, ptr %i.bg, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.bi = add i32 %spec.store.select, %i.bh
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.bl, ptr %i.bm, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bn = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.bo = add i32 %spec.store.select, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %2, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.br, ptr %i.bs, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count34
  br i1 %exitcond.not.3, label %.split26.us, label %.preheader21.us, !llvm.loop !34

.split26.us.sink.split.loopexit.unr-lcssa:        ; preds = %.preheader21.us.us
  %lcmp.mod49.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod49.not, label %.split26.us.sink.split, label %.preheader21.us.us.epil.preheader

.preheader21.us.us.epil.preheader:                ; preds = %.split26.us.sink.split.loopexit.unr-lcssa, %.split.us.a
  %indvars.iv32.epil.init = phi i64 [ 0, %.split.us.a ], [ %indvars.iv.next33.3, %.split26.us.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter47, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.preheader21.us.us.epil

.preheader21.us.us.epil:                          ; preds = %.preheader21.us.us.epil, %.preheader21.us.us.epil.preheader
  %indvars.iv32.epil = phi i64 [ %indvars.iv.next33.epil, %.preheader21.us.us.epil ], [ %indvars.iv32.epil.init, %.preheader21.us.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader21.us.us.epil ], [ 0, %.preheader21.us.us.epil.preheader ]
  %17 = trunc nuw nsw i64 %indvars.iv32.epil to i32
  %18 = add i32 %spec.store.select, %17
  %19 = sext i32 %18 to i64
  %gep.epil = getelementptr inbounds i8, ptr %2, i64 %19
  %i.bt = load i8, ptr %gep.epil, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv32.epil
  store i8 %i.bt, ptr %i.bu, align 1
  %indvars.iv.next33.epil = add nuw nsw i64 %indvars.iv32.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter47
  br i1 %epil.iter.cmp.not, label %.split26.us.sink.split, label %.preheader21.us.us.epil, !llvm.loop !35

.split26.us.sink.split:                           ; preds = %.split26.us.sink.split.loopexit.unr-lcssa, %.preheader21.us.us.epil, %.preheader21.preheader
  %.sink = phi i64 [ %i.f, %.preheader21.preheader ], [ %wide.trip.count34, %.preheader21.us.us.epil ], [ %wide.trip.count34, %.split26.us.sink.split.loopexit.unr-lcssa ]
  %scevgep = getelementptr i8, ptr %1, i64 %.sink
  %i.bv = add i32 %spec.store.select, -1
  %i.bw = zext i32 %i.bv to i64
  %i.bx = add nuw nsw i64 %i.bw, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.bx, i1 false)
  br label %.split26.us

.split26.us:                                      ; preds = %.preheader21.us.prol.loopexit, %.preheader21.us, %middle.block, %vec.epilog.middle.block, %.split26.us.sink.split
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pslldq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr %3, align 8                ; 3 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16) ; 14 uses
  %.not21 = icmp sgt i32 %i.c, 15
  br i1 %.not21, label %.split26.sink.split, label %.split

.split:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader20.us27.preheader, label %iter.check

iter.check:                                       ; preds = %.split
  %i.e = sext i32 %spec.store.select to i64       ; 3 uses
  %i.f = sub nsw i64 16, %i.e                     ; 6 uses
  %i.g = sub nsw i64 15, %i.e                     ; 2 uses
  %i.h = sub i32 15, %spec.store.select           ; 2 uses
  %i.i = trunc i64 %i.g to i32
  %i.j = sub i32 %i.h, %i.i
  %i.k = icmp sgt i32 %i.j, %i.h
  %i.l = icmp ugt i64 %i.g, 4294967295
  %i.m = or i1 %i.k, %i.l
  br i1 %i.m, label %.preheader20.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.n = sub i32 15, %spec.store.select
  %i.o = sext i32 %i.n to i64
  %i.p = add i64 %i.b, %i.o
  %i.q = sub i64 %i.p, %i.a
  %i.r = add i64 %i.q, -16
  %diff.check = icmp ult i64 %i.r, 31
  br i1 %diff.check, label %.preheader20.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i64 %i.f, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.f, 24
  %n.vec = and i64 %i.f, -32                      ; 4 uses
  %i.t = sub nsw i64 15, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = sub i64 15, %index                       ; 2 uses
  %i.v = trunc nsw i64 %i.u to i32
  %i.w = sub i32 %i.v, %spec.store.select
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -15
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -31
  %wide.load = load <16 x i8>, ptr %i.z, align 1
  %wide.load44 = load <16 x i8>, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.u ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -15
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -31
  store <16 x i8> %wide.load, ptr %i.ac, align 1
  store <16 x i8> %wide.load44, ptr %i.ad, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.split26, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %.preheader20.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.f, -8                     ; 3 uses
  %i.af = sub nsw i64 15, %n.vec45
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %i.ag = sub i64 15, %index46                    ; 2 uses
  %i.ah = trunc nsw i64 %i.ag to i32
  %i.ai = sub i32 %i.ah, %spec.store.select
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -7
  %wide.load47 = load <8 x i8>, ptr %i.al, align 1
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.ag
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -7
  store <8 x i8> %wide.load47, ptr %i.an, align 1
  %index.next48 = add nuw i64 %index46, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next48, %n.vec45
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %i.f, %n.vec45
  br i1 %cmp.n49, label %.split26, label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 15, %iter.check ], [ 15, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  br label %.preheader20

.preheader20.us27.preheader:                      ; preds = %.split
  %narrow = sub nuw nsw i32 16, %spec.store.select
  %i.ap = zext nneg i32 %narrow to i64            ; 2 uses
  %xtraiter = and i64 %i.ap, 3                    ; 3 uses
  %i.aq = add nsw i32 %spec.store.select, -13
  %i.ar = icmp ult i32 %i.aq, 3
  br i1 %i.ar, label %.preheader20.us27.epil.preheader, label %.preheader20.us27.preheader.new

.preheader20.us27.preheader.new:                  ; preds = %.preheader20.us27.preheader
  %unroll_iter = and i64 %i.ap, 28
  br label %.preheader20.us27

.preheader20.us27:                                ; preds = %.preheader20.us27, %.preheader20.us27.preheader.new
  %indvars.iv35 = phi i64 [ 15, %.preheader20.us27.preheader.new ], [ %indvars.iv.next36.3, %.preheader20.us27 ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader20.us27.preheader.new ], [ %niter.next.3, %.preheader20.us27 ]
  %i.as = trunc nuw nsw i64 %indvars.iv35 to i32
  %i.at = sub i32 %i.as, %spec.store.select
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds i8, ptr %1, i64 %indvars.iv35
  store i8 %i.aw, ptr %i.ax, align 1
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, -1 ; 2 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv.next36 to i32
  %i.az = sub i32 %i.ay, %spec.store.select
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next36
  store i8 %i.bc, ptr %i.bd, align 1
  %indvars.iv.next36.1 = add nsw i64 %indvars.iv35, -2 ; 2 uses
  %i.be = trunc nuw nsw i64 %indvars.iv.next36.1 to i32
  %i.bf = sub i32 %i.be, %spec.store.select
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next36.1
  store i8 %i.bi, ptr %i.bj, align 1
  %indvars.iv.next36.2 = add nsw i64 %indvars.iv35, -3 ; 2 uses
  %i.bk = trunc nuw nsw i64 %indvars.iv.next36.2 to i32
  %i.bl = sub i32 %i.bk, %spec.store.select
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next36.2
  store i8 %i.bo, ptr %i.bp, align 1
  %indvars.iv.next36.3 = add nsw i64 %indvars.iv35, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.split26.sink.split.loopexit.unr-lcssa, label %.preheader20.us27, !llvm.loop !38

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader20 ], [ %indvars.iv.ph, %.preheader20.preheader ] ; 4 uses
  %i.bq = trunc nsw i64 %indvars.iv to i32
  %i.br = sub i32 %i.bq, %spec.store.select
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %2, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  store i8 %i.bu, ptr %i.bv, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.e
  br i1 %.not.not, label %.preheader20, label %.split26, !llvm.loop !39

.split26.sink.split.loopexit.unr-lcssa:           ; preds = %.preheader20.us27
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split26.sink.split, label %.preheader20.us27.epil.preheader

.preheader20.us27.epil.preheader:                 ; preds = %.split26.sink.split.loopexit.unr-lcssa, %.preheader20.us27.preheader
  %indvars.iv35.epil.init = phi i64 [ 15, %.preheader20.us27.preheader ], [ %indvars.iv.next36.3, %.split26.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod51)
  br label %.preheader20.us27.epil

.preheader20.us27.epil:                           ; preds = %.preheader20.us27.epil, %.preheader20.us27.epil.preheader
  %indvars.iv35.epil = phi i64 [ %indvars.iv35.epil.init, %.preheader20.us27.epil.preheader ], [ %indvars.iv.next36.epil, %.preheader20.us27.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader20.us27.epil.preheader ], [ %epil.iter.next, %.preheader20.us27.epil ]
  %i.bw = trunc nuw nsw i64 %indvars.iv35.epil to i32
  %i.bx = sub i32 %i.bw, %spec.store.select
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %2, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds i8, ptr %1, i64 %indvars.iv35.epil
  store i8 %i.ca, ptr %i.cb, align 1
  %indvars.iv.next36.epil = add nsw i64 %indvars.iv35.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
end_hunk_0
begin_hunk_1_@helper_psrld_ymm:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = lshr i32 %i.aa, %i.c
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = lshr i32 %i.ae, %i.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.af, ptr %i.ag, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit16, %.preheader.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pslld_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 2 uses
  %i.b = icmp ugt i64 %i.a, 31
  br i1 %i.b, label %.preheader.preheader, label %.loopexit.loopexit16

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  br label %.loopexit

.loopexit.loopexit16:                             ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %i.a to i32            ; 8 uses
  %i.d = load i32, ptr %2, align 4
  %i.e = shl i32 %i.d, %i.c
  store i32 %i.e, ptr %1, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = shl i32 %i.g, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.h, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = shl i32 %i.k, %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = shl i32 %i.o, %i.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.p, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i32, ptr %i.r, align 4
  %i.t = shl i32 %i.s, %i.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.t, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.w = load i32, ptr %i.v, align 4
  %i.x = shl i32 %i.w, %i.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = shl i32 %i.aa, %i.c
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = shl i32 %i.ae, %i.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.af, ptr %i.ag, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit16, %.preheader.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psrad_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8
  %spec.select11 = tail call i64 @llvm.umin.i64(i64 %i.a, i64 31)
  %spec.select = trunc nuw nsw i64 %spec.select11 to i32 ; 8 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = ashr i32 %i.b, %spec.select
  store i32 %i.c, ptr %1, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = ashr i32 %i.e, %spec.select
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 4
  %i.j = ashr i32 %i.i, %spec.select
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = ashr i32 %i.m, %spec.select
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.n, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i32, ptr %i.p, align 4
  %i.r = ashr i32 %i.q, %spec.select
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.r, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %i.v = ashr i32 %i.u, %spec.select
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.v, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load i32, ptr %i.x, align 4
  %i.z = ashr i32 %i.y, %spec.select
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = ashr i32 %i.ac, %spec.select
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.ad, ptr %i.ae, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psrlq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 5 uses
  %i.b = icmp ugt i64 %i.a, 63
  br i1 %i.b, label %.preheader.preheader, label %.loopexit.loopexit16

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  br label %.loopexit

.loopexit.loopexit16:                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = lshr i64 %i.c, %i.a
  store i64 %i.d, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = lshr i64 %i.f, %i.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, %i.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = lshr i64 %i.n, %i.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.o, ptr %i.p, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit16, %.preheader.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psllq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 5 uses
  %i.b = icmp ugt i64 %i.a, 63
  br i1 %i.b, label %.preheader.preheader, label %.loopexit.loopexit16

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  br label %.loopexit

.loopexit.loopexit16:                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = shl i64 %i.c, %i.a
  store i64 %i.d, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = shl i64 %i.f, %i.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = shl i64 %i.j, %i.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = shl i64 %i.n, %i.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.o, ptr %i.p, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit16, %.preheader.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_psrldq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = load i32, ptr %3, align 8                ; 3 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16) ; 30 uses
  %i.d = sub i32 16, %spec.store.select           ; 8 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.split.us, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.f = sext i32 %i.d to i64                     ; 7 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.f
  %i.g = add i32 %spec.store.select, -1
  %i.h = zext i32 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.i, i1 false)
  %i.j = sub i32 17, %spec.store.select
  %i.k = zext i32 %i.j to i64
  %i.l = sub nsw i64 17, %i.k                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.l, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.m = sub i32 17, %spec.store.select
  %i.n = zext i32 %i.m to i64
  %i.o = sub nsw i64 16, %i.n                     ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = add i32 %spec.store.select, -18
  %i.r = icmp ult i32 %i.q, %i.p
  %i.s = sub i32 32, %spec.store.select           ; 2 uses
  %i.t = add i32 %i.s, %i.p
  %i.u = icmp slt i32 %i.t, %i.s
  %i.v = icmp ugt i64 %i.o, 4294967295
  %i.w = or i1 %i.u, %i.v
  %i.x = or i1 %i.r, %i.w
  br i1 %i.x, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check65 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check65, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %i.l, 24
  %n.vec = and i64 %i.l, -32                      ; 4 uses
  %i.z = add nsw i64 %n.vec, %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = add i64 %index, %i.f
  %i.ab = shl i64 %i.aa, 32
  %i.ac = add i64 %i.ab, 68719476736
  %i.ad = ashr exact i64 %i.ac, 32
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <16 x i8> zeroinitializer, ptr %i.ae, align 1
  store <16 x i8> zeroinitializer, ptr %i.af, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.split27.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec66 = and i64 %i.l, -8                     ; 3 uses
  %i.ah = add nsw i64 %n.vec66, %i.f
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index67 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 2 uses
  %i.ai = add i64 %index67, %i.f
  %i.aj = shl i64 %i.ai, 32
  %i.ak = add i64 %i.aj, 68719476736
  %i.al = ashr exact i64 %i.ak, 32
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  store <8 x i8> zeroinitializer, ptr %i.am, align 1
  %index.next68 = add nuw i64 %index67, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next68, %n.vec66
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n69 = icmp eq i64 %i.l, %n.vec66
  br i1 %cmp.n69, label %.split27.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.1.ph = phi i64 [ %i.f, %iter.check ], [ %i.f, %vector.scevcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.split.us:                                        ; preds = %bb.a
  %i.ao = icmp samesign ult i32 %i.d, 16
  %4 = zext nneg i32 %i.d to i64                  ; 30 uses
  br i1 %i.ao, label %.preheader21.us.us.preheader, label %iter.check83

iter.check83:                                     ; preds = %.split.us
  %i.ap = add nsw i64 %4, -1                      ; 2 uses
  %i.aq = trunc nsw i64 %i.ap to i32
  %i.ar = add i32 %spec.store.select, %i.aq
  %i.as = icmp slt i32 %i.ar, %spec.store.select
  %i.at = icmp ugt i64 %i.ap, 4294967295
  %i.au = or i1 %i.as, %i.at
  br i1 %i.au, label %vec.epilog.scalar.ph84.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check83
  %i.av = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16)
  %smin = sext i32 %i.av to i64
  %i.aw = add i64 %i.a, %smin
  %i.ax = sub i64 %i.aw, %i.b
  %diff.check = icmp ugt i64 %i.ax, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph84.preheader, label %vector.main.loop.iter.check72

vector.main.loop.iter.check72:                    ; preds = %vector.memcheck
  %min.iters.check73 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check73, label %vec.epilog.ph87, label %vector.ph74

vector.ph74:                                      ; preds = %vector.main.loop.iter.check72
  %i.ay = and i64 %4, 28
  %n.vec75 = and i64 %4, 2147483616               ; 4 uses
  br label %vector.body76

vector.body76:                                    ; preds = %vector.ph74, %vector.body76
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next79, %vector.body76 ] ; 3 uses
  %i.az = trunc nuw i64 %index77 to i32
  %i.ba = add i32 %spec.store.select, %i.az
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %2, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <16 x i8>, ptr %i.bc, align 1
  %wide.load78 = load <16 x i8>, ptr %i.bd, align 1
  %i.be = shl i64 %index77, 32
  %i.bf = ashr exact i64 %i.be, 32
  %i.bg = getelementptr inbounds i8, ptr %1, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <16 x i8> %wide.load, ptr %i.bg, align 1
  store <16 x i8> %wide.load78, ptr %i.bh, align 1
  %index.next79 = add nuw i64 %index77, 32        ; 2 uses
  %i.bi = icmp eq i64 %index.next79, %n.vec75
  br i1 %i.bi, label %middle.block80, label %vector.body76, !llvm.loop !66

middle.block80:                                   ; preds = %vector.body76
  %cmp.n81 = icmp eq i64 %n.vec75, %4
  br i1 %cmp.n81, label %vector.scevcheck95, label %vec.epilog.iter.check85

vec.epilog.iter.check85:                          ; preds = %middle.block80
  %min.epilog.iters.check86 = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check86, label %vec.epilog.scalar.ph84.preheader, label %vec.epilog.ph87, !prof !16

vec.epilog.ph87:                                  ; preds = %vector.main.loop.iter.check72, %vec.epilog.iter.check85
  %vec.epilog.resume.val82 = phi i64 [ %n.vec75, %vec.epilog.iter.check85 ], [ 0, %vector.main.loop.iter.check72 ]
  %n.vec88 = and i64 %4, 2147483644               ; 3 uses
  br label %vec.epilog.vector.body89

vec.epilog.vector.body89:                         ; preds = %vec.epilog.vector.body89, %vec.epilog.ph87
  %index90 = phi i64 [ %vec.epilog.resume.val82, %vec.epilog.ph87 ], [ %index.next92, %vec.epilog.vector.body89 ] ; 3 uses
  %i.bj = trunc nuw i64 %index90 to i32
  %i.bk = add i32 %spec.store.select, %i.bj
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %2, i64 %i.bl
  %wide.load91 = load <4 x i8>, ptr %i.bm, align 1
  %i.bn = shl i64 %index90, 32
  %i.bo = ashr exact i64 %i.bn, 32
  %i.bp = getelementptr inbounds i8, ptr %1, i64 %i.bo
  store <4 x i8> %wide.load91, ptr %i.bp, align 1
  %index.next92 = add nuw i64 %index90, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next92, %n.vec88
  br i1 %i.bq, label %vec.epilog.middle.block93, label %vec.epilog.vector.body89, !llvm.loop !67

vec.epilog.middle.block93:                        ; preds = %vec.epilog.vector.body89
  %cmp.n94 = icmp eq i64 %n.vec88, %4
  br i1 %cmp.n94, label %vector.scevcheck95, label %vec.epilog.scalar.ph84.preheader

vec.epilog.scalar.ph84.preheader:                 ; preds = %iter.check83, %vector.memcheck, %vec.epilog.iter.check85, %vec.epilog.middle.block93
  %indvars.iv.ph = phi i64 [ 0, %iter.check83 ], [ 0, %vector.memcheck ], [ %n.vec75, %vec.epilog.iter.check85 ], [ %n.vec88, %vec.epilog.middle.block93 ] ; 5 uses
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph84.prol.loopexit, label %vec.epilog.scalar.ph84.prol

vec.epilog.scalar.ph84.prol:                      ; preds = %vec.epilog.scalar.ph84.preheader
  %i.br = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.bs = add i32 %spec.store.select, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %2, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.ph
  store i8 %i.bv, ptr %i.bw, align 1
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph84.prol.loopexit

vec.epilog.scalar.ph84.prol.loopexit:             ; preds = %vec.epilog.scalar.ph84.prol, %vec.epilog.scalar.ph84.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph84.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph84.prol ]
  %i.bx = add nsw i64 %4, -1
  %i.by = icmp eq i64 %indvars.iv.ph, %i.bx
  br i1 %i.by, label %vector.scevcheck95, label %vec.epilog.scalar.ph84

.preheader21.us.us.preheader:                     ; preds = %.split.us
  %5 = add nsw i64 %4, -1                         ; 2 uses
  %xtraiter156 = and i64 %4, 1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %bb.c, label %.preheader21.us.us.preheader.new

.preheader21.us.us.preheader.new:                 ; preds = %.preheader21.us.us.preheader
  %unroll_iter = and i64 %4, 14
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader21.us.us.preheader.new
  %indvars.iv40 = phi i64 [ 0, %.preheader21.us.us.preheader.new ], [ %indvars.iv.next41.3, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader21.us.us.preheader.new ], [ %niter.next.3, %bb.b ]
  %7 = trunc nuw i64 %indvars.iv40 to i32
  %8 = add i32 %spec.store.select, %7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %2, i64 %9
  %11 = load i8, ptr %10, align 1
  %sext56 = shl i64 %indvars.iv40, 32
  %12 = ashr exact i64 %sext56, 32
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %12
  store i8 %11, ptr %i.bz, align 1
  %indvars.iv.next41.1160 = or disjoint i64 %indvars.iv40, 1 ; 2 uses
  %13 = trunc nuw i64 %indvars.iv.next41.1160 to i32
  %14 = add i32 %spec.store.select, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %2, i64 %15
  %17 = load i8, ptr %16, align 1
  %sext56.1 = shl i64 %indvars.iv.next41.1160, 32
  %18 = ashr exact i64 %sext56.1, 32
  %i.ca = getelementptr inbounds i8, ptr %1, i64 %18
  store i8 %17, ptr %i.ca, align 1
  %indvars.iv.next41.3 = add nuw nsw i64 %indvars.iv40, 2 ; 2 uses
  %niter.next.3 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %bb.b, !llvm.loop !68

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %bb.b
  %lcmp.mod157.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod157.not, label %..preheader_crit_edge.us.us.preheader, label %bb.c

bb.c:                                             ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.preheader21.us.us.preheader
  %indvars.iv40.epil = phi i64 [ 0, %.preheader21.us.us.preheader ], [ %indvars.iv.next41.3, %..preheader_crit_edge.us.us.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod155 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod155)
  %19 = trunc nuw i64 %indvars.iv40.epil to i32
  %20 = add i32 %spec.store.select, %19
  %21 = sext i32 %20 to i64
  %i.cb = getelementptr inbounds i8, ptr %2, i64 %21
  %22 = load i8, ptr %i.cb, align 1
  %sext56.epil = shl i64 %indvars.iv40.epil, 32
  %23 = ashr exact i64 %sext56.epil, 32
  %24 = getelementptr inbounds i8, ptr %1, i64 %23
  store i8 %22, ptr %24, align 1
  br label %..preheader_crit_edge.us.us.preheader

..preheader_crit_edge.us.us.preheader:            ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %bb.c
  %scevgep55 = getelementptr i8, ptr %1, i64 %4
  %i.cc = add i32 %spec.store.select, -1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add nuw nsw i64 %i.cd, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep55, i8 0, i64 %i.ce, i1 false)
  %xtraiter162 = and i64 %4, 1
  %25 = icmp eq i64 %5, 0
  br i1 %25, label %bb.e, label %..preheader_crit_edge.us.us.preheader.new

..preheader_crit_edge.us.us.preheader.new:        ; preds = %..preheader_crit_edge.us.us.preheader
  %unroll_iter166 = and i64 %4, 14
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %..preheader_crit_edge.us.us.preheader.new
  %indvars.iv40.1 = phi i64 [ 0, %..preheader_crit_edge.us.us.preheader.new ], [ %indvars.iv.next41.1.3, %bb.d ] ; 3 uses
  %niter167 = phi i64 [ 0, %..preheader_crit_edge.us.us.preheader.new ], [ %niter167.next.3, %bb.d ]
  %26 = trunc i64 %indvars.iv40.1 to i32
  %27 = add i32 %26, 16                           ; 2 uses
  %28 = add i32 %27, %spec.store.select
  %29 = sext i32 %28 to i64
  %gep62.1 = getelementptr inbounds i8, ptr %2, i64 %29
  %i.cf = load i8, ptr %gep62.1, align 1
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds i8, ptr %1, i64 %30
  store i8 %i.cf, ptr %31, align 1
  %32 = trunc i64 %indvars.iv40.1 to i32
  %33 = add i32 %32, 17                           ; 2 uses
  %34 = add i32 %33, %spec.store.select
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1
  %38 = sext i32 %33 to i64
  %i.cg = getelementptr inbounds i8, ptr %1, i64 %38
  store i8 %37, ptr %i.cg, align 1
  %indvars.iv.next41.1.3 = add nuw nsw i64 %indvars.iv40.1, 2 ; 2 uses
  %niter167.next.3 = add i64 %niter167, 2         ; 2 uses
  %niter167.ncmp.3 = icmp eq i64 %niter167.next.3, %unroll_iter166
  br i1 %niter167.ncmp.3, label %iter.check138.unr-lcssa, label %bb.d, !llvm.loop !68

iter.check138.unr-lcssa:                          ; preds = %bb.d
  %lcmp.mod164.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod164.not, label %iter.check138, label %bb.e

bb.e:                                             ; preds = %iter.check138.unr-lcssa, %..preheader_crit_edge.us.us.preheader
  %indvars.iv40.1.epil = phi i64 [ 0, %..preheader_crit_edge.us.us.preheader ], [ %indvars.iv.next41.1.3, %iter.check138.unr-lcssa ]
  %lcmp.mod161 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %39 = trunc i64 %indvars.iv40.1.epil to i32
  %40 = add i32 %39, 16                           ; 2 uses
  %41 = add i32 %40, %spec.store.select
  %42 = sext i32 %41 to i64
  %i.ch = getelementptr inbounds i8, ptr %2, i64 %42
  %43 = load i8, ptr %i.ch, align 1
  %44 = sext i32 %40 to i64
  %45 = getelementptr inbounds i8, ptr %1, i64 %44
  store i8 %43, ptr %45, align 1
  br label %iter.check138

iter.check138:                                    ; preds = %iter.check138.unr-lcssa, %bb.e
  %i.ci = sub i32 17, %spec.store.select
  %i.cj = zext i32 %i.ci to i64
  %i.ck = sub nsw i64 17, %i.cj                   ; 7 uses
  %min.iters.check126 = icmp ult i64 %i.ck, 8
  br i1 %min.iters.check126, label %..preheader_crit_edge.us.us.1.preheader, label %vector.scevcheck125

vector.scevcheck125:                              ; preds = %iter.check138
  %i.cl = sub i32 17, %spec.store.select
  %i.cm = zext i32 %i.cl to i64
  %i.cn = sub nsw i64 16, %i.cm                   ; 2 uses
  %i.co = trunc i64 %i.cn to i32                  ; 2 uses
  %i.cp = add i32 %spec.store.select, -18
  %i.cq = icmp ult i32 %i.cp, %i.co
  %i.cr = sub i32 32, %spec.store.select          ; 2 uses
  %i.cs = add i32 %i.cr, %i.co
  %i.ct = icmp slt i32 %i.cs, %i.cr
  %i.cu = icmp ugt i64 %i.cn, 4294967295
  %i.cv = or i1 %i.ct, %i.cu
  %i.cw = or i1 %i.cq, %i.cv
  br i1 %i.cw, label %..preheader_crit_edge.us.us.1.preheader, label %vector.main.loop.iter.check127

vector.main.loop.iter.check127:                   ; preds = %vector.scevcheck125
  %min.iters.check128 = icmp ult i64 %i.ck, 32
  br i1 %min.iters.check128, label %vec.epilog.ph142, label %vector.ph129

vector.ph129:                                     ; preds = %vector.main.loop.iter.check127
  %i.cx = and i64 %i.ck, 24
  %n.vec130 = and i64 %i.ck, -32                  ; 4 uses
  %i.cy = or disjoint i64 %n.vec130, %4
  br label %vector.body131

vector.body131:                                   ; preds = %vector.ph129, %vector.body131
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next133, %vector.body131 ] ; 2 uses
  %i.cz = or disjoint i64 %index132, %4
  %i.da = shl i64 %i.cz, 32
  %i.db = ashr exact i64 %i.da, 32
  %i.dc = getelementptr i8, ptr %1, i64 %i.db     ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 16
  %i.de = getelementptr i8, ptr %i.dc, i64 32
  store <16 x i8> zeroinitializer, ptr %i.dd, align 1
  store <16 x i8> zeroinitializer, ptr %i.de, align 1
  %index.next133 = add nuw i64 %index132, 32      ; 2 uses
  %i.df = icmp eq i64 %index.next133, %n.vec130
  br i1 %i.df, label %middle.block134, label %vector.body131, !llvm.loop !69

middle.block134:                                  ; preds = %vector.body131
  %cmp.n135 = icmp eq i64 %i.ck, %n.vec130
  br i1 %cmp.n135, label %.split27.us, label %vec.epilog.iter.check140

vec.epilog.iter.check140:                         ; preds = %middle.block134
  %min.epilog.iters.check141 = icmp eq i64 %i.cx, 0
  br i1 %min.epilog.iters.check141, label %..preheader_crit_edge.us.us.1.preheader, label %vec.epilog.ph142, !prof !18

vec.epilog.ph142:                                 ; preds = %vector.main.loop.iter.check127, %vec.epilog.iter.check140
  %vec.epilog.resume.val136 = phi i64 [ %n.vec130, %vec.epilog.iter.check140 ], [ 0, %vector.main.loop.iter.check127 ]
  %n.vec143 = and i64 %i.ck, -8                   ; 3 uses
  %i.dg = add nsw i64 %n.vec143, %4
  br label %vec.epilog.vector.body144

vec.epilog.vector.body144:                        ; preds = %vec.epilog.vector.body144, %vec.epilog.ph142
  %index145 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph142 ], [ %index.next146, %vec.epilog.vector.body144 ] ; 2 uses
  %i.dh = add nuw i64 %index145, %4
  %i.di = shl i64 %i.dh, 32
  %i.dj = add i64 %i.di, 68719476736
  %i.dk = ashr exact i64 %i.dj, 32
  %i.dl = getelementptr inbounds i8, ptr %1, i64 %i.dk
  store <8 x i8> zeroinitializer, ptr %i.dl, align 1
  %index.next146 = add nuw i64 %index145, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next146, %n.vec143
  br i1 %i.dm, label %vec.epilog.middle.block147, label %vec.epilog.vector.body144, !llvm.loop !70

vec.epilog.middle.block147:                       ; preds = %vec.epilog.vector.body144
  %cmp.n148 = icmp eq i64 %i.ck, %n.vec143
  br i1 %cmp.n148, label %.split27.us, label %..preheader_crit_edge.us.us.1.preheader

..preheader_crit_edge.us.us.1.preheader:          ; preds = %iter.check138, %vector.scevcheck125, %vec.epilog.iter.check140, %vec.epilog.middle.block147
  %indvars.iv45.1.ph = phi i64 [ %4, %iter.check138 ], [ %4, %vector.scevcheck125 ], [ %i.cy, %vec.epilog.iter.check140 ], [ %i.dg, %vec.epilog.middle.block147 ]
  br label %..preheader_crit_edge.us.us.1

..preheader_crit_edge.us.us.1:                    ; preds = %..preheader_crit_edge.us.us.1.preheader, %..preheader_crit_edge.us.us.1
  %indvars.iv45.1 = phi i64 [ %indvars.iv.next46.1, %..preheader_crit_edge.us.us.1 ], [ %indvars.iv45.1.ph, %..preheader_crit_edge.us.us.1.preheader ] ; 2 uses
  %i.dn = shl i64 %indvars.iv45.1, 32
  %sext58 = add i64 %i.dn, 68719476736
  %i.do = ashr exact i64 %sext58, 32
  %i.dp = getelementptr inbounds i8, ptr %1, i64 %i.do
  store i8 0, ptr %i.dp, align 1
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45.1, 1 ; 2 uses
  %i.dq = and i64 %indvars.iv.next46.1, 4294967295
  %exitcond48.1.not = icmp eq i64 %i.dq, 16
  br i1 %exitcond48.1.not, label %.split27.us, label %..preheader_crit_edge.us.us.1, !llvm.loop !71

vec.epilog.scalar.ph84:                           ; preds = %vec.epilog.scalar.ph84.prol.loopexit, %vec.epilog.scalar.ph84
  %indvars.iv = phi i64 [ %indvars.iv.next.1153, %vec.epilog.scalar.ph84 ], [ %indvars.iv.unr, %vec.epilog.scalar.ph84.prol.loopexit ] ; 4 uses
  %i.dr = trunc nuw i64 %indvars.iv to i32
  %i.ds = add i32 %spec.store.select, %i.dr
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %2, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1
  %sext57 = shl i64 %indvars.iv, 32
  %i.dw = ashr exact i64 %sext57, 32
  %i.dx = getelementptr inbounds i8, ptr %1, i64 %i.dw
  store i8 %i.dv, ptr %i.dx, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dy = trunc nuw i64 %indvars.iv.next to i32
  %i.dz = add i32 %spec.store.select, %i.dy
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds i8, ptr %2, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1
  %sext57.1 = shl i64 %indvars.iv.next, 32
  %i.ed = ashr exact i64 %sext57.1, 32
  %i.ee = getelementptr inbounds i8, ptr %1, i64 %i.ed
  store i8 %i.ec, ptr %i.ee, align 1
  %indvars.iv.next.1153 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1153, %4
  br i1 %exitcond.not.1, label %vector.scevcheck95, label %vec.epilog.scalar.ph84, !llvm.loop !72

vector.scevcheck95:                               ; preds = %vec.epilog.scalar.ph84.prol.loopexit, %vec.epilog.scalar.ph84, %middle.block80, %vec.epilog.middle.block93
  %i.ef = add nsw i64 %4, -1                      ; 2 uses
  %i.eg = trunc nsw i64 %i.ef to i32
  %i.eh = icmp ugt i64 %i.ef, 2147483631
  %i.ei = add nsw i32 %spec.store.select, 16      ; 2 uses
  %i.ej = add i32 %i.ei, %i.eg
  %i.ek = icmp slt i32 %i.ej, %i.ei
  %i.el = or i1 %i.ek, %i.eh
  br i1 %i.el, label %..preheader_crit_edge.us.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %vector.scevcheck95
  %i.em = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16)
  %smin97 = sext i32 %i.em to i64
  %i.en = add i64 %i.a, %smin97
  %i.eo = sub i64 %i.en, %i.b
  %diff.check98 = icmp ugt i64 %i.eo, -32
  br i1 %diff.check98, label %..preheader_crit_edge.us.preheader, label %vector.main.loop.iter.check100

vector.main.loop.iter.check100:                   ; preds = %vector.memcheck96
  %min.iters.check101 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check101, label %vec.epilog.ph116, label %vector.ph102

vector.ph102:                                     ; preds = %vector.main.loop.iter.check100
  %i.ep = and i64 %4, 28
  %n.vec103 = and i64 %4, 2147483616              ; 4 uses
  br label %vector.body104

vector.body104:                                   ; preds = %vector.ph102, %vector.body104
  %index105 = phi i64 [ 0, %vector.ph102 ], [ %index.next108, %vector.body104 ] ; 2 uses
  %i.eq = trunc i64 %index105 to i32
  %i.er = or disjoint i32 %i.eq, 16               ; 2 uses
  %i.es = add i32 %i.er, %spec.store.select
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds i8, ptr %2, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load106 = load <16 x i8>, ptr %i.eu, align 1
  %wide.load107 = load <16 x i8>, ptr %i.ev, align 1
  %i.ew = sext i32 %i.er to i64
  %i.ex = getelementptr inbounds i8, ptr %1, i64 %i.ew ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <16 x i8> %wide.load106, ptr %i.ex, align 1
  store <16 x i8> %wide.load107, ptr %i.ey, align 1
  %index.next108 = add nuw i64 %index105, 32      ; 2 uses
  %i.ez = icmp eq i64 %index.next108, %n.vec103
  br i1 %i.ez, label %middle.block109, label %vector.body104, !llvm.loop !73

middle.block109:                                  ; preds = %vector.body104
  %cmp.n110 = icmp eq i64 %n.vec103, %4
  br i1 %cmp.n110, label %.split27.us, label %vec.epilog.iter.check114

vec.epilog.iter.check114:                         ; preds = %middle.block109
  %min.epilog.iters.check115 = icmp eq i64 %i.ep, 0
  br i1 %min.epilog.iters.check115, label %..preheader_crit_edge.us.preheader, label %vec.epilog.ph116, !prof !16

vec.epilog.ph116:                                 ; preds = %vector.main.loop.iter.check100, %vec.epilog.iter.check114
  %vec.epilog.resume.val111 = phi i64 [ %n.vec103, %vec.epilog.iter.check114 ], [ 0, %vector.main.loop.iter.check100 ]
  %n.vec117 = and i64 %4, 2147483644              ; 3 uses
  br label %vec.epilog.vector.body118

vec.epilog.vector.body118:                        ; preds = %vec.epilog.vector.body118, %vec.epilog.ph116
  %index119 = phi i64 [ %vec.epilog.resume.val111, %vec.epilog.ph116 ], [ %index.next121, %vec.epilog.vector.body118 ] ; 2 uses
  %i.fa = trunc i64 %index119 to i32
  %i.fb = add i32 %i.fa, 16                       ; 2 uses
  %i.fc = add i32 %i.fb, %spec.store.select
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %2, i64 %i.fd
  %wide.load120 = load <4 x i8>, ptr %i.fe, align 1
  %i.ff = sext i32 %i.fb to i64
  %i.fg = getelementptr inbounds i8, ptr %1, i64 %i.ff
  store <4 x i8> %wide.load120, ptr %i.fg, align 1
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next121, %n.vec117
  br i1 %i.fh, label %vec.epilog.middle.block122, label %vec.epilog.vector.body118, !llvm.loop !74

vec.epilog.middle.block122:                       ; preds = %vec.epilog.vector.body118
  %cmp.n123 = icmp eq i64 %n.vec117, %4
  br i1 %cmp.n123, label %.split27.us, label %..preheader_crit_edge.us.preheader

..preheader_crit_edge.us.preheader:               ; preds = %vector.scevcheck95, %vector.memcheck96, %vec.epilog.iter.check114, %vec.epilog.middle.block122
  %indvars.iv.135.ph = phi i64 [ 0, %vector.scevcheck95 ], [ 0, %vector.memcheck96 ], [ %n.vec103, %vec.epilog.iter.check114 ], [ %n.vec117, %vec.epilog.middle.block122 ] ; 4 uses
  %xtraiter154 = and i64 %4, 1
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %..preheader_crit_edge.us.prol.loopexit, label %..preheader_crit_edge.us.prol

..preheader_crit_edge.us.prol:                    ; preds = %..preheader_crit_edge.us.preheader
  %i.fi = trunc nuw nsw i64 %indvars.iv.135.ph to i32
  %i.fj = add nuw i32 %i.fi, 16                   ; 2 uses
  %i.fk = add i32 %i.fj, %spec.store.select
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %2, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = sext i32 %i.fj to i64
  %i.fp = getelementptr inbounds i8, ptr %1, i64 %i.fo
  store i8 %i.fn, ptr %i.fp, align 1
  %indvars.iv.next.136.prol = or disjoint i64 %indvars.iv.135.ph, 1
  br label %..preheader_crit_edge.us.prol.loopexit

..preheader_crit_edge.us.prol.loopexit:           ; preds = %..preheader_crit_edge.us.prol, %..preheader_crit_edge.us.preheader
  %indvars.iv.135.unr = phi i64 [ %indvars.iv.135.ph, %..preheader_crit_edge.us.preheader ], [ %indvars.iv.next.136.prol, %..preheader_crit_edge.us.prol ]
  %i.fq = add nsw i64 %4, -1
  %i.fr = icmp eq i64 %indvars.iv.135.ph, %i.fq
  br i1 %i.fr, label %.split27.us, label %..preheader_crit_edge.us

..preheader_crit_edge.us:                         ; preds = %..preheader_crit_edge.us.prol.loopexit, %..preheader_crit_edge.us
  %indvars.iv.135 = phi i64 [ %indvars.iv.next.136.1, %..preheader_crit_edge.us ], [ %indvars.iv.135.unr, %..preheader_crit_edge.us.prol.loopexit ] ; 3 uses
  %i.fs = trunc i64 %indvars.iv.135 to i32
  %i.ft = add i32 %i.fs, 16                       ; 2 uses
  %i.fu = add i32 %i.ft, %spec.store.select
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds i8, ptr %2, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = sext i32 %i.ft to i64
  %i.fz = getelementptr inbounds i8, ptr %1, i64 %i.fy
  store i8 %i.fx, ptr %i.fz, align 1
  %i.ga = trunc i64 %indvars.iv.135 to i32
  %i.gb = add i32 %i.ga, 17                       ; 2 uses
  %i.gc = add i32 %i.gb, %spec.store.select
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds i8, ptr %2, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = sext i32 %i.gb to i64
  %i.gh = getelementptr inbounds i8, ptr %1, i64 %i.gg
  store i8 %i.gf, ptr %i.gh, align 1
  %indvars.iv.next.136.1 = add nuw nsw i64 %indvars.iv.135, 2 ; 2 uses
  %exitcond.137.not.1 = icmp eq i64 %indvars.iv.next.136.1, %4
  br i1 %exitcond.137.not.1, label %.split27.us, label %..preheader_crit_edge.us, !llvm.loop !75

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.1.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.gi = shl i64 %indvars.iv.1, 32
  %sext = add i64 %i.gi, 68719476736
  %i.gj = ashr exact i64 %sext, 32
  %i.gk = getelementptr inbounds i8, ptr %1, i64 %i.gj
  store i8 0, ptr %i.gk, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.gl = and i64 %indvars.iv.next.1, 4294967295
  %exitcond.1.not = icmp eq i64 %i.gl, 16
  br i1 %exitcond.1.not, label %.split27.us, label %vec.epilog.scalar.ph, !llvm.loop !76

.split27.us:                                      ; preds = %vec.epilog.scalar.ph, %..preheader_crit_edge.us.prol.loopexit, %..preheader_crit_edge.us, %..preheader_crit_edge.us.us.1, %middle.block, %vec.epilog.middle.block, %middle.block109, %vec.epilog.middle.block122, %middle.block134, %vec.epilog.middle.block147
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pslldq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load i32, ptr %3, align 8                ; 4 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16) ; 23 uses
  %.not21 = icmp sgt i32 %i.c, 15
  br i1 %.not21, label %.preheader20.us.preheader, label %.split

.preheader20.us.preheader:                        ; preds = %bb.a
  %i.d = add nsw i32 %spec.store.select, -1
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = add nuw nsw i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, i8 0, i64 %i.g, i1 false)
  br label %.split27.us.split

.split:                                           ; preds = %bb.a
  %i.h = icmp sgt i32 %i.c, 0
  br i1 %i.h, label %.preheader20.us28.preheader, label %iter.check

iter.check:                                       ; preds = %.split
  %i.i = sext i32 %spec.store.select to i64       ; 5 uses
  %i.j = sub nsw i64 16, %i.i                     ; 13 uses
  %i.k = sub nsw i64 15, %i.i                     ; 2 uses
  %i.l = sub i32 15, %spec.store.select           ; 2 uses
  %i.m = trunc i64 %i.k to i32
  %i.n = sub i32 %i.l, %i.m
  %i.o = icmp sgt i32 %i.n, %i.l
  %i.p = icmp ugt i64 %i.k, 4294967295
  %i.q = or i1 %i.o, %i.p
  br i1 %i.q, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.r = sub i32 15, %spec.store.select
  %i.s = sext i32 %i.r to i64
  %i.t = add i64 %i.b, %i.s
  %i.u = sub i64 %i.t, %i.a
  %i.v = add i64 %i.u, -16
  %diff.check = icmp ult i64 %i.v, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i64 %i.j, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.j, 24
  %n.vec = and i64 %i.j, -32                      ; 4 uses
  %i.x = sub nsw i64 15, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = sub i64 15, %index                       ; 2 uses
  %i.z = trunc nsw i64 %i.y to i32
  %i.aa = sub i32 %i.z, %spec.store.select
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -15
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ad, align 1
  %wide.load53 = load <16 x i8>, ptr %i.ae, align 1
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -15
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -31
  store <16 x i8> %wide.load, ptr %i.ag, align 1
  store <16 x i8> %wide.load53, ptr %i.ah, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %iter.check76, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.j, -8                     ; 3 uses
  %i.aj = sub nsw i64 15, %n.vec54
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = sub i64 15, %index55                    ; 2 uses
  %i.al = trunc nsw i64 %i.ak to i32
  %i.am = sub i32 %i.al, %spec.store.select
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -7
  %wide.load56 = load <8 x i8>, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -7
  store <8 x i8> %wide.load56, ptr %i.ar, align 1
  %index.next57 = add nuw i64 %index55, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next57, %n.vec54
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.j, %n.vec54
  br i1 %cmp.n58, label %iter.check76, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 15, %iter.check ], [ 15, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader20.us28.preheader:                      ; preds = %.split
  %i.at = zext nneg i32 %spec.store.select to i64 ; 2 uses
  %i.au = zext nneg i32 %spec.store.select to i64 ; 2 uses
  %i.av = sub nsw i64 16, %i.at                   ; 2 uses
  %xtraiter = and i64 %i.av, 3                    ; 3 uses
  %i.aw = add nsw i32 %spec.store.select, -13
  %i.ax = icmp ult i32 %i.aw, 3
  br i1 %i.ax, label %.epil.preheader, label %.preheader20.us28.preheader.new

.preheader20.us28.preheader.new:                  ; preds = %.preheader20.us28.preheader
  %unroll_iter = and i64 %i.av, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader20.us28.preheader.new
  %indvars.iv39 = phi i64 [ 15, %.preheader20.us28.preheader.new ], [ %indvars.iv.next40.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader20.us28.preheader.new ], [ %niter.next.3, %bb.b ]
  %i.ay = trunc nuw nsw i64 %indvars.iv39 to i32
  %i.az = sub i32 %i.ay, %spec.store.select
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds i8, ptr %1, i64 %indvars.iv39
  store i8 %i.bc, ptr %i.bd, align 1
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, -1 ; 2 uses
  %i.be = trunc nuw nsw i64 %indvars.iv.next40 to i32
  %i.bf = sub i32 %i.be, %spec.store.select
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40
  store i8 %i.bi, ptr %i.bj, align 1
  %indvars.iv.next40.191 = add nsw i64 %indvars.iv39, -2 ; 2 uses
  %i.bk = trunc nuw nsw i64 %indvars.iv.next40.191 to i32
  %i.bl = sub i32 %i.bk, %spec.store.select
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40.191
  store i8 %i.bo, ptr %i.bp, align 1
  %indvars.iv.next40.2 = add nsw i64 %indvars.iv39, -3 ; 2 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv.next40.2 to i32
  %i.br = sub i32 %i.bq, %spec.store.select
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %2, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40.2
  store i8 %i.bu, ptr %i.bv, align 1
  %indvars.iv.next40.3 = add nsw i64 %indvars.iv39, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %..preheader_crit_edge.us.preheader.unr-lcssa, label %bb.b, !llvm.loop !79

..preheader_crit_edge.us.preheader.unr-lcssa:     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.preheader.unr-lcssa, %.preheader20.us28.preheader
  %indvars.iv39.epil.init = phi i64 [ 15, %.preheader20.us28.preheader ], [ %indvars.iv.next40.3, %..preheader_crit_edge.us.preheader.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv39.epil = phi i64 [ %indvars.iv.next40.epil, %bb.c ], [ %indvars.iv39.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.bw = trunc nuw nsw i64 %indvars.iv39.epil to i32
  %i.bx = sub i32 %i.bw, %spec.store.select
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %2, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds i8, ptr %1, i64 %indvars.iv39.epil
  store i8 %i.ca, ptr %i.cb, align 1
  %indvars.iv.next40.epil = add nsw i64 %indvars.iv39.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us.preheader, label %bb.c, !llvm.loop !80

..preheader_crit_edge.us.preheader:               ; preds = %bb.c, %..preheader_crit_edge.us.preheader.unr-lcssa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.au, i1 false)
  %umin = tail call i64 @llvm.umin.i64(i64 %i.at, i64 15)
  %i.cc = sub nuw nsw i64 16, %umin               ; 3 uses
  %xtraiter93 = and i64 %i.cc, 1
  %i.cd = icmp eq i32 %i.c, 15
  br i1 %i.cd, label %.epil.preheader92, label %..preheader_crit_edge.us.preheader.new

..preheader_crit_edge.us.preheader.new:           ; preds = %..preheader_crit_edge.us.preheader
  %unroll_iter97 = and i64 %i.cc, 30
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %..preheader_crit_edge.us.preheader.new
  %indvars.iv39.1 = phi i64 [ 15, %..preheader_crit_edge.us.preheader.new ], [ %indvars.iv.next40.1.1, %bb.d ] ; 3 uses
  %niter98 = phi i64 [ 0, %..preheader_crit_edge.us.preheader.new ], [ %niter98.next.1, %bb.d ]
  %i.ce = add nuw nsw i64 %indvars.iv39.1, 16     ; 2 uses
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = sub i32 %i.cf, %spec.store.select
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %2, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = getelementptr inbounds i8, ptr %1, i64 %i.ce
  store i8 %i.cj, ptr %i.ck, align 1
  %i.cl = add nsw i64 %indvars.iv39.1, 15         ; 2 uses
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = sub i32 %i.cm, %spec.store.select
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %2, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = getelementptr inbounds i8, ptr %1, i64 %i.cl
  store i8 %i.cq, ptr %i.cr, align 1
  %indvars.iv.next40.1.1 = add nsw i64 %indvars.iv39.1, -2 ; 2 uses
  %niter98.next.1 = add i64 %niter98, 2           ; 2 uses
  %niter98.ncmp.1.not = icmp eq i64 %niter98.next.1, %unroll_iter97
  br i1 %niter98.ncmp.1.not, label %..preheader_crit_edge.us.preheader.1.unr-lcssa, label %bb.d, !llvm.loop !79

..preheader_crit_edge.us.preheader.1.unr-lcssa:   ; preds = %bb.d
  %lcmp.mod95.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod95.not, label %..preheader_crit_edge.us.preheader.1, label %.epil.preheader92

.epil.preheader92:                                ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %..preheader_crit_edge.us.preheader
  %indvars.iv39.1.epil.init = phi i64 [ 15, %..preheader_crit_edge.us.preheader ], [ %indvars.iv.next40.1.1, %..preheader_crit_edge.us.preheader.1.unr-lcssa ]
  %lcmp.mod96 = trunc i64 %i.cc to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.cs = add nuw nsw i64 %indvars.iv39.1.epil.init, 16 ; 2 uses
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = sub i32 %i.ct, %spec.store.select
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %2, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = getelementptr inbounds i8, ptr %1, i64 %i.cs
  store i8 %i.cx, ptr %i.cy, align 1
  br label %..preheader_crit_edge.us.preheader.1

..preheader_crit_edge.us.preheader.1:             ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %.epil.preheader92
  %scevgep.1 = getelementptr i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.1, i8 0, i64 %i.au, i1 false)
  br label %.split27.us.split

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.preheader, %..preheader_crit_edge
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %..preheader_crit_edge ], [ %indvars.iv.1.ph, %..preheader_crit_edge.preheader ] ; 3 uses
  %i.cz = add nsw i64 %indvars.iv.1, 16           ; 2 uses
  %i.da = trunc nsw i64 %i.cz to i32
  %i.db = sub i32 %i.da, %spec.store.select
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %2, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = getelementptr inbounds i8, ptr %1, i64 %i.cz
  store i8 %i.de, ptr %i.df, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, -1
  %.not.1.not = icmp sgt i64 %indvars.iv.1, %i.i
  br i1 %.not.1.not, label %..preheader_crit_edge, label %.split27.us.split, !llvm.loop !81

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.dg = trunc nsw i64 %indvars.iv to i32
  %i.dh = sub i32 %i.dg, %spec.store.select
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %2, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  store i8 %i.dk, ptr %i.dl, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.i
  br i1 %.not.not, label %vec.epilog.scalar.ph, label %iter.check76, !llvm.loop !82

iter.check76:                                     ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %min.iters.check63 = icmp ult i64 %i.j, 8
  br i1 %min.iters.check63, label %..preheader_crit_edge.preheader, label %vector.scevcheck60

vector.scevcheck60:                               ; preds = %iter.check76
  %i.dm = sub nsw i64 15, %i.i                    ; 2 uses
  %i.dn = sub i32 31, %spec.store.select          ; 2 uses
  %i.do = trunc i64 %i.dm to i32
  %i.dp = sub i32 %i.dn, %i.do
  %i.dq = icmp sgt i32 %i.dp, %i.dn
  %i.dr = icmp ugt i64 %i.dm, 4294967295
  %i.ds = or i1 %i.dq, %i.dr
  br i1 %i.ds, label %..preheader_crit_edge.preheader, label %vector.memcheck61

vector.memcheck61:                                ; preds = %vector.scevcheck60
  %i.dt = sub i32 31, %spec.store.select
  %i.du = sext i32 %i.dt to i64
  %i.dv = add i64 %i.b, %i.du
  %i.dw = sub i64 %i.dv, %i.a
  %i.dx = add i64 %i.dw, -32
  %diff.check62 = icmp ult i64 %i.dx, 31
  br i1 %diff.check62, label %..preheader_crit_edge.preheader, label %vector.main.loop.iter.check64

vector.main.loop.iter.check64:                    ; preds = %vector.memcheck61
  %min.iters.check65 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check65, label %vec.epilog.ph80, label %vector.ph66

vector.ph66:                                      ; preds = %vector.main.loop.iter.check64
  %i.dy = and i64 %i.j, 24
  %n.vec67 = and i64 %i.j, -32                    ; 4 uses
  %i.dz = sub nsw i64 15, %n.vec67
  br label %vector.body68

vector.body68:                                    ; preds = %vector.ph66, %vector.body68
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next72, %vector.body68 ] ; 2 uses
  %i.ea = sub i64 31, %index69                    ; 2 uses
  %i.eb = trunc nsw i64 %i.ea to i32
  %i.ec = sub i32 %i.eb, %spec.store.select
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %2, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -15
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -31
  %wide.load70 = load <16 x i8>, ptr %i.ef, align 1
  %wide.load71 = load <16 x i8>, ptr %i.eg, align 1
  %i.eh = getelementptr inbounds i8, ptr %1, i64 %i.ea ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -15
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 -31
  store <16 x i8> %wide.load70, ptr %i.ei, align 1
  store <16 x i8> %wide.load71, ptr %i.ej, align 1
  %index.next72 = add nuw i64 %index69, 32        ; 2 uses
  %i.ek = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.ek, label %middle.block73, label %vector.body68, !llvm.loop !83

middle.block73:                                   ; preds = %vector.body68
  %cmp.n74 = icmp eq i64 %i.j, %n.vec67
  br i1 %cmp.n74, label %.split27.us.split, label %vec.epilog.iter.check78

vec.epilog.iter.check78:                          ; preds = %middle.block73
  %min.epilog.iters.check79 = icmp eq i64 %i.dy, 0
  br i1 %min.epilog.iters.check79, label %..preheader_crit_edge.preheader, label %vec.epilog.ph80, !prof !18

vec.epilog.ph80:                                  ; preds = %vector.main.loop.iter.check64, %vec.epilog.iter.check78
  %vec.epilog.resume.val75 = phi i64 [ %n.vec67, %vec.epilog.iter.check78 ], [ 0, %vector.main.loop.iter.check64 ]
  %n.vec81 = and i64 %i.j, -8                     ; 3 uses
  %i.el = sub nsw i64 15, %n.vec81
  br label %vec.epilog.vector.body82

vec.epilog.vector.body82:                         ; preds = %vec.epilog.vector.body82, %vec.epilog.ph80
  %index83 = phi i64 [ %vec.epilog.resume.val75, %vec.epilog.ph80 ], [ %index.next85, %vec.epilog.vector.body82 ] ; 2 uses
  %i.em = sub i64 31, %index83                    ; 2 uses
  %i.en = trunc nsw i64 %i.em to i32
  %i.eo = sub i32 %i.en, %spec.store.select
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %2, i64 %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -7
  %wide.load84 = load <8 x i8>, ptr %i.er, align 1
  %i.es = getelementptr inbounds i8, ptr %1, i64 %i.em
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -7
  store <8 x i8> %wide.load84, ptr %i.et, align 1
  %index.next85 = add nuw i64 %index83, 8         ; 2 uses
  %i.eu = icmp eq i64 %index.next85, %n.vec81
  br i1 %i.eu, label %vec.epilog.middle.block86, label %vec.epilog.vector.body82, !llvm.loop !84

vec.epilog.middle.block86:                        ; preds = %vec.epilog.vector.body82
  %cmp.n87 = icmp eq i64 %i.j, %n.vec81
  br i1 %cmp.n87, label %.split27.us.split, label %..preheader_crit_edge.preheader

..preheader_crit_edge.preheader:                  ; preds = %iter.check76, %vector.scevcheck60, %vector.memcheck61, %vec.epilog.iter.check78, %vec.epilog.middle.block86
  %indvars.iv.1.ph = phi i64 [ 15, %iter.check76 ], [ 15, %vector.scevcheck60 ], [ 15, %vector.memcheck61 ], [ %i.dz, %vec.epilog.iter.check78 ], [ %i.el, %vec.epilog.middle.block86 ]
  br label %..preheader_crit_edge

.split27.us.split:                                ; preds = %..preheader_crit_edge, %middle.block73, %vec.epilog.middle.block86, %..preheader_crit_edge.us.preheader.1, %.preheader20.us.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmulhuw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = add i64 %i.c, 32
  %i.e = add i64 %i.b, 32
  %i.f = add i64 %i.a, 32                         ; 2 uses
  %rt.bound0 = icmp ugt i64 %i.d, %i.a
  %rt.bound1 = icmp ugt i64 %i.f, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound010 = icmp ugt i64 %i.e, %i.a
  %rt.bound111 = icmp ugt i64 %i.f, %i.b
  %rt.conflict12 = and i1 %rt.bound010, %rt.bound111
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict12
  br i1 %rt.conflict.all, label %.rtscalar, label %.rtvec, !prof !19

.rtvec:                                           ; preds = %bb.a
  %i.g = load <8 x i16>, ptr %2, align 2
  %i.h = zext <8 x i16> %i.g to <8 x i32>
  %i.i = load <8 x i16>, ptr %3, align 2
  %i.j = zext <8 x i16> %i.i to <8 x i32>
  %i.k = mul nuw <8 x i32> %i.j, %i.h
  %i.l = lshr <8 x i32> %i.k, splat (i32 16)
  %i.m = trunc nuw <8 x i32> %i.l to <8 x i16>
  store <8 x i16> %i.m, ptr %1, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load <8 x i16>, ptr %i.n, align 2
  %i.r = zext <8 x i16> %i.q to <8 x i32>
  %i.s = load <8 x i16>, ptr %i.o, align 2
  %i.t = zext <8 x i16> %i.s to <8 x i32>
  %i.u = mul nuw <8 x i32> %i.t, %i.r
  %i.v = lshr <8 x i32> %i.u, splat (i32 16)
  %i.w = trunc nuw <8 x i32> %i.v to <8 x i16>
  store <8 x i16> %i.w, ptr %i.p, align 2
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.x = load i16, ptr %2, align 2
  %i.y = zext i16 %i.x to i32
  %i.z = load i16, ptr %3, align 2
  %i.aa = zext i16 %i.z to i32
  %i.ab = mul nuw i32 %i.aa, %i.y
  %i.ac = lshr i32 %i.ab, 16
  %i.ad = trunc nuw i32 %i.ac to i16
  store i16 %i.ad, ptr %1, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = zext i16 %i.ai to i32
  %i.ak = mul nuw i32 %i.aj, %i.ag
  %i.al = lshr i32 %i.ak, 16
  %i.am = trunc nuw i32 %i.al to i16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = zext i16 %i.as to i32
  %i.au = mul nuw i32 %i.at, %i.aq
  %i.av = lshr i32 %i.au, 16
  %i.aw = trunc nuw i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.aw, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = zext i16 %i.bc to i32
  %i.be = mul nuw i32 %i.bd, %i.ba
  %i.bf = lshr i32 %i.be, 16
  %i.bg = trunc nuw i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = zext i16 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = zext i16 %i.bm to i32
  %i.bo = mul nuw i32 %i.bn, %i.bk
  %i.bp = lshr i32 %i.bo, 16
  %i.bq = trunc nuw i32 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.bq, ptr %i.br, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = zext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = zext i16 %i.bw to i32
  %i.by = mul nuw i32 %i.bx, %i.bu
  %i.bz = lshr i32 %i.by, 16
  %i.ca = trunc nuw i32 %i.bz to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.ca, ptr %i.cb, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = zext i16 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = zext i16 %i.cg to i32
  %i.ci = mul nuw i32 %i.ch, %i.ce
  %i.cj = lshr i32 %i.ci, 16
  %i.ck = trunc nuw i32 %i.cj to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.ck, ptr %i.cl, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = zext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = zext i16 %i.cq to i32
  %i.cs = mul nuw i32 %i.cr, %i.co
  %i.ct = lshr i32 %i.cs, 16
  %i.cu = trunc nuw i32 %i.ct to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.cu, ptr %i.cv, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cx = load i16, ptr %i.cw, align 2
  %i.cy = zext i16 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = zext i16 %i.da to i32
  %i.dc = mul nuw i32 %i.db, %i.cy
  %i.dd = lshr i32 %i.dc, 16
  %i.de = trunc nuw i32 %i.dd to i16
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.de, ptr %i.df, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = zext i16 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = zext i16 %i.dk to i32
  %i.dm = mul nuw i32 %i.dl, %i.di
  %i.dn = lshr i32 %i.dm, 16
  %i.do = trunc nuw i32 %i.dn to i16
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.do, ptr %i.dp, align 2
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dr = load i16, ptr %i.dq, align 2
  %i.ds = zext i16 %i.dr to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.du = load i16, ptr %i.dt, align 2
  %i.dv = zext i16 %i.du to i32
  %i.dw = mul nuw i32 %i.dv, %i.ds
  %i.dx = lshr i32 %i.dw, 16
  %i.dy = trunc nuw i32 %i.dx to i16
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.dy, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = zext i16 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.ee = load i16, ptr %i.ed, align 2
  %i.ef = zext i16 %i.ee to i32
  %i.eg = mul nuw i32 %i.ef, %i.ec
  %i.eh = lshr i32 %i.eg, 16
  %i.ei = trunc nuw i32 %i.eh to i16
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.ei, ptr %i.ej, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = zext i16 %i.el to i32
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = zext i16 %i.eo to i32
  %i.eq = mul nuw i32 %i.ep, %i.em
  %i.er = lshr i32 %i.eq, 16
  %i.es = trunc nuw i32 %i.er to i16
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.es, ptr %i.et, align 2
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.ev = load i16, ptr %i.eu, align 2
  %i.ew = zext i16 %i.ev to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = zext i16 %i.ey to i32
end_hunk_1
begin_hunk_2_@helper_packssdw_ymm:.preheader22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_punpcklbw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader19:
  %i.a = load <8 x i8>, ptr %2, align 1
  %i.b = load <8 x i8>, ptr %3, align 1
  %i.c = shufflevector <8 x i8> %i.a, <8 x i8> %i.b, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.c, ptr %1, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load <8 x i8>, ptr %i.d, align 1
  %i.h = load <8 x i8>, ptr %i.e, align 1
  %i.i = shufflevector <8 x i8> %i.g, <8 x i8> %i.h, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.i, ptr %i.f, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_punpcklwd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader19:
  %i.a = load <4 x i16>, ptr %2, align 2
  %i.b = load <4 x i16>, ptr %3, align 2
  %i.c = shufflevector <4 x i16> %i.a, <4 x i16> %i.b, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.c, ptr %1, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load <4 x i16>, ptr %i.d, align 2
  %i.h = load <4 x i16>, ptr %i.e, align 2
  %i.i = shufflevector <4 x i16> %i.g, <4 x i16> %i.h, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.i, ptr %i.f, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_punpckldq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader19:
  %i.a = load <2 x i32>, ptr %2, align 4
  %i.b = load <2 x i32>, ptr %3, align 4
  %i.c = shufflevector <2 x i32> %i.a, <2 x i32> %i.b, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.c, ptr %1, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load <2 x i32>, ptr %i.d, align 4
  %i.h = load <2 x i32>, ptr %i.e, align 4
  %i.i = shufflevector <2 x i32> %i.g, <2 x i32> %i.h, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.i, ptr %i.f, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_punpcklqdq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = load i64, ptr %3, align 8
  store i64 %i.a, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_punpckhbw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load <8 x i8>, ptr %i.a, align 1
  %i.d = load <8 x i8>, ptr %i.b, align 1
  %i.e = shufflevector <8 x i8> %i.c, <8 x i8> %i.d, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.e, ptr %1, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <8 x i8>, ptr %i.f, align 1
  %i.j = load <8 x i8>, ptr %i.g, align 1
  %i.k = shufflevector <8 x i8> %i.i, <8 x i8> %i.j, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.k, ptr %i.h, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_punpckhwd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load <4 x i16>, ptr %i.a, align 2
  %i.d = load <4 x i16>, ptr %i.b, align 2
  %i.e = shufflevector <4 x i16> %i.c, <4 x i16> %i.d, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.e, ptr %1, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <4 x i16>, ptr %i.f, align 2
  %i.j = load <4 x i16>, ptr %i.g, align 2
  %i.k = shufflevector <4 x i16> %i.i, <4 x i16> %i.j, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.k, ptr %i.h, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_punpckhdq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load <2 x i32>, ptr %i.a, align 4
  %i.d = load <2 x i32>, ptr %i.b, align 4
  %i.e = shufflevector <2 x i32> %i.c, <2 x i32> %i.d, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.e, ptr %1, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <2 x i32>, ptr %i.f, align 4
  %i.j = load <2 x i32>, ptr %i.g, align 4
  %i.k = shufflevector <2 x i32> %i.i, <2 x i32> %i.j, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.k, ptr %i.h, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_punpckhqdq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8
  store i64 %i.b, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pshufb_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !10
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.f ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %.not = icmp sgt i8 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %indvars.iv, 16
  %i.e = and i8 %i.c, 15
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  %i.i = load i8, ptr %i.h, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = phi i8 [ %i.i, %bb.c ], [ 0, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.j, ptr %i.k, align 2
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %.not.1 = icmp sgt i8 %i.m, -1
  br i1 %.not.1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = and i64 %indvars.iv, 16
  %i.o = and i8 %i.m, 15
  %i.p = zext nneg i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  %i.s = load i8, ptr %i.r, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = phi i8 [ %i.s, %bb.e ], [ 0, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.t, ptr %i.u, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32
  br i1 %exitcond.not.1, label %.preheader.preheader, label %bb.b, !llvm.loop !85

.preheader.preheader:                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_phaddw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader32:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load <8 x i16>, ptr %2, align 2          ; 2 uses
  %i.d = load <8 x i16>, ptr %3, align 2          ; 2 uses
  %i.e = shufflevector <8 x i16> %i.c, <8 x i16> %i.d, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.f = shufflevector <8 x i16> %i.c, <8 x i16> %i.d, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.g = add <8 x i16> %i.e, %i.f
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load <8 x i16>, ptr %i.a, align 2        ; 2 uses
  %i.i = load <8 x i16>, ptr %i.b, align 2        ; 2 uses
  %i.j = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.k = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.l = add <8 x i16> %i.j, %i.k
  store <8 x i16> %i.g, ptr %1, align 2
  store <8 x i16> %i.l, ptr %.sroa.12.0..sroa_idx, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_phsubw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader32:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load <8 x i16>, ptr %2, align 2          ; 2 uses
  %i.d = load <8 x i16>, ptr %3, align 2          ; 2 uses
  %i.e = shufflevector <8 x i16> %i.c, <8 x i16> %i.d, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.f = shufflevector <8 x i16> %i.c, <8 x i16> %i.d, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.g = sub <8 x i16> %i.e, %i.f
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load <8 x i16>, ptr %i.a, align 2        ; 2 uses
  %i.i = load <8 x i16>, ptr %i.b, align 2        ; 2 uses
  %i.j = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.k = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.l = sub <8 x i16> %i.j, %i.k
  store <8 x i16> %i.g, ptr %1, align 2
  store <8 x i16> %i.l, ptr %.sroa.12.0..sroa_idx, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_phaddsw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader33:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load <8 x i16>, ptr %2, align 2          ; 2 uses
  %i.d = load <8 x i16>, ptr %3, align 2          ; 2 uses
  %i.e = shufflevector <8 x i16> %i.c, <8 x i16> %i.d, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.f = shufflevector <8 x i16> %i.c, <8 x i16> %i.d, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.g = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.e, <8 x i16> %i.f)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load <8 x i16>, ptr %i.a, align 2        ; 2 uses
  %i.i = load <8 x i16>, ptr %i.b, align 2        ; 2 uses
  %i.j = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.k = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.l = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.j, <8 x i16> %i.k)
  store <8 x i16> %i.g, ptr %1, align 2
  store <8 x i16> %i.l, ptr %.sroa.12.0..sroa_idx, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_phsubsw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader33:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load <8 x i16>, ptr %2, align 2          ; 2 uses
  %i.d = load <8 x i16>, ptr %3, align 2          ; 2 uses
  %i.e = shufflevector <8 x i16> %i.c, <8 x i16> %i.d, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.f = shufflevector <8 x i16> %i.c, <8 x i16> %i.d, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.g = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %i.e, <8 x i16> %i.f)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load <8 x i16>, ptr %i.a, align 2        ; 2 uses
  %i.i = load <8 x i16>, ptr %i.b, align 2        ; 2 uses
  %i.j = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.k = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.l = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %i.j, <8 x i16> %i.k)
  store <8 x i16> %i.g, ptr %1, align 2
  store <8 x i16> %i.l, ptr %.sroa.12.0..sroa_idx, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_phaddd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader32:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load <4 x i32>, ptr %2, align 4          ; 2 uses
  %i.d = load <4 x i32>, ptr %3, align 4          ; 2 uses
  %i.e = shufflevector <4 x i32> %i.c, <4 x i32> %i.d, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.f = shufflevector <4 x i32> %i.c, <4 x i32> %i.d, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.g = add <4 x i32> %i.e, %i.f
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load <4 x i32>, ptr %i.a, align 4        ; 2 uses
  %i.i = load <4 x i32>, ptr %i.b, align 4        ; 2 uses
  %i.j = shufflevector <4 x i32> %i.h, <4 x i32> %i.i, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.k = shufflevector <4 x i32> %i.h, <4 x i32> %i.i, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.l = add <4 x i32> %i.j, %i.k
  store <4 x i32> %i.g, ptr %1, align 4
  store <4 x i32> %i.l, ptr %.sroa.8.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_phsubd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader32:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load <4 x i32>, ptr %2, align 4          ; 2 uses
  %i.d = load <4 x i32>, ptr %3, align 4          ; 2 uses
  %i.e = shufflevector <4 x i32> %i.c, <4 x i32> %i.d, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.f = shufflevector <4 x i32> %i.c, <4 x i32> %i.d, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.g = sub <4 x i32> %i.e, %i.f
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load <4 x i32>, ptr %i.a, align 4        ; 2 uses
  %i.i = load <4 x i32>, ptr %i.b, align 4        ; 2 uses
  %i.j = shufflevector <4 x i32> %i.h, <4 x i32> %i.i, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.k = shufflevector <4 x i32> %i.h, <4 x i32> %i.i, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.l = sub <4 x i32> %i.j, %i.k
  store <4 x i32> %i.g, ptr %1, align 4
  store <4 x i32> %i.l, ptr %.sroa.8.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmaddubsw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %3, align 1
  %i.b = sext i8 %i.a to i32
  %i.c = load i8, ptr %2, align 1
  %i.d = zext i8 %i.c to i32
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = sext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = add nsw i32 %i.l, %i.e
  %i.n = tail call i32 @llvm.smax.i32(i32 %i.m, i32 -32768)
  %.0.i = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.n, i32 32767)
  %i.o = trunc nsw i32 %.0.i to i16
  store i16 %i.o, ptr %1, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.q = load i8, ptr %i.p, align 1
  %i.r = sext i8 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = mul nsw i32 %i.u, %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sext i8 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = mul nsw i32 %i.ab, %i.y
  %i.ad = add nsw i32 %i.ac, %i.v
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 -32768)
  %.0.i.1 = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.ae, i32 32767)
  %i.af = trunc nsw i32 %.0.i.1 to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.af, ptr %i.ag, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = sext i8 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = mul nsw i32 %i.am, %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = sext i8 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i32
  %i.au = mul nsw i32 %i.at, %i.aq
  %i.av = add nsw i32 %i.au, %i.an
  %i.aw = tail call i32 @llvm.smax.i32(i32 %i.av, i32 -32768)
  %.0.i.2 = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.aw, i32 32767)
  %i.ax = trunc nsw i32 %.0.i.2 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.ax, ptr %i.ay, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = sext i8 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = mul nsw i32 %i.be, %i.bb
end_hunk_2
begin_hunk_3_@helper_pmulhrsw_ymm:bb.a
  store i16 %i.bx, ptr %i.by, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = sext i16 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = sext i16 %i.cd to i32
  %i.cf = mul nsw i32 %i.ce, %i.cb
  %i.cg = add nsw i32 %i.cf, 16384
  %i.ch = lshr i32 %i.cg, 15
  %i.ci = trunc i32 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.ci, ptr %i.cj, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cl = load i16, ptr %i.ck, align 2
  %i.cm = sext i16 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = sext i16 %i.co to i32
  %i.cq = mul nsw i32 %i.cp, %i.cm
  %i.cr = add nsw i32 %i.cq, 16384
  %i.cs = lshr i32 %i.cr, 15
  %i.ct = trunc i32 %i.cs to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.ct, ptr %i.cu, align 2
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = sext i16 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = sext i16 %i.cz to i32
  %i.db = mul nsw i32 %i.da, %i.cx
  %i.dc = add nsw i32 %i.db, 16384
  %i.dd = lshr i32 %i.dc, 15
  %i.de = trunc i32 %i.dd to i16
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.de, ptr %i.df, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = sext i16 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = sext i16 %i.dk to i32
  %i.dm = mul nsw i32 %i.dl, %i.di
  %i.dn = add nsw i32 %i.dm, 16384
  %i.do = lshr i32 %i.dn, 15
  %i.dp = trunc i32 %i.do to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.dp, ptr %i.dq, align 2
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = sext i16 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.dv = load i16, ptr %i.du, align 2
  %i.dw = sext i16 %i.dv to i32
  %i.dx = mul nsw i32 %i.dw, %i.dt
  %i.dy = add nsw i32 %i.dx, 16384
  %i.dz = lshr i32 %i.dy, 15
  %i.ea = trunc i32 %i.dz to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.ea, ptr %i.eb, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ed = load i16, ptr %i.ec, align 2
  %i.ee = sext i16 %i.ed to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.eg = load i16, ptr %i.ef, align 2
  %i.eh = sext i16 %i.eg to i32
  %i.ei = mul nsw i32 %i.eh, %i.ee
  %i.ej = add nsw i32 %i.ei, 16384
  %i.ek = lshr i32 %i.ej, 15
  %i.el = trunc i32 %i.ek to i16
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.el, ptr %i.em, align 2
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = sext i16 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.er = load i16, ptr %i.eq, align 2
  %i.es = sext i16 %i.er to i32
  %i.et = mul nsw i32 %i.es, %i.ep
  %i.eu = add nsw i32 %i.et, 16384
  %i.ev = lshr i32 %i.eu, 15
  %i.ew = trunc i32 %i.ev to i16
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.ew, ptr %i.ex, align 2
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ez = load i16, ptr %i.ey, align 2
  %i.fa = sext i16 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fc = load i16, ptr %i.fb, align 2
  %i.fd = sext i16 %i.fc to i32
  %i.fe = mul nsw i32 %i.fd, %i.fa
  %i.ff = add nsw i32 %i.fe, 16384
  %i.fg = lshr i32 %i.ff, 15
  %i.fh = trunc i32 %i.fg to i16
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.fh, ptr %i.fi, align 2
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.fk = load i16, ptr %i.fj, align 2
  %i.fl = sext i16 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.fn = load i16, ptr %i.fm, align 2
  %i.fo = sext i16 %i.fn to i32
  %i.fp = mul nsw i32 %i.fo, %i.fl
  %i.fq = add nsw i32 %i.fp, 16384
  %i.fr = lshr i32 %i.fq, 15
  %i.fs = trunc i32 %i.fr to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.fs, ptr %i.ft, align 2
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.fv = load i16, ptr %i.fu, align 2
  %i.fw = sext i16 %i.fv to i32
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.fy = load i16, ptr %i.fx, align 2
  %i.fz = sext i16 %i.fy to i32
  %i.ga = mul nsw i32 %i.fz, %i.fw
  %i.gb = add nsw i32 %i.ga, 16384
  %i.gc = lshr i32 %i.gb, 15
  %i.gd = trunc i32 %i.gc to i16
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 %i.gd, ptr %i.ge, align 2
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.gg = load i16, ptr %i.gf, align 2
  %i.gh = sext i16 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.gj = load i16, ptr %i.gi, align 2
  %i.gk = sext i16 %i.gj to i32
  %i.gl = mul nsw i32 %i.gk, %i.gh
  %i.gm = add nsw i32 %i.gl, 16384
  %i.gn = lshr i32 %i.gm, 15
  %i.go = trunc i32 %i.gn to i16
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %i.go, ptr %i.gp, align 2
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_psignb_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.k
  ret void

bb.c:                                             ; preds = %bb.k, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.k ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1
  %i.h = sub i8 0, %i.g
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %i.i = phi i8 [ %i.h, %bb.f ], [ %i.e, %bb.e ], [ 0, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.i, ptr %i.j, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.o = load i8, ptr %i.n, align 1
  %i.p = sub i8 0, %i.o
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.1 = icmp eq i8 %i.l, 0
  br i1 %.not.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.r = load i8, ptr %i.q, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.s = phi i8 [ %i.p, %bb.h ], [ %i.r, %bb.j ], [ 0, %bb.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.s, ptr %i.t, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32
  br i1 %exitcond.not.1, label %bb.b, label %bb.c, !llvm.loop !86
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psignw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i16, ptr %3, align 2                ; 2 uses
  %i.b = icmp sgt i16 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i16, ptr %2, align 2
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = load i16, ptr %2, align 2
  %i.e = sub i16 0, %i.d
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %i.f = phi i16 [ %i.e, %bb.d ], [ %i.c, %bb.c ], [ 0, %bb.b ]
  store i16 %i.f, ptr %1, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.h = load i16, ptr %i.g, align 2              ; 2 uses
  %i.i = icmp sgt i16 %i.h, -1
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i16, ptr %i.j, align 2
  %i.l = sub i16 0, %i.k
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %.not.1 = icmp eq i16 %i.h, 0
  br i1 %.not.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.n = load i16, ptr %i.m, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.o = phi i16 [ %i.l, %bb.f ], [ %i.n, %bb.h ], [ 0, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.o, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.r = load i16, ptr %i.q, align 2              ; 2 uses
  %i.s = icmp sgt i16 %i.r, -1
  br i1 %i.s, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i16, ptr %i.t, align 2
  %i.v = sub i16 0, %i.u
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %.not.2 = icmp eq i16 %i.r, 0
  br i1 %.not.2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = load i16, ptr %i.w, align 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.y = phi i16 [ %i.v, %bb.j ], [ %i.x, %bb.l ], [ 0, %bb.k ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.y, ptr %i.z, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ab = load i16, ptr %i.aa, align 2            ; 2 uses
  %i.ac = icmp sgt i16 %i.ab, -1
  br i1 %i.ac, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = sub i16 0, %i.ae
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.not.3 = icmp eq i16 %i.ab, 0
  br i1 %.not.3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ah = load i16, ptr %i.ag, align 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ai = phi i16 [ %i.af, %bb.n ], [ %i.ah, %bb.p ], [ 0, %bb.o ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.ai, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load i16, ptr %i.ak, align 2            ; 2 uses
  %i.am = icmp sgt i16 %i.al, -1
  br i1 %i.am, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = sub i16 0, %i.ao
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %.not.4 = icmp eq i16 %i.al, 0
  br i1 %.not.4, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i16, ptr %i.aq, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.as = phi i16 [ %i.ap, %bb.r ], [ %i.ar, %bb.t ], [ 0, %bb.s ]
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.as, ptr %i.at, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.av = load i16, ptr %i.au, align 2            ; 2 uses
  %i.aw = icmp sgt i16 %i.av, -1
  br i1 %i.aw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = sub i16 0, %i.ay
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %.not.5 = icmp eq i16 %i.av, 0
  br i1 %.not.5, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bb = load i16, ptr %i.ba, align 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.bc = phi i16 [ %i.az, %bb.v ], [ %i.bb, %bb.x ], [ 0, %bb.w ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bf = load i16, ptr %i.be, align 2            ; 2 uses
  %i.bg = icmp sgt i16 %i.bf, -1
  br i1 %i.bg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = sub i16 0, %i.bi
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %.not.6 = icmp eq i16 %i.bf, 0
  br i1 %.not.6, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bl = load i16, ptr %i.bk, align 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bm = phi i16 [ %i.bj, %bb.z ], [ %i.bl, %bb.ab ], [ 0, %bb.aa ]
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.bm, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.bp = load i16, ptr %i.bo, align 2            ; 2 uses
  %i.bq = icmp sgt i16 %i.bp, -1
  br i1 %i.bq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = sub i16 0, %i.bs
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %.not.7 = icmp eq i16 %i.bp, 0
  br i1 %.not.7, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.bv = load i16, ptr %i.bu, align 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bw = phi i16 [ %i.bt, %bb.ad ], [ %i.bv, %bb.af ], [ 0, %bb.ae ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.bw, ptr %i.bx, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bz = load i16, ptr %i.by, align 2            ; 2 uses
  %i.ca = icmp sgt i16 %i.bz, -1
  br i1 %i.ca, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_3
begin_hunk_4_@aesdec_IMC_accel:bb.a
}

declare void @aesdec_IMC_gen(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64>) #5

declare void @cpu_stl_mmu(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @cpu_stq_mmu(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @cpu_ldl_mmu(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @cpu_ldq_mmu(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.abs.v8i16(<8 x i16>, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.sadd.sat.v4i16(<4 x i16>, <4 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.ssub.sat.v4i16(<4 x i16>, <4 x i16>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smax.v16i16(<16 x i16>, <16 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smin.v16i16(<16 x i16>, <16 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umin.v16i16(<16 x i16>, <16 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16>, <8 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v8i16(<8 x i16>) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind sspstrong memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #13 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #15 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #16 = { nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #19 = { nofree noinline norecurse nosync nounwind sspstrong memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #20 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+pclmul,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = distinct !{!2, !13}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"branch_weights", i32 4, i32 28}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!"branch_weights", i32 8, i32 24}
!19 = !{!"branch_weights", i32 1, i32 1048575}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13, !14, !15}
!31 = distinct !{!31, !13, !14, !15}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13, !14}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !13, !14, !15}
!37 = distinct !{!37, !13, !14, !15}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13, !14}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13, !14, !15}
!44 = distinct !{!44, !13, !14, !15}
!45 = distinct !{!45, !13, !14, !15}
!46 = distinct !{!46, !13, !14, !15}
!47 = distinct !{!47, !13, !15, !14}
!48 = distinct !{!48, !13, !15, !14}
!49 = distinct !{!49, !13, !15, !14}
!50 = distinct !{!50, !13, !15, !14}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13, !14, !15}
!54 = distinct !{!54, !13, !14, !15}
!55 = distinct !{!55, !13, !14, !15}
!56 = distinct !{!56, !13, !14, !15}
!57 = distinct !{!57, !13, !14}
!58 = distinct !{!58, !13, !14}
!59 = distinct !{!59, !13, !14}
!60 = distinct !{!60, !13, !14}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !17}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13, !14, !15}
!65 = distinct !{!65, !13, !14, !15}
!66 = distinct !{!66, !13, !14, !15}
!67 = distinct !{!67, !13, !14, !15}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13, !14, !15}
!70 = distinct !{!70, !13, !14, !15}
!71 = distinct !{!71, !13, !14}
!72 = distinct !{!72, !13, !14}
!73 = distinct !{!73, !13, !14, !15}
!74 = distinct !{!74, !13, !14, !15}
!75 = distinct !{!75, !13, !14}
!76 = distinct !{!76, !13, !14}
!77 = distinct !{!77, !13, !14, !15}
!78 = distinct !{!78, !13, !14, !15}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !13, !14}
!82 = distinct !{!82, !13, !14}
!83 = distinct !{!83, !13, !14, !15}
!84 = distinct !{!84, !13, !14, !15}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
end_hunk_4
