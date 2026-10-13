Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fpu_helper?download=true
inline.NumInlined: 830
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 540
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 554
begin_hunk_0_@helper_psraw_xmm:bb.a
  %i.m = load i16, ptr %i.l, align 2
  %i.n = sext i16 %i.m to i32
  %i.o = ashr i32 %i.n, %spec.select
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
  %i.a = load i32, ptr %3, align 8                ; 2 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.a, i32 16) ; 16 uses
  %i.b = sub i32 16, %spec.store.select           ; 6 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.split.us, label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %bb.a
  %i.d = sext i32 %i.b to i64
  br label %.split26.us.sink.split

.split.us:                                        ; preds = %bb.a
  %i.e = icmp samesign ult i32 %i.b, 16
  %wide.trip.count34 = zext nneg i32 %i.b to i64  ; 13 uses
  br i1 %i.e, label %.preheader21.us.us.preheader, label %vector.scevcheck

.preheader21.us.us.preheader:                     ; preds = %.split.us
  %xtraiter47 = and i64 %wide.trip.count34, 3     ; 3 uses
  %i.f = icmp ult i32 %i.b, 4
  br i1 %i.f, label %.preheader21.us.us.epil.preheader, label %.preheader21.us.us.preheader.new

.preheader21.us.us.preheader.new:                 ; preds = %.preheader21.us.us.preheader
  %unroll_iter = and i64 %wide.trip.count34, 12
  br label %.preheader21.us.us

vector.scevcheck:                                 ; preds = %.split.us
  %i.g = add nsw i64 %wide.trip.count34, -1       ; 2 uses
  %i.h = trunc nsw i64 %i.g to i32
  %i.i = add i32 %spec.store.select, %i.h
  %i.j = icmp slt i32 %i.i, %spec.store.select
  %i.k = icmp ugt i64 %i.g, 4294967295
  %i.l = or i1 %i.j, %i.k
  br i1 %i.l, label %.preheader21.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %4 = ptrtoaddr ptr %1 to i64
  %5 = ptrtoaddr ptr %2 to i64
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.a, i32 16)
  %smin = sext i32 %i.m to i64
  %i.n = add i64 %5, %smin
  %i.o = sub i64 %i.n, %4
  %diff.check = icmp ugt i64 %i.o, -32
  br i1 %diff.check, label %.preheader21.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i32 %i.b, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %wide.trip.count34, 28
  %n.vec = and i64 %wide.trip.count34, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = trunc nuw nsw i64 %index to i32
  %i.r = add i32 %spec.store.select, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %2, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <16 x i8>, ptr %i.t, align 1
  %wide.load41 = load <16 x i8>, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <16 x i8> %wide.load, ptr %i.v, align 1
  store <16 x i8> %wide.load41, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count34
  br i1 %cmp.n, label %.split26.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.preheader21.us.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %wide.trip.count34, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.y = trunc nuw nsw i64 %index43 to i32
  %i.z = add i32 %spec.store.select, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %2, i64 %i.aa
  %wide.load44 = load <4 x i8>, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %index43
  store <4 x i8> %wide.load44, ptr %i.ac, align 1
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %n.vec42, %wide.trip.count34
  br i1 %cmp.n46, label %.split26.us, label %.preheader21.us.preheader

.preheader21.us.preheader:                        ; preds = %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count34, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader21.us.prol.loopexit, label %.preheader21.us.prol

.preheader21.us.prol:                             ; preds = %.preheader21.us.preheader, %.preheader21.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.preheader21.us.prol ], [ %indvars.iv.ph, %.preheader21.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader21.us.prol ], [ 0, %.preheader21.us.preheader ]
  %i.ae = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.af = add i32 %spec.store.select, %i.ae
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %2, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.ai, ptr %i.aj, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader21.us.prol.loopexit, label %.preheader21.us.prol, !llvm.loop !32

.preheader21.us.prol.loopexit:                    ; preds = %.preheader21.us.prol, %.preheader21.us.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader21.us.preheader ], [ %indvars.iv.next.prol, %.preheader21.us.prol ]
  %i.ak = sub nsw i64 %indvars.iv.ph, %wide.trip.count34
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %.split26.us, label %.preheader21.us

.preheader21.us.us:                               ; preds = %.preheader21.us.us, %.preheader21.us.us.preheader.new
  %indvars.iv31 = phi i64 [ 0, %.preheader21.us.us.preheader.new ], [ %indvars.iv.next32.3, %.preheader21.us.us ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader21.us.us.preheader.new ], [ %niter.next.3, %.preheader21.us.us ]
  %i.am = trunc nuw nsw i64 %indvars.iv31 to i32
  %i.an = add i32 %spec.store.select, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv31
  store i8 %i.aq, ptr %i.ar, align 1
  %indvars.iv.next32 = or disjoint i64 %indvars.iv31, 1 ; 2 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.next32 to i32
  %i.at = add i32 %spec.store.select, %i.as
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next32
  store i8 %i.aw, ptr %i.ax, align 1
  %indvars.iv.next32.1 = or disjoint i64 %indvars.iv31, 2 ; 2 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv.next32.1 to i32
  %i.az = add i32 %spec.store.select, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next32.1
  store i8 %i.bc, ptr %i.bd, align 1
  %indvars.iv.next32.2 = or disjoint i64 %indvars.iv31, 3 ; 2 uses
  %i.be = trunc nuw nsw i64 %indvars.iv.next32.2 to i32
  %i.bf = add i32 %spec.store.select, %i.be
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next32.2
  store i8 %i.bi, ptr %i.bj, align 1
  %indvars.iv.next32.3 = add nuw nsw i64 %indvars.iv31, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.split26.us.sink.split.loopexit.unr-lcssa, label %.preheader21.us.us, !llvm.loop !33

.preheader21.us:                                  ; preds = %.preheader21.us.prol.loopexit, %.preheader21.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader21.us ], [ %indvars.iv.unr, %.preheader21.us.prol.loopexit ] ; 6 uses
  %i.bk = trunc nuw nsw i64 %indvars.iv to i32
  %i.bl = add i32 %spec.store.select, %i.bk
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.bo, ptr %i.bp, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.br = add i32 %spec.store.select, %i.bq
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %2, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.bu, ptr %i.bv, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bw = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.bx = add i32 %spec.store.select, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %2, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.ca, ptr %i.cb, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.cd = add i32 %spec.store.select, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %2, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.cg, ptr %i.ch, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count34
  br i1 %exitcond.not.3, label %.split26.us, label %.preheader21.us, !llvm.loop !34

.split26.us.sink.split.loopexit.unr-lcssa:        ; preds = %.preheader21.us.us
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %.split26.us.sink.split, label %.preheader21.us.us.epil.preheader

.preheader21.us.us.epil.preheader:                ; preds = %.split26.us.sink.split.loopexit.unr-lcssa, %.preheader21.us.us.preheader
  %indvars.iv31.epil.init = phi i64 [ 0, %.preheader21.us.us.preheader ], [ %indvars.iv.next32.3, %.split26.us.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod49 = icmp ne i64 %xtraiter47, 0
  tail call void @llvm.assume(i1 %lcmp.mod49)
  br label %.preheader21.us.us.epil

.preheader21.us.us.epil:                          ; preds = %.preheader21.us.us.epil, %.preheader21.us.us.epil.preheader
  %indvars.iv31.epil = phi i64 [ %indvars.iv.next32.epil, %.preheader21.us.us.epil ], [ %indvars.iv31.epil.init, %.preheader21.us.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader21.us.us.epil ], [ 0, %.preheader21.us.us.epil.preheader ]
  %i.ci = trunc nuw nsw i64 %indvars.iv31.epil to i32
  %i.cj = add i32 %spec.store.select, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %2, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv31.epil
  store i8 %i.cm, ptr %i.cn, align 1
  %indvars.iv.next32.epil = add nuw nsw i64 %indvars.iv31.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter47
  br i1 %epil.iter.cmp.not, label %.split26.us.sink.split, label %.preheader21.us.us.epil, !llvm.loop !35

.split26.us.sink.split:                           ; preds = %.split26.us.sink.split.loopexit.unr-lcssa, %.preheader21.us.us.epil, %.preheader21.preheader
  %.sink = phi i64 [ %i.d, %.preheader21.preheader ], [ %wide.trip.count34, %.preheader21.us.us.epil ], [ %wide.trip.count34, %.split26.us.sink.split.loopexit.unr-lcssa ]
  %scevgep = getelementptr i8, ptr %1, i64 %.sink
  %i.co = add i32 %spec.store.select, -1
  %i.cp = zext i32 %i.co to i64
  %i.cq = add nuw nsw i64 %i.cp, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.cq, i1 false)
  br label %.split26.us

.split26.us:                                      ; preds = %.preheader21.us.prol.loopexit, %.preheader21.us, %middle.block, %vec.epilog.middle.block, %.split26.us.sink.split
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pslldq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr %3, align 8                ; 3 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.a, i32 16) ; 14 uses
  %.not21 = icmp sgt i32 %i.a, 15
  br i1 %.not21, label %.split26.sink.split, label %.split

.split:                                           ; preds = %bb.a
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.preheader20.us27.preheader, label %iter.check

iter.check:                                       ; preds = %.split
  %i.c = sext i32 %spec.store.select to i64       ; 3 uses
  %i.d = sub nsw i64 16, %i.c                     ; 6 uses
  %i.e = sub nsw i64 15, %i.c                     ; 2 uses
  %i.f = sub i32 15, %spec.store.select           ; 2 uses
  %i.g = trunc i64 %i.e to i32
  %i.h = sub i32 %i.f, %i.g
  %i.i = icmp sgt i32 %i.h, %i.f
  %i.j = icmp ugt i64 %i.e, 4294967295
  %i.k = or i1 %i.i, %i.j
  br i1 %i.k, label %.preheader20.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %4 = ptrtoaddr ptr %2 to i64
  %i.l = sub i32 15, %spec.store.select
  %i.m = sext i32 %i.l to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.n = add i64 %4, %i.m
  %i.o = sub i64 %i.n, %5
  %i.p = add i64 %i.o, -16
  %diff.check = icmp ult i64 %i.p, 31
  br i1 %diff.check, label %.preheader20.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i64 %i.d, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %i.r = sub nsw i64 15, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = sub i64 15, %index                       ; 2 uses
  %i.t = trunc nsw i64 %i.s to i32
  %i.u = sub i32 %i.t, %spec.store.select
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %2, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -15
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -31
  %wide.load = load <16 x i8>, ptr %i.x, align 1
  %wide.load44 = load <16 x i8>, ptr %i.y, align 1
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.s ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -15
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -31
  store <16 x i8> %wide.load, ptr %i.aa, align 1
  store <16 x i8> %wide.load44, ptr %i.ab, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.split26, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.preheader20.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.d, -8                     ; 3 uses
  %i.ad = sub nsw i64 15, %n.vec45
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %i.ae = sub i64 15, %index46                    ; 2 uses
  %i.af = trunc nsw i64 %i.ae to i32
  %i.ag = sub i32 %i.af, %spec.store.select
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -7
  %wide.load47 = load <8 x i8>, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.ae
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -7
  store <8 x i8> %wide.load47, ptr %i.al, align 1
  %index.next48 = add nuw i64 %index46, 8         ; 2 uses
  %i.am = icmp eq i64 %index.next48, %n.vec45
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %i.d, %n.vec45
  br i1 %cmp.n49, label %.split26, label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 15, %iter.check ], [ 15, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  br label %.preheader20

.preheader20.us27.preheader:                      ; preds = %.split
  %narrow = sub nuw nsw i32 16, %spec.store.select
  %i.an = zext nneg i32 %narrow to i64            ; 2 uses
  %xtraiter = and i64 %i.an, 3                    ; 3 uses
  %i.ao = add nsw i32 %spec.store.select, -13
  %i.ap = icmp ult i32 %i.ao, 3
  br i1 %i.ap, label %.preheader20.us27.epil.preheader, label %.preheader20.us27.preheader.new

.preheader20.us27.preheader.new:                  ; preds = %.preheader20.us27.preheader
  %unroll_iter = and i64 %i.an, 28
  br label %.preheader20.us27

.preheader20.us27:                                ; preds = %.preheader20.us27, %.preheader20.us27.preheader.new
  %indvars.iv35 = phi i64 [ 15, %.preheader20.us27.preheader.new ], [ %indvars.iv.next36.3, %.preheader20.us27 ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader20.us27.preheader.new ], [ %niter.next.3, %.preheader20.us27 ]
  %i.aq = trunc nsw i64 %indvars.iv35 to i32
  %i.ar = sub i32 %i.aq, %spec.store.select
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %2, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %i.av = getelementptr inbounds i8, ptr %1, i64 %indvars.iv35
  store i8 %i.au, ptr %i.av, align 1
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, -1 ; 2 uses
  %i.aw = trunc nsw i64 %indvars.iv.next36 to i32
  %i.ax = sub i32 %i.aw, %spec.store.select
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %2, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next36
  store i8 %i.ba, ptr %i.bb, align 1
  %indvars.iv.next36.1 = add nsw i64 %indvars.iv35, -2 ; 2 uses
  %i.bc = trunc nsw i64 %indvars.iv.next36.1 to i32
  %i.bd = sub i32 %i.bc, %spec.store.select
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next36.1
  store i8 %i.bg, ptr %i.bh, align 1
  %indvars.iv.next36.2 = add nsw i64 %indvars.iv35, -3 ; 2 uses
  %i.bi = trunc nsw i64 %indvars.iv.next36.2 to i32
  %i.bj = sub i32 %i.bi, %spec.store.select
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %2, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next36.2
  store i8 %i.bm, ptr %i.bn, align 1
  %indvars.iv.next36.3 = add nsw i64 %indvars.iv35, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.split26.sink.split.loopexit.unr-lcssa, label %.preheader20.us27, !llvm.loop !38

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader20 ], [ %indvars.iv.ph, %.preheader20.preheader ] ; 4 uses
  %i.bo = trunc nsw i64 %indvars.iv to i32
  %i.bp = sub i32 %i.bo, %spec.store.select
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  store i8 %i.bs, ptr %i.bt, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.c
  br i1 %.not.not, label %.preheader20, label %.split26, !llvm.loop !39

.split26.sink.split.loopexit.unr-lcssa:           ; preds = %.preheader20.us27
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split26.sink.split, label %.preheader20.us27.epil.preheader

.preheader20.us27.epil.preheader:                 ; preds = %.split26.sink.split.loopexit.unr-lcssa, %.preheader20.us27.preheader
  %indvars.iv35.epil.init = phi i64 [ 15, %.preheader20.us27.preheader ], [ %indvars.iv.next36.3, %.split26.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod54 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod54)
  br label %.preheader20.us27.epil

.preheader20.us27.epil:                           ; preds = %.preheader20.us27.epil, %.preheader20.us27.epil.preheader
  %indvars.iv35.epil = phi i64 [ %indvars.iv35.epil.init, %.preheader20.us27.epil.preheader ], [ %indvars.iv.next36.epil, %.preheader20.us27.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader20.us27.epil.preheader ], [ %epil.iter.next, %.preheader20.us27.epil ]
  %i.bu = trunc nsw i64 %indvars.iv35.epil to i32
  %i.bv = sub i32 %i.bu, %spec.store.select
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %2, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %indvars.iv35.epil
  store i8 %i.by, ptr %i.bz, align 1
  %indvars.iv.next36.epil = add nsw i64 %indvars.iv35.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split26.sink.split, label %.preheader20.us27.epil, !llvm.loop !40

.split26.sink.split:                              ; preds = %.split26.sink.split.loopexit.unr-lcssa, %.preheader20.us27.epil, %bb.a
  %i.ca = zext nneg i32 %spec.store.select to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.ca, i1 false)
  br label %.split26

.split26:                                         ; preds = %.preheader20, %middle.block, %vec.epilog.middle.block, %.split26.sink.split
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmulhuw_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = add i64 %i.c, 16
  %i.e = add i64 %i.b, 16
  %i.f = add i64 %i.a, 16                         ; 2 uses
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
  %i.h = load <8 x i16>, ptr %3, align 2
  %i.i = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.g, <8 x i16> %i.h)
  store <8 x i16> %i.i, ptr %1, align 2
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.j = load i16, ptr %2, align 2
  %i.k = load i16, ptr %3, align 2
  %i.l = tail call i16 @llvm.umulh.i16(i16 %i.j, i16 %i.k)
  store i16 %i.l, ptr %1, align 2
end_hunk_0
begin_hunk_1_@helper_psrld_ymm:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.w = load i32, ptr %i.v, align 4
  %i.x = lshr i32 %i.w, %i.c
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
  %i.a = load i32, ptr %3, align 8                ; 3 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.a, i32 16) ; 30 uses
  %i.b = sub i32 16, %spec.store.select           ; 8 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.split.us, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.d = sext i32 %i.b to i64                     ; 7 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.d
  %i.e = add i32 %spec.store.select, -1
  %i.f = zext i32 %i.e to i64
  %i.g = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.g, i1 false)
  %i.h = sub i32 17, %spec.store.select
  %i.i = zext i32 %i.h to i64
  %i.j = sub nsw i64 17, %i.i                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.j, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.k = sub i32 17, %spec.store.select
  %i.l = zext i32 %i.k to i64
  %i.m = sub nsw i64 16, %i.l                     ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = add i32 %spec.store.select, -18
  %i.p = icmp ult i32 %i.o, %i.n
  %i.q = sub i32 32, %spec.store.select           ; 2 uses
  %i.r = add i32 %i.q, %i.n
  %i.s = icmp slt i32 %i.r, %i.q
  %i.t = icmp ugt i64 %i.m, 4294967295
  %i.u = or i1 %i.s, %i.t
  %i.v = or i1 %i.p, %i.u
  br i1 %i.v, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check62 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check62, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.j, 24
  %n.vec = and i64 %i.j, -32                      ; 4 uses
  %i.x = add nsw i64 %n.vec, %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = add i64 %index, %i.d
  %i.z = shl i64 %i.y, 32
  %i.aa = add i64 %i.z, 68719476736
  %i.ab = ashr exact i64 %i.aa, 32
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <16 x i8> zeroinitializer, ptr %i.ac, align 1
  store <16 x i8> zeroinitializer, ptr %i.ad, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.split27.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec63 = and i64 %i.j, -8                     ; 3 uses
  %i.af = add nsw i64 %n.vec63, %i.d
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index64 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 2 uses
  %i.ag = add i64 %index64, %i.d
  %i.ah = shl i64 %i.ag, 32
  %i.ai = add i64 %i.ah, 68719476736
  %i.aj = ashr exact i64 %i.ai, 32
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  store <8 x i8> zeroinitializer, ptr %i.ak, align 1
  %index.next65 = add nuw i64 %index64, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next65, %n.vec63
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n66 = icmp eq i64 %i.j, %n.vec63
  br i1 %cmp.n66, label %.split27.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.1.ph = phi i64 [ %i.d, %iter.check ], [ %i.d, %vector.scevcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.split.us:                                        ; preds = %bb.a
  %i.am = icmp samesign ult i32 %i.b, 16
  %i.an = zext nneg i32 %i.b to i64               ; 30 uses
  br i1 %i.am, label %.preheader21.us.us.preheader, label %vector.scevcheck68

vector.scevcheck68:                               ; preds = %.split.us
  %i.ao = add nsw i64 %i.an, -1                   ; 2 uses
  %i.ap = trunc nsw i64 %i.ao to i32
  %i.aq = add i32 %spec.store.select, %i.ap
  %i.ar = icmp slt i32 %i.aq, %spec.store.select
  %i.as = icmp ugt i64 %i.ao, 4294967295
  %i.at = or i1 %i.ar, %i.as
  br i1 %i.at, label %.preheader21.us.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck68
  %4 = ptrtoaddr ptr %1 to i64
  %5 = ptrtoaddr ptr %2 to i64
  %i.au = tail call i32 @llvm.smin.i32(i32 %i.a, i32 16)
  %smin = sext i32 %i.au to i64
  %i.av = add i64 %5, %smin
  %i.aw = sub i64 %i.av, %4
  %diff.check = icmp ugt i64 %i.aw, -32
  br i1 %diff.check, label %.preheader21.us.preheader.preheader, label %vector.main.loop.iter.check69

vector.main.loop.iter.check69:                    ; preds = %vector.memcheck
  %min.iters.check70 = icmp ult i32 %i.b, 32
  br i1 %min.iters.check70, label %vec.epilog.ph84, label %vector.ph71

vector.ph71:                                      ; preds = %vector.main.loop.iter.check69
  %i.ax = and i64 %i.an, 28
  %n.vec72 = and i64 %i.an, 2147483616            ; 4 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.ph71, %vector.body73
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next76, %vector.body73 ] ; 3 uses
  %i.ay = trunc nuw i64 %index74 to i32
  %i.az = add i32 %spec.store.select, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <16 x i8>, ptr %i.bb, align 1
  %wide.load75 = load <16 x i8>, ptr %i.bc, align 1
  %i.bd = shl i64 %index74, 32
  %i.be = ashr exact i64 %i.bd, 32
  %i.bf = getelementptr inbounds i8, ptr %1, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <16 x i8> %wide.load, ptr %i.bf, align 1
  store <16 x i8> %wide.load75, ptr %i.bg, align 1
  %index.next76 = add nuw i64 %index74, 32        ; 2 uses
  %i.bh = icmp eq i64 %index.next76, %n.vec72
  br i1 %i.bh, label %middle.block77, label %vector.body73, !llvm.loop !66

middle.block77:                                   ; preds = %vector.body73
  %cmp.n78 = icmp eq i64 %n.vec72, %i.an
  br i1 %cmp.n78, label %vector.scevcheck92, label %vec.epilog.iter.check82

vec.epilog.iter.check82:                          ; preds = %middle.block77
  %min.epilog.iters.check83 = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check83, label %.preheader21.us.preheader.preheader, label %vec.epilog.ph84, !prof !16

vec.epilog.ph84:                                  ; preds = %vector.main.loop.iter.check69, %vec.epilog.iter.check82
  %vec.epilog.resume.val79 = phi i64 [ %n.vec72, %vec.epilog.iter.check82 ], [ 0, %vector.main.loop.iter.check69 ]
  %n.vec85 = and i64 %i.an, 2147483644            ; 3 uses
  br label %vec.epilog.vector.body86

vec.epilog.vector.body86:                         ; preds = %vec.epilog.vector.body86, %vec.epilog.ph84
  %index87 = phi i64 [ %vec.epilog.resume.val79, %vec.epilog.ph84 ], [ %index.next89, %vec.epilog.vector.body86 ] ; 3 uses
  %i.bi = trunc nuw i64 %index87 to i32
  %i.bj = add i32 %spec.store.select, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %2, i64 %i.bk
  %wide.load88 = load <4 x i8>, ptr %i.bl, align 1
  %i.bm = shl i64 %index87, 32
  %i.bn = ashr exact i64 %i.bm, 32
  %i.bo = getelementptr inbounds i8, ptr %1, i64 %i.bn
  store <4 x i8> %wide.load88, ptr %i.bo, align 1
  %index.next89 = add nuw i64 %index87, 4         ; 2 uses
  %i.bp = icmp eq i64 %index.next89, %n.vec85
  br i1 %i.bp, label %vec.epilog.middle.block90, label %vec.epilog.vector.body86, !llvm.loop !67

vec.epilog.middle.block90:                        ; preds = %vec.epilog.vector.body86
  %cmp.n91 = icmp eq i64 %n.vec85, %i.an
  br i1 %cmp.n91, label %vector.scevcheck92, label %.preheader21.us.preheader.preheader

.preheader21.us.preheader.preheader:              ; preds = %vector.scevcheck68, %vector.memcheck, %vec.epilog.iter.check82, %vec.epilog.middle.block90
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck68 ], [ 0, %vector.memcheck ], [ %n.vec72, %vec.epilog.iter.check82 ], [ %n.vec85, %vec.epilog.middle.block90 ] ; 5 uses
  %xtraiter = and i64 %i.an, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader21.us.preheader.prol.loopexit, label %.preheader21.us.preheader.prol

.preheader21.us.preheader.prol:                   ; preds = %.preheader21.us.preheader.preheader
  %i.bq = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.br = add i32 %spec.store.select, %i.bq
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %2, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.ph
  store i8 %i.bu, ptr %i.bv, align 1
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.preheader21.us.preheader.prol.loopexit

.preheader21.us.preheader.prol.loopexit:          ; preds = %.preheader21.us.preheader.prol, %.preheader21.us.preheader.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader21.us.preheader.preheader ], [ %indvars.iv.next.prol, %.preheader21.us.preheader.prol ]
  %i.bw = add nsw i64 %i.an, -1
  %i.bx = icmp eq i64 %indvars.iv.ph, %i.bw
  br i1 %i.bx, label %vector.scevcheck92, label %.preheader21.us.preheader

.preheader21.us.us.preheader:                     ; preds = %.split.us
  %i.by = add nsw i64 %i.an, -1                   ; 2 uses
  %xtraiter153 = and i64 %i.an, 1
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.epil.preheader, label %.preheader21.us.us.preheader.new

.preheader21.us.us.preheader.new:                 ; preds = %.preheader21.us.us.preheader
  %unroll_iter = and i64 %i.an, 14
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader21.us.us.preheader.new
  %indvars.iv38 = phi i64 [ 0, %.preheader21.us.us.preheader.new ], [ %indvars.iv.next39.1157, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader21.us.us.preheader.new ], [ %niter.next.1, %bb.b ]
  %i.ca = trunc nuw i64 %indvars.iv38 to i32
  %i.cb = add i32 %spec.store.select, %i.ca
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %2, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %sext56 = shl i64 %indvars.iv38, 32
  %i.cf = ashr exact i64 %sext56, 32
  %i.cg = getelementptr inbounds i8, ptr %1, i64 %i.cf
  store i8 %i.ce, ptr %i.cg, align 1
  %indvars.iv.next39 = or disjoint i64 %indvars.iv38, 1 ; 2 uses
  %i.ch = trunc nuw i64 %indvars.iv.next39 to i32
  %i.ci = add i32 %spec.store.select, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %2, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1
  %sext56.1 = shl i64 %indvars.iv.next39, 32
  %i.cm = ashr exact i64 %sext56.1, 32
  %i.cn = getelementptr inbounds i8, ptr %1, i64 %i.cm
  store i8 %i.cl, ptr %i.cn, align 1
  %indvars.iv.next39.1157 = add nuw nsw i64 %indvars.iv38, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %bb.b, !llvm.loop !68

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %bb.b
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.preheader21.us.us.preheader
  %indvars.iv38.epil.init = phi i64 [ 0, %.preheader21.us.us.preheader ], [ %indvars.iv.next39.1157, %..preheader_crit_edge.us.us.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod155 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod155)
  %i.co = trunc nuw i64 %indvars.iv38.epil.init to i32
  %i.cp = add i32 %spec.store.select, %i.co
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %2, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1
  %sext56.epil = shl i64 %indvars.iv38.epil.init, 32
  %i.ct = ashr exact i64 %sext56.epil, 32
  %i.cu = getelementptr inbounds i8, ptr %1, i64 %i.ct
  store i8 %i.cs, ptr %i.cu, align 1
  br label %..preheader_crit_edge.us.us.preheader

..preheader_crit_edge.us.us.preheader:            ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.epil.preheader
  %scevgep53 = getelementptr i8, ptr %1, i64 %i.an
  %i.cv = add i32 %spec.store.select, -1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = add nuw nsw i64 %i.cw, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep53, i8 0, i64 %i.cx, i1 false)
  %xtraiter159 = and i64 %i.an, 1
  %i.cy = icmp eq i64 %i.by, 0
  br i1 %i.cy, label %.epil.preheader158, label %..preheader_crit_edge.us.us.preheader.new

..preheader_crit_edge.us.us.preheader.new:        ; preds = %..preheader_crit_edge.us.us.preheader
  %unroll_iter162 = and i64 %i.an, 14
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %..preheader_crit_edge.us.us.preheader.new
  %indvars.iv38.1 = phi i64 [ 0, %..preheader_crit_edge.us.us.preheader.new ], [ %indvars.iv.next39.1.1, %bb.c ] ; 3 uses
  %niter163 = phi i64 [ 0, %..preheader_crit_edge.us.us.preheader.new ], [ %niter163.next.1, %bb.c ]
  %i.cz = trunc i64 %indvars.iv38.1 to i32
  %i.da = add i32 %i.cz, 16                       ; 2 uses
  %i.db = add i32 %i.da, %spec.store.select
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %2, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = sext i32 %i.da to i64
  %i.dg = getelementptr inbounds i8, ptr %1, i64 %i.df
  store i8 %i.de, ptr %i.dg, align 1
  %i.dh = trunc i64 %indvars.iv38.1 to i32
  %i.di = add i32 %i.dh, 17                       ; 2 uses
  %i.dj = add i32 %i.di, %spec.store.select
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %2, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = sext i32 %i.di to i64
  %i.do = getelementptr inbounds i8, ptr %1, i64 %i.dn
  store i8 %i.dm, ptr %i.do, align 1
  %indvars.iv.next39.1.1 = add nuw nsw i64 %indvars.iv38.1, 2 ; 2 uses
  %niter163.next.1 = add i64 %niter163, 2         ; 2 uses
  %niter163.ncmp.1 = icmp eq i64 %niter163.next.1, %unroll_iter162
  br i1 %niter163.ncmp.1, label %iter.check135.unr-lcssa, label %bb.c, !llvm.loop !68

iter.check135.unr-lcssa:                          ; preds = %bb.c
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %iter.check135, label %.epil.preheader158

.epil.preheader158:                               ; preds = %iter.check135.unr-lcssa, %..preheader_crit_edge.us.us.preheader
  %indvars.iv38.1.epil.init = phi i64 [ 0, %..preheader_crit_edge.us.us.preheader ], [ %indvars.iv.next39.1.1, %iter.check135.unr-lcssa ]
  %lcmp.mod161 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.dp = trunc i64 %indvars.iv38.1.epil.init to i32
  %i.dq = add i32 %i.dp, 16                       ; 2 uses
  %i.dr = add i32 %i.dq, %spec.store.select
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds i8, ptr %2, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = sext i32 %i.dq to i64
  %i.dw = getelementptr inbounds i8, ptr %1, i64 %i.dv
  store i8 %i.du, ptr %i.dw, align 1
  br label %iter.check135

iter.check135:                                    ; preds = %iter.check135.unr-lcssa, %.epil.preheader158
  %i.dx = sub i32 17, %spec.store.select
  %i.dy = zext i32 %i.dx to i64
  %i.dz = sub nsw i64 17, %i.dy                   ; 7 uses
  %min.iters.check123 = icmp ult i64 %i.dz, 8
  br i1 %min.iters.check123, label %..preheader_crit_edge.us.us.1.preheader, label %vector.scevcheck122

vector.scevcheck122:                              ; preds = %iter.check135
  %i.ea = sub i32 17, %spec.store.select
  %i.eb = zext i32 %i.ea to i64
  %i.ec = sub nsw i64 16, %i.eb                   ; 2 uses
  %i.ed = trunc i64 %i.ec to i32                  ; 2 uses
  %i.ee = add i32 %spec.store.select, -18
  %i.ef = icmp ult i32 %i.ee, %i.ed
  %i.eg = sub i32 32, %spec.store.select          ; 2 uses
  %i.eh = add i32 %i.eg, %i.ed
  %i.ei = icmp slt i32 %i.eh, %i.eg
  %i.ej = icmp ugt i64 %i.ec, 4294967295
  %i.ek = or i1 %i.ei, %i.ej
  %i.el = or i1 %i.ef, %i.ek
  br i1 %i.el, label %..preheader_crit_edge.us.us.1.preheader, label %vector.main.loop.iter.check124

vector.main.loop.iter.check124:                   ; preds = %vector.scevcheck122
  %min.iters.check125 = icmp ult i64 %i.dz, 32
  br i1 %min.iters.check125, label %vec.epilog.ph139, label %vector.ph126

vector.ph126:                                     ; preds = %vector.main.loop.iter.check124
  %i.em = and i64 %i.dz, 24
  %n.vec127 = and i64 %i.dz, -32                  ; 4 uses
  %i.en = or disjoint i64 %n.vec127, %i.an
  br label %vector.body128

vector.body128:                                   ; preds = %vector.ph126, %vector.body128
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next130, %vector.body128 ] ; 2 uses
  %i.eo = or disjoint i64 %index129, %i.an
  %i.ep = shl i64 %i.eo, 32
  %i.eq = ashr exact i64 %i.ep, 32
  %i.er = getelementptr i8, ptr %1, i64 %i.eq     ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 16
  %i.et = getelementptr i8, ptr %i.er, i64 32
  store <16 x i8> zeroinitializer, ptr %i.es, align 1
  store <16 x i8> zeroinitializer, ptr %i.et, align 1
  %index.next130 = add nuw i64 %index129, 32      ; 2 uses
  %i.eu = icmp eq i64 %index.next130, %n.vec127
  br i1 %i.eu, label %middle.block131, label %vector.body128, !llvm.loop !69

middle.block131:                                  ; preds = %vector.body128
  %cmp.n132 = icmp eq i64 %i.dz, %n.vec127
  br i1 %cmp.n132, label %.split27.us, label %vec.epilog.iter.check137

vec.epilog.iter.check137:                         ; preds = %middle.block131
  %min.epilog.iters.check138 = icmp eq i64 %i.em, 0
  br i1 %min.epilog.iters.check138, label %..preheader_crit_edge.us.us.1.preheader, label %vec.epilog.ph139, !prof !18

vec.epilog.ph139:                                 ; preds = %vector.main.loop.iter.check124, %vec.epilog.iter.check137
  %vec.epilog.resume.val133 = phi i64 [ %n.vec127, %vec.epilog.iter.check137 ], [ 0, %vector.main.loop.iter.check124 ]
  %n.vec140 = and i64 %i.dz, -8                   ; 3 uses
  %i.ev = add nsw i64 %n.vec140, %i.an
  br label %vec.epilog.vector.body141

vec.epilog.vector.body141:                        ; preds = %vec.epilog.vector.body141, %vec.epilog.ph139
  %index142 = phi i64 [ %vec.epilog.resume.val133, %vec.epilog.ph139 ], [ %index.next143, %vec.epilog.vector.body141 ] ; 2 uses
  %i.ew = add nuw i64 %index142, %i.an
  %i.ex = shl i64 %i.ew, 32
  %i.ey = add i64 %i.ex, 68719476736
  %i.ez = ashr exact i64 %i.ey, 32
  %i.fa = getelementptr inbounds i8, ptr %1, i64 %i.ez
  store <8 x i8> zeroinitializer, ptr %i.fa, align 1
  %index.next143 = add nuw i64 %index142, 8       ; 2 uses
  %i.fb = icmp eq i64 %index.next143, %n.vec140
  br i1 %i.fb, label %vec.epilog.middle.block144, label %vec.epilog.vector.body141, !llvm.loop !70

vec.epilog.middle.block144:                       ; preds = %vec.epilog.vector.body141
  %cmp.n145 = icmp eq i64 %i.dz, %n.vec140
  br i1 %cmp.n145, label %.split27.us, label %..preheader_crit_edge.us.us.1.preheader

..preheader_crit_edge.us.us.1.preheader:          ; preds = %iter.check135, %vector.scevcheck122, %vec.epilog.iter.check137, %vec.epilog.middle.block144
  %indvars.iv43.1.ph = phi i64 [ %i.an, %iter.check135 ], [ %i.an, %vector.scevcheck122 ], [ %i.en, %vec.epilog.iter.check137 ], [ %i.ev, %vec.epilog.middle.block144 ]
  br label %..preheader_crit_edge.us.us.1

..preheader_crit_edge.us.us.1:                    ; preds = %..preheader_crit_edge.us.us.1.preheader, %..preheader_crit_edge.us.us.1
  %indvars.iv43.1 = phi i64 [ %indvars.iv.next44.1, %..preheader_crit_edge.us.us.1 ], [ %indvars.iv43.1.ph, %..preheader_crit_edge.us.us.1.preheader ] ; 2 uses
  %i.fc = shl i64 %indvars.iv43.1, 32
  %sext57 = add i64 %i.fc, 68719476736
  %i.fd = ashr exact i64 %sext57, 32
  %i.fe = getelementptr inbounds i8, ptr %1, i64 %i.fd
  store i8 0, ptr %i.fe, align 1
  %indvars.iv.next44.1 = add nuw nsw i64 %indvars.iv43.1, 1 ; 2 uses
  %i.ff = and i64 %indvars.iv.next44.1, 4294967295
  %exitcond46.1.not = icmp eq i64 %i.ff, 16
  br i1 %exitcond46.1.not, label %.split27.us, label %..preheader_crit_edge.us.us.1, !llvm.loop !71

.preheader21.us.preheader:                        ; preds = %.preheader21.us.preheader.prol.loopexit, %.preheader21.us.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.1150, %.preheader21.us.preheader ], [ %indvars.iv.unr, %.preheader21.us.preheader.prol.loopexit ] ; 4 uses
  %i.fg = trunc nuw i64 %indvars.iv to i32
  %i.fh = add i32 %spec.store.select, %i.fg
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds i8, ptr %2, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1
  %sext55 = shl i64 %indvars.iv, 32
  %i.fl = ashr exact i64 %sext55, 32
  %i.fm = getelementptr inbounds i8, ptr %1, i64 %i.fl
  store i8 %i.fk, ptr %i.fm, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fn = trunc nuw i64 %indvars.iv.next to i32
  %i.fo = add i32 %spec.store.select, %i.fn
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds i8, ptr %2, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1
  %sext55.1 = shl i64 %indvars.iv.next, 32
  %i.fs = ashr exact i64 %sext55.1, 32
  %i.ft = getelementptr inbounds i8, ptr %1, i64 %i.fs
  store i8 %i.fr, ptr %i.ft, align 1
  %indvars.iv.next.1150 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1150, %i.an
  br i1 %exitcond.not.1, label %vector.scevcheck92, label %.preheader21.us.preheader, !llvm.loop !72

vector.scevcheck92:                               ; preds = %.preheader21.us.preheader.prol.loopexit, %.preheader21.us.preheader, %middle.block77, %vec.epilog.middle.block90
  %i.fu = add nsw i64 %i.an, -1                   ; 2 uses
  %i.fv = trunc nsw i64 %i.fu to i32
  %i.fw = icmp ugt i64 %i.fu, 2147483631
  %i.fx = add nsw i32 %spec.store.select, 16      ; 2 uses
  %i.fy = add i32 %i.fx, %i.fv
  %i.fz = icmp slt i32 %i.fy, %i.fx
  %i.ga = or i1 %i.fz, %i.fw
  br i1 %i.ga, label %..preheader_crit_edge.us.preheader, label %vector.memcheck93

vector.memcheck93:                                ; preds = %vector.scevcheck92
  %6 = ptrtoaddr ptr %1 to i64
  %7 = ptrtoaddr ptr %2 to i64
  %i.gb = tail call i32 @llvm.smin.i32(i32 %i.a, i32 16)
  %smin94 = sext i32 %i.gb to i64
  %i.gc = add i64 %7, %smin94
  %i.gd = sub i64 %i.gc, %6
  %diff.check95 = icmp ugt i64 %i.gd, -32
  br i1 %diff.check95, label %..preheader_crit_edge.us.preheader, label %vector.main.loop.iter.check97

vector.main.loop.iter.check97:                    ; preds = %vector.memcheck93
  %min.iters.check98 = icmp ult i32 %i.b, 32
  br i1 %min.iters.check98, label %vec.epilog.ph113, label %vector.ph99

vector.ph99:                                      ; preds = %vector.main.loop.iter.check97
  %i.ge = and i64 %i.an, 28
  %n.vec100 = and i64 %i.an, 2147483616           ; 4 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.ph99, %vector.body101
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next105, %vector.body101 ] ; 2 uses
  %i.gf = trunc i64 %index102 to i32
  %i.gg = or disjoint i32 %i.gf, 16               ; 2 uses
  %i.gh = add i32 %i.gg, %spec.store.select
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds i8, ptr %2, i64 %i.gi ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %wide.load103 = load <16 x i8>, ptr %i.gj, align 1
  %wide.load104 = load <16 x i8>, ptr %i.gk, align 1
  %i.gl = sext i32 %i.gg to i64
  %i.gm = getelementptr inbounds i8, ptr %1, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <16 x i8> %wide.load103, ptr %i.gm, align 1
  store <16 x i8> %wide.load104, ptr %i.gn, align 1
  %index.next105 = add nuw i64 %index102, 32      ; 2 uses
  %i.go = icmp eq i64 %index.next105, %n.vec100
  br i1 %i.go, label %middle.block106, label %vector.body101, !llvm.loop !73

middle.block106:                                  ; preds = %vector.body101
  %cmp.n107 = icmp eq i64 %n.vec100, %i.an
  br i1 %cmp.n107, label %.split27.us, label %vec.epilog.iter.check111

vec.epilog.iter.check111:                         ; preds = %middle.block106
  %min.epilog.iters.check112 = icmp eq i64 %i.ge, 0
  br i1 %min.epilog.iters.check112, label %..preheader_crit_edge.us.preheader, label %vec.epilog.ph113, !prof !16

vec.epilog.ph113:                                 ; preds = %vector.main.loop.iter.check97, %vec.epilog.iter.check111
  %vec.epilog.resume.val108 = phi i64 [ %n.vec100, %vec.epilog.iter.check111 ], [ 0, %vector.main.loop.iter.check97 ]
  %n.vec114 = and i64 %i.an, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body115

vec.epilog.vector.body115:                        ; preds = %vec.epilog.vector.body115, %vec.epilog.ph113
  %index116 = phi i64 [ %vec.epilog.resume.val108, %vec.epilog.ph113 ], [ %index.next118, %vec.epilog.vector.body115 ] ; 2 uses
  %i.gp = trunc i64 %index116 to i32
  %i.gq = add i32 %i.gp, 16                       ; 2 uses
  %i.gr = add i32 %i.gq, %spec.store.select
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds i8, ptr %2, i64 %i.gs
  %wide.load117 = load <4 x i8>, ptr %i.gt, align 1
  %i.gu = sext i32 %i.gq to i64
  %i.gv = getelementptr inbounds i8, ptr %1, i64 %i.gu
  store <4 x i8> %wide.load117, ptr %i.gv, align 1
  %index.next118 = add nuw i64 %index116, 4       ; 2 uses
  %i.gw = icmp eq i64 %index.next118, %n.vec114
  br i1 %i.gw, label %vec.epilog.middle.block119, label %vec.epilog.vector.body115, !llvm.loop !74

vec.epilog.middle.block119:                       ; preds = %vec.epilog.vector.body115
  %cmp.n120 = icmp eq i64 %n.vec114, %i.an
  br i1 %cmp.n120, label %.split27.us, label %..preheader_crit_edge.us.preheader

..preheader_crit_edge.us.preheader:               ; preds = %vector.scevcheck92, %vector.memcheck93, %vec.epilog.iter.check111, %vec.epilog.middle.block119
  %indvars.iv.135.ph = phi i64 [ 0, %vector.scevcheck92 ], [ 0, %vector.memcheck93 ], [ %n.vec100, %vec.epilog.iter.check111 ], [ %n.vec114, %vec.epilog.middle.block119 ] ; 4 uses
  %xtraiter151 = and i64 %i.an, 1
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %..preheader_crit_edge.us.prol.loopexit, label %..preheader_crit_edge.us.prol

..preheader_crit_edge.us.prol:                    ; preds = %..preheader_crit_edge.us.preheader
  %i.gx = trunc nuw nsw i64 %indvars.iv.135.ph to i32
  %i.gy = add nuw i32 %i.gx, 16                   ; 2 uses
  %i.gz = add i32 %i.gy, %spec.store.select
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds i8, ptr %2, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = sext i32 %i.gy to i64
  %i.he = getelementptr inbounds i8, ptr %1, i64 %i.hd
  store i8 %i.hc, ptr %i.he, align 1
  %indvars.iv.next.136.prol = or disjoint i64 %indvars.iv.135.ph, 1
  br label %..preheader_crit_edge.us.prol.loopexit

..preheader_crit_edge.us.prol.loopexit:           ; preds = %..preheader_crit_edge.us.prol, %..preheader_crit_edge.us.preheader
  %indvars.iv.135.unr = phi i64 [ %indvars.iv.135.ph, %..preheader_crit_edge.us.preheader ], [ %indvars.iv.next.136.prol, %..preheader_crit_edge.us.prol ]
  %i.hf = add nsw i64 %i.an, -1
  %i.hg = icmp eq i64 %indvars.iv.135.ph, %i.hf
  br i1 %i.hg, label %.split27.us, label %..preheader_crit_edge.us

..preheader_crit_edge.us:                         ; preds = %..preheader_crit_edge.us.prol.loopexit, %..preheader_crit_edge.us
  %indvars.iv.135 = phi i64 [ %indvars.iv.next.136.1, %..preheader_crit_edge.us ], [ %indvars.iv.135.unr, %..preheader_crit_edge.us.prol.loopexit ] ; 3 uses
  %i.hh = trunc i64 %indvars.iv.135 to i32
  %i.hi = add i32 %i.hh, 16                       ; 2 uses
  %i.hj = add i32 %i.hi, %spec.store.select
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds i8, ptr %2, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = sext i32 %i.hi to i64
  %i.ho = getelementptr inbounds i8, ptr %1, i64 %i.hn
  store i8 %i.hm, ptr %i.ho, align 1
  %i.hp = trunc i64 %indvars.iv.135 to i32
  %i.hq = add i32 %i.hp, 17                       ; 2 uses
  %i.hr = add i32 %i.hq, %spec.store.select
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds i8, ptr %2, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1
  %i.hv = sext i32 %i.hq to i64
  %i.hw = getelementptr inbounds i8, ptr %1, i64 %i.hv
  store i8 %i.hu, ptr %i.hw, align 1
  %indvars.iv.next.136.1 = add nuw nsw i64 %indvars.iv.135, 2 ; 2 uses
  %exitcond.137.not.1 = icmp eq i64 %indvars.iv.next.136.1, %i.an
  br i1 %exitcond.137.not.1, label %.split27.us, label %..preheader_crit_edge.us, !llvm.loop !75

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.1.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.hx = shl i64 %indvars.iv.1, 32
  %sext = add i64 %i.hx, 68719476736
  %i.hy = ashr exact i64 %sext, 32
  %i.hz = getelementptr inbounds i8, ptr %1, i64 %i.hy
  store i8 0, ptr %i.hz, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.ia = and i64 %indvars.iv.next.1, 4294967295
  %exitcond.1.not = icmp eq i64 %i.ia, 16
  br i1 %exitcond.1.not, label %.split27.us, label %vec.epilog.scalar.ph, !llvm.loop !76

.split27.us:                                      ; preds = %vec.epilog.scalar.ph, %..preheader_crit_edge.us.prol.loopexit, %..preheader_crit_edge.us, %..preheader_crit_edge.us.us.1, %middle.block, %vec.epilog.middle.block, %middle.block106, %vec.epilog.middle.block119, %middle.block131, %vec.epilog.middle.block144
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pslldq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr %3, align 8                ; 4 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.a, i32 16) ; 23 uses
  %.not21 = icmp sgt i32 %i.a, 15
  br i1 %.not21, label %.preheader20.us.preheader, label %.split

.preheader20.us.preheader:                        ; preds = %bb.a
  %i.b = add nsw i32 %spec.store.select, -1
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 1
  %i.e = add nuw nsw i64 %i.d, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, i8 0, i64 %i.e, i1 false)
  br label %.split27.us.split

.split:                                           ; preds = %bb.a
  %i.f = icmp sgt i32 %i.a, 0
  br i1 %i.f, label %.preheader20.us28.preheader, label %iter.check

iter.check:                                       ; preds = %.split
  %i.g = sext i32 %spec.store.select to i64       ; 5 uses
  %i.h = sub nsw i64 16, %i.g                     ; 13 uses
  %i.i = sub nsw i64 15, %i.g                     ; 2 uses
  %i.j = sub i32 15, %spec.store.select           ; 2 uses
  %i.k = trunc i64 %i.i to i32
  %i.l = sub i32 %i.j, %i.k
  %i.m = icmp sgt i32 %i.l, %i.j
  %i.n = icmp ugt i64 %i.i, 4294967295
  %i.o = or i1 %i.m, %i.n
  br i1 %i.o, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %4 = ptrtoaddr ptr %2 to i64
  %i.p = sub i32 15, %spec.store.select
  %i.q = sext i32 %i.p to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.r = add i64 %4, %i.q
  %i.s = sub i64 %i.r, %5
  %i.t = add i64 %i.s, -16
  %diff.check = icmp ult i64 %i.t, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i64 %i.h, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.h, 24
  %n.vec = and i64 %i.h, -32                      ; 4 uses
  %i.v = sub nsw i64 15, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = sub i64 15, %index                       ; 2 uses
  %i.x = trunc nsw i64 %i.w to i32
  %i.y = sub i32 %i.x, %spec.store.select
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -15
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ab, align 1
  %wide.load53 = load <16 x i8>, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds i8, ptr %1, i64 %i.w ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -15
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -31
  store <16 x i8> %wide.load, ptr %i.ae, align 1
  store <16 x i8> %wide.load53, ptr %i.af, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %iter.check76, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.h, -8                     ; 3 uses
  %i.ah = sub nsw i64 15, %n.vec54
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.ai = sub i64 15, %index55                    ; 2 uses
  %i.aj = trunc nsw i64 %i.ai to i32
  %i.ak = sub i32 %i.aj, %spec.store.select
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -7
  %wide.load56 = load <8 x i8>, ptr %i.an, align 1
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %i.ai
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -7
  store <8 x i8> %wide.load56, ptr %i.ap, align 1
  %index.next57 = add nuw i64 %index55, 8         ; 2 uses
  %i.aq = icmp eq i64 %index.next57, %n.vec54
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.h, %n.vec54
  br i1 %cmp.n58, label %iter.check76, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 15, %iter.check ], [ 15, %vector.memcheck ], [ %i.v, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader20.us28.preheader:                      ; preds = %.split
  %i.ar = zext nneg i32 %spec.store.select to i64 ; 2 uses
  %i.as = zext nneg i32 %spec.store.select to i64 ; 2 uses
  %i.at = sub nsw i64 16, %i.ar                   ; 2 uses
  %xtraiter = and i64 %i.at, 3                    ; 3 uses
  %i.au = add nsw i32 %spec.store.select, -13
  %i.av = icmp ult i32 %i.au, 3
  br i1 %i.av, label %.epil.preheader, label %.preheader20.us28.preheader.new

.preheader20.us28.preheader.new:                  ; preds = %.preheader20.us28.preheader
  %unroll_iter = and i64 %i.at, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader20.us28.preheader.new
  %indvars.iv39 = phi i64 [ 15, %.preheader20.us28.preheader.new ], [ %indvars.iv.next40.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader20.us28.preheader.new ], [ %niter.next.3, %bb.b ]
  %i.aw = trunc nsw i64 %indvars.iv39 to i32
  %i.ax = sub i32 %i.aw, %spec.store.select
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %2, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = getelementptr inbounds i8, ptr %1, i64 %indvars.iv39
  store i8 %i.ba, ptr %i.bb, align 1
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, -1 ; 2 uses
  %i.bc = trunc nsw i64 %indvars.iv.next40 to i32
  %i.bd = sub i32 %i.bc, %spec.store.select
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40
  store i8 %i.bg, ptr %i.bh, align 1
  %indvars.iv.next40.197 = add nsw i64 %indvars.iv39, -2 ; 2 uses
  %i.bi = trunc nsw i64 %indvars.iv.next40.197 to i32
  %i.bj = sub i32 %i.bi, %spec.store.select
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %2, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40.197
  store i8 %i.bm, ptr %i.bn, align 1
  %indvars.iv.next40.2 = add nsw i64 %indvars.iv39, -3 ; 2 uses
  %i.bo = trunc nsw i64 %indvars.iv.next40.2 to i32
  %i.bp = sub i32 %i.bo, %spec.store.select
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40.2
  store i8 %i.bs, ptr %i.bt, align 1
  %indvars.iv.next40.3 = add nsw i64 %indvars.iv39, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %..preheader_crit_edge.us.preheader.unr-lcssa, label %bb.b, !llvm.loop !79

..preheader_crit_edge.us.preheader.unr-lcssa:     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.preheader.unr-lcssa, %.preheader20.us28.preheader
  %indvars.iv39.epil.init = phi i64 [ 15, %.preheader20.us28.preheader ], [ %indvars.iv.next40.3, %..preheader_crit_edge.us.preheader.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv39.epil = phi i64 [ %indvars.iv.next40.epil, %bb.c ], [ %indvars.iv39.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.bu = trunc nsw i64 %indvars.iv39.epil to i32
  %i.bv = sub i32 %i.bu, %spec.store.select
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %2, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %indvars.iv39.epil
  store i8 %i.by, ptr %i.bz, align 1
  %indvars.iv.next40.epil = add nsw i64 %indvars.iv39.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us.preheader, label %bb.c, !llvm.loop !80

..preheader_crit_edge.us.preheader:               ; preds = %bb.c, %..preheader_crit_edge.us.preheader.unr-lcssa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.as, i1 false)
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 15)
  %i.ca = sub nuw nsw i64 16, %umin               ; 3 uses
  %xtraiter99 = and i64 %i.ca, 1
  %i.cb = icmp eq i32 %i.a, 15
  br i1 %i.cb, label %.epil.preheader98, label %..preheader_crit_edge.us.preheader.new

..preheader_crit_edge.us.preheader.new:           ; preds = %..preheader_crit_edge.us.preheader
  %unroll_iter103 = and i64 %i.ca, 30
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %..preheader_crit_edge.us.preheader.new
  %indvars.iv39.1 = phi i64 [ 15, %..preheader_crit_edge.us.preheader.new ], [ %indvars.iv.next40.1.1, %bb.d ] ; 3 uses
  %niter104 = phi i64 [ 0, %..preheader_crit_edge.us.preheader.new ], [ %niter104.next.1, %bb.d ]
  %i.cc = add nuw nsw i64 %indvars.iv39.1, 16     ; 2 uses
  %i.cd = trunc nsw i64 %i.cc to i32
  %i.ce = sub i32 %i.cd, %spec.store.select
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds i8, ptr %2, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = getelementptr inbounds i8, ptr %1, i64 %i.cc
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = add nsw i64 %indvars.iv39.1, 15         ; 2 uses
  %i.ck = trunc nsw i64 %i.cj to i32
  %i.cl = sub i32 %i.ck, %spec.store.select
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %2, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = getelementptr inbounds i8, ptr %1, i64 %i.cj
  store i8 %i.co, ptr %i.cp, align 1
  %indvars.iv.next40.1.1 = add nsw i64 %indvars.iv39.1, -2 ; 2 uses
  %niter104.next.1 = add i64 %niter104, 2         ; 2 uses
  %niter104.ncmp.1.not = icmp eq i64 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1.not, label %..preheader_crit_edge.us.preheader.1.unr-lcssa, label %bb.d, !llvm.loop !79

..preheader_crit_edge.us.preheader.1.unr-lcssa:   ; preds = %bb.d
  %lcmp.mod101.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod101.not, label %..preheader_crit_edge.us.preheader.1, label %.epil.preheader98

.epil.preheader98:                                ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %..preheader_crit_edge.us.preheader
  %indvars.iv39.1.epil.init = phi i64 [ 15, %..preheader_crit_edge.us.preheader ], [ %indvars.iv.next40.1.1, %..preheader_crit_edge.us.preheader.1.unr-lcssa ]
  %lcmp.mod102 = trunc i64 %i.ca to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.cq = add nuw nsw i64 %indvars.iv39.1.epil.init, 16 ; 2 uses
  %i.cr = trunc nsw i64 %i.cq to i32
  %i.cs = sub i32 %i.cr, %spec.store.select
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %2, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = getelementptr inbounds i8, ptr %1, i64 %i.cq
  store i8 %i.cv, ptr %i.cw, align 1
  br label %..preheader_crit_edge.us.preheader.1

..preheader_crit_edge.us.preheader.1:             ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %.epil.preheader98
  %scevgep.1 = getelementptr i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.1, i8 0, i64 %i.as, i1 false)
  br label %.split27.us.split

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.preheader, %..preheader_crit_edge
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %..preheader_crit_edge ], [ %indvars.iv.1.ph, %..preheader_crit_edge.preheader ] ; 3 uses
  %i.cx = add nsw i64 %indvars.iv.1, 16           ; 2 uses
  %i.cy = trunc nsw i64 %i.cx to i32
  %i.cz = sub i32 %i.cy, %spec.store.select
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %2, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = getelementptr inbounds i8, ptr %1, i64 %i.cx
  store i8 %i.dc, ptr %i.dd, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, -1
  %.not.1.not = icmp sgt i64 %indvars.iv.1, %i.g
  br i1 %.not.1.not, label %..preheader_crit_edge, label %.split27.us.split, !llvm.loop !81

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.de = trunc nsw i64 %indvars.iv to i32
  %i.df = sub i32 %i.de, %spec.store.select
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr %2, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  store i8 %i.di, ptr %i.dj, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.g
  br i1 %.not.not, label %vec.epilog.scalar.ph, label %iter.check76, !llvm.loop !82

iter.check76:                                     ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %min.iters.check63 = icmp ult i64 %i.h, 8
  br i1 %min.iters.check63, label %..preheader_crit_edge.preheader, label %vector.scevcheck60

vector.scevcheck60:                               ; preds = %iter.check76
  %i.dk = sub nsw i64 15, %i.g                    ; 2 uses
  %i.dl = sub i32 31, %spec.store.select          ; 2 uses
  %i.dm = trunc i64 %i.dk to i32
  %i.dn = sub i32 %i.dl, %i.dm
  %i.do = icmp sgt i32 %i.dn, %i.dl
  %i.dp = icmp ugt i64 %i.dk, 4294967295
  %i.dq = or i1 %i.do, %i.dp
  br i1 %i.dq, label %..preheader_crit_edge.preheader, label %vector.memcheck61

vector.memcheck61:                                ; preds = %vector.scevcheck60
  %6 = ptrtoaddr ptr %2 to i64
  %i.dr = sub i32 31, %spec.store.select
  %i.ds = sext i32 %i.dr to i64
  %7 = ptrtoaddr ptr %1 to i64
  %i.dt = add i64 %6, %i.ds
  %i.du = sub i64 %i.dt, %7
  %i.dv = add i64 %i.du, -32
  %diff.check62 = icmp ult i64 %i.dv, 31
  br i1 %diff.check62, label %..preheader_crit_edge.preheader, label %vector.main.loop.iter.check64

vector.main.loop.iter.check64:                    ; preds = %vector.memcheck61
  %min.iters.check65 = icmp ult i64 %i.h, 32
  br i1 %min.iters.check65, label %vec.epilog.ph80, label %vector.ph66

vector.ph66:                                      ; preds = %vector.main.loop.iter.check64
  %i.dw = and i64 %i.h, 24
  %n.vec67 = and i64 %i.h, -32                    ; 4 uses
  %i.dx = sub nsw i64 15, %n.vec67
  br label %vector.body68

vector.body68:                                    ; preds = %vector.ph66, %vector.body68
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next72, %vector.body68 ] ; 2 uses
  %i.dy = sub i64 31, %index69                    ; 2 uses
  %i.dz = trunc nsw i64 %i.dy to i32
  %i.ea = sub i32 %i.dz, %spec.store.select
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %2, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -15
  %i.ee = getelementptr inbounds i8, ptr %i.ec, i64 -31
  %wide.load70 = load <16 x i8>, ptr %i.ed, align 1
  %wide.load71 = load <16 x i8>, ptr %i.ee, align 1
  %i.ef = getelementptr inbounds i8, ptr %1, i64 %i.dy ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -15
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 -31
  store <16 x i8> %wide.load70, ptr %i.eg, align 1
  store <16 x i8> %wide.load71, ptr %i.eh, align 1
  %index.next72 = add nuw i64 %index69, 32        ; 2 uses
  %i.ei = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.ei, label %middle.block73, label %vector.body68, !llvm.loop !83

middle.block73:                                   ; preds = %vector.body68
  %cmp.n74 = icmp eq i64 %i.h, %n.vec67
  br i1 %cmp.n74, label %.split27.us.split, label %vec.epilog.iter.check78

vec.epilog.iter.check78:                          ; preds = %middle.block73
  %min.epilog.iters.check79 = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check79, label %..preheader_crit_edge.preheader, label %vec.epilog.ph80, !prof !18

vec.epilog.ph80:                                  ; preds = %vector.main.loop.iter.check64, %vec.epilog.iter.check78
  %vec.epilog.resume.val75 = phi i64 [ %n.vec67, %vec.epilog.iter.check78 ], [ 0, %vector.main.loop.iter.check64 ]
  %n.vec81 = and i64 %i.h, -8                     ; 3 uses
  %i.ej = sub nsw i64 15, %n.vec81
  br label %vec.epilog.vector.body82

vec.epilog.vector.body82:                         ; preds = %vec.epilog.vector.body82, %vec.epilog.ph80
  %index83 = phi i64 [ %vec.epilog.resume.val75, %vec.epilog.ph80 ], [ %index.next85, %vec.epilog.vector.body82 ] ; 2 uses
  %i.ek = sub i64 31, %index83                    ; 2 uses
  %i.el = trunc nsw i64 %i.ek to i32
  %i.em = sub i32 %i.el, %spec.store.select
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %2, i64 %i.en
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -7
  %wide.load84 = load <8 x i8>, ptr %i.ep, align 1
  %i.eq = getelementptr inbounds i8, ptr %1, i64 %i.ek
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -7
  store <8 x i8> %wide.load84, ptr %i.er, align 1
  %index.next85 = add nuw i64 %index83, 8         ; 2 uses
  %i.es = icmp eq i64 %index.next85, %n.vec81
  br i1 %i.es, label %vec.epilog.middle.block86, label %vec.epilog.vector.body82, !llvm.loop !84

vec.epilog.middle.block86:                        ; preds = %vec.epilog.vector.body82
  %cmp.n87 = icmp eq i64 %i.h, %n.vec81
  br i1 %cmp.n87, label %.split27.us.split, label %..preheader_crit_edge.preheader

..preheader_crit_edge.preheader:                  ; preds = %iter.check76, %vector.scevcheck60, %vector.memcheck61, %vec.epilog.iter.check78, %vec.epilog.middle.block86
  %indvars.iv.1.ph = phi i64 [ 15, %iter.check76 ], [ 15, %vector.scevcheck60 ], [ 15, %vector.memcheck61 ], [ %i.dx, %vec.epilog.iter.check78 ], [ %i.ej, %vec.epilog.middle.block86 ]
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
  %i.h = load <8 x i16>, ptr %3, align 2
  %i.i = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.g, <8 x i16> %i.h)
  store <8 x i16> %i.i, ptr %1, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load <8 x i16>, ptr %i.j, align 2
  %i.n = load <8 x i16>, ptr %i.k, align 2
  %i.o = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> %i.n)
  store <8 x i16> %i.o, ptr %i.l, align 2
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.p = load i16, ptr %2, align 2
  %i.q = load i16, ptr %3, align 2
  %i.r = tail call i16 @llvm.umulh.i16(i16 %i.p, i16 %i.q)
  store i16 %i.r, ptr %1, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.t = load i16, ptr %i.s, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.v = load i16, ptr %i.u, align 2
  %i.w = tail call i16 @llvm.umulh.i16(i16 %i.t, i16 %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.w, ptr %i.x, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = tail call i16 @llvm.umulh.i16(i16 %i.z, i16 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = tail call i16 @llvm.umulh.i16(i16 %i.af, i16 %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.ai, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = tail call i16 @llvm.umulh.i16(i16 %i.al, i16 %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.at = load i16, ptr %i.as, align 2
  %i.au = tail call i16 @llvm.umulh.i16(i16 %i.ar, i16 %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.au, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = tail call i16 @llvm.umulh.i16(i16 %i.ax, i16 %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = tail call i16 @llvm.umulh.i16(i16 %i.bd, i16 %i.bf)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = tail call i16 @llvm.umulh.i16(i16 %i.bj, i16 %i.bl)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.bm, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = tail call i16 @llvm.umulh.i16(i16 %i.bp, i16 %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = tail call i16 @llvm.umulh.i16(i16 %i.bv, i16 %i.bx)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.by, ptr %i.bz, align 2
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = tail call i16 @llvm.umulh.i16(i16 %i.cb, i16 %i.cd)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.ce, ptr %i.cf, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ch = load i16, ptr %i.cg, align 2
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = tail call i16 @llvm.umulh.i16(i16 %i.ch, i16 %i.cj)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.ck, ptr %i.cl, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 26
end_hunk_1
