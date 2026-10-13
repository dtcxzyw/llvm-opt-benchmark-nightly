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
  %i.g = icmp samesign ult i32 %i.d, 16
  %wide.trip.count34 = zext nneg i32 %i.d to i64  ; 13 uses
  br i1 %i.g, label %.preheader21.us.us.preheader, label %vector.scevcheck

.preheader21.us.us.preheader:                     ; preds = %.split.us
  %xtraiter47 = and i64 %wide.trip.count34, 3     ; 3 uses
  %i.h = icmp ult i32 %i.d, 4
  br i1 %i.h, label %.preheader21.us.us.epil.preheader, label %.preheader21.us.us.preheader.new

.preheader21.us.us.preheader.new:                 ; preds = %.preheader21.us.us.preheader
  %unroll_iter = and i64 %wide.trip.count34, 12
  br label %.preheader21.us.us

vector.scevcheck:                                 ; preds = %.split.us
  %i.i = add nsw i64 %wide.trip.count34, -1       ; 2 uses
  %i.j = trunc nsw i64 %i.i to i32
  %i.k = add i32 %spec.store.select, %i.j
  %i.l = icmp slt i32 %i.k, %spec.store.select
  %i.m = icmp ugt i64 %i.i, 4294967295
  %i.n = or i1 %i.l, %i.m
  br i1 %i.n, label %.preheader21.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.o = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16)
  %smin = sext i32 %i.o to i64
  %i.p = add i64 %i.a, %smin
  %i.q = sub i64 %i.p, %i.b
  %diff.check = icmp ugt i64 %i.q, -32
  br i1 %diff.check, label %.preheader21.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i32 %i.d, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %wide.trip.count34, 28
  %n.vec = and i64 %wide.trip.count34, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = trunc nuw nsw i64 %index to i32
  %i.t = add i32 %spec.store.select, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %2, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <16 x i8>, ptr %i.v, align 1
  %wide.load41 = load <16 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %wide.load, ptr %i.x, align 1
  store <16 x i8> %wide.load41, ptr %i.y, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count34
  br i1 %cmp.n, label %.split26.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %.preheader21.us.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %wide.trip.count34, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = trunc nuw nsw i64 %index43 to i32
  %i.ab = add i32 %spec.store.select, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %i.ac
  %wide.load44 = load <4 x i8>, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %index43
  store <4 x i8> %wide.load44, ptr %i.ae, align 1
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

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
  %i.ag = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.ah = add i32 %spec.store.select, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.ak, ptr %i.al, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader21.us.prol.loopexit, label %.preheader21.us.prol, !llvm.loop !32

.preheader21.us.prol.loopexit:                    ; preds = %.preheader21.us.prol, %.preheader21.us.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader21.us.preheader ], [ %indvars.iv.next.prol, %.preheader21.us.prol ]
  %i.am = sub nsw i64 %indvars.iv.ph, %wide.trip.count34
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %.split26.us, label %.preheader21.us

.preheader21.us.us:                               ; preds = %.preheader21.us.us, %.preheader21.us.us.preheader.new
  %indvars.iv31 = phi i64 [ 0, %.preheader21.us.us.preheader.new ], [ %indvars.iv.next32.3, %.preheader21.us.us ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader21.us.us.preheader.new ], [ %niter.next.3, %.preheader21.us.us ]
  %i.ao = trunc nuw nsw i64 %indvars.iv31 to i32
  %i.ap = add i32 %spec.store.select, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %2, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv31
  store i8 %i.as, ptr %i.at, align 1
  %indvars.iv.next32 = or disjoint i64 %indvars.iv31, 1 ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv.next32 to i32
  %i.av = add i32 %spec.store.select, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next32
  store i8 %i.ay, ptr %i.az, align 1
  %indvars.iv.next32.1 = or disjoint i64 %indvars.iv31, 2 ; 2 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv.next32.1 to i32
  %i.bb = add i32 %spec.store.select, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next32.1
  store i8 %i.be, ptr %i.bf, align 1
  %indvars.iv.next32.2 = or disjoint i64 %indvars.iv31, 3 ; 2 uses
  %i.bg = trunc nuw nsw i64 %indvars.iv.next32.2 to i32
  %i.bh = add i32 %spec.store.select, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %2, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next32.2
  store i8 %i.bk, ptr %i.bl, align 1
  %indvars.iv.next32.3 = add nuw nsw i64 %indvars.iv31, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.split26.us.sink.split.loopexit.unr-lcssa, label %.preheader21.us.us, !llvm.loop !33

.preheader21.us:                                  ; preds = %.preheader21.us.prol.loopexit, %.preheader21.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader21.us ], [ %indvars.iv.unr, %.preheader21.us.prol.loopexit ] ; 6 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv to i32
  %i.bn = add i32 %spec.store.select, %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.bq, ptr %i.br, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bt = add i32 %spec.store.select, %i.bs
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %2, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.bw, ptr %i.bx, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.by = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.bz = add i32 %spec.store.select, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %2, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.cc, ptr %i.cd, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ce = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.cf = add i32 %spec.store.select, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %2, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.ci, ptr %i.cj, align 1
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
  %i.ck = trunc nuw nsw i64 %indvars.iv31.epil to i32
  %i.cl = add i32 %spec.store.select, %i.ck
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %2, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv31.epil
  store i8 %i.co, ptr %i.cp, align 1
  %indvars.iv.next32.epil = add nuw nsw i64 %indvars.iv31.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter47
  br i1 %epil.iter.cmp.not, label %.split26.us.sink.split, label %.preheader21.us.us.epil, !llvm.loop !35

.split26.us.sink.split:                           ; preds = %.split26.us.sink.split.loopexit.unr-lcssa, %.preheader21.us.us.epil, %.preheader21.preheader
  %.sink = phi i64 [ %i.f, %.preheader21.preheader ], [ %wide.trip.count34, %.preheader21.us.us.epil ], [ %wide.trip.count34, %.split26.us.sink.split.loopexit.unr-lcssa ]
  %scevgep = getelementptr i8, ptr %1, i64 %.sink
  %i.cq = add i32 %spec.store.select, -1
  %i.cr = zext i32 %i.cq to i64
  %i.cs = add nuw nsw i64 %i.cr, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.cs, i1 false)
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
  %i.as = trunc nsw i64 %indvars.iv35 to i32
  %i.at = sub i32 %i.as, %spec.store.select
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds i8, ptr %1, i64 %indvars.iv35
  store i8 %i.aw, ptr %i.ax, align 1
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, -1 ; 2 uses
  %i.ay = trunc nsw i64 %indvars.iv.next36 to i32
  %i.az = sub i32 %i.ay, %spec.store.select
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next36
  store i8 %i.bc, ptr %i.bd, align 1
  %indvars.iv.next36.1 = add nsw i64 %indvars.iv35, -2 ; 2 uses
  %i.be = trunc nsw i64 %indvars.iv.next36.1 to i32
  %i.bf = sub i32 %i.be, %spec.store.select
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next36.1
  store i8 %i.bi, ptr %i.bj, align 1
  %indvars.iv.next36.2 = add nsw i64 %indvars.iv35, -3 ; 2 uses
  %i.bk = trunc nsw i64 %indvars.iv.next36.2 to i32
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
  %lcmp.mod54 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod54)
  br label %.preheader20.us27.epil

.preheader20.us27.epil:                           ; preds = %.preheader20.us27.epil, %.preheader20.us27.epil.preheader
  %indvars.iv35.epil = phi i64 [ %indvars.iv35.epil.init, %.preheader20.us27.epil.preheader ], [ %indvars.iv.next36.epil, %.preheader20.us27.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader20.us27.epil.preheader ], [ %epil.iter.next, %.preheader20.us27.epil ]
  %i.bw = trunc nsw i64 %indvars.iv35.epil to i32
  %i.bx = sub i32 %i.bw, %spec.store.select
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %2, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds i8, ptr %1, i64 %indvars.iv35.epil
  store i8 %i.ca, ptr %i.cb, align 1
  %indvars.iv.next36.epil = add nsw i64 %indvars.iv35.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split26.sink.split, label %.preheader20.us27.epil, !llvm.loop !40

.split26.sink.split:                              ; preds = %.split26.sink.split.loopexit.unr-lcssa, %.preheader20.us27.epil, %bb.a
  %i.cc = zext nneg i32 %spec.store.select to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.cc, i1 false)
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
  %min.iters.check62 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check62, label %vec.epilog.ph, label %vector.ph

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
  %n.vec63 = and i64 %i.l, -8                     ; 3 uses
  %i.ah = add nsw i64 %n.vec63, %i.f
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index64 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 2 uses
  %i.ai = add i64 %index64, %i.f
  %i.aj = shl i64 %i.ai, 32
  %i.ak = add i64 %i.aj, 68719476736
  %i.al = ashr exact i64 %i.ak, 32
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  store <8 x i8> zeroinitializer, ptr %i.am, align 1
  %index.next65 = add nuw i64 %index64, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next65, %n.vec63
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n66 = icmp eq i64 %i.l, %n.vec63
  br i1 %cmp.n66, label %.split27.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.1.ph = phi i64 [ %i.f, %iter.check ], [ %i.f, %vector.scevcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.split.us:                                        ; preds = %bb.a
  %i.ao = icmp samesign ult i32 %i.d, 16
  %i.ap = zext nneg i32 %i.d to i64               ; 30 uses
  br i1 %i.ao, label %.preheader21.us.us.preheader, label %vector.scevcheck68

vector.scevcheck68:                               ; preds = %.split.us
  %i.aq = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.ar = trunc nsw i64 %i.aq to i32
  %i.as = add i32 %spec.store.select, %i.ar
  %i.at = icmp slt i32 %i.as, %spec.store.select
  %i.au = icmp ugt i64 %i.aq, 4294967295
  %i.av = or i1 %i.at, %i.au
  br i1 %i.av, label %.preheader21.us.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck68
  %i.aw = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16)
  %smin = sext i32 %i.aw to i64
  %i.ax = add i64 %i.a, %smin
  %i.ay = sub i64 %i.ax, %i.b
  %diff.check = icmp ugt i64 %i.ay, -32
  br i1 %diff.check, label %.preheader21.us.preheader.preheader, label %vector.main.loop.iter.check69

vector.main.loop.iter.check69:                    ; preds = %vector.memcheck
  %min.iters.check70 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check70, label %vec.epilog.ph84, label %vector.ph71

vector.ph71:                                      ; preds = %vector.main.loop.iter.check69
  %i.az = and i64 %i.ap, 28
  %n.vec72 = and i64 %i.ap, 2147483616            ; 4 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.ph71, %vector.body73
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next76, %vector.body73 ] ; 3 uses
  %i.ba = trunc nuw i64 %index74 to i32
  %i.bb = add i32 %spec.store.select, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <16 x i8>, ptr %i.bd, align 1
  %wide.load75 = load <16 x i8>, ptr %i.be, align 1
  %i.bf = shl i64 %index74, 32
  %i.bg = ashr exact i64 %i.bf, 32
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <16 x i8> %wide.load, ptr %i.bh, align 1
  store <16 x i8> %wide.load75, ptr %i.bi, align 1
  %index.next76 = add nuw i64 %index74, 32        ; 2 uses
  %i.bj = icmp eq i64 %index.next76, %n.vec72
  br i1 %i.bj, label %middle.block77, label %vector.body73, !llvm.loop !66

middle.block77:                                   ; preds = %vector.body73
  %cmp.n78 = icmp eq i64 %n.vec72, %i.ap
  br i1 %cmp.n78, label %vector.scevcheck92, label %vec.epilog.iter.check82

vec.epilog.iter.check82:                          ; preds = %middle.block77
  %min.epilog.iters.check83 = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check83, label %.preheader21.us.preheader.preheader, label %vec.epilog.ph84, !prof !16

vec.epilog.ph84:                                  ; preds = %vector.main.loop.iter.check69, %vec.epilog.iter.check82
  %vec.epilog.resume.val79 = phi i64 [ %n.vec72, %vec.epilog.iter.check82 ], [ 0, %vector.main.loop.iter.check69 ]
  %n.vec85 = and i64 %i.ap, 2147483644            ; 3 uses
  br label %vec.epilog.vector.body86

vec.epilog.vector.body86:                         ; preds = %vec.epilog.vector.body86, %vec.epilog.ph84
  %index87 = phi i64 [ %vec.epilog.resume.val79, %vec.epilog.ph84 ], [ %index.next89, %vec.epilog.vector.body86 ] ; 3 uses
  %i.bk = trunc nuw i64 %index87 to i32
  %i.bl = add i32 %spec.store.select, %i.bk
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %i.bm
  %wide.load88 = load <4 x i8>, ptr %i.bn, align 1
  %i.bo = shl i64 %index87, 32
  %i.bp = ashr exact i64 %i.bo, 32
  %i.bq = getelementptr inbounds i8, ptr %1, i64 %i.bp
  store <4 x i8> %wide.load88, ptr %i.bq, align 1
  %index.next89 = add nuw i64 %index87, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next89, %n.vec85
  br i1 %i.br, label %vec.epilog.middle.block90, label %vec.epilog.vector.body86, !llvm.loop !67

vec.epilog.middle.block90:                        ; preds = %vec.epilog.vector.body86
  %cmp.n91 = icmp eq i64 %n.vec85, %i.ap
  br i1 %cmp.n91, label %vector.scevcheck92, label %.preheader21.us.preheader.preheader

.preheader21.us.preheader.preheader:              ; preds = %vector.scevcheck68, %vector.memcheck, %vec.epilog.iter.check82, %vec.epilog.middle.block90
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck68 ], [ 0, %vector.memcheck ], [ %n.vec72, %vec.epilog.iter.check82 ], [ %n.vec85, %vec.epilog.middle.block90 ] ; 5 uses
  %xtraiter = and i64 %i.ap, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader21.us.preheader.prol.loopexit, label %.preheader21.us.preheader.prol

.preheader21.us.preheader.prol:                   ; preds = %.preheader21.us.preheader.preheader
  %i.bs = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.bt = add i32 %spec.store.select, %i.bs
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %2, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.ph
  store i8 %i.bw, ptr %i.bx, align 1
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.preheader21.us.preheader.prol.loopexit

.preheader21.us.preheader.prol.loopexit:          ; preds = %.preheader21.us.preheader.prol, %.preheader21.us.preheader.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader21.us.preheader.preheader ], [ %indvars.iv.next.prol, %.preheader21.us.preheader.prol ]
  %i.by = add nsw i64 %i.ap, -1
  %i.bz = icmp eq i64 %indvars.iv.ph, %i.by
  br i1 %i.bz, label %vector.scevcheck92, label %.preheader21.us.preheader

.preheader21.us.us.preheader:                     ; preds = %.split.us
  %i.ca = add nsw i64 %i.ap, -1                   ; 2 uses
  %xtraiter153 = and i64 %i.ap, 1
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.epil.preheader, label %.preheader21.us.us.preheader.new

.preheader21.us.us.preheader.new:                 ; preds = %.preheader21.us.us.preheader
  %unroll_iter = and i64 %i.ap, 14
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader21.us.us.preheader.new
  %indvars.iv38 = phi i64 [ 0, %.preheader21.us.us.preheader.new ], [ %indvars.iv.next39.1157, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader21.us.us.preheader.new ], [ %niter.next.1, %bb.b ]
  %i.cc = trunc nuw i64 %indvars.iv38 to i32
  %i.cd = add i32 %spec.store.select, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %2, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1
  %sext56 = shl i64 %indvars.iv38, 32
  %i.ch = ashr exact i64 %sext56, 32
  %i.ci = getelementptr inbounds i8, ptr %1, i64 %i.ch
  store i8 %i.cg, ptr %i.ci, align 1
  %indvars.iv.next39 = or disjoint i64 %indvars.iv38, 1 ; 2 uses
  %i.cj = trunc nuw i64 %indvars.iv.next39 to i32
  %i.ck = add i32 %spec.store.select, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %2, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1
  %sext56.1 = shl i64 %indvars.iv.next39, 32
  %i.co = ashr exact i64 %sext56.1, 32
  %i.cp = getelementptr inbounds i8, ptr %1, i64 %i.co
  store i8 %i.cn, ptr %i.cp, align 1
  %indvars.iv.next39.1157 = add nuw nsw i64 %indvars.iv38, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %bb.b, !llvm.loop !68

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %bb.b
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.preheader21.us.us.preheader
  %indvars.iv38.epil.init = phi i64 [ 0, %.preheader21.us.us.preheader ], [ %indvars.iv.next39.1157, %..preheader_crit_edge.us.us.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod155 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod155)
  %i.cq = trunc nuw i64 %indvars.iv38.epil.init to i32
  %i.cr = add i32 %spec.store.select, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %2, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1
  %sext56.epil = shl i64 %indvars.iv38.epil.init, 32
  %i.cv = ashr exact i64 %sext56.epil, 32
  %i.cw = getelementptr inbounds i8, ptr %1, i64 %i.cv
  store i8 %i.cu, ptr %i.cw, align 1
  br label %..preheader_crit_edge.us.us.preheader

..preheader_crit_edge.us.us.preheader:            ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.epil.preheader
  %scevgep53 = getelementptr i8, ptr %1, i64 %i.ap
  %i.cx = add i32 %spec.store.select, -1
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add nuw nsw i64 %i.cy, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep53, i8 0, i64 %i.cz, i1 false)
  %xtraiter159 = and i64 %i.ap, 1
  %i.da = icmp eq i64 %i.ca, 0
  br i1 %i.da, label %.epil.preheader158, label %..preheader_crit_edge.us.us.preheader.new

..preheader_crit_edge.us.us.preheader.new:        ; preds = %..preheader_crit_edge.us.us.preheader
  %unroll_iter162 = and i64 %i.ap, 14
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %..preheader_crit_edge.us.us.preheader.new
  %indvars.iv38.1 = phi i64 [ 0, %..preheader_crit_edge.us.us.preheader.new ], [ %indvars.iv.next39.1.1, %bb.c ] ; 3 uses
  %niter163 = phi i64 [ 0, %..preheader_crit_edge.us.us.preheader.new ], [ %niter163.next.1, %bb.c ]
  %i.db = trunc i64 %indvars.iv38.1 to i32
  %i.dc = add i32 %i.db, 16                       ; 2 uses
  %i.dd = add i32 %i.dc, %spec.store.select
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %2, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = sext i32 %i.dc to i64
  %i.di = getelementptr inbounds i8, ptr %1, i64 %i.dh
  store i8 %i.dg, ptr %i.di, align 1
  %i.dj = trunc i64 %indvars.iv38.1 to i32
  %i.dk = add i32 %i.dj, 17                       ; 2 uses
  %i.dl = add i32 %i.dk, %spec.store.select
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %2, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = sext i32 %i.dk to i64
  %i.dq = getelementptr inbounds i8, ptr %1, i64 %i.dp
  store i8 %i.do, ptr %i.dq, align 1
  %indvars.iv.next39.1.1 = add nuw nsw i64 %indvars.iv38.1, 2 ; 2 uses
  %niter163.next.1 = add i64 %niter163, 2         ; 2 uses
  %niter163.ncmp.1 = icmp eq i64 %niter163.next.1, %unroll_iter162
  br i1 %niter163.ncmp.1, label %iter.check135.unr-lcssa, label %bb.c, !llvm.loop !68

iter.check135.unr-lcssa:                          ; preds = %bb.c
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %iter.check135, label %.epil.preheader158

.epil.preheader158:                               ; preds = %iter.check135.unr-lcssa, %..preheader_crit_edge.us.us.preheader
  %indvars.iv38.1.epil.init = phi i64 [ 0, %..preheader_crit_edge.us.us.preheader ], [ %indvars.iv.next39.1.1, %iter.check135.unr-lcssa ]
  %lcmp.mod161 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.dr = trunc i64 %indvars.iv38.1.epil.init to i32
  %i.ds = add i32 %i.dr, 16                       ; 2 uses
  %i.dt = add i32 %i.ds, %spec.store.select
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %2, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = sext i32 %i.ds to i64
  %i.dy = getelementptr inbounds i8, ptr %1, i64 %i.dx
  store i8 %i.dw, ptr %i.dy, align 1
  br label %iter.check135

iter.check135:                                    ; preds = %iter.check135.unr-lcssa, %.epil.preheader158
  %i.dz = sub i32 17, %spec.store.select
  %i.ea = zext i32 %i.dz to i64
  %i.eb = sub nsw i64 17, %i.ea                   ; 7 uses
  %min.iters.check123 = icmp ult i64 %i.eb, 8
  br i1 %min.iters.check123, label %..preheader_crit_edge.us.us.1.preheader, label %vector.scevcheck122

vector.scevcheck122:                              ; preds = %iter.check135
  %i.ec = sub i32 17, %spec.store.select
  %i.ed = zext i32 %i.ec to i64
  %i.ee = sub nsw i64 16, %i.ed                   ; 2 uses
  %i.ef = trunc i64 %i.ee to i32                  ; 2 uses
  %i.eg = add i32 %spec.store.select, -18
  %i.eh = icmp ult i32 %i.eg, %i.ef
  %i.ei = sub i32 32, %spec.store.select          ; 2 uses
  %i.ej = add i32 %i.ei, %i.ef
  %i.ek = icmp slt i32 %i.ej, %i.ei
  %i.el = icmp ugt i64 %i.ee, 4294967295
  %i.em = or i1 %i.ek, %i.el
  %i.en = or i1 %i.eh, %i.em
  br i1 %i.en, label %..preheader_crit_edge.us.us.1.preheader, label %vector.main.loop.iter.check124

vector.main.loop.iter.check124:                   ; preds = %vector.scevcheck122
  %min.iters.check125 = icmp ult i64 %i.eb, 32
  br i1 %min.iters.check125, label %vec.epilog.ph139, label %vector.ph126

vector.ph126:                                     ; preds = %vector.main.loop.iter.check124
  %i.eo = and i64 %i.eb, 24
  %n.vec127 = and i64 %i.eb, -32                  ; 4 uses
  %i.ep = or disjoint i64 %n.vec127, %i.ap
  br label %vector.body128

vector.body128:                                   ; preds = %vector.ph126, %vector.body128
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next130, %vector.body128 ] ; 2 uses
  %i.eq = or disjoint i64 %index129, %i.ap
  %i.er = shl i64 %i.eq, 32
  %i.es = ashr exact i64 %i.er, 32
  %i.et = getelementptr i8, ptr %1, i64 %i.es     ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 16
  %i.ev = getelementptr i8, ptr %i.et, i64 32
  store <16 x i8> zeroinitializer, ptr %i.eu, align 1
  store <16 x i8> zeroinitializer, ptr %i.ev, align 1
  %index.next130 = add nuw i64 %index129, 32      ; 2 uses
  %i.ew = icmp eq i64 %index.next130, %n.vec127
  br i1 %i.ew, label %middle.block131, label %vector.body128, !llvm.loop !69

middle.block131:                                  ; preds = %vector.body128
  %cmp.n132 = icmp eq i64 %i.eb, %n.vec127
  br i1 %cmp.n132, label %.split27.us, label %vec.epilog.iter.check137

vec.epilog.iter.check137:                         ; preds = %middle.block131
  %min.epilog.iters.check138 = icmp eq i64 %i.eo, 0
  br i1 %min.epilog.iters.check138, label %..preheader_crit_edge.us.us.1.preheader, label %vec.epilog.ph139, !prof !18

vec.epilog.ph139:                                 ; preds = %vector.main.loop.iter.check124, %vec.epilog.iter.check137
  %vec.epilog.resume.val133 = phi i64 [ %n.vec127, %vec.epilog.iter.check137 ], [ 0, %vector.main.loop.iter.check124 ]
  %n.vec140 = and i64 %i.eb, -8                   ; 3 uses
  %i.ex = add nsw i64 %n.vec140, %i.ap
  br label %vec.epilog.vector.body141

vec.epilog.vector.body141:                        ; preds = %vec.epilog.vector.body141, %vec.epilog.ph139
  %index142 = phi i64 [ %vec.epilog.resume.val133, %vec.epilog.ph139 ], [ %index.next143, %vec.epilog.vector.body141 ] ; 2 uses
  %i.ey = add nuw i64 %index142, %i.ap
  %i.ez = shl i64 %i.ey, 32
  %i.fa = add i64 %i.ez, 68719476736
  %i.fb = ashr exact i64 %i.fa, 32
  %i.fc = getelementptr inbounds i8, ptr %1, i64 %i.fb
  store <8 x i8> zeroinitializer, ptr %i.fc, align 1
  %index.next143 = add nuw i64 %index142, 8       ; 2 uses
  %i.fd = icmp eq i64 %index.next143, %n.vec140
  br i1 %i.fd, label %vec.epilog.middle.block144, label %vec.epilog.vector.body141, !llvm.loop !70

vec.epilog.middle.block144:                       ; preds = %vec.epilog.vector.body141
  %cmp.n145 = icmp eq i64 %i.eb, %n.vec140
  br i1 %cmp.n145, label %.split27.us, label %..preheader_crit_edge.us.us.1.preheader

..preheader_crit_edge.us.us.1.preheader:          ; preds = %iter.check135, %vector.scevcheck122, %vec.epilog.iter.check137, %vec.epilog.middle.block144
  %indvars.iv43.1.ph = phi i64 [ %i.ap, %iter.check135 ], [ %i.ap, %vector.scevcheck122 ], [ %i.ep, %vec.epilog.iter.check137 ], [ %i.ex, %vec.epilog.middle.block144 ]
  br label %..preheader_crit_edge.us.us.1

..preheader_crit_edge.us.us.1:                    ; preds = %..preheader_crit_edge.us.us.1.preheader, %..preheader_crit_edge.us.us.1
  %indvars.iv43.1 = phi i64 [ %indvars.iv.next44.1, %..preheader_crit_edge.us.us.1 ], [ %indvars.iv43.1.ph, %..preheader_crit_edge.us.us.1.preheader ] ; 2 uses
  %i.fe = shl i64 %indvars.iv43.1, 32
  %sext57 = add i64 %i.fe, 68719476736
  %i.ff = ashr exact i64 %sext57, 32
  %i.fg = getelementptr inbounds i8, ptr %1, i64 %i.ff
  store i8 0, ptr %i.fg, align 1
  %indvars.iv.next44.1 = add nuw nsw i64 %indvars.iv43.1, 1 ; 2 uses
  %i.fh = and i64 %indvars.iv.next44.1, 4294967295
  %exitcond46.1.not = icmp eq i64 %i.fh, 16
  br i1 %exitcond46.1.not, label %.split27.us, label %..preheader_crit_edge.us.us.1, !llvm.loop !71

.preheader21.us.preheader:                        ; preds = %.preheader21.us.preheader.prol.loopexit, %.preheader21.us.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.1150, %.preheader21.us.preheader ], [ %indvars.iv.unr, %.preheader21.us.preheader.prol.loopexit ] ; 4 uses
  %i.fi = trunc nuw i64 %indvars.iv to i32
  %i.fj = add i32 %spec.store.select, %i.fi
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %2, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1
  %sext55 = shl i64 %indvars.iv, 32
  %i.fn = ashr exact i64 %sext55, 32
  %i.fo = getelementptr inbounds i8, ptr %1, i64 %i.fn
  store i8 %i.fm, ptr %i.fo, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fp = trunc nuw i64 %indvars.iv.next to i32
  %i.fq = add i32 %spec.store.select, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %2, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1
  %sext55.1 = shl i64 %indvars.iv.next, 32
  %i.fu = ashr exact i64 %sext55.1, 32
  %i.fv = getelementptr inbounds i8, ptr %1, i64 %i.fu
  store i8 %i.ft, ptr %i.fv, align 1
  %indvars.iv.next.1150 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1150, %i.ap
  br i1 %exitcond.not.1, label %vector.scevcheck92, label %.preheader21.us.preheader, !llvm.loop !72

vector.scevcheck92:                               ; preds = %.preheader21.us.preheader.prol.loopexit, %.preheader21.us.preheader, %middle.block77, %vec.epilog.middle.block90
  %i.fw = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.fx = trunc nsw i64 %i.fw to i32
  %i.fy = icmp ugt i64 %i.fw, 2147483631
  %i.fz = add nsw i32 %spec.store.select, 16      ; 2 uses
  %i.ga = add i32 %i.fz, %i.fx
  %i.gb = icmp slt i32 %i.ga, %i.fz
  %i.gc = or i1 %i.gb, %i.fy
  br i1 %i.gc, label %..preheader_crit_edge.us.preheader, label %vector.memcheck93

vector.memcheck93:                                ; preds = %vector.scevcheck92
  %i.gd = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16)
  %smin94 = sext i32 %i.gd to i64
  %i.ge = add i64 %i.a, %smin94
  %i.gf = sub i64 %i.ge, %i.b
  %diff.check95 = icmp ugt i64 %i.gf, -32
  br i1 %diff.check95, label %..preheader_crit_edge.us.preheader, label %vector.main.loop.iter.check97

vector.main.loop.iter.check97:                    ; preds = %vector.memcheck93
  %min.iters.check98 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check98, label %vec.epilog.ph113, label %vector.ph99

vector.ph99:                                      ; preds = %vector.main.loop.iter.check97
  %i.gg = and i64 %i.ap, 28
  %n.vec100 = and i64 %i.ap, 2147483616           ; 4 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.ph99, %vector.body101
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next105, %vector.body101 ] ; 2 uses
  %i.gh = trunc i64 %index102 to i32
  %i.gi = or disjoint i32 %i.gh, 16               ; 2 uses
  %i.gj = add i32 %i.gi, %spec.store.select
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %2, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %wide.load103 = load <16 x i8>, ptr %i.gl, align 1
  %wide.load104 = load <16 x i8>, ptr %i.gm, align 1
  %i.gn = sext i32 %i.gi to i64
  %i.go = getelementptr inbounds i8, ptr %1, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store <16 x i8> %wide.load103, ptr %i.go, align 1
  store <16 x i8> %wide.load104, ptr %i.gp, align 1
  %index.next105 = add nuw i64 %index102, 32      ; 2 uses
  %i.gq = icmp eq i64 %index.next105, %n.vec100
  br i1 %i.gq, label %middle.block106, label %vector.body101, !llvm.loop !73

middle.block106:                                  ; preds = %vector.body101
  %cmp.n107 = icmp eq i64 %n.vec100, %i.ap
  br i1 %cmp.n107, label %.split27.us, label %vec.epilog.iter.check111

vec.epilog.iter.check111:                         ; preds = %middle.block106
  %min.epilog.iters.check112 = icmp eq i64 %i.gg, 0
  br i1 %min.epilog.iters.check112, label %..preheader_crit_edge.us.preheader, label %vec.epilog.ph113, !prof !16

vec.epilog.ph113:                                 ; preds = %vector.main.loop.iter.check97, %vec.epilog.iter.check111
  %vec.epilog.resume.val108 = phi i64 [ %n.vec100, %vec.epilog.iter.check111 ], [ 0, %vector.main.loop.iter.check97 ]
  %n.vec114 = and i64 %i.ap, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body115

vec.epilog.vector.body115:                        ; preds = %vec.epilog.vector.body115, %vec.epilog.ph113
  %index116 = phi i64 [ %vec.epilog.resume.val108, %vec.epilog.ph113 ], [ %index.next118, %vec.epilog.vector.body115 ] ; 2 uses
  %i.gr = trunc i64 %index116 to i32
  %i.gs = add i32 %i.gr, 16                       ; 2 uses
  %i.gt = add i32 %i.gs, %spec.store.select
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %2, i64 %i.gu
  %wide.load117 = load <4 x i8>, ptr %i.gv, align 1
  %i.gw = sext i32 %i.gs to i64
  %i.gx = getelementptr inbounds i8, ptr %1, i64 %i.gw
  store <4 x i8> %wide.load117, ptr %i.gx, align 1
  %index.next118 = add nuw i64 %index116, 4       ; 2 uses
  %i.gy = icmp eq i64 %index.next118, %n.vec114
  br i1 %i.gy, label %vec.epilog.middle.block119, label %vec.epilog.vector.body115, !llvm.loop !74

vec.epilog.middle.block119:                       ; preds = %vec.epilog.vector.body115
  %cmp.n120 = icmp eq i64 %n.vec114, %i.ap
  br i1 %cmp.n120, label %.split27.us, label %..preheader_crit_edge.us.preheader

..preheader_crit_edge.us.preheader:               ; preds = %vector.scevcheck92, %vector.memcheck93, %vec.epilog.iter.check111, %vec.epilog.middle.block119
  %indvars.iv.135.ph = phi i64 [ 0, %vector.scevcheck92 ], [ 0, %vector.memcheck93 ], [ %n.vec100, %vec.epilog.iter.check111 ], [ %n.vec114, %vec.epilog.middle.block119 ] ; 4 uses
  %xtraiter151 = and i64 %i.ap, 1
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %..preheader_crit_edge.us.prol.loopexit, label %..preheader_crit_edge.us.prol

..preheader_crit_edge.us.prol:                    ; preds = %..preheader_crit_edge.us.preheader
  %i.gz = trunc nuw nsw i64 %indvars.iv.135.ph to i32
  %i.ha = add nuw i32 %i.gz, 16                   ; 2 uses
  %i.hb = add i32 %i.ha, %spec.store.select
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds i8, ptr %2, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1
  %i.hf = sext i32 %i.ha to i64
  %i.hg = getelementptr inbounds i8, ptr %1, i64 %i.hf
  store i8 %i.he, ptr %i.hg, align 1
  %indvars.iv.next.136.prol = or disjoint i64 %indvars.iv.135.ph, 1
  br label %..preheader_crit_edge.us.prol.loopexit

..preheader_crit_edge.us.prol.loopexit:           ; preds = %..preheader_crit_edge.us.prol, %..preheader_crit_edge.us.preheader
  %indvars.iv.135.unr = phi i64 [ %indvars.iv.135.ph, %..preheader_crit_edge.us.preheader ], [ %indvars.iv.next.136.prol, %..preheader_crit_edge.us.prol ]
  %i.hh = add nsw i64 %i.ap, -1
  %i.hi = icmp eq i64 %indvars.iv.135.ph, %i.hh
  br i1 %i.hi, label %.split27.us, label %..preheader_crit_edge.us

..preheader_crit_edge.us:                         ; preds = %..preheader_crit_edge.us.prol.loopexit, %..preheader_crit_edge.us
  %indvars.iv.135 = phi i64 [ %indvars.iv.next.136.1, %..preheader_crit_edge.us ], [ %indvars.iv.135.unr, %..preheader_crit_edge.us.prol.loopexit ] ; 3 uses
  %i.hj = trunc i64 %indvars.iv.135 to i32
  %i.hk = add i32 %i.hj, 16                       ; 2 uses
  %i.hl = add i32 %i.hk, %spec.store.select
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds i8, ptr %2, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = sext i32 %i.hk to i64
  %i.hq = getelementptr inbounds i8, ptr %1, i64 %i.hp
  store i8 %i.ho, ptr %i.hq, align 1
  %i.hr = trunc i64 %indvars.iv.135 to i32
  %i.hs = add i32 %i.hr, 17                       ; 2 uses
  %i.ht = add i32 %i.hs, %spec.store.select
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds i8, ptr %2, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1
  %i.hx = sext i32 %i.hs to i64
  %i.hy = getelementptr inbounds i8, ptr %1, i64 %i.hx
  store i8 %i.hw, ptr %i.hy, align 1
  %indvars.iv.next.136.1 = add nuw nsw i64 %indvars.iv.135, 2 ; 2 uses
  %exitcond.137.not.1 = icmp eq i64 %indvars.iv.next.136.1, %i.ap
  br i1 %exitcond.137.not.1, label %.split27.us, label %..preheader_crit_edge.us, !llvm.loop !75

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.1.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.hz = shl i64 %indvars.iv.1, 32
  %sext = add i64 %i.hz, 68719476736
  %i.ia = ashr exact i64 %sext, 32
  %i.ib = getelementptr inbounds i8, ptr %1, i64 %i.ia
  store i8 0, ptr %i.ib, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.ic = and i64 %indvars.iv.next.1, 4294967295
  %exitcond.1.not = icmp eq i64 %i.ic, 16
  br i1 %exitcond.1.not, label %.split27.us, label %vec.epilog.scalar.ph, !llvm.loop !76

.split27.us:                                      ; preds = %vec.epilog.scalar.ph, %..preheader_crit_edge.us.prol.loopexit, %..preheader_crit_edge.us, %..preheader_crit_edge.us.us.1, %middle.block, %vec.epilog.middle.block, %middle.block106, %vec.epilog.middle.block119, %middle.block131, %vec.epilog.middle.block144
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
  %i.ay = trunc nsw i64 %indvars.iv39 to i32
  %i.az = sub i32 %i.ay, %spec.store.select
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds i8, ptr %1, i64 %indvars.iv39
  store i8 %i.bc, ptr %i.bd, align 1
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, -1 ; 2 uses
  %i.be = trunc nsw i64 %indvars.iv.next40 to i32
  %i.bf = sub i32 %i.be, %spec.store.select
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40
  store i8 %i.bi, ptr %i.bj, align 1
  %indvars.iv.next40.197 = add nsw i64 %indvars.iv39, -2 ; 2 uses
  %i.bk = trunc nsw i64 %indvars.iv.next40.197 to i32
  %i.bl = sub i32 %i.bk, %spec.store.select
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40.197
  store i8 %i.bo, ptr %i.bp, align 1
  %indvars.iv.next40.2 = add nsw i64 %indvars.iv39, -3 ; 2 uses
  %i.bq = trunc nsw i64 %indvars.iv.next40.2 to i32
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
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv39.epil = phi i64 [ %indvars.iv.next40.epil, %bb.c ], [ %indvars.iv39.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.bw = trunc nsw i64 %indvars.iv39.epil to i32
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
  %xtraiter99 = and i64 %i.cc, 1
  %i.cd = icmp eq i32 %i.c, 15
  br i1 %i.cd, label %.epil.preheader98, label %..preheader_crit_edge.us.preheader.new

..preheader_crit_edge.us.preheader.new:           ; preds = %..preheader_crit_edge.us.preheader
  %unroll_iter103 = and i64 %i.cc, 30
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %..preheader_crit_edge.us.preheader.new
  %indvars.iv39.1 = phi i64 [ 15, %..preheader_crit_edge.us.preheader.new ], [ %indvars.iv.next40.1.1, %bb.d ] ; 3 uses
  %niter104 = phi i64 [ 0, %..preheader_crit_edge.us.preheader.new ], [ %niter104.next.1, %bb.d ]
  %i.ce = add nuw nsw i64 %indvars.iv39.1, 16     ; 2 uses
  %i.cf = trunc nsw i64 %i.ce to i32
  %i.cg = sub i32 %i.cf, %spec.store.select
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %2, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = getelementptr inbounds i8, ptr %1, i64 %i.ce
  store i8 %i.cj, ptr %i.ck, align 1
  %i.cl = add nsw i64 %indvars.iv39.1, 15         ; 2 uses
  %i.cm = trunc nsw i64 %i.cl to i32
  %i.cn = sub i32 %i.cm, %spec.store.select
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %2, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = getelementptr inbounds i8, ptr %1, i64 %i.cl
  store i8 %i.cq, ptr %i.cr, align 1
  %indvars.iv.next40.1.1 = add nsw i64 %indvars.iv39.1, -2 ; 2 uses
  %niter104.next.1 = add i64 %niter104, 2         ; 2 uses
  %niter104.ncmp.1.not = icmp eq i64 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1.not, label %..preheader_crit_edge.us.preheader.1.unr-lcssa, label %bb.d, !llvm.loop !79

..preheader_crit_edge.us.preheader.1.unr-lcssa:   ; preds = %bb.d
  %lcmp.mod101.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod101.not, label %..preheader_crit_edge.us.preheader.1, label %.epil.preheader98

.epil.preheader98:                                ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %..preheader_crit_edge.us.preheader
  %indvars.iv39.1.epil.init = phi i64 [ 15, %..preheader_crit_edge.us.preheader ], [ %indvars.iv.next40.1.1, %..preheader_crit_edge.us.preheader.1.unr-lcssa ]
  %lcmp.mod102 = trunc i64 %i.cc to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.cs = add nuw nsw i64 %indvars.iv39.1.epil.init, 16 ; 2 uses
  %i.ct = trunc nsw i64 %i.cs to i32
  %i.cu = sub i32 %i.ct, %spec.store.select
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %2, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = getelementptr inbounds i8, ptr %1, i64 %i.cs
  store i8 %i.cx, ptr %i.cy, align 1
  br label %..preheader_crit_edge.us.preheader.1

..preheader_crit_edge.us.preheader.1:             ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %.epil.preheader98
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
