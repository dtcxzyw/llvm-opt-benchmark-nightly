Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turbofan-types?download=true
inline.NumInlined: 682
inline.NumDeleted: 170
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2v88internal8compiler10BitsetType3GlbEdd:bb.a
bb.d:                                             ; preds = %bb.c
  %i.g = fcmp olt double %i.c, 0.000000e+00
  br i1 %i.g, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = or i64 %.1, 64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.1.1 = phi i64 [ %i.h, %bb.e ], [ %.1, %bb.c ] ; 3 uses
  %i.i = fcmp ugt double %0, 0.000000e+00
  br i1 %i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = fcmp olt double %i.c, f0x41D0000000000000
  br i1 %i.j, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = or i64 %.1.1, 1024
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.1.2 = phi i64 [ %i.k, %bb.h ], [ %.1.1, %bb.f ] ; 3 uses
  %i.l = fcmp ugt double %0, f0x41D0000000000000
  br i1 %i.l, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = fcmp olt double %i.c, f0x41E0000000000000
  br i1 %i.m, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = or i64 %.1.2, 1026
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.1.3 = phi i64 [ %i.n, %bb.k ], [ %.1.2, %bb.i ] ; 2 uses
  %i.o = fcmp ugt double %0, f0x41E0000000000000
  %i.p = fcmp olt double %i.c, f0x41F0000000000000
  %or.cond24 = or i1 %i.o, %i.p
  %i.q = or i64 %.1.3, 1030
  %spec.select = select i1 %or.cond24, i64 %.1.3, i64 %i.q
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.g, %bb.d, %bb.b
  %.016.lcssa = phi i64 [ 0, %bb.b ], [ %.1.2, %bb.j ], [ %.1, %bb.d ], [ %spec.select, %bb.l ], [ %.1.1, %bb.g ]
  %i.r = and i64 %.016.lcssa, -17
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  %.017 = phi i64 [ %i.r, %bb.m ], [ 0, %bb.a ]
  ret i64 %.017
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK2v88internal8compiler4Type9BitsetLubEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::compiler::Type", align 8 ; 4 uses
  %2 = alloca %"class.v8::internal::compiler::Type", align 8 ; 4 uses
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZNK2v88internal8compiler4Type7IsUnionEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, -2
  br label %.loopexit

_ZNK2v88internal8compiler4Type7IsUnionEv.exit:    ; preds = %bb.a
  %i.d = inttoptr i64 %i.a to ptr                 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4
  switch i32 %i.e, label %bb.f [
    i32 3, label %bb.c
    i32 0, label %bb.d
    i32 1, label %.loopexit
    i32 4, label %bb.e
    i32 2, label %.loopexit.fold.split
    i32 5, label %.loopexit.fold.split19
  ]

bb.c:                                             ; preds = %_ZNK2v88internal8compiler4Type7IsUnionEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %1, align 8
  %i.h = call noundef i64 @_ZNK2v88internal8compiler4Type9BitsetLubEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.i = load i64, ptr %0, align 8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0715 = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.t, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.n = load i64, ptr %0, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %.sroa.0.0.copyload.i9 = load i64, ptr %i.r, align 8
  store i64 %.sroa.0.0.copyload.i9, ptr %2, align 8
  %i.s = call noundef i64 @_ZNK2v88internal8compiler4Type9BitsetLubEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.t = or i64 %i.s, %.0715                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !9

bb.d:                                             ; preds = %_ZNK2v88internal8compiler4Type7IsUnionEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load i64, ptr %i.u, align 8
  br label %.loopexit

bb.e:                                             ; preds = %_ZNK2v88internal8compiler4Type7IsUnionEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = load i64, ptr %i.w, align 8
  br label %.loopexit

bb.f:                                             ; preds = %_ZNK2v88internal8compiler4Type7IsUnionEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #19
  unreachable

.loopexit.fold.split:                             ; preds = %_ZNK2v88internal8compiler4Type7IsUnionEv.exit
  br label %.loopexit

.loopexit.fold.split19:                           ; preds = %_ZNK2v88internal8compiler4Type7IsUnionEv.exit
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZNK2v88internal8compiler4Type7IsUnionEv.exit, %.loopexit.fold.split19, %.loopexit.fold.split, %bb.c, %bb.e, %bb.d, %bb.b
  %.08 = phi i64 [ %i.c, %bb.b ], [ 16, %_ZNK2v88internal8compiler4Type7IsUnionEv.exit ], [ %i.v, %bb.d ], [ -2, %.loopexit.fold.split19 ], [ %i.x, %bb.e ], [ 8388608, %.loopexit.fold.split ], [ %i.h, %bb.c ], [ %i.t, %.lr.ph ]
  ret i64 %.08
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler4Type14AsHeapConstantEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = inttoptr i64 %i.a to ptr
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i64 2, 4097) i64 @_ZN2v88internal8compiler10BitsetType3LubEd(double noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef i1 @llvm.is.fpclass.f64(double %0, /* (nzero) */ i32 32)
  br i1 %i.a, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp uno double %0, 0.000000e+00
  br i1 %i.b, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef i1 @llvm.is.fpclass.f64(double %0, /* (pinf pzero psub pnorm) */ i32 960)
  %i.d = fcmp ole double %0, f0x41EFFFFFFFE00000
  %or.cond3.i = and i1 %i.c, %i.d
  %i.e = fadd double %0, f0x4330000000000000
  %i.f = bitcast double %i.e to i64
  %.0.extract.trunc.i.i = trunc i64 %i.f to i32
  %i.g = uitofp i32 %.0.extract.trunc.i.i to double
  %i.h = fcmp oeq double %0, %i.g
  %i.i = and i1 %or.cond3.i, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = fcmp oge double %0, f0xC1E0000000000000
  %i.k = fcmp ole double %0, f0x41DFFFFFFFC00000
  %or.cond.i = and i1 %i.j, %i.k
  br i1 %or.cond.i, label %_ZN2v88internal13IsInt32DoubleEd.exit, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit

_ZN2v88internal13IsInt32DoubleEd.exit:            ; preds = %bb.d
  %i.l = fptosi double %0 to i32
  %i.m = sitofp i32 %i.l to double
  %i.n = fcmp une double %0, %i.m
  br i1 %i.n, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit, label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZN2v88internal13IsInt32DoubleEd.exit
  %i.o = fcmp olt double %0, f0xC1D0000000000000
  br i1 %i.o, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = fcmp olt double %0, 0.000000e+00
  br i1 %i.p, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = fcmp olt double %0, f0x41D0000000000000
  br i1 %i.q, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = fcmp olt double %0, f0x41E0000000000000
  br i1 %i.r, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = fcmp olt double %0, f0x41F0000000000000
  br i1 %i.s, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit, label %1

1:                                                ; preds = %bb.i
  br label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit

_ZN2v88internal8compiler10BitsetType3LubEdd.exit: ; preds = %bb.d, %1, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %_ZN2v88internal13IsInt32DoubleEd.exit, %bb.b, %bb.a
  %.0 = phi i64 [ 4096, %bb.b ], [ 2048, %bb.a ], [ 4, %bb.i ], [ 16, %_ZN2v88internal13IsInt32DoubleEd.exit ], [ 16, %1 ], [ 2, %bb.h ], [ 16, %bb.d ], [ 8, %bb.e ], [ 64, %bb.f ], [ 1024, %bb.g ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i64 2, 1152) i64 @_ZN2v88internal8compiler10BitsetType3LubEdd(double noundef %0, double noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = fcmp olt double %0, f0xC1E0000000000000
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt double %1, f0xC1E0000000000000
  br i1 %i.b, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i64 [ 16, %bb.b ], [ 0, %bb.a ]       ; 2 uses
  %i.c = fcmp olt double %0, f0xC1D0000000000000
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = or disjoint i64 %.1, 8                   ; 2 uses
  %i.e = fcmp olt double %1, f0xC1D0000000000000
  br i1 %i.e, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1 = phi i64 [ %i.d, %bb.d ], [ %.1, %bb.c ] ; 2 uses
  %i.f = fcmp olt double %0, 0.000000e+00
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = or i64 %.1.1, 64                         ; 2 uses
  %i.h = fcmp olt double %1, 0.000000e+00
  br i1 %i.h, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.2 = phi i64 [ %i.g, %bb.f ], [ %.1.1, %bb.e ] ; 2 uses
  %i.i = fcmp olt double %0, f0x41D0000000000000
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = or i64 %.1.2, 1024                       ; 2 uses
  %i.k = fcmp olt double %1, f0x41D0000000000000
  br i1 %i.k, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.3 = phi i64 [ %i.j, %bb.h ], [ %.1.2, %bb.g ] ; 2 uses
  %i.l = fcmp olt double %0, f0x41E0000000000000
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.m = or i64 %.1.3, 2                          ; 2 uses
  %i.n = fcmp olt double %1, f0x41E0000000000000
  br i1 %i.n, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.4 = phi i64 [ %i.m, %bb.j ], [ %.1.3, %bb.i ] ; 2 uses
  %i.o = fcmp olt double %0, f0x41F0000000000000
  br i1 %i.o, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.p = or i64 %.1.4, 4                          ; 2 uses
  %i.q = fcmp olt double %1, f0x41F0000000000000
  br i1 %i.q, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.5 = phi i64 [ %i.p, %bb.l ], [ %.1.4, %bb.k ]
  %i.r = or i64 %.1.5, 16
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.m
  %.118 = phi i64 [ %i.r, %bb.m ], [ 16, %bb.b ], [ %i.d, %bb.d ], [ %i.g, %bb.f ], [ %i.j, %bb.h ], [ %i.m, %bb.j ], [ %i.p, %bb.l ]
  ret i64 %.118
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZN2v88internal8compiler10BitsetType15ExpandInternalsEm(i64 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = and i64 %0, 1118
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = and i64 %0, 16
  %.not13 = icmp eq i64 %i.b, 0
  %i.c = or i64 %0, 1118
  %spec.select = select i1 %.not13, i64 %0, i64 %i.c ; 3 uses
  %i.d = and i64 %spec.select, 8
  %.not13.1 = icmp eq i64 %i.d, 0
  %i.e = or i64 %spec.select, 72
  %.1.1 = select i1 %.not13.1, i64 %spec.select, i64 %i.e ; 3 uses
  %i.f = and i64 %.1.1, 2
  %.not13.4 = icmp eq i64 %i.f, 0
  %i.g = or i64 %.1.1, 1026
  %.1.4 = select i1 %.not13.4, i64 %.1.1, i64 %i.g ; 3 uses
  %i.h = and i64 %.1.4, 4
  %.not13.5 = icmp eq i64 %i.h, 0
  %i.i = or i64 %.1.4, 1030
  %.1.5 = select i1 %.not13.5, i64 %.1.4, i64 %i.i ; 3 uses
  %i.j = and i64 %.1.5, 16
  %.not13.6 = icmp eq i64 %i.j, 0
  %i.k = or i64 %.1.5, 1118
  %spec.select16 = select i1 %.not13.6, i64 %.1.5, i64 %i.k
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.a
  %.012 = phi i64 [ %0, %bb.a ], [ %spec.select16, %.preheader.preheader ]
  ret i64 %.012
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i64 0, 1119) i64 @_ZN2v88internal8compiler10BitsetType10NumberBitsEm(i64 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = and i64 %0, 1118
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler23OtherNumberConstantType21IsOtherNumberConstantEd(double noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = fcmp uno double %0, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @llvm.nearbyint.f64(double %0)
  %i.c = fcmp une double %i.b, %0
  %i.d = tail call i1 @llvm.is.fpclass.f64(double %0, /* (inf pzero sub norm) */ i32 988)
  %spec.select = and i1 %i.d, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i1 [ %spec.select, %bb.b ], [ false, %bb.a ]
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal8compiler16HeapConstantTypeC2EmNS1_13HeapObjectRefE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 4), (8, 24)) %0, i64 noundef %1, ptr %2) unnamed_addr #8 align 2 {
bb.a:
  store i32 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZNK2v88internal8compiler16HeapConstantType5ValueEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call ptr @_ZNK2v88internal8compiler13HeapObjectRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18
  ret ptr %i.b
}

declare ptr @_ZNK2v88internal8compiler13HeapObjectRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler4Type12SimplyEqualsES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::Type", align 8 ; 6 uses
  %3 = alloca %"class.v8::internal::compiler::Type", align 8 ; 6 uses
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZNK2v88internal8compiler4Type7IsTupleEv.exit.thread, label %_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit

_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit: ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr                 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  switch i32 %i.d, label %_ZNK2v88internal8compiler4Type7IsRangeEv.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit
  %i.e = trunc i64 %1 to i1
  br i1 %i.e, label %_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit16.thread, label %_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit16

_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit16: ; preds = %bb.b
  %i.f = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit16.thread

bb.c:                                             ; preds = %_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit16
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = tail call ptr @_ZNK2v88internal8compiler13HeapObjectRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #18
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = tail call ptr @_ZNK2v88internal8compiler13HeapObjectRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #18
  %i.m = icmp eq ptr %i.j, %i.l
  br label %_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit16.thread

bb.d:                                             ; preds = %_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit
  %i.n = trunc i64 %1 to i1
  br i1 %i.n, label %_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit16.thread, label %_ZNK2v88internal8compiler4Type21IsOtherNumberConstantEv.exit19

_ZNK2v88internal8compiler4Type21IsOtherNumberConstantEv.exit19: ; preds = %bb.d
  %i.o = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit16.thread

bb.e:                                             ; preds = %_ZNK2v88internal8compiler4Type21IsOtherNumberConstantEv.exit19
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler4Type23NormalizeRangeAndBitsetES2_PmPNS0_4ZoneE:bb.a
bb.o:                                             ; preds = %bb.n
  %i.an = or i64 %.1.1.i.i.i.i, 64                ; 2 uses
  %i.ao = fcmp olt double %.0, 0.000000e+00
  br i1 %i.ao, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.2.i.i.i.i = phi i64 [ %i.an, %bb.o ], [ %.1.1.i.i.i.i, %bb.n ] ; 2 uses
  %i.ap = fcmp olt double %.021, f0x41D0000000000000
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aq = or i64 %.1.2.i.i.i.i, 1024              ; 2 uses
  %i.ar = fcmp olt double %.0, f0x41D0000000000000
  br i1 %i.ar, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1.3.i.i.i.i = phi i64 [ %i.aq, %bb.q ], [ %.1.2.i.i.i.i, %bb.p ] ; 2 uses
  %i.as = fcmp olt double %.021, f0x41E0000000000000
  br i1 %i.as, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.at = or i64 %.1.3.i.i.i.i, 2                 ; 2 uses
  %i.au = fcmp olt double %.0, f0x41E0000000000000
  br i1 %i.au, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1.4.i.i.i.i = phi i64 [ %i.at, %bb.s ], [ %.1.3.i.i.i.i, %bb.r ] ; 2 uses
  %i.av = fcmp olt double %.021, f0x41F0000000000000
  br i1 %i.av, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aw = or i64 %.1.4.i.i.i.i, 4                 ; 2 uses
  %i.ax = fcmp olt double %.0, f0x41F0000000000000
  br i1 %i.ax, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.5.i.i.i.i = phi i64 [ %i.aw, %bb.u ], [ %.1.4.i.i.i.i, %bb.t ]
  %i.ay = or i64 %.1.5.i.i.i.i, 16
  br label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i

_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i: ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k
  %.118.i.i.i.i = phi i64 [ %i.ay, %bb.v ], [ 16, %bb.k ], [ %i.ak, %bb.m ], [ %i.an, %bb.o ], [ %i.aq, %bb.q ], [ %i.at, %bb.s ], [ %i.aw, %bb.u ]
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = sub i64 %i.ba, %i.bc
  %i.be = icmp ult i64 %i.bd, 32
  br i1 %i.be, label %bb.w, label %_ZN2v88internal8compiler4Type5RangeEddPNS0_4ZoneE.exit, !prof !17

bb.w:                                             ; preds = %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 32) #18
  %.pre.i.i.i.i.i = load i64, ptr %i.bb, align 8
  br label %_ZN2v88internal8compiler4Type5RangeEddPNS0_4ZoneE.exit

_ZN2v88internal8compiler4Type5RangeEddPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i, %bb.w
  %i.bf = phi i64 [ %.pre.i.i.i.i.i, %bb.w ], [ %i.bc, %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i ] ; 3 uses
  %i.bg = inttoptr i64 %i.bf to ptr               ; 4 uses
  %i.bh = add i64 %i.bf, 32
  store i64 %i.bh, ptr %i.bb, align 8
  store i32 4, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %.118.i.i.i.i, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store double %.021, ptr %i.bj, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store double %.0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal8compiler10BitsetType3MaxEm.exit, %bb.b, %bb.a, %_ZN2v88internal8compiler4Type5RangeEddPNS0_4ZoneE.exit
  %.sroa.0.2 = phi i64 [ %i.bf, %_ZN2v88internal8compiler4Type5RangeEddPNS0_4ZoneE.exit ], [ %0, %bb.a ], [ 1, %bb.b ], [ %0, %_ZN2v88internal8compiler10BitsetType3MaxEm.exit ]
  ret i64 %.sroa.0.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal8compiler4Type5RangeEddPNS0_4ZoneE(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = fcmp olt double %0, f0xC1E0000000000000
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt double %1, f0xC1E0000000000000
  br i1 %i.b, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1.i.i.i = phi i64 [ 16, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = fcmp olt double %0, f0xC1D0000000000000
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = or disjoint i64 %.1.i.i.i, 8             ; 2 uses
  %i.e = fcmp olt double %1, f0xC1D0000000000000
  br i1 %i.e, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1.i.i.i = phi i64 [ %i.d, %bb.d ], [ %.1.i.i.i, %bb.c ] ; 2 uses
  %i.f = fcmp olt double %0, 0.000000e+00
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = or i64 %.1.1.i.i.i, 64                   ; 2 uses
  %i.h = fcmp olt double %1, 0.000000e+00
  br i1 %i.h, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.2.i.i.i = phi i64 [ %i.g, %bb.f ], [ %.1.1.i.i.i, %bb.e ] ; 2 uses
  %i.i = fcmp olt double %0, f0x41D0000000000000
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = or i64 %.1.2.i.i.i, 1024                 ; 2 uses
  %i.k = fcmp olt double %1, f0x41D0000000000000
  br i1 %i.k, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.3.i.i.i = phi i64 [ %i.j, %bb.h ], [ %.1.2.i.i.i, %bb.g ] ; 2 uses
  %i.l = fcmp olt double %0, f0x41E0000000000000
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.m = or i64 %.1.3.i.i.i, 2                    ; 2 uses
  %i.n = fcmp olt double %1, f0x41E0000000000000
  br i1 %i.n, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.4.i.i.i = phi i64 [ %i.m, %bb.j ], [ %.1.3.i.i.i, %bb.i ] ; 2 uses
  %i.o = fcmp olt double %0, f0x41F0000000000000
  br i1 %i.o, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.p = or i64 %.1.4.i.i.i, 4                    ; 2 uses
  %i.q = fcmp olt double %1, f0x41F0000000000000
  br i1 %i.q, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.5.i.i.i = phi i64 [ %i.p, %bb.l ], [ %.1.4.i.i.i, %bb.k ]
  %i.r = or i64 %.1.5.i.i.i, 16
  br label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i

_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i: ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.118.i.i.i = phi i64 [ %i.r, %bb.m ], [ 16, %bb.b ], [ %i.d, %bb.d ], [ %i.g, %bb.f ], [ %i.j, %bb.h ], [ %i.m, %bb.j ], [ %i.p, %bb.l ]
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ult i64 %i.w, 32
  br i1 %i.x, label %bb.n, label %_ZN2v88internal8compiler9RangeType3NewEddPNS0_4ZoneE.exit, !prof !17

bb.n:                                             ; preds = %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 32) #18
  %.pre.i.i.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal8compiler9RangeType3NewEddPNS0_4ZoneE.exit

_ZN2v88internal8compiler9RangeType3NewEddPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i, %bb.n
  %i.y = phi i64 [ %.pre.i.i.i.i, %bb.n ], [ %i.v, %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i ] ; 3 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, 32
  store i64 %i.aa, ptr %i.u, align 8
  store i32 4, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.118.i.i.i, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store double %0, ptr %i.ac, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store double %1, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  ret i64 %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal8compiler4Type8ConstantEdPNS0_4ZoneE(double noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call double @llvm.nearbyint.f64(double %0) ; 2 uses
  %i.b = fcmp oeq double %i.a, %0
  %i.c = tail call i1 @llvm.is.fpclass.f64(double %0, /* (nan inf pzero sub norm) */ i32 991)
  %i.d = and i1 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp olt double %0, f0xC1E0000000000000
  br i1 %i.e, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = fcmp olt double %0, f0xC1D0000000000000
  br i1 %i.f, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = fcmp olt double %0, 0.000000e+00
  br i1 %i.g, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = fcmp olt double %0, f0x41D0000000000000
  br i1 %i.h, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = fcmp olt double %0, f0x41E0000000000000
  br i1 %i.i, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = fcmp olt double %0, f0x41F0000000000000
  br i1 %i.j, label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i, label %2

2:                                                ; preds = %bb.g
  br label %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i

_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %2
  %.118.i.i.i.i = phi i64 [ 16, %2 ], [ 2, %bb.f ], [ 16, %bb.b ], [ 8, %bb.c ], [ 64, %bb.d ], [ 1024, %bb.e ], [ 4, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = sub i64 %i.l, %i.n
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.h, label %_ZN2v88internal8compiler4Type5RangeEddPNS0_4ZoneE.exit, !prof !17

bb.h:                                             ; preds = %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 32) #18
  %.pre.i.i.i.i.i = load i64, ptr %i.m, align 8
  br label %_ZN2v88internal8compiler4Type5RangeEddPNS0_4ZoneE.exit

_ZN2v88internal8compiler4Type5RangeEddPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i, %bb.h
  %i.q = phi i64 [ %.pre.i.i.i.i.i, %bb.h ], [ %i.n, %_ZN2v88internal8compiler10BitsetType3LubEdd.exit.i.i.i ] ; 3 uses
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.s = add i64 %i.q, 32
  store i64 %i.s, ptr %i.m, align 8
  store i32 4, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.118.i.i.i.i, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store double %0, ptr %i.u, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store double %0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  br label %_ZN2v88internal8compiler4Type19OtherNumberConstantEdPNS0_4ZoneE.exit

bb.i:                                             ; preds = %bb.a
  %i.v = tail call noundef i1 @llvm.is.fpclass.f64(double %0, /* (nzero) */ i32 32)
  br i1 %i.v, label %_ZN2v88internal8compiler4Type19OtherNumberConstantEdPNS0_4ZoneE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = fcmp uno double %0, 0.000000e+00
  br i1 %i.w, label %_ZN2v88internal8compiler4Type19OtherNumberConstantEdPNS0_4ZoneE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = sub i64 %i.y, %i.aa
  %i.ac = icmp ult i64 %i.ab, 16
  br i1 %i.ac, label %bb.l, label %_ZN2v88internal8compiler23OtherNumberConstantType21IsOtherNumberConstantEd.exit.i.i.i.i, !prof !17

bb.l:                                             ; preds = %bb.k
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 16) #18
  %.pre.i.i.i.i = load i64, ptr %i.z, align 8
  br label %_ZN2v88internal8compiler23OtherNumberConstantType21IsOtherNumberConstantEd.exit.i.i.i.i

_ZN2v88internal8compiler23OtherNumberConstantType21IsOtherNumberConstantEd.exit.i.i.i.i: ; preds = %bb.k, %bb.l
  %i.ad = phi i64 [ %.pre.i.i.i.i, %bb.l ], [ %i.aa, %bb.k ] ; 3 uses
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = add i64 %i.ad, 16
  store i64 %i.af, ptr %i.z, align 8
  store i32 1, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store double %0, ptr %i.ag, align 8
  %i.ah = fcmp une double %i.a, %0
  br i1 %i.ah, label %_ZN2v88internal8compiler4Type19OtherNumberConstantEdPNS0_4ZoneE.exit, label %_ZN2v88internal8compiler23OtherNumberConstantType21IsOtherNumberConstantEd.exit.thread.i.i.i.i, !prof !24

_ZN2v88internal8compiler23OtherNumberConstantType21IsOtherNumberConstantEd.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal8compiler23OtherNumberConstantType21IsOtherNumberConstantEd.exit.i.i.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.116) #19
  unreachable

_ZN2v88internal8compiler4Type19OtherNumberConstantEdPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal8compiler23OtherNumberConstantType21IsOtherNumberConstantEd.exit.i.i.i.i, %bb.j, %bb.i, %_ZN2v88internal8compiler4Type5RangeEddPNS0_4ZoneE.exit
  %.sroa.0.0 = phi i64 [ %i.q, %_ZN2v88internal8compiler4Type5RangeEddPNS0_4ZoneE.exit ], [ 4097, %bb.j ], [ 2049, %bb.i ], [ %i.ad, %_ZN2v88internal8compiler23OtherNumberConstantType21IsOtherNumberConstantEd.exit.i.i.i.i ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal8compiler4Type19OtherNumberConstantEdPNS0_4ZoneE(double noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4Zone8AllocateINS0_8compiler23OtherNumberConstantTypeEEEPvm.exit.i.i, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 16) #18
  %.pre.i.i.i = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler23OtherNumberConstantTypeEEEPvm.exit.i.i

_ZN2v88internal4Zone8AllocateINS0_8compiler23OtherNumberConstantTypeEEEPvm.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = add i64 %i.g, 16
  store i64 %i.i, ptr %i.c, align 8
  store i32 1, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store double %0, ptr %i.j, align 8
  %i.k = fcmp uno double %0, 0.000000e+00
  br i1 %i.k, label %_ZN2v88internal8compiler23OtherNumberConstantType21IsOtherNumberConstantEd.exit.thread.i.i.i, label %_ZN2v88internal8compiler23OtherNumberConstantType21IsOtherNumberConstantEd.exit.i.i.i, !prof !25

_ZN2v88internal8compiler23OtherNumberConstantType21IsOtherNumberConstantEd.exit.i.i.i: ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler23OtherNumberConstantTypeEEEPvm.exit.i.i
  %i.l = tail call double @llvm.nearbyint.f64(double %0)
  %i.m = fcmp une double %i.l, %0
  %i.n = tail call i1 @llvm.is.fpclass.f64(double %0, /* (inf pzero sub norm) */ i32 988)
  %spec.select.i.i.i.i = and i1 %i.n, %i.m
  br i1 %spec.select.i.i.i.i, label %_ZN2v88internal8compiler23OtherNumberConstantType3NewEdPNS0_4ZoneE.exit, label %_ZN2v88internal8compiler23OtherNumberConstantType21IsOtherNumberConstantEd.exit.thread.i.i.i, !prof !24

_ZN2v88internal8compiler23OtherNumberConstantType21IsOtherNumberConstantEd.exit.thread.i.i.i: ; preds = %_ZN2v88internal8compiler23OtherNumberConstantType21IsOtherNumberConstantEd.exit.i.i.i, %_ZN2v88internal4Zone8AllocateINS0_8compiler23OtherNumberConstantTypeEEEPvm.exit.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.116) #19
  unreachable

_ZN2v88internal8compiler23OtherNumberConstantType3NewEdPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal8compiler23OtherNumberConstantType21IsOtherNumberConstantEd.exit.i.i.i
  ret i64 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal8compiler4Type8ConstantEPNS1_12JSHeapBrokerENS0_6HandleINS0_6ObjectEEEPNS0_4ZoneE(ptr noundef %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_6ObjectEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6HandleIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_S3_E(ptr noundef %0, ptr %1, i32 3) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN2v88internal8compiler24MakeRefAssumeMemoryFenceINS0_6ObjectEEENS1_10ref_traitsIT_E8ref_typeEPNS1_12JSHeapBrokerENS0_6HandleIS5_EEQ12is_subtype_vIS5_S3_E.exit, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.122) #19
  unreachable

_ZN2v88internal8compiler24MakeRefAssumeMemoryFenceINS0_6ObjectEEENS1_10ref_traitsIT_E8ref_typeEPNS1_12JSHeapBrokerENS0_6HandleIS5_EEQ12is_subtype_vIS5_S3_E.exit: ; preds = %bb.a
  %i.b = tail call i64 @_ZN2v88internal8compiler4Type8ConstantEPNS1_12JSHeapBrokerENS1_9ObjectRefEPNS0_4ZoneE(ptr noundef %0, ptr nonnull %i.a, ptr noundef %2)
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal8compiler4Type8ConstantEPNS1_12JSHeapBrokerENS1_9ObjectRefEPNS0_4ZoneE(ptr noundef %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::compiler::Type", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::ObjectRef", align 8 ; 10 uses
  %6 = alloca %"class.v8::internal::compiler::JSPrimitiveWrapperRef", align 8 ; 5 uses
  store ptr %1, ptr %5, align 8
  %i.a = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef5IsSmiEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef i32 @_ZNK2v88internal8compiler9ObjectRef5AsSmiEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %i.c = sitofp i32 %i.b to double
  %i.d = call i64 @_ZN2v88internal8compiler4Type8ConstantEdPNS0_4ZoneE(double noundef %i.c, ptr noundef %2)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i8 @_ZNK2v88internal8compiler9ObjectRef8HoleTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.f = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef8IsStringEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef20IsInternalizedStringEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br i1 %i.g, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef20IsJSPrimitiveWrapperEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  br i1 %i.h, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.i = call ptr @_ZNK2v88internal8compiler9ObjectRef20AsJSPrimitiveWrapperEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  store ptr %i.i, ptr %6, align 8
  %i.j = call noundef zeroext i1 @_ZNK2v88internal8compiler21JSPrimitiveWrapperRef15IsStringWrapperEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %i.j, label %bb.l, label %bb.h

.critedge:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.g
  %i.k = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef14IsJSTypedArrayEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br i1 %i.k, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = call ptr @_ZNK2v88internal8compiler9ObjectRef12AsHeapObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.l, ptr %3, align 8
  %i.m = call { i64, i32 } @_ZNK2v88internal8compiler13HeapObjectRef17GetHeapObjectTypeEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0) #18 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.m, 0
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.m, 1
  %i.n = call noundef i64 @_ZN2v88internal8compiler10BitsetType3LubINS1_14HeapObjectTypeEEEmT_PNS1_12JSHeapBrokerE(i64 %.fca.0.extract.i, i32 %.fca.1.extract.i, ptr noundef %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = or i64 %i.n, 1                           ; 2 uses
  store i64 %i.o, ptr %4, align 8
  %i.p = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type11IsSingletonEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %i.p, label %_ZN2v88internal8compiler4Type12HeapConstantENS1_13HeapObjectRefEPNS1_12JSHeapBrokerEPNS0_4ZoneE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = sub i64 %i.r, %i.t
  %i.v = icmp ult i64 %i.u, 24
end_hunk_1
