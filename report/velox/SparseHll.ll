Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SparseHll?download=true
inline.NumInlined: 665
inline.NumDeleted: 287
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE18setSoftMemoryLimitEj:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.a, ptr %i.b, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE9overLimitEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !45
  %i.k = zext i32 %i.j to i64
  %i.l = icmp uge i64 %i.h, %i.k
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZN8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE10insertHashEm(ptr noundef nonnull align 8 dereferenceable(44) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = lshr i64 %1, 38
  %i.c = trunc nuw nsw i64 %i.b to i32            ; 3 uses
  %i.d = shl i64 %1, 26
  %i.e = or disjoint i64 %i.d, 33554432
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = trunc nuw nsw i64 %i.f to i32            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = shl nuw i32 %i.c, 6
  %i.i = or disjoint i32 %i.h, %i.g               ; 4 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val = load ptr, ptr %i.k, align 8, !tbaa !32  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.val11 = load ptr, ptr %i.l, align 8, !tbaa !46 ; 9 uses
  %i.m = ptrtoint ptr %.val11 to i64
  %i.n = ptrtoint ptr %.val to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 2
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %.not6.i = icmp slt i32 %i.r, 0
  br i1 %.not6.i, label %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_12StlAllocatorIjEEEEEijRKT_.exit.thread17, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.0168.i = phi i32 [ %.2.i, %bb.e ], [ %i.r, %bb.a ] ; 2 uses
  %.0177.i = phi i32 [ %.219.i, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.s = add nuw nsw i32 %.0177.i, %.0168.i
  %i.t = lshr i32 %i.s, 1                         ; 3 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33   ; 2 uses
  %i.x = lshr i32 %i.w, 6                         ; 2 uses
  %i.y = icmp samesign ult i32 %i.x, %i.c
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.z = add nuw nsw i32 %i.t, 1
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = icmp samesign ugt i32 %i.x, %i.c
  br i1 %i.aa, label %bb.d, label %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_12StlAllocatorIjEEEEEijRKT_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = add nsw i32 %i.t, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.219.i = phi i32 [ %.0177.i, %bb.d ], [ %i.z, %bb.b ] ; 3 uses
  %.2.i = phi i32 [ %i.ab, %bb.d ], [ %.0168.i, %bb.b ] ; 2 uses
  %.not.i = icmp sgt i32 %.219.i, %.2.i
  br i1 %.not.i, label %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_12StlAllocatorIjEEEEEijRKT_.exit, label %.lr.ph.i, !llvm.loop !47

_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_12StlAllocatorIjEEEEEijRKT_.exit: ; preds = %bb.e
  %i.ac = zext nneg i32 %.219.i to i64
  br label %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_12StlAllocatorIjEEEEEijRKT_.exit.thread17

_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_12StlAllocatorIjEEEEEijRKT_.exit.thread: ; preds = %bb.c
  %i.ad = and i32 %i.w, 63
  %i.ae = icmp samesign ult i32 %i.ad, %i.g
  br i1 %i.ae, label %bb.f, label %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS4_EERS7_.exit

bb.f:                                             ; preds = %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_12StlAllocatorIjEEEEEijRKT_.exit.thread
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.u
  store i32 %i.i, ptr %i.af, align 4, !tbaa !33
  br label %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS4_EERS7_.exit

_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_12StlAllocatorIjEEEEEijRKT_.exit.thread17: ; preds = %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_12StlAllocatorIjEEEEEijRKT_.exit, %bb.a
  %i.ag = phi i64 [ %i.ac, %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_12StlAllocatorIjEEEEEijRKT_.exit ], [ 0, %bb.a ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ag ; 6 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43
  %.not.i12 = icmp eq ptr %.val11, %i.ak
  br i1 %.not.i12, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_12StlAllocatorIjEEEEEijRKT_.exit.thread17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.al = icmp eq ptr %i.ah, %.val11
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.i, ptr %.val11, align 4, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %.val11, i64 4
  store ptr %i.am, ptr %i.l, align 8, !tbaa !46
  br label %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS4_EERS7_.exit

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds i8, ptr %.val11, i64 -4 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !33
  store i32 %i.ao, ptr %.val11, align 4, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %.val11, i64 4
  store ptr %i.ap, ptr %i.l, align 8, !tbaa !46
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.aq, %i.ai                    ; 3 uses
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.j, label %bb.k, !prof !21

bb.j:                                             ; preds = %bb.i
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds [4 x i8], ptr %.val11, i64 %i.au
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.av, ptr nonnull align 4 %i.ah, i64 %i.ar, i1 false)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.aw = icmp eq i64 %i.ar, 4
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = load i32, ptr %i.ah, align 4, !tbaa !33
  store i32 %i.ax, ptr %i.an, align 4, !tbaa !33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  store i32 %i.i, ptr %i.ah, align 4, !tbaa !33
  br label %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS4_EERS7_.exit

bb.n:                                             ; preds = %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_12StlAllocatorIjEEEEEijRKT_.exit.thread17
  call void @_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS4_EERS7_.exit

_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS4_EERS7_.exit: ; preds = %bb.n, %bb.m, %bb.h, %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_12StlAllocatorIjEEEEEijRKT_.exit.thread, %bb.f
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !45
  %i.bg = zext i32 %i.bf to i64
  %i.bh = icmp uge i64 %i.bd, %i.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i1 %i.bh
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i64 @_ZNK8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE11cardinalityEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32
  %i.j = sub i32 67108864, %i.i
  %i.k = sitofp i32 %i.j to double
  %i.l = fdiv double f0x4190000000000000, %i.k
  %i.m = tail call double @log(double noundef %i.l) #17
  %i.n = fmul double %i.m, f0x4190000000000000
  %i.o = tail call double @llvm.round.f64(double %i.n)
  %i.p = fptosi double %i.o to i64
  ret i64 %i.p
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #4

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE9serializeEaPc(ptr noundef nonnull align 8 dereferenceable(44) %0, i8 noundef signext %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  store i8 2, ptr %2, align 1, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %1, ptr %i.b, align 1, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !32   ; 9 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 2
  %i.k = trunc i64 %i.j to i16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.k, ptr %i.l, align 2, !tbaa !30
  %i.m = icmp eq ptr %i.f, %i.e
  br i1 %i.m, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.n = add i64 %i.g, -4
  %i.o = sub i64 %i.n, %i.h                       ; 3 uses
  %i.p = lshr i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.o, 28
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %3 = add i64 %i.g, -4
  %4 = sub i64 %3, %i.h                           ; 2 uses
  %5 = lshr i64 %4, 2
  %6 = trunc i64 %5 to i32                        ; 2 uses
  %mul.result = shl i32 %6, 2
  %mul.overflow = icmp ugt i32 %6, 1073741823
  %7 = icmp ugt i32 %mul.result, 2147483643
  %8 = or i1 %7, %mul.overflow
  %9 = icmp ugt i64 %4, 17179869183
  %10 = or i1 %8, %9
  br i1 %10, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.r = sub i64 %i.a, %i.h
  %i.s = add i64 %i.r, 3
  %diff.check = icmp ult i64 %i.s, 127
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i64 %i.o, 124
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.q, 24
  %n.vec = and i64 %i.q, 9223372036854775776      ; 5 uses
  %i.u = shl i64 %n.vec, 2
  %11 = getelementptr i8, ptr %i.f, i64 %i.u
  %12 = trunc i64 %n.vec to i32
  %13 = shl i32 %12, 2
  %14 = or disjoint i32 %13, 4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.v ; 4 uses
  %15 = trunc i64 %index to i32
  %16 = shl i32 %15, 2
  %i.w = getelementptr i8, ptr %next.gep, i64 32
  %i.x = getelementptr i8, ptr %next.gep, i64 64
  %i.y = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep, align 4, !tbaa !33
  %wide.load22 = load <8 x i32>, ptr %i.w, align 4, !tbaa !33
  %wide.load23 = load <8 x i32>, ptr %i.x, align 4, !tbaa !33
  %wide.load24 = load <8 x i32>, ptr %i.y, align 4, !tbaa !33
  %17 = sext i32 %16 to i64
  %i.z = getelementptr i8, ptr %2, i64 %17        ; 4 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %i.ab = getelementptr i8, ptr %i.z, i64 36
  %i.ac = getelementptr i8, ptr %i.z, i64 68
  %i.ad = getelementptr i8, ptr %i.z, i64 100
  store <8 x i32> %wide.load, ptr %i.aa, align 4, !tbaa !33
  store <8 x i32> %wide.load22, ptr %i.ab, align 4, !tbaa !33
  store <8 x i32> %wide.load23, ptr %i.ac, align 4, !tbaa !33
  store <8 x i32> %wide.load24, ptr %i.ad, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %i.q, 9223372036854775800    ; 4 uses
  %i.af = shl i64 %n.vec26, 2
  %18 = getelementptr i8, ptr %i.f, i64 %i.af
  %19 = trunc i64 %n.vec26 to i32
  %20 = shl i32 %19, 2
  %21 = or disjoint i32 %20, 4
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = shl i64 %index27, 2
  %next.gep28 = getelementptr i8, ptr %i.f, i64 %i.ag
  %22 = trunc i64 %index27 to i32
  %23 = shl i32 %22, 2
  %wide.load29 = load <8 x i32>, ptr %next.gep28, align 4, !tbaa !33
  %24 = sext i32 %23 to i64
  %i.ah = getelementptr i8, ptr %2, i64 %24
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  store <8 x i32> %wide.load29, ptr %i.ai, align 4, !tbaa !33
  %index.next30 = add nuw i64 %index27, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next30, %n.vec26
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %i.q, %n.vec26
  br i1 %cmp.n31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.05.019.ph = phi ptr [ %i.f, %iter.check ], [ %i.f, %vector.scevcheck ], [ %i.f, %vector.memcheck ], [ %11, %vec.epilog.iter.check ], [ %18, %vec.epilog.middle.block ]
  %.sroa.7.018.ph = phi i32 [ 4, %iter.check ], [ 4, %vector.scevcheck ], [ 4, %vector.memcheck ], [ %14, %vec.epilog.iter.check ], [ %21, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.05.019 = phi ptr [ %i.am, %.lr.ph ], [ %.sroa.05.019.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.018 = phi i32 [ %26, %.lr.ph ], [ %.sroa.7.018.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ak = load i32, ptr %.sroa.05.019, align 4, !tbaa !33
  %25 = sext i32 %.sroa.7.018 to i64
  %i.al = getelementptr inbounds i8, ptr %2, i64 %25
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !33
  %26 = add i32 %.sroa.7.018, 4
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.05.019, i64 4 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %._crit_edge, label %.lr.ph, !llvm.loop !50
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i32 @_ZNK8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE14serializedSizeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, -4
  %i.j = add i32 %i.i, 4
  ret i32 %i.j
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE9mergeWithERKS5_(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(44) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = ashr exact i64 %i.g, 2
  tail call void @_ZN8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE9mergeWithEmPKj(ptr noundef nonnull align 8 dereferenceable(44) %0, i64 noundef %i.h, ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE9mergeWithEmPKj(ptr noundef nonnull align 8 dereferenceable(44) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.74", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::vector", align 8       ; 10 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !18

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !51
  store i64 0, ptr %3, align 16, !tbaa !20, !alias.scope !54, !noalias !51
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.b, align 16, !tbaa !20, !noalias !51
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.3, i64 11, i64 20, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !51
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE9mergeWithEmPKjE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.3) #16
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %4, align 8, !tbaa !25     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !20
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.r = add i64 %i.q, %1                         ; 5 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.f, label %_ZN8facebook5velox12StlAllocatorIjEC2EPNS0_19HashStringAllocatorE.exit, !prof !18

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12StlAllocatorIjEC1EPNS0_19HashStringAllocatorEE18veloxCheckFailArgs) #16
  unreachable

_ZN8facebook5velox12StlAllocatorIjEC2EPNS0_19HashStringAllocatorE.exit: ; preds = %bb.e
  %i.t = icmp ugt i64 %i.r, 2305843009213693951
  br i1 %i.t, label %bb.g, label %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE17_S_check_init_lenEmRKS3_.exit.i

bb.g:                                             ; preds = %_ZN8facebook5velox12StlAllocatorIjEC2EPNS0_19HashStringAllocatorE.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #16
  unreachable

_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %_ZN8facebook5velox12StlAllocatorIjEC2EPNS0_19HashStringAllocatorE.exit
  %i.u = ptrtoint ptr %i.s to i64
  store i64 %i.u, ptr %5, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i

_ZNSt12_Vector_baseIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE17_S_check_init_lenEmRKS3_.exit.i
  store i64 0, ptr %i.v, align 8
  br label %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE17_S_check_init_lenEmRKS3_.exit.i
  %i.w = call noundef ptr @_ZN8facebook5velox12StlAllocatorIjE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.r) ; 4 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.r
  %i.y = shl nuw nsw i64 %i.r, 2                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %i.y, i1 false), !tbaa !33
  %scevgep.i.i.i = getelementptr i8, ptr %i.w, i64 %i.y
  br label %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit

_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit: ; preds = %_ZNSt12_Vector_baseIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit.thread.i, %.lr.ph.preheader.i.i.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit.thread.i ], [ %i.x, %.lr.ph.preheader.i.i.i ]
  %.0.lcssa.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit.thread.i ], [ %scevgep.i.i.i, %.lr.ph.preheader.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %.sink.i, ptr %i.aa, align 8, !tbaa !43
  store ptr %.0.lcssa.i.i.i, ptr %i.z, align 8, !tbaa !46
  %.not81 = icmp eq ptr %i.l, %i.m
  br i1 %.not81, label %iter.check160, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.ac = load ptr, ptr %i.v, align 8
  br label %bb.h

.preheader64:                                     ; preds = %bb.m
  %i.ad = sext i32 %.141 to i64                   ; 9 uses
  %i.ae = sext i32 %.1 to i64                     ; 2 uses
  %i.af = icmp ugt i64 %i.q, %i.ad
  br i1 %i.af, label %iter.check, label %.preheader

iter.check:                                       ; preds = %.preheader64
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !32  ; 4 uses
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !32  ; 4 uses
  %i.ai = sub nuw nsw i64 %i.q, %i.ad             ; 7 uses
  %min.iters.check = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aj = ptrtoaddr ptr %i.ah to i64
  %i.ak = ptrtoaddr ptr %i.ag to i64
  %i.al = shl i64 %indvars.iv, 2
  %i.am = add i64 %i.al, 4
  %i.an = shl nsw i64 %i.ad, 2
  %i.ao = add i64 %i.am, %i.aj
  %i.ap = add i64 %i.an, %i.ak
  %i.aq = sub i64 %i.ap, %i.ao
  %diff.check = icmp ugt i64 %i.aq, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check130 = icmp ult i64 %i.ai, 32
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.ai, 24
  %n.vec = and i64 %i.ai, -32                     ; 5 uses
  %i.as = add i64 %indvars.iv.next, %n.vec        ; 2 uses
  %i.at = add nsw i64 %n.vec, %i.ad
  %invariant.gep = getelementptr [4 x i8], ptr %i.ag, i64 %i.ad
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %wide.load = load <8 x i32>, ptr %gep, align 4, !tbaa !33
  %wide.load131 = load <8 x i32>, ptr %i.av, align 4, !tbaa !33
  %wide.load132 = load <8 x i32>, ptr %i.aw, align 4, !tbaa !33
  %wide.load133 = load <8 x i32>, ptr %i.ax, align 4, !tbaa !33
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6common3hll9SparseHllINS0_6memory10MemoryPoolEE18setSoftMemoryLimitEj
define weak_odr void @_ZN8facebook5velox6common3hll9SparseHllINS0_6memory10MemoryPoolEE18setSoftMemoryLimitEj(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = lshr i32 %1, 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.a, ptr %i.b, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK8facebook5velox6common3hll9SparseHllINS0_6memory10MemoryPoolEE9overLimitEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !108
  %i.k = zext i32 %i.j to i64
  %i.l = icmp uge i64 %i.h, %i.k
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZN8facebook5velox6common3hll9SparseHllINS0_6memory10MemoryPoolEE10insertHashEm(ptr noundef nonnull align 8 dereferenceable(44) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = lshr i64 %1, 38
  %i.c = trunc nuw nsw i64 %i.b to i32            ; 3 uses
  %i.d = shl i64 %1, 26
  %i.e = or disjoint i64 %i.d, 33554432
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = trunc nuw nsw i64 %i.f to i32            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = shl nuw i32 %i.c, 6
  %i.i = or disjoint i32 %i.h, %i.g               ; 4 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val = load ptr, ptr %i.k, align 8, !tbaa !103 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.val11 = load ptr, ptr %i.l, align 8, !tbaa !109 ; 9 uses
  %i.m = ptrtoint ptr %.val11 to i64
  %i.n = ptrtoint ptr %.val to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 2
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %.not6.i = icmp slt i32 %i.r, 0
  br i1 %.not6.i, label %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_6memory12StlAllocatorIjEEEEEijRKT_.exit.thread17, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.0168.i = phi i32 [ %.2.i, %bb.e ], [ %i.r, %bb.a ] ; 2 uses
  %.0177.i = phi i32 [ %.219.i, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.s = add nuw nsw i32 %.0177.i, %.0168.i
  %i.t = lshr i32 %i.s, 1                         ; 3 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33   ; 2 uses
  %i.x = lshr i32 %i.w, 6                         ; 2 uses
  %i.y = icmp samesign ult i32 %i.x, %i.c
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.z = add nuw nsw i32 %i.t, 1
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = icmp samesign ugt i32 %i.x, %i.c
  br i1 %i.aa, label %bb.d, label %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_6memory12StlAllocatorIjEEEEEijRKT_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = add nsw i32 %i.t, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.219.i = phi i32 [ %.0177.i, %bb.d ], [ %i.z, %bb.b ] ; 3 uses
  %.2.i = phi i32 [ %i.ab, %bb.d ], [ %.0168.i, %bb.b ] ; 2 uses
  %.not.i = icmp sgt i32 %.219.i, %.2.i
  br i1 %.not.i, label %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_6memory12StlAllocatorIjEEEEEijRKT_.exit, label %.lr.ph.i, !llvm.loop !110

_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_6memory12StlAllocatorIjEEEEEijRKT_.exit: ; preds = %bb.e
  %i.ac = zext nneg i32 %.219.i to i64
  br label %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_6memory12StlAllocatorIjEEEEEijRKT_.exit.thread17

_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_6memory12StlAllocatorIjEEEEEijRKT_.exit.thread: ; preds = %bb.c
  %i.ad = and i32 %i.w, 63
  %i.ae = icmp samesign ult i32 %i.ad, %i.g
  br i1 %i.ae, label %bb.f, label %_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS5_EERS8_.exit

bb.f:                                             ; preds = %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_6memory12StlAllocatorIjEEEEEijRKT_.exit.thread
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.u
  store i32 %i.i, ptr %i.af, align 4, !tbaa !33
  br label %_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS5_EERS8_.exit

_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_6memory12StlAllocatorIjEEEEEijRKT_.exit.thread17: ; preds = %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_6memory12StlAllocatorIjEEEEEijRKT_.exit, %bb.a
  %i.ag = phi i64 [ %i.ac, %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_6memory12StlAllocatorIjEEEEEijRKT_.exit ], [ 0, %bb.a ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ag ; 6 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111
  %.not.i12 = icmp eq ptr %.val11, %i.ak
  br i1 %.not.i12, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_6memory12StlAllocatorIjEEEEEijRKT_.exit.thread17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.al = icmp eq ptr %i.ah, %.val11
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.i, ptr %.val11, align 4, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %.val11, i64 4
  store ptr %i.am, ptr %i.l, align 8, !tbaa !109
  br label %_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS5_EERS8_.exit

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds i8, ptr %.val11, i64 -4 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !33
  store i32 %i.ao, ptr %.val11, align 4, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %.val11, i64 4
  store ptr %i.ap, ptr %i.l, align 8, !tbaa !109
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.aq, %i.ai                    ; 3 uses
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.j, label %bb.k, !prof !21

bb.j:                                             ; preds = %bb.i
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds [4 x i8], ptr %.val11, i64 %i.au
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.av, ptr nonnull align 4 %i.ah, i64 %i.ar, i1 false)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.aw = icmp eq i64 %i.ar, 4
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = load i32, ptr %i.ah, align 4, !tbaa !33
  store i32 %i.ax, ptr %i.an, align 4, !tbaa !33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  store i32 %i.i, ptr %i.ah, align 4, !tbaa !33
  br label %_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS5_EERS8_.exit

bb.n:                                             ; preds = %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_6memory12StlAllocatorIjEEEEEijRKT_.exit.thread17
  call void @_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS5_EERS8_.exit

_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS5_EERS8_.exit: ; preds = %bb.n, %bb.m, %bb.h, %_ZN8facebook5velox6common3hll12_GLOBAL__N_111searchIndexISt6vectorIjNS0_6memory12StlAllocatorIjEEEEEijRKT_.exit.thread, %bb.f
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !109
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !103
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !108
  %i.bg = zext i32 %i.bf to i64
  %i.bh = icmp uge i64 %i.bd, %i.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i1 %i.bh
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i64 @_ZNK8facebook5velox6common3hll9SparseHllINS0_6memory10MemoryPoolEE11cardinalityEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32
  %i.j = sub i32 67108864, %i.i
  %i.k = sitofp i32 %i.j to double
  %i.l = fdiv double f0x4190000000000000, %i.k
  %i.m = tail call double @log(double noundef %i.l) #17
  %i.n = fmul double %i.m, f0x4190000000000000
  %i.o = tail call double @llvm.round.f64(double %i.n)
  %i.p = fptosi double %i.o to i64
  ret i64 %i.p
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8facebook5velox6common3hll9SparseHllINS0_6memory10MemoryPoolEE9serializeEaPc(ptr noundef nonnull align 8 dereferenceable(44) %0, i8 noundef signext %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  store i8 2, ptr %2, align 1, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %1, ptr %i.b, align 1, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109  ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !103  ; 9 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 2
  %i.k = trunc i64 %i.j to i16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.k, ptr %i.l, align 2, !tbaa !30
  %i.m = icmp eq ptr %i.f, %i.e
  br i1 %i.m, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.n = add i64 %i.g, -4
  %i.o = sub i64 %i.n, %i.h                       ; 3 uses
  %i.p = lshr i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.o, 28
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %3 = add i64 %i.g, -4
  %4 = sub i64 %3, %i.h                           ; 2 uses
  %5 = lshr i64 %4, 2
  %6 = trunc i64 %5 to i32                        ; 2 uses
  %mul.result = shl i32 %6, 2
  %mul.overflow = icmp ugt i32 %6, 1073741823
  %7 = icmp ugt i32 %mul.result, 2147483643
  %8 = or i1 %7, %mul.overflow
  %9 = icmp ugt i64 %4, 17179869183
  %10 = or i1 %8, %9
  br i1 %10, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.r = sub i64 %i.a, %i.h
  %i.s = add i64 %i.r, 3
  %diff.check = icmp ult i64 %i.s, 127
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i64 %i.o, 124
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.q, 24
  %n.vec = and i64 %i.q, 9223372036854775776      ; 5 uses
  %i.u = shl i64 %n.vec, 2
  %11 = getelementptr i8, ptr %i.f, i64 %i.u
  %12 = trunc i64 %n.vec to i32
  %13 = shl i32 %12, 2
  %14 = or disjoint i32 %13, 4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.v ; 4 uses
  %15 = trunc i64 %index to i32
  %16 = shl i32 %15, 2
  %i.w = getelementptr i8, ptr %next.gep, i64 32
  %i.x = getelementptr i8, ptr %next.gep, i64 64
  %i.y = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep, align 4, !tbaa !33
  %wide.load22 = load <8 x i32>, ptr %i.w, align 4, !tbaa !33
  %wide.load23 = load <8 x i32>, ptr %i.x, align 4, !tbaa !33
  %wide.load24 = load <8 x i32>, ptr %i.y, align 4, !tbaa !33
  %17 = sext i32 %16 to i64
  %i.z = getelementptr i8, ptr %2, i64 %17        ; 4 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %i.ab = getelementptr i8, ptr %i.z, i64 36
  %i.ac = getelementptr i8, ptr %i.z, i64 68
  %i.ad = getelementptr i8, ptr %i.z, i64 100
  store <8 x i32> %wide.load, ptr %i.aa, align 4, !tbaa !33
  store <8 x i32> %wide.load22, ptr %i.ab, align 4, !tbaa !33
  store <8 x i32> %wide.load23, ptr %i.ac, align 4, !tbaa !33
  store <8 x i32> %wide.load24, ptr %i.ad, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %i.q, 9223372036854775800    ; 4 uses
  %i.af = shl i64 %n.vec26, 2
  %18 = getelementptr i8, ptr %i.f, i64 %i.af
  %19 = trunc i64 %n.vec26 to i32
  %20 = shl i32 %19, 2
  %21 = or disjoint i32 %20, 4
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = shl i64 %index27, 2
  %next.gep28 = getelementptr i8, ptr %i.f, i64 %i.ag
  %22 = trunc i64 %index27 to i32
  %23 = shl i32 %22, 2
  %wide.load29 = load <8 x i32>, ptr %next.gep28, align 4, !tbaa !33
  %24 = sext i32 %23 to i64
  %i.ah = getelementptr i8, ptr %2, i64 %24
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  store <8 x i32> %wide.load29, ptr %i.ai, align 4, !tbaa !33
  %index.next30 = add nuw i64 %index27, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next30, %n.vec26
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !113

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %i.q, %n.vec26
  br i1 %cmp.n31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.05.019.ph = phi ptr [ %i.f, %iter.check ], [ %i.f, %vector.scevcheck ], [ %i.f, %vector.memcheck ], [ %11, %vec.epilog.iter.check ], [ %18, %vec.epilog.middle.block ]
  %.sroa.7.018.ph = phi i32 [ 4, %iter.check ], [ 4, %vector.scevcheck ], [ 4, %vector.memcheck ], [ %14, %vec.epilog.iter.check ], [ %21, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.05.019 = phi ptr [ %i.am, %.lr.ph ], [ %.sroa.05.019.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.018 = phi i32 [ %26, %.lr.ph ], [ %.sroa.7.018.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ak = load i32, ptr %.sroa.05.019, align 4, !tbaa !33
  %25 = sext i32 %.sroa.7.018 to i64
  %i.al = getelementptr inbounds i8, ptr %2, i64 %25
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !33
  %26 = add i32 %.sroa.7.018, 4
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.05.019, i64 4 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %._crit_edge, label %.lr.ph, !llvm.loop !114
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i32 @_ZNK8facebook5velox6common3hll9SparseHllINS0_6memory10MemoryPoolEE14serializedSizeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, -4
  %i.j = add i32 %i.i, 4
  ret i32 %i.j
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll9SparseHllINS0_6memory10MemoryPoolEE9mergeWithERKS6_(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(44) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !103  ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = ashr exact i64 %i.g, 2
  tail call void @_ZN8facebook5velox6common3hll9SparseHllINS0_6memory10MemoryPoolEE9mergeWithEmPKj(ptr noundef nonnull align 8 dereferenceable(44) %0, i64 noundef %i.h, ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll9SparseHllINS0_6memory10MemoryPoolEE9mergeWithEmPKj(ptr noundef nonnull align 8 dereferenceable(44) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.74", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::vector.9", align 8     ; 9 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !18

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !115
  store i64 0, ptr %3, align 16, !tbaa !20, !alias.scope !118, !noalias !115
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.b, align 16, !tbaa !20, !noalias !115
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.3, i64 11, i64 20, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !115
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common3hll9SparseHllINS0_6memory10MemoryPoolEE9mergeWithEmPKjE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.3) #16
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %4, align 8, !tbaa !25     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !20
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !109  ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !103  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.r = add i64 %i.q, %1                         ; 4 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !91     ; 4 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.f, label %_ZN8facebook5velox6memory12StlAllocatorIjEC2EPNS1_10MemoryPoolE.exit, !prof !18

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory12StlAllocatorIjEC1EPNS1_10MemoryPoolEE18veloxCheckFailArgs) #16
  unreachable

_ZN8facebook5velox6memory12StlAllocatorIjEC2EPNS1_10MemoryPoolE.exit: ; preds = %bb.e
  %i.t = icmp ugt i64 %i.r, 2305843009213693951
  br i1 %i.t, label %bb.g, label %_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEE17_S_check_init_lenEmRKS4_.exit.i

bb.g:                                             ; preds = %_ZN8facebook5velox6memory12StlAllocatorIjEC2EPNS1_10MemoryPoolE.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #16
  unreachable

_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %_ZN8facebook5velox6memory12StlAllocatorIjEC2EPNS1_10MemoryPoolE.exit
  %i.u = ptrtoint ptr %i.s to i64
  store i64 %i.u, ptr %5, align 8, !tbaa !99
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.v, align 8
  %.not.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEEC2EmRKS4_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEE17_S_check_init_lenEmRKS4_.exit.i
  %i.w = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !121
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(264) %i.s, i64 noundef %i.w, i64 0), !inline_history !123 ; 5 uses
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !103
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 0, i64 %i.w, i1 false), !tbaa !33
  %scevgep.i.i.i = getelementptr i8, ptr %i.aa, i64 %i.w
  br label %_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEEC2EmRKS4_.exit

_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEEC2EmRKS4_.exit: ; preds = %_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEE17_S_check_init_lenEmRKS4_.exit.i, %.lr.ph.preheader.i.i.i
  %i.ac = phi ptr [ %i.aa, %.lr.ph.preheader.i.i.i ], [ null, %_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEE17_S_check_init_lenEmRKS4_.exit.i ] ; 8 uses
  %.sink.i = phi ptr [ %i.ab, %.lr.ph.preheader.i.i.i ], [ null, %_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEE17_S_check_init_lenEmRKS4_.exit.i ]
  %.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %.lr.ph.preheader.i.i.i ], [ null, %_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEE17_S_check_init_lenEmRKS4_.exit.i ]
  %i.ad = ptrtoaddr ptr %i.ac to i64              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.sink.i, ptr %i.af, align 8, !tbaa !111
  store ptr %.0.lcssa.i.i.i, ptr %i.ae, align 8, !tbaa !109
  %.not81 = icmp eq ptr %i.l, %i.m
  br i1 %.not81, label %iter.check157, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjN8facebook5velox6memory12StlAllocatorIjEEEC2EmRKS4_.exit
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !103
  br label %bb.h

.preheader64:                                     ; preds = %bb.m
  %i.ah = sext i32 %.141 to i64                   ; 9 uses
  %i.ai = sext i32 %.1 to i64                     ; 2 uses
  %i.aj = icmp ugt i64 %i.q, %i.ah
  br i1 %i.aj, label %iter.check, label %.preheader

iter.check:                                       ; preds = %.preheader64
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !103 ; 4 uses
  %i.al = sub nuw nsw i64 %i.q, %i.ah             ; 7 uses
  %min.iters.check = icmp ult i64 %i.al, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.am = ptrtoaddr ptr %i.ak to i64
  %i.an = add i64 %i.ad, 4
  %i.ao = shl i64 %indvars.iv, 2
  %i.ap = add i64 %i.ao, %i.an
  %i.aq = shl nsw i64 %i.ah, 2
  %i.ar = add i64 %i.aq, %i.am
  %i.as = sub i64 %i.ar, %i.ap
  %diff.check = icmp ugt i64 %i.as, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check127 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check127, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %i.al, 24
  %n.vec = and i64 %i.al, -32                     ; 5 uses
  %i.au = add i64 %indvars.iv.next, %n.vec        ; 2 uses
  %i.av = add nsw i64 %n.vec, %i.ah
  %invariant.gep = getelementptr [4 x i8], ptr %i.ak, i64 %i.ah
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %wide.load = load <8 x i32>, ptr %gep, align 4, !tbaa !33
  %wide.load128 = load <8 x i32>, ptr %i.ax, align 4, !tbaa !33
  %wide.load129 = load <8 x i32>, ptr %i.ay, align 4, !tbaa !33
  %wide.load130 = load <8 x i32>, ptr %i.az, align 4, !tbaa !33
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  store <8 x i32> %wide.load, ptr %i.ba, align 4, !tbaa !33
end_hunk_1
